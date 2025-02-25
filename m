Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0542A44A31
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Feb 2025 19:24:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 266D810E796;
	Tue, 25 Feb 2025 18:24:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hUlcuU/e";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB6510E795;
 Tue, 25 Feb 2025 18:24:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740507883; x=1772043883;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B0fb9SGJQkHys+MAP7X3pLLbUOfZuUP44QonMfY4lyQ=;
 b=hUlcuU/elrGPEoHRd42Nd4/e4OXZT4+B6eg4bfNcB6y5fXfYla0RYA/D
 IZ6K7GLoOWM8J9zl6UnXbZJgDYJyfyy7lu1Bib23Yqxe0KaV8XEZhLEYN
 Dy+CY8tL+Y4GJXwdDeLBaBb8NVxnDx1HCNwacl2It2jn+n5NeQt6Ndjvm
 Xfgzg6nL5/l0fSeW7DJCu1W++fB+qHRsgouhyDZ1sOGh7KgaydFn76I64
 jzRcST4t3bm9j6eVfwH9sHUwwUBSbAsW27KvbcL8fq/xGqJm+zGnwhW1A
 hrxanBXulicU5J52R2iERPhGZIJ0sOpkmbxMgsxoXgpGd9sqJ68/sdAph w==;
X-CSE-ConnectionGUID: kCMivubdSaeaECvkE16GfQ==
X-CSE-MsgGUID: 9QT2wHfyTXmEViw7hi9JdQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11356"; a="41245937"
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; d="scan'208,223";a="41245937"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2025 10:24:43 -0800
X-CSE-ConnectionGUID: kDPB9nszRASk92QPfWo2bw==
X-CSE-MsgGUID: VqljkwQXRbazX0hEZSm58w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,314,1732608000"; 
 d="scan'208,223";a="117081422"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa009.fm.intel.com with ESMTP; 25 Feb 2025 10:24:41 -0800
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH 2/2] drm/i915/display: Don't wait for vblank for LUT DSB
 programming
Date: Tue, 25 Feb 2025 23:39:05 +0530
Message-Id: <20250225180905.1588084-3-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
References: <20250225180905.1588084-1-chaitanya.kumar.borah@intel.com>
MIME-Version: 1.0
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

From PTL, LUT registers are made double buffered. With this change,
we don't need to wait for vblank to program them. Start DSB1 for
programming them without waiting for vblank.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 919e236a9650..9c3fdfcd6759 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7352,6 +7352,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 {
 	struct intel_crtc_state *new_crtc_state =
 		intel_atomic_get_new_crtc_state(state, crtc);
+	struct intel_display *display = to_intel_display(state);
 
 	if (!new_crtc_state->use_dsb && !new_crtc_state->dsb_color_vblank)
 		return;
@@ -7408,7 +7409,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 
 	if (new_crtc_state->dsb_color_vblank)
 		intel_dsb_chain(state, new_crtc_state->dsb_commit,
-				new_crtc_state->dsb_color_vblank, true);
+				new_crtc_state->dsb_color_vblank,
+				HAS_DOUBLE_BUFFERED_LUT(display) ? false : true);
 
 	intel_dsb_finish(new_crtc_state->dsb_commit);
 }
-- 
2.25.1

