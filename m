Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89B4869F62
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Feb 2024 19:48:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F0BB10E7B1;
	Tue, 27 Feb 2024 18:48:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TKgl/OuV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C45D710E735
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Feb 2024 18:48:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709059728; x=1740595728;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ioK7rpEbPEmbMZBuZ00jh3ju8CZVcZuJnU49H9Opdzo=;
 b=TKgl/OuV9cNIrmjFGq22HhI5OD9LJScLGgadkycX8mAVq04+5K98y60y
 hEN+RD9e34vsFgTt2E9zgXWzYwzBzGWV0FXh6q8EnhVuAEveUOtLTTYit
 CMSi144K5mZ09SAl5uD36289pIy/pU79SX3H8OaUYlxik36UUOGpqSfTP
 BqC6F8nfI+GApSIFkGZw7JqkRpCA930Df6fyjp4mYvMyE95SxvamWD43r
 IGYIjmdc4YRtSlK7RmJb/hERvEFbTbPLrHhLZUYwXrpYoeeYa/8W/TI+o
 8z25k2OMZ21fXZMpwhfqfR/ZwjuVtdg5lRFaUUxjhf/SUHYVQDoqRm6+9 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10996"; a="14861286"
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; d="scan'208";a="14861286"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2024 10:48:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,188,1705392000"; 
   d="scan'208";a="7095446"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2024 10:48:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 10:48:47 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 27 Feb 2024 10:48:46 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 27 Feb 2024 10:48:46 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 27 Feb 2024 10:48:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PRNPKE6+I8JFCJrpAZuXej0Ndd7xxHN1L3pq3mb5Culf32rFbpKYHinHnUnWaKoNsCt3coxk0vWDXduuCrU5t4hXPZlBVxwcOyQKthmNHKnB0nuTMXHTl9Tgi3gmTCuEPEJ1tzQuSLw8m+4Z4yY2uIfaZ3m68L6jwm5nhVjaD+S60YYNVx1mqTd4pU3WcIdn1GhUlP/qYCpk3hOsjxiFQkmaRlG+b+xPn/Hg/81/iMtpEKOJzzSx01Gzq2n4hEBTjhPtr9TedMW60u4rbPGekXt8loeZupFChmQpyHU67djjy5+xIrYBao924N6ZDU0zeUZGVcu2HLp1h57oKwR/Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ioK7rpEbPEmbMZBuZ00jh3ju8CZVcZuJnU49H9Opdzo=;
 b=XkV5/kFiuK6PMf9xsY3lOuxmPeq8gcrp72umM1/Dc+SUog1KsI1s50JGgTgGQfDPTiJuTdIkJ636+dWUR3pTB/19upmdJGZbbmCWo4SYsc2t9z8WVmpCHbDCcOuIujAl3BTgJoQ6apGtSjhvo64tljRuXfkfUZ8bqspAXPbx4DPof+5psTRKjqJZvdMyIO/xUjHz+wFi3DGiNJTDvVBUUlLQtkGForEwVA8zeYhCex/1eUBB3g4G0VpDEdmiOR1v1ZtDike3z3JFVpUwp6pGaVhTfbGYuTuq/i00HqAYn7mBRSqqE7GlPuouBmIfmm3aohdEzW/a76zOjyA7awClTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH8PR11MB6878.namprd11.prod.outlook.com (2603:10b6:510:22a::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.22; Tue, 27 Feb
 2024 18:48:43 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7339.024; Tue, 27 Feb 2024
 18:48:43 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Manasi Navare <navaremanasi@chromium.org>, Jani Nikula
 <jani.nikula@linux.intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "ville.syrjala@linux.intel.com"
 <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Thread-Topic: [PATCH 3/3] drm/i915: Fix bigjoiner case for DP2.0
Thread-Index: AQHaZPsMkY6C5PjSmEynxD5FK6AnqrEdEbkAgADcP4CAAAMmgIAAlJKAgAAK7ZA=
Date: Tue, 27 Feb 2024 18:48:43 +0000
Message-ID: <PH7PR11MB8252DFC8C7CD7A285C3658F389592@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240221192010.25413-1-stanislav.lisovskiy@intel.com>
 <20240221192010.25413-4-stanislav.lisovskiy@intel.com>
 <87o7c3knj9.fsf@intel.com> <Zd2lm8uC1WsjEpcO@intel.com>
 <87ttlujmio.fsf@intel.com>
 <CAE72mNkpz5sSCVAkXb0yJ=FcBgDZHc_kwAjsuhqWnifFGwWY3Q@mail.gmail.com>
In-Reply-To: <CAE72mNkpz5sSCVAkXb0yJ=FcBgDZHc_kwAjsuhqWnifFGwWY3Q@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|PH8PR11MB6878:EE_
x-ms-office365-filtering-correlation-id: 1e892e3d-cb70-41d6-60d2-08dc37c4b8c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R50jfxEdAlTBNRt25ViCVDon0qCgmVHYFpLgg1yKC4Spqz7P6Dp0QJ/AdlIo1QJY4PUC703J3PbIqpxctYodJ7n/qNQMnP0g2M1pUvJ6Xv8QOnJT1uZEZW7QyaQHtSM4TfjbLg+5IyFCfxIzPHgYu7J5ljK+btLqPHvc4ces1s6TAaVDegzvCyTT15rWNmOiNB5LX4lapPNX4dxwtAghdw7ay0Tgfl6jQf4dEI5STf9uWcuo/NFdWiuO0iK28voIks1Bf7TZRArfYN1kEzpx7Jzl+tvAYXcnXJhSYVESZXTIB4VZSr91539yA1jENj3QPhlV4Unp2qWr8VcO90VWlwzcyhJ4tznmit8Pc0fnzRgd86UJk5u6ZHsToD1gQGH4wtCbUKHs+QLVnr/PzzHtxd12dvAi5KTGL90u3YJWpIz68bySG4MHYwyAEO66pF0Y3wZUmYU4ISQzY/t+0ossnvM9gqv1zwPtaIb6gQ/85NrH98BfkSJh0AjxZAyTiX1Ajf+bBwK4YJXm8j+lDhSriBFSsCYgRvOSlXGKN+Dz7gUOSZC0iE5HcSwiX7PZoXqw68BZk24FwUhnuEPbiHRlreBYEMxEPZVDB4mhLR7iAGPkBiIGPOGDGuw3ZM/YkeQEJ6Y46gsn4BYriUB83tUJ2wShiFesG5aZuqCChy0ySlDuTqvhSIF52yPwuxMkdwNR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bzYyVk5zRDUra3hzZWFyRll5YWxNQ0xMdEpaZThxa3hGQU1ORlM1UW9GZUFK?=
 =?utf-8?B?YVNLSEpBVG5mN1QwbDhnR0kxZjhWS2JoaG0wd0ZTVjRnOS8zSkR1b3duSE15?=
 =?utf-8?B?YVJ2QzFxd1duS1lkNlBJZW1UaU9CTnJYTlZtSCtOVzh4SlVZU0E5TURZMTBT?=
 =?utf-8?B?WTFqUlRpYzR6a1pqS1VqS0pVYlExSDArM1JTNFdwcWs1dWNRWWpWZXRHRy9x?=
 =?utf-8?B?QUFqaDQ4UmlEUTgrclM0SjRvVk5jK0ZVNnZDUmlXVk1SdTdpTTVKUXpDMVJJ?=
 =?utf-8?B?S3hNQTdvVlBVTG5jUHR2QnBQekNoRmNvNVRUc2lsWHJmZDBoZ2NnL0llMVpn?=
 =?utf-8?B?b29RNG0yZE00TlNFV0wrdmxrL0lyaGRoSXZaN1RrYkI5c0ZaUzVKQUo1U0V3?=
 =?utf-8?B?cG9meDRwWGl6ekdLWXNyTjBkb2xTalJLaW9LdW1DSTk5aUI2QlBkSUF2cXlT?=
 =?utf-8?B?U2JzRmhqVzVwcGo4eTI3YTVXZzJPeE1tMWxITGY3TjZtTXJzTXFieGxVUUtF?=
 =?utf-8?B?bE5yY3QwcVBCVThxRmpjK1RWTlhYTGFaTjNScUdzU0N5eTh6bVQ1b1cxRzNY?=
 =?utf-8?B?bUEwNGtXaWJGSHZ1bm9nandtTmF2T2dIeEVLaFdEMG80bTdQL203UGVHUHJR?=
 =?utf-8?B?b3hwbWhGdnFSaDVsbXdtN29XZUoySmIwT0diWnN4WVZaSHFheVA2R0tER3lI?=
 =?utf-8?B?c1NhYkxQY1BFNTQ3NmZ5KzNNRkVZWVZseU1QNU1taGN6QUlzZTJFVDdZTFhM?=
 =?utf-8?B?NmpaZWd6cms4N2tLVFlBNVVKZlJrMlRGakluQ0N4cS9oZzdYSTJnNUNiV1d4?=
 =?utf-8?B?WlcxYlNUWHBsMlBYMXFCZVVaUFpFRWk5citSMnN5d2xwM1YxNjZMYkh3aU8w?=
 =?utf-8?B?V2hEU0ltM2laKzFZZ085dFlHWURibmROYXhnR3YzVVJxQnFJeEJaMU1mbEdS?=
 =?utf-8?B?VXNqVFl6MnQ2N2J1b0NsMG5DNHUxNWREalREVzJKYllxMm85TUc3SEVXQUpU?=
 =?utf-8?B?QmM4MVZoNHgza3VHaTNXcC9xTlp2M0lqcFluSTJKbWVES2tJM3pIYnR5ZFNL?=
 =?utf-8?B?aXZJZThSUXIySjFzV1dJSGpUSS80TW5WRlg5L0NYYXJac1d5d3dScWd1RmNX?=
 =?utf-8?B?WlU4NE9FVkx4eGZvQ0ltODgwNko0d1MrdHE1Q05PcmxKclNNYjNmajQ5bW5q?=
 =?utf-8?B?UTVURUY2V0FVdW9tTEVoM213dmZVNmpaV0EycjhFd3ZINy9HTDdtSGJnNGFI?=
 =?utf-8?B?QVpQdDdKSHpXU3l6VnE2WEt2OVRjcHMxbTZOWlB1RjNFVS9hSUhzejdUUDRT?=
 =?utf-8?B?V3prUXNGQ3d5TkRsT3FnSWlOb1RoMjVKUGs3aEdacC9KTzBUUDFqU1M5TlJS?=
 =?utf-8?B?ek5DN2d0UkxqRlhLQVZxZzBqSE9JQ29ISGwrbE5GbFo0TjBkTUI2K3dKanZo?=
 =?utf-8?B?MkJ3bTkrTW1GMTBpV3pPUzY2L2NSOUlqaVBid3B6TE00UE0xQ1huN2QrZVNI?=
 =?utf-8?B?VmhCUXQ0K1JESHJFT2N4UFA0OTI4NUt4a0dDVVZZUk5uVjAyRWgvYjJWL2F2?=
 =?utf-8?B?N20zdDZ2OTJoVlB3d21XZ2pKYXRUMXFWYkNpYmFiMmF2cmt3MUNPMkhHQTRF?=
 =?utf-8?B?ZjNWY3NvM2NXaG9TN1NNL3FYTFdmV1puaklSN2dPRjNUZHFMY1p1SEpCU2RP?=
 =?utf-8?B?QkhadXZoK2EybnVHZHd2THpqZGx3VkV4MytnNFZ1M2FRNThlNTFmY05laWd4?=
 =?utf-8?B?SlRZYkxOelBuckFzcHpTdmxlaERlTm9QSEY5QnAyQTFkeldDYU04MTBrTVho?=
 =?utf-8?B?THZSOVd5TWNqNUp5M3Q1WFlSM052VktpRlNETTd1c0JZeU9DTFhwWHVlRlZt?=
 =?utf-8?B?QlBpSlBBYktremJEeWJ4WlFDSUZxc1IwMVd4UThvNnVaNUNLa29kUFh1WFJm?=
 =?utf-8?B?RjB5NTF5SkRQR0FSUHlhR3VHWmUxa2IvNFkzK0xmS0p4N3V1QUkybzdPVHY4?=
 =?utf-8?B?dEVITVJ4dGFtcFBkdkdMV1pNWnYwYlFOdGFReks0dWh5bVFJMHdRZ0ZHb0xh?=
 =?utf-8?B?andHRDZhTWhPYU9nWVVWQjdaNjZaRjQ3LzAzUDA1N2MwSFVvakFZRXQrdmdW?=
 =?utf-8?Q?BLfPz+D3VkL2YsfVwB/zloxYV?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e892e3d-cb70-41d6-60d2-08dc37c4b8c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Feb 2024 18:48:43.2543 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wT1ePOMC9+y0TvWJHKIXNnmRlSulidp6PvY7yjAitQAKgkXPwf9TGIMnBvxnAEfDbnkFvvHOskvc6hgWv/iIUSkHVc4KahStRDNynrl7HB0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6878
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTWFuYXNpIE5hdmFyZSA8
bmF2YXJlbWFuYXNpQGNocm9taXVtLm9yZz4NCj4gU2VudDogVHVlc2RheSwgRmVicnVhcnkgMjcs
IDIwMjQgMTE6MzcgUE0NCj4gVG86IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRl
bC5jb20+DQo+IENjOiBMaXNvdnNraXksIFN0YW5pc2xhdiA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgU2FhcmluZW4s
IEphbmkgPGphbmkuc2FhcmluZW5AaW50ZWwuY29tPjsNCj4gdmlsbGUuc3lyamFsYUBsaW51eC5p
bnRlbC5jb207IFNyaW5pdmFzLCBWaWR5YSA8dmlkeWEuc3Jpbml2YXNAaW50ZWwuY29tPg0KPiBT
dWJqZWN0OiBSZTogW1BBVENIIDMvM10gZHJtL2k5MTU6IEZpeCBiaWdqb2luZXIgY2FzZSBmb3Ig
RFAyLjANCj4gDQo+IFRoYW5rcyBKYW5pIGZvciB5b3VyIHJldmlldy4NCj4gVGhhbmtzIEBMaXNv
dnNraXksIFN0YW5pc2xhdiAgYW5kIEB2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20gZm9yIHRha2lu
ZyB0aGlzDQo+IHBhdGNoIGZvcndhcmQuDQo+IA0KPiBASmFuaSBOaWt1bGEgLCBAVmlsbGUgU3ly
asOkbMOkIDogTVNUIGJpZ2pvaW5lciBhcyBhIGZlYXR1cmUgbmVlZHMgdG8gYmUgZW5hYmxlZA0K
PiB1cHN0cmVhbSBhbmQgdGhpcyBwYXRjaCBlbmFibGVzIHRoYXQgZmVhdHVyZS4NCj4gSWYgeW91
IGFncmVlIHRoYXQgYmlnam9pbmVyIHJlZmFjdG9yaW5nIHBhdGNoZXMgMSBhbmQgMiBoYXZlIG5v
IGltcGFjdCBvbg0KPiBlbmFibGluZyBiaWdqb2luZXIgb24gTVNULCBjb3VsZCB3ZSBkZWNvdXBs
ZSB0aGlzIHBhdGNoIGZyb20gYmlnam9pbmVyDQo+IHJlZmFjdG9yaW5nIGFuZCBsYW5kIHRoaXMg
c2VwYXJhdGVseT8NCg0KSGVsbG8gTWFuYXNpDQoNClRoYW5rIHlvdS4NCkkgaGF2ZSBzdWJtaXR0
ZWQgdGhpcyBzZXJpZXMgYXMgc3VnZ2VzdGVkIGFmdGVyIGFkZHJlc3NpbmcgY29tbWVudHMNCmZy
b20gSmFuaSBOaWt1bGEgYWJvdXQgdGhlIGNvbW1pdCBtZXNzYWdlIGVycm9ycy4NCmh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTMwNDQ5Lw0KDQpSZWdhcmRzDQpWaWR5
YQ0KDQo+IA0KPiBXZSBuZWVkIHRoZSBCaWdqb2luZXIgdG8gYmUgZW5hYmxlZCBvbiBNU1QgZmVh
dHVyZSBsYW5kZWQgYXNhcCBhbmQNCj4gYmlnam9pbmVyIHJlZmFjdG9yaW5nIGNhbiBmb2xsb3cu
DQo+IA0KPiBSZWdhcmRzDQo+IE1hbmFzaQ0KPiANCj4gT24gVHVlLCBGZWIgMjcsIDIwMjQgYXQg
MToxNeKAr0FNIEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBsaW51eC5pbnRlbC5jb20+DQo+IHdy
b3RlOg0KPiA+DQo+ID4gT24gVHVlLCAyNyBGZWIgMjAyNCwgIkxpc292c2tpeSwgU3RhbmlzbGF2
IiA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IHdyb3RlOg0KPiA+ID4gT24gTW9u
LCBGZWIgMjYsIDIwMjQgYXQgMDk6NTY6MTBQTSArMDIwMCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+
ID4gPj4gT24gV2VkLCAyMSBGZWIgMjAyNCwgU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2
Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IHdyb3RlOg0KPiA+ID4+ID4gUGF0Y2ggY2FsY3VsYXRl
cyBiaWdqb2luZXIgcGlwZXMgaW4gbXN0IGNvbXB1dGUuDQo+ID4gPj4gPiBQYXRjaCBhbHNvIHBh
c3NlcyBiaWdqb2luZXIgYm9vbCB0byB2YWxpZGF0ZSBwbGFuZSBtYXggc2l6ZS4NCj4gPiA+Pg0K
PiA+ID4+IFBsZWFzZSB1c2UgdGhlIGltcGVyYXRpdmUgbW9vZCBpbiBjb21taXQgbWVzc2FnZXMs
IGUuZy4gImNhbGN1bGF0ZSINCj4gPiA+PiBpbnRlYWQgb2YgImNhbGN1bGF0ZXMiLg0KPiA+ID4+
DQo+ID4gPj4gUGxlYXNlIGRvIG5vdCByZWZlciB0byAicGF0Y2giLiBXZSBrbm93IGl0J3MgYSBw
YXRjaCwgdW50aWwgaXQNCj4gPiA+PiBpc24ndCwgYW5kIHRoZW4gaXQncyBhIGNvbW1pdC4NCj4g
PiA+Pg0KPiA+ID4+IFBsZWFzZSBleHBsYWluICp3aHkqIHRoZSBjaGFuZ2VzIGFyZSBiZWluZyBk
b25lLCBub3QganVzdCAqd2hhdCogaXMNCj4gPiA+PiBiZWluZyBkb25lLg0KPiA+ID4+DQo+ID4g
Pj4gSW4gdGhlIHN1YmplY3QsIHdoYXQgaXMgImJpZ2pvaW5lciBjYXNlIGZvciBEUDIuMCI/IERQ
IDIuMCBpcyBhDQo+ID4gPj4gc3BlYyB2ZXJzaW9uLCBhbmQgYXMgc3VjaCBpcnJlbGV2YW50IGZv
ciB0aGUgY2hhbmdlcyBiZWluZyBkb25lLg0KPiA+ID4+DQo+ID4gPj4gPiBTaWduZWQtb2ZmLWJ5
OiB2c3Jpbmk0IDx2aWR5YS5zcmluaXZhc0BpbnRlbC5jb20+DQo+ID4gPj4NCj4gPiA+PiA/DQo+
ID4gPg0KPiA+ID4gSGkgSmFuaSwgSSBqdXN0IGFkZGVkIHRoYXQgcGF0Y2ggZnJvbSBWaWR5YSB0
byBteSBzZXJpZXMsIHRvIGJlDQo+ID4gPiBob25lc3QsIGRpZG4ndCBoYXZlIHRpbWUgYXQgYWxs
IHRvIGxvb2sgbXVjaCBpbnRvIGl0Lg0KPiA+ID4gTG9va3MgbGlrZSBpdHMgbWUgd2hvIGlzIGdv
aW5nIHRvIGZpeCB0aGF0Lg0KPiA+DQo+ID4gU2hvdWxkIHRoZSBvcmlnaW5hbCBhdXRob3JzaGlw
IGJlIHByZXNlcnZlZD8gSWYgbm90LCBwbGVhc2UgYWRkDQo+ID4gQ28tZGV2ZWxvcGVkLWJ5LiBK
dXN0IGhhdmluZyB0aGUgU2lnbmVkLW9mZi1ieSBpcyBub3QgZW5vdWdoLg0KPiA+DQo+ID4gQlIs
DQo+ID4gSmFuaS4NCj4gPg0KPiA+DQo+ID4gPg0KPiA+ID4+DQo+ID4gPj4gPiBTaWduZWQtb2Zm
LWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5DQo+ID4gPj4gPiA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+DQo+ID4gPj4gPiAtLS0NCj4gPiA+PiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jIHwgMTkNCj4gPiA+PiA+ICsrKysrKysrKysrKy0tLS0tLS0N
Cj4gPiA+PiA+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMo
LSkNCj4gPiA+PiA+DQo+ID4gPj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+ID4+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX21zdC5jDQo+ID4gPj4gPiBpbmRleCA1MzA3ZGRkNGVkY2Y1Li5mZDI3
ZDk5NzZjMDUwIDEwMDY0NA0KPiA+ID4+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+ID4+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcF9tc3QuYw0KPiA+ID4+ID4gQEAgLTUyMyw2ICs1MjMsNyBAQCBzdGF0
aWMgaW50IGludGVsX2RwX21zdF9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QNCj4gaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gPiA+PiA+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBz
dHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0KPiA+ID4+ID4gKmNvbm5fc3RhdGUpICB7DQo+ID4g
Pj4gPiAgICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPQ0KPiA+ID4+ID4gdG9f
aTkxNShlbmNvZGVyLT5iYXNlLmRldik7DQo+ID4gPj4gPiArICBzdHJ1Y3QgaW50ZWxfY3J0YyAq
Y3J0YyA9DQo+ID4gPj4gPiArIHRvX2ludGVsX2NydGMocGlwZV9jb25maWctPnVhcGkuY3J0Yyk7
DQo+ID4gPj4gPiAgICBzdHJ1Y3QgaW50ZWxfZHBfbXN0X2VuY29kZXIgKmludGVsX21zdCA9IGVu
Y190b19tc3QoZW5jb2Rlcik7DQo+ID4gPj4gPiAgICBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
ID0gJmludGVsX21zdC0+cHJpbWFyeS0+ZHA7DQo+ID4gPj4gPiAgICBjb25zdCBzdHJ1Y3QgaW50
ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSBAQCAtNTQwLDYgKzU0MSwxMCBAQA0KPiA+ID4+ID4g
c3RhdGljIGludCBpbnRlbF9kcF9tc3RfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2VuY29k
ZXIgKmVuY29kZXIsDQo+ID4gPj4gPiAgICBpZiAoYWRqdXN0ZWRfbW9kZS0+ZmxhZ3MgJiBEUk1f
TU9ERV9GTEFHX0RCTFNDQU4pDQo+ID4gPj4gPiAgICAgICAgICAgIHJldHVybiAtRUlOVkFMOw0K
PiA+ID4+ID4NCj4gPiA+PiA+ICsgIGlmIChpbnRlbF9kcF9uZWVkX2JpZ2pvaW5lcihpbnRlbF9k
cCwgYWRqdXN0ZWRfbW9kZS0+Y3J0Y19oZGlzcGxheSwNCj4gPiA+PiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrKSkNCj4gPiA+PiA+ICsg
ICAgICAgICAgcGlwZV9jb25maWctPmJpZ2pvaW5lcl9waXBlcyA9IEdFTk1BU0soY3J0Yy0+cGlw
ZSArIDEsDQo+ID4gPj4gPiArIGNydGMtPnBpcGUpOw0KPiA+ID4+ID4gKw0KPiA+ID4+ID4gICAg
cGlwZV9jb25maWctPnNpbmtfZm9ybWF0ID0gSU5URUxfT1VUUFVUX0ZPUk1BVF9SR0I7DQo+ID4g
Pj4gPiAgICBwaXBlX2NvbmZpZy0+b3V0cHV0X2Zvcm1hdCA9IElOVEVMX09VVFBVVF9GT1JNQVRf
UkdCOw0KPiA+ID4+ID4gICAgcGlwZV9jb25maWctPmhhc19wY2hfZW5jb2RlciA9IGZhbHNlOyBA
QCAtMTMxOCwxMiArMTMyMyw2IEBADQo+ID4gPj4gPiBpbnRlbF9kcF9tc3RfbW9kZV92YWxpZF9j
dHgoc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gPiA+PiA+ICAgICAqICAgY29y
cmVzcG9uZGluZyBsaW5rIGNhcGFiaWxpdGllcyBvZiB0aGUgc2luaykgaW4gY2FzZSB0aGUNCj4g
PiA+PiA+ICAgICAqICAgc3RyZWFtIGlzIHVuY29tcHJlc3NlZCBmb3IgaXQgYnkgdGhlIGxhc3Qg
YnJhbmNoIGRldmljZS4NCj4gPiA+PiA+ICAgICAqLw0KPiA+ID4+ID4gLSAgaWYgKG1vZGVfcmF0
ZSA+IG1heF9yYXRlIHx8IG1vZGUtPmNsb2NrID4gbWF4X2RvdGNsayB8fA0KPiA+ID4+ID4gLSAg
ICAgIGRybV9kcF9jYWxjX3Bibl9tb2RlKG1vZGUtPmNsb2NrLCBtaW5fYnBwIDw8IDQpID4gcG9y
dC0NCj4gPmZ1bGxfcGJuKSB7DQo+ID4gPj4gPiAtICAgICAgICAgICpzdGF0dXMgPSBNT0RFX0NM
T0NLX0hJR0g7DQo+ID4gPj4gPiAtICAgICAgICAgIHJldHVybiAwOw0KPiA+ID4+ID4gLSAgfQ0K
PiA+ID4+ID4gLQ0KPiA+ID4+ID4gICAgaWYgKG1vZGUtPmNsb2NrIDwgMTAwMDApIHsNCj4gPiA+
PiA+ICAgICAgICAgICAgKnN0YXR1cyA9IE1PREVfQ0xPQ0tfTE9XOw0KPiA+ID4+ID4gICAgICAg
ICAgICByZXR1cm4gMDsNCj4gPiA+PiA+IEBAIC0xMzQzLDYgKzEzNDIsMTIgQEAgaW50ZWxfZHBf
bXN0X21vZGVfdmFsaWRfY3R4KHN0cnVjdA0KPiBkcm1fY29ubmVjdG9yICpjb25uZWN0b3IsDQo+
ID4gPj4gPiAgICAgICAgICAgIHJldHVybiAwOw0KPiA+ID4+ID4gICAgfQ0KPiA+ID4+ID4NCj4g
PiA+PiA+ICsgIGlmIChtb2RlX3JhdGUgPiBtYXhfcmF0ZSB8fCBtb2RlLT5jbG9jayA+IG1heF9k
b3RjbGsgfHwNCj4gPiA+PiA+ICsgICAgICBkcm1fZHBfY2FsY19wYm5fbW9kZShtb2RlLT5jbG9j
aywgbWluX2JwcCA8PCA0KSA+IHBvcnQtDQo+ID5mdWxsX3Bibikgew0KPiA+ID4+ID4gKyAgICAg
ICAgICAqc3RhdHVzID0gTU9ERV9DTE9DS19ISUdIOw0KPiA+ID4+ID4gKyAgICAgICAgICByZXR1
cm4gMDsNCj4gPiA+PiA+ICsgIH0NCj4gPiA+PiA+ICsNCj4gPiA+PiA+ICAgIGlmIChESVNQTEFZ
X1ZFUihkZXZfcHJpdikgPj0gMTAgJiYNCj4gPiA+PiA+ICAgICAgICBkcm1fZHBfc2lua19zdXBw
b3J0c19kc2MoaW50ZWxfY29ubmVjdG9yLT5kcC5kc2NfZHBjZCkpIHsNCj4gPiA+PiA+ICAgICAg
ICAgICAgLyoNCj4gPiA+PiA+IEBAIC0xMzg1LDcgKzEzOTAsNyBAQCBpbnRlbF9kcF9tc3RfbW9k
ZV92YWxpZF9jdHgoc3RydWN0DQo+IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvciwNCj4gPiA+PiA+
ICAgICAgICAgICAgcmV0dXJuIDA7DQo+ID4gPj4gPiAgICB9DQo+ID4gPj4gPg0KPiA+ID4+ID4g
LSAgKnN0YXR1cyA9IGludGVsX21vZGVfdmFsaWRfbWF4X3BsYW5lX3NpemUoZGV2X3ByaXYsIG1v
ZGUsDQo+ID4gPj4gPiBmYWxzZSk7DQo+ID4gPj4gPiArICAqc3RhdHVzID0gaW50ZWxfbW9kZV92
YWxpZF9tYXhfcGxhbmVfc2l6ZShkZXZfcHJpdiwgbW9kZSwNCj4gPiA+PiA+ICsgYmlnam9pbmVy
KTsNCj4gPiA+PiA+ICAgIHJldHVybiAwOw0KPiA+ID4+ID4gIH0NCj4gPiA+Pg0KPiA+ID4+IC0t
DQo+ID4gPj4gSmFuaSBOaWt1bGEsIEludGVsDQo+ID4NCj4gPiAtLQ0KPiA+IEphbmkgTmlrdWxh
LCBJbnRlbA0K
