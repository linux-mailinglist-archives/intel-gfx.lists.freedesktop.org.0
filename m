Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49C408B5ACE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:02:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9D23D112C7E;
	Mon, 29 Apr 2024 14:02:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knLzLJW0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D73A112C95
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:02:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399371; x=1745935371;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p0b1OSZv7d5k81ixg+ONZkIUnjH15w4/oaHoLBipEjM=;
 b=knLzLJW0LeEHhvzPcSavcceD9C09rYyylYWR4WwR6Yx92UWWtIx0CqUY
 +4hPWsMkDhDJxmhokKDyx1MyDOUaMyTfJulVtMzytfrbmuwEjRv3ZrbWP
 GL9+sVK9Q0oM9QFGN137z6knmQXURCalsYaxEalidPJ8do/mr5wEONwH0
 u3RHHP0wgE5FttcAlQ7jOPBmTDmZT3GUs1SBdum8/WXOnlXkTfC8Ef+D9
 TdiNMJo/sBigKGQ6FXQL9uuyIwQdtTNrsFK1WmYDy67fQrmGHQMYx5eC8
 1zfpo86mXxsvM6CjN9eIel+VGNNRwIpxVgrVn5VfnevuZyvp70G9FaWup w==;
X-CSE-ConnectionGUID: vY4D4ac/RCaC6v9m4lbjDw==
X-CSE-MsgGUID: lmMF2WmnSWaV34lujQsLag==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="32563367"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="32563367"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:50 -0700
X-CSE-ConnectionGUID: XRFAs9jPT3GWlFxBEW1kcQ==
X-CSE-MsgGUID: NZ+/K7m5TuKzZC2fI8jAyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="63599090"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 5/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C12
Date: Mon, 29 Apr 2024 17:02:19 +0300
Message-Id: <62a748b685f253151b17c101dec75351577f30c0.1714399071.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1714399071.git.jani.nikula@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
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
explicitly to the PIPE_WGC_C12 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index 11b5891a8399..a4935289729d 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -623,7 +623,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
 
 	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(dev_priv, pipe),
 			  csc->coeff[4] << 16 | csc->coeff[3]);
-	intel_de_write_fw(dev_priv, PIPE_WGC_C12(pipe),
+	intel_de_write_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe),
 			  csc->coeff[5]);
 
 	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(pipe),
@@ -650,7 +650,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
 	csc->coeff[3] = tmp & 0xffff;
 	csc->coeff[4] = tmp >> 16;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C12(pipe));
+	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe));
 	csc->coeff[5] = tmp & 0xffff;
 
 	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C21_C20(pipe));
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 19b0255e0831..2dc876e10eda 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -259,7 +259,7 @@
 #define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
 #define PIPE_WGC_C02(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
 #define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
-#define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
+#define PIPE_WGC_C12(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
 #define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
 #define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
 
-- 
2.39.2

