Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C753132B30
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Jan 2020 17:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19ABA6E10C;
	Tue,  7 Jan 2020 16:37:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A12B56E10C
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Jan 2020 16:37:01 +0000 (UTC)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 07 Jan 2020 08:37:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,406,1571727600"; d="scan'208";a="225699177"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga001.fm.intel.com with SMTP; 07 Jan 2020 08:36:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 07 Jan 2020 18:36:55 +0200
Date: Tue, 7 Jan 2020 18:36:55 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20200107163655.GF1208@intel.com>
References: <20191220220650.16349-1-lucas.demarchi@intel.com>
 <157687987582.18690.3380544218828835709@skylake-alporthouse-com>
 <20191223205955.nv2qi6aztzaokjdg@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191223205955.nv2qi6aztzaokjdg@ldmartin-desk1>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: nuke skl workaround for
 pre-production hw
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Dec 23, 2019 at 12:59:55PM -0800, Lucas De Marchi wrote:
> On Fri, Dec 20, 2019 at 10:11:15PM +0000, Chris Wilson wrote:
> >Quoting Lucas De Marchi (2019-12-20 22:06:50)
> >> According to intel_detect_preproduction_hw(), the SKL steeping D0 is
> >> still pre-preproduction so we can nuke the additional workaround.
> >>
> >> While at it, nuke dangling new line.
> >>
> >> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> >
> >Ville and Jani are more likely to know if the pre-production comment is
> >telling porkies.
> =

> Bspec 7534 says "The DDIA port presence strap is not connected on the SKL=
 A-C steppings."
> =

> I would expect to catch a failure in CI if the spec was wrong. I can add
> the bspec # to the commit message while fixing up the typos there.

IIRC the w/a db has this listed as "forever". So not really sure what
the truth is on this one. But easy enough to revert if it doesn't work
out I supoose. Maybe toss in a note about the w/a db thing into the
commit message?

> =

> =

> Lucas De Marchi
> =

> >-Chris
> >
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
> >>  1 file changed, 1 insertion(+), 8 deletions(-)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gp=
u/drm/i915/display/intel_display.c
> >> index e6702b9b9117..4aa7dfa88c7c 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >> @@ -16018,14 +16018,8 @@ static void intel_setup_outputs(struct drm_i9=
15_private *dev_priv)
> >>                 if (intel_ddi_crt_present(dev_priv))
> >>                         intel_crt_init(dev_priv);
> >>
> >> -               /*
> >> -                * Haswell uses DDI functions to detect digital output=
s.
> >> -                * On SKL pre-D0 the strap isn't connected, so we assu=
me
> >> -                * it's there.
> >> -                */
> >>                 found =3D I915_READ(DDI_BUF_CTL(PORT_A)) & DDI_INIT_DI=
SPLAY_DETECTED;
> >> -               /* WaIgnoreDDIAStrap: skl */
> >> -               if (found || IS_GEN9_BC(dev_priv))
> >> +               if (found)
> >>                         intel_ddi_init(dev_priv, PORT_A);
> >>
> >>                 /* DDI B, C, D, and F detection is indicated by the SF=
USE_STRAP
> >> @@ -16046,7 +16040,6 @@ static void intel_setup_outputs(struct drm_i91=
5_private *dev_priv)
> >>                 if (IS_GEN9_BC(dev_priv) &&
> >>                     intel_bios_is_port_present(dev_priv, PORT_E))
> >>                         intel_ddi_init(dev_priv, PORT_E);
> >> -
> >>         } else if (HAS_PCH_SPLIT(dev_priv)) {
> >>                 int found;
> >>
> >> --
> >> 2.24.0
> >>

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
