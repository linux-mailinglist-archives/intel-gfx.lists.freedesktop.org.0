Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B5C7B09B2
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Sep 2023 18:12:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6BEC310E55E;
	Wed, 27 Sep 2023 16:12:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 427 seconds by postgrey-1.36 at gabe;
 Wed, 27 Sep 2023 16:12:05 UTC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EB9410E563
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Sep 2023 16:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695831126; x=1727367126;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=ijnC4k/ffggFyyP2kD8YSkIH+zFO5QTe3q7uN4txqHU=;
 b=nNbuc6Rv20SfeVbe9dKqTP2bcHKw22Hv27XLV9OXrZ0M3ggRris+o35V
 Ydl4QD1CJDVK0NeygE82pR8uIusDHKaj7Be1X3vJ9vC1pZXJo0LETSgJX
 bLbpDWB1/yoK1CMIjrrZhHcqJEfeza6gKD3y/yX7xQWC/oTp7mEGHhncI
 mQqa9yR/aARIIu/xwwjniQT+EQrQ7dmfcPMZjtoclrixOM/yxlqdZEGSI
 5x0OGXkbZ7RVtkJH/kqZBb9MOYyVuYkx71WcVrX/8HKLE61iNSTqR9CjJ
 dMUecE1dyF92buJ0buunSrfPHcosWR5AeuwGdLsydyLHj/voelxTW9WuM g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="462283"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; 
   d="scan'208";a="462283"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 09:04:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10846"; a="839505722"
X-IronPort-AV: E=Sophos;i="6.03,181,1694761200"; d="scan'208";a="839505722"
Received: from roomensx-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.40.191])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2023 09:04:56 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZRRFSPuzZmm-pvOa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230922193518.723664-1-animesh.manna@intel.com>
 <87lecumo4z.fsf@intel.com>
 <BL1PR11MB59796856C4C80FE3461F13B9F9C3A@BL1PR11MB5979.namprd11.prod.outlook.com>
 <87v8bxl1lg.fsf@intel.com> <ZRQzKU1ePbiqDtUJ@intel.com>
 <87il7vk6vx.fsf@intel.com> <ZRRFSPuzZmm-pvOa@intel.com>
Date: Wed, 27 Sep 2023 19:04:53 +0300
Message-ID: <87fs2zk3fe.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 27 Sep 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Wed, Sep 27, 2023 at 05:50:10PM +0300, Jani Nikula wrote:
>> On Wed, 27 Sep 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.=
com> wrote:
>> > On Tue, Sep 26, 2023 at 12:34:35PM +0300, Jani Nikula wrote:
>> >> On Tue, 26 Sep 2023, "Manna, Animesh" <animesh.manna@intel.com> wrote:
>> >> >> -----Original Message-----
>> >> >> From: Jani Nikula <jani.nikula@linux.intel.com>
>> >> >> Sent: Monday, September 25, 2023 6:00 PM
>> >> >> To: Manna, Animesh <animesh.manna@intel.com>; intel-
>> >> >> gfx@lists.freedesktop.org
>> >> >> Subject: Re: [Intel-gfx] [PATCH] drm/i915/dsb: DSB code refactoring
>> >> >>=20
>> >> >> On Sat, 23 Sep 2023, Animesh Manna <animesh.manna@intel.com> wrote:
>> >> >> > Refactor DSB implementation to be compatible with Xe driver.
>> >> >>=20
>> >> >> Sad trombone.
>> >> >>=20
>> >> >> struct intel_dsb should remain an opaque type. I put effort into h=
iding its
>> >> >> definition, so its guts wouldn't be accessed nilly-willy all over =
the place. If it's
>> >> >> not hidden, it just will get accessed.
>> >> >
>> >> > Hi Jani,
>> >> >
>> >> > Xe driver need access to intel_dsb structure, so I can create a new=
 header file intel_dsb_ops.h and keep intel_dsb structure in it. Is it ok?
>> >>=20
>> >> I just think you need to find a different abstraction level that does=
n't
>> >> involve exposing struct intel_dsb.
>> >
>> > I hate the fact that we seem to be adding these ad-hoc wrappers all
>> > over the place. Someone should just fix xe to give us the same API as
>> > i915, or a single wrapper should do whatever conversion is needed.
>>=20
>> I think one of the problems is that i915 doesn't really give us a proper
>> API either, but requires us to fiddle with the objects' guts, and thus
>> have access to the struct definitions. In i915, with the include
>> hierarchies, that effectively means including absolutely
>> everything. Can't have that in xe.
>
> obj+vma is a pretty reasonable API IMO. And we're not doing anything
> weird with their guts IIRC.

Okay, I'll take your word for it.

> But apparently xe decided to not give us
> that, and instead of adding a single wrapper to bridge the gap we
> now have several different ad-hoc wrappers for whatever reason.

For this specific thing? Do we really have several? Or do you mean all
the different things that bridge the gap between xe and i915-display?

>>=20
>> Having the same API for both i915 and xe requires turning it into an
>> actual API that doesn't depend on either i915 or xe specific types. But
>> that's kind of tough before xe is upstream. Catch-22.
>
> Nothing preventing anyone from coming up with the single wrapper and
> upstreaming the i915 side (assuming we even want some kind of extra
> wrapper for i915 given it already uses a reasonable approach).

Well, so far nobody has stepped up to do that. Needs knowledge of
i915-gem, i915-display, and xe. It seems like someone else's problem for
everyone working on each of those components. And yeah, I'm not
volunteering either.

>> Part of the reason we have these ad-hoc wrappers is that they also serve
>> as the todo list of stuff to fix properly.
>
> Feels more like we are trying to polish these to the point where
> they are supposed to be permanent solutions.

I'm trying to flesh out ideas how to separate i915-display from the rest
of i915.ko better [1]. Eventually that'll require very clearly defining
the interfaces to/from i915-display as well. Maybe via aux-bus function
pointers.

Funny thing is, currently the only way to even check what interfaces
i915-display needs is to build it as part of xe, where those i915
interfaces aren't available.

BR,
Jani.


[1] https://patchwork.freedesktop.org/series/124286/


--=20
Jani Nikula, Intel
