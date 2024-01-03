Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5148230AA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 16:38:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46E6D10E2A7;
	Wed,  3 Jan 2024 15:38:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56C4E10E2A7
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 15:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704296288; x=1735832288;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=brNHs/b2nEhy8Vbh60jLp4KZYGxR63m0oPChizU5Vjk=;
 b=K9LxvUf8+CCpICjbw12f9Ox2WwVoVG6oedcnToajHJ4szc6YJEIZ1dM9
 RonRDWY+fOWEnUQ3eQDmT8elR0CDck0yGE/3KJyZJqekEpUeWQwvTIMv0
 pvthlVLym8ah9+k78A8HG1jVIsU3pnnCUZmc4VyCJW6w+/Zt07VYkyIC1
 0JopHkChBntYcAnW4MDRaJD9WUADqvpmpNglFnyR6DMkGR79IKQlPRj3O
 1nrLFlx1mSxhvjhMNt1UqWtm9k7QnvL/QSfSOFi0z05PPDf5g+lLEpsJU
 DONRR2WaIgvuPuP91+uetBotmZHU8p7Y2iLnuk9GudS79JMacF0hydcXh A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="461330902"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="461330902"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 07:38:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="729810453"
X-IronPort-AV: E=Sophos;i="6.04,327,1695711600"; d="scan'208";a="729810453"
Received: from lwenners-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.35.39])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 07:38:05 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Disable DSB in Xe KMD
In-Reply-To: <20240103152618.93488-1-jose.souza@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240103152618.93488-1-jose.souza@intel.com>
Date: Wed, 03 Jan 2024 17:37:52 +0200
Message-ID: <87y1d6zaun.fsf@intel.com>
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 03 Jan 2024, Jos=C3=A9 Roberto de Souza <jose.souza@intel.com> wrot=
e:
> Often getting DBS overflows when starting Xorg or Wayland compositor
> when running Xe KMD.
> Issue was reported but nothing was done, so disabling DSB as whole
> until properly fixed.

Please just incorporate this into the HAS_DSB() check, and don't litter
the source with ifdefs.

Thanks,
Jani.

>
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/989
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1031
> Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1072
> Cc: Animesh Manna <animesh.manna@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Jos=C3=A9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dsb.c | 5 +++++
>  1 file changed, 5 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i=
915/display/intel_dsb.c
> index 482c28b5c2de5..bc11c447afe03 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -321,6 +321,7 @@ void intel_dsb_finish(struct intel_dsb *dsb)
>  	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
>  }
>=20=20
> +#ifdef I915
>  static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc=
_state)
>  {
>  	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> @@ -339,6 +340,7 @@ static int intel_dsb_dewake_scanline(const struct int=
el_crtc_state *crtc_state)
>=20=20
>  	return max(0, vblank_start - intel_usecs_to_scanlines(adjusted_mode, la=
tency));
>  }
> +#endif
>=20=20
>  static void _intel_dsb_commit(struct intel_dsb *dsb, u32 ctrl,
>  			      int dewake_scanline)
> @@ -444,6 +446,8 @@ void intel_dsb_wait(struct intel_dsb *dsb)
>  struct intel_dsb *intel_dsb_prepare(const struct intel_crtc_state *crtc_=
state,
>  				    unsigned int max_cmds)
>  {
> +	/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
> +#ifdef I915
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	intel_wakeref_t wakeref;
> @@ -484,6 +488,7 @@ struct intel_dsb *intel_dsb_prepare(const struct inte=
l_crtc_state *crtc_state,
>  		      "[CRTC:%d:%s] DSB %d queue setup failed, will fallback to MMIO f=
or display HW programming\n",
>  		      crtc->base.base.id, crtc->base.name, DSB1);
>=20=20
> +#endif
>  	return NULL;
>  }

--=20
Jani Nikula, Intel
