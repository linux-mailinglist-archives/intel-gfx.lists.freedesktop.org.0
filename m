Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBDBC4854C
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C626710E4A1;
	Mon, 10 Nov 2025 17:28:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JYyhYIFZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CB3810E4A1;
 Mon, 10 Nov 2025 17:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795736; x=1794331736;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zpkXtM6cbyA5JHAXGn0xSO47BfKt2dTVjp7m1l47ruw=;
 b=JYyhYIFZccUU3ZQZExNSwDIrO+POQRACtvhOqsrOodhbHfHRdLvXasjp
 4Zr2NkLtmEreACVl6AV5KRVoMe/j4M+VW1sy9u3sfmbnGmUX+wjNoz1dF
 sF1O/mrBFJaIlLO777TcSgnRLoYpve7Sz8TFpkj1gFm3iAE7h73wUWOOu
 wmazMMsLoNj8Mxoh+5lRz/cxm91EwAOUCzD/92GJ42XLeOgQpKZpZlY12
 j3/13GwAFCDzoD7y/QFepwDcdfdjAmhrjOchFWvRWcjtUyDtTpadcrKKT
 q8t4EIC5dVg+kvGueAIbC9DNS3SQdjVouA7Fcxppu76d92l+NOy6GhPBI Q==;
X-CSE-ConnectionGUID: YqLErL/nScKBTa3wfsu2qQ==
X-CSE-MsgGUID: U3Z7/w8OS5GVrBmsIeR+Vg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="64779378"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="64779378"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:56 -0800
X-CSE-ConnectionGUID: 0HaXPfOpQqGyVnM5KBN+HA==
X-CSE-MsgGUID: htNasEMGQA+shQqg474TCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="189451967"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:54 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 13/16] drm/i915/de: Nuke wakelocks from intel_de_wait_fw_ms()
Date: Mon, 10 Nov 2025 19:27:52 +0200
Message-ID: <20251110172756.2132-14-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
References: <20251110172756.2132-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The low level _fw() register accessors aren't supposed to
grab the wakelock. Stop doing so in intel_de_wait_fw_ms().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 345b27ada04f..655867ea76b8 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -146,16 +146,8 @@ intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
 		    u32 mask, u32 value, unsigned int timeout_ms,
 		    u32 *out_value)
 {
-	int ret;
-
-	intel_dmc_wl_get(display, reg);
-
-	ret = __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
-					   value, 2, timeout_ms, out_value);
-
-	intel_dmc_wl_put(display, reg);
-
-	return ret;
+	return __intel_wait_for_register_fw(__to_uncore(display), reg, mask,
+					    value, 2, timeout_ms, out_value);
 }
 
 static inline int
-- 
2.49.1

