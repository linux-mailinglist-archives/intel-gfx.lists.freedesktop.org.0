Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8496E94C5F5
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Aug 2024 22:50:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46AB310E80C;
	Thu,  8 Aug 2024 20:50:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QwWhlO7Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3C3E10E80C
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Aug 2024 20:50:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723150224; x=1754686224;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FO4+X/uhygrXc98xnH0bfbYbcTeeo/49RpUrgEPrACA=;
 b=QwWhlO7Y/HohsIWHg9Ce1E3kaFUZ+2EuvzdNhzrBtMHxP1tN7jVkWs9q
 139HwJflSlh2iy5J29f5Xg3E+wZqrV93apfPWhwk0Lxy0dlSJO2YrU22T
 F+Vsthf0GO8KEsxwKzjfI5jmXDM+V9oTNfDSUbc7PcFyuKO6bGMx+Dasp
 oiomL9FNqANKiKyxSzbxl8OfchDOa7dLht/zh+mc0RPPbJoy8l1hyzbFA
 BvUluL6NlbTeNcw1GLXJCr06aVJn17OwIkyr5Q898yzTcBynUUx7ycMqd
 c1RgmkkzUxBDEghd+tj7Our2unL+zDXsgao06yeTUYAmwtDYT27CvgUII w==;
X-CSE-ConnectionGUID: JubANfv5TLShmpCMKM56qQ==
X-CSE-MsgGUID: QvZB9JYsSgWAOLZSQLKQTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11158"; a="20964072"
X-IronPort-AV: E=Sophos;i="6.09,274,1716274800"; d="scan'208";a="20964072"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2024 13:50:23 -0700
X-CSE-ConnectionGUID: V1STVQiuRk2tzTTYaGfcUQ==
X-CSE-MsgGUID: tysar5/oQMOPIQ8Z11EZvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,274,1716274800"; d="scan'208";a="80579630"
Received: from jesusnar-desk.jf.intel.com ([10.165.21.207])
 by fmviesa002.fm.intel.com with ESMTP; 08 Aug 2024 13:50:22 -0700
From: Jesus Narvaez <jesus.narvaez@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jesus.narvaez@intel.com
Subject: [PATCH] drm/i915/guc: Change GEM_WARN_ON to guc_err to prevent taints
 in CI
Date: Thu,  8 Aug 2024 13:49:43 -0700
Message-Id: <20240808204943.911727-1-jesus.narvaez@intel.com>
X-Mailer: git-send-email 2.34.1
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

This warning was supposed to catch a harmless issue, but changing to
guc_error should prevent kernel taints in CI runs.

Signed-off-by: Jesus Narvaez <jesus.narvaez@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index 9400d0eb682b..c3a5d9e1288e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -2014,11 +2014,12 @@ void intel_guc_submission_reset_finish(struct intel_guc *guc)
 
 	/*
 	 * Technically possible for either of these values to be non-zero here,
-	 * but very unlikely + harmless. Regardless let's add a warn so we can
+	 * but very unlikely + harmless. Regardless let's add an error so we can
 	 * see in CI if this happens frequently / a precursor to taking down the
 	 * machine.
 	 */
-	GEM_WARN_ON(atomic_read(&guc->outstanding_submission_g2h));
+	if (atomic_read(&guc->outstanding_submission_g2h))
+		guc_err(guc, "Unexpected outstanding GuC to Host in reset finish\n");
 	atomic_set(&guc->outstanding_submission_g2h, 0);
 
 	intel_guc_global_policies_update(guc);
-- 
2.34.1

