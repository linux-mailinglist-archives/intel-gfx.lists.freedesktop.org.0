Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAB364E53F
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:38:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E186B10E5AF;
	Fri, 16 Dec 2022 00:38:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91B2510E5B1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151116; x=1702687116;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=iLKiHfMAVeP+Nut7MuUJjvZnA51lWWiO23TupcXKPj4=;
 b=UQKph/yi+rlihcdYbBAWedV0D/O1jCIc1igTBguEw9ye88X01ccqlEzr
 yE3VuAwJuDxBCiW/7Vr7PHDT6P66ExHxAV7sDFbyMU1zcD6K/msZ8ZIre
 no8UGjJxveJpZEtYZOfkR6h3YF0O3yhLZkxjRiHBtfL4luxvPiD3Dh2fw
 5GaD/Zsv0jcyxbD4TZlcOfDmwUF+OCgpqvXyr1xtirNoqZ2S36p+R7S9u
 JjITA5AhgI9/PfsMJ2zRdRIKfLtTyXyfQm8hdvHsd5dyWNPcBDQB5zFrZ
 MvQWm2HEroBn0y76hZ8LXWM505asArFszIZCXTkOL1A2cSubFv4JfNBbE w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103850"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103850"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100211"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100211"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:34 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:33 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:04 +0200
Message-Id: <20221216003810.13338-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 07/13] drm/i915/dsb: Improve the indexed reg
 write checks
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

Currently intel_dsb_indexed_reg_write() just assumes the previus
instructions is also an indexed register write, and thus only
checks the register offset. Make the check more robust by
actually checking the instruction opcode as well.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index fb20d9ee84a4..fcc3f49c5445 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -102,6 +102,23 @@ static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 	buf[dsb->free_pos++] = udw;
 }
 
+static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
+					u32 opcode, i915_reg_t reg)
+{
+	const u32 *buf = dsb->cmd_buf;
+	u32 prev_opcode, prev_reg;
+
+	prev_opcode = buf[dsb->ins_start_offset + 1] >> DSB_OPCODE_SHIFT;
+	prev_reg = buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
+
+	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
+}
+
+static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_t reg)
+{
+	return intel_dsb_prev_ins_is_write(dsb, DSB_OPCODE_INDEXED_WRITE, reg);
+}
+
 /**
  * intel_dsb_indexed_reg_write() -Write to the DSB context for auto
  * increment register.
@@ -119,7 +136,6 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 				 i915_reg_t reg, u32 val)
 {
 	u32 *buf = dsb->cmd_buf;
-	u32 reg_val;
 
 	if (!assert_dsb_has_room(dsb))
 		return;
@@ -140,8 +156,7 @@ void intel_dsb_indexed_reg_write(struct intel_dsb *dsb,
 	 * we are writing odd no of dwords, Zeros will be added in the end for
 	 * padding.
 	 */
-	reg_val = buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
-	if (reg_val != i915_mmio_reg_offset(reg)) {
+	if (!intel_dsb_prev_ins_is_indexed_write(dsb, reg)) {
 		/* Every instruction should be 8 byte aligned. */
 		dsb->free_pos = ALIGN(dsb->free_pos, 2);
 
-- 
2.37.4

