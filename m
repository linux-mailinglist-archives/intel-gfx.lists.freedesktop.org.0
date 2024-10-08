Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DE2A995967
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Oct 2024 23:43:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A14010E5F5;
	Tue,  8 Oct 2024 21:43:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8rRvoY6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D22C410E5F4;
 Tue,  8 Oct 2024 21:43:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728423835; x=1759959835;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=C/0Es+EJjdQPiFDgPbjCGrCTuyTxlptBHi29WFPc/0A=;
 b=O8rRvoY62839Dr7TgkE2RRfEEO7/A7DGeftn3TD2JuOlgcqdi2e1bz/5
 mDBZJ+CGyaBhQkRqAJdDoWYkCFHHa3oesgio6hLBGpFyQ+5nLgVnhuZhC
 NA/J3GmmiAiGrXscmb+oWG19yStwN28MofrxOo92MKCbeiKuFbes6nYJI
 SdY4jlQAxd9C2GguGYN+qOntI/kVGqomTuFMRoGBHmLX7YlHpaJoWPPj0
 p5nL7maqB/pxg7ZtVZ1K8WMmlSfDBP8aiUBqBOX/LxWNSQzbFMA14FPCM
 W2VQ8+B2zbOXM4PD6mUl0ed7Wz1DxgoHszJOlwn9mxxGE3UAU9sic03QX A==;
X-CSE-ConnectionGUID: hQaZ5q3USgettrIQVanUkA==
X-CSE-MsgGUID: QVkMzn1+Rj2P8QLv0sG6tA==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27831633"
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="27831633"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2024 14:43:55 -0700
X-CSE-ConnectionGUID: IhQq4BVXQ3+deRj40hgMfA==
X-CSE-MsgGUID: suy+M8ncRHWbNSZLc4Zu7w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,188,1725346800"; d="scan'208";a="76113116"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 08 Oct 2024 14:43:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Oct 2024 00:43:52 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 1/4] drm/i915/gt: Nuke gen2_irq_{enable,disable}()
Date: Wed,  9 Oct 2024 00:43:46 +0300
Message-ID: <20241008214349.23331-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
References: <20241008214349.23331-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

We've determined that accessing the (supposedly) 16bit
interrupt registers on gen2 as 32bit works just fine.
We already dropped the special case from the main interrupt
code, do so also for the gt interrupt stuff.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/gen2_engine_cs.c        | 17 -----------------
 drivers/gpu/drm/i915/gt/gen2_engine_cs.h        |  2 --
 drivers/gpu/drm/i915/gt/intel_ring_submission.c |  5 +----
 3 files changed, 1 insertion(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
index 8fe0499308ff..54077cab8e16 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.c
@@ -290,23 +290,6 @@ int gen4_emit_bb_start(struct i915_request *rq,
 	return 0;
 }
 
-void gen2_irq_enable(struct intel_engine_cs *engine)
-{
-	struct drm_i915_private *i915 = engine->i915;
-
-	i915->irq_mask &= ~engine->irq_enable_mask;
-	intel_uncore_write16(&i915->uncore, GEN2_IMR, i915->irq_mask);
-	ENGINE_POSTING_READ16(engine, RING_IMR);
-}
-
-void gen2_irq_disable(struct intel_engine_cs *engine)
-{
-	struct drm_i915_private *i915 = engine->i915;
-
-	i915->irq_mask |= engine->irq_enable_mask;
-	intel_uncore_write16(&i915->uncore, GEN2_IMR, i915->irq_mask);
-}
-
 void gen3_irq_enable(struct intel_engine_cs *engine)
 {
 	engine->i915->irq_mask &= ~engine->irq_enable_mask;
diff --git a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h b/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
index a5cd64a65c9e..2f707620b3d4 100644
--- a/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
+++ b/drivers/gpu/drm/i915/gt/gen2_engine_cs.h
@@ -28,8 +28,6 @@ int gen4_emit_bb_start(struct i915_request *rq,
 		       u64 offset, u32 length,
 		       unsigned int dispatch_flags);
 
-void gen2_irq_enable(struct intel_engine_cs *engine);
-void gen2_irq_disable(struct intel_engine_cs *engine);
 void gen3_irq_enable(struct intel_engine_cs *engine);
 void gen3_irq_disable(struct intel_engine_cs *engine);
 void gen5_irq_enable(struct intel_engine_cs *engine);
diff --git a/drivers/gpu/drm/i915/gt/intel_ring_submission.c b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
index 72277bc8322e..694cb79d5452 100644
--- a/drivers/gpu/drm/i915/gt/intel_ring_submission.c
+++ b/drivers/gpu/drm/i915/gt/intel_ring_submission.c
@@ -1090,12 +1090,9 @@ static void setup_irq(struct intel_engine_cs *engine)
 	} else if (GRAPHICS_VER(i915) >= 5) {
 		engine->irq_enable = gen5_irq_enable;
 		engine->irq_disable = gen5_irq_disable;
-	} else if (GRAPHICS_VER(i915) >= 3) {
+	} else {
 		engine->irq_enable = gen3_irq_enable;
 		engine->irq_disable = gen3_irq_disable;
-	} else {
-		engine->irq_enable = gen2_irq_enable;
-		engine->irq_disable = gen2_irq_disable;
 	}
 }
 
-- 
2.45.2

