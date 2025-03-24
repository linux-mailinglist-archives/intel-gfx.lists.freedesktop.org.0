Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EC7A6DB7E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 14:30:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 729D610E3F6;
	Mon, 24 Mar 2025 13:30:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ltvVPOEd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6F1410E3F4;
 Mon, 24 Mar 2025 13:30:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742823028; x=1774359028;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wIM7Ap2NLCw1fDjMv7PtrN70hMcsqq8VoScA0EKr67o=;
 b=ltvVPOEdifk93A9p2aNtqZGfyoteVJBtZUuCQ4Yz/EBpzYwFVoiOIKB/
 F4wrfQvDHBJd1pZnjHo/kkBhGPegBWGpwpRPRZrIn7OrbT0u8Kug6NMYw
 7Wlfv3SNlJnU75yTMGYPqcXAvkj83m4It3XtqwyJIjIRecRTVzeti1PAf
 8PVrRLPL2InYUcrXSncaBURFT7eOyfWmbAbV7a0JF2d54LfPJk9aNiJiR
 ydsD5gbscS+tsmvEtCdGanPV85GKKcTzh4SP4pJdoueqIM8FseTbJ7COT
 aE+hyC0rmM3APgQrNRAeqzt9IT27HRGvjXv5fE/NIiXVHvSaYOUe5jT43 A==;
X-CSE-ConnectionGUID: XxjeSVQDRdKZ3FqFAy0A1A==
X-CSE-MsgGUID: fi60PrFaRUmeZylQ8Ox8kg==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="47682968"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="47682968"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:30:27 -0700
X-CSE-ConnectionGUID: OzoZbyt6SrqiW2FAd4BoyQ==
X-CSE-MsgGUID: 92HnHGpXTmGPPN2r32lqgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124061692"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.252])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 06:30:24 -0700
From: Andi Shyti <andi.shyti@linux.intel.com>
To: intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Simona Vetter <simona.vetter@ffwll.ch>,
 Arshad Mehmood <arshad.mehmood@intel.com>,
 Michal Mrozek <michal.mrozek@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Andi Shyti <andi.shyti@kernel.org>
Subject: [PATCH v4 01/15] drm/i915/gt: Avoid using masked workaround for
 CCS_MODE setting
Date: Mon, 24 Mar 2025 14:29:37 +0100
Message-ID: <20250324132952.1075209-2-andi.shyti@linux.intel.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250324132952.1075209-1-andi.shyti@linux.intel.com>
References: <20250324132952.1075209-1-andi.shyti@linux.intel.com>
MIME-Version: 1.0
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

When setting the CCS mode, we mistakenly used wa_masked_en() to
apply the workaround, which reads from the register and masks the
existing value with the new one.

Our intention was to write the value directly, without masking
it.

So far, this hasn't caused issues because we've been using a
register value that only enables a single CCS engine, typically
with an ID of '0'.

However, in upcoming patches, we will be utilizing multiple
engines, and it's crucial that we write the new value directly
without any masking.

Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 116683ebe074..b3dd8a077660 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2760,7 +2760,7 @@ static void ccs_engine_wa_mode(struct intel_engine_cs *engine, struct i915_wa_li
 	 * assign all slices to a single CCS. We will call it CCS mode 1
 	 */
 	mode = intel_gt_apply_ccs_mode(gt);
-	wa_masked_en(wal, XEHP_CCS_MODE, mode);
+	wa_add(wal, XEHP_CCS_MODE, 0, mode, mode, false);
 }
 
 /*
-- 
2.47.2

