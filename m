Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 504FB5F426B
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 13:54:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 663CC10E57C;
	Tue,  4 Oct 2022 11:54:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E78A10E57C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 11:54:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664884477; x=1696420477;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=dZB6UIr8dUlXwERO+uHir2PayMYDqEcNkeujTbyXRKA=;
 b=kn0JU0Bpho0EzMs5BtEcNBiO2fNxvsUCIc91SQe/xggwJqHb9SkfKx7E
 vfM9hzbGQBkXyVeku9EpJcqcg+IxVQCk/DTu/wI9nd70yuTBkmA6uclZs
 BIvWr7092xsFesPbP3l77F88qF7tzSGFbwDcYGoN5Kbdmn0UeTIZ3dYvV
 GgXg/lLpR+61IGB8MLemkuAbHlGSYY5WTX8XLWXI5EDWOm5LmOC/Xs+vl
 Fz+s+gjZffoO79Sg4z0hi7inOkmQnIf47oSx+/CvNDQ1ww0gsaUb5epfN
 uWYJBJULUWuzh1DlGd6mQoM+pQJmgmxLyJ4H+q5yIqOP7DWzUB2lG+OBi A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="286080006"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="286080006"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 04:54:37 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10489"; a="766308037"
X-IronPort-AV: E=Sophos;i="5.93,157,1654585200"; d="scan'208";a="766308037"
Received: from ngverso-mobl2.ger.corp.intel.com (HELO [10.252.7.149])
 ([10.252.7.149])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 04:54:35 -0700
Message-ID: <0ae64d05-b59e-a984-81f0-b5b7b6ec7010@intel.com>
Date: Tue, 4 Oct 2022 12:54:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.3.1
Content-Language: en-GB
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20221004103311.194409-1-matthew.auld@intel.com>
 <20221004103311.194409-2-matthew.auld@intel.com> <YzwXW3rEpPbK6R67@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <YzwXW3rEpPbK6R67@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4 2/5] drm/i915/display: handle migration
 for dpt
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

On 04/10/2022 12:22, Ville Syrjälä wrote:
> On Tue, Oct 04, 2022 at 11:33:08AM +0100, Matthew Auld wrote:
>> On platforms like DG2, it looks like the dpt path here is missing the
>> migrate-to-lmem step on discrete platforms.
>>
>> Fixes: 33e7a975103c ("drm/i915/xelpd: First stab at DPT support")
>> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
>> Cc: Jianshui Yu <jianshui.yu@intel.com>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Nirmoy Das <nirmoy.das@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_fb_pin.c | 23 ++++++++++++++++++---
>>   1 file changed, 20 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> index 0cd9e8cb078b..32206bd359da 100644
>> --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
>> @@ -26,10 +26,17 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>>   	struct drm_device *dev = fb->dev;
>>   	struct drm_i915_private *dev_priv = to_i915(dev);
>>   	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
>> +	struct i915_gem_ww_ctx ww;
>>   	struct i915_vma *vma;
>>   	u32 alignment;
>>   	int ret;
>>   
>> +	/*
>> +	 * We are not syncing against the binding (and potential migrations)
>> +	 * below, so this vm must never be async.
>> +	*/
>> +	GEM_WARN_ON(vm->bind_async_flags);
> 
> Not sure why this is different between the dpt and non-dpt paths?

It looks like dpt is using vma_pin() below which doesn't have the 
wait_for_bind() stuff, like we do for ggtt_pin().

> 
>> +
>>   	if (WARN_ON(!i915_gem_object_is_framebuffer(obj)))
>>   		return ERR_PTR(-EINVAL);
>>   
>> @@ -37,10 +44,20 @@ intel_pin_fb_obj_dpt(struct drm_framebuffer *fb,
>>   
>>   	atomic_inc(&dev_priv->gpu_error.pending_fb_pin);
>>   
>> -	ret = i915_gem_object_lock_interruptible(obj, NULL);
>> -	if (!ret) {
>> +	for_i915_gem_ww(&ww, ret, true) {
>> +		ret = i915_gem_object_lock(obj, &ww);
>> +		if (ret)
>> +			continue;
>> +
>> +		if (HAS_LMEM(dev_priv)) {
>> +			ret = i915_gem_object_migrate(obj, &ww, INTEL_REGION_LMEM_0);
>> +			if (ret)
>> +				continue;
>> +		}
>> +
>>   		ret = i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
>> -		i915_gem_object_unlock(obj);
>> +		if (ret)
>> +			continue;
>>   	}
> 
> The non-dpt path has the whole thing under the same lock.
> Is there a reason we're not doing the same thing for both?
> 
> I guess some kind of unification effort would be nice to
> avoid the codepaths diverging for no good reason.

Can do, I'll take a look.

> 
> Maybe even some refactoring would be nice to share more code,
> but IIRC all the fence/mappable stuff in the lower levels
> of the ggtt paths is what got in the way of just reusing
> more of the ggtt code directly.
> 
>>   	if (ret) {
>>   		vma = ERR_PTR(ret);
>> -- 
>> 2.37.3
> 
