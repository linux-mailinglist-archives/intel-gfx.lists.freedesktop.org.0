Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 892A01521EF
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 22:24:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D73596F3A9;
	Tue,  4 Feb 2020 21:24:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 164706F3A9
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 21:24:43 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 13:24:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="231505837"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga003.jf.intel.com with ESMTP; 04 Feb 2020 13:24:39 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-8-daniele.ceraolospurio@intel.com>
 <op.0fg5wzqrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <fc7495b1-0a27-42e5-99bc-b165d48bf435@intel.com>
Date: Tue, 4 Feb 2020 13:24:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0fg5wzqrxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 07/10] drm/i915/guc: Apply new uC status
 tracking to GuC submission as well
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



On 2/4/20 10:06 AM, Michal Wajdeczko wrote:
> On Tue, 04 Feb 2020 00:28:35 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> To be able to differentiate the before and after of our commitment to
>> GuC submission, which will be used in follow-up patches to early set-up
>> the submission structures.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> ---
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc.c=A0=A0=A0=A0=A0=A0=A0 | 12 ++++=
----
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc.h=A0=A0=A0=A0=A0=A0=A0 | 17 ++++=
+++++--
>> =A0.../gpu/drm/i915/gt/uc/intel_guc_submission.c |=A0 9 ++----
>> =A0drivers/gpu/drm/i915/gt/uc/intel_uc.c=A0=A0=A0=A0=A0=A0=A0=A0 | 14 ++=
++-----
>> =A0drivers/gpu/drm/i915/gt/uc/intel_uc.h=A0=A0=A0=A0=A0=A0=A0=A0 | 29 ++=
+++++------------
>> =A0drivers/gpu/drm/i915/gvt/scheduler.c=A0=A0=A0=A0=A0=A0=A0=A0=A0 |=A0 =
2 +-
>> =A0drivers/gpu/drm/i915/i915_drv.h=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0 |=A0 6 ----
>> =A0drivers/gpu/drm/i915/intel_gvt.c=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=
=A0 |=A0 2 +-
>> =A08 files changed, 42 insertions(+), 49 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index c4c1523da7a6..f96d1bdf4bf2 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -207,7 +207,7 @@ static u32 guc_ctl_feature_flags(struct intel_guc =

>> *guc)
>> =A0{
>> =A0=A0=A0=A0 u32 flags =3D 0;
>> -=A0=A0=A0 if (!intel_guc_is_submission_supported(guc))
>> +=A0=A0=A0 if (!intel_guc_submission_is_used(guc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 flags |=3D GUC_CTL_DISABLE_SCHEDULER;
>> =A0=A0=A0=A0return flags;
>> @@ -217,7 +217,7 @@ static u32 guc_ctl_ctxinfo_flags(struct intel_guc =

>> *guc)
>> =A0{
>> =A0=A0=A0=A0 u32 flags =3D 0;
>> -=A0=A0=A0 if (intel_guc_is_submission_supported(guc)) {
>> +=A0=A0=A0 if (intel_guc_submission_is_used(guc)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 u32 ctxnum, base;
>> =A0=A0=A0=A0=A0=A0=A0 base =3D intel_guc_ggtt_offset(guc, guc->stage_des=
c_pool);
>> @@ -348,7 +348,7 @@ int intel_guc_init(struct intel_guc *guc)
>> =A0=A0=A0=A0 if (ret)
>> =A0=A0=A0=A0=A0=A0=A0=A0 goto err_ads;
>> -=A0=A0=A0 if (intel_guc_is_submission_supported(guc)) {
>> +=A0=A0=A0 if (intel_guc_submission_is_used(guc)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 /*
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 * This is stuff we need to have available at=
 fw load time
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 * if we are planning to enable submission la=
ter
>> @@ -389,7 +389,7 @@ void intel_guc_fini(struct intel_guc *guc)
>> =A0=A0=A0=A0i915_ggtt_disable_guc(gt->ggtt);
>> -=A0=A0=A0 if (intel_guc_is_submission_supported(guc))
>> +=A0=A0=A0 if (intel_guc_submission_is_used(guc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 intel_guc_submission_fini(guc);
>> =A0=A0=A0=A0intel_guc_ct_fini(&guc->ct);
>> @@ -544,7 +544,7 @@ int intel_guc_suspend(struct intel_guc *guc)
>> =A0=A0=A0=A0=A0 * If GuC communication is enabled but submission is not =
supported,
>> =A0=A0=A0=A0=A0 * we do not need to suspend the GuC.
>> =A0=A0=A0=A0=A0 */
>> -=A0=A0=A0 if (!intel_guc_submission_is_enabled(guc))
>> +=A0=A0=A0 if (!intel_guc_submission_is_used(guc) || !intel_guc_is_ready=
(guc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0/*
>> @@ -609,7 +609,7 @@ int intel_guc_resume(struct intel_guc *guc)
>> =A0=A0=A0=A0=A0 * we do not need to resume the GuC but we do need to ena=
ble the
>> =A0=A0=A0=A0=A0 * GuC communication on resume (above).
>> =A0=A0=A0=A0=A0 */
>> -=A0=A0=A0 if (!intel_guc_submission_is_enabled(guc))
>> +=A0=A0=A0 if (!intel_guc_submission_is_used(guc) || !intel_guc_is_ready=
(guc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0return intel_guc_send(guc, action, ARRAY_SIZE(action));
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index f6b33745ae0b..1aba4d2c15b3 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -39,7 +39,7 @@ struct intel_guc {
>> =A0=A0=A0=A0=A0=A0=A0=A0 void (*disable)(struct intel_guc *guc);
>> =A0=A0=A0=A0 } interrupts;
>> -=A0=A0=A0 bool submission_supported;
>> +=A0=A0=A0 bool submission_selected;
>> =A0=A0=A0=A0struct i915_vma *ads_vma;
>> =A0=A0=A0=A0 struct __guc_ads_blob *ads_blob;
>> @@ -172,9 +172,20 @@ static inline int intel_guc_sanitize(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0 return 0;
>> =A0}
>> -static inline bool intel_guc_is_submission_supported(struct intel_guc =

>> *guc)
>> +static inline bool intel_guc_submission_is_supported(struct intel_guc =

>> *guc)
>> =A0{
>> -=A0=A0=A0 return guc->submission_supported;
>> +=A0=A0=A0 /* XXX: GuC submission is unavailable for now */
>> +=A0=A0=A0 return false;
>> +}
>> +
>> +static inline bool intel_guc_submission_is_wanted(struct intel_guc *guc)
>> +{
>> +=A0=A0=A0 return guc->submission_selected;
>> +}
>> +
>> +static inline bool intel_guc_submission_is_used(struct intel_guc *guc)
>> +{
>> +=A0=A0=A0 return intel_guc_is_used(guc) && =

>> intel_guc_submission_is_wanted(guc);
>> =A0}
> =

> can we keep all intel_guc_submission_xx() functions in =

> intel_guc_submission.h?
> or is it circular-dependency issue ? but these functions are not on =

> hot-path so
> maybe can be moved to .c to break that dependency ?
> =

> or is it due to auto generator changes below ?
> =


I haven't actually tried to move them to intel_guc_submission.h. =

intel_guc_is_submission_supported was here so I just kept the other =

related functions here as well. IMO including intel_guc.h from =

intel_guc_submission.h shouldn't be an issue given the close relation =

between the 2, so it should be ok to move the functions.

Daniele

>> static inline void intel_guc_enable_msg(struct intel_guc *guc, u32 mask)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index 9e42324fdecd..1beaa77f9bb6 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -660,12 +660,9 @@ void intel_guc_submission_disable(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0 guc_proc_desc_fini(guc);
>> =A0}
>> -static bool __guc_submission_support(struct intel_guc *guc)
>> +static bool __guc_submission_selected(struct intel_guc *guc)
>> =A0{
>> -=A0=A0=A0 /* XXX: GuC submission is unavailable for now */
>> -=A0=A0=A0 return false;
>> -
>> -=A0=A0=A0 if (!intel_guc_is_supported(guc))
>> +=A0=A0=A0 if (!intel_guc_submission_is_supported(guc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return false;
>> =A0=A0=A0=A0return i915_modparams.enable_guc & ENABLE_GUC_SUBMISSION;
>> @@ -673,7 +670,7 @@ static bool __guc_submission_support(struct =

>> intel_guc *guc)
>> void intel_guc_submission_init_early(struct intel_guc *guc)
>> =A0{
>> -=A0=A0=A0 guc->submission_supported =3D __guc_submission_support(guc);
>> +=A0=A0=A0 guc->submission_selected =3D __guc_submission_selected(guc);
>> =A0}
>> bool intel_engine_in_guc_submission_mode(const struct intel_engine_cs =

>> *engine)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index 654d7c0c757a..175fa6361ff2 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -49,7 +49,7 @@ static void __confirm_options(struct intel_uc *uc)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "enable_guc=3D%d (gu=
c:%s submission:%s huc:%s)\n",
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 i915_modparams.enabl=
e_guc,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_wants=
_guc(uc)),
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_uses_gu=
c_submission(uc)),
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_wants_g=
uc_submission(uc)),
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_wants=
_huc(uc)));
>> =A0=A0=A0=A0if (i915_modparams.enable_guc =3D=3D -1)
>> @@ -57,7 +57,7 @@ static void __confirm_options(struct intel_uc *uc)
>> =A0=A0=A0=A0if (i915_modparams.enable_guc =3D=3D 0) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_wants_guc(uc));
>> -=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
>> +=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_wants_guc_submission(uc));
>> =A0=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_wants_huc(uc));
>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> =A0=A0=A0=A0 }
>> @@ -285,7 +285,7 @@ static void __uc_init(struct intel_uc *uc)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> =A0=A0=A0=A0/* XXX: GuC submission is unavailable for now */
>> -=A0=A0=A0 GEM_BUG_ON(intel_uc_supports_guc_submission(uc));
>> +=A0=A0=A0 GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
>> =A0=A0=A0=A0ret =3D intel_guc_init(guc);
>> =A0=A0=A0=A0 if (ret) {
>> @@ -410,7 +410,7 @@ static int __uc_init_hw(struct intel_uc *uc)
>> =A0=A0=A0=A0 if (!intel_uc_fw_is_available(&guc->fw)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 ret =3D __uc_check_hw(uc) ||
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_fw_is_overridden(&gu=
c->fw) ||
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_supports_guc_submissio=
n(uc) ?
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_wants_guc_submission(u=
c) ?
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_fw_status_to_error(g=
uc->fw.status) : 0;
>> =A0=A0=A0=A0=A0=A0=A0=A0 goto err_out;
>> =A0=A0=A0=A0 }
>> @@ -462,14 +462,14 @@ static int __uc_init_hw(struct intel_uc *uc)
>> =A0=A0=A0=A0 if (ret)
>> =A0=A0=A0=A0=A0=A0=A0=A0 goto err_communication;
>> -=A0=A0=A0 if (intel_uc_supports_guc_submission(uc))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 intel_guc_submission_enable(guc);
>> =A0=A0=A0=A0dev_info(i915->drm.dev, "%s firmware %s version %u.%u %s:%s\=
n",
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_fw_type_repr(INTEL_UC_FW_TYPE_GUC),=
 guc->fw.path,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 guc->fw.major_ver_found, guc->fw.minor_ver_f=
ound,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 "submission",
>> -=A0=A0=A0=A0=A0=A0=A0=A0 enableddisabled(intel_uc_supports_guc_submissi=
on(uc)));
>> +=A0=A0=A0=A0=A0=A0=A0=A0 enableddisabled(intel_uc_uses_guc_submission(u=
c)));
>> =A0=A0=A0=A0if (intel_uc_uses_huc(uc)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 dev_info(i915->drm.dev, "%s firmware %s version=
 %u.%u %s:%s\n",
>> @@ -511,7 +511,7 @@ static void __uc_fini_hw(struct intel_uc *uc)
>> =A0=A0=A0=A0 if (!intel_guc_is_fw_running(guc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> -=A0=A0=A0 if (intel_uc_supports_guc_submission(uc))
>> +=A0=A0=A0 if (intel_uc_uses_guc_submission(uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 intel_guc_submission_disable(guc);
>> =A0=A0=A0=A0if (guc_communication_enabled(guc))
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> index a41aaf353f88..35ce8a6be88b 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> @@ -61,33 +61,24 @@ int intel_uc_runtime_resume(struct intel_uc *uc);
>> =A0 * - In use: wanted + firmware found on the system and successfully =

>> fetched.
>> =A0 */
>> -#define __uc_state_checker(x, state, required) \
>> -static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
>> +#define __uc_state_checker(x, func, state, required) \
>> +static inline bool intel_uc_##state##_##func(struct intel_uc *uc) \
>> =A0{ \
>> -=A0=A0=A0 return intel_##x##_is_##required(&uc->x); \
>> +=A0=A0=A0 return intel_##func##_is_##required(&uc->x); \
>> =A0}
>> -#define uc_state_checkers(x) \
>> -__uc_state_checker(x, supports, supported) \
>> -__uc_state_checker(x, wants, wanted) \
>> -__uc_state_checker(x, uses, used)
>> +#define uc_state_checkers(x, func) \
>> +__uc_state_checker(x, func, supports, supported) \
>> +__uc_state_checker(x, func, wants, wanted) \
>> +__uc_state_checker(x, func, uses, used)
>> -uc_state_checkers(guc);
>> -uc_state_checkers(huc);
>> +uc_state_checkers(guc, guc);
>> +uc_state_checkers(huc, huc);
>> +uc_state_checkers(guc, guc_submission);
>> #undef uc_state_checkers
>> =A0#undef __uc_state_checker
>> -static inline bool intel_uc_supports_guc_submission(struct intel_uc *uc)
>> -{
>> -=A0=A0=A0 return intel_guc_is_submission_supported(&uc->guc);
>> -}
>> -
>> -static inline bool intel_uc_uses_guc_submission(struct intel_uc *uc)
>> -{
>> -=A0=A0=A0 return intel_guc_is_submission_supported(&uc->guc);
>> -}
>> -
>> =A0#define intel_uc_ops_function(_NAME, _OPS, _TYPE, _RET) \
>> =A0static inline _TYPE intel_uc_##_NAME(struct intel_uc *uc) \
>> =A0{ \
>> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c =

>> b/drivers/gpu/drm/i915/gvt/scheduler.c
>> index 5fe00ee6bd1b..e8c0885df978 100644
>> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
>> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
>> @@ -1247,7 +1247,7 @@ int intel_vgpu_setup_submission(struct =

>> intel_vgpu *vgpu)
>> =A0=A0=A0=A0=A0=A0=A0=A0 intel_context_set_single_submission(ce);
>> =A0=A0=A0=A0=A0=A0=A0 /* Max ring buffer size */
>> -=A0=A0=A0=A0=A0=A0=A0 if (!intel_uc_uses_guc_submission(&engine->gt->uc=
)) {
>> +=A0=A0=A0=A0=A0=A0=A0 if (!intel_uc_wants_guc_submission(&engine->gt->u=
c)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 const unsigned int ring_size =3D 51=
2 * SZ_4K;
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 ce->ring =3D __intel_context_ring_size=
(ring_size);
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h =

>> b/drivers/gpu/drm/i915/i915_drv.h
>> index 0a45240af38d..d21039ba2b4f 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -2010,10 +2010,4 @@ i915_coherent_map_type(struct drm_i915_private =

>> *i915)
>> =A0=A0=A0=A0 return HAS_LLC(i915) ? I915_MAP_WB : I915_MAP_WC;
>> =A0}
>> -static inline bool intel_guc_submission_is_enabled(struct intel_guc =

>> *guc)
>> -{
>> -=A0=A0=A0 return intel_guc_is_submission_supported(guc) &&
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_guc_is_ready(guc);
>> -}
>> -
>> =A0#endif
>> diff --git a/drivers/gpu/drm/i915/intel_gvt.c =

>> b/drivers/gpu/drm/i915/intel_gvt.c
>> index 5c189bc31da5..e73fd752adef 100644
>> --- a/drivers/gpu/drm/i915/intel_gvt.c
>> +++ b/drivers/gpu/drm/i915/intel_gvt.c
>> @@ -105,7 +105,7 @@ int intel_gvt_init(struct drm_i915_private *dev_priv)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return 0;
>> =A0=A0=A0=A0 }
>> -=A0=A0=A0 if (intel_uc_uses_guc_submission(&dev_priv->gt.uc)) {
>> +=A0=A0=A0 if (intel_uc_wants_guc_submission(&dev_priv->gt.uc)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 drm_err(&dev_priv->drm,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "i915 GVT-g loading failed due to G=
raphics virtualization =

>> is not yet supported with GuC submission\n");
>> =A0=A0=A0=A0=A0=A0=A0=A0 return -EIO;
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
