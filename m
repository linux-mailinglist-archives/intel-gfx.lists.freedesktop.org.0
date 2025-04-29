Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 502A2A9FEB1
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 03:02:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA63710E037;
	Tue, 29 Apr 2025 01:02:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mpvj89R/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5934710E037
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 01:02:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745888557; x=1777424557;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qEUt0QSRw0OwzxmeFB+PuvyNzSskHJdCkWEvv9sft4g=;
 b=Mpvj89R/ptQ8NXiCzq9UG1t+QMysDnW5oYOStsSfpZzFu7IfJuYii/gU
 A5mi7wiGIzSx9JtPrlT1niRVopDgYZ2hmZhMNSQgamOr2FaEnf1GaAaeU
 xx6Y0QM8d2cWLIek1se3LU1uO27mrPmJdp+uIOlpBxeB51FYyiHyWXBvs
 SyUGqF957JKCL42NUbiEzv6g+xeRwr+mwq9vvBiqYaAKO29OJSrDyAyyv
 KiO0/WEINoscMzYZyE5xuiqEyNo6jg+IVC6OEM6U32DGDBehAEUo3MJF7
 3uPJ7sElQXmwOIfQj8LnuEu5+7DGB8OG69s/rcd9yKXF9xgcEF0lQot4J Q==;
X-CSE-ConnectionGUID: mdCu5qYSQ3yheIm7zCsHRw==
X-CSE-MsgGUID: JOO+ZEM3S8iUFrWpj6/Rmg==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58868436"
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="58868436"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 18:02:36 -0700
X-CSE-ConnectionGUID: t9sCE074RlGm7bDiLYCBuw==
X-CSE-MsgGUID: ZC3FieCySQ+7MYrCtEEhuw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="133624242"
Received: from bfilipch-desk.jf.intel.com ([10.165.21.204])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 18:02:36 -0700
From: Julia Filipchuk <julia.filipchuk@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 Julia Filipchuk <julia.filipchuk@intel.com>
Subject: [PATCH v2] drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
Date: Mon, 28 Apr 2025 18:02:30 -0700
Message-ID: <20250429010230.49398-1-julia.filipchuk@intel.com>
X-Mailer: git-send-email 2.49.0
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

For newer platforms (post DG2) hardware intentionally stalls on
submisstion of concurrent RCS and CCS of different address spaces. With
this workaround GuC will never schedule such conlicting contexts;
preventing detection of a stall as a hang.

GuC specs recommend to enable this for all platforms starting from MTL
supporting CCS.

v2: Use existing macros for version check. (Jani)

Signed-off-by: Julia Filipchuk <julia.filipchuk@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 9df80c325fc1..a4019d3e71a8 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -313,8 +313,12 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	 *
 	 * The same WA bit is used for both and 22011391025 is applicable to
 	 * all DG2.
+	 *
+	 * Platforms post DG2 prevent behavior in hardware. This is implicitly
+	 * enabled to give guc management over CCS scheduling.
 	 */
-	if (IS_DG2(gt->i915))
+	if (IS_DG2(gt->i915) ||
+	    (CCS_MASK(gt) && GRAPHICS_VER_FULL((gt)->i915) >= IP_VER(12, 70)))
 		flags |= GUC_WA_DUAL_QUEUE;
 
 	/* Wa_22011802037: graphics version 11/12 */
@@ -322,8 +326,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 		flags |= GUC_WA_PRE_PARSER;
 
 	/*
-	 * Wa_22012727170
-	 * Wa_22012727685
+	 * Wa_22012727170 Wa_22012727685
 	 */
 	if (IS_DG2_G11(gt->i915))
 		flags |= GUC_WA_CONTEXT_ISOLATION;
-- 
2.49.0

