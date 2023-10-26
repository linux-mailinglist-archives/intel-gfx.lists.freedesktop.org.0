Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A91B7D8055
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 12:13:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0975B10E7A0;
	Thu, 26 Oct 2023 10:13:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C62F410E7A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 10:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698315224; x=1729851224;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AOXVrBncuZl4pswmMDXpEP0/CPxT6w2NrNVCWGooZwM=;
 b=nlquqrRUMKr4HqP7v7nWD+N2DrMEijV3d20PiNj4U3WoeqtoD7ZXh6an
 kxOYAVha1eIy/VW7JGnmvxMttzsQtBkp4Si2koK+QrMPeafORjBFkDWRz
 9A2DFjc8KiILjYJYedv6+W2SKydHZGUIdYkVWKKDCg52PIg0IXjAiNLlG
 NDGTrmdJ7WVU9oMIgcomv5t/4YONRIRdsNzvWNhHwrGCdRItUmKEtoCri
 4JYohDgKi39p/kzwfW2lob/t1z109MSVunG6EYSKNiqxykIsVELhdqKWI
 tudpdWEgqRt6c+YmitMErKbBNqf5M1ZS8yAsp0yttSYLVGiYKDPte9u7X Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="9061515"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="9061515"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:13:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="1090553954"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="1090553954"
Received: from tzirr-desk2.ger.corp.intel.com (HELO localhost) ([10.252.49.68])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 03:13:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 26 Oct 2023 13:13:33 +0300
Message-Id: <20231026101333.875406-2-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231026101333.875406-1-jani.nikula@intel.com>
References: <20231026101333.875406-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI 2/2] drm/i915: move Makefile display debugfs files
 next to display
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
Cc: jani.nikula@intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Keep the display build lists together.

v2: Rebase

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/Makefile | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
index d1f53dbf95f2..239da40a401f 100644
--- a/drivers/gpu/drm/i915/Makefile
+++ b/drivers/gpu/drm/i915/Makefile
@@ -95,10 +95,7 @@ i915-$(CONFIG_COMPAT) += \
 	i915_ioc32.o
 i915-$(CONFIG_DEBUG_FS) += \
 	i915_debugfs.o \
-	i915_debugfs_params.o \
-	display/intel_display_debugfs.o \
-	display/intel_display_debugfs_params.o \
-	display/intel_pipe_crc.o
+	i915_debugfs_params.o
 i915-$(CONFIG_PERF_EVENTS) += \
 	i915_pmu.o
 
@@ -320,6 +317,10 @@ i915-$(CONFIG_ACPI) += \
 	display/intel_opregion.o
 i915-$(CONFIG_DRM_FBDEV_EMULATION) += \
 	display/intel_fbdev.o
+i915-$(CONFIG_DEBUG_FS) += \
+	display/intel_display_debugfs.o \
+	display/intel_display_debugfs_params.o \
+	display/intel_pipe_crc.o
 
 # modesetting output/encoder code
 i915-y += \
-- 
2.39.2

