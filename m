Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 413FB8B5ACD
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:02:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88A11112C96;
	Mon, 29 Apr 2024 14:02:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bPdjoJTN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2996D10EC92
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:02:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399367; x=1745935367;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=L/2Owyh6x4CyaRHg2/q75ZXC6VF4mhSkTQH7HtbRzdI=;
 b=bPdjoJTNuvlXLwJGo4O+KKFCs5mWHeMaXyLnuuXgslhMUIgYdjEzZ7oP
 bzAFQiQAnnbhGCwrP9o9bl03Rm/ND8IRiPdPD97h/1CgsbqFDyMkcjn2K
 g0c+c5kexsvH0TTAZNQG12uCs7l/mQdUHSp+ru13Icb6qevnYqddIrEbc
 g8qhMMzYhOoI54WrZ99+saFVjv9fauuQ2hpxuozv6wuHqVXqOL/EBlaYG
 8b1biBtQlVuS92+TYhdIWZeQ1MoggQlEgxbwCfZXCPue6qfVWz/N6H7ko
 qrFLUT0fdyrTscLfjSNxbBfaJ4vs4uI0Qwh+9mWY1ceuEl1rF8M6FqWuV w==;
X-CSE-ConnectionGUID: Fhn6XVjPQk+moDnqbvCkow==
X-CSE-MsgGUID: eIIDqeUxS+6Jn4v9Zm0Srw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27578345"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="27578345"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:46 -0700
X-CSE-ConnectionGUID: H4CgTOH1Ruq2E5aHcLLeNw==
X-CSE-MsgGUID: N6PVXn90TDScA/lMCdQefg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="30950553"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:45 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 4/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C11_C10
Date: Mon, 29 Apr 2024 17:02:18 +0300
Message-Id: <3f7aae89cf63760bca43b54102c76b3ed2cf8735.1714399071.git.jani.nikula@intel.com>
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
explicitly to the PIPE_WGC_C11_C10 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index f96d6af028b6..11b5891a8399 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -621,7 +621,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
 	intel_de_write_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe),
 			  csc->coeff[2]);
 
-	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(pipe),
+	intel_de_write_fw(dev_priv, PIPE_WGC_C11_C10(dev_priv, pipe),
 			  csc->coeff[4] << 16 | csc->coeff[3]);
 	intel_de_write_fw(dev_priv, PIPE_WGC_C12(pipe),
 			  csc->coeff[5]);
@@ -646,7 +646,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
 	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C02(dev_priv, pipe));
 	csc->coeff[2] = tmp & 0xffff;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C11_C10(pipe));
+	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C11_C10(dev_priv, pipe));
 	csc->coeff[3] = tmp & 0xffff;
 	csc->coeff[4] = tmp >> 16;
 
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index 741c0b8592d9..19b0255e0831 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -258,7 +258,7 @@
 
 #define PIPE_WGC_C01_C00(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C01_C00)
 #define PIPE_WGC_C02(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
-#define PIPE_WGC_C11_C10(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
+#define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
 #define PIPE_WGC_C12(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
 #define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
 #define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
-- 
2.39.2

