Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1262936EDD5
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 18:05:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D0876F3A6;
	Thu, 29 Apr 2021 16:05:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB0D6F3A6
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 16:05:39 +0000 (UTC)
IronPort-SDR: PZOaLBioKdiQRwnE2tCch63Xf2yKan2Nt0Qh2+cEea95cQz91baB4f1HcrCE9VK4dVg5L1RyuA
 AIoiC+8GiTCA==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="184514147"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="184514147"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 09:05:38 -0700
IronPort-SDR: nc3DTyF1G7L41ggarc3OKzoCr54EK4l3wuCgvxYJuxJELSW2i46zqnD+AD8lulxp7rpoYv9id5
 DBRmvGBB+l5w==
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="537414630"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 09:05:37 -0700
Date: Thu, 29 Apr 2021 19:05:33 +0300
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <20210429160533.GC4033897@ideak-desk.fi.intel.com>
References: <042237f49ed1fd719126a3407d7c909e49addbea.camel@gmx.net>
 <87a6pl5ch0.fsf@intel.com>
 <1bef246953fedcc0a028df144cb7dfbb8308169c.camel@gmx.net>
 <87o8dx33um.fsf@intel.com> <YIrVV4QnzDPgszvZ@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <YIrVV4QnzDPgszvZ@intel.com>
Subject: Re: [Intel-gfx] BUG in i915/i915_pci.c, commit fe0f1e3
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
 Mario =?iso-8859-1?Q?H=FCttel?= <mario.huettel@gmx.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Apr 29, 2021 at 06:48:39PM +0300, Ville Syrj=E4l=E4 wrote:
> On Thu, Apr 29, 2021 at 11:13:53AM +0300, Jani Nikula wrote:
> > On Wed, 28 Apr 2021, Mario H=FCttel <mario.huettel@gmx.net> wrote:
> > > Hi,
> > >
> > > yes. The bug is still present with a recent kernel.
> > > I got the tip from Imre Deak to try out
> > >
> > > 7962893ecb853 ("drm/i915: Disable runtime power management during
> > > shutdown")
> > >
> > > This fixes the issue for me. Do I still have to file a bug report or
> > > will this patch eventually find its way upstream?
> > =

> > That's in Linus' upstream now, but not in any release yet.
> > =

> > Imre, Ville, should we ask for a Cc: stable?
> =

> I would say yes, unless Imre has a good reason against it.

It fixed a BIOS issue on TGL, but yes I suppose other platforms can be
also affected.

> commit fe0f1e3bfdfe ("drm/i915: Shut down displays gracefully on
> reboot") seems to be in 5.11, so that's as far back it needs to
> go.

Ok, can send it for 5.11.

> > BR,
> > Jani.
> > =

> > =

> > >
> > > Thanks
> > > Mario
> > >
> > > On Mon, 2021-04-26 at 17:47 +0300, Jani Nikula wrote:
> > >> On Sat, 13 Mar 2021, Mario H=FCttel <mario.huettel@gmx.net> wrote:
> > >> > Hello,
> > >> >
> > >> > I want to report a bug. I have a PC with Intel i7-6700K processor
> > >> > (with
> > >> > integrated graphics) and an AsRock Fatal1ty Z170 Gaming K6
> > >> > mainboard. I
> > >> > use the CPU's integrated graphics.
> > >> > My system is Archlinux with Kernel v5.11.6.
> > >> >
> > >> > Using this setup, my PC works normally. However, when I shut it
> > >> > down,
> > >> > the power is not cut. Fans and LEDs keep spinning. I couldn't
> > >> > detect
> > >> > any other problem when shutting down. Drives etc. stop as expected
> > >> > and
> > >> > the video is blank. Even after waiting several hours, the system
> > >> > doesn't power down.
> > >> > I haven't yet found any other people on the internet that have the
> > >> > same
> > >> > bug.
> > >> >
> > >> > I used git bisect to find the commit that causes this behavior on
> > >> > my
> > >> > machine. The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is
> > >> > the
> > >> > first bad commit.
> > >> >
> > >> > I hope this is the correct mailing list for this issue.
> > >> >
> > >> > Let me know if you need more information or someone to test it.
> > >>
> > >> This seems to have fallen between the cracks, apologies. Is this
> > >> still
> > >> an issue with newer kernels? If yes, please file a bug at [1].
> > >>
> > >> BR,
> > >> Jani.
> > >>
> > >>
> > >> [1]
> > >> https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs
> > >>
> > >
> > >
> > =

> > -- =

> > Jani Nikula, Intel Open Source Graphics Center
> =

> -- =

> Ville Syrj=E4l=E4
> Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
