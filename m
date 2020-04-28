Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE0051BC239
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2020 17:07:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51AA5899C4;
	Tue, 28 Apr 2020 15:07:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE619899A5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Apr 2020 15:07:05 +0000 (UTC)
IronPort-SDR: bSKpUZp8IDSZdZ6xAi/wD8eA/f1Yp/v/y77H4kXt0FlGVWo+P+WWvpHbk510ji7ePuV2p/1lvR
 gSkbKpccERTw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2020 08:07:05 -0700
IronPort-SDR: spDeRV2Qu2se4tx6UDArAeSCPMtIS9yuRibUFsDCYyz67rxECGs3Qjd8yS4RdPE2Sm8MqcBwPe
 kBW9msolr1/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,328,1583222400"; d="scan'208";a="458820414"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
 by fmsmga005.fm.intel.com with ESMTP; 28 Apr 2020 08:07:04 -0700
Received: from orsmsx122.amr.corp.intel.com (10.22.225.227) by
 ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 28 Apr 2020 08:07:04 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.204]) by
 ORSMSX122.amr.corp.intel.com ([169.254.11.34]) with mapi id 14.03.0439.000;
 Tue, 28 Apr 2020 08:07:04 -0700
From: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
To: "Atwood, Matthew S" <matthew.s.atwood@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915/tgl: Wa_14011059788
Thread-Index: AQHWE3YZPpESyuCKHEaVHmiY1m60saiOtiRQ
Date: Tue, 28 Apr 2020 15:07:03 +0000
Message-ID: <8C2593290C2B3E488D763E819AF1F02E160B562C@ORSMSX101.amr.corp.intel.com>
References: <20200415193535.14597-1-matthew.s.atwood@intel.com>
In-Reply-To: <20200415193535.14597-1-matthew.s.atwood@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMmM2ZTZiZmYtNGFiYy00MDA5LWJmYzAtOGY5NmJhMDc5NTIxIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiWTFSYXNoSjgrMkNzXC9LWjZBbFwvVTFWTmtiNVdodStWQVJvd1VaeTdPWHBINHE2d2o5SVloSXNCNHE5b3NCRzV5In0=
dlp-product: dlpe-windows
dlp-version: 11.0.400.15
dlp-reaction: no-action
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/tgl: Wa_14011059788
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
> Atwood
> Sent: Wednesday, April 15, 2020 12:36 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH v2] drm/i915/tgl: Wa_14011059788
> 
> Reflect recent Bspec changes
> 
> v2: fix whitespace, typo
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
Looks good to me.
Reviewed-by: Radhakrishna Sripada <Radhakrishna.sripada@intel.com>

- RK
> ---
>  drivers/gpu/drm/i915/intel_pm.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index b632b6bb9c3e..3d12a0617c84 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -6854,6 +6854,10 @@ static void tgl_init_clock_gating(struct
> drm_i915_private *dev_priv)
>  	if (IS_TGL_REVID(dev_priv, TGL_REVID_A0, TGL_REVID_A0))
>  		I915_WRITE(GEN9_CLKGATE_DIS_3,
> I915_READ(GEN9_CLKGATE_DIS_3) |
>  			   TGL_VRH_GATING_DIS);
> +
> +	/* Wa_14011059788:tgl */
> +	intel_uncore_rmw(&dev_priv->uncore,
> GEN10_DFR_RATIO_EN_AND_CHICKEN,
> +			 0, DFR_DISABLE);
>  }
> 
>  static void cnp_init_clock_gating(struct drm_i915_private *dev_priv)
> --
> 2.21.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
