Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BECE46F187
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 18:21:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 915BC10E187;
	Thu,  9 Dec 2021 17:21:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D2910E186
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 17:21:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639070501; x=1670606501;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=oXAnzqYbR9CLlomKPI4qmmL/gaQ5ePhtV+BhiMoETCg=;
 b=X97F5EvpULZkR3sIUHcFoNI7QTqTBOAVNQvyI2wVbYUQmLGS6lEyfd73
 mJUkHNk9ygL18Da1QVAdWY0WhMVlTqG6xW/0i8a/xGW2JM/q1Nd/2Gnzz
 fWl89ELGFHkT480YwE7Rg4jsF2aE4ykjpIuDix0UFxsOEog+MrmZ5B4aK
 8+Dd9jLG1Wt4d3UEObF0mwg+Y+XOVPeSGPC5WYhMx2dM9uMlsb9lCJnJk
 MGBfeAbRSaV/HaTla2zp0SmOqDNvSjiPLGHJihkDJdSilLbuXLf3ZYEg8
 iny+Zj9kyC2UKMpVDckqKJ31YaxiW5Py5iTDUzB+WAkRyWjvtETj2aRV4 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10193"; a="238384495"
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="238384495"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:21:40 -0800
X-IronPort-AV: E=Sophos;i="5.88,193,1635231600"; d="scan'208";a="606974072"
Received: from ayushshr-mobl1.amr.corp.intel.com (HELO ldmartin-desk2)
 ([10.209.115.39])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 09:21:40 -0800
Date: Thu, 9 Dec 2021 09:21:39 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: ravitejax.goud.talla@intel.com
Message-ID: <20211209172139.jze46pphfosafv62@ldmartin-desk2>
X-Patchwork-Hint: comment
References: <20211203145603.4006937-1-ravitejax.goud.talla@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20211203145603.4006937-1-ravitejax.goud.talla@intel.com>
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
Cc: intel-gfx@lists.freedesktop.org, hariom.pandey@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 03, 2021 at 08:26:03PM +0530, ravitejax.goud.talla@intel.com wrote:
>From: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>
>
>Bspec page says "Reset: BUS", Accordingly moving w/a's:
>Wa_1407352427,Wa_1406680159 to proper function icl_gt_workarounds_init()
>Which will resolve guc enabling error
>
>v2:
>  - Previous patch rev2 was created by email client which caused the
>    Build failure, This v2 is to resolve the previous broken series
>
>Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
>Signed-off-by: Raviteja Goud Talla <ravitejax.goud.talla@intel.com>

It seems like this patch is needed to be able to load GuC in ICL:
https://gitlab.freedesktop.org/drm/intel/-/issues/4067#note_1184951

And that is failing on Linus' master branch as of
2a987e65025e ("Merge tag 'perf-tools-fixes-for-v5.16-2021-12-07' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux")
and (at least) 5.15.*. Looking at the appropriate "Fixes" tag I found these commits:

   1) 1cd21a7c5679 ("drm/i915: Add Wa_1407352427:icl,ehl") - original
      commit adding the WA
   2) 3551ff928744 ("drm/i915/gen11: Moving WAs to rcs_engine_wa_init()")
      moving the WA to rcs_engine_wa_init()

However (2) is on v5.7-rc1 and (1) is on v5.6-rc1 and according to the
bug report GuC loading was working on 5.13. So I suspect the move
to GuC 62.0.0 made the checks more strict, or there is another patch
that paired with that one makes load fail to load.

Anyway, it seems that commit is the one to fix and we probably need to
bring both moves to stable (5.15.y and 5.10.y ?), besides propagating
it to drm-intel-fixes so it applies to 5.16

Cc'ing some more people.


Lucas De Marchi




>---
> drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++++---------
> 1 file changed, 9 insertions(+), 9 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>index c3211325c2d3..3113266c286e 100644
>--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
>+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
>@@ -1224,6 +1224,15 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> 		    GAMT_CHKN_BIT_REG,
> 		    GAMT_CHKN_DISABLE_L3_COH_PIPE);
>
>+	/* Wa_1407352427:icl,ehl */
>+	wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>+		    PSDUNIT_CLKGATE_DIS);
>+
>+	/* Wa_1406680159:icl,ehl */
>+	wa_write_or(wal,
>+		    SUBSLICE_UNIT_LEVEL_CLKGATE,
>+		    GWUNIT_CLKGATE_DIS);
>+
> 	/* Wa_1607087056:icl,ehl,jsl */
> 	if (IS_ICELAKE(i915) ||
> 	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
>@@ -2269,15 +2278,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> 		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
> 			    VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
>
>-		/* Wa_1407352427:icl,ehl */
>-		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
>-			    PSDUNIT_CLKGATE_DIS);
>-
>-		/* Wa_1406680159:icl,ehl */
>-		wa_write_or(wal,
>-			    SUBSLICE_UNIT_LEVEL_CLKGATE,
>-			    GWUNIT_CLKGATE_DIS);
>-
> 		/*
> 		 * Wa_1408767742:icl[a2..forever],ehl[all]
> 		 * Wa_1605460711:icl[a0..c0]
>-- 
>2.34.1
>
