Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12D798469C1
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 08:47:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6AAD10EC3A;
	Fri,  2 Feb 2024 07:47:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jxvdw5Qe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3694F10EC68
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 07:47:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706860034; x=1738396034;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=3s+eMktwLCwQekBC+nFjNOVGPAjTRsO0oAdaCULdFUI=;
 b=jxvdw5QeIUlvza3s+5Aa3okMhut55BajBtkR9CEKa6uLLPt1Y0KDUsOl
 kEFl+pvnVRIQS+Oi7NHQ9OD8mQlVhGxslwZKpc2dCFIC4SRXJGVMekP8w
 Gui8IqZDeHdoeKA32XN/+A8bKwNCPzbzIgooTg2oA0RioSrLgqlc47Fna
 c0b5qC615xW350yIm25ClaezWwy8XupbJZDUltQuZXDpATwC4HGkGkmX2
 knff2wzp85M9BunNGGS8mc30WkJxxSzUO2DBMzGe9L61aqQ4l8ggyWdKH
 zZBnWwTZyXJLt+mS3GSEfoqXEIddl2oAtPHO4SAJMLzDSS73iGPEipK7t w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="277319"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; 
   d="scan'208";a="277319"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 23:47:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="738665469"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="738665469"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 23:47:13 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 23:47:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 23:47:12 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 23:47:12 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 23:47:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QI48rENgLn/RcjuQUE5ZyeAo9d/43eRItTlOdEqEg1u8coslvo9G8CW9uIO9mwhdGttGvGC6nsXMKWbh+z9k/Pvaa7sx1rJvwEugTQadkeAFXGeEBjALxKYOHlIlJcXY8Qf8qnNaYxOPbGFxaKnfpHUuKhR+Iu1rLAOx6y7O35XpqkA0edavNlUafUQcviJaiiWiJ2viBH0pr+pzIGbJnLpf8WijBb9QqWZPOBihf/mvIi2x4jYAIdkkQ6g/9iUP28jEntkSDNBvFRbWV5F8jEVrvczuwJdIG+BplUuEUscFsblh9QhxqojdoYL1Ak8qk8ugPd9cxPqWUqTxZ9F5vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3s+eMktwLCwQekBC+nFjNOVGPAjTRsO0oAdaCULdFUI=;
 b=oPscUtviJLOSZhhCpdiwuNXm0vjZTnNrPrpm1nGwsk6INS3Uvt1CrXUQh4/23onm9VKFGKRwoNOli1jNg5GjvJ1dPQW1ArZUWAQQTlAcjMV18aTenLWzyqSe3IjUG9rlE6XPWClP5MIR3uVwyq9ghu4cVGnumqtIMLX0joPCbnix9IzhgcJXtKRAfoTsGTsIk3mGWt6BIufg4B21PP7dDxBOmXssEF7VSMAss0r53iURCuPS/vAq6/6u65aZFOJAEWC7CxYR5q1S5N+N2QYSwyZ1ugEc39YuDowYHxZ2QXFvaFRTMdYfS/3et34kwh3V6hQMvpbbT6B46X27usyWWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6416.namprd11.prod.outlook.com (2603:10b6:930:34::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7249.29; Fri, 2 Feb 2024 07:47:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7249.025; Fri, 2 Feb 2024
 07:47:10 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Thread-Topic: [PATCH v3 04/21] drm/i915/psr: Rename intel_psr_enabled
Thread-Index: AQHaSr/OEBqMaXw32ke1rVGjHJJGubD2vuUAgAADqIA=
Date: Fri, 2 Feb 2024 07:47:10 +0000
Message-ID: <2b47355d9c1e2e4037b295b50ea25ab4d65115ff.camel@intel.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-5-jouni.hogander@intel.com>
 <PH7PR11MB598157598A12DF5A023F23A3F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB598157598A12DF5A023F23A3F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6416:EE_
x-ms-office365-filtering-correlation-id: f4da0b92-6d42-43bb-27c1-08dc23c329d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6WBjTTTTwejHxoW6mgjjwZuoiHSd96mXSmq+2+59c2AsvTu9V2iyLqPNaLrt/r4ymQ0zcWb+wWMLxxZf/Qy8PgKkJQM9kGCsqyUCDpjQ2fnvZSGs+D4qmiHH7o5WI5Y2QbnRtRNgalzuHCs/9SUWYgYH+kea1gGeu+8NHgHflo9iM6CZXx2YbpQtb++1E4mSOV635gKDmope/kTBvoYFxFJHSfRFX5J89Bt1CBIwEunEooft8uX28aFthlDO9sG0ES9w9s1HT0L9WZyI+i5lS6gcGel4HpeOXBfBLvvDTRH6RiAefkM9CCKcFUX/XkYUZhYYPR/rOLcYdiP1eeBNeNSaFU7tI1Yg1miNjKnS3/3l7jeN2E6u1yv/DJ4aj9ye2UpJUel7iSie8TUtVttPJe9fAteRb4QTFUTEIaDM13nULLvANUbkdWa7S+EzMpOgEIEvqQPFTJiekkZgkF1LALrCm594UswUD51pXPmoRebS9VbbVfmviNmcXrrIX2dGObwW6Gs3PK99aY+CfTfxm4e6qdYqk1Jd8VTgye9WUjCds+D6kxrwaAOtKFqNNF7PDXD5P29WKk8tNoKs1zcDJarvwqzc6cUmzjf0KwRkWrQNWWnM6OYLOeNe4OWiNyL+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(53546011)(83380400001)(26005)(2616005)(82960400001)(41300700001)(6506007)(8676002)(38100700002)(66946007)(8936002)(110136005)(76116006)(5660300002)(66446008)(66556008)(66476007)(2906002)(64756008)(91956017)(316002)(122000001)(66574015)(71200400001)(36756003)(478600001)(6486002)(6512007)(38070700009)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?R3htRWZDY3ZHcSt1QmwwOWs4cEdLWG8zSnFSQ1ZTcFhVT3FJZXVJNVN4Z0pH?=
 =?utf-8?B?UVNLcjMwTVlzcFVmMEV6TmNGSmN1aGpOalRQMm9zQnNHRXBmV1czQ2h0SGtN?=
 =?utf-8?B?NXpvZ0pkUHVDb1g3b0pPSUs4M1FpeWk5bzgxaCt3K2VrNVJMUDVLRzAzVUxi?=
 =?utf-8?B?K0NmM3RySFdlNzhYMG9LLzQvR1BjVXFsTVAvWUVRcUlqNXBJUmFzQWIrSVRE?=
 =?utf-8?B?WUhFaXhKVlErdkpkK1pXWWZqSE1mUnN5MXJpOUxDRDdFdlE4V2RWcE14T245?=
 =?utf-8?B?dHJHZWNubUQrckZwTFVWZjhLNllaL0dSNnhhdHhtZ29OSk9MTmxlYzJWVFl0?=
 =?utf-8?B?QmZZNTRickZvSUR3eExFZUFPNmxKTXJMcmh6ZUU4cTd3V2VXQlhwOE43Nk9o?=
 =?utf-8?B?Wkc0aU9CR0JITkdOQzRNSU1jbzkvaExTZzlobmtDNnVaS244RU1lV0ViNXFm?=
 =?utf-8?B?OGRSNkFhSmZ5Snd2djZ3ZzZkVUJla3h5UTQwczloYUhMRDN5d2JpRDBNb2Jm?=
 =?utf-8?B?d3ZNUlY4Q1dGenJoN1ZpUVlzWmN1Q3poeVQ3M1YvQTZLMjBocm9pQW1tdEJM?=
 =?utf-8?B?QXhRRWtXdFI1b3pydEVlSTFwN3ZQZnRxNzJ1RnZuc0RoWFZRUEJWZm8xcW1K?=
 =?utf-8?B?SW5hOWU4L0llQ2xrUXVzYUdVa0duUmp2c3R6SXhmQXFsZ0hxUTh3T0JtcVpU?=
 =?utf-8?B?RXhRbGlJMjdFUUhHUHhHYzR1UnZCcGRoWEwzSS9nVFg2aDZuRnVMSGRpamEz?=
 =?utf-8?B?ZmxsYS9DUUpLOTZqenZJR2cyN2NlOFRsWU81eENuTllKUjlIZUhhMlpDL2Ra?=
 =?utf-8?B?UXVJck9ESDQvb2hqTkdCUmxLNnhQSnk1QUl2K2RNTGFQK3NWTW9Db3lOUWsv?=
 =?utf-8?B?NmlxRTY2QUhKVFFPOFZmSzhxYmNSc1dremhNT1M1OVpyKzlLd2xTWnJ4ZXBD?=
 =?utf-8?B?TkhyLy9oekRBa1ErNEJEOU84M2E4Nml3b1BlZEdFaGY1TGZnYUFOU3A2S1lB?=
 =?utf-8?B?VDBVT1VOdW8xd0Qwa3U1WkxnOHN5cjRBQ3E4VFMxOU1FS1VxWVIvOTFFbGpx?=
 =?utf-8?B?M1VUaE1IVngxblQyWGcrUEZRanJSSW11TDZHZnF4OXJYV2w1d3c4ZUZzd05h?=
 =?utf-8?B?cytpUVBFMjA2Y1p4dEJOZEZ3Z1hxMTR6RTZTWGhpaHI3RCs4ZWRXUERHOElo?=
 =?utf-8?B?WFJxZkhKQ0NHWUN4Z0VsYmlPNlR3Y0dYY1hYL2dyODc4K1Z0UTJwbkdtNWdQ?=
 =?utf-8?B?R2hSNFozSktsaDZFeGZocDh5N2d1OEEwMEo1aEpmbndTYktGZGpYTjV3R1o3?=
 =?utf-8?B?RXZmVEhpMmlreURCdEdVdXc2a3BUUFhlNU5IWUptVThTZmFtckM2TGN4TlUv?=
 =?utf-8?B?am1BTkFGekY5Q3dBR2tseDlMVTBLTVYyRXJ0QTZNZnVMazdMK3RvZkI1TnRw?=
 =?utf-8?B?QmFzZk1XamthbzMvSUx6dUVhbTB1ZUVTdlROc1k5SHNNbFZMUnlnSXFrQ3ha?=
 =?utf-8?B?bUtXU05LTk9mZkE5VTFacHJJSjRvTDFwWkZnL2NtdkJwUEhDc1Y3b2YxZGU4?=
 =?utf-8?B?RHA2Z1l0ZlQyZXlaa0RkWkhnRGNWQ2o1QWpDd1FzeUEyUzJzV1ZjL3RVbXZm?=
 =?utf-8?B?VmN6NjdZTStOS3A4Qk5rdEZDTjB0bkxQNDVRb2wzb0VwZzhkWkhwdDBvQzkz?=
 =?utf-8?B?Z2licVNUUHJZM3ZlQW1VTDJmeUcwdG8wVUpwRE85bG9hRFVOc1ZaaW5mWHRC?=
 =?utf-8?B?VlBoZUg5ZXVCUzBMQmZFOGU3a1FHbmx4YWUrYXM2bHN1NXFBb1ZEb0l3WE1v?=
 =?utf-8?B?ekVRdGJnUUJoSmswc3FQanF5Y3p3UXB6ejBoVjBmS3pHdTNQRi9JZk0rUW9u?=
 =?utf-8?B?QnVXbXAxdm5lcmFIWTJ4bmF5LzczRExjUU1zLzN1NlJpR0Fhb29ETDlBRU9a?=
 =?utf-8?B?UC85VUhsdFdqTmozcSswSm9kTEgrL0hGMGtOdXVGT0s2YUpIcG5nb01udHRN?=
 =?utf-8?B?dzF6WGhUVFY1Kzd0VVVjL2N1U0R2WTVwSVNXTWR0WjZNbEhkaWxGVVp4SzFU?=
 =?utf-8?B?OU5oQzRReWpaQjlzbm1pcjRrWjE0TU4yMHh1ODZZU0xBWjU1M2pVRXVQMWRq?=
 =?utf-8?B?QnFiY1NMbjZ4NVcwMDVyNW1VNGtlSE5xWXJZbGNhc1M1OWNsblhBK3JHWUFY?=
 =?utf-8?B?N1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <410FAF4D3BA7C140A4467813B64BAA1F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4da0b92-6d42-43bb-27c1-08dc23c329d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 07:47:10.6622 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2stfdtDfIMEstQmr9mnXHQivLipNwxtfi78g/ShN0K49r9ortuHzjWBtyZ0uyzYacJDFCg3H35Vw2cZ9oiGRwdq/LnGGGigu6NkvHGuMqgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6416
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gRnJpLCAyMDI0LTAyLTAyIGF0IDA3OjM0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBK
YW51YXJ5IDE5LCAyMDI0IDM6NDAgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+IENjOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+
OyBIb2dhbmRlciwgSm91bmkNCj4gPiA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFN1
YmplY3Q6IFtQQVRDSCB2MyAwNC8yMV0gZHJtL2k5MTUvcHNyOiBSZW5hbWUgaW50ZWxfcHNyX2Vu
YWJsZWQNCj4gPiANCj4gPiBJbnRlbF9wc3JfZW5hYmxlZCBpcyBub3cgbWlzbGVhZGluZyBuYW1l
IGFzIHdlIGFyZSB1c2luZyBtYWluIGxpbmsNCj4gPiBvbiB3aXRoDQo+ID4gcGFuZWwgcmVwbGF5
LiBJLmUuIGxpbmsgcmV0cmFpbmluZyBpcyBub3QgY29udHJvbGxlZCBieSBoYXJkd2FyZS4NCj4g
PiBSZW5hbWUNCj4gPiBpbnRlbF9wc3JfZW5hYmxlZCBhcyBpbnRlbF9wc3JfaHdfY29udHJvbHNf
bGlua19yZXRyYWluLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8
am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jwqAgfCAyICstDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDIgKy0NCj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5oIHwgMiArLQ0KPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAzIGluc2Vy
dGlvbnMoKyksIDMgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggYWI0MTVmNDE5MjRkLi5lN2NkYTMxNjJl
YTIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+
ID4gQEAgLTQ5NTEsNyArNDk1MSw3IEBAIGludGVsX2RwX25lZWRzX2xpbmtfcmV0cmFpbihzdHJ1
Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIEFsc28g
d2hlbiBleGl0aW5nIFBTUiwgSFcgd2lsbCByZXRyYWluIHRoZSBsaW5rIGFueXdheXMNCj4gPiBm
aXhpbmcNCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogYW55IGxpbmsgc3RhdHVzIGVycm9yLg0KPiA+
IMKgwqDCoMKgwqDCoMKgwqAgKi8NCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoaW50ZWxfcHNyX2Vu
YWJsZWQoaW50ZWxfZHApKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChpbnRlbF9wc3JfaHdfY29u
dHJvbHNfbGlua19yZXRyYWluKGludGVsX2RwKSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgaWYgKGRy
bV9kcF9kcGNkX3JlYWRfcGh5X2xpbmtfc3RhdHVzKCZpbnRlbF9kcC0+YXV4LA0KPiA+IERQX1BI
WV9EUFJYLCBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IGluZGV4IGQxMWY4ZWE2ZTBhOS4uN2IzMjkwZjRlMGI0IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTMwMTEsNyArMzAxMSw3IEBA
IHZvaWQgaW50ZWxfcHNyX3Nob3J0X3B1bHNlKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9k
cCkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgbXV0ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiA+IMKg
fQ0KPiA+IA0KPiA+IC1ib29sIGludGVsX3Bzcl9lbmFibGVkKHN0cnVjdCBpbnRlbF9kcCAqaW50
ZWxfZHApDQo+ID4gK2Jvb2wgaW50ZWxfcHNyX2h3X2NvbnRyb2xzX2xpbmtfcmV0cmFpbihzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gQmFzZWQgb24gQ0FOX1BTUigpIGNoZWNrIHRo
ZSBmdW5jdGlvbiB3aWxsIHJldHVybiBlYXJseSBhbmQgb25seSBnZXQNCj4gZXhlY3V0ZWQgZm9y
IHBzci4gTm8gc3VyZSBzdGlsbCBkbyB3ZSBuZWVkIHRvIHJlbmFtZSBpdD8NCg0KT2suIEZvciBt
ZSBpdCB3YXMganVzdCBzdXJwcmljZSB3aGF0IGl0IGRvZXMgYW5kIHdoeSB0aGlzIGZ1bmN0aW9u
DQpleGlzdHMsIHRodXMgcmVuYW1pbmcuIE11Y2ggbW9yZSBkZXNjcmlwdGl2ZS4gQWxzbyB3ZSB3
aWxsIHNvb24gaGF2ZQ0KbWFpbiBsaW5rIG9mZiB3aXRoIFBhbmVsIFJlcGxheSBhcyB3ZWxsIHRo
ZW4gdGhpcyBpcyBub3QgYWJvdXQgaGF2aW5nDQpQU1Igb3IgUGFuZWwgUmVwbGF5IGVuYWJsZWQs
IGJ1dCBIVyBjb250cm9sbGluZyBsaW5rIHJldHJhaW5pbmcuDQoNCkknbSBmaW5lIHdpdGggZHJv
cHBpbmcgdGhlIHBhdGNoIGlmIHlvdSBoYXZlIHN0cm9uZyBvcGluaW9uIG9uIHRoaXMuDQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUmVnYXJkcywNCj4gQW5pbWVzaCANCj4gPiDC
oHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCByZXQ7DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBpbmRleCBjZGU3ODFkZjg0ZDUu
LmY3YzVjYzA3ODY0ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuaA0KPiA+IEBAIC00NSw3ICs0NSw3IEBAIHZvaWQgaW50ZWxfcHNyX2dldF9jb25m
aWcoc3RydWN0IGludGVsX2VuY29kZXINCj4gPiAqZW5jb2RlcizCoCB2b2lkIGludGVsX3Bzcl9p
cnFfaGFuZGxlcihzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IHUzMiBwc3JfaWlyKTsN
Cj4gPiB2b2lkIGludGVsX3Bzcl9zaG9ydF9wdWxzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
KTvCoCB2b2lkDQo+ID4gaW50ZWxfcHNyX3dhaXRfZm9yX2lkbGVfbG9ja2VkKGNvbnN0IHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKm5ld19jcnRjX3N0YXRlKTsgLWJvb2wgaW50ZWxfcHNy
X2VuYWJsZWQoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVsX2RwKTsNCj4gPiArYm9vbCBpbnRl
bF9wc3JfaHdfY29udHJvbHNfbGlua19yZXRyYWluKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRl
bF9kcCk7DQo+ID4gwqBpbnQgaW50ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRl
bF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
Yyk7DQo+ID4gwqB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25z
dCBzdHJ1Y3QNCj4gPiBpbnRlbF9jcnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpOw0KPiA+IC0t
DQo+ID4gMi4zNC4xDQo+IA0KDQo=
