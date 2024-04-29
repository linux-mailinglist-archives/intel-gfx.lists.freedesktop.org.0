Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFAD8B5AD1
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:03:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D7D110F53A;
	Mon, 29 Apr 2024 14:03:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j2GMzavW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5A7710FB61
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714399380; x=1745935380;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Mr4NnfSw7YR7w8rBgHVso0If2mTM98NNQTFjya0rtbs=;
 b=j2GMzavW9RQBWRHSSzMgKr5B5u6IT7cMVT0CURDQwkEoloMsO+tNoQaC
 6JcQ84RCsW1rpppaYHkpMFblKpEf7NW5Cwux//WAz6xCi09ZSDe45Ckg8
 gWwg/F2MI7D2DJsFJG2VcDo9TeCatqaji05fIzNdV8jhwxdFqILyWmXlT
 xanyzKqLduVBiwWV05fpaIC+rqvOw7zBSsjPZEdCa/PB/DdUfRgxQ7dMh
 HGGnKW5Ipt4MIwUj+Pqaw/8EAAOni0RxEqismGgsye8bttSzZFTl5aDkB
 AReG1tHm4rF4sKdeAHQQnJE9Fq9nmdLjnj0XciAtx2rQG11Kw0eDof8Ba g==;
X-CSE-ConnectionGUID: N12m6vNaRfaVIxlKQDcSgQ==
X-CSE-MsgGUID: oCKEMtDPRoOfhlKmTanPVw==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="27510446"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="27510446"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:03:00 -0700
X-CSE-ConnectionGUID: 55lslVaGQ9yhGuQsQsRADw==
X-CSE-MsgGUID: COq9Kt+FRpi6SBXuWGNSIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="56991806"
Received: from aantonov-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:02:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 7/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C22
Date: Mon, 29 Apr 2024 17:02:21 +0300
Message-Id: <0a07f615c574040094b37c861078e41daf53c706.1714399071.git.jani.nikula@intel.com>
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
explicitly to the PIPE_WGC_C22 register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
 drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index fc27c1bda676..d23163dc64d4 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -628,7 +628,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
 
 	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(dev_priv, pipe),
 			  csc->coeff[7] << 16 | csc->coeff[6]);
-	intel_de_write_fw(dev_priv, PIPE_WGC_C22(pipe),
+	intel_de_write_fw(dev_priv, PIPE_WGC_C22(dev_priv, pipe),
 			  csc->coeff[8]);
 }
 
@@ -657,7 +657,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
 	csc->coeff[6] = tmp & 0xffff;
 	csc->coeff[7] = tmp >> 16;
 
-	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C22(pipe));
+	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C22(dev_priv, pipe));
 	csc->coeff[8] = tmp & 0xffff;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
index c2e06ccf96c4..bb99ea533842 100644
--- a/drivers/gpu/drm/i915/display/intel_color_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
@@ -261,7 +261,7 @@
 #define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
 #define PIPE_WGC_C12(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
 #define PIPE_WGC_C21_C20(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
-#define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
+#define PIPE_WGC_C22(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
 
 /* pipe CSC & degamma/gamma LUTs on CHV */
 #define _CGM_PIPE_A_CSC_COEFF01	(VLV_DISPLAY_BASE + 0x67900)
-- 
2.39.2

