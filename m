Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4967EEE6C
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 10:26:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62C6410E734;
	Fri, 17 Nov 2023 09:26:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89C9610E734;
 Fri, 17 Nov 2023 09:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700213209; x=1731749209;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mI4tB+rrpL63vR7HkqXhZ5M+NcYT5UzbYgA3aDajMzc=;
 b=nuKUj0L122Rjodg4y4/Y7lm55/30YG3jwcItWQ21/drRDEXjIoRP4mGP
 3JqOqqHBnxxqQBVJ+YyyQKDmqmWiT8kefZxG01Di6Tk+OVw5J5eix7GWs
 2e/kLwyjAlvFfT2qq5hLoLbpu1LlRZi/YLD0I3f/KUQyHUV7wh7lliTou
 WtVd3s26vckdGy7HWs8ZLuq7/68VKa364fDTrVrlgvNf5TnN1ZRqmUZzs
 kFKCLRk/z0VVMcqF9AEx7Op3uv/5WJG45xdX6yoyeGBFYF+B1YIgzHOkz
 Ttak5YLz03CE6xQWa4Rf+j7zS/xzmz6BXxbCHZwygWhAcWpFkgM3CJXgp A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="12812543"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="12812543"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2023 01:26:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="759118928"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="759118928"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 17 Nov 2023 01:26:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Nov 2023 11:26:44 +0200
Date: Fri, 17 Nov 2023 11:26:44 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>
Message-ID: <ZVcx1MSvP0UgZ14o@intel.com>
References: <20231116112700.648963-1-luciano.coelho@intel.com>
 <ZVcUH7G40NQ4Q-R7@intel.com>
 <8cb3dbfe8290336233133b98b903adca0738ee4e.camel@intel.com>
 <ZVcnRzSDC8s8G073@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZVcnRzSDC8s8G073@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH] drm/i915: don't use uncore
 spinlock to protect critical section in vblank
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 17, 2023 at 10:41:43AM +0200, Ville Syrjälä wrote:
> On Fri, Nov 17, 2023 at 08:05:21AM +0000, Coelho, Luciano wrote:
> > Thanks for your comments, Ville!
> > 
> > On Fri, 2023-11-17 at 09:19 +0200, Ville Syrjälä wrote:
> > > On Thu, Nov 16, 2023 at 01:27:00PM +0200, Luca Coelho wrote:
> > > > Since we're abstracting the display code from the underlying driver
> > > > (i.e. i915 vs xe), we can't use the uncore's spinlock to protect
> > > > critical sections of our code.
> > > > 
> > > > After further inspection, it seems that the spinlock is not needed at
> > > > all and this can be handled by disabling preemption and interrupts
> > > > instead.
> > > 
> > > uncore.lock has multiple purposes:
> > > 1. serialize all register accesses to the same cacheline as on
> > >    certain platforms that can hang the machine
> > 
> > Okay, do you remember which platforms?
> 
> HSW is the one I remember for sure being affected.
> Althoguh I don't recall if I ever managed to hang it
> using display registers specifically. intel_gpu_top
> certainly was very good at reproducing the problem.
> 
> > I couldn't find any reference to
> > this reason. 
> 
> If all else fails git log is your friend.

It seems to be documented in intel_uncore.h. Though that one
mentions IVB instead of HSW for some reason. I don't recall
seeing it on IVB myself, but I suppose it might have been an
issue there as well. How long the problem remained after HSW
I have no idea.

> 
> > Also, the only place where where we take the uncore.lock
> > is in this vblank code I changed, where the only explanation I found
> > was about timing, specifically when using RT-kernels and in very old
> > and slow platforms... (this was added 10 years ago).
> > 
> > 
> > > 2. protect the forcewake/etc. state
> > > 
> > > 1 is relevant here, 2 is not.
> > 
> > Okay, good that we have only one known problem. :)
> > 
> > --
> > Cheers,
> > Luca.
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
