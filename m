Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07B042EC215
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jan 2021 18:25:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3EEA89C89;
	Wed,  6 Jan 2021 17:25:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5B6189C89
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Jan 2021 17:25:12 +0000 (UTC)
IronPort-SDR: NzLaQ5J0iN1k1JorNetnFiYvF0P5UZNSEBXSx+BEILFaVsk0u/hO9GNjllORrykLZoiwfIARdh
 wkZpQPol5/Eg==
X-IronPort-AV: E=McAfee;i="6000,8403,9856"; a="164380038"
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="164380038"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 09:25:12 -0800
IronPort-SDR: oJrzPlvE4xx+nJiC8xIsTopulzPed7oIuceHw3tRRuYpplsmOfg2Nc3EW/o9B6W+7EItbf7PcB
 rJwFwlNRUL4A==
X-IronPort-AV: E=Sophos;i="5.79,327,1602572400"; d="scan'208";a="422238323"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2021 09:25:10 -0800
Date: Wed, 6 Jan 2021 19:25:07 +0200
From: Imre Deak <imre.deak@intel.com>
To: Matthew Wilcox <willy@infradead.org>, Jani Nikula <jani.nikula@intel.com>
Message-ID: <20210106172507.GA202232@ideak-desk.fi.intel.com>
References: <20201221040758.GA874@casper.infradead.org>
 <20201229144131.GA4029266@ideak-desk.fi.intel.com>
 <20210105055041.GB175893@casper.infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210105055041.GB175893@casper.infradead.org>
Subject: Re: [Intel-gfx] Missing DPPLL case on i7-1165G7
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 05, 2021 at 05:50:41AM +0000, Matthew Wilcox wrote:
> On Tue, Dec 29, 2020 at 04:41:31PM +0200, Imre Deak wrote:
> > Hi,
> > 
> > On Mon, Dec 21, 2020 at 04:07:58AM +0000, Matthew Wilcox wrote:
> > > 
> > > At boot,
> > > 
> > > [    2.787995] [drm:lspcon_init [i915]] *ERROR* Failed to probe lspcon
> > > [    2.788001] i915 0000:00:02.0: [drm] *ERROR* LSPCON init failed on port E
> > > [    2.790752] ------------[ cut here ]------------
> > > [    2.790753] Missing case (clock == 539440)
> > > [    2.790790] WARNING: CPU: 0 PID: 159 at drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2967 icl_get_dplls+0x53a/0xa50 [i915]
> > 
> > the above warn looks to be due to a missing workaround fixed by
> > 
> > commit 0e2497e334de42dbaaee8e325241b5b5b34ede7e
> > Author: Imre Deak <imre.deak@intel.com>
> > Date:   Sat Oct 3 03:18:46 2020 +0300
> > 
> >     drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock
> > 
> > in drm-tip. Could you give it a try?
> 
> I tried -rc2, which contains that commit, and the problem is gone.  Thank
> you!

Thanks for testing it, I'll send a patch for the 5.10 stable tree as
well.

> There is a different problem, which is that the brightness buttons
> (on F2 and F3 on this laptop) do not actually increase/decrease the
> brightness.  GNOME pops up a graphic that illustrates it is changing
> the brightness, but nothing actually changes.
> 
> xbacklight says "No outputs have backlight property" and using
> xrandr --output XWAYLAND0 --brightness 0.0001 doesn't change anything
> (for various different values, not just 0.0001).  Using xrandr --prop
> --verbose shows the reported value of "Brightness" changing, but nothing
> has changed on the screen.
> 
> I found
> /sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-eDP-1/intel_backlight
> and tried setting 'brightness' in there to a few different values (100,
> 2000, 19200, 7000) and also nothing changed.
> 
> Any thoughts?

One possibility is that from the different backlight methods (DPCD,
direct PWM on a CPU pin) the driver selects the incorrect one. Could you
provide a log booting with drm.debug=0x1e adding it to a new ticket at

https://gitlab.freedesktop.org/drm/intel/-/issues/new?issue

or at least in a reply to this thread?

Adding Jani for further ideas.

--Imre
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
