Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1534367AF2B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 11:01:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62F5710E782;
	Wed, 25 Jan 2023 10:01:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0BE510E787
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 10:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674640911; x=1706176911;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=4KcMRUseVMXM+z6v09d9ofbEstkFoDNzn9picOO+oXo=;
 b=CnXzxAIANlgrsxVeTXy2/K2oPE5VFtgX0ch//pI3KaZLTeYfH6pNMs4P
 ChewSask68cJM0vbexKgZD6t4p2SxeLazJOoQloYtq9r0r3p1ELhVdF4c
 nc/4W6tFbIzINwliARtavb+bQZPEl6drz5MRhrZhjehNUnLL5EhWVrWOv
 6VLB0T8WPo7cQwcYMGsA4p53bJt8rMbai/a+CYF43Wudc8P9a2w9hK5KJ
 V5KOXznC+D86HrmYH0PrH0CDaGQ92Z43mvr3y2MHgRqOdkXjZOzW+tTfw
 GqnyR/2wOTsJZ8PKugUD2zsHLMjWaldPuBBVvCViEOD3/AJj9c7pfP5xt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="388867632"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="388867632"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 02:01:51 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="730988312"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="730988312"
Received: from dlyakhov-mobl1.ccr.corp.intel.com (HELO [10.252.46.223])
 ([10.252.46.223])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 02:01:49 -0800
Message-ID: <5fe279e6-0b3a-c399-b027-53be9bf7e3e4@linux.intel.com>
Date: Wed, 25 Jan 2023 11:01:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230125095603.17845-1-nirmoy.das@intel.com>
 <87wn5b540y.fsf@intel.com>
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <87wn5b540y.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: Pass drm_i915_private
 as param to i915 funcs
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/25/2023 10:58 AM, Jani Nikula wrote:
> On Wed, 25 Jan 2023, Nirmoy Das <nirmoy.das@intel.com> wrote:
>> For i915 functions pass struct drm_i915_private directly instead of
>> struct drm_device.
>>
>> v2: Use to_i915(dev) directly without alias(Andrzej).
>>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 8 ++++----
>>   drivers/gpu/drm/i915/display/intel_fbdev.h   | 8 ++++----
>>   drivers/gpu/drm/i915/i915_driver.c           | 2 +-
>>   4 files changed, 10 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index e37cca6b18c6..b014d8626ef7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -9004,7 +9004,7 @@ void intel_display_driver_register(struct drm_i915_private *i915)
>>   	 * enabled. We do it last so that the async config cannot run
>>   	 * before the connectors are registered.
>>   	 */
>> -	intel_fbdev_initial_config_async(&i915->drm);
>> +	intel_fbdev_initial_config_async(i915);
>>   
>>   	/*
>>   	 * We need to coordinate the hotplugs with the asynchronous
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> index 19f3b5d92a55..c2c52f8e5887 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -547,9 +547,9 @@ static void intel_fbdev_initial_config(void *data, async_cookie_t cookie)
>>   		intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
>>   }
>>   
>> -void intel_fbdev_initial_config_async(struct drm_device *dev)
>> +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
>>   {
>> -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
>> +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
> In follow-up, rename those dev_privs to i915. ;)


Challenge accepted :)


Thanks,

Nirmoy

>
> BR,
> Jani.
>
>>   
>>   	if (!ifbdev)
>>   		return;
>> @@ -686,9 +686,9 @@ void intel_fbdev_output_poll_changed(struct drm_device *dev)
>>   		drm_fb_helper_hotplug_event(&ifbdev->helper);
>>   }
>>   
>> -void intel_fbdev_restore_mode(struct drm_device *dev)
>> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv)
>>   {
>> -	struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
>> +	struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>>   
>>   	if (!ifbdev)
>>   		return;
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h b/drivers/gpu/drm/i915/display/intel_fbdev.h
>> index 0e95e9472fa3..04fd523a5023 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
>> @@ -15,12 +15,12 @@ struct intel_framebuffer;
>>   
>>   #ifdef CONFIG_DRM_FBDEV_EMULATION
>>   int intel_fbdev_init(struct drm_device *dev);
>> -void intel_fbdev_initial_config_async(struct drm_device *dev);
>> +void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv);
>>   void intel_fbdev_unregister(struct drm_i915_private *dev_priv);
>>   void intel_fbdev_fini(struct drm_i915_private *dev_priv);
>>   void intel_fbdev_set_suspend(struct drm_device *dev, int state, bool synchronous);
>>   void intel_fbdev_output_poll_changed(struct drm_device *dev);
>> -void intel_fbdev_restore_mode(struct drm_device *dev);
>> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv);
>>   struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev);
>>   #else
>>   static inline int intel_fbdev_init(struct drm_device *dev)
>> @@ -28,7 +28,7 @@ static inline int intel_fbdev_init(struct drm_device *dev)
>>   	return 0;
>>   }
>>   
>> -static inline void intel_fbdev_initial_config_async(struct drm_device *dev)
>> +static inline void intel_fbdev_initial_config_async(struct drm_i915_private *dev_priv)
>>   {
>>   }
>>   
>> @@ -48,7 +48,7 @@ static inline void intel_fbdev_output_poll_changed(struct drm_device *dev)
>>   {
>>   }
>>   
>> -static inline void intel_fbdev_restore_mode(struct drm_device *dev)
>> +static inline void intel_fbdev_restore_mode(struct drm_i915_private *i915)
>>   {
>>   }
>>   static inline struct intel_framebuffer *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 6469c7c1e154..0dd165a34dcd 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -1071,7 +1071,7 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
>>    */
>>   static void i915_driver_lastclose(struct drm_device *dev)
>>   {
>> -	intel_fbdev_restore_mode(dev);
>> +	intel_fbdev_restore_mode(to_i915(dev));
>>   
>>   	vga_switcheroo_process_delayed_switch();
>>   }
