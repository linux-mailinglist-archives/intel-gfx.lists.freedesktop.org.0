Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 058B78FE5A5
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 13:43:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D8D210E90C;
	Thu,  6 Jun 2024 11:43:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G/zow4iW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE71810E90C
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 11:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717674196; x=1749210196;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=BYmLFRDEJQ/5z3J+qXSIniizz2OVzpvk0rCN6MXm/X8=;
 b=G/zow4iWtlNqI/253lzUxZvLSdnkHvQQURPZNmXi/RL3bjJL7QiYKKuW
 QJvaj3HRbLrUpWAe3+cVBGyJkP05VIUcFBFIeJkVxj4v+Pyv39PWXydYE
 gD8J10ASw6S0ZoA4BL9GL2RAHjqJYpYIkpwpZNPhZMMUmts1ZoFiPmpsb
 Td+2h9kk9qY1yoSt4oza01zzvBRDNrNNiZ4nySZI1eB0cLMee5Vve0mg2
 v5JfaicrvrJNPV3yfkzYrYsAnKMzq1jjQNrCQCTxh/Imz561MT5qQD4/b
 wNA/76bpH19FpVr7Yue4yDEhCfPUz9wjExS20CrpCAOBpiuX9/dJEDSzn g==;
X-CSE-ConnectionGUID: 8qBAAXdoQa6Hk9a3TnmnHw==
X-CSE-MsgGUID: mg/r9iyfR3iEaG7+YtSZew==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="11940058"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="11940058"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:43:15 -0700
X-CSE-ConnectionGUID: hbCnvJllS7yxNCPlb6pPfg==
X-CSE-MsgGUID: 5mOHNBYqT76KOmfOoIAQMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="43046763"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:43:14 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 6/7] drm/i915: Enable pipeDMC fault interrupts on tgl+
In-Reply-To: <20240605111832.21373-7-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240605111832.21373-1-ville.syrjala@linux.intel.com>
 <20240605111832.21373-7-ville.syrjala@linux.intel.com>
Date: Thu, 06 Jun 2024 14:43:12 +0300
Message-ID: <87tti69u0f.fsf@intel.com>
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

On Wed, 05 Jun 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> PipeDMC has its own fault interrupt. Enable that so that
> we can know if things are failing.
>
> While at it, define the other pipeDMC interrupt as well, even
> though we're not currently using it.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++++++++--
>  drivers/gpu/drm/i915/i915_reg.h                  |  2 ++
>  2 files changed, 15 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/g=
pu/drm/i915/display/intel_display_irq.c
> index 219f7693207d..6eb14ffc3c1b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -836,13 +836,24 @@ static u32 gen8_de_port_aux_mask(struct drm_i915_pr=
ivate *dev_priv)
>  static u32 gen8_de_pipe_fault_mask(struct drm_i915_private *dev_priv)
>  {
>  	if (DISPLAY_VER(dev_priv) >=3D 13 || HAS_D12_PLANE_MINIMIZATION(dev_pri=
v))
> -		return GEN9_PIPE_CURSOR_FAULT |
> +		return GEN12_PIPEDMC_FAULT |
> +			GEN9_PIPE_CURSOR_FAULT |
>  			GEN11_PIPE_PLANE5_FAULT |
>  			GEN9_PIPE_PLANE4_FAULT |
>  			GEN9_PIPE_PLANE3_FAULT |
>  			GEN9_PIPE_PLANE2_FAULT |
>  			GEN9_PIPE_PLANE1_FAULT;
> -	else if (DISPLAY_VER(dev_priv) >=3D 11)
> +	else if (DISPLAY_VER(dev_priv) =3D=3D 12)
> +		return GEN12_PIPEDMC_FAULT |
> +			GEN9_PIPE_CURSOR_FAULT |
> +			GEN11_PIPE_PLANE7_FAULT |
> +			GEN11_PIPE_PLANE6_FAULT |
> +			GEN11_PIPE_PLANE5_FAULT |
> +			GEN9_PIPE_PLANE4_FAULT |
> +			GEN9_PIPE_PLANE3_FAULT |
> +			GEN9_PIPE_PLANE2_FAULT |
> +			GEN9_PIPE_PLANE1_FAULT;
> +	else if (DISPLAY_VER(dev_priv) =3D=3D 11)
>  		return GEN9_PIPE_CURSOR_FAULT |
>  			GEN11_PIPE_PLANE7_FAULT |
>  			GEN11_PIPE_PLANE6_FAULT |
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index b85e12bb4781..8cd5abc52a2d 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2625,6 +2625,8 @@
>  #define  GEN8_PIPE_FIFO_UNDERRUN	REG_BIT(31)
>  #define  GEN8_PIPE_CDCLK_CRC_ERROR	REG_BIT(29)
>  #define  GEN8_PIPE_CDCLK_CRC_DONE	REG_BIT(28)
> +#define  GEN12_PIPEDMC_INTERRUPT	REG_BIT(26) /* tgl+ */
> +#define  GEN12_PIPEDMC_FAULT		REG_BIT(25) /* tgl+ */

Marked as pipedmc gtt fault in the spec.

There's also pipe dmc error at bit 17... but the description says
"simple flp queue done interrupt"... *sigh*

>  #define  XELPD_PIPE_SOFT_UNDERRUN	REG_BIT(22) /* adl/dg2+ */
>  #define  GEN11_PIPE_PLANE7_FAULT	REG_BIT(22) /* icl/tgl */
>  #define  XELPD_PIPE_HARD_UNDERRUN	REG_BIT(21) /* adl/dg2+ */

--=20
Jani Nikula, Intel
