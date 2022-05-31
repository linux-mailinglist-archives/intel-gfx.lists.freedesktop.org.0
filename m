Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4724C5396E1
	for <lists+intel-gfx@lfdr.de>; Tue, 31 May 2022 21:19:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D5DB810E42E;
	Tue, 31 May 2022 19:19:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61C5910E39D
 for <intel-gfx@lists.freedesktop.org>; Tue, 31 May 2022 19:19:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654024747; x=1685560747;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=e03HOvjbq//gENqSxK+kmO+CdhaExqgD4PngYsTZk0w=;
 b=TsX9BmLXt705EWMmkSe8Rf2nsILh/f8ZB2z/vDJ2V/1YeRNdK/ujLDRP
 6qR4ZT/IYfMuGpG1iKlkRYtDhCARgekkf1+n5HO2iP8oic56jPfo4VEKV
 HcHDUJ1tUlK86HWq7SWR9+c4v5AARZu13ejKg9VokCMFYq/RTty/tnRKX
 qOAOuVVssZes9R9XJSseEAYR/oOz52KcwHuGd+BK1Qral/G5a26uSlfU4
 PP9t/ZggjSYQEY4RTLuuMQaQx4KXe1wr+tGldhC8T2SaJ/MTjApkRzTEf
 zzHiKIUupeBUTzMv7lpv57W2KFJHET9Km+kX1wKL4/s1CwnrZtjBcx3hP Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10364"; a="262994977"
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="262994977"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2022 12:19:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,266,1647327600"; d="scan'208";a="551938080"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga006.jf.intel.com with SMTP; 31 May 2022 12:19:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 31 May 2022 22:19:03 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 31 May 2022 22:18:44 +0300
Message-Id: <20220531191844.11313-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
References: <20220531191844.11313-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 6/6] drm/i915: Treat DMRRS as static DRRS
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
Cc: Jani Nikula <jani.nikula@intel.com>
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
Acked-by: Jani Nikula <jani.nikula@intel.com>
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

