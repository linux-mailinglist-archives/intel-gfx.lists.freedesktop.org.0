Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D93C48534
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8128F10E2CF;
	Mon, 10 Nov 2025 17:28:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KNexaoF/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A9710E48D;
 Mon, 10 Nov 2025 17:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795712; x=1794331712;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8vve6d46yfVaQO6zZZ+sNKjl7MvQeIfv/NPbtg7+0eo=;
 b=KNexaoF/jGKdr7JiqMvBK3UgXzT9kfGv13fqKJaHxb2Pm8mtMI48LgPp
 nM9KZMoNAeIuOzI9yo+DlPUSBmI079FwKqeV1wGcqCDh2RlDuYpZOCfxE
 ecq/63dxR+Nwtf3Pcd1/m/HSZMtNI1yZhnB7tZmqOlKC0l/pRU68uPUYa
 NG7X6kshVr45LJVIoXRQpLorbE4O2Ms5CDdMQ6lxjLb5grG5EpuiShBqH
 AaxgZaSf8HILY2SwKvayw+P8dI2I37MiXJZrZbDLo8NLaTb0zdhTZ08hT
 GO2V6xchXxBbtH+D9vkPFYPM2GNlIaUNWZudeELCYOYj4XYA04ktbfyDb w==;
X-CSE-ConnectionGUID: KMqDSTUpTDSWjxHiDdoXYg==
X-CSE-MsgGUID: 5j1TBwMFRfSwDsO+/eXQPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="82248281"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="82248281"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:32 -0800
X-CSE-ConnectionGUID: sEs3pbp9T5mdyes4fhurpg==
X-CSE-MsgGUID: 5dOWGaOhR8i0LkjaRIVcPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="193734398"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:30 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 07/16] drm/i915/de: Nuke intel_de_wait_custom()
Date: Mon, 10 Nov 2025 19:27:46 +0200
Message-ID: <20251110172756.2132-8-ville.syrjala@linux.intel.com>
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

intel_de_wait_custom() is finally unused. Get rid of it
before people start abusing it more.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index 43a4160f760a..2566079f695e 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -165,25 +165,6 @@ intel_de_wait_fw_ms(struct intel_display *display, i915_reg_t reg,
 	return ret;
 }
 
-static inline int
-intel_de_wait_custom(struct intel_display *display, i915_reg_t reg,
-		     u32 mask, u32 value,
-		     unsigned int fast_timeout_us,
-		     unsigned int slow_timeout_ms, u32 *out_value)
-{
-	int ret;
-
-	intel_dmc_wl_get(display, reg);
-
-	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
-					value,
-					fast_timeout_us, slow_timeout_ms, out_value);
-
-	intel_dmc_wl_put(display, reg);
-
-	return ret;
-}
-
 static inline int
 intel_de_wait_for_set_ms(struct intel_display *display, i915_reg_t reg,
 			 u32 mask, unsigned int timeout_ms)
-- 
2.49.1

