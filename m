Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33B5F94EF7F
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Aug 2024 16:27:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B2610E23B;
	Mon, 12 Aug 2024 14:27:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PeYz/jLD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C17110E23B
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Aug 2024 14:27:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1723472870; x=1755008870;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=L8dGpgYnTQM8wFHmwv7h6/4VtAf8S+tKmgrvzh0QZYM=;
 b=PeYz/jLDvQGv3jC75Yr1MCmB47mXHAHkI0to1PzbCS8Ben5OBxDfllEU
 0AJQ1JQxl04mCrisBMsk/uzcK6NVEsiOutx4dTegf6t/YNHR2wckQzKmW
 7OGIVjAAIBSJc5rXbnU6WSegzRN6MjYCyz+Le2vbe67TVKAkjongGh1tr
 1ISKdQsVbJviICJ7jCjbpwf/aRflUKZLwlUpGcWinXvtCCVBfzJkk7Lre
 WHQRxu3xwUaJVYzrOJyBbnQ+jv57BoFXUcMVkWZ1AiBoYmRDZu4IDLwlk
 a504JFMqHUoLtOew0QSYNPwIu2wvLo199HpaIY3FJpo88tHyU1+iFmYNh A==;
X-CSE-ConnectionGUID: Q7Er9dBlS92QO+J44tq41Q==
X-CSE-MsgGUID: KVQgl0Y9RN6zUh9Ra0ExOA==
X-IronPort-AV: E=McAfee;i="6700,10204,11162"; a="32737423"
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="32737423"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 07:27:49 -0700
X-CSE-ConnectionGUID: KZ8lXlkoRDmc4k2RBIBNOw==
X-CSE-MsgGUID: +JsilRq9QRy0dPpZODHc3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,283,1716274800"; d="scan'208";a="81521103"
Received: from iklimasz-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.117])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2024 07:27:46 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Subject: Re: [PATCH] drm/i915/bios: Update new entries in VBT BDB block
 definations
In-Reply-To: <20240812134047.4042341-1-dnyaneshwar.bhadane@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240812134047.4042341-1-dnyaneshwar.bhadane@intel.com>
Date: Mon, 12 Aug 2024 17:27:44 +0300
Message-ID: <87jzgl24v3.fsf@intel.com>
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

On Mon, 12 Aug 2024, Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com> wrote:
> New entries updated in BDB defination from VBT v257- v260.

*definition

Please explain what you're adding.

Also, the spec never ceases to amaze me. Like here, adding stuff for a
few revisions, obsoleting and starting over. Ugh.

> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 35 ++++++++++++++++---
>  1 file changed, 30 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index e613288937e4..65342f347bba 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -1080,6 +1080,8 @@ struct bdb_edp {
>  	u16 edp_fast_link_training_rate[16];			/* 224+ */
>  	u16 edp_max_port_link_rate[16];				/* 244+ */
>  	u16 edp_dsc_disable;					/* 251+ */
> +	u16 t16_delay;						/* 260+ */

Please let's follow the spec in member naming where feasible.

This would be t6_delay_support.

> +	u16 t16_link_idle_time;					/* 260+ */

And this would be u16 link_idle_time[16]. The size is 32 bytes, not 2.

(Where does t16 come from?)

>  } __packed;
>  
>  /*
> @@ -1330,12 +1332,27 @@ struct aggressiveness_profile2_entry {
>  	u8 elp_aggressiveness : 4;
>  } __packed;
>  
> +struct aggressiveness_profile3_entry {
> +	u8 adp_aggressiveness:4;

apd_aggressiveness

> +	u8 po_aggressiveness:4;

pixoptix_aggressiveness

> +} __packed;
> +
> +struct aggressiveness_profile4_entry {
> +	u8 xpst_aggressiveness:4;
> +	u8 tcon_aggressiveness:4;
> +} __packed;
> +
> +struct panel_identification {
> +	u8 panel_type:4;

panel_type is a loaded word in VBT. Let's avoid it. Maybe
panel_technology or something.

> +	u8 reserved:4;
> +} __packed;
> +
>  struct bdb_lfp_power {
>  	struct lfp_power_features features;				/* ???-227 */
>  	struct als_data_entry als[5];
>  	u8 lace_aggressiveness_profile:3;				/* 210-227 */
>  	u8 reserved1:5;
> -	u16 dpst;							/* 228+ */
> +	u16 dpst;							/* 228-256 */
>  	u16 psr;							/* 228+ */
>  	u16 drrs;							/* 228+ */
>  	u16 lace_support;						/* 228+ */
> @@ -1343,12 +1360,20 @@ struct bdb_lfp_power {
>  	u16 dmrrs;							/* 228+ */
>  	u16 adb;							/* 228+ */
>  	u16 lace_enabled_status;					/* 228+ */
> -	struct aggressiveness_profile_entry aggressiveness[16];		/* 228+ */
> +	struct aggressiveness_profile_entry aggressiveness[16];		/* 228-256 */

The LACE agressiveness is still valid. Please add the comment to struct
aggressiveness_profile dpst_aggressiveness member.

>  	u16 hobl;							/* 232+ */
>  	u16 vrr_feature_enabled;					/* 233+ */
> -	u16 elp;							/* 247+ */
> -	u16 opst;							/* 247+ */
> -	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247+ */
> +	u16 elp;							/* 247-256 */
> +	u16 opst;							/* 247-256 */
> +	struct aggressiveness_profile2_entry aggressiveness2[16];	/* 247-256 */
> +	u16 adp;							/* 253-256 */

apd

> +	u16 po;								/* 253-256 */

pixoptix

> +	struct aggressiveness_profile3_entry aggressiveness3[16];	/* 253-256 */
> +	struct panel_identification panel_identity[16];			/* 257+ */

panel_identification

> +	u16 xpst;							/* 257+ */

xpst_support

> +	u16 tcon;							/* 257+ */

tcon_based_backlight_optimization

> +	struct aggressiveness_profile4_entry aggressiveness4[16];	/* 257+ */
> +	u16 tcon_coexist_xpst;						/* 257+ */

Hrmh, this is where the member naming in spec is not feasible. Maybe
tcon_xpst_coexistence.

>  } __packed;
>  
>  /*

-- 
Jani Nikula, Intel
