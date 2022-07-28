Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5832258365B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:35:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0FD10E6D9;
	Thu, 28 Jul 2022 01:35:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 265AC10EDA7
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KLxNBNEnEqPbFDwru/cc5997Cn9SvuIfubYs7zHDEUQ=;
 b=bvwN9s0WXwG2zY1uvjvRv5XPF6JV1zbVeXIIZpmp1yQu7gQzIReCtry7
 MSyqz9y31EQo9N8071liUQ7j1pK/x4Nnwg4NWmq8GiItkvkuPyo3l8Z3l
 +Q1Sb0HDOoagOMJ/yf218zNKXoRQk96LrcskCfikmVPhtUmiABVTPJE8W
 uqIPIuxg7m3SzlMTXxMFV4NLyO20PD1JE0FsjXHTuN0OgxtvhGDyi0Vny
 f2ZGDF4nk1uBRxpXiqNgckqUqfD3nDdp3i4VMiJ8jCWOup7rbk/lBJSNP
 biCxTdF1Y6YpUZrfiVzG4NNOkoFJkbvRP+KICgPb4rWMPkBHKl607CuWq A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693651"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693651"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456951"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:38 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:00 -0700
Message-Id: <20220728013420.3750388-4-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 03/23] drm/i915/mtl: MMIO range is now 4MB
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

From: Matt Roper <matthew.d.roper@intel.com>

Previously only dgfx platforms had a 4MB MMIO range, but starting with
MTL we now use the larger range for all platforms.

Bspec: 63834, 63830
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/intel_uncore.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
index a852c471d1b3..e0a8a8cb2052 100644
--- a/drivers/gpu/drm/i915/intel_uncore.c
+++ b/drivers/gpu/drm/i915/intel_uncore.c
@@ -2232,14 +2232,15 @@ int intel_uncore_setup_mmio(struct intel_uncore *uncore, phys_addr_t phys_addr)
 	 * clobbering the GTT which we want ioremap_wc instead. Fortunately,
 	 * the register BAR remains the same size for all the earlier
 	 * generations up to Ironlake.
-	 * For dgfx chips register range is expanded to 4MB.
+	 * For dgfx chips register range is expanded to 4MB, and this larger
+	 * range is also used for integrated gpus beginning with Meteor Lake.
 	 */
-	if (GRAPHICS_VER(i915) < 5)
-		mmio_size = 512 * 1024;
-	else if (IS_DGFX(i915))
+	if (IS_DGFX(i915) || GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70))
 		mmio_size = 4 * 1024 * 1024;
-	else
+	else if (GRAPHICS_VER(i915) >= 5)
 		mmio_size = 2 * 1024 * 1024;
+	else
+		mmio_size = 512 * 1024;
 
 	uncore->regs = ioremap(phys_addr, mmio_size);
 	if (uncore->regs == NULL) {
-- 
2.25.1

