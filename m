Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72A7579D9BA
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 21:45:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E18410E053;
	Tue, 12 Sep 2023 19:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C67810E053
 for <intel-gfx@lists.freedesktop.org>; Tue, 12 Sep 2023 19:44:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694547894; x=1726083894;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Iewu+GalldX33nnscbyau63Fu23GFU8G8TUTtzGmktY=;
 b=XfFm3Tg80saWPrLBbBU6a0nzNoeqePXY0Bsc3WAovG9Fc7ZuEsfmzllF
 QD22i2mhXJZcaOgUeHNNzmWE0TAeTwei2fLDU6lNZXDaDfFkXKdd5tcg6
 b7oabdOA5ItZJhy6yNJF/Vd7YAPCqLsZ92l/GXik6UdwUBhjzFKXYyKbx
 4PGqgOw2lJRBHezA+5GpcjcTY9I2i68sXSCokQC8se+wHEYzi6tJKblAp
 /Usmkd7g9NX5d7MowwI4FNMzEETwo/yECY9FQl6csQw7Q79zaiyt+5ZnE
 7AXUqZHdoXczNK3wJRQNQgOTew0rpsnt6b92pvyUC8FwhnsZL6fDzVtx3 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="409425081"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="409425081"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 12:44:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="809396305"
X-IronPort-AV: E=Sophos;i="6.02,141,1688454000"; d="scan'208";a="809396305"
Received: from iailenex-mobl.ger.corp.intel.com (HELO [10.251.217.62])
 ([10.251.217.62])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 12:44:53 -0700
Message-ID: <b1ba9a41-b2ac-e43d-080e-b7d7a456d676@linux.intel.com>
Date: Tue, 12 Sep 2023 21:44:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Content-Language: en-US
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20230831162643.20354-1-ville.syrjala@linux.intel.com>
 <5b340552-e09b-48cb-0677-7f65f24ee6ce@linux.intel.com>
 <ZPHDWX31HVL18R_z@intel.com>
From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
In-Reply-To: <ZPHDWX31HVL18R_z@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use vblank worker to unpin old
 legacy cursor fb safely
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

Hey,

On 2023-09-01 12:56, Ville Syrjälä wrote:
> On Fri, Sep 01, 2023 at 12:16:21PM +0200, Maarten Lankhorst wrote:
>> Hey,
>>
>>
>> Den 2023-08-31 kl. 18:26, skrev Ville Syrjala:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> The cursor hardware only does sync updates, and thus the hardware
>>> will be scanning out from the old fb until the next start of vblank.
>>> So in order to make the legacy cursor fastpath actually safe we
>>> should not unpin the old fb until we're sure the hardware has
>>> ceased accessing it. The simplest approach is to just use a vblank
>>> work here to do the delayed unpin.
>>>
>>> Not 100% sure it's a good idea to put this onto the same high
>>> priority vblank worker as eg. our timing critical gamma updates.
>>> But let's keep it simple for now, and it we later discover that
>>> this is causing problems we can think about adding a lower
>>> priority worker for such things.
>>>
>>> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_cursor.c   | 25 +++++++++++++++++--
>>>    .../drm/i915/display/intel_display_types.h    |  3 +++
>>>    2 files changed, 26 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
>>> index b342fad180ca..2bd1a79c6955 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
>>> @@ -603,6 +603,16 @@ static bool intel_cursor_format_mod_supported(struct drm_plane *_plane,
>>>    	return format == DRM_FORMAT_ARGB8888;
>>>    }
>>>    
>>> +static void intel_cursor_unpin_work(struct kthread_work *base)
>>> +{
>>> +	struct drm_vblank_work *work = to_drm_vblank_work(base);
>>> +	struct intel_plane_state *plane_state =
>>> +		container_of(work, typeof(*plane_state), unpin_work);
>>> +
>>> +	intel_plane_unpin_fb(plane_state);
>>> +	intel_plane_destroy_state(plane_state->uapi.plane, &plane_state->uapi);
>>> +}
>>> +
>>>    static int
>>>    intel_legacy_cursor_update(struct drm_plane *_plane,
>>>    			   struct drm_crtc *_crtc,
>>> @@ -730,14 +740,25 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>>>    
>>>    	local_irq_enable();
>>>    
>>> -	intel_plane_unpin_fb(old_plane_state);
>>> +	if (old_plane_state->hw.fb != new_plane_state->hw.fb) {
>>> +		drm_vblank_work_init(&old_plane_state->unpin_work, &crtc->base,
>>> +				     intel_cursor_unpin_work);
>>> +
>>> +		drm_vblank_work_schedule(&old_plane_state->unpin_work,
>>> +					 drm_crtc_accurate_vblank_count(&crtc->base) + 1,
>>> +					 false);
>>> +
>>> +		old_plane_state = NULL;
>>> +	} else {
>>> +		intel_plane_unpin_fb(old_plane_state);
>>> +	}
>>
>> Maybe check if crtc is active and no modeset is happening?
> 
> We wouldn't be on this codepath if that wasn't the case.
> 
>> Similar to
>> how the vblank worker is used in other cases. That should hopefully fix
>> the cursor leak test.
> 
> The leak is likely due to the vblank worker being a bit crazy
> and sometimes silently cancelling pending works. I fired a new
> series at trybot that tries to avoid that.
> 

I saw the trybot series. Have you tried fixing it to fire off the vblank 
  work immediately before disabling?

~Maarten
