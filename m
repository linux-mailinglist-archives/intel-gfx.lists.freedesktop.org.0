Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9031C2000
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 23:51:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F1226ECDF;
	Fri,  1 May 2020 21:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46C166ECDF
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 21:51:32 +0000 (UTC)
IronPort-SDR: yw/RZ+fQYmQ/wEMDtJNeVIG8DgtXBSjssZt2+Djq79enVLflbXKdWp3RR4YbMdHXnn6B8bRJmd
 4q0FoCbPniUQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 14:51:31 -0700
IronPort-SDR: p0AstBLHA/mXapT3u/qFbJe5miYL0oU4+1NexJmcBDvOICazI5S4FK4RK0Vai0fT9uWosZtMln
 JqS0Yv2eSN5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,341,1583222400"; d="scan'208";a="276934532"
Received: from fmsmsx103.amr.corp.intel.com ([10.18.124.201])
 by orsmga002.jf.intel.com with ESMTP; 01 May 2020 14:51:31 -0700
Received: from fmsmsx118.amr.corp.intel.com (10.18.116.18) by
 FMSMSX103.amr.corp.intel.com (10.18.124.201) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 1 May 2020 14:51:30 -0700
Received: from fmsmsx115.amr.corp.intel.com ([169.254.4.151]) by
 fmsmsx118.amr.corp.intel.com ([169.254.1.88]) with mapi id 14.03.0439.000;
 Fri, 1 May 2020 14:51:30 -0700
From: "Paauwe, Bob J" <bob.j.paauwe@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/icp: Add Wa_14010685332
Thread-Index: AQHWIACoGJrNz0sXjUme9wKiFoonAKiTxO2A
Date: Fri, 1 May 2020 21:51:29 +0000
Message-ID: <2BC816AD90F74A48BE4D753FE4818233BC0A7CA3@fmsmsx115.amr.corp.intel.com>
References: <20200501213701.371443-1-matthew.d.roper@intel.com>
In-Reply-To: <20200501213701.371443-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.108]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/icp: Add Wa_14010685332
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reviewed by: Bob.J.Paauwe@intel.com

--
Bob Paauwe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0
Bob.J.Paauwe@intel.com
IOTG / Platform Software Engineering
Intel Corp.=A0 Folsom, CA
(916) 356-6193=A0=A0=A0=A0
(530) 409-0831 (cell)

> -----Original Message-----
> From: Roper, Matthew D <matthew.d.roper@intel.com>
> Sent: Friday, May 01, 2020 2:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Roper, Matthew D <matthew.d.roper@intel.com>; Paauwe, Bob J
> <bob.j.paauwe@intel.com>
> Subject: [PATCH] drm/i915/icp: Add Wa_14010685332
> =

> We need to toggle a SDE chicken bit on and then off as the final
> step when disabling interrupts in preparation for runtime suspend.
> =

> Bspec: 33450
> Bspec: 8402
> Cc: Bob Paauwe <bob.j.paauwe@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c | 8 ++++++++
>  drivers/gpu/drm/i915/i915_reg.h | 1 +
>  2 files changed, 9 insertions(+)
> =

> diff --git a/drivers/gpu/drm/i915/i915_irq.c
> b/drivers/gpu/drm/i915/i915_irq.c
> index bd722d0650c8..f8202a32c112 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -2870,6 +2870,14 @@ static void gen11_display_irq_reset(struct
> drm_i915_private *dev_priv)
> =

>  	if (INTEL_PCH_TYPE(dev_priv) >=3D PCH_ICP)
>  		GEN3_IRQ_RESET(uncore, SDE);
> +
> +	/* Wa_14010685332:icl */
> +	if (INTEL_PCH_TYPE(dev_priv) =3D=3D PCH_ICP) {
> +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> +				 SBCLK_RUN_REFCLK_DIS,
> SBCLK_RUN_REFCLK_DIS);
> +		intel_uncore_rmw(uncore, SOUTH_CHICKEN1,
> +				 SBCLK_RUN_REFCLK_DIS, 0);
> +	}
>  }
> =

>  static void gen11_irq_reset(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h
> b/drivers/gpu/drm/i915/i915_reg.h
> index fd9f2904d93c..34af899751e2 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8573,6 +8573,7 @@ enum {
>  #define  FDI_BC_BIFURCATION_SELECT	(1 << 12)
>  #define  CHASSIS_CLK_REQ_DURATION_MASK	(0xf << 8)
>  #define  CHASSIS_CLK_REQ_DURATION(x)	((x) << 8)
> +#define  SBCLK_RUN_REFCLK_DIS		(1 << 7)
>  #define  SPT_PWM_GRANULARITY		(1 << 0)
>  #define SOUTH_CHICKEN2		_MMIO(0xc2004)
>  #define  FDI_MPHY_IOSFSB_RESET_STATUS	(1 << 13)
> --
> 2.24.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
