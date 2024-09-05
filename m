Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2708396DA1F
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Sep 2024 15:22:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C04510E8A3;
	Thu,  5 Sep 2024 13:22:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jJdgESbr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8CF710E8A3;
 Thu,  5 Sep 2024 13:22:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725542560; x=1757078560;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=a5gqwN10jJbc26mjPDWr0Wz1LVC7bmCdQnynDIcSJ2Q=;
 b=jJdgESbrPXkhcIO8KkoPyTcAEYYxRI+CLFiOstDqOr7tzbh+Be0k0jwP
 Efy04gn3P4Ss3AIV6o7234SflEjru+3AdmaFV/ux8aQmTD8oQy/7w+Oxb
 66BWFxjZ5c/Gll1zXS2Ge48mRwxn14/5nuG/jqQOAquVcyF4rnXCQc71N
 bRlM/n5vWF4q+1Uk9vzLcxxtQmDIfEzMOrsg6t6uamxh8yTB3+ncofxgp
 H71RlJBEql3Q2utqXHjyGoa4n+6ZwVyCWGeSS9AFVdkoXnBKejxyBiX4j
 cg6WGSKdAEhka2R23Hi7MZmRTQfiuxIrkBK0Dp5RsPUw9XWWHn4pv7YUP A==;
X-CSE-ConnectionGUID: 9uNNjbXLRmemvaI615WDzg==
X-CSE-MsgGUID: QODAgY2aR0CKDGmu2JXz6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11185"; a="24133135"
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="24133135"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 06:22:40 -0700
X-CSE-ConnectionGUID: QTOndzJcSjSuYKUEt1DtkQ==
X-CSE-MsgGUID: zX3+v+GRScmIsBTGsJEQhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,204,1719903600"; d="scan'208";a="70541547"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2024 06:22:39 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/5] drm/i915/display: Add bits for link_n_exended for
 DISPLAY >= 14
In-Reply-To: <20240905115505.3629087-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240905115505.3629087-1-ankit.k.nautiyal@intel.com>
 <20240905115505.3629087-2-ankit.k.nautiyal@intel.com>
Date: Thu, 05 Sep 2024 16:22:35 +0300
Message-ID: <87seuep750.fsf@intel.com>
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

On Thu, 05 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> LINK_N register has bits 31:24 for extended link N value used for
> HDMI2.1 and for an alternate mode of operation of DP TG DDA
> (Bspec:50488).
>
> Add support for these extra bits.

Please throw away the link_n_ext member, and go from there. Most of the
changes here are unnecessary.

Mask N after reading and before writing to 24 bits on older platforms,
don't mask on display >= 14.

That's all there is to it.


BR,
Jani.



> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 31 +++++++++++++++----
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/i915_reg.h               |  2 ++
>  3 files changed, 28 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index b4ef4d59da1a..60cdd7a37b03 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2595,6 +2595,8 @@ intel_link_compute_m_n(u16 bits_per_pixel_x16, int nlanes,
>  	compute_m_n(&m_n->link_m, &m_n->link_n,
>  		    pixel_clock, link_symbol_clock,
>  		    0x80000);
> +
> +	m_n->link_n_ext = 0;
>  }
>  
>  void intel_panel_sanitize_ssc(struct drm_i915_private *dev_priv)
> @@ -2632,6 +2634,7 @@ void intel_set_m_n(struct drm_i915_private *i915,
>  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>  {
> +	u8 link_n_ext = 0;
>  	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
>  	intel_de_write(i915, data_n_reg, m_n->data_n);
>  	intel_de_write(i915, link_m_reg, m_n->link_m);
> @@ -2639,7 +2642,11 @@ void intel_set_m_n(struct drm_i915_private *i915,
>  	 * On BDW+ writing LINK_N arms the double buffered update
>  	 * of all the M/N registers, so it must be written last.
>  	 */
> -	intel_de_write(i915, link_n_reg, m_n->link_n);
> +
> +	if (DISPLAY_VER(i915) >= 14 && m_n->link_n_ext)
> +		link_n_ext = PIPE_LINK_N1_EXTENDED(m_n->link_n_ext);
> +
> +	intel_de_write(i915, link_n_reg, m_n->link_n | link_n_ext);
>  }
>  
>  bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
> @@ -3346,8 +3353,17 @@ void intel_get_m_n(struct drm_i915_private *i915,
>  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>  {
> +	u32 link_n;
> +
>  	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
> -	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
> +
> +	link_n = intel_de_read(i915, link_n_reg);
> +	m_n->link_n = link_n & DATA_LINK_M_N_MASK;
> +	if (DISPLAY_VER(i915) >= 14)
> +		m_n->link_n_ext = REG_FIELD_GET(PIPE_LINK_N1_EXTENDED_MASK, link_n);
> +	else
> +		m_n->link_n_ext = 0;
> +
>  	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
>  	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
>  	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
> @@ -4843,7 +4859,8 @@ intel_compare_link_m_n(const struct intel_link_m_n *m_n,
>  		m_n->data_m == m2_n2->data_m &&
>  		m_n->data_n == m2_n2->data_n &&
>  		m_n->link_m == m2_n2->link_m &&
> -		m_n->link_n == m2_n2->link_n;
> +		m_n->link_n == m2_n2->link_n &&
> +		m_n->link_n_ext == m2_n2->link_n_ext;
>  }
>  
>  static bool
> @@ -5133,18 +5150,20 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  	if (!intel_compare_link_m_n(&current_config->name, \
>  				    &pipe_config->name)) { \
>  		pipe_config_mismatch(&p, fastset, crtc, __stringify(name), \
> -				     "(expected tu %i data %i/%i link %i/%i, " \
> -				     "found tu %i, data %i/%i link %i/%i)", \
> +				     "(expected tu %i data %i/%i link %i/%i link_n_ext %i, " \
> +				     "found tu %i, data %i/%i link %i/%i link_n_ext %i)", \
>  				     current_config->name.tu, \
>  				     current_config->name.data_m, \
>  				     current_config->name.data_n, \
>  				     current_config->name.link_m, \
>  				     current_config->name.link_n, \
> +				     current_config->name.link_n_ext, \
>  				     pipe_config->name.tu, \
>  				     pipe_config->name.data_m, \
>  				     pipe_config->name.data_n, \
>  				     pipe_config->name.link_m, \
> -				     pipe_config->name.link_n); \
> +				     pipe_config->name.link_n, \
> +				     pipe_config->name.link_n_ext); \
>  		ret = false; \
>  	} \
>  } while (0)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index f29e5dc3db91..1328e2e89786 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1028,6 +1028,7 @@ struct intel_link_m_n {
>  	u32 data_n;
>  	u32 link_m;
>  	u32 link_n;
> +	u8 link_n_ext;
>  };
>  
>  struct intel_csc_matrix {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 41f4350a7c6c..941d273dbf8c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2172,6 +2172,8 @@
>  #define _PIPEB_DATA_N2		0x6103c
>  #define _PIPEB_LINK_M1		0x61040
>  #define _PIPEB_LINK_N1		0x61044
> +#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
> +#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
>  #define _PIPEB_LINK_M2		0x61048
>  #define _PIPEB_LINK_N2		0x6104c

-- 
Jani Nikula, Intel
