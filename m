Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FAED6CC7CC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 18:22:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2546610E147;
	Tue, 28 Mar 2023 16:22:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 18BBD10E147
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 16:22:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680020550; x=1711556550;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=51Q6PNMcixeQRIJfLxKYuZ73Ww7wdpxCk2zjmup+jo4=;
 b=M9vHURPck86JCL5MvOnk8ymoQgrrzMdIJVqfnfelq9cc2sOxAfhw1kQ7
 V1NpZ+gcqyTqsvewCshhk7Zz/gCV2w7j6gFeIVtMI7lT6dTJmSDOpY/Rw
 2CawEgO+2bzIvDfwT2kqKCLPoB4n0OGb6TY+IIUASu8qgXxVbo4Tsw1WW
 7I+l+/XVk0AmTau2JJypISiQatsugaC0fdlP+h2v0zTK7V1xxbtwBYVsx
 ZvtLLJsB8PfYVqwrKuVFzWOCIfCbCQvkQCGL8JpXIx1HJFHraOckDcD6E
 fdda1CggsysWb/UU2wf5rtu5a6C8uQ78Zk2mZbpAkt4b+3lPOui5u0/Ck A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="403229765"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="403229765"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 09:22:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="661239097"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="661239097"
Received: from mmetzger-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.49.159])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 09:22:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20230327161223.406573-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230327161223.406573-1-rodrigo.vivi@intel.com>
Date: Tue, 28 Mar 2023 19:22:24 +0300
Message-ID: <87tty44zi7.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Restore dsparb_lock.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 27 Mar 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> uncore->lock only protects the forcewake domain itself,
> not the register accesses.
>
> uncore's _fw alternatives are for cases where the domains
> are not needed because we are sure that they are already
> awake.
>
> So the move towards the uncore's _fw alternatives seems
> right, however using the uncore-lock to protect the dsparb
> registers seems an abuse of the uncore-lock.
>
> Let's restore the previous individual lock and try to get
> rid of the direct uncore accesses from the display code.
>
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20230308165859.235520=
-1-rodrigo.vivi@intel.com
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c            | 13 ++-----------
>  drivers/gpu/drm/i915/display/intel_display_core.h |  3 +++
>  drivers/gpu/drm/i915/i915_driver.c                |  1 +
>  3 files changed, 6 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i91=
5/display/i9xx_wm.c
> index caef72d38798..8fe0b5c63d3a 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -1771,16 +1771,7 @@ static void vlv_atomic_update_fifo(struct intel_at=
omic_state *state,
>=20=20
>  	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
>=20=20
> -	/*
> -	 * uncore.lock serves a double purpose here. It allows us to
> -	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
> -	 * it protects the DSPARB registers from getting clobbered by
> -	 * parallel updates from multiple pipes.
> -	 *
> -	 * intel_pipe_update_start() has already disabled interrupts
> -	 * for us, so a plain spin_lock() is sufficient here.
> -	 */
> -	spin_lock(&uncore->lock);
> +	spin_lock(&dev_priv->display.wm.dsparb_lock);
>=20=20
>  	switch (crtc->pipe) {
>  	case PIPE_A:
> @@ -1840,7 +1831,7 @@ static void vlv_atomic_update_fifo(struct intel_ato=
mic_state *state,
>=20=20
>  	intel_uncore_posting_read_fw(uncore, DSPARB);
>=20=20
> -	spin_unlock(&uncore->lock);
> +	spin_unlock(&dev_priv->display.wm.dsparb_lock);
>  }
>=20=20
>  #undef VLV_FIFO
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 0b5509f268a7..e4da8902c878 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -264,6 +264,9 @@ struct intel_wm {
>  	 */
>  	struct mutex wm_mutex;
>=20=20
> +	/* protects DSPARB registers on pre-g4x/vlv/chv */
> +	spinlock_t dsparb_lock;
> +
>  	bool ipc_enabled;
>  };
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i9=
15_driver.c
> index 12b5296ee744..e90a0c0403a6 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -223,6 +223,7 @@ static int i915_driver_early_probe(struct drm_i915_pr=
ivate *dev_priv)
>  	mutex_init(&dev_priv->display.pps.mutex);
>  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
>  	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);

Can we do this in i9xx_wm_init() instead?


>=20=20
>  	i915_memcpy_init_early(dev_priv);
>  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);

--=20
Jani Nikula, Intel Open Source Graphics Center
