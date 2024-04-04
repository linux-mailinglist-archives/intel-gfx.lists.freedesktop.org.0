Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 516FC8988AF
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 15:21:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 798FD112FC8;
	Thu,  4 Apr 2024 13:21:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K645YQTx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92B791130C1
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Apr 2024 13:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712236878; x=1743772878;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=4PUhyoISLeRoAYYJKZujF03ETSo0DBJSH2yMFDaA3MI=;
 b=K645YQTxYX4JS1Fec85cHWGgC6Hn6KdvTw+xZ6FMLpd6Ys5Iu7TDbDX8
 4KBZabmLilGhgoL4371wNFT9BNFVEhaYx+u1092v7jBS/91WV0WJXy2oB
 pDSScoqPqxMa6i6UeS8H7dIzkV0xQs8UMsvSFnT2Axl4o4/exk7h9FPg/
 hLW5fghOlCD5OJMEzkpEs7jL5lhUUgtWdmnmFbX8L3RyK6ypUVt7iaTae
 D2qo4TVQG8/VLoFwqBHk8JEbmjFnaNlkPwzayD/aO/SQPbhMxV+qXgr8p
 PlVI12e7NVCeGvjQAEgsiAZDoXYCxMTsR8/Ah5/HrYUlYXQD6cnXjawa8 w==;
X-CSE-ConnectionGUID: yD1gzUK3RWK3iL/N5Pxlvg==
X-CSE-MsgGUID: K8ENNqPnQ5OKtJs7/PDMWg==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7622587"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; 
   d="scan'208";a="7622587"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:04:20 -0700
X-CSE-ConnectionGUID: kB2GS8thR7Cj+Il3j4cJGw==
X-CSE-MsgGUID: DSm5racETdWlrOqf8iQVkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="18561764"
Received: from imateric-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.57.206])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:04:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-gfx@lists.freedesktop.org
Cc: chaitanya.kumar.borah@intel.com, uma.shankar@intel.com,
 ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com,
 ville.syrjala@intel.com, naveen1.kumar@intel.com,
 sebastian.wick@redhat.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Re: [PATCH 7/7] drm/i915/dp: Limit brightness level to 20
In-Reply-To: <20240404032931.380887-9-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240404032931.380887-2-suraj.kandpal@intel.com>
 <20240404032931.380887-9-suraj.kandpal@intel.com>
Date: Thu, 04 Apr 2024 12:04:14 +0300
Message-ID: <87jzldcxdd.fsf@intel.com>
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

On Thu, 04 Apr 2024, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> Limit minimum brightness to 20 when using aux based brightness
> control to avoid letting the screen going completely blank.

Why "20"? What does it mean? Why don't we have this in the VBT like for
PWM backlight?

>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index 20dd5a6a0f3f..b54ea7e46954 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -211,6 +211,9 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(connector->encoder);
>  	u8 buf[4] = {};
>  
> +	if (level < 20)
> +		level = 20;
> +
>  	buf[0] = level & 0xFF;
>  	buf[1] = (level & 0xFF00) >> 8;

-- 
Jani Nikula, Intel
