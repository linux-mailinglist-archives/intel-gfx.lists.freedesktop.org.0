Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D38B2C8B8
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Aug 2025 17:50:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C7DF210E09A;
	Tue, 19 Aug 2025 15:50:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DbOpSJiZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ADDE610E09A;
 Tue, 19 Aug 2025 15:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755618600; x=1787154600;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=E+mcJoyJlxWK0e1pI9wv2ccq0zHstvSbzhJlQiwzsxE=;
 b=DbOpSJiZWOcsP+AG1mlrV0TPDfzvSS+z2dOlLPySEF9jn10LOrcwC0G9
 UjmKZK+2WaW9GBE6QsgXZ0UVECOYd1GqJ9eXnFcSbu727AI2tsDOF7DvT
 PNHBoLy7o49v60PT9D9q52vqw37t2Lor+XmjpkY9IAylkZNlPUAbf87MV
 efFDYYwyy9znPoMv4CLNSiv6WlReJjk953XiViUENNX4WuxNUshPe2z3V
 kkBpmLI4qTwLYQpW4OFpYOjOGagwT6J8dLvgxyC7sekeCFyODtECS3sMY
 eYk1Xdu4TAzgTBlmwXZi92b5LkGxg4WQlSIYNDyEufhxGWhfVMiRbF8Yp A==;
X-CSE-ConnectionGUID: s9w7yCsBSbasSISG9as/JA==
X-CSE-MsgGUID: ehq56g6yTgesk6DQ95xw1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11527"; a="57967622"
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="57967622"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 08:49:59 -0700
X-CSE-ConnectionGUID: +xsFmyPcTTWhvNCJAyxXhg==
X-CSE-MsgGUID: 8cphAzvERwO4HKnyi/3XlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,302,1747724400"; d="scan'208";a="168294383"
Received: from dhhellew-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.251])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2025 08:49:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: jouni.hogander@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH] drm/i915/backlight: Fix divide by 0 error in
 i9xx_set_backlight
In-Reply-To: <20250819154027.143066-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250819154027.143066-1-suraj.kandpal@intel.com>
Date: Tue, 19 Aug 2025 18:49:54 +0300
Message-ID: <23d35edfde1a5cb8eac7f0a3d029cfa8dff501f4@intel.com>
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

On Tue, 19 Aug 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> pwm_level_max maybe 0 we do throw a warning but move ahead with
> execution which may later cause a /0 error.

This is not supposed to happen, so don't overcomplicate.

if (warn on)
	return

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index e007380e9a63..d0e9de8ab834 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -234,6 +234,7 @@ static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32
>  	struct intel_connector *connector = to_intel_connector(conn_state->connector);
>  	struct intel_display *display = to_intel_display(connector);
>  	struct intel_panel *panel = &connector->panel;
> +	u32 max_level = panel->backlight.pwm_level_max ?: 1;
>  	u32 tmp, mask;
>  
>  	drm_WARN_ON(display->drm, panel->backlight.pwm_level_max == 0);
> @@ -242,7 +243,7 @@ static void i9xx_set_backlight(const struct drm_connector_state *conn_state, u32
>  		struct pci_dev *pdev = to_pci_dev(display->drm->dev);
>  		u8 lbpc;
>  
> -		lbpc = level * 0xfe / panel->backlight.pwm_level_max + 1;
> +		lbpc = level * 0xfe / max_level + 1;
>  		level /= lbpc;
>  		pci_write_config_byte(pdev, LBPC, lbpc);
>  	}

-- 
Jani Nikula, Intel
