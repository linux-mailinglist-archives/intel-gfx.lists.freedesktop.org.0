Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB597D50E7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 15:05:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15EFA10E3B5;
	Tue, 24 Oct 2023 13:05:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 40E7E10E3B1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 13:05:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698152700; x=1729688700;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eqS+pKB5bJHVjEn8t6ICeFLH8QQRknSMbfnSRrEVGyg=;
 b=Y3Y4/BBCc+M9yYK7MFDgHBrsXP9EeELRHD3sHJ/8yg751l7fxbnBf3Dc
 D1FzsXxEnG6IzPw2MpayGjSzMWN/x+6G2KSwEZzwrzLdq2Kqm57WaXlzi
 xZ2Xg2RbnHyVnujiXClXw7eP7b6Cw41xYhK6Z2xthlGaJXx4qyX2tKi1A
 lafqKYiYzSucyPj4L464q6WEaF2Br9KzMp7SwiaeioakouVm5UG3RQ8IL
 thefyxLmABg0pIdV1G/JSUEdTaBhRpx/qjzae3cccElfBv4LLuY9S/vTM
 RmyUu9RGW/L9+Fykp8GS0AD+kW4nFtyUGDB2tbZ17ihGcRZIsF7Desp60 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="389899769"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="389899769"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="751997253"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="751997253"
Received: from goepfrim-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.28])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 06:04:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 24 Oct 2023 16:04:48 +0300
Message-Id: <20231024130448.576297-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231024130448.576297-1-jani.nikula@intel.com>
References: <20231024130448.576297-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: move Makefile display debugfs
 files next to display
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Keep the display build lists together.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index bc785dd89c19..e92682424915 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -95,9 +95,7 @@ i915-$(CONFIG_COMPAT) += \
 	i915_ioc32.o
 i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs.o \
-	i915_debugfs_params.o \
-	display/intel_display_debugfs.o \
-	display/intel_pipe_crc.o
+	i915_debugfs_params.o
 i915-$(CONFIG_PERF_EVENTS) += \
 	i915_pmu.o
 
@@ -318,6 +316,9 @@ i915-$(CONFIG_ACPI) += \
 	display/intel_opregion.o
 i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
 	display/intel_fbdev.o
+i915-$(CONFIG_DEBUG_FS) += \
+	display/intel_display_debugfs.o \
+	display/intel_pipe_crc.o
 
 # modesetting output/encoder code
 i915-y += \
-- 
2.39.2

