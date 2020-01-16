Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5481F13FAC8
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2020 21:43:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AAC7F6E22B;
	Thu, 16 Jan 2020 20:43:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 674C86E22B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2020 20:43:07 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 Jan 2020 12:43:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,327,1574150400"; d="scan'208";a="214228813"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga007.jf.intel.com with ESMTP; 16 Jan 2020 12:43:06 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200115013143.34961-1-daniele.ceraolospurio@intel.com>
 <20200115013143.34961-3-daniele.ceraolospurio@intel.com>
 <op.0eh306txxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <9c1f6b9d-9885-2c3d-b113-8debaeed9e0e@intel.com>
Date: Thu, 16 Jan 2020 12:42:36 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0eh306txxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/guc: Kill USES_GUC_SUBMISSION
 macro
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-15"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 1/16/20 11:49 AM, Michal Wajdeczko wrote:
> On Wed, 15 Jan 2020 02:31:38 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> use intel_uc_uses_guc_submission() directly instead, to be consistent in
>> the way we check what we want to do with the GuC.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
> =

> Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
> =

> with one small nit below
> =

>> ---
>> =A0drivers/gpu/drm/i915/gem/i915_gem_context.c=A0 |=A0 2 +-
>> =A0drivers/gpu/drm/i915/gt/selftest_hangcheck.c |=A0 2 +-
>> =A0drivers/gpu/drm/i915/gt/selftest_lrc.c=A0=A0=A0=A0=A0=A0 | 10 +++++--=
---
>> =A0drivers/gpu/drm/i915/gt/selftest_reset.c=A0=A0=A0=A0 |=A0 2 +-
>> =A0drivers/gpu/drm/i915/gvt/scheduler.c=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 3 +=
+-
>> =A0drivers/gpu/drm/i915/i915_debugfs.c=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 6=
 +++---
>> =A0drivers/gpu/drm/i915/i915_drv.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0 3 ---
>> =A0drivers/gpu/drm/i915/intel_gvt.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =
|=A0 2 +-
>> =A08 files changed, 14 insertions(+), 16 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c =

>> b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> index a2e57e62af30..415e2d5e934b 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
>> @@ -1454,7 +1454,7 @@ set_engines__load_balance(struct =

>> i915_user_extension __user *base, void *data)
>> =A0=A0=A0=A0 if (!HAS_EXECLISTS(set->ctx->i915))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(set->ctx->i915))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&set->ctx->vm->gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV; /* not implement yet */
>> =A0=A0=A0=A0if (get_user(idx, &ext->engine_index))
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c =

>> b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
>> index 3e5e6c86e843..c3514ec7b8db 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
>> @@ -1640,7 +1640,7 @@ static int igt_reset_engines_atomic(void *arg)
>> =A0=A0=A0=A0 if (!intel_has_reset_engine(gt))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(gt->i915))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0igt_global_reset_lock(gt);
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c =

>> b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> index 15cda024e3e4..b1c677b0d5ad 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
>> @@ -1555,7 +1555,7 @@ static int live_suppress_self_preempt(void *arg)
>> =A0=A0=A0=A0 if (!HAS_LOGICAL_RING_PREEMPTION(gt->i915))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(gt->i915))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0; /* presume black blox */
>> =A0=A0=A0=A0if (intel_vgpu_active(gt->i915))
>> @@ -2781,7 +2781,7 @@ static int live_virtual_engine(void *arg)
>> =A0=A0=A0=A0 unsigned int class, inst;
>> =A0=A0=A0=A0 int err;
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(gt->i915))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0for_each_engine(engine, gt, id) {
>> @@ -2914,7 +2914,7 @@ static int live_virtual_mask(void *arg)
>> =A0=A0=A0=A0 unsigned int class, inst;
>> =A0=A0=A0=A0 int err;
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(gt->i915))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0for (class =3D 0; class <=3D MAX_ENGINE_CLASS; class++) {
>> @@ -3052,7 +3052,7 @@ static int live_virtual_preserved(void *arg)
>> =A0=A0=A0=A0=A0 * are preserved.
>> =A0=A0=A0=A0=A0 */
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(gt->i915))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0/* As we use CS_GPR we cannot run before they existed on all =

>> engines. */
>> @@ -3276,7 +3276,7 @@ static int live_virtual_bond(void *arg)
>> =A0=A0=A0=A0 unsigned int class, inst;
>> =A0=A0=A0=A0 int err;
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(gt->i915))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0for (class =3D 0; class <=3D MAX_ENGINE_CLASS; class++) {
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c =

>> b/drivers/gpu/drm/i915/gt/selftest_reset.c
>> index 6ad6aca315f6..35406ecdf0b2 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_reset.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
>> @@ -115,7 +115,7 @@ static int igt_atomic_engine_reset(void *arg)
>> =A0=A0=A0=A0 if (!intel_has_reset_engine(gt))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(gt->i915))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&gt->uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0intel_gt_pm_get(gt);
>> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c =

>> b/drivers/gpu/drm/i915/gvt/scheduler.c
>> index 685d1e04a5ff..5fe00ee6bd1b 100644
>> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
>> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
>> @@ -1246,7 +1246,8 @@ int intel_vgpu_setup_submission(struct =

>> intel_vgpu *vgpu)
>> =A0=A0=A0=A0=A0=A0=A0=A0 ce->vm =3D i915_vm_get(&ppgtt->vm);
>> =A0=A0=A0=A0=A0=A0=A0=A0 intel_context_set_single_submission(ce);
>> -=A0=A0=A0=A0=A0=A0=A0 if (!USES_GUC_SUBMISSION(i915)) { /* Max ring buf=
fer size */
>> +=A0=A0=A0=A0=A0=A0=A0 /* Max ring buffer size */
>> +=A0=A0=A0=A0=A0=A0=A0 if (!intel_uc_uses_guc_submission(&engine->gt->uc=
)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const unsigned int ring_size =3D 51=
2 * SZ_4K;
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ce->ring =3D __intel_context_ring_size=
(ring_size);
>> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c =

>> b/drivers/gpu/drm/i915/i915_debugfs.c
>> index c2f480defc71..823a033ffcd0 100644
>> --- a/drivers/gpu/drm/i915/i915_debugfs.c
>> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
>> @@ -1792,11 +1792,11 @@ static int i915_guc_info(struct seq_file *m, =

>> void *data)
>> =A0static int i915_guc_stage_pool(struct seq_file *m, void *data)
>> =A0{
>> =A0=A0=A0=A0 struct drm_i915_private *dev_priv =3D node_to_i915(m->priva=
te);
>> -=A0=A0=A0 const struct intel_guc *guc =3D &dev_priv->gt.uc.guc;
>> -=A0=A0=A0 struct guc_stage_desc *desc =3D guc->stage_desc_pool_vaddr;
>> +=A0=A0=A0 struct intel_uc *uc =3D &dev_priv->gt.uc;
>> +=A0=A0=A0 struct guc_stage_desc *desc =3D uc->guc.stage_desc_pool_vaddr;
>> =A0=A0=A0=A0 int index;
>> -=A0=A0=A0 if (!USES_GUC_SUBMISSION(dev_priv))
>> +=A0=A0=A0 if (!intel_uc_uses_guc_submission(uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> =A0=A0=A0=A0for (index =3D 0; index < GUC_MAX_STAGE_DESCRIPTORS; index++=
, desc++) {
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h =

>> b/drivers/gpu/drm/i915/i915_drv.h
>> index ad0019cd2604..24d581c63667 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -1718,9 +1718,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>> #define HAS_GT_UC(dev_priv)=A0=A0=A0 (INTEL_INFO(dev_priv)->has_gt_uc)
>> -/* Having GuC is not the same as using GuC */
>> -#define USES_GUC_SUBMISSION(dev_priv)    =

>> intel_uc_uses_guc_submission(&(dev_priv)->gt.uc)
>> -
>> =A0#define HAS_POOLED_EU(dev_priv)=A0=A0=A0 (INTEL_INFO(dev_priv)->has_p=
ooled_eu)
>> #define HAS_GLOBAL_MOCS_REGISTERS(dev_priv)    =

>> (INTEL_INFO(dev_priv)->has_global_mocs)
>> diff --git a/drivers/gpu/drm/i915/intel_gvt.c =

>> b/drivers/gpu/drm/i915/intel_gvt.c
>> index 2b6c016387c2..481c6de9f4d6 100644
>> --- a/drivers/gpu/drm/i915/intel_gvt.c
>> +++ b/drivers/gpu/drm/i915/intel_gvt.c
>> @@ -103,7 +103,7 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0 }
>> -=A0=A0=A0 if (USES_GUC_SUBMISSION(dev_priv)) {
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(&dev_priv->gt.uc)) {
> =

> nit: that old macro was helpful exactly in cases where only dev_priv
> is known and component might have no idea where to find uc
> =

> maybe we should have helper like:
> =

>  =A0=A0=A0=A0#define to_intel_uc(i915) (&(i915)->gt.uc)
> =

> (but likely Jani will complain)
> =


IMO the problem here is that we shouldn't really be going down to the uc =

from the dev_priv level, as intel_uc is now a subfeature of the GT. =

We've already removed a lot of the existing checks at the dev_priv level =

and this series gets rid of a few more; I guess once they're reduced =

enough in number we can consider replacing them with a check at the GT =

level.

Daniele

>> =A0=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("i915 GVT-g loading failed due to Gra=
phics =

>> virtualization is not yet supported with GuC submission\n");
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -EIO;
>> =A0=A0=A0=A0 }
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
