Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4206A09275
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 14:47:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65DF510F0E1;
	Fri, 10 Jan 2025 13:47:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="anjqKYeg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E81910F0D9
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 13:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736516871; x=1768052871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v/YEeDet5XNwRR8Jh5wNtPDqsWUiGNGxzwHtgZZILM8=;
 b=anjqKYegSVXcRFrqvY/AS1GHzHdAMgP5gULjrcYPQkE4Nfmc+YQwOSo0
 a/l9wB2fEAcR75nr+HMP3cp8Usbo0w7+eO+R8nfiNnNNRa0WzQ2aMMWiZ
 w0vL62gGRUWw18YnSv5gkv/oll0cMsBt0EayI1lXCLtETZ4UbxG7Jm5AO
 Kr3aZShpYQ0PBt5tYOrZGn+HIvrNWiTPCAuIrt8NOohFq9CG/+fGUcJ9p
 auCuCVutzgfXLMRtRDoOMbT++gKyYclWtPIiJiqNTqg/iFHluUXWSWphL
 C197J5qYNkG82Mn+z6SXWnTT8pgzkNw4g3vx6GSK194/WaH6W72UJaLDO A==;
X-CSE-ConnectionGUID: Y1wFHRIjRNeS6z9bBU8EYA==
X-CSE-MsgGUID: QnqtigzcRVayElY8uiMGuQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="36711014"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36711014"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 05:47:51 -0800
X-CSE-ConnectionGUID: XNgWOEJ/SlWgCYiif9sZNA==
X-CSE-MsgGUID: qyPEKstdSz2mjSRA9Jm4JQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="104245700"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.59])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 05:47:49 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, rodrigo.vivi@intel.com, andrzej.hajda@intel.com,
 andi.shyti@intel.com
Subject: [PATCH 1/2] drm/i915/mtl: Disable render power-gating during selftest
 only
Date: Fri, 10 Jan 2025 19:39:46 +0530
Message-Id: <20250110140947.3471824-2-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250110140947.3471824-1-badal.nilawar@intel.com>
References: <20250110140947.3471824-1-badal.nilawar@intel.com>
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

The temporary wa ‘drm/i915/mtl: do not enable render power-gating on MTL’ disables RPG
globally. Since the issue seen during live self-tests disabling it during these tests.

Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render power-gating on MTL")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 9378d5901c49..2dd68ca7ec0e 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 	 * temporary wa and should be removed after fixing real cause
 	 * of forcewake timeouts.
 	 */
-	if (IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
+	if (i915_selftest.live && IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
-- 
2.34.1

