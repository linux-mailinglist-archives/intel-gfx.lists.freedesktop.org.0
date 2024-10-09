Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 216A2996A8B
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 14:47:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5AFD210E25D;
	Wed,  9 Oct 2024 12:47:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="POIweuCJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C289610E25D
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Oct 2024 12:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728478061; x=1760014061;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=QnsxJzHKpxVFEU+zwEUFsgxKgD8ePEJWfo9vU1xYLGk=;
 b=POIweuCJw7NqavGX+rtcSd9f8+Qo0up8H9xzDrFmlUJn07TMw/IIFsD3
 zTX9lTBJCyvko2RteVet3d6HihDTxcx8u+AwZbi1UYtA5Dz7RLqMAfAEB
 tTdaJaWAmDZ8uogI/fMK3V6zQ3JKwBEYJ54/y5UqUj/Q2ECIsy1DW5XZE
 d3BRYVAFjfn81Z8uAf98QQghUaqFTkKD0Xfj+WcwHgXYXDHpJQIrdKm25
 lZoXJjmhWQRVwIc+4CQ5jIv54kgbAMx4zqWd44zQvsLK8ipn/Ryc67WB9
 UZENDYwYBFdffIUHDCnjMJMYjzWO2jwun87KIcQFlnLXaObyQ9itfTLCd g==;
X-CSE-ConnectionGUID: aIbwV4oTSvuK4lmNgB2gcg==
X-CSE-MsgGUID: QhTdWWw0RZ2H0TlGUvOAkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11220"; a="27653166"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27653166"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 05:47:40 -0700
X-CSE-ConnectionGUID: 2w9pxY5YR4OEnaRoFQoHZQ==
X-CSE-MsgGUID: BJmtg7lwRl6l+ArbPsQCwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="113715609"
Received: from black.fi.intel.com ([10.237.72.28])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 05:47:38 -0700
Date: Wed, 9 Oct 2024 15:47:34 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 matthew.d.roper@intel.com, andi.shyti@linux.intel.com,
 intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v1] drm/i915/dg2: enable G8 with a workaround
Message-ID: <ZwZ7ZrcBObuIrPqh@black.fi.intel.com>
References: <20241007122424.642796-1-raag.jadav@intel.com>
 <87ttdmbj8l.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87ttdmbj8l.fsf@intel.com>
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

On Tue, Oct 08, 2024 at 08:24:42PM +0300, Jani Nikula wrote:
> On Mon, 07 Oct 2024, Raag Jadav <raag.jadav@intel.com> wrote:
> > Host BIOS doesn't enable G8 power mode due to an issue on DG2, so we
> > enable it from kernel with Wa_14022698589. Currently it is enabled for
> > all DG2 devices with the exception of a few, for which, it is enabled
> > only when paired with whitelisted CPU models.
> 
> In commit messages "currently" and the present tense usually refer to
> the status quo before the patch has been merged. Doesn't seem to be the
> case here, and it confuses what we have now and what the patch changes.

True.

> >
> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 43 +++++++++++++++++++++
> >  drivers/gpu/drm/i915/i915_reg.h             |  1 +
> >  2 files changed, 44 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index e539a656cfc3..b2db51377488 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -14,11 +14,30 @@
> >  #include "intel_gt_mcr.h"
> >  #include "intel_gt_print.h"
> >  #include "intel_gt_regs.h"
> > +#include "intel_pcode.h"
> >  #include "intel_ring.h"
> >  #include "intel_workarounds.h"
> >  
> >  #include "display/intel_fbc_regs.h"
> >  
> > +#ifdef CONFIG_X86
> > +#include <asm/cpu_device_id.h>
> > +#include <asm/intel-family.h>
> > +
> > +static const struct x86_cpu_id g8_cpu_ids[] = {
> > +	X86_MATCH_VFM(INTEL_ALDERLAKE,		NULL),
> > +	X86_MATCH_VFM(INTEL_ALDERLAKE_L,	NULL),
> > +	X86_MATCH_VFM(INTEL_COMETLAKE,		NULL),
> > +	X86_MATCH_VFM(INTEL_KABYLAKE,		NULL),
> > +	X86_MATCH_VFM(INTEL_KABYLAKE_L,		NULL),
> > +	X86_MATCH_VFM(INTEL_RAPTORLAKE,		NULL),
> > +	X86_MATCH_VFM(INTEL_RAPTORLAKE_P,	NULL),
> > +	X86_MATCH_VFM(INTEL_RAPTORLAKE_S,	NULL),
> > +	X86_MATCH_VFM(INTEL_ROCKETLAKE,		NULL),
> > +	{}
> > +};
> > +#endif
> > +
> >  /**
> >   * DOC: Hardware workarounds
> >   *
> > @@ -1770,9 +1789,33 @@ static void wa_list_apply(const struct i915_wa_list *wal)
> >  	intel_gt_mcr_unlock(gt, flags);
> >  }
> >  
> > +#define DG2_G8_WA_RANGE_1		0x56A0 ... 0x56AF
> > +#define DG2_G8_WA_RANGE_2		0x56B0 ... 0x56B9
> 
> Absolutely not.

I had an "ugly" self-note which I forgot to add while sending out :D

> > +
> > +/* Wa_14022698589:dg2 */
> > +static void intel_enable_g8(struct intel_uncore *uncore)
> > +{
> > +	if (IS_DG2(uncore->i915)) {
> > +		switch (INTEL_DEVID(uncore->i915)) {
> 
> Even using INTEL_DEVID() is a no-go. There are currently four users, and
> even some of them are too much.
> 
> We try hard to abstract this stuff at a higher level, and there must be
> zero direct PCI ID checks in code other than the table driven device
> identification. Otherwise it's just impossible to figure out where we do
> platform specific stuff for each platform.

Even if we use pci_match_id(), we'd need an explicit list to match against.
Any better way?

Raag
