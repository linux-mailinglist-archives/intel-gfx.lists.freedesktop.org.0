Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A1534668E
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Mar 2021 18:41:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95E2D6E929;
	Tue, 23 Mar 2021 17:41:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CBBD6E929
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Mar 2021 17:41:02 +0000 (UTC)
IronPort-SDR: 5bg7JyzjGU9sxBiLtapK1cWqyKGEKOz/UQ3Saw9Nb61HSODz0Mq6O9PC07lIS47z1OuOM4JWyL
 o1nrEIIsf6SA==
X-IronPort-AV: E=McAfee;i="6000,8403,9932"; a="187212675"
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="187212675"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2021 10:41:01 -0700
IronPort-SDR: yfOjV+M++sHrX7JEacP3rW6aLYZmSH1yoWjzrnnYVTQ78yQXHyuD6yZeY2OYCp2rl03K4G8Vx+
 CmcGO9V7PSfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,272,1610438400"; d="scan'208";a="442616716"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by FMSMGA003.fm.intel.com with SMTP; 23 Mar 2021 10:40:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Mar 2021 19:40:58 +0200
Date: Tue, 23 Mar 2021 19:40:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YFooKuVqPeZrLWM3@intel.com>
References: <YFkJLCzqK65y5Vfl@intel.com>
 <20210322233840.4056851-1-matthew.d.roper@intel.com>
 <YFokpaRM8yCqRJlF@intel.com>
 <20210323172734.GU3422723@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210323172734.GU3422723@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 6/6] drm/i915/display: Simplify GLK
 display version tests
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
Cc: intel-gfx@lists.freedesktop.org,
 Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 23, 2021 at 10:27:34AM -0700, Matt Roper wrote:
> On Tue, Mar 23, 2021 at 07:25:57PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Mar 22, 2021 at 04:38:40PM -0700, Matt Roper wrote:
> > > GLK has always been a bit of a special case since it reports INTEL_GE=
N()
> > > as 9, but has version 10 display IP.  Now we can properly represent t=
he
> > > display version as 10 and simplify the display generation tests
> > > throughout the display code.
> > > =

> > > Aside from manually adding the version to the glk_info structure, the
> > > rest of this patch is generated with a Coccinelle semantic patch.  No=
te
> > > that we also need to switch any code that matches gen10 today but *no=
t*
> > > GLK to be CNL-specific:
> > > =

> > >         @@ expression dev_priv; @@
> > >         - DISPLAY_VER(dev_priv) > 9
> > >         + DISPLAY_VER(dev_priv) >=3D 10
> > > =

> > >         @@ expression dev_priv, E; @@
> > >         (
> > >         - DISPLAY_VER(dev_priv) >=3D 10 && E
> > >         + (DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)) =
&& E
> > >         |
> > >         - DISPLAY_VER(dev_priv) >=3D 10
> > >         + DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv)
> > >         |
> > >         - IS_DISPLAY_RANGE(dev_priv, 10, E)
> > >         + IS_DISPLAY_RANGE(dev_priv, 11, E) || IS_CANNONLAKE(dev_priv)
> > >         )
> > > =

> > >         @@ expression dev_priv, E, E2; @@
> > >         (
> > >         - (IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv))
> > >         + IS_DISPLAY_VER(dev_priv, 10)
> > >         |
> > >         - E || IS_CANNONLAKE(dev_priv) || IS_GEMINILAKE(dev_priv)
> > >         + E || IS_DISPLAY_VER(dev_priv, 10)
> > >         |
> > >         - (IS_GEMINILAKE(dev_priv) || IS_CANNONLAKE(dev_priv))
> > >         + IS_DISPLAY_VER(dev_priv, 10)
> > >         |
> > >         - IS_GEMINILAKE(dev_priv) || E || IS_CANNONLAKE(dev_priv)
> > >         + E || IS_DISPLAY_VER(dev_priv, 10)
> > >         |
> > >         - E || IS_GEMINILAKE(dev_priv) || E2 || IS_CANNONLAKE(dev_pri=
v)
> > >         + E || E2 || IS_DISPLAY_VER(dev_priv, 10)
> > >         |
> > >         - (IS_DISPLAY_VER(dev_priv, 10) || IS_GEMINILAKE(dev_priv))
> > >         + IS_DISPLAY_VER(dev_priv, 10)
> > >         |
> > >         - (IS_GEMINILAKE(dev_priv) || IS_DISPLAY_VER(dev_priv, 10))
> > >         + IS_DISPLAY_VER(dev_priv, 10)
> > >         )
> > > =

> > >         @@ expression dev_priv; @@
> > >         - (IS_DISPLAY_VER(dev_priv, 9) && !IS_GEMINILAKE(dev_priv))
> > >         + IS_DISPLAY_VER(dev_priv, 9)
> > > =

> > >         @@ expression dev_priv; @@
> > >         (
> > >         - !(DISPLAY_VER(dev_priv) >=3D 11 || IS_DISPLAY_VER(dev_priv,=
 10))
> > >         + DISPLAY_VER(dev_priv) < 10
> > >         |
> > >         - (DISPLAY_VER(dev_priv) >=3D 11 || IS_DISPLAY_VER(dev_priv, =
10))
> > >         + DISPLAY_VER(dev_priv) >=3D 10
> > >         )
> > > =

> > >         @@ expression dev_priv, E; @@
> > >         - E || DISPLAY_VER(dev_priv) >=3D 11 || IS_DISPLAY_VER(dev_pr=
iv, 10)
> > >         + E || DISPLAY_VER(dev_priv) >=3D 10
> > > =

> > >         @@ expression dev_priv, E; @@
> > >         - (IS_DISPLAY_RANGE(dev_priv, 11, E) || IS_DISPLAY_VER(dev_pr=
iv, 10))
> > >         + IS_DISPLAY_RANGE(dev_priv, 10, E)
> > > =

> > >         @@ expression dev_priv; @@
> > >         (
> > >         - DISPLAY_VER(dev_priv) >=3D 11 || IS_CANNONLAKE(dev_priv) ||=
 IS_GEN9_LP(dev_priv)
> > >         + DISPLAY_VER(dev_priv) >=3D 10 || IS_GEN9_LP(dev_priv)
> > >         |
> > >         - IS_GEN9_LP(dev_priv) || DISPLAY_VER(dev_priv) >=3D 11 || IS=
_CANNONLAKE(dev_priv)
> > >         + IS_GEN9_LP(dev_priv) || DISPLAY_VER(dev_priv) >=3D 10
> > >         )
> > > =

> > >         @@ expression dev_priv, E; @@
> > >         - !(DISPLAY_VER(dev_priv) >=3D E)
> > >         + DISPLAY_VER(dev_priv) < E
> > > =

> > > v2:
> > >  - Convert gen10 conditions that don't include GLK into CNL condition=
s.
> > >    (Ville)
> > > =

> > > v3:
> > >  - Rework coccinelle rules so that "ver>=3D10" turns into "ver>=3D11|=
|is_cnl." (Ville)
> > > =

> > > v3.1:
> > >  - Manually re-add the ".display.version =3D 10" to glk_info after
> > >    regenerating patch via Coccinelle.
> > > =

> > > v4:
> > >  - Also apply cocci rules to intel_pm.c and i915_irq.c!  (CI)
> > =

> > Ugh. One thing that occurred to me when looking at i915_irq.c is that
> > IS_GEN9_LP() is now maybe broken on glk? So seems to me all uses of
> > IS_GEN9_LP() need to be reviewed and potentially changed.
> =

> Broken how?  That macro still uses the gen/gt version instead of the
> display number, so I think it still behaves the same as before?

Oh you're not changng it to to use display ver? I guess it still kinda
works then. But it's going to be pretty confusing to use that for
display stuff now. Ie. we should probably stop using it.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
