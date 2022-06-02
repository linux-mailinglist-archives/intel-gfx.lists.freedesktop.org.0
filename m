Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A3E1353BB9B
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 17:32:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CF9110EAC3;
	Thu,  2 Jun 2022 15:32:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A22F10EAC3
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 15:32:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654183960; x=1685719960;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=44N2qLAgXC2Iy1NlXna9+Ajd8XqYlkaWL7VILN374zw=;
 b=d5RHFJCyBQXeMX8BGfQFrbIy2mdrkNYvuSBHSzT6anVjFtURiuedIjcr
 YLi38D4pdc6hSCOtdWI+/5Vr6Vcx+xd+MGtrWYKWtC1OYDVJDOotrgTi3
 sGn5VDqGEFzkQKvQFFLFXj9E/+dmZ5vyE9fLkwIvgXD07ZYluuH48nbuz
 KJWKd2qZNman/KwCqv0TBBthI6xiFIve1eEF+cFpaYMckYO5PUHCnBuph
 z9u32qdpjtKNEmxLSqJF2WliiEsqlyYhSXJiT0pLZh55wwvy3gR9MajAH
 mP3UIq3K+ZVlx5DLhjZpJzwOw7xUbptWZYgTrJRP3uTiWgM8ukVZHSZn0 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="276058589"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="276058589"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 08:32:39 -0700
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="707609748"
Received: from fbackhou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.4])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 08:32:37 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220602141850.21301-6-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-6-animesh.manna@intel.com>
Date: Thu, 02 Jun 2022 18:32:34 +0300
Message-ID: <874k13ozcd.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 5/5] drm/i915/display/tgl+: Use PPS
 index from vbt
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
Cc: Nischal Varide <nischal.varide@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> From: Nischal Varide <nischal.varide@intel.com>
>
> Tigerlake and newer has two instances of PPS, to support up to two
> eDP panels.
>
> Signed-off-by: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_pps.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index 1b21a341962f..52cb5be4e901 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -365,7 +365,8 @@ static void intel_pps_get_registers(struct intel_dp *intel_dp,
>  
>  	memset(regs, 0, sizeof(*regs));
>  
> -	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> +	if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv) ||
> +	    DISPLAY_VER(dev_priv) >= 12)
>  		pps_idx = bxt_power_sequencer_idx(intel_dp);

There are two things that need to be checked, but I don't have the time
right now:

- We'll probably need this *before* we've parsed the panel specific info
  from VBT. Ville has looked into this somewhat with the PNPID panel
  type stuff.

- bxt_power_sequencer_idx() does pps_init_registers() which has always
  struck me as a really odd place to do it. As if we don't know when the
  first time we do it is, so we do it there just in case.

BR,
Jani.



>  	else if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
>  		pps_idx = vlv_power_sequencer_pipe(intel_dp);

-- 
Jani Nikula, Intel Open Source Graphics Center
