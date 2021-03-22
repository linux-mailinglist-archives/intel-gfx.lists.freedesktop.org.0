Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88AEE3451D3
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 22:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B414D6E5BE;
	Mon, 22 Mar 2021 21:34:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF4E06E5BE
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 21:34:41 +0000 (UTC)
IronPort-SDR: i6fFbL0ydgPbpRMZ3+8OwCFq95pWGWRFAFgHsxdlNJieLkfHOiefXO9ltWBLSZh8PH8iJmxNSG
 7UVDDsfRpVXA==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="254350536"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="254350536"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 14:34:40 -0700
IronPort-SDR: NVnlORE1l95pMUpGebiiVgXbaIIPI9d7kAfM/pibtu8Lqo/ZPTaUq3NpjPGscPEQp0MqPTkAHi
 5rywRvr2RjfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="441356943"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 22 Mar 2021 14:34:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 23:34:37 +0200
Date: Mon, 22 Mar 2021 23:34:37 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <YFkNbfTKXnvnpLrW@intel.com>
References: <20210322194810.3969336-1-matthew.d.roper@intel.com>
 <20210322195017.3969488-1-matthew.d.roper@intel.com>
 <YFkJLCzqK65y5Vfl@intel.com>
 <20210322212512.GR3422723@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210322212512.GR3422723@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2.1 6/6] drm/i915/display: Simplify GLK
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

On Mon, Mar 22, 2021 at 02:25:12PM -0700, Matt Roper wrote:
> On Mon, Mar 22, 2021 at 11:16:28PM +0200, Ville Syrj=E4l=E4 wrote:
> > On Mon, Mar 22, 2021 at 12:50:17PM -0700, Matt Roper wrote:
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
> > =

> > Sometimes I really wish cocci would have a way to say "these things can
> > go in any order" :/
> =

> Coccinelle has support for user-defined isomorphisms that I think are
> supposed to be able to do this.  I tried to create some isomorphisms
> like:
> =

>         Expression
>         @ dv_no_sideeffects @
>         expression dev_priv;
>         int i;
>         binary operator OP;
>         @@
>         DISPLAY_VER(dev_priv) OP i || E <=3D> E || DISPLAY_VER(dev_priv) =
OP i
> =

> for the various IS_* and DISPLAY_VER() macros so that it would allow
> them in any order (since we know these macros have no side effects), but
> I must have been doing it wrong, or passing the iso file to coccinelle
> incorrectly, since they didn't seem to be working.

Ah, thanks for pointing this out. Need to give that a try
at some point.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
