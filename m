Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4113FE5C6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 02:27:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED8716E405;
	Thu,  2 Sep 2021 00:27:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02FAB6E405
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 00:27:09 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10094"; a="198463342"
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="198463342"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 17:27:09 -0700
X-IronPort-AV: E=Sophos;i="5.84,370,1620716400"; d="scan'208";a="446826775"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.134])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Sep 2021 17:27:09 -0700
Date: Wed, 1 Sep 2021 17:27:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Message-ID: <20210902002707.GH461228@mdroper-desk1.amr.corp.intel.com>
References: <20210830162240.3891502-1-ayaz.siddiqui@intel.com>
 <20210830162240.3891502-9-ayaz.siddiqui@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210830162240.3891502-9-ayaz.siddiqui@intel.com>
Subject: Re: [Intel-gfx] [PATCH V3 8/8] drm/i915/selftest: Remove Renderer
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

On Mon, Aug 30, 2021 at 09:52:40PM +0530, Ayaz A Siddiqui wrote:
> Some platform like XEHPSVD does not have Renderer engines. since
> read_l3cc_table() is guarded by renderer class due to that check
> of L3CC table was not being performed on those platforms.
> 
> Signed-off-by: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_mocs.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_mocs.c b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> index 2b0207dfbf21c..05f5c57f82699 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_mocs.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_mocs.c
> @@ -281,7 +281,7 @@ static int check_mocs_engine(struct live_mocs *arg,
>  	offset = i915_ggtt_offset(vma);
>  	if (!err)
>  		err = read_mocs_table(rq, arg->mocs, &offset);
> -	if (!err && ce->engine->class == RENDER_CLASS)
> +	if (!err)

This is going to make us read & verify the same values several times
(once per engine) which doesn't seem to provide much benefit.  But I
guess we do the same thing for global MOCS and nobody seems to care
about the duplicated effort there either.

I guess it doesn't really matter.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

>  		err = read_l3cc_table(rq, arg->l3cc, &offset);
>  	if (!err)
>  		err = read_aux_regs(rq, aux, &offset);
> @@ -296,7 +296,7 @@ static int check_mocs_engine(struct live_mocs *arg,
>  	vaddr = arg->vaddr;
>  	if (!err)
>  		err = check_mocs_table(ce->engine, arg->mocs, &vaddr);
> -	if (!err && ce->engine->class == RENDER_CLASS)
> +	if (!err)
>  		err = check_l3cc_table(ce->engine, arg->l3cc, &vaddr);
>  	if (!err)
>  		err = check_aux_regs(ce->engine, aux, &vaddr);
> -- 
> 2.26.2
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
