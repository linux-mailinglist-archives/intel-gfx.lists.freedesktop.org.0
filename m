Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01B9E97B3CF
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Sep 2024 19:46:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA24D10E4E5;
	Tue, 17 Sep 2024 17:46:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BLyrKMIr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEE1210E4DC;
 Tue, 17 Sep 2024 17:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726595183; x=1758131183;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=UZPkGsA8BhQaBvGp9Z/am4ccEZRAfTs9KXYwamIS17w=;
 b=BLyrKMIroITYdOY8sykCAA8rYw7kMz4fTZOZbC6zw0RaGTS8h/SYKTIC
 Ttge779e3l2kTgNCr/rjYbQ4Bqm1fchsTia9sUAer5h6uEECAmygNOUZE
 XAznBq0ab98GF19EXhBnfKBplMt8JiGnJJfDuu+uNE4zi+GmckGihkNB3
 fv0GvEFVoKGZzkUlOOnnXLR3qyrhNivhQgH7BAK6p/zFeytlNJ++lJ4gk
 NH1cNrGrlXTsu2ojY3xf8A1T9jbtchGBC3gdMy50JbuqSYWonC7yicHo0
 rj8TWMpug6RnDUu7BmmuPsk3N6KcFYIrbC/FE95ztpZCJWF9Jx5mDz5+6 Q==;
X-CSE-ConnectionGUID: oUxnrg+DQdGtjZPKPwpufg==
X-CSE-MsgGUID: NRHTR1E1TVeChd9NdoS7vQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11198"; a="13561593"
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="13561593"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:46:20 -0700
X-CSE-ConnectionGUID: 9mVBQlCAR2i4zoekHdU3TA==
X-CSE-MsgGUID: P/C6NnXxTCirSIqHq8LXeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,235,1719903600"; d="scan'208";a="100105266"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.102])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Sep 2024 10:46:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/4] Add bits for link_n_exended for DISPLAY >= 14
In-Reply-To: <20240917174200.2563528-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240917174200.2563528-1-ankit.k.nautiyal@intel.com>
 <20240917174200.2563528-2-ankit.k.nautiyal@intel.com>
Date: Tue, 17 Sep 2024 20:46:14 +0300
Message-ID: <871q1icgwp.fsf@intel.com>
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

On Tue, 17 Sep 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> LINK_N register has bits 31:24 for extended link N value used for
> HDMI2.1 and for an alternate mode of operation of DP TG DDA
> (Bspec:50488).
>
> Add support for these extra bits.
>
> v2: Drop extra link_n_ext member. (Jani)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  | 21 ++++++++++++++-----
>  drivers/gpu/drm/i915/display/intel_display.h  |  2 +-
>  .../gpu/drm/i915/display/intel_pch_display.c  |  4 ++--
>  drivers/gpu/drm/i915/i915_reg.h               |  2 ++
>  4 files changed, 21 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 426074afef43..4b1bb1f43adb 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2633,9 +2633,12 @@ void intel_zero_m_n(struct intel_link_m_n *m_n)
>  
>  void intel_set_m_n(struct drm_i915_private *i915,
>  		   const struct intel_link_m_n *m_n,
> +		   u8 link_n_ext,
>  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>  {
> +	u8 link_n = m_n->link_n;

You also don't need the parameter. You don't need to pass it
around. Please read my previous review.

BR,
Jani.

> +
>  	intel_de_write(i915, data_m_reg, TU_SIZE(m_n->tu) | m_n->data_m);
>  	intel_de_write(i915, data_n_reg, m_n->data_n);
>  	intel_de_write(i915, link_m_reg, m_n->link_m);
> @@ -2643,7 +2646,11 @@ void intel_set_m_n(struct drm_i915_private *i915,
>  	 * On BDW+ writing LINK_N arms the double buffered update
>  	 * of all the M/N registers, so it must be written last.
>  	 */
> -	intel_de_write(i915, link_n_reg, m_n->link_n);
> +
> +	if (DISPLAY_VER(i915) >= 14 && link_n_ext)
> +		link_n |= PIPE_LINK_N1_EXTENDED(link_n_ext);
> +
> +	intel_de_write(i915, link_n_reg, link_n);
>  }
>  
>  bool intel_cpu_transcoder_has_m2_n2(struct drm_i915_private *dev_priv,
> @@ -2663,13 +2670,13 @@ void intel_cpu_transcoder_set_m1_n1(struct intel_crtc *crtc,
>  	enum pipe pipe = crtc->pipe;
>  
>  	if (DISPLAY_VER(dev_priv) >= 5)
> -		intel_set_m_n(dev_priv, m_n,
> +		intel_set_m_n(dev_priv, m_n, 0,
>  			      PIPE_DATA_M1(dev_priv, transcoder),
>  			      PIPE_DATA_N1(dev_priv, transcoder),
>  			      PIPE_LINK_M1(dev_priv, transcoder),
>  			      PIPE_LINK_N1(dev_priv, transcoder));
>  	else
> -		intel_set_m_n(dev_priv, m_n,
> +		intel_set_m_n(dev_priv, m_n, 0,
>  			      PIPE_DATA_M_G4X(pipe), PIPE_DATA_N_G4X(pipe),
>  			      PIPE_LINK_M_G4X(pipe), PIPE_LINK_N_G4X(pipe));
>  }
> @@ -2683,7 +2690,7 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  	if (!intel_cpu_transcoder_has_m2_n2(dev_priv, transcoder))
>  		return;
>  
> -	intel_set_m_n(dev_priv, m_n,
> +	intel_set_m_n(dev_priv, m_n, 0,
>  		      PIPE_DATA_M2(dev_priv, transcoder),
>  		      PIPE_DATA_N2(dev_priv, transcoder),
>  		      PIPE_LINK_M2(dev_priv, transcoder),
> @@ -3351,7 +3358,11 @@ void intel_get_m_n(struct drm_i915_private *i915,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg)
>  {
>  	m_n->link_m = intel_de_read(i915, link_m_reg) & DATA_LINK_M_N_MASK;
> -	m_n->link_n = intel_de_read(i915, link_n_reg) & DATA_LINK_M_N_MASK;
> +	m_n->link_n = intel_de_read(i915, link_n_reg);
> +
> +	if (DISPLAY_VER(i915) < 14)
> +		m_n->link_n &= ~PIPE_LINK_N1_EXTENDED_MASK;
> +
>  	m_n->data_m = intel_de_read(i915, data_m_reg) & DATA_LINK_M_N_MASK;
>  	m_n->data_n = intel_de_read(i915, data_n_reg) & DATA_LINK_M_N_MASK;
>  	m_n->tu = REG_FIELD_GET(TU_SIZE_MASK, intel_de_read(i915, data_m_reg)) + 1;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 4bdb48084cab..3b12d7f7c6c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -473,7 +473,7 @@ bool intel_fuzzy_clock_check(int clock1, int clock2);
>  
>  void intel_zero_m_n(struct intel_link_m_n *m_n);
>  void intel_set_m_n(struct drm_i915_private *i915,
> -		   const struct intel_link_m_n *m_n,
> +		   const struct intel_link_m_n *m_n, u8 link_n_ext,
>  		   i915_reg_t data_m_reg, i915_reg_t data_n_reg,
>  		   i915_reg_t link_m_reg, i915_reg_t link_n_reg);
>  void intel_get_m_n(struct drm_i915_private *i915,
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index f13ab680c2cf..74bc4de6d123 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -178,7 +178,7 @@ static void intel_pch_transcoder_set_m1_n1(struct intel_crtc *crtc,
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  
> -	intel_set_m_n(dev_priv, m_n,
> +	intel_set_m_n(dev_priv, m_n, 0,
>  		      PCH_TRANS_DATA_M1(pipe), PCH_TRANS_DATA_N1(pipe),
>  		      PCH_TRANS_LINK_M1(pipe), PCH_TRANS_LINK_N1(pipe));
>  }
> @@ -189,7 +189,7 @@ static void intel_pch_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  	struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>  	enum pipe pipe = crtc->pipe;
>  
> -	intel_set_m_n(dev_priv, m_n,
> +	intel_set_m_n(dev_priv, m_n, 0,
>  		      PCH_TRANS_DATA_M2(pipe), PCH_TRANS_DATA_N2(pipe),
>  		      PCH_TRANS_LINK_M2(pipe), PCH_TRANS_LINK_N2(pipe));
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 7396fc630e29..a770b5dbf5e4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2158,6 +2158,8 @@
>  
>  #define _PIPEA_LINK_N1		0x60044
>  #define _PIPEB_LINK_N1		0x61044
> +#define  PIPE_LINK_N1_EXTENDED_MASK	REG_GENMASK(31, 24)
> +#define  PIPE_LINK_N1_EXTENDED(val)	REG_FIELD_PREP(PIPE_LINK_N1_EXTENDED_MASK, (val))
>  #define PIPE_LINK_N1(dev_priv, tran) _MMIO_TRANS2(dev_priv, tran, _PIPEA_LINK_N1)
>  
>  #define _PIPEA_LINK_M2		0x60048

-- 
Jani Nikula, Intel
