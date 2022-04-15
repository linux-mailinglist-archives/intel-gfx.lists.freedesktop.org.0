Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221AC503052
	for <lists+intel-gfx@lfdr.de>; Sat, 16 Apr 2022 00:40:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E01110E622;
	Fri, 15 Apr 2022 22:40:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B07C10E602
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Apr 2022 22:40:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650062430; x=1681598430;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=SVenfzMcQfyw7vbgPw1scMQcUTiCbJaJ14EsVlT3Pyw=;
 b=kCVlcB4Sy8mViY/UiRqrs9MWtBSX+GqisOhCxXg2P2LMuxK6kSwdWwKw
 XOhPb4+YJiC9UDJaPzVHxNKr+gb968Hx03sFJH2NbTHf5pw7LaRdb74hL
 lBNckY7xFEDMLRa/57jg7HEjAOuybVnuQWlqX7ogJje0ZeRNfFfBWFRub
 l0wIW92TWIq1NN/dNSqbGxudK0+LOD54PKO8wnCgGGVsGgOw824cqDSnZ
 t30mkOUY1vqP6MUIJq8/+lYTN60rgX8/b6gF7Fj6HCKhGZuKIrbXy+AEf
 tXdj9eY0Q+3K6OGcgt08D14xOUmnmaUoSNcob7W3AsKkht2ODQrxVXhji g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10318"; a="326144498"
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="326144498"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:29 -0700
X-IronPort-AV: E=Sophos;i="5.90,264,1643702400"; d="scan'208";a="574563719"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2022 15:40:28 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, daniele.ceraolospurio@intel.com,
 john.c.harrison@intel.com
Date: Fri, 15 Apr 2022 15:40:23 -0700
Message-Id: <20220415224025.3693037-5-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
References: <20220415224025.3693037-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/6] drm/i915/guc: Apply Wa_16011777198
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

From: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

Enable GuC Wa to reset RCS/CCS before it goes into RC6.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc.c      | 5 +++++
 drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
index fd04c4cd9d44..830889349756 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
@@ -310,6 +310,11 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
 	if (GRAPHICS_VER(gt->i915) == 12)
 		flags |= GUC_WA_PRE_PARSER;
 
+	/* Wa_16011777198:dg2 */
+	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
+	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
+		flags |= GUC_WA_RCS_RESET_BEFORE_RC6;
+
 	return flags;
 }
 
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
index fe5751f67b19..126e67ea1619 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fwif.h
@@ -100,6 +100,7 @@
 #define GUC_CTL_WA			1
 #define   GUC_WA_GAM_CREDITS		BIT(10)
 #define   GUC_WA_DUAL_QUEUE		BIT(11)
+#define   GUC_WA_RCS_RESET_BEFORE_RC6	BIT(13)
 #define   GUC_WA_PRE_PARSER		BIT(14)
 #define   GUC_WA_POLLCS			BIT(18)
 
-- 
2.35.1

