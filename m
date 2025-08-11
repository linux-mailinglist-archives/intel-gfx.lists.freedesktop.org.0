Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 858A5B20DFD
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Aug 2025 17:22:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 04A6410E4FF;
	Mon, 11 Aug 2025 15:22:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FWWyHNpf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 25DF310E4FE;
 Mon, 11 Aug 2025 15:22:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754925752; x=1786461752;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=jg/vxOZZROTPzVOGL0BuQVvU/ni3ytVaRvJ9MqUD6gc=;
 b=FWWyHNpf3M9qD4wtC0DO5iaDVxuEq73vbG1N/+VEOgTSG8+wJqGd3QHo
 NqsMG0J8S3UbsfF5JepUl/Ou6+nhJiqqKuoPGeVhxH2vhkYCfLxqyB5Yn
 psQxGikFTFOa16MFVlrhl9a3VZIT91vbYS51LYzvcWAXEWvB2G7u+oKqw
 tHz2yQbwi8i1MmrlgsyicU3qmdzvHKiYCP3xxp2pjr5Sd0YjWoHFWNn0b
 lyVAzi64pmUj0LnysSWwU+NzsBBKg27N0lOSsu2MXfc4AneZOEzJUC49J
 zikKIn6MRQ9ko7sO8qBzAQsYzWtMUAxE/AOpq06wsnjdynpHedMTpKZgu w==;
X-CSE-ConnectionGUID: 8ZLGFXgTQRCb11gpbterJQ==
X-CSE-MsgGUID: U19uAHbMTZmhiJlTPKfjtA==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="68261395"
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="68261395"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:22:31 -0700
X-CSE-ConnectionGUID: jsv+K2u/Sqe3tG3PJEvEHw==
X-CSE-MsgGUID: xoA7Ute0Rt6pB4pO+7oaHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,278,1747724400"; d="scan'208";a="171189024"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.226])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2025 08:22:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: Re: [PATCH 11/12] drm/i915/panel: Add helper to get highest fixed mode
In-Reply-To: <20250807111548.1490624-12-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250807111548.1490624-1-ankit.k.nautiyal@intel.com>
 <20250807111548.1490624-12-ankit.k.nautiyal@intel.com>
Date: Mon, 11 Aug 2025 18:22:25 +0300
Message-ID: <80f4cf774713067ecb41abc14112c25ebaae4989@intel.com>
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

On Thu, 07 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Add intel_panel_highest_fixed_mode() to return the fixed mode with the
> highest pixel clock. Unlike intel_panel_highest_mode(), this function
> does not fall back to the adjusted mode and returns NULL if no fixed
> modes are available.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_panel.h |  2 ++
>  2 files changed, 15 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 2a20aaaaac39..ea4351d11e63 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -158,6 +158,19 @@ intel_panel_highest_mode(struct intel_connector *connector,
>  	return best_mode;
>  }
>  
> +const struct drm_display_mode *
> +intel_panel_highest_fixed_mode(struct intel_connector *connector)
> +{
> +	const struct drm_display_mode *fixed_mode, *highest_mode = NULL;
> +
> +	list_for_each_entry(fixed_mode, &connector->panel.fixed_modes, head) {
> +		if (!highest_mode || fixed_mode->clock > highest_mode->clock)
> +			highest_mode = fixed_mode;
> +	}
> +
> +	return highest_mode;
> +}

The difference in naming here does not adequately describe the
difference in the functions.

Or you could just make the single user of intel_panel_highest_mode()
fall back to adjusted mode when the return value is NULL, and avoid that
problem altogether.

BR,
Jani.

> +
>  int intel_panel_get_modes(struct intel_connector *connector)
>  {
>  	const struct drm_display_mode *fixed_mode;
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
> index 56a6412cf0fb..60f6873cdbaa 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -39,6 +39,8 @@ intel_panel_downclock_mode(struct intel_connector *connector,
>  const struct drm_display_mode *
>  intel_panel_highest_mode(struct intel_connector *connector,
>  			 const struct drm_display_mode *adjusted_mode);
> +const struct drm_display_mode *
> +intel_panel_highest_fixed_mode(struct intel_connector *connector);
>  int intel_panel_get_modes(struct intel_connector *connector);
>  enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
>  enum drm_mode_status

-- 
Jani Nikula, Intel
