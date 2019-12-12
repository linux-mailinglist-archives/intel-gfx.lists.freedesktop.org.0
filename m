Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8948411DA21
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 00:38:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B361A6E22C;
	Thu, 12 Dec 2019 23:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A1466E22C
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 23:38:00 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 15:37:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="388486467"
Received: from dceraolo-linux.fm.intel.com (HELO [10.1.27.145]) ([10.1.27.145])
 by orsmga005.jf.intel.com with ESMTP; 12 Dec 2019 15:37:59 -0800
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20191210204744.65276-1-michal.wajdeczko@intel.com>
 <20191210204744.65276-2-michal.wajdeczko@intel.com>
 <0623f63e-372d-1047-896c-379e428ec6da@intel.com>
 <op.0cpgfrnfxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Message-ID: <cb8d152f-9619-8af4-280c-42567edef3d7@intel.com>
Date: Thu, 12 Dec 2019 15:38:08 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <op.0cpgfrnfxaggs7@mwajdecz-mobl1.ger.corp.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [RFC 1/4] drm/i915/uc: Add ops to intel_uc
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



On 12/12/19 1:53 PM, Michal Wajdeczko wrote:
> On Thu, 12 Dec 2019 01:23:33 +0100, Daniele Ceraolo Spurio =

> <daniele.ceraolospurio@intel.com> wrote:
> =

>>
>>
>> On 12/10/19 12:47 PM, Michal Wajdeczko wrote:
>>> Instead of spreading multiple conditionals across the uC code
>>> to find out current mode of uC operation, start using predefined
>>> set of function pointers that reflect that mode.
>>> =A0Begin with pair of init_hw/fini_hw functions that are responsible
>>> for uC hardware initialization and cleanup.
>>> =A0Signed-off-by: Michal Wajdeczko <michal.wajdeczko@intel.com>
>>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>>> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>>> ---
>>> =A0 drivers/gpu/drm/i915/gt/uc/intel_uc.c | 49 +++++++++++++++++++++++-=
---
>>> =A0 drivers/gpu/drm/i915/gt/uc/intel_uc.h | 23 +++++++++++--
>>> =A0 2 files changed, 63 insertions(+), 9 deletions(-)
>>> =A0diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c =

>>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> index c6519066a0f6..e3d1359f9719 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
>>> @@ -12,6 +12,10 @@
>>> =A0=A0=A0 #include "i915_drv.h"
>>> =A0 +extern const struct intel_uc_ops uc_ops_none;
>>> +extern const struct intel_uc_ops uc_ops_off;
>>> +extern const struct intel_uc_ops uc_ops_on;
>>> +
>>> =A0 /* Reset GuC providing us with fresh state for both GuC and HuC.
>>> =A0=A0 */
>>> =A0 static int __intel_uc_reset_hw(struct intel_uc *uc)
>>> @@ -89,6 +93,13 @@ void intel_uc_init_early(struct intel_uc *uc)
>>> =A0=A0=A0=A0=A0 intel_huc_init_early(&uc->huc);
>>> =A0=A0=A0=A0=A0=A0=A0 __confirm_options(uc);
>>> +
>>> +=A0=A0=A0 if (intel_uc_uses_guc(uc))
>>> +=A0=A0=A0=A0=A0=A0=A0 uc->ops =3D &uc_ops_on;
>>> +=A0=A0=A0 else if (intel_uc_supports_guc(uc))
>>> +=A0=A0=A0=A0=A0=A0=A0 uc->ops =3D &uc_ops_off;
>>> +=A0=A0=A0 else
>>> +=A0=A0=A0=A0=A0=A0=A0 uc->ops =3D &uc_ops_none;
>>> =A0 }
>>> =A0=A0=A0 void intel_uc_driver_late_release(struct intel_uc *uc)
>>> @@ -413,24 +424,36 @@ static bool uc_is_wopcm_locked(struct intel_uc =

>>> *uc)
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (intel_uncore_read(uncore, DMA_GUC=
_WOPCM_OFFSET) & =

>>> GUC_WOPCM_OFFSET_VALID);
>>> =A0 }
>>> =A0 -int intel_uc_init_hw(struct intel_uc *uc)
>>> +static int __uc_check_hw(struct intel_uc *uc)
>>> +{
>>> +=A0=A0=A0 GEM_BUG_ON(!intel_uc_supports_guc(uc));
>>> +
>>> +=A0=A0=A0 /*
>>> +=A0=A0=A0=A0 * We can silently continue without GuC only if it was nev=
er =

>>> enabled
>>> +=A0=A0=A0=A0 * before on this system after reboot, otherwise we risk G=
PU hangs.
>>> +=A0=A0=A0=A0 * To check if GuC was loaded before we look at WOPCM regi=
sters.
>>> +=A0=A0=A0=A0 */
>>> +=A0=A0=A0 if (uc_is_wopcm_locked(uc))
>>> +=A0=A0=A0=A0=A0=A0=A0 return -EIO;
>>> +
>>> +=A0=A0=A0 return 0;
>>> +}
>>> +
>>> +static int __uc_init_hw(struct intel_uc *uc)
>>> =A0 {
>>> =A0=A0=A0=A0=A0 struct drm_i915_private *i915 =3D uc_to_gt(uc)->i915;
>>> =A0=A0=A0=A0=A0 struct intel_guc *guc =3D &uc->guc;
>>> =A0=A0=A0=A0=A0 struct intel_huc *huc =3D &uc->huc;
>>> =A0=A0=A0=A0=A0 int ret, attempts;
>>> =A0 -=A0=A0=A0 if (!intel_uc_supports_guc(uc))
>>> -=A0=A0=A0=A0=A0=A0=A0 return 0;
>>> +=A0=A0=A0 GEM_BUG_ON(!intel_uc_supports_guc(uc));
>>> +=A0=A0=A0 GEM_BUG_ON(!intel_uc_uses_guc(uc));
>>> =A0=A0=A0=A0=A0=A0=A0 /*
>>> =A0=A0=A0=A0=A0=A0 * We can silently continue without GuC only if it wa=
s never =

>>> enabled
>>> =A0=A0=A0=A0=A0=A0 * before on this system after reboot, otherwise we r=
isk GPU =

>>> hangs.
>>> =A0=A0=A0=A0=A0=A0 * To check if GuC was loaded before we look at WOPCM=
 registers.
>>> =A0=A0=A0=A0=A0=A0 */
>>> -=A0=A0=A0 if (!intel_uc_uses_guc(uc) && !uc_is_wopcm_locked(uc))
>>> -=A0=A0=A0=A0=A0=A0=A0 return 0;
>>> -
>>> =A0=A0=A0=A0=A0 if (!intel_uc_fw_is_available(&guc->fw)) {
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0 ret =3D uc_is_wopcm_locked(uc) ||
>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 intel_uc_fw_is_overridden=
(&guc->fw) ||
>>> @@ -528,7 +551,7 @@ int intel_uc_init_hw(struct intel_uc *uc)
>>> =A0=A0=A0=A0=A0 return -EIO;
>>> =A0 }
>>> =A0 -void intel_uc_fini_hw(struct intel_uc *uc)
>>> +static void __uc_fini_hw(struct intel_uc *uc)
>>> =A0 {
>>> =A0=A0=A0=A0=A0 struct intel_guc *guc =3D &uc->guc;
>>> =A0 @@ -628,3 +651,15 @@ int intel_uc_runtime_resume(struct intel_uc *u=
c)
>>> =A0=A0=A0=A0=A0=A0 */
>>> =A0=A0=A0=A0=A0 return __uc_resume(uc, true);
>>> =A0 }
>>> +
>>> +const struct intel_uc_ops uc_ops_none =3D {
>>> +};
>>> +
>>> +const struct intel_uc_ops uc_ops_off =3D {
>>> +=A0=A0=A0 .init_hw =3D __uc_check_hw,
>>> +};
>>> +
>>
>> I'm not sold on having both uc_ops_off and uc_ops_none and I'd prefer =

>> them to be merged into one.
>> AFAICS, the only things you=A0 do in uc_ops_off are __intel_uc_reset_hw =

>> and __uc_check_hw. __intel_uc_reset_hw shouldn't be needed, we do a GT =

>> reset when we come up and we're not touching the microcontrollers if =

>> intel_uc_uses_guc is false, so there should be no need to reset them. =

>> for __uc_check_hw, we can add an early return if =

>> !intel_uc_supports_guc so it is callable on all platforms and add it =

>> to uc_ops_none.
> =

> I can drop uc_reset_hw from ops.off, but I would keep both off|none
> separate as otherwise we are blurring the idea of having dedicated
> ops without runtime checks (next step of such "merging/simplification"
> approach would be temptation to add more checks into existing ops,
> rather then preparing dedicated one). Note that we may soon add
> ops to other components and we should be consistent on usage model.

Having a dedicated set of ops just to avoid 1 runtime check seems =

overkill in the other direction to me. AFAICS We only care about the =

difference between !supported and !enabled is the init flow because the =

HW can go in a weird state if we switch from GuC enabled to disabled, so =

I doubt similar checks could proliferate since the 2 cases should be =

identical in all other paths. Or do you have a more concrete example of =

another place where the difference matters?

Daniele

> =

> Michal
> =

>>
>> Daniele
>>
>>> +const struct intel_uc_ops uc_ops_on =3D {
>>> +=A0=A0=A0 .init_hw =3D __uc_init_hw,
>>> +=A0=A0=A0 .fini_hw =3D __uc_fini_hw,
>>> +};
>>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h =

>>> b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>>> index 527995c21196..36643e17a09e 100644
>>> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
>>> @@ -10,7 +10,15 @@
>>> =A0 #include "intel_huc.h"
>>> =A0 #include "i915_params.h"
>>> =A0 +struct intel_uc;
>>> +
>>> +struct intel_uc_ops {
>>> +=A0=A0=A0 int (*init_hw)(struct intel_uc *uc);
>>> +=A0=A0=A0 void (*fini_hw)(struct intel_uc *uc);
>>> +};
>>> +
>>> =A0 struct intel_uc {
>>> +=A0=A0=A0 struct intel_uc_ops const *ops;
>>> =A0=A0=A0=A0=A0 struct intel_guc guc;
>>> =A0=A0=A0=A0=A0 struct intel_huc huc;
>>> =A0 @@ -25,8 +33,6 @@ void intel_uc_fetch_firmwares(struct intel_uc *uc=
);
>>> =A0 void intel_uc_cleanup_firmwares(struct intel_uc *uc);
>>> =A0 void intel_uc_sanitize(struct intel_uc *uc);
>>> =A0 void intel_uc_init(struct intel_uc *uc);
>>> -int intel_uc_init_hw(struct intel_uc *uc);
>>> -void intel_uc_fini_hw(struct intel_uc *uc);
>>> =A0 void intel_uc_fini(struct intel_uc *uc);
>>> =A0 void intel_uc_reset_prepare(struct intel_uc *uc);
>>> =A0 void intel_uc_suspend(struct intel_uc *uc);
>>> @@ -64,4 +70,17 @@ static inline bool intel_uc_uses_huc(struct =

>>> intel_uc *uc)
>>> =A0=A0=A0=A0=A0 return intel_huc_is_enabled(&uc->huc);
>>> =A0 }
>>> =A0 +static inline int intel_uc_init_hw(struct intel_uc *uc)
>>> +{
>>> +=A0=A0=A0 if (uc->ops->init_hw)
>>> +=A0=A0=A0=A0=A0=A0=A0 return uc->ops->init_hw(uc);
>>> +=A0=A0=A0 return 0;
>>> +}
>>> +
>>> +static inline void intel_uc_fini_hw(struct intel_uc *uc)
>>> +{
>>> +=A0=A0=A0 if (uc->ops->fini_hw)
>>> +=A0=A0=A0=A0=A0=A0=A0 uc->ops->fini_hw(uc);
>>> +}
>>> +
>>> =A0 #endif
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
