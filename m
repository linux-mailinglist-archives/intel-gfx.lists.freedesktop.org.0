Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BC3F9835D33
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jan 2024 09:52:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 566AB10EB7A;
	Mon, 22 Jan 2024 08:52:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C066110EB98
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jan 2024 08:51:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705913519; x=1737449519;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mp6O19jGBjrZU5FaWZjMr4HzSOJSMOIWskZeHiaCrU0=;
 b=CgECmQj3JezB2L9yv/OXpehQk11MWtxHldzesCassjjzWkbRNB6ENS0D
 58af3N+lTdqfVjbM1W7lXp9GbHtMAbZP8665RC8aFfqcDjj7Mp3SKxJY8
 irdKuODP72utApivnn7VmZbGkD9M0PdT5q7PqscifGOViHcsZeQ5l+vPD
 4v393oSrxGUuRwuMOqxrZjiUYKy8E1jvbisorvHQAdtWne5YUGfi+ifA3
 BeQIPBdUc0ReXK49dED/l7G3G5ZJq44SqzvIH4+4whKLkEGzmyNY7kuTf
 gapTGZ/sgwfMHSUFUmhzjrkKOYK7zIQELOtKQvyUInnhwg99RSVGo8OiJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10960"; a="22629799"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="22629799"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2024 00:51:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10960"; a="1116793844"
X-IronPort-AV: E=Sophos;i="6.05,211,1701158400"; d="scan'208";a="1116793844"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2024 00:50:50 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 00:50:49 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 22 Jan 2024 00:50:48 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 22 Jan 2024 00:50:48 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 22 Jan 2024 00:50:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WMr/qxRM7/iSIX6giTpJIZGP+R+GO6jTf2CMXB6CT/txM+W/l4Cf9p8qF+S0s/E/Ida6/vJExgwdYBa59Jc7y4V3jAlBrDrxJ8G+8WTrTBNZkQ2RwfN72GJzt8AYV2PzslSqFU9NCtZq7bu2G0qTRg9LavOnPdKWd7kKCUPQXOIHYsrRw3vYQRulzRwyH/DyYFqpIZzytR45FRxnVwNh2xbClIuWKgDt92cBdZrCEOff+8ZaTDdm6vVuWj1uEDzGXvPuZ1DkcfRddngkCFWUtQ3qo1nV1zpjnSXwkH+/dinc3Wx1ZnjT9ItV9tIYN2ObvtKFdkarA42zwiawFdJwCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mp6O19jGBjrZU5FaWZjMr4HzSOJSMOIWskZeHiaCrU0=;
 b=JuaFrT0dfjFe/7VO8kCWh0q5imxuxQHFZ3N1A8GCg8kSHhT6NXSUgi1kUqC8sY+yK+2scHOa7rr+dclnxTBHQXCJcOlv3y/XyUSZe6IF/BNYTd39J80ZY33Au1c0QgkoHh5oyLwN0l3B+zd904wfiVuk2sQnI5OabBUZg0O7BZ/VShHp6iLL7rL72hBw0+Yjo93wDKHh++gDAEg3eoCT6DIK1q7sQIxnKgHETIUgG0vBpoeVzXc9hMQx6/sIIixrwltMBNjyMt258NyXENV5tcBs0dXhrTX29ycEv/WBxomCmRR72PP+U/i48ubPQ/X38T70Fs6SelswToEWt5DVfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by DM6PR11MB4515.namprd11.prod.outlook.com (2603:10b6:5:2a9::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.34; Mon, 22 Jan
 2024 08:50:46 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::f1c4:e34a:54f7:233e]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::f1c4:e34a:54f7:233e%7]) with mapi id 15.20.7202.027; Mon, 22 Jan 2024
 08:50:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: Try to preserve the current shared_dpll for
 fastset on type-c ports
Thread-Topic: [PATCH] drm/i915: Try to preserve the current shared_dpll for
 fastset on type-c ports
Thread-Index: AQHaShoXqNGWps+5Ck2rSI2EvFaLI7Dlixsw
Date: Mon, 22 Jan 2024 08:50:46 +0000
Message-ID: <SN7PR11MB6750086D0923AAE3C0356894E3752@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20240118142436.25928-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20240118142436.25928-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|DM6PR11MB4515:EE_
x-ms-office365-filtering-correlation-id: f5a9b7d7-1d76-42cb-d739-08dc1b2739ac
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: f+5IWAG6RFfRefotWCbGaabHkwvJOiAM7iBVFWtMxRR1IC9x8K/+u9avwJTw7eRw8crZrimnVU0wJMZM1W/YxizAhNce8MOAc8dSaASibdBulvX7zaLxhxLNbApaaSpq5rRF2aZtyVk/ro9dR7iFHYJEv1176RDZf4VgLfIQTaFE1nh8ecNpTcydpO9TefML+9eqcIH1UpqogNCiSl96LYkBaRjc8xFAXzErThNLdN50eQW5o8ONAQawDGix3NF7cirFOvmmzcfVOCoF8iUgDxVluPMmCDMgOK4tBYMGxCStRyYFmmeSre6SVR/5Ls8Lm2hRBRWGqtn/d9dJfSS7nruiK0lyPTWxwBNUQUYLa09JWwKHfqlSIiDakfkMKoDme4DcLDCZjJ2KimYa9CTITVGFw7hkoFBRIj04avN/O51LsGq9qKAj/r8XXN72/9BOgoatTchXGJ1vc26pOsgJjJo9iXILMHCzYYGAy7ZPcRT/yfn9/wTzJevqqF83u3vETBfwT9B5LU04hDzSUU/3jH5tgt3Mhp1ttQ8I9MAubI3i9lVjDctjjmjdnHxc6ZGP0GrObsA8e1kMWx1X6sS2fgv6303sAm2OF28o9JmNlscdFXj2ykZCKZ4O6LDxMZSM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(346002)(396003)(39860400002)(366004)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(71200400001)(478600001)(38100700002)(82960400001)(122000001)(55016003)(76116006)(26005)(66574015)(83380400001)(9686003)(7696005)(6506007)(33656002)(316002)(86362001)(5660300002)(64756008)(2906002)(8936002)(8676002)(4326008)(52536014)(66446008)(110136005)(38070700009)(66476007)(66946007)(66556008)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2NCajQ0S2VIVHF3RDY0TndLRW82Ymp4OVRyWElQc2xwUlhkamh2OVhPMjRV?=
 =?utf-8?B?cml2NTM3QTJCVER1c2Y3dTcvTEdEVGZmQnZ6MmxDK216NVJpbnc2UndDdVJw?=
 =?utf-8?B?dDhCMHRqYjdLN1hERDJtUjdwVkFscnppQ3oreTJQRjUxbisrKy93c3E3OG4y?=
 =?utf-8?B?cU51ZXlySU9PL3l0d28yb2tJektmajNST1lDVW9FaUplaDRFWnJEZ2dLRTFC?=
 =?utf-8?B?VXdic29IVGpLWm1LU0NSRVhmK1NFbkxIVGRrRFRIQWlkMVpCem5SalphekRj?=
 =?utf-8?B?K3BnTnVGQjNKcUJueWtUN2ZjVXkrbFF6WE4raHNCbXQydXRQakVTaVB3UjBQ?=
 =?utf-8?B?Z0VqZlZRWUNEa2puSmVrUTFHdUFqOUxSY1N4NDJ5Snh4QUZtTi9DOCtBcVVV?=
 =?utf-8?B?NEpKb0cvZmxnSzBGYk5wbXpYcG04MjBjQVpObktxMkF6OVdLRWlPNVJ2LzMx?=
 =?utf-8?B?cnFRVys4cXV6OUowSi9mVnZuNlV5NEQyY0xYVVdEeWo4MFRCeUYycXZ0Uk5X?=
 =?utf-8?B?MUJ0SmJ6Q0pNaFNDVHNkV295WTlwTGlTYWcyb1ZQSlN0eTluUkVXeUlUV0dH?=
 =?utf-8?B?dXY1aW5wU1BZdmxtRjhhU2s3dnI1RWc5SUdTbWJWREdSVGxpQjBnQkZ5Tkth?=
 =?utf-8?B?Z2RMNmZLSUhkVGFaQVRWWkFLYXJLVEI5cElPZ3F3UkJ4ZlUxOFNDZ3JGSDYv?=
 =?utf-8?B?bFlmeVJPR2IzUDZwc09DajdjZFN0bXZQZG9Ma1lQOU9Jam91b0FGT1FUZWtE?=
 =?utf-8?B?TjNmYXFBcXYra0RTdVFtRUxmZC82aWlNZ2g0dlRQdWxHUXk1WGZJSVJEa1ZK?=
 =?utf-8?B?N1lraWdReHpGYjhXcUlwUzlTYzdXVTdOZlY2VkxacUJQYy9aY0RuamVteThF?=
 =?utf-8?B?SHFvRytmcWxiOUJWdTlWbWhmYnptZEJuVkd1Y0YvQkdpc1dDc0tMalM3aFlB?=
 =?utf-8?B?OXVvWTBaMUF6eXB1VGlhWVNIT200UUtNWUhqVGgrbSs1MEtaSzNIR0Q1WTNk?=
 =?utf-8?B?YnRVaG1xeGljb2lqZDhRTlRpMGlPbFJtanVDSk1Lb1Nsa3VoanhNQ2xPWWFZ?=
 =?utf-8?B?ckpWb1BWN3JxUWwvQmtSOXhqemFmeHhHOHQ0RGp2RXR3cThuYWNjSmpnRDdK?=
 =?utf-8?B?dk80TzY1ZWtvYlpWb2JOTVh5NG1CQ2J1bG9aYmFpMzA2TEwwU3VCY2xsTHVv?=
 =?utf-8?B?S28rSjRmdkhIUlVBc3ZqRWFyd016ZnFFeXRBKzc5Y1hmZG0vM3pYejdLZzhW?=
 =?utf-8?B?M1V5anRqSHRSVzlMTlhkdkhrbjRWakcvM0lBYTN5SEQ3ZGlTZ2FQTFd3ZFd2?=
 =?utf-8?B?ZG0yQkdMTzRXQ3hLWUg1VzV1TjB6K1JZM21iSEFjeDJObDFsKzRMalFMK0lo?=
 =?utf-8?B?REc3aVRzcTJienorOGx0eG4wdFJhVDk5Q1RGSi9YUHJxYVNmQ1p5WFpYS1ZO?=
 =?utf-8?B?SGJKRi9iUzR3RGhHQTJQeHhFWXV6S1B2SUtXMlpGajRVY2JWUzl5K3RHdnNP?=
 =?utf-8?B?ZE81QmQ4QSsraXRybGFhV1VCMjZxbUgvYmpZQVZFdGRlaE9CVVRZRG1VMFJR?=
 =?utf-8?B?KzVzTEs0dnJ2cGVpM0ZHQ0tOSGV1NWdmRjV1c1pYT200MkMwajdTUGhnWkpR?=
 =?utf-8?B?NkNNUkRiWTg2bXl3NzBHMGgvWlNoR1ZJOE1XVmhHZGd2NC9hN0lQclpHWjhy?=
 =?utf-8?B?elhQMmlOUlhRNGJrd3JmQmxPVWpzMGROWTl6aTd5aGFEeW4xVGdCOEJiVVpK?=
 =?utf-8?B?aFdReFBMd3ZpL3QyQWx1RkppTWthNFlUbjNSQTdWcDVpYWV6T3NGTUZnQnpq?=
 =?utf-8?B?azQyaWJ5VWZSM3FFbWZ0aHEvN0kyY0VFeUpvVGp5WlZFMUNXTFZ6N3psV2x4?=
 =?utf-8?B?b0hBSytzcXRNN29VWGpBR2xKeUpsbzUvOGhsa3k3NSs3SWtic3VVU3k3cGtK?=
 =?utf-8?B?UlNSN2NoT0hOT2x2eTlGdkdJR052eTR4VmpvK0JscE1uUTFBSkN1ajB4OVR5?=
 =?utf-8?B?elFFckRtUHNhWkVYV2M4M3djWDdGWmViRWFlaXFVWnFKTUZ0aVhFa1ozU1o0?=
 =?utf-8?B?N0dVdmsvMytMMVJMWTZIZEtYaEFaWFowbWxrM0hmQnRHTkdTdHFyMENKTEsv?=
 =?utf-8?Q?ZoAd5kIc7sdYeMuJQ6pRUiNts?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f5a9b7d7-1d76-42cb-d739-08dc1b2739ac
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jan 2024 08:50:46.4742 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9c6s/nm2j/sKYxp5gU0/+yuSMgsmjkCZZTMhfWlg3pI4Ch62Jsr9wet4vX0JTqoWD/IBixW5Bp6xA8InqC/ZeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4515
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

PiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1OiBUcnkgdG8gcHJlc2VydmUgdGhlIGN1cnJlbnQg
c2hhcmVkX2RwbGwgZm9yIGZhc3RzZXQNCj4gb24gdHlwZS1jIHBvcnRzDQo+IA0KPiBGcm9tOiBW
aWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gQ3Vy
cmVudGx5IGljbF9jb21wdXRlX3RjX3BoeV9kcGxscygpIGFzc3VtZXMgdGhhdCB0aGUgYWN0aXZl
IFBMTCB3aWxsIGJlIHRoZQ0KPiBUQyBQTEwgKGFzIG9wcG9zZWQgdG8gdGhlIFRCVCBQTEwpLiBU
aGUgYWN0dWFsIFBMTCB3aWxsIGJlIHNlbGVjdGVkIGR1cmluZyB0aGUNCj4gbW9kZXNldCBlbmFi
bGUgc2VxdWVuY2UsIGJ1dCB3ZSBuZWVkIHRvIHB1dCAqc29tZXRoaW5nKiBpbnRvIHRoZQ0KPiBj
cnRjX3N0YXRlLT5zaGFyZWRfZHBsbCBhbHJlYWR5IGR1cmluZyBjb21wdXRlX2NvbmZpZygpLg0K
PiANCj4gVGhlIGRvd25zaWRlIG9mIGFzc3VtaW5nIG9uZSBQTEwgb3IgdGhlIG90aGVyIGlzIHRo
YXQgd2UnbGwgZmFpbCB0byBmYXN0c2V0IGlmIHRoZQ0KPiBhc3N1bXB0aW9uIGRvZXNuJ3QgbWF0
Y2ggd2hhdCB3YXMgaW4gdXNlIHByZXZpb3VzbHkuIFNvIGxldCdzIGluc3RlYWQga2VlcA0KPiB0
aGUgc2FtZSBQTEwgdGhhdCB3YXMgaW4gdXNlIHByZXZpb3VzbHkgKGFzc3VtaW5nIHRoZXJlIHdh
cyBvbmUpLiBUaGlzIHNob3VsZA0KPiBhbGxvdyBmYXN0c2V0IHRvIHdvcmsgYWdhaW4gd2hlbiB1
c2luZyBUQlQgUExMLCBhdCBsZWFzdCBpbiB0aGUgc3RlYWR5IHN0YXRlLg0KPiANCj4gTm93LCBh
c3N1bWluZyB3ZSB3YW50IGtlZXAgdGhlIHNhbWUgUExMIG1heSBub3QgYmUgZW50aXJlbHkgY29y
cmVjdCBlaXRoZXIuDQo+IEJ1dCB3ZSBzaG91bGQgYmUgY292ZXJlZCBieSB0aGUgdHlwLWMgbGlu
ayByZXNldCBoYW5kbGluZyB3aGljaCB3aWxsIGZvcmNlIGEgZnVsbA0KDQpTbWFsbCB0eXBvICp0
eXBlLWMNCg0KPiBtb2Rlc2V0IGJ5IGZsYWdnaW5nIGNvbm5lY3RvcnNfY2hhbmdlZD10cnVlIHdo
aWNoIG1lYW5zIHRoZSByZXN1bHRpbmcNCj4gbW9kZXNldCBjYW4ndCBiZSBjb252ZXJ0ZWQgaW50
byBhIGZhc3RzZXQgZXZlbiBpZiB0aGUgZnVsbCBjcnRjIHN0YXRlIGxvb2tzDQo+IGlkZW50aWNh
bC4NCj4gDQo+IENjOiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+IENjOiBTdXJh
aiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KTEdUTS4NClNp
Z25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jIHwg
OCArKysrKysrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlv
bigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHBsbF9tZ3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBs
bF9tZ3IuYw0KPiBpbmRleCBlZjU3ZGFkMWE5Y2IuLjEwMDhlMTgxNzdjOSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiBAQCAtMzMw
OCw2ICszMzA4LDggQEAgc3RhdGljIGludCBpY2xfY29tcHV0ZV90Y19waHlfZHBsbHMoc3RydWN0
DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ICAJc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0
YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqb2xk
X2NydGNfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X29sZF9jcnRjX3N0YXRlKHN0YXRl
LCBjcnRjKTsNCj4gIAlzdHJ1Y3QgaWNsX3BvcnRfZHBsbCAqcG9ydF9kcGxsID0NCj4gIAkJJmNy
dGNfc3RhdGUtPmljbF9wb3J0X2RwbGxzW0lDTF9QT1JUX0RQTExfREVGQVVMVF07DQo+ICAJc3Ry
dWN0IHNrbF93cnBsbF9wYXJhbXMgcGxsX3BhcmFtcyA9IHt9OyBAQCAtMzMyNiw3ICszMzI4LDEx
IEBADQo+IHN0YXRpYyBpbnQgaWNsX2NvbXB1dGVfdGNfcGh5X2RwbGxzKHN0cnVjdCBpbnRlbF9h
dG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCQlyZXR1cm4gcmV0Ow0KPiANCj4gIAkvKiB0aGlzIGlz
IG1haW5seSBmb3IgdGhlIGZhc3RzZXQgY2hlY2sgKi8NCj4gLQlpY2xfc2V0X2FjdGl2ZV9wb3J0
X2RwbGwoY3J0Y19zdGF0ZSwgSUNMX1BPUlRfRFBMTF9NR19QSFkpOw0KPiArCWlmIChvbGRfY3J0
Y19zdGF0ZS0+c2hhcmVkX2RwbGwgJiYNCj4gKwkgICAgb2xkX2NydGNfc3RhdGUtPnNoYXJlZF9k
cGxsLT5pbmZvLT5pZCA9PSBEUExMX0lEX0lDTF9UQlRQTEwpDQo+ICsJCWljbF9zZXRfYWN0aXZl
X3BvcnRfZHBsbChjcnRjX3N0YXRlLCBJQ0xfUE9SVF9EUExMX0RFRkFVTFQpOw0KPiArCWVsc2UN
Cj4gKwkJaWNsX3NldF9hY3RpdmVfcG9ydF9kcGxsKGNydGNfc3RhdGUsDQo+IElDTF9QT1JUX0RQ
TExfTUdfUEhZKTsNCj4gDQo+ICAJY3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9IGljbF9kZGlfbWdf
cGxsX2dldF9mcmVxKGk5MTUsIE5VTEwsDQo+ICAJCQkJCQkJICZwb3J0X2RwbGwtDQo+ID5od19z
dGF0ZSk7DQo+IC0tDQo+IDIuNDEuMA0KDQo=
