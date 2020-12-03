Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED4E2CDB69
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 17:39:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 902C26EB78;
	Thu,  3 Dec 2020 16:39:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 492F06EB79
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 16:39:49 +0000 (UTC)
IronPort-SDR: P80rEniNQuBIvUvB02pWmxIC2RJDsmtkNNlWns21nywrrETc6L0/AJfDYvjKewdkn8Ut+OIvrL
 Jts+suGv9XXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="152477474"
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="152477474"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 08:39:48 -0800
IronPort-SDR: Zoie9x1pEn1r0uaiSbPMW8bMs9hdE5SmBZMugCSHvCVQeurGxlR7HmWksureRfYl0gOhLLmJvA
 HHU4CcN6L4BQ==
X-IronPort-AV: E=Sophos;i="5.78,389,1599548400"; d="scan'208";a="482024725"
Received: from isobow-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.213.16.51])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 08:39:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Navare\, Manasi" <manasi.d.navare@intel.com>
In-Reply-To: <20201202223828.GA26911@labuser-Z97X-UD5H>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-6-manasi.d.navare@intel.com> <87o8k5sd2l.fsf@intel.com>
 <20201201225259.GB22644@labuser-Z97X-UD5H>
 <20201202223828.GA26911@labuser-Z97X-UD5H>
Date: Thu, 03 Dec 2020 18:39:43 +0200
Message-ID: <87pn3qc08g.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 05/11] drm/i915/display/dp: Compute VRR
 state in atomic_check
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 02 Dec 2020, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> On Tue, Dec 01, 2020 at 02:52:59PM -0800, Navare, Manasi wrote:
>> On Tue, Nov 10, 2020 at 12:47:46PM +0200, Jani Nikula wrote:
>> > On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
>> > > @@ -15202,7 +15206,8 @@ static int intel_atomic_check(struct drm_device *dev,
>> > >  
>> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
>> > >  					    new_crtc_state, i) {
>> > > -		if (new_crtc_state->inherited != old_crtc_state->inherited)
>> > > +		if (new_crtc_state->inherited != old_crtc_state->inherited ||
>> > > +		    new_crtc_state->uapi.vrr_enabled != old_crtc_state->uapi.vrr_enabled)
>> > 
>> > Somehow this feels like a really specific check to add considering the
>> > abstraction level of the function in general.
>
> Actually while discussing with @Ville on IRC, he had proposed just adding it here
> since we already have this loop existing that loops through the old and new crtc states
> and we need to set the mode_changed = true right up at the top.
> But if you think its more intuitive to create a separate function for this I could do that
>
> Ville, Jani N any thoughts?

It's just a gut feeling. Kind of uneasy feeling that in the future
people look at that, and see you have this check there, and then add
more, and more.

Anyway, whatever Ville says works for me as well. ;)

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
