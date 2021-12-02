Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E411466231
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Dec 2021 12:19:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 823BD6F4B4;
	Thu,  2 Dec 2021 11:19:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BA0A26F4B4
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Dec 2021 11:19:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10185"; a="236628282"
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="236628282"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2021 03:19:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,281,1631602800"; d="scan'208";a="602686122"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga002.fm.intel.com with ESMTP; 02 Dec 2021 03:19:11 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 03:19:11 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 2 Dec 2021 03:19:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 2 Dec 2021 03:19:10 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 2 Dec 2021 03:19:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dp92LZEby6c2i4OaDuuobipwOLRnUEAcf4Ov3iPeWXTuXBiWQpJ8KR+BeIV2wQSDD7dOu6p4W3/dCLVU5uQ63hzJ709GlXdjG/o2KTUqofOGruwlhRDrNPQvfMpE+gowKFbuDIW1kKI7RkX6TwEGgd4ZTk/DK6ly2lmeGjz0Avey1Og2bbNVUR6eNnKPJDHRdClobQd55Y3sTzhZ6oRO3yiF/glgy1ymViKkE9NR8qGV7xwQwWpa6xyxls0Rq8Scbv9RZ/k5h5ZGnmYBGdyYR8j6nTPQJB3pRr6CVSQ3m+ZpHP9hA6mjZtBI0urhwnIu1o+/oO9kvde0NktjLi1KjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nn6KOtVN/4CD1yzcjtiRV/8csEsoeVNVWhMo1rDvqa0=;
 b=QP/oQbLdgothEJBMwcZEHvQcT5uHtxyoFxbjINY3/kvwQlnWxX5Vv9klnqOSnRfUdUYKX8fZ9GQ3rAcUGv2rI5A8XljnluowvrSK2EfxplcqoI85rU1q6+qpFyvY/TDPeIGYWC3FpkMHAu226YFzqHC1nI7O3YVmj2TDpfuYjvmLPByaxyqustRanXW8WdOF+RS1r60iYnMWBAbj1KhpC2S97Wvgo/oLvAGCXE4zpllu8yEeG5+83l2HVV30hYa6tpiGjjghTvhgJJMOJlKEIjypyNAJSAmDr8vB2aKGbqap6DRymBuK6J/k5sJNfWpCO24i3NTKRfvznsgCvY1Q5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nn6KOtVN/4CD1yzcjtiRV/8csEsoeVNVWhMo1rDvqa0=;
 b=HTKVEY9Eu7gAyNBsvsEemig1x3UaX3Bp+1mXk8YfDW47srgU/FAhAeK4Rk4Qw8xyFM7LPPabnNgQwbyIQqkSjXFpdWjGmu/5Z0iWJsIhilCWzFaGwTe0oVBvexsoQoV1yQgjMPV9/194iyv9HYeocaGB8bqVgkk6nKKjPprc+j4=
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by DM5PR11MB0074.namprd11.prod.outlook.com (2603:10b6:4:69::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Thu, 2 Dec
 2021 11:19:09 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69%7]) with mapi id 15.20.4755.011; Thu, 2 Dec 2021
 11:19:09 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
Thread-Index: AQHX5gVprwDdC/GP0EKN6F+06sVOHqwcTtIAgACxdICAALyqgIAAzzDQgAB+JACAAAOgMIAAAVQAgAABVFA=
Date: Thu, 2 Dec 2021 11:19:09 +0000
Message-ID: <DM6PR11MB42045B728290D0C09842495289699@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20211130171220.8622-1-vidya.srinivas@intel.com>
 <20211201034727.1666-1-vidya.srinivas@intel.com> <YaeOkxURq25NfLhy@intel.com>
 <DM6PR11MB420430F778CF34CC8C18A9BA89699@DM6PR11MB4204.namprd11.prod.outlook.com>
 <YaimMOeNzuSBgVHf@intel.com>
 <DM6PR11MB4204191747EEC6D75ECF7D7989699@DM6PR11MB4204.namprd11.prod.outlook.com>
 <YaiqWO2RBU3h5L3k@intel.com>
In-Reply-To: <YaiqWO2RBU3h5L3k@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.200.16
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9666c9e9-ad54-4f80-3f7e-08d9b5858f93
x-ms-traffictypediagnostic: DM5PR11MB0074:
x-microsoft-antispam-prvs: <DM5PR11MB0074FDBD33C98A6E0071322489699@DM5PR11MB0074.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: b0wqC/YQDLh8lxjYAAgaCBDDL0/6DnWJfsKe6QJDeswVgd/3Uw/5unXOulcvL4H1yk8DuyiGbrMIyLqCG328/x3YVAfwDK0jHYSuGAT61PnXoEIr2gtkhb4KLcDWH77V1YSp1ht1Onq0ULBcqQST2JN1ii3hRgcYUj4S6PKL/tnNSdaV+82vjHuCN5J1Ygb7JPjOJiV9lNlLiCBvXO7TNKijLCxS29aEbhsKnKtC/cLv3cykwn6O83qlHDyRZfNPIl9z2YzCDLvEfh7AeUrAXsdkY/3mmZIl8c1/4oU3obtDty2/oPiR66pm9cruO2Bz1BkCVdHe2D9bTFaUhHxa/rx31rk/ls+T1BdUhZdEPoMAIfATsiX3cWuJMynZhcBHvHDwu/qck+PH2JPXVhGELMQa+OPbaoXavC6FUUWYg62issl1PdQZrOH0En8P2FPfexdvXCvjCHgzzJv8f4hTRU1xmEb23WsHHeSxKT6JcfgJVHfGDk7cY9f6uRU/q4eAFQZzzyWJMahVQxeOqg/FpGMnp6+1S0fL/t+E7Oq1bWNlzAjfQsTLE9pd8a6mjBqjWWBtV5jn8EmTFf8YFDXoaC3CGVm+HYx/Gn8TteCMaPKepeHwRS6wAmvctWvowZ5H0Wci3BvKkt1SERikroFnlCNwUkh8uoQ1I/cYnB41hsAKRQbm6qVeHDRDb41TYDMGqEs6BHMbuTuB75xfRa1CHg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(86362001)(6916009)(5660300002)(38100700002)(66476007)(33656002)(66556008)(186003)(76116006)(66574015)(8676002)(66446008)(122000001)(6506007)(64756008)(966005)(316002)(4326008)(83380400001)(66946007)(53546011)(52536014)(54906003)(2906002)(8936002)(38070700005)(26005)(9686003)(55016003)(71200400001)(7696005)(82960400001)(508600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?QFqR1xj635nHueC2yCULSOtfjuUyYdaMTB8dGCAL2jE8CVa1I2g2BqJGXR?=
 =?iso-8859-1?Q?jqvqjbhMWQbbYydTNcxBEqx0yKB/bC/w0JNsk9FIdpZD/anIzdvr55wJlM?=
 =?iso-8859-1?Q?2d0DTvTNkGzbUH6CsADpxuu7MosSvDEZBKKGy00rr1RVx68OrH/+JRAe9m?=
 =?iso-8859-1?Q?iYbp7B7U6XJNz5kUGw0C+xRgSsun5YPtw1OhuQCCRO/tWM0jbf+hwdP+s7?=
 =?iso-8859-1?Q?SXuMOUiew2PZSKioV/n5G3Q1bEVtwMFhaVMWDowVvORHYKdOxlHjL3ChSl?=
 =?iso-8859-1?Q?A9fcUTspgtGHZf6jiZjCx2Dnb4ePeznXsMb7L7uJhcMW9uXSkaq1uszsOl?=
 =?iso-8859-1?Q?oxHmSQD0llUn2D9CLIumRNzldlf8bUjtjjbMXIJqgF1s5PKn+S809VGkF4?=
 =?iso-8859-1?Q?OvqeLeU21xwfKQdAqwxy30/t/TNr0rGIYH+MjBV+biOz/pE2S0NlafJe29?=
 =?iso-8859-1?Q?2xS7M+xCzn9jF60kW9HjGvih2ZySGV/nw8zpUV0YQ1fXz3jA04i3sug+0g?=
 =?iso-8859-1?Q?UygARG563TxpNbZu78iHd5Q+Ew+UNxv4rPa+hH7GK9FBjEq+xVOnMKMTcQ?=
 =?iso-8859-1?Q?ftPS2fCHWnKSo5jFl2OBeQkAyrEsEuJFKUoxAykAsR6+h43YOHIkM7DyYy?=
 =?iso-8859-1?Q?vrqqTOMPrCx9lOyvSNgxyvHIXGgxex0oa/ikUbCAkxKKQd5ByJUGN8YvX7?=
 =?iso-8859-1?Q?qdpBPDR5hwDqC/dsfNvyjTOTUsikirWz7PCAOR/pDkBjfKYm9pSZWgimRh?=
 =?iso-8859-1?Q?/wir/9VV3jWNlOPo1CCcux2GBzKWhdHuU6/yJ3YlGdtRyBRxIXYMCbyn7J?=
 =?iso-8859-1?Q?RnnjFJaaNgjiGVAqg3sFe8ctgRY9/QpxbRH7NzvDnDAUIIg6cc/4vS1Cwo?=
 =?iso-8859-1?Q?OEyHUjql3o+20/nkGQ0ooFCffelVhZQahxXfHLCa3alXgF1sRkAP+DujVL?=
 =?iso-8859-1?Q?2KmQn7PxX5eE65xyNEKcyg9pwLnTBzd3ukKLbK02tfcyjS7Lz74akOfZ5C?=
 =?iso-8859-1?Q?cbg+Prm9A0/0uZy+EVEgi9M7JmIiPcCdLWtv0aeCqluyjXQXD+q9k7AR9C?=
 =?iso-8859-1?Q?tJofY0QHihPo6Sd07BJfV92QwKZLkHG3y2SOTL2VqUPvrxh1bVnQcv50dY?=
 =?iso-8859-1?Q?5cINp55ViRWVR1cDYbKufcyt+qFAWE3lSR/+FP0sCnwbnuQjx092hLsD2+?=
 =?iso-8859-1?Q?8U4WV+WgUHh88gCwCtnMTdi8DJidaj3Yl0ZoQ0SHlVN2XZHPRuQfutZlCy?=
 =?iso-8859-1?Q?D6U7b8ZC5mufVlTL4GHJNAU7T9Esh8RjEUY/vbJzYZsXHxsjBqRVMLGWUe?=
 =?iso-8859-1?Q?89ciF6dzlqDqJsbwqPIE9xg8kim2fUn0nk7TTnbzg5hT67ktD8uj5thCIP?=
 =?iso-8859-1?Q?NEPvDPMd01oRahrQXLZpB7tV4eg1sc2VQhHBaxm3lypmqE3vZXcgfYq+73?=
 =?iso-8859-1?Q?MlRXX3iJHWkkRl+KWhFAyfhUJ38cYhxxapQAgyvspbbKnHdez0NON4Wpf7?=
 =?iso-8859-1?Q?NU+nGbjFpwCw9ffPEUmfcgxAOHxOmS3DKdDnF9+LLEfKxUrbDzooptIlBu?=
 =?iso-8859-1?Q?UvR6q/e86WPJpoSR54WDCf5H5qHMq0zhQN+PYK4uowe2jvaaWsy+4I+gPF?=
 =?iso-8859-1?Q?ivbXCK1rekDANnHbEEAgQFx1FLyks1l8hMcXpVNHO7W9QGyVqTOYkYYxLK?=
 =?iso-8859-1?Q?MFQfRcfuTfCGzzjsVzxkTPovC63nuHTfz7BlDKvGPuT3lo67jihPyC1CcW?=
 =?iso-8859-1?Q?0dYQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9666c9e9-ad54-4f80-3f7e-08d9b5858f93
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Dec 2021 11:19:09.2946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LJVD4DCxqxOtHXjALgokWRkF2XO52U5jrtQurA6ZtV8l0qFcHX0kqBMHkq+LkI/y3DG0uf93GzCkbw1QIxMMEqBR9vsAfjSSmMLN4jWITmc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB0074
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
 max_width
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
Cc: "Yashashvi, Shantam" <shantam.yashashvi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Thursday, December 2, 2021 4:43 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> <shantam.yashashvi@intel.com>
> Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
>=20
> On Thu, Dec 02, 2021 at 11:10:37AM +0000, Srinivas, Vidya wrote:
> >
> >
> > > -----Original Message-----
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Sent: Thursday, December 2, 2021 4:26 PM
> > > To: Srinivas, Vidya <vidya.srinivas@intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> > > <shantam.yashashvi@intel.com>
> > > Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
> > > max_width
> > >
> > > On Thu, Dec 02, 2021 at 03:25:34AM +0000, Srinivas, Vidya wrote:
> > > >
> > > >
> > > > > -----Original Message-----
> > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > Sent: Wednesday, December 1, 2021 8:33 PM
> > > > > To: Srinivas, Vidya <vidya.srinivas@intel.com>
> > > > > Cc: intel-gfx@lists.freedesktop.org; Yashashvi, Shantam
> > > > > <shantam.yashashvi@intel.com>
> > > > > Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in
> > > > > max_width
> > > > >
> > > > > On Wed, Dec 01, 2021 at 09:17:27AM +0530, Vidya Srinivas wrote:
> > > > > > PLANE_CUS_CTL has a restriction of 4096 width even though
> > > > > > PLANE_SIZE and scaler size registers supports max 5120.
> > > > > > Take care of this restriction in max_width.
> > > > > >
> > > > > > Without this patch, when 5k content is sent on HDR plane with
> > > > > > NV12 content, FIFO underrun is seen and screen blanks out.
> > > > > >
> > > > > > v2: Addressed review comments from Ville. Added separate
> > > > > > functions for max_width - for HDR and SDR
> > > > > >
> > > > > > v3: Addressed review comments from Ville. Changed names of HDR
> > > > > > and
> > > > > SDR
> > > > > > max_width functions to icl_hdr_plane_max_width and
> > > > > > icl_sdr_plane_max_width
> > > > > >
> > > > > > v4: Fixed paranthesis alignment. No code change
> > > > > >
> > > > > > Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > > > > > Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
> > > > >
> > > > > Hmm. What's this extra sob doing here?
> > > >
> > > > Hello Ville, sincere apologies. When I run checkpatch.pl I see no
> > > > warnings
> > > on my host.
> > > > However patchwork keeps reporting paranthesis alignment warning.
> > > > I tried to push it multiple times after running checkpatch.pl on my=
 host.
> > > Really sorry about that.
> > >
> > > I was asking about the extra "signed-off-by" (sob).
> >
> > Hello Ville, I am really sorry about that. Should I keep single
> > signed-off-by and push the patch again? Kindly let me know. Thank you.
>=20
> Yeah, please resend with proper signed-off-by.

Hello Ville, I have kept a single signed-off-by and pushed
https://patchwork.freedesktop.org/patch/465010/?series=3D97053&rev=3D9
Apologies for bothering you. Thank you very much. Kindly have a check.

Regards
Vidya


>=20
> --
> Ville Syrj=E4l=E4
> Intel
