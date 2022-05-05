Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6A451BD0C
	for <lists+intel-gfx@lfdr.de>; Thu,  5 May 2022 12:19:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B95E610E047;
	Thu,  5 May 2022 10:18:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAD1410E042;
 Thu,  5 May 2022 10:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651745937; x=1683281937;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mZUGkTm0Df4lduKfx+xv0mj6B6QM8Vh6UCcg8dJR6Ko=;
 b=Jv4MD5qeIBUuPPGHYpEg+24Qr3aqF98rcntbMPFNDJvNiDkZb1pVcQ1G
 vsAnMFblFsPxFfvxYUoct5RmMjoDjHfYdstwtnpdBtgec6zOE8LwIb2dp
 4HGO7rmjUEvlEGqZPbrM0CrsK+7k3ahB7Tid6DH1UA71l6GAlMIennucG
 c6kqU2IA8t7bFbub8CvXBeKSV+DPYwzfULLPzCF7fV/iGVylerl4/3m+B
 XxjvG/sPlGbi7ZWWsjtRBtQzRmizBMbllOg88472KFM90hdT4oOgb//6i
 eu5F6+8EDUv945Pt1YfgDgbivyOV5pVUhubtwfPJ99Q18QhbbrPXS5AyK Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10337"; a="267952260"
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="267952260"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 03:18:56 -0700
X-IronPort-AV: E=Sophos;i="5.91,201,1647327600"; d="scan'208";a="694594805"
Received: from mstepka-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.134.211])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2022 03:18:48 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Yang Li <yang.lee@linux.alibaba.com>, daniel@ffwll.ch
In-Reply-To: <20220504224816.41653-1-yang.lee@linux.alibaba.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220504224816.41653-1-yang.lee@linux.alibaba.com>
Date: Thu, 05 May 2022 13:18:43 +0300
Message-ID: <87wnf0l1to.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH -next 1/2] drm/i915: Remove duplicated
 include in intel_sseu.c
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
Cc: airlied@linux.ie, intel-gfx@lists.freedesktop.org,
 Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Yang Li <yang.lee@linux.alibaba.com>,
 rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 05 May 2022, Yang Li <yang.lee@linux.alibaba.com> wrote:
> Fix following includecheck warning:
> ./drivers/gpu/drm/i915/gt/intel_sseu.c: linux/string_helpers.h is
> included more than once.
>
> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>

Already fixed by commit 10dcf783f7e9 ("drm/i915: remove superfluous
string helper include").

BR,
Jani.

> ---
>  drivers/gpu/drm/i915/gt/intel_sseu.c | 2 --
>  1 file changed, 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_sseu.c b/drivers/gpu/drm/i915/gt/intel_sseu.c
> index 9881a6790574..fdd25691beda 100644
> --- a/drivers/gpu/drm/i915/gt/intel_sseu.c
> +++ b/drivers/gpu/drm/i915/gt/intel_sseu.c
> @@ -10,8 +10,6 @@
>  #include "intel_gt_regs.h"
>  #include "intel_sseu.h"
>  
> -#include "linux/string_helpers.h"
> -
>  void intel_sseu_set_info(struct sseu_dev_info *sseu, u8 max_slices,
>  			 u8 max_subslices, u8 max_eus_per_subslice)
>  {

-- 
Jani Nikula, Intel Open Source Graphics Center
