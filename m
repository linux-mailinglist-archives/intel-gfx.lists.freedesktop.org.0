Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 419A818096D
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 21:44:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 037006E191;
	Tue, 10 Mar 2020 20:44:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB4986E191
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Mar 2020 20:44:23 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 13:44:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,538,1574150400"; d="scan'208";a="234460268"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 10 Mar 2020 13:44:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Mar 2020 22:44:19 +0200
Date: Tue, 10 Mar 2020 22:44:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Message-ID: <20200310204419.GT13686@intel.com>
References: <20200309161204.17792-1-stanislav.lisovskiy@intel.com>
 <20200309161204.17792-2-stanislav.lisovskiy@intel.com>
 <20200310143251.GG13686@intel.com>
 <468947d5c7842d7e30ec0b6881a41e237aff4fdd.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <468947d5c7842d7e30ec0b6881a41e237aff4fdd.camel@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v19 1/8] drm/i915: Start passing latency as
 parameter
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 10, 2020 at 02:54:12PM +0000, Lisovskiy, Stanislav wrote:
> On Tue, 2020-03-10 at 16:32 +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Mar 09, 2020 at 06:11:57PM +0200, Stanislav Lisovskiy wrote:
> > > We need to start passing memory latency as a
> > > parameter when calculating plane wm levels,
> > > as latency can get changed in different
> > > circumstances(for example with or without SAGV).
> > > So we need to be more flexible on that matter.
> > > =

> > > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 12 ++++++++----
> > >  1 file changed, 8 insertions(+), 4 deletions(-)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c
> > > b/drivers/gpu/drm/i915/intel_pm.c
> > > index 8375054ba27d..c7928c870b0a 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -4016,6 +4016,7 @@ static int skl_compute_wm_params(const struct
> > > intel_crtc_state *crtc_state,
> > >  				 int color_plane);
> > >  static void skl_compute_plane_wm(const struct intel_crtc_state
> > > *crtc_state,
> > >  				 int level,
> > > +				 u32 latency,
> > =

> > So you didn't change the types?
> =

> Yes, I saw your comment there - and looked into this, however I just
> wondered, does it make any sense do to that. The reason is because
> skl_latency is anyway defined as u16 in i915_drv.h, just as pri/spr/cur
> latencies, so wonder how this "unsigned int" going to fit into this. =

> Should I maybe then change it to u16 - at least that would somehow
> comply with the current declarations.

It's u16 in the struct to not waste space. In the code it's just
a number so a sized type doesn't make all that much sense.
And I think most of the code uses int/unsigned int for it anyway.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
