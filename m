Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F23D32D0893
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Dec 2020 01:22:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 350B96E573;
	Mon,  7 Dec 2020 00:22:18 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1AF26E554
 for <Intel-gfx@lists.freedesktop.org>; Mon,  7 Dec 2020 00:22:09 +0000 (UTC)
IronPort-SDR: iBJYJpyod+IUmteQhhIkSLfGrzGLMl7OniHTFHbO3gqVaG1HPc6/MLbErJmI+HI9HR6//yDnVy
 iFRcOTNu/GNg==
X-IronPort-AV: E=McAfee;i="6000,8403,9827"; a="191889194"
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="191889194"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2020 16:22:07 -0800
IronPort-SDR: P35ETU0lKhf4ia3o1svlzfJvqHskaS+swgvCrjHDO81Ggicc6D9yxwDPEwp+sNCMkzWmoQWmGA
 YOvulTeirfQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,398,1599548400"; d="scan'208";a="369586438"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga002.fm.intel.com with ESMTP; 06 Dec 2020 16:22:07 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun,  6 Dec 2020 16:21:24 -0800
Message-Id: <20201207002134.13731-7-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201207002134.13731-1-sean.z.huang@intel.com>
References: <20201207002134.13731-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [RFC-v1 06/16] drm/i915/pxp: Implement funcs to get/set
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
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 125 ++++++++++++++++++------
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  18 ++++
 2 files changed, 112 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 6413f401d939..38c8b6d08b61 100644
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
@@ -78,6 +88,90 @@ static bool is_sw_session_active(struct drm_i915_private *i915, int session_type
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
@@ -172,37 +266,6 @@ static int sync_hw_sw_state(struct drm_i915_private *i915, int session_index, in
 	return ret;
 }
 
-/**
- * check_if_protected_type0_sessions_are_attacked - To check if type0 active sessions are attacked.
- * @i915: i915 device handle.
- *
- * Return: true if HW shows protected sessions are attacked, false otherwise.
- */
-static bool check_if_protected_type0_sessions_are_attacked(struct drm_i915_private *i915)
-{
-	i915_reg_t kcr_status_reg = KCR_STATUS_1;
-	u32 reg_value = 0;
-	u32 mask = 0x80000000;
-	int ret;
-
-	if (!i915)
-		return false;
-
-	if (i915->pxp.ctx->global_state_attacked)
-		return true;
-
-	ret = pxp_sm_reg_read(i915, kcr_status_reg.reg, &reg_value);
-	if (ret) {
-		drm_err(&i915->drm, "Failed to pxp_sm_reg_read\n");
-		goto end;
-	}
-
-	if (reg_value & mask)
-		return true;
-end:
-	return false;
-}
-
 int pxp_sm_set_kcr_init_reg(struct drm_i915_private *i915)
 {
 	int ret;
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
