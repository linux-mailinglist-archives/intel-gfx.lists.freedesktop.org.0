Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 553B853683E
	for <lists+intel-gfx@lfdr.de>; Fri, 27 May 2022 22:50:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 929AE10E78D;
	Fri, 27 May 2022 20:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 786FC10EA24
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 May 2022 20:50:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1653684610; x=1685220610;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JPc8jZxR5z2YMdib+EFw/iTNRxcmjorjhR0zzLMasg0=;
 b=Gxj8FMesWVe2+GCusQBuIz2yJV+P3/BWrkY3Tfb3GgQUPnvbbZ5NVkzy
 QeSdsvtulC92Hyj8kB0X9sNrZNUU6IqzZeX6OOJ33krNd0Q6lBbhDNB04
 XfLsDDqjKhU/jcXs0+k5xhRcsPzT61OjN/0+8a9cRgIg7iPzkRW5JD6BU
 uzixidH30mAtMTt9dOdA6M2v6DlJAc6jLE3QhYXG/vQdQe2WR/6PiTW5f
 eajlZpwaQ8XKwJqYEJqvHhknB48pFGPBzaHd+hvgRg5Bui7hZCMSD+TI5
 /HS40GXtSDBhFPvgHOmoLUIRk5r8xAZWrsReSC7n1L3SFx4S3onfbZgQU g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10360"; a="255067066"
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="255067066"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2022 13:50:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,256,1647327600"; d="scan'208";a="631768638"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga008.fm.intel.com with SMTP; 27 May 2022 13:50:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 27 May 2022 23:50:07 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 27 May 2022 23:49:49 +0300
Message-Id: <20220527204949.2264-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
References: <20220527204949.2264-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915: Treat DMRRS as static DRRS
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

Some machines declare DRRS type = seamless, DRRS = no, DMRRS = yes.
I *think* DMRRS stands for "dynamcic media refresh rate", and
I suspect the way it's meant to work is that it lets the driver
switch refresh rates to match the frame rate for media playback.
Obviously for us all that kind of policy stuff is entirely up to
userspace, so the only thing we may do is make the extra refresh
rate(s) available.

So let's treat this case as just static DRRS for now. In the
future We might want to differentiate the "seamless w/ downclocking"
vs. "seamless w/o downclocking" cases so that we could do seamless
refresh rate changes for systems that only claim to support DMRRS.

Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/125
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 24 +++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0774238e429b..c42b9e7d0dce 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -1279,8 +1279,16 @@ parse_panel_driver_features(struct drm_i915_private *i915,
 		 * static DRRS is 0 and DRRS not supported is represented by
 		 * driver->drrs_enabled=false
 		 */
-		if (!driver->drrs_enabled)
-			panel->vbt.drrs_type = DRRS_TYPE_NONE;
+		if (!driver->drrs_enabled && panel->vbt.drrs_type != DRRS_TYPE_NONE) {
+			/*
+			 * FIXME Should DMRRS perhaps be treated as seamless
+			 * but without the automatic downclocking?
+			 */
+			if (driver->dmrrs_enabled)
+				panel->vbt.drrs_type = DRRS_TYPE_STATIC;
+			else
+				panel->vbt.drrs_type = DRRS_TYPE_NONE;
+		}
 
 		panel->vbt.psr.enable = driver->psr_enabled;
 	}
@@ -1310,8 +1318,16 @@ parse_power_conservation_features(struct drm_i915_private *i915,
 	 * static DRRS is 0 and DRRS not supported is represented by
 	 * power->drrs & BIT(panel_type)=false
 	 */
-	if (!(power->drrs & BIT(panel_type)))
-		panel->vbt.drrs_type = DRRS_TYPE_NONE;
+	if (!(power->drrs & BIT(panel_type)) && panel->vbt.drrs_type != DRRS_TYPE_NONE) {
+		/*
+		 * FIXME Should DMRRS perhaps be treated as seamless
+		 * but without the automatic downclocking?
+		 */
+		if (power->dmrrs & BIT(panel_type))
+			panel->vbt.drrs_type = DRRS_TYPE_STATIC;
+		else
+			panel->vbt.drrs_type = DRRS_TYPE_NONE;
+	}
 
 	if (i915->vbt.version >= 232)
 		panel->vbt.edp.hobl = power->hobl & BIT(panel_type);
-- 
2.35.1

