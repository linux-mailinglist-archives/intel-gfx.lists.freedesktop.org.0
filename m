Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B442B0078E
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Jul 2025 17:50:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE50610E92F;
	Thu, 10 Jul 2025 15:50:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jsfdm1Zm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54EDF10E914
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Jul 2025 15:50:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752162618; x=1783698618;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8qKwoMldSoFJAqR2IgLUMw+Ke+CgyWISgmL5Uhpawxg=;
 b=jsfdm1Zm0+FrHEQoUM7UNklLQ2KyvyX2VgM9v34H3DWygSCZ4wUFUgCt
 paMXdLO1em2gX/b7pF5T4jb7SWJEjsVDRQwCRZog8GOywjptgN2wgGp6f
 VvnGfGK9gCzUK95Pb7BfYt4ajczzN9wzPGtvKZIxT+fA7HZ1fqDCgIjT8
 tiHKqtvnWweX+zyVPW6htc/k7uBNDkNYH2I4HA/IqQueLET912C/O3kjx
 LCs/0qCMw8i3WgQ6RkFXkQl/LbvF3o5m0afJQzTlNajOuw9tVUYdUek45
 cHxgt3InpaApdUr7njAen5qzF+1kgHm2H+E68wtthOwFrvzBm+M6O0UCY w==;
X-CSE-ConnectionGUID: RREi0zN6RiOfKFoKTSJgTA==
X-CSE-MsgGUID: uIOotI24Q4OZyIQbyi3nBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11490"; a="57061969"
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="57061969"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2025 08:50:18 -0700
X-CSE-ConnectionGUID: j3yqM9L8T0mJRY8InUSTCg==
X-CSE-MsgGUID: HGzhJdOlT7e/xQQ4nEl2SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,300,1744095600"; d="scan'208";a="161815976"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.160])
 by orviesa005.jf.intel.com with SMTP; 10 Jul 2025 08:50:15 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 10 Jul 2025 18:50:13 +0300
Date: Thu, 10 Jul 2025 18:50:13 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mike Galbraith <efault@gmx.de>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 Ben Hutchings <ben@decadent.org.uk>, linux-rt-users@vger.kernel.org,
 intel-gfx@lists.freedesktop.org,
 Debian kernel maintainers <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <aG_hNb-c_m0yfVE4@intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
 <aG6nMhimN1lWKAEP@intel.com>
 <20250709194443.lkevdn6m@linutronix.de>
 <aG7MckLkTuzZ5LBe@intel.com>
 <da51a963b04f0a1b628e80a2c5df72a1609960d1.camel@gmx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <da51a963b04f0a1b628e80a2c5df72a1609960d1.camel@gmx.de>
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

On Thu, Jul 10, 2025 at 06:52:58AM +0200, Mike Galbraith wrote:
> On Wed, 2025-07-09 at 23:09 +0300, Ville Syrjälä wrote:
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
> What does that entail?

Basic testing would be something like this:
- enable CONFIG_DRM_I915_DEBUG_VBLANK_EVADE
- set i915.enable_dsb=0 to make sure everything takes the
  mmio path
- stress the heck out of it and make sure the histogram
  doesn't look significantly worse than on !RT
  (kms_atomic_transition --extended might take care of the display
  side here, but it should probably be accompanied with some
  horrendous system loads which is a less well defined part)
- ideally do that on a potato
  (some VLV/CHV (Atom) thing would probably be a good candidate)
- repeat with lockdep enabled to make everything even harder

-- 
Ville Syrjälä
Intel
