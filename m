Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE581360A7
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2020 20:01:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B72EE6E030;
	Thu,  9 Jan 2020 19:01:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE22E6E030
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2020 19:01:33 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Jan 2020 11:01:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,414,1571727600"; d="scan'208";a="235797790"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga002.jf.intel.com with SMTP; 09 Jan 2020 11:01:30 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 09 Jan 2020 21:01:28 +0200
Date: Thu, 9 Jan 2020 21:01:28 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200109190127.GH13686@intel.com>
References: <20200109141152.975687-1-chris@chris-wilson.co.uk>
 <20200109145241.GO1208@intel.com>
 <20200109183709.GG13686@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200109183709.GG13686@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Validation rotated vma bounds
 are within the object
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 09, 2020 at 08:37:09PM +0200, Ville Syrj=E4l=E4 wrote:
> On Thu, Jan 09, 2020 at 04:52:41PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Thu, Jan 09, 2020 at 02:11:52PM +0000, Chris Wilson wrote:
> > > Quite understandably, we bug out when asked to find a page that doesn=
't
> > > belong to the object. However, we should report the error back to the
> > > user long before we attempt the out-of-bound access! In this case, it=
 is
> > > insufficient validation on the rotated vma, with the simplest/cheapest
> > > point for us to insert a bound check when we are computing the rotated
> > > page lookups.
> > > =

> > > Similarly, it might be wise to see if we can validate the user input
> > > upon creating the rotated framebuffer.
> > =

> > We do. Did someone break it?
> =

> One theory on how this could happens is that we are using a stale gtt
> view here. But AFAICS the only way that could happen is that we take
> a shortcut out from the plane check somewhere before populating
> plane_state->gtt_view afresh, after using a rotated fb previously so
> that plane_state->gtt_view has been populated with a rotated view.
> =

> The first such path I see is:
> intel_plane_atomic_check_with_state()
> {
> ...
> 	if (!new_plane_state->hw.crtc && !old_plane_state->hw.crtc)
> 		return 0;
> =

> but that should also imply new_plane_state->hw.fb=3D=3DNULL and so we
> should not end up pinning the fb.
> =

> The second path is:
> intel_plane_compute_gtt()
> {
> 	const struct intel_framebuffer *fb =3D
> 	        to_intel_framebuffer(plane_state->hw.fb);
> =

> 	if (!fb)
> 		return 0;
> =

> and so we won't have a new fb there either and so shouldn't try
> to pin it.
> =

> So can't see how that could happen from these normal paths. Which
> leads me to wonder if this might have something to do with nv12
> slave planes...

That may well be it. Looks like we may not end up calling
intel_plane_copy_uapi_to_hw_state() for old slave planes at all,
thus leaving a stale plane_state->hw.fb pointer behind.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
