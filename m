Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6703C1390E9
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 13:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0C0189862;
	Mon, 13 Jan 2020 12:15:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C592897DC;
 Mon, 13 Jan 2020 12:15:05 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 04:15:04 -0800
X-IronPort-AV: E=Sophos;i="5.69,428,1571727600"; d="scan'208";a="372249092"
Received: from jnikula-mobl3.fi.intel.com (HELO localhost) ([10.237.66.161])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Jan 2020 04:14:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 daniel@ffwll.ch, sam@ravnborg.org, sudeep.dutt@intel.com,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, Joonas
 Lahtinen <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, David Airlie <airlied@linux.ie>, Zhenyu Wang
 <zhenyuw@linux.intel.com>, Zhi Wang <zhi.a.wang@intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Imre Deak <imre.deak@intel.com>,
 Ramalingam C <ramalingam.c@intel.com>
In-Reply-To: <20200113115557.32713-3-pankaj.laxminarayan.bharadiya@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20200113115557.32713-1-pankaj.laxminarayan.bharadiya@intel.com>
 <20200113115557.32713-3-pankaj.laxminarayan.bharadiya@intel.com>
Date: Mon, 13 Jan 2020 14:14:51 +0200
Message-ID: <87imlfmu2s.fsf@intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: add helper functions to get
 device ptr
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
Cc: pankaj.laxminaryan.bharadiya@outlook.iglb.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 13 Jan 2020, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com> wrote:
> We will need struct drm_device pointer to pass it to drm_WARN* calls.
>
> Add helper functions to exract drm_device pointer from various structs.

Please don't do this.

We use the helpers we currently have when they involve something more
complex than dereferences, such as container_of() or having to use
dev_get_drvdata() or pci_get_drvdata().

I really don't want people to use e.g.

	i915_to_dev(i915)

over

	&i915->drm


BR,
Jani.

>
> Signed-off-by: Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 14 ++++++++++++++
>  drivers/gpu/drm/i915/gvt/gvt.h                     |  5 +++++
>  drivers/gpu/drm/i915/i915_drv.h                    | 11 +++++++++++
>  3 files changed, 30 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7964b3dc0046..765878718fe9 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1521,6 +1521,20 @@ dp_to_i915(struct intel_dp *intel_dp)
>  	return to_i915(dp_to_dig_port(intel_dp)->base.base.dev);
>  }
>  
> +static inline struct drm_device *enc_to_dev(const struct intel_encoder *encoder)
> +{
> +	return encoder->base.dev;
> +}
> +
> +static inline struct drm_device *
> +crtc_state_to_dev(const struct intel_crtc_state *state)
> +{
> +	struct intel_crtc *crtc = to_intel_crtc(state->uapi.crtc);
> +	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +
> +	return i915_to_dev(i915);
> +}
> +
>  static inline struct intel_digital_port *
>  hdmi_to_dig_port(struct intel_hdmi *intel_hdmi)
>  {
> diff --git a/drivers/gpu/drm/i915/gvt/gvt.h b/drivers/gpu/drm/i915/gvt/gvt.h
> index b47c6acaf9c0..d257399b075a 100644
> --- a/drivers/gpu/drm/i915/gvt/gvt.h
> +++ b/drivers/gpu/drm/i915/gvt/gvt.h
> @@ -348,6 +348,11 @@ static inline struct intel_gvt *to_gvt(struct drm_i915_private *i915)
>  	return i915->gvt;
>  }
>  
> +static inline struct drm_device *vgpu_to_dev(const struct intel_vgpu *vgpu)
> +{
> +	return i915_to_dev(vgpu->gvt->dev_priv);
> +}
> +
>  enum {
>  	INTEL_GVT_REQUEST_EMULATE_VBLANK = 0,
>  
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index e7be4c3e43c6..bdc89d021ff8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1325,6 +1325,17 @@ static inline struct drm_i915_private *pdev_to_i915(struct pci_dev *pdev)
>  	return pci_get_drvdata(pdev);
>  }
>  
> +static inline struct drm_device *i915_to_dev(struct drm_i915_private *i915)
> +{
> +	return &i915->drm;
> +}
> +
> +static inline struct drm_device *
> +perf_stream_to_dev(const struct i915_perf_stream *stream)
> +{
> +	return i915_to_dev(stream->perf->i915);
> +}
> +
>  /* Simple iterator over all initialised engines */
>  #define for_each_engine(engine__, dev_priv__, id__) \
>  	for ((id__) = 0; \

-- 
Jani Nikula, Intel Open Source Graphics Center
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
