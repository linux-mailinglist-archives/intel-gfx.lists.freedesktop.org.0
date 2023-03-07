Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C76626ADE82
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 13:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B90F310E10B;
	Tue,  7 Mar 2023 12:16:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D80B810E111
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678191412; x=1709727412;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=IVKFiFEpVyECqz/eZidYvDWGaGaM3/0J3DAVcCDlSWQ=;
 b=NaxxO0BoG52RkrG9Z+pxgoQB72VP6xo/lNs7BZXIjiLXUWcU5Hs/fDB1
 fiW3CpRm2/i9Xzn3tFwZYtzpILcUJy0UGC/eEXxv4NGy6VveAMnJjD4Ht
 WESqAlWDwIyWi4WRnE35NcV3/KXePOS7ACLfROX/LlAM0/594Sj8+Znfb
 qD956iFKN8j6kGsx5PTAkL/8SsKp8BAuJ6T+5RRs06s/lR7g89Zjd0EYG
 mPXSIF2/v3hXvsDv/1OanR4CypmHW2K846rcecF6II7S3HW4tK6WLJtlT
 F0VzIT2Y2VNXS4tPWa3dCB0EdLfQgscYDkqF1DESGkmkUcw+5vf4iByaf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="400658280"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="400658280"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:16:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="709032558"
X-IronPort-AV: E=Sophos;i="5.98,240,1673942400"; d="scan'208";a="709032558"
Received: from jnikula-mobl4.fi.intel.com (HELO localhost) ([10.237.66.155])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 04:16:51 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230306152841.6563-1-ville.syrjala@linux.intel.com>
Date: Tue, 07 Mar 2023 14:16:48 +0200
Message-ID: <87cz5ksqmn.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Update vblank timestamping
 stuff on seamless M/N change
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

On Mon, 06 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> When we change the M/N values seamlessly during a fastset we should
> also update the vblank timestamping stuff to make sure the vblank
> timestamp corrections/guesstimations come out exact.
>
> Note that only crtc_clock and framedur_ns can actually end up
> changing here during fastsets. Everything else we touch can
> only change during full modesets.
>
> Technically we should try to do this exactly at the start of
> vblank, but that would require some kind of double buffering
> scheme. Let's skip that for now and just update things right
> after the commit has been submitted to the hardware. This
> means the information will be properly up to date when the
> vblank irq handler goes to work. Only if someone ends up
> querying some vblanky stuff in between the commit and start
> of vblank may we see a slight discrepancy.
>
> Also this same problem really exists for the DRRS downclocking
> stuff. But as that is supposed to be more or less transparent
> to the user, and it only drops to low gear after a long delay
> (1 sec currently) we probably don't have to worry about it.
> Any time something is actively submitting updates DRRS will
> remain in high gear and so the timestamping constants will
> match the hardware state.
>
> Fixes: e6f29923c048 ("drm/i915: Allow M/N change during fastset on bdw+")
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_crtc.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/=
i915/display/intel_crtc.c
> index b79a8834559f..41d381bbb57a 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> @@ -686,6 +686,14 @@ void intel_pipe_update_end(struct intel_crtc_state *=
new_crtc_state)
>  	 */
>  	intel_vrr_send_push(new_crtc_state);
>=20=20
> +	/*
> +	 * Seamless M/N update may need to update frame timings.
> +	 *
> +	 * FIXME Should be synchronized with the start of vblank somehow...
> +	 */
> +	if (new_crtc_state->seamless_m_n && intel_crtc_needs_fastset(new_crtc_s=
tate))
> +		intel_crtc_update_active_timings(new_crtc_state);

Side note, do we ensure somewhere that intel_crtc_needs_modeset() &&
intel_crtc_needs_fastset() is never true?

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> +
>  	local_irq_enable();
>=20=20
>  	if (intel_vgpu_active(dev_priv))

--=20
Jani Nikula, Intel Open Source Graphics Center
