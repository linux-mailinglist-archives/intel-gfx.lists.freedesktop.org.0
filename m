Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E0E92EA50A
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jan 2021 06:51:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F7D789A0E;
	Tue,  5 Jan 2021 05:51:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FCAA89A0E
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jan 2021 05:51:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=tQc0Fh+iSVClUq15yMvSIoS4JRSJ2L65TqbOfCqgZec=; b=NtXTQvTu3B5klhdSKBjssSt1Dl
 D2b55zlPUvAS2pTFF9i1/xvmSqf8yJf/LVAsbqdIX2BI+cQTddPi/w7rF/Nn1VsIOKKHCdMxOdPxm
 gzzs1klcHzR1T2B9cytBhtahekDJFpyScnDHTf7g5/9Oumz4olkpOhwYnNwLTWYbVNb70Eg7EtdUM
 PpPHxs+QfpDsS1L71diO80acBFg8szJfsHVs69RtmTxgQxGBPNfYqP3aFXBbcz9oGB3SlEtGe+Ryb
 K9STQXaYDEmYAWibpxsw5R9D/zw5SWbiuRSgiqyqoOJ1oymorgPF1jMdrNQuEK8ae8ltmrQHTEcmK
 4vtOsmKQ==;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat
 Linux)) id 1kwfEv-000v2I-Bq; Tue, 05 Jan 2021 05:50:48 +0000
Date: Tue, 5 Jan 2021 05:50:41 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <20210105055041.GB175893@casper.infradead.org>
References: <20201221040758.GA874@casper.infradead.org>
 <20201229144131.GA4029266@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201229144131.GA4029266@ideak-desk.fi.intel.com>
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 29, 2020 at 04:41:31PM +0200, Imre Deak wrote:
> Hi,
> 
> On Mon, Dec 21, 2020 at 04:07:58AM +0000, Matthew Wilcox wrote:
> > 
> > At boot,
> > 
> > [    2.787995] [drm:lspcon_init [i915]] *ERROR* Failed to probe lspcon
> > [    2.788001] i915 0000:00:02.0: [drm] *ERROR* LSPCON init failed on port E
> > [    2.790752] ------------[ cut here ]------------
> > [    2.790753] Missing case (clock == 539440)
> > [    2.790790] WARNING: CPU: 0 PID: 159 at drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2967 icl_get_dplls+0x53a/0xa50 [i915]
> 
> the above warn looks to be due to a missing workaround fixed by
> 
> commit 0e2497e334de42dbaaee8e325241b5b5b34ede7e
> Author: Imre Deak <imre.deak@intel.com>
> Date:   Sat Oct 3 03:18:46 2020 +0300
> 
>     drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock
> 
> in drm-tip. Could you give it a try?

I tried -rc2, which contains that commit, and the problem is gone.  Thank
you!

There is a different problem, which is that the brightness buttons
(on F2 and F3 on this laptop) do not actually increase/decrease the
brightness.  GNOME pops up a graphic that illustrates it is changing
the brightness, but nothing actually changes.

xbacklight says "No outputs have backlight property" and using
xrandr --output XWAYLAND0 --brightness 0.0001 doesn't change anything
(for various different values, not just 0.0001).  Using xrandr --prop
--verbose shows the reported value of "Brightness" changing, but nothing
has changed on the screen.

I found
/sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-eDP-1/intel_backlight
and tried setting 'brightness' in there to a few different values (100,
2000, 19200, 7000) and also nothing changed.

Any thoughts?
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
