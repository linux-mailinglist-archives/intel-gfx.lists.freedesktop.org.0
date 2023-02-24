Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88CD36A1443
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Feb 2023 01:23:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753FA10E371;
	Fri, 24 Feb 2023 00:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAC0610E371
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Feb 2023 00:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677198204; x=1708734204;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=tbDCjeGO0q0nMIjjQFPLoG6X8btWffIhXqU1I5AfvXQ=;
 b=iHq76wWiYBD6yTnrDYg2Ycumhu7w0tTtsjASrR70Q46ALkJ5rHRcHhe/
 2kYsJ6c8Ahcg6FrlwIhIFwwhzCFa+ijEPD3uiO5XCksu5uXiTW7AzS2FY
 ENw1mC+C7PT2Ds26rRpBxFxoBG+YTnoqMkwkMlbCTivGXdXhe+TKp+5pK
 2R7T1G+n3EI+ykuXCHIz52UUc/JQksNs6B9ZzTpV6Rzk5RioPHTKau29H
 SESuybzS3vKACNkUV8zJJ58ITQG/fA0IlAfy01+uOzsokyEwIp09B/HKX
 EmXpjpCRU4LFV9n90R32XOioNVCOsr6P5pBLFwV3jSI5rPDYucZGEIhXH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="333366877"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="333366877"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 16:23:12 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10630"; a="815547964"
X-IronPort-AV: E=Sophos;i="5.97,322,1669104000"; d="scan'208";a="815547964"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.134])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2023 16:23:12 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Feb 2023 16:23:00 -0800
Message-Id: <20230224002300.3578985-2-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230224002300.3578985-1-matthew.d.roper@intel.com>
References: <20230224002300.3578985-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Stop whitelisting
 CS_CTX_TIMESTAMP on Xe_HP platforms
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

Xe_HP architecture already makes the CS_CTX_TIMESTAMP readable by
userspace on all engines; there's no longer a need to add it to the
software-managed whitelist for the non-RCS engines.

Bspec: 45545
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 11 +----------
 1 file changed, 1 insertion(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 0444c715998a..ee0649851a4c 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2204,17 +2204,10 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
 	}
 }
 
-static void xehpsdv_whitelist_build(struct intel_engine_cs *engine)
-{
-	allow_read_ctx_timestamp(engine);
-}
-
 static void dg2_whitelist_build(struct intel_engine_cs *engine)
 {
 	struct i915_wa_list *w = &engine->whitelist;
 
-	allow_read_ctx_timestamp(engine);
-
 	switch (engine->class) {
 	case RENDER_CLASS:
 		/*
@@ -2265,8 +2258,6 @@ static void blacklist_trtt(struct intel_engine_cs *engine)
 
 static void pvc_whitelist_build(struct intel_engine_cs *engine)
 {
-	allow_read_ctx_timestamp(engine);
-
 	/* Wa_16014440446:pvc */
 	blacklist_trtt(engine);
 }
@@ -2301,7 +2292,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
 	else if (IS_DG2(i915))
 		dg2_whitelist_build(engine);
 	else if (IS_XEHPSDV(i915))
-		xehpsdv_whitelist_build(engine);
+		; /* none needed */
 	else if (GRAPHICS_VER(i915) == 12)
 		tgl_whitelist_build(engine);
 	else if (GRAPHICS_VER(i915) == 11)
-- 
2.39.1

