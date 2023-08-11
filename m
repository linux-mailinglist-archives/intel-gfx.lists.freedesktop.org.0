Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E188778996
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Aug 2023 11:19:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AF0110E08F;
	Fri, 11 Aug 2023 09:18:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE0E510E08F
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Aug 2023 09:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691745537; x=1723281537;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=d/Ed9izjYiyoLNIKbiwFaRrTelfBq1OuZkzRkNPy+uE=;
 b=QyN3XPXvTxHQZdpWZBpLWl8YHoEiqAVNwn9kt7KRBO2wLfjI4Ry/hPj1
 6fkXhkKG5RCjuZ2mLxfcL4/5zhFOsGfzZQNKw3z9toHyRz5CclK/YICKH
 9nxttu9o6LTEbhyP/fNtg3g8+cQp7x95A0NXn8mD8uz3U5BwXrr8REAVe
 cucyYLjMJy1LHDHtL6UmOz33T0crK+7+DRDU21uEMh8qrAGhMz0nOwGV7
 P2Z/GOHjXdLFTAOL6S3ZOWVGtveuWCXoaZ6CGe6orE2xthQQNYlT/1iVW
 CdjUmQfO3XYZm3GKilVtaoLmra+MEHSr4zDRHY+3+n6Z4MkrpVM2Sqmv1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="374406102"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="374406102"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 02:18:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10798"; a="726196727"
X-IronPort-AV: E=Sophos;i="6.01,165,1684825200"; d="scan'208";a="726196727"
Received: from unknown (HELO localhost) ([10.252.49.153])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2023 02:18:47 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <ZLjqCK7Elh661Da0@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230719104833.25366-1-stanislav.lisovskiy@intel.com>
 <ZLjqCK7Elh661Da0@intel.com>
Date: Fri, 11 Aug 2023 12:18:42 +0300
Message-ID: <87fs4qq6ml.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Start using plane scale factor
 for relative data rate
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 20 Jul 2023, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> On Wed, Jul 19, 2023 at 01:48:33PM +0300, Stanislav Lisovskiy wrote:
>> BSpec clearly instructs us to use plane scale factor when calculating
>> relative data rate to be used when allocating DDB blocks for each plane.
>> For some reason we use scale factor for data_rate calculation, which is
>> used for BW calculations, however we are not using it for DDB calculations.
>> So lets fix it as described in BSpec 68907.
>> 
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 7 ++++++-
>>  1 file changed, 6 insertions(+), 1 deletion(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> index 7d9578ebae556..60a492e186ab8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> @@ -212,6 +212,7 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>>  	struct intel_plane *plane = to_intel_plane(plane_state->uapi.plane);
>>  	const struct drm_framebuffer *fb = plane_state->hw.fb;
>>  	int width, height;
>> +	unsigned int rel_data_rate;
>>  
>>  	if (plane->id == PLANE_CURSOR)
>>  		return 0;
>> @@ -241,7 +242,11 @@ intel_plane_relative_data_rate(const struct intel_crtc_state *crtc_state,
>>  		height /= 2;
>>  	}
>>  
>> -	return width * height * fb->format->cpp[color_plane];
>> +	rel_data_rate = width * height * fb->format->cpp[color_plane];
>> +
>> +	return intel_adjusted_rate(&plane_state->uapi.src,
>> +				   &plane_state->uapi.dst,
>> +				   rel_data_rate);
>>  }
>>  
>>  int intel_plane_calc_min_cdclk(struct intel_atomic_state *state,
>> -- 
>> 2.37.3
>> 
>
> IGT failures are irrelevant here(test is aborted due to some timeout issue).

Going through old mails... I think errors like that still warrant a
retest before merging, because it can mask real issues that now won't
get tested.

BR,
Jani.

-- 
Jani Nikula, Intel Open Source Graphics Center
