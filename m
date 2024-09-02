Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 933AB968932
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:53:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0BB110E041;
	Mon,  2 Sep 2024 13:53:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilubBAtT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BE7310E041
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285227; x=1756821227;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=xunuHPj4gHw6PzHrpl/pKF42pN+Bpf1LCfxWKXpnp+c=;
 b=ilubBAtT5Y1XGqnnhGfCJlnYWjH7TJ7U4xR8+n0tm2Wgn97le23CEDAz
 jIBScy85pCCUi7SpNgICOaH2bFzSb8zFFTSpOGSDABnBGVK+D0kSnvNBY
 lUERpVkqbmKuDpmFk5ldj9YCGrHR2molPigIAL3aQ0UUFAmhbDCD4qJq7
 +q+OD6XKICVOD0CN3AVT36TngXvjgu4OUCnO/drOEpWhmKdHcpzSIobmS
 VzD1z1mLn9yZND943MjaTiDqnEyXj4S2cDhTQ0NiUSlPOX0uP06cRIrz+
 MohG2sNH35HiLU2Jtw2VUW3B4JJFnTSS80OgP+qbLUPlcpW2HOuEwLTqe Q==;
X-CSE-ConnectionGUID: NroT+QF7TqOySeXa3Gv0EQ==
X-CSE-MsgGUID: jQRY1yk1TwmLtZCrCIfMgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343607"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343607"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:53:47 -0700
X-CSE-ConnectionGUID: 4pEaScrOSvC0zBRlUKrkvA==
X-CSE-MsgGUID: cyJGu4sdQguR58QonulfCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623837"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:53:45 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:53:44 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 01/13] drm/i915/dsb: Avoid reads of the DSB buffer for indexed
 register writes
Date: Mon,  2 Sep 2024 16:53:30 +0300
Message-ID: <20240902135342.1050-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
References: <20240902135342.1050-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reading from the DSB command buffer might be somewhat expensive on
discrete GPUs because the buffer resides in GPU local memory. Avoid
such reads in the indexed register write handling by tracking the
previous instruction in intel_dsb.

TODO: actually measure this

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 54 ++++++++++++++----------
 1 file changed, 32 insertions(+), 22 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index da24e041d269..a14b0230a4f4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -37,9 +37,16 @@ struct intel_dsb {
 	unsigned int free_pos;
 
 	/*
-	 * ins_start_offset will help to store start dword of the dsb
-	 * instuction and help in identifying the batch of auto-increment
-	 * register.
+	 * Previously emitted DSB instruction. Used to
+	 * identify/adjust the instruction for indexed
+	 * register writes.
+	 */
+	u32 ins[2];
+
+	/*
+	 * Start of the previously emitted DSB instruction.
+	 * Used to adjust the instruction for indexed
+	 * register writes.
 	 */
 	unsigned int ins_start_offset;
 
@@ -215,9 +222,11 @@ static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 	dsb->free_pos = ALIGN(dsb->free_pos, 2);
 
 	dsb->ins_start_offset = dsb->free_pos;
+	dsb->ins[0] = ldw;
+	dsb->ins[1] = udw;
 
-	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, ldw);
-	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, udw);
+	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, dsb->ins[0]);
+	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, dsb->ins[1]);
 }
 
 static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
@@ -233,10 +242,8 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 	if (dsb->free_pos == 0)
 		return false;
 
-	prev_opcode = intel_dsb_buffer_read(&dsb->dsb_buf,
-					    dsb->ins_start_offset + 1) & ~DSB_REG_VALUE_MASK;
-	prev_reg =  intel_dsb_buffer_read(&dsb->dsb_buf,
-					  dsb->ins_start_offset + 1) & DSB_REG_VALUE_MASK;
+	prev_opcode = dsb->ins[1] & ~DSB_REG_VALUE_MASK;
+	prev_reg =  dsb->ins[1] & DSB_REG_VALUE_MASK;
 
 	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
 }
@@ -269,8 +276,6 @@ static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val)
 {
-	u32 old_val;
-
 	/*
 	 * For example the buffer will look like below for 3 dwords for auto
 	 * increment register:
@@ -299,23 +304,27 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 
 		/* convert to indexed write? */
 		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
-			u32 prev_val = intel_dsb_buffer_read(&dsb->dsb_buf,
-							     dsb->ins_start_offset + 0);
+			u32 prev_val = dsb->ins[0];
 
-			intel_dsb_buffer_write(&dsb->dsb_buf,
-					       dsb->ins_start_offset + 0, 1); /* count */
+			dsb->ins[0] = 1; /* count */
+			dsb->ins[1] = (DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
+				i915_mmio_reg_offset(reg);
+
+			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 0,
+					       dsb->ins[0]);
 			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 1,
-					       (DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
-					       i915_mmio_reg_offset(reg));
-			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 2, prev_val);
+					       dsb->ins[1]);
+			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 2,
+					       prev_val);
 
 			dsb->free_pos++;
 		}
 
 		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, val);
 		/* Update the count */
-		old_val = intel_dsb_buffer_read(&dsb->dsb_buf, dsb->ins_start_offset);
-		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset, old_val + 1);
+		dsb->ins[0]++;
+		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 0,
+				       dsb->ins[0]);
 
 		/* if number of data words is odd, then the last dword should be 0.*/
 		if (dsb->free_pos & 0x1)
@@ -671,6 +680,9 @@ void intel_dsb_wait(struct intel_dsb *dsb)
 	/* Attempt to reset it */
 	dsb->free_pos = 0;
 	dsb->ins_start_offset = 0;
+	dsb->ins[0] = 0;
+	dsb->ins[1] = 0;
+
 	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id), 0);
 
 	intel_de_write_fw(display, DSB_INTERRUPT(pipe, dsb->id),
@@ -727,8 +739,6 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 	dsb->id = dsb_id;
 	dsb->crtc = crtc;
 	dsb->size = size / 4; /* in dwords */
-	dsb->free_pos = 0;
-	dsb->ins_start_offset = 0;
 
 	dsb->chicken = dsb_chicken(state, crtc);
 	dsb->hw_dewake_scanline =
-- 
2.44.2

