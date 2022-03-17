Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4594DCF1A
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 20:59:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E01C10E764;
	Thu, 17 Mar 2022 19:59:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E61D210E764
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 19:59:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647547183; x=1679083183;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=GGzGRWMTrByaff1LGXM764fnniwA8VhM/Lv4BtBrq68=;
 b=DBUO+5+egCmic3CzI7Dmme6NZp441CehNJPzde6rPY+JtArDAF/bWYmi
 8qEcgfO5B4nfbph1NfgU7CKuO8E+lLO4B98mXGv7JKfEdklPNIGXGJEju
 1YveAgrD/cW3njO3L1FQjeSlR3bBeYOK9EOoD4czcpdhhun/lPhNg3zVD
 98Mxf7mHOcuk4YRpyK1JPmg0VcRVStNt+3zQkJru1nZGKZQp0Se7Q1pfL
 gvwkz5sHNVPp1tZq2HhNYAmskg/dkMIA0s3Bp1Y8VRjvzXI2/AJ6ehqvy
 ZjYoEObATLFCCXdelTnu+RBRC5LLpYtlxDWY52Vl2q6Jf7FdVjTKw8e8s w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="343404147"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="343404147"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:59:43 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="513560243"
Received: from cjmartin-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.31.111])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 12:59:43 -0700
Date: Thu, 17 Mar 2022 12:59:41 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220317195941.ntswlxbpb3wlhcck@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <cover.1647542120.git.jani.nikula@intel.com>
 <6b3a6acadc33afb7171ca87e958341d1ac244f5b.1647542120.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <6b3a6acadc33afb7171ca87e958341d1ac244f5b.1647542120.git.jani.nikula@intel.com>
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/dmc: split out dmc registers
 to a separate file
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 17, 2022 at 08:36:20PM +0200, Jani Nikula wrote:
>Clean up the massive i915_reg.h a bit with this isolated set of
>registers.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_dmc.c      |  1 +
> drivers/gpu/drm/i915/display/intel_dmc_regs.h | 31 +++++++++++++++++++
> drivers/gpu/drm/i915/gvt/handlers.c           |  1 +
> drivers/gpu/drm/i915/i915_reg.h               | 21 -------------
> 4 files changed, 33 insertions(+), 21 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_regs.h
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index 7b7c757ce0ee..4d292a016ca0 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -28,6 +28,7 @@
> #include "i915_reg.h"
> #include "intel_de.h"
> #include "intel_dmc.h"
>+#include "intel_dmc_regs.h"
>
> /**
>  * DOC: DMC Firmware Support
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>new file mode 100644
>index 000000000000..e436fe93a2da
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
>@@ -0,0 +1,31 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright © 2022 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_DMC_REGS_H__
>+#define __INTEL_DMC_REGS_H__
>+
>+#include "i915_reg_defs.h"
>+
>+#define DMC_PROGRAM(addr, i)	_MMIO((addr) + (i) * 4)
>+#define DMC_SSP_BASE_ADDR_GEN9	0x00002FC0
>+#define DMC_HTP_ADDR_SKL	0x00500034
>+#define DMC_SSP_BASE		_MMIO(0x8F074)
>+#define DMC_HTP_SKL		_MMIO(0x8F004)
>+#define DMC_LAST_WRITE		_MMIO(0x8F034)
>+#define DMC_LAST_WRITE_VALUE	0xc003b400
>+/* MMIO address range for DMC program (0x80000 - 0x82FFF) */

this comment seems outdated. Or at least unneeded

Anyway:

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+#define DMC_MMIO_START_RANGE	0x80000
>+#define DMC_MMIO_END_RANGE	0x8FFFF
>+#define SKL_DMC_DC3_DC5_COUNT	_MMIO(0x80030)
>+#define SKL_DMC_DC5_DC6_COUNT	_MMIO(0x8002C)
>+#define BXT_DMC_DC3_DC5_COUNT	_MMIO(0x80038)
>+#define TGL_DMC_DEBUG_DC5_COUNT	_MMIO(0x101084)
>+#define TGL_DMC_DEBUG_DC6_COUNT	_MMIO(0x101088)
>+#define DG1_DMC_DEBUG_DC5_COUNT	_MMIO(0x134154)
>+
>+#define TGL_DMC_DEBUG3		_MMIO(0x101090)
>+#define DG1_DMC_DEBUG3		_MMIO(0x13415c)
>+
>+#endif /* __INTEL_DMC_REGS_H__ */
