Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A2637EF0D
	for <lists+intel-gfx@lfdr.de>; Thu, 13 May 2021 01:07:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C0B16E58E;
	Wed, 12 May 2021 23:07:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A39B6E58E
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 May 2021 23:07:33 +0000 (UTC)
IronPort-SDR: Nyd67fCGLOtD3HoOx7XG2+CB4+5BoQYH7QvMSGUJiWmk+hNYrF4hDR/r4jSl1imLx9mKZzBsAO
 y6r5FwDqM7VA==
X-IronPort-AV: E=McAfee;i="6200,9189,9982"; a="196732860"
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="196732860"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2021 16:07:29 -0700
IronPort-SDR: kWeXKu2TcSRZOmw5KxJRqjBSgeoH1G3CIEAw2ZWkiUvUveLezygwvrUZJl/cD7zA8u3rayf51l
 +hqWUbfdT7pQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,295,1613462400"; d="scan'208";a="430959792"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga007.jf.intel.com with ESMTP; 12 May 2021 16:07:29 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 16:07:28 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Wed, 12 May 2021 16:07:28 -0700
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Wed, 12 May 2021 16:07:28 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 36/48] drm/i915/adl_p: Enable/disable
 loadgen sharing
Thread-Index: AQHXQ7Hx8YoXPKPQuUm+NhF3s39c8argf6WA
Date: Wed, 12 May 2021 23:07:28 +0000
Message-ID: <f3f0be920a634c5ba331c612c12c3613@intel.com>
References: <20210508022820.780227-1-matthew.d.roper@intel.com>
 <20210508022820.780227-37-matthew.d.roper@intel.com>
In-Reply-To: <20210508022820.780227-37-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.22.254.132]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 36/48] drm/i915/adl_p: Enable/disable
 loadgen sharing
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> Roper
> Sent: Friday, May 7, 2021 7:28 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v3 36/48] drm/i915/adl_p: Enable/disable loadgen
> sharing
> 
> From: Mika Kahola <mika.kahola@intel.com>
> 
> Disable loadgen sharing for DP link rate 1.62 GHz and HDMI 5.94 GHz.
> For all other modes, we can enable loadgen sharing feature.
> 
> BSpec: 55359
> 
> Cc: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h          | 1 +
>  2 files changed, 9 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index bbfa5bcd4c63..6889be6b9e81 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -1470,6 +1470,14 @@ tgl_dkl_phy_ddi_vswing_sequence(struct
> intel_encoder *encoder,
>  		val = intel_de_read(dev_priv, DKL_TX_DPCNTL2(tc_port));
>  		val &= ~DKL_TX_DP20BITMODE;
>  		intel_de_write(dev_priv, DKL_TX_DPCNTL2(tc_port), val);
> +
> +		if ((intel_crtc_has_dp_encoder(crtc_state) &&
> +		    crtc_state->port_clock == 162000) ||
> +		    (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> +		    crtc_state->port_clock == 594000))
> +			val |= DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
> +		else
> +			val &= ~DKL_TX_LOADGEN_SHARING_PMD_DISABLE;
>  	}
>  }
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h index 9a52711e3920..3afbea20bdd3
> 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -10893,6 +10893,7 @@ enum skl_power_gate {
>  						     _DKL_TX_DPCNTL1)
> 
>  #define _DKL_TX_DPCNTL2				0x2C8
> +#define  DKL_TX_LOADGEN_SHARING_PMD_DISABLE            REG_BIT(12)
>  #define  DKL_TX_DP20BITMODE				(1 << 2)
>  #define DKL_TX_DPCNTL2(tc_port) _MMIO(_PORT(tc_port, \
>  						     _DKL_PHY1_BASE, \
> --
> 2.25.4
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
