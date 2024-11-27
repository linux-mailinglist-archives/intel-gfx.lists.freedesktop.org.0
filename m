Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A419DB537
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 11:04:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2533810E318;
	Thu, 28 Nov 2024 10:04:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=xry111.site header.i=@xry111.site header.b="JJUmbWdx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from xry111.site (xry111.site [89.208.246.23])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBA610E9EC
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Nov 2024 06:58:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xry111.site;
 s=default; t=1732690721;
 bh=pw1X6H8/zY0wZ7mt16egIeszIWBhazuzEjcVI8qOGeE=;
 h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
 b=JJUmbWdxVGQgCMjrWyH4Z+Yhkhe/oyB3CYiH5iflUSc7GjGymyvQKB3jtBOZ73GEw
 8FKn1x3bp7ewMN06pqtv/YR/+fGYYjRhStgfHiyW6XgpBkA4CdwzIYXwoStn8EinB1
 bn4kyXyo/5RN/WlTSQZDjGJQLED7fPy+L1gMNClY=
Received: from [192.168.124.9] (unknown [113.200.174.84])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (prime256v1) server-signature ECDSA (secp384r1)
 server-digest SHA384) (Client did not present a certificate)
 (Authenticated sender: xry111@xry111.site)
 by xry111.site (Postfix) with ESMTPSA id 977A766AB3;
 Wed, 27 Nov 2024 01:58:40 -0500 (EST)
Message-ID: <e5d6b1364af9b95181719370763cdc7e96ec930e.camel@xry111.site>
Subject: Re: [PATCH 3/7] drm/i915: Enable 10bpc + CCS on TGL+
From: Xi Ruoyao <xry111@xry111.site>
To: Ville =?ISO-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Cc: juhapekka.heikkila@gmail.com, intel-gfx@lists.freedesktop.org
Date: Wed, 27 Nov 2024 14:58:38 +0800
In-Reply-To: <Z0a0tRnfv8UKorJo@intel.com>
References: <20240918144445.5716-1-ville.syrjala@linux.intel.com>
 <20240918144445.5716-4-ville.syrjala@linux.intel.com>
 <e30b033c-c242-47ef-aa9e-ba2ee734ca09@gmail.com>
 <ZwAt5SfK8wzYoQb1@intel.com>
 <60c4b7c8-6ae8-469f-937d-d1a877c9b16c@gmail.com>
 <45a5bba8de009347262d86a4acb27169d9ae0d9f.camel@xry111.site>
 <Z0a0tRnfv8UKorJo@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2 
MIME-Version: 1.0
X-Mailman-Approved-At: Thu, 28 Nov 2024 10:04:47 +0000
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

On Wed, 2024-11-27 at 07:57 +0200, Ville Syrj=C3=A4l=C3=A4 wrote:
> On Mon, Nov 25, 2024 at 02:55:34PM +0800, Xi Ruoyao wrote:
> > On Tue, 2024-10-08 at 12:01 +0300, Juha-Pekka Heikkila wrote:
> > > On 4.10.2024 21.03, Ville Syrj=C3=A4l=C3=A4 wrote:
> > > > On Fri, Oct 04, 2024 at 04:35:17PM +0300, Juha-Pekka Heikkila wrote=
:
> > > > > On 18.9.2024 17.44, Ville Syrjala wrote:
> > > > > > From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > > > > >=20
> > > > > > TGL+ support 10bpc compressed scanout. Enable it.
> > > > > >=20
> > > > > > v2: Set .depth=3D30 for all variants to match drm_fourcc.c
> > > > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Set clear color block size to 0x=
0
> > > > > >=20
> > > > > > Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.int=
el.com>
> > > > > > ---
> > > > > > =C2=A0=C2=A0 drivers/gpu/drm/i915/display/intel_fb.c=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 36 +++++++++++++++++++
> > > > > > =C2=A0=C2=A0 .../drm/i915/display/skl_universal_plane.c=C2=A0=
=C2=A0=C2=A0 |=C2=A0 8 ++---
> > > > > > =C2=A0=C2=A0 2 files changed, 40 insertions(+), 4 deletions(-)
> > > > > >=20
> > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/=
gpu/drm/i915/display/intel_fb.c
> > > > > > index bcf0d016f499..9b9da4f71f73 100644
> > > > > > --- a/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > > +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> > > > > > @@ -67,6 +67,18 @@ static const struct drm_format_info gen12_cc=
s_formats[] =3D {
> > > > > > =C2=A0=C2=A0=C2=A0	{ .format =3D DRM_FORMAT_ABGR8888, .depth =
=3D 32, .num_planes =3D 2,
> > > > > > =C2=A0=C2=A0=C2=A0	=C2=A0 .char_per_block =3D { 4, 1 }, .block_=
w =3D { 1, 2 }, .block_h =3D { 1, 1 },
> > > > > > =C2=A0=C2=A0=C2=A0	=C2=A0 .hsub =3D 1, .vsub =3D 1, .has_alpha =
=3D true },
> > > > > > +	{ .format =3D DRM_FORMAT_XRGB2101010, .depth =3D 30, .num_pla=
nes =3D 2,
> > > > > > +	=C2=A0 .char_per_block =3D { 4, 1 }, .block_w =3D { 1, 2 }, .=
block_h =3D { 1, 1 },
> > > > > > +	=C2=A0 .hsub =3D 1, .vsub =3D 1, },
> > > > > > +	{ .format =3D DRM_FORMAT_XBGR2101010, .depth =3D 30, .num_pla=
nes =3D 2,
> > > > > > +	=C2=A0 .char_per_block =3D { 4, 1 }, .block_w =3D { 1, 2 }, .=
block_h =3D { 1, 1 },
> > > > > > +	=C2=A0 .hsub =3D 1, .vsub =3D 1, },
> > > > > > +	{ .format =3D DRM_FORMAT_ARGB2101010, .depth =3D 30, .num_pla=
nes =3D 2,
> > > > >=20
> > > > > Is that comment about depth=3D30 for all variants because of thes=
e alpha
> > > > > formats? Why is that? Here on other formats alpha is taken as par=
t of
> > > > > depth, like in above "DRM_FORMAT_ABGR8888, .depth =3D 32"
> > > >=20
> > > > That stuff is just legacy compatibility stuff, and back in
> > > > the day peope decided that depth=3D=3D32 simply means ARGB8888.
> > > > I'm not sure we should even state depth=3D30 on ARGB2101010
> > > > at all, or would it be better to leave it at 0.
> > > >=20
> > > > Another option might be to just set .depth=3D0 on absolutely
> > > > all compressed formats. Using these with some legacy uapi
> > > > which only talks in terms of bpp and depth doesn't seem
> > > > feasible anyway.
> > > >=20
> > > > But for now I think we just want to match drm_fourcc.c since
> > > > that's what we did for the other compressed formats.
> > >=20
> > > ack. patch set is
> > >=20
> > > Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> >=20
> > Hi Ville and Juha-Pekka,
> >=20
> > Unfortunately this commit has caused gnome-shell to display nothing on
> > my system.=C2=A0 Its log contains error messages:
> >=20
> > =C2=A0=C2=A0=C2=A0 Failed to ensure KMS FB ID on /dev/dri/card1: drmMod=
eAddFB2WithModifiers failed: Invalid argument
> > =C2=A0=C2=A0=C2=A0 meta_frame_native_release: assertion '!frame_native-=
>kms_update' failed
> >=20
> > Reverting commits 7c35015fab5d ("drm/i915: Enable fp16 + CCS on TGL+")
> > and c315fbfa44f4 (this one) "fixes" the issue for me.
> >=20
> > The system does have a TGL (i5-11300H) but I don't think my monitor
> > (it's just the display panel of a budget laptop) supports 10bpc.
> >=20
> > Any pointer on debugging this further?
>=20
> Please file a new bug at
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/new
>=20
> Boot with 'drm.debug=3D0x1e log_buf_len=3D4M' added to the kernel cmdline
> and attach the resulting dmesg to the bug.

https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13057


--=20
Xi Ruoyao <xry111@xry111.site>
School of Aerospace Science and Technology, Xidian University
