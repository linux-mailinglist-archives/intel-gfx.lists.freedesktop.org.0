Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3B3545041F
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Nov 2021 13:10:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DADAE6E9CD;
	Mon, 15 Nov 2021 12:10:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C4966E9CD
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Nov 2021 12:10:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10168"; a="220315355"
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="220315355"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 04:10:04 -0800
X-IronPort-AV: E=Sophos;i="5.87,236,1631602800"; d="scan'208";a="505895792"
Received: from csrini4x-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.251.218.37])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2021 04:10:03 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211112210825.1489596-4-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211112210825.1489596-1-anusha.srivatsa@intel.com>
 <20211112210825.1489596-4-anusha.srivatsa@intel.com>
Date: Mon, 15 Nov 2021 14:10:00 +0200
Message-ID: <87o86l1uxz.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915/rpl-s: Enable guc submission
 by default
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

On Fri, 12 Nov 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Though, RPL-S is defined as subplatform of ADL-S, unlike
> ADL-S, it has GuC submission by default.
>
> Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 2fef3b0bbe95..7088f5370e7f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -35,7 +35,7 @@ static void uc_expand_default_options(struct intel_uc *uc)
>  	}
>  
>  	/* Intermediate platforms are HuC authentication only */
> -	if (IS_ALDERLAKE_S(i915)) {
> +	if ((IS_ALDERLAKE_S(i915) && !IS_RAPTORLAKE_S(i915))) {

Excessive parenthesis.

BR,
Jani.

>  		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
>  		return;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
