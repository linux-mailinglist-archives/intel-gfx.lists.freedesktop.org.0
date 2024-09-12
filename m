Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 465419766B5
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 12:30:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D092710E1CC;
	Thu, 12 Sep 2024 10:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KDA4UeeX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8285B10E1CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 10:30:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726137024; x=1757673024;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=rU59BLXzrEV9i5PI9klp2/PwfauK+lImpjiPYVICn6w=;
 b=KDA4UeeXRpIpNUTZgQTCubDyTkhR4J1hDwDj2xdXLmh9d+Gcay/1y6M7
 cNGv8y66vU0zZQBy4KP5hrBzKkhFy3e/a9K6jrQtANgCHh2po6z6uRsCK
 fGOHIAYALbPIsjk3UAQewSirYpK6n5F8lXo9hCO71er3ZBP6tqc+nDwYZ
 bUZRflUk72KpwiaoTnKTzB5jMa6ntKL8od9vHhVs2bVL0TyCQsEGkITcO
 BYklQlZOhnLla26YzPPRi7Dzv2SI0ldPbe4uKtPSMp9+C7cHeZoYlSGkg
 oXtwl5gsXULfna9BBGFJ2CpOtJBTG8sZJ4NVq1UL7Mcsw8D++uKPujADq w==;
X-CSE-ConnectionGUID: 7uxLTCT0SsmdgMRUq3jjVw==
X-CSE-MsgGUID: xY+zvHtaRbShLp3/dMXgTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="24803151"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="24803151"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 03:30:19 -0700
X-CSE-ConnectionGUID: plCJn0cTS6e7qqbulgztOA==
X-CSE-MsgGUID: oFNnHhLTQ6aa91sBfTM/6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="72451379"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2024 03:30:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:30:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 12 Sep 2024 03:30:18 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 12 Sep 2024 03:30:18 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 12 Sep 2024 03:30:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R+Vl0N9Qo9x1CCrt59EvX89FOeiFkHCVpBrUoitm2TNbL4HgssDXwheYOGejfXjYRF9Xlm9796CeqZrFM+4rK2sQepx49rz1ETu9eP5uJyy+CdSzpGGXfTvjiOD+WQXMTgWa8H1HwOAmkULMjQpLWHDbx6jN2/XdomhbVO7WrOp7dVw0v4ZSLhzKcYUwIs8CDHQnTrxFDo/V4cijNafN44vhp4a1Hwt3CXHa/29JVjcF2xOQKQKlgPF/ZSATMpxEd/m3Ododig2eeIFRlcMpI/BbjKlpDpdPNc6w7Cil2t5nVJSD5M/qbsUucjdlDTwBeuDHJEUJsz1D3OoLtqKAlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j/zNADWZeS7PohSOhzkR/guhU7ACA0DIlcUzxe6MbuE=;
 b=U11ubhrauCX4YtnaeMr8E0+tmysrs9aF6tct7ZGnpY3H1eTiwAvFUQ4Me+ET9GW78EOKtqWVoqQLsHWN9L0K0LNynxjziSwxJpmXcYNJIQOU6qA5VnZpcmpEF9lqHJFzrScEGrhngzZESsJkOfEe/eKD9RlXzi2MCm+Jdfe85tpvZS+alWqAtkxJ4lJOgRmoO0SnBI3Or7XeVe7nq4LZ6/Q20uRNjEWtMXspWgCljRKgbqLxuWVfi3woTEwKuM+wRGDtALYH+Yh8Jg4hMYIOSGOg2KxqsWVZw521h9qy7CKvUWrZr5pNk7YtWMJsBGvsFN6VCxT6a1CGljSgT7GXzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com (2603:10b6:a03:47f::11)
 by DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7939.25; Thu, 12 Sep 2024 10:30:15 +0000
Received: from SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7]) by SJ0PR11MB6789.namprd11.prod.outlook.com
 ([fe80::c0dd:2dd9:aec0:94f7%5]) with mapi id 15.20.7918.024; Thu, 12 Sep 2024
 10:30:14 +0000
From: "Kulkarni, Vandita" <vandita.kulkarni@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Topic: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
Thread-Index: AQHa87WhLLMpY/JzvUGImuqjbNzwfbJSLvSwgAHcegCAAAeLcA==
Date: Thu, 12 Sep 2024 10:30:14 +0000
Message-ID: <SJ0PR11MB67894F5C481D44C0E9379C548D642@SJ0PR11MB6789.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-3-arun.r.murthy@intel.com>
 <SJ0PR11MB67897B7473D541F9D73965DD8D9B2@SJ0PR11MB6789.namprd11.prod.outlook.com>
 <IA0PR11MB730755FAAED7E6513702145FBA642@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB730755FAAED7E6513702145FBA642@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ0PR11MB6789:EE_|DS7PR11MB6078:EE_
x-ms-office365-filtering-correlation-id: a0c4da46-312b-4e3c-a6e5-08dcd315e3d2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?us-ascii?Q?+JbqQx4W41jI7KazZ3v4eqgQyV0MOUaDAnlPIJHo9E5wCWjcvf9mQ8J4O4Xl?=
 =?us-ascii?Q?EgmeCzsKJfPTGXlcMvvkp54E7GiMtjRFlezjzM9ba2wC5jETb5t1pXXZxT9b?=
 =?us-ascii?Q?z1mgPIoei+8pDU/EMxWvPyCtnRYd27y3zFqfmP3GQZU2eia57Ofk8TJVJuwl?=
 =?us-ascii?Q?8XDcZVvP810ye1eGdkjDGYxzAT0T3J4q7wuoKeBNJ/SsR8Ly3QXw6jEIRXUV?=
 =?us-ascii?Q?+EfRubnrv4lk3Rtvq2pqTiU7DORfLTCEM+D7SA0R34narS+7QCa5FRW3oMaS?=
 =?us-ascii?Q?k9WGOp068C+o4xhkELgYxVvzdPA3o7uOz27Gcuf3ZOpVLZMC5os+vImtl9xS?=
 =?us-ascii?Q?BQvuCHKt5rUyvq6ldFiTZw/bmNnBV0cwlxlohVpI/PHCeK+DmkyJBtcm9LiP?=
 =?us-ascii?Q?oeFIJff0JS7TnhPPQT7Qn15FErd5J+FgFi2ESicJbebH8JoRQAu9AQaizPU3?=
 =?us-ascii?Q?VVIHQbESq1YMDk0zpE0XiM5T1zz/wSdd4RcTUIvbnW4uKnd225/yraAKtV/W?=
 =?us-ascii?Q?nrVkFyiB2Pco2qkkIw1iBChsMPQU4LLfP/nF/ZN9Cg+lgAqQQ/PgDviUXN9A?=
 =?us-ascii?Q?bG/yTN1uhGVLbDN2Pny/cFZ/aH5glaHdLYwnpZZzMAnQMc0L19f0vcwsWG0f?=
 =?us-ascii?Q?np6rY91KjjSjmEm2DTzgQh4ODMXPrW4vF5Ur7M1rgWhBwmO5IO/GHhmugmCz?=
 =?us-ascii?Q?LqgD7Yq+Ji9QR388ndhq2snkGUodeYLuPARgM41ZUVA+7UnVJkOflPbaCO9q?=
 =?us-ascii?Q?tY1qlzVYq+pysI6GPEZuP0ElTSm1/zpkBWesR0L6efcHv+76ADyn9N5lKqOe?=
 =?us-ascii?Q?PA7m2wSvkB7VHjdcFyXCxE+/T2J2xE+ViA0DDmqc+2yKo63QywzS0pTMbtvD?=
 =?us-ascii?Q?e7Izj3MJCxzvMBqVkMBfaMkUel1eihD3KfdpqKyOArxUXzNuenbzJY8qD9/+?=
 =?us-ascii?Q?qhnjDaZRvdCH4CXML+pgh+o9h65g89CTPo8TyES9UjJGBITur8TOAJqPxlw8?=
 =?us-ascii?Q?Lv6NKqzu6OBNHyH9jEN6YFbJ5CnAuiT8WNvMja/g1JzJb3o9KWoQFEmzTHoI?=
 =?us-ascii?Q?qC2z6IaKprLWPpS8aO/PI3ElSlavaVLMVRC7xV2qzAGIocNmZyp0Zl6935N5?=
 =?us-ascii?Q?2OXp5tHgfHbayNF00BuNN1hECoNHjLYVG1mWFbnXytSwE5B+AA8D9iCR+miX?=
 =?us-ascii?Q?4vDzoCLwC/RUlNZ9AHjzDTx3zDKIRDpP/kj5xrQH7ZEBrOR0/gCnNwKkif8O?=
 =?us-ascii?Q?A6zoAlwOkIB+eXTC2ETXKPMG1fu1GXGhc7qYPLsAyzi1a48wO+1REVIFO8rD?=
 =?us-ascii?Q?PWn0LCx2j8x4P+yj0Nf4zy2IvvXKdExl4fzBWGBMjLmZZIqHcRFZxc1S5sud?=
 =?us-ascii?Q?pJ+ZQQNXBhWMTBglSTztmdEY4uOOHhhAlOMyEsm4DL7v5ROOdg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB6789.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KOP5gM9iDhOGjsEd+YuJ41VKIXM3KerdPnd6i0/PLJl5PmtKSuGUMssIdA1p?=
 =?us-ascii?Q?hJUYdIubRSlzvqHC5SfJJ/a8LsoGvqAlPlEK/Uqmq4+7fUEDIQjKwRCf8HAk?=
 =?us-ascii?Q?WzSF7T2W71l/rUD9BlL9NR6upXXAdyVmJREMLI/mjUuEfzwJT4rvX961nHI4?=
 =?us-ascii?Q?Yt8jbmXMfb/8TQPNskHhER+Yn0cwGnsLH1RZDK1UxURXJwQFHIAkYeX9V+GC?=
 =?us-ascii?Q?59urLz/h71lY4vV1XzwTdN/yhVK7NT/pFTZMZYbWznUrtnFM7LDaSjSRXHkj?=
 =?us-ascii?Q?qFxXOel6N0AMMlUcd+tWHvE7hXEICWJ/qEwsRFlxly4DuIBrtDpAOr6Fw44w?=
 =?us-ascii?Q?38UN3zxNjOD5P+zBHqwlhEvaY/C9KFQmaiboFlyOhwX1MI5AMr4Y2k9cu/T5?=
 =?us-ascii?Q?xg5Sxk+CkKJ25qn2A325OGNAlP2Qpzh0LlKwWz8jx+KvOYuf90v5sQjhAX7L?=
 =?us-ascii?Q?0EtcxYFoKjjEzElXA7qDJUsgwHneRWO9yrU/WXF6YnhFXV2eA+HtA7Iwl6KK?=
 =?us-ascii?Q?yL2F47Xph9gsG1q3/XugTVaABRA1LaTp8ovviuJ2D32ZvfCKMONskel0cUyb?=
 =?us-ascii?Q?gwpU2pjSDhuDHT31Mt4Bve7YyOMSNCr2hav2GIuklMOhdyWHtaOsGC5FkYxU?=
 =?us-ascii?Q?4r2xbE/V0vdHDWdfZEh5NxRSsOC2kF5M6cn9Q8uvzQ4P0E/d6L+KUynVrPxL?=
 =?us-ascii?Q?PsrFjLagZI9i/LfQj37Ry1yK4CQ0wWDr+mKrEwTfoYc8nPt+sNTNCO1+I6/P?=
 =?us-ascii?Q?S+HgNzuvuSUfcknIWlBIebmqghUBEGxdQbGqW1qpU3cn+hEBu3c9ZqvyUqKz?=
 =?us-ascii?Q?YvsElAoEcCEzUR5UzzB0L5yskMxHaQxKxA6XWELzRM5KLungwAS1uOpNT/w2?=
 =?us-ascii?Q?K0lNR8OFdAFRpmlrmA6RNB5FSKH9FS7x1Ueoq99MzIzQ1ElnQ8b7BQpOYRxO?=
 =?us-ascii?Q?eFp3xblQfZ1F1qpsNgBfEDofrYCNNl7+svDkAFwX0JqIQ4iSAJLDUN2rjkpH?=
 =?us-ascii?Q?/q6aTQd34kRXqJkFzd7+ixu/SL3K6RB3k2hTfOFXOGZN9hjrvdK7UBIucGvw?=
 =?us-ascii?Q?0AdBTH/OkmGCmAftBTZwQyyFoV8wC8YAPeBYXvqV3gEO+rgCy0j3EDXgcVi9?=
 =?us-ascii?Q?53/hA3DMdxCXVkji6W+3aOyRAl6PsrnmJ1LSxXynDtbK/CSqLvkPZIFHO0t+?=
 =?us-ascii?Q?xm3g26dWW7JuCk1d+2Qbm4GSJLjLHV77pbxQ5g3oFCfLm/0M2fYtApuBTpTj?=
 =?us-ascii?Q?vYdZzq3TkNpPoTbDgD/fK6b0hKVw8ftwpuOwh+mhoG4Y2SJwKISDVJlyyE0Y?=
 =?us-ascii?Q?e8SdHofIxltEgtv+Isl5yEksdtMkuQ7NpCcuEtP6/KA9nht/4RTea1CiRmYX?=
 =?us-ascii?Q?uW5itN7DY88ybzwFSApjDouLr0fz6EPl8F+npn5zN3cTQN/YpN+bPvz5rMjO?=
 =?us-ascii?Q?tCaIs7MDHXlDf6SyLFGVCHlSUR4qFgnuqRGQdZDfkBQF0UuPk29M/KKdfVJN?=
 =?us-ascii?Q?SuQI6QqXQKL4hsz2DHWMFQWI279XbGIsQUfFAUjfKQV7icsv385AcmbcTgOn?=
 =?us-ascii?Q?tWdw4A7s91Ps6P9BRQ0jzyhfFTjCyBUefL66pAhmWHrqNai5XNZQzj3egvXV?=
 =?us-ascii?Q?Dw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB6789.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a0c4da46-312b-4e3c-a6e5-08dcd315e3d2
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Sep 2024 10:30:14.9259 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lBN7sGxWv2JiQAcCNCrt2gluT2E7bHfJFWYm2eP0A6kN4uiwtgTgKKVhv993DpMVIhzKPh1q7YeZfTWs9fDkufL19QZw6DUE3WehFhj+beY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6078
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
> From: Murthy, Arun R <arun.r.murthy@intel.com>
> Sent: Thursday, September 12, 2024 3:22 PM
> To: Kulkarni, Vandita <vandita.kulkarni@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: RE: [PATCHv2 2/5] drm/i915/display: histogram interrupt handling
>=20
> > > +static void intel_histogram_handle_int_work(struct work_struct *work=
)
> {
> > > +	struct intel_histogram *histogram =3D container_of(work,
> > > +		struct intel_histogram, handle_histogram_int_work.work);
> > > +	struct drm_i915_private *i915 =3D histogram->i915;
> > > +	struct intel_crtc *intel_crtc =3D histogram->crtc;
> > > +	char *histogram_event[] =3D {"HISTOGRAM=3D1", NULL};
> > > +	u32 dpstbin;
> > > +	int i, try =3D 0;
> > > +
> > If we have PSR enabled looks like this code might straight away break,
> > and PSR being enabled is a common scenario Can we have some checks on
> > enabling this feature if no PSR until we handle this scenario?
>=20
> With PSR enabled histogram event will not be generated as there wont be
> any statistics.
> This should have no impact to user and user is not time bound with the
> histogram event.

Just to get some clarity, does this mean the tests for histogram wont  fail=
 on PSR enabled panel with this series ?

Thanks,
Vandita
>=20
> This TODO is to handle the histogram generation even in case of PSR enabl=
ed
> with some additional settings.
>=20
> Thanks and Regards,
> Arun R Murthy
> -------------------
