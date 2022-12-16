Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BDA64E546
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:39:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E004910E5B7;
	Fri, 16 Dec 2022 00:38:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D7BA10E5AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151110; x=1702687110;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=OFNjzAjierKLMylxCaOPzovl9ZBRVFv8ilfckNO+r60=;
 b=avkK95P0tDzuVgdN7WJNDeUlTP3JAIEeL1t4Hj5vPaEeu6NOhCRwy4CO
 fs11fFbq4L+CBvsJQTeZncL5DLF+YSNNIqut/mSnPIskO7l6G8QA+tcHf
 uOLB+gBihwa28gD4/4qIg9UQYmf57Ogfx9np+LPa6U+q8AUQ2XHGjGO/f
 HlJaFDNVWEeBCIZJt8S20jodEZK2r5cKwjpqh4AIaO6D/nyORw5NKzFRl
 pr9pAjpNyKNPYcZZ0YF1RzqC5WhbYdlrFPiFgv/Uy3LkWjyVpJINGn4Rs
 BY2fzuRMp8Xd5w45JshYwfeTfPtv34r0TmAXk4Vv7vprC7YZaW8pZ2oJP w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103837"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103837"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100209"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100209"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:26 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:02 +0200
Message-Id: <20221216003810.13338-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/13] drm/i915/dsb: Extract
 assert_dsb_has_room()
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

Pull the DSB command buffer size checks into a small helper so
we don't have repeat the same thing multiple times.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index fbcbf9efd039..6fc7d087a7ca 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -70,6 +70,16 @@ struct intel_dsb {
 #define DSB_BYTE_EN_SHIFT		20
 #define DSB_REG_VALUE_MASK		0xfffff
 
+static bool assert_dsb_has_room(struct intel_dsb *dsb)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
+
+	/* each instruction is 2 dwords */
+	return !drm_WARN(&i915->drm, ALIGN(dsb->free_pos, 2) > DSB_BUF_SIZE / 4 - 2,
+			 "DSB buffer overflow\n");
+}
+
 static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 			enum dsb_id id)
 {
@@ -92,15 +102,11 @@ static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 				 i915_reg_t reg, u32 val)
 {
-	struct intel_crtc *crtc = dsb->crtc;
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 *buf = dsb->cmd_buf;
 	u32 reg_val;
 
-	if (drm_WARN_ON(&dev_priv->drm, ALIGN(dsb->free_pos, 2) > DSB_BUF_SIZE / 4 - 2)) {
-		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
+	if (!assert_dsb_has_room(dsb))
 		return;
-	}
 
 	/*
 	 * For example the buffer will look like below for 3 dwords for auto
@@ -163,14 +169,10 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val)
 {
-	struct intel_crtc *crtc = dsb->crtc;
-	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
 	u32 *buf = dsb->cmd_buf;
 
-	if (drm_WARN_ON(&dev_priv->drm, ALIGN(dsb->free_pos, 2) > DSB_BUF_SIZE / 4 - 2)) {
-		drm_dbg_kms(&dev_priv->drm, "DSB buffer overflow\n");
+	if (!assert_dsb_has_room(dsb))
 		return;
-	}
 
 	/* Every instruction should be 8 byte aligned. */
 	dsb->free_pos = ALIGN(dsb->free_pos, 2);
-- 
2.37.4

