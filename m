Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CB481B59FA7
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 19:43:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4212010E3AF;
	Tue, 16 Sep 2025 17:43:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CLxvJPsS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7EAB310E133
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 17:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758044602; x=1789580602;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qz7l47uNekhEgUhWmVlLBaIt5puKnB80XaV5OXpjjws=;
 b=CLxvJPsSpgxM+DLEMdWm9B03WQNAfuRwle86XAjvUJsMIGek/iWSoQis
 OPeXl4BJmXAcmu7Nka/uz7iXEAClsA57tL5GkLby3X+R7MzwnQdQ0pQo9
 c4sZ2+a0U6AdFzFtCyLGNCNz65iAlCh9XrtMRL4zQKqCi8J0CXdlaYi4I
 bgGlvPO8xbKbUO2Ga5fxcK4X0NVm8b41++FuwlfErsO9N0C7UOi2gIPhU
 faYcM7xjSHvN7O9YJ5B+RMLxxntUeuPWy4m+LEtzaqzNb2ITT2RrmKiNt
 FZd+xsHCSxI2GS4FEMXCtP4b8cOH546h393nuKCFuc4P0B9eXWLS40fAz w==;
X-CSE-ConnectionGUID: +IlXzixkTeSzpLltzPeFPw==
X-CSE-MsgGUID: 9cpGOlYmSh+v5wHGNwj/bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60252290"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60252290"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 10:43:20 -0700
X-CSE-ConnectionGUID: mNEiUC2TSN+RJ70xnqEgqQ==
X-CSE-MsgGUID: c3A9XUhgQ4u6FISct6Uo8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="212165767"
Received: from dut4412lnl.fm.intel.com ([10.105.8.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 10:43:19 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com,
	alex.zuo@intel.com,
	jonathan.cavitt@intel.com
Subject: [PATCH 2/2] drm/i915/gvt: Fix intel_vgpu_gpa_to_mmio_offset kernel
 docs
Date: Tue, 16 Sep 2025 17:43:20 +0000
Message-ID: <20250916174317.76521-6-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916174317.76521-4-jonathan.cavitt@intel.com>
References: <20250916174317.76521-4-jonathan.cavitt@intel.com>
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

intel_vgpu_gpa_to_mmio_offset states that it returns
'Zero on success, negative error code if failed'
in the kernel docs.

This is false.  The function actually returns
'The MMIO offset of the given GPA'.
Correct the docs.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gvt/mmio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
index c60d1e548800..db5cd65100fe 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.c
+++ b/drivers/gpu/drm/i915/gvt/mmio.c
@@ -49,7 +49,7 @@
  * @gpa: guest physical address
  *
  * Returns:
- * Zero on success, negative error code if failed
+ * The MMIO offset of the given GPA
  */
 int intel_vgpu_gpa_to_mmio_offset(struct intel_vgpu *vgpu, u64 gpa)
 {
-- 
2.43.0

