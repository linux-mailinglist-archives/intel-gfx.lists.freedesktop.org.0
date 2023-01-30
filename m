Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83671681880
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 19:17:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B24F10E0D9;
	Mon, 30 Jan 2023 18:17:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8027510E0C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 18:17:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675102629; x=1706638629;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Iaakl7OuWgvh/p15IAeAttmTgMeOXCyQTiCCsyzi3zw=;
 b=AMqqMh2Ht5bHmb+zo+REiA2Hjd9o1J3mQ82zjoe9W/rSqSRiHSDtwVOg
 atM26R4kZXECVRaZ+WdV91vmVb42B6SC84OjBKdBaCaDg1ZfJrbmwzQqo
 kXoP9vFXWNMrPt5y6nWBctFc5EBr0nY4XVlszfmPmhIVCbSKsfty1PYyg
 PBx0p4tUC16J7MOWvP9P+icf6QYanMlshORcPAI6AnEhcgpDcJgpIFyVm
 mRJM52yuvtxfH6/o2FZJ/RP1CP+5mx/1Dla6KjhC+P1pVXj855NXbk0SI
 0ygTwGfyO63uEQ2XT0kNu3IQ4p/gF2NuLixiPtS345zr/pMMqJIWLEZWa w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="329745256"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="329745256"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 10:17:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="752923595"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="752923595"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by FMSMGA003.fm.intel.com with SMTP; 30 Jan 2023 10:17:06 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 30 Jan 2023 20:17:06 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 30 Jan 2023 20:17:01 +0200
Message-Id: <20230130181701.29977-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230130181701.29977-1-ville.syrjala@linux.intel.com>
References: <20230130181701.29977-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 2/2] drm/i915: Prefix hex numbers with 0x
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

It's hard to figure out whether the number is hex
or decimal if doesn't have the 0x to indicate hex.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 599c6d399de4..524f93768c41 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -125,8 +125,8 @@ void intel_device_info_print(const struct intel_device_info *info,
 	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.basedie_step));
 
 	drm_printf(p, "gt: %d\n", info->gt);
-	drm_printf(p, "memory-regions: %x\n", runtime->memory_regions);
-	drm_printf(p, "page-sizes: %x\n", runtime->page_sizes);
+	drm_printf(p, "memory-regions: 0x%x\n", runtime->memory_regions);
+	drm_printf(p, "page-sizes: 0x%x\n", runtime->page_sizes);
 	drm_printf(p, "platform: %s\n", intel_platform_name(info->platform));
 	drm_printf(p, "ppgtt-size: %d\n", runtime->ppgtt_size);
 	drm_printf(p, "ppgtt-type: %d\n", runtime->ppgtt_type);
@@ -540,5 +540,5 @@ void intel_driver_caps_print(const struct intel_driver_caps *caps,
 {
 	drm_printf(p, "Has logical contexts? %s\n",
 		   str_yes_no(caps->has_logical_contexts));
-	drm_printf(p, "scheduler: %x\n", caps->scheduler);
+	drm_printf(p, "scheduler: 0x%x\n", caps->scheduler);
 }
-- 
2.39.1

