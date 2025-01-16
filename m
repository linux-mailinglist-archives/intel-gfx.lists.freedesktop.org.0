Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430FBA1343D
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Jan 2025 08:47:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D498410E1C8;
	Thu, 16 Jan 2025 07:47:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mRqwatOB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1285510E1C8
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Jan 2025 07:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737013652; x=1768549652;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=rw/6FhluBQ7yJb40x/BxP0gp2YtyHPNsmEvyBUjcRZw=;
 b=mRqwatOB6R8HAYgDddfOeMtKp3ljbNvXOmNdTAnBq/cAcS3dIsmMTkLV
 4G2W4tIefLsVa8JYtBh/odft4Q3HSEPs/ovpXVHgRsYllAahBbBtdlozG
 2T6ENq67p4bDoDVhtwyQCnqihLqJF/R9T4oPQJqEDFXiu0M+Vp0T9FUWq
 NkjMUa85IYUh/39JHFewb47NmFbRrS5TEBzCzEgW7uBAymqwyC5V83/m4
 1qymRG7/os0J9xha644qAcv+SQ7NbF3WS2HjGydigPS2W2GoLR0ipvjIl
 N5Iq9ZxwJ+WdQMt0SvjQ5KRmECMbTTxaWvnBjr4YE8Tm60t2gomHgFior Q==;
X-CSE-ConnectionGUID: j4zu+afUT3WniBY0gG4F9A==
X-CSE-MsgGUID: +/NmEX4eQ9SP3R/i7OXx2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="37267052"
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="37267052"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 23:47:32 -0800
X-CSE-ConnectionGUID: nv+RB3+9ScCKHMTPZTGR/w==
X-CSE-MsgGUID: vRxlZZARTGi4jN2h1u7CqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,208,1732608000"; d="scan'208";a="105331998"
Received: from black.fi.intel.com ([10.237.72.28])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 23:47:30 -0800
Date: Thu, 16 Jan 2025 09:47:27 +0200
From: Raag Jadav <raag.jadav@intel.com>
To: Ranu Maurya <ranu.maurya@intel.com>
Cc: intel-gfx@lists.freedesktop.org, sai.teja.pottumuttu@intel.com,
 balasubramani.vivekanandan@intel.com
Subject: Re: [PATCH v2] drm/i915: Add Wa_22010465259 in its respective WA list
Message-ID: <Z4i5j-pJi7GgvmlU@black.fi.intel.com>
References: <20250116073828.2431313-1-ranu.maurya@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250116073828.2431313-1-ranu.maurya@intel.com>
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

On Thu, Jan 16, 2025 at 01:08:28PM +0530, Ranu Maurya wrote:
> Add Wa_22010465259 which points to an existing WA, but
> was missing from the comment list. While at it, update
> the other WAs and their applicable platforms as well.
> 
> Signed-off-by: Ranu Maurya <ranu.maurya@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 570c91878189..4cf4fa1f1a92 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -691,16 +691,17 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	struct drm_i915_private *i915 = engine->i915;
>  
>  	/*
> -	 * Wa_1409142259:tgl,dg1,adl-p
> +	 * Wa_1409142259:tgl,dg1,adl-p,adl-n
>  	 * Wa_1409347922:tgl,dg1,adl-p
>  	 * Wa_1409252684:tgl,dg1,adl-p
>  	 * Wa_1409217633:tgl,dg1,adl-p
>  	 * Wa_1409207793:tgl,dg1,adl-p
> -	 * Wa_1409178076:tgl,dg1,adl-p
> -	 * Wa_1408979724:tgl,dg1,adl-p
> -	 * Wa_14010443199:tgl,rkl,dg1,adl-p
> -	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p
> -	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p
> +	 * Wa_1409178076:tgl,dg1,adl-p,adl-n
> +	 * Wa_1408979724:tgl,dg1,adl-p,adl-n
> +	 * Wa_14010443199:tgl,rkl,dg1,dg2,adl-p,adl-n
> +	 * Wa_14010698770:tgl,rkl,dg1,dg2,adl-s,adl-p,adl-n
> +	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p,adl-n
> +	 * Wa_22010465259:tgl,rkl,dg1,adl-s,adl-p,adl-n

Just to be clear on the conventions, are we using platform_names[] from
intel_device_info.c? Because if we are, I don't see adl-n there.

Raag
