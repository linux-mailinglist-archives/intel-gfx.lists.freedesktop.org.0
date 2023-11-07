Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8467E39F5
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 11:36:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B938E10E3B4;
	Tue,  7 Nov 2023 10:36:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6586C10E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 10:36:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699353407; x=1730889407;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UCaKcc9TFMHmFunpnj07cQyspc08N7MQEeXahm4Fi14=;
 b=AMKOFZeL0B3xdmZXf/odo5aPivjLerZzhKExMNoXz8/D/MOK026kTgwD
 TjHxhPi327i6lQhRVuJ5wy9xX6aBolJyV7Q4mK0+pks/16RPTCwRb9eg9
 TtMcUS+HcFd1vFh/Wkhej3iZ8GVICp1itxJph8tjgtfLrAfZlRM2BCx8k
 f0xwYqbMH9cd/6sgQWd4lzmKoC9Ihl+k4WhiLI6KLoMJrCOKofw7NHZaU
 kMrGWw2Drz+vPff4tDGOaiBJ01C8f6sGuo+khAKkmjbIhoxcJFqLVFjAB
 AZ//A2A46pBOsho2mU4XdfJmy9gvcEBu913SLP+d3bv0ZP03cvpWSbrI2 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="393374227"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="393374227"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 02:36:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; 
   d="scan'208";a="3761218"
Received: from ezorina-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.183])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 02:36:46 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
In-Reply-To: <20231102204846.GE5757@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231102155223.2298316-1-jani.nikula@intel.com>
 <20231102204846.GE5757@mdroper-desk1.amr.corp.intel.com>
Date: Tue, 07 Nov 2023 12:36:43 +0200
Message-ID: <874jhxzw78.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: move display mutex inits to
 display code
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

On Thu, 02 Nov 2023, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Thu, Nov 02, 2023 at 05:52:22PM +0200, Jani Nikula wrote:
>> The core code has no business accessing i915->display directly. These
>> could be further spread to respective files, but this is a start.
>> 
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks, both pushed to din.

BR,
Jani.

>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
>>  drivers/gpu/drm/i915/i915_driver.c                  | 6 ------
>>  2 files changed, 6 insertions(+), 6 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> index 44b59ac301e6..0a5b922f2ad6 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>> @@ -181,6 +181,12 @@ void intel_display_driver_early_probe(struct drm_i915_private *i915)
>>  	if (!HAS_DISPLAY(i915))
>>  		return;
>>  
>> +	mutex_init(&i915->display.backlight.lock);
>> +	mutex_init(&i915->display.audio.mutex);
>> +	mutex_init(&i915->display.wm.wm_mutex);
>> +	mutex_init(&i915->display.pps.mutex);
>> +	mutex_init(&i915->display.hdcp.hdcp_mutex);
>> +
>>  	intel_display_irq_init(i915);
>>  	intel_dkl_phy_init(i915);
>>  	intel_color_init_hooks(i915);
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 80e85cadb9a2..01fd25b622d1 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -231,16 +231,10 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
>>  
>>  	spin_lock_init(&dev_priv->irq_lock);
>>  	spin_lock_init(&dev_priv->gpu_error.lock);
>> -	mutex_init(&dev_priv->display.backlight.lock);
>>  
>>  	mutex_init(&dev_priv->sb_lock);
>>  	cpu_latency_qos_add_request(&dev_priv->sb_qos, PM_QOS_DEFAULT_VALUE);
>>  
>> -	mutex_init(&dev_priv->display.audio.mutex);
>> -	mutex_init(&dev_priv->display.wm.wm_mutex);
>> -	mutex_init(&dev_priv->display.pps.mutex);
>> -	mutex_init(&dev_priv->display.hdcp.hdcp_mutex);
>> -
>>  	i915_memcpy_init_early(dev_priv);
>>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
>>  
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
