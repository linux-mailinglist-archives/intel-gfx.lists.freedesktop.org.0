Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CC4A7D2F8F
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 12:21:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB4FD10E091;
	Mon, 23 Oct 2023 10:21:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4480C10E091;
 Mon, 23 Oct 2023 10:21:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698056511; x=1729592511;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bNg3K99IrWSz23ELeY/xyH3EAhhrxUm6rA9p6hxBnSk=;
 b=HV368fQvj/8rdZQIhhc/BxfdTnkVHptYlsCesix6fztDm5AgAGY0NR5e
 IS9bGJV9Q7AN8XQHh7pSaJJAvgdMREMF6CxmHi/14CPWBs5qQwVn3Y9eB
 p0VL0oZRbEToijCmqtMjtlPWP/1XY3jK69UfVZXGIW3oB1YHjBDIpvbir
 m0CvFzIWLyj2HPogdxRMjDl6rGqbhbQkRk+t2yQPDaxOiJh6faaEXDiaf
 O9HDz7pmh+PueYG+SaheKm42aJAgBZalkXZdivUZ8lSBA5Ldn9XNdymxP
 nVmEj63EmPOC83Kdv4KStzOycKjG9K5zFLTGINX9aXEz7g49s2SKyxiMM w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="367038884"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="367038884"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 03:21:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="787424339"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="787424339"
Received: from evlad-mobl.ger.corp.intel.com (HELO localhost) ([10.252.47.180])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 03:21:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: "Coelho, Luciano" <luciano.coelho@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
In-Reply-To: <9749798a6af666cc070598169ecf9d0770842c93.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231023084322.1482161-1-luciano.coelho@intel.com>
 <87fs21d7pw.fsf@intel.com>
 <9749798a6af666cc070598169ecf9d0770842c93.camel@intel.com>
Date: Mon, 23 Oct 2023 13:21:45 +0300
Message-ID: <874jihd4g6.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: handle uncore spinlock when
 not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 23 Oct 2023, "Coelho, Luciano" <luciano.coelho@intel.com> wrote:
> On Mon, 2023-10-23 at 12:11 +0300, Jani Nikula wrote:
>> On Mon, 23 Oct 2023, Luca Coelho <luciano.coelho@intel.com> wrote:
>> > The uncore code may not always be available (e.g. when we build the
>> > display code with Xe), so we can't always rely on having the uncore's
>> > spinlock.
>> > 
>> > To handle this, split the spin_lock/unlock_irqsave/restore() into
>> > spin_lock/unlock() followed by a call to local_irq_save/restore() and
>> > create wrapper functions for locking and unlocking the uncore's
>> > spinlock.  In these functions, we have a condition check and only
>> > actually try to lock/unlock the spinlock when I915 is defined, and
>> > thus uncore is available.
>> > 
>> > This keeps the ifdefs contained in these new functions and all such
>> > logic inside the display code.
>> > 
>> > Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
>> > ---
>> > 
>> > Note: this patch was accidentally sent only to intel-xe[1], but should
>> > have been sent to intel-gfx.  Thus, this is v2.
>> > 
>> > In v2:
>> > 
>> >    * Renamed uncore_spin_*() to intel_spin_*()
>> >    * Corrected the order: save, lock, unlock, restore
>> > 
>> > [1] https://patchwork.freedesktop.org/patch/563288/
>> > 
>> > 
>> >  drivers/gpu/drm/i915/display/intel_display.h | 22 +++++++++++++++++++-
>> >  drivers/gpu/drm/i915/display/intel_vblank.c  | 19 ++++++++++-------
>> >  2 files changed, 33 insertions(+), 8 deletions(-)
>> > 
>> > diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> > index 0e5dffe8f018..099476906f4c 100644
>> > --- a/drivers/gpu/drm/i915/display/intel_display.h
>> > +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> > @@ -29,6 +29,7 @@
>> >  
>> >  #include "i915_reg_defs.h"
>> >  #include "intel_display_limits.h"
>> > +#include "i915_drv.h"
>> 
>> In general, please avoid including headers from headers. In particular,
>> please don't include i915_drv.h from headers. The header
>> interdependencies are pretty bad already, and we need to clean it up.
>
> Right, I thought twice about this, but this seems far from clean, as
> you say, so I thought it would be fine.

Adding that single include bumps the total recursive includes of this
file from 2 to 97... i915_drv.h is pretty bad.

BR,
Jani.


>
> There's not much point, though, since we have a declaration for
> drm_i915_private in this file anyway, so the dependency is still
> there...
>
> In any case, I'll unspin this change and go back to passing the actual
> lock instead of passing drm_i915_private.
>
> --
> Cheers,
> Luca.

-- 
Jani Nikula, Intel
