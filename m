Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C89F4D5F47
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Mar 2022 11:19:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 660F810E8B6;
	Fri, 11 Mar 2022 10:19:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4CED10E8B6
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Mar 2022 10:19:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646993948; x=1678529948;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=LgIHZGM7VPofGxGdv0my+imJe9vceCi4RIxrd0JUEdQ=;
 b=fkhVq8jAIPN0S+YcxSexznPeS6DvlZpC8cP+2T0fvG04rfF4h18+KfOl
 Kp0snhbTV+KG5/UU69IPPLmvGM3l01zJ4AoNwy37xD1NJQ6bP6foCTo/o
 JTV2dYVipBmouZwzX48oAyWezb9gMbFSPfIqLM5Y2XgDnHkoOoHfKInXR
 s1diTfF1n9l1LoO8f/hI5eGhwXQ5DfZlijtZocO5JAXQXZHG5rIFFZEJx
 OjSrUCTEGQxGcyn1xhNhHeijgDR3w6CglKpep34jHjhBKpgwRakEuICJx
 pu7AhbaBW2dFyJL1Yuf2kgJp0je7VGim+YZAUj1ag7Wmz3U1+VizMdV4T g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10282"; a="242993997"
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="242993997"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:19:08 -0800
X-IronPort-AV: E=Sophos;i="5.90,173,1643702400"; d="scan'208";a="514459695"
Received: from cchitora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.187])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2022 02:19:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 11 Mar 2022 12:18:54 +0200
Message-Id: <20220311101854.146911-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220311101854.146911-1-jani.nikula@intel.com>
References: <20220311101854.146911-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: define INTEL_VGA_DEVICE_INIT()
 for subplatform init
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Redefine INTEL_VGA_DEVICE_INIT() instead of INTEL_VGA_DEVICE() for
subplatform init. This is only for completeness as we don't use
subplatforms for Quanta devices.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 8d458226f478..62aba2fc7e45 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -127,8 +127,8 @@ void intel_device_info_print_runtime(const struct intel_runtime_info *info,
 	drm_printf(p, "rawclk rate: %u kHz\n", info->rawclk_freq);
 }
 
-#undef INTEL_VGA_DEVICE
-#define INTEL_VGA_DEVICE(id, info) (id)
+#undef INTEL_VGA_DEVICE_INIT
+#define INTEL_VGA_DEVICE_INIT(__id, ...) (__id)
 
 static const u16 subplatform_ult_ids[] = {
 	INTEL_HSW_ULT_GT1_IDS(0),
-- 
2.30.2

