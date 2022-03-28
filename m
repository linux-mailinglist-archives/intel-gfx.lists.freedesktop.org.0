Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE90A4E9DAA
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Mar 2022 19:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1718510E73E;
	Mon, 28 Mar 2022 17:39:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B83910E73E;
 Mon, 28 Mar 2022 17:39:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648489172; x=1680025172;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zqyguX+cLHuoWwPJsp31GCx8Dd/UBMz64iohWeQubX8=;
 b=YUM2CQkCAIqCkylClCY2plrf0QnyY1n62a/M2fbWi525doriUymlesMk
 QYwe/NrZm25rmwTUI+N1nJzXK+wEAKTX5SsIr7hl/4IxZRhJwwQl9CifJ
 73ZrENI6eUtJxBHgb1SachxKzS7dgXXZlDCyr3jru/Bp/nAIPyo5bfvTS
 BOX2JIAz65c/HnY1Xj51ipb3gDOCo1Kyq38VkvzeWNzJuUGMFEVZz9dxL
 VTu4qWMjUCOn3E4qDnSaH0xa2MEpWqEyai4yTzZGTtjqful4K46szTuDK
 ifgcEE0asgj/mwAV69kLwTGH5vJvFTz8EO64olyuinXXzCK2SN7x1VWie Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10300"; a="246554364"
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="246554364"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2022 10:39:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,218,1643702400"; d="scan'208";a="649151410"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga002.fm.intel.com with SMTP; 28 Mar 2022 10:39:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 28 Mar 2022 20:39:28 +0300
Date: Mon, 28 Mar 2022 20:39:28 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YkHy0BNGPHL0kGCv@intel.com>
References: <cover.1648477901.git.jani.nikula@intel.com>
 <ec7acb8a9ee0e2868bbb2afdfdd7db114ae180e1.1648477901.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ec7acb8a9ee0e2868bbb2afdfdd7db114ae180e1.1648477901.git.jani.nikula@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 09/12] drm/edid: constify struct edid
 passed to detailed blocks
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
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 28, 2022 at 05:34:30PM +0300, Jani Nikula wrote:
> Constify the first level of struct edid in detailed timing parsing. Also
> switch to struct edid instead of u8.
> 
> Cc: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/drm_edid.c | 48 ++++++++++++++++++--------------------
>  1 file changed, 23 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index 47234cf211ca..dae394688e5b 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -2352,38 +2352,37 @@ static bool is_detailed_timing_descriptor(const struct detailed_timing *descript
>  typedef void detailed_cb(const struct detailed_timing *timing, void *closure);
>  
>  static void
> -cea_for_each_detailed_block(u8 *ext, detailed_cb *cb, void *closure)
> +cea_for_each_detailed_block(const u8 *ext, detailed_cb *cb, void *closure)
>  {
>  	int i, n;
>  	u8 d = ext[0x02];
> -	u8 *det_base = ext + d;
> +	const u8 *det_base = ext + d;
>  
>  	if (d < 4 || d > 127)
>  		return;
>  
>  	n = (127 - d) / 18;
>  	for (i = 0; i < n; i++)
> -		cb((struct detailed_timing *)(det_base + 18 * i), closure);
> +		cb((const struct detailed_timing *)(det_base + 18 * i), closure);
>  }
>  
>  static void
> -vtb_for_each_detailed_block(u8 *ext, detailed_cb *cb, void *closure)
> +vtb_for_each_detailed_block(const u8 *ext, detailed_cb *cb, void *closure)
>  {
>  	unsigned int i, n = min((int)ext[0x02], 6);
> -	u8 *det_base = ext + 5;
> +	const u8 *det_base = ext + 5;
>  
>  	if (ext[0x01] != 1)
>  		return; /* unknown version */
>  
>  	for (i = 0; i < n; i++)
> -		cb((struct detailed_timing *)(det_base + 18 * i), closure);
> +		cb((const struct detailed_timing *)(det_base + 18 * i), closure);
>  }
>  
>  static void
> -drm_for_each_detailed_block(u8 *raw_edid, detailed_cb *cb, void *closure)
> +drm_for_each_detailed_block(const struct edid *edid, detailed_cb *cb, void *closure)
>  {
>  	int i;
> -	struct edid *edid = (struct edid *)raw_edid;
>  
>  	if (edid == NULL)
>  		return;
> @@ -2391,8 +2390,8 @@ drm_for_each_detailed_block(u8 *raw_edid, detailed_cb *cb, void *closure)
>  	for (i = 0; i < EDID_DETAILED_TIMINGS; i++)
>  		cb(&(edid->detailed_timings[i]), closure);
>  
> -	for (i = 1; i <= raw_edid[0x7e]; i++) {
> -		u8 *ext = raw_edid + (i * EDID_LENGTH);
> +	for (i = 1; i <= edid->extensions; i++) {
> +		const u8 *ext = (const u8 *)edid + (i * EDID_LENGTH);
>  
>  		switch (*ext) {
>  		case CEA_EXT:
> @@ -2430,7 +2429,7 @@ drm_monitor_supports_rb(struct edid *edid)
>  	if (edid->revision >= 4) {
>  		bool ret = false;
>  
> -		drm_for_each_detailed_block((u8 *)edid, is_rb, &ret);
> +		drm_for_each_detailed_block(edid, is_rb, &ret);
>  		return ret;
>  	}
>  
> @@ -2457,7 +2456,7 @@ drm_gtf2_hbreak(struct edid *edid)
>  {
>  	const struct detailed_timing *descriptor = NULL;
>  
> -	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
> +	drm_for_each_detailed_block(edid, find_gtf2, &descriptor);
>  
>  	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.hfreq_start_khz) != 12);
>  
> @@ -2469,7 +2468,7 @@ drm_gtf2_2c(struct edid *edid)
>  {
>  	const struct detailed_timing *descriptor = NULL;
>  
> -	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
> +	drm_for_each_detailed_block(edid, find_gtf2, &descriptor);
>  
>  	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.c) != 13);
>  
> @@ -2481,7 +2480,7 @@ drm_gtf2_m(struct edid *edid)
>  {
>  	const struct detailed_timing *descriptor = NULL;
>  
> -	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
> +	drm_for_each_detailed_block(edid, find_gtf2, &descriptor);
>  
>  	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.m) != 14);
>  
> @@ -2493,7 +2492,7 @@ drm_gtf2_k(struct edid *edid)
>  {
>  	const struct detailed_timing *descriptor = NULL;
>  
> -	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
> +	drm_for_each_detailed_block(edid, find_gtf2, &descriptor);
>  
>  	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.k) != 16);
>  
> @@ -2505,7 +2504,7 @@ drm_gtf2_2j(struct edid *edid)
>  {
>  	const struct detailed_timing *descriptor = NULL;
>  
> -	drm_for_each_detailed_block((u8 *)edid, find_gtf2, &descriptor);
> +	drm_for_each_detailed_block(edid, find_gtf2, &descriptor);
>  
>  	BUILD_BUG_ON(offsetof(typeof(*descriptor), data.other_data.data.range.formula.gtf2.j) != 17);
>  
> @@ -3055,8 +3054,7 @@ add_inferred_modes(struct drm_connector *connector, struct edid *edid)
>  	};
>  
>  	if (version_greater(edid, 1, 0))
> -		drm_for_each_detailed_block((u8 *)edid, do_inferred_modes,
> -					    &closure);
> +		drm_for_each_detailed_block(edid, do_inferred_modes, &closure);
>  
>  	return closure.modes;
>  }
> @@ -3135,8 +3133,8 @@ add_established_modes(struct drm_connector *connector, struct edid *edid)
>  	}
>  
>  	if (version_greater(edid, 1, 0))
> -		    drm_for_each_detailed_block((u8 *)edid,
> -						do_established_modes, &closure);
> +		drm_for_each_detailed_block(edid, do_established_modes,
> +					    &closure);
>  
>  	return modes + closure.modes;
>  }
> @@ -3194,7 +3192,7 @@ add_standard_modes(struct drm_connector *connector, struct edid *edid)
>  	}
>  
>  	if (version_greater(edid, 1, 0))
> -		drm_for_each_detailed_block((u8 *)edid, do_standard_modes,
> +		drm_for_each_detailed_block(edid, do_standard_modes,
>  					    &closure);
>  
>  	/* XXX should also look for standard codes in VTB blocks */
> @@ -3274,7 +3272,7 @@ add_cvt_modes(struct drm_connector *connector, struct edid *edid)
>  	};
>  
>  	if (version_greater(edid, 1, 2))
> -		drm_for_each_detailed_block((u8 *)edid, do_cvt_mode, &closure);
> +		drm_for_each_detailed_block(edid, do_cvt_mode, &closure);
>  
>  	/* XXX should also look for CVT codes in VTB blocks */
>  
> @@ -3334,7 +3332,7 @@ add_detailed_modes(struct drm_connector *connector, struct edid *edid,
>  		closure.preferred =
>  		    (edid->features & DRM_EDID_FEATURE_PREFERRED_TIMING);
>  
> -	drm_for_each_detailed_block((u8 *)edid, do_detailed_mode, &closure);
> +	drm_for_each_detailed_block(edid, do_detailed_mode, &closure);
>  
>  	return closure.modes;
>  }
> @@ -4535,7 +4533,7 @@ static int get_monitor_name(struct edid *edid, char name[13])
>  	if (!edid || !name)
>  		return 0;
>  
> -	drm_for_each_detailed_block((u8 *)edid, monitor_name, &edid_name);
> +	drm_for_each_detailed_block(edid, monitor_name, &edid_name);
>  	for (mnl = 0; edid_name && mnl < 13; mnl++) {
>  		if (edid_name[mnl] == 0x0a)
>  			break;
> @@ -5281,7 +5279,7 @@ void drm_get_monitor_range(struct drm_connector *connector,
>  	if (!version_greater(edid, 1, 1))
>  		return;
>  
> -	drm_for_each_detailed_block((u8 *)edid, get_monitor_range,
> +	drm_for_each_detailed_block(edid, get_monitor_range,
>  				    &info->monitor_range);
>  
>  	DRM_DEBUG_KMS("Supported Monitor Refresh rate range is %d Hz - %d Hz\n",
> -- 
> 2.30.2

-- 
Ville Syrj�l�
Intel
