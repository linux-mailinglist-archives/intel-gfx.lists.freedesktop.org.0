Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F82E66BA0B
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jan 2023 10:17:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41ECE10E152;
	Mon, 16 Jan 2023 09:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50A5610E152
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jan 2023 09:17:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673860623; x=1705396623;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cGrOx9gZ9rlX4oohYQyBmrazctTmiCvViWHVTqCSiS4=;
 b=QYeE4zGP+wPrWcovyWn3+pEMKRgLXp/LDHkH2Gc7E2CLQ9sEJy2oZVRf
 5Oo7X0pDPuqmHw2ooo22lOrmC30hc046fJyhhiK8JPveypne8VJ35XKMF
 Wg8j+3arHy92WSHbbID5UWgVzexTuBzfd6g5u65YMY/8bq/OLYq5wGF1G
 855rfoBESlBUp7BNYtlXLaADyK06BRwv0RQ2JgrqM8I6zOsnn88irnzBC
 a/ivSw8sksQeY4lGe1OzMQ4TYlxC4TLa+0997kqeZULtuUeZKTvxekSG5
 1VK4nuyfm1SACOwNhYDLtWGyHc/135lzTPDDIYdGnu+hzkdNouOpSmI8y g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="304804484"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="304804484"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2023 01:16:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10591"; a="782844112"
X-IronPort-AV: E=Sophos;i="5.97,220,1669104000"; d="scan'208";a="782844112"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 16 Jan 2023 01:16:36 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 16 Jan 2023 01:16:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 16 Jan 2023 01:16:36 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 16 Jan 2023 01:16:36 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 16 Jan 2023 01:16:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N+gOXbBfD+3mab4dGcg4MFgfMEudQXTmTD2CMXatS0RoWwxmKXABfT/+1yxkXsijdxk+Q2mp56x0hJLXsSDPEbC5d8B/0K1eOSjzS8TlHRwadQ6Q5YuRBXpLPyZGog2oQfzEAofOP6vSdg74ZBWC3PUpa9fF2kGvp3JAaf7Gt9sbNO9x0hAtnCfgwUyFWr+ulTa1MZb/NArdchniKPSqbLKW9B6XlBPxeflMkDNWfubSlhdTgyLM6Sz635T5IEB3nETq5Odxff/26o839B2BMMGokkSaFCTj3WKKOjyl8c4OaMiFG+zXk4eWLbL6SMFzduCGcfW82yXl1SHoL2UJgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fY5sCwdmjjHnaviCcsmvtKY3KZt0Jif1QeLPSiawye8=;
 b=kLY3jQk5S5WKtsLwLYfuvQ4VS7H021BQjGPoQIN0SnIfWuCM7AbTSXSdMsHi2FJ8+KgNDTS6jse2UgP6cXEvGoXU6u9u7zcr36b1hGMuwROwnscE2aETNWYqRzf7K846w7ane70WM33O6M6UnhYDUL84joIfXfOr1MWZYiz4DXaKAvnOTbNmZncdhM6NOZ+QHmLZ9s42b4X7m/+1posML6GWSZSC7orUZnTZbPTiKza790ZNusRJMvm7lKh5gBRQJz/x+ejycZDCrWtm6QjllwBT5ZfN6badcjTCXEfsYynIrJ9pFcdlr+Jo3c4DkPrC54ZJvFb9hYxKJ3TZAOCgNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CO1PR11MB5123.namprd11.prod.outlook.com (2603:10b6:303:94::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.13; Mon, 16 Jan
 2023 09:16:34 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::7827:fa46:df42:5703%7]) with mapi id 15.20.5986.023; Mon, 16 Jan 2023
 09:16:34 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
Thread-Index: AQHZJmoW+Yh70yP6m0e8tlXtjYwS066gyFkAgAAAgLA=
Date: Mon, 16 Jan 2023 09:16:33 +0000
Message-ID: <SJ1PR11MB6129BAD069FC94AA89498A49B9C19@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20230112094131.550252-1-chaitanya.kumar.borah@intel.com>
 <871qnug7xb.fsf@intel.com>
In-Reply-To: <871qnug7xb.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CO1PR11MB5123:EE_
x-ms-office365-filtering-correlation-id: 44c5f89f-ccda-4b87-0167-08daf7a25cd0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bHubYY19EfiWJcc4YQqQJvcz/zJoPEl9vPHLECNE8AyHEHpSMyV/EJBLRCFvvwlb+RFVTNK+wIJa+vdk+8iZxuRm++i61ZD2kuzXBsC9HKB+rbQKIFqe9dcyZkzRAKmheA+Rmn5UsdmLtYDaUof/qGY0QKgQ6HwhKmIPeBT4t2v45JssceZgR9Aoy8Yu5QkGjysRlAc0ecW4s+MXm+rboc0OMO2ALzgshpvXeFXpLsq8qUw/Z8d0FxSWRf+5ctMbfcvK+qFsLmosBFXDNjZI8SYrqnLhHzI/ftQjekAJAJic5EZ1+gOnckwXEfcWLsgCtDxp5gw2jW8nuuWZA6FMK4DF97uC/zuRNwe8enLs1svNwy4e+uUFBZMAS3d9uxo16A8oDd2qCJkECXFnHvAG3MlIjAOHmzFlZKHV5QpELaLDSVXLEo4tfHeGnKQSvWD+h7prSzSzre86n+nBhm0VMAY/zDpiM8POrGE0TRdxm23BTre9ezUR6ikiw3PChEHilCH/OzgYjm1r0cxoA54GLCf0uqoYmkXMDirAv7DsczGwU3Qcojw37UsLXdlSPVIn37+oX2KC2pPbcTpsD10eDoIqK2zmJniLyT27p4yQzOnsu2sGxy1o77zClyNwE5tK2J0t0R9AZLLoGRSK5rfIYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(376002)(346002)(39860400002)(366004)(396003)(451199015)(5660300002)(122000001)(55236004)(53546011)(6506007)(9686003)(186003)(83380400001)(33656002)(86362001)(2906002)(82960400001)(55016003)(26005)(38070700005)(38100700002)(316002)(52536014)(54906003)(41300700001)(6916009)(66446008)(64756008)(4326008)(66476007)(66556008)(66946007)(76116006)(8936002)(966005)(7696005)(8676002)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Rr6RpS/pelTA/bFd2AaUXnvTLisWHYjOxEzQJDq1wemOdTk6yxn3XwIWyjxT?=
 =?us-ascii?Q?cpJW8xqh1G1pa0NrczWSScQRYy8A0HE7QrOi7wIh1AEIQvP2PwrY+xLSDgHE?=
 =?us-ascii?Q?yq6OgA89m/QsMp399WyP+ol9NIvATxO6TVmtSyVkWbnqqov7OqDsUjI0vERN?=
 =?us-ascii?Q?15Rn5vSR/ae3+HNIaxkdke2ATAiuPNTcuAeMBHWScnQL8t/RbOTGnbunhN2o?=
 =?us-ascii?Q?KeA5FQK9sw1A9m6q9I337e2xRzuKF063XCx1dtxLGU2T4O7JMbRapHYghI8v?=
 =?us-ascii?Q?iUaTSY0FfQdLugDP1OUGSWNkx8JtL0igq7H4luIUkjLD0xYl4zZXcThKFM1B?=
 =?us-ascii?Q?El89Cj+L4A0q6tpANyT1KoEADpz9fQQ496uOTpdIWYTRkaVWcPB3sZI+FQWu?=
 =?us-ascii?Q?0K4UMd3/qWimA8GP6pLteN/ue4cp46clyx3tV0Zx+HJ1tIH1coo6B4XjvRVw?=
 =?us-ascii?Q?BgiONBbWL+qc9ZRuKauEU0fedT0Y0SjnPwopehig6Dw6LCfsm0jr4qvFXlUh?=
 =?us-ascii?Q?TLjaCelRvxRUClQbfyQir3ahr+YhdAwYI16c4IJzBRDfmsIhSPLCfcxtzCPg?=
 =?us-ascii?Q?xBoc2Ijqx29lLsfFzyOWEZelmOPa0MVa6IQ+t/KSEryWgxAc8whd4QjUwngc?=
 =?us-ascii?Q?hC7f/ENHXC7WzFgnRfpX25ik0nbXOyJFBnmknmxaZKlNlk7871yyjQXbmlD/?=
 =?us-ascii?Q?pcrTTC0cCeDFc71sj8+0GEU4E4VK4ae5EIMWS9Cd93P+ESSSaZkZw1/j4JFc?=
 =?us-ascii?Q?SvPSjPymc3MmXewQUWk5Tw21MF6o9vnTb2KgFR3f3lrdG9kK5sNuTbgFAwsL?=
 =?us-ascii?Q?a0AmViT1sSGv/HySVxLRNZLWbzHdZjbqrMKMHp+SsM5waLBTMaUI1N+J8TRN?=
 =?us-ascii?Q?MWR0iBRELG6oVPt3xOqMHGp7NfrqsVkk5uKB3eIfyyRsBLCqqAT6oi0ACdDo?=
 =?us-ascii?Q?ViDVAqIwzn+uaY0mtI036V4PwRUiAzhktUkTA4aYJznc8xMWLCaz4lz6FjIO?=
 =?us-ascii?Q?aF/hMSSpkEuU5e3X2AwTRzLXPWa0hue289yM4Mc39p9m9km50Hcw4zpO3nB1?=
 =?us-ascii?Q?+IWNraND/TkiRQyWmS1iApK2d/Z97C5FYHbpYfc2s0bUTtO0M+1JQc2/+sMi?=
 =?us-ascii?Q?2G36Sq547YhFnXskzji2s0MXPtxiYuBLXhyZ9sIcqMvhBWVR0ebGxRfjzhxZ?=
 =?us-ascii?Q?upzWelM0wAoOnJinT3HAGCLNRcsJ/TKdczDL43Z7zWrXHbVuESd9aKFoy5sm?=
 =?us-ascii?Q?pFhSrLtrOvyHFE3Ta5a1RUOo5C/Hg+72vtzO+qKr9ieR27Fhb1TxGlD8RkUZ?=
 =?us-ascii?Q?ba9No4rbH3lImAx04NkTT+MCTFQv5KhQ79dGdfg8xz/cQ7wvL1CYLHpZQQfN?=
 =?us-ascii?Q?l4zs1u5GjWCJJRAZhZYHiWCfgcjPylduqDB+OguxtvqA8n6zVTvI8hQQed/V?=
 =?us-ascii?Q?o3hH5U49C6pcTpnmlyOO8SouRPZz07ekNCQIhUhMIvBBbGLI7wgNVcSjdBro?=
 =?us-ascii?Q?vnOX3NxY2dfnU0QHe4T90P8nlgpS4ZRTwcY0zpH8NlgaE3yx4rxe/hNVhdS9?=
 =?us-ascii?Q?ULNSiQ7wZNw+8E8fT82A6OZvc0QoU09yFGQLEHxzSlL8k+KSblglYvxUnxl/?=
 =?us-ascii?Q?+g=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 44c5f89f-ccda-4b87-0167-08daf7a25cd0
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2023 09:16:33.9931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1XSdlTyX7E2wuqg8tYqS4rlN2sPSKEkL9hch0iftefRXaokXQd4bYxw9NQ2UEBM08NzFNADEroWul14b3LD0pLOb00uXeaXMZEIzysSYVZc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5123
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference
 clock
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

Hello Jani,

There are no bug reports for it. It was pointed out by Matt in another patc=
h series.

https://patchwork.freedesktop.org/patch/517283/?series=3D111472&rev=3D3

Regards

Chaitanya

> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: Monday, January 16, 2023 2:42 PM
> To: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Fix typo for reference=
 clock
>=20
> On Thu, 12 Jan 2023, Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com> wrote:
> > Fix typo for reference clock from 24400 to 24000
>=20
> Is there a bug report? What's the impact?
>=20
> It's obvious and easy to say there's a typo, but the harder part is match=
ing
> this against observed faulty behaviour, and that's something people will
> want to do to match bug reports and fixes.
>=20
> BR,
> Jani.
>=20
> >
> > Signed-off-by: Chaitanya Kumar Borah
> <chaitanya.kumar.borah@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 0c107a38f9d0..7e16b655c833 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1319,7 +1319,7 @@ static const struct intel_cdclk_vals
> adlp_cdclk_table[] =3D {
> >  	{ .refclk =3D 24000, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 16=
 },
> >  	{ .refclk =3D 24000, .cdclk =3D 312000, .divider =3D 2, .ratio =3D 26=
 },
> >  	{ .refclk =3D 24000, .cdclk =3D 552000, .divider =3D 2, .ratio =3D 46=
 },
> > -	{ .refclk =3D 24400, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 54=
 },
> > +	{ .refclk =3D 24000, .cdclk =3D 648000, .divider =3D 2, .ratio =3D 54=
 },
> >
> >  	{ .refclk =3D 38400, .cdclk =3D 179200, .divider =3D 3, .ratio =3D 14=
 },
> >  	{ .refclk =3D 38400, .cdclk =3D 192000, .divider =3D 2, .ratio =3D 10=
 },
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
