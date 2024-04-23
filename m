Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1E448ADC64
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Apr 2024 05:47:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05D23113023;
	Tue, 23 Apr 2024 03:47:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kl1UbKZ/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F1C3113023
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Apr 2024 03:47:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713844030; x=1745380030;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c00AKDFsPtf5IbSyrER3sbeOWvPOnBQCkTosuau/Ook=;
 b=kl1UbKZ/A1CT5DR5RFd/0uxaXGWvyMWVQwkU0GxOnS9hg6m6X8taNx9o
 WAjF9Q/RUloGdEvc9qx62hSZG8ZAymF83n7ow1+x9FdTZ3jjHm9SUdNK7
 v6zyPXbS+LiLHfuL3d5MtWan36YEpSQiz5MOW/xYLZkh19QZpgNU9T+yG
 ZCADedWq6FpuiJ8BLCGnbTcyepReAvve1n87A/9OJfsy38m5JNQ/B8p4g
 AT2uP2g3CSQVHth+khllY5lXgb4S4BTmTYkfXqOdRMrdaDcufLPI6D/t0
 uHFqnesq3t1RB3jGgPpoQmNqV+9RQADriuBl9I8+ACyE3CQ9uD6s/IYiB Q==;
X-CSE-ConnectionGUID: U6hITkR8QSit061Z9OG46w==
X-CSE-MsgGUID: 0SodBBJxTSmZBflOvnTu8Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11052"; a="9241270"
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; 
   d="scan'208";a="9241270"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2024 20:47:10 -0700
X-CSE-ConnectionGUID: ZvzwLG3mSlKLu6NnNq1EKA==
X-CSE-MsgGUID: Bd/aGRL9T+aw4h8s5AGiZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,222,1708416000"; d="scan'208";a="29025653"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Apr 2024 20:47:05 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Apr 2024 20:47:04 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Apr 2024 20:47:04 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Apr 2024 20:47:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RquAp64h/MbykCwqDt46mf9hQ7QMV8R+I51moU0BEqkuuGUfHtprkZJg0Y753Nois9wqlSYcKhYZ+fR25JLXLt1h1SjeE/A8mcHIU7Y/QHvjxYj5jGaePxVLhWhiCHBKeh2Zuwo54PNb1DTIc9sMJ5w01Upy+Z/JNPSiH4iAOOXyjczKyYZj3g5Swi7qmsM9ZvYqtChhd/6rPpyx6Q6Nr/Kwv0wHfmPV/0WtPOdhLiJSTC4AdZmURiOHpdEjK5UGLUqqU25hm3hAsg0yhc3AAoNI+Ur+Hl63nU23Jf5odYM8Vw725guzbvJSGhJGjk31I1RamGg8qYFM+hBxeNuKgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=siAw3qVl2u6oPyh82R/DWEjdB7w0XUYOYidFAtzfHU4=;
 b=QRW9OfhCvRS7SQzt3dcXyLWpIKvT86xobbjdwwoe6O96MVYvLHTpSjfjge6GdSeuOApJLMAMVk381ivgZqRW5Akr7KKwljQCoC6IMNGjcJyqL1aS2v/KAlXhItaglb9e/V2rSsrV/sojeFBjt79gKWvJuKqFOTbrgTyEir+UUt7VEscaBmoDMYO/qor51VBRUhBmfgn7BJ4K2NFCLVRNg+zkkJqAihm2mTsog6WawKMvtCoGk/OPdWSrzAjldoh4L3Nk/ehQP9FYjj+kKP/CmqMcPr/7ego9Xp1kamkKvsvSoRWCuYtnjoOg4HwK/YKSLxYdRD/YD1Ln3dwTjtX0KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by MW4PR11MB6618.namprd11.prod.outlook.com (2603:10b6:303:1ec::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.21; Tue, 23 Apr
 2024 03:47:01 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7519.020; Tue, 23 Apr 2024
 03:47:01 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk
 sync->async flip change
Thread-Topic: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk
 sync->async flip change
Thread-Index: AQHaeuBhDf2+NGoZyUybb8DgE95bibFvMdJwgADJSoCABXCUEA==
Date: Tue, 23 Apr 2024 03:47:01 +0000
Message-ID: <IA0PR11MB73073286D98257CAFC85588DBA112@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-5-ville.syrjala@linux.intel.com>
 <IA0PR11MB7307A4E912E95D38FC352FC1BA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
 <ZiKeuwxEwOufH1IV@intel.com>
In-Reply-To: <ZiKeuwxEwOufH1IV@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|MW4PR11MB6618:EE_
x-ms-office365-filtering-correlation-id: dcb9ae13-3c37-431d-2b05-08dc634808f2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?E+rQ1pg8NL8cizusx5si8Ze5hyvcO+cBHFL3PyTiEYTiEgguux/FDeUOcM?=
 =?iso-8859-1?Q?NP9YC4XyMKlLtYotMn9btU0kyh4a7/Zao3LsC5uEZnV+5shp85IvzOIZ8O?=
 =?iso-8859-1?Q?lEtTa8AGFZ1CWCsQT8U+lSuuDdvQqJy7B+9dLUccl5LpnA4yKaYCCMd0xJ?=
 =?iso-8859-1?Q?QSzNW+hPP6IbfWBTmYap83Wao2FmXmTy/+xm44lo4wzs1tViqqQ18HKQBd?=
 =?iso-8859-1?Q?tkYHHq9Ngg9Ui3Qddi+XfLfoyLXgeLSQ4ZufPRpWDnF+wG1vlhCjgHE39j?=
 =?iso-8859-1?Q?kHnalyI5PLHkOngZSJwe+YhAMwawKa5b5OCEexgTrNiOeJu7nSNfWREHfN?=
 =?iso-8859-1?Q?cC+tZzkYgogQ7XXdFG/2Z3lxYtbuBG6sqwWGAKzUmadAtNBP8fUkfDDYjX?=
 =?iso-8859-1?Q?sTAeaDOZpnw4N5SB1ufQIwxY7IW8vPp5nvZk5Xy4N/L3ZsM6jdoNH3N1vX?=
 =?iso-8859-1?Q?upY7cxF1PEFb2yljCFoFFxJA63tLKIrgcJOxXigYmA8Y76ojSIRv2eMJ1i?=
 =?iso-8859-1?Q?LRpW47r46W7qmPVfpnPw7lO6klnV1uDTx+XuZDBcJ3MDZt2IoFhgqMH5G+?=
 =?iso-8859-1?Q?si6/upT380v36HhJptYW4yYuWBXJuCEdqkpX83lTKhGKjFlDeI+CKXeWMc?=
 =?iso-8859-1?Q?WZTM+8x5stA1t1CJzdvpOMAjQGGpNy+KyOpci2Z7TtmH60ifLy8LARV3a7?=
 =?iso-8859-1?Q?vUmyL/0CdPFeUofwpmBQaVrMInG5OTyowNEl7GEVTX2pcQId+omhaAZzZU?=
 =?iso-8859-1?Q?cEZ7QBWNwg3po7mtnvJ3pyqwFssjBJLdJx6Ulp6avKyFAQYv22eh/YyGoE?=
 =?iso-8859-1?Q?mp1a0Z8uHIJi3ijzSU+AxMimrfGXNJXILCujxT25Ez0cSXQ9tLqZIib9qV?=
 =?iso-8859-1?Q?igxYI8ZbthVwzJhIOdRwEAaP7ow4gVX7Ye+7SDZWIN+p9j/fr6rbB60Gv+?=
 =?iso-8859-1?Q?PJb6/ypOhobs2ah8c4b+GstJ8wB9hPwEGlYpyb7SXS6ow3Zlhbb1nzogwv?=
 =?iso-8859-1?Q?WBHlioHvFDeonHatlQRhtn5vQr3o65eq1NJBUlMRKrMcqmAYhfd3ZPZUq+?=
 =?iso-8859-1?Q?Erq09Niuqg0mFwFbSxwdqhpKznOUJ8nq5YsgiZItIOBOt0nkSZsN8rmpGR?=
 =?iso-8859-1?Q?RBajqCMF6RspE6m8WVZExtLLwRuaLi05xPi4UNENTZE8OhWPeAkxDIfSkF?=
 =?iso-8859-1?Q?I1lKP4MnaJUPYIk85qJkHMPXoJ0Dg/QSgyyUta7nAy2YdsbA8WIT8gccsO?=
 =?iso-8859-1?Q?WJW7T5VQC0/lMPeh0EBlI2wVVDZN0b3ETOb+fUlpTvAmKV85VjW5CiCCrr?=
 =?iso-8859-1?Q?FsG220bwMRSUy1ZYo+OD039v5A=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?zji8JhdcaFZqI3Zmca4oqw9D2zGnXmewLGb1vsJImVc4LpFdOwMKpE5vZU?=
 =?iso-8859-1?Q?3DZq53xLO142zW1Pik64f20o5e8bEDAsEJvVzkfQDK/dcSSF0YLF4fKuPH?=
 =?iso-8859-1?Q?IcoSyxC4uyZIOEHoVY/1K7oNXs1g0/Pjhs1yo/QmOEW5SOymOVFxQF57Qh?=
 =?iso-8859-1?Q?EjoqTN7uWOdxksUga/iC1DlsXpZ48uE8hDJ9mAcBlcidz0r30wuVtx8FXD?=
 =?iso-8859-1?Q?tAq7qpBFCLZUFUkZgbeoOfojaHsliBmssampWZWydBDdHCZ4hW1qakmpQm?=
 =?iso-8859-1?Q?d5rIKL9w35vw+ZCXVP8p54AkG05xkKwzJ9fRtj5lu40lPRZk3J+0FaCkjI?=
 =?iso-8859-1?Q?REFbOtR7OmJYIIU/ONRI4R3Ge0z1u6Cmlz8Pv1zDnkclqwrCLf5CEXo1nV?=
 =?iso-8859-1?Q?PRHs7usImnq9haqNBOzmo6MUVZZj5eECC70EbDfRokzqy706pdqNaEvwIP?=
 =?iso-8859-1?Q?HRHalb1kL1zCyiivl/vqETE9jrqywx3S3DX/pyzJj3Q81KetLinq8rX4CN?=
 =?iso-8859-1?Q?//h7J0za9a6sJeOCTVy0R9+qrarrMmNDJmtu8qy/sEfJA3LrBORqqTLNxd?=
 =?iso-8859-1?Q?t04Qf0ojDB63/BweY7Kc5eq16OJ3r/zfL0c7GNIYYWM1oFr7rcvGpnO42G?=
 =?iso-8859-1?Q?RQwUxZ9z3hN3Vzn7Z0FYnMWM63MpA17O3NkXncQWlJsilGkBYNViKG63NJ?=
 =?iso-8859-1?Q?SOVzLEBAAMlzo/CNUPXbSh0rAth1Bu8gsuagSTapfhD4x9DzoQKQ9yznKs?=
 =?iso-8859-1?Q?1yxbUi6NmkIyC6gSjeHYKlbYFTu0TC+xAWG3E9YswuX3DqRjr+XDwv39W/?=
 =?iso-8859-1?Q?mQGcS8Uh0HDl6Ui8vOnzhsYMgVpHtzNY+bW47ZhhXNen9kPkDz8z1Vm+rv?=
 =?iso-8859-1?Q?kBiCDKvedd0LJmGiYnlARv3w3iaTRbs/U3Y88C6djfJu2KfsglnvvAkyWM?=
 =?iso-8859-1?Q?FqBzdJ4UvJMbr5QnkK8vreKARMDNEZPqqZXl99TlzqPZ2J5jrvnTlGEkqZ?=
 =?iso-8859-1?Q?LfmhWtQEjKGXe7hKK2A0tB8vN8EZuVBji2QJknnxTgIu2QeOzRDFWJrJXO?=
 =?iso-8859-1?Q?DH/4HmpNkmbOYqE2R+ouWoTf+s3qqccb9Ya/mkdqZ0+589KO2W5GvUIgAy?=
 =?iso-8859-1?Q?KtexTRflwds+t5sJF0/3clc2cV+l7xi+vJDQwSyzRmHDEbsIwUaB2PksHo?=
 =?iso-8859-1?Q?6o5BOX7Q8OA/R5uNEwFMqdyjbIvZ0p2dLF930jpc/qOJE3toye2gwckYAD?=
 =?iso-8859-1?Q?IxoTcuU4PNGBCVJm3r8dTdZjpuK1+GTC0/a1RYMj3Upuls44LdPw0qTV1T?=
 =?iso-8859-1?Q?YHPOYVIOZd5J1EIWZXrACHb9RvHZTcEwImsS3pDBsRopgO2bG0Jr3J6Eui?=
 =?iso-8859-1?Q?uraCffEy3eYXzuSrgyvRAHu8h84TpUJ5NllJ7Js6p88nto4Czta+79ahZb?=
 =?iso-8859-1?Q?iVytWN/FQpyyvnjDR4WGtFFxBt0jYaJBuNUsUvcroylrBsMkCn1naREJIS?=
 =?iso-8859-1?Q?rDtrQlWgzq4iwFFlPrk5f9fwkThLC1lcMTdu462D6xhRlT4v+5R+Sqz+dS?=
 =?iso-8859-1?Q?AR35jhkB8Nm1N+zf2y7mTBkXRstASial5foQm+Q6LlAflFThcGJz+Okroi?=
 =?iso-8859-1?Q?wvIk4faYDNpyK25x8pQohlUl2Xpk+fGsug?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcb9ae13-3c37-431d-2b05-08dc634808f2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2024 03:47:01.8422 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rzKXhmQkc7PbEb8xe/ZTcicUI8V0Kh/BqMTzISKtnmLSdVa3W8reuZKY0N/r6bY7HLJyXcepVFrvUzMtMOC7wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6618
X-OriginatorOrg: intel.com
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
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Friday, April 19, 2024 10:12 PM
> To: Murthy, Arun R <arun.r.murthy@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: Re: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk syn=
c-
> >async flip change
>=20
> On Fri, Apr 19, 2024 at 06:39:48AM +0000, Murthy, Arun R wrote:
> >
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf
> > > Of Ville Syrjala
> > > Sent: Wednesday, March 20, 2024 9:34 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 4/6] drm/i915: Eliminate extra frame from skl-glk
> > > sync->async flip change
> > >
> > > From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> > >
> > > On bdw-glk the sync->async flip change takes an extra frame due to
> > > the double buffering behaviour of the async flip plane control bit.
> > >
> > > Since on skl+ we are now explicitly converting the first async flip
> > > to a sync flip (in order to allow changing the modifier and/or
> > > ddb/watermarks) we are now taking two extra frames until async flips
> > > are actually active. We can drop that back down to one frame by
> > > setting the async flip bit already during the sync flip.
> > >
> > > Note that on bdw we don't currently do the extra sync flip (see
> > > intel_plane_do_async_flip()) so technically we wouldn't have to deal
> > > with this in i9xx_plane_update_arm(). But I added the relevant
> > > snippet of code there as well, just in case we ever decide to go for
> > > the extra sync flip on pre-skl platforms as well (we might, for examp=
le, want
> to change the fb stride).
> > >
> > > Signed-off-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> >
> > Logically changes looks good. I see failures in CI.IGT Better to have
> > this green or a Tested-by would be good.
>=20
> Those are fixed by https://patchwork.freedesktop.org/series/131518/
> whereas this got tested against the previous version of the igt changes. =
I'll
> repost to test against the latest igt changes.
> IIRC one can't just reply to the cover letter with a new Test-with :(
>=20
Will wait for the CI IGT to get green on this.

Thanks and Regards,
Arun R Murthy
--------------------

> >
> > Thanks and Regards,
> > Arun R Murthy
> > -------------------
> > > ---
> > >  drivers/gpu/drm/i915/display/i9xx_plane.c         |  5 +++++
> > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 15 +++++++++++--=
--
> > >  .../gpu/drm/i915/display/skl_universal_plane.c    |  5 +++++
> > >  3 files changed, 21 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > > b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > > index 0279c8aabdd1..76fc7626051b 100644
> > > --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> > > @@ -455,6 +455,11 @@ static void i9xx_plane_update_arm(struct
> > > intel_plane *plane,
> > >
> > >  	dspcntr =3D plane_state->ctl | i9xx_plane_ctl_crtc(crtc_state);
> > >
> > > +	/* see intel_plane_atomic_calc_changes() */
> > > +	if (plane->need_async_flip_disable_wa &&
> > > +	    crtc_state->async_flip_planes & BIT(plane->id))
> > > +		dspcntr |=3D DISP_ASYNC_FLIP;
> > > +
> > >  	linear_offset =3D intel_fb_xy_to_linear(x, y, plane_state, 0);
> > >
> > >  	if (DISPLAY_VER(dev_priv) >=3D 4)
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index 769010d0ebc4..7098a34a17c8 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -437,10 +437,6 @@ static bool intel_plane_do_async_flip(struct
> > > intel_plane *plane,
> > >  	 * only X-tile is supported with async flips, though we could
> > >  	 * extend this so other scanout parameters (stride/etc) could
> > >  	 * be changed as well...
> > > -	 *
> > > -	 * FIXME: Platforms with need_async_flip_disable_wa=3D=3Dtrue will
> > > -	 * now end up doing two sync flips initially. Would be nice to
> > > -	 * combine those into just the one sync flip...
> > >  	 */
> > >  	return DISPLAY_VER(i915) < 9 || old_crtc_state->uapi.async_flip;
> > > } @@
> > > -604,6 +600,17 @@ static int intel_plane_atomic_calc_changes(const
> > > struct intel_crtc_state *old_cr
> > >  	if (intel_plane_do_async_flip(plane, old_crtc_state, new_crtc_state=
)) {
> > >  		new_crtc_state->do_async_flip =3D true;
> > >  		new_crtc_state->async_flip_planes |=3D BIT(plane->id);
> > > +	} else if (plane->need_async_flip_disable_wa &&
> > > +		   new_crtc_state->uapi.async_flip) {
> > > +		/*
> > > +		 * On platforms with double buffered async flip bit we
> > > +		 * set the bit already one frame early during the sync
> > > +		 * flip (see {i9xx,skl}_plane_update_arm()). The
> > > +		 * hardware will therefore be ready to perform a real
> > > +		 * async flip during the next commit, without having
> > > +		 * to wait yet another frame for the bit to latch.
> > > +		 */
> > > +		new_crtc_state->async_flip_planes |=3D BIT(plane->id);
> > >  	}
> > >
> > >  	return 0;
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 860574d04f88..ad4c90344f68 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -1174,6 +1174,11 @@ skl_plane_update_arm(struct intel_plane
> *plane,
> > >  	plane_ctl =3D plane_state->ctl |
> > >  		skl_plane_ctl_crtc(crtc_state);
> > >
> > > +	/* see intel_plane_atomic_calc_changes() */
> > > +	if (plane->need_async_flip_disable_wa &&
> > > +	    crtc_state->async_flip_planes & BIT(plane->id))
> > > +		plane_ctl |=3D PLANE_CTL_ASYNC_FLIP;
> > > +
> > >  	if (DISPLAY_VER(dev_priv) >=3D 10)
> > >  		plane_color_ctl =3D plane_state->color_ctl |
> > >  			glk_plane_color_ctl_crtc(crtc_state);
> > > --
> > > 2.43.2
> >
>=20
> --
> Ville Syrj=E4l=E4
> Intel
