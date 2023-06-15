Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C966730DD1
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Jun 2023 05:59:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33E9010E10F;
	Thu, 15 Jun 2023 03:59:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA06110E10F
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Jun 2023 03:59:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686801589; x=1718337589;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KK1gWb5//O2N38kWId6k1NqSKgPnOOXD7TQr03WhgaU=;
 b=iw83W9XIsU7r04lcC4o9HaSVGPYESM9RkcGdkfyLwXIKcORUmAIxJVae
 EaX8N2udF6mlwRG7nOkk6KvdO6ElCIS9c4u9e/6Pn9V9KtFXuQaDugAiF
 Uib26Ubq/g97aT70OmDpagNwPDGBzGBU8E2+3yAE3gec9h4xisqO/c4qW
 JNS3W90FKJibz/KmnmoAHmtt8L/LhfanCNjd8VYpRlcA6ZxH7y1I999YY
 sWU6o99/lwsxp9xHEVcm7+Woru5wK5vISN2uO9i5QWvOGf9CgL6DGf+xZ
 kAB2sr5cyPgo6HD7V6sKv8QjehYEMnSMfuN7DT4AXJawSocxIGJAFpjnv Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="339151283"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="339151283"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2023 20:59:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10741"; a="1042478545"
X-IronPort-AV: E=Sophos;i="6.00,243,1681196400"; d="scan'208";a="1042478545"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 14 Jun 2023 20:59:48 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Wed, 14 Jun 2023 20:59:47 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Wed, 14 Jun 2023 20:59:47 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Wed, 14 Jun 2023 20:59:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V1ukPl9qpbQklwRV3/kyWKiLbNY66QB2US83Um3C4C5BPNZKosgiLznRr7Af2lUbkKs753mSxDO3sVspSFFwyCbAz9qHjUzUokjDcDvGp3WWLf9BDEuHLSUI5sLDbBi0nTyW30YXLW98+SOzPk/6u2+PBGsHhuXiRytj/vpCDL23vT43Vrmg7QDIg+ogYtACyT/LxvScu4Zji3L5AWjuOkMv51p+w1MovOputjPIZg5r+IacSKDgaOo+uL0ifsdXiF7Z4scg9ZBSZCcWNJsbb1fqfi/EOzlfwJFylIeBmu9qEUb4tHkhGsocGt8SlEaadSIUaedtdehpKLx7meOAZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rymMjoWfrqM9umZFXPlwficOHI8x4MxCszIbtiVh0qo=;
 b=AvLY8tziDmPqukvG2Zk567MOfONpOyrLYWEH2T0S3/QBPJQPfyLexuL86nk9k7fFMvYgB+QcETayRdGu+27Pe9M9NOMdrhGXSASIXvdCHLlZM97/NuIcoRtpywSrFbCkVWISdVl07qe1SZpOllA54wIl8HsgCREjx+6P38iI/bMijA1ktktULT+FZR0fwbIWzYkR6RxhxpRjnF1dUesCc0IWS0/STHCpjojoMZnTQAIHadQJz9HJmExQmV/NnPmgSx+sCyichOdBgMQTSzQtk/DPnjlDxy9ttUvEmq6LYXPxMsOHDj635ROC6Kh0n5CsjBTHJKwtR7SdIFeBCLk1pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS7PR11MB7738.namprd11.prod.outlook.com (2603:10b6:8:e0::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6477.29; Thu, 15 Jun 2023 03:59:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::2b9:ed3a:1d10:7fa8%7]) with mapi id 15.20.6477.037; Thu, 15 Jun 2023
 03:59:42 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [RFC 3/3] drm/i915/display: Add wrapper to Compute SAD
Thread-Index: AQHZmvmjqNLGjv9Nw022UI6ImL6hTq+LQfPw
Date: Thu, 15 Jun 2023 03:59:41 +0000
Message-ID: <SJ1PR11MB6129AD5928FEB481BF6B84FEB95BA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230609174212.1946930-1-mitulkumar.ajitkumar.golani@intel.com>
 <20230609174212.1946930-4-mitulkumar.ajitkumar.golani@intel.com>
In-Reply-To: <20230609174212.1946930-4-mitulkumar.ajitkumar.golani@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DS7PR11MB7738:EE_
x-ms-office365-filtering-correlation-id: 58a87da4-e7ae-46e5-1ca6-08db6d54f2aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nc7tsb0UeJJKn5WEGoDA9i3Edlj888FPHe2ALoHZgMBMsV97QxZQEf/zsYGYYDHjMtjo+N3h9T6CrViklnB/dlnGj3TcZUanzAl7ogLMY/7ES3MS9hvTV0PXjdffL1BjbQwr2jmJCa96oSG8qq9Cx8u6un0Ns+y7Ov0ZYc43r1LSid8ppEDMCcypE1esfBjnqmzyNsj3ERuX1xbUtjhQrBPp+/4DSTpV/JRfJwWgzNa8Gzh+pGFGQJTE07eqfT1Jb1DrNp2XeSwLKM1hgJUExnLoIhEQEKjR2Tfc0UvGRSBMG0JcrsR6Bh9chv6L3BcydJSz5bYV8YWx3amrCT9WLugQSMwfRQYcTHaHrnmeUGyZkRuA0E2qezJhfQ86BJ/k5gZlYZ89HmEA1Q5e8dJes1bdAATJ+L2s8/LOXLJemht28wnnOi1xtYX0ErctKCuJceOiIwtxVquw9nxRnUUgewbqKjgH8mN0U+oWTZfF6Jayq3fhYe3w5Ps9zB/9iJi5AWMzJeVkb0s2flaYSH3LZSWEmDAgr8g8iB1fzyRSGiOou1jyd+vINma4zvJEjwuMTM5TLeBYTpSSO7y++rv8PBZvw8lGBdzfFWCsJO60JhWeV7fIdzKN6qRuB1Mpe6tC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199021)(86362001)(107886003)(7696005)(316002)(8676002)(41300700001)(82960400001)(26005)(83380400001)(55016003)(5660300002)(38100700002)(53546011)(9686003)(52536014)(6506007)(122000001)(33656002)(8936002)(71200400001)(38070700005)(64756008)(66556008)(76116006)(4326008)(66946007)(478600001)(186003)(54906003)(2906002)(66476007)(66446008)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?j5FxyIPWukIxqyR2fN8UI6C+tBkUUA1gmWwpIh6GIhobyH8H8ENFdtmfIqwE?=
 =?us-ascii?Q?8cN4Ml14/kmP+cE91Xw8LeDUUo7ycFQTl0Oki53p+sNTR8KQKQRfSqeiJ6Dc?=
 =?us-ascii?Q?p/6eSPnRo8BAaXlMje7pMXMfT9saNSEpPWbWYpobKi+8tpIC0N71N7YEvoIP?=
 =?us-ascii?Q?hJAxJTUlhr/YC8rK6ycWsPNXA9sdpYnpS8+Ej6WWMpD5TlFE9w8YimjycFsU?=
 =?us-ascii?Q?q8lY9F0shCKC6hPekebM9P/+2pi/axI4fl1zSHEwt5FKYHJ5yP4cVGhLLIdE?=
 =?us-ascii?Q?2kbtX7Psc8r53Btw8xqL76iRjn9cRNpCULLPbDaDfX6onEhq4ugtQR7UeMmO?=
 =?us-ascii?Q?Fm6m+kqcs4HasxwiT7Gnyryq31fJKcau2cBk7Yo/wWy9c+ZEZYwxQ7VOnn6/?=
 =?us-ascii?Q?PRBLkQhwUxiaLmE3P61E45F7nYRBImUFhg5hf3j3AfC+FA0cy5ddi+gEymup?=
 =?us-ascii?Q?prfRYIMe2ttwCONJpAlQmmGGUFoXXBdTpZ+W52I/gL9MkOJL1dMPDVwUhcwl?=
 =?us-ascii?Q?fTO0zb4T/tTOymEA3S7VsGBOEP9UTZPWtyY/vSeGsoFJkKpjma5YuU4wPN/I?=
 =?us-ascii?Q?pmyhlXEsa0RozbH3zoHRWV0ihYQScJp0xHll6sShvSgD2mB9UPpEVt4prEfr?=
 =?us-ascii?Q?feXmvNY69Jy2fsbEIJetYIkBaWBA4DODzeb1KlGx+QM3MAnCzbj8s8DL17xq?=
 =?us-ascii?Q?0BDj/jCuDEqk9U0/sJOCiX0xWmNX9ewYlQHnuz5s51vAnOp0Vzw9F0lWmlpZ?=
 =?us-ascii?Q?MilMWBsuG7D86DK8beLEJlXCT5BUccLOi9dvJjrGqVT6EGGB1kxor3rIH5ZP?=
 =?us-ascii?Q?kbunR3CD5KIQRmjM+1s93xfbin8gyN1c7ZTzq/8EFxZhQW/Wl1eKNkoUScTH?=
 =?us-ascii?Q?gHXw2KrRUOfTNWLh/Ou/9PLDd5vqnkgKn7NGel0JtlLVZStGOgPBo73NpID4?=
 =?us-ascii?Q?Rr49/bpxxLzUkHbRJuEvLsFbHyJcsmhQEmuOBGqdDu4XIDbSFdEp00/PHg7H?=
 =?us-ascii?Q?hwW+hmN7bZv7X9WeIMKwk59oOIViMxs649V9Au/lBTvapmm2bmluBJnBEEAl?=
 =?us-ascii?Q?wXbb0duikwpOw4bs8kwoajIrgJ3r1sFNhYhM4PVR8jX+aTCCHRtK9o8AIV+Y?=
 =?us-ascii?Q?AeSazecFyIb8XTajqIuTCPQMrkpi5PZVB79jy6PdlxPl3gdbeWW/w+3rxVOy?=
 =?us-ascii?Q?QFIrYTn2nyZLyqBat7ofzK5dDnqkTPMv6N2T/9UYzv5fR+w56HKow4Ry4AlN?=
 =?us-ascii?Q?oy46D3hL2/gw6kG2wFQ8fUWyWSk9w4KpMxUdCzd+nRubzO+MhrwXI051cvU9?=
 =?us-ascii?Q?7RRNDE5Cg+XjubTAEx5FSiNSIlSM3BFUUUNlCQUNBzfQGN3tKac8SjZMlFGC?=
 =?us-ascii?Q?TQolovjQzxhBgOTV9mG5+1Y2PoFhvsx//UFBHpOucRnV4LbQpqf2kY1JpHM7?=
 =?us-ascii?Q?yKKNtsxH6j9tGRcFr1ApoQTywPKT+xJdnlm70/Fa5191iCPMpukQpAOInUnp?=
 =?us-ascii?Q?za1B3SgVZtL+Lnt/SgvLdkQ4xlyHgShUp9eL9wVFA0jdWSxP2yBjtNOgz/Kc?=
 =?us-ascii?Q?HETmPUnFKyua2XB8+ncRhp/v9lEDNM+fgt5YpqqvEwQRo0Mmf37C3Pg8tNWS?=
 =?us-ascii?Q?rw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58a87da4-e7ae-46e5-1ca6-08db6d54f2aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jun 2023 03:59:41.8375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G/jX/0kHYck5VljLxhVxTnRBwTC4UVKtT8AVbl0TQgvct1HeVmmO5gIcN2mWTNM2hOWoY7Lr7G10q68LfQuxPAxNc/EuQtKIbocSFx+4KsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7738
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

Hello Mitul,

> -----Original Message-----
> From: Golani, Mitulkumar Ajitkumar <mitulkumar.ajitkumar.golani@intel.com=
>
> Sent: Friday, June 9, 2023 11:12 PM
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

We can do away with the drm_ prefix here.

> +static inline u8 *parse_sad(u8 *eld)
> +{

Nit: eld_to_sad() could be a better name here.

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

Please check if we really need this trailing 0 here.

To cover the case where the maximum rate is set to 0Hz(init value) we can h=
ave a check of=20

if (crtc_state->audio.max_frequency < 32000)


Regards

Chaitanya

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
> +		for (index =3D 0; index < drm_eld_sad_count(eld); index++, sad
> +=3D 3) {
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
> @@ -2403,6 +2403,8 @@ int intel_hdmi_compute_config(struct intel_encoder
> *encoder,
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

