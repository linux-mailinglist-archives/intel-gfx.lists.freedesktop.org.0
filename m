Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63D33972234
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0401610E65B;
	Mon,  9 Sep 2024 18:59:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W209Zzvb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8258110E655;
 Mon,  9 Sep 2024 18:59:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725908392; x=1757444392;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=lZEaCLBhQYFdm/sy4Wc2G+ZKbAox3lo3TdYmWZZ0d4Q=;
 b=W209Zzvb/LhA2WAHkB+x7xFNIAvD7euYUn4FI6iEv1ASiC13Dr3Wj63c
 SxIZ2+qpLpCxcguDpmuHQXEekdMz/dGszcVk5Gg4aAIQbVLYdlsiVpxte
 3m3A1qOZWKQFiShppnHnhqmw18/TGcIVTj7ugTesC0ZhjiwJy9qjVJU/O
 Ae0PwVaTWYgTQikuXmiT2YSZetfZ1aQZ5LAd4HuHHlHfkjFWgDJdjDyKM
 7DqcxCh62qTYXuRboO/16B85/NY8C/fqGTtW6HYGmA5HIV+HWIBllPmyU
 hjmOm+BHf19eBFpUYS73ym/PKps+2olC6eRH06eTKUY5y4UC+9nCVZ+0P w==;
X-CSE-ConnectionGUID: RNPG8ZSiSgCUZNGP+GK75Q==
X-CSE-MsgGUID: mLCnvi0hTam94O/eXA0nWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24170807"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24170807"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:51 -0700
X-CSE-ConnectionGUID: ++S2KuFQQJCw36VBlU/x+w==
X-CSE-MsgGUID: KKRjHxknT7Gald22pDJq9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="67030743"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 09/11] drm/i915/reg: remove unused DSI register macros
Date: Mon,  9 Sep 2024 21:59:00 +0300
Message-Id: <b78f3fe8fe20cb1568aafa8938710289e607690d.1725908152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725908151.git.jani.nikula@intel.com>
References: <cover.1725908151.git.jani.nikula@intel.com>
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

Not needed. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 19 -------------------
 1 file changed, 19 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 993623710700..f626d79bc3c0 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1138,20 +1138,6 @@
 #define _TRANS_MULT_B		0x6102c
 #define TRANS_MULT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
 
-/* DSI 0 timing regs */
-#define _TRANS_HTOTAL_DSI0	0x6b000
-#define _TRANS_HSYNC_DSI0	0x6b008
-#define _TRANS_VTOTAL_DSI0	0x6b00c
-#define _TRANS_VSYNC_DSI0	0x6b014
-#define _TRANS_VSYNCSHIFT_DSI0	0x6b028
-
-/* DSI 1 timing regs */
-#define _TRANS_HTOTAL_DSI1	0x6b800
-#define _TRANS_HSYNC_DSI1	0x6b808
-#define _TRANS_VTOTAL_DSI1	0x6b80c
-#define _TRANS_VSYNC_DSI1	0x6b814
-#define _TRANS_VSYNCSHIFT_DSI1	0x6b828
-
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
@@ -2118,11 +2104,6 @@
 #define SWF3(dev_priv, i)	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x72414 + (i) * 4)
 #define SWF_ILK(i)	_MMIO(0x4F000 + (i) * 4)
 
-/* ICL DSI 0 and 1 */
-#define _PIPEDSI0CONF		0x7b008
-#define _PIPEDSI1CONF		0x7b808
-
-
 /* VBIOS regs */
 #define VGACNTRL		_MMIO(0x71400)
 # define VGA_DISP_DISABLE			(1 << 31)
-- 
2.39.2

