Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E01470FD0
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Dec 2021 02:22:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 35B6210E2FE;
	Sat, 11 Dec 2021 01:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50F4510E2FE
 for <intel-gfx@lists.freedesktop.org>; Sat, 11 Dec 2021 01:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639185777; x=1670721777;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=bRaouvV1UX8uoiWhlXmpMg6lIeRuAEwKsQOuH/+MrGA=;
 b=XCdKD29Nh1rYmNDKe8JG78B+Oe+X+e59V7ZMc3yepihic8+/ZehvE4CN
 ZqT3jAbaSALKtgHLegNiRAuxM62AN2WBfQyWOq/Z8cAln40+yA5ZevUcp
 Eb2tzuZMth54zVqAnXzzdaUlBaco3mPjW8UrZeLA2Ev5vPTbmFaSlfjHZ
 AZpue9Njgiopz/JuDgNHV9EsxB47SfU53VclDkY3BrerABjTSiu5/+D+u
 //4Jc0Vp/2d+x0Cv3vVb6qh4ZeRd84ZAO5KD0pqExsm5p9xmdKWpc6dBV
 jwpn3uK6FS3e80xOcEn+YlIZ2k5lVczoeZ2G3l7TRE3L/Tau/s8h/y16v A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10194"; a="225359145"
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="225359145"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 17:22:56 -0800
X-IronPort-AV: E=Sophos;i="5.88,197,1635231600"; d="scan'208";a="463898075"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2021 17:22:55 -0800
Date: Fri, 10 Dec 2021 17:22:54 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20211211012254.GI2219399@mdroper-desk1.amr.corp.intel.com>
References: <20211203145603.4006937-1-ravitejax.goud.talla@intel.com>
 <20211209172139.jze46pphfosafv62@ldmartin-desk2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211209172139.jze46pphfosafv62@ldmartin-desk2>
Subject: Re: [Intel-gfx] [v2] drm/i915/gen11: Moving WAs to
 icl_gt_workarounds_init()
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
Cc: ravitejax.goud.talla@intel.com, intel-gfx@lists.freedesktop.org,
 hariom.pandey@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 09, 2021 at 09:21:39AM -0800, Lucas De Marchi wrote:
> On Fri, Dec 03, 2021 at 08:26:03PM +0530, ravitejax.goud.talla@intel.com wrote:
> > From: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
> > 
> > Bspec page says "Reset: BUS", Accordingly moving w/a's:
> > Wa_1407352427,Wa_1406680159 to proper function icl_gt_workarounds_init()
> > Which will resolve guc enabling error
> > 
> > v2:
> >  - Previous patch rev2 was created by email client which caused the
> >    Build failure, This v2 is to resolve the previous broken series
> > 
> > Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
> > Signed-off-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
> 
> It seems like this patch is needed to be able to load GuC in ICL:
> https://gitlab.freedesktop.org/drm/intel/-/issues/4067#note_1184951
> 
> And that is failing on Linus' master branch as of
> 2a987e65025e ("Merge tag 'perf-tools-fixes-for-v5.16-2021-12-07' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux")
> and (at least) 5.15.*. Looking at the appropriate "Fixes" tag I found these commits:
> 
>   1) 1cd21a7c5679 ("drm/i915: Add Wa_1407352427:icl,ehl") - original
>      commit adding the WA
>   2) 3551ff928744 ("drm/i915/gen11: Moving WAs to rcs_engine_wa_init()")
>      moving the WA to rcs_engine_wa_init()
> 
> However (2) is on v5.7-rc1 and (1) is on v5.6-rc1 and according to the
> bug report GuC loading was working on 5.13. So I suspect the move
> to GuC 62.0.0 made the checks more strict, or there is another patch

This is correct.  Having "GT workarounds" on the engine list by accident
used to be harmless (because i915 [with execlist submission] and the guc
[with guc submission]) would simply re-apply the register setting more
often than it really needed to.  However the more recent GuC versions
have become more picky about the set of registers they're willing to
save/restore for workarounds and will fail to load if they see a
register on the save/restore list that isn't something they think is
appropriate for an engine reset.

GuC submission isn't officially supported on ICL; you can force it via
module parameter, which taints the kernel and takes you through untested
codepaths, so you do so at your own risk.  Given that, I don't think
there's any real need to worry about getting this backported to specific
stable kernels; having the workaround in the wrong place doesn't
actually harm anything on the official and default non-GuC mode.


Matt

> that paired with that one makes load fail to load.
> 
> Anyway, it seems that commit is the one to fix and we probably need to
> bring both moves to stable (5.15.y and 5.10.y ?), besides propagating
> it to drm-intel-fixes so it applies to 5.16
> 
> Cc'ing some more people.
> 
> 
> Lucas De Marchi
> 
> 
> 
> 
> > ---
> > drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++++---------
> > 1 file changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index c3211325c2d3..3113266c286e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1224,6 +1224,15 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > 		    GAMT_CHKN_BIT_REG,
> > 		    GAMT_CHKN_DISABLE_L3_COH_PIPE);
> > 
> > +	/* Wa_1407352427:icl,ehl */
> > +	wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> > +		    PSDUNIT_CLKGATE_DIS);
> > +
> > +	/* Wa_1406680159:icl,ehl */
> > +	wa_write_or(wal,
> > +		    SUBSLICE_UNIT_LEVEL_CLKGATE,
> > +		    GWUNIT_CLKGATE_DIS);
> > +
> > 	/* Wa_1607087056:icl,ehl,jsl */
> > 	if (IS_ICELAKE(i915) ||
> > 	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > @@ -2269,15 +2278,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> > 			    VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
> > 
> > -		/* Wa_1407352427:icl,ehl */
> > -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> > -			    PSDUNIT_CLKGATE_DIS);
> > -
> > -		/* Wa_1406680159:icl,ehl */
> > -		wa_write_or(wal,
> > -			    SUBSLICE_UNIT_LEVEL_CLKGATE,
> > -			    GWUNIT_CLKGATE_DIS);
> > -
> > 		/*
> > 		 * Wa_1408767742:icl[a2..forever],ehl[all]
> > 		 * Wa_1605460711:icl[a0..c0]
> > -- 
> > 2.34.1
> > 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
