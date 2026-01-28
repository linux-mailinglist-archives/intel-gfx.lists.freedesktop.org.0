Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4FQVM36neWl/yQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 07:06:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 02D539D53A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 07:06:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5790110E216;
	Wed, 28 Jan 2026 06:06:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M4r+DbbR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B09510E216;
 Wed, 28 Jan 2026 06:06:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769580411; x=1801116411;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lkGKLf0lq6PFsrPKx4010jB0ykpe68gZoAiKS91JqN4=;
 b=M4r+DbbRKRzO/gAFR6DwtWi7zTsobOXlnCslWDe09ubNcY7KkBYSxQ1R
 giXt/WALxK9lYmqM6cvuUMj596vPYSJPjxtJvkQr5IUjlYx/zy5zXIYWp
 w0lU9Sfqg/Q683uUprhNOjRQlX5As8NCpPmrhBN/xPiVS7D8fTHnav+mt
 cNK5XymaqiBcfANQ+tJOBQCWCiX3DNblQKpg9AE9h8s1zjAuBC2mNS+5W
 aLCZftokGx4YWOun5hL5kjE1CrEvU7RvOBaXNkVA3q0VU/mRHTITZdMr3
 Q/UbX6u4hvLCPI9X7yOOv+vWGDOfRGxJNk/7f9D9/6W0qbxSLcZ3iPK4O w==;
X-CSE-ConnectionGUID: p1TKl+iZTXaolnIeIJccpg==
X-CSE-MsgGUID: 9fc0D0ocTyah4KUXyAvmvw==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="74413788"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="74413788"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 22:06:51 -0800
X-CSE-ConnectionGUID: PZc0QzDOR8C3cnwog18KDQ==
X-CSE-MsgGUID: 0JtieqqMTXeOlr6/hBAfhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="245791127"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 22:06:51 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 22:06:50 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 22:06:50 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 22:06:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MeIsbHGKaSHRExBok+92X4WVWNNjxQ5lh8cWZJKdv677Lkz4Wmna9Bd4dkegkHRTq3TkIZUcbZcnD+ndkmHHKn5TrG9n7SeeF+R9hOEOq8cZtYH7es2jAl0A0s4eNBJ80PBsacIx5fqldpE8Rx27c0jV6n5+vbBLtJ03QH575vW6Xvku8/qAuzmcH9UfRO2RFbsZSz1YQKbbi8rPvcVD/5nmkxmP8CNHr71+AoqYWhT64CdaE1ziDmwlaOJ36qWi5Ij/RlUJZSkZ6e35Vcut+6A8VjO86/1Pi5OnCaH+2+uKLot/K9EE3A0TuB3Re3IVzbmEiMYSFE2WjTB3Ewyjtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UXkhVSunbdncr/kGUQpaI+pwZBQpbwyiG1PO2GmJAOY=;
 b=XVRO2cSWoSqvDpHMVQPFtNz59lkEieipTo8keF7tb3ZQNg3SdTsHFTA/M0yr+15aPtflJW9KyMsD/MhWhshVt4cD/GOUbhIqX+Tx0ZjTglpppS9bxg9VO10lQcaRJOirR2rnH6bX0V9WridbifLSRRf5RUDtPjqzlh9PP5hYtcAczJDGWKBawi4G8nYPsJU+IFnLEfxJciV8Ck5J0mw6HtafGeDsQT7iNRZ3Mi04yH9AqnECRrcXSRX8adREYAoCkD2g7eruFQSQL7NvPZFsLtn1N354IIuwnNXShZ8xO/mbcvARUimPGcA3h7k03q4MsqkbiZ8LlRRn+vOYaKcRcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 SN7PR11MB6775.namprd11.prod.outlook.com (2603:10b6:806:264::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Wed, 28 Jan
 2026 06:06:42 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.015; Wed, 28 Jan 2026
 06:06:42 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Subject: RE: [PATCH v3] drm/i915/display: fix the pixel normalization handling
 for xe3p_lpd
Thread-Topic: [PATCH v3] drm/i915/display: fix the pixel normalization
 handling for xe3p_lpd
Thread-Index: AQHcj34VHwh16P5r+k6kH6eV9iBHPrVl7wWAgAEm09A=
Date: Wed, 28 Jan 2026 06:06:42 +0000
Message-ID: <DM4PR11MB6360C36BC2806282BEF79F07F491A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260127111345.939736-1-vinod.govindapillai@intel.com>
 <aXis2rWjpuNDBm7y@intel.com>
In-Reply-To: <aXis2rWjpuNDBm7y@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|SN7PR11MB6775:EE_
x-ms-office365-filtering-correlation-id: 3f641049-6dda-47e3-a163-08de5e336870
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?ibUyjenPjBZ2L/N6+vEoA5UW8EhrOVJONX66WzpqMwKGLINWocx73BaWyf?=
 =?iso-8859-1?Q?ZfL6RxHyaj0PKVLly+F8vQeBSNzgbqBi3xOgqRyeWf4xqUiG7ZCOpB5LGt?=
 =?iso-8859-1?Q?k875r9NE+qFb6NUROc+dk1G7tSkt9Jol56A3OybHtI9B8C8d45nhF5FPjW?=
 =?iso-8859-1?Q?3EuqBnY58BZbedbnBf7sUx4orHue+nDK2jrm+hpt9rBLG3MdiP66SvUU8H?=
 =?iso-8859-1?Q?oFi3RMgwDkUaviuBtvS81TuaWMk8qj8PW8ukImTuHG3e/wUpHfLKvy+xwV?=
 =?iso-8859-1?Q?pzNeEXmCof0o5YfkoNJHTmAlIsGg9B870rMPjU+3ioR95GqXSmQFBHvg2U?=
 =?iso-8859-1?Q?IKrnb/RED+OOLEZLB0wp3z0Y1PbQMXDRCXhcMXNsXmc824m4G0OJf9biL1?=
 =?iso-8859-1?Q?xndIlmtwa9wThS6HAK3FbD9RyZga8UuUwN+b+uCqmCmoSyHjpFQBIUcA8T?=
 =?iso-8859-1?Q?XKoq1UKrkfwnd38fe1T8p3U66TOXxyfcJ/fdKCJI/1DKV9WMLNBc9BDL14?=
 =?iso-8859-1?Q?lQItU6gL+mtmumTlhTIiw1duZiJkpMxko3eEY94+Jkk5X4Gc/UuM+2Plnw?=
 =?iso-8859-1?Q?qKilT/+bDvoCCm2q7V/aTaq3Yk07vsjGEoAr0rnT78eB2UitqC/P8WN4ZP?=
 =?iso-8859-1?Q?7fCgPjdMIt6ovzziRCTvbYau7gxdBQriPryAg29TaDbGnCB+sejRysIySs?=
 =?iso-8859-1?Q?0HSpQAypcnp3N2OTgtsO+VeeJ0+bHgdg30eft9HJRsWpNBduKQQ3Kfxboz?=
 =?iso-8859-1?Q?FDyqw9DAY+w7AlbeJEgCy442Jw3Oolwp3VEEsS4G3sWPbpz6GuTPqGV9gI?=
 =?iso-8859-1?Q?AwxO1mTLYKy+AlJVw00d1Do/bjWxJXqyhJF3HTPNseuFlvKUjJHi9YQz2N?=
 =?iso-8859-1?Q?EbDusYvgetF0TsbVUdcAddh+0aqW6EP2yPWOLZDdlYvSTSnz0fCrDM/XdD?=
 =?iso-8859-1?Q?0Hn64nizXdPb3o9j8hX+bJL2qO78cjWRQ8UBmYZzXmSd7GJywqYNR5HsS4?=
 =?iso-8859-1?Q?KSUbBPeFP1vYePq8h2I1622+11RNum70ZQE5cuNV0Qj1g33zBLkS6A5aMk?=
 =?iso-8859-1?Q?PMfFaprI4GKiTaVled9tRUXnxlvufLmJyroQSaMRXOnhIH72X1oc0KbmLn?=
 =?iso-8859-1?Q?RuHZqvpWFUhwMbca0gM3suRGgYq6NIfLV2mixPOrzLN9llG/Omqo0AXo7m?=
 =?iso-8859-1?Q?eIOj2QwePa8/witGp3OUD4Qof+Lw8LEFHibDaHPR1NOsLgyyeg0HzNyKKP?=
 =?iso-8859-1?Q?g2qx4YyVSLKuNOWcUIf4BwCZPeU0oR44NkPTuNO1CuWi2XTC64PkhglOT4?=
 =?iso-8859-1?Q?Awoe8CVBbPaRWUU5xLZCqcTHb5lfBmlhb7DxCkYkIOK9+NjDIBiTch4r0l?=
 =?iso-8859-1?Q?ectQG3M2Wn9zmNWXh5KW5D0WhScABuMYEFHfapQaEuSabKBgwawn6lCNA5?=
 =?iso-8859-1?Q?Ta+QUu1H+D+sAZG+YEjTqmynNCwo3871ZFOTumFsh4D0e6nfCOu6z4JeGg?=
 =?iso-8859-1?Q?MJgVdUhuwnJVZogFLv8iyH9ZmxWqQc1RnErOzO+adXRkha1ajt3ip2YdAF?=
 =?iso-8859-1?Q?BMy24bHsyhMS4yzO0sikItPYuwtBXovr9dMls4CCDydTCOsHDjvue6WoW8?=
 =?iso-8859-1?Q?UJMEsN3OuAJuJ+axsc1nfUh8Z3Ycq9kcZ8cLKVw5BrtzkaGSXriop0JyYE?=
 =?iso-8859-1?Q?NlPyT3NnqaYAIpXzWp8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?UdKnM0sjIlz+9igysvFSLN79RWnqWEPFrobB0h0FL7rFHE0vpvxL11aJ9M?=
 =?iso-8859-1?Q?pLLmn34IAGRsau6efTW26OzaMUgDcARWsTNyQKn8VumoVJgDzHuvr5HaTL?=
 =?iso-8859-1?Q?dh5fSrkQlQ87EVHWL/uZjPX0V5y5SZGGBkDLUwUux7uG2nH6qmJISKI1TL?=
 =?iso-8859-1?Q?s4i3FfZoa2DUIqUTu0PPQu9UBOw5ucKLVu8imDHBMB45IM0mBm/Rt2wCbz?=
 =?iso-8859-1?Q?82YQdtms1r0fqqG8z5lHWVp0vyRsEsh1kSmgkobyDGP7Fd1EoSAeg69xt2?=
 =?iso-8859-1?Q?DyekA8/K1b3B4VXdIVe0ky7EViiRue6OGmgtU3clKtkdzIlbv6bMIcgrdW?=
 =?iso-8859-1?Q?1kd9oSBIPW4mhSHD1ktAaI4jv4KQar5++msi/8oEn8sQ+uVeSITLY6SZz/?=
 =?iso-8859-1?Q?SnvJoEyX4HTMVi/tCmAbKVXmWEp4f2x568Q+xa6goHpnu518+6NEzlyE1N?=
 =?iso-8859-1?Q?r4VRr+XWKQS4N/hsotAPm5HShuWujlk/u4RTne2dSgdrkBMy/8OyShNzpr?=
 =?iso-8859-1?Q?mwKrhZWLROqdCB8u6XNpJq564eLA02Ixb+3QfAktXuPDf079VvTxVHucxw?=
 =?iso-8859-1?Q?Gx+d/soF4jLGbdwPXbVIkgnq5wBZtsxXk3DWMjS2GkHSvBX0uwsKicJkLe?=
 =?iso-8859-1?Q?LldRaUy5R4sVjM3V0odBQtyObeVDNGL7GgJKYZhrFZmmzKo/W3yqDoYBuD?=
 =?iso-8859-1?Q?zBjpvMPnXYUbFDMDyrvHFNWdb9yhRnOUuqsK0GZBzSAwpq8m/qtHBv/s1x?=
 =?iso-8859-1?Q?YyYQbv6GUFOhpayID0hLcnYIiAfibbLmhuWzAzPiSivhxsZehVCJT/F4MZ?=
 =?iso-8859-1?Q?QJGsecE78fF8YajAB9FlkIAATiWSPpjQUBVq0DdoRZ/K4v5hXPM8lY+g6l?=
 =?iso-8859-1?Q?luK2SwyThvZC9homFkkCUtSvBQJq+WoS9ygxi/t+M1xYZlT2VgFtPiNKPL?=
 =?iso-8859-1?Q?zUsCUlkjQzFgVrpUDNbINXsjXCZ1Qtg3Txl10DCcHXCCGWcUlvk+YO/EEl?=
 =?iso-8859-1?Q?odKlxwYrxV/mKzPFoqrz7JPTqk8ETmJcRdC+V9WEC/d3NipEC77qAyZqNz?=
 =?iso-8859-1?Q?E2DefK/JdKbinEJsUELs9Br10QEr5Nm+DSLK/HqilG/UepYzWJU1YxbDMr?=
 =?iso-8859-1?Q?k1ymei9n74GRAkbeM4Dc8PNJ8PIjAmg7eiWrHZjwex82np+RxSpXMSYpa4?=
 =?iso-8859-1?Q?ahQQzs0HyaiM7IGuOwX7j+L08sw/ORxTtf6iYxuzIPCJrf03GOtAC9wMx2?=
 =?iso-8859-1?Q?zq6pGJ0r43uSk2ExhUpyEApz2AYfz0YovzO+lpJypBb8J+U2Bzg34grIcQ?=
 =?iso-8859-1?Q?JVHwqhiMEqlr0rtUsDsrsY6l9ng7HdpEN0TOduoHH05ZVBAhdrlbvh9sLI?=
 =?iso-8859-1?Q?tuafXPodZyFFqytv2zOr/YwbJpR/lDgeAv1fKd3jq0NpYlmvpOxPxfh8i4?=
 =?iso-8859-1?Q?bj744lzCiLm71a4zQrC5wXb7JyRgxE4J9mYemGhAbzhl3s9Rk/S6GiZ6HF?=
 =?iso-8859-1?Q?5OnnYhZLV6fLMO/lSGtmoK2Vk4yxKRX/sQHWPU4jHTlGVFduPRFe7OtT93?=
 =?iso-8859-1?Q?aa++o8e2lzgPts6BgXyioLvQZLZzp5wdK+drbUWv/5PdRsm2KqZAsFy8gE?=
 =?iso-8859-1?Q?iYOh9mtDC91gSJL4+DvuoQl4uVhxccBldRbbEuYn/JVxBGJcayg/46jled?=
 =?iso-8859-1?Q?auh/hfmuzU5xY1wniCd+WyMpw9OVL/sNMMjITfaSjgHbJoT6Gy9oYLkfC9?=
 =?iso-8859-1?Q?2EM7KjGbw9o2dWO/dxC+vCB2RN1PtdYddlOpslqBtTTQe9YfmlIfF0PFmJ?=
 =?iso-8859-1?Q?zrV39vRQBg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f641049-6dda-47e3-a163-08de5e336870
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jan 2026 06:06:42.1234 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S2TXFxWCbPIzquoqaKNt/TDwPsyKDIHWr1XGbdj89EJte5Hul46wUVkOauVoA4YE1gEE1V1B/3iH+rXsbp7Ikg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6775
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 02D539D53A
X-Rspamd-Action: no action



> -----Original Message-----
> From: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Sent: Tuesday, January 27, 2026 5:48 PM
> To: Govindapillai, Vinod <vinod.govindapillai@intel.com>
> Cc: intel-xe@lists.freedesktop.org; intel-gfx@lists.freedesktop.org; Shan=
kar, Uma
> <uma.shankar@intel.com>; Heikkila, Juha-pekka <juha-
> pekka.heikkila@intel.com>
> Subject: Re: [PATCH v3] drm/i915/display: fix the pixel normalization han=
dling for
> xe3p_lpd
>=20
> On Tue, Jan 27, 2026 at 01:13:45PM +0200, Vinod Govindapillai wrote:
> > Pixel normalizer is enabled with normalization factor as 1.0 for
> > FP16 formats in order to support FBC for those formats in xe3p_lpd.
> > Previously pixel normalizer gets disabled during the plane disable
> > routine. But there could be plane format settings without explicitly
> > calling the plane disable in-between and we could endup keeping the
> > pixel normalizer enabled for formats which we don't require that.
> > This is causing crc mismatches in yuv formats and FIFO underruns in
> > planar formats like NV12.
> >
> > Fix this by updating the pixel normalizer configuration based on the
> > pixel formats explicitly during the plane settings arm calls itself
> > - enable it for FP16 and disable it for other formats in HDR capable
> > planes. To avoid redundancies in these updates, normalization factor
> > between old and new plane states are compared before the update. The
> > function to check validity of the fp16 formats for fbc is now updated
> > to return the normalization factor as 1.0 in case of fp16 formats and
> > 0 in other cases.
>=20
> This looks incredibly complex for just writing a single register.
> I think it should be just somehting like:
>=20
> static u32 pixel_normalizer_val()
> {
> 	if (!need_pixel_normalizer())
> 		return 0;
>=20
> 	return ENABLE | FACTOR;
> }
>=20
> plane_update(..)
> {
> 	...
> 	if (HAS_PIXEL_NORMALIZER())
> 		write(PIXEL_NOFMRALIZER, pixel_normalizer_val())
> 	...
> }
>=20
> plane_disable()
> {
> 	...
> 	// do we even need to disable it for disabled planes?
> 	if (HAS_PIXEL_NORMALIZER())
> 		write(PIXEL_NORMALIZER, 0);
> 	...
> }

I think we should enable pixel normalizer only when FP16 is being enabled a=
nd disable it
in case frame buffer format is switched from FP16 to any other format.

The "need_pixel_normalizer" should check that, in patch this is done by "ch=
eck_pixel_normalizer".
I am not sure if disable case whether we need to explicitly disable it, but=
 good to have it.

Regards,
Uma Shankar

> >
> > v2: avoid redundant pixel normalization setting updates
> >
> > v3: moved the normalization factor definition to intel_fbc.c and some
> >     updates to comments
> >
> > Fixes: 5298eea7ed20 ("drm/i915/xe3p_lpd: use pixel normalizer for fp16
> > formats for FBC")
> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_device.h   |  1 +
> >  .../drm/i915/display/intel_display_types.h    |  8 ++
> >  drivers/gpu/drm/i915/display/intel_fbc.c      | 19 ++++-
> >  drivers/gpu/drm/i915/display/intel_fbc.h      |  4 +-
> >  .../drm/i915/display/skl_universal_plane.c    | 82 +++++++++++++++----
> >  .../i915/display/skl_universal_plane_regs.h   |  1 -
> >  6 files changed, 92 insertions(+), 23 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h
> > b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 6c74d6b0cc48..126aa1eeeb6d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -175,6 +175,7 @@ struct intel_display_platforms {
> >  #define HAS_DSC_MST(__display)		(DISPLAY_VER(__display) >=3D 12
> && HAS_DSC(__display))
> >  #define HAS_FBC(__display)		(DISPLAY_RUNTIME_INFO(__display)-
> >fbc_mask !=3D 0)
> >  #define HAS_FBC_DIRTY_RECT(__display)	(DISPLAY_VER(__display) >=3D 30)
> > +#define HAS_FBC_FP16_FORMATS(__display)
> 	(DISPLAY_VER(__display) >=3D 35)
> >  #define HAS_FBC_SYS_CACHE(__display)	(DISPLAY_VER(__display) >=3D 35
> && !(__display)->platform.dgfx)
> >  #define HAS_FPGA_DBG_UNCLAIMED(__display)
> 	(DISPLAY_INFO(__display)->has_fpga_dbg)
> >  #define HAS_FW_BLC(__display)		(DISPLAY_VER(__display) >=3D 3)
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > index e6298279dc89..92bce232b2c5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > @@ -686,6 +686,14 @@ struct intel_plane_state {
> >  	unsigned long flags;
> >  #define PLANE_HAS_FENCE BIT(0)
> >
> > +	/* xe3p_lpd+ */
> > +	struct {
> > +		/* In half-precision floating-point format. 0x3c00 (1.0) for fp16
> formats */
> > +		unsigned int factor;
> > +		/* update is needed if factor differs between old and new plane
> states */
> > +		bool needs_update;
> > +	} pixel_normalizer;
> > +
> >  	struct intel_fb_view view;
> >
> >  	/* for legacy cursor fb unpin */
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c
> > b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 1f3f5237a1c2..f9474e7741c8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -71,6 +71,9 @@
> >
> >  #define FBC_SYS_CACHE_ID_NONE	I915_MAX_FBCS
> >
> > +/* Pixel normalization factor 1.0 in half-precision floating-point for=
mat */
> > +#define NORM_FACTOR_1_0_IN_HALF_PRECISION_FP		0x3c00
> > +
> >  struct intel_fbc_funcs {
> >  	void (*activate)(struct intel_fbc *fbc);
> >  	void (*deactivate)(struct intel_fbc *fbc); @@ -1215,13 +1218,21 @@
> > static bool xe3p_lpd_fbc_pixel_format_is_valid(const struct intel_plane=
_state *p
> >  	}
> >  }
> >
> > -bool
> > -intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state
> > *plane_state)
> > +unsigned int
> > +intel_fbc_normalization_factor(const struct intel_plane_state
> > +*plane_state)
> >  {
> >  	struct intel_display *display =3D to_intel_display(plane_state);
> >
> > -	return DISPLAY_VER(display) >=3D 35 &&
> > -	       xe3p_lpd_fbc_fp16_format_is_valid(plane_state);
> > +	/*
> > +	 * In order to have FBC for fp16 formats pixel normalizer block must =
be
> > +	 * active. For FP16 formats, use normalization factor as 1.0 and enab=
le
> > +	 * the block.
> > +	 */
> > +	if (HAS_FBC_FP16_FORMATS(display) &&
> > +	    xe3p_lpd_fbc_fp16_format_is_valid(plane_state))
> > +		return NORM_FACTOR_1_0_IN_HALF_PRECISION_FP;
> > +
> > +	return 0;
> >  }
> >
> >  static bool pixel_format_is_valid(const struct intel_plane_state
> > *plane_state) diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h
> > b/drivers/gpu/drm/i915/display/intel_fbc.h
> > index f0255ddae2b6..b5888e98a659 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.h
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.h
> > @@ -56,7 +56,7 @@ void intel_fbc_prepare_dirty_rect(struct
> intel_atomic_state *state,
> >  				  struct intel_crtc *crtc);
> >  void intel_fbc_dirty_rect_update_noarm(struct intel_dsb *dsb,
> >  				       struct intel_plane *plane); -bool
> > -intel_fbc_is_enable_pixel_normalizer(const struct intel_plane_state
> > *plane_state);
> > +unsigned int
> > +intel_fbc_normalization_factor(const struct intel_plane_state
> > +*plane_state);
> >
> >  #endif /* __INTEL_FBC_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index b3d41705448a..05c227913b8d 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -891,20 +891,49 @@ static void icl_plane_disable_sel_fetch_arm(struc=
t
> intel_dsb *dsb,
> >  	intel_de_write_dsb(display, dsb, SEL_FETCH_PLANE_CTL(pipe,
> > plane->id), 0);  }
> >
> > -static void x3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *ds=
b,
> > -						  struct intel_plane *plane,
> > -						  bool enable)
> > +static void xe3p_lpd_plane_disable_pixel_normalizer(struct intel_dsb *=
dsb,
> > +						    struct intel_plane *plane)
> >  {
> >  	struct intel_display *display =3D to_intel_display(plane);
> >  	enum intel_fbc_id fbc_id =3D skl_fbc_id_for_pipe(plane->pipe);
> > -	u32 val;
> > +	const struct intel_plane_state *plane_state =3D
> > +		to_intel_plane_state(plane->base.state);
> > +
> > +	if (!HAS_FBC_FP16_FORMATS(display))
> > +		return;
> > +
> > +	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
> > +		return;
> > +
> > +	if (!plane_state->pixel_normalizer.factor)
> > +		return;
> > +
> > +	intel_de_write_dsb(display, dsb,
> > +			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id),
> 0); }
> > +
> > +static void xe3p_lpd_plane_update_pixel_normalizer(struct intel_dsb *d=
sb,
> > +						   struct intel_plane *plane)
> > +{
> > +	struct intel_display *display =3D to_intel_display(plane);
> > +	enum intel_fbc_id fbc_id =3D skl_fbc_id_for_pipe(plane->pipe);
> > +	const struct intel_plane_state *plane_state =3D
> > +		to_intel_plane_state(plane->base.state);
> > +	u32 val =3D 0;
> > +
> > +	if (!HAS_FBC_FP16_FORMATS(display))
> > +		return;
> >
> > -	/* Only HDR planes have pixel normalizer and don't matter if no FBC *=
/
> > +	/* Only HDR planes have pixel normalizer and don't matter if FBC is
> > +fused off */
> >  	if (!skl_plane_has_fbc(display, fbc_id, plane->id))
> >  		return;
> >
> > -	val =3D enable ?
> PLANE_PIXEL_NORMALIZE_NORM_FACTOR(PLANE_PIXEL_NORMALIZE_NO
> RM_FACTOR_1_0) |
> > -		       PLANE_PIXEL_NORMALIZE_ENABLE : 0;
> > +	if (!plane_state->pixel_normalizer.needs_update)
> > +		return;
> > +
> > +	if (plane_state->pixel_normalizer.factor)
> > +		val =3D PLANE_PIXEL_NORMALIZE_NORM_FACTOR(plane_state-
> >pixel_normalizer.factor) |
> > +		      PLANE_PIXEL_NORMALIZE_ENABLE;
> >
> >  	intel_de_write_dsb(display, dsb,
> >  			   PLANE_PIXEL_NORMALIZE(plane->pipe, plane->id),
> val); @@ -926,8
> > +955,7 @@ icl_plane_disable_arm(struct intel_dsb *dsb,
> >
> >  	icl_plane_disable_sel_fetch_arm(dsb, plane, crtc_state);
> >
> > -	if (DISPLAY_VER(display) >=3D 35)
> > -		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, false);
> > +	xe3p_lpd_plane_disable_pixel_normalizer(dsb, plane);
> >
> >  	intel_de_write_dsb(display, dsb, PLANE_CTL(pipe, plane_id), 0);
> >  	intel_de_write_dsb(display, dsb, PLANE_SURF(pipe, plane_id), 0); @@
> > -1674,13 +1702,7 @@ icl_plane_update_arm(struct intel_dsb *dsb,
> >
> >  	intel_color_plane_commit_arm(dsb, plane_state);
> >
> > -	/*
> > -	 * In order to have FBC for fp16 formats pixel normalizer block must =
be
> > -	 * active. Check if pixel normalizer block need to be enabled for FBC=
.
> > -	 * If needed, use normalization factor as 1.0 and enable the block.
> > -	 */
> > -	if (intel_fbc_is_enable_pixel_normalizer(plane_state))
> > -		x3p_lpd_plane_update_pixel_normalizer(dsb, plane, true);
> > +	xe3p_lpd_plane_update_pixel_normalizer(dsb, plane);
> >
> >  	/*
> >  	 * The control register self-arms if the plane was previously @@
> > -2350,6 +2372,32 @@ static void clip_damage(struct intel_plane_state
> *plane_state)
> >  	drm_rect_intersect(damage, &src);
> >  }
> >
> > +static void check_pixel_normalizer(struct intel_plane_state
> > +*plane_state) {
> > +	struct intel_display *display =3D to_intel_display(plane_state);
> > +	struct intel_plane *plane =3D to_intel_plane(plane_state->uapi.plane)=
;
> > +	struct intel_atomic_state *state =3D
> > +		to_intel_atomic_state(plane_state->uapi.state);
> > +	const struct intel_plane_state *old_plane_state =3D
> > +		intel_atomic_get_old_plane_state(state, plane);
> > +
> > +	if (!HAS_FBC_FP16_FORMATS(display))
> > +		return;
> > +
> > +	plane_state->pixel_normalizer.factor =3D
> > +		intel_fbc_normalization_factor(plane_state);
> > +
> > +	/*
> > +	 * In case of no old state to compare, better to force update the pix=
el
> > +	 * normalizer settings.
> > +	 */
> > +	plane_state->pixel_normalizer.needs_update =3D true;
> > +	if (old_plane_state && old_plane_state->hw.fb)
> > +		plane_state->pixel_normalizer.needs_update =3D
> > +			plane_state->pixel_normalizer.factor !=3D
> > +			intel_fbc_normalization_factor(old_plane_state);
> > +}
> > +
> >  static int skl_plane_check(struct intel_crtc_state *crtc_state,
> >  			   struct intel_plane_state *plane_state)  { @@ -2400,6
> +2448,8 @@
> > static int skl_plane_check(struct intel_crtc_state *crtc_state,
> >
> >  	check_protection(plane_state);
> >
> > +	check_pixel_normalizer(plane_state);
> > +
> >  	/* HW only has 8 bits pixel precision, disable plane if invisible */
> >  	if (!(plane_state->hw.alpha >> 8)) {
> >  		plane_state->uapi.visible =3D false;
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > index 6fd4da9f63cf..651f3557b576 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > @@ -580,6 +580,5 @@
> >  #define   PLANE_PIXEL_NORMALIZE_ENABLE
> 	REG_BIT(31)
> >  #define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MASK
> 	REG_GENMASK(15, 0)
> >  #define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR(val)
> 	REG_FIELD_PREP(PLANE_PIXEL_NORMALIZE_NORM_FACTOR_MAS
> K, (val))
> > -#define   PLANE_PIXEL_NORMALIZE_NORM_FACTOR_1_0
> 	0x3c00
> >
> >  #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */
> > --
> > 2.43.0
>=20
> --
> Ville Syrj=E4l=E4
> Intel
