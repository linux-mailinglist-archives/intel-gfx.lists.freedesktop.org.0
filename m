Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A34BA31A2B9
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 17:31:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 078766EE9A;
	Fri, 12 Feb 2021 16:31:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 189486EE9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 16:31:29 +0000 (UTC)
IronPort-SDR: nb9h4de+3vg9H1q33v/tsU1prSENlexby/3OdQZPUTP6iJaSITM1YzToz3KXiWlkpqGCUs1u/L
 qbaoA8ptIThA==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="178932729"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="178932729"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 08:31:28 -0800
IronPort-SDR: eb2YP3ZlvelFY1tEYNHURkG7Gwmz8PGRXmCtz8bjEFKT+1fumNELfsmyUrGade31DNNdON6Ej7
 1HuYBTlCufxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="399919227"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga007.jf.intel.com with SMTP; 12 Feb 2021 08:31:25 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Feb 2021 18:31:24 +0200
Date: Fri, 12 Feb 2021 18:31:24 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "20210201150228.10001-1-shawn.c.lee@intel.com"
 <20210201150228.10001-1-shawn.c.lee@intel.com>
Message-ID: <YCatXIv24wONgjqc@intel.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <YB2p+Xa8PkFQT1L8@intel.com>
 <BY5PR11MB4307E25E1688D66A7B6028BBA38F9@BY5PR11MB4307.namprd11.prod.outlook.com>
 <YCQPLmUTGxjXFybM@intel.com>
 <BY5PR11MB430732026C34DCB710E62A8AA38C9@BY5PR11MB4307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR11MB430732026C34DCB710E62A8AA38C9@BY5PR11MB4307.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/vbt: update DP max link rate table
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Tseng,
 William" <william.tseng@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 11, 2021 at 05:22:05AM +0000, Lee, Shawn C wrote:
> =

> On Wed, Feb 10, 2021 at 04:51 p.m, Ville Syrj=E4l=E4 wrote:
> >On Mon, Feb 08, 2021 at 01:31:57PM +0000, Lee, Shawn C wrote:
> >> On Fri, Feb 05, 2021, at 8:26 p.m, Ville Syrj=E4l=E4 wrote:
> >> >On Mon, Feb 01, 2021 at 11:02:28PM +0800, Lee Shawn C wrote:
> >> >> According to Bspec #20124, max link rate table for DP was updated =

> >> >> at BDB version 230. Max link rate can support upto UHBR.
> >> >> =

> >> >> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3 =

> >> >> were changed. For backward compatibility. If BDB version was from =

> >> >> 216 to 229. Driver have to follow original rule to configure DP max =

> >> >> link rate value from VBT.
> >> >> =

> >> >> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> >> >> Cc: Imre Deak <imre.deak@intel.com>
> >> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
> >> >> Cc: William Tseng <william.tseng@intel.com>
> >> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >> >> ---
> >> >>  drivers/gpu/drm/i915/display/intel_bios.c     | 24 +++++++++++++++=
+++-
> >> >>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 14 +++++++----
> >> >>  2 files changed, 32 insertions(+), 6 deletions(-)
> >> >> =

> >> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> >> >> b/drivers/gpu/drm/i915/display/intel_bios.c
> >> >> index 04337ac6f8c4..be1f732e6550 100644
> >> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> >> @@ -1876,7 +1876,15 @@ static void parse_ddi_port(struct drm_i915_p=
rivate *dev_priv,
> >> >>  	/* DP max link rate for CNL+ */
> >> >>  	if (bdb_version >=3D 216) {
> >> >>  		switch (child->dp_max_link_rate) {
> >> >> -		default:
> >> >> +		case VBT_DP_MAX_LINK_RATE_UHBR20:
> >> >> +			info->dp_max_link_rate =3D 2000000;
> >> >> +			break;
> >> >> +		case VBT_DP_MAX_LINK_RATE_UHBR13P5:
> >> >> +			info->dp_max_link_rate =3D 1350000;
> >> >> +			break;
> >> >> +		case VBT_DP_MAX_LINK_RATE_UHBR10:
> >> >> +			info->dp_max_link_rate =3D 1000000;
> >> >> +			break;
> >> >>  		case VBT_DP_MAX_LINK_RATE_HBR3:
> >> >>  			info->dp_max_link_rate =3D 810000;
> >> >>  			break;
> >> >> @@ -1889,7 +1897,21 @@ static void parse_ddi_port(struct drm_i915_p=
rivate *dev_priv,
> >> >>  		case VBT_DP_MAX_LINK_RATE_LBR:
> >> >>  			info->dp_max_link_rate =3D 162000;
> >> >>  			break;
> >> >> +		case VBT_DP_MAX_LINK_RATE_DEFAULT:
> >> >> +		default:
> >> >> +			info->dp_max_link_rate =3D 0;
> >> >> +			break;
> >> >> +		}
> >> >> +
> >> >> +		if (bdb_version < 230) {
> >> >> +			if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_DEFAULT)
> >> >> +				info->dp_max_link_rate =3D 810000;
> >> >> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_LB=
R)
> >> >> +				info->dp_max_link_rate =3D 540000;
> >> >> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_HB=
R2)
> >> >> +				info->dp_max_link_rate =3D 162000;
> >> >>  		}
> >> >
> >> >I would split this into two separate functions, one does the new mapp=
ing, the other the old mapping. =

> >> >
> >> =

> >> I will split this into two separate functions in patch v2.
> >
> >Actually looking through the VBT history this seems to have been
> >retroactively changed for already rev 216+ to follow the new
> >definitions. And naturally no actual explanation given. So it's
> >the same old VBT=3D=3Dsnafu as always.
> >
> >I guess the real question is whether any machines migth have shipped
> >that depened on the old defitions? Unless someone manages to
> >find that out I think we might just have to change this to follow
> >only the new style and hope we don't regress a lot of machines.
> >
> =

> Agree that we should just have the change follow new definition.
> But as you mentioned, we are not sure any machines have shipped
> with the old definition. :(
> =

> In my opinion, we should follow the new style. If we got bug report,
> then we can consider to add some codes for backward compatible.

I went trawling in some really dark waters and found out that
Windows seems to do what you did originally, ie. use the
old definition for 216+, and the new definition for 230+.
So we should just do the same.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
