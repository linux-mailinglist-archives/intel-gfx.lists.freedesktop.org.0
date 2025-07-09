Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D540AAFEFE1
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Jul 2025 19:30:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C99210E32D;
	Wed,  9 Jul 2025 17:30:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cZFgaYOz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C9A910E32D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Jul 2025 17:30:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752082230; x=1783618230;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Xjt9GDTZMWUDId0mwpSlJgV3+VVoSTEL2awGaEjbe1g=;
 b=cZFgaYOzVRdISIKUqeJrDYewk1b7DDfJFyLIpB2m3CEAJUDHZt0CVKPE
 DrM6Ln+UmjnExQR+6NMZ5HqIw2683z73OlxthVqdltvwnFzCTUfH1SUi8
 M+g04CSY3v8rPKk9N0yolZdZKNqUn4CSK6xCp68oNQBIUVdHW6+iBhX8N
 Cby8VUg91XSD/+j20E7MKLEZzaaAuOeI4oeajabKeWC2owYh6RwKX01Rq
 lzX34hv2pgjKxYd8Hm04ridHe2QePaiTAfaigoXeIT8BoZxNmeKAM0z6X
 XoqeYaCSFOWiLtXk7APswl7VciJa8T1BnYTQx9d85AhHi3/13KZdmtmY2 A==;
X-CSE-ConnectionGUID: G6IwFFCKShaOFEEYaMkxNA==
X-CSE-MsgGUID: SR652NJpRuWMbJVoMDZzeA==
X-IronPort-AV: E=McAfee;i="6800,10657,11489"; a="71798910"
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="71798910"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2025 10:30:30 -0700
X-CSE-ConnectionGUID: u4PbO8E/TZyjFnEgrd9rXQ==
X-CSE-MsgGUID: IbRX9hV6TCazUD4NvAQ9jQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,298,1744095600"; d="scan'208";a="161497538"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.254])
 by orviesa005.jf.intel.com with SMTP; 09 Jul 2025 10:30:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Jul 2025 20:30:26 +0300
Date: Wed, 9 Jul 2025 20:30:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ben Hutchings <ben@decadent.org.uk>
Cc: Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-rt-users@vger.kernel.org, intel-gfx@lists.freedesktop.org,
 Debian kernel maintainers <debian-kernel@lists.debian.org>
Subject: Re: PREEMPT_RT vs i915
Message-ID: <aG6nMhimN1lWKAEP@intel.com>
References: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7c42fe5a6158445e150e7d63991767e44fc36d3d.camel@decadent.org.uk>
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

On Tue, Jul 08, 2025 at 09:35:21PM +0200, Ben Hutchings wrote:
> Hi all,
> 
> Debian currently provides non-default kernel packages with the
> PREEMPT_RT patchset applied and enabled.  However, for the Debian 14
> "forky" release the plan is to use only the upstream RT support.
> 
> One result of this is that the i915 driver will not be included in our
> RT kernel package on amd64 because the upstream version lacks the
> patches to make it compatible with PREEMPT_RT.  This was not a surprise
> to us, but may disappoint some of our users (for example see
> <https://bugs.debian.org/1108324>).
> 
> I see that Sebastian submitted the i915 fixes upstream in October 2024.
> If I understand the explanation in
> <https://lore.kernel.org/intel-gfx/Zv-n2h0gsquKOvXu@intel.com/> rightly,
> much of these changes are unsafe because i915 has its own hard timing
> requirement for reprogramming multiple display controller registers
> within a single frame.  Is that still the sticking point?
> 
> It seems like the critical uncore lock is currently held in a lot of
> places and potentially for a long time.

It shouldn't be held for that long. I think it should just be
a raw spinlock.

The only edge case I know is the weird retry hack in
__intel_get_crtc_scanline() which I suspect is just due to PSR
and could potentially be handled in a nicer way by actually
checking the PSR state.

> Would it be practical to split
> this lock into:
> 
> 1. raw spinlock protecting only state needed for the atomic (within-one-
> frame) update

Spinlocks aren't involved in that. It is achieved by racing against
the beam, with interrupts disabled to make it more likely the CPU
wins the race.

> 2. regular spinlock protecting everything in uncore
> 
> or is almost all the uncore state potentially used during an atomic
> update?
> 
> Would it help to offload the atomic updates to a kthread that runs with
> RT priority but still with hard interrupts enabled?

Not sure what another thread would specifically get us, as opposed
to eg. just boosting the priority of the existing thread? But whatever
thread does the work needs to not be interrupted for any significant
amount of time.

The interrupt disabling part I suppose is rather hardware/workload
specific, so hard to say anything general about it.

> 
> Would it make things easier if setting CONFIG_PREEMPT_RT=y limited i915
> to not run on some older hardware?

No. All hardware needs this.

Anyways, all of this is rather academic at this point. Someone
needs to try and see what works, and hammer it hard while doing so
to make sure it doesn't fall over easily.

-- 
Ville Syrjälä
Intel
