Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B89D716F9FD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2020 09:51:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD50A89ECD;
	Wed, 26 Feb 2020 08:51:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6147389E41
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2020 08:51:08 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 00:51:07 -0800
X-IronPort-AV: E=Sophos;i="5.70,487,1574150400"; d="scan'208";a="226649760"
Received: from mkoeck-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.250])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Feb 2020 00:51:06 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: "Stimson\, Dale B" <dale.b.stimson@intel.com>
In-Reply-To: <20200225210738.GA70617@dbstims-dev.fm.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200224113312.13674-1-jani.nikula@intel.com>
 <20200225210738.GA70617@dbstims-dev.fm.intel.com>
Date: Wed, 26 Feb 2020 10:51:24 +0200
Message-ID: <8736axu3xv.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: stop assigning drm->dev_private
 pointer
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 25 Feb 2020, "Stimson, Dale B" <dale.b.stimson@intel.com> wrote:
> On 2020-02-24 13:33:12, Jani Nikula wrote:
>> We no longer need or use it as we subclass struct drm_device in our
>> struct drm_i915_private, and can always use to_i915() to get at
>> i915. Stop assigning the pointer to catch anyone trying to add new users
>> for ->dev_private.
>> 
>> Cc: Chris Wilson <chris@chris-wilson.co.uk>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Dale B Stimson <dale.b.stimson@intel.com>

Thanks for the review, pushed to dinq.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.c                  | 2 --
>>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 1 -
>>  2 files changed, 3 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_drv.c b/drivers/gpu/drm/i915/i915_drv.c
>> index 4034e431cc4c..d5aed3b7d7e3 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.c
>> +++ b/drivers/gpu/drm/i915/i915_drv.c
>> @@ -1372,8 +1372,6 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>>  		return ERR_PTR(err);
>>  	}
>>  
>> -	i915->drm.dev_private = i915;
>> -
>>  	i915->drm.pdev = pdev;
>>  	pci_set_drvdata(pdev, i915);
>>  
>> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>> index 3b8986983afc..754d0eb6beaa 100644
>> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>> @@ -144,7 +144,6 @@ struct drm_i915_private *mock_gem_device(void)
>>  		goto put_device;
>>  	}
>>  	i915->drm.pdev = pdev;
>> -	i915->drm.dev_private = i915;
>>  
>>  	intel_runtime_pm_init_early(&i915->runtime_pm);
>>  
>> -- 
>> 2.20.1
>> 
>> _______________________________________________
>> Intel-gfx mailing list
>> Intel-gfx@lists.freedesktop.org
>> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
