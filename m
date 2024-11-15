Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58E5A9CF261
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 18:08:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6336110E8AA;
	Fri, 15 Nov 2024 17:08:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kUPyX7ZJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E8FEF10E115;
 Fri, 15 Nov 2024 17:08:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731690499; x=1763226499;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=fqLyprx/EZWTVQNpk3Uy2PjBQSkjQuKKklPivbHeUlg=;
 b=kUPyX7ZJcAELWcu+CPaTe7cPLvjSy+vudL3oVKunts0ppxAHR3HIfquO
 zYtLAk4aLlBUMAO2MtTUZ20PL90+bPsw75JZejR+QaIMuoeThJubU9vAd
 9hU0KsUv9HrHCdE3a/xCnxXQjwdurqttVp/ZuA0IfjFHxebjH4v3kmdBX
 gasqvuagTILqz6PxHISFqimzARqdVe2e0yu8p3fuDLO78xt+0Tn/baEzi
 nZmrAvz3XyqNYzUW2kN+LZqkRJIZi0aXnME27K2C28XKxJ1FyLCpaWvIj
 Vt9wkIm2ATMhUanY/oYHjs8hvM+tdsQS59joaL5iNcJhbcb71o8mF87Mw A==;
X-CSE-ConnectionGUID: DSqd+qF6S26+IAfZgKcvmQ==
X-CSE-MsgGUID: BpnJkk9PTFi1MJMxRejqSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11257"; a="31463592"
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="31463592"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2024 09:08:19 -0800
X-CSE-ConnectionGUID: G2W2d6L/SP6LDyrkE2nY1A==
X-CSE-MsgGUID: WLFxe9dOQhiGdV+26D4OVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,157,1728975600"; d="scan'208";a="93689812"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orviesa004-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Nov 2024 09:08:18 -0800
Date: Fri, 15 Nov 2024 18:08:02 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH i-g-t] intel-ci: Blocklist igt@i915_module_load@load
Message-ID: <20241115170802.vl3acfneqswfjwgz@kamilkon-desk.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20241115145854.19330-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241115145854.19330-2-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2024-11-15 at 15:58:19 +0100, Janusz Krzysztofik wrote:
> This test expects the i915 module not loaded, and it SKIPs if it finds one
> already loaded.  It was intended only for CI BAT runs as the very first
> test executed.  It's not suitable for CI runs with random test selection
> and ordering.
> 
> Since omitting it from non-BAT runs doesn't affect coverage, blocklist it
> instead of maintaining as expected SKIP.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6227
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

Acked-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>

> ---
>  tests/intel-ci/blacklist.txt | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/tests/intel-ci/blacklist.txt b/tests/intel-ci/blacklist.txt
> index cfc5491d53..cdbfbcaef9 100644
> --- a/tests/intel-ci/blacklist.txt
> +++ b/tests/intel-ci/blacklist.txt
> @@ -4,6 +4,16 @@
>  igt@xe.*
>  
>  igt@meta_test(@.*)?
> +
> +###############################################
> +# Expects the i915 module not loaded, SKIPs if one is loaded.
> +# Intended only for CI BAT runs as the very first test executed.
> +# Not suitable for CI runs with random test selection and ordering.
> +# Omitting it from non-BAT runs doesn't affect coverage, then
> +# let's blocklist it instead of maintainig as expected SKIP.
> +###############################################
> +igt@i915_module_load@load
> +
>  ###############################################
>  # Handle module reloads with great care!
>  #
> -- 
> 2.47.0
> 
