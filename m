Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76768775671
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Aug 2023 11:31:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1350210E419;
	Wed,  9 Aug 2023 09:31:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 887F610E40C
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Aug 2023 09:31:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691573472; x=1723109472;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=6C2LkIhJN2/C4z8MSlTDdOurB+uSBvToAZHHxzYGRLI=;
 b=IJy8vjoIPwlfLYOGZR1jWJaslZfKXXCg1tE5h067LXulFcVUj4AZ0u7S
 am4F0nkHxng+f3wlcjZppINzoFBArvnNXY/55GDkEVSKmN4dNz1+Zklcu
 gJyYTZW5+TtJbItC3GQuI2kadhbXM80zs0IWzvZQrPaMiYg0Oaz9h5QvE
 4xKXlfceM9GwUU6amaW7ej/Gz0kut1LNKK2gK5rIZjG+qdyKweYdfL7iB
 PqvZvrB34waWm2yOaIPKgfF6uHBkOw8FmrS+Br2oXoFjsBSfjG0qC4pq2
 Fg5fLZBADJ1GugXCW1bFC7NZHaHYH2Vd10Ao/+Me/yNt8xIuTDcPMzltM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="369976374"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="369976374"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 02:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="708646895"
X-IronPort-AV: E=Sophos;i="6.01,158,1684825200"; d="scan'208";a="708646895"
Received: from hbockhor-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.40.102])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2023 02:31:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
In-Reply-To: <ZNNXZYeTNdZVYalP@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230809082918.18631-1-stanislav.lisovskiy@intel.com>
 <87sf8ssj9r.fsf@intel.com> <ZNNS02EMPmgLZDBc@intel.com>
 <87o7jgsi6y.fsf@intel.com> <ZNNXZYeTNdZVYalP@intel.com>
Date: Wed, 09 Aug 2023 12:31:06 +0300
Message-ID: <87il9osgth.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix mistake in
 intel_modeset_all_pipes condition
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

On Wed, 09 Aug 2023, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
> On Wed, Aug 09, 2023 at 12:01:25PM +0300, Jani Nikula wrote:
>> On Wed, 09 Aug 2023, "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com> wrote:
>> > On Wed, Aug 09, 2023 at 11:38:08AM +0300, Jani Nikula wrote:
>> >> On Wed, 09 Aug 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
>> >> > It is supposed to be "!intel_crtc_needs_modeset" - otherwise,
>> >> > we are active exactly vice versa for active pipes: skipping if modeset
>> >> > is needed and not skipping if not needed.
>> >> 
>> >> If the crtc *already* needs a full modeset, there's no need to force a
>> >> modeset on it.
>> >> 
>> >> BR,
>> >> Jani.
>> >
>> > We have curently some issue with that. There are multiple places from where
>> > intel_modeset_all_pipes is called. One is that when we do detect that mbus join
>> > state had changed. All the previous checks indicated that fastset is enough,
>> > however once we detect mbus join state had changed in skl_watermarks.c we call
>> > this function there as well and I think it might act in a wrong way then.
>> >
>> > So basically this condition checks whether we need to force a modeset, but not
>> > if we need it, so no crtc's are supposed to escape this?
>> > Could be then that we just calling that whole function there wrongly.
>> 
>> Simplified, it's an optimization of:
>> 
>> 	if (crtc_state->uapi.mode_changed)
>>         	continue;
>> 
>> 	crtc_state->uapi.mode_changed = true;
>> 
>> With your change, it becomes:
>> 
>> 	if (!crtc_state->uapi.mode_changed)
>>         	continue;
>> 
>> 	crtc_state->uapi.mode_changed = true;
>> 
>> and intel_modeset_all_pipes() roughly becomes a no-op.
>
> Okay, basically I was wrong in interpretation of intel_modeset_all_pipes - mine was that it is
> supposed to modeset only pipes, which actually _need_ a full modeset, while the real one is supposed
> to force a modeset on those which even don't need that.
> Regarding mbus join, I think it could be just wrong to call it there rightaway.
> Most likely we can live with fastset there, unless ddb allocations haven't changed(we could then just
> update the mbus join state)

Well it's right there in skl_watermark.c lines 2618 and 3488! ;D

	/* TODO: Implement vblank synchronized MBUS joining changes */

	/*
	 * TODO: Implement vblank synchronized MBUS joining changes.
	 * Must be properly coordinated with dbuf reprogramming.
	 */

added way back when mbus programming was added in commit f4dc00863226
("drm/i915/adl_p: MBUS programming").

It's not "wrong" per se to do a full modeset, it's just that there's a
gap in handling the fastset with mbus joining changes.

BR,
Jani.

>
> Stan
>
>> 
>> 
>> BR,
>> Jani.
>> 
>> >
>> > Stan
>> >
>> >> 
>> >> >
>> >> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>> >> >  1 file changed, 1 insertion(+), 1 deletion(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> >> > index 763ab569d8f32..4b1d7034078ca 100644
>> >> > --- a/drivers/gpu/drm/i915/display/intel_display.c
>> >> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> >> > @@ -5439,7 +5439,7 @@ int intel_modeset_all_pipes(struct intel_atomic_state *state,
>> >> >  			return PTR_ERR(crtc_state);
>> >> >  
>> >> >  		if (!crtc_state->hw.active ||
>> >> > -		    intel_crtc_needs_modeset(crtc_state))
>> >> > +		    !intel_crtc_needs_modeset(crtc_state))
>> >> >  			continue;
>> >> >  
>> >> >  		drm_dbg_kms(&dev_priv->drm, "[CRTC:%d:%s] Full modeset due to %s\n",
>> >> 
>> >> -- 
>> >> Jani Nikula, Intel Open Source Graphics Center
>> 
>> -- 
>> Jani Nikula, Intel Open Source Graphics Center

-- 
Jani Nikula, Intel Open Source Graphics Center
