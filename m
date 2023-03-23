Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF576C6701
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 12:44:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E78D10EA7C;
	Thu, 23 Mar 2023 11:44:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF38C10EA7C
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 11:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679571887; x=1711107887;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cYRisyr7HCRqUEcGPfKCrx8q0+rYnWo32ZlD17XCg88=;
 b=cjEF+4abQxFa7RWwefthH5YhPU8FMxRBnu6t3KI8p2DoEj79IAHf/96M
 dARPGcSHxMQIJFQKa795PxyqXt4YJQsdOR+ZF/ItNBGGCOC4uc5qCttN2
 dd+GJSGMBb4KgueK4BUfA9hAu/n77S8Fo6/uK2k9daHr9lWERyEH7+zPU
 imfCzYUXX4wU3QmmgWw6xzfCBCJMkNEsnpfRIk0R0lvYzL36kfxwEGLPT
 dZq8yd1EjufPg1Rz3si7RS3zQoAQJEuX5D1xfQ3z3ntaWVR0Qb0k3ScCt
 V4cDzw5tEKL1nsqUsSL1BSspZylcfh30bHqFFqzP+NqzI76P/4Fd2ix0z w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="425742122"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="425742122"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 04:44:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746688516"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="746688516"
Received: from unknown (HELO vgovind2-mobl3.fi.intel.com) ([10.237.66.37])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 04:44:46 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Mar 2023 13:44:26 +0200
Message-Id: <20230323114426.41136-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230323114426.41136-1-vinod.govindapillai@intel.com>
References: <20230323114426.41136-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 2/2] drm/i915/reg: use the correct register
 to access SAGV block time
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
Cc: ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Wrong register address is used to read the SAG block time. Fix
the register address according to the bspec.

Bspec: 64608

Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8917774dc680..caa39b5614d4 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -7716,7 +7716,7 @@ enum skl_power_gate {
 #define  MTL_LATENCY_LEVEL_EVEN_MASK	REG_GENMASK(12, 0)
 #define  MTL_LATENCY_LEVEL_ODD_MASK	REG_GENMASK(28, 16)
 
-#define MTL_LATENCY_SAGV		_MMIO(0x4578b)
+#define MTL_LATENCY_SAGV		_MMIO(0x4578c)
 #define   MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
 
 #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
-- 
2.34.1

