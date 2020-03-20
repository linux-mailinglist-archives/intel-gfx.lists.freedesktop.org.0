Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B9918D2C7
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Mar 2020 16:24:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B85D6E160;
	Fri, 20 Mar 2020 15:24:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E39EA6E160
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Mar 2020 15:24:12 +0000 (UTC)
IronPort-SDR: jNR2sPr0uL9hlZ7yKtEA/Um4/RbPbnZDNg/UWD4UwsvbzKbCyn0ChZxPPjFGzjcQjm5tAdozpK
 6VBVM4W+ORQw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2020 08:24:09 -0700
IronPort-SDR: 8vokaewflyYRr1Cdh9FIc06CP/RkzzMtTQqHmlICtbmS40ITuogrrw8zhUdEFeICB82a2crk1a
 KLxUJcpVdaqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,285,1580803200"; d="scan'208";a="248910783"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga006.jf.intel.com with SMTP; 20 Mar 2020 08:24:06 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Mar 2020 17:24:06 +0200
Date: Fri, 20 Mar 2020 17:24:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <20200320152406.GP13686@intel.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
 <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
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
Cc: "Khor, Swee Aun" <swee.aun.khor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 20, 2020 at 06:19:37AM +0000, Shankar, Uma wrote:
> =

> =

> > -----Original Message-----
> > From: Souza, Jose <jose.souza@intel.com>
> > Sent: Friday, March 20, 2020 12:36 AM
> > To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.o=
rg
> > Cc: Khor, Swee Aun <swee.aun.khor@intel.com>
> > Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at b=
oot for audio
> > codec init
> > =

> > On Wed, 2020-03-18 at 17:00 +0530, Uma Shankar wrote:
> > > If external monitors are connected during boot up, driver uses the
> > > same mode programmed by BIOS and avoids a full modeset.
> > > This results in display audio codec left uninitialized and display
> > > audio fails to work till user triggers a modeset.
> > >
> > > This patch fixes the same by triggering a modeset at boot.
> > =

> > We had the same issue for PSR, take a look to the fix:
> > commit 33e059a2e4df454359f642f2235af39de9d3e914
> > drm/i915/psr: Force PSR probe only after full initialization
> > =

> > Maybe make this even more generic.
> =

> Yeah this looks to dealing with almost a similar need. Thanks for pointin=
g this out,
> will try to come up with a generalized solution.

How about just fixing the uapi vs. hw fail I showed instead of adding
even more hacks?

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
