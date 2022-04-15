Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1099750304E
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 00:40:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97ED510E603;
	Fri, 15 Apr 2022 22:40:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72CBC10E606
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 22:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650062430; x=1681598430;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Isjz2rpFGSWgFxdyYGF7go0Ka/1/HYT/dFfmuITfGiA=;
 b=RTmIgvwOrxBwVVbq9yx68vMlujHiJw8GsX3lBWPNyct/RN4ZbCkjdbgR
 A7ex1c2PTwI6zfynWXjeWHif4GEajBqN1uIT8TlwlNZVDjlHh2YptOtqb
 g9msCa54KRXgQxdYhAn3i95FSEh+4278yEubNBwlQrX/4qb5lgD204GTg
 Umg6kUpD4jxU191UPKiT8wlzSUsvVxq6f4dfF5WTo+AGtOUuwLB+EbyJB
 hzt533+Hz3as9k3IVJuc1pkRmaYIwZkXc1AWmZ2gQrx2Wtf37Qo1hxYrL
 hVxi9jGDhpGTvm/JRW5gqO8I+TdJlR10tvJzxgKWETPN3zErYnDZcR5uB w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="326144501"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="326144501"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="574563726"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Fri, 15 Apr 2022 15:40:25 -0700
Message-Id: <20220415224025.3693037-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
References: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6/6] drm/i915/dg2: Enable
 Wa_22012727170/Wa_22012727685
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

From: John Harrison <John.C.Harrison@Intel.com>

The above two workaronuds regarding context isolation are implemented
by GuC. The KMD just needs to enable them.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 8 ++++++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index 228070e31ef0..2c4ad4a65089 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -319,6 +319,14 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
 		flags |= GUC_WA_RCS_RESET_BEFORE_RC6;
 
+	/*
+	 * Wa_22012727170:dg2_g10[a0-c0), dg2_g11[a0..)
+	 * Wa_22012727685:dg2_g11[a0..)
+	 */
+	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_FOREVER))
+		flags |= GUC_WA_CONTEXT_ISOLATION;
+
 	return flags;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index e389a3a041a2..42cb7a9a6199 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -101,6 +101,7 @@
 #define   GUC_WA_GAM_CREDITS		BIT(10)
 #define   GUC_WA_DUAL_QUEUE		BIT(11)
 #define   GUC_WA_RCS_RESET_BEFORE_RC6	BIT(13)
+#define   GUC_WA_CONTEXT_ISOLATION	BIT(15)
 #define   GUC_WA_PRE_PARSER		BIT(14)
 #define   GUC_WA_HOLD_CCS_SWITCHOUT	BIT(17)
 #define   GUC_WA_POLLCS			BIT(18)
-- 
2.35.1

