Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF9187C98B
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Mar 2024 09:02:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 935BB10E06F;
	Fri, 15 Mar 2024 08:02:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m73TmggW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C32510FFA4
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Mar 2024 08:02:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710489762; x=1742025762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5ag9VMrEnM196EeldX7xO8GwRU6tBLER9Gy+bsyZR3g=;
 b=m73TmggWnW9iqnhN9FAkn+jMut3fbjR5FVezFnwNxWNNwOcQfP3UuCv/
 zhpZcsjYO1qfX85OT5/Dhx9lFUpAvG9T5zokCfaR95Sycxp0w44fwzxft
 O0Pff7A8Fxi3+LXHUAyxf/BCuRZD8TY3GM2Py8t8NsQIBuZyEldSZK160
 p+qehw26ItBmULIbBywF+cNw/gu6s9YM62s5iM8Jjm0hyyoT2Pht2+pxf
 xojLRJWBrjDVKeglywOMmVRTvuY6ovVFZwy1xXg2HmJKiJkgph0mliS7Q
 tDcwcDQLw8MZR8iDRPgtrno+f9NUZjWynl/oUXNrFZpJxjumWEThkvpVK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11013"; a="5553534"
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; 
   d="scan'208";a="5553534"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 01:02:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,127,1708416000"; d="scan'208";a="43485508"
Received: from kwimmer-mobl1.amr.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.209.233])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Mar 2024 01:02:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v4 1/5] drm/i915/psr: Add missing ALPM AUX-Less register
 definitions
Date: Fri, 15 Mar 2024 10:02:18 +0200
Message-Id: <20240315080222.72838-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240315080222.72838-1-jouni.hogander@intel.com>
References: <20240315080222.72838-1-jouni.hogander@intel.com>
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

Couple of ALPM AUX-Less related fields are missing from ALPM register
definitions. Add these and remove some duplicate definitions.

Bspec: 70294

V2: add Bspec reference

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr_regs.h | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
index 8427a736f639..b004672d1deb 100644
--- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
+++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
@@ -348,9 +348,13 @@
 #define PORT_ALPM_LFPS_CTL(tran)				_MMIO_TRANS2(tran, _PORT_ALPM_LFPS_CTL_A)
 #define  PORT_ALPM_LFPS_CTL_LFPS_START_POLARITY			REG_BIT(31)
 #define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK		REG_GENMASK(27, 24)
-#define  ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES		5
-#define  ALPM_CTL_EXTENDED_FAST_WAKE_TIME(lines)	REG_FIELD_PREP(ALPM_CTL_EXTENDED_FAST_WAKE_TIME_MASK, (lines) - ALPM_CTL_EXTENDED_FAST_WAKE_MIN_LINES)
-#define  ALPM_CTL_AUX_LESS_WAKE_TIME_MASK		REG_GENMASK(5, 0)
-#define  ALPM_CTL_AUX_LESS_WAKE_TIME(val)		REG_FIELD_PREP(ALPM_CTL_AUX_LESS_WAKE_TIME_MASK, val)
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN		7
+#define  PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT(val)		REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MASK, (val) - PORT_ALPM_LFPS_CTL_LFPS_CYCLE_COUNT_MIN)
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(20, 16)
+#define  PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(12, 8)
+#define  PORT_ALPM_LFPS_CTL_FIRST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION_MASK	REG_GENMASK(4, 0)
+#define  PORT_ALPM_LFPS_CTL_LAST_LFPS_HALF_CYCLE_DURATION(val)	REG_FIELD_PREP(PORT_ALPM_LFPS_CTL_LFPS_HALF_CYCLE_DURATION_MASK, val)
 
 #endif /* __INTEL_PSR_REGS_H__ */
-- 
2.34.1

