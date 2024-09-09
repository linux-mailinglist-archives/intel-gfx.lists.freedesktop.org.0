Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6243972235
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 20:59:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E7F110E65D;
	Mon,  9 Sep 2024 18:59:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LLADZorP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C91D10E65C;
 Mon,  9 Sep 2024 18:59:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725908397; x=1757444397;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GGR2WD8db9JTLmez34uNZnxqpZRku97WHPZ0DI+d69Q=;
 b=LLADZorPHxdBDFkWgq9moRKylTkx28grCjxYuC2DjefDvGEgR0EC1ofv
 Gw+1orA8Y9BdiBGjRnfnLdljYQqObe22DkJnNTNpCMOMq95O/QyVE9MuX
 1cP1hSeIHqLXe+SpqMGYB+mXlBM420MMWu9QaMrM4N7Ypz6LH//KrYgjT
 o0J/bz9MIyzhJX2l4VDMFT5EM/w0goAL4voi9UCTK2yfAHAYRlzzJdbLv
 kyDQZq9GsTbM+khaQSxwO017lsjT353cmFsVBwkRXhNZO8WiM8Uevc84Z
 JAGtGT17OuzfuXy1f94/eqEHIUdlGMEg7WAS13E3CW9bNivD/z6RtOUmI Q==;
X-CSE-ConnectionGUID: ffHRYgvCRHKJ8iq+KLzPkA==
X-CSE-MsgGUID: hRYOzyyKRU62lUxWFgp3Vg==
X-IronPort-AV: E=McAfee;i="6700,10204,11190"; a="24170812"
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="24170812"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:56 -0700
X-CSE-ConnectionGUID: h6wUOsmISb6JIMHNrCaLLw==
X-CSE-MsgGUID: QzGWXmmgT92Oo4XzIMieJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,215,1719903600"; d="scan'208";a="67030758"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 11:59:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/11] drm/i915/reg: remove superfluous whitespace
Date: Mon,  9 Sep 2024 21:59:01 +0300
Message-Id: <d606b395411f324c2628550c9cc24710c301810c.1725908152.git.jani.nikula@intel.com>
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

Clean up some whitespace.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index f626d79bc3c0..3f4cfafd050f 100644
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

