Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7151C886D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 May 2020 13:38:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DDF86E978;
	Thu,  7 May 2020 11:38:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34796E0E8
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2020 11:38:10 +0000 (UTC)
IronPort-SDR: V3v1k8H0RclWLOEXQZuu72dCTx1yNcGsz5H1iPmU9VojXeBwi6r2laV8ejaeHY2GSHTYeoZ0KP
 kJs/4OTktiBw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 04:38:10 -0700
IronPort-SDR: DyyB19Y8iw9eJpUaxyht1qacvIZEL7X+edz89ZPjl0ebQ23mae/jibAEmaS1JGEOImEgBpIWoK
 EoN7MuvP7Qaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="305098370"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by FMSMGA003.fm.intel.com with ESMTP; 07 May 2020 04:38:10 -0700
Received: from orsmsx114.amr.corp.intel.com (10.22.240.10) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 7 May 2020 04:38:09 -0700
Received: from orsmsx108.amr.corp.intel.com ([169.254.2.68]) by
 ORSMSX114.amr.corp.intel.com ([169.254.8.97]) with mapi id 14.03.0439.000;
 Thu, 7 May 2020 04:38:09 -0700
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 12/22] drm/i915/rkl: Check proper SDEISR
 bits for TC1 and TC2 outputs
Thread-Index: AQHWImbHjoccf1qplUmq57Dyn4nYHaicgwHg
Date: Thu, 7 May 2020 11:38:08 +0000
Message-ID: <83F5C7385F545743AD4FB2A62F75B073482C2128@ORSMSX108.amr.corp.intel.com>
References: <20200504225227.464666-1-matthew.d.roper@intel.com>
 <20200504225227.464666-13-matthew.d.roper@intel.com>
In-Reply-To: <20200504225227.464666-13-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZDQwMTNlNTUtZjQ2ZS00MzIwLWEwMTgtYjAyNzg1ZjQwNTkyIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiQWQ0cW5KV2htVG5haDFwYkh2Q054T3ZIblp0c1l3ZUVXZmxWdUVqTUkyYkxnNHN2Z1krWkc5R3dKTGNnaDRRUSJ9
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2 12/22] drm/i915/rkl: Check proper SDEISR
 bits for TC1 and TC2 outputs
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Matt
> Roper
> Sent: Tuesday, May 5, 2020 4:22 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: De Marchi, Lucas <lucas.demarchi@intel.com>
> Subject: [Intel-gfx] [PATCH v2 12/22] drm/i915/rkl: Check proper SDEISR bits for
> TC1 and TC2 outputs
> 
> When Rocket Lake is paired with a TGP PCH, the last two outputs utilize the
> TC1 and TC2 hpd pins, even though these are combo outputs.
> 
> Bspec: 49181
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Looks good.

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 6952b0295096..d32bbcd99b8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6172,8 +6172,12 @@ static bool bxt_digital_port_connected(struct
> intel_encoder *encoder)  static bool intel_combo_phy_connected(struct
> drm_i915_private *dev_priv,
>  				      enum phy phy)
>  {
> -	if (HAS_PCH_MCC(dev_priv) && phy == PHY_C)
> -		return intel_de_read(dev_priv, SDEISR) &
> SDE_TC_HOTPLUG_ICP(PORT_TC1);
> +	if (IS_ROCKETLAKE(dev_priv) && phy >= PHY_C)
> +		return intel_de_read(dev_priv, SDEISR) &
> +			SDE_TC_HOTPLUG_ICP(phy - PHY_C);
> +	else if (HAS_PCH_MCC(dev_priv) && phy == PHY_C)
> +		return intel_de_read(dev_priv, SDEISR) &
> +			SDE_TC_HOTPLUG_ICP(PORT_TC1);
> 
>  	return intel_de_read(dev_priv, SDEISR) &
> SDE_DDI_HOTPLUG_ICP(phy);  }
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
