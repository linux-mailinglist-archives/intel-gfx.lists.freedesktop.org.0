Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6D243790A
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Oct 2021 16:29:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3A97E6E52C;
	Fri, 22 Oct 2021 14:29:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C21906E52C
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Oct 2021 14:29:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10144"; a="226766089"
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="226766089"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2021 07:29:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,173,1631602800"; d="scan'208";a="553352524"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by fmsmga004.fm.intel.com with ESMTP; 22 Oct 2021 07:29:27 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 22 Oct 2021 07:29:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 22 Oct 2021 07:29:26 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 22 Oct 2021 07:29:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C/GYP3cCIxd6Na/DD02zoPonyC0rLW6K3ack/MRB+EB9L9CyJOuyiBIlDsR9M/uioVTjNf62Op24AS8ZcHkZCh33vK1JdOy6P6XgoIVdWJmzbPdUyZFdzjF6fnnc3H2sSTzRcSdX50wKCLL0R6OKnFlSHZVPUhk7zKZYUjFi83SIESu0SJd8IpgC5svpKucDDUqq1TiHXuN/eGs8RSr/J/drRtIyW5kf3jPAD0KKrSZ1TkM1QFG+5Sa0cgyTA3mq2vAjFXCuuC6GvIYaGgwEv4aP0E+XY3P0fSvPfwc0nJTCydGunRNpKV7s3c0RhzqIbVkbX0hOfQCwXa6Xlv4lJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+AMdo9s6OTSQJISTsGlg2jgdTRtDwTWjIEHZz87sjU=;
 b=SjHBHiOVQ/JC/8In2HtGp7Sv9rkO9sl5OOYFIuxCn29kJH5RxSK8BZlrZiLU1tY/mMVFDQ+UAs3eAkrKQyi8mdOKBNEaHrLlzls26Bvam9chpbKuiUKEzwr+25E0MjWI6nZgYBhqkVq9OIqwljEaSb1avAnfL9VEqUuKaJxvmRrNHuKGme1PRT8r4/zuRfkXuesv/eXdMuwbwzUz5ElT5PkIFtXCgEgRuSkTPpo8cAb8m8bG/z7ZMwNimJGkkvyhz0v0ZlW0Wqxx3slUQ01llscG/JYph9Be3t8/Rexa6aEGRPTqauZWapqy2NG6Ag57vi0MGWQaXenTOP5Z0/kuRg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5+AMdo9s6OTSQJISTsGlg2jgdTRtDwTWjIEHZz87sjU=;
 b=C9X0+ffQC9c1GG5FlgUaTPZ9fRWl9vAs9ZTm26dAUp3BYuxN07xCVms56LI1nb6bBO2qgluG2LeRevRiefFPNCb0n5SxiXteEImEV7aRfZjYb3dby7SG8oQo1WE/h7gFZvKh9rwkTl0uoTzUlso3zc7Q0NxMsJ2fG+6jvTAR0Nw=
Received: from DM6PR11MB2731.namprd11.prod.outlook.com (2603:10b6:5:c3::25) by
 DM5PR11MB2044.namprd11.prod.outlook.com (2603:10b6:3:10::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4608.17; Fri, 22 Oct 2021 14:29:01 +0000
Received: from DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596]) by DM6PR11MB2731.namprd11.prod.outlook.com
 ([fe80::b4aa:b133:6c2d:5596%4]) with mapi id 15.20.4608.018; Fri, 22 Oct 2021
 14:29:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/9] drm/i915/psr: Disable PSR before
 modesets turn off all planes
Thread-Index: AQHXxzA/YkBX98Raa0STfx8xhEy/1qvfE+2A
Date: Fri, 22 Oct 2021 14:29:01 +0000
Message-ID: <6efccfdb568cd3fc85b844c2813da0de016de413.camel@intel.com>
References: <20211022103304.24164-1-ville.syrjala@linux.intel.com>
 <20211022103304.24164-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20211022103304.24164-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9ff75e87-672c-4489-af40-08d995684adf
x-ms-traffictypediagnostic: DM5PR11MB2044:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR11MB20442B0A171A61C20AE75CC68A809@DM5PR11MB2044.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1728;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: w2+ymMPW6jQbFOHM39QEm4cLLPC/Ehqd3g9z/Vqi6hE3sT0oHgEdV+CFQGj6yA0Wdiinvz5oKqGj9+Dz6UEmaxDg56tUSWua5+WAIr3G1uiERjJPxlEuKvRvx7MH4xoXViR0YJ8JgL7gYnuQ0j92RwlMBazk5tq63ewKdMDB89Q31XSnTFGdzEqWBNpKsFzEFgC8znkSK1qzkJX2L63Xl9HdX/woWy1o+U2eflAIJ/e+Rtl0ILgLuv2fuQjk+DtQsQSpl14e355kxaQhnEaV19L6flEp9Xvdc6lZL2TaE6XPuUUM8kFmElGYvjsnHe8zwifbhj/hEBtv261t/Yo/vGpqHBc6d+u6zSvnJkmOhOevuI5JNPezrbEmWPD4VqlHvV6fBF5ILVIT675VBY8LQiFUQy5Yp7UsR0WUaS3AZTgqRFWOtOTO3kXmp9vsMNKyf5nMH9YGl6eprTdwaXslrmzsrqgH5KraE6/D2nmNGQzjEKhBP/ynclJK5IjDBxPqmYyvTQDWzMkIdUSJNNsWKeOqIwLQgPHqYnJdJa7WOUK/z29nfNCtJz3pSfGO45ZEetgtAmbnYlh7paZlkoBgf22RI9GKQOdQxsihg6c8fBznrC6jfougsIs83Rrl0L3bVAoNMZ4lmHsQMfw6cfM4DhQMSCDVIUBCUmeNOFQNlKyb22Rang6YPFOcbZdsXMrICNFMcfroakYGtXFOIFzcfw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2731.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(2616005)(2906002)(26005)(5660300002)(8676002)(36756003)(86362001)(76116006)(122000001)(66446008)(66476007)(316002)(4326008)(110136005)(186003)(6506007)(4001150100001)(64756008)(66556008)(6512007)(8936002)(6486002)(71200400001)(508600001)(83380400001)(66946007)(91956017)(38070700005)(38100700002)(66574015)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TGdIVG1vbWNackMxNEl5bXJ1OHdFMWNrYUpMNEorTzh5NUhBa3hiRmhLZzI4?=
 =?utf-8?B?U2JqWGRCWUNzYXlTMzVzS2dLZy9NREVGOWR2WU96cFltak1xRnVtc0FmU3dQ?=
 =?utf-8?B?ZFlCdllEWnpVS3RDd0QzRVhUNFlFU0ZOQi9leVNPQmJMaDg4SXd4ek1keEZE?=
 =?utf-8?B?bk15N01YSlFmK1QrWkc3cFhIVGhqNCtDV3dVUHQ0VjkyMGhybWxoVjJFQmVX?=
 =?utf-8?B?Yk13OVpCWjVuWitITW1xSHJHZnc1cHRHaTU1Rkp3K2tWNmJjNEJCTWRVMEJw?=
 =?utf-8?B?UlJlbmRPdE1BZlY2WlRYV2NVTTc3c09HclhMZGxiQitpUnJHdEJES0dkRjhU?=
 =?utf-8?B?UERsK1hGbktKWUhFRTFXZWM0Y2VJb0JoazhEb0Vsd3JZdmhTcmQ4L2NuTzVp?=
 =?utf-8?B?cGZKNkJMb1FnZU5qWXhtbVFQZHdYenhERmlBdUI4ZUlIMzR4TmpseTdVS3Z4?=
 =?utf-8?B?cFhZZ1JCWXplbVBQN3BuRVNsbHhmeUp3T3JZR1RxcUFiNTJOaTJTNHJVQnl6?=
 =?utf-8?B?NnNES0pVWVFZeU9ML251M2kzUkprYWZSNjcrT3BNZ25GVGVKbjJuUURqd1BI?=
 =?utf-8?B?MHFtZ1VGMi9lYThMNktVUGZ6T2Y1STNLZHdBalJPQzJUS09rUEd6Z24zMTFl?=
 =?utf-8?B?ek1LR0MrbDBHcjkxWFJPT0dzSVFiQVdwcllFd1dhTzhxZHdLeGhvaWQ5ajVp?=
 =?utf-8?B?ZEd6bWgwVnVqMmQ1NGxES3I1OXFHZHNZL0JHWlVXZUxZblppc1ozcWllMHJk?=
 =?utf-8?B?K1FGb1NOVUxKZ3IxODFUcHFRckltZFVoMXN2eU1lcXJjZDZUTmVWRHZmdmJt?=
 =?utf-8?B?YXNTaXBZbG13Q3E5ZTNoMUNSQWY0d0pBakFwcFBUbXZtYUR1TExlQ3pFTE1n?=
 =?utf-8?B?ZkdlQmwyaWptSWVTaHUzcXVEOEdtTTg4REhnT09FWFVlcEdKdnM4MExLc283?=
 =?utf-8?B?cFVYMmJXWEhqU1htYjIxQVlTdnpOeUcvY1dpMDlPSFFkbU1vU3hTZ3RjdGZM?=
 =?utf-8?B?LzFZUXVaTVR1WExmN25jYXErcVlFdmlWRFdWM0tEdDZlWjhhZGRKWWR6Vkdm?=
 =?utf-8?B?citXMlRLc2Z4bmExbkJtZmVsanNFeEhxUVFRWUJuNlp5dFJabUplU0YxS2Qx?=
 =?utf-8?B?KzlJWnlscWVYZy93WTVxcmg4TlBLRXczVkJzU3RLSm1vd3cyajcxUlJOQUtk?=
 =?utf-8?B?RS9Sd1VtejYwNWtTYzJremM3aTVSaUNLT0o0THI5amV0Uy80VkFvRTVkUW4w?=
 =?utf-8?B?TW5WT0VHbHdjWTQyL1hWSXBpL2pFVyt4bE5abEtyOFNiemFYeHI3My91RlJ4?=
 =?utf-8?B?Y2FFcklodEgyeFB5M2RmQTJ4eldHVlhEdUVtNXlqQVlVOEZqL2c0UWh3VVpG?=
 =?utf-8?B?UmpKL3lrN3gzYUlTSFp0NXdTNUMrd1ZUdG5YQVArc1dMR0FsV0lTT1poMjBs?=
 =?utf-8?B?QXdmSGFEUFhXcThuQWkvalBvRTZqTGtzNHFVYmZFOUkvWEs1QUNqV3U5bXB3?=
 =?utf-8?B?UW9Od0wrdXdKamcwOFhQMmJKN2UyK1gyRWNOSkUxRzFrNzgzeDA3djBRMDZP?=
 =?utf-8?B?RGdzWk0rUjJYR25XUnRIODZqeVkvd2oyWURWb2VWdkcxZGhpb0l5djBaS01W?=
 =?utf-8?B?OTliU2RQZ1F4aDhwOTE5dStsd2MrNWVWSWErQUdlVW5mUit0c3NaRHRVT3l6?=
 =?utf-8?B?L2NFbFJkenh1eXhhYnZDTnFCMkVuOGo3cHJOTzZTYVllOFlkTTRRdEZ3TmY2?=
 =?utf-8?Q?8pZb99ymCR3RvEAoNebfmrUN45wZBadSVL8ra09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <223D927B32AF1748B52F117648835088@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2731.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ff75e87-672c-4489-af40-08d995684adf
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Oct 2021 14:29:01.4187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jouni.hogander@intel.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB2044
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/psr: Disable PSR before
 modesets turn off all planes
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

T24gRnJpLCAyMDIxLTEwLTIyIGF0IDEzOjMyICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gUFNSMiBhcHBhcmVudGx5IHJlcXVpcmVzIHNvbWUgcGxhbmVzIHRvIGJlIGVuYWJsZWQg
Zm9yIHNvbWUNCj4gc2lsbHkgcmVhc29uLCBhbmQgc28gd2UgYXJlIG5vdyB0cnlpbmcgdG8gdHVy
biBQU1Igb2ZmIGJlZm9yZQ0KPiBwbGFuZXMgZ28gb2ZmLiBFeGNlcHQgZHVyaW5nIGEgZnVsbCBt
b2Rlc2V0IHRoYXQgaXMgaGFuZGxlZA0KPiBsZXNzIGNsZWFybHkgdGhyb3VnaCByZW9yZ2FuaXph
dGlvbiBvZiB0aGUgbW9kZXNldCBzZXF1ZW5jZS4NCj4gVGhhdCBpcyBub3QgZ3JlYXQgYXMgaXQg
bWFrZXMgdGhlIGNvZGUgbW9kZSBjb21wbGV4LCBhbmQNCj4gcHJldmVudHMgdXMgZnJvbSBkb2lu
ZyBuaWNlIHRoaW5ncyBzdWNoIGFzIGp1c3QgdHVybmluZyBvZmYNCj4gYWxsIHRoZSBwbGFuZXMg
YXQgdGhlIHZlcnkgc3RhcnQgb2YgdGhlIG1vZGVzZXQuIFNvIGxldCdzDQo+IG1vdmUgdGhlIFBT
UiBwcmVfcGxhbmVfdXBkYXRlKCkgdGhpbmcgdG8gYSBzcG90IHdoZXJlIGl0DQo+IHdpbGwgaGFu
ZGxlIGJvdGggZnVsbCBtb2Rlc2V0cyBhbmQgZXZlcnl0aGluZyBlbHNlLg0KDQpSZXZpZXdlZC1i
eTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCk9uZSBtaW5v
ciBjb21tZW50IGJlbG93IGluIGNhc2UgeW91IHNlbmQgYSBuZXcgdmVyc2lvbiBmb3Igc29tZSBy
ZWFzb24uDQoNCj4gDQo+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXphQGlu
dGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYyB8ICAzICsrLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYyAgICAgfCAyNSArKysrKysrLS0tLS0tLS0tLS0NCj4gLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmggICAgIHwgIDMgKystDQo+ICAzIGZp
bGVzIGNoYW5nZWQsIDEzIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gaW5kZXgg
MmI5N2M4Nzk3MTc3Li41MjAxZDZjZGQ1ZGIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xNDI5LDYgKzE0MjksOCBAQCBzdGF0
aWMgdm9pZCBpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlLA0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBj
cnRjKTsNCj4gIAllbnVtIHBpcGUgcGlwZSA9IGNydGMtPnBpcGU7DQo+ICANCj4gKwlpbnRlbF9w
c3JfcHJlX3BsYW5lX3VwZGF0ZShzdGF0ZSwgY3J0Yyk7DQo+ICsNCj4gIAlpZiAoaHN3X3ByZV91
cGRhdGVfZGlzYWJsZV9pcHMob2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRlKSkNCj4gIAkJ
aHN3X2Rpc2FibGVfaXBzKG9sZF9jcnRjX3N0YXRlKTsNCj4gIA0KPiBAQCAtODY2OCw3ICs4Njcw
LDYgQEAgc3RhdGljIHZvaWQgaW50ZWxfYXRvbWljX2NvbW1pdF90YWlsKHN0cnVjdA0KPiBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQlpbnRlbF9lbmNvZGVyc191cGRhdGVfcHJlcGFy
ZShzdGF0ZSk7DQo+ICANCj4gIAlpbnRlbF9kYnVmX3ByZV9wbGFuZV91cGRhdGUoc3RhdGUpOw0K
PiAtCWludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0YXRlKTsNCj4gIA0KPiAgCWZvcl9lYWNo
X25ld19pbnRlbF9jcnRjX2luX3N0YXRlKHN0YXRlLCBjcnRjLCBuZXdfY3J0Y19zdGF0ZSwNCj4g
aSkgew0KPiAgCQlpZiAobmV3X2NydGNfc3RhdGUtPnVhcGkuYXN5bmNfZmxpcCkNCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IGNjZmZlMDU3ODRk
My4uYjFlNDhjNmJlOGQxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gQEAgLTE3MjUsMTEgKzE3MjUsMTcgQEAgaW50IGludGVsX3BzcjJfc2VsX2Zl
dGNoX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAlyZXR1
cm4gMDsNCj4gIH0NCj4gIA0KPiAtc3RhdGljIHZvaWQgX2ludGVsX3Bzcl9wcmVfcGxhbmVfdXBk
YXRlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAtCQkJCQlj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkNCj4gK3ZvaWQgaW50
ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICsJCQkJc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+ICB7DQo+ICsJc3RydWN0IGRybV9p
OTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7DQo+ICsJY29uc3Qg
c3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9taWNf
Z2V0X25ld19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gIAlzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcjsNCj4gIA0KPiArCWlmICghSEFTX1BTUihpOTE1KSkNCj4gKwkJcmV0dXJuOw0K
PiArDQo+ICAJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrX3dpdGhfcHNyKHN0YXRlLT5iYXNl
LmRldiwgZW5jb2RlciwNCj4gIAkJCQkJICAgICBjcnRjX3N0YXRlLQ0KPiA+dWFwaS5lbmNvZGVy
X21hc2spIHsNCj4gIAkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190b19pbnRlbF9k
cChlbmNvZGVyKTsNCj4gQEAgLTE3NDQsNiArMTc1MCw3IEBAIHN0YXRpYyB2b2lkIF9pbnRlbF9w
c3JfcHJlX3BsYW5lX3VwZGF0ZShjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSwNCj4gIAkJICogLSBBbGwgcGxhbmVzIHdpbGwgZ28gaW5hY3RpdmUNCj4gIAkJICogLSBD
aGFuZ2luZyBiZXR3ZWVuIFBTUiB2ZXJzaW9ucw0KPiAgCQkgKi8NCg0KVGhpcyBjb21tZW50IGlz
IG5vdCByZWZsZWN0aW5nIHRoZSBjb2RlIGFueW1vcmUuDQoNCj4gKwkJbmVlZHNfdG9fZGlzYWJs
ZSB8PQ0KPiBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQoY3J0Y19zdGF0ZSk7DQo+ICAJCW5lZWRz
X3RvX2Rpc2FibGUgfD0gIWNydGNfc3RhdGUtPmhhc19wc3I7DQo+ICAJCW5lZWRzX3RvX2Rpc2Fi
bGUgfD0gIWNydGNfc3RhdGUtPmFjdGl2ZV9wbGFuZXM7DQo+ICAJCW5lZWRzX3RvX2Rpc2FibGUg
fD0gY3J0Y19zdGF0ZS0+aGFzX3BzcjIgIT0gcHNyLQ0KPiA+cHNyMl9lbmFibGVkOw0KPiBAQCAt
MTc1NSwyMCArMTc2Miw2IEBAIHN0YXRpYyB2b2lkIF9pbnRlbF9wc3JfcHJlX3BsYW5lX3VwZGF0
ZShjb25zdA0KPiBzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gIAl9DQo+ICB9
DQo+ICANCj4gLXZvaWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoY29uc3Qgc3RydWN0IGlu
dGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUpDQo+IC17DQo+IC0Jc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFzZS5kZXYpOw0KPiAtCXN0cnVjdCBp
bnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlOw0KPiAtCXN0cnVjdCBpbnRlbF9jcnRjICpjcnRj
Ow0KPiAtCWludCBpOw0KPiAtDQo+IC0JaWYgKCFIQVNfUFNSKGRldl9wcml2KSkNCj4gLQkJcmV0
dXJuOw0KPiAtDQo+IC0JZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNy
dGMsIGNydGNfc3RhdGUsIGkpDQo+IC0JCV9pbnRlbF9wc3JfcHJlX3BsYW5lX3VwZGF0ZShzdGF0
ZSwgY3J0Y19zdGF0ZSk7DQo+IC19DQo+IC0NCj4gIHN0YXRpYyB2b2lkIF9pbnRlbF9wc3JfcG9z
dF9wbGFuZV91cGRhdGUoY29uc3Qgc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUs
DQo+ICAJCQkJCSBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAqY3J0Y19zdGF0ZSkN
Cj4gIHsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IGlu
ZGV4IGZhY2ZmYmFjZDM1Ny4uM2Q5YzBlMTNjMzI5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gQEAgLTIwLDcgKzIwLDggQEAgc3RydWN0IGludGVs
X3BsYW5lOw0KPiAgc3RydWN0IGludGVsX2VuY29kZXI7DQo+ICANCj4gIHZvaWQgaW50ZWxfcHNy
X2luaXRfZHBjZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gLXZvaWQgaW50ZWxfcHNy
X3ByZV9wbGFuZV91cGRhdGUoY29uc3Qgc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3Rh
dGUpOw0KPiArdm9pZCBpbnRlbF9wc3JfcHJlX3BsYW5lX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwNCj4gKwkJCQlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7DQo+ICB2
b2lkIGludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZShjb25zdCBzdHJ1Y3QgaW50ZWxfYXRvbWlj
X3N0YXRlDQo+ICpzdGF0ZSk7DQo+ICB2b2lkIGludGVsX3Bzcl9kaXNhYmxlKHN0cnVjdCBpbnRl
bF9kcCAqaW50ZWxfZHAsDQo+ICAJCSAgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqb2xkX2NydGNfc3RhdGUpOw0KDQo=
