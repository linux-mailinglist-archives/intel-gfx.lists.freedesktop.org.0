Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B57CB2EF6DC
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Jan 2021 18:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D9996E85F;
	Fri,  8 Jan 2021 17:59:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 860F26E85F
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Jan 2021 17:59:31 +0000 (UTC)
IronPort-SDR: FaIZpFcvKIbiBeCN8Myvz3iwW9SE+8PSZ/E+gPzyC3KuHv4Lc43F+uBfojN75KZ94kzl9zw+T3
 t51ioo+A5drw==
X-IronPort-AV: E=McAfee;i="6000,8403,9858"; a="175055267"
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="175055267"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:53:34 -0800
IronPort-SDR: NLcGG3U8T/anfOsm0i1KkmQcyRC+uYAhfnt4tZr8cZk3urRnsaLJJS5Mvowi+R/eqwQMyE7rFY
 GKCoQy1ICzHA==
X-IronPort-AV: E=Sophos;i="5.79,332,1602572400"; d="scan'208";a="351751993"
Received: from rgwhiteh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.205.160])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2021 09:53:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: imre.deak@intel.com, Matthew Wilcox <willy@infradead.org>
In-Reply-To: <20210106172507.GA202232@ideak-desk.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20201221040758.GA874@casper.infradead.org>
 <20201229144131.GA4029266@ideak-desk.fi.intel.com>
 <20210105055041.GB175893@casper.infradead.org>
 <20210106172507.GA202232@ideak-desk.fi.intel.com>
Date: Fri, 08 Jan 2021 19:53:28 +0200
Message-ID: <87a6tjxqlj.fsf@intel.com>
MIME-Version: 1.0
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

On Wed, 06 Jan 2021, Imre Deak <imre.deak@intel.com> wrote:
> On Tue, Jan 05, 2021 at 05:50:41AM +0000, Matthew Wilcox wrote:
>> On Tue, Dec 29, 2020 at 04:41:31PM +0200, Imre Deak wrote:
>> > Hi,
>> > 
>> > On Mon, Dec 21, 2020 at 04:07:58AM +0000, Matthew Wilcox wrote:
>> > > 
>> > > At boot,
>> > > 
>> > > [    2.787995] [drm:lspcon_init [i915]] *ERROR* Failed to probe lspcon
>> > > [    2.788001] i915 0000:00:02.0: [drm] *ERROR* LSPCON init failed on port E
>> > > [    2.790752] ------------[ cut here ]------------
>> > > [    2.790753] Missing case (clock == 539440)
>> > > [    2.790790] WARNING: CPU: 0 PID: 159 at drivers/gpu/drm/i915/display/intel_dpll_mgr.c:2967 icl_get_dplls+0x53a/0xa50 [i915]
>> > 
>> > the above warn looks to be due to a missing workaround fixed by
>> > 
>> > commit 0e2497e334de42dbaaee8e325241b5b5b34ede7e
>> > Author: Imre Deak <imre.deak@intel.com>
>> > Date:   Sat Oct 3 03:18:46 2020 +0300
>> > 
>> >     drm/i915/tgl: Fix Combo PHY DPLL fractional divider for 38.4MHz ref clock
>> > 
>> > in drm-tip. Could you give it a try?
>> 
>> I tried -rc2, which contains that commit, and the problem is gone.  Thank
>> you!
>
> Thanks for testing it, I'll send a patch for the 5.10 stable tree as
> well.
>
>> There is a different problem, which is that the brightness buttons
>> (on F2 and F3 on this laptop) do not actually increase/decrease the
>> brightness.  GNOME pops up a graphic that illustrates it is changing
>> the brightness, but nothing actually changes.
>> 
>> xbacklight says "No outputs have backlight property" and using
>> xrandr --output XWAYLAND0 --brightness 0.0001 doesn't change anything
>> (for various different values, not just 0.0001).  Using xrandr --prop
>> --verbose shows the reported value of "Brightness" changing, but nothing
>> has changed on the screen.
>> 
>> I found
>> /sys/devices/pci0000:00/0000:00:02.0/drm/card0/card0-eDP-1/intel_backlight
>> and tried setting 'brightness' in there to a few different values (100,
>> 2000, 19200, 7000) and also nothing changed.
>> 
>> Any thoughts?
>
> One possibility is that from the different backlight methods (DPCD,
> direct PWM on a CPU pin) the driver selects the incorrect one. Could you
> provide a log booting with drm.debug=0x1e adding it to a new ticket at
>
> https://gitlab.freedesktop.org/drm/intel/-/issues/new?issue
>
> or at least in a reply to this thread?
>
> Adding Jani for further ideas.

Please try:

1) i915.enable_dpcd_backlight=1 module param

2) https://cgit.freedesktop.org/drm/drm-tip drm-tip branch with patches
   from Lyude on top https://patchwork.freedesktop.org/series/81702/

BR,
Jani.


-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
