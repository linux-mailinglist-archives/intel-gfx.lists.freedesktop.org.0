Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EA3B64568D
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 10:35:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E31BC10E18E;
	Wed,  7 Dec 2022 09:35:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF2BA10E18E
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 09:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670405698; x=1701941698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pGcY1t7xszYTy4X8D0kwbKRUSxlY5K4zdM8ht/kdvhg=;
 b=K5IVKwfljBp9Hs1N5kn5nIBXbL9Vt83V02t/LB2iZbF3QzMxMl6YHvmc
 SOLQdprnWMQQa/EsyRW1o6tIYnUAp0Ag+A0bhQ+U+d+ub4EOyjvnE6Kwu
 yuQ6rJaBKA2eF7atEdq+TtVoiDgozGbnDTmEaOUwloX1RszH4Hip3HZCT
 ajNTPfPa6grG6QqB3VlaZ4+Wvf4BvXKmTu4NhOtLJ5vXSDcwCFt1JuCDF
 P4lhod86m4jdYUMN/QAismzkWMHNUzD7JOkp9osdz4QcmUzkfLYOQ+ZA0
 uJkef7HiEF1Ypt9bP17WJ3jr66NjpwYX5Fm/4ZiLhvVKJU1Qs/sZL/Ev3 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="300268281"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="300268281"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:34:57 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="891732761"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="891732761"
Received: from fbackhou-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.36.192])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 01:34:55 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  7 Dec 2022 11:34:42 +0200
Message-Id: <eb252083a56ec64b4fdb58d4d30abcf305a3a9c2.1670405587.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1670405587.git.jani.nikula@intel.com>
References: <cover.1670405587.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 1/5] drm/i915/backlight: use VLV_DISPLAY_BASE
 for VLV/CHV backlight registers
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
Cc: Jani Nikula <jani.nikula@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Since the VLV/CHV backlight registers are only used on VLV/CHV, there's
no need to dynamically look up DISPLAY_MMIO_BASE(). We know it's
VLV_DISPLAY_BASE. Use it statically, reducing the implicit dev_priv
references.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_backlight_regs.h   | 21 ++++++++-----------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_backlight_regs.h b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
index 344eb8096bd2..02bd1f8201bf 100644
--- a/drivers/gpu/drm/i915/display/intel_backlight_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_backlight_regs.h
@@ -8,20 +8,17 @@
 
 #include "intel_display_reg_defs.h"
 
-#define _VLV_BLC_PWM_CTL2_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61250)
-#define _VLV_BLC_PWM_CTL2_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61350)
-#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, \
-					 _VLV_BLC_PWM_CTL2_B)
+#define _VLV_BLC_PWM_CTL2_A		(VLV_DISPLAY_BASE + 0x61250)
+#define _VLV_BLC_PWM_CTL2_B		(VLV_DISPLAY_BASE + 0x61350)
+#define VLV_BLC_PWM_CTL2(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL2_A, _VLV_BLC_PWM_CTL2_B)
 
-#define _VLV_BLC_PWM_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61254)
-#define _VLV_BLC_PWM_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61354)
-#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, \
-					_VLV_BLC_PWM_CTL_B)
+#define _VLV_BLC_PWM_CTL_A		(VLV_DISPLAY_BASE + 0x61254)
+#define _VLV_BLC_PWM_CTL_B		(VLV_DISPLAY_BASE + 0x61354)
+#define VLV_BLC_PWM_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_PWM_CTL_A, _VLV_BLC_PWM_CTL_B)
 
-#define _VLV_BLC_HIST_CTL_A (DISPLAY_MMIO_BASE(dev_priv) + 0x61260)
-#define _VLV_BLC_HIST_CTL_B (DISPLAY_MMIO_BASE(dev_priv) + 0x61360)
-#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, \
-					 _VLV_BLC_HIST_CTL_B)
+#define _VLV_BLC_HIST_CTL_A		(VLV_DISPLAY_BASE + 0x61260)
+#define _VLV_BLC_HIST_CTL_B		(VLV_DISPLAY_BASE + 0x61360)
+#define VLV_BLC_HIST_CTL(pipe) _MMIO_PIPE(pipe, _VLV_BLC_HIST_CTL_A, _VLV_BLC_HIST_CTL_B)
 
 /* Backlight control */
 #define BLC_PWM_CTL2	_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61250) /* 965+ only */
-- 
2.34.1

