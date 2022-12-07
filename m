Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E39645385
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 06:49:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72CAD10E0E2;
	Wed,  7 Dec 2022 05:49:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4373B10E0E2
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 05:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670392166; x=1701928166;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=InYQffvVOX2PadTtN9WMM7LNWWwSjjtCz0DldIOgQfY=;
 b=bg1eMbx5jaAWF3vCr52VDM/RZV7ojfEuO4L92JSjxhXQ0ybvT5iVWtjG
 JhKu59a6EqHbFPERTI0HstVQqYfjQO+diticGBJJMg6OBAi1gyRIcQyIB
 B57pIbmE3j+mXPwc6WMGCbPudWgr5/qtqJRZr3ZoTjqND+Lnn/TOx2AiE
 3t6CuQngSKrEQPDIm+b/GPf5AgyjeE8x8T1F+z4QyPMnJC5Nx8+BuFTdP
 Hx9r/qsSsMuUVIYfGVhzNDxTi1e+kxz455Gh0ACvRochTZiwC1p4ORJb5
 GtS2pja+ia2PMnV0A+/iNaFAgXC2eAKOHXwzDU0pu4WYkeyXMlLF+VNRH g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="297163274"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="297163274"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 21:49:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="677243152"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="677243152"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 06 Dec 2022 21:49:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 21:49:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 21:49:23 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 21:49:23 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 21:49:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NDfSwt/M5EC8U6AJwP3I5v+jsUReVdaponxvvF47DDy4jBj1T8OSLfNqlELu2Wzaxm/7h+H8WBZFzuaDkX/TX00Wp69tf95TkdrdQVFusjRnCIlobt+4U11czhGyb91iAdfaQ+gD1K0zD9RHjKVbI4HTQovsMeiG3IW+bdlKDNrnrIf/2N18nZbe6nQ+1ORFLhVxbZ/stdWjXpIt4nZl9p3mWaJNxtSWmeu+N31znlNGvuNlh/qtttuwFD+a8PqIa9G9Ekbt80jCrRDgbj1fm81UbT4Ysz+e8DNRQSVFsjPk9+84WzI5Q4v0TcJ+IsSAymbQlJupocxdgoXW5FCj3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=InYQffvVOX2PadTtN9WMM7LNWWwSjjtCz0DldIOgQfY=;
 b=Mqt4e3iAqgw88B75mU1y0lm6EtTG3BRE5GDHBXVr9uh14oriBwB+70B0Sz9DCvjjXK656IwL963yYxCoYTprFocs08v6HrqV4YOIOnFkTe3WARyw8LzN6XWK/19/GpNYiOGOOidzE4TzBvTP7O9UAA/NeciyranfmEXk4CNhBwS0Ii8+xir/SK0fQGKmF/x1VOVzuALUfZK/6MMtWDg3x8MYGCGYNTqWbS8/S67c9yyXlsT186TTBTq+T0mQTs4Mc6O5e7Rj7Ib67CyS2o7lJ4HpaAEl0PbTDK/ORqXZow1YQ0D4sVG/g12FvWBxHM3F/CfAr4fvH3tT08jegrxD2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 BL1PR11MB5398.namprd11.prod.outlook.com (2603:10b6:208:31c::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Wed, 7 Dec 2022 05:49:16 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::aa9e:a40d:d382:d488%4]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 05:49:16 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 03/13] drm/i915: Define skl+ palette
 anti-collision bit
Thread-Index: AQHY/1ArmevM4I/XZEawRr1nmeyuEa5iAJdA
Date: Wed, 7 Dec 2022 05:49:16 +0000
Message-ID: <DM4PR11MB636007801A020D0085169740F41A9@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20221123152638.20622-1-ville.syrjala@linux.intel.com>
 <20221123152638.20622-4-ville.syrjala@linux.intel.com>
In-Reply-To: <20221123152638.20622-4-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|BL1PR11MB5398:EE_
x-ms-office365-filtering-correlation-id: 50f6d5a5-2294-45b6-b0af-08dad816c71d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wa8YsyuadvYmuTnijOAzTI9PfsDW+jzEhMWDn3ofKLsyf/riXGrneNTLf/6F2HQcFQ4yiWGI20rK6QxpE5VLUc/JC17cEsy6rgaTdUzIE0pi+R8Oupa1tZH6daXpTuwL/mE8VoDT8NHdXRkV6dEaYOnibaBSXLFyTvEF/szJYqzB8JZwQ5pqHgy10+yAuzOyDxOsVEby89lFbKabTN7ka2c4BHJC2tE3qsundKYYEV9+21aQePS+7EDwaTtPUXuEPwKsesFIHgoYeMpSH613plaBRhKKc9WpIQk7uuOCqbhe8yvu9KdNNA4gYB7DczVyAOVYbe63Jh0jmBzByf9NcmeHDebb4Dun488WrkyaTwG9xqVKsO3Q/X/VoVo4AT7OttoRoTT2/NPvC7IjMZwzehibHvK7TpKVIUWvWcT7xUGS8ekq80JpJa0RDYq1AGRKk2rIUVyMJXJDvDGk+NpILQ3ODbQzzQxfSJgb8yckA76WjPAgp81qAWU6MP8JGD4hoO+pUxfX09XWppJ8whZDxdAG4udPUKWS09a8rN9CLnOeA/Vz2SDmLo1doGzZBr3CmtbEcMOtGdPpaX12ODPgg+a88Se8Eek2GNKhwTNFTMi4xOFiqFQKR6JubShLpsw1am5vPERpXdaOzvd0VbK0ku7DfDdLm4NqGW9vNG4kiG8QR3W47Rbxf+Zun3EqeO39J9qcRGSsB22Xnaf1EtPiAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(376002)(346002)(136003)(451199015)(38100700002)(82960400001)(2906002)(5660300002)(41300700001)(33656002)(38070700005)(8936002)(83380400001)(122000001)(8676002)(478600001)(110136005)(316002)(66556008)(66946007)(71200400001)(86362001)(66446008)(66476007)(55016003)(76116006)(52536014)(64756008)(7696005)(26005)(6506007)(9686003)(186003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ajdhK0dpbzhXSE5XSGxwOEFHY0NtNEdGQXoxQmJiekxCYmNxLzY0dFFCMlor?=
 =?utf-8?B?S05TM1pacEJ3d1k1dzN6SWFRcmh4RnJKbXpEWGNLeXRDTjBIL0V5WUxvSkta?=
 =?utf-8?B?QlVYeE8wZTE5SUFsTi9nT21oNjR5bEZOWFhlSGxEaG1HSXNVc1RBMDdOSWRy?=
 =?utf-8?B?MmZzYll0aWVmSDVJeW8rR2RlSmVLT3p2clo3MnVFeUYrcXRSRzE4S3UzMGs0?=
 =?utf-8?B?YXJwTkpJMjhFL1JjY3A3TzhyK3puU1hVR2ZHTnU4QktiNklDVExRSFMxbTNW?=
 =?utf-8?B?dnFHa0hLNzVsRGlHNVpQUTN1T3RCVFJVZ3h5cEdlUlU5Z1F1ODZtK1dHNlZN?=
 =?utf-8?B?Tm5lWVZHajdaNWh2VFNsTkhVVGJzVWxPR21sT0dXRjVjZVYwVlIzZElQYis2?=
 =?utf-8?B?N3NWUEZBbzltdmdwVzE4ait2dERyNWtoMnpKQm5QUFJDbGdoZzl3eTNIWEUv?=
 =?utf-8?B?TGVuVzVKOGwzMndobFdMNDV3VXJiaWl1Vnp1OTV3bG42RmczU01sc2VCVnF3?=
 =?utf-8?B?Q0xqV2JkV3hXblVhOEIxNE9YcjVLbUhpWVdqZG5IOEs4aWRKOWdDck5CUGNy?=
 =?utf-8?B?Tk5wMGt3Yjc2bDI0VCs5YzNGSHRvV2VuYW91ODRrRXJ6UERjNVZnNm9wcFNa?=
 =?utf-8?B?T3FucnZSOXpFYkk0ZW9kd1FtWmZ6RU93dEhtb2t2U2NaQlhZNGVIbE56cHdr?=
 =?utf-8?B?d25yYVVIeTdiS3k5RzBrMS9KOEx2NDRxdklTS1I0Q2gwOWdKNWlNcUdua3FN?=
 =?utf-8?B?WTJUcXVPejhLb3V5eXJXbk90WVhuOThMNDRaRkl1bTdQUDRsTElCd0pXb1c0?=
 =?utf-8?B?SDh3L1R4M3BPSzNEY3A4dVQ4eU1MdXkvcG5heFFsM25MbVAzRzNnMnRnd2dI?=
 =?utf-8?B?L0JaN1dibjZCdVpuMXU1R3U3UTF3K1pSd05JMGQrM3c5YTdXNENNK2VMNzNh?=
 =?utf-8?B?V0M2NFJ1MTJGT1drK25iaCs2ZXh6c3E3UWhVbDZrOVlJam53cTRkWE9Peisy?=
 =?utf-8?B?dlozMXhsRllPaklFS0Y4OVA3WWJlT0NKbXVjbTN2ak1kaWVyOUdTeU1KZEpX?=
 =?utf-8?B?NkRlUjdVVmVTMUxHWEl0QzBXZFpFN21aYlJ0ZWRZajJDVlRhTXdWRHpRTFBH?=
 =?utf-8?B?ZXdPZFBLczJaeU51YUt2QVRRdnQxTEtNV3Q3eDhYSkxhQTNiaE1XR0JkeWIv?=
 =?utf-8?B?WC9sb0M1eTBVOE1iaHJydXY3N0tUekVGaFM1K3pYUkRTZXJBd0V3U3hEcjY0?=
 =?utf-8?B?ZzhUMVBqTHhENmE4cmhiZzhFVzJ5YUZ0cDZUT2RNTitZdkZQdENMZWw1OTVW?=
 =?utf-8?B?bWhhS3R5MTZyZFRmN3FHa3JqZkFEWkZ4WkVacFA2SkZuZ3huSHgySXIvRnZu?=
 =?utf-8?B?SmVidHA4Tk9MZ1EvNjUvdHhUR015T3htaXFMek9WYjFhOHFJUURnMTZMZVlo?=
 =?utf-8?B?QWdaVktOZXBGcTRvTVFmSDRJSUc0OFBSaVFqTnhuY0s3NUU2M0tNaGFtQXlo?=
 =?utf-8?B?dXpSMG9iZkNKcjBveXJjdC80bWRyNFNQREozZFFYQTdUQzZoOHJYdXNTSTRI?=
 =?utf-8?B?OVdjM3U4K2hzUFlWY3FGN1c5Wks5OXJvOEFkclRPNzF3YjhZaUFRc09yNHp4?=
 =?utf-8?B?WG5VejgrbFRCdGI1MWVhR3VRR2ZXRXErNmN3RlQ1dFR4ODEyYnNhMTlkL294?=
 =?utf-8?B?TXNPenhJb1MrcVRtWEFzc2E1VDhCTk9hUjRtTk1RcElGQ1JQL1I1bkV5Tndn?=
 =?utf-8?B?K2dndlJ3bEdJL2JnNjhXN1NaRktIWjVQbmhSSC9BaVJKSHQwaC94MnJSMmM2?=
 =?utf-8?B?NUVoMS91eUY0MTcveGFWeVF6QnJmMFBNKzBuZ1kzY24vUFNZcXo2T0NZb2ZP?=
 =?utf-8?B?bkcxY05Nb1I4NmZrR2RLUWhoZGIwa3Nma2RaeWtOS0dNVE9QVkRKT3NGUkxM?=
 =?utf-8?B?MXhOVmRQV2FFWU41cGVSUXlreUFVbnBDK3FkWGY4V0UvVXFiNzlVOEd3K0ZL?=
 =?utf-8?B?b3VyakdjWDJ5U2NMRnRCYVRpZWQ1SEdzS2lSaFNxOTJtWTd0UmhHRFZiTlRW?=
 =?utf-8?B?czZQZHVOMEppZHRoakQrN2F6MWw2clFBby9OUVRYSEliaGhyOHJBTHVJQlZ3?=
 =?utf-8?Q?xxSfGUj3C40v2ugnHWmdzAWoj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50f6d5a5-2294-45b6-b0af-08dad816c71d
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2022 05:49:16.7364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9cveYwoASMJmdyK9bHPBJktzbMP+MShjRPV9igLB2r+Y+LlWmU2GhAWmYcPPReuv3NhTHD/pv40SCBQpu5ohxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5398
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915: Define skl+ palette
 anti-collision bit
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZSBT
eXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTm92ZW1iZXIgMjMsIDIwMjIgODo1NiBQTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDMvMTNdIGRybS9pOTE1OiBEZWZpbmUgc2tsKyBwYWxldHRlIGFudGktY29sbGlz
aW9uIGJpdA0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4
LmludGVsLmNvbT4NCj4gDQo+IEkndmUgYmVlbiBmcm9iYmluZyB0aGUgcGFsZXR0ZSBhbnRpLWNv
bGxpc2lvbiBsb2dpYyBiaXQgd2hpbGUgcGxheWluZyBhcm91bmQgd2l0aCBEU0IuDQo+IE5vdCBz
dXJlIHdlJ2xsIGhhdmUgcmVhbCB1c2UgZm9yIHRoaXMgYnV0IGxldCdzIGRlZmluZSB0aGUgYml0
IGFueXdheXMgc28gSSBkb24ndCBoYXZlIHRvDQo+IGNhcnJ5IGl0IGFyb3VuZCBsb2NhbGx5Lg0K
DQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3JlZy5oIHwgMSArDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiBpbmRleCA1MmQyODlmNTVjZTEuLjgwYWM1MGQ4MGFm
NCAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+IEBAIC01MzExLDYgKzUzMTEsNyBA
QA0KPiAgI2RlZmluZSBHQU1NQV9NT0RFKHBpcGUpIF9NTUlPX1BJUEUocGlwZSwgX0dBTU1BX01P
REVfQSwNCj4gX0dBTU1BX01PREVfQikNCj4gICNkZWZpbmUgIFBSRV9DU0NfR0FNTUFfRU5BQkxF
CQkJUkVHX0JJVCgzMSkgLyogaWNsKyAqLw0KPiAgI2RlZmluZSAgUE9TVF9DU0NfR0FNTUFfRU5B
QkxFCQkJUkVHX0JJVCgzMCkgLyogaWNsKyAqLw0KPiArI2RlZmluZSAgUEFMRVRURV9BTlRJQ09M
X0RJU0FCTEUJCVJFR19CSVQoMTUpIC8qIHNrbCsgKi8NCj4gICNkZWZpbmUgIEdBTU1BX01PREVf
TU9ERV9NQVNLCQkJUkVHX0dFTk1BU0soMSwgMCkNCj4gICNkZWZpbmUgIEdBTU1BX01PREVfTU9E
RV84QklUDQo+IAlSRUdfRklFTERfUFJFUChHQU1NQV9NT0RFX01PREVfTUFTSywgMCkNCj4gICNk
ZWZpbmUgIEdBTU1BX01PREVfTU9ERV8xMEJJVA0KPiAJUkVHX0ZJRUxEX1BSRVAoR0FNTUFfTU9E
RV9NT0RFX01BU0ssIDEpDQo+IC0tDQo+IDIuMzcuNA0KDQo=
