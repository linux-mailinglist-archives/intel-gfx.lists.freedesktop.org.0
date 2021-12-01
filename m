Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ADB50464A6D
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 10:16:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121AD6F4EF;
	Wed,  1 Dec 2021 09:16:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8443C6F51F
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 09:16:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236364231"
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="236364231"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 01:16:01 -0800
X-IronPort-AV: E=Sophos;i="5.87,278,1631602800"; d="scan'208";a="512619462"
Received: from pwedlarx-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.26.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2021 01:15:59 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211201070056.2147953-4-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211201070056.2147953-1-anusha.srivatsa@intel.com>
 <20211201070056.2147953-4-anusha.srivatsa@intel.com>
Date: Wed, 01 Dec 2021 11:15:56 +0200
Message-ID: <87ee6wit2r.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [v3 3/3] drm/i915/rpl-s: Enable guc submission by
 default
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

On Tue, 30 Nov 2021, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> Though, RPL-S is defined as subplatform of ADL-S, unlike
> ADL-S, it has GuC submission by default.
>
> v2: Remove extra parenthesis (Jani)
> v3: s/IS_RAPTORLAKE/IS_ADLS_RPLS (Jani)
>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Swathi Dhanavanthri <swathi.dhanavanthri@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_uc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 2fef3b0bbe95..6aa843a1c25f 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -35,7 +35,7 @@ static void uc_expand_default_options(struct intel_uc *uc)
>  	}
>  
>  	/* Intermediate platforms are HuC authentication only */
> -	if (IS_ALDERLAKE_S(i915)) {
> +	if (IS_ALDERLAKE_S(i915) && !IS_RAPTORLAKE_S(i915)) {

Forgot to actually git add the change? ;)

BR,
Jani.

>  		i915->params.enable_guc = ENABLE_GUC_LOAD_HUC;
>  		return;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
