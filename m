Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F2EC34482C
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 15:53:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A543F89D42;
	Mon, 22 Mar 2021 14:53:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D05C6E4C4
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 14:53:12 +0000 (UTC)
IronPort-SDR: Cyybxdwb1o1wlSk1sGcYCj8WIAXzNZMPSSUCLWTm/78KOU4Yx/z3U9Bxv97040vpOqdQ1xXjG/
 jD4mMm4/w3pQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9931"; a="186965916"
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="186965916"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2021 07:53:11 -0700
IronPort-SDR: tOYSWfqfXaOWjAqcm/UK1IAbL5WGUxsG3C/JcAAmgjMJLSdRoUyR21s6cItU+Q7++cCTP8LODY
 wgb2LKhBIP2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,269,1610438400"; d="scan'208";a="441207032"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by fmsmga002.fm.intel.com with SMTP; 22 Mar 2021 07:53:08 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 22 Mar 2021 16:53:08 +0200
Date: Mon, 22 Mar 2021 16:53:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Hans de Goede <hdegoede@redhat.com>
Message-ID: <YFivVDZ/j6sybifB@intel.com>
References: <28b8cfd3f29d3e5ed4224c687ef173d6c45e028d.camel@gmx.net>
 <5ad5226b-91ce-8685-4c3f-e6890dd642a2@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5ad5226b-91ce-8685-4c3f-e6890dd642a2@redhat.com>
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
Cc: intel-gfx@lists.freedesktop.org,
 Mario =?iso-8859-1?Q?H=FCttel?= <mario.huettel@gmx.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 22, 2021 at 11:45:39AM +0100, Hans de Goede wrote:
> Hi,
> =

> On 3/14/21 11:30 AM, Mario H=FCttel wrote:
> > Hello,
> > =

> > It seems, like the mailing list, didn't accept my email. So I'll send
> > it again:
> > =

> > I want to report a bug. I have a PC with Intel i7-6700K processor (with
> > integrated graphics) and an AsRock Fatal1ty Z170 Gaming K6 mainboard. I
> > use the CPU's integrated graphics.
> > My system is Archlinux with Kernel v5.11.6.
> > =

> > Using this setup, my PC works normally. However, when I shut it down,
> > the power is not cut. Fans keep spinning and LEDs stay on. I couldn't
> > detect any other problem when shutting down. Drives etc. stop as
> > expected and the video is blank. Even after waiting several hours, the
> > system doesn't power down.
> > =

> > Restarts work normally.
> > =

> > I haven't yet found any other people on the internet that have the same
> > bug.
> > =

> > I used git bisect to find the commit that causes this behavior on my
> > machine.
> =

> Thank you for doing a bisect that is always very helpful.
> =

> > The result is: fe0f1e3bfdfeb53e18f1206aea4f40b9bd1f291c is the
> > first bad commit.
> =

> To save others the trouble of having to look up the hasj, that is:
> =

> "drm/i915: Shut down displays gracefully on reboot"
> =

> Which is the same commit as which I've reported is causing issues
> with DSI panels not lighting up on reboots on some BYT/CHT devices.
> =

> Since this seems to mostly be intended to fix issues surrounding
> DP MST stuff, maybe the graceful shutdown should only be done when
> MST is in use?

No. It also fixes Windows, lols.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
