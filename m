Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC069738AB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Sep 2024 15:29:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86A2A10E7DC;
	Tue, 10 Sep 2024 13:29:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hTifPoAe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8687A10E7DC;
 Tue, 10 Sep 2024 13:29:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725974998; x=1757510998;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qLNku4NLrBW+ArMia+8lag1GIBQdkvbaKLt9AV489wU=;
 b=hTifPoAetz3llahddqq/AcHjx6s5mVX4Ex9qZv6Gz/DX0wFpaDTpJQul
 b4geyDvkTkVoDgCo4CBUAlUp4BiVtwPz+a10OQJIl85lpqUu7dh46GnAP
 2ZL1sen40C8XwCL2ehWrz9CnCL2JnC/niVEaftbOVV40IsOUJm0VS19Xm
 J//KpSh84khN9FVH7Smy5aNCE5q+y6tC9HE1oVt/+/V/GvSfGSW/OWBFP
 9d1AQJFbXhKl1LhR5n5l4e8YFnbbcqX8/ZViRykuuxm9FWai8M2l30IN1
 KbLKg3f+IlTyki40EF/1VTKVTEprXh1BIuTEzQOUOo3JtT7RmyqntUvLc A==;
X-CSE-ConnectionGUID: RKtiy+QjS2OrtWmvFLmJ+g==
X-CSE-MsgGUID: KggdAis4SqycH7J0SV8s6w==
X-IronPort-AV: E=McAfee;i="6700,10204,11191"; a="28500472"
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="28500472"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:57 -0700
X-CSE-ConnectionGUID: gKVXIU2RTkeAOBiK1jJDVw==
X-CSE-MsgGUID: qqaLGforSx6ZsY94XiwAKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,217,1719903600"; d="scan'208";a="71623416"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.43])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2024 06:29:55 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 11/11] drm/i915/reg: remove superfluous whitespace
Date: Tue, 10 Sep 2024 16:28:55 +0300
Message-Id: <1223c6c7ff59f541453a38f8f5e2df9eb3526573.1725974820.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1725974820.git.jani.nikula@intel.com>
References: <cover.1725974820.git.jani.nikula@intel.com>
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

Clean up some whitespace.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 6dbaaca1ab4c..7396fc630e29 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1142,7 +1142,6 @@
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
 #define VLV_ADPA		_MMIO(VLV_DISPLAY_BASE + 0x61100)
-
 #define   ADPA_DAC_ENABLE	(1 << 31)
 #define   ADPA_DAC_DISABLE	0
 #define   ADPA_PIPE_SEL_SHIFT		30
@@ -1186,7 +1185,6 @@
 #define   ADPA_DPMS_STANDBY	(2 << 10)
 #define   ADPA_DPMS_OFF		(3 << 10)
 
-
 /* Hotplug control (945+ only) */
 #define PORT_HOTPLUG_EN(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61110)
 #define   PORTB_HOTPLUG_INT_EN			(1 << 29)
@@ -1437,11 +1435,9 @@
 #define DP_B			_MMIO(0x64100)
 #define DP_C			_MMIO(0x64200)
 #define DP_D			_MMIO(0x64300)
-
 #define VLV_DP_B		_MMIO(VLV_DISPLAY_BASE + 0x64100)
 #define VLV_DP_C		_MMIO(VLV_DISPLAY_BASE + 0x64200)
 #define CHV_DP_D		_MMIO(VLV_DISPLAY_BASE + 0x64300)
-
 #define   DP_PORT_EN			(1 << 31)
 #define   DP_PIPE_SEL_SHIFT		30
 #define   DP_PIPE_SEL_MASK		(1 << 30)
@@ -4250,7 +4246,6 @@ enum skl_power_gate {
 /* ADL-P Type C PLL */
 #define PORTTC1_PLL_ENABLE	0x46038
 #define PORTTC2_PLL_ENABLE	0x46040
-
 #define ADLP_PORTTC_PLL_ENABLE(tc_port)		_MMIO_PORT((tc_port), \
 							    PORTTC1_PLL_ENABLE, \
 							    PORTTC2_PLL_ENABLE)
-- 
2.39.2

