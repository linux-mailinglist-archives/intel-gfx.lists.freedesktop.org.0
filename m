Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2944F316BC3
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Feb 2021 17:52:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47FDB6E1D2;
	Wed, 10 Feb 2021 16:52:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 607526E1D2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Feb 2021 16:52:29 +0000 (UTC)
IronPort-SDR: neOZX3vchV0jXT8xoEzhZ+3wJFboolYZgH65J9LeHkAZQO95t3QxDDNWDzMgPC6IK0uL9bfxB8
 EuWMlxHIqn5g==
X-IronPort-AV: E=McAfee;i="6000,8403,9891"; a="266949604"
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="266949604"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2021 08:52:02 -0800
IronPort-SDR: VHfp+dBwzTNi3pt1hpJSny6ROXhGG/e8bWsrs6s3kWE2aWjkv0tCU2fZG8z6Jb1bA9A8o53w9N
 B6MnojfLUCeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,168,1610438400"; d="scan'208";a="380204454"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 10 Feb 2021 08:51:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 10 Feb 2021 18:51:58 +0200
Date: Wed, 10 Feb 2021 18:51:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "20210201150228.10001-1-shawn.c.lee@intel.com"
 <20210201150228.10001-1-shawn.c.lee@intel.com>
Message-ID: <YCQPLmUTGxjXFybM@intel.com>
References: <20210201150228.10001-1-shawn.c.lee@intel.com>
 <YB2p+Xa8PkFQT1L8@intel.com>
 <BY5PR11MB4307E25E1688D66A7B6028BBA38F9@BY5PR11MB4307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR11MB4307E25E1688D66A7B6028BBA38F9@BY5PR11MB4307.namprd11.prod.outlook.com>
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

On Mon, Feb 08, 2021 at 01:31:57PM +0000, Lee, Shawn C wrote:
> On Fri, Feb 05, 2021, at 8:26 p.m, Ville Syrj=E4l=E4 wrote:
> >On Mon, Feb 01, 2021 at 11:02:28PM +0800, Lee Shawn C wrote:
> >> According to Bspec #20124, max link rate table for DP was updated at =

> >> BDB version 230. Max link rate can support upto UHBR.
> >> =

> >> After migrate to BDB v230, the definition for LBR, HBR2 and HBR3 were =

> >> changed. For backward compatibility. If BDB version was from 216 to =

> >> 229. Driver have to follow original rule to configure DP max link rate =

> >> value from VBT.
> >> =

> >> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> >> Cc: Imre Deak <imre.deak@intel.com>
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
> >> Cc: William Tseng <william.tseng@intel.com>
> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bios.c     | 24 ++++++++++++++++++-
> >>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 14 +++++++----
> >>  2 files changed, 32 insertions(+), 6 deletions(-)
> >> =

> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c =

> >> b/drivers/gpu/drm/i915/display/intel_bios.c
> >> index 04337ac6f8c4..be1f732e6550 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> @@ -1876,7 +1876,15 @@ static void parse_ddi_port(struct drm_i915_priv=
ate *dev_priv,
> >>  	/* DP max link rate for CNL+ */
> >>  	if (bdb_version >=3D 216) {
> >>  		switch (child->dp_max_link_rate) {
> >> -		default:
> >> +		case VBT_DP_MAX_LINK_RATE_UHBR20:
> >> +			info->dp_max_link_rate =3D 2000000;
> >> +			break;
> >> +		case VBT_DP_MAX_LINK_RATE_UHBR13P5:
> >> +			info->dp_max_link_rate =3D 1350000;
> >> +			break;
> >> +		case VBT_DP_MAX_LINK_RATE_UHBR10:
> >> +			info->dp_max_link_rate =3D 1000000;
> >> +			break;
> >>  		case VBT_DP_MAX_LINK_RATE_HBR3:
> >>  			info->dp_max_link_rate =3D 810000;
> >>  			break;
> >> @@ -1889,7 +1897,21 @@ static void parse_ddi_port(struct drm_i915_priv=
ate *dev_priv,
> >>  		case VBT_DP_MAX_LINK_RATE_LBR:
> >>  			info->dp_max_link_rate =3D 162000;
> >>  			break;
> >> +		case VBT_DP_MAX_LINK_RATE_DEFAULT:
> >> +		default:
> >> +			info->dp_max_link_rate =3D 0;
> >> +			break;
> >> +		}
> >> +
> >> +		if (bdb_version < 230) {
> >> +			if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_DEFAULT)
> >> +				info->dp_max_link_rate =3D 810000;
> >> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_LBR)
> >> +				info->dp_max_link_rate =3D 540000;
> >> +			else if (child->dp_max_link_rate =3D=3D VBT_DP_MAX_LINK_RATE_HBR2)
> >> +				info->dp_max_link_rate =3D 162000;
> >>  		}
> >
> >I would split this into two separate functions, one does the new mapping=
, the other the old mapping. =

> >
> =

> I will split this into two separate functions in patch v2.

Actually looking through the VBT history this seems to have been
retroactively changed for already rev 216+ to follow the new
definitions. And naturally no actual explanation given. So it's
the same old VBT=3D=3Dsnafu as always.

I guess the real question is whether any machines migth have shipped
that depened on the old defitions? Unless someone manages to
find that out I think we might just have to change this to follow
only the new style and hope we don't regress a lot of machines.

I was a bit hopeful that this might have fixed [1], but looks
like that just has this set to 0 which doesn't give us the desired
2.7Gbps with either the old or new definition :(

[1] https://gitlab.freedesktop.org/drm/intel/-/issues/3034

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
