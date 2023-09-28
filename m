Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B6757B22B0
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Sep 2023 18:47:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B2FB10E697;
	Thu, 28 Sep 2023 16:47:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E0FD10E697
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Sep 2023 16:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695919630; x=1727455630;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=OxKegBcbZ10rT4dfmMieKJAZyio4khNIHwen2sq9VbA=;
 b=nmHn557oABNwVgBxxBWpeaEGF++y2YrIOp8Se9JUSDh7ejzT9/SRwTTs
 88msGeIBteM/MJ75rhUV8XKckuW9dMvRe/EWE+hO+kAzI4hQyKEm0JpQK
 HQ3oTxh52RvA3P4wk+3us8n+CiZBh93qudkWCZv20mWtZp84vHZU2wywI
 6/dIy1L2qO6+my2tS9m1rhuby/dL8NN/Tpl1UqThvv46BOitW3LWUg9ey
 BI1NlwtjfLLGirawDXxpbEDZplbdMN+kSoOZNfpH2XgqzZfBgRMaETdvO
 72x2Nsha5fiw2D3MwHPQxuYi1VEIa+gL0vrx1SrKvBHJzSMMTWmgUViE/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="382020631"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="382020631"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 09:47:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10847"; a="923300951"
X-IronPort-AV: E=Sophos;i="6.03,184,1694761200"; d="scan'208";a="923300951"
Received: from mabrazak-mobl.gar.corp.intel.com (HELO intel.com)
 ([10.214.160.185])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Sep 2023 09:47:06 -0700
Date: Thu, 28 Sep 2023 18:47:00 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <ZRWuBCoPHR09udaB@ashyti-mobl2.lan>
References: <20230928132235.349258-1-andi.shyti@linux.intel.com>
 <20230928162529.GG2706891@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230928162529.GG2706891@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [RFC PATCH] drm/i915/gt: Force mcr lock takeover if
 hardware forgot to release it
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
Cc: intel-gfx <intel-gfx@lists.freedesktop.org>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> > While discussing with Nirmoy offline about this other way for
> > fixing lock contention, he was a bit sceptical about it.
> > 
> > But why not? We know that if we fall into this case it's because
> > some hardware component has forgotten to release the lock within
> > 100ms. So that we have two possibilities, either bail out or
> > force the unlock.
> > 
> > Forcing the unlock might not be respectful to the environment,
> > but, at the end, i915 should have the highest priority.
> > 
> > Nirmoy's solution here[*] is to force the unlock during gt
> > resume, but what happens if meantime the hardware takes the lock
> > and doesn't release it?
> > 
> > Open for opinions or profligate rejections :-)
> > 
> > I'm also curious to see what CI has to say about.
> > 
> > [*] https://patchwork.freedesktop.org/series/124397/
> > 
> 
> As far as I can tell, this patch doesn't really do anything beneficial
> that I can see.  We already unlock and proceed today if we hit a lock
> timeout:
> 
>  - intel_gt_mcr_lock
>    - attempt to get lock
>    - timeout, warn, add CI taint
>  - perform MCR register access even if the lock failed
>  - intel_gt_mcr_unlock
>    - lock is released regardless of whether we obtained it successfully
>      at the beginning, or whether someone else was still holding it
> 
> With your patch, it looks like you're just adding an extra
> unlock/reacquire step before we move on which I don't think accomplishes
> anything.  If someone else forgot to release the lock, then we're still
> protected from other agents, and we'll take care of releasing it
> ourselves once we're done.  If the other agent actually is still using
> the lock and they're just going slower than we expected, then when they
> finally finish they're just going to blindly unlock; if we're in the
> middle of our critical section at that point, they'll release our lock
> the same way we released theirs.  The main change here is that when we
> hit a timeout, your patch is giving other outside agents a chance to sneak in
> and re-grab the lock, further delaying our KMD acquisition.
> 
> The real-world IFWI problems we saw, which Nirmoy's series is working
> around, is that some boot-time agent simply forgot to ever release the
> lock, leaving it locked "forever" so it makes sense to sanitize it
> initially.  Load/resume is the only time when it's actually "safe" to
> reset/sanitize the lock like that.  If we're getting MCR timeouts during
> regular driver operation (i.e., not during the beginning of driver load
> or resume), then it either means our timeout values are too quick (i.e.,
> we're not giving external agents sufficient time to run their critical
> sections), or some piece of system firmware (e.g., pcode) has completely
> died in the middle of its critical section.  In the former case, we
> probably need to adjust our timeout amount (and possibly work with those
> firmware teams to see if they can reduce the size of their critical
> sections).  In the latter case, the system is going to be so badly
> broken that it doesn't really matter what we do; we're just not going to
> have a functioning system anymore at that point and it's not something
> the graphics driver has a way of recovering from.

Makes sense... thanks!

Andi
