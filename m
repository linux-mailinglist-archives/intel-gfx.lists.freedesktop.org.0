Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44828402CAE
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Sep 2021 18:12:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DD8A89958;
	Tue,  7 Sep 2021 16:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C4589958
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Sep 2021 16:12:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10099"; a="207465661"
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="207465661"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2021 09:11:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,274,1624345200"; d="scan'208";a="648107699"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 07 Sep 2021 09:11:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Tue, 7 Sep 2021 09:11:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Tue, 7 Sep 2021 09:11:53 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 7 Sep 2021 09:11:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DGupBtKpxker8NJUiJ6g6gOWA0X2Ry4xgpmD3JKp06CJZdGw+g0tg7fMbhLdgYto6OBf/w+Aj11PDcJc6pWHiOcBYvgzgudLKE9kmQSQHs9DsgwdfMeYH5mTyRS8tx4+xLORf0dlSPxJ4UTb63kYTiHmdg/v6ByIDfr+HjHn9ceFHqOvNQ+suETK5MUpVhqT08S05dhkPOEdAqFukZtFKQ6jNpa4Fy7DRDzXca3js+CMGmRSsxyA8Z3I7rpIQjgDd1oGdIj/rHjzM3US/DEqDwyb7A6KPG+NhRXq1Qe1zCywjpoQ1ZuT7hQ4w20gnJM+ppfKP/Bd7DoO5InprqOTLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=LbbWqyk+ZAVgmV44xsWYJ6Sk7SJuHyfzhVi+Cuii6f8=;
 b=AHWoSO9hzy7NuI7wUlmfZNMqQ1a+YBYDq7s+5xa/zh+uEQdWyuT2/nhhRWUc+qMYxrfy2awmhC5+NgMN7MwUgyKYqflf1N0vTowOOpYJ+H5sZg1U5Z9H6iLc5FTy0SXM0KxCGN6LENt/C+pwpUjnPtC0kTd2mgPfTpDRWB8cZ5cJpCR4/Ip0jFA6YbJZSOoZP4/4P0PZWYHLAQLVtuTv+cFAZ/wh6NrAjxQx8VSIty3KRjScAIEqJEdToscXPciUiPyowcBUn9HxaaGQ6LwZj/JaRKXAXv8zk4DqSLHamDFTek177G2fze8+3LBwi1NYJbmM+ACWx7N68cD382wFFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LbbWqyk+ZAVgmV44xsWYJ6Sk7SJuHyfzhVi+Cuii6f8=;
 b=dKn3L1VWMRmfP+2FfZy/VSqnJGPGQ1tEU5Xw89SeuOHQakhL+ubjtCjFeHlRdJjveMr7weklmgBqZ1LeX6cQh8vptYkJAYmCoNhgp5JbjIfgmkV7AxbRg2/QbjsreLIcRg0FcDTqsRuejTIpXeqpC8d7H8CDR2qmgbfBMXsoTRE=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB5179.namprd11.prod.outlook.com (2603:10b6:806:112::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Tue, 7 Sep
 2021 16:11:51 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::2165:791:8cae:31f%7]) with mapi id 15.20.4478.026; Tue, 7 Sep 2021
 16:11:50 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>, "Pandey, Hariom"
 <hariom.pandey@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
Thread-Index: AQHXZ0sW59N9gqV+40m1IXOqKgMck6uPoZGAgAFkdeCAACAYAIAAAGkwgAABwLCABdNDcIACOmBA
Date: Tue, 7 Sep 2021 16:11:50 +0000
Message-ID: <SN6PR11MB34216D527BEC25164B6A59C2DFD39@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20210622093424.886133-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <YS+EuzTIv5YWfzIL@intel.com>
 <SN6PR11MB3421B0900C9A9770B19367F5DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <YTDKrJTd6VnV+08K@intel.com>
 <SN6PR11MB3421DB31729DE8DA0458D175DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB34212E5091E6614477C07C00DFCE9@SN6PR11MB3421.namprd11.prod.outlook.com>
 <SN6PR11MB3421A8F621EA25C89AFD414DDFD29@SN6PR11MB3421.namprd11.prod.outlook.com>
In-Reply-To: <SN6PR11MB3421A8F621EA25C89AFD414DDFD29@SN6PR11MB3421.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c57019bd-d98c-464d-eeb4-08d9721a338f
x-ms-traffictypediagnostic: SA2PR11MB5179:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB517967384D380B921CB63733DFD39@SA2PR11MB5179.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G3yTL+SLxjmAsq0jepGE/hcuPvSuEPUuxpGv8Db2+Nf6dXE6D2UYySgn0RNmF16NKlXOcYpbZ29N/OGDS1nzq4GMQNNeZnktGnaI7zdLLFlmlcEs6L3fO6+KpatsRLykXY1qRawAROOtkRgi9LFastNcBbGhL4nOSMmc6dcdzaxHXLcrSSpQZAshZJZxbsXGlaeY3dVtIDx+n3fch1lCO76sPxWZUj4szaOVTh296QJOHq60HmCExCpTaehRIy+gPOqZO+ygpGMiYZTAwRw1PM+ujtQewsSzY4biPR5kZjmw6XVeEM/7FCIJW7rn3W5hYjy6b/RS+pZhqhM6LnFqvmDfkvfRvNjDmuoSpjIw3X4sKa22wbscVSdwfBIpx8RmggVmXLOGGTMPSknqLmtybG25R4XQfcn3Vs9voiTaStnRFVPSeOifb/IcO9uU4eFk5f+EiHkMgtwnhGxSbi2r0vi5824eJDKRvGqBHe1xQ5DbATGfJnjm+N/Ss2UWOfCzAbubpVBa1C2grSaId9KQiOkNqzbqW5Ko6Z1M4YArrs+KwxOohxLST9O8gH5GprTY2MDxpLQaHwnZ/IPrzveX3+tQdHddMBXBzFZucTRN8zNBN09kJcKk/7kLrlsqBbG9PnSt2bWtVav99+rrvneXr3EwgV94aMeqf4t4GlE37Iw4mqrToGbi70mpn8C0IZQ+aRKVcE+5ZyoiAsT+sNKJ3w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(39860400002)(366004)(136003)(396003)(376002)(8936002)(6916009)(8676002)(5660300002)(71200400001)(9686003)(2906002)(66446008)(478600001)(76116006)(66476007)(64756008)(66556008)(186003)(54906003)(66574015)(4326008)(83380400001)(66946007)(966005)(122000001)(38100700002)(86362001)(33656002)(38070700005)(53546011)(52536014)(7696005)(6506007)(316002)(55016002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?V+pfzpBfGBBwNKcxBLX3KGLJwm3pvHcQOZtfMJUx/R2Vb1PpfV+zr1ZgPv?=
 =?iso-8859-1?Q?U0fuxz4UdVmM1WMzzlQKgSAreGphCh9SYA67Cx/e/ljqoUNdZGSSgbsR9J?=
 =?iso-8859-1?Q?91w8BR7YwF8lpLr3Mwl/wjarU0ryBDy0r75uZLcjLge2Z67kzNqn3/sipM?=
 =?iso-8859-1?Q?W4O0TZL+BNwgDm1Lb59qvd3k2hHZ0UHlot+FKj8t4dDSxpTRNM8XZl+IgY?=
 =?iso-8859-1?Q?ELJKNcEvke7gWxH/mjhX+nP8VVEk+4wkA9cCixU2OXH/kiB28cXopI8/pT?=
 =?iso-8859-1?Q?ytU9oDI7ibdaF4BJ2kkvkjuXJUBEGN/APhouMWFVZ1tb0/V7zLsIa/L4oz?=
 =?iso-8859-1?Q?eC4XhJAhleFRS07eIXKA2o8UWqfazTdJ9nt/2fgGd7L0aaJbyP23aoZsTF?=
 =?iso-8859-1?Q?3xNIT37PMfqvYsoRcuFWMWmz+FMnvBnlsD3bKUSLGxQu4ketQLdV6kVNeD?=
 =?iso-8859-1?Q?+Ph7S9HScVcCQFrsHDL54V6q7ZYhYqQdyZzyPN8VdsEdrlpU/G33+BlJ9v?=
 =?iso-8859-1?Q?nbUO8WwH38v5c5Zvw4q0E0JL2/JIQ41bH85yBWZv9QBfgFy52ipcmG7Yp4?=
 =?iso-8859-1?Q?sNR6nZCNSnUxemwwWWNq0nVKz8KTrmt5zhqiTgq+Qcm0I2Lt9n1+ACCeaI?=
 =?iso-8859-1?Q?IQ5Kj5bu1P5FZ2OA+FrMvfLTs5/O1PCQQ4OdTkNbYSu6U9AaJ7Apcpz8r2?=
 =?iso-8859-1?Q?EF98TpEPLKMtY2K23K/0kz173MAd9oyQxViOZC2QgS2D8JRply2BcHdtEV?=
 =?iso-8859-1?Q?W+5nst1tZYBVe1FhnjvUuotD+xOh28h+017hHjistBsca6F9Iqcz83M+y/?=
 =?iso-8859-1?Q?EfQCQgW2L1GT2RuJiVEiVnnyKThJddCJsav4fEe7xJ98LW25Q7X3M8KTbR?=
 =?iso-8859-1?Q?kpwELnkO6MLnxRo0qKmGbUDgyIUkbXI4OlhYcSX1iuGYKjltl7Z+xvXCXj?=
 =?iso-8859-1?Q?YJLQXLNk5uZHj6XXGQlzk5+Fz7wImBRNMeq+ph4NcIXc9S2TcchCPSAtKV?=
 =?iso-8859-1?Q?rJ+QrFmFGQg/ELSp+CyOm5CAeXBa52DXJeW+UyH3yM8eC1bS6EkcpiBkDO?=
 =?iso-8859-1?Q?rJv9jGL0F+yYS1Plz2RKy903fYjvPFATVliYUrXQ89GmIiQI+ipuJsTxW/?=
 =?iso-8859-1?Q?S+uuWe/WVdArrYMSnZTToug+eoxuUX3nVT2gtMEm8k/ZeriPQbaT32wcSi?=
 =?iso-8859-1?Q?kAZaX9CAGLNnH6VqZUTzHIdxLcxM8f4ixc9PDYY2zga321B/P0M8bnW2qj?=
 =?iso-8859-1?Q?5jLZuHGdLbhjhKt8CbTOYEJgywovwvVQkkAR8QPZ5BSBAbpNsJBAlMmMnC?=
 =?iso-8859-1?Q?IiYgtyg43ctrReyIcLhxHh2YhkWhVAOQ/2sDPyl9cj2w4EDfi1ailqyTZj?=
 =?iso-8859-1?Q?frRmwrEXZvWN7CZAefLQ3nZiXZty4lEhBnqNPCJ0h3PuLY4Naz0WA6gNfT?=
 =?iso-8859-1?Q?JuK3QsvHPeLWKIGJ?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c57019bd-d98c-464d-eeb4-08d9721a338f
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2021 16:11:50.7935 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0mhgnfcDsVv9GMTgqiTmRE6/rPgbXAcIK2gD3w0gvSVl6f5TG5z0IEpPmuYTJceTZrDBzST1VCmBJLkE/9MAWuKsjj95Hpk0ymsPgRkNJiYLdzeyQlbkfweGr1h7gQ1N8DuH3T+Cm/+WlD+pf/X4OA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5179
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
 gating in HDR mode
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

Hi Ville,

I have posted single patch for HDR mode here https://patchwork.freedesktop.=
org/series/94428/#rev1 . Please review and ack. I will post " drm/i915/gen1=
1: Disable cursor clock gating in HDR mode " on top of that patch.

Thanks,
Tejas

> -----Original Message-----
> From: Surendrakumar Upadhyay, TejaskumarX
> Sent: 06 September 2021 11:41
> To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> Cc: 'intel-gfx@lists.freedesktop.org' <intel-gfx@lists.freedesktop.org>; =
Souza,
> Jose <jose.souza@intel.com>; Pandey, Hariom <hariom.pandey@intel.com>
> Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor clock
> gating in HDR mode
>=20
> Hi Ville/Jose,
>=20
> I hope you both discussed as in next version I will incorporate all chang=
es as
> per Ville's final suggestion. Please let me know if you guys think otherw=
ise.
>=20
> Thanks,
> Tejas
>=20
> > -----Original Message-----
> > From: Surendrakumar Upadhyay, TejaskumarX
> > Sent: 02 September 2021 18:37
> > To: 'Ville Syrj=E4l=E4' <ville.syrjala@linux.intel.com>
> > Cc: 'intel-gfx@lists.freedesktop.org'
> > <intel-gfx@lists.freedesktop.org>; Souza, Jose <jose.souza@intel.com>;
> > Pandey, Hariom <hariom.pandey@intel.com>
> > Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > clock gating in HDR mode
> >
> > + Hariom
> >
> > > -----Original Message-----
> > > From: Surendrakumar Upadhyay, TejaskumarX
> > > Sent: 02 September 2021 18:34
> > > To: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > Cc: intel-gfx@lists.freedesktop.org; Souza, Jose
> > > <jose.souza@intel.com>
> > > Subject: RE: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > > clock gating in HDR mode
> > >
> > >
> > >
> > > > -----Original Message-----
> > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > Sent: 02 September 2021 18:29
> > > > To: Surendrakumar Upadhyay, TejaskumarX
> > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > Cc: intel-gfx@lists.freedesktop.org
> > > > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable cursor
> > > > clock gating in HDR mode
> > > >
> > > > On Thu, Sep 02, 2021 at 11:07:06AM +0000, Surendrakumar Upadhyay,
> > > > TejaskumarX wrote:
> > > > >
> > > > >
> > > > > > -----Original Message-----
> > > > > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > > > > > Sent: 01 September 2021 19:19
> > > > > > To: Surendrakumar Upadhyay, TejaskumarX
> > > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > > Cc: intel-gfx@lists.freedesktop.org
> > > > > > Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gen11: Disable
> > > > > > cursor clock gating in HDR mode
> > > > > >
> > > > > > On Tue, Jun 22, 2021 at 03:04:24PM +0530, Tejas Upadhyay wrote:
> > > > > > > Display underrun in HDR mode when cursor is enabled.
> > > > > > > RTL fix will be implemented CLKGATE_DIS_PSL_A bit 28-46520h.
> > > > > > > As per W/A 1604331009, Disable cursor clock gating in HDR mod=
e.
> > > > > > >
> > > > > > > Bspec : 33451
> > > > > > >
> > > > > > > Changes since V3:
> > > > > > > 	- Disable WA when not in HDR mode or cursor plane not
> > active - Ville
> > > > > > > 	- Extract required args from crtc_state - Ville
> > > > > > > 	- Create HDR mode API using bdw_set_pipemisc ref - Ville
> > > > > > > 	- Tested with HDR video as well full setmode, WA applies
> > > > > > > and
> > > > > > disables
> > > > > > > Changes since V2:
> > > > > > >         - Made it general gen11 WA
> > > > > > >         - Removed WA needed check
> > > > > > >         - Added cursor plane active check
> > > > > > >         - Once WA enable, software will not disable Changes s=
ince V1:
> > > > > > >         - Modified way CLKGATE_DIS_PSL bit 28 was modified
> > > > > > >
> > > > > > > Cc: Souza Jose <jose.souza@intel.com>
> > > > > > > Signed-off-by: Tejas Upadhyay
> > > > > > > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > > > > > > ---
> > > > > > >  drivers/gpu/drm/i915/display/intel_display.c | 27
> > > > ++++++++++++++++++++
> > > > > > >  drivers/gpu/drm/i915/i915_reg.h              |  5 ++++
> > > > > > >  2 files changed, 32 insertions(+)
> > > > > > >
> > > > > > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > index 6be1b31af07b..e1ea03b918df 100644
> > > > > > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > > > > > @@ -358,6 +358,13 @@ static void intel_update_czclk(struct
> > > > > > drm_i915_private *dev_priv)
> > > > > > >  		dev_priv->czclk_freq);
> > > > > > >  }
> > > > > > >
> > > > > > > +static bool
> > > > > > > +is_hdr_mode(const struct intel_crtc_state *crtc_state) {
> > > > > > > +	return (crtc_state->active_planes & ~(icl_hdr_plane_mask() =
|
> > > > > > > +		BIT(PLANE_CURSOR))) =3D=3D 0; }
> > > > > >
> > > > > > Please use this in bdw_set_pipemisc() as well. This could be a
> > > > > > separate prep patch actually.
> > > > > >
> > > > > > > +
> > > > > > >  /* WA Display #0827: Gen9:all */  static void
> > > > > > > skl_wa_827(struct drm_i915_private *dev_priv, enum pipe
> > > > > > > pipe, bool
> > > > > > > enable) @@ -383,6 +390,23 @@ icl_wa_scalerclkgating(struct
> > > > > > drm_i915_private *dev_priv, enum pipe pipe,
> > > > > > >  		               intel_de_read(dev_priv,
> > > > > > > CLKGATE_DIS_PSL(pipe)) & ~DPFR_GATING_DIS);  }
> > > > > > >
> > > > > > > +/* Wa_1604331009:icl,jsl,ehl */
> > > > > > > +	static void
> > > > > > > +icl_wa_cursorclkgating(const struct intel_crtc_state *crtc_s=
tate) {
> > > > > > > +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.=
crtc);
> > > > > > > +	struct drm_i915_private *dev_priv =3D
> > > > > > > +to_i915(crtc->base.dev);
> > > > > > > +
> > > > > > > +	if (is_hdr_mode(crtc_state) &&
> > > > > > > +	    crtc_state->active_planes & BIT(PLANE_CURSOR) &&
> > > > > > > +	    IS_GEN(dev_priv, 11))
> > > > > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc-
> > > >pipe),
> > > > > > > +			     CURSOR_GATING_DIS,
> > > CURSOR_GATING_DIS);
> > > > > > > +	else
> > > > > > > +		intel_de_rmw(dev_priv, CLKGATE_DIS_PSL(crtc-
> > > >pipe),
> > > > > > > +			     CURSOR_GATING_DIS, 0); }
> > > > > > > +
> > > > > > >  static bool
> > > > > > >  is_trans_port_sync_slave(const struct intel_crtc_state
> > > > > > > *crtc_state) { @@ -2939,6 +2963,9 @@ static void
> > > > > > > intel_pre_plane_update(struct intel_atomic_state *state,
> > > > > > >  	    needs_scalerclk_wa(new_crtc_state))
> > > > > > >  		icl_wa_scalerclkgating(dev_priv, pipe, true);
> > > > > > >
> > > > > > > +	/* Wa_1604331009:icl,jsl,ehl */
> > > > > > > +	icl_wa_cursorclkgating(new_crtc_state);
> > > > > >
> > > > > > This looks a bit wrong. We shouldn't turn the clock gating
> > > > > > back on until after HDR mode has been disabled.
> > > > > >
> > > > > > So please model this after skl_wa_827() and
> > > > > > icl_wa_scalerclkgating() so that
> > > > > > a) the ordering is correct, and b) the code between all three
> > > > > > w/as looks consistent.
> > > > >
> > > > > I did not get what you are suggesting here. Can you please put ps=
udo?
> > > > > Currently as far as I see icl_wa_cursorclkgating is already
> > > > > modelled after
> > > > skl_wa_827() and icl_wa_scalerclkgating(). Are referring same Or
> > > > something else?
> > > >
> > > > It should look something like:
> > > >
> > > > intel_pre_plane_update()
> > > > {
> > > > 	if (!needs_cursorclk_wa(old_crtc_state) &&
> > > > 	    needs_cursorclk_wa(new_crtc_state))
> > > > 		icl_wa_cursorclkgating(..., true); }
> > > >
> > > > intel_post_plane_update()
> > > > {
> > > > 	if (needs_cursorclk_wa(old_crtc_state) &&
> > > > 	    !needs_cursorclk_wa(new_crtc_state))
> > > > 		icl_wa_cursorclkgating(..., false); }
> > > >
> > >
> > > Tejas : In the previous version it was done this way only. But after
> > > review comments from Jose I had to change it. See "Changes since V2"
> > > section. Also you can check in previous versions of patch.
> > >
> > > >
> > > > --
> > > > Ville Syrj=E4l=E4
> > > > Intel
