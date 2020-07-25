Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC6F22D41E
	for <lists+intel-gfx@lfdr.de>; Sat, 25 Jul 2020 05:08:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E726EA58;
	Sat, 25 Jul 2020 03:08:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B97106EA58
 for <intel-gfx@lists.freedesktop.org>; Sat, 25 Jul 2020 03:08:12 +0000 (UTC)
IronPort-SDR: KFevufdco3VWNB2OV12vqekieUvi7pLHbLCWQXuygNW4DE3O66wZ43Rl8oARhQRW08XZyZ/CYg
 u4BD1T8gaWog==
X-IronPort-AV: E=McAfee;i="6000,8403,9692"; a="149995023"
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="149995023"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 20:08:12 -0700
IronPort-SDR: rBIpEIBWPSFUpqSEJP4bLJNXuXlAEZhzSNdk0ZXv/NuZTGjuMW5OPuf4ndkhhpU0Zcyp5Hxr2b
 jZzVer7XrNyg==
X-IronPort-AV: E=Sophos;i="5.75,392,1589266800"; d="scan'208";a="463436822"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2020 20:08:11 -0700
Date: Fri, 24 Jul 2020 20:08:10 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>
Message-ID: <20200725030810.GM3650202@mdroper-desk1.amr.corp.intel.com>
References: <20200723221021.40456-1-jose.souza@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200723221021.40456-1-jose.souza@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Implement WA 14011294188
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 23, 2020 at 03:10:21PM -0700, Jos=E9 Roberto de Souza wrote:
> Although the WA description targets the platforms it is a workaround
> for the affected PCHs, that is why it is being checked.
> =

> BSpec: 52890
> BSpec: 53273
> BSpec: 52888
> Signed-off-by: Jos=E9 Roberto de Souza <jose.souza@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 5 +++++
>  drivers/gpu/drm/i915/i915_reg.h                    | 1 +
>  2 files changed, 6 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers=
/gpu/drm/i915/display/intel_display_power.c
> index 0c713e83274d..3efb3d6e4474 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -5302,6 +5302,11 @@ static void icl_display_core_init(struct drm_i915_=
private *dev_priv,
>  =

>  	gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
>  =

> +	/* Wa_14011294188:ehl,jsl,tgl,rkl */
> +	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_JSP)

I think we also want an "&& INTEL_PCH_TYPE < PCH_DG1" here to exclude
"fake" PCH's.

Aside from that,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> +		intel_de_rmw(dev_priv, SOUTH_DSPCLK_GATE_D, 0,
> +			     PCH_DPMGUNIT_CLOCK_GATE_DISABLE);
> +
>  	/* 1. Enable PCH reset handshake. */
>  	intel_pch_reset_handshake(dev_priv, !HAS_PCH_NOP(dev_priv));
>  =

> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index a0d31f3bf634..5eae593ee784 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8730,6 +8730,7 @@ enum {
>  #define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
>  #define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
>  #define  PCH_DPLSUNIT_CLOCK_GATE_DISABLE (1 << 29)
> +#define  PCH_DPMGUNIT_CLOCK_GATE_DISABLE (1 << 15)
>  #define  PCH_CPUNIT_CLOCK_GATE_DISABLE (1 << 14)
>  #define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
>  #define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
> -- =

> 2.27.0
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
