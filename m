Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9569852BBBF
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 16:15:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D7A4810E2A3;
	Wed, 18 May 2022 14:15:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B83B10E2A3
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 14:15:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652883315; x=1684419315;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=InRZS07vRJcZRb4kV1ZihpFlCEm2PTIdQw3IDZoefps=;
 b=XlFKSvNhx1WuFJrIPt7iVKihUEaDyU8e++fIzGP1BbirxKaeQGqGKEw9
 MHNJQM3GaPh50Usz31vyeKipFw0EoBYzvccaRgBLwtXnUujAdYAh398Pb
 lWqOF2HfWzPXLbtRNpRvvBpbg0TSmPpLkZnUjdN3DAYG3GYvp5dXTwN5W
 82FhbsVPxPH0Sa+RCWXVcd+SSkGfLHolgKWq7D/v3EW32Vj6UYKZ5fMEi
 pwHB3gZWB4g3gDMdVHf1NFCwQr+TA/HRxRWJjvjqLQU0WeGaTObUjTFGv
 g4tdfRi6biwb9hI+lgn/S5bEfa/E/C/jVUC4ipBw8n9LJ8drKS+qxm+Q4 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="334737679"
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="334737679"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 07:15:14 -0700
X-IronPort-AV: E=Sophos;i="5.91,235,1647327600"; d="scan'208";a="742338807"
Received: from jwasiuki-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.133.47])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 07:15:12 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Michal Wajdeczko <michal.wajdeczko@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <fecf0889-c10b-3034-91d3-68add9cc9db1@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220518113315.1305027-1-jani.nikula@intel.com>
 <20220518113315.1305027-2-jani.nikula@intel.com>
 <fecf0889-c10b-3034-91d3-68add9cc9db1@intel.com>
Date: Wed, 18 May 2022 17:15:09 +0300
Message-ID: <875ym3dj0y.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/uc: Fix undefined behavior due
 to shift overflowing the constant
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
Cc: Randy Dunlap <rdunlap@infradead.org>, Borislav Petkov <bp@suse.de>,
 Ruiqi GONG <gongruiqi1@huawei.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 18 May 2022, Michal Wajdeczko <michal.wajdeczko@intel.com> wrote:
> On 18.05.2022 13:33, Jani Nikula wrote:
>> From: Borislav Petkov <bp@suse.de>
>>=20
>> Fix:
>>=20
>>   In file included from <command-line>:0:0:
>>   drivers/gpu/drm/i915/gt/uc/intel_guc.c: In function =E2=80=98intel_guc=
_send_mmio=E2=80=99:
>>   ././include/linux/compiler_types.h:352:38: error: call to =E2=80=98__c=
ompiletime_assert_1047=E2=80=99 \
>>   declared with attribute error: FIELD_PREP: mask is not constant
>>     _compiletime_assert(condition, msg, __compiletime_assert_, __COUNTER=
__)
>>=20
>> and other build errors due to shift overflowing values.
>>=20
>> See https://lore.kernel.org/r/YkwQ6%2BtIH8GQpuct@zn.tnic for the gory
>> details as to why it triggers with older gccs only.
>>=20
>> v2 by Jani:
>> - Drop the i915_reg.h changes
>>=20
>> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
>> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
>> Cc: Ruiqi GONG <gongruiqi1@huawei.com>
>> Cc: Randy Dunlap <rdunlap@infradead.org>
>> Signed-off-by: Borislav Petkov <bp@suse.de>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h           | 2 +-
>>  drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h | 2 +-
>>  drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h          | 2 +-
>>  drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h                 | 2 +-
>>  4 files changed, 4 insertions(+), 4 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h b/drivers/=
gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> index be9ac47fa9d0..4ef9990ed7f8 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_actions_abi.h
>> @@ -50,7 +50,7 @@
>>=20=20
>>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_LEN		(GUC_HXG_REQUEST_MSG_MIN_LEN=
 + 3u)
>>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_0_MBZ		GUC_HXG_REQUEST_MSG_0_DATA0
>> -#define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_KEY		(0xffff << 16)
>> +#define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_KEY		(0xffffU << 16)
>
> nit: maybe for consistency we should update all these hex constants to
> be explicitly marked as "unsigned" (as that was the intention) and also
> maybe we should use lowercase "u" - but both that can be done later,

For the guc reg stuff we should probably use REG_GENMASK() and
REG_FIELD_PREP() instead, like I did for i915_reg.h. I just don't know
about the plethora of other uc headers though...

> Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

Thanks,
Jani.

>
>>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_1_KLV_LEN		(0xffff << 0)
>>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_2_VALUE32		GUC_HXG_REQUEST_MSG_n_=
DATAn
>>  #define HOST2GUC_SELF_CFG_REQUEST_MSG_3_VALUE64		GUC_HXG_REQUEST_MSG_n_=
DATAn
>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h =
b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
>> index c9086a600bce..df83c1cc7c7a 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_communication_ctb_abi.h
>> @@ -82,7 +82,7 @@ static_assert(sizeof(struct guc_ct_buffer_desc) =3D=3D=
 64);
>>  #define GUC_CTB_HDR_LEN				1u
>>  #define GUC_CTB_MSG_MIN_LEN			GUC_CTB_HDR_LEN
>>  #define GUC_CTB_MSG_MAX_LEN			256u
>> -#define GUC_CTB_MSG_0_FENCE			(0xffff << 16)
>> +#define GUC_CTB_MSG_0_FENCE			(0xffffU << 16)
>>  #define GUC_CTB_MSG_0_FORMAT			(0xf << 12)
>>  #define   GUC_CTB_FORMAT_HXG			0u
>>  #define GUC_CTB_MSG_0_RESERVED			(0xf << 8)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h b/drivers=
/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
>> index 29ac823acd4c..7d5ba4d97d70 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/abi/guc_messages_abi.h
>> @@ -40,7 +40,7 @@
>>   */
>>=20=20
>>  #define GUC_HXG_MSG_MIN_LEN			1u
>> -#define GUC_HXG_MSG_0_ORIGIN			(0x1 << 31)
>> +#define GUC_HXG_MSG_0_ORIGIN			(0x1U << 31)
>>  #define   GUC_HXG_ORIGIN_HOST			0u
>>  #define   GUC_HXG_ORIGIN_GUC			1u
>>  #define GUC_HXG_MSG_0_TYPE			(0x7 << 28)
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/dr=
m/i915/gt/uc/intel_guc_reg.h
>> index 2516705b9f36..8dc063f087eb 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
>> @@ -28,7 +28,7 @@
>>  #define   GS_MIA_HALT_REQUESTED		  (0x02 << GS_MIA_SHIFT)
>>  #define   GS_MIA_ISR_ENTRY		  (0x04 << GS_MIA_SHIFT)
>>  #define   GS_AUTH_STATUS_SHIFT		30
>> -#define   GS_AUTH_STATUS_MASK		  (0x03 << GS_AUTH_STATUS_SHIFT)
>> +#define   GS_AUTH_STATUS_MASK		  (0x03U << GS_AUTH_STATUS_SHIFT)
>>  #define   GS_AUTH_STATUS_BAD		  (0x01 << GS_AUTH_STATUS_SHIFT)
>>  #define   GS_AUTH_STATUS_GOOD		  (0x02 << GS_AUTH_STATUS_SHIFT)
>>=20=20

--=20
Jani Nikula, Intel Open Source Graphics Center
