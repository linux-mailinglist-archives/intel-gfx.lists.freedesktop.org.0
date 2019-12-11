Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C914111BAB9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 18:55:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7146EBA2;
	Wed, 11 Dec 2019 17:54:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Wed, 11 Dec 2019 17:54:58 UTC
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C9B89EBD
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 17:54:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 09:47:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; d="scan'208";a="388015021"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2019 09:47:50 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
 <20191210210919.30846-3-daniele.ceraolospurio@intel.com>
 <op.0cmy2cskxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <26eeb171-3d64-fb90-1750-3064a8676508@intel.com>
Date: Wed, 11 Dec 2019 09:47:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.0cmy2cskxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915/guc/ct: stop expecting
 multiple CT channels
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



On 12/11/19 5:43 AM, Michal Wajdeczko wrote:
> On Tue, 10 Dec 2019 22:09:16 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> The GuC supports having multiple CT buffer pairs and we designed our
>> implementation with that in mind. However, the different channels are not
>> processed in parallel within the GuC, so there is very little advantage
>> in having multiple channels (independent locks?), compared to the
>> drawbacks (one channel can starve the other if messages keep being
>> submitted to it). Given this, it is unlikely we'll ever add a second
>> channel and therefore we can simplify our code by removing the
>> flexibility.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> ---
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 276 +++++++++-------------
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |=A0 39 +--
>> =A02 files changed, 118 insertions(+), 197 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index f74ba4750a94..96ce6d74f0b2 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -37,13 +37,10 @@ static void ct_incoming_request_worker_func(struct =

>> work_struct *w);
>> =A0 */
>> =A0void intel_guc_ct_init_early(struct intel_guc_ct *ct)
>> =A0{
>> -=A0=A0=A0 /* we're using static channel owners */
>> -=A0=A0=A0 ct->host_channel.owner =3D CTB_OWNER_HOST;
>> -
>> -=A0=A0=A0 spin_lock_init(&ct->lock);
>> -=A0=A0=A0 INIT_LIST_HEAD(&ct->pending_requests);
>> -=A0=A0=A0 INIT_LIST_HEAD(&ct->incoming_requests);
>> -=A0=A0=A0 INIT_WORK(&ct->worker, ct_incoming_request_worker_func);
>> +=A0=A0=A0 spin_lock_init(&ct->requests.lock);
>> +=A0=A0=A0 INIT_LIST_HEAD(&ct->requests.pending);
>> +=A0=A0=A0 INIT_LIST_HEAD(&ct->requests.incoming);
>> +=A0=A0=A0 INIT_WORK(&ct->requests.worker, ct_incoming_request_worker_fu=
nc);
>> =A0}
>> static inline struct intel_guc *ct_to_guc(struct intel_guc_ct *ct)
>> @@ -64,14 +61,14 @@ static inline const char =

>> *guc_ct_buffer_type_to_str(u32 type)
>> =A0}
>> static void guc_ct_buffer_desc_init(struct guc_ct_buffer_desc *desc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 cmds_addr=
, u32 size, u32 owner)
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 cmds_addr=
, u32 size)
>> =A0{
>> -=A0=A0=A0 CT_DEBUG_DRIVER("CT: desc %p init addr=3D%#x size=3D%u owner=
=3D%u\n",
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc, cmds_addr, size, owner);
>> +=A0=A0=A0 CT_DEBUG_DRIVER("CT: desc %p init addr=3D%#x size=3D%u\n",
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 desc, cmds_addr, size);
> =

> please drop %p
> =


You mean just leave the cmds_addr and size?

>> =A0=A0=A0=A0 memset(desc, 0, sizeof(*desc));
>> =A0=A0=A0=A0 desc->addr =3D cmds_addr;
>> =A0=A0=A0=A0 desc->size =3D size;
>> -=A0=A0=A0 desc->owner =3D owner;
>> +=A0=A0=A0 desc->owner =3D CTB_OWNER_HOST;
>> =A0}
>> static void guc_ct_buffer_desc_reset(struct guc_ct_buffer_desc *desc)
>> @@ -104,12 +101,11 @@ static int guc_action_register_ct_buffer(struct =

>> intel_guc *guc,
>> =A0}
>> static int guc_action_deregister_ct_buffer(struct intel_guc *guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 =
owner,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u3=
2 type)
>> =A0{
>> =A0=A0=A0=A0 u32 action[] =3D {
>> =A0=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_ACTION_DEREGISTER_COMMAND_TRANSPORT_B=
UFFER,
>> -=A0=A0=A0=A0=A0=A0=A0 owner,
>> +=A0=A0=A0=A0=A0=A0=A0 CTB_OWNER_HOST,
>> =A0=A0=A0=A0=A0=A0=A0=A0 type
>> =A0=A0=A0=A0 };
>> =A0=A0=A0=A0 int err;
>> @@ -117,19 +113,28 @@ static int =

>> guc_action_deregister_ct_buffer(struct intel_guc *guc,
>> =A0=A0=A0=A0 /* Can't use generic send(), CT deregistration must go over=
 MMIO */
>> =A0=A0=A0=A0 err =3D intel_guc_send_mmio(guc, action, ARRAY_SIZE(action)=
, NULL, 0);
>> =A0=A0=A0=A0 if (err)
>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: deregister %s buffer failed; owner=
=3D%d err=3D%d\n",
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 guc_ct_buffer_type_to_str(type)=
, owner, err);
>> +=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: deregister %s buffer failed; err=
=3D%d\n",
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 guc_ct_buffer_type_to_str(type)=
, err);
>> =A0=A0=A0=A0 return err;
>> =A0}
>> -static int ctch_init(struct intel_guc *guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_guc_ct_channel *ctch)
>> +/**
>> + * intel_guc_ct_init - Init CT communication
> =

> maybe to match other descriptions:
> =

> "intel_guc_ct_init - Init buffer based communication"
> =

>> + * @ct: pointer to CT struct
>> + *
>> + * Allocate memory required for communication via
>> + * the CT channel.
> =

> CT channel ? maybe
> =

> "Allocate memory required for buffer based communication"
> =


ok for both

> =

>> + *
>> + * Return: 0 on success, a negative errno code on failure.
>> + */
>> +int intel_guc_ct_init(struct intel_guc_ct *ct)
>> =A0{
>> +=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
>> =A0=A0=A0=A0 void *blob;
>> =A0=A0=A0=A0 int err;
>> =A0=A0=A0=A0 int i;
>> -=A0=A0=A0 GEM_BUG_ON(ctch->vma);
>> +=A0=A0=A0 GEM_BUG_ON(ct->vma);
>> =A0=A0=A0=A0/* We allocate 1 page to hold both descriptors and both buff=
ers.
>> =A0=A0=A0=A0=A0 *=A0=A0=A0=A0=A0=A0 ___________.....................
>> @@ -153,57 +158,67 @@ static int ctch_init(struct intel_guc *guc,
>> =A0=A0=A0=A0=A0 * other code will need updating as well.
>> =A0=A0=A0=A0=A0 */
>> -=A0=A0=A0 err =3D intel_guc_allocate_and_map_vma(guc, PAGE_SIZE, &ctch-=
>vma, =

>> &blob);
>> +=A0=A0=A0 err =3D intel_guc_allocate_and_map_vma(guc, PAGE_SIZE, &ct->v=
ma, =

>> &blob);
>> =A0=A0=A0=A0 if (err) {
>> -=A0=A0=A0=A0=A0=A0=A0 CT_DEBUG_DRIVER("CT: channel %d initialization fa=
iled; =

>> err=3D%d\n",
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctch->owner, err);
>> +=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: channel allocation failed; err=3D%=
d\n", err);
>> =A0=A0=A0=A0=A0=A0=A0=A0 return err;
>> =A0=A0=A0=A0 }
>> =A0=A0=A0=A0CT_DEBUG_DRIVER("CT: vma base=3D%#x\n",
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_guc_ggtt_offset(guc, ctch->vma)=
);
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_guc_ggtt_offset(guc, ct->vma));
>> =A0=A0=A0=A0/* store pointers to desc and cmds */
>> -=A0=A0=A0 for (i =3D 0; i < ARRAY_SIZE(ctch->ctbs); i++) {
>> -=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON((i !=3D CTB_SEND) && (i !=3D CTB_RECV)=
);
>> -=A0=A0=A0=A0=A0=A0=A0 ctch->ctbs[i].desc =3D blob + PAGE_SIZE/4 * i;
>> -=A0=A0=A0=A0=A0=A0=A0 ctch->ctbs[i].cmds =3D blob + PAGE_SIZE/4 * i + P=
AGE_SIZE/2;
>> +=A0=A0=A0 for (i =3D 0; i < ARRAY_SIZE(ct->ctbs); i++) {
>> +=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON((i !=3D=A0 CTB_SEND) && (i !=3D CTB_RE=
CV));
>> +=A0=A0=A0=A0=A0=A0=A0 ct->ctbs[i].desc =3D blob + PAGE_SIZE/4 * i;
>> +=A0=A0=A0=A0=A0=A0=A0 ct->ctbs[i].cmds =3D blob + PAGE_SIZE/4 * i + PAG=
E_SIZE/2;
>> =A0=A0=A0=A0 }
>> =A0=A0=A0=A0return 0;
>> =A0}
>> -static void ctch_fini(struct intel_guc *guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_guc_ct_channel *ct=
ch)
>> +/**
>> + * intel_guc_ct_fini - Fini CT communication
>> + * @ct: pointer to CT struct
>> + *
>> + * Deallocate memory required for communication via
>> + * the CT channel.
>> + */
>> +void intel_guc_ct_fini(struct intel_guc_ct *ct)
>> =A0{
>> -=A0=A0=A0 GEM_BUG_ON(ctch->enabled);
>> +=A0=A0=A0 GEM_BUG_ON(ct->enabled);
>> -=A0=A0=A0 i915_vma_unpin_and_release(&ctch->vma, I915_VMA_RELEASE_MAP);
>> +=A0=A0=A0 i915_vma_unpin_and_release(&ct->vma, I915_VMA_RELEASE_MAP);
>> =A0}
>> -static int ctch_enable(struct intel_guc *guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_guc_ct_channel =
*ctch)
>> +/**
>> + * intel_guc_ct_enable - Enable buffer based command transport.
>> + * @ct: pointer to CT struct
>> + *
>> + * Return: 0 on success, a negative errno code on failure.
>> + */
>> +int intel_guc_ct_enable(struct intel_guc_ct *ct)
>> =A0{
>> +=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
>> =A0=A0=A0=A0 u32 base;
>> =A0=A0=A0=A0 int err;
>> =A0=A0=A0=A0 int i;
>> -=A0=A0=A0 GEM_BUG_ON(!ctch->vma);
>> -
>> -=A0=A0=A0 GEM_BUG_ON(ctch->enabled);
>> +=A0=A0=A0 if (ct->enabled)
>> +=A0=A0=A0=A0=A0=A0=A0 return 0;
> =

> btw, do we still need this check?
> =


I don't think so, AFAICS we only call intel_guc_ct_enable from =

guc_enable_communication(), which already has a BUG_ON if communication =

is already enabled. I'll get rid of it, but I'll split that change in a =

separate patch.

>> =A0=A0=A0=A0/* vma should be already allocated and map'ed */
>> -=A0=A0=A0 base =3D intel_guc_ggtt_offset(guc, ctch->vma);
>> +=A0=A0=A0 GEM_BUG_ON(!ct->vma);
>> +=A0=A0=A0 base =3D intel_guc_ggtt_offset(guc, ct->vma);
>> =A0=A0=A0=A0/* (re)initialize descriptors
>> =A0=A0=A0=A0=A0 * cmds buffers are in the second half of the blob page
>> =A0=A0=A0=A0=A0 */
>> -=A0=A0=A0 for (i =3D 0; i < ARRAY_SIZE(ctch->ctbs); i++) {
>> +=A0=A0=A0 for (i =3D 0; i < ARRAY_SIZE(ct->ctbs); i++) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON((i !=3D CTB_SEND) && (i !=3D CTB_REC=
V));
>> -=A0=A0=A0=A0=A0=A0=A0 guc_ct_buffer_desc_init(ctch->ctbs[i].desc,
>> +=A0=A0=A0=A0=A0=A0=A0 guc_ct_buffer_desc_init(ct->ctbs[i].desc,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 base + PAGE=
_SIZE/4 * i + PAGE_SIZE/2,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PAGE_SIZE/4,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctch->owner);
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 PAGE_SIZE/4);
>> =A0=A0=A0=A0 }
>> =A0=A0=A0=A0/* register buffers, starting wirh RECV buffer
>> @@ -221,40 +236,43 @@ static int ctch_enable(struct intel_guc *guc,
>> =A0=A0=A0=A0 if (unlikely(err))
>> =A0=A0=A0=A0=A0=A0=A0=A0 goto err_deregister;
>> -=A0=A0=A0 ctch->enabled =3D true;
>> +=A0=A0=A0 ct->enabled =3D true;
>> =A0=A0=A0=A0return 0;
>> err_deregister:
>> =A0=A0=A0=A0 guc_action_deregister_ct_buffer(guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctch->owner,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_C=
T_BUFFER_TYPE_RECV);
>> =A0err_out:
>> -=A0=A0=A0 DRM_ERROR("CT: can't open channel %d; err=3D%d\n", ctch->owne=
r, err);
>> +=A0=A0=A0 DRM_ERROR("CT: can't open channel; err=3D%d\n", err);
>> =A0=A0=A0=A0 return err;
>> =A0}
>> -static void ctch_disable(struct intel_guc *guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_guc_ct_channel *ctch)
>> +/**
>> + * intel_guc_ct_disable - Disable buffer based command transport.
>> + * @ct: pointer to CT struct
>> + */
>> +void intel_guc_ct_disable(struct intel_guc_ct *ct)
>> =A0{
>> -=A0=A0=A0 GEM_BUG_ON(!ctch->enabled);
>> +=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
>> -=A0=A0=A0 ctch->enabled =3D false;
>> +=A0=A0=A0 if (!ct->enabled)
>> +=A0=A0=A0=A0=A0=A0=A0 return;
>> +
>> +=A0=A0=A0 ct->enabled =3D false;
>> =A0=A0=A0=A0if (intel_guc_is_running(guc)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 guc_action_deregister_ct_buffer(guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 c=
tch->owner,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 INTEL_GUC_CT_BUFFER_TYPE_SEND);
>> =A0=A0=A0=A0=A0=A0=A0=A0 guc_action_deregister_ct_buffer(guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 c=
tch->owner,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
 INTEL_GUC_CT_BUFFER_TYPE_RECV);
>> =A0=A0=A0=A0 }
>> =A0}
>> -static u32 ctch_get_next_fence(struct intel_guc_ct_channel *ctch)
>> +static u32 ct_get_next_fence(struct intel_guc_ct *ct)
>> =A0{
>> =A0=A0=A0=A0 /* For now it's trivial */
>> -=A0=A0=A0 return ++ctch->next_fence;
>> +=A0=A0=A0 return ++ct->next_fence;
>> =A0}
>> /**
>> @@ -427,35 +445,34 @@ static int wait_for_ct_request_update(struct =

>> ct_request *req, u32 *status)
>> =A0=A0=A0=A0 return err;
>> =A0}
>> -static int ctch_send(struct intel_guc_ct *ct,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 struct intel_guc_ct_channel *ctch,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const u32 *action,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 len,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 response_buf_size,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *status)
>> +static int ct_send(struct intel_guc_ct *ct,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const u32 *action,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 len,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 response_buf_size,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *status)
>> =A0{
>> -=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ctch->ctbs[CTB_SEND];
>> +=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs[CTB_SEND];
>> =A0=A0=A0=A0 struct guc_ct_buffer_desc *desc =3D ctb->desc;
>> =A0=A0=A0=A0 struct ct_request request;
>> =A0=A0=A0=A0 unsigned long flags;
>> =A0=A0=A0=A0 u32 fence;
>> =A0=A0=A0=A0 int err;
>> -=A0=A0=A0 GEM_BUG_ON(!ctch->enabled);
>> +=A0=A0=A0 GEM_BUG_ON(!ct->enabled);
>> =A0=A0=A0=A0 GEM_BUG_ON(!len);
>> =A0=A0=A0=A0 GEM_BUG_ON(len & ~GUC_CT_MSG_LEN_MASK);
>> =A0=A0=A0=A0 GEM_BUG_ON(!response_buf && response_buf_size);
>> -=A0=A0=A0 fence =3D ctch_get_next_fence(ctch);
>> +=A0=A0=A0 fence =3D ct_get_next_fence(ct);
>> =A0=A0=A0=A0 request.fence =3D fence;
>> =A0=A0=A0=A0 request.status =3D 0;
>> =A0=A0=A0=A0 request.response_len =3D response_buf_size;
>> =A0=A0=A0=A0 request.response_buf =3D response_buf;
>> -=A0=A0=A0 spin_lock_irqsave(&ct->lock, flags);
>> -=A0=A0=A0 list_add_tail(&request.link, &ct->pending_requests);
>> -=A0=A0=A0 spin_unlock_irqrestore(&ct->lock, flags);
>> +=A0=A0=A0 spin_lock_irqsave(&ct->requests.lock, flags);
>> +=A0=A0=A0 list_add_tail(&request.link, &ct->requests.pending);
>> +=A0=A0=A0 spin_unlock_irqrestore(&ct->requests.lock, flags);
>> =A0=A0=A0=A0err =3D ctb_write(ctb, action, len, fence, !!response_buf);
>> =A0=A0=A0=A0 if (unlikely(err))
>> @@ -488,9 +505,9 @@ static int ctch_send(struct intel_guc_ct *ct,
>> =A0=A0=A0=A0 }
>> unlink:
>> -=A0=A0=A0 spin_lock_irqsave(&ct->lock, flags);
>> +=A0=A0=A0 spin_lock_irqsave(&ct->requests.lock, flags);
>> =A0=A0=A0=A0 list_del(&request.link);
>> -=A0=A0=A0 spin_unlock_irqrestore(&ct->lock, flags);
>> +=A0=A0=A0 spin_unlock_irqrestore(&ct->requests.lock, flags);
>> =A0=A0=A0=A0return err;
>> =A0}
>> @@ -502,14 +519,12 @@ int intel_guc_send_ct(struct intel_guc *guc, =

>> const u32 *action, u32 len,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 respon=
se_buf_size)
>> =A0{
>> =A0=A0=A0=A0 struct intel_guc_ct *ct =3D &guc->ct;
>> -=A0=A0=A0 struct intel_guc_ct_channel *ctch =3D &ct->host_channel;
>> =A0=A0=A0=A0 u32 status =3D ~0; /* undefined */
>> =A0=A0=A0=A0 int ret;
>> =A0=A0=A0=A0mutex_lock(&guc->send_mutex);
>> -=A0=A0=A0 ret =3D ctch_send(ct, ctch, action, len, response_buf, =

>> response_buf_size,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 &status);
>> +=A0=A0=A0 ret =3D ct_send(ct, action, len, response_buf, response_buf_s=
ize, =

>> &status);
>> =A0=A0=A0=A0 if (unlikely(ret < 0)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: send action %#X failed; err=3D%d=
 status=3D%#X\n",
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 action[0], ret, status);
>> @@ -640,8 +655,8 @@ static int ct_handle_response(struct intel_guc_ct =

>> *ct, const u32 *msg)
>> =A0=A0=A0=A0CT_DEBUG_DRIVER("CT: response fence %u status %#x\n", fence,=
 status);
>> -=A0=A0=A0 spin_lock(&ct->lock);
>> -=A0=A0=A0 list_for_each_entry(req, &ct->pending_requests, link) {
>> +=A0=A0=A0 spin_lock(&ct->requests.lock);
>> +=A0=A0=A0 list_for_each_entry(req, &ct->requests.pending, link) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 if (unlikely(fence !=3D req->fence)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 CT_DEBUG_DRIVER("CT: request %u awa=
its response\n",
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 req->fence);
>> @@ -659,7 +674,7 @@ static int ct_handle_response(struct intel_guc_ct =

>> *ct, const u32 *msg)
>> =A0=A0=A0=A0=A0=A0=A0=A0 found =3D true;
>> =A0=A0=A0=A0=A0=A0=A0=A0 break;
>> =A0=A0=A0=A0 }
>> -=A0=A0=A0 spin_unlock(&ct->lock);
>> +=A0=A0=A0 spin_unlock(&ct->requests.lock);
>> =A0=A0=A0=A0if (!found)
>> =A0=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: unsolicited response %*ph\n", 4 =
* msglen, msg);
>> @@ -697,13 +712,13 @@ static bool ct_process_incoming_requests(struct =

>> intel_guc_ct *ct)
>> =A0=A0=A0=A0 u32 *payload;
>> =A0=A0=A0=A0 bool done;
>> -=A0=A0=A0 spin_lock_irqsave(&ct->lock, flags);
>> -=A0=A0=A0 request =3D list_first_entry_or_null(&ct->incoming_requests,
>> +=A0=A0=A0 spin_lock_irqsave(&ct->requests.lock, flags);
>> +=A0=A0=A0 request =3D list_first_entry_or_null(&ct->requests.incoming,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 st=
ruct ct_incoming_request, link);
>> =A0=A0=A0=A0 if (request)
>> =A0=A0=A0=A0=A0=A0=A0=A0 list_del(&request->link);
>> -=A0=A0=A0 done =3D !!list_empty(&ct->incoming_requests);
>> -=A0=A0=A0 spin_unlock_irqrestore(&ct->lock, flags);
>> +=A0=A0=A0 done =3D !!list_empty(&ct->requests.incoming);
>> +=A0=A0=A0 spin_unlock_irqrestore(&ct->requests.lock, flags);
>> =A0=A0=A0=A0if (!request)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return true;
>> @@ -721,12 +736,13 @@ static bool ct_process_incoming_requests(struct =

>> intel_guc_ct *ct)
>> static void ct_incoming_request_worker_func(struct work_struct *w)
>> =A0{
>> -=A0=A0=A0 struct intel_guc_ct *ct =3D container_of(w, struct intel_guc_=
ct, =

>> worker);
>> +=A0=A0=A0 struct intel_guc_ct *ct =3D
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 container_of(w, struct intel_guc_ct, =
requests.worker);
>> =A0=A0=A0=A0 bool done;
>> =A0=A0=A0=A0done =3D ct_process_incoming_requests(ct);
>> =A0=A0=A0=A0 if (!done)
>> -=A0=A0=A0=A0=A0=A0=A0 queue_work(system_unbound_wq, &ct->worker);
>> +=A0=A0=A0=A0=A0=A0=A0 queue_work(system_unbound_wq, &ct->requests.worke=
r);
>> =A0}
>> /**
>> @@ -764,22 +780,26 @@ static int ct_handle_request(struct intel_guc_ct =

>> *ct, const u32 *msg)
>> =A0=A0=A0=A0 }
>> =A0=A0=A0=A0 memcpy(request->msg, msg, 4 * msglen);
>> -=A0=A0=A0 spin_lock_irqsave(&ct->lock, flags);
>> -=A0=A0=A0 list_add_tail(&request->link, &ct->incoming_requests);
>> -=A0=A0=A0 spin_unlock_irqrestore(&ct->lock, flags);
>> +=A0=A0=A0 spin_lock_irqsave(&ct->requests.lock, flags);
>> +=A0=A0=A0 list_add_tail(&request->link, &ct->requests.incoming);
>> +=A0=A0=A0 spin_unlock_irqrestore(&ct->requests.lock, flags);
>> -=A0=A0=A0 queue_work(system_unbound_wq, &ct->worker);
>> +=A0=A0=A0 queue_work(system_unbound_wq, &ct->requests.worker);
>> =A0=A0=A0=A0 return 0;
>> =A0}
>> -static void ct_process_host_channel(struct intel_guc_ct *ct)
>> +/*
>> + * When we're communicating with the GuC over CT, GuC uses events
>> + * to notify us about new messages being posted on the RECV buffer.
>> + */
>> +void intel_guc_to_host_event_handler_ct(struct intel_guc *guc)
>> =A0{
>> -=A0=A0=A0 struct intel_guc_ct_channel *ctch =3D &ct->host_channel;
>> -=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ctch->ctbs[CTB_RECV];
>> +=A0=A0=A0 struct intel_guc_ct *ct =3D &guc->ct;
>> +=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs[CTB_RECV];
>> =A0=A0=A0=A0 u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the h=
eader */
>> =A0=A0=A0=A0 int err =3D 0;
>> -=A0=A0=A0 if (!ctch->enabled)
>> +=A0=A0=A0 if (!ct->enabled)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> =A0=A0=A0=A0do {
>> @@ -798,87 +818,3 @@ static void ct_process_host_channel(struct =

>> intel_guc_ct *ct)
>> =A0=A0=A0=A0=A0=A0=A0=A0 ctb->desc->is_in_error =3D 1;
>> =A0=A0=A0=A0 }
>> =A0}
>> -
>> -/*
>> - * When we're communicating with the GuC over CT, GuC uses events
>> - * to notify us about new messages being posted on the RECV buffer.
>> - */
>> -void intel_guc_to_host_event_handler_ct(struct intel_guc *guc)
>> -{
>> -=A0=A0=A0 struct intel_guc_ct *ct =3D &guc->ct;
>> -
>> -=A0=A0=A0 ct_process_host_channel(ct);
>> -}
>> -
>> -/**
>> - * intel_guc_ct_init - Init CT communication
>> - * @ct: pointer to CT struct
>> - *
>> - * Allocate memory required for communication via
>> - * the CT channel.
>> - *
>> - * Return: 0 on success, a negative errno code on failure.
>> - */
>> -int intel_guc_ct_init(struct intel_guc_ct *ct)
>> -{
>> -=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
>> -=A0=A0=A0 struct intel_guc_ct_channel *ctch =3D &ct->host_channel;
>> -=A0=A0=A0 int err;
>> -
>> -=A0=A0=A0 err =3D ctch_init(guc, ctch);
>> -=A0=A0=A0 if (unlikely(err)) {
>> -=A0=A0=A0=A0=A0=A0=A0 DRM_ERROR("CT: can't open channel %d; err=3D%d\n",
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ctch->owner, err);
>> -=A0=A0=A0=A0=A0=A0=A0 return err;
>> -=A0=A0=A0 }
>> -
>> -=A0=A0=A0 GEM_BUG_ON(!ctch->vma);
>> -=A0=A0=A0 return 0;
>> -}
>> -
>> -/**
>> - * intel_guc_ct_fini - Fini CT communication
>> - * @ct: pointer to CT struct
>> - *
>> - * Deallocate memory required for communication via
>> - * the CT channel.
>> - */
>> -void intel_guc_ct_fini(struct intel_guc_ct *ct)
>> -{
>> -=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
>> -=A0=A0=A0 struct intel_guc_ct_channel *ctch =3D &ct->host_channel;
>> -
>> -=A0=A0=A0 ctch_fini(guc, ctch);
>> -}
>> -
>> -/**
>> - * intel_guc_ct_enable - Enable buffer based command transport.
>> - * @ct: pointer to CT struct
>> - *
>> - * Return: 0 on success, a negative errno code on failure.
>> - */
>> -int intel_guc_ct_enable(struct intel_guc_ct *ct)
>> -{
>> -=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
>> -=A0=A0=A0 struct intel_guc_ct_channel *ctch =3D &ct->host_channel;
>> -
>> -=A0=A0=A0 if (ctch->enabled)
>> -=A0=A0=A0=A0=A0=A0=A0 return 0;
>> -
>> -=A0=A0=A0 return ctch_enable(guc, ctch);
>> -}
>> -
>> -/**
>> - * intel_guc_ct_disable - Disable buffer based command transport.
>> - * @ct: pointer to CT struct
>> - */
>> -void intel_guc_ct_disable(struct intel_guc_ct *ct)
>> -{
>> -=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
>> -=A0=A0=A0 struct intel_guc_ct_channel *ctch =3D &ct->host_channel;
>> -
>> -=A0=A0=A0 if (!ctch->enabled)
>> -=A0=A0=A0=A0=A0=A0=A0 return;
>> -
>> -=A0=A0=A0 ctch_disable(guc, ctch);
>> -}
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> index 77c80d6cc25d..4bb1d1fcc860 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> @@ -35,44 +35,29 @@ struct intel_guc_ct_buffer {
>> =A0=A0=A0=A0 u32 *cmds;
>> =A0};
>> +
>> =A0/** Represents pair of command transport buffers.
> =

> intel_guc_ct is now little more that old ctch
> =

>> =A0 *
>> =A0 * Buffers go in pairs to allow bi-directional communication.
>> =A0 * To simplify the code we place both of them in the same vma.
>> =A0 * Buffers from the same pair must share unique owner id.
> =

> we'll have only one pair and one fixed owner,
> maybe worth to rephrase whole description ?
> =


ok

>> - *
>> - * @vma: pointer to the vma with pair of CT buffers
>> - * @ctbs: buffers for sending(0) and receiving(1) commands
>> - * @owner: unique identifier
>> - * @next_fence: fence to be used with next send command
>> =A0 */
>> -struct intel_guc_ct_channel {
>> +struct intel_guc_ct {
>> =A0=A0=A0=A0 struct i915_vma *vma;
>> -=A0=A0=A0 struct intel_guc_ct_buffer ctbs[2];
>> -=A0=A0=A0 u32 owner;
>> -=A0=A0=A0 u32 next_fence;
>> =A0=A0=A0=A0 bool enabled;
>> -};
>> -/** Holds all command transport channels.
>> - *
>> - * @host_channel: main channel used by the host
>> - */
>> -struct intel_guc_ct {
>> -=A0=A0=A0 struct intel_guc_ct_channel host_channel;
>> -=A0=A0=A0 /* other channels are tbd */
>> -
>> -=A0=A0=A0 /** @lock: protects pending requests list */
>> -=A0=A0=A0 spinlock_t lock;
>> -
>> -=A0=A0=A0 /** @pending_requests: list of requests waiting for response =
*/
>> -=A0=A0=A0 struct list_head pending_requests;
>> +=A0=A0=A0 /* buffers for sending(0) and receiving(1) commands */
>> +=A0=A0=A0 struct intel_guc_ct_buffer ctbs[2];
>> -=A0=A0=A0 /** @incoming_requests: list of incoming requests */
>> -=A0=A0=A0 struct list_head incoming_requests;
>> +=A0=A0=A0 /* fence to be used with next send command */
>> +=A0=A0=A0 u32 next_fence;
> =

> fence is only used while sending requests,
> so maybe move it under below requests struct ?
> =

>> -=A0=A0=A0 /** @worker: worker for handling incoming requests */
>> -=A0=A0=A0 struct work_struct worker;
>> +=A0=A0=A0 struct {
>> +=A0=A0=A0=A0=A0=A0=A0 spinlock_t lock; /* protects pending requests lis=
t */
>> +=A0=A0=A0=A0=A0=A0=A0 struct list_head pending; /* requests waiting for=
 response */
>> +=A0=A0=A0=A0=A0=A0=A0 struct list_head incoming; /* incoming requests */
>> +=A0=A0=A0=A0=A0=A0=A0 struct work_struct worker; /* handler for incomin=
g requests */
>> +=A0=A0=A0 } requests;
> =

> maybe above change should be in separate patch to make diff smaller?
> =


You mean split this in one patch to merge the CT and CTCH structures and =

one to move some fields inside the requests sub-structure?

Daniele

>> =A0};
>> void intel_guc_ct_init_early(struct intel_guc_ct *ct);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
