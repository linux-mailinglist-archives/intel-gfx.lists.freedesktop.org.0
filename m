Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2607B97C99A
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 14:59:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAA1610E6D5;
	Thu, 19 Sep 2024 12:59:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="C30bfa/I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00E8A10E6D5
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Sep 2024 12:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726750759; x=1758286759;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=XbaZQQSf2ldyVyXDb7qmWFyWJUj9XL9n4FWlEH4vdtM=;
 b=C30bfa/Ix9mMqMEQtc0hSrZjW2x677aRiJ/e7KknL5wQI5jtkQGjry4p
 IPV1AzuyK+Q4AYxa4IGQlgUNmkQU85EkKLeKNUkFH8I7tSfrNEDqMBvU3
 w1SWP3/zwxvMMqOktDv3u1U6SKF9AUUSZeq4xXGBQsXQUK/qYHH19uu3R
 AzXhEGKcyBGsA7i8OyqNqKIksNtH9A7zeWXKKoN8K0U9DK8TIactNd4+m
 YhyHpv2urLhktt3l74CrLoBmaES3nyS8lQsZnKGENOFIfzsVd3CbLFJys
 nJsJ9MnO4aFhScIR4kWigFfEwDfQnCBKVoUc/4AIKu6iShmMxUEbI1neV w==;
X-CSE-ConnectionGUID: fCVNC6x7SJWyrwsT8AU2Gw==
X-CSE-MsgGUID: PzyPs4DAT52gzauYEmeQTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11199"; a="25587884"
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="25587884"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 05:59:19 -0700
X-CSE-ConnectionGUID: hgef1NI+Ski4fmJGlSRk5Q==
X-CSE-MsgGUID: ysnpf8OUQVCjwh8SWVKXKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,241,1719903600"; d="scan'208";a="74707349"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2024 05:59:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 05:59:17 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 19 Sep 2024 05:59:17 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 19 Sep 2024 05:59:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 19 Sep 2024 05:59:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VrAfbHUPq/vv1EOUjhxGz+hHOn+5zfwWTT1IUQCjvaG8H/9Bc8jh22So38E8nO2Z4N3j1b8g0AQBz/YY4MJXbKW+hSY8luryAs/+fftQGLdTPzGj56Aucw6cP9R63kyrIs3gEb596bcxo8YIpwEBgGLldXZyCUyheRqU9SO1ozRpp0FHi2/IrbgRfaipFKvTx2ImgFDBpd7YRtvff4X3y7HC4y4zTktc8aYQKQjuiLXn3BAd+qRxwQgWLMpfHxxs9Gg1S3CZmF7p2PROLGqpP4TL+hLvJJWdeM7CchelF9vNtXPvDwqXDDreCj02HzX84hUjiVKGiK4YTRuTQhPUxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eKKKhgaPXl/lURasQQxFwf2r2ourqYYEWGU6RHmyPyA=;
 b=HDsWZk+clcGxLEIXXujGOI66t6LIjy4/jZBdIuLCic/JctDzhzS5rICrquykGH0n+vzb536xArAf/k+9tA1HmLHraImuNKT4tuMQk1/8wTVBKDRRSNxH8gNd6wZTPx7NkuXKmkaalevzi1GOp5HfUHY3VhnJ8w2XzxZHLS5yIigO/U4MH4TTzUbugexG5ok9m+Wbnw3kfzQX68YhjuLbtLPn/xFon3Z9IvCHxr/2HpB+caKmkFo7bTaqU+uMYVeTDqzwNlBfmdSo0tCME1y6iHgZea2rULqCefvc7DsvfwBMwW2gYUmwwE3hzI42zOCVVAXG1/HQ6GJj0zrKgDpokg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by SJ0PR11MB4799.namprd11.prod.outlook.com (2603:10b6:a03:2ae::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.22; Thu, 19 Sep
 2024 12:59:15 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%4]) with mapi id 15.20.7982.012; Thu, 19 Sep 2024
 12:59:14 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Topic: [PATCHv2 5/5] drm/i915/display/histogram: Histogram changes for
 Display LNL+
Thread-Index: AQHa87WeoENNIiVmtEeLGnYRHmEF3rJUDZMAgAsxwrA=
Date: Thu, 19 Sep 2024 12:59:14 +0000
Message-ID: <IA0PR11MB7307F3404196C5827B36ED7EBA632@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240821102349.3961986-1-arun.r.murthy@intel.com>
 <20240821102349.3961986-6-arun.r.murthy@intel.com> <87mskdgpkd.fsf@intel.com>
In-Reply-To: <87mskdgpkd.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|SJ0PR11MB4799:EE_
x-ms-office365-filtering-correlation-id: 4f8b6acb-6be2-4639-da57-08dcd8aadd2b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|10070799003|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?YXimnyCfjkQCEX9U1PLXLxukR5ChSlWJ6ZivZilSPSPAjCJu3hCg9+xteQKt?=
 =?us-ascii?Q?xaTGEsIXITuGMiFu20rVIMOQBeXbBJcHKtcDrYOqFVGYgJ0WpT8u4Co2oQOi?=
 =?us-ascii?Q?lqTysKEUWYwaSx7Iwf+2LmdgKULS1ZQTS1D0QkafM2z2zT61hG7DrgkGgk08?=
 =?us-ascii?Q?rvTG/dZ2U2Vl7lbyol8Q8RKCNlLoiDVHjUjGVks0Q595AiAPLJe/NCFd8R4S?=
 =?us-ascii?Q?aVi6zAA3pkB7+1kUh4xXr0biaLiA5178PJh51eshMAPtLFvaZaocJkLtyeOd?=
 =?us-ascii?Q?LYbkBLffS+P0AOjqJxPk5fX1aNQ5QjLhSbBFAa67DsqSEleqnEYD03evJBW0?=
 =?us-ascii?Q?xwNHcQKMgYuAHeyVSbmEgHpRhIGsdWcc7Y3PuKPkl1o9zPhBv2Xq8K8ZPmCw?=
 =?us-ascii?Q?OVMOu7m3DaH80/UzfvUoMJWBRXnjzgOT9O5YZmrZKmxT3xZdJ6MmfTnOuA4V?=
 =?us-ascii?Q?kETgStEhNKvhRzCTqXDZlQ9mbFDrTMFfMKbrVnY4m0KhNTwGwWlCeu/qdhJt?=
 =?us-ascii?Q?7Ro8CnxKyJ1OuJgFxkbsORfh3zFhkSk8Y3nZVyxcrmG1IcFyOYt0hRJSDH1T?=
 =?us-ascii?Q?wAEpfBhF9oAbJUMrrjLJCSIxwvQksZ4qBgA9mW2Ttg7eRRuJeKcXLDMtNQEZ?=
 =?us-ascii?Q?PNvj0SXD8g2Y/Id0ktO5YnyNKsAJzrZrZrHsT87HhnCDhc0mdj7Ej1KmvPav?=
 =?us-ascii?Q?h7d4ImAiN/866ss6NqnjoB6DVQTjBysolEr4me4CKYBDE2sPCqUXE6eATCwG?=
 =?us-ascii?Q?fS3kgEvrkYT8uJzWMIA2dnQxDBBxdCivfoAVh9wAmKA7o7C1JXvikrb4FS1S?=
 =?us-ascii?Q?cnFSqNVs3iqz1sA3KxkLiUSXL+JbF9puzpEumtD1qiUVyC4EyouglqmQhbEH?=
 =?us-ascii?Q?RvasH4AegVFBKmTL7lIeceAe3idPZoLJSeZ1m/KJaCiiKSgttN0sPDbUY2zO?=
 =?us-ascii?Q?wiqra/WguceSJneB4O2gkbPjlGiedQeat8x0VPShPNduqiPJC63pnhalkbC1?=
 =?us-ascii?Q?vW2WEoHsm5JIQa9L3oMRJGxLTzdmfR/hkin3jzL2MdkS08R/bWEpn/133hm4?=
 =?us-ascii?Q?7lJx6hKNkdATpyuwE6L1YHOz1IHhyRdTyTtoP+DnkZHUD3F9xBM7iNyy24hY?=
 =?us-ascii?Q?4hLeDmNUYTuj12I6gKxHElB3AFwHwOGL3gGwjORgyNVCQ5+4ASmU5qTLS7UH?=
 =?us-ascii?Q?qFarBqYVVtfynU88lu1W0YLY/LQvuOTEpSKJX0RpTwgClSrzVLBxGMPwhqIT?=
 =?us-ascii?Q?JwWQsFYXQLouvXpoEzef9CRYOyhmmIl95ZX4TBONqQenTt2lqgTF2nhcn7tq?=
 =?us-ascii?Q?129Wfa7TN376/iQRfSeLeZe2XsusGMwojymT/x99eGNTW5zRG2ZG8pS24PUT?=
 =?us-ascii?Q?Gpr14GvISmzX34jOsXbIZ631u9fk6m5rSL4eHaaxU6xI0lHjvA=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(10070799003)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gTnuJn7FToTAGBYUAGUP+Ukqc0okuX1epJUWTlJVRyUAgBTH5tLgVK0LnJm4?=
 =?us-ascii?Q?nJbwf31IYXhSNRyB78n4B7H55l1ybc+34vv/JqITyjUO9f/CwAErYWuFnnVJ?=
 =?us-ascii?Q?BmyTFzMgWDsW7is8YqzTcpx26x0KRH3BFQLRtTfKSSKd6/7V1XCmJIg28Yur?=
 =?us-ascii?Q?autIlKsCQxKAFAis3vDzmk9D4mavHH639J+8meZBHbHHHUlM9+S5/V6Nyruc?=
 =?us-ascii?Q?6zbFmTWgt80GI45jWxb4VPQJawDNqUW6XRvVyUIsWmR5LKt3FQ/jaopYPHOe?=
 =?us-ascii?Q?GbkULdhz8+4Eanl4wUkLl8Xl3zqsmJ/fPZ4zziqzpkI37T48Yyx+hA7KimvS?=
 =?us-ascii?Q?XNlPsvq2gvw6oiXhtKVXLa66Inz+yJmCFdVKlrHUMYmIIAIrkJaYPkXETHeW?=
 =?us-ascii?Q?PgA30CYWls4Z86dFBQlpDCIt2W6+LRfPYOZDftHC9ec0xldSdHDpJDsXaqB9?=
 =?us-ascii?Q?WBDeVFLpjAOMK+HYZ1E0hsLkiHP9ftO7DwN0CDQFVvZRigu184Y6LxyCXw6B?=
 =?us-ascii?Q?Typ6OsLQbySdOA8NUHSl7jjca37yjvrkzdP9e0AXe/TkTehTAKqpxb4cblQi?=
 =?us-ascii?Q?xMCt6SpayUc4ZoB/h5Kt7+zVzhXCgB9Rw2+x2AY7K5TeC5pEOoOmJ0ZC979e?=
 =?us-ascii?Q?pxCpmvPzUX0U0eb1JtCibm/4BI53XJOkkMgJa29CPAsPZbSTr5J9DpBgm83p?=
 =?us-ascii?Q?Bt1dLDuDQGF51+TNlNTFvI+PUvobDZZ+8rEeu9E1dqR7DiyqTINBdaqE03yI?=
 =?us-ascii?Q?Jk5pbNgexvZq1XhklUorGBD9O/qmqzkhqI6YLEYBAkL1fCOxKe+2JstwcXmw?=
 =?us-ascii?Q?ijDg9PfEWDMybhMFBy6C/xEO2zMgDrhTMWG4vPi9wCUTg7oo7l0VdKClwtMt?=
 =?us-ascii?Q?kAeen2/KtetJFRk2CRdY7ZsRmx8H4pOzhox8O8hhUxJdAS7rb2qAQ4pb+cfW?=
 =?us-ascii?Q?LY8SGnbqZrYAH1RzCv4SKvlhG9vEHMS1Ml0fiVHR0dzoVErrDJ/MDHJPucym?=
 =?us-ascii?Q?YOptemwDAO5gptR3zw1hF9sENng4jyCiRRFKgk9y47fpP2JZS/6iJc4V0W6f?=
 =?us-ascii?Q?l04fdd/Uhi432/VaYr+YJ1h+BR4lr6cLdptMCMLfVUQcY6Ov/DotdBf0GDo7?=
 =?us-ascii?Q?vXbwd1SpBdParLm/s0uPRM2/YbFoptnRMTIR5ahNF3eKpJbWURirERhmvpkg?=
 =?us-ascii?Q?DQJ1YKI9Kw/QrL6+6b/OZ/d2hut7CK5Jde/VpQUC28oQ346B0QEx294I5fE+?=
 =?us-ascii?Q?ySrnOu11T4aQwzDyh5N9fmJzi+6XtD7h54ytlMb2HJ/HnJRh4OCCwYf1kyzx?=
 =?us-ascii?Q?uU3JSbQyypQLPSyob80r7Tbnqojn701i9/FfzhMoggncxalSonIDYiSoFQLk?=
 =?us-ascii?Q?34dF+M9tht9nhgSfMbUBcyO78DqROxDHTGt8AGYjaWlOCoDHWCbQTPoX2E7A?=
 =?us-ascii?Q?UdTx70vmMRp75r/+bk1oTOSypb6+kZjLz/iibKFGA1BWU+IpjqjlngNd6pEX?=
 =?us-ascii?Q?ySmp6hWu6UW6W09b7MT0tSgfhDYoZz0dvRL5OlYU5vjmSCuNMvpgxSVbVG0f?=
 =?us-ascii?Q?DKKg7R+TXz31bIuaDxhcjR3d71H20LhpEDKyGo2Em2N/1ezeMa3JvKn6Izah?=
 =?us-ascii?Q?BB3ZuzEsSm13bfhFnWdix1vrXhSMNF+oX+B/Zp+drFsa?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f8b6acb-6be2-4639-da57-08dcd8aadd2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Sep 2024 12:59:14.5931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HCC1HBUU7cIlQniN+XKDXXcogilK6ESVT3mxUMrrO+evXwQYelg+4Eo1cYTN19qGsie9Ej5dOYmGiMGlH6xQsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4799
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

> > diff --git a/drivers/gpu/drm/i915/display/intel_histogram.c
> > b/drivers/gpu/drm/i915/display/intel_histogram.c
> > index 189f7ccd6df8..9c31a7d83362 100644
> > --- a/drivers/gpu/drm/i915/display/intel_histogram.c
> > +++ b/drivers/gpu/drm/i915/display/intel_histogram.c
> > @@ -26,38 +26,41 @@ struct intel_histogram {
> >  	u32 bindata[HISTOGRAM_BIN_COUNT];
> >  };
> >
> > -static void intel_histogram_handle_int_work(struct work_struct *work)
> > +static void intel_histogram_read_data(struct intel_histogram
> > +*histogram)
>=20
> Please refactor the stuff in patches 1-4 so the LNL changes just drop in =
cleanly,
> so we don't have to refactor stuff here anymore.
>=20
Done

Thanks and Regards,
Arun R Murthy
--------------------
