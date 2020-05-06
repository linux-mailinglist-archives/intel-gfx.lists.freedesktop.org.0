Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 280A61C6CB9
	for <lists+intel-gfx@lfdr.de>; Wed,  6 May 2020 11:19:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7647B6E83B;
	Wed,  6 May 2020 09:19:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F0096E4B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2020 09:19:21 +0000 (UTC)
IronPort-SDR: VZBoWE7pXueONCIbUPM8JNA6dBK5e55gDTfOEpOBo2YgiRqAdzTCyLoHWXUwcZXctOdDoMfsE5
 RfFTCt80qctA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2020 02:19:20 -0700
IronPort-SDR: 1sQgM5gEbTtSaxZq4IOwNL1q31Xk7koRYPCu+4rHuEKrmejFu9QF2Z9QkWzOPtYQi/p8b3HHh2
 9+bUECy3H3QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,358,1583222400"; d="scan'208";a="304743555"
Received: from orsmsx109.amr.corp.intel.com ([10.22.240.7])
 by FMSMGA003.fm.intel.com with ESMTP; 06 May 2020 02:19:19 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.68]) by
 ORSMSX109.amr.corp.intel.com ([169.254.11.125]) with mapi id 14.03.0439.000;
 Wed, 6 May 2020 02:19:19 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 15/22] drm/i915/rkl: Add DDC pin mapping
Thread-Index: AQHWImbDGee1cS5JskyP6umDh6fN1aiayd7Q
Date: Wed, 6 May 2020 09:19:19 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482C11E5@ORSMSX108.amr.corp.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-16-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-16-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZGJiZjUyN2EtNTM4NS00MGI1LTg4YWYtNmVlOGNhODYyMjk1IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiS1FOXC9OajA3T1hVMk0za1Y2Y3ZiRTdhTGpMU2pUSit3UTRCTUxrVGs2V0lCQW1HUUtPZDVJQ2F6NktJNkVWNVcifQ==
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 15/22] drm/i915/rkl: Add DDC pin mapping
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
> Sent: Tuesday, May 5, 2020 4:22 AM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2 15/22] drm/i915/rkl: Add DDC pin mapping
> 
> The pin mapping for the final two outputs varies according to which PCH is
> present on the platform:  with TGP the pins are remapped into the TC range,
> whereas with CMP they stay in the traditional combo output range.
> 
> Bspec: 49181
> Cc: Aditya Swarup <aditya.swarup@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 22 +++++++++++++++++++++-
>  1 file changed, 21 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 010f37240710..a31a98d26882 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -3082,6 +3082,24 @@ static u8 mcc_port_to_ddc_pin(struct
> drm_i915_private *dev_priv, enum port port)
>  	return ddc_pin;
>  }
> 
> +static u8 rkl_port_to_ddc_pin(struct drm_i915_private *dev_priv, enum
> +port port) {
> +	enum phy phy = intel_port_to_phy(dev_priv, port);
> +
> +	WARN_ON(port == PORT_C);
> +
> +	/*
> +	 * Pin mapping for RKL depends on which PCH is present.  With TGP,
> the
> +	 * final two outputs use type-c pins, even though they're actually
> +	 * combo outputs.  With CMP, the traditional DDI A-D pins are used for
> +	 * all outputs.
> +	 */
> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP && phy >= PHY_C)
> +		return GMBUS_PIN_9_TC1_ICP + phy - PHY_C;
> +
> +	return GMBUS_PIN_1_BXT + phy;
> +}
> +
>  static u8 g4x_port_to_ddc_pin(struct drm_i915_private *dev_priv,
>  			      enum port port)
>  {
> @@ -3119,7 +3137,9 @@ static u8 intel_hdmi_ddc_pin(struct intel_encoder
> *encoder)
>  		return ddc_pin;
>  	}
> 
> -	if (HAS_PCH_MCC(dev_priv))
> +	if (IS_ROCKETLAKE(dev_priv))
> +		ddc_pin = rkl_port_to_ddc_pin(dev_priv, port);
> +	else if (HAS_PCH_MCC(dev_priv))
>  		ddc_pin = mcc_port_to_ddc_pin(dev_priv, port);
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		ddc_pin = icl_port_to_ddc_pin(dev_priv, port);
> --
> 2.24.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
