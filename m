Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FD16424CED
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 07:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F5466E832;
	Thu,  7 Oct 2021 05:55:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 707256E832
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 05:55:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="224944297"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="224944297"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 22:55:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="590027405"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 06 Oct 2021 22:55:42 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 6 Oct 2021 22:55:41 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 6 Oct 2021 22:55:41 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 6 Oct 2021 22:55:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hgRPAZ88zjDfwmxekl+dY16+YQ2TymP24cuLeDUYMK3/WJnWQ1EY+nXTLqP9CGGeT87AWVhfvf+6zCF4RXiEj2Sk4VtbUnm/YV5zeAX2PZHKSE4ldD8Al7qGEPdZ0VOLMNofM3ue2Txeqae7izfrwQHLRg/jtccO5cub+/gRMNyggmQ9Whf78VvN7n2ruA0Pi18xfwZix4vGG7DhbJsThZEkNxaB3Df+Zr67/P6sNOqoyc2RT7Tt91jyZDn35cCTUKkYirClnmHlooP836XMOB8PtZdTEk2jA5+eHrvJB6mCni1648Q9cRs9Fh8z7SITxxALL7vZpH8gDg3iXPBeRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hmQHkjvDzE6bLTg24fN8zCgL2Dqky5fHu0l8kP0tQ+I=;
 b=LqMPCeeVXsiAIP/K67orhLwZEinGLjc7B+nBkdiOWxafgcxVDhKT7Dtb+1dr5GjllrsaOC8yZg/shdAjzXty9Kcuw6E+RmUtaKM2IPCgpAtU5Sei+l2FKjSWz28CqNT8tbiKOLFYBS5aENnXN7exy6aWibfqfKth+wnOiTzEqIeqVnSGPk5VrAD9Y15lCZtAzThD2E7RfeJJ64uU67zUqV+WsSjI6Vrj/l5vTbci9k8cJtqagyPPtToxxpVU+eg8Qr0e82E1Ozl/ZtdQdlfi9n7bVDvQwxkLdGkpp7/RnBD7ANwDXH+bwKy8SHLl/9YgS/KDiQtJM5WXUPFUmzl7FQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hmQHkjvDzE6bLTg24fN8zCgL2Dqky5fHu0l8kP0tQ+I=;
 b=kem5qhOyGV3sfn3CXJX8amRA95uK7Obk1d2I3DQifleeC7SXWRzbg7c0QtU6fNzpRNlKVsCFSLTnx+/FJQSA3d83nRBfzawhp6MNnnHhOLMIxbtKB0zWokKxStKwV7en/nPwsjxmg0nKUP8vVA/3hRcf0lpopX4Aoh2Wk9UfU4o=
Received: from CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 by MWHPR1101MB2270.namprd11.prod.outlook.com (2603:10b6:301:54::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4566.17; Thu, 7 Oct
 2021 05:55:39 +0000
Received: from CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::7963:6713:37b0:c2dd]) by CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::7963:6713:37b0:c2dd%9]) with mapi id 15.20.4587.020; Thu, 7 Oct 2021
 05:55:39 +0000
From: "Li, Juston" <juston.li@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Thread-Topic: [PATCH 4/4] drm/i915: Rename intel_load_plane_csc_black()
Thread-Index: AQHXuw3vk5bz9pHWU0C5OVgjM+FjpqvHCcqA
Date: Thu, 7 Oct 2021 05:55:39 +0000
Message-ID: <5359069366cea230fd6c4e492dd4323fad605382.camel@intel.com>
References: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
 <20211006235704.28894-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006235704.28894-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 0749126e-b31c-4ac0-6c78-08d989571725
x-ms-traffictypediagnostic: MWHPR1101MB2270:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR1101MB2270584B8F6E576C2FC78229FDB19@MWHPR1101MB2270.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:53;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: F7R0aXBTyowWZGbocHFZ6O5BQqmKi7uZef2gI1c1eww9dbOR4sSwZB/mozC/O2crebAa2BBRjWK28g2ZDwOd5O2L5a3CbBFPCz646Sc2tEI56L15sAUSufk9nEOnf1CF2jf/41uEUyUkcG/PMB5aqlkj8NSj7dZjnMPPSzJ0fiGGb5AgZiTMeDjKH7fAAuRwGnKRTYuaus2BTtBhvYBUU/EYiP6ZOEa7fU3jcXgRPa2R/Y7T/6cWb/lkHYYOgVaL6a/nw83ihXol9d3rnczUkCu+RUz7+j3kcl8K5uv09GUNbhuYa+y8PWW4fE8E9eG6RgojgIfG6ZKSVTfPDnXROUxIFlJL16nZzs0kBLGwTcQZOW1Ynb/S0HH6icnYz9MxgfCH4XLyY9JjWn1BRUV2iL9cJzrFHNU87KKcu4A378iA/PUtXXudATUz9OdF5EY/hwLiQj07s6PMH9gBu7dhPqizyV7QVkhKI3GoApvY4dM0/vMAScX1E/U7JJII3Fifti9ILmEN06UHdkac99nax68jPiOQB7wX8X2A24+cR0l9v0/kq7QDPUOqq0ICTBUM0JC1oMoDSN57peRvg4/YABYMgB0cdXAJQpNLSS0f/m5ZVTJXJjRdqLmZdPxN8EVa44O2MRzKq15aNb+nWQIWiaumG5lejDjlO6N45q2ndaN3E/HruwfUwnkqbNuzQSN5MhRK1wMBTMrIwoTP3JrDXg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4833.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(122000001)(66446008)(38100700002)(26005)(66946007)(8936002)(4326008)(2616005)(110136005)(83380400001)(6506007)(186003)(5660300002)(316002)(54906003)(64756008)(71200400001)(36756003)(508600001)(66556008)(8676002)(76116006)(66476007)(6512007)(6486002)(2906002)(86362001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SngvNGRhTmxBem5VZkFaUFRWcXpZMUlPV2hSMU8rNTZIQUUwNlVTQ3RZU3Jy?=
 =?utf-8?B?NzRHY2cyMEs5VHlPVXY3T3hnY3dzWXMwSVVYV1RvNXBJTXlkSkgvcytMQzl1?=
 =?utf-8?B?eFZvcDV4dUgzbEd4OVV1ZGxZVlk3WDR0bHhZbFpPMWZ5VThKbFM0Nm9CM1o3?=
 =?utf-8?B?VFFSYk9xbVFkd2ZodVZEaTIzKzVFdWQ4N25qS3l0Qmc0cDd0V2VBdTJEYmhK?=
 =?utf-8?B?OEFyRXJhUjU1d2g1M2FJWTJVSXR6aWNCWnBaaXQvcnBpQnNlanBXMTVEU3lp?=
 =?utf-8?B?OURoV1hXTzNjSVNNeC9HajBENjNJQW1hWURYbDlLWGJ2U3k4V0dycW1kWEI5?=
 =?utf-8?B?eHVIRUNKOEl2SE1TYUZGV1BtTFQxVWVqcFBUS1prbEJ1NUZmOUNoQVFpSUZ0?=
 =?utf-8?B?SnpGLy8xZ1NGMXhDREhaSHdxR2NjUlZYQUVrMEJUajdXblZXdGNsQ2J5MTBO?=
 =?utf-8?B?YnZINkhCa0tBV1hGV1VuOXZ0d1MzNEhqdmFJWWtiditZendBZUY2UTlPLzhx?=
 =?utf-8?B?YWNJdUlNaUpqS3dQY0J6b2xYTHdqWS81VDY1TVY1NG1POXI0NGs4Q0d6U1E3?=
 =?utf-8?B?dlRpL21FTTI1SDdRRXJqUy8xbmFTQ3haYW5TZ0gxZXg0YitORml6RE1iVjZG?=
 =?utf-8?B?ZjB3VkZ0NjR0cVB4T2NJSzF1ak9qYUo2QjNHYnpadDkvMDF0ZEplNm11aWI0?=
 =?utf-8?B?cVdHOStWclh2RTBBdDFTNjBrUnhBYnAzb3J4MndJZzZKeUFoWFRuWXRTQW0v?=
 =?utf-8?B?dWE0RUV2U01ZbkVXRm1rZG5QaFl5cHd2aHo5Uk5zdE5NaWNQY0F6aWhZWW5l?=
 =?utf-8?B?eFgyeU9wNG5yNXBCNlJzNzZldjBHS3VONTdudStsL0dvbHJKbTMwMS84QjJP?=
 =?utf-8?B?TzBHM2swKyt1VUJBK09hM3ZIMndqdlYwVGhSWVBuNlZxSkd0NHRlV1crUS9i?=
 =?utf-8?B?WmN2Y2wwUVlBRE5RQnA1OXBRSkNnZWlVejFtTjRBZ1FnbTM3a2QvWEY4OVlx?=
 =?utf-8?B?dm8wU3pIL1N1VXNPK1dFMktOWmlBNUFWck40QzkzaFdMQmFjSm9NbjE1eWNO?=
 =?utf-8?B?OFJ4UHNla2NKd2RkWW0rVnU0dmpzQkFHd0pVVWV3THM5M1hGUFlsV2xRLzlv?=
 =?utf-8?B?bkc2U0krOWtMTGV1MTJtKzhOSUkya3hRemV1ZGk3aFVvWFNQWEQ0MjArd0M1?=
 =?utf-8?B?M013SDRoQ1ZPMm56UVBGMDUvcTl5SnR2RElIS28zekl3TVl2WXZZb0YzQ2pT?=
 =?utf-8?B?c1dWOVkva09xamlYeFlTUHdPU2VBSlUrdlhjYkdOQnMrNXNoU3JKanRLQk5x?=
 =?utf-8?B?RTNhQkRlTGREd3BTQjFYQVB6M1lNam9HZFhUUFlmRUNtaFVUNTZWK0FidzJ1?=
 =?utf-8?B?d3E1bVFHWE8rSjZWUXl4c0xZcG1va1NuS3VvOHFEb0tneFFRaFVDNDh0bDdP?=
 =?utf-8?B?VXJMS3N2aFVHSnpRYmxsc0k1alNBT2FWcTBPNURlbXVCdVdsbW5WOEk4RnZW?=
 =?utf-8?B?aFpGcDR3TVU2ei80K2QrQjRtWW94YUcxamNCcnZWWDl3VjFmeXV4ODlkVzVP?=
 =?utf-8?B?anRCaWhJWUpTR3MzNVN6a2FhNk1TT1VFeDNZRVpMMkJrRCtoZlJhWkowOHVU?=
 =?utf-8?B?MHlkTjgzZEFTd2phbWRQSk9IVlNCamU3Y3JvL3ovd3RLSTNNSzM4MU5wUE9Y?=
 =?utf-8?B?UjNiajZwSVBiY1N2aE1MNlRmZVIwSkZvd2ZBUWV2WHM2NHduQUk1clJwOFh4?=
 =?utf-8?B?SkpkNXpybG84MXozUFJqQWUwbjhEc1FFUUQ1M2hvWmF0ZXM4UTVFUDVBRWsv?=
 =?utf-8?B?MUo1NkQwUkJkbHFjekdjUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8B670376C867254CB3FD7A2A7C43FA6E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4833.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0749126e-b31c-4ac0-6c78-08d989571725
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2021 05:55:39.2248 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sdcdfexVgWP964PFI/t3kqijSwndXoRCb1v8/L/chu30lOn3IUQKLldKMTidSWU53zeCMYQmawf8iVX5EYVowQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2270
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915: Rename
 intel_load_plane_csc_black()
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

T24gVGh1LCAyMDIxLTEwLTA3IGF0IDAyOjU3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gaW50ZWxfbG9hZF9wbGFuZV9jc2NfYmxhY2soKSBpcyBzcGVjaWZpYyB0byBnbGsrIHNv
IGRlc2VydmVzDQo+IGEgbmFtZSByZWZsZWN0aW5nIHRoYXQgZmFjdC4gQWxzbyByZW5hbWUgdGhl
IHZhcmlhYmxlcyB0bw0KPiBzdGFuZGFyZCBmb3JtIHNvIEkgd29uJ3QgZ2V0IGNvbmZ1c2VkIHJl
YWRpbmcgdGhlIGNvZGUuDQo+IA0KPiBDYzogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRh
QGludGVsLmNvbT4NCj4gQ2M6IERhbmllbGUgQ2VyYW9sbyBTcHVyaW8gPGRhbmllbGUuY2VyYW9s
b3NwdXJpb0BpbnRlbC5jb20+DQo+IENjOiBKdXN0b24gTGkgPGp1c3Rvbi5saUBpbnRlbC5jb20+
DQo+IENjOiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5jb20+DQo+IENjOiBVbWEg
U2hhbmthciA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTog
SnVzdG9uIExpIDxqdXN0b24ubGlAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiDCoC4uLi9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuY8KgwqDCoCB8IDM1ICsrKysrKysrKy0tLS0t
LS0tLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgMTggZGVsZXRpb25z
KC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
dW5pdmVyc2FsX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91
bml2ZXJzYWxfcGxhbmUuYw0KPiBpbmRleCAxZTg1ZWE5ODIzMWYuLjcwOWFiNzE2NmQ4OCAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3Bs
YW5lLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2Fs
X3BsYW5lLmMNCj4gQEAgLTEwMTEsMjkgKzEwMTEsMjggQEAgc3RhdGljIHUzMiBza2xfc3VyZl9h
ZGRyZXNzKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGUsDQo+
IMKgwqDCoMKgwqDCoMKgwqB9DQo+IMKgfQ0KPiDCoA0KPiAtc3RhdGljIHZvaWQgaW50ZWxfbG9h
ZF9wbGFuZV9jc2NfYmxhY2soc3RydWN0IGludGVsX3BsYW5lDQo+ICppbnRlbF9wbGFuZSkNCj4g
K3N0YXRpYyB2b2lkIGdsa19wbGFuZV9jc2NfbG9hZF9ibGFjayhzdHJ1Y3QgaW50ZWxfcGxhbmUg
KnBsYW5lKQ0KPiDCoHsNCj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUg
KmRldl9wcml2ID0gdG9faTkxNShpbnRlbF9wbGFuZS0NCj4gPmJhc2UuZGV2KTsNCj4gLcKgwqDC
oMKgwqDCoMKgZW51bSBwaXBlIHBpcGUgPSBpbnRlbF9wbGFuZS0+cGlwZTsNCj4gLcKgwqDCoMKg
wqDCoMKgZW51bSBwbGFuZV9pZCBwbGFuZSA9IGludGVsX3BsYW5lLT5pZDsNCj4gLcKgwqDCoMKg
wqDCoMKgdTE2IHBvc3RvZmYgPSAwOw0KPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUocGxhbmUtPmJhc2UuZGV2KTsNCj4gK8KgwqDCoMKgwqDC
oMKgZW51bSBwbGFuZV9pZCBwbGFuZV9pZCA9IHBsYW5lLT5pZDsNCj4gK8KgwqDCoMKgwqDCoMKg
ZW51bSBwaXBlIHBpcGUgPSBwbGFuZS0+cGlwZTsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaW50
ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NTQ19DT0VGRihwaXBlLCBwbGFuZSwgMCks
DQo+IDApOw0KPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExB
TkVfQ1NDX0NPRUZGKHBpcGUsIHBsYW5lLCAxKSwNCj4gMCk7DQo+ICvCoMKgwqDCoMKgwqDCoGlu
dGVsX2RlX3dyaXRlX2Z3KGk5MTUsIFBMQU5FX0NTQ19DT0VGRihwaXBlLCBwbGFuZV9pZCwgMCks
IDApOw0KPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZV9mdyhpOTE1LCBQTEFORV9DU0Nf
Q09FRkYocGlwZSwgcGxhbmVfaWQsIDEpLCAwKTsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaW50
ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NTQ19DT0VGRihwaXBlLCBwbGFuZSwgMiks
DQo+IDApOw0KPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExB
TkVfQ1NDX0NPRUZGKHBpcGUsIHBsYW5lLCAzKSwNCj4gMCk7DQo+ICvCoMKgwqDCoMKgwqDCoGlu
dGVsX2RlX3dyaXRlX2Z3KGk5MTUsIFBMQU5FX0NTQ19DT0VGRihwaXBlLCBwbGFuZV9pZCwgMiks
IDApOw0KPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZV9mdyhpOTE1LCBQTEFORV9DU0Nf
Q09FRkYocGlwZSwgcGxhbmVfaWQsIDMpLCAwKTsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaW50
ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NTQ19DT0VGRihwaXBlLCBwbGFuZSwgNCks
DQo+IDApOw0KPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExB
TkVfQ1NDX0NPRUZGKHBpcGUsIHBsYW5lLCA1KSwNCj4gMCk7DQo+ICvCoMKgwqDCoMKgwqDCoGlu
dGVsX2RlX3dyaXRlX2Z3KGk5MTUsIFBMQU5FX0NTQ19DT0VGRihwaXBlLCBwbGFuZV9pZCwgNCks
IDApOw0KPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZV9mdyhpOTE1LCBQTEFORV9DU0Nf
Q09FRkYocGlwZSwgcGxhbmVfaWQsIDUpLCAwKTsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaW50
ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NTQ19QUkVPRkYocGlwZSwgcGxhbmUsIDAp
LA0KPiAwKTsNCj4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBM
QU5FX0NTQ19QUkVPRkYocGlwZSwgcGxhbmUsIDEpLA0KPiAwKTsNCj4gLcKgwqDCoMKgwqDCoMKg
aW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NTQ19QUkVPRkYocGlwZSwgcGxhbmUs
IDIpLA0KPiAwKTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoaTkxNSwgUExB
TkVfQ1NDX1BSRU9GRihwaXBlLCBwbGFuZV9pZCwgMCksDQo+IDApOw0KPiArwqDCoMKgwqDCoMKg
wqBpbnRlbF9kZV93cml0ZV9mdyhpOTE1LCBQTEFORV9DU0NfUFJFT0ZGKHBpcGUsIHBsYW5lX2lk
LCAxKSwNCj4gMCk7DQo+ICvCoMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRlX2Z3KGk5MTUsIFBM
QU5FX0NTQ19QUkVPRkYocGlwZSwgcGxhbmVfaWQsIDIpLA0KPiAwKTsNCj4gwqANCj4gLcKgwqDC
oMKgwqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX0NTQ19QT1NUT0ZGKHBp
cGUsIHBsYW5lLCAwKSwNCj4gcG9zdG9mZik7DQo+IC3CoMKgwqDCoMKgwqDCoGludGVsX2RlX3dy
aXRlX2Z3KGRldl9wcml2LCBQTEFORV9DU0NfUE9TVE9GRihwaXBlLCBwbGFuZSwgMSksDQo+IHBv
c3RvZmYpOw0KPiAtwqDCoMKgwqDCoMKgwqBpbnRlbF9kZV93cml0ZV9mdyhkZXZfcHJpdiwgUExB
TkVfQ1NDX1BPU1RPRkYocGlwZSwgcGxhbmUsIDIpLA0KPiBwb3N0b2ZmKTsNCj4gK8KgwqDCoMKg
wqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoaTkxNSwgUExBTkVfQ1NDX1BPU1RPRkYocGlwZSwgcGxh
bmVfaWQsIDApLA0KPiAwKTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoaTkx
NSwgUExBTkVfQ1NDX1BPU1RPRkYocGlwZSwgcGxhbmVfaWQsIDEpLA0KPiAwKTsNCj4gK8KgwqDC
oMKgwqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoaTkxNSwgUExBTkVfQ1NDX1BPU1RPRkYocGlwZSwg
cGxhbmVfaWQsIDIpLA0KPiAwKTsNCj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIHZvaWQNCj4gQEAg
LTExMDIsNyArMTEwMSw3IEBAIHNrbF9wcm9ncmFtX3BsYW5lKHN0cnVjdCBpbnRlbF9wbGFuZSAq
cGxhbmUsDQo+IMKgwqDCoMKgwqDCoMKgwqAgKiBvciBhZnRlciB0aGUgY29tbWl0LCBkaXNwbGF5
IGNvbnRlbnQgd2lsbCBiZSBnYXJiYWdlLg0KPiDCoMKgwqDCoMKgwqDCoMKgICovDQo+IMKgwqDC
oMKgwqDCoMKgwqBpZiAocGxhbmVfc3RhdGUtPmZvcmNlX2JsYWNrKQ0KPiAtwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfbG9hZF9wbGFuZV9jc2NfYmxhY2socGxhbmUpOw0KPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ2xrX3BsYW5lX2NzY19sb2FkX2JsYWNrKHBs
YW5lKTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGludGVsX2RlX3dyaXRlX2Z3KGRldl9wcml2
LCBQTEFORV9TVFJJREUocGlwZSwgcGxhbmVfaWQpLA0KPiBzdHJpZGUpOw0KPiDCoMKgwqDCoMKg
wqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYsIFBMQU5FX1BPUyhwaXBlLCBwbGFuZV9p
ZCksDQoNCg==
