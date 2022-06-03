Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DAF153C8A7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jun 2022 12:29:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D3EAF10E425;
	Fri,  3 Jun 2022 10:29:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3966F10E425
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jun 2022 10:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654252162; x=1685788162;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LYRSyxkQh7/klZFr8eU/e8dTTaQT+dV/VeJjcGsSJeo=;
 b=nv7BBniDnS+vKpLfOCIROgVtL9nNCO6x5QU3Rq9Av6FlxaNxfTM8+JtS
 8ST4ZAYuzwpuhL9UMCPqmqKHBLzZeC/Z+s1Qz4pR5cKkmyYjS8GJgjqWw
 MshAqiiEF6i4e/Wg7613+E3A/N/xUEo2IdnoogseAhUUqoNMXrm5SlzQ5
 uacGjfJT2tdZIGvmLp+8dO6GathI2ilNBreAFWx0SVfG8B73+2YcQX/YC
 t+h2QcrL0jCTedyW5bHUCbj9W+3OepXwAxroHyHfm1NJfwRRNeq9Uo0Zc
 Yoo6kTbfGPL2W51zVZEGzBKD26fZ2eaJysslwTcZ1cXUq96eLgE3kEPW7 w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="256084795"
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="256084795"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2022 03:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,274,1647327600"; d="scan'208";a="577966720"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 03 Jun 2022 03:29:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 3 Jun 2022 03:29:21 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 3 Jun 2022 03:29:20 -0700
Received: from fmsmsx612.amr.corp.intel.com ([10.18.126.92]) by
 fmsmsx612.amr.corp.intel.com ([10.18.126.92]) with mapi id 15.01.2308.027;
 Fri, 3 Jun 2022 03:29:20 -0700
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC PATCH 5/5] drm/i915/display/tgl+: Use PPS index from vbt
Thread-Index: AQHYdovybfn4bUDfmU6Ozpf5+axAi608tDYAgAC7oyA=
Date: Fri, 3 Jun 2022 10:29:20 +0000
Message-ID: <20b989211c3848868adbf339f6d80aa0@intel.com>
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-6-animesh.manna@intel.com> <874k13ozcd.fsf@intel.com>
In-Reply-To: <874k13ozcd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.223.10.1]
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [RFC PATCH 5/5] drm/i915/display/tgl+: Use PPS
 index from vbt
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
Cc: "Varide, Nischal" <nischal.varide@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, June 2, 2022 9:03 PM
> To: Manna, Animesh <animesh.manna@intel.com>; intel-
> gfx@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>;
> Varide, Nischal <nischal.varide@intel.com>; Manna, Animesh
> <animesh.manna@intel.com>
> Subject: Re: [RFC PATCH 5/5] drm/i915/display/tgl+: Use PPS index from vb=
t
>=20
> On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> > From: Nischal Varide <nischal.varide@intel.com>
> >
> > Tigerlake and newer has two instances of PPS, to support up to two eDP
> > panels.
> >
> > Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> > Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_pps.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_pps.c
> > b/drivers/gpu/drm/i915/display/intel_pps.c
> > index 1b21a341962f..52cb5be4e901 100644
> > --- a/drivers/gpu/drm/i915/display/intel_pps.c
> > +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> > @@ -365,7 +365,8 @@ static void intel_pps_get_registers(struct
> > intel_dp *intel_dp,
> >
> >  	memset(regs, 0, sizeof(*regs));
> >
> > -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
> > +	    DISPLAY_VER(dev_priv) >=3D 12)
> >  		pps_idx =3D bxt_power_sequencer_idx(intel_dp);
>=20
> There are two things that need to be checked, but I don't have the time r=
ight
> now:
>=20
> - We'll probably need this *before* we've parsed the panel specific info
>   from VBT. Ville has looked into this somewhat with the PNPID panel
>   type stuff.

Currently intel_pps_init() get called before intel_bios_init_panel() where =
panel specific info in parsed from VBT.

>=20
> - bxt_power_sequencer_idx() does pps_init_registers() which has always
>   struck me as a really odd place to do it. As if we don't know when the
>   first time we do it is, so we do it there just in case.

Will try to check on this.

Regards,
Animesh=20
>=20
> BR,
> Jani.
>=20
>=20
>=20
> >  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
> >  		pps_idx =3D vlv_power_sequencer_pipe(intel_dp);
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
