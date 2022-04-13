Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DA14FF579
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 13:11:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC10B10E008;
	Wed, 13 Apr 2022 11:11:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A11810E008
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 11:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649848261; x=1681384261;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z5BICJ7GatjDsVL6QhRjaLn1clSBFTd0y37ZcHbsgTw=;
 b=amRf84CchzTMhptNU99Ydx5HYd8sT72sFu4GvxFa0lzztqoqwoX0iiSf
 LofHwyqCl1apq6Zi2TKnac3BLfD0/A4Wa8tFoD41VzXPAtASty0S2GfsB
 dcU9DvrLClnHw4Tnc/YDmMDkhNxZmW5h+2AcsqrPqoyOfpdbboO/tqQD4
 YbuLSJBQuSRek89yt3ZHZ9Hvx7SpjAvslXGossY/1bNQFjRtkWybAuQuJ
 2XmEjyt3+XphrHTDFJPq7sZeNOCLP0MLOG8TesAQkNgkWkYULSYZZZ6KY
 PY8qy5hevcCIRMFidzvtOjpgltXuNQP05LbJt+zL/mWQ7ENKUsv6x0/IA w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="262818856"
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="262818856"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 04:11:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="611845107"
Received: from tejas-system-product-name.iind.intel.com ([10.145.162.130])
 by fmsmga008.fm.intel.com with ESMTP; 13 Apr 2022 04:10:59 -0700
From: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 13 Apr 2022 16:28:27 +0530
Message-Id: <20220413105827.2346571-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/adl-n: Differentiate ADLP and ADLN
 steppings
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
Cc: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ADL-N and ADL-P stepping are different, thus we
need to add check for ADL-N in IS_ADLP_DISPLAY_STEP().

Signed-off-by: Tejas Upadhyay <tejaskumarx.surendrakumar.upadhyay@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index 9274417cd87a..51f2a14b0dca 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1167,7 +1167,7 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
 	 IS_GRAPHICS_STEP(__i915, since, until))
 
 #define IS_ADLP_DISPLAY_STEP(__i915, since, until) \
-	(IS_ALDERLAKE_P(__i915) && \
+	(IS_ALDERLAKE_P(__i915) && !IS_ADLP_N(__i915) &&\
 	 IS_DISPLAY_STEP(__i915, since, until))
 
 #define IS_ADLP_GRAPHICS_STEP(__i915, since, until) \
-- 
2.34.1

