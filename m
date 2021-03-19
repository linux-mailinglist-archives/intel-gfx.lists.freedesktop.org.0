Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3117D3427B9
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Mar 2021 22:28:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07C106EAD5;
	Fri, 19 Mar 2021 21:28:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37C7D6EAD4;
 Fri, 19 Mar 2021 21:28:04 +0000 (UTC)
IronPort-SDR: o/USQ5HEx2+4wkjNETYff8GKBTAqrY3gZHesa3LfZHDN8dbhEEXhegB1yuFrYE+G+DBF01U8mL
 Wlp1D1U00Maw==
X-IronPort-AV: E=McAfee;i="6000,8403,9928"; a="186630897"
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="186630897"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2021 14:28:03 -0700
IronPort-SDR: zvA1/yTsoXOeGNHtDF46cFB70MwJU7iG3RJQKCoYzoNIyn2znSPKJ+4DQ6x4uCrrv9CrVlUQ8K
 hVCxJ4vW8JNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,262,1610438400"; d="scan'208";a="413667582"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 19 Mar 2021 14:28:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 19 Mar 2021 23:27:59 +0200
Date: Fri, 19 Mar 2021 23:27:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <YFUXX/pDcBheiNWL@intel.com>
References: <20210303204433.GA15819@labuser-Z97X-UD5H>
 <20210304104223.6b3490bc@eldfell>
 <20210309005252.GA27491@labuser-Z97X-UD5H>
 <20210309111350.3be0543f@eldfell>
 <CAKMK7uEak_2YNDZpyho5bBhhYCvoXh6MoPNL6FmV9sU8oELGPA@mail.gmail.com>
 <20210318230126.GA1900@labuser-Z97X-UD5H>
 <YFS7mINBWsHiYIKm@intel.com>
 <20210319205413.GA6359@labuser-Z97X-UD5H>
 <YFUTyb6ofKRI12hO@intel.com>
 <20210319212624.GA6560@labuser-Z97X-UD5H>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210319212624.GA6560@labuser-Z97X-UD5H>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/atomic: Add the crtc to affected crtc
 only if uapi.enable = true
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
Cc: Daniel Vetter <daniel.vetter@intel.com>,
 intel-gfx <intel-gfx@lists.freedesktop.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Daniel Stone <daniels@collabora.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 19, 2021 at 02:26:24PM -0700, Navare, Manasi wrote:
> On Fri, Mar 19, 2021 at 11:12:41PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Mar 19, 2021 at 01:54:13PM -0700, Navare, Manasi wrote:
> > > On Fri, Mar 19, 2021 at 04:56:24PM +0200, Ville Syrj=E4l=E4 wrote:
> > > > On Thu, Mar 18, 2021 at 04:01:26PM -0700, Navare, Manasi wrote:
> > > > > So basically we see this warning only in case of bigjoiner when
> > > > > drm_atomic_check gets called without setting the state->allow_mod=
eset flag.
> > > > =

> > > > Considering the code is 'WARN(!state->allow_modeset, ...' that
> > > > fact should be rather obvious.
> > > > =

> > > > > =

> > > > > So do you think that in i915, in intel_atomic_check_bigjoiner() w=
e should only
> > > > > steal the crtc when allow_modeset flag is set in state?
> > > > =

> > > > No. If you fully read drm_atomic_check_only() you will observe
> > > > that it will reject any commit w/ allow_modeset=3D=3Dfalse which =

> > > > needs a modeset. And it does that before the WARN.
> > > > =

> > > > So you're barking up the wrong tree here. The problem I think
> > > > is that you're just computing requested_crtcs wrong.
> > > =

> > > So here in this case, requested CRTC =3D 0x1 since it requests modese=
t on CRTC 0
> > > Now in teh atomic check, it steals the slave CRTC 1 and hence affecte=
d CRTC comes out
> > > as 0x3 and hence the mismatch.
> > =

> > Hmm. How can it be 0x3 if we filtered out the uapi.enable=3D=3Dfalse ca=
se?
> > =

> =

> Yes if I add that condition like in this patch then it correctly calculat=
es
> the affected crtc bitmask as only 0x1 since it doesnt include the slave c=
rtc.
> So with this patch, requested crtc =3D 0x 1, affected crtc =3D 0x1
> =

> If this looks good then this fixes our bigjoiner warnings.
> Does this patch look good to you as is then?

I think you still need to fix the requested_crtcs calculation.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
