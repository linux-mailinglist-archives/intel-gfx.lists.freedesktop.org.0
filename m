Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F3464E541
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:38:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F12C110E148;
	Fri, 16 Dec 2022 00:38:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7734610E5AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151113; x=1702687113;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=DVhGt1kmXWLrxMCUu71PRAvpghtw6VsTVNtT4FG9sOc=;
 b=PhODu24YiOVfAaleADgQaYCoATenkNJuLh4q79ni9c+iOwNr6euGQxdN
 RxgO8byyAtopaV6mVuCwwRbmlmg9+YRqz20kbrAve1tmJMArYHafG3iCj
 5a+048FsLeP2DH4nL0c5C3UGnP3751ziEYuncg0R+h2Sr6jhewBQXLrVy
 cA6wWdakwRDwBz+noQRjzBipk3t92DeqOeRMrOQ7brrNM97OhOQxxrGYX
 aA3zRFlMxWIn38/vlsJ1mxk3toNTuqcJ+74l0rKc6PCuHs5AgaYNdlky1
 j68Nrt6o6+GlAIubKZXnzc+LKTD0NKU2Ew0/SekD7QtSdvAkpvROr+515 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103842"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103842"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100210"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100210"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:30 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:03 +0200
Message-Id: <20221216003810.13338-7-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/13] drm/i915/dsb: Extract intel_dsb_emit()
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

Extract a small helper to emit a DSB intstruction. Should
become useful if/when we need to start emitting other
instructions besides register writes.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 30 ++++++++++++++++--------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 6fc7d087a7ca..fb20d9ee84a4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -86,6 +86,22 @@ static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
 	return intel_de_read(i915, DSB_CTRL(pipe, id)) & DSB_STATUS_BUSY;
 }
 
+static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
+{
+	u32 *buf = dsb->cmd_buf;
+
+	if (!assert_dsb_has_room(dsb))
+		return;
+
+	/* Every instruction should be 8 byte aligned. */
+	dsb->free_pos = ALIGN(dsb->free_pos, 2);
+
+	dsb->ins_start_offset = dsb->free_pos;
+
+	buf[dsb->free_pos++] = ldw;
+	buf[dsb->free_pos++] = udw;
+}
+
 /**
  * intel_dsb_indexed_reg_write() -Write to the DSB context for auto
  * increment register.
@@ -169,19 +185,13 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val)
 {
-	u32 *buf = dsb->cmd_buf;
-
 	if (!assert_dsb_has_room(dsb))
 		return;
 
-	/* Every instruction should be 8 byte aligned. */
-	dsb->free_pos = ALIGN(dsb->free_pos, 2);
-
-	dsb->ins_start_offset = dsb->free_pos;
-	buf[dsb->free_pos++] = val;
-	buf[dsb->free_pos++] = (DSB_OPCODE_MMIO_WRITE  << DSB_OPCODE_SHIFT) |
-			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
-			       i915_mmio_reg_offset(reg);
+	intel_dsb_emit(dsb, val,
+		       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
+		       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
+		       i915_mmio_reg_offset(reg));
 }
 
 /**
-- 
2.37.4

