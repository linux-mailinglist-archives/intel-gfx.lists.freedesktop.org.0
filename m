Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A288A0925
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Apr 2024 09:07:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ED70E10ED3A;
	Thu, 11 Apr 2024 07:07:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ekd8zibm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85D4110ED3A;
 Thu, 11 Apr 2024 07:07:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712819241; x=1744355241;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=X0Y3lPBXw5B5691thM/C0c/nfKKStH0dU13x6Ojw5qg=;
 b=ekd8zibm8Uc8AhIr5Gy0hSAh3l3Qq870nHRd2VHGu+7WCVr63iZ1EjlF
 2oTaSWfQTOV3vYvzzGUUpgDZ4b1KZZiFThrSvlwUyE2kUEUZ7LjLnThVK
 vqODrgHhHwKhMJ9zTlCKlc/3LuAA90agjE6Dg1qGZaUm9by/5edVafClQ
 nW+VmsrKcSiKykY/IEi7K+biMFPTxjlnNl9tNwyV4kZQj2Wir+8NoAqfp
 9IfOWCMR1QoObDnERu8xxJYMRn/WRES2TMEhEQOB1Y74YJXsX506Wl2rk
 Si6UZVkWAvHFDbSwKpeS2A10mJcsMWKO7HwvWtft2RevMKlc3FJ0d8YFd w==;
X-CSE-ConnectionGUID: SGEWYz8sQBy5eLnyiPrPFw==
X-CSE-MsgGUID: /j3Ab8XRRZG8fjuQUsExUg==
X-IronPort-AV: E=McAfee;i="6600,9927,11039"; a="8132290"
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; 
   d="scan'208";a="8132290"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2024 00:07:20 -0700
X-CSE-ConnectionGUID: 9/v2NxFVS/m7CtoNxmNQ+A==
X-CSE-MsgGUID: FXmjNrKhQsGaymoboPpxzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,192,1708416000"; d="scan'208";a="20816416"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Apr 2024 00:07:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Apr 2024 00:07:18 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Apr 2024 00:07:18 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Apr 2024 00:07:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yv7IDH55JRDeXcXa2vfNEqbpTHb1DPjMuu/3bsiScJYpNXvD5/5zp01oqnu0O0TgfNvMAAZvAH2ZbsQ4DNdqVYpcSAyeJENUbWf+kMbFWNKN2pWckw8LR0ds++6VZZT6duqsoy9nuutqed/kTmA+3gUEdwXq46jZuGQn6HmMVzV/NpuPLnyeKVVkZD/pGWv1vilObSi5q41bcO6uOCXvfAhDu8Dh0LpQi5bZ1axUhcQPKLCIsyECrYU8RU+MBInw+f7NtFHQWnS5oAqx9HNl18F+11MUBMByQCD1M4mNsHRJNTjhPhSZAQHqxZ03eRo2cZKPvzDXzRh949JtgeJdNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X0Y3lPBXw5B5691thM/C0c/nfKKStH0dU13x6Ojw5qg=;
 b=Gkf1G2tpKE0CZUsyi6TZX++gYgTO1dTkHLL1CMbHy9v7r9s9L+5LmSW4rI6arB9gor/pe0f5fg6jUkgcvTJnMnGG1IStxm/JV7Z0tZ+/bcAzdoySh7gMFHWTOPu5AeLOKpbVoxOs+mtBSc6wih6prTg3LD4xuvca7fjBt0DFKGK25s/fzP456aBbCK28TzJkdTP501n4sF7GdK2TM+bB5y0gIKdA8SpTaZ4T3jJ8pqEpJMk6WibrxNi1Anp5me/SOVP6yc9kKS3M3zmei54JTIYk+okt/xfsu5x6F0i6kMMSNS4c+GvDzd9mv+xTGrSf8nOUZmFloRuAbtiIQlC9UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH8PR11MB6753.namprd11.prod.outlook.com (2603:10b6:510:1c8::22)
 by CO1PR11MB4899.namprd11.prod.outlook.com (2603:10b6:303:6e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.25; Thu, 11 Apr
 2024 07:07:15 +0000
Received: from PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::872:479f:4c28:21b5]) by PH8PR11MB6753.namprd11.prod.outlook.com
 ([fe80::872:479f:4c28:21b5%6]) with mapi id 15.20.7409.028; Thu, 11 Apr 2024
 07:07:15 +0000
From: "Illipilli, TejasreeX" <tejasreex.illipilli@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "I915-ci-infra@lists.freedesktop.org" <I915-ci-infra@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBCaWdq?=
 =?utf-8?B?b2luZXIgbW9kZXNldCBzZXF1ZW5jZSByZWRlc2lnbiBhbmQgTVNUIHN1cHBv?=
 =?utf-8?Q?rt_(rev4)?=
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEJpZ2pvaW5l?=
 =?utf-8?B?ciBtb2Rlc2V0IHNlcXVlbmNlIHJlZGVzaWduIGFuZCBNU1Qgc3VwcG9ydCAo?=
 =?utf-8?Q?rev4)?=
Thread-Index: AQHaiqmG4Ii/RvAeBkCWlcmWMeWDrbFhkv2AgAEVQpA=
Date: Thu, 11 Apr 2024 07:07:15 +0000
Message-ID: <PH8PR11MB6753D0DBE40D7B39054F5BB8F2052@PH8PR11MB6753.namprd11.prod.outlook.com>
References: <20240409163502.29633-1-ville.syrjala@linux.intel.com>
 <171268632967.1303388.3151469260451854582@8e613ede5ea5>
 <ZhajZTW1jbSgfESc@intel.com>
In-Reply-To: <ZhajZTW1jbSgfESc@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH8PR11MB6753:EE_|CO1PR11MB4899:EE_
x-ms-office365-filtering-correlation-id: 9cb9d11e-58d5-4580-eb44-08dc59f604dd
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BcQt0mypf+coynzfY37G+WOHiLWJsZhQWJE6QW1NnEV+PVIkqUfp7e1PR1JIKk7Rq9qJwkzi87l1+7ErkNzaWv68mZ5AunzqgW5pbtiFN1Nx9xT38csQV7G5nTlNFVNT4CEzxYCftu2XOFwAdgd4xFZbUKchYNYrx10w89vZwMZ+adQ5YyLa17QEePPy8tMV0Xz1wuOcLI9JCx5zKKWLRGQIMG+rDnde43kMs7poIUSGGLYymb2t2rQOYw1ErXIHS+KrHM35Cr60wli3uc03bACp+3uLQTbZI0Fee35njDtddRgI4qzET9J8M92wEzAkxKHUzMl9jusK29dMaOyOzypAAe7OkkhMFO8aUZNcMdpntDwrWT+MEondU92DLuHOLn7EiNA4e3y89TJ/hO+fwym1N7yfZfBl2kP4lWiRlv0LYsA2/5KDzgn5TQk0CXAnTeRkUspsDGsIVcR2JHyQFgYVRPe7EUisI1xtpTLgPDp5cZH0XB72soMxmGGQucbuKu9UFzW3jK7AIGbPg4w7j75Thzyffre2u6XCMQeWDXR5BcSB84NQMAmyxF7fJpXIGnU2FNKVoM55N8lcNdi2Vf2g9L5eM/3/3wBgcLkn+0iQrb0pMX5aWbFSPuMRNHFMv493EbvhFK5d8sEq1yXfaOo7wMsJvXWmIjNzlIjnrzU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6753.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXR3RkcvaDB2Mnl5bkhXdXdPbG1MY1pvbEZ6S1RuOTVCRE1OTjlSM0U0SDFx?=
 =?utf-8?B?a2E2TFJaMEJuTThYdFlBNXBaRTZnKzFYSkZnaGsvY0VqaExySkVWYnliaUlY?=
 =?utf-8?B?N01wNkQ3ZHVmYVlHL0d1NFpuRSsyekgxSlI1MitRUGVwdXlzT3pnQTQ4NTlQ?=
 =?utf-8?B?b3hvTi9wU21EVGFHS0txTEF4Tk1CSTZBd2VXSkJJYXIybE5iL2lwYnRDbXpa?=
 =?utf-8?B?U0pJODQ2T21BcDlEb1htTjdwd1dmUmFxZUdsK2JINVZFR25ZK2NVL2lwZnlu?=
 =?utf-8?B?MTEzT0dQbCtkcEY1c0xOYUpsME5HK0JLTXFENFkzTEI5NHpsVXYwVkRBWXFI?=
 =?utf-8?B?SDB2RUpSOHl4ZU1UYm9BVmh4TXJtQ3kxK0tyYXdUKzFkVTZyS1FpY0JiUWRr?=
 =?utf-8?B?STZQTVYybC85d1FxMklMdm81QTlSR1MyMDNGQmVwS3AyY040UXVBbDJiNnlZ?=
 =?utf-8?B?ck9tUENBV2lINkVVYWlyTjJlOVBKRmptZ2ovOWVEVVI4S3ZzY2JmVlJPUnFw?=
 =?utf-8?B?aFBJQnZEYUNHWThrVWYxR2hPTHlBWmxOSzBOUy94VnNrZUtkbU9tbjZpYnN5?=
 =?utf-8?B?VEZTVDlqeDN4SENyeDMzcEpodXBRNWtFVitKdzlUTmJsOEpQOXhIZjFWUzd1?=
 =?utf-8?B?Ykk1RzBWVmxsWjFpZlBubDZ1enc3YjVScUV0WUppZmU1S2RIYnNhVGtIYXJP?=
 =?utf-8?B?OW1scmhFbU1iN2tNWC9EbVVnQk9rdXVLUWpzdnRYV0NURnZlR2dieExlQjhC?=
 =?utf-8?B?TlpwOXAwZXhnTVJqcy95MUMzMFdxa1Vic0ptcjFKWXJHMGdOdms0Rm9lTFJZ?=
 =?utf-8?B?QitSUlpYdm9Kc0RVSUxmNHdTejJXQWdKQU0rb1MvT1V0aXhrN2V0eXA0N0RO?=
 =?utf-8?B?aWVCVm84KzVleHIwWnhSd2pZU2E0UGVNMjZXVkYyWGhSQU9PNzNpOWFYRUlT?=
 =?utf-8?B?MTJEM2pBSG5OWlFMYkpQNFVQUUt2VkE0RlBiVUc5cStIZk1wenkyVlJlMFd2?=
 =?utf-8?B?SWRrc2lLeC9qekJYYzVjSnh1RmdQQ2kydXJzMzlXTG92OE0ydS8yV0E2a0xq?=
 =?utf-8?B?enRVR01DZ3VmUUVPckNvNlhKWUZxWndNcFc0Z3JWeVpTTUJwMTh2VTVFaGhT?=
 =?utf-8?B?V01oMWYrRThYaEtGeDc4OTRBa0I1ZFVKQU1QYXpvSC9uelJJUUhNYnY5MVJO?=
 =?utf-8?B?cnd0ZnJ3ZmFoWExYcTVSbk0yYWJLWEZpOTlrK0Y0eG0yQ3NaK1BiRDRYdStp?=
 =?utf-8?B?V3hwYm0xSDlSUzFFOWpCMG01N2t4bGxpOVBYN0VLcEM3TUZqZHlMaGl3WUxB?=
 =?utf-8?B?akFOMnE3ZDh4SUN6bE93Mm91Y1Y0eXJGMTF2Rmh3YUJJZlRGcHVldzRLSlp1?=
 =?utf-8?B?NjVYaFZUeDd3M0dUWlc4cmtnNmpvRnVtdkIrRmljbGkzamFSMjMzV2pWQzFE?=
 =?utf-8?B?b1Fyems5Y0JIMWZlWklubXpEMXMwWjNIVlNuU2JBVWJLWGZZY1NISHhzYnQ4?=
 =?utf-8?B?QXI4L0pLbUFBWkRwbjZkdCtwVFBPcFlQUnR6bVlQZjJLdHpZL0ljc1cvdkVh?=
 =?utf-8?B?bzV3ck9jTWRVSzREd09jYklGYmYxOXpXdzV3MXQ4TFdZWHJPZUxkTWs2b0FH?=
 =?utf-8?B?c242T3BrV2lSVTdqSjRoeUt5Y2RRalBqSi9laEZkSGRUVmd0bTJ1NU5PVDRk?=
 =?utf-8?B?emtyTUZ1NVB3VWhzaWtnTTlvcjJPdTdUYW5PT3lpSWdQMkJSd0s4aThjZnJu?=
 =?utf-8?B?V1Z0QlFZNXlMNnE0ZHRlVG5SRjRxYlluaG40NFd0Nm4wK0NDeU5YajdyMVFa?=
 =?utf-8?B?ZFFWMU9FaFc4ZE9iU25tL1ZmSk5haSsyUVc0ZHZjWk1BdXVqTXRCeG5ZRlJs?=
 =?utf-8?B?cHJPZmEzRGZxb1NwTDNYaGZjaURlUHJyQ3dtK05CY3NnZ2JqTDUzK0p4bmJF?=
 =?utf-8?B?U2E4R2ZnQi9QSGdLdjlnNDgvOXFaN0hWdE5BWjJzaFo4bVA2b2xBUkloN3FX?=
 =?utf-8?B?Z3YvbGhVTU1xTHlyNVp5V01vNHRVWnlSNjBaMW5HeGtsMHN3Umd1a0VkMkU5?=
 =?utf-8?B?VFNFUUlkeVNxNHZrVXhsNWQ3NEpUTi9wMnJiMXhBVkRLRmFkVVhSaTJUV2xh?=
 =?utf-8?B?VVdqNVJ4emd3bUZHWWdYVFNuU3RZWGhEaWd0TEF4bXUrQmY1c0pvODZsblhF?=
 =?utf-8?B?ekE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6753.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9cb9d11e-58d5-4580-eb44-08dc59f604dd
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Apr 2024 07:07:15.8153 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fuWXSWhT/wSf8Ck2GVmmwYjpLSGVZ/T8X7sviHbtcqY8ZpRn1tDBCMLp3gZSmZfg9G8LtxFeC1hI5BwGH3jFxxuMakNLHCr21DqazM1Mubs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4899
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTMxNzk3LyAt
IFJlLXJlcG9ydGVkLg0KDQpUaGFua3MsDQpUZWphc3JlZQ0KDQotLS0tLU9yaWdpbmFsIE1lc3Nh
Z2UtLS0tLQ0KRnJvbTogSTkxNS1jaS1pbmZyYSA8aTkxNS1jaS1pbmZyYS1ib3VuY2VzQGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlIFN5cmrDpGzDpA0KU2VudDogV2Vk
bmVzZGF5LCBBcHJpbCAxMCwgMjAyNCA4OjA0IFBNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KQ2M6IEk5MTUtY2ktaW5mcmFAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQpTdWJq
ZWN0OiBSZTog4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEJpZ2pvaW5lciBt
b2Rlc2V0IHNlcXVlbmNlIHJlZGVzaWduIGFuZCBNU1Qgc3VwcG9ydCAocmV2NCkNCg0KT24gVHVl
LCBBcHIgMDksIDIwMjQgYXQgMDY6MTI6MDlQTSAtMDAwMCwgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9
PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiANCj4gU2VyaWVzOiBkcm0vaTkxNTogQmlnam9pbmVyIG1v
ZGVzZXQgc2VxdWVuY2UgcmVkZXNpZ24gYW5kIE1TVCBzdXBwb3J0IChyZXY0KQ0KPiBVUkwgICA6
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTMxNzk3Lw0KPiBTdGF0
ZSA6IGZhaWx1cmUNCj4gDQo+ID09IFN1bW1hcnkgPT0NCj4gDQo+IENJIEJ1ZyBMb2cgLSBjaGFu
Z2VzIGZyb20gQ0lfRFJNXzE0NTUwIC0+IFBhdGNod29ya18xMzE3OTd2NCANCj4gPT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQ0KPiANCj4gU3VtbWFy
eQ0KPiAtLS0tLS0tDQo+IA0KPiAgICoqRkFJTFVSRSoqDQo+IA0KPiAgIFNlcmlvdXMgdW5rbm93
biBjaGFuZ2VzIGNvbWluZyB3aXRoIFBhdGNod29ya18xMzE3OTd2NCBhYnNvbHV0ZWx5IG5lZWQg
dG8gYmUNCj4gICB2ZXJpZmllZCBtYW51YWxseS4NCj4gICANCj4gICBJZiB5b3UgdGhpbmsgdGhl
IHJlcG9ydGVkIGNoYW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMNCj4g
ICBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18xMzE3OTd2NCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1
ZyB0ZWFtIChJOTE1LWNpLWluZnJhQGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhl
bQ0KPiAgIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1
Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPiANCj4gICBFeHRlcm5hbCBVUkw6IA0KPiBodHRw
czovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMzE3OTd2NC9p
bmRleC5odG1sDQo+IA0KPiBQYXJ0aWNpcGF0aW5nIGhvc3RzICgzNiAtPiAzNikNCj4gLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0KPiAgIEFkZGl0aW9uYWwgKDQpOiBiYXQta2Js
LTIgYmF0LWRnMi0xMSBmaS1rYmwtODgwOWcgZmktYnN3LW4zMDUwIA0KPiAgIE1pc3NpbmcgICAg
KDQpOiBiYXQtYXJscy00IGJhdC1kZzEtNyBiYXQtYXRzbS0xIGJhdC1tdGxwLTggDQo+IA0KPiBQ
b3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgSGVyZSBh
cmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQ
YXRjaHdvcmtfMTMxNzk3djQ6DQo+IA0KPiAjIyMgSUdUIGNoYW5nZXMgIyMjDQo+IA0KPiAjIyMj
IFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4gDQo+ICAgKiBpZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlQGFjdGl2ZToNCj4gICAgIC0gYmF0LWpzbC0xOiAgICAgICAgICBbUEFTU11bMV0gLT4gW0RN
RVNHLUZBSUxdWzJdDQo+ICAgIFsxXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9DSV9EUk1fMTQ1NTAvYmF0LWpzbC0xL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAYWN0
aXZlLmh0bWwNCj4gICAgWzJdOiANCj4gaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTMxNzk3djQvYmF0LWpzbC0xLw0KPiBpZ3RAaTkxNV9zZWxmdGVz
dEBsaXZlQGFjdGl2ZS5odG1sDQoNCjw2PiBbMzk2Ljg5ODI3NV0gaTkxNTogUnVubmluZyBpOTE1
X2FjdGl2ZV9saXZlX3NlbGZ0ZXN0cy9saXZlX2FjdGl2ZV93YWl0DQo8Mz4gWzM5Ni45MDIzMTZd
IGk5MTUgMDAwMDowMDowMi4wOiBbZHJtXSAqRVJST1IqIGxpdmVfYWN0aXZlX3dhaXQgaTkxNV9h
Y3RpdmUgbm90IHJldGlyZWQgYWZ0ZXIgd2FpdGluZyENCjwzPiBbMzk2LjkwMjMzNF0gaTkxNSAw
MDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogbGl2ZV9hY3RpdmVfd2FpdCBhY3RpdmUgX19saXZl
X2FjdGl2ZSBbaTkxNV06X19saXZlX3JldGlyZSBbaTkxNV0NCjwzPiBbMzk2LjkwMzQzNF0gaTkx
NSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogbGl2ZV9hY3RpdmVfd2FpdCAJY291bnQ6IDAN
CjwzPiBbMzk2LjkwMzQ0M10gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm1dICpFUlJPUiogbGl2ZV9h
Y3RpdmVfd2FpdCAJcHJlYWxsb2NhdGVkIGJhcnJpZXJzPyBubw0KPDM+IFszOTYuOTA0MDg1XSBp
OTE1L2k5MTVfYWN0aXZlX2xpdmVfc2VsZnRlc3RzOiBsaXZlX2FjdGl2ZV93YWl0IGZhaWxlZCB3
aXRoIGVycm9yIC0yMg0KDQpMb29rcyB2ZXJ5IG11Y2ggdW5yZWxhdGVkIHRvIHRoZXNlIGNoYW5n
ZXMuIFBsZWFzZSB3YXZlIHRoaXMgb25lIHRocm91Z2guDQoNCi0tDQpWaWxsZSBTeXJqw6Rsw6QN
CkludGVsDQo=
