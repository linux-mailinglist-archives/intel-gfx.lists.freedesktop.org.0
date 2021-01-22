Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8362F300D5D
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Jan 2021 21:10:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 735CF8991A;
	Fri, 22 Jan 2021 20:09:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07E798991A
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Jan 2021 20:09:55 +0000 (UTC)
IronPort-SDR: KKAvLdYlDt5TZRPywmB2NuK2C0uffoW7rVoO41u2KzCZ2YIdmIrSrCKlcdNSk5DZGJTKsL4qWk
 XJpJjrlz/QjA==
X-IronPort-AV: E=McAfee;i="6000,8403,9872"; a="243576665"
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="243576665"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2021 12:09:52 -0800
IronPort-SDR: HRsVZp3dXa4KOumXxoKx5dFf8aqsjGPv/LIhpPyP0GtEPvwkyzCvJVPCvn66RTuTa6tH+m4Jjo
 aShQsi15xRHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,367,1602572400"; d="scan'208";a="400929933"
Received: from irsmsx604.ger.corp.intel.com ([163.33.146.137])
 by fmsmga004.fm.intel.com with ESMTP; 22 Jan 2021 12:09:51 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 IRSMSX604.ger.corp.intel.com (163.33.146.137) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 22 Jan 2021 20:09:48 +0000
Received: from orsmsx611.amr.corp.intel.com ([10.22.229.24]) by
 ORSMSX611.amr.corp.intel.com ([10.22.229.24]) with mapi id 15.01.1713.004;
 Fri, 22 Jan 2021 12:09:46 -0800
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Matthew Auld <matthew.william.auld@gmail.com>, Chris Wilson
 <chris@chris-wilson.co.uk>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/gem: Allow importing of shmemfs
 objects into any device
Thread-Index: AQHW70KdpAbIP4JKaEGvKppokP/umqoxT90AgALGS3A=
Date: Fri, 22 Jan 2021 20:09:46 +0000
Message-ID: <d18b9f773c394a5d98a19943df04225a@intel.com>
References: <20210120154019.5146-1-chris@chris-wilson.co.uk>
 <CAM0jSHPUoT2eKs0MgUoJ9UBB96hgtZGmQuZSDrE8vGkRSOXpoQ@mail.gmail.com>
In-Reply-To: <CAM0jSHPUoT2eKs0MgUoJ9UBB96hgtZGmQuZSDrE8vGkRSOXpoQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Allow importing of shmemfs
 objects into any device
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>, "Auld,
 Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>Matthew Auld
>Sent: Wednesday, January 20, 2021 12:46 PM
>To: Chris Wilson <chris@chris-wilson.co.uk>
>Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>; Auld,
>Matthew <matthew.auld@intel.com>
>Subject: Re: [Intel-gfx] [PATCH] drm/i915/gem: Allow importing of shmemfs
>objects into any device
>
>On Wed, 20 Jan 2021 at 15:40, Chris Wilson <chris@chris-wilson.co.uk> wrote:
>>
>> If we import a shmemfs object between devices, for example from
>> Tigerlake to DG1, we can simply reuse the native object and its backing
>> store.
>
>Hmmm interesting, so does that include re-using the actual sg mapping
>for the backing pages? Does that work out-of-the-box between different
>devices assuming we have iommu enabled?
>
>>
>> Suggested-by: Imre Deak <imre.deak@intel.com>
>> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
>> Cc: Matthew Auld <matthew.auld@intel.com>
>> Cc: Imre Deak <imre.deak@intel.com>
>> ---
>>  drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> index 04e9c04545ad..4816f08c4009 100644
>> --- a/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> +++ b/drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c
>> @@ -242,6 +242,13 @@ struct drm_gem_object
>*i915_gem_prime_import(struct drm_device *dev,
>>                          */
>>                         return &i915_gem_object_get(obj)->base;
>>                 }
>> +
>> +               /*
>> +                * If the object is in plain system memory, we can reuse the
>> +                * same backing store in any device.
>> +                */
>> +               if (i915_gem_object_is_shmem(obj))
>> +                       return &i915_gem_object_get(obj)->base;
>>         }

So this would mean sharing all of the object attributes between devices (pin count, etc)?

I.e. vma list etc?

Would that work?

Mike

>>         /* need to attach */
>> --
>> 2.20.1
>>
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
