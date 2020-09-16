Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 772CD26C360
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Sep 2020 15:51:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C99C6E0A8;
	Wed, 16 Sep 2020 13:51:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B0BC46E0A8
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Sep 2020 13:51:00 +0000 (UTC)
IronPort-SDR: BGpYcGtyVKaUSzPfXYZqINzr2upGikFp04LMvMRWwbcRleDvhnfv9GOy9Mo4lMofqURn9EDR5t
 2KFwjqMYODOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9745"; a="147214341"
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="147214341"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 06:51:00 -0700
IronPort-SDR: SP1+LjmK3SvlRturvR9fbYAKyVvKuWhvyi6m5rOjMEFmKCoEXcRWmDOfWOAfktp5z9o/Vb1YpW
 285eyzmUpWqA==
X-IronPort-AV: E=Sophos;i="5.76,433,1592895600"; d="scan'208";a="483320229"
Received: from djgriffi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.8.217])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2020 06:50:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
In-Reply-To: <159978425524.14123.1265738591680006266@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200910234850.12709-1-anusha.srivatsa@intel.com>
 <159978425524.14123.1265738591680006266@emeril.freedesktop.org>
Date: Wed, 16 Sep 2020 16:51:02 +0300
Message-ID: <87d02lx22h.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915/pll=3A_Centralize_PLL=5FENABLE_register_lookup_=28?=
 =?utf-8?q?rev4=29?=
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 11 Sep 2020, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: drm/i915/pll: Centralize PLL_ENABLE register lookup (rev4)
> URL   : https://patchwork.freedesktop.org/series/81150/
> State : warning
>
> == Summary ==
>
> $ dim checkpatch origin/drm-tip
> dac234339c17 drm/i915/pll: Centralize PLL_ENABLE register lookup
> -:38: CHECK:BRACES: Blank lines aren't necessary after an open brace '{'
> #38: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:154:
> +{
> +
>
> -:39: CHECK:UNNECESSARY_PARENTHESES: Unnecessary parentheses around 'pll->info->id == DPLL_ID_EHL_DPLL4'
> #39: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:155:
> +	if (IS_ELKHARTLAKE(i915) && (pll->info->id == DPLL_ID_EHL_DPLL4))
>
> -:44: CHECK:LINE_SPACING: Please don't use multiple blank lines
> #44: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:160:
> +
> +
>
> -:45: CHECK:BRACES: Blank lines aren't necessary before a close brace '}'
> #45: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:161:
> +
> +}

We have this in CI so people don't have to bother with mentioning this
stuff. But I do expect people to look at them and fix them.

BR,
Jani.


>
> total: 0 errors, 0 warnings, 4 checks, 66 lines checked
>
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
