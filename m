Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00FF2325A89
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Feb 2021 01:06:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FDA06E0DF;
	Fri, 26 Feb 2021 00:06:07 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A133F6E0DF
 for <Intel-GFX@lists.freedesktop.org>; Fri, 26 Feb 2021 00:06:05 +0000 (UTC)
IronPort-SDR: pVIQQEZJa2eARtsinzt+L+2YYLMw41s7ddBt3w2H1Zn1ByMOJoVz0z3oRUJT64YR/1Ee30WW8v
 /HjxJz6jPZ9g==
X-IronPort-AV: E=McAfee;i="6000,8403,9906"; a="172855039"
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="172855039"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2021 16:06:04 -0800
IronPort-SDR: Y51cisAsj+WLQuA5GGZl6i02vP1lBWkWNBPZy+OY2gxOl87cmdGk9Fsy10lcR8NvXFNF1CG2uY
 fmyxQ7UjCTIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,207,1610438400"; d="scan'208";a="584362830"
Received: from relo-linux-5.jf.intel.com ([10.165.21.134])
 by orsmga005.jf.intel.com with ESMTP; 25 Feb 2021 16:06:02 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Thu, 25 Feb 2021 16:06:02 -0800
Message-Id: <20210226000602.2317794-1-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Subject: [Intel-gfx] [PATCH] drm/i915/uc: Use platform specific defaults for
 GuC/HuC enabling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

The meaning of 'default' for the enable_guc module parameter has been
updated to accurately reflect what is supported on current platforms.
So start using the defaults instead of forcing everything off.
Although, note that right now, the default is for everything to be off
anyway. So this is not a change for current platforms.

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
---
 drivers/gpu/drm/i915/i915_params.c | 2 +-
 drivers/gpu/drm/i915/i915_params.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
index 6939634e56ed..ec1561f5b051 100644
--- a/drivers/gpu/drm/i915/i915_params.c
+++ b/drivers/gpu/drm/i915/i915_params.c
@@ -160,7 +160,7 @@ i915_param_named_unsafe(edp_vswing, int, 0400,
 i915_param_named_unsafe(enable_guc, int, 0400,
 	"Enable GuC load for GuC submission and/or HuC load. "
 	"Required functionality can be selected using bitmask values. "
-	"(-1=auto, 0=disable [default], 1=GuC submission, 2=HuC load)");
+	"(-1=auto [default], 0=disable, 1=GuC submission, 2=HuC load)");
 
 i915_param_named(guc_log_level, int, 0400,
 	"GuC firmware logging level. Requires GuC to be loaded. "
diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
index 48f47e44e848..8c485595dca2 100644
--- a/drivers/gpu/drm/i915/i915_params.h
+++ b/drivers/gpu/drm/i915/i915_params.h
@@ -59,7 +59,7 @@ struct drm_printer;
 	param(int, disable_power_well, -1, 0400) \
 	param(int, enable_ips, 1, 0600) \
 	param(int, invert_brightness, 0, 0600) \
-	param(int, enable_guc, 0, 0400) \
+	param(int, enable_guc, -1, 0400) \
 	param(int, guc_log_level, -1, 0400) \
 	param(char *, guc_firmware_path, NULL, 0400) \
 	param(char *, huc_firmware_path, NULL, 0400) \
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
