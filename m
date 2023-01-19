Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD526731FA
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 07:51:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D48B10E8C3;
	Thu, 19 Jan 2023 06:50:51 +0000 (UTC)
X-Original-To: Intel-GFX@lists.freedesktop.org
Delivered-To: Intel-GFX@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C17A910E8B1;
 Thu, 19 Jan 2023 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674111033; x=1705647033;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IRNpJAplXrAkE+VpJNxNY4TJS6fGcFNcbcR4PeKJmO0=;
 b=iA+QekpQ4ba7KUDirwXII1lroPCapUK7XjDiI74DYM5Ge6DEiwwD71BG
 MZtiS2DWH93DnKIjfyEVw8a6n+GTK0kqfiswKkn1I1n2704yctmS3zb1k
 ExoF5rHzyRePksaFOqSA53bjBC1qVXV1R+pOj0RupT4wvvzfz6WmF/B0Q
 L64pGNV9DXRYjaUO0sc0v8NVvAYFPMhxXu3xqEiMnp8p4y4GgVwuxPUs2
 olxiIkdFPlihDk+3jmTXxxCdObCIyWSYCTKNlNgHGQkqpATxhVUoBP5vG
 /zPsDMYputJrHaI+qp1T41LOzTiFqVVq4AQYSu/qPW4RyUTv2U8cOEjIa g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="323897865"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="323897865"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 22:50:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="723385748"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="723385748"
Received: from relo-linux-5.jf.intel.com ([10.165.21.152])
 by fmsmga008.fm.intel.com with ESMTP; 18 Jan 2023 22:50:21 -0800
From: John.C.Harrison@Intel.com
To: Intel-GFX@Lists.FreeDesktop.Org
Date: Wed, 18 Jan 2023 22:49:59 -0800
Message-Id: <20230119065000.1661857-6-John.C.Harrison@Intel.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230119065000.1661857-1-John.C.Harrison@Intel.com>
References: <20230119065000.1661857-1-John.C.Harrison@Intel.com>
MIME-Version: 1.0
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 5/6] drm/i915/guc: Look for a guilty context
 when an engine reset fails
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
Cc: DRI-Devel@Lists.FreeDesktop.Org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: John Harrison <John.C.Harrison@Intel.com>

Engine resets are supposed to never fail. But in the case when one
does (due to unknown reasons that normally come down to a missing
w/a), it is useful to get as much information out of the system as
possible. Given that the GuC intentionally dies on such a situation,
it is not possible to get a guilty context notification back. So do a
manual search instead. Given that GuC is dead, this is safe because
GuC won't be changing the engine state asynchronously.

v2: Change comment to be less alarming (Tvrtko)

Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
Acked-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
---
 .../gpu/drm/i915/gt/uc/intel_guc_submission.c   | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
index d123cbd90a919..7c5ea66218443 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
@@ -4756,11 +4756,24 @@ static void reset_fail_worker_func(struct work_struct *w)
 	guc->submission_state.reset_fail_mask = 0;
 	spin_unlock_irqrestore(&guc->submission_state.lock, flags);
 
-	if (likely(reset_fail_mask))
+	if (likely(reset_fail_mask)) {
+		struct intel_engine_cs *engine;
+		enum intel_engine_id id;
+
+		/*
+		 * GuC is toast at this point - it dead loops after sending the failed
+		 * reset notification. So need to manually determine the guilty context.
+		 * Note that it should be reliable to do this here because the GuC is
+		 * toast and will not be scheduling behind the KMD's back.
+		 */
+		for_each_engine_masked(engine, gt, reset_fail_mask, id)
+			intel_guc_find_hung_context(engine);
+
 		intel_gt_handle_error(gt, reset_fail_mask,
 				      I915_ERROR_CAPTURE,
-				      "GuC failed to reset engine mask=0x%x\n",
+				      "GuC failed to reset engine mask=0x%x",
 				      reset_fail_mask);
+	}
 }
 
 int intel_guc_engine_failure_process_msg(struct intel_guc *guc,
-- 
2.39.0

