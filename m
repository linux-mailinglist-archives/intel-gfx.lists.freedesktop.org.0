Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 283D63D05D5
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Jul 2021 01:49:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25C466E7D0;
	Tue, 20 Jul 2021 23:49:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FA546E7D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Jul 2021 23:49:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10051"; a="275165171"
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="275165171"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 16:49:11 -0700
X-IronPort-AV: E=Sophos;i="5.84,256,1620716400"; d="scan'208";a="511170628"
Received: from mhammerv-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.212.226.237])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2021 16:49:11 -0700
Date: Tue, 20 Jul 2021 16:49:10 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: John Harrison <john.c.harrison@intel.com>
Message-ID: <20210720234910.3qsg5xenzmucxwli@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20210714031540.3539704-1-matthew.d.roper@intel.com>
 <20210714031540.3539704-7-matthew.d.roper@intel.com>
 <20210720230317.73wpytbvwimhedob@ldmartin-desk2>
 <08945694-11e1-4abb-fc3f-4aab4efc9bd1@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <08945694-11e1-4abb-fc3f-4aab4efc9bd1@intel.com>
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jul 20, 2021 at 04:40:52PM -0700, John Harrison wrote:
>On 7/20/2021 16:03, Lucas De Marchi wrote:
>>On Tue, Jul 13, 2021 at 08:14:56PM -0700, Matt Roper wrote:
>>>From: John Harrison <John.C.Harrison@Intel.com>
>>>
>>>Xe_HP can have a lot of extra media engines. This patch adds the basic
>>>definitions for them.
>>>
>>>v2:
>>>- Re-order intel_gt_info and intel_device_info slightly to avoid
>>>=A0 unnecessary padding now that we've increased the size of
>>>=A0 intel_engine_mask_t.=A0 (Tvrtko)
>>>
>>>Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>Signed-off-by: John Harrison <John.C.Harrison@Intel.com>
>>>Signed-off-by: Tomas Winkler <tomas.winkler@intel.com>
>>>Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
>>>---
>>>drivers/gpu/drm/i915/gt/gen8_engine_cs.c=A0=A0=A0=A0 |=A0 7 ++-
>>>drivers/gpu/drm/i915/gt/intel_engine_cs.c=A0=A0=A0 | 50 ++++++++++++++++=
++++
>>>drivers/gpu/drm/i915/gt/intel_engine_types.h | 14 ++++--
>>>drivers/gpu/drm/i915/gt/intel_gt_types.h=A0=A0=A0=A0 |=A0 5 +-
>>>drivers/gpu/drm/i915/i915_reg.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=
=A0 6 +++
>>>drivers/gpu/drm/i915/intel_device_info.h=A0=A0=A0=A0 |=A0 3 +-
>>>6 files changed, 74 insertions(+), 11 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c =

>>>b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>index 87b06572fd2e..35edc55720f4 100644
>>>--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
>>>@@ -279,7 +279,7 @@ int gen12_emit_flush_xcs(struct i915_request =

>>>*rq, u32 mode)
>>>=A0=A0=A0=A0if (mode & EMIT_INVALIDATE)
>>>=A0=A0=A0=A0=A0=A0=A0 aux_inv =3D rq->engine->mask & ~BIT(BCS0);
>>>=A0=A0=A0=A0if (aux_inv)
>>>-=A0=A0=A0=A0=A0=A0=A0 cmd +=3D 2 * hweight8(aux_inv) + 2;
>>>+=A0=A0=A0=A0=A0=A0=A0 cmd +=3D 2 * hweight32(aux_inv) + 2;
>>>
>>>=A0=A0=A0=A0cs =3D intel_ring_begin(rq, cmd);
>>>=A0=A0=A0=A0if (IS_ERR(cs))
>>>@@ -313,9 +313,8 @@ int gen12_emit_flush_xcs(struct i915_request =

>>>*rq, u32 mode)
>>>=A0=A0=A0=A0=A0=A0=A0 struct intel_engine_cs *engine;
>>>=A0=A0=A0=A0=A0=A0=A0 unsigned int tmp;
>>>
>>>-=A0=A0=A0=A0=A0=A0=A0 *cs++ =3D MI_LOAD_REGISTER_IMM(hweight8(aux_inv));
>>>-=A0=A0=A0=A0=A0=A0=A0 for_each_engine_masked(engine, rq->engine->gt,
>>>-=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 aux_=
inv, tmp) {
>>>+=A0=A0=A0=A0=A0=A0=A0 *cs++ =3D MI_LOAD_REGISTER_IMM(hweight32(aux_inv)=
);
>>>+=A0=A0=A0=A0=A0=A0=A0 for_each_engine_masked(engine, rq->engine->gt, au=
x_inv, tmp) {
>>>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *cs++ =3D i915_mmio_reg_offset(aux_inv=
_reg(engine));
>>>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 *cs++ =3D AUX_INV;
>>>=A0=A0=A0=A0=A0=A0=A0 }
>>>diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c =

>>>b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>index 3f8013612a08..6c2cb1400c8c 100644
>>>--- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>+++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
>>>@@ -104,6 +104,38 @@ static const struct engine_info intel_engines[] =3D=
 {
>>>=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 { .graphics_ver =3D 11, .base =3D GEN1=
1_BSD4_RING_BASE }
>>>=A0=A0=A0=A0=A0=A0=A0 },
>>>=A0=A0=A0=A0},
>>>+=A0=A0=A0 [VCS4] =3D {
>>>+=A0=A0=A0=A0=A0=A0=A0 .hw_id =3D 0, /* not used in GEN12+, see MI_SEMAP=
HORE_SIGNAL */
>>
>>I may be misreading this, but hw_id is only used by
>>RING_FAULT_REG() which is not actually used since
>>gen8... they are using GEN8_RING_FAULT_REG().
>>
>>I'm having a hard time to understand what this comment "see
>>MI_SEMAPHORE_SIGNAL" actually means.
>I vaguely recall something about being told the hw_id field was used =

>in semaphore messages from one engine to another. I.e. if engine X is =

>blocked on a semaphore that is signalled by engine Y then the MI_ =

>instruction executed on Y to do the signal needs to specify X as the =

>target. Whereas, on newer hardware this requirement was no longer =

>applicable because MI_SEMAPHORE_SIGNAL uses memory mailboxes instead =

>of directed engine messages. Maybe that information was wrong or maybe =

>that code has since been removed or reworked?
>
>
>>
>>
>>I'd just remove all these `.hw_id =3D 0, ...` together with the comment
>>since it will be zero-initiliazed.
>Yeah, the reason for explicitly setting it to zero was to avoid =

>confusion over whether it had just been forgotten or not. I.e. to say =

>'we know semaphores used to use this field but honest guv, we didn't =

>forget to add it, it's just that newer hardware doesn't need it'.


makes sense... I just sent a patch series and Cc'ed you all
(https://patchwork.freedesktop.org/series/92797/) actually removing
hw_id. I have that feeling I'm missing something, but we can try to
simplify.

thanks
Lucas De Marchi
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
