Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 572FD3E85DE
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Aug 2021 00:04:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B6B89E0D;
	Tue, 10 Aug 2021 22:04:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9487F89E0D
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Aug 2021 22:04:01 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10072"; a="202186304"
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="202186304"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Aug 2021 15:04:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,310,1620716400"; d="scan'208";a="421354562"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP; 10 Aug 2021 15:04:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 15:03:59 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Tue, 10 Aug 2021 15:03:59 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Tue, 10 Aug 2021 15:03:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Tue, 10 Aug 2021 15:03:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Li9BTpSWCDUOYptI99g9rQg3N09ytub/84+2CJygt3F3iI1VzorfQV3tXGNyv1TTHePikAEo7HqJactg/0/TWPVqfb6yJUO9+lhMmJJZVEF8yufw80fHXn1YTqbserH1I6UzkauuN+9+1B8bK+zsuU+hRFGK774qeTXduvf0D4+v8v6DRDFWiZUC91BwchJhUOndM2KLQ3ueeiD4AdIdV+NYcGglB/QEZQh2+LrGYQO0hMQF+SwVtPv5LneHqoGZbUOGIe1YMx38nihRSk4XvwDj0W/3La5jeoMDD1nrSF571hExVKX5qnLbMZz1dLD2Jr2j/WEi9IamjULIbGCsUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MvgF5dRAiXOd3shBkIRwd3gyO1YLt677E7MOcwUf8jw=;
 b=VnjXW2MV4t3xizAymHGqDqlawSv0RX6WppfX9uYqTi2tAzm/PVdiWRwxkp5WYkLCaClFICZGh0aoY0X3AoFyC6CIXS/r5+xepS/Pfkh+6Fh0GGo+HZF+N71p3pcoCtmEcvz/Mc7b6kPI0chCzlsCjzgJu24wsHzxNa+rCEgXU9gzNPQutwRHgMNRCUpJl64J/aMYWFLbOkhKh9ViyTzg1dsFLmMnYcUc/04xpgLBxa5jj3XprF324SbuboqWESU+KzgNNtmKf9PL0iBcC8aNtWnejfBuSDC3HEULCZUZHdS0c2A8MNO88fWGGsXBVrs40+A8QzQWk9fcSLEdlNHlBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MvgF5dRAiXOd3shBkIRwd3gyO1YLt677E7MOcwUf8jw=;
 b=E6rAGrQsH53zU7GaIYKb5V5t8zTj7xrs1NuQD6Vm/4mw2c+bYYEveonO+3ytgSf5GMQQCAAbdxkYLLG7qQv8mIlMdrjW9m6e/zdzv4pj8mTXUG7fDPaZnyxuJ3jwzHATO3eq7hLNbKjMLzTGWRKc/Eiw/WbkV8UZTCkPp+XmVXg=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by BL0PR11MB3267.namprd11.prod.outlook.com (2603:10b6:208:6b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4394.18; Tue, 10 Aug
 2021 22:03:57 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::5e9:8fa4:e65a:30a9]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::5e9:8fa4:e65a:30a9%7]) with mapi id 15.20.4394.023; Tue, 10 Aug 2021
 22:03:57 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/6] drm/i915/gen11: Update shadowed register
 table
Thread-Index: AQHXhDx3Lm6QqPzKMkCXPqFDgPBZXattXr+A
Date: Tue, 10 Aug 2021 22:03:57 +0000
Message-ID: <9d4c454bf6454bbcf3e284c78d7d6a17bc094ab7.camel@intel.com>
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
 <20210729054118.2458523-5-matthew.d.roper@intel.com>
In-Reply-To: <20210729054118.2458523-5-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a65e1612-cd76-4fca-7e55-08d95c4ac034
x-ms-traffictypediagnostic: BL0PR11MB3267:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BL0PR11MB3267383516476CC08EA00B1E9FF79@BL0PR11MB3267.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8ZbI4IGds9XIfGTYi2lWolITjlJ1Xy6iYSkZYcH1hx0FmlNfA53drphCpyYbmJtAHuiXfu7G0x5KXWBc8wf80M0HZG8EcsE2QRxdxltX+8pH+mQcOppi5xT6TGICWNtcU5pvyfRhi8YdmH2FaXAkKj/BseuJGRsCNuc2wmF4oarRyGF+UrUXAjmuZ0uMfa50JxuG3NOC2Z0sN7ojGr8cR4X6KwakmzkDK0nQmMnB3bT1t3ZSvZUZsxQ2uZTub/Lkr6NVT10gqGK2vdDEGC1rcWs8Aag2+NzxTtZWZa4Xm8SW57SQwjxY6VfX5VacHLmQh/lnljRm9RA/635OZ5xTE1bS6sF/p8WghuhvQy4nr1KissrMKW3aBGogfDYaS2gfsZYuXOdbjmw1bO/NZvyNOv4U60QzvrCVpAXwtYDxLdNxkW0AUkGqJqOFdGzbuPudpKXwlLjEnHlo/b89GXW4f5H22XMpHHWAAk8IA4V9qpqZCw4ePNRU1ZBL8cl2Sz/ggcqLw0FQsRbzb7CaS/dMThRU3S8so+94/9CIBSCJoNn1LqQEuO0xTSJDaJLyj+h0VSwox/USV7xA20vYJUWO2Ti+X4+vs14KC0uqYrNdPBxwVez1c0QtXsbRE0G08bU9+oN1/v1KaLHn/xaoCzg4DXrurXWZnypzpxa0UU6mUPxcHGzCMwSYpUpNkekr1a4SrycjDHMposOHaemE9eZZaQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(346002)(136003)(376002)(39860400002)(396003)(6486002)(5660300002)(2616005)(316002)(478600001)(36756003)(110136005)(186003)(66556008)(66476007)(38070700005)(76116006)(91956017)(83380400001)(26005)(66946007)(66446008)(86362001)(6506007)(64756008)(38100700002)(122000001)(8936002)(2906002)(8676002)(6512007)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aExlVlpJdlJYUit1TFYreVVtYXQ4UEJseUJ4WG93K1VFYzdxYStFM0R1Ymxx?=
 =?utf-8?B?L202NSszbFZzTVJKYWo0T29HdkNmOFZKQkNsV1JTSE5OUGF6MXdHeXF2ZDZj?=
 =?utf-8?B?LzJ5R2NlRlVXc09iamJzK0FEa01BU1hEK0dwRWVtSjhvQmYyWUFlUjlZaHdW?=
 =?utf-8?B?U2NwM2ttMjk0MnB0K1dmZDVpS0NxenpXYnZRRGRmM2hTcVBxbjROeGhPL25p?=
 =?utf-8?B?SmlOS0pPcndHelQyNE1RQmJjWjRwZFB6U2k4eURDWFpRVU1EMUZvcXBnZ1dx?=
 =?utf-8?B?N2doa2t6VzJDaWN4cjlVc2RiOTU2Q1ZDSFMwR1lrZERDaE5HT0grME1saEx4?=
 =?utf-8?B?UGczVzU0bFVOM3hheEtLVnlzL0lka1V6bE9QMW1NaldpZGNzdHVpWHllUTBh?=
 =?utf-8?B?aitmSlJjVzV3bmhoOGxYNHduclFhODZZeGhteDlqVzJGT2JtVmhhNDBpZ0ZD?=
 =?utf-8?B?Q3RrUjBwUDZnYXJ5UWdzZGR2eG9mUXZBYzIvd2ZKRmViZGJ1K3NqZkxDZTRF?=
 =?utf-8?B?T081ZG1XS1JsdzZEMmd5aFJtc2x4K2g2MzVzeDhoRjhURmcvOEpKcThvVStU?=
 =?utf-8?B?TlM0YU1TOFhmNWtXMTRNOGZybXppZ0g0TUNSdGMxSGhyelZaT3VpMXFqc2pp?=
 =?utf-8?B?QWg5OWJjSWM1M3VRMHg3b0xaei9qMDQ0K1pPbVQ4WGViWFpZbXNnL2J5M3pW?=
 =?utf-8?B?Q29vR2prMlpKWjR5Rmx4OXZtVVhzN3FtTmpIcWpSL01TaFJ4SG5XUTJkYzRX?=
 =?utf-8?B?UVR2WVEyWEJ3RGtsVmJPSG95TXhXcVNWSytsckRQNXFzUzJqQm5leHlhTTFy?=
 =?utf-8?B?ZWJCN29yQlQzSSsxU2JXMlh3OTlYYjdBNzlaU241dTZKMjY5R283dnV1eW9P?=
 =?utf-8?B?T2sxQkNtRTB3VjJpMTU0NUZsdU1wTWcyNnJTZXVKc1NwcTBRMXQwdC9wazZH?=
 =?utf-8?B?TjVuK2dNU0lkdyswSElxNU1nclZHOEJPMkRFc2JyM2JEUldKRk4weGI5UmJu?=
 =?utf-8?B?QStrS1Y1ZzV0QkZ0QWRjZ1J3RHBubkljUjJpVGY4NytMUCtaRWVhaDFpTXMz?=
 =?utf-8?B?TmU3UGtkL0Q3czJwMVRtRmZFVE0zQ08xZDMxbkNoVFpGZzlENnhjL25hRkFJ?=
 =?utf-8?B?RUtnL010R0NSVlYrUmUzWldId2ZuclVVL1p2dHVzOVIxaFVRL0lHSENhc1l0?=
 =?utf-8?B?aERIem5rcHNlT0JMTTVCZzVrRHRIUXhLWDVVUU9xVnVTMDhIMnhLR2NFMlZE?=
 =?utf-8?B?UDdQdTNzKzNrYXZxUUZsVEZwVzE0YUZPQWp3bXBHSnJ3TWhJTDdKbFBGVkVt?=
 =?utf-8?B?RjY2ZHFxUzNtSjZFU1RIOS9IVXZBQndBcmZ6QVk2aFJ3VUF0ZDFUWEwvaUox?=
 =?utf-8?B?NWFITWVlZWhLWkVaUXRpUDkwMHRBMHlQa0JzU0dPd3FVRHAyTGR5TWRCUDM1?=
 =?utf-8?B?RHBteXJ4eGpIUnErV2xqeXpGbSs2VjhFVnkyUHN6eUIvMUhaMXJwVUtMd2pa?=
 =?utf-8?B?RDNZaDYwRnZTdGlzT1lsQTI0akRyQmdLQWFmY2puYTFZcnY2cGtUZ05OMWhw?=
 =?utf-8?B?U213bXJaa2pRdXh4eWpYVVhYZVY4UEFxVXJQejRpSG1MNmVBbkg2ZnFTSnZl?=
 =?utf-8?B?REx0YzErQmhaWlV1bWE1aGwyem45SDVsK1RSWUpueU9oTHIrbkw2ZHUxd0tI?=
 =?utf-8?B?VHNVRTBpVmdpaWc2bDVEWE5wM0VQRHJlb2VwS1BqTVc3dnc3MUxsWTdnc1dp?=
 =?utf-8?B?M1Q3eGN1UkxGQ2Y2QzRFL1ExM21tc3kyUnREN3Fib2c2RklOWHhUL0JSNWE4?=
 =?utf-8?B?eTh1eFBOS1VtWDRSL1lHQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <62AC04E15DD6E34C943E9D9B410968FE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a65e1612-cd76-4fca-7e55-08d95c4ac034
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2021 22:03:57.0093 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Qr5/TB2E/PIU3Byt4AJO5vyQuGod/2Bc+kAcIfoxmsn58fWjg7xXASsGx8dzbclCInqXKpwDKtyaNJNbIwRV9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3267
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/6] drm/i915/gen11: Update shadowed
 register table
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

UmV2aWV3ZWQtYnk6IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4NCi1jYXoN
Cg0KT24gV2VkLCAyMDIxLTA3LTI4IGF0IDIyOjQxIC0wNzAwLCBNYXR0IFJvcGVyIHdyb3RlOg0K
PiBUaGUgYnNwZWMgbGlzdHMgbWFueSBzaGFkb3dlZCByZWdpc3RlcnMgKGkuZS4sIHJlZ2lzdGVy
cyBmb3Igd2hpY2ggd2UNCj4gZG9uJ3QgbmVlZCB0byBncmFiIGZvcmNld2FrZSB3aGVuIHdyaXRp
bmcpIHRoYXQgd2Ugd2VyZW4ndCB0cmFja2luZw0KPiBpbg0KPiB0aGUgZHJpdmVyLiAgQWx0aG91
Z2ggd2UgbWF5IG5vdCBhY3R1YWxseSB1c2UgYWxsIG9mIHRoZXNlIHJlZ2lzdGVycw0KPiByaWdo
dCBub3csIGl0J3MgYmVzdCB0byBqdXN0IG1hdGNoIHRoZSBic3BlYyBsaXN0IGV4YWN0bHkuDQo+
IA0KPiBOb3RlIHRoYXQgdGhlIGJzcGVjIGFsc28gbGlzdHMgcmVnaXN0ZXJzIHRoYXQgYXJlIHNo
YWRvd2VkIGZvcg0KPiB2YXJpb3VzDQo+IEhXLWludGVybmFsIGFjY2Vzc2VzOyB3ZSBjYW4gaWdu
b3JlIHRob3NlIGFuZCBqdXN0IGxpc3QgdGhlIG9uZXMgdGhhdA0KPiBhcmUgc2hhZG93ZWQgZm9y
IGFjY2Vzc2VzIGZyb20gdGhlIElBL0NQVS4NCj4gDQo+IEJzcGVjOiAxODMzMw0KPiBTaWduZWQt
b2ZmLWJ5OiBNYXR0IFJvcGVyIDxtYXR0aGV3LmQucm9wZXJAaW50ZWwuY29tPg0KPiAtLS0NCj4g
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3VuY29yZS5jIHwgMjIgKysrKysrKysrKysrKyst
LS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5jb3Jl
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF91bmNvcmUuYw0KPiBpbmRleCAyY2Zi
YzE2ZjdkZWUuLjMxZTA0NTZkY2U1YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfdW5jb3JlLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfdW5j
b3JlLmMNCj4gQEAgLTk2MCwyMCArOTYwLDI2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9y
YW5nZQ0KPiBnZW4xMV9zaGFkb3dlZF9yZWdzW10gPSB7DQo+ICAJeyAuc3RhcnQgPSAgIDB4MjU1
MCwgLmVuZCA9ICAgMHgyNTUwIH0sDQo+ICAJeyAuc3RhcnQgPSAgIDB4QTAwOCwgLmVuZCA9ICAg
MHhBMDBDIH0sDQo+ICAJeyAuc3RhcnQgPSAgMHgyMjAzMCwgLmVuZCA9ICAweDIyMDMwIH0sDQo+
IC0JeyAuc3RhcnQgPSAgMHgyMjU1MCwgLmVuZCA9ICAweDIyNTUwIH0sDQo+ICsJeyAuc3RhcnQg
PSAgMHgyMjIzMCwgLmVuZCA9ICAweDIyMjMwIH0sDQo+ICsJeyAuc3RhcnQgPSAgMHgyMjUxMCwg
LmVuZCA9ICAweDIyNTUwIH0sDQo+ICAJeyAuc3RhcnQgPSAweDFDMDAzMCwgLmVuZCA9IDB4MUMw
MDMwIH0sDQo+IC0JeyAuc3RhcnQgPSAweDFDMDU1MCwgLmVuZCA9IDB4MUMwNTUwIH0sDQo+ICsJ
eyAuc3RhcnQgPSAweDFDMDIzMCwgLmVuZCA9IDB4MUMwMjMwIH0sDQo+ICsJeyAuc3RhcnQgPSAw
eDFDMDUxMCwgLmVuZCA9IDB4MUMwNTUwIH0sDQo+ICAJeyAuc3RhcnQgPSAweDFDNDAzMCwgLmVu
ZCA9IDB4MUM0MDMwIH0sDQo+IC0JeyAuc3RhcnQgPSAweDFDNDU1MCwgLmVuZCA9IDB4MUM0NTUw
IH0sDQo+ICsJeyAuc3RhcnQgPSAweDFDNDIzMCwgLmVuZCA9IDB4MUM0MjMwIH0sDQo+ICsJeyAu
c3RhcnQgPSAweDFDNDUxMCwgLmVuZCA9IDB4MUM0NTUwIH0sDQo+ICAJeyAuc3RhcnQgPSAweDFD
ODAzMCwgLmVuZCA9IDB4MUM4MDMwIH0sDQo+IC0JeyAuc3RhcnQgPSAweDFDODU1MCwgLmVuZCA9
IDB4MUM4NTUwIH0sDQo+ICsJeyAuc3RhcnQgPSAweDFDODIzMCwgLmVuZCA9IDB4MUM4MjMwIH0s
DQo+ICsJeyAuc3RhcnQgPSAweDFDODUxMCwgLmVuZCA9IDB4MUM4NTUwIH0sDQo+ICAJeyAuc3Rh
cnQgPSAweDFEMDAzMCwgLmVuZCA9IDB4MUQwMDMwIH0sDQo+IC0JeyAuc3RhcnQgPSAweDFEMDU1
MCwgLmVuZCA9IDB4MUQwNTUwIH0sDQo+ICsJeyAuc3RhcnQgPSAweDFEMDIzMCwgLmVuZCA9IDB4
MUQwMjMwIH0sDQo+ICsJeyAuc3RhcnQgPSAweDFEMDUxMCwgLmVuZCA9IDB4MUQwNTUwIH0sDQo+
ICAJeyAuc3RhcnQgPSAweDFENDAzMCwgLmVuZCA9IDB4MUQ0MDMwIH0sDQo+IC0JeyAuc3RhcnQg
PSAweDFENDU1MCwgLmVuZCA9IDB4MUQ0NTUwIH0sDQo+ICsJeyAuc3RhcnQgPSAweDFENDIzMCwg
LmVuZCA9IDB4MUQ0MjMwIH0sDQo+ICsJeyAuc3RhcnQgPSAweDFENDUxMCwgLmVuZCA9IDB4MUQ0
NTUwIH0sDQo+ICAJeyAuc3RhcnQgPSAweDFEODAzMCwgLmVuZCA9IDB4MUQ4MDMwIH0sDQo+IC0J
eyAuc3RhcnQgPSAweDFEODU1MCwgLmVuZCA9IDB4MUQ4NTUwIH0sDQo+IC0JLyogVE9ETzogT3Ro
ZXIgcmVnaXN0ZXJzIGFyZSBub3QgeWV0IHVzZWQgKi8NCj4gKwl7IC5zdGFydCA9IDB4MUQ4MjMw
LCAuZW5kID0gMHgxRDgyMzAgfSwNCj4gKwl7IC5zdGFydCA9IDB4MUQ4NTEwLCAuZW5kID0gMHgx
RDg1NTAgfSwNCj4gIH07DQo+ICANCj4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaTkxNV9yYW5nZSBn
ZW4xMl9zaGFkb3dlZF9yZWdzW10gPSB7DQo=
