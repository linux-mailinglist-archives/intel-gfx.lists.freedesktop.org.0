Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C0EB85EBEAC
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 11:32:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0464610E2D2;
	Tue, 27 Sep 2022 09:32:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FB1D10E2D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 09:32:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664271139; x=1695807139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Zn9IlU59qKIfLyW7ZGMiTANwATckpuSf6Ojl3z462Ms=;
 b=V1kT8r1o4LqUDTNKxT1Qlbm21Iz6DH1BNs35V4eDE/HBHTURT0Llyp11
 tMtFqxddj869ETnX6GYj/J4kCv6Dre6/j+6CNYEEj8iOfOUJUs77BJtpP
 n0FkHnUePUO2PEyENVlhQ7HIln9tHJijE1/N8dLcZdBygITuEWzLVz7iA
 l6Y0h9e9R86rYciYMxdLKy7UiY1ylCpGYuFtBW/SV5FQHiNjHwYX8P5SL
 v32yFGmdx37KKG5+PFIvH4r59kisIoseSZdGNVt1tQkzPHvEwNstLD1f/
 7ywzuJJyzFpkiiVXRibl2lVMvH6KciAMuw/KqB+TWFeGyw0wqjNywHzUv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="298867025"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="298867025"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 02:32:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="866504395"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="866504395"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 27 Sep 2022 02:32:18 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 27 Sep 2022 02:32:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 27 Sep 2022 02:32:18 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 27 Sep 2022 02:32:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K7Kts9vq6p19TgJ6EOfkVbhrcNctagMf/l84PSH4B/iYfpB4MQpAzkEeJ1JrA2b8QUfFC3XEAOfpehC3jONhkwyfiI5bkwf4DR3AO9UBc1vJfi7GdZQ1TMqHgzvCu6bFj1XlIPyfuoOiCwjATSLOC5TUPQQFXf74abBp3mmUHfLZmHiK+1sa+IC37xlM2jW3wU8KkRh5mDFGQVS1Jry2/1QFb2am01xhrz56c+xcFvs4PiEKRnnzLAnTf4PrmpbToiT2pka1eSypL6S9F6RvVCDrBoEKBqLZVD0q/9FQzu1VWgglVPENYvOGpxTas+OOWxRBdrSz+DoJg8p3plEA2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zn9IlU59qKIfLyW7ZGMiTANwATckpuSf6Ojl3z462Ms=;
 b=QViP1FqHzAs3T94vd13H3QZVs3UF9ys1YSL2aofykiDgI+p0atgG+tXqfwFI0Q7dXZ+c+Q1nPTH9Sne823xpDnIgjujHzse/u9dX4xF2q8pJah6mwlGf+QzciN4Q2jKuC+q6/G03jkEP91MbIs06gBPasYAYMAzdlz9oHvIPVzi2JyXfy9ojShv5qajlQBr53RuyuCENfhNgiK857qRmTJr9NlRHm34kRIiQ2SMaSbjrJnFv1PMfHCoFR3d1++EOSJGhGvjrS79Y2p52941MfpJ60WPlCGJ3v73ckPXHHnWNDdzvobomMKtdqw739K6MJYRWcK5IkYplvaQ3tbjx9Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by SA1PR11MB6710.namprd11.prod.outlook.com
 (2603:10b6:806:25a::21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.26; Tue, 27 Sep
 2022 09:32:16 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::f4bb:8e76:e146:6f97]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::f4bb:8e76:e146:6f97%8]) with mapi id 15.20.5654.025; Tue, 27 Sep 2022
 09:32:15 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915: Add check for null dereference
Thread-Index: AQHY0lJxhErwep+15Um94EhRJQ250K3zAgGAgAABInA=
Date: Tue, 27 Sep 2022 09:32:15 +0000
Message-ID: <MWHPR1101MB2157606F648C0B24BD46BD73EF559@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20220927091625.2127039-1-mika.kahola@intel.com>
 <YzLB8f7tlZWkH3/P@intel.com>
In-Reply-To: <YzLB8f7tlZWkH3/P@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR1101MB2157:EE_|SA1PR11MB6710:EE_
x-ms-office365-filtering-correlation-id: 859e2d82-0d50-466c-1b61-08daa06b2a61
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2R4m2kXQBlO18PrkCptBLIPDHMmft4Qhc1JAxj4R1WscX+2WL6BXhjgSgWXiAQ6APC2husAiY1DFxMhvPkuKlGevoQu0YfcCbPnND8OLmX7TG1PRLQtRP4bfrUc8ohHvAW9jVHRmeKgpeJht0wz3y/JwDNDbD/eNnUFMkLvrL9Jhj866Hi+FARqY831Cmc5z6CUYAcuXQi37Fdkahv6CvVfJoIRQw7OaeyT+LnZS5xlgxLfgiK5TYSti3sM0m76DRBHQ8mziRKn0zqiaKcEfe1eAzXLQRxpRTwJFbbyQoO9oFRoi6vtJRmbRDBvyeVqYETP9Ax+MafzBAlP9In3U/oLP03kiFwRl7NziMBuyhlwzk8RXRbPelf/vA1ggnVn3Dx27sq0UbzmehACvCeoFMo6yrXyYMXGGeCwvvsNphxglTG7odkeE8mC8v2LifihKVe/hujM70wzYcVnq6J+Q0gxNEYGt6QG2XD76ztKlAT4ieGoB6ns8gIMiPiyeHtibKc63DIipVrJHAYWlUiLXisfGxEB1ecuBjE72A/Ih6zPpLYi/sjCpEr+0Gv5zia/zqJwZ63ukr/k+YXQoeSlinqTts56z9CdRpx7uWCAG6mL81u05yphf1HdrXRoPB+wQ278T5yQsCnJDQYal9ncIUU81CNteXtuiX9jHSSUIH5CRCYkwF5R9Z7jzXXNTTl09zdFR2E6I9Ydji/au+GGCUuDNw2misy1YL+QHoULStDUh59zG8gKhrhyrZ4ROCYn6CN9Drp4/UNTYz7nNMmiHvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(376002)(346002)(136003)(39860400002)(451199015)(52536014)(38070700005)(8936002)(86362001)(2906002)(5660300002)(71200400001)(478600001)(7696005)(26005)(83380400001)(6506007)(53546011)(9686003)(186003)(41300700001)(38100700002)(8676002)(122000001)(4326008)(64756008)(66946007)(66556008)(82960400001)(66476007)(6916009)(316002)(54906003)(76116006)(66446008)(33656002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OERHQXNqTm1WWUt0cTh0aEhIV2ZoQjNod2ZRRlBURUQ1djlEeVpySGxlYVJL?=
 =?utf-8?B?Q0pGQ3kvaXhvZ0ptVGFsazgwQ1E0N0VDS1BTR0VSWXlRNE1vY3NHVyt4YjVa?=
 =?utf-8?B?dzZSR0c2czk4QWlobzNFNWl1VUlXemtQcW81OEZWeXp0S2FMeCs2MW9kZGlF?=
 =?utf-8?B?ek50YlMvb0JKeEJ2bHRjR3h1cExGa09qOHJuc1p6a21QV1VGcnFsQ0VOcWtR?=
 =?utf-8?B?d0U3d1ZFT0V3R2JRWENsSnY3SzIxNGRDQzhudWFrVEpyUXFpUXRzclk4RWZw?=
 =?utf-8?B?OENKTUYzZG5LejZRb1VDZ1dWMWNGRXAwRmRjay9xVGd5WGM5YkovdzF4QVpw?=
 =?utf-8?B?Z3Rpak0rMkFMekJtU0EycTI3bCt6QVJtYXcvZ3ViRDV3bTcyWSthdmw2SitW?=
 =?utf-8?B?MWlRbElGZUk5MDZleXJhaFNTbXZKZmUzUjAvSW5JdVV5OHQ5NzJBUzJBRDhC?=
 =?utf-8?B?WUFCZHR4WHpCNCtCRjJ4SUhiNnFCdGZ2bEViV1A1WGRIaDlMZElXSWFuY0Uv?=
 =?utf-8?B?T1A4c3hzeDRPVFRmVHFiekp1SXlDRFRaODFYYmhsT1pMY2VSZktqVjVVZklS?=
 =?utf-8?B?YmVNbk1JOHdjSUh2WlNUZE82eExBYXdGUlhaeFdZNWdUOFZnN09vSFZrNlVO?=
 =?utf-8?B?aElsY2c3Y0x4Y0d3d00wYlFETFpaWGNRRnJBVkNaNmJ0S0RCZE1iaTZpZmwx?=
 =?utf-8?B?MVkxRkFSWThMRm0zSjZXUFc1ejJEeFZuNkgyVzljdmd3N3RFMnhmTk9iQUVO?=
 =?utf-8?B?KzRLc21SYk52M1B0cmpycEhTWVFUTHVZSXRvcmFvdVNIblZmUDNwbXM1RjVY?=
 =?utf-8?B?cCtiZEcxd0FkMCtuSkZyelhzMXVsWnlybjUxb0hUSmlDSHAwdWZOellWSW9C?=
 =?utf-8?B?ZUhFRWhkUVJoMjN5YjIvcjZ0dmdUTTFGeTdsU3dWSVNlblhSUVB3NDUwYWNs?=
 =?utf-8?B?M3VaUjd1U0R0c0JYMXlYKzI5YXlaalBBdE5HNVRNT0VWOXFRVzdjZityTnA4?=
 =?utf-8?B?UWRTQ2lGSXMzWTJscFNWcDcraTd2SjNSRStpZkIwU0hBOVAyZ3k4dnU0Qmo5?=
 =?utf-8?B?U0tiWXZMUGY2elh4VnhpbUF2TVNzNTQ3UnA0MVlmVFJFTzViclRQL2VEY2wz?=
 =?utf-8?B?bXJMc2NMZEJvMTJvMVFHd1VmSVBicXZSQWdEcnlMVkZ4c0h2YllhN2NDb1RC?=
 =?utf-8?B?Wm53akphOVQ3bVJsQzlFUFp0OGZ3UDRsbTdRS1pRTUlaSEF0cFdqa3ZlRUE4?=
 =?utf-8?B?WlRrSTBvL0haZnpSNTZXTVMrZzNPWlNWbVBOV3ZnSThXN3orK01WT3QwL29U?=
 =?utf-8?B?S3p4ZFROaHFKUEhOdGNrQjhqQ0NVVTNnWm04cFpCNnR2cDhxclUrdnpsZGx6?=
 =?utf-8?B?TEtZdEJmaU9IdEtYUUcvT0d3UFZpRGRpa1NzVUQvQ1kzT01wR2h3c2UvZlF3?=
 =?utf-8?B?RWV6dFdWY2pMMWRMd3JpelNaNFBkVnNCUjZ1QzQ2d092S1NGTTNiaVdqSlpk?=
 =?utf-8?B?WGpOTDJwekcxQW95anA3MWFSRitWLzRrMGFZUG5Bdy9oTFFkRkxMY0NoTXVv?=
 =?utf-8?B?eEFrN00xbEQwa2VYZzloTXpCd3ZMeW9CWFNGR1BYcXVueU9ucWtyWjdFd0pF?=
 =?utf-8?B?c3FTVEY2QVhGM0JEcGtqWE5wWVlzeUV3dlRQQmIvNjRsL1pRU2xUbHNDQmZt?=
 =?utf-8?B?K1gvOEUzZ2VhQ0hLWlJoUlh2Nmg4cVNaZy9mbWtWckgrTmhFNm5qZnUzTlgx?=
 =?utf-8?B?b2w3c1htSVhZTGlYQkt3YUl0c3NWV3lLUWtjM0p1UWovVDl5TjdydE9tZXNQ?=
 =?utf-8?B?MjdpS05kNDd5cXUvTGVEdm1MREZyelhxTDQ1QzE0cCtuZnhUTTAxQ3JZNWFl?=
 =?utf-8?B?ckdaeUVWWVR1U1o2UFhWWnJoakNLUXB6RVU2cksyUndPNS8zcy8rM2VtTmhG?=
 =?utf-8?B?SDcwajFzUlB1SHl4OW5NNlE0V0RqT3UzaVZPaEFZa1JsNXp5L3hTNW5rUzRh?=
 =?utf-8?B?TEZienA2MXFPMGlKQm5rRVpFZXNMRDFTaHhmTUs3OEhBM2JMN3dQME5PYjBI?=
 =?utf-8?B?K2RmaU5NKzJTM2JkaWM2a3JIUnhVYXpyMlJNT2pwTUxqeU9PdHdaLzQzUVhx?=
 =?utf-8?Q?+eqATin5eY0CTPnOSkaMht1Ze?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 859e2d82-0d50-466c-1b61-08daa06b2a61
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 09:32:15.8673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MIEvxD9rk5gI0HbdE75fAEAM7JEfI/RRDYM/nNvEBaGCfLFZLaJ8L4r/46yt6tw/cSADoZG7x2JzA1z6EAfJlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add check for null dereference
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZp
bGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBTZXB0ZW1iZXIg
MjcsIDIwMjIgMTI6MjcgUE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgTmlrdWxhLCBKYW5p
IDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0hdIGRybS9pOTE1
OiBBZGQgY2hlY2sgZm9yIG51bGwgZGVyZWZlcmVuY2UNCj4gDQo+IE9uIFR1ZSwgU2VwIDI3LCAy
MDIyIGF0IDEyOjE2OjI1UE0gKzAzMDAsIE1pa2EgS2Fob2xhIHdyb3RlOg0KPiA+IGZpeGVkX21v
ZGUgaW4gaW50ZWxfZWRwX2FkZF9wcm9wZXJ0aWVzKCkgZnVuY3Rpb24gbWF5IGJlIE5VTEwgd2hp
Y2ggaXMNCj4gPiB1c2VkIGxhdGVyIG9uIGluIHRoZSBmdW5jdGlvbi4gUmV0dXJuIGVhcmx5LCBp
biBjYXNlIG9mIGZpeGVkX21vZGUgaXMNCj4gPiBOVUxMIHRvIGF2b2lkIE5VTEwgZGVyZWZlcmVu
Y2UuDQo+IA0KPiBTaG91bGQgbm8gbG9uZ2VyIGJlIHBvc3NpYmxlOg0KPiBjb21taXQgYmRlNTQ0
ZTFkNzAxICgiZHJtL2k5MTU6IERvbid0IGluaXQgZURQIGlmIHdlIGNhbid0IGZpbmQgYSBmaXhl
ZCBtb2RlIikNCg0KT2suIFRoaXMgb25lIGNhbiB0aGVuIGJlIG1hcmtlZCBhcyAibm90IGEgcHJv
YmxlbSIgaW4gY2xvY2t3b3JrLg0KDQotTWlrYS0NCg0KPiANCj4gPg0KPiA+IERpc2NvdmVyZWQg
Ynkga2xvY2t3b3JrIHN0YXRpYyBhbmFseXNpcy4NCj4gPg0KPiA+IENjOiBWaWxsZSBTeXJqw6Rs
w6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiA+IENjOiBKYW5pIE5pa3VsYSA8
amFuaS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhv
bGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMyArKysNCj4gPiAgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kcC5jDQo+ID4gaW5kZXggNmViZDZlMTA0YjJjLi5kYjI1NDE4NzNmOWQgMTAwNjQ0DQo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gQEAgLTUxODgs
NiArNTE4OCw5IEBAIGludGVsX2VkcF9hZGRfcHJvcGVydGllcyhzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwKQ0KPiA+ICAJY29uc3Qgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKmZpeGVkX21vZGUg
PQ0KPiA+ICAJCWludGVsX3BhbmVsX3ByZWZlcnJlZF9maXhlZF9tb2RlKGNvbm5lY3Rvcik7DQo+
ID4NCj4gPiArCWlmICghZml4ZWRfbW9kZSkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICAJ
aW50ZWxfYXR0YWNoX3NjYWxpbmdfbW9kZV9wcm9wZXJ0eSgmY29ubmVjdG9yLT5iYXNlKTsNCj4g
Pg0KPiA+ICAJZHJtX2Nvbm5lY3Rvcl9zZXRfcGFuZWxfb3JpZW50YXRpb25fd2l0aF9xdWlyaygm
Y29ubmVjdG9yLT5iYXNlLA0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+IA0KPiAtLQ0KPiBWaWxsZSBT
eXJqw6Rsw6QNCj4gSW50ZWwNCg==
