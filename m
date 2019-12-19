Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C8E84126546
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Dec 2019 15:56:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0AC86E0EE;
	Thu, 19 Dec 2019 14:56:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F7EE6E0EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Dec 2019 14:56:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 19 Dec 2019 06:56:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,332,1571727600"; d="scan'208";a="213280510"
Received: from fmsmsx104.amr.corp.intel.com ([10.18.124.202])
 by fmsmga008.fm.intel.com with ESMTP; 19 Dec 2019 06:56:15 -0800
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 fmsmsx104.amr.corp.intel.com (10.18.124.202) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 06:56:15 -0800
Received: from BGSMSX107.gar.corp.intel.com (10.223.4.191) by
 fmsmsx117.amr.corp.intel.com (10.18.116.17) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Thu, 19 Dec 2019 06:56:15 -0800
Received: from BGSMSX108.gar.corp.intel.com ([169.254.8.190]) by
 BGSMSX107.gar.corp.intel.com ([169.254.9.24]) with mapi id 14.03.0439.000;
 Thu, 19 Dec 2019 20:26:06 +0530
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: fix comment for
 POWER_DOMAIN_TRANSCODER_VDSC_PW2
Thread-Index: AQHVtnGpxZOkI+I95U+47tbTuWw4nqfBi5Uw
Date: Thu, 19 Dec 2019 14:56:06 +0000
Message-ID: <57510F3E2013164E925CD03ED7512A3B809E9BEC@BGSMSX108.gar.corp.intel.com>
References: <20191219133845.9333-1-jani.nikula@intel.com>
In-Reply-To: <20191219133845.9333-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiYjJlYzY4NTktNjJjNy00NWQ3LWE4NTItNmVkMjE0MjE3NTM5IiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjIuNS4xOCIsIlRydXN0ZWRMYWJlbEhhc2giOiJ6WVIwVXRYR0Y4VjBPanpLRktIak1FUFJCXC8zNFpCOW5sXC9xdjZjT3diQVhXZXBhV0E3aDRTMXdGWUFzTnF1bzcifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.223.10.10]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix comment for
 POWER_DOMAIN_TRANSCODER_VDSC_PW2
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

> -----Original Message-----
> From: Jani Nikula <jani.nikula@intel.com>
> Sent: Thursday, December 19, 2019 7:09 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Kulkarni, Vandita
> <vandita.kulkarni@intel.com>
> Subject: [PATCH] drm/i915: fix comment for
> POWER_DOMAIN_TRANSCODER_VDSC_PW2
> 
> The power domain covers VDSC for DSI transcoder on ICL, and it's
> pedantically about pipe, not transcoder, on TGL.
> 
> Reported-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks good to me.
Reviewed-by: Vandita Kulkarni <vandita.kulkarni@intel.com>

Thanks
Vandita
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h
> b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 1da04f3e0fb3..2608a65af7fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -28,7 +28,7 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_TRANSCODER_C,
>  	POWER_DOMAIN_TRANSCODER_D,
>  	POWER_DOMAIN_TRANSCODER_EDP,
> -	/* VDSC/joining for TRANSCODER_EDP (ICL) or TRANSCODER_A (TGL)
> */
> +	/* VDSC/joining for eDP/DSI transcoder (ICL) or pipe A (TGL) */
>  	POWER_DOMAIN_TRANSCODER_VDSC_PW2,
>  	POWER_DOMAIN_TRANSCODER_DSI_A,
>  	POWER_DOMAIN_TRANSCODER_DSI_C,
> --
> 2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
