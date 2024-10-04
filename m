Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 322FF98FF54
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 11:07:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D3F10E28B;
	Fri,  4 Oct 2024 09:07:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nM9TxTTS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D70C010E22B;
 Fri,  4 Oct 2024 09:07:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728032849; x=1759568849;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=SAsIFEzHHu9hZXf1h1Vtu/9Rxs2fthLthPxzyhd2wts=;
 b=nM9TxTTSOEAyx9Fih4bAcOqV9V9Uy4yyRpddZNSwhCWNq5S2sW60PztB
 /hA1ygWkaal5kNYKzOA+S8hhFwzwjlbR+/rl5UIZQsO/6hNMqwUeDu6UZ
 +70c7LxhlqDJKIvncFdFp26JVUALGR9WmIjggSmk17Elz4zDoukvZoYYr
 JLfVyoRK6cyygE+pUWIIkvaVC1ow7/EHATDh6oX5bXE6sCyQr8de4RDWl
 9NcPwxY2gXbX3mbIn8/YHhRv1oiSDrNG4cRvfpEVNuzwd0WHA4/TsZCIf
 GTKVplwDbEf6TMMvGuurVepuGT1CofLqKrxYopa8qnp6OYvDGW9D3w+Yw w==;
X-CSE-ConnectionGUID: 3qS9pRa6Q+a5KtmWxTIVgQ==
X-CSE-MsgGUID: J+mlC1dYTfGTdEH2Q+lLag==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="27384378"
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="27384378"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2024 02:07:29 -0700
X-CSE-ConnectionGUID: 7M4NFhnzSl69uGqJVne1Qg==
X-CSE-MsgGUID: 9yEGDID5TGe+cakuLXJ7CA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,177,1725346800"; d="scan'208";a="74752573"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 04 Oct 2024 02:07:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 04 Oct 2024 12:07:24 +0300
Date: Fri, 4 Oct 2024 12:07:24 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH v3 0/8] drm/i915: PREEMPT_RT related fixups.
Message-ID: <Zv-wTDujdFuH_wIQ@intel.com>
References: <20240628130601.1772849-1-bigeasy@linutronix.de>
 <20241002162543.TKbd-8g0@linutronix.de>
 <Zv17oKlIImyfg_KI@intel.com>
 <20241004064951.XLw7TFbS@linutronix.de>
 <Zv-n2h0gsquKOvXu@intel.com>
 <20241004084525.333iWV-t@linutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241004084525.333iWV-t@linutronix.de>
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

On Fri, Oct 04, 2024 at 10:45:25AM +0200, Sebastian Andrzej Siewior wrote:
> On 2024-10-04 11:31:22 [+0300], Ville Syrjälä wrote:
> > 
> > So once vblank evasion has declared things to be safe we might have
> > as short a time as VBLANK_EVASION_TIME_US to write all the registers.
> > If the CPU gets stolen from us at that point we can no longer guarantee
> > anything. The magic value has been tuned empirically over the years,
> > until we've found something that seems to work well enough, without
> > being too long to negatively affect performance.
> 
> what happens if this gets delayed? Just flicker or worse?

In the best best case it just gets you a corrupted frame
of some sort, in the worst case the hardware falls over.
Depends on what kind of update is happening, and what
platform we're dealing with.

We've tried to mitigate some of the worst issues by
trying to order the register writes more carefully,
but some of the ordering constraints (eg. scalers vs.
DDB) are more or less in conflict with each other
so making it 100% safe seems impossible.

> 
> Is this something that affects all i915 based HW or only old ones? As
> far as I remember, there is a register lock which is only required on
> older HW.

Currently it affects everything. There is a new double buffer
latching inhibit bit on some of the very latest platforms that
we could probably use to make things more safe if vblank evasion
fails, but we've not hooked that up. But vblank evasion would still
be necessary at least for cursor updates since those are
done as mailbox style updates (ie. multiple updates per frame)
and there is no way to guarantee forward progress without vblank
evasion.

Register access locks aren't relevant here, and most
register accesses in the vblank evade critical section
are lockless anyway. The locks were too expensive and we
determined that we an safely use lockless accesses here.

-- 
Ville Syrjälä
Intel
