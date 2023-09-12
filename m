Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF7D79DB03
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 23:35:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC8EA10E00E;
	Tue, 12 Sep 2023 21:35:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0779E10E00E
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 21:35:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694554524; x=1726090524;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=CCejjO44ffsfDvdJhXFtsdOfwQODM1Ij+JIawZj/JEw=;
 b=jSQPnk5Ug+7/EUrYtWEREQ23YkE7/V+4h2dZUEA63cloLD9nHllzT0xi
 P+GJzSRZbFfbSQdyG9A7ZmRZDo3g8QKY+qS878rOz9jQXdk8EE424bVzt
 iLAAio+NC/LvzZp6KqXJ0WjPJt3XuR9zWzGQO+dDjuqiYdWOzQ8ingK9+
 uRdjeFF7VGhCnMP01zxEJkLg4OHQkLsssoQ+O3Ka3E4MxqS08znNHcz7J
 mK2caLf3EO0eBG+nFDwWf/MfW9quXlGOc45/75RUAsSfi9f15zWrY1nBS
 ApQpiql+cW0CNMrBSHwsSjkWCXKKBuz0hLgjEL2My/GNiGA062SrfP8sm g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="375826958"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="375826958"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 14:35:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="834055875"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="834055875"
Received: from kscholl-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.206])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 14:35:22 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20230912205720.GM2706891@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230912120537.2158209-1-jani.nikula@intel.com>
 <20230912120537.2158209-3-jani.nikula@intel.com>
 <20230912205720.GM2706891@mdroper-desk1.amr.corp.intel.com>
Date: Wed, 13 Sep 2023 00:35:19 +0300
Message-ID: <87v8cfvzvs.fsf@intel.com>
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

On Tue, 12 Sep 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Tue, Sep 12, 2023 at 03:05:37PM +0300, Jani Nikula wrote:
>> Don't hide display probe in device info code.
>> 
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_driver.c               | 2 ++
>>  drivers/gpu/drm/i915/intel_device_info.c         | 2 --
>>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 ++
>>  3 files changed, 4 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index f8dbee7a5af7..b5e1f72cc3ce 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -735,6 +735,8 @@ i915_driver_create(struct pci_dev *pdev, const struct pci_device_id *ent)
>>  	/* Set up device info and initial runtime info. */
>>  	intel_device_info_driver_create(i915, pdev->device, match_info);
>>  
>> +	intel_display_device_probe(i915);
>> +
>>  	return i915;
>>  }
>>  
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>> index b9b8b22540cb..d2ed0f057cb2 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -418,8 +418,6 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>>  	runtime = RUNTIME_INFO(i915);
>>  	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>>  
>> -	intel_display_device_probe(i915);
>> -
>>  	runtime->device_id = device_id;
>>  }
>>  
>> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>> index da0b269606c5..7de6477803f8 100644
>> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
>> @@ -181,6 +181,8 @@ struct drm_i915_private *mock_gem_device(void)
>>  	/* Set up device info and initial runtime info. */
>>  	intel_device_info_driver_create(i915, pdev->device, &mock_info);
>>  
>> +	intel_display_device_probe(i915);
>> +
>
> I realize this call was already happening with the old code, but do we
> really want to be probing the (real) display hardware while setting up
> mock (fake hardware) selftests?  I don't think any of the mock tests
> should be doing anything display-related, and if they did we'd probably
> want to add some kind of mock_display_device_probe() instead or using
> the real hardware?

Thought about it, probably not, but decided it should be a separate
patch.

BR,
Jani.

>
>
> Matt
>
>>  	dev_pm_domain_set(&pdev->dev, &pm_domain);
>>  	pm_runtime_enable(&pdev->dev);
>>  	pm_runtime_dont_use_autosuspend(&pdev->dev);
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
