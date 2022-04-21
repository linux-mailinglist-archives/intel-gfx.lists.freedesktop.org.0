Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 884155097B4
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Apr 2022 08:36:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F1510F513;
	Thu, 21 Apr 2022 06:36:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28D9910F513
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Apr 2022 06:36:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650523008; x=1682059008;
 h=mime-version:content-transfer-encoding:in-reply-to:
 references:cc:subject:to:from:message-id:date;
 bh=QqGZCObvXCmZ3v40YqU3hOg6LuvsMds1r5ALZLmDF14=;
 b=nkxf3EtM3Zb0Awx9hSXXcsQrW/TtVxmvD+12a4WwGee8OjGDgYFiJ6/P
 cXPFk0OjP60FWuiIkvAjAa8EGiFff6Jgheox2IecwQUadesOeeewSnBNP
 iPRcp5sD5ZC9aOVFw7GAmvycENr+Z0+du0ZXBv/llDjxmMsBB3J4uxSlD
 PDE6MKVG4LnITJTRQ6w7A5fIGMNJMnB9skAj+1CNDMwcW20l7oAg8V8sI
 AAsXojwcXoDv5qHp7MJSNt4ERY4v1qNr428nVkgWUTXm8j63yaqC+CAzm
 2KDGBYHOguB6Wv+GG/9zOOyjo1b0K7LoNNnsxd8rsudsbwPi2EOAhZXZA g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10323"; a="350703575"
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="350703575"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 23:36:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,278,1643702400"; d="scan'208";a="577049853"
Received: from hyeongju-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.54.203])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2022 23:36:44 -0700
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <YmAznXmONRMW4kEY@intel.com>
References: <20220418150936.5499-1-hdegoede@redhat.com>
 <YmASniwe39jj1miR@intel.com>
 <60452154-8aab-b15d-1dff-29d3fa732f22@redhat.com>
 <YmAznXmONRMW4kEY@intel.com>
To: Ville Syrjälä <ville.syrjala@linux.intel.com>, Hans de Goede <hdegoede@redhat.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Message-ID: <165052300160.6597.7823926213593163566@jlahtine-mobl.ger.corp.intel.com>
User-Agent: alot/0.8.1
Date: Thu, 21 Apr 2022 09:36:41 +0300
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix DISP_POS_Y and DISP_HEIGHT
 defines
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Ville Syrj=C3=A4l=C3=A4 (2022-04-20 19:23:57)
> On Wed, Apr 20, 2022 at 05:32:43PM +0200, Hans de Goede wrote:
> > Hi Ville,
> >=20
> > On 4/20/22 16:03, Ville Syrj=C3=A4l=C3=A4 wrote:
> > > On Mon, Apr 18, 2022 at 05:09:36PM +0200, Hans de Goede wrote:
> > >> Commit 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane regis=
ters")
> > >> introduced DISP_POS_Y and DISP_HEIGHT defines but accidentally set t=
hese
> > >> their masks to REG_GENMASK(31, 0) instead of REG_GENMASK(31, 16).
> > >>
> > >> This breaks the primary display pane on at least pineview machines, =
fix
> > >> the mask to fix the primary display pane only showing black.
> > >>
> > >> Tested on an Acer One AO532h with an Intel N450 SoC.
> > >>
> > >> Fixes: 428cb15d5b00 ("drm/i915: Clean up pre-skl primary plane regis=
ters")
> > >> Cc: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> > >> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> > >> Signed-off-by: Hans de Goede <hdegoede@redhat.com>
> > >> ---
> > >> Note this fixes a regression in 5.18-rc# and I'm not entirely sure w=
hat
> > >> the procedure is here. Once I get a Reviewed-by or Acked-by and I pu=
sh
> > >> this to drm-intel-next (where it also is necessary), should I then a=
lso
> > >> push it to drm-intel-fixes or will the current drm-intel-fixes
> > >> maintainer pick it up?
> > >> ---
> > >>  drivers/gpu/drm/i915/i915_reg.h | 4 ++--
> > >>  1 file changed, 2 insertions(+), 2 deletions(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/=
i915_reg.h
> > >> index 51f46fe45c72..5f1f38684d65 100644
> > >> --- a/drivers/gpu/drm/i915/i915_reg.h
> > >> +++ b/drivers/gpu/drm/i915/i915_reg.h
> > >> @@ -4352,12 +4352,12 @@
> > >>  #define _DSPAADDR                         0x70184
> > >>  #define _DSPASTRIDE                               0x70188
> > >>  #define _DSPAPOS                          0x7018C /* reserved */
> > >> -#define   DISP_POS_Y_MASK         REG_GENMASK(31, 0)
> > >> +#define   DISP_POS_Y_MASK         REG_GENMASK(31, 16)
> > >=20
> > > Doh. I guess I only tested it on plane A where the plane gets its size
> > > from PIPESRC instead. And looks like the failure mode is such that
> > > the likes of kms_plane/pixel-formats still gets consistent looking CR=
Cs
> > > even with the misconfigured plane size :/
> > >=20
> > > Thanks for the fix. Pushed to drm-intel-next.
> >=20
> > Thank you pushing this out, will you (or someone else from Intel)
> > also take care of getting this on its way to 5.18-rc# ?
>=20
> It has a fixes tag so it should get cherry-picked for fixes.

Yeah, it sould get picked up for next week's drm-intel-fixes PR.

For both drm-intel-next and drm-intel-gt-next, committers only push to
the -next branches and the rest is handled by tooling and maintainers as
long as the Fixes: tags are correct.

If a Fixes: tag has been missed when committing, only then you need to
manually let maintainers know to pick the patch up.

Regards, Joonas

>=20
> --=20
> Ville Syrj=C3=A4l=C3=A4
> Intel
