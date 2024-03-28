Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 036F888FE2A
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:34:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 78B1410FE7A;
	Thu, 28 Mar 2024 11:34:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V0BeU17B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B768B10FE7A
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:34:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711625683; x=1743161683;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Auf51otnUJwg+0v64GHvPjPuS4MAIUUj5+XYLhEPbP0=;
 b=V0BeU17B8kA6uF1uek4rbg/IVHDq1Vu5sxnTnmtIcv4GQXNlrhI6UDjn
 mG8jIgSIcrH69k1MLzGGcbi9V8DqQ3jIUJAPQeXrhcs0f8oE1yNM8rFuT
 Jp6RVPPLlSDa/PcORge05y6lokZ+PxJo6LyUTsjfjLq04PYmOldeiMaxo
 M3Y+2wqobLSFfk8ogpPL7yMmDEF/WuHa57X4brhP7Qv50QvUZTA+hoPTg
 dpN2GwJ+DlPr5fqEJh0S1TcUWfGAbtRg6//zZZxFBnUOq2sWjMUCfxSNR
 YEbRGm/hGD92U18LqZqGzkpOwjufdwrngHS7khXRi4yrtr+wmPrH2r44W Q==;
X-CSE-ConnectionGUID: tmj7Y3f6TCSfQ1DH9/+jow==
X-CSE-MsgGUID: ttEZeQzCSjG7JdDMcy8WeQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="17499637"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="17499637"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:34:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="54068494"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:34:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:34:36 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:34:35 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:34:35 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:34:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jLTHe0tkivEMHtsuR5ny47cXmM72P+uVK7HdHKc7ifDLyKPsTrJC2AC13Oks/mLKmSbOc8cPNH2fMbdqTl3KnJODimavqIoJh9ANorNGZQtsO9sapYYVDPcpfu+y+s4k9IlM4NX7l9G9mRNH+/fOVleftYE+PYCShzRC2NHDWG74VW+4mp32nE+W88tQrexbeX1yz3pDyTEq26c+L36Ik5K2Qx7F+LfQwPFQ5Vf5U4jIUgWySpmVgmZjnIbRfHq8mIwJSWL3pAD1TVO/AZNJyT0malzVF1ipAL0DyLO+U4CU2qjQywiP3OG/rwEtPv5Tun9HkXTFHqNA0MqMkEdWWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Auf51otnUJwg+0v64GHvPjPuS4MAIUUj5+XYLhEPbP0=;
 b=jaMSScej/L0D/g0weahbjDMYCD9Gu/9z5gaq1eXugZRC/2tlT0JDE4ZgKGkf9HD7XFxhVN3XciUdonLrIFn8F7wSx3jw0marlzpEkU0vvN+77QYOPv09jq+dUnT7TK4Fg41gBhkNGzQ/oJDnYgv9QTmkHapK1xZpR2Omi6Qv8yNZdkXmIeK6QehqncP+BELQAOPDZ4G89ZpePv1LN5UKwSbUNuShR/AOv2FC5YwKpaIDvhcz9M3T/S9Iz9GJcuWVqn20Xc1UA8fbWqYYvKlT75uOTzaCs60ykfgdVWnkC0fQnI6I46oYicIG+1J6MlTOF8/yswdIEGpeWYCnKiozSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 IA1PR11MB6289.namprd11.prod.outlook.com (2603:10b6:208:3e7::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.33; Thu, 28 Mar 2024 11:34:28 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:34:26 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 1/3] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Thread-Topic: [PATCH v2 1/3] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Thread-Index: AQHaf8p17DLWqdb9YE++UCSkpdCRcrFNAo1A
Date: Thu, 28 Mar 2024 11:34:26 +0000
Message-ID: <DM4PR11MB63602639FC89C29AC1D26B51F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240326203128.10259-2-ville.syrjala@linux.intel.com>
 <20240326221026.9012-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240326221026.9012-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|IA1PR11MB6289:EE_
x-ms-office365-filtering-correlation-id: 4ddca602-0e70-4913-5b1e-08dc4f1b0618
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i/VEdWY5+hLnl9eTFgQybUAu+8EZU+5tCd9OElgGLFXTym1M0hk/wTcELeER4F+exTQQNu915neRXMVtxek01cbPRCgW68O7aHSmsbfVby/MZ5qWRBSpuFStvu2jAfBOzbxIOOB+Eq5fW4H0aO6nTn7Yr6MgWhsqDX27YHwfvdW6E9D+pM6dHBs/Us7a4mfoyUJXnHm4uvrCXbjks38OQa+PBHCDGJ6gU28TwTO2vBWJZK3VhEjNE2KeXSVU5AgaZ00N4OayXPdHdwD8tJK8T7ywYgp8bek4hYYALUGXHouten2NNu2z60vHK/YiexSxT9eJ0vims2KiMJcikXo1KoOb5Am6SZRbOfkAuxODzWQYgdStYA49GvrAjtvIcTM71710iLVsLtNsLFV+lKzxGtqXkKtQnBdJPjo+qWzpH3Uq5R7JLoQu6RW/R6ZEp5Rp5MLq6V926kfV8lknutD3kB8Ra4LGsvZ0gfGdeo/p/m+XHYHaSXD07H3b5cpkRFSysGLbLIEg9B3tt//p2se5dr67qZDfFxD96wWAQvgHkfLAXhBOT/5k6yXMQPUOkNf4VKh/9sFfLYWeWwuga5w8aG6uUI6/OLDxlpn3VKWF1mAFPOCZVWEV8662Q3o2sGYeELsGb871zz8G9XwihaM5lFNRZ/nMp6cEUm9c69rhOOiiIYoU6B0MAVhidmlimSEPsRFddDH3caEwBJllf4BPEA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UC9QTVEzQWh4UHZmcmxpRXN5UjJQQ0lkaUFSSHlsclB0RytOc2FhS0s4b2Q3?=
 =?utf-8?B?YTVtNFZmMXRDcmM4OVVxMGxLWnpCTDc4WlNVYUpQMTNPYXU4ekd2R2U0ZXZ1?=
 =?utf-8?B?dVBNRGpmQk5SZE1VbmtWZHdUU2ovQ1grZXZSdU5OV2RXUDBBc3AvTFVQT2xw?=
 =?utf-8?B?UU9ZRFBHbXJQanhoUktFKzh3NHhrY1RaZXdXQ0dkUzAyL2RuTjMrTGpscStG?=
 =?utf-8?B?N0RkVHdiajAxSVpqcnhoRTdWME95OURtSzFUN0N4My8xN3pnQTZxYlFqTnZ4?=
 =?utf-8?B?VW56c1FIcVJLTGNLSXV1MGJqSWhWLzduOFBOZVcweFl3SGRlOThER2ZQYmJP?=
 =?utf-8?B?TFZUMXN5eG1mcTYzQm8zcWNFSEQwd21LN092N212QjV2dTZkYTZwT1hjbmtJ?=
 =?utf-8?B?Z3o0a3pCSnROQUUrK09yZENJZWNjNitMNG5xUEdpbHpXbk1lYVpSUkhhMzB5?=
 =?utf-8?B?dzEvUnc5OVFRTkN4R25uaG1td2pYN0pHOHlpeTF6b0RJZDJqV05Jek5iVFpr?=
 =?utf-8?B?R2dDZ0VPNUNVV0dGT2JUZnNRUHlQWGo4TWhZZWVHVktmSVBqOHVXcXVuSUlu?=
 =?utf-8?B?QjlvWE5BRXMzWHhmclp4NXJ1blBieGdrZUpsbHdYVHZtMDh6Ky8ySGZOZ0hR?=
 =?utf-8?B?MzhZUEVTa2FpazBqbk1tdWk0T2xtOUhNSldVQ29KZXBxZDBKbk1Vc3dBVGYv?=
 =?utf-8?B?Rzd1Z01RY2ozcWpubVBleUFJakNsVWlFSi9NWGtiNWE5M1hFdUR1dUJ2eU9F?=
 =?utf-8?B?NzZLWHhvK1NxeHpiWjlrZXVGd1c2TTlGYTRrM0xKR0k5MktFR3duU1MwTjFw?=
 =?utf-8?B?Y1ZKcHZQK0NDaWVIa3FkOTFYc2d0K0pzalI1SWp2dURKL0E4OWtxYzRGdENT?=
 =?utf-8?B?UTdmTGQvTUpPcVBRNnc2QWw1V01ZVlpZSjdqMEJjVW4rek12OG5ZYWNqZWps?=
 =?utf-8?B?YkdEUlJ6ODJOT3NPcXBxcnNvMXBOSmZEWTNIZEpmMUcyVTNGNzh1ZnpYQjhQ?=
 =?utf-8?B?OFZaVjFpWlh1M2J4NWdPODBPc3hFWUNteXVmRWJRNzROTDR6THIyVmxXQndM?=
 =?utf-8?B?YmxQRWZYNHUyelBORDlyTm1CYmhEaG1TYnh0em9NV2EwVFhBTmNkQjY3MEYy?=
 =?utf-8?B?MFp3SVZtWCt0Z2RYRUQxK0lEb0tnaGkrVmlyR0cvckZDY1VnZDM5RWJzRWlW?=
 =?utf-8?B?UUloQzQ3WUROWUZDaHI5YTVlU2dma0NGZkM1ZzErbDZrTitzL29tQXpoMk9Y?=
 =?utf-8?B?bGt5dHNhamRpS2Jod21Kc2MxRWxFanFlMWh1VC9PS0RYNkJwMlp1eDNrV05J?=
 =?utf-8?B?d1ZYMmtWS2VVVEZNMWlsV3Q1SkRLY0xYN0d6bVQwY243TGtSSzBvMVVVUmkr?=
 =?utf-8?B?Rzl3UHE2bGY0V1pQR3pRUW9sRXVjOWZwQ2dTQVEvMHhJQjl2cDdyQzVhemhF?=
 =?utf-8?B?RWhhZkNUWmp1MlRDWHVsRWJhb2xVU3dHYmJKL0I4N3Z5TVlwS2FINFc3eW9W?=
 =?utf-8?B?S2JSZmg4c2VzZjZsU1g4Q2tuY3ozdFErSWVFM00zNk04M00wenhYM1JpVEJN?=
 =?utf-8?B?dSs4OTFTUzFqeGFlV25YVjY3RDVwMjladkF0NHpkUHBFL21Oa1JqM0dYNmtP?=
 =?utf-8?B?SzhKLzlFZ1RjeE1ia1kzT1pNTWZ6SnV3OTRjMy9TTGNENzJGZEJjelhubENH?=
 =?utf-8?B?ZFc3dTFqYUxacTlXaG5KcTZNREIrR3NOeUU0NE4yLzRHaUFPUGR6L2pBVmt1?=
 =?utf-8?B?QTl5VXIxa1ZBMk5kT0tBb2Z1SHpBcWQvMjg3OGgvVVlqNFpXejBHQVV2cmJI?=
 =?utf-8?B?UmlveXY1cUNoQSt5aUFoTTNkUTlUSmwxdEo4OU5SUS9VK2U2a3VyVUxEZHhZ?=
 =?utf-8?B?TmZYSm8zcU1YUTd1V3hBTGkzOVhmL05DSXJxR1VMOWM4WUJja29SWUpxYnZZ?=
 =?utf-8?B?dGo4ejkzM0FwQXV0a3RPem5kM2hOSjdpYjl6MitERVpTcTdCbDkxTDNaZUh4?=
 =?utf-8?B?NVJibm1mYXpIK3hNK3lzODZmU211bENERGt6d0FhRCtBNWxnWFJRRHVKaUxK?=
 =?utf-8?B?aHpySHBWNVhRWlc3Zm9zUzVBK0ZyMDhkVWlqR2syVzRGYW0xUXBOOVlvL2NN?=
 =?utf-8?Q?vw4hVSWMB7CwUDw/Hz3X3Kwvt?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ddca602-0e70-4913-5b1e-08dc4f1b0618
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:34:26.4650 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EylkyMENp2c+FRdtOVgwhsnPbXM4bDcymK8P2T1o/lOTWroD6ge4yEqA3Dkc59EGS5+W6aTXYxhHQNZM8pJdkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6289
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMzo0MCBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
MS8zXSBkcm0vaTkxNS9jZGNsazogRml4IENEQ0xLIHByb2dyYW1taW5nIG9yZGVyIHdoZW4NCj4g
cGlwZXMgYXJlIGFjdGl2ZQ0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJq
YWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IEN1cnJlbnRseSB3ZSBhbHdheXMgcmVwcm9ncmFt
IENEQ0xLIGZyb20gdGhlDQo+IGludGVsX3NldF9jZGNsa19wcmVfcGxhbmVfdXBkYXRlKCkgd2hl
biB1c2luZyBzcXVhaHMvY3Jhd2wuDQoNCk5pdHBpY2s6IFR5cG8gaW4gc3F1YXNoDQoNCkNoYW5n
ZSBMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQoNCj4gVGhlIGNvZGUgb25seSB3b3JrcyBjb3JyZWN0bHkgZm9yIHRoZSBj
ZDJ4IHVwZGF0ZSBvciBmdWxsIG1vZGVzZXQgY2FzZXMsIGFuZCBpdA0KPiB3YXMgc2ltcGx5IG5l
dmVyIHVwZGF0ZWQgdG8gZGVhbCB3aXRoIHNxdWFzaC9jcmF3bC4NCj4gDQo+IElmIHRoZSBDRENM
SyBmcmVxdWVuY3kgaXMgaW5jcmVhc2luZyB3ZSBtdXN0IHJlcHJvZ3JhbSBpdCBiZWZvcmUgd2Ug
ZG8gYW55dGhpbmcNCj4gZWxzZSB0aGF0IG1pZ2h0IGRlcGVuZCBvbiB0aGUgbmV3IGhpZ2hlciBm
cmVxdWVuY3ksIGFuZCBjb252ZXJzZWx5IHdlIG11c3Qgbm90DQo+IGRlY3JlYXNlIHRoZSBmcmVx
dWVuY3kgdW50aWwgZXZlcnl0aGluZyB0aGF0IG1pZ2h0IHN0aWxsIGRlcGVuZCBvbiB0aGUgb2xk
IGhpZ2hlcg0KPiBmcmVxdWVuY3kgaGFzIGJlZW4gZGVhbHQgd2l0aC4NCj4gDQo+IFNpbmNlIGNk
Y2xrX3N0YXRlLT5waXBlIGlzIG9ubHkgcmVsZXZhbnQgd2hlbiBkb2luZyBhIGNkMnggdXBkYXRl
IHdlIGNhbid0IHVzZSBpdA0KPiB0byBkZXRlcm1pbmUgdGhlIGNvcnJlY3Qgc2VxdWVuY2UgZHVy
aW5nIHNxdWFzaC9jcmF3bC4gVG8gdGhhdCBlbmQgaW50cm9kdWNlDQo+IGNkY2xrX3N0YXRlLT5k
aXNhYmxlX3BpcGVzIHdoaWNoIHNpbXBseSBpbmRpY2F0ZXMgdGhhdCB3ZSBtdXN0IHBlcmZvcm0g
dGhlDQo+IHVwZGF0ZSB3aGlsZSB0aGUgcGlwZXMgYXJlIGRpc2FibGUgKGllLiBkdXJpbmcNCj4g
aW50ZWxfc2V0X2NkY2xrX3ByZV9wbGFuZV91cGRhdGUoKSkuIE90aGVyd2lzZSB3ZSB1c2UgdGhl
IHNhbWUgb2xkIHZzLiBuZXcNCj4gQ0RDTEsgZnJlcXVlbmN5IGNvbXBhcnNpb25nIGFzIGZvciBj
ZDJ4IHVwZGF0ZXMuDQo+IA0KPiBUaGUgb25seSByZW1haW5pbmcgcHJvYmxlbSBjYXNlIGlzIHdo
ZW4gdGhlIHZvbHRhZ2VfbGV2ZWwgbmVlZHMgdG8gaW5jcmVhc2UgZHVlDQo+IHRvIGEgRERJIHBv
cnQsIGJ1dCB0aGUgQ0RDTEsgZnJlcXVlbmN5IGlzIGRlY3JlYXNpbmcgKGFuZCBub3QgYWxsIHBp
cGVzIGFyZSBiZWluZw0KPiBkaXNhYmxlZCkuIFRoZSBjdXJyZW50IGFwcHJvYWNoIHdpbGwgbm90
IGJ1bXAgdGhlIHZvbHRhZ2UgbGV2ZWwgdXAgdW50aWwgYWZ0ZXIgdGhlDQo+IHBvcnQgaGFzIGFs
cmVhZHkgYmVlbiBlbmFibGVkLCB3aGljaCBpcyB0b28gbGF0ZS4NCj4gQnV0IHdlJ2xsIHRha2Ug
Y2FyZSBvZiB0aGF0IGNhc2Ugc2VwYXJhdGVseS4NCj4gDQo+IHYyOiBEb24ndCBicmVhayB0aGUg
Im11c3QgZGlzYWJsZSBwaXBlcyBjYXNlIg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMgfCAxNSArKysrKysrKystLS0tLS0N
Cj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oIHwgIDMgKysrDQo+
ICAyIGZpbGVzIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5j
DQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4
IDMxYWFhOTc4MGRmYy4uNjE5NTI5ZGJhMDk1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IEBAIC0yNjAwLDcgKzI2MDAsNiBAQCBpbnRlbF9z
ZXRfY2RjbGtfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSkNCj4gIAkJaW50ZWxfYXRvbWljX2dldF9vbGRfY2RjbGtfc3RhdGUoc3RhdGUpOw0KPiAg
CWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSAqbmV3X2NkY2xrX3N0YXRlID0NCj4gIAkJ
aW50ZWxfYXRvbWljX2dldF9uZXdfY2RjbGtfc3RhdGUoc3RhdGUpOw0KPiAtCWVudW0gcGlwZSBw
aXBlID0gbmV3X2NkY2xrX3N0YXRlLT5waXBlOw0KPiANCj4gIAlpZiAoIWludGVsX2NkY2xrX2No
YW5nZWQoJm9sZF9jZGNsa19zdGF0ZS0+YWN0dWFsLA0KPiAgCQkJCSAmbmV3X2NkY2xrX3N0YXRl
LT5hY3R1YWwpKQ0KPiBAQCAtMjYwOSwxMSArMjYwOCwxMiBAQCBpbnRlbF9zZXRfY2RjbGtfcHJl
X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlp
ZiAoSVNfREcyKGk5MTUpKQ0KPiAgCQlpbnRlbF9jZGNsa19wY29kZV9wcmVfbm90aWZ5KHN0YXRl
KTsNCj4gDQo+IC0JaWYgKHBpcGUgPT0gSU5WQUxJRF9QSVBFIHx8DQo+ICsJaWYgKG5ld19jZGNs
a19zdGF0ZS0+ZGlzYWJsZV9waXBlcyB8fA0KPiAgCSAgICBvbGRfY2RjbGtfc3RhdGUtPmFjdHVh
bC5jZGNsayA8PSBuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsaykgew0KPiAgCQlkcm1fV0FS
Tl9PTigmaTkxNS0+ZHJtLCAhbmV3X2NkY2xrX3N0YXRlLQ0KPiA+YmFzZS5jaGFuZ2VkKTsNCj4g
DQo+IC0JCWludGVsX3NldF9jZGNsayhpOTE1LCAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwsIHBp
cGUpOw0KPiArCQlpbnRlbF9zZXRfY2RjbGsoaTkxNSwgJm5ld19jZGNsa19zdGF0ZS0+YWN0dWFs
LA0KPiArCQkJCW5ld19jZGNsa19zdGF0ZS0+cGlwZSk7DQo+ICAJfQ0KPiAgfQ0KPiANCj4gQEAg
LTI2MzIsNyArMjYzMiw2IEBAIGludGVsX3NldF9jZGNsa19wb3N0X3BsYW5lX3VwZGF0ZShzdHJ1
Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkJaW50ZWxfYXRvbWljX2dldF9v
bGRfY2RjbGtfc3RhdGUoc3RhdGUpOw0KPiAgCWNvbnN0IHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0
ZSAqbmV3X2NkY2xrX3N0YXRlID0NCj4gIAkJaW50ZWxfYXRvbWljX2dldF9uZXdfY2RjbGtfc3Rh
dGUoc3RhdGUpOw0KPiAtCWVudW0gcGlwZSBwaXBlID0gbmV3X2NkY2xrX3N0YXRlLT5waXBlOw0K
PiANCj4gIAlpZiAoIWludGVsX2NkY2xrX2NoYW5nZWQoJm9sZF9jZGNsa19zdGF0ZS0+YWN0dWFs
LA0KPiAgCQkJCSAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwpKQ0KPiBAQCAtMjY0MSwxMSArMjY0
MCwxMiBAQCBpbnRlbF9zZXRfY2RjbGtfcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVs
X2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJaWYgKElTX0RHMihpOTE1KSkNCj4gIAkJaW50ZWxf
Y2RjbGtfcGNvZGVfcG9zdF9ub3RpZnkoc3RhdGUpOw0KPiANCj4gLQlpZiAocGlwZSAhPSBJTlZB
TElEX1BJUEUgJiYNCj4gKwlpZiAoIW5ld19jZGNsa19zdGF0ZS0+ZGlzYWJsZV9waXBlcyAmJg0K
PiAgCSAgICBvbGRfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsayA+IG5ld19jZGNsa19zdGF0ZS0+
YWN0dWFsLmNkY2xrKSB7DQo+ICAJCWRybV9XQVJOX09OKCZpOTE1LT5kcm0sICFuZXdfY2RjbGtf
c3RhdGUtDQo+ID5iYXNlLmNoYW5nZWQpOw0KPiANCj4gLQkJaW50ZWxfc2V0X2NkY2xrKGk5MTUs
ICZuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbCwgcGlwZSk7DQo+ICsJCWludGVsX3NldF9jZGNsayhp
OTE1LCAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwsDQo+ICsJCQkJbmV3X2NkY2xrX3N0YXRlLT5w
aXBlKTsNCj4gIAl9DQo+ICB9DQo+IA0KPiBAQCAtMzEyNCw2ICszMTI0LDcgQEAgc3RhdGljIHN0
cnVjdCBpbnRlbF9nbG9iYWxfc3RhdGUNCj4gKmludGVsX2NkY2xrX2R1cGxpY2F0ZV9zdGF0ZShz
dHJ1Y3QgaW50ZWxfZ2xvYmENCj4gIAkJcmV0dXJuIE5VTEw7DQo+IA0KPiAgCWNkY2xrX3N0YXRl
LT5waXBlID0gSU5WQUxJRF9QSVBFOw0KPiArCWNkY2xrX3N0YXRlLT5kaXNhYmxlX3BpcGVzID0g
ZmFsc2U7DQo+IA0KPiAgCXJldHVybiAmY2RjbGtfc3RhdGUtPmJhc2U7DQo+ICB9DQo+IEBAIC0z
MzE2LDYgKzMzMTcsOCBAQCBpbnQgaW50ZWxfbW9kZXNldF9jYWxjX2NkY2xrKHN0cnVjdA0KPiBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQlpZiAocmV0KQ0KPiAgCQkJcmV0dXJuIHJl
dDsNCj4gDQo+ICsJCW5ld19jZGNsa19zdGF0ZS0+ZGlzYWJsZV9waXBlcyA9IHRydWU7DQo+ICsN
Cj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICAJCQkgICAgIk1vZGVzZXQgcmVx
dWlyZWQgZm9yIGNkY2xrIGNoYW5nZVxuIik7DQo+ICAJfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5oDQo+IGluZGV4IGJjOGY4NmUyOTJkOC4uMjg0M2Zj
MDkxMDg2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2NkY2xrLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNs
ay5oDQo+IEBAIC01Myw2ICs1Myw5IEBAIHN0cnVjdCBpbnRlbF9jZGNsa19zdGF0ZSB7DQo+IA0K
PiAgCS8qIGJpdG1hc2sgb2YgYWN0aXZlIHBpcGVzICovDQo+ICAJdTggYWN0aXZlX3BpcGVzOw0K
PiArDQo+ICsJLyogdXBkYXRlIGNkY2xrIHdpdGggcGlwZXMgZGlzYWJsZWQgKi8NCj4gKwlib29s
IGRpc2FibGVfcGlwZXM7DQo+ICB9Ow0KPiANCj4gIGludCBpbnRlbF9jcnRjX2NvbXB1dGVfbWlu
X2NkY2xrKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gLS0N
Cj4gMi40My4yDQoNCg==
