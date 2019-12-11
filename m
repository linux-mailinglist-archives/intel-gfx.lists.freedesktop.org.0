Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C80811BAEA
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Dec 2019 19:01:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A9406E0A5;
	Wed, 11 Dec 2019 18:01:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15F4B6E0A5
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Dec 2019 18:01:38 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Dec 2019 10:01:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,302,1571727600"; d="scan'208";a="388018662"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 11 Dec 2019 10:01:37 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191210210919.30846-1-daniele.ceraolospurio@intel.com>
 <20191210210919.30846-4-daniele.ceraolospurio@intel.com>
 <op.0cmz1amzxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <8f265080-53b5-4d3e-94b5-a7f8330de57c@intel.com>
Date: Wed, 11 Dec 2019 10:01:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.0cmz1amzxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 3/5] drm/i915/guc: remove function pointers
 for send/receive calls
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



On 12/11/19 6:04 AM, Michal Wajdeczko wrote:
> On Tue, 10 Dec 2019 22:09:17 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> Since we started using CT buffers on all gens, the function pointers can
>> only be set to either the _nop() or the _ct() functions. Since the
>> _nop() case applies to when the CT are disabled, we can just handle that
>> case in the _ct() functions and call them directly.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> ---
>> =A0drivers/gpu/drm/i915/gt/intel_gt_irq.c=A0=A0=A0=A0=A0=A0=A0 |=A0 2 +-
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc.c=A0=A0=A0=A0=A0=A0=A0 | 22 +++-=
----------
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc.h=A0=A0=A0=A0=A0=A0=A0 | 29 ----=
---------------
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c=A0=A0=A0=A0 | 14 +++++++--
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h=A0=A0=A0=A0 | 17 +++++++++--
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc_log.c=A0=A0=A0 |=A0 6 ++--
>> =A0.../gpu/drm/i915/gt/uc/intel_guc_submission.c |=A0 1 -
>> =A0drivers/gpu/drm/i915/gt/uc/intel_uc.c=A0=A0=A0=A0=A0=A0=A0=A0 | 18 ++=
++--------
>> =A08 files changed, 40 insertions(+), 69 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c =

>> b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> index 332b12a574fb..3183b4426c7b 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
>> @@ -16,7 +16,7 @@
>> =A0static void guc_irq_handler(struct intel_guc *guc, u16 iir)
>> =A0{
>> =A0=A0=A0=A0 if (iir & GUC_INTR_GUC2HOST)
>> -=A0=A0=A0=A0=A0=A0=A0 intel_guc_to_host_event_handler(guc);
>> +=A0=A0=A0=A0=A0=A0=A0 intel_guc_to_host_event_handler_ct(guc);
>> =A0}
>> static void
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index 922a19635d20..eb94635eeecd 100644
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
>> @@ -515,7 +501,7 @@ int intel_guc_sample_forcewake(struct intel_guc *guc)
>> =A0=A0=A0=A0=A0=A0=A0=A0 /* bit 0 and 1 are for Render and Media domain =
separately */
>> =A0=A0=A0=A0=A0=A0=A0=A0 action[1] =3D GUC_FORCEWAKE_RENDER | GUC_FORCEW=
AKE_MEDIA;
>> -=A0=A0=A0 return intel_guc_send(guc, action, ARRAY_SIZE(action));
>> +=A0=A0=A0 return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
>> =A0}
>> /**
>> @@ -536,7 +522,7 @@ int intel_guc_auth_huc(struct intel_guc *guc, u32 =

>> rsa_offset)
>> =A0=A0=A0=A0=A0=A0=A0=A0 rsa_offset
>> =A0=A0=A0=A0 };
>> -=A0=A0=A0 return intel_guc_send(guc, action, ARRAY_SIZE(action));
>> +=A0=A0=A0 return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
>> =A0}
>> /**
>> @@ -573,7 +559,7 @@ int intel_guc_suspend(struct intel_guc *guc)
>> =A0=A0=A0=A0 intel_uncore_write(uncore, SOFT_SCRATCH(14),
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_SLEEP_STATE_INVA=
LID_MASK);
>> -=A0=A0=A0 ret =3D intel_guc_send(guc, action, ARRAY_SIZE(action));
>> +=A0=A0=A0 ret =3D intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
>> =A0=A0=A0=A0 if (ret)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return ret;
>> @@ -625,7 +611,7 @@ int intel_guc_resume(struct intel_guc *guc)
>> =A0=A0=A0=A0 if (!intel_guc_submission_is_enabled(guc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> -=A0=A0=A0 return intel_guc_send(guc, action, ARRAY_SIZE(action));
>> +=A0=A0=A0 return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
>> =A0}
>> /**
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index cd09c912e361..c0b32db1c6ad 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -70,40 +70,15 @@ struct intel_guc {
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
>> -static
>> -inline int intel_guc_send(struct intel_guc *guc, const u32 *action, =

>> u32 len)
>> -{
>> -=A0=A0=A0 return guc->send(guc, action, len, NULL, 0);
>> -}
>> -
>> -static inline int
>> -intel_guc_send_and_receive(struct intel_guc *guc, const u32 *action, =

>> u32 len,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 respo=
nse_buf_size)
>> -{
>> -=A0=A0=A0 return guc->send(guc, action, len, response_buf, response_buf=
_size);
>> -}
> =

> instead of dropping above inlines, I would rather just change them to:
> =

>  =A0=A0=A0=A0return intel_guc_ct_send(&guc->ct, ...);
> =

> a) we will not have to change existing callers
> b) we will maintain modularity (separation of ct code)
> =


My POV here was that the caller needs to know if a message needs to go =

via mmio or via CT so it isn't really abstracted away and =

intel_guc_send() ends up being used as if it was intel_guc_send_ct(). =

Why not call the latter directly if that's the case?
Anyway, I don't have any strong feeling here, so if you thing only the =

mmio case is the only one that deserves being called directly I don't =

mind sticking with intel_guc_send().

>> -
>> =A0static inline void intel_guc_notify(struct intel_guc *guc)
>> =A0{
>> =A0=A0=A0=A0 guc->notify(guc);
>> =A0}
>> -static inline void intel_guc_to_host_event_handler(struct intel_guc =

>> *guc)
>> -{
>> -=A0=A0=A0 guc->handler(guc);
> =

>  =A0=A0=A0=A0intel_guc_ct_event_handler(&guc->ct); ?
> =

>> -}
>> -
>> =A0/* GuC addresses above GUC_GGTT_TOP also don't map through the GTT */
>> =A0#define GUC_GGTT_TOP=A0=A0=A0 0xFEE00000
>> @@ -136,12 +111,8 @@ void intel_guc_init_send_regs(struct intel_guc =

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
>> index 96ce6d74f0b2..60b19f83e153 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
>> @@ -515,13 +515,19 @@ static int ct_send(struct intel_guc_ct *ct,
>> =A0/*
>> =A0 * Command Transport (CT) buffer based GuC send function.
>> =A0 */
>> -int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 response=
_buf_size)
>> +int intel_guc_send_and_receive_ct(struct intel_guc *guc, const u32 =

>> *action,
> =

> to have proper modularization, this should be:
> =

>  =A0=A0=A0=A0intel_guc_ct_send_and_receive(struct intel_guc_ct *ct, ...
> or
>  =A0=A0=A0=A0intel_guc_ct_send(struct intel_guc_ct *ct, ...
> =

>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 len, u32 *respo=
nse_buf,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 response_buf_si=
ze)
>> =A0{
>> =A0=A0=A0=A0 struct intel_guc_ct *ct =3D &guc->ct;
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
>> @@ -799,8 +805,10 @@ void intel_guc_to_host_event_handler_ct(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0 u32 msg[GUC_CT_MSG_LEN_MASK + 1]; /* one extra dw for the h=
eader */
>> =A0=A0=A0=A0 int err =3D 0;
>> -=A0=A0=A0 if (!ct->enabled)
>> +=A0=A0=A0 if (!ct->enabled) {
>> +=A0=A0=A0=A0=A0=A0=A0 WARN(1, "Unexpected event: no suitable handler\n"=
);
> =

> hmm, there is a handler, but CTB is not working ;)
> =


I've been lazy here and just moved the error msg as it was... :P

>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> +=A0=A0=A0 }
>> =A0=A0=A0=A0do {
>> =A0=A0=A0=A0=A0=A0=A0=A0 err =3D ctb_read(ctb, msg);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> index 4bb1d1fcc860..929483b1f013 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
>> @@ -66,8 +66,21 @@ void intel_guc_ct_fini(struct intel_guc_ct *ct);
>> =A0int intel_guc_ct_enable(struct intel_guc_ct *ct);
>> =A0void intel_guc_ct_disable(struct intel_guc_ct *ct);
>> -int intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, u32 response=
_buf_size);
>> +static inline bool intel_guc_ct_enabled(struct intel_guc_ct *ct)
>> +{
>> +=A0=A0=A0 return ct->enabled;
>> +}
>> +
>> +int
>> +intel_guc_send_and_receive_ct(struct intel_guc *guc, const u32 =

>> *action, u32 len,
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 u32 *response_buf, =
u32 response_buf_size);
>> +
>> +static inline int
>> +intel_guc_send_ct(struct intel_guc *guc, const u32 *action, u32 len)
>> +{
>> +=A0=A0=A0 return intel_guc_send_and_receive_ct(guc, action, len, NULL, =
0);
>> +}
>> +
>> =A0void intel_guc_to_host_event_handler_ct(struct intel_guc *guc);
>> #endif /* _INTEL_GUC_CT_H_ */
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> index caed0d57e704..5938127fb129 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
>> @@ -27,7 +27,7 @@ static int guc_action_flush_log_complete(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0=A0=A0=A0=A0 INTEL_GUC_ACTION_LOG_BUFFER_FILE_FLUSH_COMPLETE
>> =A0=A0=A0=A0 };
>> -=A0=A0=A0 return intel_guc_send(guc, action, ARRAY_SIZE(action));
>> +=A0=A0=A0 return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
>> =A0}
>> static int guc_action_flush_log(struct intel_guc *guc)
>> @@ -37,7 +37,7 @@ static int guc_action_flush_log(struct intel_guc *guc)
>> =A0=A0=A0=A0=A0=A0=A0=A0 0
>> =A0=A0=A0=A0 };
>> -=A0=A0=A0 return intel_guc_send(guc, action, ARRAY_SIZE(action));
>> +=A0=A0=A0 return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
>> =A0}
>> static int guc_action_control_log(struct intel_guc *guc, bool enable,
>> @@ -52,7 +52,7 @@ static int guc_action_control_log(struct intel_guc =

>> *guc, bool enable,
>> =A0=A0=A0=A0GEM_BUG_ON(verbosity > GUC_LOG_VERBOSITY_MAX);
>> -=A0=A0=A0 return intel_guc_send(guc, action, ARRAY_SIZE(action));
>> +=A0=A0=A0 return intel_guc_send_ct(guc, action, ARRAY_SIZE(action));
>> =A0}
>> static inline struct intel_guc *log_to_guc(struct intel_guc_log *log)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 172220e83079..fd7008bb128c 100644
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
>> index 7566af8ab46e..18a5eaf3052c 100644
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
> =

> if this is really needed, please move to intel_guc.h
> =


Why? it is only needed in this .c file, no need to have it in a header, no?

Daniele

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
