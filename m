Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB2EB005ED
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 17:04:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1EA910E8EC;
	Thu, 10 Jul 2025 15:04:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hVf6KCpU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1997410E8EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jul 2025 15:04:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752159886; x=1783695886;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ymzN0OQOmMbxqP3l5Qj3gim/nnQL5NzNUtbMLt/hT5M=;
 b=hVf6KCpUlB5/19BGvFxFRuWsgzdCHov7GsW/i5+WvclsS22+okt2E1a2
 uKraFSCFHmXF12T+u2997/jrw9boPNtU0VXCkwlbR3CdMOafpYy2Zl+/I
 Qds1IrDpyaQD/vLkBEgBk/VYVvgtwqwEZG3sZh3GFTTNeSOAgiNvR5Egv
 daL3tK4Nq6dKha0dfwvIFmmXqYmeI8N7wY+Ew9FWvOIWCdabhlujx0oT/
 Kc/zj7hlxvjxTBx+yAYOnnbJP71axT6Eq6G5GAb9ChEHXgBigM9Hx1jkX
 j4uzE+DS5wuzfQTAmvzvAWrkmVlVlz6Lxr0LiFi/jSYsP3f7StsaVMPYi w==;
X-CSE-ConnectionGUID: l2jT5AmJTzmP+OIMJ/Oh4Q==
X-CSE-MsgGUID: Tn62ePOfR/KVy9NZn2D8zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="54321419"
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="54321419"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 08:04:45 -0700
X-CSE-ConnectionGUID: h/ZtnT3DRsKiCm/16mmIrw==
X-CSE-MsgGUID: 2rW0fFz/S4q4uWAxsl3Jlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="161805873"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 08:04:43 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 18:04:42 +0300
Date: Thu, 10 Jul 2025 18:04:42 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: Ben Hutchings <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Debian kernel maintainers <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <aG_VzpXaYRCQQGYt@intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
 <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
 <20250710064136.rur6FoOU@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250710064136.rur6FoOU@linutronix.de>
X-Patchwork-Hint: comment
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 10, 2025 at 08:41:36AM +0200, Sebastian Andrzej Siewior wrote:
> On 2025-07-09 23:09:22 [+0300], Ville Syrjälä wrote:
> > On Wed, Jul 09, 2025 at 09:44:43PM +0200, Sebastian Andrzej Siewior wrote:
> > > On 2025-07-09 20:30:26 [+0300], Ville Syrjälä wrote:
> > > > > 
> > > > > It seems like the critical uncore lock is currently held in a lot of
> > > > > places and potentially for a long time.
> > > > 
> > > > It shouldn't be held for that long. I think it should just be
> > > > a raw spinlock.
> > > 
> > > What about I resubmit the series and we look again? I don't think the
> > > lock should be made raw just to be done with it.
> > 
> > Until someone actually does the work to confirm the thing is working
> > reliably there's no point in posting anything.
> 
> Well it works on my machine and this machine dose not pass the code
> paths that I patch.
> 
> Every patch made was done because someone reported an error/ warning and
> confirmed afterwards that the patch fixes it for them and they can use
> the machine and don't observe anything.
> 
> > And IIRC the other remaining problem with RT was the spinlocks used
> > inside tracepoints (which is uncore lock, and probably some vblank
> > locks). So that too needs some kind of solution because it's going to
> > very hard to debug the timing sensitive parts without the tracepoints.
> 
> no, not just that. Making the lock raw led to latency spikes in simple
> spikes and I just disabled trace points. It could be worked around by
> taking the lock if the tracepoint is enabled and then invoking the
> tracepoint unconditionally and not taking the lock anymore. Steven made
> a suggestion a while ago how to put this in macro as far as I remember.

When this was last discussed I suggested that there should be a
versions of the tracepoint macros that do the sampling outside
the lock, but that wasn't deemed acceptable for whatever reason.
I don't even know why the current macros are doing the
sampling while holding the lock...

-- 
Ville Syrjälä
Intel
