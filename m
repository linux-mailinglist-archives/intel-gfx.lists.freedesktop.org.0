Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EAC60286F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Oct 2022 11:34:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7E9410E55F;
	Tue, 18 Oct 2022 09:34:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from wnew2-smtp.messagingengine.com (wnew2-smtp.messagingengine.com
 [64.147.123.27])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1354D10E513;
 Tue, 18 Oct 2022 09:34:03 +0000 (UTC)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id EAE112B06818;
 Tue, 18 Oct 2022 05:33:56 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Tue, 18 Oct 2022 05:34:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=cc
 :cc:content-transfer-encoding:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to; s=fm3; t=1666085636; x=
 1666092836; bh=m28wxnmpSj23GfJ8mguF+RJIPvACWR84C4m9tbBSs2o=; b=h
 TJ3XFHJn+A8AI/ROPkt+sIqGY3kA4wSIJQT4tHkHl+eM5Yfcjt6X7MYAIUr7Abas
 QlFe4tD6eLZR/VbYzPHxfb+mmQH0VGNqwYSwV55YB9bcLtz9qxFOwi+BOde3q9ZL
 WdyVIaCLx1fnmBze8W9xAi0Xv9M2vR2QswXYasftU70eL5G8ZfZ8+hpqiwgPBj3H
 zWNl5CCgBqV4/lI9o9tIFZT1qgjc8Pd+gffFcHNDISfRVCglOWOLAfXGbTEbRPHa
 Yz24wplENATRxJGBJBtfQnc7xW25Q8+KWoVVjAMvG2CUhQpR0EOOqAfh4FLpp1cX
 5yqaqwrN0S2MK9P/SNs2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:date:date:feedback-id:feedback-id:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1666085636; x=
 1666092836; bh=m28wxnmpSj23GfJ8mguF+RJIPvACWR84C4m9tbBSs2o=; b=C
 5vPZsR4g/v/XssSsF5UxPaTyZ5O744YcQyhklPLOetbH0yOlm0PCjh/iY9EZAJ7V
 uV1SXQOu4CUug0AgTmJ/2n1SCC+FiOjwNU3KptPZNHLSFmFP+8iV5lLytvRIUGet
 rm3PKGYW8OeqKYNn1TEkhD/N2isE6ds71ZBkQxifTbeGuWIRkEVk9UXVoR30F2Oj
 /sS8v3YS+KgU4lbjlS5aVXX6eC3gIVIM5iMgDzUe9o/irGu1tn9AAF/Rb3EzIPMM
 KRBA13tpcwrQwVfkPIv8up+9rplog66fg2VIZD8/j785WDx8QoZg38fgIKAMaVCE
 j3Kt7kvbfUNsxFzFQk3RA==
X-ME-Sender: <xms:A3NOY95eeuFlDtiXSd2HrgE85y8GqJmS-uQzUlFg1W2eqOCqjp_BKg>
 <xme:A3NOY6708zJtmRk4V9UAXdHNs8tZhS1ylzZ9_LPNnb0SRp6ZTjIVvtaIEsSs3rO0E
 Pqd7SXsQaag2VqpTFA>
X-ME-Received: <xmr:A3NOY0fae0uVaJ1UzSmyFv1i8G1BkH14Mj-mYvsxa-8778Yi3-eBZbfnGEeX>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeeluddgudejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvfevuffkfhggtggugfgjsehtqhertddttddunecuhfhrohhmpeforgig
 ihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrf
 grthhtvghrnhepleelfeeileelteetfedvieekfeefffevhfdtvefgheevudevheejvddv
 ieeltdeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
 epmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:A3NOY2ImL3oAvGPDqk3mhpaFWs5EcG4v-6NNxYq5KwhG_8Mhk8FqXw>
 <xmx:A3NOYxIoK_2l01GHo2u3j-yabTPEaxvxxS66qSJ0Pno0VCAZe_RdEA>
 <xmx:A3NOY_zX3p7YYO0k9S7NWgf64pymTdTf0j475KvkelKtvWwSlMG_RA>
 <xmx:BHNOY7rCCVuSX-xwJHsXrJ7QI3T3--uNZV0KkEr0FJdIrGwcgv-bEJjia5c>
Feedback-ID: i8771445c:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 18 Oct 2022 05:33:55 -0400 (EDT)
Date: Tue, 18 Oct 2022 11:33:53 +0200
From: Maxime Ripard <maxime@cerno.tech>
To: Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Message-ID: <20221018093353.pt4vset6o2ldxrbs@houat>
References: <20220728-rpi-analog-tv-properties-v5-0-d841cc64fe4b@cerno.tech>
 <20220728-rpi-analog-tv-properties-v5-12-d841cc64fe4b@cerno.tech>
 <7dcf479c-8ac7-ed47-8587-30268684373c@tronnes.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <7dcf479c-8ac7-ed47-8587-30268684373c@tronnes.org>
Subject: Re: [Intel-gfx] [PATCH v5 12/22] drm/connector: Add a function to
 lookup a TV mode by its name
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
Cc: Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 Phil Elwell <phil@raspberrypi.com>, Karol Herbst <kherbst@redhat.com>,
 Samuel Holland <samuel@sholland.org>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Ben Skeggs <bskeggs@redhat.com>,
 linux-sunxi@lists.linux.dev, Daniel Vetter <daniel@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, Hans de Goede <hdegoede@redhat.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, linux-arm-kernel@lists.infradead.org,
 Dom Cobley <dom@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 Mateusz Kwiatkowski <kfyatek+publicgit@gmail.com>,
 Thomas Zimmermann <tzimmermann@suse.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 17, 2022 at 12:44:45PM +0200, Noralf Tr=F8nnes wrote:
> Den 13.10.2022 15.18, skrev Maxime Ripard:
> > As part of the command line parsing rework coming in the next patches,
> > we'll need to lookup drm_connector_tv_mode values by their name, already
> > defined in drm_tv_mode_enum_list.
> >=20
> > In order to avoid any code duplication, let's do a function that will
> > perform a lookup of a TV mode name and return its value.
> >=20
> > Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> > ---
> >  drivers/gpu/drm/drm_connector.c | 24 ++++++++++++++++++++++++
> >  include/drm/drm_connector.h     |  2 ++
> >  2 files changed, 26 insertions(+)
> >=20
> > diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_conn=
ector.c
> > index 820f4c730b38..30611c616435 100644
> > --- a/drivers/gpu/drm/drm_connector.c
> > +++ b/drivers/gpu/drm/drm_connector.c
> > @@ -991,6 +991,30 @@ static const struct drm_prop_enum_list drm_tv_mode=
_enum_list[] =3D {
> >  };
> >  DRM_ENUM_NAME_FN(drm_get_tv_mode_name, drm_tv_mode_enum_list)
> > =20
> > +/**
> > + * drm_get_tv_mode_from_name - Translates a TV mode name into its enum=
 value
> > + * @name: TV Mode name we want to convert
> > + * @len: Length of @name
> > + *
> > + * Translates @name into an enum drm_connector_tv_mode.
> > + *
> > + * Returns: the enum value on success, a negative errno otherwise.
> > + */
> > +int drm_get_tv_mode_from_name(const char *name, size_t len)
>=20
> Do we really need to pass in length here? item->name has to always be
> NUL terminated otherwise things would break elsewhere, so it shouldn't
> be necessary AFAICS.

The only user so far is the command-line parsing code, and we might very
well have an option after the tv_mode, something like
720x480i,tv_mode=3DNTSC,rotate=3D180

In this case, we won't get a NULL-terminated name.

Maxime
