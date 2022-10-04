Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 117F25F4642
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Oct 2022 17:13:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3DD9A10E5E4;
	Tue,  4 Oct 2022 15:13:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33E9A10E5E4
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Oct 2022 15:13:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664896420; x=1696432420;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=PIo0dgPOyovxkkaLWRwrheppaE7b3I+eiL2tdX0DzOU=;
 b=YO2ecjtAkUWc+8DYdsXK9GI2jvDHAcYoclqexxfjfm2s1eQhkx3Vp0Vd
 cdG4byFmyM6rjHtq63sZf+gB22Fe0fR+DFgy1YBpe7PvMGEXAmofiiUt7
 sS4ZH16XDuNgIYoGT+5YgledKqqxj8ZQF1frttexoP+xt4vxH0fZpKuSp
 dLBAL1TbfcKgl2jel6ERgWvk02XQwxuDRb42Wm/05w4FbVceYhOr1ZoNY
 l4T9ku7p966eiMWXirbhGqYsX3sNzQ/osBwqNJc5YYT5Q30ctkOE9jlZ+
 zrBHsUZE4+g6gmc47s7CIFXLKh0ODrgc6DxP6cVaJD4cAzOesfnc51JW9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="302913043"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="302913043"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:13:39 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10490"; a="728256859"
X-IronPort-AV: E=Sophos;i="5.95,158,1661842800"; d="scan'208";a="728256859"
Received: from pvarla-mobl4.gar.corp.intel.com (HELO localhost)
 ([10.252.39.104])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Oct 2022 08:13:38 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221004150929.23910-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221004150929.23910-1-ville.syrjala@linux.intel.com>
Date: Tue, 04 Oct 2022 18:13:35 +0300
Message-ID: <87o7ursjts.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clean up some namespacing
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

On Tue, 04 Oct 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Rename a few functions from intel_crtc_foo_init() to
> intel_foo_crtc_init() so that the namespaec clearly
> indicates what feature/file we're talking about.
>
> If left out intel_crtc_crc_init() because the whole crc

*I

> stuff uses intel_crtc_ as its namespace currently.
>
> Suggested-by: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c | 2 +-
>  drivers/gpu/drm/i915/display/intel_color.h | 2 +-
>  drivers/gpu/drm/i915/display/intel_crtc.c  | 4 ++--
>  drivers/gpu/drm/i915/display/intel_drrs.c  | 4 ++--
>  drivers/gpu/drm/i915/display/intel_drrs.h  | 2 +-
>  5 files changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm=
/i915/display/intel_color.c
> index 0c73b2ba1283..fc23d5d8f7fd 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -2209,7 +2209,7 @@ static const struct intel_color_funcs ilk_color_fun=
cs =3D {
>  	.read_luts =3D ilk_read_luts,
>  };
>=20=20
> -void intel_crtc_color_init(struct intel_crtc *crtc)
> +void intel_color_crtc_init(struct intel_crtc *crtc)
>  {
>  	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>  	bool has_ctm =3D INTEL_INFO(dev_priv)->display.color.degamma_lut_size !=
=3D 0;
> diff --git a/drivers/gpu/drm/i915/display/intel_color.h b/drivers/gpu/drm=
/i915/display/intel_color.h
> index 67702451e2fd..04984e6000b6 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.h
> +++ b/drivers/gpu/drm/i915/display/intel_color.h
> @@ -14,7 +14,7 @@ struct drm_i915_private;
>  struct drm_property_blob;
>=20=20
>  void intel_color_init_hooks(struct drm_i915_private *i915);
> -void intel_crtc_color_init(struct intel_crtc *crtc);
> +void intel_color_crtc_init(struct intel_crtc *crtc);
>  int intel_color_check(struct intel_crtc_state *crtc_state);
>  void intel_color_commit_noarm(const struct intel_crtc_state *crtc_state);
>  void intel_color_commit_arm(const struct intel_crtc_state *crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index 2d9fc7383bfc..6be1fe34c83b 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -365,8 +365,8 @@ int intel_crtc_init(struct drm_i915_private *dev_priv=
, enum pipe pipe)
>  						BIT(DRM_SCALING_FILTER_DEFAULT) |
>  						BIT(DRM_SCALING_FILTER_NEAREST_NEIGHBOR));
>=20=20
> -	intel_crtc_color_init(crtc);
> -	intel_crtc_drrs_init(crtc);
> +	intel_color_crtc_init(crtc);
> +	intel_drrs_crtc_init(crtc);
>  	intel_crtc_crc_init(crtc);
>=20=20
>  	cpu_latency_qos_add_request(&crtc->vblank_pm_qos, PM_QOS_DEFAULT_VALUE);
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.c b/drivers/gpu/drm/=
i915/display/intel_drrs.c
> index 2b94a62ef65a..e27408efaae2 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.c
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.c
> @@ -284,14 +284,14 @@ void intel_drrs_flush(struct drm_i915_private *dev_=
priv,
>  }
>=20=20
>  /**
> - * intel_crtc_drrs_init - Init DRRS for CRTC
> + * intel_drrs_crtc_init - Init DRRS for CRTC
>   * @crtc: crtc
>   *
>   * This function is called only once at driver load to initialize basic
>   * DRRS stuff.
>   *
>   */
> -void intel_crtc_drrs_init(struct intel_crtc *crtc)
> +void intel_drrs_crtc_init(struct intel_crtc *crtc)
>  {
>  	INIT_DELAYED_WORK(&crtc->drrs.work, intel_drrs_downclock_work);
>  	mutex_init(&crtc->drrs.mutex);
> diff --git a/drivers/gpu/drm/i915/display/intel_drrs.h b/drivers/gpu/drm/=
i915/display/intel_drrs.h
> index 041248bf5d67..8ef5f93a80ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_drrs.h
> +++ b/drivers/gpu/drm/i915/display/intel_drrs.h
> @@ -23,7 +23,7 @@ void intel_drrs_invalidate(struct drm_i915_private *dev=
_priv,
>  			   unsigned int frontbuffer_bits);
>  void intel_drrs_flush(struct drm_i915_private *dev_priv,
>  		      unsigned int frontbuffer_bits);
> -void intel_crtc_drrs_init(struct intel_crtc *crtc);
> +void intel_drrs_crtc_init(struct intel_crtc *crtc);
>  void intel_drrs_crtc_debugfs_add(struct intel_crtc *crtc);
>  void intel_drrs_connector_debugfs_add(struct intel_connector *connector);

--=20
Jani Nikula, Intel Open Source Graphics Center
