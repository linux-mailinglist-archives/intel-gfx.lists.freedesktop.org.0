Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03ACD83A50C
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 10:18:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A7CC10F0F7;
	Wed, 24 Jan 2024 09:17:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6A0110F0F7
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 09:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706087861; x=1737623861;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=4kdRwL3fyesAbgDkHAlmV5YWH8w8WNDPJWN9ODREGFM=;
 b=QAQiZEiTomP+Vv42wlttsbN1z/9KN3C7KQOSuibRcKEGm152f7BcF1AK
 ED7gYIjYNC4jjXTMlDxWSh2f3VAoK9nT2ug5cWjFMydsKImasUhuYWnMH
 5nlOtRWem9FXMOrvvsUW8INyWHW3wCSb7jkUmQXtTFHc4CM/JH9ICbmhE
 sZJfvEvuv+JtkFJPiTtU+eDgihQmlTUACLlQ6RcrEJpj4TljyXQrxZFId
 gGXOQvS0TysIgTlEt2VB/i0iBkJ9oaWSJipce9wWdi7io5mS0bojiYATy
 DXk0yVKFVQfxHr9E9WvBJYwwXTBiOnOOU8V85iQq6Ei0WtLiaSyNA5sUV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="15313176"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="15313176"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 01:17:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="820392324"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="820392324"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2024 01:17:33 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 01:17:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 01:17:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 01:17:30 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Jan 2024 01:17:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Phz7LnyYNj+/6Tks5cATxWxggr1ciGJWzBoqYmplF4fUJhFzWp4goUaq+ZVqdzNt7ogekkTBRZ611GWT0SjeVWEdT+DcUd3gW8R1Jpzg3vD+Ntz0JbQzSiJvpWbbwr7fY4bajLCWeKNvuFBOIZJtAAR/HpqM/Imbc6mHTB09pOtC9ybYT+MOb1E9GcxW+7I8k7eHhjg5cdV5Hn65Sxfz1q2ccu8IiibXa/zxhU/pmiMLTX+0ArqC0psI5TOfOZQ/5YvxDh2DMbUXbmMJdRnSZEkAmL34Jtq+pq/WRxEbXkbVgPh3Q2CBLuq0BnaOmbVrsBG9Tbr9iGvs7kKgDqDFxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4kdRwL3fyesAbgDkHAlmV5YWH8w8WNDPJWN9ODREGFM=;
 b=Yltb5bQZ9kJ+f1nSeejaAja5vzODyMNS1dLq55KcDnvoDkxYXgUG5/7IR1Cb9YT/WLSdKm4hbfYGivgudTogt/VQMqFkJScFcHjs+qmGqGnDQNtjVoDbzpZBE1fFeUK4/guC5j4cCxdCoh6JrdEFi8HUCeKit1iVQFvfJP1SPa1GrDZ3/NZqP8OArmitp8Um1TKb93ImcxfdN7lJe3/Ylr7NYqO0IfGmJGnQuHrLNkCmy0nGzqf0S7oA1y1jUt+S79WhoIViq6S/KWBtLIp8m8thMCLtcHxXsRJfvqXhF/zOW4U0Ze1htJwgg8LmajjtRaZVcuIMB+B3FO6wJ7daBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CY8PR11MB7688.namprd11.prod.outlook.com (2603:10b6:930:75::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.22; Wed, 24 Jan
 2024 09:17:28 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::34a4:c9b4:7991:39b5%4]) with mapi id 15.20.7228.022; Wed, 24 Jan 2024
 09:17:28 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 2/4] drm/i915/psr: Add alpm_parameters struct
Thread-Topic: [PATCH v2 2/4] drm/i915/psr: Add alpm_parameters struct
Thread-Index: AQHaP+GoaWtpbLxvg0C0SWF3PBNhsLDonJcg
Date: Wed, 24 Jan 2024 09:17:28 +0000
Message-ID: <IA0PR11MB73072CBB4727F093E9784B18BA7B2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
 <20240105141504.2808991-3-jouni.hogander@intel.com>
In-Reply-To: <20240105141504.2808991-3-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CY8PR11MB7688:EE_
x-ms-office365-filtering-correlation-id: 04dd3fc0-c066-477d-5925-08dc1cbd4989
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MJXaNHhkaV0+G6uX7N4juxhAaKq4clM4wPRPbNgI0TUGWo2T6cuyyw1KbtmDy8QYOrt9xy7rkfMZMUnr/j6pOxupicXRz8djLN49zibiAIlNhKR431/9xNPtLX9+iMcLirjw2AVlapx8YR8SfickgoCgk4rCDEXidOhl7k8Y7TH2wuGH5AON47HMi//kw2wciAtN4p5Sw8Aoqyx0V710DLUGH5DAU6CJo4JmhscgQV/5t6IbsuXGBJLCps7Bd1AkCDh7KXmzCpn8lo2G84biTwqJHvKs4DhHZXKrK1COXxqNlbVy7cK+5amwQVfsJPIQZlJJIdyKynZGrEBoj4qO9OWV0IhyWBF22v5sy8Thp9FB4+9kAL+OUl0kEgeE5qP4QG9F1xqMe06fl8WJekHXefa/taPfATlFIbIQI6gfKPeVo0GykyGXNzKHJH1V3zzvuuoLlLiiqy5esAUcqTp7XCVxwhQDq98WOLiWKQcT8r4VnY7SAXGc0BTzy1mqQp3EJF/j5ShbPwbsgwZfcWSZc9860QLC5EoDfxXCq238g5WIryS5ldSBbuOIYvBjRGEuEaCE4UIVmRkHMfPPWy5wDRNJT3FcEIPXWRh+msSSuhoOW4aqIetc5C49/bsuWjnc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(396003)(376002)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(66574015)(38070700009)(7696005)(122000001)(6506007)(53546011)(41300700001)(33656002)(71200400001)(9686003)(64756008)(8676002)(5660300002)(478600001)(66476007)(66946007)(316002)(66446008)(82960400001)(8936002)(52536014)(110136005)(38100700002)(76116006)(2906002)(66556008)(86362001)(83380400001)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cWFGSis3UzNRUU15aFUxTGhqK3NtOGpVWDVzeEpENERrbGR0eURZQXcvZzFW?=
 =?utf-8?B?UUdFWC9NVFRUN0ZFdnowM1hmLzRTZm16WGpHS0hKR280RVI2WUZFbC91cVph?=
 =?utf-8?B?MHozQ3BYK0tmWjBVNEo2b1NEUDdhUjAxa0I0d05kazRpUTJCclovdUpub01G?=
 =?utf-8?B?MFZLMmxHWGpCWU1uYnV3YVRoRXowZExQM0x1L0xpSmRLWVdTWktETGJ1MjJs?=
 =?utf-8?B?RDB2SzlhZ2lGMGJxZStJR3l4VnhBQUZlRTNrbXFXSm4xK3VJRGxudmtUNWZ3?=
 =?utf-8?B?Z0txNjhKdjlERlZ5bDhjZlVnL3hlZ2MxZE9zRkdjenV6WEtVbmNhNHhuTDlv?=
 =?utf-8?B?VnVsK0JSSnZhVUs1T2wzb2RsQkJqeDRIMXQzYzBRNGwwc1FCTGNTeTM5by9C?=
 =?utf-8?B?MXM3OU8wOWRxNXpsZGt5MXFkS3B5S1RlZllybnMyNU95a2paalpKdHVOTzl6?=
 =?utf-8?B?VUNVYkVxRHVIeC9iYmsxQWlQenZLeXVkOHpJcmhSTnFnUHBUdFBOVnlqdEhk?=
 =?utf-8?B?U2RrTzUwZEVJYkxSc1hPa0dJbFlXT2hkYy9lcjhxaWtnTXJaSk1abFRlVzZV?=
 =?utf-8?B?OWY0SjJ0Y0hCekRjUUhRbXV2Vm5CanplRE9qcDY1VXVNSWwydWkrdnlHdWpw?=
 =?utf-8?B?ZWtGYnpMWG8zSWphVm0zSDQ0YlJqelRxUGpYNHZ0b3NIUDlXbkRYQXBtZUM0?=
 =?utf-8?B?SFRaYUxMWlh2KzRmRzFGbnp6VHZDQy9ZUXlOUHNEUXUyOTR2RWw3ZmlJTnVy?=
 =?utf-8?B?RnpWeWhWTWNiTmx6d3FOaCs2MXZOSGpRdFV1VFIzRmNoK1AwczN0YjU2OWcx?=
 =?utf-8?B?dTI4MmhQVUdBU2l3OVA1TGw5Vmp1Sys3Tm5uT1dja0ZjR0w2SExGNWVFblov?=
 =?utf-8?B?M2tUVS9hTDAwRzk4bGR3WGlXRzVUZVdyT0x4d25tK2FtL3hHNERVc29jTDRp?=
 =?utf-8?B?TWdIOEdwS1V0WXFBQkZ1RVJLNkZFTlFNRFV6NzNFZ2xFOFJTUDErQzZkZ21k?=
 =?utf-8?B?YW1zTUJlQkplaUxlL2lSNXVjSUxoMlpZek85Y0tTMDFQNTlwZFlWUEJHSk1B?=
 =?utf-8?B?eTdBQXNlRmhxczlOc2crZExKZjNxRThySUh4SzYyejYrM293SEhMTklBYThN?=
 =?utf-8?B?SDV4bUVhVUYyalNtV3UrNUhLVU4vQndqYlpoR0FCTDF5V1hBalZ4Z29NTDg4?=
 =?utf-8?B?OSt5S2VxbEhsUTlsVXNVckRLaVU3RkhjUlhtMVptaVRaSDMwTDNDeXQwODZV?=
 =?utf-8?B?d2pmWHBQUlZDQ2NHMmVZMzJHRFg0SWd0K0UxZHVIa0tJcStad25SV0VRZG1t?=
 =?utf-8?B?MDMyVGlGREZadUYxVUgrQW9KVytmSEh2ZHh3ZFo1R1JaU21WVG8wWVJZeDRM?=
 =?utf-8?B?ZkViMC9UczZsY0V2QUY4eFV5bWltbWZCcEo2c0tHU1lsVjF1dW9wekdyM3NV?=
 =?utf-8?B?a3FEdE5mc3Bzc2NTOUl0ZlQ2VnBmNEtHSFBROCtjWlRYMjhPRUJnNElseU9a?=
 =?utf-8?B?Y29tSXlhS0pTMVhwTU9GbWdnUEhFbFZncmRXWnVacTZNZXg1dHFLQ2hHZ1JH?=
 =?utf-8?B?RXBvb0o4cWd4bS82YkI1YWpCMC8zaFRCS1FPS25JajdvOTdkWld0ZGd3UTVz?=
 =?utf-8?B?MEVNa3RWdHNablp5aXFXYXNJaWRzNHdjZmVKUFM2dDF2WDM1Z1hwcTBVWjk3?=
 =?utf-8?B?anZHdC9VTWQ2TFpvM0pINkdpTXNMdFRWdnBpYk1tcHI1YVlWUVVmSHlTR0JE?=
 =?utf-8?B?VmdpZC8xNWJYN1lTZzF4TTZORU1qZG1GN0paendITWFtS1UydkpJZFBucnh2?=
 =?utf-8?B?UDFhaDd3dC9iNnFIWXdzZ0k0b0NTRjQ1dkozU1kydmI5MDNsMVJIbmM3STJt?=
 =?utf-8?B?Q0tpMkVDK09RU0YyOWZMNFYvQUtXVENiNStOY0J2NGRjZkl6TzVPcXJPZWhq?=
 =?utf-8?B?YjlyaGdDMDVXQ0JQUzN5TGxvRUVOdkdlWTNic1FVaEtwVGFPdHV5ZGVncHJv?=
 =?utf-8?B?Uml5WU8zUVdDOEdjTjdiOGc4V3ovbEhpWmhEb2dlWTA0RU5FTTNQdnE2Y29V?=
 =?utf-8?B?RW9PZmlvT0hWU1V5YnlGSFhTRWZUZGdjcFppYnVJMGJqT24yL1JVVURBRFd0?=
 =?utf-8?B?WEFjSzNZZkxYOStqY29RamFEdWpWZkUra2VGS3hvMGNzUEdHMDNFUG0xSkFX?=
 =?utf-8?Q?outNCeMn/A3HvAF+btTkkAmFMTFY/cr3cv/wXb2X2MhL?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 04dd3fc0-c066-477d-5925-08dc1cbd4989
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2024 09:17:28.7840 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3IEFGipzTUGpos0aVACd3/itewheaspZL172FUNXSCWxj4dnKfhUtAz9Cw0T93trD/stsZ94PDxJ/vDtXOglBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7688
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogRnJpZGF5LCBKYW51YXJ5IDUsIDIwMjQgNzo0NSBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0ggdjIg
Mi80XSBkcm0vaTkxNS9wc3I6IEFkZCBhbHBtX3BhcmFtZXRlcnMgc3RydWN0DQo+IA0KPiBBZGQg
bmV3IGFscG1fcGFyYW1ldGVycyBzdHJ1Y3QgaW50byBpbnRlbF9wc3IgZm9yIGFsbCBjYWxjdWxh
dGVkIGFscG0NCj4gcGFyYW1ldGVycy4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICA4ICsrKystLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyAgICAgIHwgMjggKysrKysrKysrKy0tLS0t
LS0tLQ0KPiAgMiBmaWxlcyBjaGFuZ2VkLCAyMSBpbnNlcnRpb25zKCspLCAxNSBkZWxldGlvbnMo
LSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2Rpc3BsYXlfdHlwZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IGluZGV4IGI5YjlkOWYyYmMwYi4uODg5YThiMzRiN2FjIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlf
dHlwZXMuaA0KPiBAQCAtMTY3Nyw2ICsxNjc3LDExIEBAIHN0cnVjdCBpbnRlbF9wcHMgew0KPiAg
CXN0cnVjdCBlZHBfcG93ZXJfc2VxIGJpb3NfcHBzX2RlbGF5czsNCj4gIH07DQo+IA0KPiArc3Ry
dWN0IGFscG1fcGFyYW1ldGVycyB7DQo+ICsJdTggaW9fd2FrZV9saW5lczsNCj4gKwl1OCBmYXN0
X3dha2VfbGluZXM7DQo+ICt9Ow0KQXNzdW1lIHRoYXQgdGhpcyBpcyBiZWluZyB1c2VkIGluIFBT
UiBhcyB3ZWxsIGFuZCBjYW4gYmUgcmV0YWluZWQgaW4gaW50ZWxfcHNyIHN0cnVjdC4NCklmIGV4
Y2x1c2l2ZWx5IHVzZWQgZm9yIGFscG0gdGhlbiBoYXZpbmcgaXQgaW4gYSBuZXcgYWxwbSBzdHJ1
Y3Qgd291bGQgYmUgYmV0dGVyLg0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5
DQotLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICsNCj4gIHN0cnVjdCBpbnRlbF9wc3Igew0KPiAgCS8q
IE11dGV4IGZvciBQU1Igc3RhdGUgb2YgdGhlIHRyYW5zY29kZXIgKi8NCj4gIAlzdHJ1Y3QgbXV0
ZXggbG9jazsNCj4gQEAgLTE3MDYsOCArMTcxMSw2IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiAg
CWJvb2wgcHNyMl9zZWxfZmV0Y2hfY2ZmX2VuYWJsZWQ7DQo+ICAJYm9vbCByZXFfcHNyMl9zZHBf
cHJpb3Jfc2NhbmxpbmU7DQo+ICAJdTggc2lua19zeW5jX2xhdGVuY3k7DQo+IC0JdTggaW9fd2Fr
ZV9saW5lczsNCj4gLQl1OCBmYXN0X3dha2VfbGluZXM7DQo+ICAJa3RpbWVfdCBsYXN0X2VudHJ5
X2F0dGVtcHQ7DQo+ICAJa3RpbWVfdCBsYXN0X2V4aXQ7DQo+ICAJYm9vbCBzaW5rX25vdF9yZWxp
YWJsZTsNCj4gQEAgLTE3MjEsNiArMTcyNCw3IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiAgCXUz
MiBkYzNjb19leGl0X2RlbGF5Ow0KPiAgCXN0cnVjdCBkZWxheWVkX3dvcmsgZGMzY29fd29yazsN
Cj4gIAl1OCBlbnRyeV9zZXR1cF9mcmFtZXM7DQo+ICsJc3RydWN0IGFscG1fcGFyYW1ldGVycyBh
bHBtX3BhcmFtczsNCj4gIH07DQo+IA0KPiAgc3RydWN0IGludGVsX2RwIHsNCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDU0MTIwYjQ1OTU4Yi4u
MTcwOWViYjMxMjE1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gQEAgLTc1OSw4ICs3NTksOCBAQCBzdGF0aWMgdTMyIGludGVsX3BzcjJfZ2V0X3Rw
X3RpbWUoc3RydWN0IGludGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gDQo+ICBzdGF0aWMgaW50IHBz
cjJfYmxvY2tfY291bnRfbGluZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHsNCj4gLQly
ZXR1cm4gaW50ZWxfZHAtPnBzci5pb193YWtlX2xpbmVzIDwgOSAmJg0KPiAtCQlpbnRlbF9kcC0+
cHNyLmZhc3Rfd2FrZV9saW5lcyA8IDkgPyA4IDogMTI7DQo+ICsJcmV0dXJuIGludGVsX2RwLT5w
c3IuYWxwbV9wYXJhbXMuaW9fd2FrZV9saW5lcyA8IDkgJiYNCj4gKwkJaW50ZWxfZHAtPnBzci5h
bHBtX3BhcmFtcy5mYXN0X3dha2VfbGluZXMgPCA5ID8gOCA6IDEyOw0KPiAgfQ0KPiANCj4gIHN0
YXRpYyBpbnQgcHNyMl9ibG9ja19jb3VudChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSBAQCAt
Nzk3LDYgKzc5Nyw3IEBADQo+IHN0YXRpYyB2b2lkIGRnMl9hY3RpdmF0ZV9wYW5lbF9yZXBsYXko
c3RydWN0IGludGVsX2RwICppbnRlbF9kcCkgIHN0YXRpYyB2b2lkDQo+IGhzd19hY3RpdmF0ZV9w
c3IyKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7DQo+ICsJc3RydWN0IGFscG1f
cGFyYW1ldGVycyAqYWxwbV9wYXJhbXMgPSAmaW50ZWxfZHAtPnBzci5hbHBtX3BhcmFtczsNCj4g
IAllbnVtIHRyYW5zY29kZXIgY3B1X3RyYW5zY29kZXIgPSBpbnRlbF9kcC0+cHNyLnRyYW5zY29k
ZXI7DQo+ICAJdTMyIHZhbCA9IEVEUF9QU1IyX0VOQUJMRTsNCj4gIAl1MzIgcHNyX3ZhbCA9IDA7
DQo+IEBAIC04MzgsMTcgKzgzOSwxNyBAQCBzdGF0aWMgdm9pZCBoc3dfYWN0aXZhdGVfcHNyMihz
dHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCQkgKi8NCj4gIAkJaW50IHRtcDsNCj4g
DQo+IC0JCXRtcCA9IG1hcFtpbnRlbF9kcC0+cHNyLmlvX3dha2VfbGluZXMgLQ0KPiBUR0xfRURQ
X1BTUjJfSU9fQlVGRkVSX1dBS0VfTUlOX0xJTkVTXTsNCj4gKwkJdG1wID0gbWFwW2FscG1fcGFy
YW1zLT5pb193YWtlX2xpbmVzIC0NCj4gK1RHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FLRV9NSU5f
TElORVNdOw0KPiAgCQl2YWwgfD0gVEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFKHRtcCArDQo+
IFRHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FLRV9NSU5fTElORVMpOw0KPiANCj4gLQkJdG1wID0g
bWFwW2ludGVsX2RwLT5wc3IuZmFzdF93YWtlX2xpbmVzIC0NCj4gVEdMX0VEUF9QU1IyX0ZBU1Rf
V0FLRV9NSU5fTElORVNdOw0KPiArCQl0bXAgPSBtYXBbYWxwbV9wYXJhbXMtPmZhc3Rfd2FrZV9s
aW5lcyAtDQo+ICtUR0xfRURQX1BTUjJfRkFTVF9XQUtFX01JTl9MSU5FU107DQo+ICAJCXZhbCB8
PSBUR0xfRURQX1BTUjJfRkFTVF9XQUtFKHRtcCArDQo+IFRHTF9FRFBfUFNSMl9GQVNUX1dBS0Vf
TUlOX0xJTkVTKTsNCj4gIAl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSAxMikg
ew0KPiAtCQl2YWwgfD0gVEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFKGludGVsX2RwLQ0KPiA+
cHNyLmlvX3dha2VfbGluZXMpOw0KPiAtCQl2YWwgfD0gVEdMX0VEUF9QU1IyX0ZBU1RfV0FLRShp
bnRlbF9kcC0NCj4gPnBzci5mYXN0X3dha2VfbGluZXMpOw0KPiArCQl2YWwgfD0gVEdMX0VEUF9Q
U1IyX0lPX0JVRkZFUl9XQUtFKGFscG1fcGFyYW1zLQ0KPiA+aW9fd2FrZV9saW5lcyk7DQo+ICsJ
CXZhbCB8PSBUR0xfRURQX1BTUjJfRkFTVF9XQUtFKGFscG1fcGFyYW1zLQ0KPiA+ZmFzdF93YWtl
X2xpbmVzKTsNCj4gIAl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA5KSB7DQo+
IC0JCXZhbCB8PSBFRFBfUFNSMl9JT19CVUZGRVJfV0FLRShpbnRlbF9kcC0NCj4gPnBzci5pb193
YWtlX2xpbmVzKTsNCj4gLQkJdmFsIHw9IEVEUF9QU1IyX0ZBU1RfV0FLRShpbnRlbF9kcC0+cHNy
LmZhc3Rfd2FrZV9saW5lcyk7DQo+ICsJCXZhbCB8PSBFRFBfUFNSMl9JT19CVUZGRVJfV0FLRShh
bHBtX3BhcmFtcy0NCj4gPmlvX3dha2VfbGluZXMpOw0KPiArCQl2YWwgfD0gRURQX1BTUjJfRkFT
VF9XQUtFKGFscG1fcGFyYW1zLT5mYXN0X3dha2VfbGluZXMpOw0KPiAgCX0NCj4gDQo+ICAJaWYg
KGludGVsX2RwLT5wc3IucmVxX3BzcjJfc2RwX3ByaW9yX3NjYW5saW5lKQ0KPiBAQCAtMTA5OCwx
MCArMTA5OSwxMSBAQCBzdGF0aWMgYm9vbA0KPiBfY29tcHV0ZV9wc3IyX3NkcF9wcmlvcl9zY2Fu
bGluZV9pbmRpY2F0aW9uKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZA0KPiAgCXJldHVybiB0cnVl
Ow0KPiAgfQ0KPiANCj4gLXN0YXRpYyBib29sIF9jb21wdXRlX3BzcjJfd2FrZV90aW1lcyhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAtCQkJCSAgICAgc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUpDQo+ICtzdGF0aWMgYm9vbCBfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiArCQkJCSBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
Y3J0Y19zdGF0ZSkNCj4gIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRw
X3RvX2k5MTUoaW50ZWxfZHApOw0KPiArCXN0cnVjdCBhbHBtX3BhcmFtZXRlcnMgKmFscG1fcGFy
YW1zID0gJmludGVsX2RwLT5wc3IuYWxwbV9wYXJhbXM7DQo+ICAJaW50IGlvX3dha2VfbGluZXMs
IGlvX3dha2VfdGltZSwgZmFzdF93YWtlX2xpbmVzLCBmYXN0X3dha2VfdGltZTsNCj4gIAl1OCBt
YXhfd2FrZV9saW5lczsNCj4gDQo+IEBAIC0xMTMyLDggKzExMzQsOCBAQCBzdGF0aWMgYm9vbCBf
Y29tcHV0ZV9wc3IyX3dha2VfdGltZXMoc3RydWN0DQo+IGludGVsX2RwICppbnRlbF9kcCwNCj4g
IAkJaW9fd2FrZV9saW5lcyA9IGZhc3Rfd2FrZV9saW5lcyA9IG1heF93YWtlX2xpbmVzOw0KPiAN
Cj4gIAkvKiBBY2NvcmRpbmcgdG8gQnNwZWMgbG93ZXIgbGltaXQgc2hvdWxkIGJlIHNldCBhcyA3
IGxpbmVzLiAqLw0KPiAtCWludGVsX2RwLT5wc3IuaW9fd2FrZV9saW5lcyA9IG1heChpb193YWtl
X2xpbmVzLCA3KTsNCj4gLQlpbnRlbF9kcC0+cHNyLmZhc3Rfd2FrZV9saW5lcyA9IG1heChmYXN0
X3dha2VfbGluZXMsIDcpOw0KPiArCWFscG1fcGFyYW1zLT5pb193YWtlX2xpbmVzID0gbWF4KGlv
X3dha2VfbGluZXMsIDcpOw0KPiArCWFscG1fcGFyYW1zLT5mYXN0X3dha2VfbGluZXMgPSBtYXgo
ZmFzdF93YWtlX2xpbmVzLCA3KTsNCj4gDQo+ICAJcmV0dXJuIHRydWU7DQo+ICB9DQo+IEBAIC0x
MjY1LDcgKzEyNjcsNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9wc3IyX2NvbmZpZ192YWxpZChzdHJ1
Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwLA0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiAN
Cj4gLQlpZiAoIV9jb21wdXRlX3BzcjJfd2FrZV90aW1lcyhpbnRlbF9kcCwgY3J0Y19zdGF0ZSkp
IHsNCj4gKwlpZiAoIV9jb21wdXRlX2FscG1fcGFyYW1zKGludGVsX2RwLCBjcnRjX3N0YXRlKSkg
ew0KPiAgCQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwNCj4gIAkJCSAgICAiUFNSMiBub3Qg
ZW5hYmxlZCwgVW5hYmxlIHRvIHVzZSBsb25nIGVub3VnaCB3YWtlDQo+IHRpbWVzXG4iKTsNCj4g
IAkJcmV0dXJuIGZhbHNlOw0KPiAtLQ0KPiAyLjM0LjENCg0K
