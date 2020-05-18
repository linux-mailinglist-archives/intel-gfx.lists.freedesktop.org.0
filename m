Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99AD1D74FD
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2020 12:18:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 14B3E89D5F;
	Mon, 18 May 2020 10:18:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4214E89D5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 May 2020 10:18:20 +0000 (UTC)
IronPort-SDR: XCYT54QQqJUwiI+qSH3n+BFSR5gYZLUbUESO834GnShnic5K2spGBDDtvkJGF/h/Gg4XzOWe/b
 iBxsWEp1f6/g==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2020 03:18:19 -0700
IronPort-SDR: SI/rUxReQeoURGAYM0Us9hN8deKuorHyC04iAJ3ZyGJWvnB4/ukFL9J2QVCtMyJPdT/G7Tnf9P
 O5atzreIzQWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,406,1583222400"; d="scan'208";a="288519957"
Received: from fmsmsx106.amr.corp.intel.com ([10.18.124.204])
 by fmsmga004.fm.intel.com with ESMTP; 18 May 2020 03:18:19 -0700
Received: from FMSMSX109.amr.corp.intel.com (10.18.116.9) by
 FMSMSX106.amr.corp.intel.com (10.18.124.204) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 May 2020 03:18:18 -0700
Received: from bgsmsx110.gar.corp.intel.com (10.223.4.212) by
 fmsmsx109.amr.corp.intel.com (10.18.116.9) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 18 May 2020 03:18:18 -0700
Received: from bgsmsx101.gar.corp.intel.com ([169.254.1.232]) by
 BGSMSX110.gar.corp.intel.com ([169.254.11.22]) with mapi id 14.03.0439.000;
 Mon, 18 May 2020 15:48:15 +0530
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add update_pipe early
 return
Thread-Index: AQHWKSIyg7MSvnyC/kGcvxDKPJCDGaitS9wAgABc93A=
Date: Mon, 18 May 2020 10:18:15 +0000
Message-ID: <300B57010B64FF488B0D7E85267A2FCB291F7E25@BGSMSX101.gar.corp.intel.com>
References: <20200513121845.19437-1-anshuman.gupta@intel.com>
 <20200513121845.19437-2-anshuman.gupta@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F825066EB@BGSMSX104.gar.corp.intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F825066EB@BGSMSX104.gar.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add update_pipe early
 return
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



-----Original Message-----
From: Shankar, Uma <uma.shankar@intel.com> 
Sent: Monday, May 18, 2020 3:45 PM
To: Gupta, Anshuman <anshuman.gupta@intel.com>; intel-gfx@lists.freedesktop.org
Subject: RE: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add update_pipe early return



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of 
> Anshuman Gupta
> Sent: Wednesday, May 13, 2020 5:49 PM
> To: intel-gfx@lists.freedesktop.org
> Subject: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: Add update_pipe early 
> return
> 
> Currently intel_hdcp_update_pipe() is also getting called for non-hdcp 
> connectors and got though its conditional code flow, which is 
> completely unnecessary for non-hdcp connectors, therefore it make 
> sense to have an early return. No functional change.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>
Thanks Uma for review!
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c
> b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2cbc4619b4ce..d0a2bee9035a 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -2079,11 +2079,15 @@ void intel_hdcp_update_pipe(struct 
> intel_atomic_state *state,
>  	struct intel_connector *connector =
>  				to_intel_connector(conn_state->connector);
>  	struct intel_hdcp *hdcp = &connector->hdcp;
> -	bool content_protection_type_changed =
> +	bool content_protection_type_changed;
> +
> +	if (!connector->hdcp.shim)
> +		return;
> +
> +	content_protection_type_changed =
>  		(conn_state->hdcp_content_type != hdcp->content_type &&
>  		 conn_state->content_protection !=
>  		 DRM_MODE_CONTENT_PROTECTION_UNDESIRED);
> -
>  	/*
>  	 * During the HDCP encryption session if Type change is requested,
>  	 * disable the HDCP and reenable it with new TYPE value.
> --
> 2.26.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
