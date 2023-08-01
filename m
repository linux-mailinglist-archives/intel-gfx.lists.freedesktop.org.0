Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D684276A91C
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 08:31:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60D5310E0D6;
	Tue,  1 Aug 2023 06:31:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F67810E0D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 06:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690871511; x=1722407511;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jJeAifN35MWu9f9X5ssDEbWbGpg+658NARL0Z+S038k=;
 b=bKQX2KYrbldvZkrN0JK44/UhjFImJbYB+7WXomGz0e32nho2nzKeDWTN
 YZpXqkc+sM08HwDDVRORjc+6exmPA8hH0mekpS+u7WqsoeQf7QJPc1pOc
 Y4tVh8oT4R5rvuxpLem0c9R6EqCvqOVWeLd6aEvUedZnWwtxHk7q3nmx3
 fQ8FEYfs+RmGyFHBKFN5ZRI6/+ZdHMfNw31cWY2Prg8rSgtEG6p8ffxA8
 d/EK6d3RpM3bbEwe8ODI71kr/dK8uA9oIN0zuJfO56IJV9xFdooc4r4jk
 8xEGoLXYraYDRWFl8s0oqqKBBzfun934WikvYa6W9kRQAEEIYf+/Rv1Zk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="435534295"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="435534295"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 23:31:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="871954912"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 31 Jul 2023 23:31:50 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 23:31:47 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 23:31:47 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.49) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 23:31:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I3iYbEsAt3619FBz0ypdK0hvmOzhK0JMBS4XC/MG7MB5WrGNBQCuaQOAGGuP5VFhqwl2Kxr17psw2I/60DQDHaLTUfXVZXH+tzCurNvJH7pUL07JnH8CIq6QqQnlUpTJ2KdrDL62EzQUnBu79r7JlB+4krODExKwf34RruseUxxFLA/jBUTaCHU6MJCE+NRKIXOQo4FUAgc1/mDD/fxYoQGBmqJqowd4OB356kKE0r7iFrQjUs7sF5b5MRfFegbfy+XYJtccA80XIF8hiFi7GGhCSnQYqvY+8ksHV29DqHLj+OwEl0SrEwJI6qzmJb5KJJ//Cs8AJ+7HfsJpv9S39Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jJeAifN35MWu9f9X5ssDEbWbGpg+658NARL0Z+S038k=;
 b=Mu9XO0NPtfs+4En8SDCEzff7dbUAf5sGbJ1yUdRZRXEWdLav/kfSqeaYTM+1g0lAXmFpa9uAg7jGnKUHxoj1uF2wE8wHMSNYFSNCaeJsEUrkzjLtuFjKIf+ngC2xsS0DzcAFSSW/LnHyxNC1RBXt5oP4fInLQCt2EDnrjDCtMVJy3YfofCTJuu7nHEKPfeo+5/oqHuAzwxF042Sp3Dbdb1B6C/tvAz0EMIRXD88GvrTjwUjw/3xIu362YAYgdJDtjeWx1FpFQBvGGN+ukf2kUvziF0X6jqL6hytRK0o3k3UQzd6pgwa3Gr69QXIfCi6MkuTlPEd1TlU8EzqfvO6VqA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH0PR11MB5159.namprd11.prod.outlook.com (2603:10b6:510:3c::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.44; Tue, 1 Aug
 2023 06:31:45 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::d9be:7bed:df51:87ef]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::d9be:7bed:df51:87ef%7]) with mapi id 15.20.6631.042; Tue, 1 Aug 2023
 06:31:44 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 1/6] drm/panelreplay: dpcd register definition for
 panelreplay
Thread-Index: AQHZwVLsg9HCFJEHlkiBRyozxn303K/Ta1WAgAGVeFA=
Date: Tue, 1 Aug 2023 06:31:44 +0000
Message-ID: <PH7PR11MB5981370C8D197A40E96FF303F90AA@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
 <20230728124609.2911830-2-animesh.manna@intel.com>
 <e0ee5afd867a784b6e3351064da374e6ced87320.camel@intel.com>
In-Reply-To: <e0ee5afd867a784b6e3351064da374e6ced87320.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH0PR11MB5159:EE_
x-ms-office365-filtering-correlation-id: dca94da5-53d1-45d3-ebd5-08db9258f9d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dafyDIqDqw59fAbHpKMpwNu9B5657zwV+BtYCJW4G1h6JFS4DBgZgsktZWhdeqITmdEhGZmzPEIbbGKqOdUv6wYMp2G0zaboiQQk0o0oJfT/qnyJ9NHoPj7QHwqyor/qJGXrC3OhJtrFWZ8/xRcOtZmTI5Jr/dlaFyT5d7nlAiGD0QqFqftOI2/5sN1lpviCA48DRWrq1dV7aHW4xtqKAjtaso3/86dWtKyn/Qr0+2oCWsbgmTNc2J6sby4JMfokiXRB8zCVUPt6cO8fvPSwuoGhexxgBS3OtLxHgvt10xhbrUiQaY4+kvoHaqKFjGk1gBzjHBDXx+dcS2I8QbZdKHWwpVXP5GmBPhfsZLSimlQTwv+lKHuS7/GeKm+DMqyRIBoXyBuHLAI9NIiXmX3qSloSACD0t6mjVbiqmMhllxswZzpXJX5A9CPaWK2sXSNfnkP3xx5lZkTmEt2C0tIpCdBY1rraeahlcRaT9XEcZcgRZ7M5jGOL6dBN6YUaJX1Ad3YrGSfHlhlQecJjdHrJ8RbmWw9zhjQzLP2nlYQKO9fwrlON8ZHwntvWzG2jfHiOgdX0yyhesYJrRHBwM1yVzJXKo1PbRWgb6CeT/UJCrNlM+Pmwkkm0ErtggJ15TpTV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(346002)(366004)(136003)(396003)(451199021)(122000001)(26005)(478600001)(186003)(316002)(4326008)(53546011)(6506007)(41300700001)(107886003)(55016003)(110136005)(82960400001)(9686003)(7696005)(38070700005)(38100700002)(2906002)(52536014)(83380400001)(71200400001)(5660300002)(86362001)(33656002)(8936002)(8676002)(66574015)(66446008)(66476007)(66946007)(76116006)(66556008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?STBoTXA5OUlkNmxZeWdqdlYrZXRPblBqUjdKYUFzNU0wRVNrRXJxWkdQNE1Z?=
 =?utf-8?B?UFNxR2liLzYwTysxNkQrL1pCUUVNb2pWaFIreU8xL3RwMjlUUi9HYS9vYXJJ?=
 =?utf-8?B?MXpXYkM1dk04TkJJTE5kYUlmQzVVYjJyWkFoZzd3RHYyTXljU3RDbUYrMWY5?=
 =?utf-8?B?dXlKOHdVd0prM0ZtSTNGWXJSY1E2Mjh0Snc1U04vN0ZQenUrbVN6OG81ZURI?=
 =?utf-8?B?QithWGxXTlNWNXBpc3FGeVI0ZThFK2lrazdZTTdjMnJZVDM2S01JL01nUXBt?=
 =?utf-8?B?NXltQ3UyS2JKQ3E2dVNWRkgxYUVCN1hZTHNkT002U3UyREM4VUxRL2M5Uk1z?=
 =?utf-8?B?Qkcvb0llL1RoODFtTmMvZnVKTDdRRUhJbW5Rd2lGbUVjRmN4cVZMMHlmYWxB?=
 =?utf-8?B?Z3pqazZoUGJ2UjhsajVsMFpxNkVGMUlNMjdZc2FQdXk4SlB1MVl1b3JWb3RN?=
 =?utf-8?B?NUROazNTYlRRQ1dGUHpvVWp6MTFUb1JTVmt5Wmg2UmFIT1h2a0hpbnBXd0FY?=
 =?utf-8?B?S0JxRlVDMDNPSVJsYUl6M0VEVE9KQ0hTTDBONUtJYUFUeGdCS3JUMTFEMnp5?=
 =?utf-8?B?L2swdWdiRUsrVFRmOW1VL3dQTWMwNzFEa21GRm5Xa09EWlcweUFzRElyclA3?=
 =?utf-8?B?a3dNbEk4ZzVUZHFtcDNveTVnajMxaU9BZmZPZGJYOVdEZ2FpZkhhcWlDbDJV?=
 =?utf-8?B?dmRGMDRFazdyLzRNZ05aZnJjYndDbCs0ZDc3MHliWnpBbU1FMzFETW1MZnRr?=
 =?utf-8?B?MHVuTmF0U0NnemNrUnB0MU5hYUNvT3dNWnhwYlh5WkRxcGx3ejBXMjRLbGlw?=
 =?utf-8?B?NUh4bzdHRVl1dE1jbnBycTdUWWZiQ3BDTGNTdDR5dnAwK05FTkNndkF6bisw?=
 =?utf-8?B?RjRMYlU1dUw0U0NTQytPblA2ZTltaGhsdWdNdHNjUTBnQmVEWEpiNVFEWXo1?=
 =?utf-8?B?QjRZSVFZWGV6clVYQkt3L0Jwb3NCOUVkczgvZElqZFJ1QkQ1Z0JURWJGYzVM?=
 =?utf-8?B?eHY4NTBKUHBMUlhOK3liQlFtTVgzUW5NT012bnRmdG1iY0dVRlJkcmRXYzl6?=
 =?utf-8?B?NXFzMFRoTHR1SGhBWFZYUmJUdlpRclowM0FIbUhVM280SXBBZzF6V2JLbmkz?=
 =?utf-8?B?N2lTaHg4MUdONEpuNEJJM0M4azRXeGdORnRvU0RtY1BhM0ltajI3Q2dJdzRX?=
 =?utf-8?B?bUkxL2Qrd2JRdmtFQndLd213eDdiNUJVL3k2bCs1dHJaSHhESTgraThMd0VQ?=
 =?utf-8?B?cHhoR0EzWmJsd2podDlHYTA5TXp6QmwyRzRGUDVWRFhMUTI1eFFZdkpuZFAy?=
 =?utf-8?B?blBDa2JhRTcxSVhMMFhxaDg2UjBlczFDSmUvZ0poUHZrTEVOTkxTNHdKWmIr?=
 =?utf-8?B?Z3BLNWpCL0lVU2o2V05nRGxaU0QvbURVaU8zZnVVeEREanpzNmhHK2h2bnNX?=
 =?utf-8?B?amxSaDJBNzAwZVZtWkdKd3lJUzlaT3hlc2treFF4a2RkVjZpVGsybXR5T3d0?=
 =?utf-8?B?OGhnK2E0cjZVcXFtVmxTd216SjUxVG9tTHNSN3BqRElLZ1g5RlhmNlZQVGxy?=
 =?utf-8?B?eG1MUERJMHhtWFhxR2hMcmVOVnBxcDNrRk5LUmo0M1dGYUxsUzBsQldJWWo3?=
 =?utf-8?B?WFJ4ZDQyZlVQeFhRYUVoREt2T0d2R2lHTm1IWEpnZDdSSEEwUVBESlZ6RFl5?=
 =?utf-8?B?TXRoTSs0b2FiMzFUM2lxU0tkQ1ZsdE9oOTg3RlpRQ0xCYUdRRnpoVUtQMXRP?=
 =?utf-8?B?ZGwyUlRjenRLTStzZ3NiY2twY3NSRHpKN2U1cml6YXMycVJORlFYVithQU5i?=
 =?utf-8?B?b1Zpd2pqYmN1ajZ2T25JZTZCK2w4RWNTWThPT2p6N1ZDclVhL3JuYVJCcU8y?=
 =?utf-8?B?eG9XbVZ0c0dhMVN6MGxReVd6M0c3Z0dFT3V2ZlpBeWREdit2a2t3Njd4Wlhh?=
 =?utf-8?B?T1diYmdNVjgraXJYRE9xSVNyRDkxMGhxRndxVlNQMVpBaE5hZktZR2NKKzU5?=
 =?utf-8?B?YXJhRnlRWU5rR1hWeGFpMGVBY1J3V21jL3owVjZLZFRyZzZhd2M3dmdERFBq?=
 =?utf-8?B?WlBVa1lEdHBoaUtUWVdVV1hGUGljNEhzNWdjUXluZE9TcDliNkFSZDJaWVRo?=
 =?utf-8?Q?9nIFAoWHtM6JIlupwjothfVSW?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dca94da5-53d1-45d3-ebd5-08db9258f9d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 06:31:44.9256 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZRNhAwG17t4LEjKsZRHbtjINa078ei1z2NytOHIZ4v1xWhjBZNWCAK7ZOFZqnCkMgLFf4E40hb/SiKZXPvf+mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5159
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 1/6] drm/panelreplay: dpcd register
 definition for panelreplay
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

SGksDQoNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwg
Sm91bmkgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBKdWx5IDMx
LCAyMDIzIDExOjUwIEFNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTXVydGh5
LCBBcnVuIFIgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSZTogW1BBVENI
IHYzIDEvNl0gZHJtL3BhbmVscmVwbGF5OiBkcGNkIHJlZ2lzdGVyIGRlZmluaXRpb24gZm9yDQo+
IHBhbmVscmVwbGF5DQo+IA0KPiBPbiBGcmksIDIwMjMtMDctMjggYXQgMTg6MTYgKzA1MzAsIEFu
aW1lc2ggTWFubmEgd3JvdGU6DQo+ID4gRFBDRCByZWdpc3RlciBkZWZpbml0aW9uIGFkZGVkIHRv
IGNoZWNrIGFuZCBlbmFibGUgcGFuZWwgcmVwbGF5DQo+ID4gY2FwYWJpbGl0eSBvZiB0aGUgc2lu
ay4NCj4gDQo+IEkgdGhpbmsgdGhpcyBwYXRjaCBzaG91ZCBnbyB0byBkcmktZGV2ZWxAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnIGFzIHdlbGwuDQo+IA0KDQpTdXJlLCB3aWxsIGFkZCBpbiBuZXh0IHZl
cnNpb24gcmV2aWV3Lg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KDQo+IEJSLA0KPiANCj4gSm91bmkg
SMO2Z2FuZGVyDQo+IA0KPiA+DQo+ID4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5k
ZXJAaW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gu
bWFubmFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1f
ZHAuaCB8IDExICsrKysrKysrKysrDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9u
cygrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwLmgN
Cj4gPiBiL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwLmggaW5kZXggMDJmMmFjNGRkMmRmLi5j
NDg2OTYyNjZkMjMNCj4gMTAwNjQ0DQo+ID4gLS0tIGEvaW5jbHVkZS9kcm0vZGlzcGxheS9kcm1f
ZHAuaA0KPiA+ICsrKyBiL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwLmgNCj4gPiBAQCAtNTQz
LDYgKzU0MywxMCBAQA0KPiA+IMKgLyogREZQIENhcGFiaWxpdHkgRXh0ZW5zaW9uICovDQo+ID4g
wqAjZGVmaW5lIERQX0RGUF9DQVBBQklMSVRZX0VYVEVOU0lPTl9TVVBQT1JUwqDCoMKgwqAweDBh
M8KgwqDCoC8qIDIuMCAqLw0KPiA+DQo+ID4gKyNkZWZpbmUgRFBfUEFORUxfUkVQTEFZX0NBUMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MGIwICMgZGVmaW5lDQo+ID4gK0RQX1BB
TkVMX1JFUExBWV9TVVBQT1JUwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAoMSA8PCAwKSAjIGRlZmlu
ZQ0KPiA+ICtEUF9QUl9TRUxFQ1RJVkVfVVBEQVRFX1NVUFBPUlTCoMKgwqDCoCAoMSA8PCAxKQ0K
PiA+ICsNCj4gPiDCoC8qIExpbmsgQ29uZmlndXJhdGlvbiAqLw0KPiA+IMKgI2RlZmluZcKgwqDC
oMKgwqDCoMKgwqBEUF9MSU5LX0JXX1NFVMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCAweDEwMA0KPiA+IMKgIyBkZWZpbmUgRFBfTElOS19SQVRFX1RBQkxFwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MDDCoMKgwqAgLyogZURQIDEuNCAqLyBAQA0KPiA+
IC03MTYsNiArNzIwLDEzIEBADQo+ID4gwqAjZGVmaW5lIERQX0JSQU5DSF9ERVZJQ0VfQ1RSTMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MWExDQo+ID4gwqAjIGRlZmluZSBEUF9CUkFOQ0hf
REVWSUNFX0lSUV9IUETCoMKgwqDCoMKgwqDCoMKgwqAgKDEgPDwgMCkNCj4gPg0KPiA+ICsjZGVm
aW5lIFBBTkVMX1JFUExBWV9DT05GSUfCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAw
eDFiMCAjIGRlZmluZQ0KPiA+ICtEUF9QQU5FTF9SRVBMQVlfRU5BQkxFwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgICgxIDw8IDApICMgZGVmaW5lDQo+ID4gK0RQX1BSX1VOUkVDT1ZFUkFCTEVfRVJS
T1LCoMKgwqDCoMKgwqDCoMKgwqAgKDEgPDwgMykgIyBkZWZpbmUNCj4gPiArRFBfUFJfUkZCX1NU
T1JBR0VfRVJST1LCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICgxIDw8IDQpICMgZGVmaW5lDQo+ID4g
K0RQX1BSX0FDVElWRV9GUkFNRV9DUkNfRVJST1LCoMKgwqDCoMKgwqAgKDEgPDwgNSkgIyBkZWZp
bmUNCj4gPiArRFBfUFJfU0VMRUNUSVZFX1VQREFURV9FTkFCTEXCoMKgwqDCoMKgICgxIDw8IDYp
DQo+ID4gKw0KPiA+IMKgI2RlZmluZSBEUF9QQVlMT0FEX0FMTE9DQVRFX1NFVMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIDB4MWMwDQo+ID4gwqAjZGVmaW5lIERQX1BBWUxP
QURfQUxMT0NBVEVfU1RBUlRfVElNRV9TTE9UIDB4MWMxDQo+ID4gwqAjZGVmaW5lIERQX1BBWUxP
QURfQUxMT0NBVEVfVElNRV9TTE9UX0NPVU5UIDB4MWMyDQoNCg==
