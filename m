Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39955B1714B
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Jul 2025 14:33:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D56F10E470;
	Thu, 31 Jul 2025 12:33:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nZibOOEZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 71C0810E79C;
 Thu, 31 Jul 2025 12:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753965179; x=1785501179;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=QvBFAPPCajiycFfbn2tYXggB3euP7sC66zoMmJsm+9M=;
 b=nZibOOEZKKbk8vHcT98gF74lpijr3/ZuYskfrfuiBobopX0pPFUYyIMK
 vQgkxpLxGm8koj4Ji6Bpe6n1FsQ9XvmLMKGdZZJ5WTeogiOjHtDLmphs5
 Vsh9YpMlfkCe0as8xbRV7T24X9CBDRUhhI5FnnYXXsiUAClIhKS2ZKjSR
 5c0GdMGRKlORYNE8vBw2SYdUGx5PvRtfpKd5p0UFG2J36TUWdsm+0rEOW
 XjC4pUxwVo6G+TyNo7G6f07FubWq0Eqo1ZyOe13Js0Ct6DozLdyylYvpQ
 O3VYgWNIm7jUWu81VgYI8MPZM7daxvE4mJ65y+LWhhwWrjK+3/6i6CClz w==;
X-CSE-ConnectionGUID: OGtfeXf9RiCFJ78ZtX5AgQ==
X-CSE-MsgGUID: rNzEnV2hTq2WvmRAaWTufA==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="73876941"
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="73876941"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:32:58 -0700
X-CSE-ConnectionGUID: dYS+YYx3QBehT0stZvCiJw==
X-CSE-MsgGUID: dqgIKKzNSz2+JznSQS8Jvg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,353,1747724400"; d="scan'208";a="200419207"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.108])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2025 05:32:54 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Dibin Moolakadan
 Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 ankit.k.nautiyal@intel.com, uma.shankar@intel.com
Subject: Re: [PATCH v2] drm/xe/display: Block hpd during suspend
In-Reply-To: <aItbBXMNinP4TaEy@ideak-desk>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250723092946.1975018-1-dibin.moolakadan.subrahmanian@intel.com>
 <aICtgAa54ESMZ2ii@ideak-desk> <aIDhTEcPoL5Y8Aoj@intel.com>
 <7b9d3439-ad9b-4ebf-86ee-0aa1c7b87b8c@linux.intel.com>
 <1c1510bdb0b9ade97da615f81d91e8f7cde20275@intel.com>
 <aIjcRFU90s6Ml9Vt@intel.com> <aIjizdet9ZUXB-yx@ideak-desk>
 <f7397d551049d81c4d59be25db23d41cbf8ed602@intel.com>
 <aItbBXMNinP4TaEy@ideak-desk>
Date: Thu, 31 Jul 2025 15:32:51 +0300
Message-ID: <0abb5f2108a1b6c86766e4d8416398a40bbf993d@intel.com>
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

On Thu, 31 Jul 2025, Imre Deak <imre.deak@intel.com> wrote:
> Hi Rodrigo,
>
> On Tue, Jul 29, 2025 at 07:36:04PM +0300, Jani Nikula wrote:
>> On Tue, 29 Jul 2025, Imre Deak <imre.deak@intel.com> wrote:
>> > On Tue, Jul 29, 2025 at 10:35:48AM -0400, Rodrigo Vivi wrote:
>> >> On Tue, Jul 29, 2025 at 12:44:47PM +0300, Jani Nikula wrote:
>> >> > On Thu, 24 Jul 2025, Maarten Lankhorst <maarten.lankhorst@linux.intel.com> wrote:
>> >> > > Hey,
>> >> > > [...]
>> >> > >>>> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
>> >> > >>>> index e2e0771cf274..9e984a045059 100644
>> >> > >>>> --- a/drivers/gpu/drm/xe/display/xe_display.c
>> >> > >>>> +++ b/drivers/gpu/drm/xe/display/xe_display.c
>> >> > >>>> @@ -96,6 +96,7 @@ static void xe_display_fini_early(void *arg)
>> >> > >>>>  	if (!xe->info.probe_display)
>> >> > >>>>  		return;
>> >> > >>>>  
>> >> > >>>> +	intel_hpd_cancel_work(display);
>> >> > >>>>  	intel_display_driver_remove_nogem(display);
>> >> > >>>>  	intel_display_driver_remove_noirq(display);
>> >> > >>>>  	intel_opregion_cleanup(display);
>> >> > >>>> @@ -340,6 +341,8 @@ void xe_display_pm_suspend(struct xe_device *xe)
>> >> > >>>>  
>> >> > >>>>  	xe_display_flush_cleanup_work(xe);
>> >> > >>>>  
>> >> > >>>> +	intel_encoder_block_all_hpds(display);
>> >> > >>>> +
>> >> > >>>>  	intel_hpd_cancel_work(display);
>> >> > >>>>  
>> >> > >>>>  	if (has_display(xe)) {
>> >> > >>>> @@ -369,6 +372,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>> >> > >>>>  	}
>> >> > >>>>  
>> >> > >>>>  	xe_display_flush_cleanup_work(xe);
>> >> > >>>> +	intel_encoder_block_all_hpds(display);
>> >> > >>>
>> >> > >>> MST still needs HPD IRQs for side-band messaging, so the HPD IRQs must
>> >> > >>> be blocked only after intel_dp_mst_suspend().
>> >> > >>>
>> >> > >>> Otherwise the patch looks ok to me, so with the above fixed and provided
>> >> > >>> that Maarten is ok to disable all display IRQs only later:
>> >> > >> 
>> >> > >> Also probably good to identify the patch as both xe and i915 in the subject
>> >> > >> drm/{i915,xe}/display:
>> >> > >> 
>> >> > >> and Maarten or Imre, any preference on which branch to go? any chance of
>> >> > >> conflicting with any of work you might be doing in any side?
>> >> > >> 
>> >> > >> From my side I believe that any conflict might be easy to handle, so
>> >> > >> 
>> >> > >> Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> >> > >> 
>> >> > >> from either side...
>> >> > >> 
>> >> > >>>
>> >> > >>> Reviewed-by: Imre Deak <imre.deak@intel.com>
>> >> > > We had a discussion on this approach, and it seems that completely disabling interrupts here like in i915 would fail too.
>> >> > >
>> >> > > Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>> >> > >
>> >> > > I don't mind either branch. As long as it applies. :-)
>> >> > 
>> >> > Please do not merge through *any* tree.
>> >> > 
>> >> > How come you all think it's okay to add this xe specific thing, and make
>> >> > unification harder?
>> >> 
>> >> I lost any moral or rights to complain here since I couldn't move with my
>> >> tasks of unification of the pm flow :(
>> >> 
>> >> double sorry!
>> >> 
>> >> > 
>> >> > intel_encoder_block_all_hpds() is *way* too specific for a high level
>> >> > function. Neither xe nor i915 should never call something like that
>> >> > directly.
>> >> 
>> >> that's a valid point indeed. But I cannot see another way to fix the
>> >> current issue right now without trying to move with the full unification
>> >> faster. Do you?
>> >
>> > Imo, this should be fixed first in xe without affecting i915. Then a
>> > related fix would be needed in i915, which disables all display IRQs too
>> > early now, as in:
>> >
>> > https://github.com/ideak/linux/commit/0fbe02b20e062
>> >
>> > After that the xe and i915 system suspend/resume and shutdown sequences
>> > could be unified mostly. Fwiw I put together that now on top of Dibin's
>> > patch:
>> >
>> > https://github.com/ideak/linux/commits/suspend-shutdown-refactor
>> 
>> If that work is actually in progress and happening, then fine, let's go
>> with this.
>
> If the above is acceptable, then this change would be also needed for
> i915. If the patch is merged to xe trees, then not sure if/when it would
> be merged back to i915. So maybe it would make more sense to merge it to
> i915 trees instead, considering it has more display changes already.
> Would you be ok with that?

Ack.

>
> --Imre
>
>> BR,
>> Jani.
>> 
>> >
>> >> > 
>> >> > BR,
>> >> > Jani.
>> >> > 
>> >> > 
>> >> > -- 
>> >> > Jani Nikula, Intel
>> 
>> -- 
>> Jani Nikula, Intel

-- 
Jani Nikula, Intel
