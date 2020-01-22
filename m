Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BA98145995
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2020 17:15:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE4ED6F5CF;
	Wed, 22 Jan 2020 16:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D1896F5CF
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2020 16:15:20 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 08:15:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,350,1574150400"; d="scan'208";a="374963980"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by orsmga004.jf.intel.com with ESMTP; 22 Jan 2020 08:15:19 -0800
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Wed, 22 Jan 2020 08:15:18 -0800
Received: from fmsmsx108.amr.corp.intel.com ([169.254.9.51]) by
 fmsmsx120.amr.corp.intel.com ([169.254.15.223]) with mapi id 14.03.0439.000;
 Wed, 22 Jan 2020 08:15:18 -0800
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/5] drm/i915/gem: Convert vm idr to xarray
Thread-Index: AQHVz39Zf5VImNV9pkCJoHqsxsmDwaf21OiAgACOmgD//3qRgA==
Date: Wed, 22 Jan 2020 16:15:17 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663EE18F465@FMSMSX108.amr.corp.intel.com>
References: <20200120104924.4000706-1-chris@chris-wilson.co.uk>
 <20200120104924.4000706-4-chris@chris-wilson.co.uk>
 <14063C7AD467DE4B82DEDB5C278E8663EE18F37E@FMSMSX108.amr.corp.intel.com>
 <157970931487.7477.3304015911577031575@skylake-alporthouse-com>
In-Reply-To: <157970931487.7477.3304015911577031575@skylake-alporthouse-com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiNTVmZjY4NTEtMGExNy00ZTlkLWFkNGItZGI0NTZmZmJhNTRjIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoib1hwOVlrd1hpNU94Z0ZJSnFIWmRWY3l0N2ZCcFUwVWwwNHhOTnBOSWJxQzZPZk45MGlvM2s2dWl4MkhrMGl1WSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 4/5] drm/i915/gem: Convert vm idr to xarray
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
Cc: "Auld, Matthew" <matthew.auld@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



>-----Original Message-----
>From: Chris Wilson <chris@chris-wilson.co.uk>
>Sent: Wednesday, January 22, 2020 11:09 AM
>To: Ruhl, Michael J <michael.j.ruhl@intel.com>; intel-
>gfx@lists.freedesktop.org
>Cc: Auld, Matthew <matthew.auld@intel.com>
>Subject: RE: [Intel-gfx] [PATCH 4/5] drm/i915/gem: Convert vm idr to xarray
>
>Quoting Ruhl, Michael J (2020-01-22 16:00:25)
>> >-----Original Message-----
>> >From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>Chris
>> >Wilson
>> >@@ -876,23 +868,13 @@ int i915_gem_vm_create_ioctl(struct drm_device
>> >*dev, void *data,
>> >                       goto err_put;
>> >       }
>> >
>> >-      err = mutex_lock_interruptible(&file_priv->vm_idr_lock);
>> >+      err = xa_alloc(&file_priv->vm_xa, &args->vm_id,
>> >+                     &ppgtt->vm, xa_limit_32b, GFP_KERNEL);
>> >       if (err)
>> >               goto err_put;
>> >
>> >-      err = idr_alloc(&file_priv->vm_idr, &ppgtt->vm, 0, 0, GFP_KERNEL);
>> >-      if (err < 0)
>> >-              goto err_unlock;
>> >-
>> >-      GEM_BUG_ON(err == 0); /* reserved for invalid/unassigned ppgtt */
>>
>> Moving this comment to the xa_init_flags() would help me understand
>> why the index started at 1.
>
>Hey, I take 0 being reserved for granted, and had to think about why
>the context_xa was not 1-biased!
>
>> >@@ -1021,35 +991,27 @@ static int get_ppgtt(struct drm_i915_file_private
>> >*file_priv,
>> >                    struct drm_i915_gem_context_param *args)
>> > {
>> >       struct i915_address_space *vm;
>> >-      int ret;
>> >+      int err = -ENODEV;
>> >+      u32 id;
>> >
>> >       if (!rcu_access_pointer(ctx->vm))
>> >               return -ENODEV;
>> >
>> >       rcu_read_lock();
>> >       vm = context_get_vm_rcu(ctx);
>> >+      if (vm)
>> >+              err = xa_alloc(&file_priv->vm_xa, &id, vm,
>> >+                             xa_limit_32b, GFP_KERNEL);
>> >       rcu_read_unlock();
>> >+      if (!err) {
>> >+              i915_vm_open(vm);
>>
>> Why did you switch to success path in the if here?
>
>No good reason, just simple enough to fit inside one if {}.
>
>> Can you do:
>>
>> if (err)
>>         goto err_put;
>>
>> ?
>>
>> >-      ret = mutex_lock_interruptible(&file_priv->vm_idr_lock);
>> >-      if (ret)
>> >-              goto err_put;
>> >-
>> >-      ret = idr_alloc(&file_priv->vm_idr, vm, 0, 0, GFP_KERNEL);
>> >-      GEM_BUG_ON(!ret);
>> >-      if (ret < 0)
>> >-              goto err_unlock;
>> >-
>> >-      i915_vm_open(vm);
>> >-
>> >-      args->size = 0;
>> >-      args->value = ret;
>> >+              args->size = 0;
>> >+              args->value = id;
>>
>> Would passing args->value to the xa_alloc be a useful?
>
>General rule is not to alter user params except on success. While not
>always required, the pattern does help to avoid common pitfalls where
>userspace has to repeat an ioctl (e.g. SIGINT).

Yup.  Following that rule, xa_array() will only update the value on success.

I was mostly commenting on it because you had done that in the previous
xa_alloc call.

Thanks,

Mike

>-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
