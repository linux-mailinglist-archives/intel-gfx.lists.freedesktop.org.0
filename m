Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D419CAFD005
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Jul 2025 18:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6806210E6A7;
	Tue,  8 Jul 2025 16:03:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g5Ug+z/w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86EB710E6A7;
 Tue,  8 Jul 2025 16:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751990634; x=1783526634;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=16+eCXmH+sTe2FswPiM2lgVcpBsXo5yOfk9Ka8nRVys=;
 b=g5Ug+z/wTcthPIDkWkA50UbH4/mnq278HRgkznYxChaGd0f+P+1AF1iF
 9wC5u2eorbgGh7NMX0M9zc+eSHqFuF4ItF7JqRacQyKOBcdf6nuGiEjkj
 M0ohGyBZxUfd/jlA/0x3VzzAIVS3nC5T3d2BwT9GRlNBu6z/iQKrVR5MS
 pficYJ9Aj6GoVRuiVh8MbPveu8O5Xr7lHxMElwEl5+WY6LRLxs+z/647X
 zLmubdDt+1RIeYYPnJhOHlLpSd7BQBWcLuz9USaCQekHL1UnLL+wEvUs9
 e3ytC+wPUnJAUXGA13da5OGwaGYcA4LMmUd3LozEAc6onJAl1AbE51fpG w==;
X-CSE-ConnectionGUID: v3Ed5bJUT1KtNi+LjV+s4g==
X-CSE-MsgGUID: ZtYOfkQGT/+U1yyxzeiB0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="58039062"
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="58039062"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jul 2025 09:03:42 -0700
X-CSE-ConnectionGUID: OgjdjCk8RkaqggjUziBLuQ==
X-CSE-MsgGUID: JChOydP5RPOG8D6ctz0YsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,297,1744095600"; d="scan'208";a="161179664"
Received: from johunt-mobl9.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.55])
 by orviesa005.jf.intel.com with SMTP; 08 Jul 2025 09:03:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Jul 2025 19:03:20 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, Jani Nikula <jani.nikula@intel.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>
Subject: [PATCH 1/4] drm/i915/display: Disable wakeref asserts around GU_MISC
 irq handling
Date: Tue,  8 Jul 2025 19:03:17 +0300
Message-ID: <20250708160320.5653-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.0
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

The GU_MISC/GSE interrupt may be raised even when we're not
holding a runtime PM wakeref. Disable the asserts while
processing GU_MISC irqs. Previously this was covered by
the use of raw_reg_{read,write}() which lack the assert.

Not having an assert is fine since we synchronize irqs
during runtime suspend.

Arguably this stuff shouldn't really be in the display code
since GU_MISC is for Gunit interrupts. But I suppose as long
as we only care about the GSE interrupt bit it doesn't really
matter that the code is misplaced.

Cc: Jani Nikula <jani.nikula@intel.com>
Reported-by: Jason A. Donenfeld <Jason@zx2c4.com>
Closes: https://lore.kernel.org/intel-gfx/aG0tWkfmxWtxl_xc@zx2c4.com/
Fixes: 8d9908e8fe9c ("drm/i915/display: remove small micro-optimizations in irq handling")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
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
2.49.0

