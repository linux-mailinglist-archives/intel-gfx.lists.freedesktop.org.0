Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CF0B47693D6
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 12:58:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5264710E260;
	Mon, 31 Jul 2023 10:58:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ED4210E25A
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 10:58:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690801105; x=1722337105;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Jiv/GGSFqc0TZV7HfB87Y/Bw8zYTWmir/csP9LHIo3I=;
 b=jEwD3eBpMq8KzX71svk8NqhwEgTIjtVtNkkKo5V70x1ugUC/TOwFf6Ph
 AgQqYZoH9sVkqlhqv+N4e9P3DVYmzohFm8NW4PcIJuvgFdLekMoSxrCe1
 pw4qvoX85W1EfMjkaNlaIIO4U3FA6KqA8gWjWi+ZHxuMswkUzEt07c8bc
 W4Co0Wo754narLerlkd553lg5l//8pkT+ZZMftBATb7eg4ngO2+w/5spB
 iQthaeQDvx4ji6o9uBvS0IROQuqup1xhAXHFrMumG2G76z81o9nS3dPYv
 cYfZ6/H9JzZ2o/iND5OUqIkoVgTxhhfUGxGfn320Fxom+RN7JXmqZnYhO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="455358501"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="455358501"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 03:58:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="678291108"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="678291108"
Received: from naikshri-mobl7.ger.corp.intel.com (HELO localhost)
 ([10.252.36.230])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 03:58:23 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Patchwork <patchwork@emeril.freedesktop.org>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>
In-Reply-To: <169040520537.23470.13602420006462177964@emeril.freedesktop.org>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230726200657.2773903-1-dnyaneshwar.bhadane@intel.com>
 <169040520537.23470.13602420006462177964@emeril.freedesktop.org>
Date: Mon, 31 Jul 2023 13:58:20 +0300
Message-ID: <87a5vcxs8j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_Replace_acronym_with_full_platform_name_in_defines=2E?=
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 26 Jul 2023, Patchwork <patchwork@emeril.freedesktop.org> wrote:
> == Series Details ==
>
> Series: Replace acronym with full platform name in defines.
> URL   : https://patchwork.freedesktop.org/series/121387/
> State : warning
>
> == Summary ==
>
> Error: dim checkpatch failed

All the parenthesis alignments warnings are valid.

BR,
Jani.

> b0b6ca2cb60d drm/i915/jsl: s/JSL/JASPERLAKE for platform/subplatform defines
> -:38: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #38: FILE: drivers/gpu/drm/i915/display/icl_dsi.c:448:
> +		if (IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv) ||
> +			(DISPLAY_VER(dev_priv) >= 12)) {
>
> -:101: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #101: FILE: drivers/gpu/drm/i915/display/intel_combo_phy.c:337:
> +		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
> +			phy == PHY_A) {
>
> -:115: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #115: FILE: drivers/gpu/drm/i915/display/intel_ddi.c:3587:
> +	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
> +			crtc_state->port_clock > 594000)
>
> -:156: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #156: FILE: drivers/gpu/drm/i915/display/intel_display.c:1805:
> +	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> +			port == PORT_D)
>
> -:183: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #183: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:195:
> +	else if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> +			(pll->info->id == DPLL_ID_EHL_DPLL4))
>
> -:214: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #214: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3573:
> +		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
> +			id == DPLL_ID_EHL_DPLL4) {
>
> -:224: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #224: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3630:
> +		if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
> +			id == DPLL_ID_EHL_DPLL4) {
>
> -:235: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #235: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3814:
> +	if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
> +		pll->info->id == DPLL_ID_EHL_DPLL4) {
>
> -:246: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #246: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:3922:
> +	if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
> +		pll->info->id == DPLL_ID_EHL_DPLL4)
>
> -:265: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #265: FILE: drivers/gpu/drm/i915/display/intel_dpll_mgr.c:4343:
> +	if ((IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) &&
> +		pll->on &&
>
> -:279: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #279: FILE: drivers/gpu/drm/i915/display/intel_hdmi.c:2898:
> +	else if ((IS_JASPERLAKE(dev_priv) || IS_ELKHARTLAKE(dev_priv)) &&
> +			HAS_PCH_TGP(dev_priv))
>
> -:385: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #385: FILE: drivers/gpu/drm/i915/soc/intel_pch.c:119:
> +		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) ||
> +				IS_ELKHARTLAKE(dev_priv)));
>
> -:395: CHECK:PARENTHESIS_ALIGNMENT: Alignment should match open parenthesis
> #395: FILE: drivers/gpu/drm/i915/soc/intel_pch.c:132:
> +		drm_WARN_ON(&dev_priv->drm, !(IS_JASPERLAKE(dev_priv) ||
> +				IS_ELKHARTLAKE(dev_priv)));
>
> total: 0 errors, 0 warnings, 13 checks, 287 lines checked

-- 
Jani Nikula, Intel Open Source Graphics Center
