Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E33FD4FFF2F
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 21:27:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CD6310E4B4;
	Wed, 13 Apr 2022 19:27:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E818A10E424
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Apr 2022 19:27:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649878057; x=1681414057;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=8vzaujwirPneheKR24/JSRyqbbJHHGTfDZQgkSGiIuY=;
 b=mL3SAtDTVjRpIOFEEOW9/k35hcoUF+DxYBnrzX6xXu+LIId70KOQmDT1
 HnbbW/x7KhMi5KkzbOFy7T6TtYSMowaqHwwwXBeTMMXi96lskblCMJHOg
 NyRHBUG9B3I+2XZoUXMSH8RizG8AIcEj37a9Q0Q1fLMMLo8C3fLYiIx3s
 v1Nb4CrXOVYs9AL0a+EzUnvw2yE7iYpztGVx7gCjf6mlYJfk54sn8XHKh
 Oz0gJbiv1apluthswL4/ynecizKmGAql8pG+kB/S6XP5yEaoe4I9WV4MH
 atOh29sAGQ1FU3LtoQXj1HEL8UGLBzD6TC41S63ivB+/kpFOpkpYr/iX2 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10316"; a="250045085"
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="250045085"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:37 -0700
X-IronPort-AV: E=Sophos;i="5.90,257,1643702400"; d="scan'208";a="645290488"
Received: from unerlige-desk.jf.intel.com ([10.165.21.210])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 12:27:37 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 daniele.ceraolospurio@intel.com, john.c.harrison@intel.com,
 vinay.belgaumkar@intel.com
Date: Wed, 13 Apr 2022 12:27:26 -0700
Message-Id: <20220413192730.3608660-7-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
References: <20220413192730.3608660-1-umesh.nerlige.ramappa@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 06/10] drm/i915: Add Wa_22011802037 force cs halt
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

From: Tilak Tangudu <tilak.tangudu@intel.com>

Prior to doing a reset, SW must ensure command streamer is stopped,
as a workaround, to eliminate a race condition in GPM flow.
Setting both the ring stop and prefetch disable bits, will cause the
command streamer to halt.

v2: 1. Removed duplicate code and added only prefetch disable -Chris Wilson

v3: 1. Applied wa for all gen12+ -Lahtinen Joonas/Vivi Rodrigo

v4: 1. Added description in comment
    2. Added WA prior to read barrier-Chris Wilson

v5: 1. Modified to disable prefetch and wait for idle ack -Chris Wilson

Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_engine_cs.c   | 9 +++++++++
 drivers/gpu/drm/i915/gt/intel_engine_regs.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
index 98b61ff13c95..14c6ddbbfde8 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
@@ -1280,6 +1280,15 @@ static int __intel_engine_stop_cs(struct intel_engine_cs *engine,
 	int err;
 
 	intel_uncore_write_fw(uncore, mode, _MASKED_BIT_ENABLE(STOP_RING));
+
+	/*
+	 * Wa_22011802037 : gen12, Prior to doing a reset, ensure CS is
+	 * stopped, set ring stop bit and prefetch disable bit to halt CS
+	 */
+	if (GRAPHICS_VER(engine->i915) == 12)
+		intel_uncore_write_fw(uncore, RING_MODE_GEN7(engine->mmio_base),
+				      _MASKED_BIT_ENABLE(GEN12_GFX_PREFETCH_DISABLE));
+
 	err = __intel_wait_for_register_fw(engine->uncore, mode,
 					   MODE_IDLE, MODE_IDLE,
 					   fast_timeout_us,
diff --git a/drivers/gpu/drm/i915/gt/intel_engine_regs.h b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
index 0bf8b45c9319..594a629cb28f 100644
--- a/drivers/gpu/drm/i915/gt/intel_engine_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_engine_regs.h
@@ -181,6 +181,7 @@
 #define   GFX_SURFACE_FAULT_ENABLE		(1 << 12)
 #define   GFX_REPLAY_MODE			(1 << 11)
 #define   GFX_PSMI_GRANULARITY			(1 << 10)
+#define   GEN12_GFX_PREFETCH_DISABLE		REG_BIT(10)
 #define   GFX_PPGTT_ENABLE			(1 << 9)
 #define   GEN8_GFX_PPGTT_48B			(1 << 7)
 #define   GFX_FORWARD_VBLANK_MASK		(3 << 5)
-- 
2.35.1

