Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA4E32107D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 06:37:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 435A56E4B0;
	Mon, 22 Feb 2021 05:37:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10D396E4B0
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 05:36:59 +0000 (UTC)
IronPort-SDR: MHZ+c7MOf6nTngt3IrFd1Vj5zO4QCs97SsIR7XmhIVMkwWFFt/sKzZuG0bezMe0ewuDAZrwlgT
 BilXNAqWycKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="171476489"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="171476489"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Feb 2021 21:36:57 -0800
IronPort-SDR: Jn3HoMOkwUpnC7Is5c5KdvrmmEzJJ1sIkh2Mj+B03Ki0d1RfAvvIGVqz0vVJ9cWWgv9NL+YQTV
 nIQauZKcA7Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="422890057"
Received: from irsmsx602.ger.corp.intel.com ([163.33.146.8])
 by fmsmga004.fm.intel.com with ESMTP; 21 Feb 2021 21:36:56 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx602.ger.corp.intel.com (163.33.146.8) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 05:36:53 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 11:06:52 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 2/9] drm/i915/edp: reject modes with
 dimensions other than fixed mode
Thread-Index: AQHXAIWTSnXYIFACREue8mL+X79F2qpjt2ww
Date: Mon, 22 Feb 2021 05:36:52 +0000
Message-ID: <ffe14e9cc298432f8c4b479d272204bd@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <feb4c3b2b9c4da56a840bdb3c0e7fd0e58ee50de.1613054234.git.jani.nikula@intel.com>
In-Reply-To: <feb4c3b2b9c4da56a840bdb3c0e7fd0e58ee50de.1613054234.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 2/9] drm/i915/edp: reject modes with
 dimensions other than fixed mode
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Varide,
 Nischal" <nischal.varide@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Jani Nikula
> Sent: Thursday, February 11, 2021 8:22 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Varide, Nischal <nischal.varide@intel.com>
> Subject: [Intel-gfx] [PATCH v3 2/9] drm/i915/edp: reject modes with dimensions
> other than fixed mode
> 
> Be more strict about filtering modes for eDP.
> 
> Cc: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4f89e0de5dde..169b44c8ebbc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -789,10 +789,10 @@ intel_dp_mode_valid(struct drm_connector *connector,
>  		return MODE_H_ILLEGAL;
> 
>  	if (intel_dp_is_edp(intel_dp) && fixed_mode) {
> -		if (mode->hdisplay > fixed_mode->hdisplay)
> +		if (mode->hdisplay != fixed_mode->hdisplay)
>  			return MODE_PANEL;

Looks fine as we practically will not have panels with multiple resolutions except maybe mode with varying
refresh rate incase of DRRS panels. But hdisplay and vdisplay will still remain same.

Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> -		if (mode->vdisplay > fixed_mode->vdisplay)
> +		if (mode->vdisplay != fixed_mode->vdisplay)
>  			return MODE_PANEL;
> 
>  		target_clock = fixed_mode->clock;
> --
> 2.20.1
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
