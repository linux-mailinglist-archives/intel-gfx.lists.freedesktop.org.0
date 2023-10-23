Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F9A7D38C2
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 16:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2412310E0AB;
	Mon, 23 Oct 2023 14:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8210910E0AB
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 14:01:59 +0000 (UTC)
Received: from 91-155-254-243.elisa-laajakaista.fi ([91.155.254.243]
 helo=pinhengc-mobl2.amr.corp.intel.com)
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97-RC1) (envelope-from <luca@coelho.fi>)
 id 1quvVD-000000008ch-3vl3; Mon, 23 Oct 2023 17:01:57 +0300
Message-ID: <ad591eaebcefb5f9a1c50034fcbbd4b7b1178a50.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Jouni =?ISO-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Mon, 23 Oct 2023 17:01:55 +0300
In-Reply-To: <20231016111658.3432581-24-jouni.hogander@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-24-jouni.hogander@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.4-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.0 (2022-12-13) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=4.0.0
Subject: Re: [Intel-gfx] [PATCH v2 23/24] drm/i915/display: Move
 enable_dp_mst under display
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

On Mon, 2023-10-16 at 14:16 +0300, Jouni H=C3=B6gander wrote:
> Signed-off-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_params.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_display_params.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c             | 6 +++---
>  drivers/gpu/drm/i915/i915_params.c                  | 3 ---
>  drivers/gpu/drm/i915/i915_params.h                  | 1 -
>  5 files changed, 7 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.c b/driver=
s/gpu/drm/i915/display/intel_display_params.c
> index 3045a1b9b704..8e6353c1c25e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.c
> @@ -93,6 +93,9 @@ intel_display_param_named(verbose_state_checks, bool, 0=
400,
>  intel_display_param_named_unsafe(nuclear_pageflip, bool, 0400,
>  	"Force enable atomic functionality on platforms that don't have full su=
pport yet.");
> =20
> +intel_display_param_named_unsafe(enable_dp_mst, bool, 0400,
> +	"Enable multi-stream transport (MST) for new DisplayPort sinks. (defaul=
t: true)");
> +
>  intel_display_param_named_unsafe(enable_fbc, int, 0400,
>  	"Enable frame buffer compression for power savings "
>  	"(default: -1 (use per-chip default))");
> diff --git a/drivers/gpu/drm/i915/display/intel_display_params.h b/driver=
s/gpu/drm/i915/display/intel_display_params.h
> index d25e17f88a78..83c4429ada35 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_params.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_params.h
> @@ -41,6 +41,7 @@ struct drm_i915_private;
>  	param(bool, disable_display, false, 0400) \
>  	param(bool, verbose_state_checks, true, 0) \
>  	param(bool, nuclear_pageflip, false, 0400) \
> +	param(bool, enable_dp_mst, true, 0600) \
>  	param(int, enable_fbc, -1, 0600)	\
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 4f6835a7578e..f90d8cace6a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3749,7 +3749,7 @@ intel_dp_can_mst(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> =20
> -	return i915->params.enable_dp_mst &&
> +	return i915->display.params.enable_dp_mst &&
>  		intel_dp_mst_source_support(intel_dp) &&
>  		drm_dp_read_mst_cap(&intel_dp->aux, intel_dp->dpcd);
>  }
> @@ -3767,13 +3767,13 @@ intel_dp_configure_mst(struct intel_dp *intel_dp)
>  		    encoder->base.base.id, encoder->base.name,
>  		    str_yes_no(intel_dp_mst_source_support(intel_dp)),
>  		    str_yes_no(sink_can_mst),
> -		    str_yes_no(i915->params.enable_dp_mst));
> +		    str_yes_no(i915->display.params.enable_dp_mst));
> =20
>  	if (!intel_dp_mst_source_support(intel_dp))
>  		return;
> =20
>  	intel_dp->is_mst =3D sink_can_mst &&
> -		i915->params.enable_dp_mst;
> +		i915->display.params.enable_dp_mst;
> =20
>  	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst_mgr,
>  					intel_dp->is_mst);
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i9=
15_params.c
> index 18424873442d..de43048543e8 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -114,9 +114,6 @@ i915_param_named_unsafe(dmc_firmware_path, charp, 040=
0,
>  i915_param_named_unsafe(gsc_firmware_path, charp, 0400,
>  	"GSC firmware path to use instead of the default one");
> =20
> -i915_param_named_unsafe(enable_dp_mst, bool, 0400,
> -	"Enable multi-stream transport (MST) for new DisplayPort sinks. (defaul=
t: true)");
> -
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
>  i915_param_named_unsafe(inject_probe_failure, uint, 0400,
>  	"Force an error after a number of failure check points (0:disabled (def=
ault), N:force failure at the Nth failure check point)");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i9=
15_params.h
> index c7fff571db2c..1315d7fac850 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -64,7 +64,6 @@ struct drm_printer;
>  	/* leave bools at the end to not create holes */ \
>  	param(bool, enable_hangcheck, true, 0600) \
>  	param(bool, error_capture, true, IS_ENABLED(CONFIG_DRM_I915_CAPTURE_ERR=
OR) ? 0600 : 0) \
> -	param(bool, enable_dp_mst, true, 0600) \
>  	param(bool, enable_gvt, false, IS_ENABLED(CONFIG_DRM_I915_GVT) ? 0400 :=
 0)
> =20
>  #define MEMBER(T, member, ...) T member;

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
