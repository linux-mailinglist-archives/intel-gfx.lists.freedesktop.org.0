Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FAF9D119A
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 14:17:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A388C10E4D5;
	Mon, 18 Nov 2024 13:16:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NSclDUBg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D5DA10E4D5;
 Mon, 18 Nov 2024 13:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731935819; x=1763471819;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=+DAWRLq79n7jQrhts0CBaGoItD5gT4sJ8gyU3p3FJ70=;
 b=NSclDUBg9QMWBA8nJmfLP0EZZVTvVrTSpEWhPHp6O8Tje0b3CJI5tt0C
 btBkWqLz7qbnygoV63mrY3LUg0YnQismtpg9+u/r0RsQlK8FeaOXldtDj
 sa1WN2TkdNqDFdEnTdvB7OBZQKeC8lXPF79Q5sZUd4UhTSRHgOyP7n2HC
 JZzocjYm8Pp4CcWxaJrCOBIJAT1YL2FgCAOrZmIzXaAVPrQE5SmmHWem8
 Wy8LUh5I1zxVSIk4URDlC/M6DGqofLZy/bC4y4xDMVmvmRA+HBv4Dx1Rt
 BDlYaWmHlNopObOl3ab95YTC03SfEO165vqeYnmCOXRi5QYApbezROczg w==;
X-CSE-ConnectionGUID: OvSYhrQzSt6iMWLEtpSoGg==
X-CSE-MsgGUID: Y3PfU9LTSKecL22GwShwPw==
X-IronPort-AV: E=McAfee;i="6700,10204,11260"; a="49324931"
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="49324931"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 05:16:58 -0800
X-CSE-ConnectionGUID: GoB6X+sxRl+q+tZmZVVixQ==
X-CSE-MsgGUID: FuhLf/KBSleoOiYlAxgWYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,164,1728975600"; d="scan'208";a="89370302"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.148])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2024 05:16:56 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: Re: [CI] drm/i915/dp_mst: Fix connector initialization in
 intel_dp_add_mst_connector()
In-Reply-To: <20241118131044.1278028-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241118131044.1278028-1-imre.deak@intel.com>
Date: Mon, 18 Nov 2024 15:16:52 +0200
Message-ID: <8734jo4r7f.fsf@intel.com>
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

On Mon, 18 Nov 2024, Imre Deak <imre.deak@intel.com> wrote:
> The connector initialization in intel_dp_add_mst_connector() depends on
> the device pointer in connector to be valid, at least by connector
> debug printing. The device pointer is initialized by drm_connector_init(),
> however that function also exposes the connector to in-kernel users,
> which can't be done before the connector is fully initialized. For now
> make sure the device pointer is valid before it's used, until a
> follow-up change moving this to DRM core.
>
> This issue was revealed by the commit in the Fixes: line below, before
> which the above debug printing checked and handled a NULL device pointer
> gracefully in DRM core.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Fixes: 529798bd786a ("drm/i915/mst: convert to struct intel_display")
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12799
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index df7edcfe885b6..f058360a26413 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1727,6 +1727,16 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
>  
>  	intel_dp_init_modeset_retry_work(intel_connector);
>  
> +	/*
> +	 * TODO: The following drm_connector specific initialization belongs
> +	 * to DRM core, however it happens atm too late in
> +	 * drm_connector_init(). That function will also expose the connector
> +	 * to in-kernel users, so it can't be called until the connector is
> +	 * sufficiently initialized; init the device pointer used by the
> +	 * following DSC setup, until a fix moving this to DRM core.
> +	 */
> +	intel_connector->base.dev = mgr->dev;
> +
>  	intel_connector->dp.dsc_decompression_aux = drm_dp_mst_dsc_aux_for_port(port);
>  	intel_dp_mst_read_decompression_port_dsc_caps(intel_dp, intel_connector);
>  	intel_connector->dp.dsc_hblank_expansion_quirk =

-- 
Jani Nikula, Intel
