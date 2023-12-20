Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 287C58199F4
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Dec 2023 09:02:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E08510E323;
	Wed, 20 Dec 2023 08:02:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA53510E323
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Dec 2023 08:02:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703059357; x=1734595357;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JuFWhztUfZEMV+hqT50paukG9QhdcRETtej2rPCPZeg=;
 b=d9M9sDAFwuYDCaxPvkEBZOY8v/NFqWCHz16j+gNHJxOjvECIfv9gaOS8
 /sG3LmdWfDgjIJwjav1SDSwjppIB+8QdZCNKFgdXa7vC9ALxflyLsJwD1
 T78KRqAzipYdokucoDy2bS727MaT/M0z5W3pxt7Gp42FdlTWLcFWWKyp2
 ZXVL5395FSe5gPFKSX/UNBW+DdD9o1kxyhZMN24Af4ohkDzSJDfdIlAdK
 W9HAqIww+DnUJw95dh3IF0csXDS2TuQL18089VQEQrw34lEfbulCqula7
 Aip11o1KMO1/AO4Io0Q44MFaJABzL/ITrFhrmfrOi4ltWceVP7KwQ66SV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="9240865"
X-IronPort-AV: E=Sophos;i="6.04,290,1695711600"; 
   d="scan'208";a="9240865"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2023 00:02:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="949450279"
X-IronPort-AV: E=Sophos;i="6.04,290,1695711600"; d="scan'208";a="949450279"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2023 00:02:35 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 20 Dec 2023 00:02:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 20 Dec 2023 00:02:33 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 20 Dec 2023 00:02:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iOUtYRZkzVRjVRSbj8SC3rF6xGgA5mWEvieduCyZojVzormMktv+uglSQqPCMHauKA9GMbzZsvqJpocaCyXWIk1XS51SRuTibn2BNw674pEtatc9MSB7pMyFldpM9aLJ5PeaPK6Nu6VkiKbkapUavG+GcvL43RX68gDQ7k38FHNhw01DrguiuVwmz2WiAawVb+eUafJuqy1MeR5tFLFI/iV4KTKTPBy6bkAuAQnto0H3PU42EHioogWI2GYQe+QzpmLdrQjkz9zTBIWg8j0LyAkUP3Q0qZK7bC2hwKBg8rNmakIFygJeNtTvnklg/8nvLOseg6tetQnhqKNVaFjiVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JuFWhztUfZEMV+hqT50paukG9QhdcRETtej2rPCPZeg=;
 b=SV0qt/pqjbfkGO1m/pLX/nnvvsEiE+hMUdyK0gm6uNC0V1Ryk9nbqzmcjrz4XPufSkEKeAW5DWet3lE5BpatMwkLaicsUQxXXYuyO80+O5DkSJBs68k/Xq41H+4Q0Pa5ooi74rwROEl1pqrhWaw28EWRRqwVdUzs3zCkW5IHLFNLD88+ejmKdNrevt56EeOY/BtgS6VEzgIGj7kDCbyc9vwNABk67+xFpcpLHsQ5zP942KM3/V840VoxhCFxDjRipO3sZo7ZwjYxJnJXJ4nri88mYGRXnv/ZhrWsqoghFfWhaJO2PxMI4njWdWimJXC6fetuzm+xS6kENaI8zoecKg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7113.18; Wed, 20 Dec
 2023 08:02:31 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7113.016; Wed, 20 Dec 2023
 08:02:30 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>
Subject: RE: [PATCH 7/7] drm/i915/display: Take care of VSC select field in
 video dip ctl register
Thread-Topic: [PATCH 7/7] drm/i915/display: Take care of VSC select field in
 video dip ctl register
Thread-Index: AQHaLoOfxoDoAMAlJEuQWJMyzTSdxrCqmo8AgAc9XlA=
Date: Wed, 20 Dec 2023 08:02:30 +0000
Message-ID: <MW4PR11MB70545C496C159F444D7985BFEF96A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231214114838.1113648-1-jouni.hogander@intel.com>
 <20231214114838.1113648-8-jouni.hogander@intel.com>
 <ZXyMMp90gStXBecH@intel.com>
In-Reply-To: <ZXyMMp90gStXBecH@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|CO1PR11MB4962:EE_
x-ms-office365-filtering-correlation-id: 5da93f4e-4402-499f-358b-08dc01320426
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: E0uBQgTwQ6ygaWL2hVzAHkiP9P6Ovjh9nDqD0E+2b9GUzGBhH1R0FhrLUHGbR020FvBZ5NZdtwu4YoFfayGkdQE182h0VLV1Rm+85eCKXYhifpYaf/JSAXSvatJoSuqC/efIU0Q+lPn5F2AtJLS2ioK/TZfsgVtGJ/XVLtvVlNxfU4RQLifc+ZlvXftfIufNazIlSE1lYDZRuML+XGwalvxH3gmMH7vZiYSn3zxzjEpO4jhjRr3twkLIx2U1e1nXxk06QAQjW8dV+9ThBDo9ypCFH9ylCMN4zCVhSUbD4zzV8bDVPGi54mqSUoEXMQJxZ/joPSxuaBaxaWxm9zpsfYo5HIaMNJGd9ZD99aqwp1qJk7bnytOyQlrNJ3sButRgTDuQaWD/NYSE78u5OcYAHY5Ijs3Bo0EJ66eJQacjGMm8IF4jxOmQqvcS0ESfgGJQ0YLBenZN3tBy0ZmgC8YhpnMIczWXdj6Yh7TYXQb2zq+veRIdSQpIva27rDtbU4efHRLD2hr54cuvVXI8a7SQdKeLg7F67iv59n9XpkmPgj0CY+f0fglla7adxKQSR+gDG5lrI6c9JbW0f9rA4wsWdM4L+Nh66MqLxvVk7VMykpc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(376002)(396003)(136003)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(9686003)(66899024)(53546011)(7696005)(6506007)(26005)(2906002)(83380400001)(66574015)(38070700009)(5660300002)(33656002)(55016003)(76116006)(66946007)(110136005)(316002)(64756008)(66446008)(66476007)(66556008)(6636002)(8936002)(478600001)(41300700001)(82960400001)(38100700002)(122000001)(52536014)(71200400001)(8676002)(86362001)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SitXSkZDMGk1MUY1d016VEUyOERjOTRXQjc2TDFwZFpnRVhmTEJteEtmemxy?=
 =?utf-8?B?ZU5KTzAvRHpOdUFRYjJHdnBWTEpHdXRBdnUzNVpDV2RnclFQU21aNzNXa1Vz?=
 =?utf-8?B?M0ZhRldhWFpFM2Z3Vm14bjl1UDZ4anNSN1FieG1rOGg1eURvWlAxRHgyQ3NU?=
 =?utf-8?B?MEY2ekVHbzVZcGN6UG5JWUpNejF6STdtWXpKWHp3T1FwT2Y3TEliSzJOL0xZ?=
 =?utf-8?B?bm5VUEVmblJKaTUrazFMNVhoNHpmOUlYRlNweXE5MkhGTWl6R05MelZsSzdk?=
 =?utf-8?B?elZLbGZKcUZFS004SG13WEpiS3dqSW85Z0ZVaDA2cnVDUWN5cVV1Uk5NY1Rt?=
 =?utf-8?B?czVjQ254QnFCRTJ4aExvRWkvV0kzTXU3YTRacDd5L2k2OGRvUkRKU1RyOEh6?=
 =?utf-8?B?Z3djV0ZXRGVqT1o1eU1Ua2tmV2FEWnlBVzgzdmROMnRSZ2RUWkFlank5TnFX?=
 =?utf-8?B?ajZiR21NdGE0TW15RW02VWFFdk1LYjlYamZUOEFGelg4dDcvRzA4K0FvbjQv?=
 =?utf-8?B?aTNlaTJKNWxCQi9lWUVRaDNGeGdaaDhrNEUvWnNCNmZTUDF3T1krRmRhYTcv?=
 =?utf-8?B?Tzg3Ni9WVzVSVVpPRHVoaUNUSUQ0ZUl1aFN6NG1yTVVHc2lrOGhnOS9ZSEh5?=
 =?utf-8?B?YmRuREdIdzNHbktYbnRIanAraXk1SnNudVZXVFdxWVoraGFMQWdvRXZEM0ty?=
 =?utf-8?B?TVB5UnNkT1hPSlRleEl5NzhZZnJ4akV6dzNLb2pDaGMzQjhIOFhaRVg2Y2JK?=
 =?utf-8?B?UHozTW9VVnYvdjdUUnVOdmZ0ekl5L20xRkxaczdCMm5oN0o5cmFZOUlFMFM5?=
 =?utf-8?B?T0l0Y25oM3YyUis5cTBIREpLcXpjSnpjbWxZVkxPYjFSMEFkK1k0d29TTjZP?=
 =?utf-8?B?QkZCazR4NUwwa2t6ZE8zbUdteFZEMEp5bWNkTW5FWjR4QTQ3aHgzS0RuM2k5?=
 =?utf-8?B?WGxkbmdwS1p3SW90NFl1TmE3Q2s2TkladDJqb0V0YmdYS1hscmV2NWZBdmNL?=
 =?utf-8?B?VUdaaGJFelJDb3VsSitUYWlYaXgzalBCbUZCQjcxeVVOMkV4UmdJaWpJbUNr?=
 =?utf-8?B?bWM4cURKNWV0eFpjUkJydzhjUi9FbDNMRURFdG9aWVljUU56ZzVFRDVnUHQr?=
 =?utf-8?B?R1dMTG0rRmQ3WUYyRVc3dHk5UW5nREZPclhZdld5dWptRDYvdE1KSWFTTkc4?=
 =?utf-8?B?d1J0QUpBL0JqN1ZuM3oxcmZvSTNBdjJFMHdwS25VbFQ1Z0NUei9aV0NwSTNq?=
 =?utf-8?B?ZFZWWjFYT3cxM2s5Q2ZOM2xxOGtjRy9PbEREU2txRkVzR3E0ZENWNHJ4bEhG?=
 =?utf-8?B?WjlCc0h3MzZ6MVFna0YyRUZCWWc0Sk52bjZvWlRqNldFdzZQakdqR29KaWNZ?=
 =?utf-8?B?M3R3SWtubmI5amJjSURVMVFpYUhWS2U5ZUhoeUxCWk9IK2hUZXpvSlVScGsy?=
 =?utf-8?B?bkh4QmlKeEdmQkwyV1BXaGpxSVNGUHo5TEExWUo2cGFGRkoxS21ZdU9WWGZi?=
 =?utf-8?B?Ukg4MUk2emFVMmE3czhMUjdZbkQxSlpEbnFIb21rbDdERGNjejV5eTBGdHl3?=
 =?utf-8?B?eTZ6d2huRzZlVmJGS0QxZTdKVkZQem9mYU5HNm1keC9kaWhlMU5ybUNlaTlp?=
 =?utf-8?B?dDZXQTliREFwQ0VJSWF1dEFjdjh5ZnIrT0hRSUFQdjArU2dnTUJUNHZtVW14?=
 =?utf-8?B?L1ZRam5JRW9jZGpOelBGaFRSZFQySWRBaXNvZWlrT3JPQnY5d0tSeFJnbDFx?=
 =?utf-8?B?NUd2OFlQQTl0RGNrc2JzN2VwYlFUMmQzbTRpenAwQkFDU0VpbnZMZ2Roa3Nl?=
 =?utf-8?B?a1M0aHFXaEVJSjJCbFhtcEMyL3o5R3hxemU2YjIxWDRKaUpMN25oYTQ2ZER4?=
 =?utf-8?B?TEVNT0loUHhZQTVOaktxQ3VhTzlBN24yeldjUmZQa2VjY3J6cVVuSG55VjRk?=
 =?utf-8?B?ZmtKUWFmczdORG1zalFnMXM0QjNBQXN4YTNLSWJiQjdsRm40WHptRFEzdjNY?=
 =?utf-8?B?TVlsVVFiUFNrOSt3REJQdzdjMzgvaVFIRnRWdmJaMXE1YlVVT2lEQ1FKK2tN?=
 =?utf-8?B?Q0pZVFpRK0JhWjZsbVZVRGs0WEh5dDEwL1Z0Ulp1YUNhOG0vdW9kblBVRGY2?=
 =?utf-8?Q?mNofLqglu/a88vyb6NWh8aGgG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5da93f4e-4402-499f-358b-08dc01320426
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2023 08:02:30.8822 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: n4NEXsb7K39lbpls2lJhZh4Hc5s7yUbO2d7bAZcbFNpSDD3NYwhtnLZk2WKaVHZtEhC/06U1YtH0qPWyMK4GUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4962
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFJvZHJpZ28gVml2
aQ0KPiBTZW50OiBGcmlkYXksIERlY2VtYmVyIDE1LCAyMDIzIDc6MjYgUE0NCj4gVG86IEhvZ2Fu
ZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxp
c3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDcvN10gZHJtL2k5MTUv
ZGlzcGxheTogVGFrZSBjYXJlIG9mIFZTQyBzZWxlY3QgZmllbGQgaW4gdmlkZW8gZGlwIGN0bCBy
ZWdpc3Rlcg0KPiANCj4gT24gVGh1LCBEZWMgMTQsIDIwMjMgYXQgMDE6NDg6MzhQTSArMDIwMCwg
Sm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0KPiA+IFdlIG5lZWQgdG8gY29uZmlndXJlIFZTQyBTZWxl
Y3QgZmllbGQgaW4gdmlkZW8gZGlwIGN0bCBpZiB3ZSB3YW50IHRvDQo+ID4gaGF2ZSBlLmcuIGNv
bG9yaW1ldHJ5IGRhdGUgaW4gb3VyIFZTQyBTRFAuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBK
b3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMgfCA4ICsrKysrLS0tDQo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1p
LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+ID4g
aW5kZXggMzllNGY1ZjdjODE3Li5lZWRlZjgxMjFmZjcgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZG1pLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiA+IEBAIC01MjMsMTAgKzUyMywxMiBA
QCB2b2lkIGhzd193cml0ZV9pbmZvZnJhbWUoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIs
DQo+ID4gIAkJCSAgICAgICAwKTsNCj4gPg0KPiA+ICAJLyogV2FfMTQwMTM0NzU5MTcgKi8NCj4g
DQo+IEZvciBhIG1vbWVudCBJIHRob3VnaHQgdGhhdCB5b3VyIGNoYW5nZSBpbiB0aGUgbG9naWMg
YmVsb3cgd291bGQgYnlwYXNzIHRoaXMgdy9hLg0KPiBCdXQgdGhlbiBJIHJlYWQgaXRzIGRlc2Ny
aXB0aW9uIGFuZCBub3RpY2UgdGhhdCBpdCBpcyBvbmx5IGFib3V0IHRoZSBiaXQgMjAsIHdoaWxl
IHlvdXIgbmV3IGNhc2UgYmVsb3cgeW91IHNldCBiaXQgMjYuIFNvIHdlIHNob3VsZCBiZQ0KPiBn
b29kLg0KPiANCj4gSSBldmVuIHdvbmRlciBpZiB3ZSBzaG91bGRuJ3QgbW92ZSB0aGlzIHcvYSBi
ZWxvdy4gbGV0IHVzIHRvIGNhbGN1bGF0ZSB0aGUgYml0cywgYnV0IHRoZW4gaWYgd2EgY29uZGl0
aW9uIHZhbCAmPQ0KPiB+VklERU9fRElQX0VOQUJMRV9WU0NfSFNXOw0KPiANCj4gPiAtCWlmIChJ
U19ESVNQTEFZX1ZFUihkZXZfcHJpdiwgMTMsIDE0KSAmJiBjcnRjX3N0YXRlLT5oYXNfcHNyICYm
IHR5cGUgPT0gRFBfU0RQX1ZTQykNCj4gPiAtCQlyZXR1cm47DQo+ID4gKwlpZiAoIShJU19ESVNQ
TEFZX1ZFUihkZXZfcHJpdiwgMTMsIDE0KSAmJiBjcnRjX3N0YXRlLT5oYXNfcHNyICYmIHR5cGUg
PT0gRFBfU0RQX1ZTQykpDQo+ID4gKwkJdmFsIHw9IGhzd19pbmZvZnJhbWVfZW5hYmxlKHR5cGUp
Ow0KPiA+ICsNCj4gPiArCWlmICh0eXBlID09IERQX1NEUF9WU0MpDQo+ID4gKwkJdmFsIHw9IFZT
Q19ESVBfSFdfREFUQV9TV19IRUE7DQo+IA0KPiBmb3IgdGhlIHBhcnQgb2YgbmVlZCB0byBzZXQg
dGhpcyBiaXQgMjYgSSBjb25mZXNzIHRoYXQgSSdtIG5vdCAxMDAlIHN1cmUuDQo+IFdoYXQgcmVn
aXN0ZXIgdGhpcyBpcyBpbiB0aGUgc3BlYz8NCj4gDQo+IGJ1dCBpZiBzb21lb25lIGVsc2UgY2hl
Y2sgdGhlc2UgYml0cywgSSBoYXZlIG5vdGhpbmcgYWdhaW5zdCB0aGlzIHBhdGNoOg0KPiANCj4g
QWNrZWQtYnk6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZpQGludGVsLmNvbT4NCg0KU2luY2Ug
d2UgYXJlIGRlYWxpbmcgd2l0aCBiaXQgMjYgKEJTcGVjIDcwMDAyKSBhbmQgdGhlcmUgd2Ugc2V0
IGJpdHMgMjUgYW5kIDI2IHRvIDEwYiBpLmUuIGRhdGEgb25seS4gVG8gbWUgaXQgbG9va3MgbGlr
ZSwgdGhpcyBjaGFuZ2UgZG9lc24ndCBpbnRlcmZlcmUgd2l0aCB0aGUgd29ya2Fyb3VuZC4NCg0K
UmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gDQo+
ID4NCj4gPiAtCXZhbCB8PSBoc3dfaW5mb2ZyYW1lX2VuYWJsZSh0eXBlKTsNCj4gPiAgCWludGVs
X2RlX3dyaXRlKGRldl9wcml2LCBjdGxfcmVnLCB2YWwpOw0KPiA+ICAJaW50ZWxfZGVfcG9zdGlu
Z19yZWFkKGRldl9wcml2LCBjdGxfcmVnKTsgIH0NCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiA+DQo=
