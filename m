Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E8236EDA1
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Apr 2021 17:49:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB0CE6F388;
	Thu, 29 Apr 2021 15:49:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 634E56F388
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Apr 2021 15:49:07 +0000 (UTC)
IronPort-SDR: SvWmbOO8MIvAnkci8jO2Ci0yWZMLnS2l01lI2nwheocC1lMnXeGMIoPFbqHfUnrCAMYwzLrWPH
 WrFrQT56VHEw==
X-IronPort-AV: E=McAfee;i="6200,9189,9969"; a="177148269"
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="177148269"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2021 08:48:42 -0700
IronPort-SDR: ltaChk2WU8OqeH4SKaZmhrs3KOfzWzJrW7zGFb4ryho2SdcCF2peCjlLuL2OLsAKLVaZ9k64my
 ffFQ55dQNFfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,259,1613462400"; d="scan'208";a="393949060"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga007.fm.intel.com with SMTP; 29 Apr 2021 08:48:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 29 Apr 2021 18:48:39 +0300
Date: Thu, 29 Apr 2021 18:48:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YIrVV4QnzDPgszvZ@intel.com>
References: <042237f49ed1fd719126a3407d7c909e49addbea.camel@gmx.net>
 <87a6pl5ch0.fsf@intel.com>
 <1bef246953fedcc0a028df144cb7dfbb8308169c.camel@gmx.net>
 <87o8dx33um.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87o8dx33um.fsf@intel.com>
X-Patchwork-Hint: comment
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

On Thu, Apr 29, 2021 at 11:13:53AM +0300, Jani Nikula wrote:
> On Wed, 28 Apr 2021, Mario H=FCttel <mario.huettel@gmx.net> wrote:
> > Hi,
> >
> > yes. The bug is still present with a recent kernel.
> > I got the tip from Imre Deak to try out
> >
> > 7962893ecb853 ("drm/i915: Disable runtime power management during
> > shutdown")
> >
> > This fixes the issue for me. Do I still have to file a bug report or
> > will this patch eventually find its way upstream?
> =

> That's in Linus' upstream now, but not in any release yet.
> =

> Imre, Ville, should we ask for a Cc: stable?

I would say yes, unless Imre has a good reason against it.

commit fe0f1e3bfdfe ("drm/i915: Shut down displays gracefully on
reboot") seems to be in 5.11, so that's as far back it needs to
go.

> =

> BR,
> Jani.
> =

> =

> >
> > Thanks
> > Mario
> >
> > On Mon, 2021-04-26 at 17:47 +0300, Jani Nikula wrote:
> >> On Sat, 13 Mar 2021, Mario H=FCttel <mario.huettel@gmx.net> wrote:
> >> > Hello,
> >> >
> >> > I want to report a bug. I have a PC with Intel i7-6700K processor
> >> > (with
> >> > integrated graphics) and an AsRock Fatal1ty Z170 Gaming K6
> >> > mainboard. I
> >> > use the CPU's integrated graphics.
> >> > My system is Archlinux with Kernel v5.11.6.
> >> >
> >> > Using this setup, my PC works normally. However, when I shut it
> >> > down,
> >> > the power is not cut. Fans and LEDs keep spinning. I couldn't
> >> > detect
> >> > any other problem when shutting down. Drives etc. stop as expected
> >> > and
> >> > the video is blank. Even after waiting several hours, the system
> >> > doesn't power down.
> >> > I haven't yet found any other people on the internet that have the
> >> > same
> >> > bug.
> >> >
> >> > I used git bisect to find the commit that causes this behavior on
> >> > my
> >> > machine. The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is
> >> > the
> >> > first bad commit.
> >> >
> >> > I hope this is the correct mailing list for this issue.
> >> >
> >> > Let me know if you need more information or someone to test it.
> >>
> >> This seems to have fallen between the cracks, apologies. Is this
> >> still
> >> an issue with newer kernels? If yes, please file a bug at [1].
> >>
> >> BR,
> >> Jani.
> >>
> >>
> >> [1]
> >> https://gitlab.freedesktop.org/drm/intel/wikis/How-to-file-i915-bugs
> >>
> >
> >
> =

> -- =

> Jani Nikula, Intel Open Source Graphics Center

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
