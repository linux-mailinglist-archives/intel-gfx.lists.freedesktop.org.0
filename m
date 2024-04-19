Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 560248AAB2F
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 11:07:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2852310E31C;
	Fri, 19 Apr 2024 09:06:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HhzAgZLX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AC7B10E2DC;
 Fri, 19 Apr 2024 09:06:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713517617; x=1745053617;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=QknvQDWz+txi0VHnPOaiTyQsp4q+8x8yzrWHgfL3oS4=;
 b=HhzAgZLXP/o/F4Kt4S+bwQZOe1tzEeOYvxaOVKPToZZNJHYwC7bkD59Z
 66uT+ZzW33wFGK4G62exAQFK3F8b2a6hOPeF/GHW/931XzmVNGQFPdDhZ
 jo4JxHoLee6/peMRJbMV+BPpJPUdPQLFh52sh53rMks4uT7BzONgdz/NB
 0tS1PDup68J/aFgQw/hvnM5iD+GF1bPuSwvQ0coJvoxzsjrmaPrMmVCLY
 5ZOT9jjKZgB9Dy6c0V1rtDFJHnVqAzvYkTb7T9BoWuFTZqbsYabtXzBdS
 3TxHfT4X/8sLKed9EcXjNN4YMr1Wo/Ssf7+DQMr26SuUcLR9BJKtyDUVB A==;
X-CSE-ConnectionGUID: Asr0wyYWS9ynrD1JrcFUAQ==
X-CSE-MsgGUID: YWg9GDZ/QduSaT6UbwMo5g==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="19719546"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="19719546"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:06:56 -0700
X-CSE-ConnectionGUID: NoMmJl9kSMCVQrW7z+c+7w==
X-CSE-MsgGUID: zL63aT76SZ2OKyxJf1V/Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="28108071"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 02:06:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: imre.deak@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Francois Dugast <francois.dugast@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH] drm/i915: Convert intel_runtime_pm_get_noresume towards
 raw wakeref
In-Reply-To: <ZiGzwL7Rq6OzWCbb@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ZiGe/Tqo94YbxOnm@ideak-desk.fi.intel.com>
 <20240418223756.68427-1-rodrigo.vivi@intel.com>
 <ZiGzwL7Rq6OzWCbb@ideak-desk.fi.intel.com>
Date: Fri, 19 Apr 2024 12:06:48 +0300
Message-ID: <87a5lpwwk7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 19 Apr 2024, Imre Deak <imre.deak@intel.com> wrote:
> On Thu, Apr 18, 2024 at 06:37:56PM -0400, Rodrigo Vivi wrote:
>> In the past, the noresume function was used by the GEM code to ensure
>> wakelocks were held and bump its usage. This is no longer the case
>> and this function was totally unused until it started to be used again
>> by display with commit 77e619a82fc3 ("drm/i915/display: convert inner
>> wakeref get towards get_if_in_use")
>>=20
>> However, on the display code, most of the callers are using the
>> raw wakeref, rather then the wakelock version. What caused a
>> major regression caught by CI.
>>=20
>> Another option to this patch is to go with the original plan and
>> use the get_if_in_use variant in the display code, what is enough
>> to fulfil our needs. Then, an extra patch to delete the unused
>> _noresume variant.
>>=20
>> v2: Keep grabbing wakelock but only assert for wakeref. (Imre)
>>=20
>> Cc: Imre Deak <imre.deak@intel.com>
>> Cc: Francois Dugast <francois.dugast@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Fixes: 77e619a82fc3 ("drm/i915/display: convert inner wakeref get toward=
s get_if_in_use")
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10875
>> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks for the patch and review. Pushed to drm-xe-next where the
offending commit was pushed.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_power.c |  6 ------
>>  drivers/gpu/drm/i915/intel_runtime_pm.c            | 14 +++++---------
>>  2 files changed, 5 insertions(+), 15 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/driver=
s/gpu/drm/i915/display/intel_display_power.c
>> index 048943d0a881..03dc7edcc443 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
>> @@ -640,12 +640,6 @@ release_async_put_domains(struct i915_power_domains=
 *power_domains,
>>  	enum intel_display_power_domain domain;
>>  	intel_wakeref_t wakeref;
>>=20=20
>> -	/*
>> -	 * The caller must hold already raw wakeref, upgrade that to a proper
>> -	 * wakeref to make the state checker happy about the HW access during
>> -	 * power well disabling.
>> -	 */
>> -	assert_rpm_raw_wakeref_held(rpm);
>>  	wakeref =3D intel_runtime_pm_get_noresume(rpm);
>>=20=20
>>  	for_each_power_domain(domain, mask) {
>> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i=
915/intel_runtime_pm.c
>> index d4e844128826..2d0647aca964 100644
>> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
>> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
>> @@ -272,15 +272,11 @@ intel_wakeref_t intel_runtime_pm_get_if_active(str=
uct intel_runtime_pm *rpm)
>>   * intel_runtime_pm_get_noresume - grab a runtime pm reference
>>   * @rpm: the intel_runtime_pm structure
>>   *
>> - * This function grabs a device-level runtime pm reference (mostly used=
 for GEM
>> - * code to ensure the GTT or GT is on).
>> + * This function grabs a device-level runtime pm reference.
>>   *
>> - * It will _not_ power up the device but instead only check that it's p=
owered
>> - * on.  Therefore it is only valid to call this functions from contexts=
 where
>> - * the device is known to be powered up and where trying to power it up=
 would
>> - * result in hilarity and deadlocks. That pretty much means only the sy=
stem
>> - * suspend/resume code where this is used to grab runtime pm references=
 for
>> - * delayed setup down in work items.
>> + * It will _not_ resume the device but instead only get an extra wakere=
f.
>> + * Therefore it is only valid to call this functions from contexts where
>> + * the device is known to be active and with another wakeref previously=
 hold.
>>   *
>>   * Any runtime pm reference obtained by this function must have a symme=
tric
>>   * call to intel_runtime_pm_put() to release the reference again.
>> @@ -289,7 +285,7 @@ intel_wakeref_t intel_runtime_pm_get_if_active(struc=
t intel_runtime_pm *rpm)
>>   */
>>  intel_wakeref_t intel_runtime_pm_get_noresume(struct intel_runtime_pm *=
rpm)
>>  {
>> -	assert_rpm_wakelock_held(rpm);
>> +	assert_rpm_raw_wakeref_held(rpm);
>>  	pm_runtime_get_noresume(rpm->kdev);
>>=20=20
>>  	intel_runtime_pm_acquire(rpm, true);
>> --=20
>> 2.44.0
>>=20

--=20
Jani Nikula, Intel
