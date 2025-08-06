Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECF7B1C2EB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 11:10:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B931010E303;
	Wed,  6 Aug 2025 09:10:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D1zxhWVI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84EA910E303
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 09:10:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754471416; x=1786007416;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=ZUVTQF2mD/ERXw/tj5xXJjYRxiV0wJwohSBs1pJcYbU=;
 b=D1zxhWVIAoczl3Vwzisg/Fa+X2gSJlukFpa92TvgdrBREFEQt//Ih541
 cusb67QY+j7F4AI48CKpAAYZgTjV3abySQFGfM0gFQ9nOkxtCD9zSkNea
 w3sCxeJ6LdzKBgRnlQHqmsZeudLOfITn0ixsEJV7eTB8MR1X3I5UqfInP
 vlN9y6otPm4dXPEjLiNmQG0pgtYTYFkCbPjPTNSs//gfssCuq8mUiMCmr
 +NBRj03Sb43D3H+TkJjgNpcXHglXgTlz1gUP07u+ncKspyd0euSfjQlS2
 n2esACcUgfbq4a4gjYMOr9bYa+TNSNtaYqDmmr/GCMBV3N4Sg8n8GKE/a A==;
X-CSE-ConnectionGUID: tmg30kxlToqS2OvwAP22AQ==
X-CSE-MsgGUID: xVlrukcCR7mw6yCXplXxdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11513"; a="56918935"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56918935"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 02:10:16 -0700
X-CSE-ConnectionGUID: za+s8BaYTRaKb0T6E71MKg==
X-CSE-MsgGUID: Z3xZPllPSgOyerKLUNmTXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="164388761"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.54])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 02:10:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: Re: [PATCH] drm/i915/scaler: Fix for WA_14011503117
In-Reply-To: <20250806090334.2950066-1-nemesa.garg@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250806090334.2950066-1-nemesa.garg@intel.com>
Date: Wed, 06 Aug 2025 12:10:11 +0300
Message-ID: <640cb51f90eddba4936ca352db98bdd726b31bb0@intel.com>
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

On Wed, 06 Aug 2025, Nemesa Garg <nemesa.garg@intel.com> wrote:
> Remove the redundant check statement.

What if scaler_state->scaler_id == -1?

>
> Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_scaler.c | 3 ---
>  1 file changed, 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index cd7ebbeb9508..602198798174 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -960,9 +960,6 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
>  	const struct intel_crtc_scaler_state *scaler_state =
>  		&crtc_state->scaler_state;
>  
> -	if (!scaler_state && scaler_state->scaler_id == -1)
> -		return;
> -
>  	intel_de_write_fw(display,
>  			  SKL_PS_ECC_STAT(crtc->pipe, scaler_state->scaler_id),
>  			  1);

-- 
Jani Nikula, Intel
