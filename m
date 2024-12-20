Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE4049F8EB0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 10:13:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F4C710E384;
	Fri, 20 Dec 2024 09:12:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 850ED10E384
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Dec 2024 09:12:47 +0000 (UTC)
Received: from 91-155-254-69.elisa-laajakaista.fi ([91.155.254.69]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1tOZ3s-000000038i2-3Xwx; Fri, 20 Dec 2024 11:12:44 +0200
Message-ID: <418ab35450c6e8f027b56647842ad51e46863d31.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Ville Syrjala <ville.syrjala@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org
Date: Fri, 20 Dec 2024 11:12:43 +0200
In-Reply-To: <20241219130827.22830-9-ville.syrjala@linux.intel.com>
References: <20241219130827.22830-1-ville.syrjala@linux.intel.com>
 <20241219130827.22830-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.54.2-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 8/8] drm/i915/scaler: Add scaler tracepoints
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

On Thu, 2024-12-19 at 15:08 +0200, Ville Syrjala wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>=20
> Add some tracpoints around skl+ scaler programming to help with
> debugging.
>=20
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  .../drm/i915/display/intel_display_trace.h    | 99 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.c     |  8 ++
>  2 files changed, 107 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_trace.h b/drivers=
/gpu/drm/i915/display/intel_display_trace.h
> index 338b9f7b20b8..54a6e2a46b82 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_trace.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_trace.h
> @@ -489,6 +489,105 @@ TRACE_EVENT(intel_plane_disable_arm,
>  		      __entry->frame, __entry->scanline)
>  );
> =20
> +TRACE_EVENT(intel_plane_scaler_update_arm,
> +	    TP_PROTO(struct intel_plane *plane,
> +		     int scaler_id, int x, int y, int w, int h),
> +	    TP_ARGS(plane, scaler_id, x, y, w, h),
> +
> +	    TP_STRUCT__entry(
> +			     __string(dev, __dev_name_kms(plane))
> +			     __field(char, pipe_name)
> +			     __field(int, scaler_id)
> +			     __field(u32, frame)
> +			     __field(u32, scanline)
> +			     __field(int, x)
> +			     __field(int, y)
> +			     __field(int, w)
> +			     __field(int, h)
> +			     __string(name, plane->base.name)
> +			     ),
> +
> +	    TP_fast_assign(
> +			   struct intel_display *display =3D to_intel_display(plane);
> +			   struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, plane->pi=
pe);
> +			   __assign_str(dev);
> +			   __assign_str(name);
> +			   __entry->pipe_name =3D pipe_name(crtc->pipe);
> +			   __entry->scaler_id =3D scaler_id;
> +			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
> +			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
> +			   __entry->x =3D x;
> +			   __entry->y =3D y;
> +			   __entry->w =3D w;
> +			   __entry->h =3D h;
> +			   ),
> +
> +	    TP_printk("dev %s, pipe %c, scaler %d, plane %s, frame=3D%u, scanli=
ne=3D%u, " DRM_RECT_FMT,
> +		      __get_str(dev), __entry->pipe_name, __entry->scaler_id,
> +		      __get_str(name), __entry->frame, __entry->scanline,
> +		      __entry->w, __entry->h, __entry->x, __entry->y)
> +);
> +
> +TRACE_EVENT(intel_pipe_scaler_update_arm,
> +	    TP_PROTO(struct intel_crtc *crtc, int scaler_id,
> +		     int x, int y, int w, int h),
> +	    TP_ARGS(crtc, scaler_id, x, y, w, h),
> +
> +	    TP_STRUCT__entry(
> +			     __string(dev, __dev_name_kms(crtc))
> +			     __field(char, pipe_name)
> +			     __field(int, scaler_id)
> +			     __field(u32, frame)
> +			     __field(u32, scanline)
> +			     __field(int, x)
> +			     __field(int, y)
> +			     __field(int, w)
> +			     __field(int, h)
> +			     ),
> +
> +	    TP_fast_assign(
> +			   __assign_str(dev);
> +			   __entry->pipe_name =3D pipe_name(crtc->pipe);
> +			   __entry->scaler_id =3D scaler_id;
> +			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
> +			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
> +			   __entry->x =3D x;
> +			   __entry->y =3D y;
> +			   __entry->w =3D w;
> +			   __entry->h =3D h;
> +			   ),
> +
> +	    TP_printk("dev %s, pipe %c, scaler %d frame=3D%u, scanline=3D%u, " =
DRM_RECT_FMT,
> +		      __get_str(dev), __entry->pipe_name, __entry->scaler_id,
> +		      __entry->frame, __entry->scanline,
> +		      __entry->w, __entry->h, __entry->x, __entry->y)
> +);
> +
> +TRACE_EVENT(intel_scaler_disable_arm,
> +	    TP_PROTO(struct intel_crtc *crtc, int scaler_id),
> +	    TP_ARGS(crtc, scaler_id),
> +
> +	    TP_STRUCT__entry(
> +			     __string(dev, __dev_name_kms(crtc))
> +			     __field(char, pipe_name)
> +			     __field(int, scaler_id)
> +			     __field(u32, frame)
> +			     __field(u32, scanline)
> +			     ),
> +
> +	    TP_fast_assign(
> +			   __assign_str(dev);
> +			   __entry->pipe_name =3D pipe_name(crtc->pipe);
> +			   __entry->scaler_id =3D scaler_id;
> +			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
> +			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
> +			   ),
> +
> +	    TP_printk("dev %s, pipe %c, scaler %d, frame=3D%u, scanline=3D%u",
> +		      __get_str(dev), __entry->pipe_name, __entry->scaler_id,
> +		      __entry->frame, __entry->scanline)
> +);
> +
>  TRACE_EVENT(intel_fbc_activate,
>  	    TP_PROTO(struct intel_plane *plane),
>  	    TP_ARGS(plane),
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/=
i915/display/skl_scaler.c
> index 79739357162c..a11e09a15e23 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -6,6 +6,7 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "intel_de.h"
> +#include "intel_display_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_fb.h"
>  #include "skl_scaler.h"
> @@ -706,6 +707,8 @@ void skl_pfit_enable(const struct intel_crtc_state *c=
rtc_state)
>  	ps_ctrl =3D PS_SCALER_EN | PS_BINDING_PIPE | scaler_state->scalers[id].=
mode |
>  		skl_scaler_get_filter_select(crtc_state->hw.scaling_filter, 0);
> =20
> +	trace_intel_pipe_scaler_update_arm(crtc, id, x, y, width, height);
> +
>  	skl_scaler_setup_filter(display, pipe, id, 0,
>  				crtc_state->hw.scaling_filter);
> =20
> @@ -770,6 +773,9 @@ skl_program_plane_scaler(struct intel_plane *plane,
>  	ps_ctrl =3D PS_SCALER_EN | PS_BINDING_PLANE(plane->id) | scaler->mode |
>  		skl_scaler_get_filter_select(plane_state->hw.scaling_filter, 0);
> =20
> +	trace_intel_plane_scaler_update_arm(plane, scaler_id,
> +					    crtc_x, crtc_y, crtc_w, crtc_h);
> +
>  	skl_scaler_setup_filter(display, pipe, scaler_id, 0,
>  				plane_state->hw.scaling_filter);
> =20
> @@ -788,6 +794,8 @@ static void skl_detach_scaler(struct intel_crtc *crtc=
, int id)
>  {
>  	struct intel_display *display =3D to_intel_display(crtc);
> =20
> +	trace_intel_scaler_disable_arm(crtc, id);
> +
>  	intel_de_write_fw(display, SKL_PS_CTRL(crtc->pipe, id), 0);
>  	intel_de_write_fw(display, SKL_PS_WIN_POS(crtc->pipe, id), 0);
>  	intel_de_write_fw(display, SKL_PS_WIN_SZ(crtc->pipe, id), 0);

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
