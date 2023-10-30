Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7221E7DC00B
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Oct 2023 19:42:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0533810E35A;
	Mon, 30 Oct 2023 18:42:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D90B710E35A
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Oct 2023 18:42:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698691371; x=1730227371;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=uy5ZB/05Hb8pf6QENwjuzCCvChwSN/Fe+fNyIOcUnKo=;
 b=Cc4zof9ttlzg/j6DJ0pp/8VkXx2qZc68AB2GQMqdw7S33haZibPqg71N
 vONESs6m8R5UY0cIuHYAKOu5Z2mFoxr7p894I9rFd9tPriVeHB/++hz3U
 0xwrGoMuEMLyyR7P0zbH4MUoSgSMkn+vjI3zqA3TrDpJylW4VTcl9yMR2
 64s93QFI573spTx6OVA+WSaf29efW9ONsX9Nn/TRB+hmQqS8Iqj/DaLtN
 buh7IgbQrcgCTFNInSeNnk1MXB10DuCibf4QmCSwS3uLCTAuePlma8XIF
 79UB7bENTr1GppDVFhmfsSa6LXauRwTUihbA4SFdRpRXhb4ewQkoe1ye+ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="378511472"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="378511472"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 11:42:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="883956784"
X-IronPort-AV: E=Sophos;i="6.03,263,1694761200"; d="scan'208";a="883956784"
Received: from markjame-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.249.42.42])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2023 11:42:48 -0700
Date: Mon, 30 Oct 2023 19:42:42 +0100
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Dorcas AnonoLitunya <anonolitunya@gmail.com>
Message-ID: <ZT_5InkXDfIzzonu@ashyti-mobl2.lan>
References: <20231027174745.4058-1-anonolitunya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231027174745.4058-1-anonolitunya@gmail.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Remove prohibited space after
 opening parenthesis
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
Cc: intel-gfx@lists.freedesktop.org, karolinadrobnik@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Dorcas,

On Fri, Oct 27, 2023 at 08:47:45PM +0300, Dorcas AnonoLitunya wrote:
> Removes space after opening parenthesis.
> 
> Fixes the checkpatch.pl error:
> ERROR: space prohibited after that opening parenthesis '('
> 
> Signed-off-by: Dorcas AnonoLitunya <anonolitunya@gmail.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_engine_cs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_cs.c b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> index 4a11219e560e..40687806d22a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_cs.c
> @@ -47,7 +47,7 @@
>  #define GEN9_LR_CONTEXT_RENDER_SIZE	(22 * PAGE_SIZE)
>  #define GEN11_LR_CONTEXT_RENDER_SIZE	(14 * PAGE_SIZE)
>  
> -#define GEN8_LR_CONTEXT_OTHER_SIZE	( 2 * PAGE_SIZE)
> +#define GEN8_LR_CONTEXT_OTHER_SIZE	(2 * PAGE_SIZE)

I'm actually having second thoughts on this change. The space was
left on purpose in order to be aligned with the defines above.

On the other hand, this is a bit detached from the others and
this change makes checkpatch happy.

This is one of those patches that are not right and not wrong
either.

I'll give it a bit more time and merge if no complains arise.

Andi

>  #define MAX_MMIO_BASES 3
>  struct engine_info {
> -- 
> 2.42.0.345.gaab89be2eb
