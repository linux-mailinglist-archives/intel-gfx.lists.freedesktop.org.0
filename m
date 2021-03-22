Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F1990344862
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 15:59:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FD28893D1;
	Mon, 22 Mar 2021 14:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 854CA893D1
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 14:59:00 +0000 (UTC)
IronPort-SDR: BOZccF4gRYQAh+7HAMdTToKZTZeqtShpLSg5SvdvzveOJw9jLavt3Fb4r2TCZTbwFtpg7Kn6MU
 VRVZmCniS4pg==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="169616588"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="169616588"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 07:59:00 -0700
IronPort-SDR: bWcXGpD9u8V56HR38yUJnA7js8stVBFsKKE9O5OHSx00xrMXALM6issv0/yR63QrHLQ2cL0wOV
 hIQARJ2mIBQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="407863003"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga008.fm.intel.com with SMTP; 22 Mar 2021 07:58:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 16:58:57 +0200
Date: Mon, 22 Mar 2021 16:58:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mario =?iso-8859-1?Q?H=FCttel?= <mario.huettel@gmx.net>
Message-ID: <YFiwsZkUpvY8R37F@intel.com>
References: <28b8cfd3f29d3e5ed4224c687ef173d6c45e028d.camel@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <28b8cfd3f29d3e5ed4224c687ef173d6c45e028d.camel@gmx.net>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [bug report] drm/i915: Computer does not shutdown,
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sun, Mar 14, 2021 at 11:30:12AM +0100, Mario H=FCttel wrote:
> Hello,
> =

> It seems, like the mailing list, didn't accept my email. So I'll send
> it again:
> =

> I want to report a bug. I have a PC with Intel i7-6700K processor (with
> integrated graphics) and an AsRock Fatal1ty Z170 Gaming K6 mainboard. I
> use the CPU's integrated graphics.
> My system is Archlinux with Kernel v5.11.6.
> =

> Using this setup, my PC works normally. However, when I shut it down,
> the power is not cut. Fans keep spinning and LEDs stay on. I couldn't
> detect any other problem when shutting down. Drives etc. stop as
> expected and the video is blank. Even after waiting several hours, the
> system doesn't power down.
> =

> Restarts work normally.

As in 'reboot' ?

That's a bit odd then. Hmm. What could be the difference between
shutdown and reboot?

Does the same thing happen with a working kernel if you try to
shut down the machine when all displays are blanked?

Hmm. Wonder if we can get logs from this with either netconsole
or serial or would those be shut down already...

> =

> I haven't yet found any other people on the internet that have the same
> bug.
> =

> I used git bisect to find the commit that causes this behavior on my
> machine. The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is the
> first bad commit.
> =

> I hope this is the correct mailing list for this issue.
> =

> Let me know if you need more information or someone to test it.
> =

> Thanks
> =

> Mario
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
