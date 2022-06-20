Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85494552390
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 20:08:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CF6F10F239;
	Mon, 20 Jun 2022 18:08:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB0BB10F239
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 18:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655748525; x=1687284525;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=oTV8Dr/N1zEG4CoPA4KFWRFAixR1S59gbEtLNl0U2vE=;
 b=RdAWVhFgedGXiR5Jz5LjKKM2oT5iD/77IgmpF7ORfTWQh2a1gWJSjlKu
 vvCnfY9gX7GKbZUThayvYAsAuO6EFPMYluMvQeJNgFz4wZwWxG9f1JLgG
 0mjKSLL+rXbeXuXGmVapMSmRiXTScaymEVN2uF8nHOyLnWJ1wVVsWAqHk
 /s5cEQ1RMcWR3w4/SLpyWc27kOG1jK+oPkb/H6TxixwaHHeFJWzfHSXTk
 RRKosuU1svJraMcH2X284vSogQ8EwWrzkaQFSWzvYTe3QxAnKTVeUkelW
 42XZjKLc05PxGA2I3IET22oDaCkvg05RYxzUDn36zUZ3NemGUPgKYlv3D Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="262984569"
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="262984569"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 11:07:34 -0700
X-IronPort-AV: E=Sophos;i="5.92,207,1650956400"; d="scan'208";a="591280815"
Received: from hkanchar-mobl.gar.corp.intel.com (HELO localhost)
 ([10.252.36.6])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jun 2022 11:07:32 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20220620175210.28788-4-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220620175210.28788-1-ville.syrjala@linux.intel.com>
 <20220620175210.28788-4-ville.syrjala@linux.intel.com>
Date: Mon, 20 Jun 2022 21:07:30 +0300
Message-ID: <87o7ynryxp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 03/17] drm/i915: Extract
 HAS_DOUBLE_BUFFERED_M_N()
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

On Mon, 20 Jun 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> We have a couple of places that want to make distinction between
> double buffered M/N registers vs. the split M1/N1+M2/N2 registers.
> Add a helper for that.
>
> v2: Turn into a HAS_ macro (Jani)
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com> #v1
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

I'm fine with this, obviously, but also started wondering about the
other direction [1].

BR,
Jani.


[1] https://patchwork.freedesktop.org/patch/msgid/dc7e02a24fc231ef0fa3c4e84=
c01ebf19d61de2f.1655748056.git.jani.nikula@intel.com

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 3 +--
>  drivers/gpu/drm/i915/i915_drv.h              | 2 ++
>  3 files changed, 4 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 6b549aadca13..0384af821ee5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5760,7 +5760,7 @@ intel_pipe_config_compare(const struct intel_crtc_s=
tate *current_config,
>  	PIPE_CONF_CHECK_I(lane_count);
>  	PIPE_CONF_CHECK_X(lane_lat_optim_mask);
>=20=20
> -	if (DISPLAY_VER(dev_priv) >=3D 9 || IS_BROADWELL(dev_priv)) {
> +	if (HAS_DOUBLE_BUFFERED_M_N(dev_priv)) {
>  		PIPE_CONF_CHECK_M_N_ALT(dp_m_n, dp_m2_n2);
>  	} else {
>  		PIPE_CONF_CHECK_M_N(dp_m_n);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index e0891b31f089..cf7e4e105891 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1868,8 +1868,7 @@ intel_dp_compute_hdr_metadata_infoframe_sdp(struct =
intel_dp *intel_dp,
>  static bool cpu_transcoder_has_drrs(struct drm_i915_private *i915,
>  				    enum transcoder cpu_transcoder)
>  {
> -	/* M1/N1 is double buffered */
> -	if (DISPLAY_VER(i915) >=3D 9 || IS_BROADWELL(i915))
> +	if (HAS_DOUBLE_BUFFERED_M_N(i915))
>  		return true;
>=20=20
>  	return intel_cpu_transcoder_has_m2_n2(i915, cpu_transcoder);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_=
drv.h
> index c22f29c3faa0..805ae6ca7486 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1252,6 +1252,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_DP_MST(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dp_mst)
>  #define HAS_DP20(dev_priv)	(IS_DG2(dev_priv))
>=20=20
> +#define HAS_DOUBLE_BUFFERED_M_N(dev_priv)	(DISPLAY_VER(dev_priv) >=3D 9 =
|| IS_BROADWELL(dev_priv))
> +
>  #define HAS_CDCLK_CRAWL(dev_priv)	 (INTEL_INFO(dev_priv)->display.has_cd=
clk_crawl)
>  #define HAS_DDI(dev_priv)		 (INTEL_INFO(dev_priv)->display.has_ddi)
>  #define HAS_FPGA_DBG_UNCLAIMED(dev_priv) (INTEL_INFO(dev_priv)->display.=
has_fpga_dbg)

--=20
Jani Nikula, Intel Open Source Graphics Center
