Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFE5D69D53B
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Feb 2023 21:50:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2B6688E26;
	Mon, 20 Feb 2023 20:50:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C689389EFF
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Feb 2023 20:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676926249; x=1708462249;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ZRzKdn2BBBHgOoZzeuviiMDrxDRP1yrH/jtSBwuy74M=;
 b=FpMe1jq5nQIsVftSPr3njRP2z4nEMLK6mCl/89I2d9/IcjFD7PBJLd9+
 C8waStlaMAoegBdUDF3msgP3FUUag/XUicVKHvFYS3KKEAc5qHLXrPoUN
 xJ6/FYzXQE/UQSFJyrrZHWJkMJ6Miryzrh3+vQE3CVNuXq7RCELSnqoXS
 Q47Nn6jP9eVBBNQBG6R0YCJZ0b/mjOw15aoDq/kp9/vMuFF9oz7OC1uYk
 P8zek+Sxhm04fjiiBUCcBAaHhtAbDR8qEuYbgclJrIdIuvU3gH7sf/9PR
 JwfvDDHFqxFyjIYdncxoilDwBFape2zLooHHKTOAlCfRP3vr+3zdq97+d Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="394970647"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="394970647"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2023 12:50:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10627"; a="740163423"
X-IronPort-AV: E=Sophos;i="5.97,313,1669104000"; d="scan'208";a="740163423"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 20 Feb 2023 12:50:49 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 20 Feb 2023 12:50:48 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 20 Feb 2023 12:50:48 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 20 Feb 2023 12:50:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ICrMYqgkw6ZHHTIvoSNJVJRNFMBPGsH8IC8VHnZa+CEaLCHdNGErs2vPEc4nkt1364hk7Tf0Ksg7GaIY/Ax/qnJ+7InKtw5mDf+Shfa4/LwfEhTjfoTWNm8t4ilJo5rsCGFqmC4yODcvwKpxtHD4+CK7monE4uSkA4q1xca654usbhefu1SfbYwQnriYgUlxSg5U8dOzNOLDRXGHW9bNSyjR8ZjiBvy/189ZCHp9aU+MGefiQJB8lIkiTHf8Szy8aKQhMzkFwZhd1CPdWJMduVIoJpaAzc8IV8WPrvBVG0BGoC7l6VDpjL7Do7BMsUJOgsNkKDOBD2k383cTAapT+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XWDiLxP+OOyKWJPchAdZQ3HQmiRQ9prRuRoMycQq2B4=;
 b=iQC0vHuz9dxcJV4IQe0Fg8b5GHmi4TQthQ99YpSbixwFMvbcTDP8RAP6GAmKugSvLOIR2xCUOUUaq2ykRI5TXQJzVoGdtV3iWwgNdbsm9g7wPYbIEbR3jWqAE8XXcpOvG0zytOTra7MFKWZ08diGlsaBq1MTC6e+jadpjKr2cZRZKOJoJBEAkYwKkduwwLwrSTvUoYJw8DaF7fNiP4hlVH1xsoecvJ/b5rRLxYS6FlKS8vFWFdKjtIZXuiFrKTj0LsDO6ceIWuLSf6DSPSQIsekcvK58UcAvEAcKTxDujZ648H4SJ6vbX4VddhRKlNUXj1facWvz6X6kLqY9FjPyCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SA1PR11MB5803.namprd11.prod.outlook.com (2603:10b6:806:23e::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6111.19; Mon, 20 Feb 2023 20:50:46 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::1b38:222d:6496:fdd1%5]) with mapi id 15.20.6111.019; Mon, 20 Feb 2023
 20:50:46 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v9 1/7] drm/dp_helper: Add helper to check if
 the sink supports given format with DSC
Thread-Index: AQHZOsg2SBM6GMY8y0WDGPdbI30kla7YX2oQgAAE2fA=
Date: Mon, 20 Feb 2023 20:50:46 +0000
Message-ID: <DM4PR11MB6360951860EB7D4A7A0D71D9F4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230207074416.3209722-1-suraj.kandpal@intel.com>
 <20230207074416.3209722-2-suraj.kandpal@intel.com>
 <DM4PR11MB6360BB203EFF733C19389C4BF4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
In-Reply-To: <DM4PR11MB6360BB203EFF733C19389C4BF4A49@DM4PR11MB6360.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SA1PR11MB5803:EE_
x-ms-office365-filtering-correlation-id: 7248a68d-f78a-4e63-c0d6-08db138423dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tjDSC/SPwCNAbPYXSJxmxYPkXhoHaMD+R2a7M/uCIWgKJkqCA4Kzt3jFmCHkwbECzLdCmy30Zzol2yKZLfPSiLGzggGXXh/7xva9QWm0xJJePoNOXiXVA6V0Y0IBPoh3LsGMIfKDqIVT4P9ztQ/9Gw2ONRxOGk02wr/k6LUCvDd6b+JbHgNXuy1NrZdyJvXq1qTTdZxmEWcRBX8rAnnH5o5Bv2SoJYcloDD1D3H7ym67lK01yhwGZHUqNtxrWnQqGUmW2De080Ivo8inA6H28g3wmpsNmr8bv6V14OKV9wzg3EkiHMD44fHxBJz4aiPE15mbVGG4MSj3BSSJJThYMdnPd9RJCfzY8PdSIdAo66bxY0Bn9Y9MWktYXVlx0ZWhesjNB6SDpImGXe/ke0PvpmWVF5pvfycvp2H009t5spyiDa39nvRf9eFYAPScIswsyDXiDlE9o/urpNdiG2ij8IBu1LUAOTgm6KmWQ/1ulzOTGTTEp63rbgGnusv0PUtMP30CJ18AEeC0wp4cV2mf6V3STSQVJvqzeFEeaa222/HXBRQbgNis0U6tZd0zO4JqrePxRMTpvJkFoMOrcFmK0IyIz1/SB6lQ9SNl+vAZQvwwatSufxkqWE8Z+GZsEos/kvoUOYKe5a8Br9TRXDwsA9NQE3VBmysOoBGQ+HENsZuw/3k8g4rRKv80h+1xxwpBeTAETNHKGMIQ2WtrvdnkEA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(366004)(376002)(396003)(136003)(39860400002)(451199018)(71200400001)(122000001)(5660300002)(82960400001)(86362001)(2906002)(38100700002)(478600001)(7696005)(9686003)(2940100002)(186003)(53546011)(26005)(33656002)(55016003)(66946007)(38070700005)(66556008)(110136005)(76116006)(316002)(83380400001)(6506007)(8676002)(41300700001)(64756008)(66476007)(52536014)(8936002)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KzjXh/VEBCml2bwBsAO6sS+h/8BphP+5/nsU7y3GGwGP9ZU0Wa05bvtXo/zS?=
 =?us-ascii?Q?89Sq5tfHGgxzH14USU35AaTEg68ePcrZfcben+Q+O/cn6uNk7febJ1+eYvy5?=
 =?us-ascii?Q?LGZQ9yh1KyZizdGfeHmQNwVW46qvQoAg7Lc+cNtwTgA6YmOifzydm32eTrbx?=
 =?us-ascii?Q?arV1BlX52ZVajvg7jtAje9y+B/I0F+VDNiw9SbvEZqzMG8J5l+j3LT9WyIQQ?=
 =?us-ascii?Q?h37z/5xx342i5K5faGnxMgNtWT+hNTJJh6ZIQV5AP52HIXH6jx9zJyL3hO0v?=
 =?us-ascii?Q?LjsJiPCKyQyHETf9bpr76tqEqkAa1VmFXcfLK4yThsd0qvKSewk+JrqDbsF0?=
 =?us-ascii?Q?EslouYl9DhEZoa+ueI/o42uWRBRgrhGupOOJO2DsJwD4MFZT+XXz6JSThdMR?=
 =?us-ascii?Q?b/YArY4lEyCSCY4i7CuECkwHvegXl821dgTsfIDbRTcAwflYMs4QAcB2DjBh?=
 =?us-ascii?Q?G+VmLmEtNvNQCWG/KXqyDS9GOE5toWqJOrFkgAnW2UT9V4F7nP8HKFWOm9/R?=
 =?us-ascii?Q?B+zaKtBX/YHWlqSi9UMpwNR5xV0Btxiv5fh6Q4UGjmsJBcXraGca4FdLkNre?=
 =?us-ascii?Q?1xMvsB5JzYuOsALBGw19RK10o/QDqx6L51JuV3d+gaiWC/U6tATijekMzJhM?=
 =?us-ascii?Q?AftAFoQGpsv4/M4tg4S3hDASdcDw3H0mIVkDlWJC2wdHqZk+hVLaBksXL0Vu?=
 =?us-ascii?Q?H8NzcCIsIa9OsbyqFyPaxvfTkfLgE0MIanjkq5tsig/ycoCJZCNJa0LRZGz4?=
 =?us-ascii?Q?E6uPv1dCF0g5pEJCoD64uoTcLAnvG/eBU8KTgS3lS0iiMZUJx52Pv+q0qo3+?=
 =?us-ascii?Q?8cRmGn3dHGAnhzNkox4NEl9Wi32XlxxToNVXfoRA9z8ltxxMWMIDu6QaqfTV?=
 =?us-ascii?Q?SiZiT2yhakRb8WTkCxdEziebqhOsileY34mLpQxZ93rm11MgQC9XFhGn3hSd?=
 =?us-ascii?Q?gNd17aFh1G1kVx/xoGJ51Eqkzkak+X/bzGAcC7ucPN+JsoiQCZSO6Oou/OMT?=
 =?us-ascii?Q?fyJpdBhHcm+Cdix87ZuWChpRIBbtdGhM2nUbUMZsYEH8JNvBGx1tA9/lYt51?=
 =?us-ascii?Q?WrlzYw85j2bMZdu0yyCFMPBEhqI1Y+DT8476+rJ5D+TytXupeR2fAcvFeKra?=
 =?us-ascii?Q?6smhPcFjogZzSsjq17QYS9VLo0coAMdn2s45lKGb7T9qyBdCo0m3wWp6qEbP?=
 =?us-ascii?Q?3V7t3WCXG3pHseGprpqhmZlKQ/DTUiQW+smS+rwmKt6W9qb3MP7qI6FJX8Vp?=
 =?us-ascii?Q?LScEcyy7T4ZlqKr8KY8+JEr1KPwDSGYT70xuwzu7p+OOPVrX47dEgd9t/b2A?=
 =?us-ascii?Q?5fB1m8EUbYU4MLH4QRFqVGFv+8g8O3uwkSdpisQeRMZDefoYTiABFygwhRjG?=
 =?us-ascii?Q?eyr9CrQBI62irPiemScecFvSu1/hSH6Wnqmd+3Fazxxa9x1KIb8/KFfu2O7F?=
 =?us-ascii?Q?59+p7K84kVh/CfWfzsi2R9u0AMzSbZhTSLhNPw1h7047/+tQJGFW5kTLfKa3?=
 =?us-ascii?Q?XeSUCU4WWj9T0VF6jOT4lMfqPzezgGRBMX2XWuAMapTD5ahjHnHnjSyaJ/OR?=
 =?us-ascii?Q?aDrumtbr2DYLEI95RD8qqb2qCnKiuFLQfSwKKMIP?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7248a68d-f78a-4e63-c0d6-08db138423dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2023 20:50:46.0869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4N9D6hG7HQXwolPd1/uJ+vf15Ejbr3dd13guBqqTqxQhk+/sKcu5Cm56kOXpT+QgjWYvSz3u+04QcWIX5GJTxw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5803
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v9 1/7] drm/dp_helper: Add helper to check
 if the sink supports given format with DSC
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



> -----Original Message-----
> From: Shankar, Uma
> Sent: Tuesday, February 21, 2023 2:08 AM
> To: Suraj Kandpal <suraj.kandpal@intel.com>; intel-gfx@lists.freedesktop.=
org
> Subject: RE: [Intel-gfx] [PATCH v9 1/7] drm/dp_helper: Add helper to chec=
k if the sink
> supports given format with DSC
>=20
>=20
>=20
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Suraj Kandpal
> > Sent: Tuesday, February 7, 2023 1:14 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH v9 1/7] drm/dp_helper: Add helper to check
> > if the sink supports given format with DSC
> >
> > From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> >
> > Add helper function to check if the DP sink supports DSC with the
> > given output format.
>=20
> Nit: You can drop "function" and "the" to truncate it, add o/p format to =
be clear.
> Also I feel this can be squashed with 2nd patch. This seems to be a stati=
c function, so
> scope is limited.

Skip the squashing comment, it's a drm core change. Its good to keep it sep=
arate.

>=20
> >
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  include/drm/display/drm_dp_helper.h | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/include/drm/display/drm_dp_helper.h
> > b/include/drm/display/drm_dp_helper.h
> > index ab55453f2d2c..d529d0254b68 100644
> > --- a/include/drm/display/drm_dp_helper.h
> > +++ b/include/drm/display/drm_dp_helper.h
> > @@ -194,6 +194,13 @@ drm_dp_dsc_sink_max_slice_width(const u8
> > dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE])
> >  		DP_DSC_SLICE_WIDTH_MULTIPLIER;
> >  }
> >
> > +/* Check if sink supports DSC with given output format */
>=20
> To stay consistent with rest of the file, please elaborate the function's=
 purpose and
> explain input parameters.
>=20
> static inline
> > +bool drm_dp_dsc_sink_supports_format(const u8
> > +dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE], u8 output_format) {
> > +	return dsc_dpcd[DP_DSC_DEC_COLOR_FORMAT_CAP - DP_DSC_SUPPORT]
> > &
> > +output_format; }
> > +
> >  /* Forward Error Correction Support on DP 1.4 */  static inline bool
> > drm_dp_sink_supports_fec(const u8 fec_capable)
> > --
> > 2.25.1

