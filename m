Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6C131A698
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 22:13:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 753BB6E7F1;
	Fri, 12 Feb 2021 21:13:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F37596E7F1
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 21:13:51 +0000 (UTC)
IronPort-SDR: XrfgyPEP+pboSw97MsHwoMqaXW575PG2nyF4XD+qmBwjoI1N6Bg6YZnlU5BzshtSkh5cnld/h5
 VVFvloyJ6EMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="170144837"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="170144837"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 13:13:50 -0800
IronPort-SDR: 0jrdfxbkgeBBtf19fbhaYLHnB+aiUvucbOQ7KugqjkzDEAzzGChFrwWfX6OoxWWXK0fPTQvZ93
 qc3uSeMa5p0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="381865827"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 12 Feb 2021 13:13:48 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Feb 2021 23:13:48 +0200
Date: Fri, 12 Feb 2021 23:13:48 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Souza, Jose" <jose.souza@intel.com>
Message-ID: <YCbvjHhGHvD5vM+0@intel.com>
References: <20210212182201.155043-1-jose.souza@intel.com>
 <20210212182201.155043-3-jose.souza@intel.com>
 <YCbKi3rpV3pWwkHw@intel.com>
 <463536ed55ca9d96c96e48efe60e99e2dad8cb07.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <463536ed55ca9d96c96e48efe60e99e2dad8cb07.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Fix plane watermark mismatches
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

On Fri, Feb 12, 2021 at 07:44:22PM +0000, Souza, Jose wrote:
> On Fri, 2021-02-12 at 20:35 +0200, Ville Syrj=E4l=E4 wrote:
> > On Fri, Feb 12, 2021 at 10:22:01AM -0800, Jos=E9 Roberto de Souza wrote:
> > > Found a system were firmware/BIOS left the plane_res_b and plane_res_l
> > > set with non-zero values for disable planes.
> > =

> > It pretty much happens always since the reset value is not zero.
> > IIRC we made the state chcker pedantic enough to complain about
> > that, so we need to clean it up.
> =

> Are you planning to fix it soon?

Fix what exactly? I guess you're seeing an actual problem of some sort?

> If not I can do it but will need a couple more of hints of what you
> thinking to do.
> =

> We will need this fixed soon otherwise this system will block CI
> testing in this platform.
> =

> > =

> > > As the planes are disabled i915 will not even try to sanitize it so
> > > here returning earlier if both skl_wm_levels being compared are
> > > disabled, if that is true no need to check the other fields as HW
> > > will ignore it.
> > > =

> > > Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/intel_pm.c | 2 ++
> > >  1 file changed, 2 insertions(+)
> > > =

> > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/i=
ntel_pm.c
> > > index 8cc67f9c4e58..c630dc10c34b 100644
> > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > @@ -5633,6 +5633,8 @@ void skl_write_cursor_wm(struct intel_plane *pl=
ane,
> > >  bool skl_wm_level_equals(const struct skl_wm_level *l1,
> > >  			 const struct skl_wm_level *l2)
> > >  {
> > > +	if (l1->plane_en =3D=3D false && l2->plane_en =3D=3D false)
> > > +		return true;
> > >  	return l1->plane_en =3D=3D l2->plane_en &&
> > >  		l1->ignore_lines =3D=3D l2->ignore_lines &&
> > >  		l1->plane_res_l =3D=3D l2->plane_res_l &&
> > > -- =

> > > 2.30.1
> > > =

> > > _______________________________________________
> > > Intel-gfx mailing list
> > > Intel-gfx@lists.freedesktop.org
> > > https://lists.freedesktop.org/mailman/listinfo/intel-gfx
> > =

> =


-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
