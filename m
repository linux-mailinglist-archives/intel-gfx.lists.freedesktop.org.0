Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 883953212DB
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Feb 2021 10:13:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3BFB6E91C;
	Mon, 22 Feb 2021 09:13:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6496E91C
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Feb 2021 09:13:51 +0000 (UTC)
IronPort-SDR: eR/zfndaGlFOxS9wnXaW3J2TL7x/sm4+uZqZUpmllCbCOZB8VNm0I10c1Ekwbc6srgaPz6q04q
 8PMKeVjeVfCw==
X-IronPort-AV: E=McAfee;i="6000,8403,9902"; a="245809723"
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="245809723"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2021 01:13:50 -0800
IronPort-SDR: +qaAHCBgaVJONYEFeNBIUOtbM/+Jsz4o31M8AQQ3VrcxT5VwcG9mnGVkaINDAvjUivp+qDOiVa
 boYFP8oKRvkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,196,1610438400"; d="scan'208";a="402495228"
Received: from irsmsx601.ger.corp.intel.com ([163.33.146.7])
 by orsmga008.jf.intel.com with ESMTP; 22 Feb 2021 01:13:49 -0800
Received: from bgsmsx604.gar.corp.intel.com (10.67.234.6) by
 irsmsx601.ger.corp.intel.com (163.33.146.7) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 22 Feb 2021 09:13:48 +0000
Received: from bgsmsx604.gar.corp.intel.com ([10.67.234.6]) by
 BGSMSX604.gar.corp.intel.com ([10.67.234.6]) with mapi id 15.01.2106.002;
 Mon, 22 Feb 2021 14:43:47 +0530
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 7/9] drm/i915/mso: add splitter state check
Thread-Index: AQHXAIWi6B8FeGo9a0+/+qPNROGyhqpj9A1A
Date: Mon, 22 Feb 2021 09:13:46 +0000
Message-ID: <a298e970be4842bbb46697dbdaba22f9@intel.com>
References: <cover.1613054234.git.jani.nikula@intel.com>
 <77226d7dbb09090b646e4325d3cf304669a910b7.1613054234.git.jani.nikula@intel.com>
In-Reply-To: <77226d7dbb09090b646e4325d3cf304669a910b7.1613054234.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
x-originating-ip: [10.223.10.1]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH v3 7/9] drm/i915/mso: add splitter state
 check
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
> Subject: [Intel-gfx] [PATCH v3 7/9] drm/i915/mso: add splitter state check
> 
> For starters, we expect the state to be zero, as we don't enable MSO anywhere.
> 
> v2: Refer to splitter.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Nischal Varide <nischal.varide@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> b/drivers/gpu/drm/i915/display/intel_display.c
> index fe9985bd5786..3059a07b8c36 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -9326,6 +9326,10 @@ intel_pipe_config_compare(const struct intel_crtc_state
> *current_config,
>  	PIPE_CONF_CHECK_I(dsc.dsc_split);
>  	PIPE_CONF_CHECK_I(dsc.compressed_bpp);
> 
> +	PIPE_CONF_CHECK_BOOL(splitter.enable);
> +	PIPE_CONF_CHECK_I(splitter.link_count);
> +	PIPE_CONF_CHECK_I(splitter.pixel_overlap);
> +
>  	PIPE_CONF_CHECK_I(mst_master_transcoder);
> 
>  	PIPE_CONF_CHECK_BOOL(vrr.enable);
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
