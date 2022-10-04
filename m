Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (unknown [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A5E45F4261
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 13:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E49F110E57C;
	Tue,  4 Oct 2022 11:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 756A710E57E
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 11:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664884275; x=1696420275;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=sTtabmar/PxffkXNaLckxI/L25fdnK0dOz/7xAvozDY=;
 b=V8wJs6K3PWMEsgoxAyUdLzB/rt2FPpqbqZIpO/yCldynGYUSA1CbOaC5
 Sk29zcV4tyJHmXu2BR75z69WWExSshbaW7YHW9NfoIplwuIn6FBokcPi2
 GcZbg5y8IJzTLoidS7pWBJhwMeIZUn1vUWvGN4ZbS+817HoZ+JcDIUTWz
 bLISRWTpRoFC7TbjRDt2CnaIPrf4WrgBJFoNSCjtz3rZ6OOYoPBU5Tgmh
 CaMhcCphJgT3wqOCYpCqF5LZ1kvxr7VWypkH+vVk8zAR4GY2i7tSPP9Df
 ArYrNZSRkIZ2uzi5xBgjjQnqmvIzNeOyt72l39LGU0B3RtEEQrDIDsPhs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="286079545"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="286079545"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 04:51:14 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="692460132"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="692460132"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO [10.252.7.149])
 ([10.252.7.149])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 04:51:13 -0700
Message-ID: <66ea1196-61e9-fe80-42e6-95e11d749f90@intel.com>
Date: Tue, 4 Oct 2022 12:51:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221004103311.194409-1-matthew.auld@intel.com>
 <20221004103311.194409-4-matthew.auld@intel.com> <YzwY47axVOqKGgav@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <YzwY47axVOqKGgav@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4 4/5] drm/i915/display: consider
 DG2_RC_CCS_CC when migrating buffers
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>,
 Jianshui Yu <jianshui.yu@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 04/10/2022 12:28, Ville Syrjälä wrote:
> On Tue, Oct 04, 2022 at 11:33:10AM +0100, Matthew Auld wrote:
>> For these types of display buffers, we need to able to CPU access some
>> part of the backing memory in prepare_plane_clear_colors(). As a result
>> we need to ensure we always place in the mappable part of lmem, which
>> becomes necessary on small-bar systems.
>>
>> v2(Nirmoy & Ville):
>>   - Add some commentary for why we need to CPU access the buffer.
>>   - Split out the other changes, so we just consider the display change
>>     here.
>> v3:
>>   - Handle this in the dpt path.
>>
>> Fixes: eb1c535f0d69 ("drm/i915: turn on small BAR support")
>> Reported-by: Jianshui Yu <jianshui.yu@intel.com>
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fb_pin.c | 24 +++++++++++++++++++--
>>   1 file changed, 22 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> index 32206bd359da..8197343300ee 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> @@ -50,7 +50,18 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>>   			continue;
>>   
>>   		if (HAS_LMEM(dev_priv)) {
>> -			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
>> +			unsigned int flags = obj->flags;
>> +
>> +			/*
>> +			 * For this type of buffer we need to able to read from the CPU
>> +			 * the clear color value found in the buffer, hence we need to
>> +			 * ensure it is always in the mappable part of lmem, if this is
>> +			 * a small-bar device.
>> +			 */
>> +			if (intel_fb_rc_ccs_cc_plane(fb) >= 0)
>> +				flags &= ~I915_BO_ALLOC_GPU_ONLY;
>> +			ret = __i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0,
>> +							flags);
>>   			if (ret)
>>   				continue;
>>   		}
>> @@ -156,8 +167,17 @@ intel_pin_and_fence_fb_obj(struct drm_framebuffer *fb,
>>   	ret = i915_gem_object_lock(obj, &ww);
>>   	if (!ret && phys_cursor)
>>   		ret = i915_gem_object_attach_phys(obj, alignment);
>> -	else if (!ret && HAS_LMEM(dev_priv))
>> +	else if (!ret && HAS_LMEM(dev_priv)) {
>> +		/*
>> +		 * For this type of ccs buffer we need to able to read from the
>> +		 * CPU the clear color value found in the buffer, which might
>> +		 * require moving to the mappable part of lmem first, but here
>> +		 * we should be using dpt for this.
>> +		 */
>> +		WARN_ON_ONCE(intel_fb_rc_ccs_cc_plane(fb) >= 0);
> 
> DPT isn't availalable on DG1.

Hmm, does it also support the DG2_RC_CCS_CC modifier?

> 
>> +
>>   		ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
>> +	}
>>   	if (!ret)
>>   		ret = i915_gem_object_pin_pages(obj);
>>   	if (ret)
>> -- 
>> 2.37.3
> 
