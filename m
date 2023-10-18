Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62C857CE114
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 17:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9C3510E15B;
	Wed, 18 Oct 2023 15:23:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B6E110E15B
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 15:23:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697642597; x=1729178597;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ujum9BkqdCaqljnGfhUIU0duXYPOW5Gw7ngnDW1H40o=;
 b=BjdwcgSi9wZk1QsN1zg9iYVsnB9o4F4ARcwJVH2lKukr5t81m5vuVg/U
 VDNYXjyunle2VTnRGkWGZeLi6hxktwb7X3EH2EJ9X543jZJ/66FVeoz7E
 l32/nMaBduRVI613XxnVC5DP8Ig94XOhI4tstXVhFTzk4vAJ76obSScFr
 vjHb0Vbq5hjxmpupfdqHmencZNGdHxGHXo1Q71vLjUBATS4uEo1m954q+
 rM8hBvACY371RQt8HdPWJor4ErH0MSGZb6irYTf9uEGWWN9nc0ruYjPOk
 VRqSHVm/womGnWItBL2tlmh5p5SInGQJOToS6T57Q1rKF0ldt73wGn7id w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="365387420"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="365387420"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 08:23:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="1087979364"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="1087979364"
Received: from hluxenbu-mobl1.ger.corp.intel.com (HELO [10.252.62.4])
 ([10.252.62.4])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 08:23:04 -0700
Message-ID: <3f37930e-0cbe-482c-e323-a50cd616ece3@linux.intel.com>
Date: Wed, 18 Oct 2023 17:23:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>
References: <20231016080803.3313020-1-jouni.hogander@intel.com>
 <ZS_3itLzYATBtJJp@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <ZS_3itLzYATBtJJp@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use dma_fence interfaces
 instead of i915_sw_fence
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



On 2023-10-18 17:19, Ville Syrjälä wrote:
> On Mon, Oct 16, 2023 at 11:08:03AM +0300, Jouni Högander wrote:
>> We are preparing for Xe driver. Xe driver doesn't have i915_sw_fence
>> implementation. Lets drop i915_sw_fence usage from display code and
>> use dma_fence interfaces directly.
>>
>> For this purpose stack dma fences from related objects into old and new
>> plane states using drm_gem_plane_helper_prepare_fb. Then wait for these
>> stacked fences during atomic commit.
>>
>> There is no be need for separate GPU reset handling in
>> intel_atomic_commit_fence_wait as the fences are signaled when GPU hang is
>> detected and GPU is being reset.
>>
>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> Cc: José Roberto de Souza <jose.souza@intel.com>
>>
>> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_atomic.c   |  3 -
>>   .../gpu/drm/i915/display/intel_atomic_plane.c | 49 +++---------
>>   drivers/gpu/drm/i915/display/intel_display.c  | 78 ++++++-------------
>>   .../drm/i915/display/intel_display_types.h    |  2 -
>>   4 files changed, 37 insertions(+), 95 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic.c b/drivers/gpu/drm/i915/display/intel_atomic.c
>> index 5d18145da279..ec0d5168b503 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic.c
>> @@ -331,9 +331,6 @@ void intel_atomic_state_free(struct drm_atomic_state *_state)
>>   
>>   	drm_atomic_state_default_release(&state->base);
>>   	kfree(state->global_objs);
>> -
>> -	i915_sw_fence_fini(&state->commit_ready);
>> -
>>   	kfree(state);
>>   }
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> index b1074350616c..d4f9168ec42c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> @@ -32,6 +32,7 @@
>>    */
>>   
>>   #include <drm/drm_atomic_helper.h>
>> +#include <drm/drm_gem_atomic_helper.h>
>>   #include <drm/drm_blend.h>
>>   #include <drm/drm_fourcc.h>
>>   
>> @@ -1035,7 +1036,7 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>>   	struct intel_atomic_state *state =
>>   		to_intel_atomic_state(new_plane_state->uapi.state);
>>   	struct drm_i915_private *dev_priv = to_i915(plane->base.dev);
>> -	const struct intel_plane_state *old_plane_state =
>> +	struct intel_plane_state *old_plane_state =
>>   		intel_atomic_get_old_plane_state(state, plane);
>>   	struct drm_i915_gem_object *obj = intel_fb_obj(new_plane_state->hw.fb);
>>   	struct drm_i915_gem_object *old_obj = intel_fb_obj(old_plane_state->hw.fb);
>> @@ -1057,56 +1058,30 @@ intel_prepare_plane_fb(struct drm_plane *_plane,
>>   		 * This should only fail upon a hung GPU, in which case we
>>   		 * can safely continue.
>>   		 */
>> -		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state)) {
>> -			ret = i915_sw_fence_await_reservation(&state->commit_ready,
>> -							      old_obj->base.resv,
>> -							      false, 0,
>> -							      GFP_KERNEL);
>> +		if (new_crtc_state && intel_crtc_needs_modeset(new_crtc_state) &&
>> +		    !dma_resv_test_signaled(old_obj->base.resv,
>> +					    dma_resv_usage_rw(false))) {
>> +			ret = drm_gem_plane_helper_prepare_fb(_plane, &old_plane_state->uapi);
>>   			if (ret < 0)
>>   				return ret;
>>   		}
>>   	}
>>   
>> -	if (new_plane_state->uapi.fence) { /* explicit fencing */
>> -		i915_gem_fence_wait_priority(new_plane_state->uapi.fence,
>> -					     &attr);
>> -		ret = i915_sw_fence_await_dma_fence(&state->commit_ready,
>> -						    new_plane_state->uapi.fence,
>> -						    i915_fence_timeout(dev_priv),
>> -						    GFP_KERNEL);
>> -		if (ret < 0)
>> -			return ret;
>> -	}
>> -
>>   	if (!obj)
>>   		return 0;
>>   
>> -
>>   	ret = intel_plane_pin_fb(new_plane_state);
>>   	if (ret)
>>   		return ret;
>>   
>> -	i915_gem_object_wait_priority(obj, 0, &attr);
>> -
>> -	if (!new_plane_state->uapi.fence) { /* implicit fencing */
>> -		struct dma_resv_iter cursor;
>> -		struct dma_fence *fence;
>> +	ret = drm_gem_plane_helper_prepare_fb(_plane, &new_plane_state->uapi);
> 
> I don't think we can use that as is due to bigjoiner stuff.
> I think we'd need a slightly lower level variant that takes
> the fb+fence in explicitly instead of the full plane state.
> 
> And I suppose we already have a slight bug here where only the
> master pipe's plane will consult the explicit fence and the rest
> will take the implicit sync path.
Why would bigjoiner fail? If bigjoiner happens, the uapi fb will be 
fenced at least once.

Cheers,
~Maarten
