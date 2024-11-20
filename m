Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CD39D404F
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Nov 2024 17:41:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEE8110E78F;
	Wed, 20 Nov 2024 16:41:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MuCbfrLM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 357BF10E2D3
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Nov 2024 16:41:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732120911; x=1763656911;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=D0JMaCkdmCyhxqk/vJeFo/DhxxVH5lE4XbJMDTTf0EA=;
 b=MuCbfrLMdiYc8ZqdukyLvZhKy46+46ypQol8DmbK8pVrZaoYeN9t+IVl
 qju1Ph/ni02NCGswBtfkfZR/jJzvZlRX5pu1e2NUip9jhf0ACdWMzcpxr
 g+2N+QYzfke0g5EjA8qOGY7WlpHjfJLDkHhy/sPl46ly6t1/zlFYiQ3dI
 JxDz26+OKcd6ErLf2OtOrQ9u0ozXsXy55+sBWCql9S7fBdun9k7NC7f5e
 I8fmhltiy8hT4dbXqaeIva1Z2/VWVbW9LJgYDq35AbVlUHYL4904E9q80
 rMNEnztwgRTbL54BplYpjvyIf2EqMupMKXGpl+uDXG6yMZI6RvSAQYJVN w==;
X-CSE-ConnectionGUID: 1RBqKLRsQAylcc+bzPEr4g==
X-CSE-MsgGUID: 9rUJkkAAQWaUFBG/O29ljw==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="49620335"
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="49620335"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2024 08:41:34 -0800
X-CSE-ConnectionGUID: imFnWCpzSqaI0FDpQPtj1g==
X-CSE-MsgGUID: mW8huab0T3SeIPGjt4tnYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,170,1728975600"; d="scan'208";a="90137173"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Nov 2024 08:41:33 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 20 Nov 2024 18:41:31 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/4] drm/i915/dsb: Nuke the MMIO->indexed register write logic
Date: Wed, 20 Nov 2024 18:41:22 +0200
Message-ID: <20241120164123.12706-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
References: <20241120164123.12706-1-ville.syrjala@linux.intel.com>
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

We've determined that indexed DSB writes are only faster
than MMIO writes when writing the same register ~5 or more
times. That seems very unlikely to happen in any other case
than when using indexed LUT registers. Simplify the code
by removing the MMIO->indexed write conversion logic and
just emit the instruction as an indexed write from the get go.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 58 ++++++------------------
 1 file changed, 14 insertions(+), 44 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 4d3785f5cb52..e6f8fc743fb4 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -256,15 +256,6 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
 }
 
-static bool intel_dsb_prev_ins_is_mmio_write(struct intel_dsb *dsb, i915_reg_t reg)
-{
-	/* only full byte-enables can be converted to indexed writes */
-	return intel_dsb_prev_ins_is_write(dsb,
-					   DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT |
-					   DSB_BYTE_EN << DSB_BYTE_EN_SHIFT,
-					   reg);
-}
-
 static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_t reg)
 {
 	return intel_dsb_prev_ins_is_write(dsb,
@@ -273,7 +264,7 @@ static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_
 }
 
 /**
- * intel_dsb_reg_write_indexed() - Emit register wriite to the DSB context
+ * intel_dsb_reg_write_indexed() - Emit indexed register write to the DSB context
  * @dsb: DSB context
  * @reg: register address.
  * @val: value.
@@ -304,44 +295,23 @@ void intel_dsb_reg_write_indexed(struct intel_dsb *dsb,
 	 * we are writing odd no of dwords, Zeros will be added in the end for
 	 * padding.
 	 */
-	if (!intel_dsb_prev_ins_is_mmio_write(dsb, reg) &&
-	    !intel_dsb_prev_ins_is_indexed_write(dsb, reg)) {
-		intel_dsb_emit(dsb, val,
-			       (DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT) |
-			       (DSB_BYTE_EN << DSB_BYTE_EN_SHIFT) |
+	if (!intel_dsb_prev_ins_is_indexed_write(dsb, reg))
+		intel_dsb_emit(dsb, 0, /* count */
+			       (DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
 			       i915_mmio_reg_offset(reg));
-	} else {
-		if (!assert_dsb_has_room(dsb))
-			return;
-
-		/* convert to indexed write? */
-		if (intel_dsb_prev_ins_is_mmio_write(dsb, reg)) {
-			u32 prev_val = dsb->ins[0];
 
-			dsb->ins[0] = 1; /* count */
-			dsb->ins[1] = (DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT) |
-				i915_mmio_reg_offset(reg);
-
-			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 0,
-					       dsb->ins[0]);
-			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 1,
-					       dsb->ins[1]);
-			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 2,
-					       prev_val);
-
-			dsb->free_pos++;
-		}
+	if (!assert_dsb_has_room(dsb))
+		return;
 
-		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, val);
-		/* Update the count */
-		dsb->ins[0]++;
-		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 0,
-				       dsb->ins[0]);
+	/* Update the count */
+	dsb->ins[0]++;
+	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->ins_start_offset + 0,
+			       dsb->ins[0]);
 
-		/* if number of data words is odd, then the last dword should be 0.*/
-		if (dsb->free_pos & 0x1)
-			intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos, 0);
-	}
+	intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos++, val);
+	/* if number of data words is odd, then the last dword should be 0.*/
+	if (dsb->free_pos & 0x1)
+		intel_dsb_buffer_write(&dsb->dsb_buf, dsb->free_pos, 0);
 }
 
 void intel_dsb_reg_write(struct intel_dsb *dsb,
-- 
2.45.2

