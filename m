Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 92403123B0C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Dec 2019 00:45:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C718489B66;
	Tue, 17 Dec 2019 23:45:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 298D989B5F
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Dec 2019 23:45:04 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 17 Dec 2019 15:45:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,327,1571727600"; d="scan'208";a="221874888"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by fmsmga001.fm.intel.com with ESMTP; 17 Dec 2019 15:45:02 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191217012316.13271-1-daniele.ceraolospurio@intel.com>
 <20191217012316.13271-5-daniele.ceraolospurio@intel.com>
 <op.0cypk5zoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <fcbd44bb-3a7a-7d09-a895-dc05ad47f64c@intel.com>
Date: Tue, 17 Dec 2019 15:45:16 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.0cypk5zoxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 5/7] drm/i915/guc: Remove function
 pointers for send/receive calls
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



On 12/17/19 1:49 PM, Michal Wajdeczko wrote:
> On Tue, 17 Dec 2019 02:23:14 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> Since we started using CT buffers on all gens, the function pointers can
>> only be set to either the _nop() or the _ct() functions. Since the
>> _nop() case applies to when the CT are disabled, we can just handle that
>> case in the _ct() functions and call them directly.
>>
>> v2: keep intel_guc_send() and make the CT send/receive functions work on
>> =A0=A0=A0 intel_guc_ct. (Michal)
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> ---
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc.c=A0=A0=A0=A0=A0=A0=A0 | 14 ----=
---------
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc.h=A0=A0=A0=A0=A0=A0=A0 | 18 ++++=
-------------
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c=A0=A0=A0=A0 | 16 ++++++++++=
-----
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h=A0=A0=A0=A0 |=A0 9 +++++++--
>> =A0.../gpu/drm/i915/gt/uc/intel_guc_submission.c |=A0 1 -
>> =A0drivers/gpu/drm/i915/gt/uc/intel_uc.c=A0=A0=A0=A0=A0=A0=A0=A0 | 20 ++=
+++++------------
>> =A06 files changed, 29 insertions(+), 49 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index 922a19635d20..daebfec0034c 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -177,8 +177,6 @@ void intel_guc_init_early(struct intel_guc *guc)
>> =A0=A0=A0=A0mutex_init(&guc->send_mutex);
>> =A0=A0=A0=A0 spin_lock_init(&guc->irq_lock);
>> -=A0=A0=A0 guc->send =3D intel_guc_send_nop;
>> -=A0=A0=A0 guc->handler =3D intel_guc_to_host_event_handler_nop;
>> =A0=A0=A0=A0 if (INTEL_GEN(i915) >=3D 11) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 guc->notify =3D gen11_guc_raise_irq;
>> =A0=A0=A0=A0=A0=A0=A0=A0 guc->interrupts.reset =3D gen11_reset_guc_inter=
rupts;
>> @@ -403,18 +401,6 @@ void intel_guc_fini(struct intel_guc *guc)
>> =A0=A0=A0=A0 intel_uc_fw_cleanup_fetch(&guc->fw);
>> =A0}
>> -int intel_guc_send_nop(struct intel_guc *guc, const u32 *action, u32 =

>> len,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 respo=
nse_buf_size)
>> -{
>> -=A0=A0=A0 WARN(1, "Unexpected send: action=3D%#x\n", *action);
>> -=A0=A0=A0 return -ENODEV;
>> -}
>> -
>> -void intel_guc_to_host_event_handler_nop(struct intel_guc *guc)
>> -{
>> -=A0=A0=A0 WARN(1, "Unexpected event: no suitable handler\n");
>> -}
>> -
>> =A0/*
>> =A0 * This function implements the MMIO based host to GuC interface.
>> =A0 */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index cd09c912e361..253b1ac7716e 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -70,13 +70,6 @@ struct intel_guc {
>> =A0=A0=A0=A0 /* To serialize the intel_guc_send actions */
>> =A0=A0=A0=A0 struct mutex send_mutex;
>> -=A0=A0=A0 /* GuC's FW specific send function */
>> -=A0=A0=A0 int (*send)(struct intel_guc *guc, const u32 *data, u32 len,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 response_buf_s=
ize);
>> -
>> -=A0=A0=A0 /* GuC's FW specific event handler function */
>> -=A0=A0=A0 void (*handler)(struct intel_guc *guc);
>> -
>> =A0=A0=A0=A0 /* GuC's FW specific notify function */
>> =A0=A0=A0=A0 void (*notify)(struct intel_guc *guc);
>> =A0};
>> @@ -84,14 +77,15 @@ struct intel_guc {
>> =A0static
>> =A0inline int intel_guc_send(struct intel_guc *guc, const u32 *action, =

>> u32 len)
>> =A0{
>> -=A0=A0=A0 return guc->send(guc, action, len, NULL, 0);
>> +=A0=A0=A0 return intel_guc_ct_send(&guc->ct, action, len, NULL, 0);
>> =A0}
>> static inline int
>> =A0intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, =

>> u32 len,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 res=
ponse_buf_size)
>> =A0{
>> -=A0=A0=A0 return guc->send(guc, action, len, response_buf, response_buf=
_size);
>> +=A0=A0=A0 return intel_guc_ct_send(&guc->ct, action, len,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 response_buf, response=
_buf_size);
>> =A0}
>> static inline void intel_guc_notify(struct intel_guc *guc)
>> @@ -101,7 +95,7 @@ static inline void intel_guc_notify(struct =

>> intel_guc *guc)
>> static inline void intel_guc_to_host_event_handler(struct intel_guc *guc)
>> =A0{
>> -=A0=A0=A0 guc->handler(guc);
>> +=A0=A0=A0 intel_guc_ct_event_handler(&guc->ct);
>> =A0}
>> /* GuC addresses above GUC_GGTT_TOP also don't map through the GTT */
>> @@ -136,12 +130,8 @@ void intel_guc_init_send_regs(struct intel_guc =

>> *guc);
>> =A0void intel_guc_write_params(struct intel_guc *guc);
>> =A0int intel_guc_init(struct intel_guc *guc);
>> =A0void intel_guc_fini(struct intel_guc *guc);
>> -int intel_guc_send_nop(struct intel_guc *guc, const u32 *action, u32 =

>> len,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 respo=
nse_buf_size);
>> =A0int intel_guc_send_mmio(struct intel_guc *guc, const u32 *action, u32 =

>> len,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 response_buf=
_size);
>> -void intel_guc_to_host_event_handler(struct intel_guc *guc);
>> -void intel_guc_to_host_event_handler_nop(struct intel_guc *guc);
>> =A0int intel_guc_to_host_process_recv_msg(struct intel_guc *guc,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 co=
nst u32 *payload, u32 len);
>> =A0int intel_guc_sample_forcewake(struct intel_guc *guc);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> index f22cd9b2311b..c6f971a049f9 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -510,13 +510,18 @@ static int ct_send(struct intel_guc_ct *ct,
>> =A0/*
>> =A0 * Command Transport (CT) buffer based GuC send function.
>> =A0 */
>> -int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
>> +int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 =

>> len,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 respon=
se_buf_size)
>> =A0{
>> -=A0=A0=A0 struct intel_guc_ct *ct =3D &guc->ct;
>> +=A0=A0=A0 struct intel_guc *guc =3D ct_to_guc(ct);
>> =A0=A0=A0=A0 u32 status =3D ~0; /* undefined */
>> =A0=A0=A0=A0 int ret;
>> +=A0=A0=A0 if (unlikely(!ct->enabled)) {
>> +=A0=A0=A0=A0=A0=A0=A0 WARN(1, "Unexpected send: action=3D%#x\n", *actio=
n);
>> +=A0=A0=A0=A0=A0=A0=A0 return -ENODEV;
>> +=A0=A0=A0 }
>> +
>> =A0=A0=A0=A0 mutex_lock(&guc->send_mutex);
>> =A0=A0=A0=A0ret =3D ct_send(ct, action, len, response_buf, response_buf_=
size, =

>> &status);
>> @@ -787,15 +792,16 @@ static int ct_handle_request(struct intel_guc_ct =

>> *ct, const u32 *msg)
>> =A0 * When we're communicating with the GuC over CT, GuC uses events
>> =A0 * to notify us about new messages being posted on the RECV buffer.
>> =A0 */
>> -void intel_guc_to_host_event_handler_ct(struct intel_guc *guc)
>> +void intel_guc_ct_event_handler(struct intel_guc_ct *ct)
>> =A0{
>> -=A0=A0=A0 struct intel_guc_ct *ct =3D &guc->ct;
>> =A0=A0=A0=A0 struct intel_guc_ct_buffer *ctb =3D &ct->ctbs[CTB_RECV];
>> =A0=A0=A0=A0 u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the h=
eader */
>> =A0=A0=A0=A0 int err =3D 0;
>> -=A0=A0=A0 if (!ct->enabled)
>> +=A0=A0=A0 if (unlikely(!ct->enabled)) {
>> +=A0=A0=A0=A0=A0=A0=A0 WARN(1, "Unexpected GuC event received while CT d=
isabled!\n");
> =

> hmm, maybe we should just return false to indicate that we didn't
> process that G2H event and decide in irq_handler what to do with that?

IMO it only makes sense to modify the return chain if we indeed end up =

doing something with the returned code, but I don't see what we could do =

with it in addition to printing an error, which we already do in this =

function.

Anyway, I believe such a change should be separate from this series as =

here the focus is on simplifying the structures.

> but not a blocker, so
> =

> Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

Thanks for quickly reviewing all the patches!

Daniele

> =

> Michal
> =

>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> +=A0=A0=A0 }
>> =A0=A0=A0=A0do {
>> =A0=A0=A0=A0=A0=A0=A0=A0 err =3D ctb_read(ctb, msg);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> index 29a026dc3a13..3e7fe237cfa5 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> @@ -65,8 +65,13 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct);
>> =A0int intel_guc_ct_enable(struct intel_guc_ct *ct);
>> =A0void intel_guc_ct_disable(struct intel_guc_ct *ct);
>> -int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
>> +static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
>> +{
>> +=A0=A0=A0 return ct->enabled;
>> +}
>> +
>> +int intel_guc_ct_send(struct intel_guc_ct *ct, const u32 *action, u32 =

>> len,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 respon=
se_buf_size);
>> -void intel_guc_to_host_event_handler_ct(struct intel_guc *guc);
>> +void intel_guc_ct_event_handler(struct intel_guc_ct *ct);
>> #endif /* _INTEL_GUC_CT_H_ */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index af04ed6e48d9..44a7d2e736a7 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -43,7 +43,6 @@
>> =A0 * Firmware writes a success/fail code back to the action register af=
ter
>> =A0 * processes the request. The kernel driver polls waiting for this =

>> update and
>> =A0 * then proceeds.
>> - * See intel_guc_send()
>> =A0 *
>> =A0 * Work Items:
>> =A0 * There are several types of work items that the host may place into=
 a
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index 6e17e449e0a8..782b8f95183f 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -123,6 +123,11 @@ static void __uc_free_load_err_log(struct =

>> intel_uc *uc)
>> =A0=A0=A0=A0=A0=A0=A0=A0 i915_gem_object_put(log);
>> =A0}
>> +static inline bool guc_communication_enabled(struct intel_guc *guc)
>> +{
>> +=A0=A0=A0 return intel_guc_ct_enabled(&guc->ct);
>> +}
>> +
>> =A0/*
>> =A0 * Events triggered while CT buffers are disabled are logged in the =

>> SCRATCH_15
>> =A0 * register using the same bits used in the CT message payload. Since =

>> our
>> @@ -158,7 +163,7 @@ static void guc_handle_mmio_msg(struct intel_guc =

>> *guc)
>> =A0=A0=A0=A0 struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
>> =A0=A0=A0=A0/* we need communication to be enabled to reply to GuC */
>> -=A0=A0=A0 GEM_BUG_ON(guc->handler =3D=3D intel_guc_to_host_event_handle=
r_nop);
>> +=A0=A0=A0 GEM_BUG_ON(!guc_communication_enabled(guc));
>> =A0=A0=A0=A0if (!guc->mmio_msg)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> @@ -185,11 +190,6 @@ static void guc_disable_interrupts(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0 guc->interrupts.disable(guc);
>> =A0}
>> -static inline bool guc_communication_enabled(struct intel_guc *guc)
>> -{
>> -=A0=A0=A0 return guc->send !=3D intel_guc_send_nop;
>> -}
>> -
>> =A0static int guc_enable_communication(struct intel_guc *guc)
>> =A0{
>> =A0=A0=A0=A0 struct drm_i915_private *i915 =3D guc_to_gt(guc)->i915;
>> @@ -205,9 +205,6 @@ static int guc_enable_communication(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0 if (ret)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return ret;
>> -=A0=A0=A0 guc->send =3D intel_guc_send_ct;
>> -=A0=A0=A0 guc->handler =3D intel_guc_to_host_event_handler_ct;
>> -
>> =A0=A0=A0=A0 /* check for mmio messages received before/during the CT en=
able */
>> =A0=A0=A0=A0 guc_get_mmio_msg(guc);
>> =A0=A0=A0=A0 guc_handle_mmio_msg(guc);
>> @@ -216,7 +213,7 @@ static int guc_enable_communication(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0/* check for CT messages received before we enabled interrup=
ts */
>> =A0=A0=A0=A0 spin_lock_irq(&i915->irq_lock);
>> -=A0=A0=A0 intel_guc_to_host_event_handler_ct(guc);
>> +=A0=A0=A0 intel_guc_ct_event_handler(&guc->ct);
>> =A0=A0=A0=A0 spin_unlock_irq(&i915->irq_lock);
>> =A0=A0=A0=A0DRM_INFO("GuC communication enabled\n");
>> @@ -235,9 +232,6 @@ static void guc_disable_communication(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0guc_disable_interrupts(guc);
>> -=A0=A0=A0 guc->send =3D intel_guc_send_nop;
>> -=A0=A0=A0 guc->handler =3D intel_guc_to_host_event_handler_nop;
>> -
>> =A0=A0=A0=A0 intel_guc_ct_disable(&guc->ct);
>> =A0=A0=A0=A0/*
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
