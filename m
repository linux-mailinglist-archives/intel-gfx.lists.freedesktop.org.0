Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D203969D238
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 18:45:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3170810E73A;
	Mon, 20 Feb 2023 17:45:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B3BA10E735
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 17:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676915106; x=1708451106;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=cGMyuKa5GSzmcJmR1BUkRrCat2O2aKQdhNS8qaBCsQ4=;
 b=EBPdKm8UK40KMmbrElgQAU72OxtfcABBT2z2Z8WfFeUHyfL6feQ1fgtH
 SACVpo23PS+g75yXzcquFwOC2YJfmhjyqE3Vv7cHlovnJEOJz5llDW0Eb
 hLYnzsd1VjOLbLQSXC9Sm+JZdQ7OQqeEzs3mrRXiUM/WKe5VRWEYZ4bES
 RfQ/ADvdnkJKt4DjVW1qCiVqXEswNhXkSexuCiZlKBbRIPy1pkbRmZh25
 fbz3Y8W3Y/nUWOIbYo9vESicFEHF4ECMncJqo/2IjBYkAZ4+f3ssSoB0m
 u2Zsii0CaSWEx0ZxWOKiBWzBkXIzSQX1+BtNCchWTV2jPkD6Qy2UTG+QX A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="312085295"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="312085295"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 09:45:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="701745100"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="701745100"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 20 Feb 2023 09:45:04 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Feb 2023 19:45:03 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Feb 2023 19:44:36 +0200
Message-Id: <20230220174448.7611-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
References: <20230220174448.7611-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/17] drm/i915: Check HPD live state during eDP
 probe
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We need to untangle the mess where some SKL machines (at least)
declare both DDI A and DDI E to be present in their VBT, and
both using AUX A. DDI A is a ghost eDP, wheres DDI E may be a
real DP->VGA converter.

Currently that is handled by checking the VBT child devices
for conflicts before output probing. But that kind of solution
will not work for the ADL phantom dual eDP VBTs. I think on
those we just have to probe the eDP first. And would be nice
to use the same probe scheme for everything.

On these SKL systems if we probe DDI A first (which is only
natural given it's declared by VBT first) we will get an answer
via AUX, but it came from the DP->VGA converter hooked to the
DDI E, not DDI A. Thus we mistakenly register eDP on DDI A
and screw up the real DP device in DDI E.

To fix this let's check the HPD live state during the eDP probe.
If we got an answer via DPCD but HPD is still down let's assume
we got the answer from someone else.

Smoke tested on all my eDP machines (ilk,hsw-ult,tgl,adl) and
I also tested turning off all HPD hardware prior to loading
i915 to make sure it all comes up properly. And I simulated
the failure path too by not turning on HPD sense and that
correctly gave up on eDP.

I *think* Windows might just fully depend on HPD here. I
couldn't really find any other way they probe displays. And
I did find code where they also check the live state prior
to AUX transfers (something Imre and I have also talked
about perhaps doing). That would also solve this as we'd
not succeed in the eDP probe DPCD reads.

Other solutions I've considered:

- Reintrduce DDI strap checks on SKL. Unfortunately we just
  don't have any idea how reliable they are on real production
  hardware, and commit 5a2376d1360b ("drm/i915/skl: WaIgnoreDDIAStrap
  is forever, always init DDI A") does suggest that not very.
  Sadly that commit is very poor in details :/

  Also the systems (Asrock B250M-HDV at least) fixed by commit
  41e35ffb380b ("drm/i915: Favor last VBT child device with
  conflicting AUX ch/DDC pin") might still not work since we
  don't know what their straps indicate. Stupid me for not
  asking the reporter to check those at the time :(

  We have currently two CI machines (fi-cfl-guc,fi-cfl-8700k
  both MS-7B54/Z370M) that also declare both DDI A and DDI E
  in VBT to use AUX A, and on these the DDI A strap is also
  set. There doesn't seem to be anything hooked up to either
  DDI however. But given the DDI A strap is wrong on these it
  might well be wrong on the Asrock too.

  Most other CI machines seem to have straps that generally
  match the VBT. fi-kbl-soraka is an exception though as DDI D
  strap is not set, but it is declared in VBT as a DP++ port.
  No idea if there's a real physical port to go with it or not.

- Some kind of quirk just for the cases where both DDI A and DDI E
  are present in VBT. Might be feasible given we've ignored
  DDI A in these cases up to now successfully. But feels rather
  unsatisfactory, and not very future proof against funny VBTs.

References: https://bugs.freedesktop.org/show_bug.cgi?id=111966
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 28 +++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b77bd4565864..8a871a657b74 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -45,8 +45,9 @@
 
 #include "g4x_dp.h"
 #include "i915_debugfs.h"
 #include "i915_drv.h"
+#include "i915_irq.h"
 #include "i915_reg.h"
 #include "intel_atomic.h"
 #include "intel_audio.h"
 #include "intel_backlight.h"
@@ -5303,8 +5304,17 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 		 */
 		goto out_vdd_off;
 	}
 
+	/*
+	 * Enable HPD sense for live status check.
+	 * intel_hpd_irq_setup() will turn it off again
+	 * if it's no longer needed later.
+	 *
+	 * The DPCD probe below will make sure VDD is on.
+	 */
+	intel_hpd_detection(encoder, true);
+
 	/* Cache DPCD and EDID for edp. */
 	has_dpcd = intel_edp_init_dpcd(intel_dp);
 
 	if (!has_dpcd) {
@@ -5314,8 +5324,26 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
 			 encoder->base.base.id, encoder->base.name);
 		goto out_vdd_off;
 	}
 
+	/*
+	 * VBT and straps are liars. Also check HPD as that seems
+	 * to be the most reliable piece of information available.
+	 */
+	if (!intel_digital_port_connected(encoder)) {
+		/*
+		 * If this fails, presume the DPCD answer came
+		 * from some other port using the same AUX CH.
+		 *
+		 * FIXME maybe cleaner to check this before the
+		 * DPCD read? Would need sort out the VDD handling...
+		 */
+		drm_info(&dev_priv->drm,
+			 "[ENCODER:%d:%s] HPD is down, disabling eDP\n",
+			 encoder->base.base.id, encoder->base.name);
+		goto out_vdd_off;
+	}
+
 	mutex_lock(&dev_priv->drm.mode_config.mutex);
 	drm_edid = drm_edid_read_ddc(connector, &intel_dp->aux.ddc);
 	if (!drm_edid) {
 		/* Fallback to EDID from ACPI OpRegion, if any */
-- 
2.39.2

