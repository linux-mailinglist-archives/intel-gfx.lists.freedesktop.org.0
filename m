Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C79A553468
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 16:22:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E56410E82F;
	Tue, 21 Jun 2022 14:22:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3645F10E82F
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 14:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655821334; x=1687357334;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=sYqmobcIVp4Rgwd1AsFMjzru+2CFu+OMfqgGX2jepR4=;
 b=ZvWswYq0IY7oSv0eC9X2JN6RtFLGEYgDdeeBVEK96Mm+X51aKgtyGfTC
 rvLyYig0mP1aUugQ4/legKritnBtVes/I+2YJGxMzrUo1MxoGqPAk3Umy
 xMy5u28uR5Zfzwa5AsN8mKut9G/FwwPf50OBDFp6itvir76o7/rETP0tB
 owaad1uDHInAmpRuz1nLDguIwndzXM3hlGUmqF+XFr4CNAGb8O0UA3Yde
 nifjCdaIkJrXNQZqXgYS936rju05xSIULVv0+9rFBAH+rwlKD0ak5IJsf
 fKNj1d1B7D2kscgOaY+Ji7uNyZYAnKCbLphJHfJ8N06LvP9inDkjM+K0X g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="366453281"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="366453281"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 07:22:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="591668580"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga007.fm.intel.com with ESMTP; 21 Jun 2022 07:22:13 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 07:22:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 21 Jun 2022 07:22:13 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 21 Jun 2022 07:22:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OmnMNPGCo8tf/NfWIUpTjVHlKLtgeSs5KiWAn7M1Jva/4rOXDk6L0HTWrFhNVSbEx9Lum9n3cDrj9uuKfI+t3eVgOFTOKGEiZCsNKvQaMTfB1K/7fPfztnYu2JTgszaM0EIAn2ouqNh3mVND/Mvaogxg6XAYm+eNaV0MAYgMTHa+/UHQVfuQxMTaULaRo7JVOGw5/K4ZfdT1los0673aZVtu+d6jBaip70xUulurFdDPSYRUF0wT7yw9P+jZDkkbWT5dGQX80Gcuq07LOvPW1QqARK62l/yHQJXxC9tq7KRkFR3LdHiyjsi/Ls0lKqXGoKYbXtNO2aiqXe7pUaW2hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iCW8TJbo9tL6Zcg7qazgS3xWICnJuNIgxbGTQ/5LLgE=;
 b=MJL3rTOLN+SNG7jWtxMugljbajz3vx4OjO8N4tGDv5/HamDbL6PTmuANbxlkivIYxbaFOu2XX1W7/mVmD1MARv0UNMBvjP1Hu47pq6soaavB9PdM/4Q2F7UBL1bmaRpwP5/j//L9S9lVeCZqch70cw8orpMuldJZJ9p2Jv539iEuzLMnGel6lebh1ECujFxgbwGWFx5aaKtZVuNhmNxD6X8CRRAhg4QmH80iwv8XagjIYJt6lur5CKKjxbtkLCIUnGuFVaF8Y51VL8v+mkRgeIu0/O7/RE8UkABf4YiYwm97NQO/thyOW2ycvsUwXz/6lUPrRfaTcinswiYbNclHkw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB5248.namprd11.prod.outlook.com (2603:10b6:5:38b::7) by
 CY5PR11MB6185.namprd11.prod.outlook.com (2603:10b6:930:27::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5353.14; Tue, 21 Jun 2022 14:22:11 +0000
Received: from DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::bdbc:234e:17da:f74d]) by DM4PR11MB5248.namprd11.prod.outlook.com
 ([fe80::bdbc:234e:17da:f74d%2]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 14:22:11 +0000
From: "Tangudu, Tilak" <tilak.tangudu@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Ewins,
 Jon" <jon.ewins@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>, "Wilson, Chris P"
 <chris.p.wilson@intel.com>, "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "Nilawar, Badal" <badal.nilawar@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Gupta, saurabhg" <saurabhg.gupta@intel.com>,
 "Iddamsetty, Aravind" <aravind.iddamsetty@intel.com>, "Sundaresan, Sujaritha"
 <sujaritha.sundaresan@intel.com>
Thread-Topic: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
Thread-Index: AQHYhWmgH8j1SeUi1EypSLtLCiSFA61Z6EGAgAAAP9A=
Date: Tue, 21 Jun 2022 14:22:11 +0000
Message-ID: <DM4PR11MB52480BDD4014D227789713F4E2B39@DM4PR11MB5248.namprd11.prod.outlook.com>
References: <20220621123516.370479-1-tilak.tangudu@intel.com>
 <20220621123516.370479-5-tilak.tangudu@intel.com>
 <0f1834aa89ed4f6b89db4ee7eacdbd55@intel.com>
In-Reply-To: <0f1834aa89ed4f6b89db4ee7eacdbd55@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-Mentions: rodrigo.vivi@intel.com,chris.p.wilson@intel.com
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c154be39-8440-4ef0-23d5-08da53916e6a
x-ms-traffictypediagnostic: CY5PR11MB6185:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <CY5PR11MB618505A5DA545BFC547B2547E2B39@CY5PR11MB6185.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QVbuKkG8JI9NWQCNhjqJyB1RT1tmuRwcvlt+JM5Wvl40GKTC1TT7fmUjrgWZ0PCUN3BY3qIksWAUfwnvS93fICzq8ZpHNWnTXbUsKGPTr0pH4BCO1T//CdcIna8AYSUYGf/eWsww1BMNnZGBF2fxl0Q6jwciLIkaGnqZHRB+dFouoJTxfFOp642j1XA+kn65qQm4OVCpi10JDAR2AtGEO0WsY3+5rGvTi8Q1gOi+NgZs/8gpFh+Yc3jBDhVlC9joTNHU2zus6U//fbxOUXIGQUcCqsnRmfyHgICuvO+xj+LyOL45EQJxqDgTJgB1XdZFALtrcOftNgRPF5U555moCkkCLVMkWhgdX7odw7nPpcVt5WnsJ2JI5+WgDRkoFAsPD+K0w7zAj4/GZGotF2Ai3bSAUzBMThgFOOM1IJjxRMjhdYF7Un80bVYkLGfANg236s/2FwLllk/56ceC13IA0XboRmkjtt21nVsd51mE4oNEgjCATsqGenEi0dxi2fjULjxycnii0lNtjCCMcAp76rzOD2D062psb0Q/V2rDt66p8jqUlb4KCFECANB67BFFCRAzKVYekMJpc8RMV4FDorcLuN/mwvIQ65hqDmbSFSjAGFjXS4T9nMApzeiS/3/J9kDP2163f+7apFW8B7CzHYmXUIAzGN9tmvCwkbDz+FwzLLNgjjxU36Vs2MCbMgpgSIzqfTWPy754e1X4YkbV9CSz+aLyl+djE810JVJ85C4=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5248.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(376002)(39860400002)(396003)(136003)(346002)(66446008)(86362001)(8676002)(38100700002)(6636002)(316002)(64756008)(71200400001)(7696005)(41300700001)(66946007)(52536014)(186003)(9686003)(110136005)(76116006)(6506007)(921005)(82960400001)(8936002)(26005)(66476007)(38070700005)(53546011)(66556008)(2906002)(83380400001)(55016003)(478600001)(122000001)(33656002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?/gLJZooqAuBUYVXmJMNUPoPWCHc2ilXlPeoNzteFmElpSCeaxvPiFix+kxPD?=
 =?us-ascii?Q?e205L4R24K9eUOmIyLOHTLhviGP5WwCHk/ZYZ07UG7AJLp1P9AmxnkGbcomJ?=
 =?us-ascii?Q?7yEBiUN/6SBTpWWoVmrDOMXr2wsU8WjXSQmcRvReaNKmCtjVwIVudSNHZyzy?=
 =?us-ascii?Q?EVqBiEqL0YBX/fsio+Wb5z9gyIvJAq9O271vQkXo+WvZKq+os3nttiBPfgvI?=
 =?us-ascii?Q?b5b5ZwB88KB8FZvPz5+qqpmPu7UpHUG9PXvJjq6N7YU7jobJrI19DUTTOe5z?=
 =?us-ascii?Q?o6Ox3axCJsj2B1ymYsuurUwjZzjLDjGzjKAEsgNiddsyXbqIVLpRh4VcTBDs?=
 =?us-ascii?Q?6ZD6VwaIR5RluizBzggJT2WlvhtpNJIHkrYQh41LxPrWq3gllDnRsDRFbXV1?=
 =?us-ascii?Q?oP+p9B69JUc6VZIAAeYbITGiIMLqtr6sYOUA/N8UVthkQqsIfMESdiRU16S2?=
 =?us-ascii?Q?wGOm/GU01DYkaj+uxY1W6Ffxg/fdxBmMQMNNv7523kHP2YLHIORKBP1IWoh0?=
 =?us-ascii?Q?o9Y85q04tFGg1BuN51q5Bj5fZyOx1BN+VR2Uhq+GBpKONYeh8tvyAuMeP3gV?=
 =?us-ascii?Q?tedmslCUz1dT5Aj8hD1PqloyZEqnr1VJZ7AY5QjNz1jWYLrqcgQ70RSyigzH?=
 =?us-ascii?Q?OLHyrsmU2CIKvI1OwmzCS7n1FVsjvIQ+xpzv/ErfH3ZAti56ABIBjy66Mh8R?=
 =?us-ascii?Q?kRfaHBNC/1rRolCRcAMirDQoWlx628y10Va5jcnIwrtFanKWOQ8RaBoX6DYk?=
 =?us-ascii?Q?+lRlnA62h380DDyuuXFRL0blGYTTp8c9lOzeWOtYd9hUHa0xBMZHkkpstRGW?=
 =?us-ascii?Q?lgXfCFPzWejKTkAkP3bLIQlGQjGGH3E4ga8t3yOQA+a+2eB7ui89802oYcvY?=
 =?us-ascii?Q?O0rYk0pJ7gXbjUr8rFQsf9K1vcVovSbyCmo2bMxqDH+XTCfwT/2AEmKPbc1w?=
 =?us-ascii?Q?cujQ7N3WyNKapEkc2mAlHPx8LrPKBusDtlXed70lvnb9y2XzeTxGA1SPGLBp?=
 =?us-ascii?Q?Ut3lIQnYcmkk1zqbF95hfk5H06orRHZmiHiDtSnZKPdLfRK6g20j+JYPNhPX?=
 =?us-ascii?Q?hj66l1N5k4qZvG0Su1ZGod5tIxWl/OETCrZkJAZbKWeGgOsdjI3plAGaBrYC?=
 =?us-ascii?Q?EnnzKgGmdBKTnDWupKhpT3hFY/rz4wwYbAeInSFzVk6ve/NdwFO1axaq60SE?=
 =?us-ascii?Q?pk5SqsleELRVY6+t8mijZKjAtncKF3H+NqsXA6EtVDFpKay2c0jbn/tYcOlj?=
 =?us-ascii?Q?PmBRKwRSHhsRD8UjD9MjWc2g9PZoyM27nRSt/M9yK7WJVMDgNQz6+z0y/Imj?=
 =?us-ascii?Q?BHcBmWLscPIlCv8H5ZQ09Rk8PGEB+6dnzAaKgmL/M+iC1/g34wRsxl72/QZl?=
 =?us-ascii?Q?MKzuw1ti0qh1325NrP5WC62ZHY8iGiZMQrG6swM9YyeH+c/Ztnivfz7S3seO?=
 =?us-ascii?Q?1rYzJDTrKeXlJyX2tsO/BzAr72L/L09qUTUUhOSoVR9E6vclUv0QzTTZOj0X?=
 =?us-ascii?Q?ozpwTt6iv5DRTGPkdoXPl420VD95fnliWKtM1PZxN9c17IAB+2Kx6242AN3W?=
 =?us-ascii?Q?3tKhHPXnZ7eONixi39dm+RF8K7ysENs6Onghy1bOXbx9R+e5S3BBbfMCIPIa?=
 =?us-ascii?Q?apNs6Nrr3ojNgRnQmX0qlKakplepetADqsp8UTvGSsUjqVsDulQ95RFAHMnC?=
 =?us-ascii?Q?lZ6a6B8/VnrFMeNASHriwEgCSefzrCCyKEJq7U2EFQjxkkV56pskNpjbwwOU?=
 =?us-ascii?Q?Gt5Cv/FUTMA2+7EWebvyFINKs2XoOjg=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5248.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c154be39-8440-4ef0-23d5-08da53916e6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2022 14:22:11.3847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8EaxjdKvENaUeIJnFEtCNMDC2Y+WPUDN996Jp9I7J+1/pK4KQ34cVkQMZsgLICBKorN7/tLLn3UBZeTrYh1B/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6185
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed
 helper
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
> From: Gupta, Anshuman <anshuman.gupta@intel.com>
> Sent: Tuesday, June 21, 2022 7:47 PM
> To: Tangudu, Tilak <tilak.tangudu@intel.com>; intel-gfx@lists.freedesktop=
.org;
> Ewins, Jon <jon.ewins@intel.com>; Vivi, Rodrigo <rodrigo.vivi@intel.com>;
> Belgaumkar, Vinay <vinay.belgaumkar@intel.com>; Wilson, Chris P
> <chris.p.wilson@intel.com>; Dixit, Ashutosh <ashutosh.dixit@intel.com>;
> Nilawar, Badal <badal.nilawar@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>; Gupta, saurabhg
> <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
> <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> <sujaritha.sundaresan@intel.com>
> Subject: RE: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
>=20
>=20
>=20
> > -----Original Message-----
> > From: Tangudu, Tilak <tilak.tangudu@intel.com>
> > Sent: Tuesday, June 21, 2022 6:05 PM
> > To: intel-gfx@lists.freedesktop.org; Ewins, Jon <jon.ewins@intel.com>;
> > Vivi, Rodrigo <rodrigo.vivi@intel.com>; Belgaumkar, Vinay
> > <vinay.belgaumkar@intel.com>; Wilson, Chris P
> > <chris.p.wilson@intel.com>; Dixit, Ashutosh
> > <ashutosh.dixit@intel.com>; Nilawar, Badal <badal.nilawar@intel.com>;
> > Gupta, Anshuman <anshuman.gupta@intel.com>; Tangudu, Tilak
> > <tilak.tangudu@intel.com>; Roper, Matthew D
> > <matthew.d.roper@intel.com>; Gupta, saurabhg
> > <saurabhg.gupta@intel.com>; Iddamsetty, Aravind
> > <aravind.iddamsetty@intel.com>; Sundaresan, Sujaritha
> > <sujaritha.sundaresan@intel.com>
> > Subject: [PATCH 04/11] drm/i915: Added is_intel_rpm_allowed helper
> >
> > Added is_intel_rpm_allowed function to query the runtime_pm status and
> > disllow during suspending and resuming.
> This seems a hack,
> Not sure if we have better way to handle it.
> May be check this in intel_pm_runtime_{get,put} to keep entire code simpl=
e ?
Yes, that would be simple without code refactoring.
Checked the same with Chris, he suggested unbalancing of wakeref might popu=
p
If used at intel_pm_runtime_{get,put}  . So used like this,
 @Wilson, Chris P , Please comment .
@Vivi, Rodrigo , Any suggestion ?
=20
> >
> > Signed-off-by: Tilak Tangudu <tilak.tangudu@intel.com>
> > ---
> >  drivers/gpu/drm/i915/intel_runtime_pm.c | 15 +++++++++++++++
> > drivers/gpu/drm/i915/intel_runtime_pm.h |  1 +
> >  2 files changed, 16 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > index 6ed5786bcd29..3759a8596084 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> > @@ -320,6 +320,21 @@ untrack_all_intel_runtime_pm_wakerefs(struct
> > intel_runtime_pm *rpm)  }
> >
> >  #endif
> > +static int intel_runtime_pm_status(struct intel_runtime_pm *rpm) {
> > +return rpm->kdev->power.runtime_status; }
> This is racy in principal, we need a kdev->power lock here.
> Regards,
> Anshuman Gupta.
> > +
> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm) { int
> > +rpm_status;
> > +
> > +rpm_status =3D intel_runtime_pm_status(rpm); if (rpm_status =3D=3D
> > +RPM_RESUMING || rpm_status =3D=3D
> > RPM_SUSPENDING)
> > +return false;
> > +else
> > +return true;
> > +}
> >
> >  static void
> >  intel_runtime_pm_acquire(struct intel_runtime_pm *rpm, bool wakelock)
> > diff -- git a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > index d9160e3ff4af..99418c3a934a 100644
> > --- a/drivers/gpu/drm/i915/intel_runtime_pm.h
> > +++ b/drivers/gpu/drm/i915/intel_runtime_pm.h
> > @@ -173,6 +173,7 @@ void intel_runtime_pm_init_early(struct
> > intel_runtime_pm *rpm);  void intel_runtime_pm_enable(struct
> > intel_runtime_pm *rpm);  void intel_runtime_pm_disable(struct
> > intel_runtime_pm *rpm);  void intel_runtime_pm_driver_release(struct
> > intel_runtime_pm *rpm);
> > +bool is_intel_rpm_allowed(struct intel_runtime_pm *rpm);
> >
> >  intel_wakeref_t intel_runtime_pm_get(struct intel_runtime_pm *rpm);
> > intel_wakeref_t intel_runtime_pm_get_if_in_use(struct intel_runtime_pm
> > *rpm);
> > --
> > 2.25.1
>=20

