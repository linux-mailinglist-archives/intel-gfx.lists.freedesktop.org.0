Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 078175F3D93
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 10:00:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F6810E088;
	Tue,  4 Oct 2022 07:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95ACB10E088
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 07:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664870387; x=1696406387;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/97Wv8UBHC2MupGr2AbPimmNecJ5La6+azZMed674A8=;
 b=TDR28vhB+vumk6nR737ShyL99X/teShiJsB0yXE9mjpK1/GJToi3o5lY
 3rheZKI3QXMx7FRtT25Tqwjp2OfHhmuIgh6K2UIJTSoax1jFIUEaeO/d+
 Cbi9PX5Nvb8iKPfsiMfchDxdQnjYQeAqRe4/luzIGuMpWwJFICu1mZA3i
 fORrPFVOIYVj6nG63JR1Zh8jOngD+Ka081jgvC4usydWRyUG7r1aBuc9Q
 ThlFlaYL5gwpoKW4BzXAj+oounGTUu8dVBgwwknvkhy/9qfOFr7nlXQHF
 ivjjLkEnvo/VklgPianmaYGsQ10P+hPKrnOXLeunpPXE7p+KE8gRljZnV w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="286043268"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="286043268"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 00:59:46 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692394314"
X-IronPort-AV: E=Sophos;i="5.93,367,1654585200"; d="scan'208";a="692394314"
Received: from ahajda-mobl.ger.corp.intel.com (HELO [10.213.8.49])
 ([10.213.8.49])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 00:59:43 -0700
Message-ID: <26de0717-a71d-170c-f03c-3b4ebcb1999c@intel.com>
Date: Tue, 4 Oct 2022 09:59:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>
References: <20221003223258.2650934-1-andrzej.hajda@intel.com>
 <20221003223258.2650934-2-andrzej.hajda@intel.com>
 <Yzt0Gif4yzdA/88b@ashyti-mobl2.lan>
From: Andrzej Hajda <andrzej.hajda@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <Yzt0Gif4yzdA/88b@ashyti-mobl2.lan>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/display: Use drm_device alias
 if defined
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 04.10.2022 01:45, Andi Shyti wrote:
> Hi Andrzej,
> 
> [...]
> 
>> @@ -847,7 +847,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>   	}
>>   
>>   	if (!dev_priv->display.vbt.int_lvds_support) {
>> -		drm_dbg_kms(&dev_priv->drm,
>> +		drm_dbg_kms(dev,
>>   			    "Internal LVDS support disabled by VBT\n");
> 
> you don't need to break this anymore
> 
>>   		return;
>>   	}
>> @@ -867,11 +867,11 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>   	pin = GMBUS_PIN_PANEL;
>>   	if (!intel_bios_is_lvds_present(dev_priv, &pin)) {
>>   		if ((lvds & LVDS_PORT_EN) == 0) {
>> -			drm_dbg_kms(&dev_priv->drm,
>> +			drm_dbg_kms(dev,
>>   				    "LVDS is not present in VBT\n");
> 
> here, as well (and so on for the rest)

I forgot increase in 1st two patches max line width to 100, will fix it.


> 
> With the above:
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thx

Andrzej


> 
> Andi
> 
>>   			return;
>>   		}
>> -		drm_dbg_kms(&dev_priv->drm,
>> +		drm_dbg_kms(dev,
>>   			    "LVDS is not present in VBT, but enabled anyway\n");
>>   	}
>>   
>> @@ -993,7 +993,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>   	intel_backlight_setup(intel_connector, INVALID_PIPE);
>>   
>>   	lvds_encoder->is_dual_link = compute_is_dual_link_lvds(lvds_encoder);
>> -	drm_dbg_kms(&dev_priv->drm, "detected %s-link lvds configuration\n",
>> +	drm_dbg_kms(dev, "detected %s-link lvds configuration\n",
>>   		    lvds_encoder->is_dual_link ? "dual" : "single");
>>   
>>   	lvds_encoder->a3_power = lvds & LVDS_A3_POWER_MASK;
>> @@ -1001,7 +1001,7 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
>>   	return;
>>   
>>   failed:
>> -	drm_dbg_kms(&dev_priv->drm, "No LVDS modes found, disabling.\n");
>> +	drm_dbg_kms(dev, "No LVDS modes found, disabling.\n");
>>   	drm_connector_cleanup(connector);
>>   	drm_encoder_cleanup(encoder);
>>   	kfree(lvds_encoder);
>> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
>> index caa07ef34f21ef..ba3666e94fc48d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
>> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
>> @@ -465,7 +465,7 @@ static u32 asle_set_backlight(struct drm_i915_private *dev_priv, u32 bclp)
>>   	struct opregion_asle *asle = dev_priv->display.opregion.asle;
>>   	struct drm_device *dev = &dev_priv->drm;
>>   
>> -	drm_dbg(&dev_priv->drm, "bclp = 0x%08x\n", bclp);
>> +	drm_dbg(dev, "bclp = 0x%08x\n", bclp);
>>   
>>   	if (acpi_video_get_backlight_type() == acpi_backlight_native) {
>>   		drm_dbg_kms(&dev_priv->drm,
>> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> index dee0147a316ce7..fdfe3611e74a76 100644
>> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
>> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
>> @@ -1855,7 +1855,7 @@ void vlv_dsi_init(struct drm_i915_private *dev_priv)
>>   	enum port port;
>>   	enum pipe pipe;
>>   
>> -	drm_dbg_kms(&dev_priv->drm, "\n");
>> +	drm_dbg_kms(dev, "\n");
>>   
>>   	/* There is no detection method for MIPI so rely on VBT */
>>   	if (!intel_bios_is_dsi_present(dev_priv, &port))
>> -- 
>> 2.34.1

