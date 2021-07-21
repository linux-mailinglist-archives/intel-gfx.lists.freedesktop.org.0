Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 518EC3D162D
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 20:23:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5F136E869;
	Wed, 21 Jul 2021 18:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07DB86E869
 for <intel-gfx@lists.freedesktop.org>; Wed, 21 Jul 2021 18:23:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211551536"
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="211551536"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 11:23:01 -0700
X-IronPort-AV: E=Sophos;i="5.84,258,1620716400"; d="scan'208";a="432692416"
Received: from cjgolobi-mobl.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.252.136.69])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2021 11:23:00 -0700
Date: Wed, 21 Jul 2021 11:23:00 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <20210721182300.2wonb4hmfmtkqlsy@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-7-matthew.d.roper@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210714031540.3539704-7-matthew.d.roper@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 06/50] drm/i915/xehp: Extra media engines
 - Part 1 (engine definitions)
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
Cc: intel-gfx@lists.freedesktop.org, Tomas Winkler <tomas.winkler@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 13, 2021 at 08:14:56PM -0700, Matt Roper wrote:
>From: John Harrison <John.C.Harrison@Intel.com>
>
>Xe_HP can have a lot of extra media engines. This patch adds the basic
>definitions for them.
>
>v2:
> - Re-order intel_gt_info and intel_device_info slightly to avoid
>   unnecessary padding now that we've increased the size of
>   intel_engine_mask_t.  (Tvrtko)
>
>Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>---
> drivers/gpu/drm/i915/gt/gen8_engine_cs.c     |  7 ++-
> drivers/gpu/drm/i915/gt/intel_engine_cs.c    | 50 ++++++++++++++++++++
> drivers/gpu/drm/i915/gt/intel_engine_types.h | 14 ++++--
> drivers/gpu/drm/i915/gt/intel_gt_types.h     |  5 +-
> drivers/gpu/drm/i915/i915_reg.h              |  6 +++
> drivers/gpu/drm/i915/intel_device_info.h     |  3 +-
> 6 files changed, 74 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>index 87b06572fd2e..35edc55720f4 100644
>--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>@@ -279,7 +279,7 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
> 	if (mode & EMIT_INVALIDATE)
> 		aux_inv = rq->engine->mask & ~BIT(BCS0);
> 	if (aux_inv)
>-		cmd += 2 * hweight8(aux_inv) + 2;
>+		cmd += 2 * hweight32(aux_inv) + 2;
>
> 	cs = intel_ring_begin(rq, cmd);
> 	if (IS_ERR(cs))
>@@ -313,9 +313,8 @@ int gen12_emit_flush_xcs(struct i915_request *rq, u32 mode)
> 		struct intel_engine_cs *engine;
> 		unsigned int tmp;
>
>-		*cs++ = MI_LOAD_REGISTER_IMM(hweight8(aux_inv));
>-		for_each_engine_masked(engine, rq->engine->gt,
>-				       aux_inv, tmp) {
>+		*cs++ = MI_LOAD_REGISTER_IMM(hweight32(aux_inv));
>+		for_each_engine_masked(engine, rq->engine->gt, aux_inv, tmp) {
> 			*cs++ = i915_mmio_reg_offset(aux_inv_reg(engine));
> 			*cs++ = AUX_INV;
> 		}
>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>index 3f8013612a08..6c2cb1400c8c 100644
>--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>@@ -104,6 +104,38 @@ static const struct engine_info intel_engines[] = {
> 			{ .graphics_ver = 11, .base = GEN11_BSD4_RING_BASE }
> 		},
> 	},
>+	[VCS4] = {
>+		.hw_id = 0, /* not used in GEN12+, see MI_SEMAPHORE_SIGNAL */
>+		.class = VIDEO_DECODE_CLASS,
>+		.instance = 4,
>+		.mmio_bases = {
>+			{ .graphics_ver = 11, .base = XEHP_BSD5_RING_BASE }

another weird thing in this... we are using XEHP_BSD5_RING_BASE, but we
set .graphics_ver to 11. Was that a typo? From bspec 11754 and 3293 it
seems the register is there, but it doesn't mean it can actually be used
according to bspec 21137 and 20189. So I guess it was either a typo or a
rebase issue and should be changed to graphics_ver = 12.

thanks
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
