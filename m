Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2A7B15170
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 18:36:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6354510E65C;
	Tue, 29 Jul 2025 16:36:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZCZd5ESK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34E8410E65C;
 Tue, 29 Jul 2025 16:36:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753806972; x=1785342972;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=G7aDjuTpBSWYiVbNEt0AxzKu9iJqktgS5lQXNVLTsP4=;
 b=ZCZd5ESKYhI1/2jtxxLRIULzEPp76JW/Ywhd3z9vQjs9CQGBdVky/yaE
 MRCMd0EfcitSzCAF74k64h40f34bDQmMiHkmNl3wb0xzQVB05qKYt71jT
 G/mQ4cG7lPTn3hOdqGZtM7cVyrxe5lc6OHUZjOQSIOxqIdzgi1JrKvqWI
 JJEOgpECwLgcXFNP7O0c/vi4OTnaecwcJfgGNJJ08c8ZIaIudfI/uAIyo
 HBlri7xB9ngu8vat9lrqzWzJIB/vo5cVGoGsMq6sDGdjtlody5o1r3Kbc
 0GkC0L/1SvdNtA/TIWjNfO3tEUTGApO8UTlAD+TPc/B7snecmHyBeSU9F Q==;
X-CSE-ConnectionGUID: d2BGTjn4TdecEBkoNBqQrA==
X-CSE-MsgGUID: G9xr3DGTRO2NizxeSzwH/w==
X-IronPort-AV: E=McAfee;i="6800,10657,11506"; a="59898166"
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="59898166"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 09:36:11 -0700
X-CSE-ConnectionGUID: gDdO8QIKTMCGQn1xP2HURw==
X-CSE-MsgGUID: 2g1Bs1YbR1e98jA6l01lSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,350,1744095600"; d="scan'208";a="166918089"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.22])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 09:36:08 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Dibin Moolakadan
 Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
In-Reply-To: <aIjizdet9ZUXB-yx@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk> <aIDhTEcPoL5Y8Aoj@intel.com>
 <7b9d3439-ad9b-4ebf-86ee-0aa1c7b87b8c@linux.intel.com>
 <1c1510bdb0b9ade97da615f81d91e8f7cde20275@intel.com>
 <aIjcRFU90s6Ml9Vt@intel.com> <aIjizdet9ZUXB-yx@ideak-desk>
Date: Tue, 29 Jul 2025 19:36:04 +0300
Message-ID: <f7397d551049d81c4d59be25db23d41cbf8ed602@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 29 Jul 2025, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Jul 29, 2025 at 10:35:48AM -0400, Rodrigo Vivi wrote:
>> On Tue, Jul 29, 2025 at 12:44:47PM +0300, Jani Nikula wrote:
>> > On Thu, 24 Jul 2025, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
>> > > Hey,
>> > > [...]
>> > >>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>> > >>>> index e2e0771cf274..9e984a045059 100644
>> > >>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> > >>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> > >>>> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
>> > >>>>  	if (!xe->info.probe_display)
>> > >>>>  		return;
>> > >>>>  
>> > >>>> +	intel_hpd_cancel_work(display);
>> > >>>>  	intel_display_driver_remove_nogem(display);
>> > >>>>  	intel_display_driver_remove_noirq(display);
>> > >>>>  	intel_opregion_cleanup(display);
>> > >>>> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>> > >>>>  
>> > >>>>  	xe_display_flush_cleanup_work(xe);
>> > >>>>  
>> > >>>> +	intel_encoder_block_all_hpds(display);
>> > >>>> +
>> > >>>>  	intel_hpd_cancel_work(display);
>> > >>>>  
>> > >>>>  	if (has_display(xe)) {
>> > >>>> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>> > >>>>  	}
>> > >>>>  
>> > >>>>  	xe_display_flush_cleanup_work(xe);
>> > >>>> +	intel_encoder_block_all_hpds(display);
>> > >>>
>> > >>> MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
>> > >>> be blocked only after intel_dp_mst_suspend().
>> > >>>
>> > >>> Otherwise the patch looks ok to me, so with the above fixed and provided
>> > >>> that Maarten is ok to disable all display IRQs only later:
>> > >> 
>> > >> Also probably good to identify the patch as both xe and i915 in the subject
>> > >> drm/{i915,xe}/display:
>> > >> 
>> > >> and Maarten or Imre, any preference on which branch to go? any chance of
>> > >> conflicting with any of work you might be doing in any side?
>> > >> 
>> > >> From my side I believe that any conflict might be easy to handle, so
>> > >> 
>> > >> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> > >> 
>> > >> from either side...
>> > >> 
>> > >>>
>> > >>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>> > > We had a discussion on this approach, and it seems that completely disabling interrupts here like in i915 would fail too.
>> > >
>> > > Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> > >
>> > > I don't mind either branch. As long as it applies. :-)
>> > 
>> > Please do not merge through *any* tree.
>> > 
>> > How come you all think it's okay to add this xe specific thing, and make
>> > unification harder?
>> 
>> I lost any moral or rights to complain here since I couldn't move with my
>> tasks of unification of the pm flow :(
>> 
>> double sorry!
>> 
>> > 
>> > intel_encoder_block_all_hpds() is *way* too specific for a high level
>> > function. Neither xe nor i915 should never call something like that
>> > directly.
>> 
>> that's a valid point indeed. But I cannot see another way to fix the
>> current issue right now without trying to move with the full unification
>> faster. Do you?
>
> Imo, this should be fixed first in xe without affecting i915. Then a
> related fix would be needed in i915, which disables all display IRQs too
> early now, as in:
>
> https://github.com/ideak/linux/commit/0fbe02b20e062
>
> After that the xe and i915 system suspend/resume and shutdown sequences
> could be unified mostly. Fwiw I put together that now on top of Dibin's
> patch:
>
> https://github.com/ideak/linux/commits/suspend-shutdown-refactor

If that work is actually in progress and happening, then fine, let's go
with this.

BR,
Jani.



>
>> > 
>> > BR,
>> > Jani.
>> > 
>> > 
>> > -- 
>> > Jani Nikula, Intel

-- 
Jani Nikula, Intel
