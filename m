Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FB867AEF6
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 10:55:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DD7410E766;
	Wed, 25 Jan 2023 09:55:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1E9910E760
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 09:55:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674640535; x=1706176535;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=jfPP8yyTIaxTZEMdEk/zJG6LNU7by1noWVpXMg+Pjco=;
 b=gS24zpBWi/s81HaK86jyQcfFQ4Iwe0uCE88bgAus/VWxzn0I94yE/Twn
 U3vfiZs/tJ48v/PipA2DpcRjXxrh2ALRKXpLRiQl+LHIT3U6iYc81ELjT
 QuU9yI8DAVq2CEqAWR9ete/xRc18JNVuMSNEZWbgGHN+iG3Bf5DBCXvsk
 LSMtBbc9DeRp4VgvYk6vcH4LG/1sRhuTp7dr/7IlBzQRaQZZa9ERSxozs
 GIjlmqfdKtryNRve8lhpaFW6uwHIVdJ/T/bkwi6gJmS7LIAq8OwML8rQT
 7sjZ+kAuod7H7VLYis/jtfaL0owrwsM/L3/NF9WyNLTidD74gom6U/Uv9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="324217700"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="324217700"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 01:55:35 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10600"; a="786379011"
X-IronPort-AV: E=Sophos;i="5.97,245,1669104000"; d="scan'208";a="786379011"
Received: from dlyakhov-mobl1.ccr.corp.intel.com (HELO [10.252.46.223])
 ([10.252.46.223])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 01:55:33 -0800
Message-ID: <edbebc62-2ebd-5519-9b18-b1f282b98e56@linux.intel.com>
Date: Wed, 25 Jan 2023 10:55:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das
 <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230124141740.17601-1-nirmoy.das@intel.com>
 <f1440b52-55bf-42e1-0015-7c831b945694@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <f1440b52-55bf-42e1-0015-7c831b945694@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Pass drm_i915_private as
 param to i915 funcs
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/25/2023 8:50 AM, Andrzej Hajda wrote:
> On 24.01.2023 15:17, Nirmoy Das wrote:
>> For i915 functions pass struct drm_i915_private directly instead of
>> struct drm_device.
>>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Suggested-by: Jani Nikula <jani.nikula@linux.intel.com>
>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>>   drivers/gpu/drm/i915/display/intel_fbdev.c   | 8 ++++----
>>   drivers/gpu/drm/i915/display/intel_fbdev.h   | 8 ++++----
>>   drivers/gpu/drm/i915/i915_driver.c           | 4 +++-
>>   4 files changed, 12 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>> b/drivers/gpu/drm/i915/display/intel_display.c
>> index e37cca6b18c6..b014d8626ef7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -9004,7 +9004,7 @@ void intel_display_driver_register(struct 
>> drm_i915_private *i915)
>>        * enabled. We do it last so that the async config cannot run
>>        * before the connectors are registered.
>>        */
>> -    intel_fbdev_initial_config_async(&i915->drm);
>> +    intel_fbdev_initial_config_async(i915);
>>         /*
>>        * We need to coordinate the hotplugs with the asynchronous
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c 
>> b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> index 19f3b5d92a55..c2c52f8e5887 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
>> @@ -547,9 +547,9 @@ static void intel_fbdev_initial_config(void 
>> *data, async_cookie_t cookie)
>> intel_fbdev_unregister(to_i915(ifbdev->helper.dev));
>>   }
>>   -void intel_fbdev_initial_config_async(struct drm_device *dev)
>> +void intel_fbdev_initial_config_async(struct drm_i915_private 
>> *dev_priv)
>>   {
>> -    struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
>> +    struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>>         if (!ifbdev)
>>           return;
>> @@ -686,9 +686,9 @@ void intel_fbdev_output_poll_changed(struct 
>> drm_device *dev)
>>           drm_fb_helper_hotplug_event(&ifbdev->helper);
>>   }
>>   -void intel_fbdev_restore_mode(struct drm_device *dev)
>> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv)
>>   {
>> -    struct intel_fbdev *ifbdev = to_i915(dev)->display.fbdev.fbdev;
>> +    struct intel_fbdev *ifbdev = dev_priv->display.fbdev.fbdev;
>>         if (!ifbdev)
>>           return;
>> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.h 
>> b/drivers/gpu/drm/i915/display/intel_fbdev.h
>> index 0e95e9472fa3..04fd523a5023 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fbdev.h
>> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.h
>> @@ -15,12 +15,12 @@ struct intel_framebuffer;
>>     #ifdef CONFIG_DRM_FBDEV_EMULATION
>>   int intel_fbdev_init(struct drm_device *dev);
>> -void intel_fbdev_initial_config_async(struct drm_device *dev);
>> +void intel_fbdev_initial_config_async(struct drm_i915_private 
>> *dev_priv);
>>   void intel_fbdev_unregister(struct drm_i915_private *dev_priv);
>>   void intel_fbdev_fini(struct drm_i915_private *dev_priv);
>>   void intel_fbdev_set_suspend(struct drm_device *dev, int state, 
>> bool synchronous);
>>   void intel_fbdev_output_poll_changed(struct drm_device *dev);
>> -void intel_fbdev_restore_mode(struct drm_device *dev);
>> +void intel_fbdev_restore_mode(struct drm_i915_private *dev_priv);
>>   struct intel_framebuffer *intel_fbdev_framebuffer(struct 
>> intel_fbdev *fbdev);
>>   #else
>>   static inline int intel_fbdev_init(struct drm_device *dev)
>> @@ -28,7 +28,7 @@ static inline int intel_fbdev_init(struct 
>> drm_device *dev)
>>       return 0;
>>   }
>>   -static inline void intel_fbdev_initial_config_async(struct 
>> drm_device *dev)
>> +static inline void intel_fbdev_initial_config_async(struct 
>> drm_i915_private *dev_priv)
>>   {
>>   }
>>   @@ -48,7 +48,7 @@ static inline void 
>> intel_fbdev_output_poll_changed(struct drm_device *dev)
>>   {
>>   }
>>   -static inline void intel_fbdev_restore_mode(struct drm_device *dev)
>> +static inline void intel_fbdev_restore_mode(struct drm_i915_private 
>> *i915)
>>   {
>>   }
>>   static inline struct intel_framebuffer 
>> *intel_fbdev_framebuffer(struct intel_fbdev *fbdev)
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c 
>> b/drivers/gpu/drm/i915/i915_driver.c
>> index 6469c7c1e154..cd6069c1762d 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -1071,7 +1071,9 @@ static int i915_driver_open(struct drm_device 
>> *dev, struct drm_file *file)
>>    */
>>   static void i915_driver_lastclose(struct drm_device *dev)
>>   {
>> -    intel_fbdev_restore_mode(dev);
>> +    struct drm_i915_private *i915 = to_i915(dev);
>> +
>> +    intel_fbdev_restore_mode(i915);
>
> You could use to_i915(dev) without alias.


Makes sense, I will resend.


Nirmoy

>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
>
> Regards
> Andrzej
>
>> vga_switcheroo_process_delayed_switch();
>>   }
>
