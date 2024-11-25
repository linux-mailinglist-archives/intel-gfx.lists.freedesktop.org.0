Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7CAA9D84F2
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 12:58:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD3210E61D;
	Mon, 25 Nov 2024 11:58:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=xry111.site header.i=@xry111.site header.b="F1yTwmR9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 412 seconds by postgrey-1.36 at gabe;
 Mon, 25 Nov 2024 07:02:31 UTC
Received: from xry111.site (xry111.site [89.208.246.23])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E382E10E05A
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 07:02:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xry111.site;
 s=default; t=1732517738;
 bh=51ygR6FDD7amxb9C//Pa5OawOXC4hfrpJUv+WeNQkdU=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=F1yTwmR9js4rK/samaZFe8PlpmCnKV7vGxdNOPPfmtiV2UNklvs8kIFzI0zYr6yCn
 rMEd5HTTE07uoY9pafvZhkA0ghzW2YAhP655zAx6PB3y/6Q3FG9W5dOeN9oqbenT5O
 d3MxMJfcH2+F46ST3/ZJUd+leAIGnrM3ReDMY4GQ=
Received: from [192.168.124.11] (unknown [113.200.174.70])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (secp384r1)
 server-digest SHA384) (Client did not present a certificate)
 (Authenticated sender: xry111@xry111.site)
 by xry111.site (Postfix) with ESMTPSA id 7DA7666990;
 Mon, 25 Nov 2024 01:55:37 -0500 (EST)
Message-ID: <45a5bba8de009347262d86a4acb27169d9ae0d9f.camel@xry111.site>
Subject: Re: [PATCH 3/7] drm/i915: Enable 10bpc + CCS on TGL+
From: Xi Ruoyao <xry111@xry111.site>
To: juhapekka.heikkila@gmail.com, Ville =?ISO-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Date: Mon, 25 Nov 2024 14:55:34 +0800
In-Reply-To: <60c4b7c8-6ae8-469f-937d-d1a877c9b16c@gmail.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-4-ville.syrjala@linux.intel.com>
 <e30b033c-c242-47ef-aa9e-ba2ee734ca09@gmail.com>
 <ZwAt5SfK8wzYoQb1@intel.com>
 <60c4b7c8-6ae8-469f-937d-d1a877c9b16c@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 25 Nov 2024 11:58:23 +0000
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2024-10-08 at 12:01 +0300, Juha-Pekka Heikkila wrote:
> On 4.10.2024 21.03, Ville Syrj=C3=A4l=C3=A4 wrote:
> > On Fri, Oct 04, 2024 at 04:35:17PM +0300, Juha-Pekka Heikkila wrote:
> > > On 18.9.2024 17.44, Ville Syrjala wrote:
> > > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > >=20
> > > > TGL+ support 10bpc compressed scanout. Enable it.
> > > >=20
> > > > v2: Set .depth=3D30 for all variants to match drm_fourcc.c
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Set clear color block size to 0x0
> > > >=20
> > > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.c=
om>
> > > > ---
> > > > =C2=A0=C2=A0 drivers/gpu/drm/i915/display/intel_fb.c=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 | 36 +++++++++++++++++++
> > > > =C2=A0=C2=A0 .../drm/i915/display/skl_universal_plane.c=C2=A0=C2=A0=
=C2=A0 |=C2=A0 8 ++---
> > > > =C2=A0=C2=A0 2 files changed, 40 insertions(+), 4 deletions(-)
> > > >=20
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/=
drm/i915/display/intel_fb.c
> > > > index bcf0d016f499..9b9da4f71f73 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > @@ -67,6 +67,18 @@ static const struct drm_format_info gen12_ccs_fo=
rmats[] =3D {
> > > > =C2=A0=C2=A0=C2=A0	{ .format =3D DRM_FORMAT_ABGR8888, .depth =3D 32=
, .num_planes =3D 2,
> > > > =C2=A0=C2=A0=C2=A0	=C2=A0 .char_per_block =3D { 4, 1 }, .block_w =
=3D { 1, 2 }, .block_h =3D { 1, 1 },
> > > > =C2=A0=C2=A0=C2=A0	=C2=A0 .hsub =3D 1, .vsub =3D 1, .has_alpha =3D =
true },
> > > > +	{ .format =3D DRM_FORMAT_XRGB2101010, .depth =3D 30, .num_planes =
=3D 2,
> > > > +	=C2=A0 .char_per_block =3D { 4, 1 }, .block_w =3D { 1, 2 }, .bloc=
k_h =3D { 1, 1 },
> > > > +	=C2=A0 .hsub =3D 1, .vsub =3D 1, },
> > > > +	{ .format =3D DRM_FORMAT_XBGR2101010, .depth =3D 30, .num_planes =
=3D 2,
> > > > +	=C2=A0 .char_per_block =3D { 4, 1 }, .block_w =3D { 1, 2 }, .bloc=
k_h =3D { 1, 1 },
> > > > +	=C2=A0 .hsub =3D 1, .vsub =3D 1, },
> > > > +	{ .format =3D DRM_FORMAT_ARGB2101010, .depth =3D 30, .num_planes =
=3D 2,
> > >=20
> > > Is that comment about depth=3D30 for all variants because of these al=
pha
> > > formats? Why is that? Here on other formats alpha is taken as part of
> > > depth, like in above "DRM_FORMAT_ABGR8888, .depth =3D 32"
> >=20
> > That stuff is just legacy compatibility stuff, and back in
> > the day peope decided that depth=3D=3D32 simply means ARGB8888.
> > I'm not sure we should even state depth=3D30 on ARGB2101010
> > at all, or would it be better to leave it at 0.
> >=20
> > Another option might be to just set .depth=3D0 on absolutely
> > all compressed formats. Using these with some legacy uapi
> > which only talks in terms of bpp and depth doesn't seem
> > feasible anyway.
> >=20
> > But for now I think we just want to match drm_fourcc.c since
> > that's what we did for the other compressed formats.
>=20
> ack. patch set is
>=20
> Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

Hi Ville and Juha-Pekka,

Unfortunately this commit has caused gnome-shell to display nothing on
my system.  Its log contains error messages:

    Failed to ensure KMS FB ID on /dev/dri/card1: drmModeAddFB2WithModifier=
s failed: Invalid argument
    meta_frame_native_release: assertion '!frame_native->kms_update' failed

Reverting commits 7c35015fab5d ("drm/i915: Enable fp16 + CCS on TGL+")
and c315fbfa44f4 (this one) "fixes" the issue for me.

The system does have a TGL (i5-11300H) but I don't think my monitor
(it's just the display panel of a budget laptop) supports 10bpc.

Any pointer on debugging this further?

--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University
