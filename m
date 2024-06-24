Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D807C9156FB
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jun 2024 21:11:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A9B510E565;
	Mon, 24 Jun 2024 19:11:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kWb8jyeJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B934210E561
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Jun 2024 19:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719256261; x=1750792261;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ynqI+z+wdo/aBIaoCKqR1wRelbGjrvD+tuFW0wcPotM=;
 b=kWb8jyeJiLLVbsS1oQYDfctzl5WaotjK8ICpDALIeppyzQ4x1gIcJcoG
 SvFC5mVKxt37OTuej0HdC8w5kPKnxLGzSIx6CrqCn2ykGwvJ3Hmv8Q3G+
 fVIsNBzmscJrrj7kHpzxm+VLI5c1Y1maiZXQO+vDmfvPbh5IXeWW9hUBO
 dbUWktI70aSwlAEgvNQOv31F4gJIEb22qXeVONOk9YtiF3KSdSKxIIy2P
 rpKbFMsOeIc8kMHxdODp8w3gfx1onIumyuihSLjkIEwgIOdsisw+1CwAA
 sTfqtAmihb56AvoUPhZXhKymxKYMlmv3F+oF4MMDXDagbKuJ6+PDT5d/H w==;
X-CSE-ConnectionGUID: LhWK5L0WRVaMW1uFyhDGlQ==
X-CSE-MsgGUID: GnevOihOQOCoMl0W9fVMsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11113"; a="16374206"
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="16374206"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2024 12:11:00 -0700
X-CSE-ConnectionGUID: pcHIS77JQLqZPFuEH5VFMQ==
X-CSE-MsgGUID: PyTFROnwQ7mtDOfQE1rLKg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,262,1712646000"; d="scan'208";a="43371979"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 Jun 2024 12:10:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Jun 2024 22:10:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 09/14] drm/i915/dsb: Introduce intel_dsb_wait_scanline_{in,
 out}()
Date: Mon, 24 Jun 2024 22:10:27 +0300
Message-ID: <20240624191032.27333-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
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

Add functions to emit a DSB scanline window wait instructions.
We can either wait for the scanline to be IN the window
or OUT of the window.

The hardware doesn't handle wraparound so we must manually
deal with it by swapping the IN range to the inverse OUT
range, or vice versa.

Also add a bit of paranoia to catch the edge case of waiting
for the entire frame. That doesn't make sense since an IN
wait would be a nop, and an OUT wait would imply waiting
forever. Most of the time this also results in both scanline
ranges (original and inverted) to have lower=upper+1
which is nonsense from the hw POV.

For now we are only handling the case where the scanline wait
happens prior to latching the double buffered registers during
the commit (which might change the timings due to LRR/VRR/etc.)

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 73 ++++++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  6 ++
 2 files changed, 79 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 81937908c798..092cf082ac39 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -362,6 +362,79 @@ void intel_dsb_nonpost_end(struct intel_dsb *dsb)
 	intel_dsb_noop(dsb, 4);
 }
 
+static void intel_dsb_emit_wait_dsl(struct intel_dsb *dsb,
+				    u32 opcode, int lower, int upper)
+{
+	u64 window = ((u64)upper << DSB_SCANLINE_UPPER_SHIFT) |
+		((u64)lower << DSB_SCANLINE_LOWER_SHIFT);
+
+	intel_dsb_emit(dsb, lower_32_bits(window),
+		       (opcode << DSB_OPCODE_SHIFT) |
+		       upper_32_bits(window));
+}
+
+static void intel_dsb_wait_dsl(struct intel_atomic_state *state,
+			       struct intel_dsb *dsb,
+			       int lower_in, int upper_in,
+			       int lower_out, int upper_out)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+
+	lower_in = dsb_scanline_to_hw(state, crtc, lower_in);
+	upper_in = dsb_scanline_to_hw(state, crtc, upper_in);
+
+	lower_out = dsb_scanline_to_hw(state, crtc, lower_out);
+	upper_out = dsb_scanline_to_hw(state, crtc, upper_out);
+
+	if (upper_in >= lower_in)
+		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_IN,
+					lower_in, upper_in);
+	else if (upper_out >= lower_out)
+		intel_dsb_emit_wait_dsl(dsb, DSB_OPCODE_WAIT_DSL_OUT,
+					lower_out, upper_out);
+	else
+		drm_WARN_ON(crtc->base.dev, 1); /* assert_dsl_ok() should have caught it already */
+}
+
+static void assert_dsl_ok(struct intel_atomic_state *state,
+			  struct intel_dsb *dsb,
+			  int start, int end)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	int vtotal = dsb_vtotal(state, crtc);
+
+	/*
+	 * Waiting for the entire frame doesn't make sense,
+	 * (IN==don't wait, OUT=wait forever).
+	 */
+	drm_WARN(crtc->base.dev, (end - start + vtotal) % vtotal == vtotal - 1,
+		 "[CRTC:%d:%s] DSB %d bad scanline window wait: %d-%d (vt=%d)\n",
+		 crtc->base.base.id, crtc->base.name, dsb->id,
+		 start, end, vtotal);
+}
+
+void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
+				struct intel_dsb *dsb,
+				int start, int end)
+{
+	assert_dsl_ok(state, dsb, start, end);
+
+	intel_dsb_wait_dsl(state, dsb,
+			   start, end,
+			   end + 1, start - 1);
+}
+
+void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
+				 struct intel_dsb *dsb,
+				 int start, int end)
+{
+	assert_dsl_ok(state, dsb, start, end);
+
+	intel_dsb_wait_dsl(state, dsb,
+			   end + 1, start - 1,
+			   start, end);
+}
+
 static void intel_dsb_align_tail(struct intel_dsb *dsb)
 {
 	u32 aligned_tail, tail;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 84fc2f8434d1..d0737cefb393 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -39,6 +39,12 @@ void intel_dsb_reg_write_masked(struct intel_dsb *dsb,
 void intel_dsb_noop(struct intel_dsb *dsb, int count);
 void intel_dsb_nonpost_start(struct intel_dsb *dsb);
 void intel_dsb_nonpost_end(struct intel_dsb *dsb);
+void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
+				struct intel_dsb *dsb,
+				int lower, int upper);
+void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
+				 struct intel_dsb *dsb,
+				 int lower, int upper);
 
 void intel_dsb_commit(struct intel_dsb *dsb,
 		      bool wait_for_vblank);
-- 
2.44.2

