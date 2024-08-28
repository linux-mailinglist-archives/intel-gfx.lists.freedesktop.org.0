Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 64ACB96226D
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Aug 2024 10:42:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F160A10E36E;
	Wed, 28 Aug 2024 08:42:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="imgUAUEJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B98010E36E
 for <intel-gfx@lists.freedesktop.org>; Wed, 28 Aug 2024 08:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724834529; x=1756370529;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=IcK+ajPwObr0jnUncXsAQl1faKY/4WUQWxiPfeCRTOk=;
 b=imgUAUEJGwIyCrWMeVaxMic9pbA8FyQxTcOAKy/jaVr1HohCUa3lCnt8
 wAkhVlTgsmvC+Pw10DScbZs8Hx7x0WNbZl7TmbNDDEuB4uFWKbJ67UYB1
 O6hWGaZNb6xljJ/yEn4l63DwcrVjgnTYgqsgFUsjId5LsV1u9pnc1f0yD
 MepElIzYnl0PTFWu9fcs4wt9gFXkmomYASpxrJ+Axyes2fCE+DX5cPRt1
 w4fmVAZ+IRJ/nCHrMXZS5Z0C3E+4zRORZqzU32ynEQiDnzwNxvtNN+EGg
 Qmnuiux10ShrP9BDu/ZB2uQ8pfCYYFBarSQgMRzwydGB3FSNdsaVvotCq A==;
X-CSE-ConnectionGUID: tBhK1sPUTqK66iRsvz+xSQ==
X-CSE-MsgGUID: wh/zLZ8ZQs+flwpH6TnCfQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11177"; a="13256364"
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="13256364"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 01:42:09 -0700
X-CSE-ConnectionGUID: ioc+qRTpS0eInHq2ijp60g==
X-CSE-MsgGUID: c9aKuVf6RJ6l0sV8TdPz5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,182,1719903600"; d="scan'208";a="63113483"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.110])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2024 01:42:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Hardcode path to MTL DMC v2.23
In-Reply-To: <20240827140353.3022432-1-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240827140353.3022432-1-dnyaneshwar.bhadane@intel.com>
Date: Wed, 28 Aug 2024 11:42:01 +0300
Message-ID: <877cc1yr6u.fsf@intel.com>
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

On Tue, 27 Aug 2024, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> NOT TO BE REVIEWED/MERGED
> Hardcode path to DMC firmware for CI purposes only.

This is why we have trybot, no?

BR,
Jani.

>
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 7c756d5ba2a2..723743cbe8e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -119,7 +119,7 @@ MODULE_FIRMWARE(XE2LPD_DMC_PATH);
>  #define BMG_DMC_PATH			DMC_PATH(bmg)
>  MODULE_FIRMWARE(BMG_DMC_PATH);
>  
> -#define MTL_DMC_PATH			DMC_PATH(mtl)
> +#define MTL_DMC_PATH			"i915/mtl_dmc_ver2_23.bin"
>  MODULE_FIRMWARE(MTL_DMC_PATH);
>  
>  #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)

-- 
Jani Nikula, Intel
