Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A45553BB6D
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Jun 2022 17:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1936112D6D;
	Thu,  2 Jun 2022 15:13:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 036FF112D02
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Jun 2022 15:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1654182803; x=1685718803;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=dgfFp9MBXyNizI/bcjfbyUKSXevgER6AIOk5oQ/HZas=;
 b=ZeWjTvkRpMFlMVc7UhDLtiKyDfLmSNxiZyPtmvTjQGuImGOlLj0Lhuhi
 CXeitIkqwjVdQtStPFYtXjSmYG/2CEXGWDOC/Qi/Q9+oP0oLlu7LfI5Ye
 6EDMvbmRx3YVZ3xf4tW/pLnzWv04+Pn12xmawKY8TZXwQbZs5F9al9HtY
 mF5c3CDLAQltvXNTmMjsUlyy9EOpWdPVrcPsll2rTmessiQvtunbxN22a
 EIgek6g2GLJWVuLznQjWyEqAqrqp2qJ3WpuSa3jSsVtq6nXIEULgbZOzF
 wUkCELT6thwXImojsz/ZhEYbp0tXLnUCD9HDVDvL18cUSVkDxOwBuMJeo g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10366"; a="255844455"
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="255844455"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 08:13:05 -0700
X-IronPort-AV: E=Sophos;i="5.91,271,1647327600"; d="scan'208";a="577549812"
Received: from fbackhou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.4])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2022 08:13:03 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220602141850.21301-4-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220602141850.21301-1-animesh.manna@intel.com>
 <20220602141850.21301-4-animesh.manna@intel.com>
Date: Thu, 02 Jun 2022 18:13:00 +0300
Message-ID: <87a6avp08z.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [RFC PATCH 3/5] drm/i915/display: Use panel index
 to parse lfp backlight
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

On Thu, 02 Jun 2022, Animesh Manna <animesh.manna@intel.com> wrote:
> There will be separate entry of backlight info for each
> LFP in VBT. Panel index is used for deriving backlight info
> of the respective panel.

Same here, unnecessary. panel_type *is* panel index.

BR,
Jani.

>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 21 +++++++++------------
>  1 file changed, 9 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 943c5584f242..34160dc6b092 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -957,11 +957,11 @@ parse_generic_dtd(struct drm_i915_private *i915,
>  
>  static void
>  parse_lfp_backlight(struct drm_i915_private *i915,
> -		    struct intel_panel *panel)
> +		    struct intel_panel *panel,
> +		    int panel_index)
>  {
>  	const struct bdb_lfp_backlight_data *backlight_data;
>  	const struct lfp_backlight_data_entry *entry;
> -	int panel_type = panel->vbt.panel_type;
>  	u16 level;
>  
>  	backlight_data = find_section(i915, BDB_LVDS_BACKLIGHT);
> @@ -975,7 +975,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  		return;
>  	}
>  
> -	entry = &backlight_data->data[panel_type];
> +	entry = &backlight_data->data[panel_index];
>  
>  	panel->vbt.backlight.present = entry->type == BDB_BACKLIGHT_TYPE_PWM;
>  	if (!panel->vbt.backlight.present) {
> @@ -999,7 +999,7 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  		if (get_blocksize(backlight_data) >= exp_size) {
>  			const struct lfp_backlight_control_method *method;
>  
> -			method = &backlight_data->backlight_control[panel_type];
> +			method = &backlight_data->backlight_control[panel_index];
>  			panel->vbt.backlight.type = method->type;
>  			panel->vbt.backlight.controller = method->controller;
>  		}
> @@ -1012,11 +1012,11 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  		u16 min_level;
>  		bool scale;
>  
> -		level = backlight_data->brightness_level[panel_type].level;
> -		min_level = backlight_data->brightness_min_level[panel_type].level;
> +		level = backlight_data->brightness_level[panel_index].level;
> +		min_level = backlight_data->brightness_min_level[panel_index].level;
>  
>  		if (i915->vbt.version >= 236)
> -			scale = backlight_data->brightness_precision_bits[panel_type] == 16;
> +			scale = backlight_data->brightness_precision_bits[panel_index] == 16;
>  		else
>  			scale = level > 255;
>  
> @@ -1028,11 +1028,8 @@ parse_lfp_backlight(struct drm_i915_private *i915,
>  			level = 255;
>  		}
>  		panel->vbt.backlight.min_brightness = min_level;
> -
> -		panel->vbt.backlight.brightness_precision_bits =
> -			backlight_data->brightness_precision_bits[panel_type];
>  	} else {
> -		level = backlight_data->level[panel_type];
> +		level = backlight_data->level[panel_index];
>  		panel->vbt.backlight.min_brightness = entry->min_brightness;
>  	}
>  
> @@ -3117,7 +3114,7 @@ void intel_bios_init_panel(struct drm_i915_private *i915,
>  	parse_panel_options(i915, panel, edid, panel_index);
>  	parse_generic_dtd(i915, panel, panel_index);
>  	parse_lfp_data(i915, panel, panel_index);
> -	parse_lfp_backlight(i915, panel);
> +	parse_lfp_backlight(i915, panel, panel_index);
>  	parse_sdvo_panel_data(i915, panel);
>  	parse_panel_driver_features(i915, panel);
>  	parse_power_conservation_features(i915, panel);

-- 
Jani Nikula, Intel Open Source Graphics Center
