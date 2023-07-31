Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C73B769226
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 11:46:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66BF210E186;
	Mon, 31 Jul 2023 09:46:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A24C310E186
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 09:46:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690796779; x=1722332779;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=KnZoBeQMAxXcE+I3/UvvncWMDH0KyyFhAnmXVDaZjRs=;
 b=XirraeUFV/HwkDSU9SnwOIB+KW6inncuhtQsta2th6CusTK3emC9bDgi
 cy6vEloKprUhImBGELxOq+av9PpKVLVFbB8WRHLrgNw/KSfpnH9afbF/B
 rgkva266fh7KTDrY3nAbvQ4HLvRgqHCCVqHtTwxBQR0hxGKqgw6lnj6fc
 Rkfd81Hy6t676n4qCaGqyrxGK5rhHzJraSl1eEEmN+agaJnGkqc+oNLWg
 w+Nvsd5aVOhcQkJIYehGvHNswVITPEybAcOnhypDdA5yUXfYMxAlIaDQn
 MqIDondFbLImy4M78VRYQyO/gkt6xpFtXuE4rdj3fNRWee4QDGJ9hZjG6 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="366454211"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="366454211"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 02:46:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="763333308"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="763333308"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 31 Jul 2023 02:46:18 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 02:46:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 02:46:18 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 02:46:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PyN3TqdzjqP29QLU5VvWSBIPkr0EeYr7vagN3K/mHlefP6EAzXgmfKDiYq4g80iec/z4gVPd+Tnmq9CmULk5c1JWCqTfIuXysIQBR8fpr+I1mqiGxMf5UNbKj8B/IcC3J+pf+E/lVfctmhrzFPoccIi/etM4kzmz55k51Jcf3Tac8WUD68U1EBX8u+aGPEurL3w1lIzKAJP7ez3oVsEWm04IneH5OpiKyz27f1DwpZxd45x9awXJHGwPxCfiK4IgVm+0h/UmFwyPOjJuAfCwmYfwHfac2OvZZApf6Jin5s1c7Rm1J/3p+Zu9nHk0nw4W9sHmoAX35WBAt4C2jAdAEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5PSjjykrXK/RV5wolAsC8SikALzPXm998NIkae+RYC4=;
 b=IkvFvhuJXUbzbpg99deYc40/0angbGTZv/Qvw/v+LQoykb+Z2+FWXmdQCMNyPAfDZyi7XbwdyHDlIf7QgtBxchYeybKWIgemQG0czHuh60Y3QbSx/GyVOGznyARESjrn07GWylTAjyWgz1dcfvQwH7w5RYZ9HXFASIEo3+tVTyxu8a7tA8hLJLWu9M6xcAqEvPOeOi0kxPYaeMvrg4JK/Amsssldv3IH1K2k3eCpZgX1pxlSKFMf4pAnOl/wiCn9Q4LmJ9hEJX3nYscObIdFAtUL1nBub5r0b/4laSJF3Jz0hpkgjdoluzbr6GNrQHqAgyn2yMoCYvxh+XyoMKHB3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB8382.namprd11.prod.outlook.com (2603:10b6:610:173::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Mon, 31 Jul
 2023 09:46:16 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::d383:a84c:6dee:47e3]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::d383:a84c:6dee:47e3%7]) with mapi id 15.20.6631.042; Mon, 31 Jul 2023
 09:46:16 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
Thread-Index: AQHZthZyyBN/A0Qms0y6bhvLU7TOba/O+4mwgAR/cgCAADmJMA==
Date: Mon, 31 Jul 2023 09:46:16 +0000
Message-ID: <SJ1PR11MB6129F386F8578FF3CA08ACDEB905A@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230714053733.2117730-1-arun.r.murthy@intel.com>
 <SJ1PR11MB61292C56230D5D4C493D9FE1B906A@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <DM6PR11MB317751DCD7C0B1B87EA94F69BA05A@DM6PR11MB3177.namprd11.prod.outlook.com>
In-Reply-To: <DM6PR11MB317751DCD7C0B1B87EA94F69BA05A@DM6PR11MB3177.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB8382:EE_
x-ms-office365-filtering-correlation-id: 54d64ebb-8941-432c-6d23-08db91aafc19
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: RPRNjM0dJorlvpNDMhPiEtPBlcUuyZioW+Tktz/AN5K9MiUizx8ZtneFaKmMs576d+d+e8n+UGCckSvWgBPPRBdk2qFqmeI9gVh1DdyK+2+/lyPExj0efNVFmy370Ls90uUCRMCFAgJZ1Rgr+hkxuw5rYvBEhCKD8OcJwOWFQEtHEgXODfN8tWgRwneydJS8UPoPk1W9WiomAkPw8zH7LWaWly1UcL3+Ey06law4bf9wyYVg2FB/TGkCRWANYu9WOxD5dWmdcqWp7b89+mR05Axpv2xF9x2fRlRktwI9Gvd1JGyGeozc0WHU0T92kelRdzgptVsFNOgrPKlmOj3lX3/hGZi4rKeOz1nnijpbPeKnu8fmxfxIPxC12Mb/nTT9u9YmCv5yMInLq6X/bbG5C45zpthvbLRJwKLF7GZF0c+MG8ZFbEDIsMDnlcT9nVm1eoinKK6DQOMQHF1yLLzgiTwJpE4H67GF5xroxsT6mdCzqkS12EwzpGFA3JHZBmfel+0HtTOyCUq+zVq06BSQdfgtNtl5qj6F37XhbUZWavxTEUq89vBuIa7JNanifuJbUptRw5mmaKHtskTDwIl9H6PXkCLUabR272Vw64niB5JnYmCRw4Z7AkkqGWafKwNM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(376002)(39860400002)(346002)(366004)(451199021)(2906002)(5660300002)(8676002)(8936002)(6862004)(52536014)(316002)(4326008)(66476007)(64756008)(76116006)(66446008)(66556008)(6636002)(41300700001)(55016003)(66946007)(38070700005)(33656002)(71200400001)(53546011)(26005)(122000001)(82960400001)(38100700002)(83380400001)(186003)(9686003)(7696005)(6506007)(478600001)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?D2Ye4BLtlPiwgbusjn0gcrPtYI06cunz4gd2a1ARQHM1HfImZ25yNGoCQBFL?=
 =?us-ascii?Q?uH+XrCOz+LnlC5HjOhc7zYnNXMNv6ScykWeTd8egyO6rH1FvqaeYUNc2O8Gi?=
 =?us-ascii?Q?hT58DZA8uKsA6mrPgGRyI8yhA5njC7M4EajiZRyrmteb3Xs6SyEKdlE1nBVZ?=
 =?us-ascii?Q?AU+/PiB5AB2wOpjt7AcxbwH5wT7TzJBV4ENZqzW8iaE9DX3KtPcFgWo7KbSP?=
 =?us-ascii?Q?NItXdAzjlR62YOM5DG03EHQ4Aaar6Ytv/FYk4qs6sAZQZRTw1ZgqzPJfzEfB?=
 =?us-ascii?Q?hBVVzsggG0rqs5pxGRYuv6jJ8OgxYLxDd+wzANhdolHrjAfmM/N29Lu4llp3?=
 =?us-ascii?Q?vsli2k3h96TgsTaCNNnE8eR6AROrsKtCcCt8t5MjUKuCyUFntQJeoUC98CZ3?=
 =?us-ascii?Q?JVcUCJaQsWkd6LDQSWBOShkmtEYE5Yb97fy6EhDjIwM7RBX6njC8kJOgHwYY?=
 =?us-ascii?Q?JAroDPC8MFaTIO4Hsbaq9Hv+bPfdKqHQJl2y4keQqx3TmSJasUSOTWUpeUFz?=
 =?us-ascii?Q?yQ2uSY2Is2g6M5+HOMpEwbnoXVAGg+IpcW+u9jGxzgjvdmT6exl7MJltmLkc?=
 =?us-ascii?Q?RCdTlw88BDKDGn1zI9l4hXDW5Ik27R7XVVr46t7H02wf7TStnXj58e2p229D?=
 =?us-ascii?Q?18f6c3vmfR+P4BX7EnSfLzigV8hZDOPpgWZSUot2ckfEo2/i7919EWU586d6?=
 =?us-ascii?Q?8RrPjKEVQp0wkVXgaPybNMfc3RJQWbWBff0yzg/lv2f7aURGx6uo3PZcq/q6?=
 =?us-ascii?Q?Yqu0rvQem9zNAmZZMgnuxkgUrKWqt62k2TBv/RRPQCvHDkQdyZYXm69b6DJ4?=
 =?us-ascii?Q?DXmn3PI2vmdkji1Sm1TnHPpQ1HIKyvqQH5st004Ze8rr7VeeoSwUQcuUNrIL?=
 =?us-ascii?Q?uU3WkfP/1zSgFOYFiCmjZyfmeiCZ49wMp3TDgjC/UyB8h5MUg33lBySSW+bh?=
 =?us-ascii?Q?QYDVGeZ7zfmRyEMKpdUk+9FUgAxOfmakMKn7n7DSJPH7nIrrj0mjpAPiFULf?=
 =?us-ascii?Q?zlorCUEyNbDYcMKpDfJbeW67ZoXkBXjyoR016Vz/bbHFndqSlK49CkayYm9O?=
 =?us-ascii?Q?iM0BJy49cK5v0LjM9T13Gu9PQ/Fw/jXsU10SLVt+IwH8dvZBCHHMVh6E1oHX?=
 =?us-ascii?Q?ceOghUELkMI1fj9E1I2EdBrOnbWDvBDrOR954LQuco++gnbt9XQee33TGOi7?=
 =?us-ascii?Q?TrhDBefCgff+i00T3km4VXT6bZCdPA2JO8P46RIzb3lCPYFP8r7s/jRHyKv/?=
 =?us-ascii?Q?6e/vBz/Wq2ue/GV4/DpP8N/DUYHTeua+FVj+w1Egg0qn8fLZUXKthcnGiVJa?=
 =?us-ascii?Q?Tr1BeMDhUx4pT2kNIu66HutKQs+uF1TEvKP7dAUdUM95QxYLlpyOb9vF7Lar?=
 =?us-ascii?Q?Cs5Rv2DThW63bjlgFw3RgwUZkhA2nw62uQF1GigKWcJsQ+sNzFm0XABh3jAd?=
 =?us-ascii?Q?9K0w+ktTWQ8Vkd0menTsavlngCe9UmmHH5kkqRS0o9mDKT8LOES3Td8FCbk2?=
 =?us-ascii?Q?CtbF6Lk9idTS3ZjgJx/XtURXs1f0rHLDBg2KdAkkzQYCGsfuBpfMvoYf71qd?=
 =?us-ascii?Q?zm81tEaM3qw9NfgngCfzjdT5Qzk2doObD9GpXXU7kyhV6+nB492FApQoqmnB?=
 =?us-ascii?Q?ig=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 54d64ebb-8941-432c-6d23-08db91aafc19
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Jul 2023 09:46:16.2492 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IclKBceyxQqBAn8q2lG37pKNqhYxP49qS4gJewSskMGSpEVmEgpOQO1C/LmdLamDcOjsabh6CWPVdWKqAG9EP5GunuXqnKk1kqPvP5BCjR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8382
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP CRC
 enable
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hello Arun,

> -----Original Message-----
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Monday, July 31, 2023 11:25 AM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: RE: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP C=
RC
> enable
>=20
> > -----Original Message-----
> > From: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> > Sent: Friday, July 28, 2023 2:48 PM
> > To: Murthy, Arun R <arun.r.murthy@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org
> > Subject: RE: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in
> > SDP CRC enable
> >
> > Hello Arun,
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Arun R Murthy
> > > Sent: Friday, July 14, 2023 11:08 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [Intel-gfx] [PATCH] drm/i915/dp: Fix LT debug print in SDP
> > > CRC enable
> > >
> > > The debug print for enabling SDP CRC16 is applicable only for DP2.0,
> >
> > DP2.0 and UHBR?
>=20
> This is a DP2.0 feature that can be enabled on UHBR rates.
>=20
> >
> > >but this
> > > debug print was not within the uhbr check and was always printed.
> > > Fis this by adding proper checks and returning.
> >
> > Typo.
> >
> > >
> > > Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> > > ---
> > >  .../gpu/drm/i915/display/intel_dp_link_training.c    | 12 +++++++---=
--
> > >  1 file changed, 7 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > index a263773f4d68..4485ef4f8ec6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> > > @@ -1390,11 +1390,13 @@ void intel_dp_128b132b_sdp_crc16(struct
> > > intel_dp *intel_dp,
> > >  	 * Default value of bit 31 is '0' hence discarding the write
> > >  	 * TODO: Corrective actions on SDP corruption yet to be defined
> > >  	 */
> > > -	if (intel_dp_is_uhbr(crtc_state))
> > > -		/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> > > -		drm_dp_dpcd_writeb(&intel_dp->aux,
> > > -
> > > DP_SDP_ERROR_DETECTION_CONFIGURATION,
> > > -				   DP_SDP_CRC16_128B132B_EN);
> > > +	if (!intel_dp_is_uhbr(crtc_state))
> > > +		return;
> >
> > I see that while calling this function in intel_ddi_pre_enable_dp(),
> > we do have a check for for DP2.0
> >
> > if (HAS_DP20(dev_priv))
> > 		intel_dp_128b132b_sdp_crc16(enc_to_intel_dp(encoder),
> > 					    crtc_state);
> >
> > Should this check be added within the function too for the sake of
> > completion?
> >
>=20
> HAS DP20 just checked for the display version number and not UHBR rates.
> We need to check for UHBR rates and then enable this CRC.
>=20

I was alluding more to the fact that there are two conditions for enabling =
the CRC.

	if (!HAS_DP20(dev_priv) || !intel_dp_is_uhbr(crtc_state))
		return;

But if it is implicit that UHBR will only be supported on DP2.0 or/and this=
 function is not
expected to be used anywhere else (and hence without any possibility of thi=
s function being
called without the HAS_DP20() check), the change looks good to me.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Regards

Chaitanya


> Thanks and Regards,
> Arun R Murthy
> -------------------
>=20
> > Regards
> >
> > Chaitanya
> >
> > > +
> > > +	/* DP v2.0 SCR on SDP CRC16 for 128b/132b Link Layer */
> > > +	drm_dp_dpcd_writeb(&intel_dp->aux,
> > > +			   DP_SDP_ERROR_DETECTION_CONFIGURATION,
> > > +			   DP_SDP_CRC16_128B132B_EN);
> > >
> > >  	lt_dbg(intel_dp, DP_PHY_DPRX, "DP2.0 SDP CRC16 for 128b/132b
> > > enabled\n");  }
> > > --
> > > 2.25.1

