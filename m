Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E98E44FFF33
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A876110E4C0;
	Wed, 13 Apr 2022 19:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C97B10E437
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878058; x=1681414058;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=LB+CUyNotm7AUbdA5WRIiPmYuHnl/Oz/4xPFSZJ0yLQ=;
 b=NyKq6ntMXEmetzAaZKrmbcUS8UIwzGXw2UFl7oUEZGFuF4SSWCtNoX/j
 Qs8USaCeYvV7JAK/883V2kd4FnNdHqadqyX0MIGV1lD0JkpspCuJc/eG3
 52tWH8eYsjU9W3hyrUr/uz4IYBuqxgNcsw8APNS2WxRGvWiQ1RLuvPFi5
 WPjJ6XcLN35LvcvVZ5k0zymNSgvWq5FbqIccKJ3OxFpFqo4k+ZQkK2haM
 5DPhRsew2+momT/2ENmuu5tPllFmyeOh8uWidI3YDvjOay2xWqjtrQeWh
 6j9NnnsDsqTnRml4A3BogdBQsj9Vl71C7C0YEUkJC0x53mE40gBYCwsdF Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045088"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045088"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:38 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290495"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:28 -0700
Message-Id: <20220413192730.3608660-9-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 08/10] drm/i915/guc: Apply Wa_16011777198
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

v2: Comments from Matt R.

Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
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

