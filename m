Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3311375ACE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 May 2021 20:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F616ED93;
	Thu,  6 May 2021 18:57:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB4976ECE2;
 Thu,  6 May 2021 18:57:13 +0000 (UTC)
IronPort-SDR: J5mUGjaX9bN3Ifv2x8L78X1d8Mo8B9dI/hgZpnWL3EZItFQ0lRusvCU+t5YpUchOSqj57zC8nQ
 S9n36+f6RVqA==
X-IronPort-AV: E=McAfee;i="6200,9189,9976"; a="196531018"
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="196531018"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:12 -0700
IronPort-SDR: LEXBa+OEB7snDCDkMeSoH3/IDq+y3gn2ae5dvy/pT4B98iYBFZQZTjJz5s06lUVC4ReP6FWLz1
 ni/8lgI2tBXg==
X-IronPort-AV: E=Sophos;i="5.82,278,1613462400"; d="scan'208";a="469583516"
Received: from dhiatt-server.jf.intel.com ([10.54.81.3])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2021 11:57:11 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: <intel-gfx@lists.freedesktop.org>,
	<dri-devel@lists.freedesktop.org>
Date: Thu,  6 May 2021 12:14:05 -0700
Message-Id: <20210506191451.77768-52-matthew.brost@intel.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20210506191451.77768-1-matthew.brost@intel.com>
References: <20210506191451.77768-1-matthew.brost@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [RFC PATCH 51/97] drm/i915: Disable preempt busywait
 when using GuC scheduling
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
Cc: jason.ekstrand@intel.com, daniel.vetter@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Disable preempt busywait when using GuC scheduling. This isn't need as
the GuC control preemption when scheduling.

Cc: John Harrison <john.c.harrison@intel.com>
Signed-off-by: Matthew Brost <matthew.brost@intel.com>
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index 732c2ed1d933..47500ee955d4 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -506,7 +506,8 @@ gen8_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
 	*cs++ = MI_USER_INTERRUPT;
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
-	if (intel_engine_has_semaphores(rq->engine))
+	if (intel_engine_has_semaphores(rq->engine) &&
+	    !intel_uc_uses_guc_submission(&rq->engine->gt->uc))
 		cs = emit_preempt_busywait(rq, cs);
 
 	rq->tail = intel_ring_offset(rq, cs);
@@ -598,7 +599,8 @@ gen12_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
 	*cs++ = MI_USER_INTERRUPT;
 
 	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
-	if (intel_engine_has_semaphores(rq->engine))
+	if (intel_engine_has_semaphores(rq->engine) &&
+	    !intel_uc_uses_guc_submission(&rq->engine->gt->uc))
 		cs = gen12_emit_preempt_busywait(rq, cs);
 
 	rq->tail = intel_ring_offset(rq, cs);
-- 
2.28.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
