Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C8B477D136
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Aug 2023 19:37:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD6910E269;
	Tue, 15 Aug 2023 17:37:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DD610E264
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Aug 2023 17:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692121024; x=1723657024;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gCtiRvAU7pFfo/NO8DsT228Z9P3np359hZQdsO4A2kU=;
 b=SJQ8yqSAW6bq+fKtmikNtUZJjtwF1rGE83aHgS2huwTN5y8de1nd54cg
 lLTkJJnmGimf2kbf7iNrzclDLHDsEUIjL5Hrg715W4RJl21feEyMsGRgm
 6f7eZyrkSl6TneGuS3nj4T14Dw/zUnDnlsZcJa3K/lbq2Q4a1ajcoSsHn
 GFi8JIXKJPf7v3IzvWnhmrFPq13+WphCtHxmkPtZ/XPSVJSkCV0TyzDog
 bgmgHa1R85s+34QGY1PrFY5H3qOiFNTIL2c/1jC7umogTBWK51bkpwtl+
 dCpoEqIIfvuvYFa8VKULRpKEB+SU/jrHEMiIKGlU/eAtkXaiW7LOrD/Wx Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="371252388"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="371252388"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10803"; a="710808248"
X-IronPort-AV: E=Sophos;i="6.01,175,1684825200"; d="scan'208";a="710808248"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.147])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2023 10:37:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 15 Aug 2023 10:36:13 -0700
Message-ID: <20230815173611.142687-7-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230815173611.142687-6-matthew.d.roper@intel.com>
References: <20230815173611.142687-6-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dg2: Recognize pre-production
 hardware
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
Cc: matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The first production SoC steppings for DG2 were C0 (for G10), B1 (for
G11), and A1 (for G12).  This corresponds to PCI revision IDs 0x8, 0x5,
and 0x1 respectively.  Add this information to the driver's
pre-production detection.

Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index b870c0df081a..0201115746a7 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -183,6 +183,9 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
 	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
 	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
 	pre |= IS_DG1(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
+	pre |= IS_DG2_G10(dev_priv) && INTEL_REVID(dev_priv) < 0x8;
+	pre |= IS_DG2_G11(dev_priv) && INTEL_REVID(dev_priv) < 0x5;
+	pre |= IS_DG2_G12(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
 
 	if (pre) {
 		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
-- 
2.41.0

