Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A78B7A23B4
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Sep 2023 18:39:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC4E010E64A;
	Fri, 15 Sep 2023 16:39:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B66A010E64A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Sep 2023 16:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694795965; x=1726331965;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=rPpccQvkwanVQobn8M0dHaZK5+diPY8cjKzM+EK66zE=;
 b=OQRqsNdzC7vdsSaySJFfQaSnP7ZUJcoUX6D/A2qKgCXHPQe2jBtZKaos
 wWYXUnCXoX9XbHOj0cdPYoxHjT8AdMxQ5r44cChyoTd4DL/ysZgwwBJCO
 9x2Vb9RbmaNH4nSwKpYKj96h71cWVOVSctUvuLtHOHRogKkorXs/auvNy
 mn/nTF7Hq9Q8dQkEVewGemQrO2iQcw9NAEqIVD5bvaVjVFVShKicBWt8B
 wDYuS10dO9Z4KGrbxRHsGKe8yOfsMT/0giV7WGiFnF8MGjiMxhcNqn1Zp
 Gkz5/vN5PQxkpK/ncH/g0gO69k7sWtXCtjKCdl1ZS9D+xKIGq38DcTL/5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="359547893"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="359547893"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 09:39:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10834"; a="860227677"
X-IronPort-AV: E=Sophos;i="6.02,149,1688454000"; d="scan'208";a="860227677"
Received: from azafrani-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.177])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2023 09:39:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <87v8cfvzvs.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230912120537.2158209-1-jani.nikula@intel.com>
 <20230912120537.2158209-3-jani.nikula@intel.com>
 <20230912205720.GM2706891@mdroper-desk1.amr.corp.intel.com>
 <87v8cfvzvs.fsf@intel.com>
Date: Fri, 15 Sep 2023 19:39:18 +0300
Message-ID: <877corv1ah.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: move
 intel_display_device_probe() one level higher
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 13 Sep 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Tue, 12 Sep 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
>> On Tue, Sep 12, 2023 at 03:05:37PM +0300, Jani Nikula wrote:
>>> Don't hide display probe in device info code.
>>> 
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/i915_driver.c               | 2 ++
>>>  drivers/gpu/drm/i915/intel_device_info.c         | 2 --
>>>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
>>>  3 files changed, 4 insertions(+), 2 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>> index f8dbee7a5af7..b5e1f72cc3ce 100644
>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> @@ -735,6 +735,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>>>  	/* Set up device info and initial runtime info. */
>>>  	intel_device_info_driver_create(i915, pdev->device, match_info);
>>>  
>>> +	intel_display_device_probe(i915);
>>> +
>>>  	return i915;
>>>  }
>>>  
>>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>>> index b9b8b22540cb..d2ed0f057cb2 100644
>>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>>> @@ -418,8 +418,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>>>  	runtime = RUNTIME_INFO(i915);
>>>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>>>  
>>> -	intel_display_device_probe(i915);
>>> -
>>>  	runtime->device_id = device_id;
>>>  }
>>>  
>>> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>>> index da0b269606c5..7de6477803f8 100644
>>> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>>> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>>> @@ -181,6 +181,8 @@ struct drm_i915_private *mock_gem_device(void)
>>>  	/* Set up device info and initial runtime info. */
>>>  	intel_device_info_driver_create(i915, pdev->device, &mock_info);
>>>  
>>> +	intel_display_device_probe(i915);
>>> +
>>
>> I realize this call was already happening with the old code, but do we
>> really want to be probing the (real) display hardware while setting up
>> mock (fake hardware) selftests?  I don't think any of the mock tests
>> should be doing anything display-related, and if they did we'd probably
>> want to add some kind of mock_display_device_probe() instead or using
>> the real hardware?
>
> Thought about it, probably not, but decided it should be a separate
> patch.

Interestingly, the mock code does not set pdev->device, i.e. the device
ID remains 0, and the old style display code would find no
display. However, the GMD ID check goes ahead and probes display. So the
mock device will have display on recognized GMD ID machines. Should fix
that.

BR,
Jani.




>
> BR,
> Jani.
>
>>
>>
>> Matt
>>
>>>  	dev_pm_domain_set(&pdev->dev, &pm_domain);
>>>  	pm_runtime_enable(&pdev->dev);
>>>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
>>> -- 
>>> 2.39.2
>>> 

-- 
Jani Nikula, Intel
