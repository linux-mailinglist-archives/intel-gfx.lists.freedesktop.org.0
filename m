Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B88E996568
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Oct 2024 11:31:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3887910E362;
	Wed,  9 Oct 2024 09:31:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MPOzi7CX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3211910E362;
 Wed,  9 Oct 2024 09:31:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728466295; x=1760002295;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=uoi2Jn/vOJu1s3vXrCMEyaEgGge0S3vHgjF5ua168vU=;
 b=MPOzi7CXLIfPjUkh4QbIA2DmqHWy1j8QA1Q7CcVikG5fR7OZg/B1J43f
 xGYO2ltTjm6a/NV/l4T28ESmYTFpLDyGei69/gQ5x9lilbOndY+Xd+hVw
 0azdp729KPY8HQgrKso5O91256JIsMQaoT6OfRsOJgTlxOb9lFv+b0Y66
 SUKXOmVwsRng6XfIp228X4Ddxd7UN17Hilt0Q32gvP3A4e6ajYpgwGDS5
 ZeipK5WlieSmhYFcEgBPBbAIJc42rF92WJLHSGpXwp/6gFfbAJfiUxDNw
 XZHU5PhopJBY5c1SK9YRUA7t/liD7+XFtFessxjv0oi9o6pS6znGFG3PX w==;
X-CSE-ConnectionGUID: A+Hb7Xy6RWOykT9c2Z0e1g==
X-CSE-MsgGUID: cg02DygfQ96YCq6TM5EfjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11219"; a="27875804"
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="27875804"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:31:35 -0700
X-CSE-ConnectionGUID: 01FJGFNjRuSNwchq9fwVqw==
X-CSE-MsgGUID: d0G+RIFHSbODgFTbXgcCHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,189,1725346800"; d="scan'208";a="76075875"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.80])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2024 02:31:32 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: uma.shankar@intel.com, chaitanya.kumar.borah@intel.com, Suraj Kandpal
 <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/dmc: Add dmc null check
In-Reply-To: <20241009065434.1799459-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241009065434.1799459-2-suraj.kandpal@intel.com>
Date: Wed, 09 Oct 2024 12:31:29 +0300
Message-ID: <8734l5bp1q.fsf@intel.com>
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

On Wed, 09 Oct 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add dmc null check before dereferncing to get the major and minor
> version.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 48bbbf8f312c..8c193de0e253 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -1263,8 +1263,9 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
>  	if (!intel_dmc_has_payload(display))

See what this does.

BR,
Jani.

>  		goto out;
>  
> -	seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
> -		   DMC_VERSION_MINOR(dmc->version));
> +	if (dmc)
> +		seq_printf(m, "version: %d.%d\n", DMC_VERSION_MAJOR(dmc->version),
> +			   DMC_VERSION_MINOR(dmc->version));
>  
>  	if (DISPLAY_VER(display) >= 12) {
>  		i915_reg_t dc3co_reg;

-- 
Jani Nikula, Intel
