Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A92313C6F6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2020 16:08:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 24FB56EA25;
	Wed, 15 Jan 2020 15:08:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15CE06EA25
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Jan 2020 15:08:32 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 07:08:31 -0800
X-IronPort-AV: E=Sophos;i="5.70,322,1574150400"; d="scan'208";a="253877119"
Received: from ideak-desk.fi.intel.com ([10.237.72.183])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 Jan 2020 07:08:30 -0800
Date: Wed, 15 Jan 2020 17:08:26 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <20200115150826.GC18295@ideak-desk.fi.intel.com>
References: <20191213133453.22152-1-ville.syrjala@linux.intel.com>
 <20191213133453.22152-5-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213133453.22152-5-ville.syrjala@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/i915/fbc: Add fbc tracepoints
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 03:34:52PM +0200, Ville Syrjala wrote:
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> =

> Add tracepoints which let us know when fbc activates/deactivates/nukes.
> =

> Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c |  9 ++++
>  drivers/gpu/drm/i915/i915_trace.h        | 62 ++++++++++++++++++++++++
>  2 files changed, 71 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i=
915/display/intel_fbc.c
> index 28adf4636800..88a9c2fea695 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -41,6 +41,7 @@
>  #include <drm/drm_fourcc.h>
>  =

>  #include "i915_drv.h"
> +#include "i915_trace.h"
>  #include "intel_display_types.h"
>  #include "intel_fbc.h"
>  #include "intel_frontbuffer.h"
> @@ -200,6 +201,10 @@ static bool g4x_fbc_is_active(struct drm_i915_privat=
e *dev_priv)
>  /* This function forces a CFB recompression through the nuke operation. =
*/
>  static void intel_fbc_recompress(struct drm_i915_private *dev_priv)
>  {
> +	struct intel_fbc *fbc =3D &dev_priv->fbc;
> +
> +	trace_intel_fbc_nuke(fbc->crtc);
> +
>  	I915_WRITE(MSG_FBC_REND_STATE, FBC_REND_NUKE);
>  	POSTING_READ(MSG_FBC_REND_STATE);
>  }
> @@ -356,6 +361,8 @@ static void intel_fbc_hw_activate(struct drm_i915_pri=
vate *dev_priv)
>  {
>  	struct intel_fbc *fbc =3D &dev_priv->fbc;
>  =

> +	trace_intel_fbc_activate(fbc->crtc);
> +
>  	fbc->active =3D true;
>  	fbc->activated =3D true;
>  =

> @@ -373,6 +380,8 @@ static void intel_fbc_hw_deactivate(struct drm_i915_p=
rivate *dev_priv)
>  {
>  	struct intel_fbc *fbc =3D &dev_priv->fbc;
>  =

> +	trace_intel_fbc_deactivate(fbc->crtc);
> +
>  	fbc->active =3D false;
>  =

>  	if (INTEL_GEN(dev_priv) >=3D 5)
> diff --git a/drivers/gpu/drm/i915/i915_trace.h b/drivers/gpu/drm/i915/i91=
5_trace.h
> index 7ef7a1e1664c..66ff96303b95 100644
> --- a/drivers/gpu/drm/i915/i915_trace.h
> +++ b/drivers/gpu/drm/i915/i915_trace.h
> @@ -339,6 +339,68 @@ TRACE_EVENT(intel_disable_plane,
>  		      __entry->frame, __entry->scanline)
>  );
>  =

> +/* fbc */
> +
> +TRACE_EVENT(intel_fbc_activate,
> +	    TP_PROTO(struct intel_crtc *crtc),
> +	    TP_ARGS(crtc),
> +
> +	    TP_STRUCT__entry(
> +			     __field(enum pipe, pipe)
> +			     __field(u32, frame)
> +			     __field(u32, scanline)
> +			     ),
> +
> +	    TP_fast_assign(
> +			   __entry->pipe =3D crtc->pipe;
> +			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
> +			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
> +			   ),
> +
> +	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
> +		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
> +);
> +
> +TRACE_EVENT(intel_fbc_deactivate,
> +	    TP_PROTO(struct intel_crtc *crtc),
> +	    TP_ARGS(crtc),
> +
> +	    TP_STRUCT__entry(
> +			     __field(enum pipe, pipe)
> +			     __field(u32, frame)
> +			     __field(u32, scanline)
> +			     ),
> +
> +	    TP_fast_assign(
> +			   __entry->pipe =3D crtc->pipe;
> +			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
> +			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
> +			   ),
> +
> +	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
> +		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
> +);
> +
> +TRACE_EVENT(intel_fbc_nuke,
> +	    TP_PROTO(struct intel_crtc *crtc),
> +	    TP_ARGS(crtc),
> +
> +	    TP_STRUCT__entry(
> +			     __field(enum pipe, pipe)
> +			     __field(u32, frame)
> +			     __field(u32, scanline)
> +			     ),
> +
> +	    TP_fast_assign(
> +			   __entry->pipe =3D crtc->pipe;
> +			   __entry->frame =3D intel_crtc_get_vblank_counter(crtc);
> +			   __entry->scanline =3D intel_get_crtc_scanline(crtc);
> +			   ),
> +
> +	    TP_printk("pipe %c, frame=3D%u, scanline=3D%u",
> +		      pipe_name(__entry->pipe), __entry->frame, __entry->scanline)
> +);
> +
>  /* pipe updates */
>  =

>  TRACE_EVENT(i915_pipe_update_start,
> -- =

> 2.23.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
