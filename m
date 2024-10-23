Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C17B49ABFD5
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 09:09:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B0C210E751;
	Wed, 23 Oct 2024 07:09:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DwC4DSTW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44FF710E751
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Oct 2024 07:09:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729667379; x=1761203379;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=+dWL+Kr+eaBHGwwQwZ+6F5KrBTMkqYuLUxx36YPJPy8=;
 b=DwC4DSTWSG4xsUIk+vpZpouaPnWsiqAgPn5QlL9wfz9Z7PI3DepCkdio
 cPh2MTRIuCjKTKW2m9XD/fO86DGVohPkmh3pX7NwQMHsXtHdrrvgSA1ph
 ktFm7q0fGaTDBwRnH95o0om1JWaAa+Ed/ogrnR7E1c9eoY9LfmY3Q84vT
 gKaQqU7ejoso64kivUd+xaYKamGPFkrEOT0E476GwRH9dc/a29kw7RI9F
 Tun+mUJAFQTS57FuFybTyxCLiWrla67A+0ZUsgcFmu6KtZyOUS7PqlD4o
 zA+NHsSPQqO6uUy4H3IjbmUlfvHx8JiZ34fmd2Bu5i81m44na8CFIITk5 g==;
X-CSE-ConnectionGUID: jzgzXk3AR0Kvx+VgJBOMTw==
X-CSE-MsgGUID: phzZc5THTeerKU/Zmt1u2w==
X-IronPort-AV: E=McAfee;i="6700,10204,11233"; a="28682509"
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="28682509"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 00:09:39 -0700
X-CSE-ConnectionGUID: 7A5iu3xqSd66Tmc0WDsWEQ==
X-CSE-MsgGUID: UNNCcl3CTY2VNUJwYEr+3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,225,1725346800"; d="scan'208";a="84080806"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 00:09:36 -0700
Date: Wed, 23 Oct 2024 10:09:33 +0300
From: Raag Jadav <raag.jadav@intel.com>
To: "Nilawar, Badal" <badal.nilawar@intel.com>
Cc: jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com,
 rodrigo.vivi@intel.com, matthew.d.roper@intel.com,
 andi.shyti@linux.intel.com, intel-gfx@lists.freedesktop.org,
 anshuman.gupta@intel.com, riana.tauro@intel.com
Subject: Re: [PATCH v2 4/4] drm/i915/dg2: Implement Wa_14022698537
Message-ID: <ZxihLRuJcLU1gHRP@black.fi.intel.com>
References: <20241011103250.1035316-1-raag.jadav@intel.com>
 <20241011103250.1035316-5-raag.jadav@intel.com>
 <ef992052-ad90-42d2-ac79-930308df6dbc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ef992052-ad90-42d2-ac79-930308df6dbc@intel.com>
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

On Tue, Oct 22, 2024 at 06:41:57PM +0530, Nilawar, Badal wrote:
> On 11-10-2024 16:02, Raag Jadav wrote:
> > G8 power state entry is disabled due to a limitation on DG2, so we
> > enable it from driver with Wa_14022698537. Fow now we enable it for
> > all DG2 devices with the exception of a few, for which, we enable
> > only when paired with whitelisted CPU models.
> > 
> > v2: Fix Wa_ID and include it in subject (Badal)
> >      Rephrase commit message (Jani)
> > 
> > Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> > ---
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 ++++++++++++++++++
> >   drivers/gpu/drm/i915/i915_reg.h             |  1 +
> >   2 files changed, 19 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index e539a656cfc3..bcd7630c1631 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -14,6 +14,7 @@
> >   #include "intel_gt_mcr.h"
> >   #include "intel_gt_print.h"
> >   #include "intel_gt_regs.h"
> > +#include "intel_pcode.h"
> >   #include "intel_ring.h"
> >   #include "intel_workarounds.h"
> > @@ -1770,9 +1771,26 @@ static void wa_list_apply(const struct i915_wa_list *wal)
> >   	intel_gt_mcr_unlock(gt, flags);
> >   }
> > +/* Wa_14022698537:dg2 */
> > +static void intel_enable_g8(struct intel_uncore *uncore)
> > +{
> > +	struct drm_i915_private *i915 = uncore->i915;
> > +
> > +	if (IS_DG2(i915)) {
> > +		if (IS_DG2_WA(i915) && !intel_match_wa_cpu())
> > +			return;
> > +
> > +		snb_pcode_write_p(uncore, PCODE_POWER_SETUP,
> > +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> > +	}
> > +}
> > +
> >   void intel_gt_apply_workarounds(struct intel_gt *gt)
> >   {
> >   	wa_list_apply(&gt->wa_list);
> > +
> > +	/* Special case for pcode mailbox which can't be on wa_list */
> > +	intel_enable_g8(gt->uncore);
> 
> This workaround is not specific to GT; G8 is a state specific to the SoC.
> Therefore, move this workaround above the GT layer and pass argument
> i915->uncore instead of gt->uncore

Since this WA needs to be applied on suspend/resume/reset cycles, I found
it to be more suitable here, atleast according to the documentation.

 * - GT workarounds: the list of these WAs is applied whenever these registers
 *   revert to their default values: on GPU reset, suspend/resume [1]_, etc.

We can either limit this to primary gt (using gt->info.id) here or move
this to i915_pcode_init() instead, whichever is the better option.

Raag
