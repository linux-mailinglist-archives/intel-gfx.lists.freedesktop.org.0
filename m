Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A8B4FFF34
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 222DA10E4C6;
	Wed, 13 Apr 2022 19:27:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A905310E432
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878057; x=1681414057;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=zOYDf+IL7Kygp4vAoXk7fsO2P/l/NLAjU6gQMckrdPw=;
 b=dk26vsLju4W5oHSbTE7rHLs2yhHNnpX8BueOr5UTqa3ZLtgNHOna8rQE
 YZbiz9uHYQnj1dYj9cfLfNghvJyYwRfM6CsUh5/Ia7uDZcLVGM+dKO50A
 DnMA2H4WH3mNQ3C/AtE2pwaqN7NIupP5AaBqFBRuUNqK+F07xkPqYELKB
 u9RSjm4JTb40ZILarCrDMB8nrtYWo0tpPTo8wYPD+GrZZXkFFdJpoLpes
 5jCzLPJb/SlEPbxjwwtU7Xt06qNjg1pupQHf+xNzGk56FXZOh3xsC+Fmf
 x2O+y9UJruHXO91+klUT0VVg+RbCok37G2+Pf6pZai+GICR+y+vzxPzwX Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045084"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045084"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290485"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:25 -0700
Message-Id: <20220413192730.3608660-6-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 05/10] drm/i915: Xe_HP SDV and DG2 have 4 CCS
 engines
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

From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/i915_pci.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 736e04078f56..fe13e14c19a7 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1036,7 +1036,8 @@ static const struct intel_device_info xehpsdv_info = {
 		BIT(RCS0) | BIT(BCS0) |
 		BIT(VECS0) | BIT(VECS1) | BIT(VECS2) | BIT(VECS3) |
 		BIT(VCS0) | BIT(VCS1) | BIT(VCS2) | BIT(VCS3) |
-		BIT(VCS4) | BIT(VCS5) | BIT(VCS6) | BIT(VCS7),
+		BIT(VCS4) | BIT(VCS5) | BIT(VCS6) | BIT(VCS7) |
+		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3),
 	.require_force_probe = 1,
 };
 
@@ -1054,7 +1055,8 @@ static const struct intel_device_info xehpsdv_info = {
 	.platform_engine_mask = \
 		BIT(RCS0) | BIT(BCS0) | \
 		BIT(VECS0) | BIT(VECS1) | \
-		BIT(VCS0) | BIT(VCS2)
+		BIT(VCS0) | BIT(VCS2) | \
+		BIT(CCS0) | BIT(CCS1) | BIT(CCS2) | BIT(CCS3)
 
 static const struct intel_device_info dg2_info = {
 	DG2_FEATURES,
-- 
2.35.1

