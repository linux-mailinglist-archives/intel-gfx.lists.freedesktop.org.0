Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE3A467487
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 11:06:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E965F73CBE;
	Fri,  3 Dec 2021 10:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC92C73CBD
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 10:06:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="237176453"
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="237176453"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 02:06:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,284,1631602800"; d="scan'208";a="513651021"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 03 Dec 2021 02:06:13 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 03 Dec 2021 12:06:13 +0200
Date: Fri, 3 Dec 2021 12:06:13 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YansFbEIEoLI7nQO@intel.com>
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-12-ville.syrjala@linux.intel.com>
 <87pmqplft3.fsf@intel.com> <YZ9azCw2Rc96QuNL@intel.com>
 <87bl28lcyw.fsf@intel.com> <YZ991bmhNaIj4MrQ@intel.com>
 <91e37161-7148-5d71-2efa-0176fbe2f468@linux.intel.com>
 <871r34l395.fsf@intel.com> <YanfuTTEODQQwHV7@intel.com>
 <87lf12gggw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87lf12gggw.fsf@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 11/20] drm/i915/fbc: Move FBC debugfs stuff
 into intel_fbc.c
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 03, 2021 at 11:55:43AM +0200, Jani Nikula wrote:
> On Fri, 03 Dec 2021, Ville Syrj�l� <ville.syrjala@linux.intel.com> wrote:
> > On Thu, Nov 25, 2021 at 04:27:18PM +0200, Jani Nikula wrote:
> >> On Thu, 25 Nov 2021, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> >> > On 25/11/2021 12:13, Ville Syrj�l� wrote:
> >> >> On Thu, Nov 25, 2021 at 12:57:27PM +0200, Jani Nikula wrote:
> >> >>> On Thu, 25 Nov 2021, Ville Syrj�l� <ville.syrjala@linux.intel.com> wrote:
> >> >>>> On Wed, Nov 24, 2021 at 05:43:52PM +0200, Jani Nikula wrote:
> >> >>>>> On Wed, 24 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> >> >>>>>> From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> >> >>>>>>
> >> >>>>>> In order to encapsulate FBC harder let's just move the debugfs
> >> >>>>>> stuff into intel_fbc.c.
> >> >>>>>
> >> >>>>> Mmmh, I've kind of moved towards a split where i915_debugfs.c and
> >> >>>>> intel_display_debugfs.c have all the debugfs boilerplate, while the
> >> >>>>> implementation files have the guts with struct drm_i915_private *i915
> >> >>>>> (or something more specific) and struct seq_file *m passed in.
> >> >>>>>
> >> >>>>> In some ways the split is arbitrary, but I kind of find the debugfs
> >> >>>>> boilerplate a distraction in the implementation files, and we also skip
> >> >>>>> building the debugfs files completely for CONFIG_DEBUG_FS=n. I don't
> >> >>>>> think I'd want to add #ifdefs on that spread around either.
> >> >>>>
> >> >>>> If we want to keep the debugfs in a separate file then we'll have to
> >> >>>> expose the guts of the FBC implementation in intel_fbc.h (or some other
> >> >>>> header) just for that, or we add a whole bunch of otherwise useless
> >> >>>> functions that pretend to provide some higher level of abstraction.
> >> >>>>
> >> >>>> Not really a fan of either of those options.
> >> >>>
> >> >>> Obviously I'm in favour of hiding the guts, no question about it. I'm
> >> >>> also very much in favour of moving the details out of our *debugfs.c
> >> >>> files. It's just a question of where to draw the line, and which side of
> >> >>> the line the debugfs boilerplate lands.
> >> >>>
> >> >>> Which leaves us either your approach in the patch at hand, or adding the
> >> >>> fbc helper functions for debugfs, which would be something like:
> >> >>>
> >> >>> intel_fbc_get_status
> >> >>> intel_fbc_get_false_color
> >> >>> intel_fbc_set_false_color
> >> >> 
> >> >> So I guess you're suggesting that just the DEFINE_ATTRIBUTE
> >> >> and debugfs_create_file() stuff should remain in
> >> >> intel_display_debugfs.c?
> >> >> 
> >> >> Not sure that approach has any benefits whatsoever. The get/set
> >> >> functions will need to be non-static and they'll get included in
> >> >> the binary whether or not debugfs is enabled or not (unless you
> >> >> lto it perhaps). If everything is in intel_fbc.c all that stuff
> >> >> just gets optimized out entirely when not needed.
> >> >> 
> >> >> Also then I couldn't do this sort of stuff:
> >> >>   if (fbc->funcs->set_false_color)
> >> >>   	debugfs_create_file(...)
> >> >> because that requires knowledge only available to intel_fbc.c.
> >> >> I'd need to add some kind of intel_fbc_has_false_color() thing
> >> >> just for that.
> >> >
> >> > Not guaranteeing I captured all the nuances here but how about an 
> >> > approach similar to selftests? That is, have a separate file for debugfs 
> >> > registration and bits (each "module" explicitly registers as in Ville's 
> >> > patch), and have the owning "module" include the debugfs part at the end 
> >> > of it. That way no exports, or defining too much API, would be needed. 
> >> > And not needing common debugfs code to know the guts of any module. 
> >> > Benefit of not compiling any of it when !CONFIG_DEBUG_FS is kept (or 
> >> > gained, not even sure any more..).
> >> 
> >> Frankly, I really dislike the "include code" part about selftests...
> >
> > We seem to have gone a bit off track in the discussion here. There
> > is no plan to do any kind of "include code" or anything here. All
> > I want to do is put the debugfs stuff into the same file as the
> > real implementation so that a) no implementation details need to
> > leak outside, b) the code gets optimized away when debufs is
> > disabled resulting in a smaller binary. Though I don't know if
> > anyone seriously compiles w/o debugfs anyway.
> >
> > I guess another benefit is that it's harder to forget to
> > update the debugfs code when making changes to the rest of the
> > implementation. I've lost count how many times I've forgeotten
> > to do that with the debugfs code living in a totally separate
> > file.
> 
> Yeah, let's un-stall this.
> 
> Acked-by: Jani Nikula <jani.nikula@intel.com>
> 
> on the change here, better abstractions and smaller interfaces being the
> main rationale for it.
> 
> I think an insteresting question is, with all the debugfs stuff being
> static in intel_fbc.c, is the compiler actually smart enough to optimize
> the static code and data away when CONFIG_DEBUG_FS=n, even without
> #ifdefs? Or is that something you're already claiming above?

Yes it all disappeared from the binary when I tried it.
Only thing left was an empty intel_fbc_debugfs_register().

-- 
Ville Syrj�l�
Intel
