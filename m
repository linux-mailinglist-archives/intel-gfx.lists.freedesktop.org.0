Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E06A2D08A
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Feb 2025 23:34:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB33310E0DB;
	Fri,  7 Feb 2025 22:34:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Qi5IwQTk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A901010EBB7;
 Fri,  7 Feb 2025 22:32:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738967537; x=1770503537;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+nxSU7lG7VZB8Wz5lymR6Lj0oBCKLuce+LRAK8iwh+Q=;
 b=Qi5IwQTkAWCAQgZMCJaFILXulm8LzWAiOk/0NGNH2E/nfn5W0dxM/yxu
 5x9UBB6rt5AeKi0RYbY/kQ2EO30iL7h8kng+GjbSqixte3rM70whWUim6
 GRjuOp/1xk2acsS5po54uH7uKEf0xNDHp+9yEYmlo0dQO3Fj1L7/OanUw
 yDQkEOub4E/OzR5lObtIane0fFbHfiO/9hKOnhy/POUyXVubQSblOfwVG
 evqyjWc6rFzlzrYt2lJcIIQeS1j8i+TOErYZZ64fVP3zNoVRyZU0by37t
 s6YfxzSZCl7dt2PvksRmFDQjyi5pgFg/PYOP+m5lpTSWOS0Fp3o9cjssL g==;
X-CSE-ConnectionGUID: koJlxPVjR9yxK4CVqYDLdQ==
X-CSE-MsgGUID: HAadJvsKSayKnPyhLzCdyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11338"; a="39313400"
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="39313400"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2025 14:32:17 -0800
X-CSE-ConnectionGUID: 2RMxBjxcTfq9iJH+nQYYCA==
X-CSE-MsgGUID: 4Xjm4fXDTZKVrA981C1CIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,268,1732608000"; d="scan'208";a="111857454"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 07 Feb 2025 14:32:15 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Sat, 08 Feb 2025 00:32:14 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH v2 5/8] drm/i915/dsb: Introduce intel_dsb_poll()
Date: Sat,  8 Feb 2025 00:31:56 +0200
Message-ID: <20250207223159.14132-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
References: <20250207223159.14132-1-ville.syrjala@linux.intel.com>
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

Add a function for emitting a DSB poll instruction. We'll allow
the caller to specify the poll parameters.

v2: s/wait/wait_us/ (Ankit)

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 19 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dsb.h |  3 +++
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 01e3bd385cac..aba57ddfbb92 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -459,6 +459,25 @@ void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
 			   start, end);
 }
 
+void intel_dsb_poll(struct intel_dsb *dsb,
+		    i915_reg_t reg, u32 mask, u32 val,
+		    int wait_us, int count)
+{
+	struct intel_crtc *crtc = dsb->crtc;
+	enum pipe pipe = crtc->pipe;
+
+	intel_dsb_reg_write(dsb, DSB_POLLMASK(pipe, dsb->id), mask);
+	intel_dsb_reg_write(dsb, DSB_POLLFUNC(pipe, dsb->id),
+			    DSB_POLL_ENABLE |
+			    DSB_POLL_WAIT(wait_us) | DSB_POLL_COUNT(count));
+
+	intel_dsb_noop(dsb, 5);
+
+	intel_dsb_emit(dsb, val,
+		       (DSB_OPCODE_POLL << DSB_OPCODE_SHIFT) |
+		       i915_mmio_reg_offset(reg));
+}
+
 static void intel_dsb_align_tail(struct intel_dsb *dsb)
 {
 	u32 aligned_tail, tail;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index da6df07a3c83..e843c52bf97c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -54,6 +54,9 @@ void intel_dsb_wait_scanline_out(struct intel_atomic_state *state,
 				 int lower, int upper);
 void intel_dsb_vblank_evade(struct intel_atomic_state *state,
 			    struct intel_dsb *dsb);
+void intel_dsb_poll(struct intel_dsb *dsb,
+		    i915_reg_t reg, u32 mask, u32 val,
+		    int wait_us, int count);
 void intel_dsb_chain(struct intel_atomic_state *state,
 		     struct intel_dsb *dsb,
 		     struct intel_dsb *chained_dsb,
-- 
2.45.3

