Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E3080A228
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 12:28:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB0E010EA5B;
	Fri,  8 Dec 2023 11:28:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4EFE10EA5B
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 11:28:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702034917; x=1733570917;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=qggrYi1PwK2HVbyQ3mLwNOjXHc5hsPBg+52S+9IUREo=;
 b=BNFe+rGTPWD+HA0F924UqBipg/MMGgY39/VGy2UKKStVPFjmuu//oLhy
 vCISZyECuef+3KGl/rENq6Qcp6PXhnu1an4fGpnuTphSzqMTXczNziCRB
 qTeYTK/HgwI5E5VUsAmJwQhye1yHB0B9MUf209fQCd8csDwWFtveBeJhf
 DuFhme6yo+SF/gcyuPoss80yo+WN259vNbqmDhiXHRwBKtdih6MmXCzlS
 PDDuvMKItlLxGh2CueZ3rGxIXwgxJJB4x40htKjdueAh11bg79pqNfyxQ
 RVx1Lf1UtdEQgfa9dlEMwnW1oa13VhJqhbqIWThGKgWGjkRRL6lcM+vok w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="384797254"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="384797254"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 03:28:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10917"; a="895509798"
X-IronPort-AV: E=Sophos;i="6.04,260,1695711600"; d="scan'208";a="895509798"
Received: from mvafin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.63.236])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 03:28:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: fix display ver 12-13 fault error handling
In-Reply-To: <20231208112008.2904497-1-jani.nikula@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231208112008.2904497-1-jani.nikula@intel.com>
Date: Fri, 08 Dec 2023 13:28:24 +0200
Message-ID: <87jzppyluv.fsf@intel.com>
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>, stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 08 Dec 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> Unless I'm completely misreading the bspec, there are no defined bits
> for plane gtt fault errors in DE PIPE IIR for a display versions
> 12-14. This would explain why DG2 in the linked bug is getting thousands
> of fault errors.
>
> Bspec: 50335
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/9769

Okay, looking at the bug, this seems optimistic, but it might clear the
ratelimited fault errors.

> Fixes: 99e2d8bcb887 ("drm/i915/rkl: Limit number of universal planes to 5=
")
> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Cc: <stable@vger.kernel.org> # v5.9+
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 4 +++-
>  drivers/gpu/drm/i915/i915_reg.h                  | 3 ++-
>  2 files changed, 5 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index f8ed53f30b2e..7bede5b56286 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -834,7 +834,9 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_priv=
ate *dev_priv)
>=20=20
>  static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  {
> -	if (DISPLAY_VER(dev_priv) >=3D 13 || HAS_D12_PLANE_MINIMIZATION(dev_pri=
v))
> +	if (DISPLAY_VER(dev_priv) >=3D 14)
> +		return MTL_DE_PIPE_IRQ_FAULT_ERRORS;
> +	else if (DISPLAY_VER(dev_priv) >=3D 12)
>  		return RKL_DE_PIPE_IRQ_FAULT_ERRORS;
>  	else if (DISPLAY_VER(dev_priv) >=3D 11)
>  		return GEN11_DE_PIPE_IRQ_FAULT_ERRORS;
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index 27dc903f0553..fcf980694cb4 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4354,7 +4354,8 @@
>  	 GEN11_PIPE_PLANE7_FAULT | \
>  	 GEN11_PIPE_PLANE6_FAULT | \
>  	 GEN11_PIPE_PLANE5_FAULT)
> -#define RKL_DE_PIPE_IRQ_FAULT_ERRORS \
> +#define RKL_DE_PIPE_IRQ_FAULT_ERRORS	0
> +#define MTL_DE_PIPE_IRQ_FAULT_ERRORS \
>  	(GEN9_DE_PIPE_IRQ_FAULT_ERRORS | \
>  	 GEN11_PIPE_PLANE5_FAULT)

--=20
Jani Nikula, Intel
