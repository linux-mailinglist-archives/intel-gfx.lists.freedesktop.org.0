Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE388C9A6C
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 11:35:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9927D10E230;
	Mon, 20 May 2024 09:35:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Le8A2AaO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03AE910E230
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 09:35:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716197721; x=1747733721;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QO0R46n1mb2IqH8mTXMWLmpJyj6IuGPl7xbyVm6xcQs=;
 b=Le8A2AaOAuzXY3erkyRoEpcW0oTW2FiYFQvTag0tZ9MHtJjFn5Bxxb9s
 +rldF/wfvNVRpvFeqcBp61ACs8MhtWYVkgbf17BNJu6PpW1yw+K80taFp
 vWyNrK6FM3QKRYpXHtk3ZGVG0Oex6wSM/tTatYp7bq0FFHFIcOkcp01RA
 xE+dC0K0mG9gA9Nlmto/be4K79AC+HNSgLkDouIqwFNJpkJyn4hnZOdnZ
 Ws/os0bpmYhUKFyYlyCyjDirFGx0CoktPBQXijDMeyCuHDIqhPaemHblY
 MWz25kpSAZYs3xTav4Ffz4yD6HoDkSqzhJsEzIrePNmbqkQDPDfNHVRp0 g==;
X-CSE-ConnectionGUID: ChspUy2tQlaNkHc+5+JOhQ==
X-CSE-MsgGUID: 9vxp/+g1RyCHnzeyKznJaQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="12505080"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="12505080"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:35:20 -0700
X-CSE-ConnectionGUID: au6fsTSBTn+m3A0tvExOCQ==
X-CSE-MsgGUID: QvfE++a3Si225FDk6cc/LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="36887395"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 02:35:19 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 04/13] drm/i915: Simplify PIPESRC_ERLY_TPT definition
In-Reply-To: <20240516135622.3498-5-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-5-ville.syrjala@linux.intel.com>
Date: Mon, 20 May 2024 12:35:15 +0300
Message-ID: <8734qcvnak.fsf@intel.com>
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

On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> PIPESRC_ERLY_TPT is a pipe register, and it lives in the 0x70000 range.
> so using _MMIO_TRANS2() for it is not really correct. Also since this
> is a pipe register, and not present on CHV, the registers will be
> equally spaced out, so we can use the simpler _MMIO_PIPE() instead
> of _MMIO_PIPE2().
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cursor.c   | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 4 ++--
>  3 files changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/dr=
m/i915/display/intel_cursor.c
> index b44809899502..7983cbaf83f7 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -525,7 +525,7 @@ static void wa_16021440873(struct intel_plane *plane,
>=20=20
>  	intel_de_write_fw(dev_priv, SEL_FETCH_CUR_CTL(pipe), ctl);
>=20=20
> -	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, pipe),
> +	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(pipe),
>  		       PIPESRC_HEIGHT(et_y_position));
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i=
915/display/intel_psr.c
> index df0d14a5023f..d49e869f6be2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2381,7 +2381,7 @@ void intel_psr2_program_trans_man_trk_ctl(const str=
uct intel_crtc_state *crtc_st
>  	if (!crtc_state->enable_psr2_su_region_et)
>  		return;
>=20=20
> -	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(dev_priv, crtc->pipe),
> +	intel_de_write(dev_priv, PIPE_SRCSZ_ERLY_TPT(crtc->pipe),
>  		       crtc_state->pipe_srcsz_early_tpt);
>  }
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/=
drm/i915/display/intel_psr_regs.h
> index e14cb48f2614..47e3a2e2977c 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -248,8 +248,8 @@
>=20=20
>  /* PSR2 Early transport */
>  #define _PIPE_SRCSZ_ERLY_TPT_A	0x70074
> -
> -#define PIPE_SRCSZ_ERLY_TPT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, tran=
s, _PIPE_SRCSZ_ERLY_TPT_A)
> +#define _PIPE_SRCSZ_ERLY_TPT_B	0x71074
> +#define PIPE_SRCSZ_ERLY_TPT(pipe)	_MMIO_PIPE((pipe), _PIPE_SRCSZ_ERLY_TP=
T_A, _PIPE_SRCSZ_ERLY_TPT_B)
>=20=20
>  #define _SEL_FETCH_PLANE_BASE_1_A		0x70890
>  #define _SEL_FETCH_PLANE_BASE_2_A		0x708B0

--=20
Jani Nikula, Intel
