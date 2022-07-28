Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AA4583650
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Jul 2022 03:34:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 795B910E13C;
	Thu, 28 Jul 2022 01:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4194410EAA9
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Jul 2022 01:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658972080; x=1690508080;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8WpHVnasQDK4v5gttgENCO0cOC7BhyEooNEPe97hRz0=;
 b=Cqyned5kb7bqekgDx3UwRciiigs9+S3AMpz8bk9B/B2WB2DVBVEvC8TZ
 +7uUXD5OoSi6RCuaSueXhz+r9JNgPwsElnWN1nY8oXx4nA6/JowBzGxL+
 G1mHVa822skGUGnVHwZnUhsfnXIouY590pFqkltbPGMfqUq3WBXZOD7DK
 OkPCDALulXgx2hqxkCxwD5j5fgErxB5yRjPnzSbHgzFH1kvU0W7DwMczD
 ld97s0QTRGT+93K/vsiP9anbZ7ZWZc1KdnDDJ8WBKhdNRf/Ho7Wb5wMyJ
 rh5b8SQeiPy2AWfF4glEmEHg1OhVPI2ACFmO79eUCt2UjYNaqA0UiOc24 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="374693652"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="374693652"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="659456956"
Received: from invictus.jf.intel.com ([10.165.21.205])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 18:34:39 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Jul 2022 18:34:01 -0700
Message-Id: <20220728013420.3750388-5-radhakrishna.sripada@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 04/23] drm/i915/mtl: Don't mask off CCS
 according to DSS fusing
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

Unlike the Xe_HP platforms, MTL only has a single CCS engine; the
quad-based engine masking logic does not apply to this platform (or
presumably any future platforms that only have 0 or 1 CCS).

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 37fa813af766..17e7f20bbb48 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -672,7 +672,7 @@ static void engine_mask_apply_compute_fuses(struct intel_gt *gt)
 	unsigned long ccs_mask;
 	unsigned int i;
 
-	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
+	if (hweight32(CCS_MASK(gt)) <= 1)
 		return;
 
 	ccs_mask = intel_slicemask_from_xehp_dssmask(info->sseu.compute_subslice_mask,
-- 
2.25.1

