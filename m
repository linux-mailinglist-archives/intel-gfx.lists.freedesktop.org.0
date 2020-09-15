Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5709026A657
	for <lists+intel-gfx@lfdr.de>; Tue, 15 Sep 2020 15:35:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8BD996E2BE;
	Tue, 15 Sep 2020 13:35:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BD0D6E2BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 15 Sep 2020 13:35:31 +0000 (UTC)
IronPort-SDR: lnalkE0myRRKigoPXFsaM4gMZlyr37Eb8Hb2520cwRYnBGPsYuW8aeLGPULiRdWGQNEneBiVtx
 r2E9WMgxteAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9744"; a="138760928"
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="138760928"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2020 06:35:29 -0700
IronPort-SDR: 7h9biis18Lz76TWy2hyPCQkMC8nurkpcmHeDpicU4mL0314d09MLbEP2jXRcF59KB3oA4D6/oO
 FfNrH1Koe6wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,430,1592895600"; d="scan'208";a="345828594"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga007.jf.intel.com with SMTP; 15 Sep 2020 06:35:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 15 Sep 2020 16:35:25 +0300
Date: Tue, 15 Sep 2020 16:35:25 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "20200827055129.26566-1-shawn.c.lee@intel.com"
 <20200827055129.26566-1-shawn.c.lee@intel.com>
Message-ID: <20200915133525.GG6112@intel.com>
References: <20200827055129.26566-1-shawn.c.lee@intel.com>
 <20200911142113.GJ6112@intel.com>
 <BY5PR11MB43073FAD5FBBD0A47986E296A3200@BY5PR11MB4307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR11MB43073FAD5FBBD0A47986E296A3200@BY5PR11MB4307.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbc: disable FBC on Nightfury board
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>, "Tseng,
 William" <william.tseng@intel.com>, "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 15, 2020 at 01:18:13PM +0000, Lee, Shawn C wrote:
> On Fri, Sept. 11, 2020, 2:21 p.m. Ville Syrj=E4l=E4 wrote:
> >On Thu, Aug 27, 2020 at 01:51:29PM +0800, Lee Shawn C wrote:
> >> Customer report random display flicker issue on Nightfury board.
> >> And we found this problem might be caused by VT-d and FBC are both =

> >> enabled. According to sighting report, it recommend to turn
> >> drm/i915/fbc: disable FBC on Nightfury board
> >> =

> >> Customer report random display flicker issue on Nightfury board.
> >> And we found this problem might be caused by VT-d and FBC are both =

> >> enabled. According to sighting report, it recommend to turn FBC off to =

> >> workaround this kind of issue.
> >> =

> >> This change refer to DMI BOARD_VENDOR and BOARD_NAME information to =

> >> disable FBC.
> >
> >What is this "nightfury board" exactly?
> =

> It is chrome os project on CML platform. The board name is "nightfury".

OK, then someone should definitely test if that missing w/a
fixes the underruns.

> =

> >
> >I think we're missing at least one fbc vs. vt-d w/a on some kbl/cfl/etc.=
 era platforms:
> >git://github.com/vsyrjala/linux.git  vtd_wa_1142
> >
> >> =

> >> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
> >> Cc: Jani Nikula <jani.nikula@intel.com>
> >> Cc: William Tseng <william.tseng@intel.com>
> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_fbc.c | 22 ++++++++++++++++++++++
> >>  1 file changed, 22 insertions(+)
> >> =

> >> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c =

> >> b/drivers/gpu/drm/i915/display/intel_fbc.c
> >> index 327af428d73f..20660fdbab36 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> >> @@ -39,6 +39,7 @@
> >>   */
> >>  =

> >>  #include <drm/drm_fourcc.h>
> >> +#include <linux/dmi.h>
> >>  =

> >>  #include "i915_drv.h"
> >>  #include "i915_trace.h"
> >> @@ -1439,6 +1440,24 @@ static int intel_sanitize_fbc_option(struct drm=
_i915_private *dev_priv)
> >>  	return 0;
> >>  }
> >>  =

> >> +static int intel_fbc_vtd_callback(const struct dmi_system_id *id) {
> >> +	DRM_DEBUG_KMS("Disabling FBC to prevent screen flicker on %s device\=
n", id->ident);
> >> +	return 1;
> >> +}
> >> +
> >> +static const struct dmi_system_id intel_fbc_vtd_detect[] =3D {
> >> +	{
> >> +		.callback =3D intel_fbc_vtd_callback,
> >> +		.ident =3D "Google Nightfury",
> >> +		.matches =3D {
> >> +			DMI_MATCH(DMI_BOARD_VENDOR, "Google"),
> >> +			DMI_MATCH(DMI_BOARD_NAME, "Nightfury"),
> >> +		},
> >> +	},
> >> +	{ }
> >> +};
> >> +
> >>  static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)  {
> >>  	/* WaFbcTurnOffFbcWhenHyperVisorIsUsed:skl,bxt */ @@ -1450,6 +1469,9 =

> >> @@ static bool need_fbc_vtd_wa(struct drm_i915_private *dev_priv)
> >>  		return true;
> >>  	}
> >>  =

> >> +	if (dmi_check_system(intel_fbc_vtd_detect))
> >> +		return true;
> >> +
> >>  	return false;
> >>  }
> >>  =

> >> --
> >> 2.17.1
> >
> >--
> >Ville Syrj=E4l=E4
> >Intel
> =

> Best regards,
> Shawn

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
