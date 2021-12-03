Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C81467456
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Dec 2021 10:55:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDBB7737D5;
	Fri,  3 Dec 2021 09:55:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7097F737D0
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Dec 2021 09:55:49 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10186"; a="236887524"
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="236887524"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 01:55:48 -0800
X-IronPort-AV: E=Sophos;i="5.87,283,1631602800"; d="scan'208";a="610339928"
Received: from chobbs-mobl1.ger.corp.intel.com (HELO localhost) ([10.252.2.56])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2021 01:55:46 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <YanfuTTEODQQwHV7@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211124113652.22090-1-ville.syrjala@linux.intel.com>
 <20211124113652.22090-12-ville.syrjala@linux.intel.com>
 <87pmqplft3.fsf@intel.com> <YZ9azCw2Rc96QuNL@intel.com>
 <87bl28lcyw.fsf@intel.com> <YZ991bmhNaIj4MrQ@intel.com>
 <91e37161-7148-5d71-2efa-0176fbe2f468@linux.intel.com>
 <871r34l395.fsf@intel.com> <YanfuTTEODQQwHV7@intel.com>
Date: Fri, 03 Dec 2021 11:55:43 +0200
Message-ID: <87lf12gggw.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Fri, 03 Dec 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Thu, Nov 25, 2021 at 04:27:18PM +0200, Jani Nikula wrote:
>> On Thu, 25 Nov 2021, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wro=
te:
>> > On 25/11/2021 12:13, Ville Syrj=C3=A4l=C3=A4 wrote:
>> >> On Thu, Nov 25, 2021 at 12:57:27PM +0200, Jani Nikula wrote:
>> >>> On Thu, 25 Nov 2021, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.in=
tel.com> wrote:
>> >>>> On Wed, Nov 24, 2021 at 05:43:52PM +0200, Jani Nikula wrote:
>> >>>>> On Wed, 24 Nov 2021, Ville Syrjala <ville.syrjala@linux.intel.com>=
 wrote:
>> >>>>>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> >>>>>>
>> >>>>>> In order to encapsulate FBC harder let's just move the debugfs
>> >>>>>> stuff into intel_fbc.c.
>> >>>>>
>> >>>>> Mmmh, I've kind of moved towards a split where i915_debugfs.c and
>> >>>>> intel_display_debugfs.c have all the debugfs boilerplate, while the
>> >>>>> implementation files have the guts with struct drm_i915_private *i=
915
>> >>>>> (or something more specific) and struct seq_file *m passed in.
>> >>>>>
>> >>>>> In some ways the split is arbitrary, but I kind of find the debugfs
>> >>>>> boilerplate a distraction in the implementation files, and we also=
 skip
>> >>>>> building the debugfs files completely for CONFIG_DEBUG_FS=3Dn. I d=
on't
>> >>>>> think I'd want to add #ifdefs on that spread around either.
>> >>>>
>> >>>> If we want to keep the debugfs in a separate file then we'll have to
>> >>>> expose the guts of the FBC implementation in intel_fbc.h (or some o=
ther
>> >>>> header) just for that, or we add a whole bunch of otherwise useless
>> >>>> functions that pretend to provide some higher level of abstraction.
>> >>>>
>> >>>> Not really a fan of either of those options.
>> >>>
>> >>> Obviously I'm in favour of hiding the guts, no question about it. I'm
>> >>> also very much in favour of moving the details out of our *debugfs.c
>> >>> files. It's just a question of where to draw the line, and which sid=
e of
>> >>> the line the debugfs boilerplate lands.
>> >>>
>> >>> Which leaves us either your approach in the patch at hand, or adding=
 the
>> >>> fbc helper functions for debugfs, which would be something like:
>> >>>
>> >>> intel_fbc_get_status
>> >>> intel_fbc_get_false_color
>> >>> intel_fbc_set_false_color
>> >>=20
>> >> So I guess you're suggesting that just the DEFINE_ATTRIBUTE
>> >> and debugfs_create_file() stuff should remain in
>> >> intel_display_debugfs.c?
>> >>=20
>> >> Not sure that approach has any benefits whatsoever. The get/set
>> >> functions will need to be non-static and they'll get included in
>> >> the binary whether or not debugfs is enabled or not (unless you
>> >> lto it perhaps). If everything is in intel_fbc.c all that stuff
>> >> just gets optimized out entirely when not needed.
>> >>=20
>> >> Also then I couldn't do this sort of stuff:
>> >>   if (fbc->funcs->set_false_color)
>> >>   	debugfs_create_file(...)
>> >> because that requires knowledge only available to intel_fbc.c.
>> >> I'd need to add some kind of intel_fbc_has_false_color() thing
>> >> just for that.
>> >
>> > Not guaranteeing I captured all the nuances here but how about an=20
>> > approach similar to selftests? That is, have a separate file for debug=
fs=20
>> > registration and bits (each "module" explicitly registers as in Ville'=
s=20
>> > patch), and have the owning "module" include the debugfs part at the e=
nd=20
>> > of it. That way no exports, or defining too much API, would be needed.=
=20
>> > And not needing common debugfs code to know the guts of any module.=20
>> > Benefit of not compiling any of it when !CONFIG_DEBUG_FS is kept (or=20
>> > gained, not even sure any more..).
>>=20
>> Frankly, I really dislike the "include code" part about selftests...
>
> We seem to have gone a bit off track in the discussion here. There
> is no plan to do any kind of "include code" or anything here. All
> I want to do is put the debugfs stuff into the same file as the
> real implementation so that a) no implementation details need to
> leak outside, b) the code gets optimized away when debufs is
> disabled resulting in a smaller binary. Though I don't know if
> anyone seriously compiles w/o debugfs anyway.
>
> I guess another benefit is that it's harder to forget to
> update the debugfs code when making changes to the rest of the
> implementation. I've lost count how many times I've forgeotten
> to do that with the debugfs code living in a totally separate
> file.

Yeah, let's un-stall this.

Acked-by: Jani Nikula <jani.nikula@intel.com>

on the change here, better abstractions and smaller interfaces being the
main rationale for it.

I think an insteresting question is, with all the debugfs stuff being
static in intel_fbc.c, is the compiler actually smart enough to optimize
the static code and data away when CONFIG_DEBUG_FS=3Dn, even without
#ifdefs? Or is that something you're already claiming above?

If that's the case, my objection to adding #ifdefs just goes away.

BR,
Jani.


--=20
Jani Nikula, Intel Open Source Graphics Center
