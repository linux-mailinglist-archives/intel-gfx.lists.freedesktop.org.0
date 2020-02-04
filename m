Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73FBE1521F2
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Feb 2020 22:27:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9217D6F3E7;
	Tue,  4 Feb 2020 21:27:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 201536F3E7
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Feb 2020 21:27:19 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 04 Feb 2020 13:27:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,403,1574150400"; d="scan'208";a="231506523"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga003.jf.intel.com with ESMTP; 04 Feb 2020 13:27:16 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20200203232838.14822-1-daniele.ceraolospurio@intel.com>
 <20200203232838.14822-9-daniele.ceraolospurio@intel.com>
 <op.0fg6blxwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <12e52c15-e698-7e7f-2aad-3064004e8463@intel.com>
Date: Tue, 4 Feb 2020 13:26:59 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <op.0fg6blxwxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v2 08/10] drm/i915/uc: Abort early on
 uc_init failure
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



On 2/4/20 10:15 AM, Michal Wajdeczko wrote:
> On Tue, 04 Feb 2020 00:28:36 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>> Now that we can differentiate wants vs uses GuC/HuC, intel_uc_init is
>> restricted to running only if we have successfully fetched the required
>> blob(s) and are committed to using the microcontroller(s).
>> The only remaining thing that can go wrong in uc_init is the allocation
>> of GuC/HuC related objects; if we get such a failure better to bail out
>> immediately instead of wedging later, like we do for e.g.
>> intel_engines_init, since without objects we can't use the HW, including
>> not being able to attempt the firmware load.
>>
>> While at it, remove the unneeded fw_cleanup call (this is handled
>> outside of gt_init) and add a probe failure injection point for testing.
>> Also, update the logs for <g/h>uc_init failures to probe_failure() since
>> they will cause the driver load to fail.
>>
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Michal Wajdeczko <michal.wajdeczko@intel.com>
>> Cc: John Harrison <John.C.Harrison@Intel.com>
>> Cc: Matthew Brost <matthew.brost@intel.com>
>> Reviewed-by: Fernando Pacheco <fernando.pacheco@intel.com>
>> ---
>> =A0drivers/gpu/drm/i915/gt/intel_gt.c=A0=A0=A0=A0 |=A0 4 +++-
>> =A0drivers/gpu/drm/i915/gt/uc/intel_guc.c |=A0 2 +-
>> =A0drivers/gpu/drm/i915/gt/uc/intel_huc.c |=A0 2 +-
>> =A0drivers/gpu/drm/i915/gt/uc/intel_uc.c=A0 | 24 +++++++++++++++++-------
>> =A0drivers/gpu/drm/i915/gt/uc/intel_uc.h=A0 |=A0 4 ++--
>> =A05 files changed, 24 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c =

>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index f1f1b306e0af..cd64f81a3e60 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -592,7 +592,9 @@ int intel_gt_init(struct intel_gt *gt)
>> =A0=A0=A0=A0 if (err)
>> =A0=A0=A0=A0=A0=A0=A0=A0 goto err_engines;
>> -=A0=A0=A0 intel_uc_init(&gt->uc);
>> +=A0=A0=A0 err =3D intel_uc_init(&gt->uc);
>> +=A0=A0=A0 if (err)
>> +=A0=A0=A0=A0=A0=A0=A0 goto err_engines;
>> =A0=A0=A0=A0err =3D intel_gt_resume(gt);
>> =A0=A0=A0=A0 if (err)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> index f96d1bdf4bf2..97b9c71a6fd4 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
>> @@ -376,7 +376,7 @@ int intel_guc_init(struct intel_guc *guc)
>> =A0=A0=A0=A0 intel_uc_fw_fini(&guc->fw);
>> =A0err_fetch:
>> =A0=A0=A0=A0 intel_uc_fw_cleanup_fetch(&guc->fw);
> =

> btw, we will cleanup all uc firmwares in i915_gem_driver_release()
> so maybe we don't need to cleanup it here
> =

>> -=A0=A0=A0 DRM_DEV_DEBUG_DRIVER(gt->i915->drm.dev, "failed with %d\n", r=
et);
>> +=A0=A0=A0 i915_probe_error(gt->i915, "failed with %d\n", ret);
>> =A0=A0=A0=A0 return ret;
>> =A0}
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> index 32a069841c14..5f448d0e360b 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_huc.c
>> @@ -127,7 +127,7 @@ int intel_huc_init(struct intel_huc *huc)
>> =A0=A0=A0=A0 intel_uc_fw_fini(&huc->fw);
>> =A0out:
>> =A0=A0=A0=A0 intel_uc_fw_cleanup_fetch(&huc->fw);
> =

> and here
> =

>> -=A0=A0=A0 DRM_DEV_DEBUG_DRIVER(i915->drm.dev, "failed with %d\n", err);
>> +=A0=A0=A0 i915_probe_error(i915, "failed with %d\n", err);
>> =A0=A0=A0=A0 return err;
>> =A0}
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c =

>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> index 175fa6361ff2..a119b7776973 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>> @@ -273,7 +273,7 @@ static void __uc_cleanup_firmwares(struct intel_uc =

>> *uc)
>> =A0=A0=A0=A0 intel_uc_fw_cleanup_fetch(&uc->guc.fw);
>> =A0}
>> -static void __uc_init(struct intel_uc *uc)
>> +static int __uc_init(struct intel_uc *uc)
>> =A0{
>> =A0=A0=A0=A0 struct intel_guc *guc =3D &uc->guc;
>> =A0=A0=A0=A0 struct intel_huc *huc =3D &uc->huc;
>> @@ -282,19 +282,29 @@ static void __uc_init(struct intel_uc *uc)
>> =A0=A0=A0=A0 GEM_BUG_ON(!intel_uc_wants_guc(uc));
>> =A0=A0=A0=A0if (!intel_uc_uses_guc(uc))
>> -=A0=A0=A0=A0=A0=A0=A0 return;
>> +=A0=A0=A0=A0=A0=A0=A0 return 0;
>> +
>> +=A0=A0=A0 if (i915_inject_probe_failure(uc_to_gt(uc)->i915))
>> +=A0=A0=A0=A0=A0=A0=A0 return -ENOMEM;
>> =A0=A0=A0=A0/* XXX: GuC submission is unavailable for now */
>> =A0=A0=A0=A0 GEM_BUG_ON(intel_uc_uses_guc_submission(uc));
>> =A0=A0=A0=A0ret =3D intel_guc_init(guc);
>> -=A0=A0=A0 if (ret) {
>> -=A0=A0=A0=A0=A0=A0=A0 intel_uc_fw_cleanup_fetch(&huc->fw);
>> -=A0=A0=A0=A0=A0=A0=A0 return;
>> +=A0=A0=A0 if (ret)
>> +=A0=A0=A0=A0=A0=A0=A0 return ret;
>> +
>> +=A0=A0=A0 if (intel_uc_uses_huc(uc)) {
>> +=A0=A0=A0=A0=A0=A0=A0 ret =3D intel_huc_init(huc);
>> +=A0=A0=A0=A0=A0=A0=A0 if (ret)
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 goto out_guc;
>> =A0=A0=A0=A0 }
>> -=A0=A0=A0 if (intel_uc_uses_huc(uc))
>> -=A0=A0=A0=A0=A0=A0=A0 intel_huc_init(huc);
>> +=A0=A0=A0 return 0;
>> +
>> +out_guc:
>> +=A0=A0=A0 intel_guc_fini(guc);
>> +=A0=A0=A0 return ret;
>> =A0}
>> static void __uc_fini(struct intel_uc *uc)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h =

>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> index 35ce8a6be88b..480965504679 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>> @@ -16,7 +16,7 @@ struct intel_uc_ops {
>> =A0=A0=A0=A0 int (*sanitize)(struct intel_uc *uc);
>> =A0=A0=A0=A0 void (*init_fw)(struct intel_uc *uc);
>> =A0=A0=A0=A0 void (*fini_fw)(struct intel_uc *uc);
>> -=A0=A0=A0 void (*init)(struct intel_uc *uc);
>> +=A0=A0=A0 int (*init)(struct intel_uc *uc);
>> =A0=A0=A0=A0 void (*fini)(struct intel_uc *uc);
>> =A0=A0=A0=A0 int (*init_hw)(struct intel_uc *uc);
>> =A0=A0=A0=A0 void (*fini_hw)(struct intel_uc *uc);
>> @@ -89,7 +89,7 @@ static inline _TYPE intel_uc_##_NAME(struct intel_uc =

>> *uc) \
>> =A0intel_uc_ops_function(sanitize, sanitize, int, 0);
>> =A0intel_uc_ops_function(fetch_firmwares, init_fw, void, );
>> =A0intel_uc_ops_function(cleanup_firmwares, fini_fw, void, );
>> -intel_uc_ops_function(init, init, void, );
>> +intel_uc_ops_function(init, init, int, 0);
>> =A0intel_uc_ops_function(fini, fini, void, );
>> =A0intel_uc_ops_function(init_hw, init_hw, int, 0);
>> =A0intel_uc_ops_function(fini_hw, fini_hw, void, );
> =

> with redundant (?) fw cleanups clarified,
> =

> Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

The re-org of the fw_cleanups is done separately in the next patch, =

since it isn't as straightforward as just dropping the call. Is that =

enough for the r-b on this patch or do you want something more?

Daniele
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
