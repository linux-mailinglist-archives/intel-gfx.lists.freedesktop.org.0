Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25F2885C3F1
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 19:50:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB9B710E073;
	Tue, 20 Feb 2024 18:50:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=linaro.org header.i=@linaro.org header.b="E5V5714F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com
 [209.85.219.176])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5527110E2EE
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 18:50:09 +0000 (UTC)
Received: by mail-yb1-f176.google.com with SMTP id
 3f1490d57ef6-dc6dcd9124bso5486718276.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 10:50:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1708455008; x=1709059808; darn=lists.freedesktop.org;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:from:to:cc:subject:date:message-id:reply-to;
 bh=yRXnEtWmyWxcSqdR8eHmZ6LBceGmV3VoaDOluytk4Xg=;
 b=E5V5714FlXDyMb+bKGnq360ZXVRa65NsvlOEEP2U8NnJn4augSvF7NiD7e3aG1i/dC
 0m3NT6j7xpYXoCzfhvSAFMOcmyHX4Y3EVsm7ARkdvmlOo+rV7pkOQ4xihE0m1xSrHE9g
 jdQ1Bbvp25zvSd6nycGH2bcm+8/bFDsDp96EAFwuD8UOhvveqTzLK2oP78X9rc1TJYYh
 InjjgIdmJp0/+JdLBWACwLYDt5XKnB+EKugSIy5UA1b7pGtBM0DNLzaMtuZwcGEBaIh6
 r0JnEXReF5vgqK96SUSUcd/74qVqpP9UwxDCm8EpfOgefybhEWmVfpmozxTVYt2U1tX6
 E3hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1708455008; x=1709059808;
 h=cc:to:subject:message-id:date:from:in-reply-to:references
 :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=yRXnEtWmyWxcSqdR8eHmZ6LBceGmV3VoaDOluytk4Xg=;
 b=V5c9TpV0H4xK8LfK2bCIJ8Rcb1NbpgCoI/8e1zM9SdfQCmc/7GhllbDpH3gnYxFDlq
 qA0DSxru/wzj49rG5gpJLNKH54eLOSYID7wATddI0Z9R1pROnYlyB0Dt7+cnE/zUFHbY
 isx1TIWe9mWiWszUIgRKE7v1IE3WV7zJBgky7ERgfMfpkWliJmyOcvidbItwUGqr3KCB
 J+oF9DDadhq2uuYJl/PFKR1tvADgAZ5qiIfmFFaBCdWf/h9yRKb4XwJE1pho5JqDzGW+
 SMQtFC3V5UxTmJZXxQSyhZP9Z4kmPEwAVi5GHvgPHsO58ujsK7OENj0mvTg1mzEzvy0s
 yxIQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCX6qV8W/yLcMN3wCz7wESXTYzD9UfYPo/sIZi+EQJlBG89sLb297pfu4r3lqX3rhVGatVueOflrLGpmQHrXONc71+sFeJHUV0994egLz+9F
X-Gm-Message-State: AOJu0YwGCh6QF0x9PLpPnxG9P6jtU5TOjn/4iWvq33PFisKSV+4HCRCW
 fnoswMu+4G+2v1e4nhQo0YSpixfOyQx/p8S6/XN272s+elNrkxKeGGunU9kbcmcvM7twv+WC/re
 XkJuguRLldUjPTVBCPXBVzaTN4JKzHW6Mf7Di8w==
X-Google-Smtp-Source: AGHT+IHfzdOSi2N+M382qbcFbtC0kxzFdORlzSBvrutFk2HVJP66VyvKWw2NTQeQmT7rsxSCNRtZBfmXNaK+RFZmtsw=
X-Received: by 2002:a5b:b03:0:b0:dc7:1a9a:11da with SMTP id
 z3-20020a5b0b03000000b00dc71a9a11damr16767205ybp.38.1708455008038; Tue, 20
 Feb 2024 10:50:08 -0800 (PST)
MIME-Version: 1.0
References: <20240215190834.3222812-1-quic_abhinavk@quicinc.com>
In-Reply-To: <20240215190834.3222812-1-quic_abhinavk@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 20 Feb 2024 20:49:56 +0200
Message-ID: <CAA8EJppQquHgSgCrxKZHPHk248Pxg7Q8mvmmjbcpUxpreQkcuA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/dp: move intel_dp_vsc_sdp_pack() to generic helper
To: Abhinav Kumar <quic_abhinavk@quicinc.com>
Cc: dri-devel@lists.freedesktop.org, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Daniel Vetter <daniel@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, robdclark@gmail.com, 
 freedreno@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 ville.syrjala@linux.intel.com, quic_jesszhan@quicinc.com, 
 linux-kernel@vger.kernel.org, intel-xe@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
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

On Thu, 15 Feb 2024 at 21:08, Abhinav Kumar <quic_abhinavk@quicinc.com> wrote:
>
> intel_dp_vsc_sdp_pack() can be re-used by other DRM drivers as well.
> Lets move this to drm_dp_helper to achieve this.
>
> changes in v2:
>         - rebased on top of drm-tip
>
> Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

v1 had an explicit comment before the ack:

>    From my side, with the promise of the size fixup.

However I observe neither a second patch removing the size argument
nor it being dropped as a part of this patch.

> Signed-off-by: Abhinav Kumar <quic_abhinavk@quicinc.com>
> ---
>  drivers/gpu/drm/display/drm_dp_helper.c | 78 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_dp.c | 71 +---------------------
>  include/drm/display/drm_dp_helper.h     |  3 +
>  3 files changed, 83 insertions(+), 69 deletions(-)
>
> diff --git a/drivers/gpu/drm/display/drm_dp_helper.c b/drivers/gpu/drm/display/drm_dp_helper.c
> index 8d6ce46471ae..6c91f400ecb1 100644
> --- a/drivers/gpu/drm/display/drm_dp_helper.c
> +++ b/drivers/gpu/drm/display/drm_dp_helper.c
> @@ -2913,6 +2913,84 @@ void drm_dp_vsc_sdp_log(struct drm_printer *p, const struct drm_dp_vsc_sdp *vsc)
>  }
>  EXPORT_SYMBOL(drm_dp_vsc_sdp_log);
>
> +/**
> + * drm_dp_vsc_sdp_pack() - pack a given vsc sdp into generic dp_sdp
> + * @vsc: vsc sdp initialized according to its purpose as defined in
> + *       table 2-118 - table 2-120 in DP 1.4a specification
> + * @sdp: valid handle to the generic dp_sdp which will be packed
> + * @size: valid size of the passed sdp handle
> + *
> + * Returns length of sdp on success and error code on failure
> + */
> +ssize_t drm_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
> +                           struct dp_sdp *sdp, size_t size)
> +{
> +       size_t length = sizeof(struct dp_sdp);
> +
> +       if (size < length)
> +               return -ENOSPC;
> +
> +       memset(sdp, 0, size);
> +
> +       /*
> +        * Prepare VSC Header for SU as per DP 1.4a spec, Table 2-119
> +        * VSC SDP Header Bytes
> +        */
> +       sdp->sdp_header.HB0 = 0; /* Secondary-Data Packet ID = 0 */
> +       sdp->sdp_header.HB1 = vsc->sdp_type; /* Secondary-data Packet Type */
> +       sdp->sdp_header.HB2 = vsc->revision; /* Revision Number */
> +       sdp->sdp_header.HB3 = vsc->length; /* Number of Valid Data Bytes */
> +
> +       if (vsc->revision == 0x6) {
> +               sdp->db[0] = 1;
> +               sdp->db[3] = 1;
> +       }
> +
> +       /*
> +        * Revision 0x5 and revision 0x7 supports Pixel Encoding/Colorimetry
> +        * Format as per DP 1.4a spec and DP 2.0 respectively.
> +        */
> +       if (!(vsc->revision == 0x5 || vsc->revision == 0x7))
> +               goto out;
> +
> +       /* VSC SDP Payload for DB16 through DB18 */
> +       /* Pixel Encoding and Colorimetry Formats  */
> +       sdp->db[16] = (vsc->pixelformat & 0xf) << 4; /* DB16[7:4] */
> +       sdp->db[16] |= vsc->colorimetry & 0xf; /* DB16[3:0] */
> +
> +       switch (vsc->bpc) {
> +       case 6:
> +               /* 6bpc: 0x0 */
> +               break;
> +       case 8:
> +               sdp->db[17] = 0x1; /* DB17[3:0] */
> +               break;
> +       case 10:
> +               sdp->db[17] = 0x2;
> +               break;
> +       case 12:
> +               sdp->db[17] = 0x3;
> +               break;
> +       case 16:
> +               sdp->db[17] = 0x4;
> +               break;
> +       default:
> +               WARN(1, "Missing case %d\n", vsc->bpc);
> +               return -EINVAL;
> +       }
> +
> +       /* Dynamic Range and Component Bit Depth */
> +       if (vsc->dynamic_range == DP_DYNAMIC_RANGE_CTA)
> +               sdp->db[17] |= 0x80;  /* DB17[7] */
> +
> +       /* Content Type */
> +       sdp->db[18] = vsc->content_type & 0x7;
> +
> +out:
> +       return length;
> +}
> +EXPORT_SYMBOL(drm_dp_vsc_sdp_pack);
> +
>  /**
>   * drm_dp_get_pcon_max_frl_bw() - maximum frl supported by PCON
>   * @dpcd: DisplayPort configuration data
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 217196196e50..a9458df475e2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -4089,73 +4089,6 @@ intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>         return false;
>  }
>
> -static ssize_t intel_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
> -                                    struct dp_sdp *sdp, size_t size)
> -{
> -       size_t length = sizeof(struct dp_sdp);
> -
> -       if (size < length)
> -               return -ENOSPC;
> -
> -       memset(sdp, 0, size);
> -
> -       /*
> -        * Prepare VSC Header for SU as per DP 1.4a spec, Table 2-119
> -        * VSC SDP Header Bytes
> -        */
> -       sdp->sdp_header.HB0 = 0; /* Secondary-Data Packet ID = 0 */
> -       sdp->sdp_header.HB1 = vsc->sdp_type; /* Secondary-data Packet Type */
> -       sdp->sdp_header.HB2 = vsc->revision; /* Revision Number */
> -       sdp->sdp_header.HB3 = vsc->length; /* Number of Valid Data Bytes */
> -
> -       if (vsc->revision == 0x6) {
> -               sdp->db[0] = 1;
> -               sdp->db[3] = 1;
> -       }
> -
> -       /*
> -        * Revision 0x5 and revision 0x7 supports Pixel Encoding/Colorimetry
> -        * Format as per DP 1.4a spec and DP 2.0 respectively.
> -        */
> -       if (!(vsc->revision == 0x5 || vsc->revision == 0x7))
> -               goto out;
> -
> -       /* VSC SDP Payload for DB16 through DB18 */
> -       /* Pixel Encoding and Colorimetry Formats  */
> -       sdp->db[16] = (vsc->pixelformat & 0xf) << 4; /* DB16[7:4] */
> -       sdp->db[16] |= vsc->colorimetry & 0xf; /* DB16[3:0] */
> -
> -       switch (vsc->bpc) {
> -       case 6:
> -               /* 6bpc: 0x0 */
> -               break;
> -       case 8:
> -               sdp->db[17] = 0x1; /* DB17[3:0] */
> -               break;
> -       case 10:
> -               sdp->db[17] = 0x2;
> -               break;
> -       case 12:
> -               sdp->db[17] = 0x3;
> -               break;
> -       case 16:
> -               sdp->db[17] = 0x4;
> -               break;
> -       default:
> -               MISSING_CASE(vsc->bpc);
> -               break;
> -       }
> -       /* Dynamic Range and Component Bit Depth */
> -       if (vsc->dynamic_range == DP_DYNAMIC_RANGE_CTA)
> -               sdp->db[17] |= 0x80;  /* DB17[7] */
> -
> -       /* Content Type */
> -       sdp->db[18] = vsc->content_type & 0x7;
> -
> -out:
> -       return length;
> -}
> -
>  static ssize_t
>  intel_dp_hdr_metadata_infoframe_sdp_pack(struct drm_i915_private *i915,
>                                          const struct hdmi_drm_infoframe *drm_infoframe,
> @@ -4248,8 +4181,8 @@ static void intel_write_dp_sdp(struct intel_encoder *encoder,
>
>         switch (type) {
>         case DP_SDP_VSC:
> -               len = intel_dp_vsc_sdp_pack(&crtc_state->infoframes.vsc, &sdp,
> -                                           sizeof(sdp));
> +               len = drm_dp_vsc_sdp_pack(&crtc_state->infoframes.vsc, &sdp,
> +                                         sizeof(sdp));
>                 break;
>         case HDMI_PACKET_TYPE_GAMUT_METADATA:
>                 len = intel_dp_hdr_metadata_infoframe_sdp_pack(dev_priv,
> diff --git a/include/drm/display/drm_dp_helper.h b/include/drm/display/drm_dp_helper.h
> index d02014a87f12..8474504d4c88 100644
> --- a/include/drm/display/drm_dp_helper.h
> +++ b/include/drm/display/drm_dp_helper.h
> @@ -812,4 +812,7 @@ int drm_dp_bw_overhead(int lane_count, int hactive,
>                        int bpp_x16, unsigned long flags);
>  int drm_dp_bw_channel_coding_efficiency(bool is_uhbr);
>
> +ssize_t drm_dp_vsc_sdp_pack(const struct drm_dp_vsc_sdp *vsc,
> +                           struct dp_sdp *sdp, size_t size);
> +
>  #endif /* _DRM_DP_HELPER_H_ */
> --
> 2.34.1
>


-- 
With best wishes
Dmitry
