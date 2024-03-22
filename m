Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DE0886564
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Mar 2024 04:18:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39E2F112181;
	Fri, 22 Mar 2024 03:18:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMmKkjdn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CD0611207D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Mar 2024 03:18:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711077518; x=1742613518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YhoaMlahidATU1QUl63xzGjQa6qlwkJNC5Lq7vzdnWs=;
 b=DMmKkjdnM0kLjmGH8jVFDYmXmTN/CFI/3nW2HqrEley/NavKFrTpykok
 2kEgrPsuM3Vz+VZk+EVzmnIC2ra5lvuFYOFanq6OYuJ6xUno1lsqaKIJT
 2MxMkfPRNRfFx95MZpTDeTn1u8qksXTzOymWRLdTuVLjzUCucmTQ1jrTu
 RXqeaWwlmOahjD/K/vcxY1kcU/lDNuGx3fX7V2DmFbEmcapZKk9GnvgSi
 avOaYoVhX/gT5RKVOFnlf2jIfBmc+FHBoVjoNC5Mcounfc9SzGXpI2gn5
 HTB0SPUT8ylAZ8Ve/agu14nLGFAaFNITyxfwdeWhU101/JbujtAuC+eRe g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11020"; a="6235037"
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; 
   d="scan'208";a="6235037"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2024 20:18:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,144,1708416000"; d="scan'208";a="37874656"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa002.fm.intel.com with ESMTP; 21 Mar 2024 20:18:36 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v18 7/9] drm/i915/display: Add state checker for Adaptive Sync
 SDP
Date: Fri, 22 Mar 2024 08:41:55 +0530
Message-Id: <20240322031157.3823909-8-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240322031157.3823909-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20240322031157.3823909-1-mitulkumar.ajitkumar.golani@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Enable infoframe and add state checker for Adaptive Sync
SDP enablement.

--v1:
- crtc_state->infoframes.enable, to add on correct place holder.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 46 ++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index c35a6a68218d..da3e840a3b70 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4831,6 +4831,17 @@ intel_compare_dp_vsc_sdp(const struct drm_dp_vsc_sdp *a,
 		a->content_type == b->content_type;
 }
 
+static bool
+intel_compare_dp_as_sdp(const struct drm_dp_as_sdp *a,
+			const struct drm_dp_as_sdp *b)
+{
+	return a->vtotal == b->vtotal &&
+		a->target_rr == b->target_rr &&
+		a->duration_incr_ms == b->duration_incr_ms &&
+		a->duration_decr_ms == b->duration_decr_ms &&
+		a->mode == b->mode;
+}
+
 static bool
 intel_compare_buffer(const u8 *a, const u8 *b, size_t len)
 {
@@ -4901,6 +4912,30 @@ pipe_config_dp_vsc_sdp_mismatch(struct drm_printer *p, bool fastset,
 	drm_dp_vsc_sdp_log(p, b);
 }
 
+static void
+pipe_config_dp_as_sdp_mismatch(struct drm_i915_private *i915,
+			       bool fastset, const char *name,
+			       const struct drm_dp_as_sdp *a,
+			       const struct drm_dp_as_sdp *b)
+{
+	struct drm_printer p;
+
+	if (fastset) {
+		p = drm_dbg_printer(&i915->drm, DRM_UT_KMS, NULL);
+
+		drm_printf(&p, "fastset requirement not met in %s dp sdp\n", name);
+	} else {
+		p = drm_err_printer(&i915->drm, NULL);
+
+		drm_printf(&p, "mismatch in %s dp sdp\n", name);
+	}
+
+	drm_printf(&p, "expected:\n");
+	drm_dp_as_sdp_log(&p, a);
+	drm_printf(&p, "found:\n");
+	drm_dp_as_sdp_log(&p, b);
+}
+
 /* Returns the length up to and including the last differing byte */
 static size_t
 memcmp_diff_len(const u8 *a, const u8 *b, size_t len)
@@ -5118,6 +5153,16 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	} \
 } while (0)
 
+#define PIPE_CONF_CHECK_DP_AS_SDP(name) do { \
+	if (!intel_compare_dp_as_sdp(&current_config->infoframes.name, \
+				      &pipe_config->infoframes.name)) { \
+		pipe_config_dp_as_sdp_mismatch(dev_priv, fastset, __stringify(name), \
+						&current_config->infoframes.name, \
+						&pipe_config->infoframes.name); \
+		ret = false; \
+	} \
+} while (0)
+
 #define PIPE_CONF_CHECK_BUFFER(name, len) do { \
 	BUILD_BUG_ON(sizeof(current_config->name) != (len)); \
 	BUILD_BUG_ON(sizeof(pipe_config->name) != (len)); \
@@ -5299,6 +5344,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 	PIPE_CONF_CHECK_INFOFRAME(hdmi);
 	PIPE_CONF_CHECK_INFOFRAME(drm);
 	PIPE_CONF_CHECK_DP_VSC_SDP(vsc);
+	PIPE_CONF_CHECK_DP_AS_SDP(as_sdp);
 
 	PIPE_CONF_CHECK_X(sync_mode_slaves_mask);
 	PIPE_CONF_CHECK_I(master_transcoder);
-- 
2.25.1

