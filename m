Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA50732B52
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 11:24:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1249D10E0F9;
	Fri, 16 Jun 2023 09:24:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68B8310E0F9
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 09:24:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686907486; x=1718443486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mK/Nl/qNUwjNS6jpdV4xHC53423Q3dyRBnHsSARH0FU=;
 b=AIpzdRNZ088k4idoti60Gi8QctRv3SAiwlO8Bwg0efdn9xtbpIym4Gg8
 OldwN7Y4fKhCUgrzxx1tpGwhz54QCzSrT7D2qnvKpPMtkg8Xk/QIUG4xK
 r+A+nrtjMdbJpy5NibkyB617MOPtEmH2Ew6XxF97ggJ58EzAzV6XMgEKL
 0fccqDs0yvlCbjvkKMIBEfx7E4ENzIpzwqkQ2pLxcAhey2mapG8jE+ZrQ
 tXv+HsLxEkolFKi5u/bZEjNUUPiRexi1/rPyv9+j5V9mmMg1I2sptWtkb
 Qfym6gUZnLVoBEABNXx2O4aBB++Jq0Edlt2rtXxUnq9TfduFO4lVG6VBZ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="361697142"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="361697142"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 02:24:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="715944294"
X-IronPort-AV: E=Sophos;i="6.00,247,1681196400"; d="scan'208";a="715944294"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 16 Jun 2023 02:24:44 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 02:24:44 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 02:24:44 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 16 Jun 2023 02:24:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 16 Jun 2023 02:24:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GYDXsxRjnWcC6pjNRy6tJ9RMMjrAWIwRRssXNv+CkTIgIEOlS0Got/QeEqTQWpHJGVAZQEBZ1wt6/+Vub22X/2w6B1kB5fbu6g2Et49e9hnk20IGiM7m69es4aLHBpp9KyONP1DPX/9vgHA+5ZViIzQAYsXldKAV7yR4ayjFrEBwbCbaNIgRo4s+iX84W3n66rC1/X/d9MDkL0OtKbKU7BjE4G1/zMtV93Zj67C/1SYVHtw7BpkgyKn2jAGKp3B48bk45g2EEqcR0m5f51wMI6tvwgiGp1n64MlzeAATd3Huptkfd58a52O72ZFKgY+uEtxJPTW0Xr+S+VCjaJeonA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TAOpwOElPOy5S14eI45CgcZwXh9sqWx89P4+o4QWUbA=;
 b=ScfPxZ/Lp6pTGHZBWg7QXVarcEllihhYGXRQc6AzgGAUAfPzZOgmuf6M8/U9p6gvP4AyE7OkGBmMp4TGeR9qmOs66jmonxI9NHbQF+6ZILLem9j+bfK3vOX3oSEQun2xaO1T/MjmPhSEzZ/D0oVQVOOG5TBGzR2rujsFsCcyHs14MgoUcQDPEYMB/LmODzXaHtJBRkmMqctJ+vTUyYAjiKbKa3IVPo6PDiV2YlOefyVWovBlAPYIoAKywh9GP+ub01dPxBlzFsC+Gl7wdM57eCd9UwEaY/vTG/Ek+BQCn+p6wC+qT6NyIDgcemHMDaY7Z55/umcXO7u8U1zrdSFdGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH8PR11MB6926.namprd11.prod.outlook.com (2603:10b6:510:226::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Fri, 16 Jun
 2023 09:24:09 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6477.037; Fri, 16 Jun 2023
 09:24:08 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Vehmanen, Kai" <kai.vehmanen@intel.com>
Thread-Topic: [RFC 3/3] drm/i915/display: Add wrapper to Compute SAD
Thread-Index: AQHZn1f3ahC4jnrtHU6DLDAXMxasiK+NJ6vA
Date: Fri, 16 Jun 2023 09:24:08 +0000
Message-ID: <SJ1PR11MB61293501DC9CD6E73D1F953AB958A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230615070723.2220271-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230615070723.2220271-4-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230615070723.2220271-4-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|PH8PR11MB6926:EE_
x-ms-office365-filtering-correlation-id: 30c89468-b30f-4b4c-d6cf-08db6e4b7019
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fqjhP6OEacNClezJhlf9hY+l6RrgM9WYYq7EINEMjQuujPcEiUCV0gXja3NsBL5n40pGspEr2TiIV3FYhtoeiL2WBbBAv8UVNwDT0dkuQHyuLEoLpzDrC3kOMQpnPKCsitM2/IZdBxi4VUe3yw+ZtfAfLCgMhI7PSltPOKQ1qjhWbdBFoz+Ts/G0wXuRjHFyroe+C07B21pnHELBt0tMspY1PqD+vivxlrxls2frxqas8dUgTm+EU3hkzQ6JJm1THvywisk4mx6YqMgbKliop7NSkmScjh1bnQ624XIbLyBxLKUoZflyuwZSzzGPOktJZo4p0gBhPGE0ZCioIvHkVPOHzq3dbUNrvkHdnVqhLLpfr8VGeERM38jI+F4E0IJts2L3PD1ic0n8DHs+qEdcIQGZ2R2VniyCuynYqXiYRVcPCCkirgvjGVIhebkZFYw6HkTTQ4EPAj/ma1F4w4Kw2eqVM4Jn3NCSyR9dHcXb1lDvkA7VvP7ilG7wLWPIazoh1vTGx3pQO1X4VwxEibyaJP8I47oUbjTW29ST22gRjl1oWIxGMTFmhpoYy/jQgQO3XgpanlKC2qwRKO9P4bDF7cSq891gdzsaq5Bbyws4EiKcPX1YpRBnD1CopN1+ZH2U
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(376002)(136003)(39860400002)(346002)(451199021)(33656002)(86362001)(2906002)(38070700005)(52536014)(5660300002)(55016003)(83380400001)(186003)(107886003)(6506007)(53546011)(9686003)(26005)(122000001)(82960400001)(71200400001)(7696005)(110136005)(54906003)(4326008)(76116006)(66946007)(6636002)(66556008)(64756008)(316002)(478600001)(66446008)(66476007)(8676002)(41300700001)(8936002)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?CEfM9MC4coqVq5cX2EbWjZeTw9uUAc4B0DSw1qDl5LZEu/NpqdArj5/wWUdl?=
 =?us-ascii?Q?reE2QDXz5zMYhuzrXLsiaMywWaVUoyMsXtVZlx04DlsSgDRtUvISEm6Hf4gI?=
 =?us-ascii?Q?rZlwgBQu4fLPeH193b/ZZgUlpDIHTnJDERBqQFtvFn99f0PYnxqN358hyWbH?=
 =?us-ascii?Q?Vwv3L7OZPAMgoFt7rUPxGM6U6a/hM4ph0F8qBAMtcwhOeern7bJwKcGEL2TG?=
 =?us-ascii?Q?eDaYSSfIBP+cdCqva9Pp37ERS2KiAEQ+G21mV70yA39ILPpUt7/M2djxrSn5?=
 =?us-ascii?Q?G0AMGVaL9/TgvvM4B27P96H09VfsrTD+urx3OPVDy/DNoS8yE2fdfzsE8kDM?=
 =?us-ascii?Q?AtYr1I0yp3bJ22nfNtdnVW7somY//BkORkfv2Q356VYO2TGXq+zbakWsbnzb?=
 =?us-ascii?Q?MrNglI5L5DVJJAsgEQeEoec4HVka0euRdcJNp3AmGmh1yJ19G0deLGcj4+nI?=
 =?us-ascii?Q?qvCaXzI1lDm/X0pqYGmxy58uV6GvuT4UjNxMlQfECMLZzZ4DobNCK3eG8zh+?=
 =?us-ascii?Q?PFHWzcOQQUz60w8cJwOdEknlNuLUu+qLKpD75zg06FpRcar6zIOzrGadfp9G?=
 =?us-ascii?Q?cqjKbZos7MVEqAQy/HM+m0d9d3R0gwQH9YNOYh94Fom4qC7IOkpBankfm6Xx?=
 =?us-ascii?Q?bcivgrxUJkjCuO48/wCrnr0Fk/m9WDH0tIYBXtc5Uvj5fapW3OFJhAHQ2Egv?=
 =?us-ascii?Q?1NAExpbRI+R4OrvAoi3LKPekPI5+gPrhRQiN6/yIGt90j5koBw2f6Tj7R2UD?=
 =?us-ascii?Q?vMuvduMBnLVVwUJ5qdns6jrXCu8AIV7GbVvXmxDR8ndwH8B4PKz8q5ytlq59?=
 =?us-ascii?Q?aG7CWrI4yF6cCpOhDao/tq/lMcnGY2b8Q1WlQLP6HWYrnuHukof5fjx2dK3t?=
 =?us-ascii?Q?mdHeQbetyIYAii1nofanzS6M26OkAnVE+TNU9QF8lH1KHz3xILAUMx/FMjrg?=
 =?us-ascii?Q?88EnHIpmOJNgN0XzMAy5a6i0HIHYcnn8UZMKo9ZH5JuxUYIeB9ueMo22LEtC?=
 =?us-ascii?Q?hGeIoAZDxdOTtcnPlh7oRDhCVjobme7pAe9NoPym+2i+FNL1wIIUdQp7ziNb?=
 =?us-ascii?Q?GprR9QwPO4sl2MNOiXD3SdJ55GW3TJHebQhuJ7DFki15iI6zpWwyR4JWSR7/?=
 =?us-ascii?Q?EF1fTgoLGqXg82+kZ0s3BGbyyKdRKiTRoirET+8+bfJ3575vqSy1TbR4GhZ9?=
 =?us-ascii?Q?oU++T5S2QM9QLOPdoHIulthyJrqS0HxfrtTwXIYACrRKZk3T5Adv1GE/ze1f?=
 =?us-ascii?Q?wmB4A1qiGSYHPqYWODua1IzcVlKRKVLwNw9KeGqXJJPz8eBa6obquS4bTWaY?=
 =?us-ascii?Q?IOnK8AR7JeObd4/nUh4fiY/LpNvjmpiH1tuRH/PYx4nPNxSJNEOCdUj7L9K6?=
 =?us-ascii?Q?DuPsreGHR8kWmCVdE2BEcp4K3QCcz2Jy5MzVYMxO98XPq0hwq9O7M+98Vd/c?=
 =?us-ascii?Q?QGQXHOo0OR/Ojk5/Q5FofB1KnAYbMPRvBkSSKQx4bG2E2BqLQJCIRjASfujc?=
 =?us-ascii?Q?8zLrGMI8BYExUED/n06SHkwAFOQzrnbOv2UO3CtuaC/lodF4L7DfUJTP5TMy?=
 =?us-ascii?Q?6yYaMNflZpiow2hnREAI4HvPIWub5QpYI+igsQU3yQuMowe+vGkddZrEfwfy?=
 =?us-ascii?Q?cA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 30c89468-b30f-4b4c-d6cf-08db6e4b7019
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2023 09:24:08.5202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DfKkbmija+vmNkoc9kO4ihSB/6c1WoVj7cfFq2yP0PZCOlj0sw79+inPhqo3bSFZXmCopLT30uEHHexhQ51HzF0llZuw8+DCju64fnUhx7g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6926
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 3/3] drm/i915/display: Add wrapper to Compute
 SAD
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Kai,

> -----Original Message-----
> From: Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>
> Sent: Thursday, June 15, 2023 12:37 PM
> To: intel-gfx@lists.freedesktop.org
> Cc: Shankar, Uma <uma.shankar@intel.com>; Borah, Chaitanya Kumar
> <chaitanya.kumar.borah@intel.com>; Golani, Mitulkumar Ajitkumar
> <mitulkumar.ajitkumar.golani@intel.com>; Nautiyal, Ankit K
> <ankit.k.nautiyal@intel.com>
> Subject: [RFC 3/3] drm/i915/display: Add wrapper to Compute SAD
>=20
> Compute SADs that takes into account the supported rate and channel based
> on the capabilities of the audio source. This wrapper function should
> encapsulate the logic for determining the supported rate and channel and
> should return a set of SADs that are compatible with the source.
>=20
> --v1:
> - call intel_audio_compute_eld in this commit as it is defined here
>=20
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_audio.c | 66 ++++++++++++++++++++++
> drivers/gpu/drm/i915/display/intel_audio.h |  1 +
> drivers/gpu/drm/i915/display/intel_hdmi.c  |  2 +
>  3 files changed, 69 insertions(+)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_audio.c
> b/drivers/gpu/drm/i915/display/intel_audio.c
> index e20ffc8e9654..a6a58b0f0717 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.c
> +++ b/drivers/gpu/drm/i915/display/intel_audio.c
> @@ -794,6 +794,72 @@ bool intel_audio_compute_config(struct
> intel_encoder *encoder,
>  	return true;
>  }
>=20
> +static unsigned int drm_sad_to_channels(const u8 *sad) {
> +	return 1 + (sad[0] & 0x7);
> +}
> +
> +static inline u8 *parse_sad(u8 *eld)
> +{
> +	unsigned int ver, mnl;
> +
> +	ver =3D (eld[DRM_ELD_VER] & DRM_ELD_VER_MASK) >>
> DRM_ELD_VER_SHIFT;
> +	if (ver !=3D 2 && ver !=3D 31)
> +		return NULL;
> +
> +	mnl =3D drm_eld_mnl(eld);
> +	if (mnl > 16)
> +		return NULL;
> +
> +	return eld + DRM_ELD_CEA_SAD(mnl, 0);
> +}
> +
> +static u8 get_supported_freq_mask(struct intel_crtc_state *crtc_state)
> +{
> +	int audio_freq_hz[] =3D {32000, 44100, 48000, 88000, 96000, 176000,
> 192000, 0};
> +	u8 mask =3D 0;
> +
> +	for (u8 index =3D 0; index < ARRAY_SIZE(audio_freq_hz); index++) {
> +		mask |=3D 1 << index;
> +		if (crtc_state->audio.max_frequency !=3D audio_freq_hz[index])
> +			continue;
> +		else
> +			break;
> +	}
> +
> +	return mask;
> +}
> +
> +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state) {
> +	struct drm_i915_private *i915 =3D to_i915(crtc_state->uapi.crtc->dev);
> +	u8 *eld, *sad, index, mask =3D 0;
> +
> +	eld =3D crtc_state->eld;
> +	if (!eld) {
> +		drm_err(&i915->drm, "failed to locate eld\n");
> +		return;
> +	}
> +
> +	sad =3D (u8 *)parse_sad(eld);
> +	if (sad) {
> +		mask =3D get_supported_freq_mask(crtc_state);
> +
> +		for (index =3D 0; index < drm_eld_sad_count(eld); index++, sad +=3D
> 3) {
> +			/*
> +			 *  Respect to source restrictions. If source limit is
> greater than sink
> +			 *  capabilities then follow to sink's highest supported
> rate.
> +			 */
> +			if (drm_sad_to_channels(sad) >=3D crtc_state-
> >audio.max_channel) {
> +				sad[0] &=3D ~0x7;
> +				sad[0] |=3D crtc_state->audio.max_channel - 1;
> +			}
> +
> +			sad[1] &=3D mask;

We would like to hear your opinion on this implementation from audio driver=
 perspective.

Regards

Chaitanya

> +		}
> +	}
> +}
> +
>  /**
>   * intel_audio_codec_enable - Enable the audio codec for HD audio
>   * @encoder: encoder on which to enable audio diff --git
> a/drivers/gpu/drm/i915/display/intel_audio.h
> b/drivers/gpu/drm/i915/display/intel_audio.h
> index 07d034a981e9..2ec7fafd9711 100644
> --- a/drivers/gpu/drm/i915/display/intel_audio.h
> +++ b/drivers/gpu/drm/i915/display/intel_audio.h
> @@ -14,6 +14,7 @@ struct intel_crtc_state;  struct intel_encoder;
>=20
>  void intel_audio_hooks_init(struct drm_i915_private *dev_priv);
> +void intel_audio_compute_eld(struct intel_crtc_state *crtc_state);
>  bool intel_audio_compute_config(struct intel_encoder *encoder,
>  				struct intel_crtc_state *crtc_state,
>  				struct drm_connector_state *conn_state); diff
> --git a/drivers/gpu/drm/i915/display/intel_hdmi.c
> b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 0188a600f9f5..beafeff494f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2403,6 +2403,8 @@ int intel_hdmi_compute_config(struct
> intel_encoder *encoder,
>  		return -EINVAL;
>  	}
>=20
> +	intel_audio_compute_eld(pipe_config);
> +
>  	return 0;
>  }
>=20
> --
> 2.25.1

