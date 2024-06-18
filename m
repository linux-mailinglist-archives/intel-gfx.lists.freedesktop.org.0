Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFD4190C87F
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 13:09:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6448E10E0B9;
	Tue, 18 Jun 2024 11:09:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kVmfG8Ab";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 896B210E211
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 11:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718708942; x=1750244942;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tTk29Lc965cjBaoiSGsrSf+koz98QIRvpn7H2HTqDVk=;
 b=kVmfG8AbaMZyLYMruZr0Uk2q0XWnv5P+6dJyXsIFEb+/f142vjwv+ykM
 3Z5FkH+abjAx/6X0YCqHeZ2B1OCvTKvswEbjFceuCTRaYHFdbrrX/keAG
 vDsabcccd3HnmDaFktYH7Ev1xlrAUIq0IfbOJyJCvUgP+FQNH3fQEO6BK
 73KD5BodHi7+9vYd5FgZUk6x+KX2s0bmetHre4DjFbpLXWH5s1mo6rDz+
 TUXFqjnUXLJMIDD8dGmu7HR6a+L6PAXma1OghENGd5OEeZgjfaQwA7mEJ
 rNrjNCTP5O6wqvXhGsR924rxJyd1qKBcVigCupc2QwAnCTRKO6o7PC7a/ g==;
X-CSE-ConnectionGUID: TxbAoKKRT+2T4Qv23Ctg8w==
X-CSE-MsgGUID: 0aoVm4t/TQq7j+c1gzpZ6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="15722040"
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="15722040"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:09:01 -0700
X-CSE-ConnectionGUID: j+gHFWhwQTamYfjLvdaZQg==
X-CSE-MsgGUID: cB/JmU0EQnWN5lC/uJvnAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,247,1712646000"; d="scan'208";a="41377946"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.176])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2024 04:09:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 07/11] drm/i915/dsb: Convert the DSB code to use
 intel_display rather than i915
In-Reply-To: <20240611133344.30673-8-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240611133344.30673-1-ville.syrjala@linux.intel.com>
 <20240611133344.30673-8-ville.syrjala@linux.intel.com>
Date: Tue, 18 Jun 2024 14:08:57 +0300
Message-ID: <8734pah5iu.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Tue, 11 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> The future direction will be to mainly use intel_display
> rather than i915 in the display code. Start on that path
> for the DSB code.

Yay! \o/


>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 52 ++++++++++++------------
>  1 file changed, 26 insertions(+), 26 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 8ae7bcfa8403..bee48ac419ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -85,10 +85,10 @@ struct intel_dsb {
>  static bool assert_dsb_has_room(struct intel_dsb *dsb)
>  {
>  	struct intel_crtc *crtc =3D dsb->crtc;
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc->base.dev);
>=20=20
>  	/* each instruction is 2 dwords */
> -	return !drm_WARN(&i915->drm, dsb->free_pos > dsb->size - 2,
> +	return !drm_WARN(display->drm, dsb->free_pos > dsb->size - 2,
>  			 "[CRTC:%d:%s] DSB %d buffer overflow\n",
>  			 crtc->base.base.id, crtc->base.name, dsb->id);
>  }
> @@ -96,25 +96,25 @@ static bool assert_dsb_has_room(struct intel_dsb *dsb)
>  static void intel_dsb_dump(struct intel_dsb *dsb)
>  {
>  	struct intel_crtc *crtc =3D dsb->crtc;
> -	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc->base.dev);
>  	int i;
>=20=20
> -	drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] DSB %d commands {\n",
> +	drm_dbg_kms(display->drm, "[CRTC:%d:%s] DSB %d commands {\n",
>  		    crtc->base.base.id, crtc->base.name, dsb->id);
>  	for (i =3D 0; i < ALIGN(dsb->free_pos, 64 / 4); i +=3D 4)
> -		drm_dbg_kms(&i915->drm,
> +		drm_dbg_kms(display->drm,
>  			    " 0x%08x: 0x%08x 0x%08x 0x%08x 0x%08x\n", i * 4,
>  			    intel_dsb_buffer_read(&dsb->dsb_buf, i),
>  			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 1),
>  			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 2),
>  			    intel_dsb_buffer_read(&dsb->dsb_buf, i + 3));
> -	drm_dbg_kms(&i915->drm, "}\n");
> +	drm_dbg_kms(display->drm, "}\n");
>  }
>=20=20
> -static bool is_dsb_busy(struct drm_i915_private *i915, enum pipe pipe,
> +static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
>  			enum intel_dsb_id dsb_id)
>  {
> -	return intel_de_read_fw(i915, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
> +	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_B=
USY;
>  }
>=20=20
>  static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
> @@ -343,27 +343,27 @@ static void _intel_dsb_commit(struct intel_dsb *dsb=
, u32 ctrl,
>  			      int dewake_scanline)
>  {
>  	struct intel_crtc *crtc =3D dsb->crtc;
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>  	u32 tail;
>=20=20
>  	tail =3D dsb->free_pos * 4;
> -	if (drm_WARN_ON(&dev_priv->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
> +	if (drm_WARN_ON(display->drm, !IS_ALIGNED(tail, CACHELINE_BYTES)))
>  		return;
>=20=20
> -	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
> -		drm_err(&dev_priv->drm, "[CRTC:%d:%s] DSB %d is busy\n",
> +	if (is_dsb_busy(display, pipe, dsb->id)) {
> +		drm_err(display->drm, "[CRTC:%d:%s] DSB %d is busy\n",
>  			crtc->base.base.id, crtc->base.name, dsb->id);
>  		return;
>  	}
>=20=20
> -	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
> +	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
>  			  ctrl | DSB_ENABLE);
>=20=20
> -	intel_de_write_fw(dev_priv, DSB_CHICKEN(pipe, dsb->id),
> +	intel_de_write_fw(display, DSB_CHICKEN(pipe, dsb->id),
>  			  dsb_chicken(crtc));
>=20=20
> -	intel_de_write_fw(dev_priv, DSB_HEAD(pipe, dsb->id),
> +	intel_de_write_fw(display, DSB_HEAD(pipe, dsb->id),
>  			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf));
>=20=20
>  	if (dewake_scanline >=3D 0) {
> @@ -371,7 +371,7 @@ static void _intel_dsb_commit(struct intel_dsb *dsb, =
u32 ctrl,
>=20=20
>  		hw_dewake_scanline =3D intel_crtc_scanline_to_hw(crtc, dewake_scanline=
);
>=20=20
> -		intel_de_write_fw(dev_priv, DSB_PMCTRL(pipe, dsb->id),
> +		intel_de_write_fw(display, DSB_PMCTRL(pipe, dsb->id),
>  				  DSB_ENABLE_DEWAKE |
>  				  DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
>=20=20
> @@ -380,12 +380,12 @@ static void _intel_dsb_commit(struct intel_dsb *dsb=
, u32 ctrl,
>  		 * or close to racing past the target scanline.
>  		 */
>  		diff =3D dewake_scanline - intel_get_crtc_scanline(crtc);
> -		intel_de_write_fw(dev_priv, DSB_PMCTRL_2(pipe, dsb->id),
> +		intel_de_write_fw(display, DSB_PMCTRL_2(pipe, dsb->id),
>  				  (diff >=3D 0 && diff < 5 ? DSB_FORCE_DEWAKE : 0) |
>  				  DSB_BLOCK_DEWAKE_EXTENSION);
>  	}
>=20=20
> -	intel_de_write_fw(dev_priv, DSB_TAIL(pipe, dsb->id),
> +	intel_de_write_fw(display, DSB_TAIL(pipe, dsb->id),
>  			  intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf) + tail);
>  }
>=20=20
> @@ -407,21 +407,21 @@ void intel_dsb_commit(struct intel_dsb *dsb,
>  void intel_dsb_wait(struct intel_dsb *dsb)
>  {
>  	struct intel_crtc *crtc =3D dsb->crtc;
> -	struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
> +	struct intel_display *display =3D to_intel_display(crtc->base.dev);
>  	enum pipe pipe =3D crtc->pipe;
>=20=20
> -	if (wait_for(!is_dsb_busy(dev_priv, pipe, dsb->id), 1)) {
> +	if (wait_for(!is_dsb_busy(display, pipe, dsb->id), 1)) {
>  		u32 offset =3D intel_dsb_buffer_ggtt_offset(&dsb->dsb_buf);
>=20=20
> -		intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id),
> +		intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id),
>  				  DSB_ENABLE | DSB_HALT);
>=20=20
> -		drm_err(&dev_priv->drm,
> +		drm_err(display->drm,
>  			"[CRTC:%d:%s] DSB %d timed out waiting for idle (current head=3D0x%x,=
 head=3D0x%x, tail=3D0x%x)\n",
>  			crtc->base.base.id, crtc->base.name, dsb->id,
> -			intel_de_read_fw(dev_priv, DSB_CURRENT_HEAD(pipe, dsb->id)) - offset,
> -			intel_de_read_fw(dev_priv, DSB_HEAD(pipe, dsb->id)) - offset,
> -			intel_de_read_fw(dev_priv, DSB_TAIL(pipe, dsb->id)) - offset);
> +			intel_de_read_fw(display, DSB_CURRENT_HEAD(pipe, dsb->id)) - offset,
> +			intel_de_read_fw(display, DSB_HEAD(pipe, dsb->id)) - offset,
> +			intel_de_read_fw(display, DSB_TAIL(pipe, dsb->id)) - offset);
>=20=20
>  		intel_dsb_dump(dsb);
>  	}
> @@ -429,7 +429,7 @@ void intel_dsb_wait(struct intel_dsb *dsb)
>  	/* Attempt to reset it */
>  	dsb->free_pos =3D 0;
>  	dsb->ins_start_offset =3D 0;
> -	intel_de_write_fw(dev_priv, DSB_CTRL(pipe, dsb->id), 0);
> +	intel_de_write_fw(display, DSB_CTRL(pipe, dsb->id), 0);
>  }
>=20=20
>  /**

--=20
Jani Nikula, Intel
