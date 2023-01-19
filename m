Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8434A6734EF
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Jan 2023 10:59:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 13BF610E02C;
	Thu, 19 Jan 2023 09:59:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEC8610E057
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Jan 2023 09:59:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674122356; x=1705658356;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=yI5hoOZG3S99ppea5hCrfkunxSYXkK4pWTTgCDEqXy8=;
 b=KDxqO2k38v3tkEbiwEwjn2p01ACbJPfAiuuwsqEcN8k5n16K8ETWFJ2m
 9K1vPLH32TAntX+TiNbx0uqxIz73Coh6RzhfolO3ZIQyvd9pdq2+1a0m2
 s+0FWOXvZKAMpM5FQ3zAbRsZgUOCvYQTqLvDgDPSnBZb2r3SlnW88ICHU
 I8F8PLiUipnqBgJqrAtlsyP6IdCRLnUl+RpFgYjOntTBdJz+kdb/8Np7s
 RKf1s7p39IuO6Wszk/mEdLhYNeimGQzMA8bXTHfbMcDkqNrheHPWCLML2
 qssaCKOVl1wVBltxzr7CwFIYGC75jnsXfND5k/hr4JlCgXcMXsiMX/S/F w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="352499741"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="352499741"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 01:59:16 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="784002819"
X-IronPort-AV: E=Sophos;i="5.97,228,1669104000"; d="scan'208";a="784002819"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.249.46.88])
 ([10.249.46.88])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2023 01:59:14 -0800
Message-ID: <9f5d6870-d149-acd7-699a-875ff814efc2@linux.intel.com>
Date: Thu, 19 Jan 2023 10:59:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
To: Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
References: <20230118170624.9326-1-nirmoy.das@intel.com>
 <Y8g7zhs8DXmMZbSA@intel.com> <878rhydgm7.fsf@intel.com>
Content-Language: en-US
From: "Das, Nirmoy" <nirmoy.das@linux.intel.com>
In-Reply-To: <878rhydgm7.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove unused variable
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


On 1/19/2023 10:21 AM, Jani Nikula wrote:
> On Wed, 18 Jan 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
>> On Wed, Jan 18, 2023 at 06:06:24PM +0100, Nirmoy Das wrote:
>>> Removed unused i915 var.
>>>
>>> Fixes: a273e95721e9 ("drm/i915: Allow switching away via vga-switcheroo if uninitialized")
>>> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
>> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>>
>> and pushed to drm-misc-fixes.
>>
>> Thanks for the patch.
> I guess this was a quick fix to avoid warnings about it.


Yes, it was quick fix.

>
> But really, for i915 the way to go would be to have i915 local var, and
> pass that around instead of struct drm_device *dev.


Yes makes sense. I sent a patch for that.


Thanks,

Nirmoy

>
> BR,
> Jani.
>
>
>>> ---
>>>   drivers/gpu/drm/i915/i915_driver.c | 2 --
>>>   1 file changed, 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>> index 33e231b120c1..6469c7c1e154 100644
>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> @@ -1071,8 +1071,6 @@ static int i915_driver_open(struct drm_device *dev, struct drm_file *file)
>>>    */
>>>   static void i915_driver_lastclose(struct drm_device *dev)
>>>   {
>>> -	struct drm_i915_private *i915 = to_i915(dev);
>>> -
>>>   	intel_fbdev_restore_mode(dev);
>>>   
>>>   	vga_switcheroo_process_delayed_switch();
>>> -- 
>>> 2.39.0
>>>
