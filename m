Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1A4F968937
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Sep 2024 15:54:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ECD610E2F8;
	Mon,  2 Sep 2024 13:54:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WWgQWDSP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BE2F10E2F7
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Sep 2024 13:54:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725285241; x=1756821241;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=WcsI8RKS6ssc2ikVyPQfy4fhTFR+l2tn8RqSxj4N0X4=;
 b=WWgQWDSPLHaetTSj32s6NMLH+02j4UW455/i0lomzOnf11/s32187iXV
 JNArGSKLuyok64uec544Avq2t668ud7WKe0p7hl3xj3dWi0nh3OFPSjE0
 pqcBAFXIjS7HgglnDWbQF7eSBKG3CxZdNwUdWVxW7qNWa5GH9cqR/pN2I
 ozt8xB5f2VVJ1S2u9nwQ7cLYq4bGZykVMkM0Xwz1bD8KPrxtqTuI3dcEu
 PpL3ErOr9NL+v0m1RwUbyO/rGaznEbSFEa6JiGgX8LLw4uffsBB+kotw/
 Cy/FBktrDFNDkHLY1YG6EIrn3IckQkkhw3HpHJ3THBEJJ4BjjI1AR9Wm6 w==;
X-CSE-ConnectionGUID: 90ce7mW2TmqfDDYDjavWkA==
X-CSE-MsgGUID: MYldTkdaRWG3Rr0yMUlYXg==
X-IronPort-AV: E=McAfee;i="6700,10204,11183"; a="41343628"
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="41343628"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2024 06:54:01 -0700
X-CSE-ConnectionGUID: z5uBvsokTH635QU49gA0JQ==
X-CSE-MsgGUID: 5rvp/e9jSluNIcmHESrwhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,195,1719903600"; d="scan'208";a="64623874"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 02 Sep 2024 06:53:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 02 Sep 2024 16:53:58 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 06/13] drm/i915/dsb: Introduce intel_dsb_wait_usec()
Date: Mon,  2 Sep 2024 16:53:35 +0300
Message-ID: <20240902135342.1050-7-ville.syrjala@linux.intel.com>
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

Add a function to emit the DSB "wait usecs" instruction.
This is just a usleep() for the DSB.

As a lower bound it seems pretty accurate, but the upper bound
seemed oddly relaxed (ie. sometimes I've seen waits that are
quite a bit longer than specified, not sure why).

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 6 ++++++
 drivers/gpu/drm/i915/display/intel_dsb.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 997196ba69ca..da5c25f3d01e 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -391,6 +391,12 @@ void intel_dsb_interrupt(struct intel_dsb *dsb)
 		       DSB_OPCODE_INTERRUPT << DSB_OPCODE_SHIFT);
 }
 
+void intel_dsb_wait_usec(struct intel_dsb *dsb, int count)
+{
+	intel_dsb_emit(dsb, count,
+		       DSB_OPCODE_WAIT_USEC << DSB_OPCODE_SHIFT);
+}
+
 static void intel_dsb_emit_wait_dsl(struct intel_dsb *dsb,
 				    u32 opcode, int lower, int upper)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index cce5cb1c6071..882088f55580 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -40,6 +40,7 @@ void intel_dsb_noop(struct intel_dsb *dsb, int count);
 void intel_dsb_nonpost_start(struct intel_dsb *dsb);
 void intel_dsb_nonpost_end(struct intel_dsb *dsb);
 void intel_dsb_interrupt(struct intel_dsb *dsb);
+void intel_dsb_wait_usec(struct intel_dsb *dsb, int count);
 void intel_dsb_wait_scanline_in(struct intel_atomic_state *state,
 				struct intel_dsb *dsb,
 				int lower, int upper);
-- 
2.44.2

