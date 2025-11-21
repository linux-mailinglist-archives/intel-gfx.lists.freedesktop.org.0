Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E554C78C9F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Nov 2025 12:28:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31F2010E85E;
	Fri, 21 Nov 2025 11:28:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ER/WV2Jd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D145A10E85B;
 Fri, 21 Nov 2025 11:28:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763724492; x=1795260492;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=LWVMt0ovtY5AMwjAiSem0hjn1msuImQrWP20ZY8w3WI=;
 b=ER/WV2JdJLlmCrbjSLPeKFteZxCuTvic1AzCwmqAG0CVmEpyFV9fNW8M
 VLNDditgofHUKdvk44Rg7tUyiKvLIiM+QIxtxHVGBBaAgDjS9+oRrxTaR
 J4bsaaSuTP1IByU5U4k0HD+WpT9iWohBweiFyvBRN8PFrDpD8C+Bt5Lfx
 rcJNzwVkECZXfLZ4COEZN/SV5A5/apROcxlVUiQtdc5dSKeCwuavJ5cbm
 Wbs5ypd09wmLhh3Thb4DU3toHZihmapdaufI4P+MO5q1351M8qGjfNlkF
 znVvQ53LlKc5OZal6lWQf/WrL1Iy1q3O+Een/7f71q1qevH+CRgTuBVla Q==;
X-CSE-ConnectionGUID: hdzfM50JR/a4rWB+mqONEg==
X-CSE-MsgGUID: AH4jdZkVQVC2nTtRsIPj0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65693878"
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="65693878"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:28:11 -0800
X-CSE-ConnectionGUID: Wy6Ern4uSSaj6o7zu2Y67w==
X-CSE-MsgGUID: +LCP3lkVTyGzMAtxzEpLKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,215,1758610800"; d="scan'208";a="191353234"
Received: from ettammin-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.86])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2025 03:28:09 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Suraj Kandpal <suraj.kandpal@intel.com>, Mika Kahola
 <mika.kahola@intel.com>
Subject: Re: [PATCH 3/5] drm/i915/cx0: Use intel_port_to_tc() instead of
 open coding it
In-Reply-To: <20251120172358.1282765-3-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20251120172358.1282765-1-imre.deak@intel.com>
 <20251120172358.1282765-3-imre.deak@intel.com>
Date: Fri, 21 Nov 2025 13:28:03 +0200
Message-ID: <beaa8835608335700c0a1026e0406e715887b799@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 20 Nov 2025, Imre Deak <imre.deak@intel.com> wrote:
> USe intel_port_to_tc() in mtl_port_to_pll_id(), instead of open coding
> the same.

Patch 1 just open coded it. Why have this back and forth instead of
starting off with patch 2 that directly fixes the issue? It's not like
we need to backport any of this anywhere.

BR,
Jani.

>
> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> index 8ae8cc7ad79d3..e0e5e5f65d193 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll_mgr.c
> @@ -206,7 +206,7 @@ enum intel_dpll_id icl_tc_port_to_pll_id(enum tc_port tc_port)
>  enum intel_dpll_id mtl_port_to_pll_id(struct intel_display *display, enum port port)
>  {
>  	if (port >= PORT_TC1)
> -		return icl_tc_port_to_pll_id(port - PORT_TC1 + TC_PORT_1);
> +		return icl_tc_port_to_pll_id(intel_port_to_tc(display, port));
>  
>  	switch (port) {
>  	case PORT_A:

-- 
Jani Nikula, Intel
