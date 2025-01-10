Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA414A09276
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 14:47:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 775E210F0D1;
	Fri, 10 Jan 2025 13:47:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bo7y4VnZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE92010F0D1
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 13:47:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736516874; x=1768052874;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nZ5TfVm1fSqBdSvjbGWGjnaubCXygzFhBDZrYChRpHg=;
 b=bo7y4VnZFKN3B9AMSdHkMSqCDrPpWpVeaWDaPpYOdVCR4i584maGhN4r
 PONcRZ7hoAmBygF1JjN7ozyIBscXMpERRiQk5ZQAkM8+GS7h4iPYlQS0u
 moIHUD8I7C9LBdsVXOX54t2bi/wgbPEUAYV+dLQVA+7ScajE6e6fO8Ba3
 N8Vm7hrGz/Y7BkSDwG6whTUob3l8/zQ/SkM2BfEjGUWFx2G3jdNF7fAMZ
 PQDbn7quVbAQqIw6UXK5H9eI3aczdc2CSSFqsUryUgNYon7S1zTpiCm+t
 MTu8iz80hRwiFZ3juBBnuFK8NYCFhEyUi7/JRMn124hWFvap0xQKL8Ywo w==;
X-CSE-ConnectionGUID: ye7+W4wfSc2j0VOh/7ttXw==
X-CSE-MsgGUID: ysNfAe4fS5m0L6MHyFF3KA==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="36711018"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36711018"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 05:47:54 -0800
X-CSE-ConnectionGUID: P0c4C3kgQlal1EM1PiPxMw==
X-CSE-MsgGUID: rC6yzC5JSIeCL70FXgoCAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="104245718"
Received: from bnilawar-desk1.iind.intel.com ([10.145.169.59])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 05:47:52 -0800
From: Badal Nilawar <badal.nilawar@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, rodrigo.vivi@intel.com, andrzej.hajda@intel.com,
 andi.shyti@intel.com
Subject: [PATCH 2/2] drm/i915: Disable rpg for Gen 12 and above
Date: Fri, 10 Jan 2025 19:39:47 +0530
Message-Id: <20250110140947.3471824-3-badal.nilawar@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250110140947.3471824-1-badal.nilawar@intel.com>
References: <20250110140947.3471824-1-badal.nilawar@intel.com>
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

As the Forcewake timeout issue observed on gen 12.0 as well, therefore disable RPG
during live self-tests for Gen 12 and above.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9413
Fixes: 25e7976db86b ("drm/i915/mtl: do not enable render power-gating on MTL")
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Andi Shyti <andi.shyti@intel.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>
Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rc6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
index 2dd68ca7ec0e..82de77eb4de8 100644
--- a/drivers/gpu/drm/i915/gt/intel_rc6.c
+++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
@@ -123,7 +123,7 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
 	 * temporary wa and should be removed after fixing real cause
 	 * of forcewake timeouts.
 	 */
-	if (i915_selftest.live && IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 70), IP_VER(12, 74)))
+	if (i915_selftest.live && IS_GFX_GT_IP_RANGE(gt, IP_VER(12, 0), IP_VER(12, 74)))
 		pg_enable =
 			GEN9_MEDIA_PG_ENABLE |
 			GEN11_MEDIA_SAMPLER_PG_ENABLE;
-- 
2.34.1

