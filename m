Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B90648B6F4A
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Apr 2024 12:11:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14EAD10FB36;
	Tue, 30 Apr 2024 10:11:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iXQTVwVQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1288810FB36
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Apr 2024 10:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714471897; x=1746007897;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=naHN44cXJK1Dwc5KQpdiV3H236n3Jc5PmpVQiHfPn+c=;
 b=iXQTVwVQnSyyIHZHy8yiYZ88hpBf4m7+0/wC3KaLXyau4IkGSCB2n97M
 F2bvchOhEknZKPT6mb+iM+JBu5u4CfmA38eM+qiiaUt9+eyGLD9J3VPXj
 cM8QS1FL+oxNT7KucxZ+nN3uFNm14PjFn02l9rNiTDNwb6mhMdN3oPW2e
 /OOHbEA3M0u755hOHYYt5c9z+EQ8JIBL+NFlYFO6FeS1acFwH8H5kw4wd
 /bsbxWW2/UVJeOoHKuuFCtdEAZi8/K8rDEJC2PYstTJMlmrLnscYt9nb+
 xbn0nDfVRrzrciHV+dbNP2i2vy2zxAU1Pzgh4tRL/Bmehv5Tr65fLXCtW g==;
X-CSE-ConnectionGUID: 9Idnc9wzQUyAv0yTv2E41A==
X-CSE-MsgGUID: frC+TWXuRi6QMYBZQ5eqqA==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32673143"
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="32673143"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:37 -0700
X-CSE-ConnectionGUID: oNKLJu2RSj+oebE/PLbIFg==
X-CSE-MsgGUID: MVrs9TYbT0CSvJoW8O1X9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,241,1708416000"; d="scan'208";a="26511325"
Received: from vkats-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.167])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 03:11:35 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, jouni.hogander@intel.com,
 Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 17/19] drm/i915: pass dev_priv explicitly to ALPM_CTL2
Date: Tue, 30 Apr 2024 13:10:11 +0300
Message-Id: <09acf2751cfd2f524e6ba97c3ac285495eae5c86.1714471597.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714471597.git.jani.nikula@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the ALPM_CTL2 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 4d950b22d4f1..05dc1c1d4ac2 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -321,7 +321,7 @@
 #define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
 
 #define _ALPM_CTL2_A	0x60954
-#define ALPM_CTL2(tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL2_A)
+#define ALPM_CTL2(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL2_A)
 #define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK		REG_GENMASK(28, 24)
 #define  ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY(val)		REG_FIELD_PREP(ALPM_CTL2_SWITCH_TO_ACTIVE_LATENCY_MASK, val)
 #define  ALPM_CTL2_AUX_LESS_WAKE_TIME_EXTENSION_MASK		REG_GENMASK(19, 16)
-- 
2.39.2

