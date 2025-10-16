Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F04E7BE5816
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 23:03:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C883010E360;
	Thu, 16 Oct 2025 21:03:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BKylPG78";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1420210E360;
 Thu, 16 Oct 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760648633; x=1792184633;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0jLVE8BLDYoirq6Kx9qgBd7bDQnRTJGGsxfFadFFF68=;
 b=BKylPG78qWRLLVbsgZigWnN9D0HRWILfRYS/XI95ofy+iOyLiQkzHwIp
 xfInr5c0gs8kOhBNyPZCoTMdsbv3Cnn0XCF7aEUb/NmZF0Vxpb31Z2zO1
 fZoSP06VvK4PbUdHh9CkNE5Yz3ZevNanEpRJf+AxfyQHnEK0vbXw4i/I2
 mo2kvQMuLB6c9UB4MvtemMghZvnWByFbziNTPyQYiWxm9pmtopls8V7V7
 3r3883OL2LPtXjSM9Uf3erBmvjnKHUuvU8OmFAevg40e1pwMtyRUkx22z
 +rCe5WMHnboW8FRxxwppNqeefDL9oeVPvZDQj9+3kS+wXWAeTsRsF1fwM A==;
X-CSE-ConnectionGUID: X876zscWShWRoPes+N3luA==
X-CSE-MsgGUID: 18OGdxMoTR6MunoRyl78fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="73458987"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="73458987"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 14:03:53 -0700
X-CSE-ConnectionGUID: KksSOW/cTFqVjLfFGNqTjA==
X-CSE-MsgGUID: 0aO4ulNRRDacVv9pzWcyiw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182544655"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 14:03:48 -0700
Date: Fri, 17 Oct 2025 00:03:45 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>,
 Juha-pekka Heikkila <juha-pekka.heikkila@intel.com>,
 Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Atwood <matthew.s.atwood@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>,
 Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>,
 Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>,
 Shekhar Chauhan <shekhar.chauhan@intel.com>,
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 15/32] drm/i915/xe3p_lpd: Always apply level-0 watermark
 adjustment
Message-ID: <aPFdsf0JJ_3xZ1Of@intel.com>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-15-d2d1e26520aa@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-15-d2d1e26520aa@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Oct 15, 2025 at 12:15:15AM -0300, Gustavo Sousa wrote:
> When reading memory latencies for watermark calculations, previous
> display releases instructed to apply an adjustment of adding a certain
> value (e.g. 6us) to all levels when the level 0's memory latency read
> from hardware was zero.
> 
> For Xe3p_LPD, the instruction is to always use 6us for level 0 and to
> add that value to the other levels.  Update adjust_wm_latency()
> accordingly.
> 
> Bspec: 68986, 69126
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 41f64e347436..88342d07727f 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3249,6 +3249,13 @@ adjust_wm_latency(struct intel_display *display)
>  
>  	make_wm_latency_monotonic(display);
>  
> +	/*
> +	 * Xe3p asks to ignore wm[0] read from the register and always
> +	 * use the adjustment done with read_latency.
> +	 */
> +	if (DISPLAY_VER(display) >= 35)
> +		wm[0] = 0;

make_wm_latency_monotonic() already used wm[0]. I think this
needs to be the very first thing you do in adjust_wm_latency().

> +
>  	/*
>  	 * WaWmMemoryReadLatency
>  	 *
> 
> -- 
> 2.51.0

-- 
Ville Syrjälä
Intel
