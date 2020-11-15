Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE952B3957
	for <lists+intel-gfx@lfdr.de>; Sun, 15 Nov 2020 22:08:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5F53C6E9CD;
	Sun, 15 Nov 2020 21:08:27 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F14E6E9C9
 for <Intel-gfx@lists.freedesktop.org>; Sun, 15 Nov 2020 21:08:17 +0000 (UTC)
IronPort-SDR: AQavKSVak4mhkEC4ubk5cvU2938IgLeHnsWF8PoBKBVW0zipr8xn72cg5LmJB71lM4LtJneJns
 GjGNsbm9nkxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9806"; a="158455841"
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="158455841"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2020 13:08:16 -0800
IronPort-SDR: wlxZrvU757r6ywJAFh9n6NWpcBjpeVL7lmzX2KRbh4XnGGoBXVYlcpNmFSKqzwyld3HqUxPytg
 xj+dIHvtgBiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,481,1596524400"; d="scan'208";a="430009559"
Received: from sean-virtualbox.fm.intel.com ([10.105.158.96])
 by fmsmga001.fm.intel.com with ESMTP; 15 Nov 2020 13:08:15 -0800
From: "Huang, Sean Z" <sean.z.huang@intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Sun, 15 Nov 2020 13:07:57 -0800
Message-Id: <20201115210815.5272-9-sean.z.huang@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20201115210815.5272-1-sean.z.huang@intel.com>
References: <20201115210815.5272-1-sean.z.huang@intel.com>
Subject: [Intel-gfx] [PATCH 09/27] drm/i915/pxp: Implement funcs to get/set
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
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.c | 105 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/pxp/intel_pxp_sm.h |  18 ++++
 2 files changed, 123 insertions(+)

diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c b/drivers/gpu/drm/i915/pxp/intel_pxp_sm.c
index 68d421976e33..f3223c9f71c7 100644
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
@@ -78,6 +88,101 @@ static bool is_sw_session_active(struct drm_i915_private *i915, int session_type
 	return false;
 }
 
+static int pxp_set_pxp_tag(struct drm_i915_private *i915, int session_type,
+			   int session_idx, int protection_mode)
+{
+	struct pxp_tag *pxp_tag;
+	int ret;
+
+	if (!i915 || session_type >= SESSION_TYPE_MAX) {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, bad params\n", __func__);
+		goto end;
+	}
+
+	if (session_type == SESSION_TYPE_TYPE0 && session_idx < MAX_TYPE0_SESSIONS) {
+		pxp_tag = (struct pxp_tag *)&i915->pxp.r0ctx->type0_session_pxp_tag[session_idx];
+	} else if (session_type == SESSION_TYPE_TYPE1 && session_idx < MAX_TYPE1_SESSIONS) {
+		pxp_tag = (struct pxp_tag *)&i915->pxp.r0ctx->type1_session_pxp_tag[session_idx];
+	} else {
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, bad params session_type=[%d], session_idx=[%d]\n",
+			__func__, session_type, session_idx);
+		goto end;
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
+		ret = -EINVAL;
+		drm_dbg(&i915->drm, "Failed to %s, bad params protection_mode=[%d]\n",
+			__func__, protection_mode);
+		goto end;
+	}
+
+	pxp_tag->session_id = pxp_get_session_id(session_idx, session_type);
+
+	ret = 0;
+end:
+	return ret;
+}
+
+u32 intel_pxp_get_pxp_tag(struct drm_i915_private *i915, int session_idx,
+			  int session_type, u32 *session_is_alive)
+{
+	struct pxp_tag *pxp_tag;
+
+	if (!i915 || session_type >= SESSION_TYPE_MAX) {
+		drm_dbg(&i915->drm, "Failed to %s, bad params\n", __func__);
+		return -EINVAL;
+	}
+
+	if (session_type == SESSION_TYPE_TYPE0 && session_idx < MAX_TYPE0_SESSIONS) {
+		pxp_tag = (struct pxp_tag *)&i915->pxp.r0ctx->type0_session_pxp_tag[session_idx];
+	} else if (session_type == SESSION_TYPE_TYPE1 && session_idx < MAX_TYPE1_SESSIONS) {
+		pxp_tag = (struct pxp_tag *)&i915->pxp.r0ctx->type1_session_pxp_tag[session_idx];
+	} else {
+		drm_dbg(&i915->drm, "Failed to %s, bad params session_type=[%d], session_idx=[%d]\n",
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
