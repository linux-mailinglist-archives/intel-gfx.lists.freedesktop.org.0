Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15FE63EAA39
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Aug 2021 20:27:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B756E448;
	Thu, 12 Aug 2021 18:27:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E38466E448
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Aug 2021 18:27:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10074"; a="276453773"
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="276453773"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2021 11:27:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,316,1620716400"; d="scan'208";a="440135243"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga002.jf.intel.com with ESMTP; 12 Aug 2021 11:27:28 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 11:27:28 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10; Thu, 12 Aug 2021 11:27:27 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 12 Aug 2021 11:27:27 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 12 Aug 2021 11:27:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KAs5tBbKM1Hnk0k1P1bgzLNmDzmjXPzjqhxOEht4t27L5HfULp2ZVHZxwsxS9aEzFD79IhdBYxv6jdmRmz0pFuxImxwJyTH9qoJNNQtNyHDjLmPnCGOEEEv4DsyNxNeVcbl7oxEFoqBM++fRCGu6TDJV6ILM0wSAhcR+wcPhcezolff34MBlFpri7WP6h+Btpv07hjBq8Jklq2Z+PkU1E7uX7tVKY4tvQR+aqDZ9zg1zoZ47VYk8XU9h1p7rb4Eif8etXvT6o/Ny9QBErst4cuj4bqZfLfX30OdZ8/JuWmi1JT4WLZ5QEea6faxVq6IYZoixWFzy1IuTsiU0CCqUyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5J7I7KxIriM6dv2CaQbS8Ws5CFd2Ga3ztQ2OeYZ0g10=;
 b=GWzKG3TM9RDokk1HGE3Nl8yJr2k+HQwlxWa0yTh+pMb2PAUKqm+fqFDc0NumeOPCA8CVP9GIJoGkWDIsxyAWVXEBb2jlUfxFdpU3qkbCWtd9USHKJOo/8Z+034DpBlxxL1A0oAN59QVFL7vZOcuX0IYx5IO1sUyojWoOBMSSKwgtzim3aN469kGbOvlnvkrMx+d/tALbIvyjryktUKNV5QLE9DRGPD0Q4y5sMmmVi/beVcwf1dd49chzKLyFSqhT44A7R6Sjya8wxZC8CVFYMkC6wq9ucFAjP7hmXhca70aw7+G1iD3SXshPURonMdEfWS5KYJZ1mVlqAohuS1b5Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5J7I7KxIriM6dv2CaQbS8Ws5CFd2Ga3ztQ2OeYZ0g10=;
 b=DDnlXx9MVyKEbn0qpAIlyM780jPM799mhyF0hwQUU4bOAElhTx1uqvwysrPFIQRTClTD/JqBY2hqifwGNZu2uKT8KJqK4zPT6BTzIU6LANQORzzbvUMdjSjI2Qr8GE0V4YI/zpV+K8DluMC4Y/brHqUmRVCyl1dweZrsoPHL+WM=
Received: from CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 by MW3PR11MB4587.namprd11.prod.outlook.com (2603:10b6:303:58::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4415.13; Thu, 12 Aug
 2021 18:27:26 +0000
Received: from CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::78a7:795:31a4:923]) by CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::78a7:795:31a4:923%7]) with mapi id 15.20.4415.018; Thu, 12 Aug 2021
 18:27:26 +0000
From: "Li, Juston" <juston.li@intel.com>
To: "Gupta, Anshuman" <anshuman.gupta@intel.com>
CC: "seanpaul@chromium.org" <seanpaul@chromium.org>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "C, Ramalingam" <ramalingam.c@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v4 3/3] drm/i915/hdcp: reuse rx_info for mst
 stream type1 capability check
Thread-Index: AQHXjvcsasq8m1xs506OHThr6gZfd6tvdDQAgAC9QoA=
Date: Thu, 12 Aug 2021 18:27:26 +0000
Message-ID: <81aa54e6edbe7ff17f121637ef0bb94aeded0b9e.camel@intel.com>
References: <20210811212314.153269-1-juston.li@intel.com>
 <20210811212314.153269-4-juston.li@intel.com>
 <20210812070958.GB814@intel.com>
In-Reply-To: <20210812070958.GB814@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6cb7f956-98ad-42db-061b-08d95dbed5f9
x-ms-traffictypediagnostic: MW3PR11MB4587:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB458702E584825820A10D8864FDF99@MW3PR11MB4587.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X4T6ygemS2SpSBVd0AP+h7nJO0OQKrXwMHKIodxKDdDFIKVJVU5uJ+tYsSCrulRbaSAXo0nx+hdiVTS1Ncgn7Zvcfz+F7Oj4ywuqBzUUAdvZwvmPFgD7SjL95AUvKky08sR8gCzDoZktQ210pfujLxZnA28d1bVuWXRFTXrbuw+403TM0xIWiB9YrViOO+L2mU9mgAR7swtqxDk2QJ8OFfHxY5VsA20q4O8qwK//HHbS65+U+VswlX3VwPVbv3zLGPzBTan2k2/B+I1U1y1FUnKfra54TKp8V3pDWLq0lol2wB2D3bztxwC+RK32pGBBb80TdjFf19U/xziv1M0oq2vjgzKUWsBCid81ytnxdnCjLm6AzKM9zdSVC9LVsiw/U/dzDgjF43o/MpIvo1+QUYO8T2QS8cNrjy62j3gTadEQiZ95aoj6Ag/rQQkMX3zf89Txn7OaMHy6SZdUYHcivtI2KVpavXYqxKYHSc4hkSFHdJ1B5VxVUdFt83n2SuG3WkfD/lEA3U5fnKL+BgPcpUV3YFe6xTq5V3DkXOt84TzscJcLBO3xFCyUihNRz5ZGAQqv1Sy5JXAhQddkcknw8HZC3/NilF06c4v5RUdxGayZNTzIwTOo1O/ONjlNyAE0O2PkdJ7S3xGop/+yAGxKxkSYxdiSyLSv5QBupOZ5LBfQSNbyUsNFLEF12fDbHby3GmiNgk3fTWcBFa84nNRUyw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4833.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(376002)(136003)(396003)(366004)(39860400002)(478600001)(107886003)(2616005)(71200400001)(86362001)(6636002)(6506007)(37006003)(8676002)(8936002)(83380400001)(6512007)(6486002)(4326008)(36756003)(54906003)(64756008)(66476007)(66446008)(76116006)(91956017)(38100700002)(38070700005)(66556008)(2906002)(122000001)(66946007)(316002)(6862004)(53546011)(5660300002)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bkZURk8xc2RQR0lGVkpGY3hqckhueTFvS3VKU3ArY2U3NkRDY2Z2UkdwT05u?=
 =?utf-8?B?TDhlS3FzYVM5NGltMjczcjFTckFtaDlpWkhia08wZ0IyTklEVUVlaE9xTWNW?=
 =?utf-8?B?S0RIU29uZkJid0VjNU5BTkVWaWxjYzU4bVVzeWlISzBQR1RaOHU5Q3hocGhP?=
 =?utf-8?B?K3NhV3owTmh6RUJWWGF0V09GWDQzNHp6M0V4cWNENUU5VnNIaDhGZHlybVQ5?=
 =?utf-8?B?dHVTQ1k5Y0hVV0VoVFhHZHFxOW9nM1UvNS9wSm43YVFHSXdLejVLMUtNTFRo?=
 =?utf-8?B?eVlUU1pWcHEwcVd4VjhGWVF2bllkdnlPQW5yM0dHSzl3M0NDUVhaQlRHRERy?=
 =?utf-8?B?dlhEVHBrYjJLWXJXdnNGY0M4RHMwSkZxOHpQUjFCaGFNbjR2UUhwZ1RUQjR6?=
 =?utf-8?B?WERUTEx1VWRJUVp4UnZiUTV5UXU4ZndIanBXNjNOeG9xbHZ5WGhaRDVGMlkz?=
 =?utf-8?B?RG42MmYwZjZGQy8raUhyOWsxOWt0c0wzY3g3eDRodHordWJxNE5kRFRsSndl?=
 =?utf-8?B?TFBGQklZdXVmQUxHUkF3UkxpWGdiQ21MVDdWd3B0QkRBblRyazZ5UjM0emJI?=
 =?utf-8?B?V3JBYUtvMDhsaGVNNEdXanRWdDQ4c2VMT1ZHSWV1bm1yK0YzUlJvZ1l3d1Nh?=
 =?utf-8?B?MUJVQURJY25qc0tkdHVCZWpRbDh3eWRMTlpNVktzbjNENlhEako3ZE9RYjQ5?=
 =?utf-8?B?ZFJDYWMvckxXOVpFNzU0Z0pyZEpXU1g3azhvRjNnTnI3WklkaXN0bW4zMk5H?=
 =?utf-8?B?MHlybE9HcGhYTUhQc012ZUUyZ2I3UnpJTElqZ2g4dENULzIzMlRpTHJMckwx?=
 =?utf-8?B?eFQ4aHhiZXBkdlJjUTAxTlUyeEdtRkJNb2FCRmVpZU5vQWluVjg2WWhVRWJj?=
 =?utf-8?B?bFJZRmU2ZlRNQVBCejQ5S2hNRGFZOXp6NHd3YTZWUmlRWVdQZnNDNFNRR00y?=
 =?utf-8?B?c1p1RWpaY1N3bDZKaE5NUlpYVDRBRFdtUW5DK1NwMVN1NXdjLy9haC83OEg3?=
 =?utf-8?B?eW80bGhpeTlHYXhlK3JKNDNYSWRPRFRha3lEZjVaTHNWMy9kaHZWNnR1NmdY?=
 =?utf-8?B?dlF2WGpiYjBkaHBXN2lTQmZPVlpQU1VYZHp0N1JsM1hZREtqRE5naW1HTGV5?=
 =?utf-8?B?NG04ajZXODZnQkFvWldHRDRiT0FuUjZmMlF2RTFxSXJNVzZBVFZDay83bmJ2?=
 =?utf-8?B?Wjc3K0ZCU08wcEhXbkluRHk2OEtkUjJFQng2TVdablppSzhqc1VaQjROODdm?=
 =?utf-8?B?Wi9XbnRxWmxIbTBvRlVpT3B2VHUvUXZoeVE5RE1tNmhSOEovU2l3OWtKbUlD?=
 =?utf-8?B?MXBZWFhCZERYTkxLUUg2ai9pbVU3ZXFmYWoxeGJ3MlVkTG5SczB6ZlBSY1Qw?=
 =?utf-8?B?YU94R1FLNVFFeXdEQTRlYmlLQjZuSjVXbGlMODkvYXlrbDR3Yjc2ZEFNc3dC?=
 =?utf-8?B?cDFlZDdITS9TUnpVNlB1aXdYRDA2VEFOUTNvY0tSaW41NEpHSnRtRGV6ckRP?=
 =?utf-8?B?eTNHRG9Lb2tJWDNhUVFrdldiWE4zV1JrMDRMUW1nV0dZb21NSStIYUtIR2xX?=
 =?utf-8?B?RXJaVVFEWTNtZy85WCtXNWVmcjRtSG8rZ2ozaTNVNXNuR0VYdzVYNnVhZXVy?=
 =?utf-8?B?aU1KZzkzL0l0bWZSODV6L0VoZEl3U3N6U1Bad1hNUEVodFhTZ05BNm8wanVG?=
 =?utf-8?B?YjlmTHduZnhXL1hmc3VrcDdKZVB6VS9OeDdWT0htZ25iU0h5RTlmRVptMTR1?=
 =?utf-8?B?S3hXd2dHdjlpVkZyZnlBTlJpTHZzQ3VzRWpseTVKVmVIOEEyQ0NIMGdEdUlI?=
 =?utf-8?B?ejA3S1AyQ3dCYWozUk1PUT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <569070C307D59B44A3234F97B051FB0B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4833.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cb7f956-98ad-42db-061b-08d95dbed5f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Aug 2021 18:27:26.3835 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: In1mMe90yFMdsWK/ulhyxECfULGbsyuWNGzCRpcpJEHMRi0M22YU6ALGyYqZZe1nQbAbnIdsIcq8ZVC6sb0Giw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4587
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 3/3] drm/i915/hdcp: reuse rx_info for mst
 stream type1 capability check
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

T24gVGh1LCAyMDIxLTA4LTEyIGF0IDEyOjQwICswNTMwLCBBbnNodW1hbiBHdXB0YSB3cm90ZToN
Cj4gT24gMjAyMS0wOC0xMSBhdCAxNDoyMzoxNCAtMDcwMCwgSnVzdG9uIExpIHdyb3RlOg0KPiA+
IE9uIHNvbWUgTVNUIGRvY2tpbmcgc3RhdGlvbnMsIHJ4X2luZm8gY2FuIG9ubHkgYmUgcmVhZCBh
ZnRlcg0KPiA+IFJlcGVhdGVyQXV0aF9TZW5kX1JlY2VpdmVySURfTGlzdCBhbmQgdGhlIFJ4U3Rh
dHVzIFJFQURZIGJpdCBpcyBzZXQNCj4gPiBvdGhlcndpc2UgdGhlIHJlYWQgd2lsbCByZXR1cm4g
LUVJTy4NCj4gPiANCj4gPiBUaGlzIGJlaGF2aW9yIGNhdXNlcyB0aGUgbXN0IHN0cmVhbSB0eXBl
MSBjYXBhYmlsaXR5IHRlc3QgdG8gZmFpbA0KPiA+IHRvDQo+ID4gcmVhZCByeF9pbmZvIGFuZCBk
ZXRlcm1pbmUgaWYgdGhlIHRvcG9sb2d5IHN1cHBvcnRzIHR5cGUxIGFuZA0KPiA+IGZhbGxiYWNr
DQo+ID4gdG8gdHlwZTAuDQo+ID4gDQo+ID4gVG8gZml4IHRoaXMsIGNoZWNrIGZvciB0eXBlMSBj
YXBhYmlsaXR5IHdoZW4gd2UgcmVjZWl2ZSByeF9pbmZvDQo+ID4gd2l0aGluDQo+ID4gdGhlIEFL
RSBmbG93IHdoZW4gd2UgcmVhZCBSZXBlYXRlckF1dGhfU2VuZF9SZWNlaXZlcklEX0xpc3QgaW5z
dGVhZA0KPiA+IG9mIGFuIGV4cGxpY2l0IHJlYWQganVzdCBmb3IgdHlwZTEgY2FwYWJpbGl0eSBj
aGVja2luZy4NCj4gPiANCj4gPiBUaGlzIGRvZXMgcmVxdWlyZSBtb3Zpbmcgd2hlcmUgd2Ugc2V0
IHN0cmVhbV90eXBlcyB0byBhZnRlcg0KPiA+IGhkY3AyX2F1dGhlbnRpY2F0ZV9zaW5rKCkgd2hl
biB3ZSBnZXQgcnhfaW5mbyBidXQgdGhpcyBvY2N1cnMNCj4gPiBiZWZvcmUgd2UNCj4gPiBkbyBo
ZGNwMl9wcm9wYWdhdGVfc3RyZWFtX21hbmFnZW1lbnRfaW5mby4NCj4gPiANCj4gPiBBbHNvLCBs
ZWdhY3kgSERDUCAyLjAvMi4xIGFyZSBub3QgdHlwZSAxIGNhcGFibGUgZWl0aGVyIHNvIGNoZWNr
DQo+ID4gZm9yDQo+ID4gdGhhdCBhcyB3ZWxsLg0KPiA+IA0KPiA+IENoYW5nZXMgc2luY2UgdjI6
DQo+ID4gwqAtIFJlbW92ZSBubyBsb25nZXIgdXNlZCB2YXJpYWJsZXMgaW4gX2ludGVsX2hkY3Ay
X2VuYWJsZSgpDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSnVzdG9uIExpIDxqdXN0b24ubGlA
aW50ZWwuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBSYW1hbGluZ2FtIEMgPHJhbWFsaW5nYW0uY0Bp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X3R5cGVzLmjCoMKgwqAgfMKgIDIgKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9oZGNwLmPCoCB8IDM5IC0tLS0tLS0tLS0tLS0tLQ0KPiA+IMKgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmPCoMKgwqDCoCB8IDQ5ICsrKysrKysr
LS0tLS0tLQ0KPiA+IC0tLS0NCj4gPiDCoDMgZmlsZXMgY2hhbmdlZCwgMjMgaW5zZXJ0aW9ucygr
KSwgNjcgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0KPiA+IGluZGV4IGRiZGZlNTRk
MDM0MC4uYzhiNjg3ZmYwMzc0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gPiBAQCAtNTE2LDYgKzUxNiw4
IEBAIHN0cnVjdCBpbnRlbF9oZGNwIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZW51bSB0cmFuc2Nv
ZGVyIGNwdV90cmFuc2NvZGVyOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBPbmx5IHVzZWQgZm9y
IERQIE1TVCBzdHJlYW0gZW5jcnlwdGlvbiAqLw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBlbnVtIHRy
YW5zY29kZXIgc3RyZWFtX3RyYW5zY29kZXI7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGJv
b2wgdG9wb2xvZ3lfdHlwZTFfY2FwYWJsZTsNCj4gVG9wb2xvZ3kgaXMgbm90IGdvaW5nIHRvIGJl
IGNoYW5nZSBmb3IgZWFjaCBjb25uZWN0b3IgaW4gbXN0DQo+IHRvcG9sb2d5Lg0KPiBJTUhPIGRp
Z19wb3J0IHNob3VsZCBjb250YWluIHRoaXMsIHByZWZpeCBieSBtc3QgYXMgdGhpcyBpcyBzcGVj
aWZpYw0KPiB0byBtc3QgdXNhZ2VzLg0KDQpTdXJlLCB3aWxsIG1vdmUgdG8gaW50ZWxfZGlnaXRh
bF9wb3J0IGFuZCBJIHNldHRsZWQgb24gcmVuYW1pbmcgaXQNCmhkY3BfbXN0X3R5cGUxX2NhcGFi
bGUNCg0KPiA+IMKgfTsNCj4gPiDCoA0KPiA+IMKgc3RydWN0IGludGVsX2Nvbm5lY3RvciB7DQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfaGRj
cC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2hkY3AuYw0K
PiA+IGluZGV4IGZiZmIzYzRkMTZiYi4uNTQwYTY2OWUwMWRkIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfaGRjcC5jDQo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9oZGNwLmMNCj4gPiBAQCAtNDc4LDIz
ICs0NzgsNiBAQCBpbnQgaW50ZWxfZHBfaGRjcDJfd3JpdGVfbXNnKHN0cnVjdA0KPiA+IGludGVs
X2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBzaXpl
Ow0KPiA+IMKgfQ0KPiA+IMKgDQo+ID4gLXN0YXRpYyBpbnQNCj4gPiAtZ2V0X3J4aW5mb19oZGNw
XzFfZGV2X2Rvd25zdHJlYW0oc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiA+ICpkaWdfcG9y
dCwgYm9vbCAqaGRjcF8xX3gpDQo+ID4gLXsNCj4gPiAtwqDCoMKgwqDCoMKgwqB1OCByeF9pbmZv
W0hEQ1BfMl8yX1JYSU5GT19MRU5dOw0KPiA+IC3CoMKgwqDCoMKgwqDCoGludCByZXQ7DQo+ID4g
LQ0KPiA+IC3CoMKgwqDCoMKgwqDCoHJldCA9IGRybV9kcF9kcGNkX3JlYWQoJmRpZ19wb3J0LT5k
cC5hdXgsDQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqAgRFBfSERDUF8yXzJfUkVHX1JYSU5GT19PRkZTRVQsDQo+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKHZv
aWQgKilyeF9pbmZvLA0KPiA+IEhEQ1BfMl8yX1JYSU5GT19MRU4pOw0KPiA+IC0NCj4gPiAtwqDC
oMKgwqDCoMKgwqBpZiAocmV0ICE9IEhEQ1BfMl8yX1JYSU5GT19MRU4pDQo+ID4gLcKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQgPj0gMCA/IC1FSU8gOiByZXQ7DQo+ID4g
LQ0KPiA+IC3CoMKgwqDCoMKgwqDCoCpoZGNwXzFfeCA9IEhEQ1BfMl8yX0hEQ1AxX0RFVklDRV9D
T05ORUNURUQocnhfaW5mb1sxXSkgPw0KPiA+IHRydWUgOiBmYWxzZTsNCj4gPiAtwqDCoMKgwqDC
oMKgwqByZXR1cm4gMDsNCj4gPiAtfQ0KPiA+IC0NCj4gPiDCoHN0YXRpYw0KPiA+IMKgc3NpemVf
dCBnZXRfcmVjZWl2ZXJfaWRfbGlzdF9yeF9pbmZvKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQN
Cj4gPiAqZGlnX3BvcnQsIHUzMiAqZGV2X2NudCwgdTggKmJ5dGUpDQo+ID4gwqB7DQo+ID4gQEAg
LTY2NSwyNyArNjQ4LDYgQEAgaW50IGludGVsX2RwX2hkY3AyX2NhcGFibGUoc3RydWN0DQo+ID4g
aW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJu
IDA7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiAtc3RhdGljDQo+ID4gLWludCBpbnRlbF9kcF9tc3Rf
c3RyZWFtc190eXBlMV9jYXBhYmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3INCj4gPiAqY29ubmVj
dG9yLA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBib29sICpjYXBhYmxlKQ0KPiA+IC17DQo+ID4g
LcKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydCAqZGlnX3BvcnQgPQ0KPiA+
IGludGVsX2F0dGFjaGVkX2RpZ19wb3J0KGNvbm5lY3Rvcik7DQo+ID4gLcKgwqDCoMKgwqDCoMKg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+ID5i
YXNlLmJhc2UuZGV2KTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBpbnQgcmV0Ow0KPiA+IC3CoMKgwqDC
oMKgwqDCoGJvb2wgaGRjcF8xX3g7DQo+ID4gLQ0KPiA+IC3CoMKgwqDCoMKgwqDCoHJldCA9IGdl
dF9yeGluZm9faGRjcF8xX2Rldl9kb3duc3RyZWFtKGRpZ19wb3J0LA0KPiA+ICZoZGNwXzFfeCk7
DQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHJldCkgew0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJbJXM6JWRdIGZhaWxlZCB0byBy
ZWFkIFJ4SW5mbw0KPiA+IHJldD0lZFxuIiwNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjb25uZWN0b3ItPmJhc2UubmFtZSwgY29ubmVj
dG9yLQ0KPiA+ID5iYXNlLmJhc2UuaWQsIHJldCk7DQo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiByZXQ7DQo+ID4gLcKgwqDCoMKgwqDCoMKgfQ0KPiA+IC0NCj4gPiAt
wqDCoMKgwqDCoMKgwqAqY2FwYWJsZSA9ICFoZGNwXzFfeDsNCj4gPiAtwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gMDsNCj4gPiAtfQ0KPiA+IC0NCj4gPiDCoHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxf
aGRjcF9zaGltIGludGVsX2RwX2hkY3Bfc2hpbSA9IHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgLndy
aXRlX2FuX2Frc3YgPSBpbnRlbF9kcF9oZGNwX3dyaXRlX2FuX2Frc3YsDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoC5yZWFkX2Jrc3YgPSBpbnRlbF9kcF9oZGNwX3JlYWRfYmtzdiwNCj4gPiBAQCAtODM0
LDcgKzc5Niw2IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfaGRjcF9zaGltDQo+ID4gaW50
ZWxfZHBfbXN0X2hkY3Bfc2hpbSA9IHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgLnN0cmVhbV8yXzJf
ZW5jcnlwdGlvbiA9DQo+ID4gaW50ZWxfZHBfbXN0X2hkY3AyX3N0cmVhbV9lbmNyeXB0aW9uLA0K
PiA+IMKgwqDCoMKgwqDCoMKgwqAuY2hlY2tfMl8yX2xpbmsgPSBpbnRlbF9kcF9tc3RfaGRjcDJf
Y2hlY2tfbGluaywNCj4gPiDCoMKgwqDCoMKgwqDCoMKgLmhkY3BfMl8yX2NhcGFibGUgPSBpbnRl
bF9kcF9oZGNwMl9jYXBhYmxlLA0KPiA+IC3CoMKgwqDCoMKgwqDCoC5zdHJlYW1zX3R5cGUxX2Nh
cGFibGUgPQ0KPiA+IGludGVsX2RwX21zdF9zdHJlYW1zX3R5cGUxX2NhcGFibGUsDQo+ID4gwqDC
oMKgwqDCoMKgwqDCoC5wcm90b2NvbCA9IEhEQ1BfUFJPVE9DT0xfRFAsDQo+ID4gwqB9Ow0KPiA+
IMKgDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
aGRjcC5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkY3AuYw0K
PiA+IGluZGV4IGViYzJlMzJhZWMwYi4uMWEyYTk4ZTJjNmUzIDEwMDY0NA0KPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRjcC5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9oZGNwLmMNCj4gPiBAQCAtMzMsMjEgKzMzLDYg
QEAgc3RhdGljIGludCBpbnRlbF9jb25uX3RvX3ZjcGkoc3RydWN0DQo+ID4gaW50ZWxfY29ubmVj
dG9yICpjb25uZWN0b3IpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBjb25uZWN0b3ItPnBv
cnTCoMKgPyBjb25uZWN0b3ItPnBvcnQtPnZjcGkudmNwaSA6IDA7DQo+ID4gwqB9DQo+ID4gwqAN
Cj4gPiAtc3RhdGljIGJvb2wNCj4gPiAtaW50ZWxfc3RyZWFtc190eXBlMV9jYXBhYmxlKHN0cnVj
dCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gPiAtew0KPiA+IC3CoMKgwqDCoMKgwqDC
oGNvbnN0IHN0cnVjdCBpbnRlbF9oZGNwX3NoaW0gKnNoaW0gPSBjb25uZWN0b3ItPmhkY3Auc2hp
bTsNCj4gPiAtwqDCoMKgwqDCoMKgwqBib29sIGNhcGFibGUgPSBmYWxzZTsNCj4gPiAtDQo+ID4g
LcKgwqDCoMKgwqDCoMKgaWYgKCFzaGltKQ0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqByZXR1cm4gY2FwYWJsZTsNCj4gPiAtDQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKHNoaW0t
PnN0cmVhbXNfdHlwZTFfY2FwYWJsZSkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgc2hpbS0+c3RyZWFtc190eXBlMV9jYXBhYmxlKGNvbm5lY3RvciwgJmNhcGFibGUpOw0KPiA+
IC0NCj4gPiAtwqDCoMKgwqDCoMKgwqByZXR1cm4gY2FwYWJsZTsNCj4gPiAtfQ0KPiA+IC0NCj4g
PiDCoC8qDQo+ID4gwqAgKiBpbnRlbF9oZGNwX3JlcXVpcmVkX2NvbnRlbnRfc3RyZWFtIHNlbGVj
dHMgdGhlIG1vc3QgaGlnaGVzdA0KPiA+IGNvbW1vbiBwb3NzaWJsZSBIRENQDQo+ID4gwqAgKiBj
b250ZW50X3R5cGUgZm9yIGFsbCBzdHJlYW1zIGluIERQIE1TVCB0b3BvbG9neSBiZWNhdXNlDQo+
ID4gc2VjdXJpdHkgZi93IGRvZXNuJ3QNCj4gPiBAQCAtODYsNyArNzEsNyBAQCBpbnRlbF9oZGNw
X3JlcXVpcmVkX2NvbnRlbnRfc3RyZWFtKHN0cnVjdA0KPiA+IGludGVsX2RpZ2l0YWxfcG9ydCAq
ZGlnX3BvcnQpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoY29ubl9k
aWdfcG9ydCAhPSBkaWdfcG9ydCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBjb250aW51ZTsNCj4gPiDCoA0KPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBpZiAoIWVuZm9yY2VfdHlwZTAgJiYNCj4gPiAhaW50ZWxfc3RyZWFtc190
eXBlMV9jYXBhYmxlKGNvbm5lY3RvcikpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmICghZW5mb3JjZV90eXBlMCAmJiAhY29ubmVjdG9yLQ0KPiA+ID5oZGNwLnRvcG9sb2d5
X3R5cGUxX2NhcGFibGUpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgZW5mb3JjZV90eXBlMCA9IHRydWU7DQo+ID4gwqANCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRhdGEtPnN0cmVhbXNbZGF0YS0+a10uc3RyZWFtX2lkID0N
Cj4gPiBpbnRlbF9jb25uX3RvX3ZjcGkoY29ubmVjdG9yKTsNCj4gPiBAQCAtMTYzMiw2ICsxNjE3
LDE0IEBAIGludA0KPiA+IGhkY3AyX2F1dGhlbnRpY2F0ZV9yZXBlYXRlcl90b3BvbG9neShzdHJ1
Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gKmNvbm5lY3RvcikNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHJldHVybiAtRUlOVkFMOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9DQo+
ID4gwqANCj4gPiArwqDCoMKgwqDCoMKgwqAvKg0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIEEgdG9w
b2xvZ3kgaXMgbm90IFR5cGUgMSBjYXBhYmxlIGlmIGl0IGNvbnRhaW5zIGENCj4gPiBkb3duc3Ry
ZWFtIGRldmljZQ0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHRoYXQgaXMgSERDUCAxLnggb3IgTGVn
YWN5IEhEQ1AgMi4wLzIuMSBjb21wbGlhbnQuDQo+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4g
K8KgwqDCoMKgwqDCoMKgaGRjcC0+dG9wb2xvZ3lfdHlwZTFfY2FwYWJsZSA9DQo+ID4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCFIRENQXzJfMl9IRENQMV9ERVZJQ0VfQ09OTkVDVEVE
KHJ4X2luZm9bMV0pICYmDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCFIRENQ
XzJfMl9IRENQXzJfMF9SRVBfQ09OTkVDVEVEKHJ4X2luZm9bMV0pOw0KPiA+ICsNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgLyogQ29udmVydGluZyBhbmQgU3RvcmluZyB0aGUgc2VxX251bV92IHRvIGxv
Y2FsIHZhcmlhYmxlDQo+ID4gYXMgRFdPUkQgKi8NCj4gPiDCoMKgwqDCoMKgwqDCoMKgc2VxX251
bV92ID0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9oZGNwX2JlMjRf
dG9fY3B1KChjb25zdCB1OA0KPiA+ICopbXNncy5yZWN2aWRfbGlzdC5zZXFfbnVtX3YpOw0KPiA+
IEBAIC0xODcxLDExICsxODY0LDIzIEBAIHN0YXRpYyBpbnQNCj4gPiBoZGNwMl9hdXRoZW50aWNh
dGVfYW5kX2VuY3J5cHQoc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiA+IMKg
ew0KPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9y
dCA9DQo+ID4gaW50ZWxfYXR0YWNoZWRfZGlnX3BvcnQoY29ubmVjdG9yKTsNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGNvbm5lY3Rv
ci0NCj4gPiA+YmFzZS5kZXYpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBoZGNwX3BvcnRf
ZGF0YSAqZGF0YSA9ICZkaWdfcG9ydC0+aGRjcF9wb3J0X2RhdGE7DQo+ID4gK8KgwqDCoMKgwqDC
oMKgc3RydWN0IGludGVsX2hkY3AgKmhkY3AgPSAmY29ubmVjdG9yLT5oZGNwOw0KPiA+IMKgwqDC
oMKgwqDCoMKgwqBpbnQgcmV0ID0gMCwgaSwgdHJpZXMgPSAzOw0KPiA+IMKgDQo+ID4gwqDCoMKg
wqDCoMKgwqDCoGZvciAoaSA9IDA7IGkgPCB0cmllcyAmJiAhZGlnX3BvcnQtPmhkY3BfYXV0aF9z
dGF0dXM7IGkrKykNCj4gPiB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXQgPSBoZGNwMl9hdXRoZW50aWNhdGVfc2luayhjb25uZWN0b3IpOw0KPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKCFyZXQpIHsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFN0cmVhbSB3aGljaCByZXF1aXJlcyBlbmNy
eXB0aW9uICovDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpZg0KPiA+ICghaW50ZWxfZW5jb2Rlcl9pc19tc3QoaW50ZWxfYXR0YWNoZWRfZW5jb2Rl
cihjb25uZWN0b3IpKSkgew0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRhdGEtPmsgPSAxOw0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRhdGEt
PnN0cmVhbXNbMF0uc3RyZWFtX3R5cGUgPQ0KPiA+IGhkY3AtPmNvbnRlbnRfdHlwZTsNCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSB7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgcmV0ID0NCj4gPiBpbnRlbF9oZGNwX3JlcXVpcmVkX2NvbnRlbnRfc3RyZWFtKGRp
Z19wb3J0KTsNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAocmV0KQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBy
ZXR1cm4gcmV0Ow0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgfQ0KPiA+ICsNCj4gSXQgd2lsbCBiZSBnb29kIHRvIHVzZSBoZWxwZXIgZnVuY3Rpb24g
dG8gaW5pdCBzdHJlYW1zIGhlcmUuDQoNClN1cmUsIHdpbGwgbW92ZSB0aGlzIHRvIGEgaGVscGVy
IGZ1bmN0aW9uLg0KQWxzbyBmaXggc2hvdWxkbid0IHJldHVybiBoZXJlLCBzaG91bGQgYnJlYWsg
YW5kIGxldCBsb29wIHJldHJ5Lg0KDQpUaGFua3MhDQoNCj4gVGhhbmtzLA0KPiBBbnNodW1hbiBH
dXB0YS4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXQgPQ0KPiA+IGhkY3AyX3Byb3BhZ2F0ZV9zdHJlYW1fbWFuYWdlbWVudF9pbmZvKGNvbm5l
Y3Rvcik7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgaWYgKHJldCkgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiA+IEBA
IC0xOTIxLDkgKzE5MjYsNyBAQCBzdGF0aWMgaW50DQo+ID4gaGRjcDJfYXV0aGVudGljYXRlX2Fu
ZF9lbmNyeXB0KHN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvcikNCj4gPiDCoA0KPiA+
IMKgc3RhdGljIGludCBfaW50ZWxfaGRjcDJfZW5hYmxlKHN0cnVjdCBpbnRlbF9jb25uZWN0b3Ig
KmNvbm5lY3RvcikNCj4gPiDCoHsNCj4gPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCA9DQo+ID4gaW50ZWxfYXR0YWNoZWRfZGlnX3BvcnQoY29ubmVj
dG9yKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KGNvbm5lY3Rvci0NCj4gPiA+YmFzZS5kZXYpOw0KPiA+IC3CoMKgwqDCoMKgwqDC
oHN0cnVjdCBoZGNwX3BvcnRfZGF0YSAqZGF0YSA9ICZkaWdfcG9ydC0+aGRjcF9wb3J0X2RhdGE7
DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBpbnRlbF9oZGNwICpoZGNwID0gJmNvbm5lY3Rv
ci0+aGRjcDsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaW50IHJldDsNCj4gPiDCoA0KPiA+IEBAIC0x
OTMxLDE2ICsxOTM0LDYgQEAgc3RhdGljIGludCBfaW50ZWxfaGRjcDJfZW5hYmxlKHN0cnVjdA0K
PiA+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbm5lY3Rvci0+YmFzZS5uYW1lLCBjb25uZWN0b3ItPmJhc2Uu
YmFzZS5pZCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBoZGNw
LT5jb250ZW50X3R5cGUpOw0KPiA+IMKgDQo+ID4gLcKgwqDCoMKgwqDCoMKgLyogU3RyZWFtIHdo
aWNoIHJlcXVpcmVzIGVuY3J5cHRpb24gKi8NCj4gPiAtwqDCoMKgwqDCoMKgwqBpZg0KPiA+ICgh
aW50ZWxfZW5jb2Rlcl9pc19tc3QoaW50ZWxfYXR0YWNoZWRfZW5jb2Rlcihjb25uZWN0b3IpKSkg
ew0KPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkYXRhLT5rID0gMTsNCj4gPiAt
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZGF0YS0+c3RyZWFtc1swXS5zdHJlYW1fdHlw
ZSA9IGhkY3AtPmNvbnRlbnRfdHlwZTsNCj4gPiAtwqDCoMKgwqDCoMKgwqB9IGVsc2Ugew0KPiA+
IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPSBpbnRlbF9oZGNwX3JlcXVpcmVk
X2NvbnRlbnRfc3RyZWFtKGRpZ19wb3J0KTsNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaWYgKHJldCkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiByZXQ7DQo+ID4gLcKgwqDCoMKgwqDCoMKgfQ0KPiA+IC0NCj4gPiDC
oMKgwqDCoMKgwqDCoMKgcmV0ID0gaGRjcDJfYXV0aGVudGljYXRlX2FuZF9lbmNyeXB0KGNvbm5l
Y3Rvcik7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpIHsNCj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZpOTE1LT5kcm0sICJIRENQMiBUeXBlJWTC
oCBFbmFibGluZw0KPiA+IEZhaWxlZC4gKCVkKVxuIiwNCj4gPiAtLSANCj4gPiAyLjMxLjENCj4g
PiANCg0K
