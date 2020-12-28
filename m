Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4532C2E347D
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Dec 2020 07:26:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A1D289A14;
	Mon, 28 Dec 2020 06:26:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B2489A14
 for <intel-gfx@lists.freedesktop.org>; Mon, 28 Dec 2020 06:26:55 +0000 (UTC)
IronPort-SDR: J1EKfumRtzxwwmyvFcM1ef8XRWsrJy/70ouZGUqzm22IjlhmgDU3D8w63VC1jb78v9JoCwmNZU
 PDlbLG7Q7eSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9847"; a="163411049"
X-IronPort-AV: E=Sophos;i="5.78,454,1599548400"; d="scan'208";a="163411049"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Dec 2020 22:26:54 -0800
IronPort-SDR: i9k04dHRVA6+hW65NGzQzV3Jm4U2LjCuKdGmZYifMvbize6DB7tfB8Hz2idiNCBn8vSf0T3/87
 vgiC3hds0HSQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,454,1599548400"; d="scan'208";a="346866055"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 27 Dec 2020 22:26:53 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 27 Dec 2020 22:26:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Sun, 27 Dec 2020 22:26:53 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Sun, 27 Dec 2020 22:26:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LmKUXQbDCF7tr+pdleIE4DlxjCugJBO3DHByanAwu2I1d3enxhXLFxYuc+vGUql/0Y2BUNkl88uGv60hoheTzfNBqm7E5s/RlXL1+Ha7/dBINgfdGUdddliQVXBmPvhUdQLe4F7pxYuOhD8eV/cGHUmyLWe4klOSu1DyyCSn0wjsz3RtEdqWmtTP+wTH2H9Af/fbRbP5LIdkGNoR168kgr7/HyzC+VBZM+pFYdzO57Sgl9p+kwOFRKtQKHdOmD7xLcC9AvfGS74TkR5GPkN054tHvSOoMDe5P37N60SiyCfccutdD0P06y+R008I2R662jQ/UTEU321tEmi3teujpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p7DPqaTHaDXpdHLwzHYW3GdANPrGu3yj1l3vz9cVHEI=;
 b=jvCVF+RqPWF/mR4PTv4dyUqaxzWODcBhAa/LLxPbEgDvNlItAto0+aXZoY3gBQ2O5tUTii+MaGxD7Qvcsuuzxu68VaxwRJDcTd3sp5XHrjHwI0NuWwDCQDsnvlKQQHnDv08m9sHpFsN209ek0wH2wJVJgSXHZG0h9bScKsdfKlSKTMjVrxnRJ8l7cJN+ZLc3PPdgZ96yARt6XVvVSyB+rnMKOB40mhGIkMUG1spQjdr6sd342YzX+CKYltBsaIpn0HX8So8lfSxmoZw4idZy/gCxcljnIzK8W25LykASKtswbwdZtwJFDoTCZ0YfyDJHDjFbUI93o/tMCdvQVvlnWw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=p7DPqaTHaDXpdHLwzHYW3GdANPrGu3yj1l3vz9cVHEI=;
 b=aaVA0AKwbskg5BSQxvmfDiK3QEuPPU1n/qfQoi9RwWqsiQ+lQ9UjYqfJFdW8ESrIJTzRFhPuXhoouWO96/JokQpvt91Hp0nMqAXRp03i/FvSJfo2OwviV7Y2nQAiHR7N63HpIugU4JC4JlGMrERUiPY6urljxoth7EBEweI/hLg=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA2PR11MB4905.namprd11.prod.outlook.com (2603:10b6:806:117::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3700.27; Mon, 28 Dec
 2020 06:26:51 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::153b:8e85:c2b0:c2ce]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::153b:8e85:c2b0:c2ce%3]) with mapi id 15.20.3700.031; Mon, 28 Dec 2020
 06:26:51 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Pandey, 
 Hariom" <hariom.pandey@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
Thread-Index: AQHW3OHbIlWzn98EYEqwXM+t5Vq9fqoMCpEA
Date: Mon, 28 Dec 2020 06:26:51 +0000
Message-ID: <SN6PR11MB3421B05714C95E110995D440DFD90@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
In-Reply-To: <20201228061235.29384-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [103.240.169.237]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b6709782-3f28-4e9e-3545-08d8aaf99015
x-ms-traffictypediagnostic: SA2PR11MB4905:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA2PR11MB4905FC543BD44AE681970F4DDFD90@SA2PR11MB4905.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gXW3+kSWrMfF1VIEUFtM8TH9KeE75ScyJoW+OQtUbkitpwPBSUdT0wwZKoJgV6e0IlIFbjGT7MclPQtENuGNgQq0B28INEsYcX3ZIAdjBPOEuCAEWaDy4ytFd7TvEbSrmP2s0BGARvg7szbQx6UQDdnRSlN4B5nOV2hfRd03PcE9q3gNPued17vVU3QGqVNdcBnLOIl52J4VRNSwFrBudg4rpxbHyk2UCRw8dPWpRhFqz/tdrOPmkRX1nU0gUHo4uhIjTlJAN66lH4qJ26RQUT3Z3gauxn+RnLaRF4/AiYgQ8cGlLfJ2260ie1wsQOa6+wudgOa3kJDvE2n7jEQzvRymy19wQn+84PnVrKQFEzVj6Ieemn0ZqPLn+pVw2/tgWQRi6355nfwqoDbvQv1RbfJxo9+9Ehs8UauYfLAHfPn8CSpbGEYoM7NJHNRBmKH0yKntnXt2yEPSI9G0qauJeNCSRqmGkZ5ZYHtjR9DPvYQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(54906003)(186003)(66946007)(2906002)(64756008)(7696005)(86362001)(8936002)(8676002)(71200400001)(6636002)(5660300002)(6506007)(83380400001)(966005)(55016002)(53546011)(4326008)(9686003)(33656002)(26005)(110136005)(66556008)(52536014)(66476007)(316002)(76116006)(66446008)(478600001)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?MjdUL2lEcWJtZWplOFR1bWNmL1BsT1l1VWlpaU5pNWw2VzQxSnQzdHFyeUFp?=
 =?utf-8?B?MzUrRDhNQ1VQTExQdVFqSmJYUk5vb2xOb053c1owU2FLRXR4ZGZsYjNKRFNM?=
 =?utf-8?B?cS9CQmtvSGpzdk9kdjNnWG9wTTFHMk5QTzlKNEZtMnF5Y3pyb0gyVlNDRzVj?=
 =?utf-8?B?Skp4T0czckdiMWp0WUczZXB5aytqZUk3M0JpTi8yQ3VoZjc2UlhaMlBUek9W?=
 =?utf-8?B?SkRVUHF2b2pxYmdTVk5nWndlNkt4V3NhVlo2YnltODFheFVBVnB5SlNMczZn?=
 =?utf-8?B?OE1SYkQxN2NrVFhQSVoweTVCYjloRGVveWZrZXZTUHVsYURMN1pHNlZSbUgw?=
 =?utf-8?B?WThrWlM0NXhpdU9mbkp2YTZRUDdINEZ2dmNzOFQyekprOEpBTyt3SUUrcTRm?=
 =?utf-8?B?MWVLNTJhM2s2djJCQU8vRTA2eW53Sy9JRTJiVGswR01hN1F5QVJOTHBsczRm?=
 =?utf-8?B?eVp2TXVaa2c4NUNGVTBCV3NERTR5ZlFGWnJ1NHZRUjlIWjlEQUhWdzV3cFNT?=
 =?utf-8?B?WndYekxKQlJmWjUxS0tvTWM3ckhPSXlUb09hZkJZWU1YVzFLelNLdldWRDlV?=
 =?utf-8?B?ZUg5RjJndnJyb0hWL2RSejNqSlFEZXI1cUtmZzAyYjFnM2d0ZnNoTnFmeGZL?=
 =?utf-8?B?S1dGWXJPSm9jcXlvejhUb0FFeGhqYjgrTHlUT3RHekpnejdjTGF4NW4zQU9D?=
 =?utf-8?B?dUFKQ2FhTHBEMUdVOXY0bU8yVEE5M2ZjR3FCY3pmTVZnSzc3MEhWSG54U2RP?=
 =?utf-8?B?V2t3ZVRxY2VlNUkrdDZYVzdzRi9QRjRwdm12aGNoS2FUelhUa1AxNW1KNlRG?=
 =?utf-8?B?allhdkJjeHVmNksrbTdTZkRXV0Jrb3pmenVqZDlZTGZRaUpVUzhvZTlBU1Nk?=
 =?utf-8?B?UkRLblBVb00xUkVPNUxmcUhJRnJVTWZ3ZFNRd2JwKzFSRXI0OTN6UzM5UHVk?=
 =?utf-8?B?cmZwaTA5NU9rRFh3TXdCdXRtdG1PdmlCWFNUVDZPbTh4SUtUaTFWbTNwbDRh?=
 =?utf-8?B?WHBiRW1JbmFtdlV5T1BKTnlRbnVOOEQxMlArYmdqRklNekwzNkJ4MU5TZmdF?=
 =?utf-8?B?TlQ1QlZ1NGZZMzI3b1JrWmpnNW5MOTZqT3I0NS9aU1hPMUxWS2pDRVdvRWFV?=
 =?utf-8?B?UDBxVGNJWGZKMWVobU5oT2twMjlQdTJlRkJ0eW5kMjBrcTE1UVBJSjV0OGFD?=
 =?utf-8?B?NXJMTUtURnpDK1hjbUtEeWowUE5ITW1Cd05LYlJ1SEU5ckhvRGQ1Z3dNVzFQ?=
 =?utf-8?B?VWY4NGphTjV4ZzhUSWI4T1FQdlc2eUpDY1pYN25oWUR6b05uak5rT1NjSTBI?=
 =?utf-8?Q?SiQghQ0K82FVg=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b6709782-3f28-4e9e-3545-08d8aaf99015
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Dec 2020 06:26:51.2663 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S07oLSZvVj9kdfxgl2pfVyeP5jm/xxbJ700qWPJ8Y+tJ6npXP5vPDAdlRcAcuW5rqLf6awD3HQK1qkeloHQycc4YMPl6F5JuRmUOZOFft5K7IFPF6+oDbOFG452d7GQA0RJe5m6yUvRQ5XlVdRA6Dw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4905
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/cml : Add TGP PCH support
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

SGksDQoNClBsZWFzZSBub3RlIHRoYXQgaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3Jn
L3BhdGNoLzM5ODE0NS8/c2VyaWVzPTgzMTU0IHRoaXMgcGF0Y2ggaXMgcmVxdWlyZWQgZm9yIEhE
TUkgdG8gd29yayBvbiBDTUwgKyBUR1AgUENIIGNvbWJvLg0KDQpUaGFua3MsDQpUZWphcw0KDQo+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwtZ2Z4
LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVGVqYXMNCj4gVXBh
ZGh5YXkNCj4gU2VudDogMjggRGVjZW1iZXIgMjAyMCAxMTo0Mw0KPiBUbzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZzsgUGFuZGV5LCBIYXJpb20NCj4gPGhhcmlvbS5wYW5kZXlAaW50
ZWwuY29tPg0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggVjJdIGRybS9pOTE1L2NtbCA6
IEFkZCBUR1AgUENIIHN1cHBvcnQNCj4gDQo+IFdlIGhhdmUgVEdQIFBDSCBzdXBwb3J0IGZvciBU
aWdlcmxha2UgYW5kIFJvY2tldGxha2UuIFNpbWlsYXJseSBub3cgVEdQDQo+IFBDSCBjYW4gYmUg
dXNlZCB3aXRoIENvbWV0bGFrZSBDUFUuDQo+IA0KPiBDaGFuZ2VzIHNpbmNlIFYxIDoNCj4gCS0g
TWF0Y2hlZCBIUEQgUGluIG1hcHBpbmcgZm9yIFBPUlQgQyBhbmQgUE9SVCBEIG9mIENNTCBDUFUu
DQo+IA0KPiBDYyA6IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+IENjIDog
VmlsbGUgU3lyasOkbMOkDQo+IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2ln
bmVkLW9mZi1ieTogVGVqYXMgVXBhZGh5YXkNCj4gPHRlamFza3VtYXJ4LnN1cmVuZHJha3VtYXIu
dXBhZGh5YXlAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMgICAgIHwgNyArKysrKy0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8IDUgKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfaGRtaS5jICAgIHwgMyArKy0NCj4gIDMgZmlsZXMgY2hhbmdlZCwgMTIg
aW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiBpbmRleCAxN2VhYTU2YzVhOTkuLjE4MWQ2MGE1ZTE0
NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+IEBA
IC01MzAxLDcgKzUzMDEsOSBAQCBzdGF0aWMgZW51bSBocGRfcGluIGRnMV9ocGRfcGluKHN0cnVj
dA0KPiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiwgIHN0YXRpYyBlbnVtIGhwZF9waW4gdGds
X2hwZF9waW4oc3RydWN0DQo+IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2LA0KPiAgCQkJCWVu
dW0gcG9ydCBwb3J0KQ0KPiAgew0KPiAtCWlmIChwb3J0ID49IFBPUlRfVEMxKQ0KPiArCWlmIChJ
U19DT01FVExBS0UoZGV2X3ByaXYpICYmIHBvcnQgPj0gUE9SVF9DKQ0KPiArCQlyZXR1cm4gSFBE
X1BPUlRfVEMxICsgcG9ydCArIDEgLSBQT1JUX1RDMTsNCj4gKwllbHNlIGlmIChwb3J0ID49IFBP
UlRfVEMxKQ0KPiAgCQlyZXR1cm4gSFBEX1BPUlRfVEMxICsgcG9ydCAtIFBPUlRfVEMxOw0KPiAg
CWVsc2UNCj4gIAkJcmV0dXJuIEhQRF9QT1JUX0EgKyBwb3J0IC0gUE9SVF9BOw0KPiBAQCAtNTQ1
NSw3ICs1NDU3LDggQEAgdm9pZCBpbnRlbF9kZGlfaW5pdChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZQ0KPiAqZGV2X3ByaXYsIGVudW0gcG9ydCBwb3J0KQ0KPiANCj4gIAlpZiAoSVNfREcxKGRldl9w
cml2KSkNCj4gIAkJZW5jb2Rlci0+aHBkX3BpbiA9IGRnMV9ocGRfcGluKGRldl9wcml2LCBwb3J0
KTsNCj4gLQllbHNlIGlmIChJU19ST0NLRVRMQUtFKGRldl9wcml2KSkNCj4gKwllbHNlIGlmIChJ
U19ST0NLRVRMQUtFKGRldl9wcml2KSB8fCAoSVNfQ09NRVRMQUtFKGRldl9wcml2KSAmJg0KPiAr
CQkJCQkgICAgIEhBU19QQ0hfVEdQKGRldl9wcml2KSkpDQo+ICAJCWVuY29kZXItPmhwZF9waW4g
PSBya2xfaHBkX3BpbihkZXZfcHJpdiwgcG9ydCk7DQo+ICAJZWxzZSBpZiAoSU5URUxfR0VOKGRl
dl9wcml2KSA+PSAxMikNCj4gIAkJZW5jb2Rlci0+aHBkX3BpbiA9IHRnbF9ocGRfcGluKGRldl9w
cml2LCBwb3J0KTsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMNCj4gaW5kZXggZjJjNDhlNWNkYjQzLi40NzAxNDQ3MTY1OGYgMTAwNjQ0DQo+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC0xNjE2
Myw2ICsxNjE2MywxMSBAQCBzdGF0aWMgdm9pZCBpbnRlbF9zZXR1cF9vdXRwdXRzKHN0cnVjdA0K
PiBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAkJCWludGVsX2RkaV9pbml0KGRldl9w
cml2LCBQT1JUX0YpOw0KPiANCj4gIAkJaWNsX2RzaV9pbml0KGRldl9wcml2KTsNCj4gKwl9IGVs
c2UgaWYgKElTX0NPTUVUTEFLRShkZXZfcHJpdikgJiYgSEFTX1BDSF9UR1AoZGV2X3ByaXYpKSB7
DQo+ICsJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0EpOw0KPiArCQlpbnRlbF9kZGlf
aW5pdChkZXZfcHJpdiwgUE9SVF9CKTsNCj4gKwkJaW50ZWxfZGRpX2luaXQoZGV2X3ByaXYsIFBP
UlRfQyk7DQo+ICsJCWludGVsX2RkaV9pbml0KGRldl9wcml2LCBQT1JUX0QpOw0KPiAgCX0gZWxz
ZSBpZiAoSVNfR0VOOV9MUChkZXZfcHJpdikpIHsNCj4gIAkJLyoNCj4gIAkJICogRklYTUU6IEJy
b3h0b24gZG9lc24ndCBzdXBwb3J0IHBvcnQgZGV0ZWN0aW9uIHZpYSB0aGUgZGlmZiAtDQo+IC1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IGluZGV4IGM1OTU5NTkwNTYy
Yi4uNTQwYzlkNTRiNTk1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2hkbWkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2hkbWkuYw0KPiBAQCAtMzE3NCw3ICszMTc0LDggQEAgc3RhdGljIHU4IGludGVsX2hkbWlf
ZGRjX3BpbihzdHJ1Y3QgaW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlcikNCj4gDQo+ICAJaWYgKElO
VEVMX1BDSF9UWVBFKGRldl9wcml2KSA+PSBQQ0hfREcxKQ0KPiAgCQlkZGNfcGluID0gZGcxX3Bv
cnRfdG9fZGRjX3BpbihkZXZfcHJpdiwgcG9ydCk7DQo+IC0JZWxzZSBpZiAoSVNfUk9DS0VUTEFL
RShkZXZfcHJpdikpDQo+ICsJZWxzZSBpZiAoSVNfUk9DS0VUTEFLRShkZXZfcHJpdikgfHwgKElT
X0NPTUVUTEFLRShkZXZfcHJpdikgJiYNCj4gKwkJCQkJICAgICBIQVNfUENIX1RHUChkZXZfcHJp
dikpKQ0KPiAgCQlkZGNfcGluID0gcmtsX3BvcnRfdG9fZGRjX3BpbihkZXZfcHJpdiwgcG9ydCk7
DQo+ICAJZWxzZSBpZiAoSEFTX1BDSF9NQ0MoZGV2X3ByaXYpKQ0KPiAgCQlkZGNfcGluID0gbWNj
X3BvcnRfdG9fZGRjX3BpbihkZXZfcHJpdiwgcG9ydCk7DQo+IC0tDQo+IDIuMjguMA0KPiANCj4g
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18NCj4gSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdA0KPiBJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IGh0
dHBzOi8vbGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4DQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJbnRlbC1nZngg
bWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0cHM6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
