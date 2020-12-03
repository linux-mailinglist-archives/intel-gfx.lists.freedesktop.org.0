Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81DEC2CDF03
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Dec 2020 20:33:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E30136EBFB;
	Thu,  3 Dec 2020 19:33:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2ACBB6EBFB
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Dec 2020 19:33:34 +0000 (UTC)
IronPort-SDR: yzuOPEmMqaQogL8ggh++wwX4Ivoob7wAX5z1dtOToLn/K50qRH2jeK5MdmNG6p1CGDJw5cBCiH
 ZZ5m/+UInSjQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9824"; a="257971332"
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="257971332"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:33:33 -0800
IronPort-SDR: LEt3pZa8UA81jgu0GZ6LnJF2cWGi1jrXiZN98K1Rp2f3jwzimtz8GXufyT8YUplq0lqlHoLQK0
 lAo4NJPA0l9A==
X-IronPort-AV: E=Sophos;i="5.78,390,1599548400"; d="scan'208";a="336078953"
Received: from labuser-z97x-ud5h.jf.intel.com (HELO labuser-Z97X-UD5H)
 ([10.165.21.211])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2020 11:33:32 -0800
Date: Thu, 3 Dec 2020 11:36:32 -0800
From: "Navare, Manasi" <manasi.d.navare@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <20201203193632.GB2130@labuser-Z97X-UD5H>
References: <20201022222709.29386-1-manasi.d.navare@intel.com>
 <20201022222709.29386-6-manasi.d.navare@intel.com>
 <87o8k5sd2l.fsf@intel.com>
 <20201201225259.GB22644@labuser-Z97X-UD5H>
 <20201202223828.GA26911@labuser-Z97X-UD5H>
 <87pn3qc08g.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pn3qc08g.fsf@intel.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
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

On Thu, Dec 03, 2020 at 06:39:43PM +0200, Jani Nikula wrote:
> On Wed, 02 Dec 2020, "Navare, Manasi" <manasi.d.navare@intel.com> wrote:
> > On Tue, Dec 01, 2020 at 02:52:59PM -0800, Navare, Manasi wrote:
> >> On Tue, Nov 10, 2020 at 12:47:46PM +0200, Jani Nikula wrote:
> >> > On Thu, 22 Oct 2020, Manasi Navare <manasi.d.navare@intel.com> wrote:
> >> > > @@ -15202,7 +15206,8 @@ static int intel_atomic_check(struct drm_device *dev,
> >> > >  
> >> > >  	for_each_oldnew_intel_crtc_in_state(state, crtc, old_crtc_state,
> >> > >  					    new_crtc_state, i) {
> >> > > -		if (new_crtc_state->inherited != old_crtc_state->inherited)
> >> > > +		if (new_crtc_state->inherited != old_crtc_state->inherited ||
> >> > > +		    new_crtc_state->uapi.vrr_enabled != old_crtc_state->uapi.vrr_enabled)
> >> > 
> >> > Somehow this feels like a really specific check to add considering the
> >> > abstraction level of the function in general.
> >
> > Actually while discussing with @Ville on IRC, he had proposed just adding it here
> > since we already have this loop existing that loops through the old and new crtc states
> > and we need to set the mode_changed = true right up at the top.
> > But if you think its more intuitive to create a separate function for this I could do that
> >
> > Ville, Jani N any thoughts?
> 
> It's just a gut feeling. Kind of uneasy feeling that in the future
> people look at that, and see you have this check there, and then add
> more, and more.
> 
> Anyway, whatever Ville says works for me as well. ;)

Yea I actually also agree reg this so let me just move this to a separate
function where itw ill loop through crtc states and force mode changed
for this condition.

If Ville thinks otherwise we can remove it since I havent got any review comments
from Ville yet.

Manasi

> 
> BR,
> Jani.
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
