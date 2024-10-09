Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F177996B55
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 15:05:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACAB610E6EC;
	Wed,  9 Oct 2024 13:05:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b50mUSFN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B253E10E6EC
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 13:05:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728479143; x=1760015143;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ueXUx3KOQzU2M9eITpzdm2MZ/0kGVb1dbOfsQPJxL5k=;
 b=b50mUSFNBI22A6+t6+eUc57ZFRHKayE1VngXB+U/nhYdhqzO26b0Otme
 KN895YN3TYEjDjOf31QKec46eZzu1T5zOfJWJY7Jy2rZM76MTyzAl1YT/
 2Sg02nxPyCw8o5RDE6lIMAff6F851eO/E/2YP2fomQsBPKTFiEv6TuZV8
 3FuGT7YmXS96/4pXJSSDBruZ8ULWQDkQysBBhyy7ruH2AX16vu5dcxvvh
 Bg+d10/TOca8uxSieO9uXs89lcZ+A3WYl0XQS2myO8/U6ZuWlUFkNyn5c
 t9c7gTS3kARhXyCe7t+o/T5cg5n5MRRX4hizVT2uETiANfzVOFVTUxHSe g==;
X-CSE-ConnectionGUID: C5h1yJXJSbqdnPhcIR+ZHw==
X-CSE-MsgGUID: sHnlyjgYQ22fUpgrlKbFcw==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="31569380"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="31569380"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:05:27 -0700
X-CSE-ConnectionGUID: gSMZRRxzTSOL4ApI1Dcoug==
X-CSE-MsgGUID: zxAdYQaXQP6xfmdzaZS1nA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="80756738"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 06:05:24 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Raag Jadav <raag.jadav@intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
In-Reply-To: <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241007122424.642796-1-raag.jadav@intel.com>
 <87ttdmbj8l.fsf@intel.com> <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
Date: Wed, 09 Oct 2024 16:05:20 +0300
Message-ID: <871q0pa0kv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Wed, 09 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> On Tue, Oct 08, 2024 at 08:24:42PM +0300, Jani Nikula wrote:
>> On Mon, 07 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
>> > Host BIOS doesn't enable G8 power mode due to an issue on DG2, so we
>> > enable it from kernel with Wa_14022698589. Currently it is enabled for
>> > all DG2 devices with the exception of a few, for which, it is enabled
>> > only when paired with whitelisted CPU models.
>> 
>> In commit messages "currently" and the present tense usually refer to
>> the status quo before the patch has been merged. Doesn't seem to be the
>> case here, and it confuses what we have now and what the patch changes.
>
> True.
>
>> >
>> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
>> > ---
>> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 43 +++++++++++++++++++++
>> >  drivers/gpu/drm/i915/i915_reg.h             |  1 +
>> >  2 files changed, 44 insertions(+)
>> >
>> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > index e539a656cfc3..b2db51377488 100644
>> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>> > @@ -14,11 +14,30 @@
>> >  #include "intel_gt_mcr.h"
>> >  #include "intel_gt_print.h"
>> >  #include "intel_gt_regs.h"
>> > +#include "intel_pcode.h"
>> >  #include "intel_ring.h"
>> >  #include "intel_workarounds.h"
>> >  
>> >  #include "display/intel_fbc_regs.h"
>> >  
>> > +#ifdef CONFIG_X86
>> > +#include <asm/cpu_device_id.h>
>> > +#include <asm/intel-family.h>
>> > +
>> > +static const struct x86_cpu_id g8_cpu_ids[] = {
>> > +	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
>> > +	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
>> > +	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
>> > +	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
>> > +	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
>> > +	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
>> > +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
>> > +	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
>> > +	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
>> > +	{}
>> > +};
>> > +#endif
>> > +
>> >  /**
>> >   * DOC: Hardware workarounds
>> >   *
>> > @@ -1770,9 +1789,33 @@ static void wa_list_apply(const struct i915_wa_list *wal)
>> >  	intel_gt_mcr_unlock(gt, flags);
>> >  }
>> >  
>> > +#define DG2_G8_WA_RANGE_1		0x56A0 ... 0x56AF
>> > +#define DG2_G8_WA_RANGE_2		0x56B0 ... 0x56B9
>> 
>> Absolutely not.
>
> I had an "ugly" self-note which I forgot to add while sending out :D
>
>> > +
>> > +/* Wa_14022698589:dg2 */
>> > +static void intel_enable_g8(struct intel_uncore *uncore)
>> > +{
>> > +	if (IS_DG2(uncore->i915)) {
>> > +		switch (INTEL_DEVID(uncore->i915)) {
>> 
>> Even using INTEL_DEVID() is a no-go. There are currently four users, and
>> even some of them are too much.
>> 
>> We try hard to abstract this stuff at a higher level, and there must be
>> zero direct PCI ID checks in code other than the table driven device
>> identification. Otherwise it's just impossible to figure out where we do
>> platform specific stuff for each platform.
>
> Even if we use pci_match_id(), we'd need an explicit list to match against.

Well, we don't use that for individual workarounds or hacks either. When
you think of using something like that, see what git grep says.

> Any better way?

You probably need to turn it into another subplatform, and add it in
intel_device_info.c. You're probably going to need to rehash the
INTEL_DG2_*_IDS PCI ID macros too. That's how we tell platforms apart at
the PCI ID granularity.

BR,
Jani.


>
> Raag

-- 
Jani Nikula, Intel
