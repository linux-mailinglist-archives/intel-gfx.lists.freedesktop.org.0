Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76E641521DE
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 22:20:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BF786E904;
	Tue,  4 Feb 2020 21:20:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F32C6E904
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 21:20:01 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 13:20:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="231504585"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga003.jf.intel.com with ESMTP; 04 Feb 2020 13:19:59 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-7-daniele.ceraolospurio@intel.com>
 <op.0fg5clpwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <537e5ddb-5d0c-2b46-4c62-3b7329580c58@intel.com>
Date: Tue, 4 Feb 2020 13:19:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0fg5clpwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 06/10] drm/i915/uc: Improve tracking of
 uC init status
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



On 2/4/20 9:54 AM, Michal Wajdeczko wrote:
> On Tue, 04 Feb 2020 00:28:34 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> To be able to setup GuC submission functions during engine init we need
>> to commit to using GuC as soon as possible.
>> Currently, the only thing that can stop us from using the
>> microcontrollers once we've fetched the blobs is a fundamental
>> error (e.g. OOM); given that if we hit such an error we can't really
>> fall-back to anything, we can "officialize" the FW fetching completion
>> as the moment at which we're committing to using GuC.
>>
>> To better differentiate this case, the uses_guc check, which indicates
>> that GuC is supported and was selected in modparam, is renamed to
>> wants_guc and a new uses_guc is introduced to represent the case were
>> we're committed to using the GuC. Note that uses_guc does still not imply
>> that the blob is actually loaded on the HW (is_running is the check for
>> that). Also, since we need to have attempted the fetch for the result
>> of uses_guc to be meaningful, we need to make sure we've moved away
>> from INTEL_UC_FIRMWARE_SELECTED.
>>
>> All the GuC changes have been mirrored on the HuC for coherency.
>>
>> v2: split fetch return changes and new macros to their own patches,
>> =A0=A0=A0 support HuC only if GuC is wanted, improve "used" state
>> =A0=A0=A0 description (Michal)
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Reviewed-by: Fernando Pacheco <fernando.pacheco@intel.com> #v1
>> ---
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc.h=A0=A0=A0 |=A0 8 +++++++-
>> =A0drivers/gpu/drm/i915/gt/uc/intel_huc.h=A0=A0=A0 |=A0 8 +++++++-
>> =A0drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c |=A0 2 +-
>> =A0drivers/gpu/drm/i915/gt/uc/intel_uc.c=A0=A0=A0=A0 | 23 ++++++++++++--=
--------
>> =A0drivers/gpu/drm/i915/gt/uc/intel_uc.h=A0=A0=A0=A0 | 24 ++++++++++++++=
++++++++-
>> =A05 files changed, 51 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> index 7ca9e5159f05..f6b33745ae0b 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.h
>> @@ -143,11 +143,17 @@ static inline bool intel_guc_is_supported(struct =

>> intel_guc *guc)
>> =A0=A0=A0=A0 return intel_uc_fw_is_supported(&guc->fw);
>> =A0}
>> -static inline bool intel_guc_is_enabled(struct intel_guc *guc)
>> +static inline bool intel_guc_is_wanted(struct intel_guc *guc)
>> =A0{
>> =A0=A0=A0=A0 return intel_uc_fw_is_enabled(&guc->fw);
>> =A0}
>> +static inline bool intel_guc_is_used(struct intel_guc *guc)
>> +{
>> +=A0=A0=A0 GEM_BUG_ON(__intel_uc_fw_status(&guc->fw) =3D=3D =

>> INTEL_UC_FIRMWARE_SELECTED);
>> +=A0=A0=A0 return intel_uc_fw_is_available(&guc->fw);
>> +}
>> +
>> =A0static inline bool intel_guc_is_fw_running(struct intel_guc *guc)
>> =A0{
>> =A0=A0=A0=A0 return intel_uc_fw_is_running(&guc->fw);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
>> index 644c059fe01d..a40b9cfc6c22 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.h
>> @@ -41,11 +41,17 @@ static inline bool intel_huc_is_supported(struct =

>> intel_huc *huc)
>> =A0=A0=A0=A0 return intel_uc_fw_is_supported(&huc->fw);
>> =A0}
>> -static inline bool intel_huc_is_enabled(struct intel_huc *huc)
>> +static inline bool intel_huc_is_wanted(struct intel_huc *huc)
>> =A0{
>> =A0=A0=A0=A0 return intel_uc_fw_is_enabled(&huc->fw);
>> =A0}
>> +static inline bool intel_huc_is_used(struct intel_huc *huc)
>> +{
>> +=A0=A0=A0 GEM_BUG_ON(__intel_uc_fw_status(&huc->fw) =3D=3D =

>> INTEL_UC_FIRMWARE_SELECTED);
>> +=A0=A0=A0 return intel_uc_fw_is_available(&huc->fw);
>> +}
>> +
>> =A0static inline bool intel_huc_is_authenticated(struct intel_huc *huc)
>> =A0{
>> =A0=A0=A0=A0 return intel_uc_fw_is_running(&huc->fw);
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
>> index eee193bf2cc4..9cdf4cbe691c 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_fw.c
>> @@ -20,7 +20,7 @@ void intel_huc_fw_init_early(struct intel_huc *huc)
>> =A0=A0=A0=A0 struct drm_i915_private *i915 =3D gt->i915;
>> =A0=A0=A0=A0intel_uc_fw_init_early(&huc->fw, INTEL_UC_FW_TYPE_HUC,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_uses_gu=
c(uc),
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_wants_g=
uc(uc),
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 INTEL_INFO(i91=
5)->platform, INTEL_REVID(i915));
>> =A0}
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index affc4d6f9ead..654d7c0c757a 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -48,17 +48,17 @@ static void __confirm_options(struct intel_uc *uc)
>> =A0=A0=A0=A0 DRM_DEV_DEBUG_DRIVER(i915->drm.dev,
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 "enable_guc=3D%d (gu=
c:%s submission:%s huc:%s)\n",
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 i915_modparams.enabl=
e_guc,
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_uses_gu=
c(uc)),
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_wants_g=
uc(uc)),
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_uses_=
guc_submission(uc)),
>> -=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_uses_hu=
c(uc)));
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 yesno(intel_uc_wants_h=
uc(uc)));
>> =A0=A0=A0=A0if (i915_modparams.enable_guc =3D=3D -1)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> =A0=A0=A0=A0if (i915_modparams.enable_guc =3D=3D 0) {
>> -=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_uses_guc(uc));
>> +=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_wants_guc(uc));
>> =A0=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
>> -=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_uses_huc(uc));
>> +=A0=A0=A0=A0=A0=A0=A0 GEM_BUG_ON(intel_uc_wants_huc(uc));
>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> =A0=A0=A0=A0 }
>> @@ -93,7 +93,7 @@ void intel_uc_init_early(struct intel_uc *uc)
>> =A0=A0=A0=A0__confirm_options(uc);
>> -=A0=A0=A0 if (intel_uc_uses_guc(uc))
>> +=A0=A0=A0 if (intel_uc_wants_guc(uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 uc->ops =3D &uc_ops_on;
>> =A0=A0=A0=A0 else
>> =A0=A0=A0=A0=A0=A0=A0=A0 uc->ops =3D &uc_ops_off;
>> @@ -257,13 +257,13 @@ static void __uc_fetch_firmwares(struct intel_uc =

>> *uc)
>> =A0{
>> =A0=A0=A0=A0 int err;
>> -=A0=A0=A0 GEM_BUG_ON(!intel_uc_uses_guc(uc));
>> +=A0=A0=A0 GEM_BUG_ON(!intel_uc_wants_guc(uc));
>> =A0=A0=A0=A0err =3D intel_uc_fw_fetch(&uc->guc.fw);
>> =A0=A0=A0=A0 if (err)
>> =A0=A0=A0=A0=A0=A0=A0=A0 return;
>> -=A0=A0=A0 if (intel_uc_uses_huc(uc))
>> +=A0=A0=A0 if (intel_uc_wants_huc(uc))
>> =A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_fw_fetch(&uc->huc.fw);
>> =A0}
>> @@ -279,7 +279,10 @@ static void __uc_init(struct intel_uc *uc)
>> =A0=A0=A0=A0 struct intel_huc *huc =3D &uc->huc;
>> =A0=A0=A0=A0 int ret;
>> -=A0=A0=A0 GEM_BUG_ON(!intel_uc_uses_guc(uc));
>> +=A0=A0=A0 GEM_BUG_ON(!intel_uc_wants_guc(uc));
>> +
>> +=A0=A0=A0 if (!intel_uc_uses_guc(uc))
>> +=A0=A0=A0=A0=A0=A0=A0 return;
>> =A0=A0=A0=A0/* XXX: GuC submission is unavailable for now */
>> =A0=A0=A0=A0 GEM_BUG_ON(intel_uc_supports_guc_submission(uc));
>> @@ -322,7 +325,7 @@ static int uc_init_wopcm(struct intel_uc *uc)
>> =A0=A0=A0=A0 struct intel_uncore *uncore =3D gt->uncore;
>> =A0=A0=A0=A0 u32 base =3D intel_wopcm_guc_base(&gt->i915->wopcm);
>> =A0=A0=A0=A0 u32 size =3D intel_wopcm_guc_size(&gt->i915->wopcm);
>> -=A0=A0=A0 u32 huc_agent =3D intel_uc_uses_huc(uc) ? HUC_LOADING_AGENT_G=
UC : 0;
>> +=A0=A0=A0 u32 huc_agent =3D intel_uc_wants_huc(uc) ? HUC_LOADING_AGENT_=
GUC : 0;

this should've been uses_huc, since this is post fetch.

>> =A0=A0=A0=A0 u32 mask;
>> =A0=A0=A0=A0 int err;
>> @@ -402,7 +405,7 @@ static int __uc_init_hw(struct intel_uc *uc)
>> =A0=A0=A0=A0 int ret, attempts;
>> =A0=A0=A0=A0GEM_BUG_ON(!intel_uc_supports_guc(uc));
>> -=A0=A0=A0 GEM_BUG_ON(!intel_uc_uses_guc(uc));
>> +=A0=A0=A0 GEM_BUG_ON(!intel_uc_wants_guc(uc));
>> =A0=A0=A0=A0if (!intel_uc_fw_is_available(&guc->fw)) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 ret =3D __uc_check_hw(uc) ||
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> index 2ce993ceb60a..a41aaf353f88 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> @@ -40,6 +40,27 @@ void intel_uc_runtime_suspend(struct intel_uc *uc);
>> =A0int intel_uc_resume(struct intel_uc *uc);
>> =A0int intel_uc_runtime_resume(struct intel_uc *uc);
>> +/*
>> + * We need to know as early as possible if we're going to use GuC or =

>> not to
>> + * take the correct setup paths. Additionally, once we've started =

>> loading the
>> + * GuC, it is unsafe to keep executing without it because some parts =

>> of the HW,
>> + * a subset of which is not cleaned on GT reset, will start expecting =

>> the GuC FW
>> + * to be running.
>> + * To solve both these requirements, we commit to using the =

>> microcontrollers if
>> + * the relevant modparam is set and the blobs are found on the =

>> system. At this
>> + * stage, the only thing that can stop us from attempting to load the =

>> blobs on
>> + * the HW and use them is a fundamental issue (e.g. no memory for our
>> + * structures); if we hit such a problem during driver load we're =

>> broken even
>> + * without GuC, so there is no point in trying to fall back.
>> + *
>> + * Given the above, we can be in one of 4 states, with the last one =

>> implying
>> + * we're committed to using the microcontroller:
> =

> nit: maybe we should document below state names in capitals as:
> NOT_SUPPORTED, WANTED, IN_USE, ...
> =

>> + * - Not supported: not available in HW and/or firmware not defined.
>> + * - Supported: available in HW and firmware defined.
>> + * - Wanted: supported + enabled in modparam.
> =

> hmm, we are checking modparam during fw path selection, thus for me
> there is no difference between SUPPORTED and WANTED, what I missed?
> =

> maybe we only need 3 states: NOT_SUPPORTED, WANTED, IN_USE.
> =


enable_guc=3D0 maps to SUPPORTED on platforms that have the GuC, i.e. the =

HW has it but we haven't turned it on. NOT_SUPPORTED is for older =

platforms that don't have the microcontroller, while WANTED is for =

enable_guc !=3D 0 on platforms that do support the GuC. Supported vs =

wanted is mainly used for error logging. Note than NOT_SUPPORTED is not =

a separate state in the code, but it is quite literally !(SUPPORTED), so =

the actual states are indeed 3.

>> + * - In use: wanted + firmware found on the system and successfully =

>> fetched.
> =

> In what state we will be after unsuccessful fetch ? still WANTED ?
> =


yes, on purpose. This reflects the current behavior and I believe it'll =

be useful in case we need to conditionally unwind anything that has been =

done before the fetch.

Daniele

>> + */
>> +
>> =A0#define __uc_state_checker(x, state, required) \
>> =A0static inline bool intel_uc_##state##_##x(struct intel_uc *uc) \
>> =A0{ \
>> @@ -48,7 +69,8 @@ static inline bool intel_uc_##state##_##x(struct =

>> intel_uc *uc) \
>> #define uc_state_checkers(x) \
>> =A0__uc_state_checker(x, supports, supported) \
>> -__uc_state_checker(x, uses, enabled)
>> +__uc_state_checker(x, wants, wanted) \
>> +__uc_state_checker(x, uses, used)
>> uc_state_checkers(guc);
>> =A0uc_state_checkers(huc);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
