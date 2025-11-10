Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 98EE6C48528
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Nov 2025 18:28:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 328BD10E486;
	Mon, 10 Nov 2025 17:28:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gy/QY0e9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A80210E2CF;
 Mon, 10 Nov 2025 17:28:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762795697; x=1794331697;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=baax1TcAAwNxJ908k2yqOmW8gdlMXK+Rkws1o4a0WNc=;
 b=gy/QY0e9a2KkG9Qt0aYI6Fy3YCYTA6xQaSeloEoQbzmfaWoiLZj7JU6h
 0R5dTMPasf8UhzcpFa3B7dcxK2fq5MvLgfCSifQqkfrxvAZi3nb3t6N3A
 iAg5tiY6aJTw3X5Gfj+xrX2nsMgvUtxozKs3dRhe1n8sFEpFA0AnYMA6l
 V9SufB1fezrRQ3KhxSY9t6kd/BxuaJx706g2DFiSXVg6tU6QkXxybzkQO
 2g7J2CO8vnS1ewZfSSPnVrf54IbhkAEwZRZzXSV11RExhV9Jj+S8b9Bfo
 MQCGJeed/CWCgBTrK8hlZ1euktsPcscEcsdUDzQ9lDOOahV5H4iJS1Nvp Q==;
X-CSE-ConnectionGUID: BiJb7pd7QD2sP/hoD3TRug==
X-CSE-MsgGUID: gr6ekzQHRAC5z1xXhPpxCg==
X-IronPort-AV: E=McAfee;i="6800,10657,11609"; a="75143293"
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="75143293"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:17 -0800
X-CSE-ConnectionGUID: 4QgIHp9/RfyKcS54ZIYtJg==
X-CSE-MsgGUID: b1ydmFTHT/GUitFxcr7VeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,294,1754982000"; d="scan'208";a="219445336"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.30])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2025 09:28:16 -0800
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 04/16] drm/i915/de: Introduce intel_de_wait_us()
Date: Mon, 10 Nov 2025 19:27:43 +0200
Message-ID: <20251110172756.2132-5-ville.syrjala@linux.intel.com>
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

Introduce intel_de_wait_us() as the microsecond based
counterpart to the millisecond based intel_de_wait_ms().

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_de.h | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_de.h b/drivers/gpu/drm/i915/display/intel_de.h
index d449180d1d22..43a4160f760a 100644
--- a/drivers/gpu/drm/i915/display/intel_de.h
+++ b/drivers/gpu/drm/i915/display/intel_de.h
@@ -114,6 +114,23 @@ __intel_de_wait_for_register_atomic_nowl(struct intel_display *display,
 					 value, fast_timeout_us, 0, NULL);
 }
 
+static inline int
+intel_de_wait_us(struct intel_display *display, i915_reg_t reg,
+		 u32 mask, u32 value, unsigned int timeout_us,
+		 u32 *out_value)
+{
+	int ret;
+
+	intel_dmc_wl_get(display, reg);
+
+	ret = __intel_wait_for_register(__to_uncore(display), reg, mask,
+					value, timeout_us, 0, out_value);
+
+	intel_dmc_wl_put(display, reg);
+
+	return ret;
+}
+
 static inline int
 intel_de_wait_ms(struct intel_display *display, i915_reg_t reg,
 		 u32 mask, u32 value, unsigned int timeout_ms,
-- 
2.49.1

