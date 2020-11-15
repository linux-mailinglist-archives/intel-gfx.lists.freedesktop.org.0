Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A602B3920
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 21:24:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E29676E9C2;
	Sun, 15 Nov 2020 20:24:15 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F5C389F38
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 20:23:49 +0000 (UTC)
IronPort-SDR: YMzaVGhLfzctRBA56qEY0ItvWQ6j4GS9E+EDcqyYZGsA6vN+ghr0NfxC51x4DN2nPBAjrRk3lO
 oHqzsZy8gRHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="167165309"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="167165309"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 12:23:48 -0800
IronPort-SDR: jOI8mJbYsXWQHsKrnUeqOtO4lzNbuNeCiaBcB8VUYYB/c2BbQ1uqc2jKQ/5wIwKrdVRnvzly7B
 AMP+f9XGUFdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="430005350"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2020 12:23:47 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 12:23:34 -0800
Message-Id: <20201115202347.29224-14-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115202347.29224-1-sean.z.huang@intel.com>
References: <20201115202347.29224-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 14/27] drm/i915/pxp: Enable ioctl action to
 query PXP tag
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Enable the PXP ioctl action to allow ring3 PXP to query the PXP
tag, which is a 32-bit bitwise value indicating the current
session info, including protection type, session id, and whether
the session is enabled.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp.c    |  7 +++++++
 drivers/gpu/drm/i915/pxp/intel_pxp.h    |  7 +++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 28 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  3 +++
 4 files changed, 45 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
index 661ba618bf86..bb99fbdb8e18 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
@@ -71,6 +71,13 @@ int i915_pxp_ops_ioctl(struct drm_device *dev, void *data, struct drm_file *drmf
 		}
 		break;
 	}
+	case PXP_ACTION_QUERY_PXP_TAG:
+	{
+		struct pxp_sm_query_pxp_tag *params = &pxp_info.query_pxp_tag;
+
+		ret = pxp_sm_ioctl_query_pxp_tag(i915, &params->session_is_alive, &params->pxp_tag);
+		break;
+	}
 	case PXP_ACTION_SET_R3_CONTEXT:
 	{
 		ret = intel_pxp_set_r3ctx(i915, pxp_info.set_r3ctx);
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.h b/drivers/gpu/drm/i915/pxp/intel_pxp.h
index cbaf25690596..8851c28a0e57 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp.h
@@ -31,6 +31,7 @@ enum pxp_sm_session_req {
 };
 
 enum pxp_ioctl_action {
+	PXP_ACTION_QUERY_PXP_TAG = 0,
 	PXP_ACTION_SET_SESSION_STATUS = 1,
 	PXP_ACTION_SET_R3_CONTEXT = 5,
 };
@@ -42,6 +43,11 @@ enum pxp_sm_status {
 	PXP_SM_STATUS_ERROR_UNKNOWN
 };
 
+struct pxp_sm_query_pxp_tag {
+	u32 session_is_alive;
+	u32 pxp_tag; /* in  - Session ID, out pxp tag */
+};
+
 struct pxp_sm_set_session_status_params {
 	/** @pxp_tag: in [optional], for Arbitrator session, out pxp tag */
 	u32 pxp_tag;
@@ -57,6 +63,7 @@ struct pxp_info {
 	u32 action;
 	u32 sm_status;
 	union {
+		struct pxp_sm_query_pxp_tag             query_pxp_tag;
 		struct pxp_sm_set_session_status_params set_session_status;
 		u32 set_r3ctx;
 	};
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 31ad4a330e58..2111549aca8f 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -1059,6 +1059,34 @@ int pxp_sm_terminate_protected_session_unsafe(struct drm_i915_private *i915, int
 	return ret;
 }
 
+int pxp_sm_ioctl_query_pxp_tag(struct drm_i915_private *i915, u32 *session_is_alive, u32 *pxp_tag)
+{
+	int session_type = 0;
+	int session_index = 0;
+	int ret;
+
+	drm_dbg(&i915->drm, ">>> %s\n", __func__);
+
+	if (!session_is_alive || !pxp_tag) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, bad param\n", __func__);
+		goto end;
+	}
+
+	ret = pxp_get_session_index(i915, *pxp_tag, &session_index, &session_type);
+	if (ret) {
+		drm_dbg(&i915->drm, "Failed to __pxpsessionid_to_sessionid\n");
+		goto end;
+	}
+
+	*pxp_tag = intel_pxp_get_pxp_tag(i915, session_index, session_type, session_is_alive);
+
+	ret = 0;
+end:
+	drm_dbg(&i915->drm, "<<< %s ret=[%d]\n", __func__, ret);
+	return ret;
+}
+
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 {
 	int ret;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 26597b1d18e1..859f3c1f8c6e 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -108,7 +108,10 @@ int pxp_sm_terminate_protected_session_safe(struct drm_i915_private *i915, int c
 					    int session_type, int session_id);
 int pxp_sm_terminate_protected_session_unsafe(struct drm_i915_private *i915, int session_type,
 					      int session_id);
+int pxp_sm_ioctl_query_pxp_tag(struct drm_i915_private *i915, u32 *session_is_alive, u32 *pxp_tag);
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915);
+u32 intel_pxp_get_pxp_tag(struct drm_i915_private *i915, int session_idx,
+			  int session_type, u32 *session_is_alive);
 bool intel_pxp_sm_is_any_type0_session_in_play(struct drm_i915_private *i915, int protection_mode);
 
 #endif /* __INTEL_PXP_SM_H__ */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
