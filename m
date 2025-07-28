Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B6ADFB13AAE
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Jul 2025 14:45:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E27EE10E4F1;
	Mon, 28 Jul 2025 12:45:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XIaGKIZG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98FDD10E4EE;
 Mon, 28 Jul 2025 12:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753706710; x=1785242710;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=BzEAml87nT7U9bianEKDTckILuejVz7RG80i5ioBWJ8=;
 b=XIaGKIZGgqATJUc6aZMu0hBCZFaXRPOvtzhBZoShG1pv8q8WwHVUWhza
 Fr18DJ46cPRC6cJJGZGbBu3JsSwfQBTdJ2nvqV9bidyD9IWWqFvBQ3AN+
 3ifs+c+vUcedAKnpW+ZhxxIvYd2h4QPmPa1Ft+GBJpDDvYF22irUvRCyC
 z0Zpnx3tYCDm3ydc61J60nI+6K/D82c55UM/81U4PEmiAF3RFqYNzs4K0
 Al3ilG98aH5A1caWJuikbcy2Luq8EqVTjw3BXoRa0LtN9vzgLK8tvN90T
 dqmFwJ6okAPv00pl6qJeNSsOP3PdbOa+7Tws0gL48Ft5FvYX4UOmeZe5t Q==;
X-CSE-ConnectionGUID: I6JCxhy8RS+rb7G13lh8fg==
X-CSE-MsgGUID: LLvmsrt4Qm2yYfahL4Gpsg==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="55835661"
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="55835661"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 05:45:10 -0700
X-CSE-ConnectionGUID: d0hZ3pvwTeyMN6CsIx3/Fg==
X-CSE-MsgGUID: qrRnAUAVTQCwJlI8BV9XqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,339,1744095600"; d="scan'208";a="166653120"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.225])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jul 2025 05:45:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/vbt: Add eDP Data Overrride field in VBT
In-Reply-To: <20250725061548.2704697-2-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250725061548.2704697-1-suraj.kandpal@intel.com>
 <20250725061548.2704697-2-suraj.kandpal@intel.com>
Date: Mon, 28 Jul 2025 15:45:03 +0300
Message-ID: <a5f45f92cf10c04072341750c60094f7c11f8469@intel.com>
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
> Add a field which add the edp_data_override field VBT which gives us a
> mask of rates which need to be skipped in favour of subsequent
> higher rate.

Please look into the grammar.

> Bspec: 20124
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     |  4 +++-
>  drivers/gpu/drm/i915/display/intel_vbt_defs.h | 16 ++++++++++++++++
>  2 files changed, 19 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 9c268bed091d..8337ebe0f2c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2747,8 +2747,10 @@ static int child_device_expected_size(u16 version)
>  {
>  	BUILD_BUG_ON(sizeof(struct child_device_config) < 40);
>  
> -	if (version > 256)
> +	if (version > 263)
>  		return -ENOENT;
> +	else if (version >= 263)
> +		return 44;
>  	else if (version >= 256)
>  		return 40;
>  	else if (version >= 216)
> diff --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> index 92c04811aa28..8e29eeb01105 100644
> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> @@ -437,6 +437,20 @@ enum vbt_gmbus_ddi {
>  #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR13P5	6
>  #define BDB_230_VBT_DP_MAX_LINK_RATE_UHBR20	7
>  
> +/* EDP link rate 262+ */

263+ obviously?

> +#define BDB_263_VBT_EDP_LINK_RATE_1_62		BIT(0)
> +#define BDB_263_VBT_EDP_LINK_RATE_2_16		BIT(1)
> +#define BDB_263_VBT_EDP_LINK_RATE_2_43		BIT(2)
> +#define BDB_263_VBT_EDP_LINK_RATE_2_7		BIT(3)
> +#define BDB_263_VBT_EDP_LINK_RATE_3_24		BIT(4)
> +#define BDB_263_VBT_EDP_LINK_RATE_4_32		BIT(5)
> +#define BDB_263_VBT_EDP_LINK_RATE_5_4		BIT(6)
> +#define BDB_263_VBT_EDP_LINK_RATE_6_75		BIT(7)
> +#define BDB_263_VBT_EDP_LINK_RATE_8_1		BIT(8)
> +#define BDB_263_VBT_EDP_LINK_RATE_10		BIT(9)
> +#define BDB_263_VBT_EDP_LINK_RATE_13_5		BIT(10)
> +#define BDB_263_VBT_EDP_LINK_RATE_20		BIT(11)

Please use BIT_U32() instead.

> +
>  /*
>   * The child device config, aka the display device data structure, provides a
>   * description of a port and its configuration on the platform.
> @@ -547,6 +561,8 @@ struct child_device_config {
>  	u8 dp_max_link_rate:3;					/* 216+ */
>  	u8 dp_max_link_rate_reserved:5;				/* 216+ */
>  	u8 efp_index;						/* 256+ */
> +	u32 edp_data_override:5;				/* 263+ */
> +	u32 edp_data_override_reserved:17;			/* 263+ */

The patch was sent three times, and nobody noticed you define 12 bits
for the values per spec, but here the bitfield is 5 bits? And 17+5 don't
even add up to 32 bits total. Neither 5 nor 17 are correct.

BR,
Jani.


>  } __packed;
>  
>  struct bdb_general_definitions {

-- 
Jani Nikula, Intel
