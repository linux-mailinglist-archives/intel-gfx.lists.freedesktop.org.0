Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 913F582458B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 16:58:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD20910E4A3;
	Thu,  4 Jan 2024 15:57:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93A1210E4A3
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 15:57:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704383878; x=1735919878;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=G+i0DdeXPAFqXyHx30c3QveP9/W4k6ycIPcqi20MLjU=;
 b=YwuT37Y99kdMa5rCJYH1O8/1UEP6OiGSI1zTrAMaIjRZ3VlL29E0h+K6
 JEGjo3JGiIW2c5C/fX2y1KoWpKylvW6LlGrSDSAb1IjE7vWY8JnxlARQT
 CNQBmZqlNPHHYqL5XRmLQb5pjcz0GgpKCRrUgte12sT7qLFo2qjzgU/C+
 /DIVft7T/t9htUvvY8QPksQYXdQgLCBJyC1PZmRw3YRjNvxAfnepfsazi
 0oJrHgEMTLNM5NFfHwVCI+Y2UI12gVSBQxuoVbqL3gEn/82vBTUagCsiM
 lYxzVr/56NRMHljy8KFhABtJaQ/VLzODLxOjAoysYagWY7pXCKLpUwLYN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="396172681"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="396172681"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 07:57:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10943"; a="780454345"
X-IronPort-AV: E=Sophos;i="6.04,331,1695711600"; d="scan'208";a="780454345"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 07:57:57 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 07:57:57 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 07:57:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 07:57:56 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 07:57:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N9EDyaXPjGDlRHO6Qzr2P9Ee+1o8n3EtRN6bG/5KDxS3y1+TrCL9qzlOblu+u80Pd859cxMGGVozHLbVQnn68/xhIfMGoH20gK43T+AiFudwybrz87Bn+w3wqqAregiIz0sc4UZrEgZxNaoymE6HM+9cXc0oW2KSN5yo0vK82jAiSFJsqXBGGmzXWRZR0TgkMtHM9qwGDjryaZluTuBPJCSR7CfJhutOVCkR53rMTrLcnvqu9VY7SdobSTFzQnHnfQqSTMM/sTDBBtgF2R5pKqjbpMvnLi1hSS0sZ97ok49/B1lqAgI/SwEUo12tR9UAO6V0Y/FePmEZYLmQR7Bq9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G+i0DdeXPAFqXyHx30c3QveP9/W4k6ycIPcqi20MLjU=;
 b=C+qmUmUCUAs0zisZXKc6x9ICWGIBdLuMzqI7/Xir5wUpoQ2QJG3MGPAwFHof9cmuBnT8ZtWDKWCR8yxHFgnAmnH5xHnlUesIDyBpgM4Z7REfgoCvUe3kfl72eTfNFTX8KktAfUo+S772na7kUplqHfKrMtlx7A9Hin6NR3VEVNIdfBOtf5fG2yecuD0rH/o28pAeeiLhDUbPXAlRItQrkuTfUiI27BRBavqvYoX+KgFw8PdFs9GXdSDcBluzXyVy/xLsQIujA8fAeVQP1Qp2vJOMoKylMPHiXcdKajgcirBWKdMEdERlNkMwIxnLvotXq/o3RSF00mw1Px98lAWVxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 by PH8PR11MB8038.namprd11.prod.outlook.com (2603:10b6:510:25e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.16; Thu, 4 Jan
 2024 15:57:52 +0000
Received: from MW4PR11MB5823.namprd11.prod.outlook.com
 ([fe80::43bf:fc47:ff4:9783]) by MW4PR11MB5823.namprd11.prod.outlook.com
 ([fe80::43bf:fc47:ff4:9783%3]) with mapi id 15.20.7159.013; Thu, 4 Jan 2024
 15:57:52 +0000
From: "Sworo, George D" <george.d.sworo@intel.com>
To: "gdsworo@intel.com" <gdsworo@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>
Subject: Re: [PATCH] drm/i915: clear the QGV mask set by GOP while booting
Thread-Topic: [PATCH] drm/i915: clear the QGV mask set by GOP while booting
Thread-Index: AQHaPrnSowar4pV0E0SrI9NGVc6tELDJTl+AgACBt4A=
Date: Thu, 4 Jan 2024 15:57:52 +0000
Message-ID: <9131122ff3fefb1a7170e7caabde965c1ef76519.camel@intel.com>
References: <20240104025745.429056-1-george.d.sworo@intel.com>
 <ZZZor1Jxmvh/XgxC@intel.com>
In-Reply-To: <ZZZor1Jxmvh/XgxC@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5823:EE_|PH8PR11MB8038:EE_
x-ms-office365-filtering-correlation-id: 20e11522-3c9c-40d3-07b8-08dc0d3de8aa
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9MV/csbuXecp1WJCV29RXZBCPiI1DettVClnefpDy6E25LyeTUkGHcNnRB8gfjAQql+ndvi4xws4oFb7++bA4lcL6TtmgaCKlJ+iOqJfco62f7kHbxiqCzbz4/jZG7hmMPPVkeO57b0nloPlmuuC+NMC8TRmZ4YHkj3XiSV5Dfi21BQiVnXEsnTkDVOuh6TVUYHez5zgRwlguYfOmlawRtRMJUCvsCyLRHGDS93qSEhhM9umV6LhTVO1Sa1R1GSLlNpBPS9ua6ZZ1lz1PI8k7kBal5NpuPFaVlV5tmclFXBcuX0AYcjzSUHtbLQ1xdBVauqw4Myp/dj6tBOtNU0o4nqMCTL9gSM8o8CC0fknx0G7AIBlUlhLDcZ5I/K6hlSru99elz6MavkuAx1TXmEz4NpdGqTTi6YST7yQNrZ+I2MxxPFDCY7/3Gll+5el7hAGzaRSyhteWXolZazR3BsbFTyGiuqoQaEV3JCpSRG4TvM8UIhBaMzKZwQ+r7w+HcJLMDZWOA8+wCQNN/gzP4brdW4Hj+9SKNRbgaGINcer9u1uSxjzitkxay4XsxkmW/GPrejzXkuRm4WVR0cB9DoEMBQ6Qjg3NE39Mjj97xhER9E=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5823.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(346002)(136003)(396003)(230922051799003)(186009)(451199024)(64100799003)(1800799012)(38070700009)(41300700001)(86362001)(478600001)(6512007)(6506007)(66946007)(76116006)(66446008)(66556008)(64756008)(66476007)(110136005)(966005)(6486002)(122000001)(2616005)(71200400001)(26005)(82960400001)(8676002)(38100700002)(8936002)(4326008)(316002)(6636002)(2906002)(36756003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VklnTlQ4UlJ5ajBTZnR4UW9kMmxaUkVEQTFNSDZtMGxPU1FkZCtsdmY4MU14?=
 =?utf-8?B?SGcrR0hZVUUwK0Vtd0VnTDdIbHBpVTBXdXRURXBFaktkVDRERXN6RU9seWVV?=
 =?utf-8?B?UUpYMjhReVB5RTQ4R3VKREY1ZTE4NDlhbEZIMEw1anNTWm1rOFZocWt1Zktw?=
 =?utf-8?B?YUNaRFV2RUtYZVpVTlpjdTRJOWhVVFRaZllvUzJORUNpY1B3di9wb2pGaHM5?=
 =?utf-8?B?UnllNlBRelVIMnVtZ3BaVU9RamJJdlBsNzhsTTdRVHlKSzRscnVZTGtyeXhJ?=
 =?utf-8?B?SUZhQmRMOU1GcmVYWE5JZGJrcXVOYzd5ZWlwRUFyMzlPQjNoVDdlNnhkRkox?=
 =?utf-8?B?Z21DR2FwdkVkOWlGU1VOL0NJdjhPdEo4eFcxNks2dFhDbWY2R0poQ0FJeExj?=
 =?utf-8?B?VTQ3d1BndHVhVjVFVUhlVDIvNS9qUStSdVpkVU1LU05JcXRnTEI2WDlhU0tt?=
 =?utf-8?B?TjdwWDM5NlkweUFNd0R0c1RycWF1MzQ2eWkwOHEyRWlSOVFxcFVUS3IxZTB2?=
 =?utf-8?B?cnJQeUE0VjgvTmt1UFNzYnFOam40bTVzSHJvWTBFWXlQaEErNWRubFRuY2NP?=
 =?utf-8?B?UHQzOWgydkNBajB4ZmlaRTNBOGxrZUpGRlJnQnBhRXpIamFKaGhoYis2eS9X?=
 =?utf-8?B?bGxYV1JQS0tra0wxRUdacmR6ZkZzWmUwbFF4SEgyRzFBalprQWtxdUl1dXdR?=
 =?utf-8?B?SlkyLzRxaWZJUHVSRlB4MUMycmsySmpSSUFMaEdWTFRjK2FMaVpOWVhqMnM3?=
 =?utf-8?B?ZUNFL2xQaHVxbHdxcTMxR2prc1l2blZ5UVVlS2ZSSzk4cENMV1J5dVNrTStY?=
 =?utf-8?B?dllqaGZDODJDckVPTTBrVGVPQ3pEM2FmbktMeU91VklOUExFekN0ckRTYTVl?=
 =?utf-8?B?UFF4V3JVN2k5S1N5clQ0TGR1NWFKMkFsdC92TDM4M2lvckNxVEFaVXVBOEhj?=
 =?utf-8?B?MGNiS2NNSWlMREV2R3hscW1ROWFDdTJOdjZLZXRGNHNocE94bmpqSjAzblVT?=
 =?utf-8?B?c1BXTEE2Znl2aW1kNmdkZVNQZFRBUjhiZW9DWnQzM3Y5VHp2WXBYV1F3ejFq?=
 =?utf-8?B?TjJQQUR2R3QrTlp4R0VneitDcXhLQVVmM2xORnRzVkxDYUR2eWM3WkRsUjJq?=
 =?utf-8?B?SkNZNGE3WEs3VUliY2hrMjI2enNIVlZwUHo1UWF5QUVRZVgydFZMOUFnRGd4?=
 =?utf-8?B?VCtWMXRacDd6ZzMweDZNNEw1d0lxUGVJd3BOT1NyYkhFc3BNNit0Tzhob25x?=
 =?utf-8?B?bmF5RTJScnpWQzcyaFcwS1ptMTZuNFJRdmY5M01wbURsWURJNTd6aEVqb3dw?=
 =?utf-8?B?c1BaRUdPOHRJdi9TSzlUcTk2N0dlOHNOaFo3QTJsMFQ1MUJEbEJsdFZyaHJt?=
 =?utf-8?B?ZlJjZElmNlhBbGhJL0pYNGVVYkwwWWo0bUY1NFpTcjRxZkRWdXBoZy8rVXNZ?=
 =?utf-8?B?Q1lGa1dKMWozV0pVTVc2VUYzWHU5amFVZlNGbk8zdUN2Mmo4bFRCeWNPNUZP?=
 =?utf-8?B?amJONlc5M3dpRXhHOWEwTGdWQnZZc3NLdUFWb2NRYnBuUTRVT3Q1c3VTck5y?=
 =?utf-8?B?YXlpRWhZc2hhMUtlYnM2K0RYN0NDTGVVaWFDbDM4VDdQaklsclhzYWFudENP?=
 =?utf-8?B?S0FiRmdQZ1FrQklGVDh0RFliUXdFTkNlcFRubExiMXhrSUQwZmErQ2dpbGpF?=
 =?utf-8?B?cktxdW5iSEErMGRQZVduNTJxZ2c4Kytod3I3eVVINlpabFpZRnFCUEMrSm1B?=
 =?utf-8?B?OEFiK3h5bDFhMnM3WWVScnFWNFYyNVlXR3F6WFQ5MzNlWWxnM04wYnplNnFO?=
 =?utf-8?B?WW5ucmN1dXFUY3o1bE1XL1IxV0t5TWl5cXBoS28wNGFrQ1ZCa1d6U3BVQm1n?=
 =?utf-8?B?SkoyOEZ6allmcVM2Y3grVFY0LzkxSHIzaFc5cU8rbzhLNG9mNUNPdUdGUUZR?=
 =?utf-8?B?M3JVdldEZmFCZXFDQWxOdW54d0NJUDBLMi84dlorcWo5UzM3ZldwQTFoczdQ?=
 =?utf-8?B?NTk1RHVNeFp4SlZuM1NWcHNablh3blFubTNad3orK0pCa1ZSRkx6RUNmZGwr?=
 =?utf-8?B?clc2RzV4Y0lsYWYrZkU5cU1OSWhYL1NnUHRaalFqK0p4ak1RTllSTjBNVm9a?=
 =?utf-8?B?TXhyUEowdHZOSHhSM2xwUGp4NnlGSHhra0FRRVNmc3VaajVGbHNqdFVqNHFB?=
 =?utf-8?B?UHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A2C69B3352796B4792E33A203AAA916E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5823.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20e11522-3c9c-40d3-07b8-08dc0d3de8aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2024 15:57:52.6997 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Mn2jH/62q19MBMYCnlgfPP7lzU6CBI9i5INfyOTBxdwGlZWwjie/GWEx8F+U9c9e87u18kywg5H0671AmHZxk00bLlKOHoNbVSunw6iVy3A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8038
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjEzICswMjAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gV2VkLCBKYW4gMDMsIDIwMjQgYXQgMDY6NTc6NDVQTSAtMDgwMCwgR2Vvcmdl
IEQgU3dvcm8gd3JvdGU6DQo+ID4gRnJvbTogR2VvcmdlIEQgU3dvcm8gPGdlb3JnZS5kLnN3b3Jv
QGludGVsLmNvbT4NCj4gPiANCj4gPiBHT1AgZHJpdmVyIGluIHRoZSBmaXJtd2FyZSBpcyBtYXNr
aW5nIHRoZSBRR1YgcG9pbnRzIGV4Y2VwdCB0aGUgb25lDQo+ID4gd2hpY2ggY2FuDQo+ID4gcHJv
dmlkZSBoaWdoIEJhbmR3aWR0aCByZXF1aXJlZCBmb3IgcGFuZWwuDQo+ID4gDQo+ID4gT24gYm9v
dCB0byB0aGUgT1MgdGhlIG1hc2sgaXMgYWxyZWFkeSBzZXQsIGFuZCBpcyBub3QgY2xlYXJlZA0K
PiA+IGFueXdoZXJlDQo+ID4gaW4gdGhlIGk5MTUgZHJpdmVyDQo+ID4gZXZlbiB0aG91Z2ggc2Fn
diBpcyBlbmFibGVkLiBUaGlzIG1lYW5zIFBjb2RlIGlzIHVuYWJsZSB0byBzd2l0Y2gNCj4gPiB0
bw0KPiA+IG90aGVyIFFHViB3b3JrIHBvaW50cw0KPiA+IGV4Y2VwdCB0aGUgb25lIGVuYWJsZWQg
YnkgZGVmYXVsdCBpbiB0aGUgR09QIGRyaXZlciBhdCBib290IHRpbWUuDQo+ID4gDQo+ID4gVGhp
cyBjaGFuZ2UgcmVzZXRzIHRoZSBtYXNrLCB3aGVuIGk5MTUgZHJpdmVyIGlzIGZpbmRpbmcgdGhl
IFFHVg0KPiA+IHBvaW50cyBhdCB0aGUgYm9vdCB0aW1lLiBTbyB0aGF0IFBjb2RlIGNhbiBzd2l0
Y2ggdG8gUUdWIHdvcmsNCj4gPiBwb2ludHMNCj4gPiBiYXNlZA0KPiA+IG9uIHRoZSBXb3JrbG9h
ZHMuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogR2VvcmdlIEQgU3dvcm8gPGdlb3JnZS5kLnN3
b3JvQGludGVsLmNvbT4NCj4gDQo+IEhpLA0KPiANCj4gV2UgYWxyZWFkeSBoYXZlIGEgY2FzZSBz
aW1pbGFyIHRvIHRoaXMsIHlvdSBtaWdodCB3YW50IHRvIGNoZWNrIHRoaXMNCj4gb3V0Og0KPiAN
Cj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMjY5NjIvDQo+IA0K
PiBTdGFuDQo+IA0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2J3LmMgfCA2ICsrKysrKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCsp
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYncuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+
ID4gaW5kZXggYmVmOTZkYjYyYzgwLi5lMjU3NmMwZmI3MjkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9idy5jDQo+ID4gQEAgLTIxMiw2ICsyMTIsNyBAQCBz
dGF0aWMgaW50IGljbF9nZXRfcWd2X3BvaW50cyhzdHJ1Y3QNCj4gPiBkcm1faTkxNV9wcml2YXRl
ICpkZXZfcHJpdiwNCj4gPiAgCQkJICAgICAgYm9vbCBpc195X3RpbGUpDQo+ID4gIHsNCj4gPiAg
CWNvbnN0IHN0cnVjdCBkcmFtX2luZm8gKmRyYW1faW5mbyA9ICZkZXZfcHJpdi0+ZHJhbV9pbmZv
Ow0KPiA+ICsJdTMyIHZhbCA9IDB4MDAsIHZhbDIgPSAwOw0KPiA+ICAJaW50IGksIHJldDsNCj4g
PiAgDQo+ID4gIAlxaS0+bnVtX3BvaW50cyA9IGRyYW1faW5mby0+bnVtX3Fndl9wb2ludHM7DQo+
ID4gQEAgLTMxMSw2ICszMTIsMTEgQEAgc3RhdGljIGludCBpY2xfZ2V0X3Fndl9wb2ludHMoc3Ry
dWN0DQo+ID4gZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+ID4gIAkJCQkgICAgaSwgcWkt
PnBzZl9wb2ludHNbaV0uY2xrKTsNCj4gPiAgCX0NCj4gPiAgDQo+ID4gKwkvKiBjbGVhciB0aGUg
UUdWIHBvaW50cyBtYXNrIHNldCBieSB0aGUgR09QIGRyaXZlciB3aGlsZQ0KPiA+IGJvb3Rpbmcg
Ki8NCj4gPiArCXJldCA9IHNuYl9wY29kZV9yZWFkKCZkZXZfcHJpdi0+dW5jb3JlLA0KPiA+IElD
TF9QQ09ERV9TQUdWX0RFX01FTV9TU19DT05GSUcsICZ2YWwsICZ2YWwyKTsNCj4gPiArCWlmIChy
ZXQpDQo+ID4gKwkJcmV0dXJuIHJldDsNCj4gPiArDQo+ID4gIAlyZXR1cm4gMDsNCj4gPiAgfQ0K
PiA+ICANCj4gPiAtLSANCj4gPiAyLjM0LjENCj4gPiANCg0KaGkgU3RhbiwNCg0KVGhhbmtzIGZv
ciB0aGUgcXVpY2sgcmVwbHkuIHVuZm9ydHVuYXRlbHksIFNBR1YgZnJlcXVlbmN5IGRvZXNudCBz
ZWVtDQp0byBiZSBzY2FsaW5nIGV2ZW4gd2l0aCB0aGlzIHBhdGNoIGFkZGVkIA0KaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMjY5NjIvIC4NCg==
