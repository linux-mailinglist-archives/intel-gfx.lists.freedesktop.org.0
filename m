Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BEFE700643
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 13:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E2FF10E682;
	Fri, 12 May 2023 11:04:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2FA910E67E
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 11:04:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683889490; x=1715425490;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2IeM/IIWKCO/VCfEiQk6fPlVfyx4L9OEG+89sQcZ1/4=;
 b=C3D1g2pPj9WMZMd11vKi1bHd5mihglTfe8IRRTByWnJ9WGGcac6WRTIl
 kV6Q6lnC56X/yA8ZjGJDoBY+EuZisOToCfUbGf7sZoiGoTDCGXPPT3eOu
 v3QUMX9l8+mZeSHNySrPwvqewd7wPMlm5hSXAG0zR1Gxwvn1Wx+KogYUp
 om6DqqIj6RvyATaXJ9akqdcyfwFPmPf4tcWj5VPclG0wJV6Yie0zh/MwV
 fkXle/tGNu1XwwudVKMJ3Qrxg4ZZyKBXWG6K4QGr+qnAQUKFHv1SgTtVe
 z6hsoNaQPTQyNQ5TO58/tA4t+VkpN9gL1ZbmrItuJPFj/aCpgA33h5u+i A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="437098133"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="437098133"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:04:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="765146217"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="765146217"
Received: from tsavina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.51])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 04:04:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 12 May 2023 14:04:41 +0300
Message-Id: <20230512110444.1448231-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/4] drm/i915/dpll: drop a useless
 I915_STATE_WARN_ON()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

In general, we don't do assertions that a function gets called on the
right platforms, and if we did, it should not be a state warn.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
index ed372d227aa7..936b8de9e439 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
@@ -464,8 +464,6 @@ static void ibx_assert_pch_refclk_enabled(struct drm_i915_private *dev_priv)
 	u32 val;
 	bool enabled;
 
-	I915_STATE_WARN_ON(!(HAS_PCH_IBX(dev_priv) || HAS_PCH_CPT(dev_priv)));
-
 	val = intel_de_read(dev_priv, PCH_DREF_CONTROL);
 	enabled = !!(val & (DREF_SSC_SOURCE_MASK | DREF_NONSPREAD_SOURCE_MASK |
 			    DREF_SUPERSPREAD_SOURCE_MASK));
-- 
2.39.2

