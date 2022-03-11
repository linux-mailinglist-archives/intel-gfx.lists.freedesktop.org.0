Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8764D678B
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 18:25:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E70010E6D2;
	Fri, 11 Mar 2022 17:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E56C10E783
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 17:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647019513; x=1678555513;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MsUCylFMIKx9v/EvmfGT4CIn34vVnnuM153QAcKXrbM=;
 b=NXtJLe4lQ6KgU7ZShag1cgFVAxVC9Pq884t6NNzpWASuZqJXrojO27dM
 hrgpr4sHg/TJ3ZmCrBBZJHytcub6jm57H3JgZAZ0k2iRnXFqNVzebr3v4
 aC1+whO7jwbXla2/jaTNEwLGUahf71b7VmYkSn7/Q7CZ7yhy2dX/LLPx9
 YjrMjl4koRShB23OzqAEnwnN+OvRIh+bibzqJChfqdnc0v5S95TnjQjwE
 tPPmURI46f8XdwNSv+HtEH4fmw7Nzku9F2bnY27tV2hoB7p02RQDcOwbX
 af47b0fO49z9Uj1eHutIemstYmaLINGDHKZ2BEHfDAeGIAsQw8YdEFW1R w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10283"; a="255349292"
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="255349292"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 09:25:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,174,1643702400"; d="scan'208";a="514571427"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga006.jf.intel.com with SMTP; 11 Mar 2022 09:25:10 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 11 Mar 2022 19:25:10 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 19:24:26 +0200
Message-Id: <20220311172428.14685-15-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
References: <20220311172428.14685-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 14/16] drm/i915: Enable eDP DRRS on ilk/snb
 port A
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

Nothing special about ivb+ here, if DRRS works on ivb+ port A
it should work just as well on ilk/snb. So let's enable
that.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 3 ---
 drivers/gpu/drm/i915/display/intel_drrs.c            | 8 ++++----
 2 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index 24f773583dd3..35c27d67d584 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1838,9 +1838,6 @@ static int i915_drrs_ctl_set(void *data, u64 val)
 	struct drm_device *dev = &dev_priv->drm;
 	struct intel_crtc *crtc;
 
-	if (DISPLAY_VER(dev_priv) < 7)
-		return -ENODEV;
-
 	for_each_intel_crtc(dev, crtc) {
 		struct intel_crtc_state *crtc_state;
 		struct drm_crtc_commit *commit;
diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/i915/display/intel_drrs.c
index fd956775698e..981eb37d613e 100644
--- a/drivers/gpu/drm/i915/display/intel_drrs.c
+++ b/drivers/gpu/drm/i915/display/intel_drrs.c
@@ -158,10 +158,10 @@ static void intel_drrs_set_state(struct intel_crtc *crtc,
 	if (refresh_rate == crtc->drrs.refresh_rate)
 		return;
 
-	if (DISPLAY_VER(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv))
-		intel_drrs_set_refresh_rate_m_n(crtc, refresh_rate);
-	else if (DISPLAY_VER(dev_priv) > 6)
+	if (intel_cpu_transcoder_has_m2_n2(dev_priv, crtc->drrs.cpu_transcoder))
 		intel_drrs_set_refresh_rate_pipeconf(crtc, refresh_rate);
+	else
+		intel_drrs_set_refresh_rate_m_n(crtc, refresh_rate);
 
 	crtc->drrs.refresh_rate = refresh_rate;
 }
@@ -374,7 +374,7 @@ intel_drrs_init(struct intel_connector *connector,
 	struct intel_encoder *encoder = connector->encoder;
 	struct drm_display_mode *downclock_mode;
 
-	if (DISPLAY_VER(dev_priv) <= 6) {
+	if (DISPLAY_VER(dev_priv) < 5) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "[CONNECTOR:%d:%s] DRRS not supported on platform\n",
 			    connector->base.base.id, connector->base.name);
-- 
2.34.1

