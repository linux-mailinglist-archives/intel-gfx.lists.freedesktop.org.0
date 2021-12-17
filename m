Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 434FD47909D
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Dec 2021 16:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73E9810E4CF;
	Fri, 17 Dec 2021 15:54:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83F8D10E31B
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Dec 2021 15:54:25 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="226633641"
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="226633641"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2021 07:54:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,213,1635231600"; d="scan'208";a="466544753"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga006.jf.intel.com with SMTP; 17 Dec 2021 07:54:22 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Dec 2021 17:54:21 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Dec 2021 17:54:03 +0200
Message-Id: <20211217155403.31477-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/hdmi: Ignore DP++ TMDS clock limit
 for native HDMI ports
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

Lots of machines these days seem to have a crappy type1 DP dual
mode adaptor chip slapped onto the motherboard. Based on the
DP dual mode spec we currently limit those to 165MHz max TMDS
clock.

Windows OTOH ignores DP dual mode adaptors when the VBT
indicates that the port is not actually DP++, so we can
perhaps assume that the vendors did intend that the 165MHz
clock limit doesn't apply here. Though it would be much
nicer if they actually declared an explicit limit through
VBT, but that doesn't seem to be happening either.

So in order to match Windows behaviour let's ignore the
DP dual mode adaptor's TMDS clock limit for ports that
don't look like DP++ in VBT.

Unfortunately many older VBTs misdelcare their DP++ ports
as just HDMI (eg. ILK Dell Latitude E5410) or DP (eg. SNB
Lenovo ThinkPad X220). So we can't really do this universally
without risking black screens. I suppose a sensible cutoff
is HSW+ since that's when 4k became a thing and one might
assume that the machines have been tested to work with higher
TMDS clock rates.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdmi.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 3b5b9e7b05b7..9f0557d9e9a5 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -2359,6 +2359,14 @@ intel_hdmi_dp_dual_mode_detect(struct drm_connector *connector, bool has_edid)
 		    "DP dual mode adaptor (%s) detected (max TMDS clock: %d kHz)\n",
 		    drm_dp_get_dual_mode_type_name(type),
 		    hdmi->dp_dual_mode.max_tmds_clock);
+
+	/* Older VBTs are often buggy and can't be trusted :( Play it safe. */
+	if ((DISPLAY_VER(dev_priv) >= 8 || IS_BROADWELL(dev_priv)) &&
+	    !intel_bios_is_port_dp_dual_mode(dev_priv, port)) {
+		drm_dbg_kms(&dev_priv->drm,
+			    "Ignoring DP dual mode adaptor max TMDS clock for native HDMI port\n");
+		hdmi->dp_dual_mode.max_tmds_clock = 0;
+	}
 }
 
 static bool
-- 
2.32.0

