Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9AF7BB92D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 15:37:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44AF010E4F0;
	Fri,  6 Oct 2023 13:37:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A1910E4EC
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 13:37:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696599432; x=1728135432;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=9p6kuyR1FSGT8I+8pMVaWJXjSUcBfRAYu4h1gk2sFBc=;
 b=G5sUOPcEq7CqoOXzxrqmnN+91sHrSfmjHWFu8Kw/oWUGdZVMnTVjpQxP
 To6fiZbAulWzdYmopfLcSZcLqqOlqn2l/MjlI+J89tHCN9nzuVYUpyfVK
 58+JJeEyYkRzKaIqufCwnn5w252UV9gDN9E5U7Rhm47AaaH7nqC51YvRN
 wFL/FRiJsavo/eC5J8rD/J859GwG4fg5Q2ErQr3iCsKWbe22/ZlpdpUrX
 GEqXl1Yh969lf7bUzQb4M522Ln+bNS+B8KkgIlmq/FW68CZvLlR1tzZ5J
 7SsIcLg8dm22Qs1SnA55GT7HrAnimUdeoZqI5UYAQIENhSk9brGTGVb/V g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="470019085"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="470019085"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="728841375"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="728841375"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 06:37:10 -0700
From: Imre Deak <imre.deak@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 16:37:12 +0300
Message-Id: <20231006133727.1822579-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231006133727.1822579-1-imre.deak@intel.com>
References: <20231006133727.1822579-1-imre.deak@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/19] drm/i915/dp: Use i915/intel connector
 local variables in i915_dsc_fec_support_show()
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

Cahce the i915 specific device and connector pointers in
i915_dsc_fec_support_show().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
index fbe75d47a1654..834a8e50ea4fb 100644
--- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
+++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
@@ -1191,8 +1191,8 @@ DEFINE_SHOW_ATTRIBUTE(i915_lpsp_capability);
 
 static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 {
-	struct drm_connector *connector = m->private;
-	struct drm_device *dev = connector->dev;
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct drm_crtc *crtc;
 	struct intel_dp *intel_dp;
 	struct drm_modeset_acquire_ctx ctx;
@@ -1204,7 +1204,7 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 
 	do {
 		try_again = false;
-		ret = drm_modeset_lock(&dev->mode_config.connection_mutex,
+		ret = drm_modeset_lock(&i915->drm.mode_config.connection_mutex,
 				       &ctx);
 		if (ret) {
 			if (ret == -EDEADLK && !drm_modeset_backoff(&ctx)) {
@@ -1213,8 +1213,8 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 			}
 			break;
 		}
-		crtc = connector->state->crtc;
-		if (connector->status != connector_status_connected || !crtc) {
+		crtc = connector->base.state->crtc;
+		if (connector->base.status != connector_status_connected || !crtc) {
 			ret = -ENODEV;
 			break;
 		}
@@ -1229,7 +1229,7 @@ static int i915_dsc_fec_support_show(struct seq_file *m, void *data)
 		} else if (ret) {
 			break;
 		}
-		intel_dp = intel_attached_dp(to_intel_connector(connector));
+		intel_dp = intel_attached_dp(connector);
 		crtc_state = to_intel_crtc_state(crtc->state);
 		seq_printf(m, "DSC_Enabled: %s\n",
 			   str_yes_no(crtc_state->dsc.compression_enable));
-- 
2.39.2

