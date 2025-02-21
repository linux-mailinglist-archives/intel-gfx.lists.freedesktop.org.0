Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A029A3E934
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Feb 2025 01:39:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B25310EA03;
	Fri, 21 Feb 2025 00:39:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B45NHh5d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA34610E1D2;
 Fri, 21 Feb 2025 00:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740098340; x=1771634340;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nWVBlEtJDg/90pqfkTIjee6OnmfhR692XdLRwgYsXWE=;
 b=B45NHh5dgDh66dkzwjvZtP+0g/0LW53LShI06/w1CtYNdE13Fs5SnjBD
 DvT796gHPrV7Klv71MB39oRx70FdsZVa+ayddobNRWjHCc/fXn1w7+nUu
 GFVLW5E8dTqxSm2RVL6CAyGI3kC2jpu1tAnRaas8gP02XzuSKedbgLf8D
 C0rgVFB9uu4VVwXRRBdWQ9GbL0HjcDhrfuSdS7oXqUumQqkF5Tn4gUydk
 H3KgvocaZ30WPPt2VruLqoYVSleaIGKY5Sx5yjSfmvfKLkZJxCZ9YctbU
 ncX29+HlOEFRr6QCQv6ESNFRNshqzW9ViZlmaogx+pTp7D5xmleJznAa2 g==;
X-CSE-ConnectionGUID: 7Ts8jj6FQz+BkGu20bfCKA==
X-CSE-MsgGUID: zACcH/MyT7aEPofKFDyRpA==
X-IronPort-AV: E=McAfee;i="6700,10204,11351"; a="44688690"
X-IronPort-AV: E=Sophos;i="6.13,303,1732608000"; d="scan'208";a="44688690"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 16:39:00 -0800
X-CSE-ConnectionGUID: KlAiUkQ2Tuyg+txxfi45ow==
X-CSE-MsgGUID: M0GB8PZzQyeQxrnUlLqwPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120446849"
Received: from mdroper-desk1.fm.intel.com ([10.1.39.133])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2025 16:38:58 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: matthew.d.roper@intel.com, Michal Wajdeczko <michal.wajdeczko@intel.com>,
 Jakub Kolakowski <jakub1.kolakowski@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Subject: [PATCH 4/4] drm/xe/sriov: Drop TIMESTAMP_OVERRIDE from Xe2 runtime
 regs
Date: Thu, 20 Feb 2025 16:38:48 -0800
Message-ID: <20250221003843.443559-10-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250221003843.443559-6-matthew.d.roper@intel.com>
References: <20250221003843.443559-6-matthew.d.roper@intel.com>
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

TIMESTAMP_OVERRIDE is never used to initialize the GT clock frequency on
Xe2 platforms (and the register itself no longer exists on LNL) so drop
it from the list of runtime registers.

Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
Cc: Jakub Kolakowski <jakub1.kolakowski@intel.com>
Acked-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/xe/xe_gt_sriov_pf_service.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/xe/xe_gt_sriov_pf_service.c b/drivers/gpu/drm/xe/xe_gt_sriov_pf_service.c
index 6b5f849a0722..f54061dec3c8 100644
--- a/drivers/gpu/drm/xe/xe_gt_sriov_pf_service.c
+++ b/drivers/gpu/drm/xe/xe_gt_sriov_pf_service.c
@@ -173,7 +173,6 @@ static const struct xe_reg ver_2000_runtime_regs[] = {
 	XE2_GT_GEOMETRY_DSS_2,		/* _MMIO(0x9154) */
 	CTC_MODE,			/* _MMIO(0xa26c) */
 	HUC_KERNEL_LOAD_INFO,		/* _MMIO(0xc1dc) */
-	TIMESTAMP_OVERRIDE,		/* _MMIO(0x44074) */
 };
 
 static const struct xe_reg ver_3000_runtime_regs[] = {
-- 
2.48.1

