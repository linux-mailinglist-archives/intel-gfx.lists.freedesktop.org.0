Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A184CB13ADB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 14:58:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2BD910E4F8;
	Mon, 28 Jul 2025 12:58:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hMXl85NB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3637C10E4F8;
 Mon, 28 Jul 2025 12:58:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753707482; x=1785243482;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DQ38PbkA/2pkMoh0nyoCWi/4e51dFn6wlbyfkZhn3ZM=;
 b=hMXl85NBXfrLCN5AucWot1Kkn+bqa+OUJIy4mhgmkskbP2RNhfz3mgxE
 AgFcoinsIhqC9a2CCJAx/xzR2y2VwuCfWqC1h7dxKlGMAq+fuFGmlMqac
 isQ2Lkm9ymz4zxroewdXVWwI6K6j4RESvD2fgktOF7FlbAAeQdefYNX+p
 CpV8bJalNYIlPRJFNnrJLbAgKx0j0lkLdhuts9KubbdWxq3TSEEzl5nHj
 wlaGtCS5Sj7enIiSpJVf0BuN+IQnmgVwJVuHwTeuJ0AoKrUosMUaK1wDe
 YkMdXCreR3YrZ3lDzWWIQHHXFxyQZJgp0jjn777XN6Cr109UNY607bUq5 A==;
X-CSE-ConnectionGUID: CeE+YCldTLSbUtT1laIqJg==
X-CSE-MsgGUID: 8Ol5WWrjRl6uzlA1zx/g9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="59772207"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="59772207"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 05:58:02 -0700
X-CSE-ConnectionGUID: 7dwEdYRuRRiMm6FyRv6kYQ==
X-CSE-MsgGUID: yI/ReALnQJal9EUWsEHFEg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="167820857"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.225])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 05:58:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/bios: Add function to check if edp data
 override is needed
In-Reply-To: <20250725061548.2704697-3-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
 <20250725061548.2704697-3-suraj.kandpal@intel.com>
Date: Mon, 28 Jul 2025 15:57:56 +0300
Message-ID: <0601423daeaa9bcdf1b5ceb2c2d92cc92c189551@intel.com>
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

On Fri, 25 Jul 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Add a function that helps identify if the rate provided needs to
> be overridden. For this we need a function that compares the rate
> provided and bitmask of rates provided in VBT.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 58 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h |  2 +
>  2 files changed, 60 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 8337ebe0f2c8..3eac804b2449 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2480,6 +2480,54 @@ static int parse_bdb_216_dp_max_link_rate(const int vbt_max_link_rate)
>  	}
>  }
>  
> +static bool parse_bdb_263_edp_data_override(const u32 edp_data_override_mask, int rate)

We don't really use const like this anywhere.

> +{
> +	u32 val;
> +
> +	switch (rate) {
> +	case 2000000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_20;
> +		break;
> +	case 1350000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_13_5;
> +		break;
> +	case 1000000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_10;
> +		break;
> +	case 810000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_8_1;
> +		break;
> +	case 675000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_6_75;
> +		break;
> +	case 540000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_5_4;
> +		break;
> +	case 432000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_4_32;
> +		break;
> +	case 324000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_3_24;
> +		break;
> +	case 270000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_7;
> +		break;
> +	case 243000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_43;
> +		break;
> +	case 216000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_2_16;
> +		break;
> +	case 162000:
> +		val = BDB_263_VBT_EDP_LINK_RATE_1_62;
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	return edp_data_override_mask & val;

I think you're better off having a helper function that returns the mask
for a rate, possibly 0, that you don't pass edp_data_override_mask at
all.

> +}
> +
>  int intel_bios_dp_max_link_rate(const struct intel_bios_encoder_data *devdata)
>  {
>  	if (!devdata || devdata->display->vbt.version < 216)
> @@ -2499,6 +2547,16 @@ int intel_bios_dp_max_lane_count(const struct intel_bios_encoder_data *devdata)
>  	return devdata->child.dp_max_lane_count + 1;
>  }
>  
> +bool
> +intel_bios_need_edp_data_override(const struct intel_bios_encoder_data *devdata,
> +				  int rate)

intel_bios_encoder_supports_edp_rate() or something, "need edp data
override" doesn't mean anything.

> +{
> +	if (!devdata || devdata->display->vbt.version < 263)
> +		return false;
> +
> +	return parse_bdb_263_edp_data_override(devdata->child.edp_data_override, rate);

This would become:

	return devdata->child.edp_data_override & edp_rate_override_mask(rate);

except negated with the positive function naming.

Also child.edp_data_override is a misleading name, because it's about
data *rate* override, not some random data override.

> +}
> +
>  static void sanitize_device_type(struct intel_bios_encoder_data *devdata,
>  				 enum port port)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 6cd7a011b8c4..aeba0e9b5228 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -274,5 +274,7 @@ void intel_bios_for_each_encoder(struct intel_display *display,
>  					      const struct intel_bios_encoder_data *devdata));
>  
>  void intel_bios_debugfs_register(struct intel_display *display);
> +bool
> +intel_bios_need_edp_data_override(const struct intel_bios_encoder_data *devdata, int rate);

Place this next to the other intel_bios_encoder_supports_* declarations.

BR,
Jani.

>  
>  #endif /* _INTEL_BIOS_H_ */

-- 
Jani Nikula, Intel
