Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC8BF2CB3B0
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Dec 2020 05:04:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E53286E9FE;
	Wed,  2 Dec 2020 04:04:21 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2BB186E9FE
 for <Intel-gfx@lists.freedesktop.org>; Wed,  2 Dec 2020 04:04:19 +0000 (UTC)
IronPort-SDR: /D0hKixSCcEGq3x5j8suYqYJkxLIfFZRjdrXyGtoPfW5InbFhzjhjG9hNm+8Vkt7qt3fDi/PUM
 JqjUObbDZwHw==
X-IronPort-AV: E=McAfee;i="6000,8403,9822"; a="172165846"
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="172165846"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2020 20:04:17 -0800
IronPort-SDR: TH97ChyB0ufNrhj0Gfdroiw7dRbYe/Z1BmwhextZJz90Xm+qNfc6mSiZ1pNSovnYtohMTZ0xIj
 EOBizPlpz6Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,385,1599548400"; d="scan'208";a="549869246"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by orsmga005.jf.intel.com with ESMTP; 01 Dec 2020 20:04:16 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Tue,  1 Dec 2020 20:03:23 -0800
Message-Id: <20201202040341.31981-9-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201202040341.31981-1-sean.z.huang@intel.com>
References: <20201202040341.31981-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v4 08/26] drm/i915/pxp: Implement funcs to get/set
 PXP tag
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

Implement the functions to get/set the PXP tag, which is 32-bit
bitwise value containing the hardware session info, such as its
session id, protection mode or whether it's enabled.

Signed-off-by: Huang, Sean Z <sean.z.huang@intel.com>
---
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 95 +++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h | 18 +++++
 2 files changed, 113 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 6413f401d939..469810390c9b 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
@@ -41,6 +41,16 @@ static int pxp_reg_write(struct drm_i915_private *i915, u32 offset, u32 regval)
 	return 0;
 }
 
+static u8 pxp_get_session_id(int session_index, int session_type)
+{
+	u8 session_id = session_index & SESSION_ID_MASK;
+
+	if (session_type == SESSION_TYPE_TYPE1)
+		session_id |= SESSION_TYPE_MASK;
+
+	return session_id;
+}
+
 /**
  * is_sw_session_active - Check if the given sw session id is active.
  * @i915: i915 device handle.
@@ -78,6 +88,91 @@ static bool is_sw_session_active(struct drm_i915_private *i915, int session_type
 	return false;
 }
 
+static int pxp_set_pxp_tag(struct drm_i915_private *i915, int session_type,
+			   int session_idx, int protection_mode)
+{
+	struct pxp_tag *pxp_tag;
+
+	if (!i915 || session_type >= SESSION_TYPE_MAX)
+		return -EINVAL;
+
+	if (session_type == SESSION_TYPE_TYPE0 && session_idx < MAX_TYPE0_SESSIONS) {
+		pxp_tag = (struct pxp_tag *)&i915->pxp.ctx->type0_session_pxp_tag[session_idx];
+	} else if (session_type == SESSION_TYPE_TYPE1 && session_idx < MAX_TYPE1_SESSIONS) {
+		pxp_tag = (struct pxp_tag *)&i915->pxp.ctx->type1_session_pxp_tag[session_idx];
+	} else {
+		drm_err(&i915->drm, "Failed to %s, bad params session_type=[%d], session_idx=[%d]\n",
+			__func__, session_type, session_idx);
+		return -EINVAL;
+	}
+
+	switch (protection_mode) {
+	case PROTECTION_MODE_NONE:
+	{
+		pxp_tag->enable = false;
+		pxp_tag->hm = false;
+		pxp_tag->sm = false;
+		break;
+	}
+	case PROTECTION_MODE_LM:
+	{
+		pxp_tag->enable = true;
+		pxp_tag->hm = false;
+		pxp_tag->sm = false;
+		pxp_tag->instance_id++;
+		break;
+	}
+	case PROTECTION_MODE_HM:
+	{
+		pxp_tag->enable = true;
+		pxp_tag->hm = true;
+		pxp_tag->sm = false;
+		pxp_tag->instance_id++;
+		break;
+	}
+	case PROTECTION_MODE_SM:
+	{
+		pxp_tag->enable = true;
+		pxp_tag->hm = true;
+		pxp_tag->sm = true;
+		pxp_tag->instance_id++;
+		break;
+	}
+	default:
+		drm_err(&i915->drm, "Failed to %s, bad params protection_mode=[%d]\n",
+			__func__, protection_mode);
+		return -EINVAL;
+	}
+
+	pxp_tag->session_id = pxp_get_session_id(session_idx, session_type);
+end:
+	return 0;
+}
+
+u32 intel_pxp_get_pxp_tag(struct drm_i915_private *i915, int session_idx,
+			  int session_type, u32 *session_is_alive)
+{
+	struct pxp_tag *pxp_tag;
+
+	if (!i915 || session_type >= SESSION_TYPE_MAX)
+		return -EINVAL;
+
+	if (session_type == SESSION_TYPE_TYPE0 && session_idx < MAX_TYPE0_SESSIONS) {
+		pxp_tag = (struct pxp_tag *)&i915->pxp.ctx->type0_session_pxp_tag[session_idx];
+	} else if (session_type == SESSION_TYPE_TYPE1 && session_idx < MAX_TYPE1_SESSIONS) {
+		pxp_tag = (struct pxp_tag *)&i915->pxp.ctx->type1_session_pxp_tag[session_idx];
+	} else {
+		drm_err(&i915->drm, "Failed to %s, bad params session_type=[%d], session_idx=[%d]\n",
+			__func__, session_type, session_idx);
+		return -EINVAL;
+	}
+
+	if (session_is_alive)
+		*session_is_alive = pxp_tag->enable;
+
+	return pxp_tag->value;
+}
+
 static bool is_hw_type0_session_in_play(struct drm_i915_private *i915, int session_index)
 {
 	u32 regval_sip = 0;
diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
index 222a879be96d..b5012948f971 100644
--- a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
+++ b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.h
@@ -20,6 +20,9 @@
 #define GEN12_KCR_TSIP_LOW  _MMIO(0x32264)   /* KCR type1 session in play 0-31 */
 #define GEN12_KCR_TSIP_HIGH _MMIO(0x32268)   /* KCR type1 session in play 32-63 */
 
+#define SESSION_TYPE_MASK BIT(7)
+#define SESSION_ID_MASK (BIT(7) - 1)
+
 enum pxp_session_types {
 	SESSION_TYPE_TYPE0 = 0,
 	SESSION_TYPE_TYPE1 = 1,
@@ -36,6 +39,21 @@ enum pxp_protection_modes {
 	PROTECTION_MODE_ALL
 };
 
+struct pxp_tag {
+	union {
+		u32 value;
+		struct {
+			u32 session_id  : 8;
+			u32 instance_id : 8;
+			u32 enable      : 1;
+			u32 hm          : 1;
+			u32 reserved_1  : 1;
+			u32 sm          : 1;
+			u32 reserved_2  : 12;
+		};
+	};
+};
+
 /**
  * struct pxp_protected_session - linked list to track all active sessions.
  */
-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
