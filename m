Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 787DA7CE40C
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Oct 2023 19:13:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B89910E412;
	Wed, 18 Oct 2023 17:13:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBE5910E406
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Oct 2023 17:13:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697649200; x=1729185200;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Rtchehn1sG2F6h5GNCS5PlS5ry/iHa2L4Or0wxfRs7c=;
 b=OxyQLHD8HWaef6phXMK5YCOh+JMYbXjKhXOsZ7cIfVxwnYQccnRLRMv9
 3yR/9r49HATTWtXa4pV9uTk2J+thBdTk6hbs1YQXbKULVVvTxJz9CQ9qt
 FkXdOlA2LG6XNiSTT0aXaFNhOhbMIJ0Eil8tF0hDly0NFK61UVlMFs1VC
 ELEO/N992dO7224XUf7p3TpivohrHtiU+RIYSbPAqRjLwgx5HCr4FKIz7
 bcn4qFwTwA77AcVX8qt13lrZiR8eucN2IBQ38dQkABRmAmt6NyDqM7p6S
 G8cqOXzuch6KlBor5/etpSkL+ehOsAS0VS6H/g/SURwLCI3ygaudskJwr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="384940030"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="384940030"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 10:13:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10867"; a="786005833"
X-IronPort-AV: E=Sophos;i="6.03,235,1694761200"; d="scan'208";a="786005833"
Received: from hluxenbu-mobl1.ger.corp.intel.com (HELO [10.252.62.4])
 ([10.252.62.4])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2023 10:13:14 -0700
Message-ID: <eb76fa53-a5b7-24ab-6902-1828e689deed@linux.intel.com>
Date: Wed, 18 Oct 2023 19:13:12 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>
References: <20231016080803.3313020-1-jouni.hogander@intel.com>
 <ZS_72os_326uj8ty@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <ZS_72os_326uj8ty@intel.com>
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



On 2023-10-18 17:38, Ville Syrjälä wrote:
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
> 
> This I think is broken. The old plane state and its fence can still be
> in use by the previous commit, so we cannot mutate it here. Thus we
> really need to get the implicit fence from the old fb chained into the
> new plane state's fence.
Is it even needed though? If new_plane_state always calls prepare_fb.

Cheers,
~Maarten
