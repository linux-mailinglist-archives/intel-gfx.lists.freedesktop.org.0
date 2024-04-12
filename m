Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D834C8A33C8
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 18:26:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49BDE10E3F0;
	Fri, 12 Apr 2024 16:26:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8pWUJuu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 976B910E3F0;
 Fri, 12 Apr 2024 16:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712939205; x=1744475205;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CoAvhTMt+ClKYJyx9fkeMjn4e9bz8hoVk80daUywBS8=;
 b=N8pWUJuuJYU5j90Gwz/SHogocrEPsQOz84qksTSG87BSAosECvcxUaBb
 E2+rQJYzYvLKoEPa6UeZ2rSuflgNH+S4MvkJRPkKHpyeZEc79JIH2fwFQ
 Ug4KAf/vWwfj17nQ3Pi322g5xSyO72FsPaGcicIEJNf6MEtY3NEEqgc1H
 YUIZhHME6k2Wh316pRcC2Em251zH0VQzqpZVEx5s+BsZoUEKDb7VPiDxV
 CuRQ2mQFk5CTuVQ7ZsG7Lrlqc3oGCo79x0FWNj5DUMwbmr1ciB/YUHeV/
 HLWe8vIwF4CR3oKU/4I+T3ZvnUZgRwZCoSswnpWabNmyNy9QCCPuFudC2 Q==;
X-CSE-ConnectionGUID: 2AzUKGSSQ8WpzBSlzqwDrQ==
X-CSE-MsgGUID: Q5ovyFeFQkuUMhqWVwBXpg==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="19549558"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="19549558"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 09:26:44 -0700
X-CSE-ConnectionGUID: n5FwUVExRJy+fMF3HNUbyg==
X-CSE-MsgGUID: VzQi4Jv1TIm87yvipc87CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21361963"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Apr 2024 09:26:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 12 Apr 2024 19:26:40 +0300
Date: Fri, 12 Apr 2024 19:26:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 3/6] drm/i915/display: split out intel_fbc_regs.h from
 i915_reg.h
Message-ID: <ZhlgwJSSemaZjEC5@intel.com>
References: <cover.1712933479.git.jani.nikula@intel.com>
 <eaf07dab79ff057547501892056dd06afec4f213.1712933479.git.jani.nikula@intel.com>
 <ZhlO_c62Tdlx_ck8@intel.com> <87bk6e4m1q.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87bk6e4m1q.fsf@intel.com>
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

On Fri, Apr 12, 2024 at 06:50:57PM +0300, Jani Nikula wrote:
> On Fri, 12 Apr 2024, Ville Syrjälä <ville.syrjala@linux.intel.com> wrote:
> > On Fri, Apr 12, 2024 at 05:52:55PM +0300, Jani Nikula wrote:
> >> +/*
> >> + * Framebuffer compression (915+ only)
> >> + */
> >
> > Outdated comment. Looks like pretty much all the comments
> > in this file are misleading/outdated. Maybe just nuke them
> > all while at it.
> 
> Ack.
> 
> >> +#define ILK_DISPLAY_CHICKEN1	_MMIO(0x42000)
> >
> > Not an FBC register.
> 
> Whoops, this one was an accident.
> 
> >> +#define CHICKEN_MISC_4		_MMIO(0x4208c)
> >
> > Also not an FBC register.
> 
> However this one was intentional. So the register isn't "an fbc
> register", but the contents are all about fbc,

Only the bits we have thus far defined. There's other stuff
in there that we haven't bothered to name.

> and it's only used in
> intel_fbc.c.

I don't think we should place chicken register/etc definitons based
purely on where it might be currently used. That may change at any
point when we discover a new chicken bit that needs to be flipped.
At that point the defintion would have to be moved again, or what
seems rather likely to happen, people will overlook the existing
definiton and add a duplicate elsewhere.

> 
> I guess after all reasonable topical things have been split out from
> i915_reg.h, whatever display stuff is left will need to be put to a new
> intel_display_regs.h or something. Things like this would then end up
> there. Better or worse that way, I don't know.

Yeah, there are a bunch of "these don't really belong anywhere"
registers. Though maybe this kind of non-specific chicken registers
could even live in the intel_chicken_regs.h file. Shrug.

-- 
Ville Syrjälä
Intel
