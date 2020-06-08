Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECBA71F2286
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jun 2020 01:09:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46F106E029;
	Mon,  8 Jun 2020 23:09:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 39F6B6E029
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jun 2020 23:09:36 +0000 (UTC)
IronPort-SDR: 2uleMOF8jHiTh8CMZl+2LKGgrO299imn+kYupOGA6/cf+N0iifVeB1CKIfzRHzByL3gyms7DAt
 b0/SbJtAviww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 16:09:35 -0700
IronPort-SDR: NmwLM/r3wMNRh68Ei1xyJZ2oPyN/72nhOaUMM4mz3+NKwvPtNBnoXeBxhR+VTFfuuz+QMRp3yx
 wHk2kzbPpxRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,489,1583222400"; d="scan'208";a="259949091"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
 by fmsmga008.fm.intel.com with ESMTP; 08 Jun 2020 16:09:35 -0700
Received: from fmsmsx120.amr.corp.intel.com (10.18.124.208) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jun 2020 16:09:34 -0700
Received: from FMSEDG001.ED.cps.intel.com (10.1.192.133) by
 fmsmsx120.amr.corp.intel.com (10.18.124.208) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Mon, 8 Jun 2020 16:09:34 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Mon, 8 Jun 2020 16:09:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bwkaxGmLXBpWw5evcfpPOG0Eq3xiaQmFjjsNJs2ARi20NZbHOx0qBEiPD+MzjG16oZA/Hz6VqZwrYeYHYzEnk57ABvMAj7LEyB5yGB0isiTZyCM0eZrkYWi9gHB9r/YHDVKPix/zvWfuy7YRBVF8fUO/3bw/w5DzLsGCNMIhRMrg5w+fbY+Nc5UjhiA0RYTpqUWlup0/jrpydcDkYn6rVOxOYQq5KkA5QDYgEWMbjrpyfUFlYSt/hSk5QHl1uuQFdlYcRFCj5lpXbd18yx6z0xsdf7ALb/20R67HC8QntzczDnW6+APmZPln2NE8hbArKQLZJyMI3dcL7sJV48PEog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Y+iUrSIh97zeT6A5F253NsGcF94vgaSJP0dU0rZsaI=;
 b=MCdMOCQW1jOo0vfsPzO5f2RJG5GJch84nmgjDI8J4fMfu/My/d4S4ZmRr0xP7HxzGDrEgI33mh4kTeAnlnnP7XNn3EWM2UGGgmBYkHwkd48jhRscvF3hziHTWbmEqhyWxygPHLGuqJH/rbuvbufuerLiPeXfdBy+ggpkfiRiH46fzoemj6MmP++FRxmS6CBO3TMb3kbbrAjK8uj23Z6Ad8xbHAmVthoOSg7mb3qeQyyDy2o/9scofOusEUTC2LeVyTPPYkkbH1cv3YZEdOEPpBeB0LnQpWRi3VRVRGNOo7rj7yLz1xpNLCCDpAClfm1Q3kl6EXpxB/cjRyhKSMuH2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=8Y+iUrSIh97zeT6A5F253NsGcF94vgaSJP0dU0rZsaI=;
 b=CMf6Rk25u0dfcGIA/1GkuSr+IOdzdNJlxUpY5gxUPZQJd9eZC+VHjxB9m3+JFlCfJwU3ct2PXZsegGOoiG8vEz96GSv5b7dh9Dy/JfT6ggZhMRdrkCvNoPs4dOv6A7RN2EycD5d0DCRNXv+I0bwwSqv9SemmSwTfydAZe0mvscA=
Received: from BY5PR11MB4419.namprd11.prod.outlook.com (2603:10b6:a03:1c8::13)
 by BY5PR11MB4054.namprd11.prod.outlook.com (2603:10b6:a03:189::26)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Mon, 8 Jun
 2020 23:09:28 +0000
Received: from BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536]) by BY5PR11MB4419.namprd11.prod.outlook.com
 ([fe80::d847:5d58:5325:c536%7]) with mapi id 15.20.3066.023; Mon, 8 Jun 2020
 23:09:28 +0000
From: "Le, Jason V" <jason.v.le@intel.com>
To: "Souza, Jose" <jose.souza@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Avoid PSR and FBC features
 concurently.
Thread-Index: AQHWPWJhNf2WBE9z3UmflEmp3PLVWqjO746AgABmhdA=
Date: Mon, 8 Jun 2020 23:09:28 +0000
Message-ID: <BY5PR11MB44197EC1B9BE7B02E6C2F614C9850@BY5PR11MB4419.namprd11.prod.outlook.com>
References: <20200608065635.11652-1-jason.v.le@intel.com>
 <50226b9506d36031402fa3ba73e90ec9f5a5ad38.camel@intel.com>
In-Reply-To: <50226b9506d36031402fa3ba73e90ec9f5a5ad38.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.2.0.6
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.201]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 522b3e93-b0ee-4ea8-d69b-08d80c00fe90
x-ms-traffictypediagnostic: BY5PR11MB4054:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB4054B882259EB21E4219A05CC9850@BY5PR11MB4054.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 042857DBB5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VkYoSkN6HrLnTdvvmhTwxndeQrORYuLWa+vMNfVlqyibF6ldNEgq224dR+D+iRhmV56IEi/HwmXldKZMxuIv1so/Hb0NXrtprKs5n4LBJCfusldgqtEd764g8FMelosoMepoPcsB8yIZWm58exHownvaRhzrbu0oPP1RKYnwbb61ejyTvEJI69aX7t6TrpGjAtuaZBWQhT8F++ANhFUxgiUlfQlBldYKj8WN78ntT3chiHGJ4NQ/McDrRWujy1u6qs2su7S2wHGIZx2mMaCC77m76CDy79VTNN3SevCbRtww6jvNv91hXV4nmd7YAjKmEe2HJVqEcdCZQ8BeAB1/Vth4u6+BrgwB8IdspS7Km1NtqL/VHu4HWGPRkGFpgNmMQ305T9StjALSJ9VwXkmNhA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4419.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(136003)(366004)(39860400002)(376002)(396003)(346002)(26005)(71200400001)(7696005)(6506007)(8936002)(316002)(53546011)(86362001)(2906002)(8676002)(33656002)(66476007)(66556008)(66946007)(83380400001)(5660300002)(110136005)(76116006)(186003)(52536014)(9686003)(66446008)(966005)(55016002)(478600001)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: JY0TQBUwoo4uqeuPBXPyGdK+lfp/r5QqfWv/zaz+hObSROfBuvDjDL5YgJqtDdnwXaFzydjWWLO6GbXvzU//TRC79KoIXKUwPEyilF+4FrW9J9DRvB2JJ1Wfty+gJJi1CeXDleakJuTFxyWEyfn7JwnEU7omIXJVI1INDrU5UH8VCmSuVxKkQn7fu97gM4ih2QEIJKXlcjyqwjzTe8SPyt3bxXGW1gd/E4bmAOnIOjWm3qGp4k+6t/kTiZqQaNtRgTM9N0b+97jfAShvq2WYGafXWfLuEjnI2kib+XAKaDGzuMXR7E8WHM4BRTKCzSUU5463sMiwIHL3moKjEPXtxyGiIn/1L9Cy//5PhsVWSTdAdk79bCnuRRQK7IRf44gXpfdf7HyKR8cxcczX8wF9y4bPOO7SRSoF3vWME/uMXqBiUL/sqrtt+lfkmFmFay3qq3J6lkSE/YWeonvx3og5JAqlvYb7B+wcsxYMWbj2tIj6mx2xnVZd6GZQVcJLZW/o
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 522b3e93-b0ee-4ea8-d69b-08d80c00fe90
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jun 2020 23:09:28.2114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xwUQGhjz5bQhjaApXn4eq8s2DHjO1YjeZp4lJhnnoSZqUsMq2iPAxf5RmF2wj1tohERm6DGRAF+Fjd+iofJknw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4054
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Avoid PSR and FBC
 features concurently.
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

I had a meeting with an Intel Display Architect.  The expected behavior for the driver is PSR2-SU enabling should disable FBC.  I will update the patch to limit fbc disabling for PSR2-SU only, not PSR1.  Please look at the HSD below for expected driver implementation.  
https://hsdes.intel.com/appstore/article/#/14010265390  
Thanks,
Jason

-----Original Message-----
From: Souza, Jose <jose.souza@intel.com> 
Sent: Monday, June 08, 2020 9:52 AM
To: Le, Jason V <jason.v.le@intel.com>; intel-gfx@lists.freedesktop.org
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Avoid PSR and FBC features concurently.

On Sun, 2020-06-07 at 23:56 -0700, Jason Le wrote:
> Issue: Enble both PSR and FBC caused some fickers on some eDP panels 
> (eg. Panel GIS 13.5" QHD Glare NE135FBM-N41/NC135GFL02).  Disbling 
> either PSR or FBC will solve this flicker issue.
> 
> Both PSR and FBC features save power when render is not busy. When PSR 
> is active, saving power achieved  by source turning off source 
> transmitter and main link, putting memory on self-refresh mode. 
> Therefore with PSR enabled, FBC role is minimized since PSR power 
> saving already covers most what FBC does.  Disabling FBC in case to 
> avoid conflict between PSR and FBC which causes display anomaly in some scenarios.

The combination of both saves even more power so no to this, we should fix the issue not disable features because of a single panel having issues.

A PSR2 fix was merged yesterday "drm/i915/psr: Program default IO buffer Wake and Fast Wake" try with that, if just that don't fix try set psr_safest_params=1.
If this do not helps, please file a bug, add debug information and then we proceed from that.

> 
> Tests:
> Booted system with PSR enabled, verified FBC disabled.
> Disabled PSR with disabled (i915.enable_psr=0), verified FBC enabled.
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 6 ++++++  
> drivers/gpu/drm/i915/display/intel_psr.c | 4 +++-
>  2 files changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c 
> b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 1c26673acb2d..52bc7483adb5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1419,6 +1419,12 @@ void intel_fbc_init(struct drm_i915_private *dev_priv)
>  	drm_dbg_kms(&dev_priv->drm, "Sanitized enable_fbc value: %d\n",
>  		    i915_modparams.enable_fbc);
>  
> +	if (i915_modparams.enable_psr) {
> +               i915_modparams.enable_fbc = 0;
> +                DRM_DEBUG_KMS("PSR enabled. FBC no longer needed.  Disable FBC. \n");
> +	}
> +
> +
>  	if (!HAS_FBC(dev_priv)) {
>  		fbc->no_fbc_reason = "unsupported by this chipset";
>  		return;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c 
> b/drivers/gpu/drm/i915/display/intel_psr.c
> index b7a2c102648a..25accfdd5ad3 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1439,8 +1439,10 @@ void intel_psr_init(struct drm_i915_private *dev_priv)
>  	if (!HAS_PSR(dev_priv))
>  		return;
>  
> -	if (!dev_priv->psr.sink_support)
> +	if (!dev_priv->psr.sink_support) {
> +		i915_modparams.enable_psr = 0;
>  		return;
> +	}
>  
>  	if (IS_HASWELL(dev_priv))
>  		/*

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
