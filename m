Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3441391E5
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 14:15:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55A77899DB;
	Mon, 13 Jan 2020 13:15:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15471899DB
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 13:15:20 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 05:15:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,429,1571727600"; d="scan'208";a="219293253"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga008.fm.intel.com with SMTP; 13 Jan 2020 05:15:17 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 Jan 2020 15:15:16 +0200
Date: Mon, 13 Jan 2020 15:15:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>
Message-ID: <20200113131516.GN13686@intel.com>
References: <20200110183228.8199-1-ville.syrjala@linux.intel.com>
 <157868245324.10140.16798394715431007470@skylake-alporthouse-com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <157868245324.10140.16798394715431007470@skylake-alporthouse-com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Make a copy of the ggtt view
 for slave plane
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

On Fri, Jan 10, 2020 at 06:54:13PM +0000, Chris Wilson wrote:
> Quoting Ville Syrjala (2020-01-10 18:32:23)
> > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > =

> > intel_prepare_plane_fb() will always pin plane_state->hw.fb whenever
> > it is present. We copy that from the master plane to the slave plane,
> > but we fail to copy the corresponding ggtt view. Thus when it comes time
> > to pin the slave plane's fb we use some stale ggtt view left over from
> > the last time the plane was used as a non-slave plane. If that previous
> > use involved 90/270 degree rotation or remapping we'll try to shuffle
> > the pages of the new fb around accordingingly. However the new
> > fb may be backed by a bo with less pages than what the ggtt view
> > rotation/remapped info requires, and so we we trip a GEM_BUG().
> > =

> > Steps to reproduce on icl:
> > 1. plane 1: whatever
> >    plane 6: largish !NV12 fb + 90 degree rotation
> > 2. plane 1: smallish NV12 fb
> >    plane 6: make invisible so it gets slaved to plane 1
> > 3. GEM_BUG()
> > =

> > Cc: Chris Wilson <chris@chris-wilson.co.uk>
> > Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> > Closes: https://gitlab.freedesktop.org/drm/intel/issues/951
> > Fixes: 1f594b209fe1 ("drm/i915: Remove special case slave handling duri=
ng hw programming, v3.")
> > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 1 +
> >  1 file changed, 1 insertion(+)
> > =

> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu=
/drm/i915/display/intel_display.c
> > index 59c375879186..fafb67689dee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -12366,6 +12366,7 @@ static int icl_check_nv12_planes(struct intel_c=
rtc_state *crtc_state)
> >                 /* Copy parameters to slave plane */
> >                 linked_state->ctl =3D plane_state->ctl | PLANE_CTL_YUV4=
20_Y_PLANE;
> >                 linked_state->color_ctl =3D plane_state->color_ctl;
> > +               linked_state->view =3D plane_state->view;
> >                 memcpy(linked_state->color_plane, plane_state->color_pl=
ane,
> >                        sizeof(linked_state->color_plane));
> =

> So this bit is just copying across the results of
> intel_plane_compute_gtt()?

Yep. Actually we copied some of it already (.color_plane[])
but this part was missing.

> =

> What happens for equivalent of intel_plane_needs_remap()?

The master plane makes the remap vs. not decision and fills
.color_plane[] and .view accordingly for both chroma and luma.
Though at the moment intel_plane_needs_remap() is a bit
incomplete as it only considers the luma stride limit. The
chroma stride limit is not really documented (at least on
pre-icl) and I've been too lazy to reverse engineer it.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
