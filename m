Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 159F33FF558
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 23:07:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EDFB6E083;
	Thu,  2 Sep 2021 21:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 764C56E083
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 21:07:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="198795128"
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="198795128"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 14:07:46 -0700
X-IronPort-AV: E=Sophos;i="5.85,263,1624345200"; d="scan'208";a="461848621"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 14:07:46 -0700
Date: Thu, 2 Sep 2021 14:07:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210902210745.GR461228@mdroper-desk1.amr.corp.intel.com>
References: <20210902185635.290538-1-ayaz.siddiqui@intel.com>
 <20210902185635.290538-7-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210902185635.290538-7-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V4 6/6] drm/i915/selftest: Remove Renderer
 class check for l3cc table read
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

On Fri, Sep 03, 2021 at 12:26:35AM +0530, Ayaz A Siddiqui wrote:
> Some platform like XEHPSVD does not have Renderer engines. since
> read_l3cc_table() is guarded by renderer class due to that check
> of L3CC table was not being performed on those platforms.
> 

Yeah, Xe_HP SDV doesn't have an RCS engine, but it does have compute
engines (CCS) that fill the same role.  I have the initial patches to
enable the compute engine ready to send upstream; just waiting on one of
the userspace drivers (either Mesa or OCL) to have their own merge
requests ready so that I can reference that as our userspace consumer.

Maybe we should hold off on this patch for now and change this to

        if (!err && engine->flags & I915_ENGINE_HAS_RCS_REG_STATE)

which will apply to both the render and compute engines at that point?
Or, since these registers are global and not engine-specific, we could
adjust the code to just do this once, with whatever the GT's first
engine happens to be (doesn't matter if it's RCS, CCS, BCS, VCS, or
VECS) so that we're not repeating the same process multiple times
needlessly?


Matt

> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_mocs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index 13d25bf2a94aa..c3a48a06c37ee 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -237,7 +237,7 @@ static int check_mocs_engine(struct live_mocs *arg,
>  	offset = i915_ggtt_offset(vma);
>  	if (!err)
>  		err = read_mocs_table(rq, arg->mocs, &offset);
> -	if (!err && ce->engine->class == RENDER_CLASS)
> +	if (!err)
>  		err = read_l3cc_table(rq, arg->l3cc, &offset);
>  	offset -= i915_ggtt_offset(vma);
>  	GEM_BUG_ON(offset > PAGE_SIZE);
> @@ -250,7 +250,7 @@ static int check_mocs_engine(struct live_mocs *arg,
>  	vaddr = arg->vaddr;
>  	if (!err)
>  		err = check_mocs_table(ce->engine, arg->mocs, &vaddr);
> -	if (!err && ce->engine->class == RENDER_CLASS)
> +	if (!err)
>  		err = check_l3cc_table(ce->engine, arg->l3cc, &vaddr);
>  	if (err)
>  		return err;
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
