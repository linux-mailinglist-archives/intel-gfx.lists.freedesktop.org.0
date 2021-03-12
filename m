Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BA44C3399E2
	for <lists+intel-gfx@lfdr.de>; Sat, 13 Mar 2021 00:03:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030026E060;
	Fri, 12 Mar 2021 23:03:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C96616E060
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Mar 2021 23:03:40 +0000 (UTC)
IronPort-SDR: eXKlRjAyQDmYulHGkgmN8dFWI2hf4Sv0DgTa3pDfT6T3UU+CKXLJbuoc2uV+am2rgawwdYpxXC
 YVz7x5yPfeqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9921"; a="252918558"
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="252918558"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2021 15:03:38 -0800
IronPort-SDR: zuYIDMPMxqp79XVji2YROEz3paL/YLZVAjhrOHGp9B/EIdAuy+R/k+voDil1lFVCXE5u0fEO/k
 JSodH+EhqQKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,244,1610438400"; d="scan'208";a="411166294"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 12 Mar 2021 15:03:38 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 15:03:38 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 12 Mar 2021 15:03:37 -0800
Received: from fmsmsx611.amr.corp.intel.com ([10.18.126.91]) by
 fmsmsx611.amr.corp.intel.com ([10.18.126.91]) with mapi id 15.01.2106.013;
 Fri, 12 Mar 2021 15:03:37 -0800
From: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 16/56] drm/i915/xelpd: Required bandwidth
 increases when VT-d is active
Thread-Index: AQHXFscQeOuFBbtvyUGWqVmzaw5LGKqA+jBw
Date: Fri, 12 Mar 2021 23:03:37 +0000
Message-ID: <9d0ccae417204a78aa0d2c43694e73a1@intel.com>
References: <20210311223632.3191939-1-matthew.d.roper@intel.com>
 <20210311223632.3191939-17-matthew.d.roper@intel.com>
In-Reply-To: <20210311223632.3191939-17-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
x-originating-ip: [10.1.200.100]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 16/56] drm/i915/xelpd: Required bandwidth
 increases when VT-d is active
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
> Sent: Thursday, March 11, 2021 2:36 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 16/56] drm/i915/xelpd: Required bandwidth
> increases when VT-d is active
> 
> If VT-d is active, the memory bandwidth usage of the display is 5% higher.
> Take this into account when determining whether we can support a display
> configuration.
> 
> Bspec: 64631
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c
> b/drivers/gpu/drm/i915/display/intel_bw.c
> index 20dbc3759d27..23cf9bf31e41 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -344,6 +344,9 @@ static unsigned int intel_bw_data_rate(struct
> drm_i915_private *dev_priv,
>  	for_each_pipe(dev_priv, pipe)
>  		data_rate += bw_state->data_rate[pipe];
> 
> +	if (DISPLAY_VER(dev_priv) >= 13 && intel_vtd_active())
> +		data_rate = data_rate * 105 / 100;
> +
>  	return data_rate;
>  }
> 
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
