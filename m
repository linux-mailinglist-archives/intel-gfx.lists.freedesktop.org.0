Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7225BB1B2E7
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 13:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3B4410E667;
	Tue,  5 Aug 2025 11:57:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lPDYRZ5z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB8E10E665;
 Tue,  5 Aug 2025 11:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754395023; x=1785931023;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=iyk6vFm0CV9wP9U5+AR3P67YyB7CCgRy4RMX2mEDQrE=;
 b=lPDYRZ5zX7wCT8ncxxs94mGrj3sSGcClUn71Wp31miCdCYL8ms82Ua9X
 +UUAf5dVuhNLLVRCVz/ZW3SDYAKpjIrntRjHfZ04Xlxn39g61qM5uDpfR
 ldSwJJl0kZxRlRMDFQSSqfX3QjZPIGrOFbBPRdfHE2uqdES0sky8nieEH
 FTgae3yxpvS3nblllQ56ZFQ1rJuvKu8UrBv4M8bBA7bpy3sKL9dMSa1vx
 atnRdlUsHziIB3dTvdeSgDeuFQ7QP7rXYZcmNPJtXeDhCMXs/HjR8k7pQ
 /ccPBhotPFeNdwGAaL0pnTY4Mn8fCFJ5i3+Z5YoSo5YyWtEDl/rAeFGuf w==;
X-CSE-ConnectionGUID: RJqZ/bHEQoqRzVBYdFWy0w==
X-CSE-MsgGUID: LZX64X5kTXypZKonsto54A==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60493548"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60493548"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:57:03 -0700
X-CSE-ConnectionGUID: IJVu6eaDTfW2BKNeUQjc3g==
X-CSE-MsgGUID: FkC4YRAbTM6jF3BT/3CxeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="168733040"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.8])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 04:57:00 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, "Jason A . Donenfeld" <Jason@zx2c4.com>,
 stable@vger.kernel.org,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>
Subject: [PATCH] drm/i915: silence rpm wakeref asserts on GEN11_GU_MISC_IIR
 access
Date: Tue,  5 Aug 2025 14:56:56 +0300
Message-Id: <20250805115656.832235-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Commit 8d9908e8fe9c ("drm/i915/display: remove small micro-optimizations
in irq handling") not only removed the optimizations, it also enabled
wakeref asserts for the GEN11_GU_MISC_IIR access. Silence the asserts by
wrapping the access inside intel_display_rpm_assert_{block,unblock}().

Reported-by: Jason A. Donenfeld <Jason@zx2c4.com>
Closes: https://lore.kernel.org/r/aG0tWkfmxWtxl_xc@zx2c4.com
Fixes: 8d9908e8fe9c ("drm/i915/display: remove small micro-optimizations in irq handling")
Cc: <stable@vger.kernel.org> # v6.13+
Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_irq.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
index fb25ec8adae3..68157f177b6a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
@@ -1506,10 +1506,14 @@ u32 gen11_gu_misc_irq_ack(struct intel_display *display, const u32 master_ctl)
 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
 		return 0;
 
+	intel_display_rpm_assert_block(display);
+
 	iir = intel_de_read(display, GEN11_GU_MISC_IIR);
 	if (likely(iir))
 		intel_de_write(display, GEN11_GU_MISC_IIR, iir);
 
+	intel_display_rpm_assert_unblock(display);
+
 	return iir;
 }
 
-- 
2.39.5

