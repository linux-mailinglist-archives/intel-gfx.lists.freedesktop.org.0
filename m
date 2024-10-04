Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EEB9398FEED
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 10:31:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D877C10E152;
	Fri,  4 Oct 2024 08:31:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AFlZkJzs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C3DB610E152;
 Fri,  4 Oct 2024 08:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728030687; x=1759566687;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7LrMeyVrs5YRPiWDcspjw7Vd3FqjSY4jXqXJ/GCpjrs=;
 b=AFlZkJzsPnHNDy2Cc2N+mj0ICaRP62wl6RjoDhy9vjoNAUp2ke0FANPH
 4GYl0MhUfVte+GnO5q8BhoJ+DtyMVe9/WnMOOUMbuMWjMj0XHDVUznQcF
 aQ4an4m8BYPVj/6cAFUnF1QGjGseJxguRk4s4g4OAaaFDpm3oEBf3hfZo
 WTG2FGznMFsZGWzIWkd0QPC1RLTrJPZM97R0I4yrFL7sCuGj9MU0RRlZP
 qeoAGrr9V3Lhm94wJgdcEY8SnKeywR3muEJelZdVmE2vbYNqn0emt+5Ts
 Ibgcu4Xm3S3KuRq5uuu4YqKMpEOv7IbaxXZ/49d6dDt+/tOFtG1cAM8dg Q==;
X-CSE-ConnectionGUID: zsGaer3bSJegZCxeWmKLqA==
X-CSE-MsgGUID: 4IajP0N5S3m+YhTydHoR9g==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="31042567"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="31042567"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 01:31:26 -0700
X-CSE-ConnectionGUID: LvIx+0vLRsCCoadiZPV0tQ==
X-CSE-MsgGUID: QXEPtz6CRiWN/9TeUvD+3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="74747346"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 04 Oct 2024 01:31:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2024 11:31:22 +0300
Date: Fri, 4 Oct 2024 11:31:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v3 0/8] drm/i915: PREEMPT_RT related fixups.
Message-ID: <Zv-n2h0gsquKOvXu@intel.com>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
 <20241002162543.TKbd-8g0@linutronix.de>
 <Zv17oKlIImyfg_KI@intel.com>
 <20241004064951.XLw7TFbS@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241004064951.XLw7TFbS@linutronix.de>
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

On Fri, Oct 04, 2024 at 08:49:51AM +0200, Sebastian Andrzej Siewior wrote:
> On 2024-10-02 19:58:08 [+0300], Ville Syrjälä wrote:
> > > These patches were not picked. Did I forget something or was this just
> > > overseen?
> > 
> > This looks quite poorly justified. Eg. you seem to be now
> > leaving interrupts enabled (and even preemption enabled I
> > guess) when we're racing against the raster beam. On first
> > blush that seems like a recipe for failure.
> 
> I can't really parse this. I may leave interrupts enabled in vblanc code
> (the first two patches).

vblank evasion 101:
We need to write a boatload of registers atomically within one 
frame. We try to guarantee that by checking if we're too close 
the point at which the hardware latches said registers, and if 
so we defer the update into the next frame.

raster scan/time ->
.....vertical active.........><...vertical blank...><...vertical active...><...vertical blank
     <VBLANK_EVASION_TIME_US> ^^                                          ^
            ^                 ||                                          |
            |   registers are /|                            registers are /
            |   latched here   |                             latched here
            |                  |
    If we're somewhere         |
    in here we delay           |
    writing the registers...   ...until we are about here and then we have most
                               of the frame to write all the registers. Though
                               since we use an interrupt to wait for this point
                               interrupt latency does eat into the budget a bit

.....vertical active.........><..vertical blank...><...
     <VBLANK_EVASION_TIME_US> ^
  <-.                         |
    |           registers are /
    |           latched here
    |
    If we're somewhere to the left of this
    point we proceed to write the registers
    immediately and now in the worst case we
    have exactly VBLANK_EVASION_TIME_US to
    write all the registers

So once vblank evasion has declared things to be safe we might have
as short a time as VBLANK_EVASION_TIME_US to write all the registers.
If the CPU gets stolen from us at that point we can no longer guarantee
anything. The magic value has been tuned empirically over the years,
until we've found something that seems to work well enough, without
being too long to negatively affect performance.

-- 
Ville Syrjälä
Intel
