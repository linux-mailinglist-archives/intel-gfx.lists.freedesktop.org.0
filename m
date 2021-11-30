Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D272463D61
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Nov 2021 19:04:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFED66E0A1;
	Tue, 30 Nov 2021 18:04:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A197B6E0A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Nov 2021 18:04:35 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="216970755"
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="216970755"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 09:25:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,276,1631602800"; d="scan'208";a="511619299"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga007.fm.intel.com with ESMTP; 30 Nov 2021 09:25:29 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 09:25:28 -0800
Received: from orsmsx605.amr.corp.intel.com (10.22.229.18) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 09:25:28 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 30 Nov 2021 09:25:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 30 Nov 2021 09:25:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aXCrN6v6PY9ogIPAWqfeixQ0AWRglLyzhrIa0c0GKcPJkvpRwT9yT8qMJPS29ZrEW05fu4+kZ5veIL+hnhkmzgzrqc/Ghyg7mBM6jrzdNsnSJYvSQrpzVZrbn4aW4TzRggnMq12864J1S8GWtzynOU7/hRMt7T4aOUIXAVsF0Ve+V8kWApMvejSsaSxRNNdvq5XBD/fUswnVcNyiXeD5oJEZHlV720Nhqm66mXJwymxrqg0TxVpIg63Kzh307XT8zsS0j/kyU3NNtG/8v2AWqmPQn5kjp0Xdcq4Wr6EvU0jqmEDGWMbkMHbNDPCsLJxMgPK/cvAJbqJq1FJFzbBHEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TQBrbfW4BtcPcylf+U28dTNYu5LyMXqT+RaZbig2eVs=;
 b=g3b7a0lMZViKk6FPueZq0NHaRdCniANC5em2KI/CeG2j2xHT/xEY/WVBtw1K+lHn+vJzTFYwb+Mh95uf2F2vFQpTEcy40HUrGf9QSikSnjw70w50ThTuUngnFb0IRx/3gfvdascncN3/yswna3hIRFxseMQM+7D+bMpTkIpYDLwQynQP+KD3lFs2jq8JgyCOfZmDFt+oNcbw/6DVyXrAMAaV+IBriQQMIDhtsaKuqqQ4nsMiJvYp73dWwS/2oHIKs4WEMa7Ryt2OlOTxCO5ddlVyRV9aDOmxQCKaWR4F0RKwRg6QQGUN/QB4q22S/Ss9cdAe4RCx9LVVq0nwiKpu9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TQBrbfW4BtcPcylf+U28dTNYu5LyMXqT+RaZbig2eVs=;
 b=L29dfPBYrfMYmLruUqsirqEzNsAc0fXauf7sXmMIkAttz9a0Pz5O5/0zUXfRHZU+QNlWSeArKr1RG/FFHSaYT4rsqgYZc0fNq6DAv0Moy0UK+2o5u0QeIr3paXazU7Z5G9Rpr9W6SE5LqxG4jfMogtwjff+4YJY+yavZzZtvnIs=
Received: from DM6PR11MB4204.namprd11.prod.outlook.com (2603:10b6:5:206::19)
 by DM6PR11MB3660.namprd11.prod.outlook.com (2603:10b6:5:13c::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.23; Tue, 30 Nov
 2021 17:25:24 +0000
Received: from DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69]) by DM6PR11MB4204.namprd11.prod.outlook.com
 ([fe80::9cd1:7f4:ef9b:d69%7]) with mapi id 15.20.4755.011; Tue, 30 Nov 2021
 17:25:24 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
Thread-Index: AQHX5gVprwDdC/GP0EKN6F+06sVOHqwcQwYAgAAD3OA=
Date: Tue, 30 Nov 2021 17:25:24 +0000
Message-ID: <DM6PR11MB42043EC366A3B377064EDF0389679@DM6PR11MB4204.namprd11.prod.outlook.com>
References: <20211118062516.22535-1-vidya.srinivas@intel.com>
 <20211130160534.7983-1-vidya.srinivas@intel.com> <YaZRjqK1YChsD4tN@intel.com>
In-Reply-To: <YaZRjqK1YChsD4tN@intel.com>
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
x-ms-office365-filtering-correlation-id: 10e00426-7586-4e59-1cd6-08d9b426650f
x-ms-traffictypediagnostic: DM6PR11MB3660:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM6PR11MB3660163B4F7F46A81E66EB4389679@DM6PR11MB3660.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: U7o9S1CyZZ6AIzl4U5fpnEz4WcZKtqj1I5CJVTY/CH9Zq5KxsQEgV55WnQFgh3yRskPGEXkOW0xHugFXF+i85hSYfKySMLNROOZvnE3qzNCAAp774735ym/VIf5n7L3lVas13XTsxePwZfcAyj/RZqCMl/OaPngIabeB7embXGxeQyZC+jpw9HDtiAczRzR4EHUa4L3JqOmmIx42bujAqRb+j4d0Dmq6LN1uj7iRq92qZPJuAVO/eCqC+QHC3/K4QfMGUk32Zyrs3mMVM1iQ1QT84f99nAXcd7YHLSlP4IsR7BmDuBzLem7gPrIE9QxYebUeEgRwToc4gWzfQjNTDqeGcfyNOucw3zZKubrOpwROkSVn3+uDpA5jMvzygxFCU+EtWJXQMVEKKKKB8CIr+xo8dNFz14zIt427SDZ1lxX29vFYNxQa+whBzN+AVJl2L7SinTd93RhuXHWC73ERQh29MlU3BfQvPBqt08qsN/35Ofr7sFe6MD+TRMCiGEkrxepqAC2Nw4cPzMsBucNgxDHWIvb5t6P1LRVs1LUPuEubY0knaR/oKWgIKfevHl4ec3p/YT6bz74tVU6oijz8BLrOnFHt/Xxl7CV8YicQ6Xv+yxnsCaArmrjpgwPKiPnJVu5gpdA7uoR812YQQjLNwqGeTtqqyWL8nxObp3fP469eAqxffxNumVAKRhFmYEfYAQRHIsTQpFH5eCyoB+YntA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4204.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(9686003)(122000001)(53546011)(66946007)(8936002)(2906002)(83380400001)(82960400001)(38100700002)(66476007)(66446008)(66556008)(5660300002)(76116006)(6506007)(52536014)(64756008)(6916009)(508600001)(7696005)(186003)(38070700005)(33656002)(54906003)(8676002)(26005)(71200400001)(4326008)(86362001)(55016003)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?1Ep+Yh9tITMZ33+uVy57v67stIHEcIroIABAoyI7CGbFeoc+RYC4u3lA4b?=
 =?iso-8859-1?Q?Qex+VK/jiWtVq4BUS0Ci1KvPW1aMmKWPKryJq73SpLUSkaqZPCiamRwOUQ?=
 =?iso-8859-1?Q?9ozcQdQzZI8i7r7pEfsc8vcxTlGaV4KI1+aZgyNx+DBNkX1gAcLQYTJFIq?=
 =?iso-8859-1?Q?OEz7jUyXiALla/dGY1NtPiDlXW42ICZ1RLreSvEeRMJUoKdb0lpBzFt+HH?=
 =?iso-8859-1?Q?Bn7jL2/al3FoR/AY+jaWpMxLQ8/5IDWDOVpe9d807eBc4wgHmF8XvhxTgR?=
 =?iso-8859-1?Q?zpRxLrZoegMLs2307X/Xdg9pBlPJvHZmEA40fI/HKg+CGSqf/DMkW8sUiD?=
 =?iso-8859-1?Q?IZSzwfxD1b2zSzsRLerFdfMH+RH0ZUcTTjbqz0v23NdQedlQGaXITtrutV?=
 =?iso-8859-1?Q?+1gmO+/exfLd0dokj24MsUQ50977Ynwxh30tqbgsRje6KCTwlhkywDR1ih?=
 =?iso-8859-1?Q?kGPej+w/83iX0nTQaZW9Vaqtu8ilWgBvvRLI9ZGcS0LVHWb2wdZ+ZZXlha?=
 =?iso-8859-1?Q?gHfoNQIPabePiHJt7qlGYpzbP2a67tT+iXSScyFiG1SMFTG0ngH0Gnb23X?=
 =?iso-8859-1?Q?/cKNO7FkAXNLCKdvX334xDKRcJeyQuSvX/j2vtvyEdFQNSCV5bgMqyF0GZ?=
 =?iso-8859-1?Q?WKYGbuanwLKSgKeQlZ4D07Ghbky/NoqHfkKDskBxPUlSzfk7iA4bTebTVJ?=
 =?iso-8859-1?Q?BgahMKYUJq6TgXzj+3QI+S/WEQNhORZXq66R+KhJSwS1nLBK2u5I0jdcuL?=
 =?iso-8859-1?Q?EDoFBeZqJE61YIKeMDdp+K49gaDqafnUZkd5anTzF+vY9KtLHofWISNTSW?=
 =?iso-8859-1?Q?gairbkxDbPNmaMF4Ie7u8ca9DrdoHJDUURFCBlkS+bBVyvaM033h9bG3ur?=
 =?iso-8859-1?Q?bgaVQeYZGSuR8ATmBzHQZ7YVnSFYTkc4+xg0qPeldC/kwkgQscsKWZ2hze?=
 =?iso-8859-1?Q?egtXCzWfZhQsQha8tSRo91FKTdoOI050pK+iY83d+5TVCpRaYeN40exgUI?=
 =?iso-8859-1?Q?/RFtiqhRGdJlbbo38k/30Y/4VHINm8IlnROrJy/u+lkIsLo+XHvSADwarH?=
 =?iso-8859-1?Q?nV4xwr0yTSTkNj2+cv+Yd9lV6c70Sjv/BrFULL1ozKDZEFMa1MOcf/mOVI?=
 =?iso-8859-1?Q?EHylobtSO2/cMqqws7XqarLPv7pqV7EMHEoV5dny4EUtphQBLMXxC06lx4?=
 =?iso-8859-1?Q?vLUovh1sF7K0i21KcMQRJDvPSvGRRg2W7YRXpFbMEBprNsU9we53xoVtAD?=
 =?iso-8859-1?Q?mo7IL+z1rjIYyymRtE4Jrz6aMNZW5RSEoloBFudXsQsdlNtLHLDpuVdkKL?=
 =?iso-8859-1?Q?ZgkSMfeIS0ic/q0Rs5kQyQ6knio14Ubux6fffB+esuNXn3of12DvHucDLf?=
 =?iso-8859-1?Q?ncAybGPCsz7CVLcd5FHrAHb8T6BndztSwBCsnXquCPpy1EZKG533sTAtxY?=
 =?iso-8859-1?Q?lAfbXTtX6FsRs7cTLET+hjtR9i4KuIXc1IopfMl9HEUB16U1WtBq7Ztcnq?=
 =?iso-8859-1?Q?F1IQIlE9QfJmeSFDm3VrLnqsWcOqgyAr7Irs3hdswFhvHTtKEOI549k3us?=
 =?iso-8859-1?Q?AXo7bHHssbbZOoZ8IZiyGcF6Y7dGMJW0WDrAZxrlb8MsvtcSlCnMY8Yt9q?=
 =?iso-8859-1?Q?XRZsJIK9+5ZnUSO8WeSrlqSUe4+OWkbHonIt7LwRO3Nqu18uwn5GP6w8oh?=
 =?iso-8859-1?Q?//EOI0f4yUb5SalYUn30Qo2xu1pKSrdUM7CPDuktAwmntJVMFGCkaByl2u?=
 =?iso-8859-1?Q?3uIQ=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4204.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 10e00426-7586-4e59-1cd6-08d9b426650f
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2021 17:25:24.5702 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DDktl1jDM5ov9qIWeEJ8CJy8T3hAjBuGYpqGsLpvF8Xa2ekZW8PVPoUIsLFWNuYhs52JryOqanoiLFZT1N/iGCwMZdBILW7EZQA/NK+WSpk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3660
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
> Sent: Tuesday, November 30, 2021 10:00 PM
> To: Srinivas, Vidya <vidya.srinivas@intel.com>
> Cc: intel-gfx@lists.freedesktop.org; Shankar, Uma
> <uma.shankar@intel.com>; Yashashvi, Shantam
> <shantam.yashashvi@intel.com>
> Subject: Re: [PATCH] drm/i915: Add PLANE_CUS_CTL restriction in max_width
>=20
> On Tue, Nov 30, 2021 at 09:35:34PM +0530, Vidya Srinivas wrote:
> > PLANE_CUS_CTL has a restriction of 4096 width even though PLANE_SIZE
> > and scaler size registers supports max 5120.
> > Take care of this restriction in max_width.
> >
> > Without this patch, when 5k content is sent on HDR plane with NV12
> > content, FIFO underrun is seen and screen blanks out.
> >
> > Signed-off-by: Vidya Srinivas <vidya.srinivas@intel.com>
> > Signed-off-by: Yashashvi Shantam <shantam.yashashvi@intel.com>
> > Change-Id: If629c478ba044c8bde633de9f0fc638aa6c44233
> > ---
> >  .../gpu/drm/i915/display/intel_display_types.h  |  3 ++-
> > .../gpu/drm/i915/display/skl_universal_plane.c  | 17 +++++++++++++----
> >  2 files changed, 15 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index ea1e8a6e10b0..0455ea340329 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -1358,7 +1358,8 @@ struct intel_plane {
> >  	int (*min_width)(const struct drm_framebuffer *fb,
> >  			 int color_plane,
> >  			 unsigned int rotation);
> > -	int (*max_width)(const struct drm_framebuffer *fb,
> > +	int (*max_width)(struct intel_plane *plane,
> > +			 const struct drm_framebuffer *fb,
> >  			 int color_plane,
> >  			 unsigned int rotation);
> >  	int (*max_height)(const struct drm_framebuffer *fb, diff --git
> > a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 28890876bdeb..a49829c5a863 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -313,7 +313,8 @@ static int skl_plane_min_cdclk(const struct
> intel_crtc_state *crtc_state,
> >  	return DIV_ROUND_UP(pixel_rate * num, den);  }
> >
> > -static int skl_plane_max_width(const struct drm_framebuffer *fb,
> > +static int skl_plane_max_width(struct intel_plane *plane,
> > +				const struct drm_framebuffer *fb,
> >  			       int color_plane,
> >  			       unsigned int rotation)
> >  {
> > @@ -352,7 +353,8 @@ static int skl_plane_max_width(const struct
> drm_framebuffer *fb,
> >  	}
> >  }
> >
> > -static int glk_plane_max_width(const struct drm_framebuffer *fb,
> > +static int glk_plane_max_width(struct intel_plane *plane,
> > +				const struct drm_framebuffer *fb,
> >  			       int color_plane,
> >  			       unsigned int rotation)
> >  {
> > @@ -420,10 +422,17 @@ static int icl_plane_min_width(const struct
> drm_framebuffer *fb,
> >  	}
> >  }
> >
> > -static int icl_plane_max_width(const struct drm_framebuffer *fb,
> > +static int icl_plane_max_width(struct intel_plane *plane,
> > +				const struct drm_framebuffer *fb,
> >  			       int color_plane,
> >  			       unsigned int rotation)
> >  {
> > +	struct drm_i915_private *dev_priv =3D to_i915(plane->base.dev);
> > +
> > +	if (icl_is_hdr_plane(dev_priv, plane->id) &&
>=20
> We could just have separate functions for hdr and sdr planes instead.

Thank you very much Ville, for the patch review. Have added two different f=
unctions as suggested.
Can you kindly have a check.
Sorry - Not sure why, I don't see the change reflect in patchwork website a=
lthough I am seeing the mail.=20

Regards
Vidya

>=20
> > +	    intel_format_info_is_yuv_semiplanar(fb->format, fb->modifier))
> > +		return 4096;
> > +
> >  	return 5120;
> >  }
> >
> > @@ -1377,7 +1386,7 @@ static int intel_plane_max_width(struct
> intel_plane *plane,
> >  				 unsigned int rotation)
> >  {
> >  	if (plane->max_width)
> > -		return plane->max_width(fb, color_plane, rotation);
> > +		return plane->max_width(plane, fb, color_plane, rotation);
> >  	else
> >  		return INT_MAX;
> >  }
> > --
> > 2.33.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
