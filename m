Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F350890183
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 15:19:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52B4F10E1C9;
	Thu, 28 Mar 2024 14:19:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fGLT/Uys";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 870B310F272
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 14:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711635586; x=1743171586;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VuLR4N/uQ6tYuwX8rvHjM5vmBeod/ks3gUlP7UDegus=;
 b=fGLT/UysG1AfY/ZP0+oZvd+/wbwXi+Hdpaz/5SNAvdvOhEqg/Z2Kt1LU
 cldXMkaOcYIDhzyapmNb1o1Wts4LjEEapOmNHd0Jsuirqz7kjUrr+VHdZ
 k9bY47c4k8hu6U2f1ZGqNwzhFfHsS6VkEs2S/o30v94o6mO763Pyqgw7n
 vKe0O3lrOd0pS7+btz5nutoqGJKV+95A/McADEOv8Id4MJYUIJfTW9MvX
 GEeomTpqr2/wCDG05DKrQ8imUTVf9FQolYP9tldpwW4nFd236P+zDQ/km
 icrvFtOYi93vfOSUycmCe8ej2VDBkBoT1APNadlZb63JQGpw60baDItVa w==;
X-CSE-ConnectionGUID: Zfgd9IhUSVi2U/Tkf9llhQ==
X-CSE-MsgGUID: gefV6D+eT3y4ded5XXmylA==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="7390995"
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; 
   d="scan'208";a="7390995"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 07:19:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,162,1708416000"; d="scan'208";a="47852003"
Received: from comms.fi.intel.com (HELO jhogande-mobl1.fi.intel.com)
 ([10.237.72.67])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 07:19:45 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v6 1/5] drm/i915/psr: Add missing ALPM AUX-Less register
 definitions
Date: Thu, 28 Mar 2024 16:19:24 +0200
Message-Id: <20240328141928.1311284-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240328141928.1311284-1-jouni.hogander@intel.com>
References: <20240328141928.1311284-1-jouni.hogander@intel.com>
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
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
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

