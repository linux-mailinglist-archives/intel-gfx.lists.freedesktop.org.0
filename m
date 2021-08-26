Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B583F83DF
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Aug 2021 10:41:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031656E55C;
	Thu, 26 Aug 2021 08:41:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9190C6E544
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Aug 2021 08:41:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10087"; a="217735025"
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="217735025"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 01:41:48 -0700
X-IronPort-AV: E=Sophos;i="5.84,353,1620716400"; d="scan'208";a="527757007"
Received: from jwhogabo-mobl2.amr.corp.intel.com (HELO localhost)
 ([10.249.45.163])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2021 01:41:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>
In-Reply-To: <YSZhFypIGty4XvPO@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20210825150623.28980-1-jani.nikula@intel.com>
 <YSZhFypIGty4XvPO@intel.com>
Date: Thu, 26 Aug 2021 11:41:43 +0300
Message-ID: <87zgt4d2d4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pci: rename functions to have
 i915_pci prefix
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

On Wed, 25 Aug 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> On Wed, Aug 25, 2021 at 06:06:23PM +0300, Jani Nikula wrote:
>> Follow the usual naming conventions. While at it, fix i915_pci.h SPDX
>> license comment format and add header include guards.
>>=20
>> Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, pushed to drm-intel-gt-next.

BR,
Jani.


>
>> ---
>>  drivers/gpu/drm/i915/i915_module.c |  4 ++--
>>  drivers/gpu/drm/i915/i915_pci.c    |  4 ++--
>>  drivers/gpu/drm/i915/i915_pci.h    | 12 ++++++++----
>>  3 files changed, 12 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/i915_module.c b/drivers/gpu/drm/i915/i=
915_module.c
>> index d8b4482c69d0..ab2295dd4500 100644
>> --- a/drivers/gpu/drm/i915/i915_module.c
>> +++ b/drivers/gpu/drm/i915/i915_module.c
>> @@ -67,8 +67,8 @@ static const struct {
>>  	{ .init =3D i915_mock_selftests },
>>  	{ .init =3D i915_pmu_init,
>>  	  .exit =3D i915_pmu_exit },
>> -	{ .init =3D i915_register_pci_driver,
>> -	  .exit =3D i915_unregister_pci_driver },
>> +	{ .init =3D i915_pci_register_driver,
>> +	  .exit =3D i915_pci_unregister_driver },
>>  	{ .init =3D i915_perf_sysctl_register,
>>  	  .exit =3D i915_perf_sysctl_unregister },
>>  };
>> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915=
_pci.c
>> index 96cfd6427cec..146f7e39182a 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.c
>> +++ b/drivers/gpu/drm/i915/i915_pci.c
>> @@ -1235,12 +1235,12 @@ static struct pci_driver i915_pci_driver =3D {
>>  	.driver.pm =3D &i915_pm_ops,
>>  };
>>=20=20
>> -int i915_register_pci_driver(void)
>> +int i915_pci_register_driver(void)
>>  {
>>  	return pci_register_driver(&i915_pci_driver);
>>  }
>>=20=20
>> -void i915_unregister_pci_driver(void)
>> +void i915_pci_unregister_driver(void)
>>  {
>>  	pci_unregister_driver(&i915_pci_driver);
>>  }
>> diff --git a/drivers/gpu/drm/i915/i915_pci.h b/drivers/gpu/drm/i915/i915=
_pci.h
>> index b386f319f52e..ee048c238174 100644
>> --- a/drivers/gpu/drm/i915/i915_pci.h
>> +++ b/drivers/gpu/drm/i915/i915_pci.h
>> @@ -1,8 +1,12 @@
>> +/* SPDX-License-Identifier: MIT */
>>  /*
>> - * SPDX-License-Identifier: MIT
>> - *
>>   * Copyright =C2=A9 2021 Intel Corporation
>>   */
>>=20=20
>> -int i915_register_pci_driver(void);
>> -void i915_unregister_pci_driver(void);
>> +#ifndef __I915_PCI_H__
>> +#define __I915_PCI_H__
>> +
>> +int i915_pci_register_driver(void);
>> +void i915_pci_unregister_driver(void);
>> +
>> +#endif /* __I915_PCI_H__ */
>> --=20
>> 2.20.1
>>=20

--=20
Jani Nikula, Intel Open Source Graphics Center
