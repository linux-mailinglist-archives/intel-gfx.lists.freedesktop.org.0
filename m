Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C2C67B019B
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 12:17:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC95B10E4C9;
	Wed, 27 Sep 2023 10:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1670910E4C9
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 10:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695809869; x=1727345869;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RiORLjZNcKfbuEKMByvw/zQV34VIQefJ7XGQjY7yegc=;
 b=PQMdh1WPc4E8DW2C4FNEb/NZ8H1AQDMJGF4h/x8iQ4W5LOwGi3zqVBUS
 3XcUrtQL90NfOLSC333ZxxsLctDD6u6FT9zhQFcAaqGb3IFzyDd9R+i+4
 wHg6eRfALBM7LwsahmuhwBGW/kWNAQnCftYoDdvQR0AZRzUkKdGcxWwcs
 gNyavskX4/OKwLOB9RNRL1HkHuvmuUOk0OIh4JW+celJ7B0Odo2aoQ1w5
 AVvbFSCgQYaqP2zTHPDeZqYuPf9A2k7p0PErYu8slejTBVOAO0Ts+ojSe
 oCR5eginDjwcy2z52L4iH3goyT8L0ZSGd6MyOPN/G60WhCepcGpFIUr4r g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="372130177"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="372130177"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10845"; a="778488161"
X-IronPort-AV: E=Sophos;i="6.03,179,1694761200"; d="scan'208";a="778488161"
Received: from akorotox-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.52.218])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 03:17:46 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 27 Sep 2023 13:17:27 +0300
Message-Id: <20230927101729.18681-2-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230927101729.18681-1-vinod.govindapillai@intel.com>
References: <20230927101729.18681-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/3] drm/i915/xe2lpd: display capability
 register definitions
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

Register definitions to track the reported scalable display
feature configurations

Bspec: 71161
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e0ea2dc13556..afb0697eafa5 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -4678,6 +4678,11 @@
 #define   TGL_DFSM_PIPE_D_DISABLE	(1 << 22)
 #define   GLK_DFSM_DISPLAY_DSC_DISABLE	(1 << 7)
 
+#define XE2LPD_DE_CAP			_MMIO(0x41100)
+#define   XE2LPD_DE_CAP_3DLUT_MASK	REG_GENMASK(31, 30)
+#define   XE2LPD_DE_CAP_DSC_MASK	REG_GENMASK(29, 28)
+#define   XE2LPD_DE_CAP_SCALER_MASK	REG_GENMASK(27, 26)
+
 #define SKL_DSSM				_MMIO(0x51004)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_MASK		(7 << 29)
 #define ICL_DSSM_CDCLK_PLL_REFCLK_24MHz		(0 << 29)
-- 
2.34.1

