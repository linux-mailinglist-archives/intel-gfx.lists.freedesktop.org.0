Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 550F4394AC2
	for <lists+intel-gfx@lfdr.de>; Sat, 29 May 2021 08:32:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE4396E0C1;
	Sat, 29 May 2021 06:32:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AA766E0C1
 for <intel-gfx@lists.freedesktop.org>; Sat, 29 May 2021 06:32:03 +0000 (UTC)
IronPort-SDR: eI8e8HJDNQbggRgvPIk1ohQbt4ijxQuYE6EGtpHjBpakdjCBDhZTfj0cxhIWnurG0nv2xXntP+
 9m7wYziwdVjQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9998"; a="183433322"
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; d="scan'208";a="183433322"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2021 23:32:02 -0700
IronPort-SDR: M4mFCTz6fqhktrBd/lDlQp1LGNZIW9MHY9h5LLuARfjvk5qPLdB5Jo767jusNZAmXmY+WJnTQI
 IchyuddT3XNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,231,1616482800"; d="scan'208";a="466131601"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 28 May 2021 23:32:02 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 28 May 2021 23:32:01 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Fri, 28 May 2021 23:32:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Fri, 28 May 2021 23:32:01 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Fri, 28 May 2021 23:32:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lKrvEb2WglSGV7e4bE3Z5VL8BD+ODbZYhUjo8ODB57dxYEjUEeitS1P+7Nph9vxHpS9jipcBTe+/I46RPt7PeCkny5/0tnHXBjvsY/LMCk/r1Xdire8zaDHvr1y20TtZQw6xVPQejpKqT1ze8zRuLLBv0e15hVcTRvDQFPHuwVcYgo6oG9J19tlNYQk2kdIo4c27iFz+m+IoHm611YujU8FsbjD49Fi07VamycYdn/YT95AqBulpAiM4K6OvGrFObUWVeUl8z5W8k+U7CeOYOOPi/p/cqwp8fx3aKypGhJLrJWeBiiHXWNmA7zLkmiBv5tpU+G5ZiwpQh1mjtaBcUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5OiwNK3Ad4cRLjf0c3x0GgmDgjLm+/CdGxKBJmf5Zdk=;
 b=OFkyzW878uFS545pUNqarZZSIeFml7AhNQ0X+5A1XS9+FQwWE2+yt1xD1qUJGYNhzopB7y1yl+IfZfVsbL28TGZuIOBWauW8RriOvOLeuNx5aPUM52we5vjpOc7f/nee1Zd4tL2qxg7xkBYb6eXbYN6TBAxE5u+6/IWJydfOb5svdKlArh3oHWWVFFDWOP6FiOXk5WXz1UcHgANUIg95kuzxyElCQ/ZfYQaoS4wD9KhwR2wvtC16BKTQ4dK63IiWZfBD5pqy0f43ewXIeMl3aAn1RlxRvamJIiaAWnLkQEpSLc5PsEBLOC232EKhEuthLOkRYL1LZrn2BV+rY4RMTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5OiwNK3Ad4cRLjf0c3x0GgmDgjLm+/CdGxKBJmf5Zdk=;
 b=LQRqSR4x9Dq0uyF3Y0Yk/mTsDDel6X6Yz1XM/QV/OFlZjpbKIMphMtLI+O+UcLvCFf67HEMinvH4iaoN+/1NQraN8VH0QgB9gJ1xQc/x1nxAsUBcW3SnSLa5qCdIiicvHIHDCQcGmRPBMuJgWgAXqagySwiMFPSI/R7DIXQ0yMc=
Received: from MW3PR11MB4620.namprd11.prod.outlook.com (2603:10b6:303:54::14)
 by CO1PR11MB5106.namprd11.prod.outlook.com (2603:10b6:303:93::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4173.20; Sat, 29 May
 2021 06:31:56 +0000
Received: from MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::8183:e1ea:cd9a:bcb1]) by MW3PR11MB4620.namprd11.prod.outlook.com
 ([fe80::8183:e1ea:cd9a:bcb1%4]) with mapi id 15.20.4173.026; Sat, 29 May 2021
 06:31:56 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "Tseng, William" <william.tseng@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2] drm/i915: Reading DPRX caps in LTTPR
 transparent mode after LTTPR detection
Thread-Index: AQHXVEny9zAaWgZWz0+m75qyGn1ZMqr6AAqA
Date: Sat, 29 May 2021 06:31:55 +0000
Message-ID: <852479e29afb65b24f6d05f46c91d6af5f1ccebe.camel@intel.com>
References: <20210529050255.17405-1-william.tseng@intel.com>
 <20210529051710.17616-1-william.tseng@intel.com>
In-Reply-To: <20210529051710.17616-1-william.tseng@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.4-0ubuntu1 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [50.53.38.177]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 415582c0-1724-493d-2011-08d9226b7472
x-ms-traffictypediagnostic: CO1PR11MB5106:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB5106EA4A7C72175637E6CD8789219@CO1PR11MB5106.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VTJrfmVw8SLwulBa5frG31f5qTwuyHTPBuwaOL98AicHJBrQdGCYnU7Dugg79qA/jY8/e04iVtOr7/fvsIU2AFIhxweHQR1AO+Bhp/NRl94oras+SVe9utNk+MhIepwP/bUP6OR79IopbNBosfWfn4w5Cn4Dw+Q6q/UpM88E3SGwkPTyO5YtDGslNaYtLjVbDkoTtqZPyWqDiLYBAEnH/EZvN22VpDZ143LlSz6VgMwbv8p4vCSEJFKU+Q3NcyEcSqPyqiclSYTtL6SFDtDbVNZKybR6zpGtAgkcxCmQDzoqct7zDporYLeaPbJUGz9C6X/VORsmXn5W55utsw1MVB4grkbnQlE/jM4Dv0WptiPrhuX79xRntnb1AtE+BYVd3Bfs807C8R+CktypN7bX8lsYduD6JigcWtggWrQLqV7bWPU5zy76iMtfJDumacL+led0XyrVdA24NNPkLECwWKavEjp0LnZgJtGd5d9vbF28QDJVtkerbFVgpgge1ygvzw6hcDH4r15K5QJaJm/SFY/sPaB4Rr6FXl7Pkvbvz4cfklTLHWMI5f0VkdFgBlCA2B5uzWeW+TlDtRD5alqG2dysDJgHbuTSTP69VSZvDag=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4620.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(39860400002)(376002)(396003)(366004)(346002)(38100700002)(122000001)(6486002)(6636002)(316002)(71200400001)(110136005)(66556008)(64756008)(36756003)(8936002)(76116006)(8676002)(66946007)(66476007)(66446008)(478600001)(2616005)(86362001)(6512007)(6506007)(66574015)(83380400001)(186003)(26005)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?cTVnanllZ1ZtRmJNaDB3YXJzcElnQTNWTng4cFlvVWxrTmJ3NitkLzdrQXhk?=
 =?utf-8?B?MXpJMDkvRmtLVnpWbDVtUWxiMFplbUFhWE5OSmVRQzRaVHZXN3NrS0M0Q2dq?=
 =?utf-8?B?cEY0ckdWSVlBcGZwRzl0dkhTRXIxT00zL3kvRU5VZHFwRU5ZdEpVV0srSTZs?=
 =?utf-8?B?akQzOUd6MmhFMlhGcVJmalNvVEtjdlVQSEFSSGlOTlpsaFoxL1p5K1dKZWhI?=
 =?utf-8?B?bFpSbnAzZ0dSRnVEaWRZak1UdFdac3MyQWU0LzZBODdLTG5TcTg5S2dqTXhM?=
 =?utf-8?B?cCszV1Bqb0twUTFFU09qZE83QWQyMEtjWlpXMFBhQm5VR3A2S0o1c0lkWHA1?=
 =?utf-8?B?TG53YlJ3UUxNMnJYeXg4WG10SW5KK0NuVkYwd2RSTHREYm8yRDc3SzR0RU10?=
 =?utf-8?B?RnpZakI2MllpWC9BcFpvbzNZSmxGRHpNZEhaWFFNaVVoUjByOEJHRmkrN0wy?=
 =?utf-8?B?V09HV2E1N3Q5STd6aXg3NGxvVGJDMzZZZVVxL2hFSWlCa0hkOTJ5alJ2cVV3?=
 =?utf-8?B?Q0lHVG44RU05bWZBYjZpdlJVa01sQVZsYm1iemlxY3MwRG5FS0VmenNxZk14?=
 =?utf-8?B?OU9jeVJ5QU5RdllSdjd5U0kwbnJVbzI5L3YzYU5RMUl1aEdRU3FVa1daNUky?=
 =?utf-8?B?dzErUXNZUk0vTVpjVFBNSHFhNzRJY2JaSEtRNTJ6NWNsK0dtNjBuVkJUbTd6?=
 =?utf-8?B?bks2T0FjN1RmaEI3QmhueWxIc3JPREwzNlI0Y3kya0tvTW4yU0ZRUnlhL0Yx?=
 =?utf-8?B?aDdXYkZLL3NkWmU1R2dVeFlraUlQTHd5YXBRaXRsV3lGQnFZeEVaUkUzWXFp?=
 =?utf-8?B?MDdDRjlhekJ0Ym41bDIrY1JLejVGU3p1akozVkZuUWVrK0hNS0NObVJkL1VB?=
 =?utf-8?B?dGx6eDFxZGEyLzVxbWRnU3hpampZWEYrQUxXa2F4OGFEbTIyeUIzVHdFZWk0?=
 =?utf-8?B?a25aVTFqaFFDaGIwMWFGRTR4dUFHK1E1Ujd3LzlUZy9rdXBZT213RmZLZEI1?=
 =?utf-8?B?MWZCYnpOeFVqMFNzK3llVUFQRGFsR0VxeFhmNmR1bjFpanhrOFZJWHQyc3Z6?=
 =?utf-8?B?K2M0SEFOTnVncEpaNHBSWFBueDFoOGlQa0dDWWNwMWs1Sm4wQW1KOWErMHU5?=
 =?utf-8?B?ekNUZVhDaUdiSko5SGNvMUNUNEwxMWxKNlgzcGJlTlgyZzRmd21WZENqam5y?=
 =?utf-8?B?WUxZYm1UMGZURCttZE5rdjFqQy9ueEZJOWFwcHRRRnlmZ1pTRkVWSUhqYlBv?=
 =?utf-8?B?QXNaR0tDSHFzSFl4djcyc0xwWEdVRXJPUG9Gcmp1Wnl5Mmd1NEJobFQyNUpM?=
 =?utf-8?B?dmtWcmVBMGFTU2s3RGlLcjM0MEk3QlN1SzhqdmFiTnN1VEpNRjF0dmlKZXB2?=
 =?utf-8?B?Z2xNcDczWmNmMjVGK2FiL2JvVzNmL0FoL0lqMThHcWxuZHBVNTRKeWJ5dkpo?=
 =?utf-8?B?c2txVk9UZDJwcU5GdDloWWhFNi9TNW5WbkxhOE1ORHRuMHNVdmVkVXplU0dR?=
 =?utf-8?B?MXQxbEdKQXZBWmVMeThUMEEyMWgwOFN6U3gvOXRzaEt2UUZRQnBmeW4ybm4r?=
 =?utf-8?B?VkZ6R2NwWWhrRmliZnIyQ3U5Sy9GeUhnN0ZnNG85azJoejFVTzFXWjJCQldJ?=
 =?utf-8?B?UGtsSnpXcW5EU1ZEa2pVVHJWRE41bnZtU2xyM3hpN2dsQVpmSjRHaFJ5RVpt?=
 =?utf-8?B?UWdhQlJXeHZIQVZjTTFqWWMrTEVhMXZORXFRcXZrL25Ra0dscUIydTNwWWZS?=
 =?utf-8?Q?yl2pTbbarM/rC2QkquHS+YFMm+s+VaIP/FshGL/?=
Content-ID: <5E1604820E026A4785DE35DDBD6F00E5@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4620.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 415582c0-1724-493d-2011-08d9226b7472
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 May 2021 06:31:55.9131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T+XnRAqrafQqJIrh8mXUvIi/jmwUr9xChzKmDLk4GqVAvzQ/r2WzFSIwBtmmjlq5nKFlg4YJENT2SC9+6V7CvqEw+JSOCItBRzRP2clTNWs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5106
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: Reading DPRX caps in LTTPR
 transparent mode after LTTPR detection
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gU2F0LCAyMDIxLTA1LTI5IGF0IDEzOjE3ICswODAwLCBXaWxsaWFtIFRzZW5nIHdyb3RlOg0K
PiBJbiBzb21lIGNhc2VzLCB0aGUgTUFYX0xBTkVfQ09VTlQgaW4gdGhlIHJlZ2lzdGVyIGF0IERD
UEQgQWRkcmVzcw0KPiAwMDAyaA0KPiBtYXkgYmUgdXBkYXRlZCBieSBMVFRQUiBpbiBub24tdHJh
bnNwYXJlbnQgbW9kZSB3aGlsZSByZWFkaW5nIERQUlgNCj4gQ2Fwcw0KPiByZWdpc3RlcnMsIGUu
Zy4sIHRoZSBsYW5lIGNvdW50IGlzIGNoYW5nZWQgZnJvbSAyIHRvIDQuIFRoaXMgbWF5DQo+IGNh
dXNlDQo+IExpbmsgVHJhaW5pbmcgZmFpbHVyZSBiZWNhdXNlIG9mIHRoZSB1cGRhdGVkIGxhbmUg
Y291bnQsIHdoaWNoIG1pZ2h0DQo+IG5vdA0KPiBiZSBzdXBwb3J0ZWQgYnkgdGhlIERQUlguDQo+
IA0KSGkgV2lsbGlhbSwNCiANCkltcmUgaXMgYmV0dGVyIGVxdWlwcGVkIHRvIHJlcGx5IGhlcmUu
IA0KIA0KSG93ZXZlciwgSSBiZWxpZXZlIHRoaXMgcGF0Y2ggaXMgdmlvbGF0aW5nIHRoZSBzcGVj
cy4gUXVvdGluZyB0aGUNCmZvbGxvd2luZyBmcm9tIERQIFNwZWNzIFNlYyDigJwzLjYuNi42LjEg
TFRUUFIgUmVjb2duaXRpb27igJ06DQogDQoxLSAg4oCcQWZ0ZXIgSFBEIGlzIHByb3BhZ2F0ZWQg
ZnJvbSB0aGUgRFBSWCB0byB0aGUgRFBUWCwgYSBEUCBTb3VyY2UNCmRldmljZSB3aXRoIGEgRFBU
WCBzaGFsbCByZWFkIHNwZWNpZmljIHJlZ2lzdGVycyB3aXRoaW4gdGhlIExUVFBSIGZpZWxkDQoo
RFBDRCBBZGRyZXNzZXMgRjAwMDBoIHRocm91Z2ggRjAwMDRoOyBzZWUgVGFibGUgMi0xOTgpIHRv
IGRldGVybWluZQ0Kd2hldGhlciBhbnkgTFRUUFIocykgYXJlIHByZXNlbnQgYW5kIGlmIHNvLCBo
b3cgbWFueS4gVGhpcyByZWFkIHNoYWxsDQpiZSBpbiB0aGUgZm9ybSBvZiBhIDUtYnl0ZSBuYXRp
dmUgQVVYIFJlYWQgdHJhbnNhY3Rpb24uIElmIG9uZSBvciBtb3JlDQpMVFRQUnMgYXJlIHByZXNl
bnQgaW4gdGhlIGxpbmsgKGFzIGluZGljYXRlZCBieSB0aGUgRFBUWCByZWNlaXZpbmcgYQ0KcmVz
cG9uc2Ugd2l0aCBhIHZhbHVlIG9mIDgwaCwgNDBoLCAyMGgsIDEwaCwgMDhoLCAwNGgsIDAyaCwg
b3IgMDFoIGZvcg0KdGhlIFBIWV9SRVBFQVRFUl9DTlQgcmVnaXN0ZXIgKERQQ0QgQWRkcmVzcyBG
MDAwMmgpKSwgdGhlIExUVFBSLWF3YXJlDQpEUFRYIG1heSBwbGFjZSB0aGUgTFRUUFIocykgaW4g
Tm9uLXRyYW5zcGFyZW50IG1vZGUuDQrigJ0NCiANCjItICDigJxBZnRlciBMVFRQUiByZWNvZ25p
dGlvbiwgYSBEUCBTb3VyY2UgZGV2aWNlIHdpdGggYSBEUFRYIHNoYWxsIHJlYWQNCnRoZSBEUCBT
aW5rIGRldmljZSB3aXRoIGEgRFBSWOKAmXMgY2FwYWJpbGl0eSBieSByZWFkaW5nIERpc3BsYXlJ
RCBvcg0KbGVnYWN5IEVESUQgYW5kIHRoZSBEUFJY4oCZcyBSZWNlaXZlciBDYXBhYmlsaXR5IGZp
ZWxkIChEUENEIEFkZHJlc3Nlcw0KMDAwMDBoIHRocm91Z2ggMDAwRkZoOyBzZWUgVGFibGUgMi0x
ODMpLuKAnQ0KIA0KU28geW91ciBwYXRjaCBpcyBzZXR0aW5nIG5vbi10cmFuc3BhcmVudCBtb2Rl
IGFmdGVyIHJlYWRpbmcgRFBDRF9DQVANCndoaWNoIGlzIG5vdCBhY2NvcmRpbmcgdG8gc3BlY3Mu
IA0KIA0KSWYgdGhpcyBwYXRjaCBhZGRyZXNzZXMgdGhlIHByb2JsZW0gd2UgZGlzY3Vzc2VkIGJl
Zm9yZSBpdCBpcyBhY3R1YWxseQ0KdGhlIG90aGVyIHdheSBhcm91bmQuICBMVFRQUiBpbiBub24t
dHJhbnNwYXJlbnQgbW9kZSB3YXMgbm90IHNldHRpbmcNCmxhbmUgY291bnQgZnJvbSAyIHRvIDQu
IEl0IGlzIExUVFBSIGluIG5vbi1MVFRQUiBhbmQgVHJhbnNwYXJlbnQtTW9kZQ0Kd2FzIHNldHRp
bmcgdGhlIGxhbmUgY291bnQgZnJvbSA0IHRvIDIuIA0KIA0KSSBiZWxpZXZlIHRoZSBiZXN0IHNv
bHV0aW9uIGZvciB0aGlzIGlzc3VlIGlzIHdoYXQgSW1yZSBwbGFucyB0bw0KaW1wbGVtZW50IHdo
ZXJlIG9uY2Ugd2UgZmFpbCBMVCBvbiA0IGxhbmVzLCB3ZSBmYWxsYmFjayB0byAyIGxhbmVzLiAN
CiANClRoYW5rIFlvdQ0KS2hhbGVkDQoNCj4gVGhpcyBjaGFuZ2UgbWF5IHdvcmsgYXJvdW5kIHRo
ZSBwcm9ibGVtLCB3aGljaCBMVFRQUiB1cGRhdGVzIHRoZSBEQ1BEDQo+IHJlZ2lzdGVyIG5vdCBs
aXNldGVkIGluIHRoZSB0YWJsZSwgaS5lLiwgVGFibGUgMy02NSwgbWVudGlvbmVkIGluIHRoZQ0K
PiBEUCBzdGFuZGFyZCwgU2VjdGlvbiAzLjYuMywgVmVyc2lvbiAyLjAuDQo+IA0KPiAiIg0KPiBV
cG9uIGRpc2NvdmVyaW5nIGl0cyBsb2NhdGlvbiBiZXR3ZWVuIHRoZSBEUFRYIGFuZCBEUFJYLCB0
aGUgTFRUUFINCj4gcmVwbGllcyB0byBBVVggcmVxdWVzdCB0cmFuc2FjdGlvbnMgdG8gaXRzIERQ
Q0QgYWRkcmVzcyByYW5nZSB3aXRoaW4NCj4gdGhlDQo+IExUVFBSIGZpZWxkLiBUaGUgTFRUUFIg
cGFzc2VzIHRocm91Z2ggYWxsIG90aGVyIEFVWCByZXF1ZXN0DQo+IHRyYW5zYWN0aW9ucw0KPiB3
aXRoIG9uZSBleGNlcHRpb24g4oCTIGFuIExUVFBSIHNoYWxsIHNub29wIEFVWCByZXF1ZXN0IHRy
YW5zYWN0aW9ucyB0bw0KPiB0aG9zZSBEUENEIEFkZHJlc3NlcyBsaXN0ZWQgaW4gVGFibGUgMy02
NSBhbmQgdGFrZSBuZWNlc3NhcnkgYWN0aW9ucw0KPiBhcw0KPiBzcGVjaWZpZWQgaW4gdGhlIHRh
YmxlLiAoRm9yIGNvbXBsZXRlIHJlZ2lzdGVyIGRlc2NyaXB0aW9ucywNCj4gc2VlIFRhYmxlIDIt
MTg0LikNCj4gIiINCj4gDQo+IENjIDogS2hhbGVkIEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhh
bGxhd3lAaW50ZWwuY29tPg0KPiBDYyA6IEltcmUgRGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4N
Cj4gQ2MgOiBUZWphcyBVcGFkaHlheSA8dGVqYXNrdW1hcnguc3VyZW5kcmFrdW1hci51cGFkaHlh
eUBpbnRlbC5jb20+DQo+IENjIDogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogV2lsbGlhbSBUc2VuZyA8d2lsbGlhbS50c2Vu
Z0BpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlu
a190cmFpbmluZy5jIHwgNDQgKysrKysrKysrLS0tLS0tDQo+IC0tLS0NCj4gIDEgZmlsZSBjaGFu
Z2VkLCAyMiBpbnNlcnRpb25zKCspLCAyMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5j
DQo+IGluZGV4IDUwY2FlMDE5OGEzZC4uMzY1OGRlYjlkYTFjIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0K
PiBAQCAtMTMxLDcgKzEzMSw2IEBAIGludGVsX2RwX3NldF9sdHRwcl90cmFuc3BhcmVudF9tb2Rl
KHN0cnVjdA0KPiBpbnRlbF9kcCAqaW50ZWxfZHAsIGJvb2wgZW5hYmxlKQ0KPiAgc3RhdGljIGlu
dCBpbnRlbF9kcF9pbml0X2x0dHByKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApDQo+ICB7DQo+
ICAJaW50IGx0dHByX2NvdW50Ow0KPiAtCWludCBpOw0KPiAgDQo+ICAJaWYgKCFpbnRlbF9kcF9y
ZWFkX2x0dHByX2NvbW1vbl9jYXBzKGludGVsX2RwKSkNCj4gIAkJcmV0dXJuIDA7DQo+IEBAIC0x
NTIsMjcgKzE1MSw2IEBAIHN0YXRpYyBpbnQgaW50ZWxfZHBfaW5pdF9sdHRwcihzdHJ1Y3QgaW50
ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCSAqLw0KPiAgCWludGVsX2RwX3NldF9sdHRwcl90cmFu
c3BhcmVudF9tb2RlKGludGVsX2RwLCB0cnVlKTsNCj4gIA0KPiAtCS8qDQo+IC0JICogSW4gY2Fz
ZSBvZiB1bnN1cHBvcnRlZCBudW1iZXIgb2YgTFRUUFJzIG9yIGZhaWxpbmcgdG8gc3dpdGNoDQo+
IHRvDQo+IC0JICogbm9uLXRyYW5zcGFyZW50IG1vZGUgZmFsbC1iYWNrIHRvIHRyYW5zcGFyZW50
IGxpbmsgdHJhaW5pbmcNCj4gbW9kZSwNCj4gLQkgKiBzdGlsbCB0YWtpbmcgaW50byBhY2NvdW50
IGFueSBMVFRQUiBjb21tb24gbGFuZS0gcmF0ZS9jb3VudA0KPiBsaW1pdHMuDQo+IC0JICovDQo+
IC0JaWYgKGx0dHByX2NvdW50IDwgMCkNCj4gLQkJcmV0dXJuIDA7DQo+IC0NCj4gLQlpZiAoIWlu
dGVsX2RwX3NldF9sdHRwcl90cmFuc3BhcmVudF9tb2RlKGludGVsX2RwLCBmYWxzZSkpIHsNCj4g
LQkJZHJtX2RiZ19rbXMoJmRwX3RvX2k5MTUoaW50ZWxfZHApLT5kcm0sDQo+IC0JCQkgICAgIlN3
aXRjaGluZyB0byBMVFRQUiBub24tdHJhbnNwYXJlbnQgTFQgbW9kZQ0KPiBmYWlsZWQsIGZhbGwt
YmFjayB0byB0cmFuc3BhcmVudCBtb2RlXG4iKTsNCj4gLQ0KPiAtCQlpbnRlbF9kcF9zZXRfbHR0
cHJfdHJhbnNwYXJlbnRfbW9kZShpbnRlbF9kcCwgdHJ1ZSk7DQo+IC0JCWludGVsX2RwX3Jlc2V0
X2x0dHByX2NvdW50KGludGVsX2RwKTsNCj4gLQ0KPiAtCQlyZXR1cm4gMDsNCj4gLQl9DQo+IC0N
Cj4gLQlmb3IgKGkgPSAwOyBpIDwgbHR0cHJfY291bnQ7IGkrKykNCj4gLQkJaW50ZWxfZHBfcmVh
ZF9sdHRwcl9waHlfY2FwcyhpbnRlbF9kcCwNCj4gRFBfUEhZX0xUVFBSKGkpKTsNCj4gLQ0KPiAg
CXJldHVybiBsdHRwcl9jb3VudDsNCj4gIH0NCj4gIA0KPiBAQCAtMTk3LDYgKzE3NSw3IEBAIHN0
YXRpYyBpbnQgaW50ZWxfZHBfaW5pdF9sdHRwcihzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2Rw
KQ0KPiAgaW50IGludGVsX2RwX2luaXRfbHR0cHJfYW5kX2RwcnhfY2FwcyhzdHJ1Y3QgaW50ZWxf
ZHAgKmludGVsX2RwKQ0KPiAgew0KPiAgCWludCBsdHRwcl9jb3VudCA9IGludGVsX2RwX2luaXRf
bHR0cHIoaW50ZWxfZHApOw0KPiArCWludCBpOw0KPiAgDQo+ICAJLyogVGhlIERQVFggc2hhbGwg
cmVhZCB0aGUgRFBSWCBjYXBzIGFmdGVyIExUVFBSIGRldGVjdGlvbi4gKi8NCj4gIAlpZiAoZHJt
X2RwX3JlYWRfZHBjZF9jYXBzKCZpbnRlbF9kcC0+YXV4LCBpbnRlbF9kcC0+ZHBjZCkpIHsNCj4g
QEAgLTIwNCw2ICsxODMsMjcgQEAgaW50IGludGVsX2RwX2luaXRfbHR0cHJfYW5kX2RwcnhfY2Fw
cyhzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCQlyZXR1cm4gLUVJTzsNCj4gIAl9
DQo+ICANCj4gKwkvKg0KPiArCSAqIEluIGNhc2Ugb2YgdW5zdXBwb3J0ZWQgbnVtYmVyIG9mIExU
VFBScyBvciBmYWlsaW5nIHRvIHN3aXRjaA0KPiB0bw0KPiArCSAqIG5vbi10cmFuc3BhcmVudCBt
b2RlIGZhbGwtYmFjayB0byB0cmFuc3BhcmVudCBsaW5rIHRyYWluaW5nDQo+IG1vZGUsDQo+ICsJ
ICogc3RpbGwgdGFraW5nIGludG8gYWNjb3VudCBhbnkgTFRUUFIgY29tbW9uIGxhbmUtIHJhdGUv
Y291bnQNCj4gbGltaXRzLg0KPiArCSAqLw0KPiArCWlmIChsdHRwcl9jb3VudCA8PSAwKQ0KPiAr
CQlyZXR1cm4gMDsNCj4gKw0KPiArCWlmICghaW50ZWxfZHBfc2V0X2x0dHByX3RyYW5zcGFyZW50
X21vZGUoaW50ZWxfZHAsIGZhbHNlKSkgew0KPiArCQlkcm1fZGJnX2ttcygmZHBfdG9faTkxNShp
bnRlbF9kcCktPmRybSwNCj4gKwkJIlN3aXRjaGluZyB0byBMVFRQUiBub24tdHJhbnNwYXJlbnQg
TFQgbW9kZSBmYWlsZWQsDQo+IGZhbGwtYmFjayB0byB0cmFuc3BhcmVudCBtb2RlXG4iKTsNCj4g
Kw0KPiArCQlpbnRlbF9kcF9zZXRfbHR0cHJfdHJhbnNwYXJlbnRfbW9kZShpbnRlbF9kcCwgdHJ1
ZSk7DQo+ICsJCWludGVsX2RwX3Jlc2V0X2x0dHByX2NvdW50KGludGVsX2RwKTsNCj4gKw0KPiAr
CQlyZXR1cm4gMDsNCj4gKwl9DQo+ICsNCj4gKwlmb3IgKGkgPSAwOyBpIDwgbHR0cHJfY291bnQ7
IGkrKykNCj4gKwkJaW50ZWxfZHBfcmVhZF9sdHRwcl9waHlfY2FwcyhpbnRlbF9kcCwNCj4gRFBf
UEhZX0xUVFBSKGkpKTsNCj4gKw0KPiAgCXJldHVybiBsdHRwcl9jb3VudDsNCj4gIH0NCj4gIEVY
UE9SVF9TWU1CT0woaW50ZWxfZHBfaW5pdF9sdHRwcl9hbmRfZHByeF9jYXBzKTsNCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkludGVsLWdmeCBtYWlsaW5n
IGxpc3QKSW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwpodHRwczovL2xpc3RzLmZyZWVk
ZXNrdG9wLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2ludGVsLWdmeAo=
