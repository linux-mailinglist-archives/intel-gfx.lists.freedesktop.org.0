Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C17FCA78C56
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Apr 2025 12:28:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B3E310E6EE;
	Wed,  2 Apr 2025 10:28:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TQ8H0bqH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD6EE10E02B;
 Wed,  2 Apr 2025 10:28:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743589730; x=1775125730;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=JwmfKxrjnBWElIIFHvIY/kWX/FJLmet/i+jRHRZeeok=;
 b=TQ8H0bqHuHup7dJdnXrKQQvrqltjrjebrni/D5dnjDWD4/qvurCPxjvu
 7SkiVBmzwaU6CrtsF6aSKu8QKwrf69B5Y91OcHUTDj+qx/n81ahyHWkH1
 522GVxXhVofnuqxlblyTpWZlLMdP5AhFM1POEv/Ua42PCvTl9SKlJXXC+
 ijKpiYba38D2btpP21MiCTznJGq9SqzAl20K1/9JniGxVwUuJ45XdUucm
 JZ7Yq8z8KGTMSZJnYxttwasjMo8iBmyZzolyOq/TQWhHZ6r4ejmoEWg+e
 BSnyzdHr54Y6TQeXuKPXD9+vQ1A49gkX8iM4Y0OGpj5F8dp8gb6w3qAvy Q==;
X-CSE-ConnectionGUID: nemFt48RTOCdvSAbLlIKvQ==
X-CSE-MsgGUID: NRyL6+vAQA+E8L/TlVTyZw==
X-IronPort-AV: E=McAfee;i="6700,10204,11391"; a="44199188"
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="44199188"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 03:28:49 -0700
X-CSE-ConnectionGUID: D9lb6kO2TrOm4XuvDehz1Q==
X-CSE-MsgGUID: 7PnXQc19SIus6wXLePDQsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,182,1736841600"; d="scan'208";a="163881740"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2025 03:28:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3 1/2] drm/i915/display/dp: Remove UHBR13.5 for icl
In-Reply-To: <20250402-dprates-v3-1-9e5d8ca989dd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250402-dprates-v3-0-9e5d8ca989dd@intel.com>
 <20250402-dprates-v3-1-9e5d8ca989dd@intel.com>
Date: Wed, 02 Apr 2025 13:28:43 +0300
Message-ID: <8734eq3lic.fsf@intel.com>
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

On Wed, 02 Apr 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Per Bspec display 14+ has uhbr13.5 Due to the retimer constraint none of
> the Intel platforms support uhbr13.5.

Those two sentences together make no sense.

The subject makes no sense, because icl never supported UHBR.

> This has been removed for mtl
> by the commit caf3d748f646 ("drm/i915/dp: Remove support for UHBR13.5")
> This patch will remove the support for DG2.

"This patch" and "will" are unnecessary fillers. And once a patch is
committed, "this patch" is meaningless.

Just "Remove ..." is fine.

dg2_max_source_rate() *still* refers to 1350000 as max rate, and that's
arguably more important than the rates array. And you can just remove
the entire function because it becomes a constant.

BR,
Jani.

>
> v2: Reframed the commit msg (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f21f9b441fc2a4e644c69410e6ec6b3d37907478..d7955351dd43ff61ebfd57e5b6a4ba99c1c7a2b2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -550,7 +550,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
> -		1000000, 1350000,
> +		1000000,
>  	};
>  	static const int bxt_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000

-- 
Jani Nikula, Intel
