Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A94895AB3DB
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 16:41:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F37E10E86F;
	Fri,  2 Sep 2022 14:41:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B810610E86A
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 14:41:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662129670; x=1693665670;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=f5mcNmIO8O7w0fNfC33aE9lVAB2jryL4toPY8d+8CPQ=;
 b=ZYm4/rncbPQ5TWHyrGVQFloQSesOVmtKe8NUVGo8KIUueS25LYpwYZer
 ++p/RtIBc+AbJU8ElrbEzDesvEED7jzUPKWbGq2CSQGXjt8d3YG16ln5d
 YyJdoJzaqihSKjbujoxFRzdHkRGr+SVbEiMS1nYqQx3CGtxvgxoe34gje
 n2GPnMPeb3M3kBoIDsVGoMCrLanKLBixbaflol8R8J4GI5J9RO0wa3xoa
 +W3XqYPqLiSsVxcYddOAIJwhaULgfg8+iUXew+1dUhFm+Jhe1ehRy1DTR
 2r9Bdk/J8d49WswSYVGqCOGvuQ0Xmk0I2s6tqOkh6AQjLyvmrJtim/ddz g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10458"; a="279009676"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="279009676"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 07:41:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="563981243"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 02 Sep 2022 07:41:09 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 2 Sep 2022 07:41:09 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 2 Sep 2022 07:41:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 2 Sep 2022 07:41:08 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 2 Sep 2022 07:41:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UHL+pls3FHajItGVl0wjTlG3Ghemsisx+rT11HfioQ8YqAA0p0D+hMRJqSmS41TSJDjinFyeNo6wn6uejmo3RTwWPQcRRHoLXF6a6jXDAZ+A8kaZF63UqNRLIuZ9BU19PCYWeyA/WD0GUJ7GIikr0Fo9rxDtSzz/VMnzt4cLzIQRrRGhMSLfhMIB1GMP4sD7gCuFUY2ygCfl9KxRktbHS8SnJ1bd/w2nvomuZCyAxGmkldPyfQuVDYJlcU2k5R01uglEYA3rJ8y6RaSW4EINx0/ejEKOzZr6RXSaQRlJQmksYLk8vzETXZGWYiieSwFSDTX/ROJfJy4p8DjkRFPTfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f5mcNmIO8O7w0fNfC33aE9lVAB2jryL4toPY8d+8CPQ=;
 b=LFTkgX/786UWsduRp0S+RFJkkgJmhdJeElX6xLvt/Cd+umNmnvZ3bqHnsYy5zmzboLiK+I2YAOuKXtRcsYoRel51eC8Al9THfBgB+GPCusoXbubrFzQRxgnRnQeeWzKqSV21P5gT9E3HFmMwhtpXfG3cQ/HuEj5/VBVirw3ZlCFx8cDULpvr+UtCiPtrLT4HQKmKJf5ELpALFOyIsEA5n6oMsBESzvWAwFsZUTs8b+frh49WzmFz6cSbi6FTaMl6K4ei4h9jK3cMCmAgHZc6qbdui/TKKg5Oa8GiASLkOo2KXPHsPuHRFwfAVbTV2QN7j2Xit+XSB2inbiVR8t0Rxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB5128.namprd11.prod.outlook.com (2603:10b6:510:39::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Fri, 2 Sep
 2022 14:41:07 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.010; Fri, 2 Sep 2022
 14:41:07 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Thread-Topic: [PATCH 2/2] drm/i915: Let's avoid even early init if SLPC is
 used.
Thread-Index: AQHYvrGXj+7pbHt0xESnlQgJ/XHgj63ML+MAgAAGyYA=
Date: Fri, 2 Sep 2022 14:41:07 +0000
Message-ID: <2aa0c63211d761b3ecbce3c4a7cc925a2f5be00f.camel@intel.com>
References: <20220902095126.373036-1-rodrigo.vivi@intel.com>
 <20220902095126.373036-2-rodrigo.vivi@intel.com>
 <87a67hoo8f.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87a67hoo8f.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 383f363f-d341-4629-d7bb-08da8cf12b83
x-ms-traffictypediagnostic: PH0PR11MB5128:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ldZiHq44LurEiQ6T92/wSur3o7IrDiHdErGEORyhHalQtN3cNTvNPH6lGUyTgwO689ywCmivKYQcMyIDbmtSVAkbpwvhTW19aJaoAC2w2pwO1tbPRnvOqH4HINEEBPac3vC62UITNwbh5rUJRsRkJyg5ow2/AWYJkixMKU6sQLtOGF4EtXPKrAfEKs9IIRKM5CbQxIoTs0PDYsB2vMHJHjuT/5Oibxj11I9GypL6qMPi6px6Rs53KOIaLP/MMPY+mhDN3QYYflyHe3sH9Fp2aQXY6vo4UerB/PkQs8gTJLNxi4iIMjNbwQNrCChYKAFuhQJrfL7XBnJcejk+MdPNKPahbsxdEoZu7/2vr3TGP0t65YgUW+hv3kBtVUTGYUWrLyOxkiLBVFTt/C0ZBzH+/v2a8g3c6RipckycSb1WNCFvs1DDxgy1s6IlsWtzOYXkFkEb3eXCDGCSRa3LZb+N30rJmIXuYm+Wf+fs++bER/eHIFkLGhWBef/uCInF4/Y+y4m77aO6l8y9d1uf+EQH4FRLa5Yzmq0aKR2opVJITT4V8FxfuwdRbuAwH4AP3w4FnZG2qBYHTT+vkrQmE00YWXaBgi12soJ+fWqjvy9kKNHzOxYoEuOSds4a9UgEKD1nr8woaV3XN4lROdwlNo+qfCyc7HJ5rnGupYVDPB99puHgeUTBEWNDQbs2f9XEBTC3prw0eUFE7tWpGHR6CCd7F21byZFB04JU8G6e5tXLXP5uQjPVRVSwUofx2HFBOE/4AXeej60+4iwGD1MIIzd+Ww==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(346002)(136003)(366004)(396003)(376002)(91956017)(6512007)(478600001)(2906002)(5660300002)(86362001)(66446008)(64756008)(66946007)(6506007)(66476007)(4326008)(8676002)(26005)(6486002)(2616005)(186003)(76116006)(41300700001)(6862004)(83380400001)(8936002)(38100700002)(82960400001)(38070700005)(66556008)(36756003)(122000001)(71200400001)(316002)(6636002)(37006003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bVp6NTVWdUtlaG9GWEVOcExrbmw4b3ZKbHNmTEhqbEVkQ241ZTNjWmVGdDBN?=
 =?utf-8?B?RTlIOVZjNlpOTjBUNEJ4VUU1Wm0rNklac2FCZjFvSGdZb1ZUc3BZay9qWFBz?=
 =?utf-8?B?dGM3bWtEc2s5K3U5TjVyRkM5akxVamFsZlVodGZvV0xEY1QyYTd3SGduRUdF?=
 =?utf-8?B?cU1HdXdqUEVKdVNDMVM3bVNORjVlZ2h6cVVrRmFIUFhnZllrUGY4cmVSc1B2?=
 =?utf-8?B?eE0wS0hhQ0UyYlFMdkZEcnJDQmt1dnJDUTZ0cVN3ZGduWVo3RkdDb0tQUGdS?=
 =?utf-8?B?S2lwODBrdlU2ZkpTbkY2NVhaaHNnZGZuRFR3WmdvYUJsWUxQdFdKb3BXR2Q2?=
 =?utf-8?B?VVFIeE5QUDZ4am9KYjZrNFNtbDlURWlONnI4RkxIdXFIQTFHSEppM3ZOVnF6?=
 =?utf-8?B?bmsvMlNDU2dYSE5MbEE1NDJhSW1kbS9aMCtDbXFLdTFjS09UT1JDdFQ0NU1x?=
 =?utf-8?B?UVNvdFZZMHlMU0FPNHZ1bis3ZzlIU3JvUXZJNTljYUkzaGozTXZveGNmdHBS?=
 =?utf-8?B?djBPOGZ3SGcyVm52Mi9SaERNU0FuN0h3Z1pzL0x0RHpRZ3crV1lIVFZEM2Jz?=
 =?utf-8?B?Yys5UDNuaWpmbUVKNGo3T0d0Qm9aMncwMnhwZVpEWFlPTTRiSzJlTTR0MjRE?=
 =?utf-8?B?MU5INm1VT29PZVJXeGR4SUxqU05DaXExZTZlS3VmRTQ5ZGJQZ1Vmd2NiWWFw?=
 =?utf-8?B?UGtGV0I4R21DcDNQbnZXUzRzVGJaNzk0WVFaZG9GVjFvS3Rrd3FnQytHUXFt?=
 =?utf-8?B?ckJkYUpDK3Q3ZncxeFYramYvN0wveENJbEhibW5FcjFaSWEwVkFkUW9MZ1l1?=
 =?utf-8?B?M2VTc1FoNHpLY0pnM09ERi9iZnFHRDZRSVEvWVBxalNraXd5WGxVUnlubDl4?=
 =?utf-8?B?MTc4Z1ZCZXpnUkhTMlFBOHM1Y3hXTGpETTg1Y0MyODNSQkZvdkpCMWk0WHk4?=
 =?utf-8?B?NDg0dVJUcTNlTTF6cEw5cWlkUDlhcmlGb1F0T2NJelFKZXFMYUtmbEMrc1Jz?=
 =?utf-8?B?MERCajRLc2NHMTZPNXAxWjlzVm9IcGhXc2lFQ0ltRC9wNzJ2ZlNZMkgxdUxq?=
 =?utf-8?B?WCtQeklPa1NvaElPRnJUNUhYTGxuR0tFRlp6YjYyaVRpZUFkcmhEOGVUbzly?=
 =?utf-8?B?WXRRMVc1QmNBNVhSSTE3Slc1RVpOWVovZ01UQnhJRWJBZ3FTOHlzRFBGMkx1?=
 =?utf-8?B?anpLNERVcld5UFVURFd1QjFlSXpZbzZpVHpCWk0xV29teHk0eG44djROMEhE?=
 =?utf-8?B?RFphTm5lMmROWUdRSkRZdkZ2c2VkUkU0cjVLQVQ0S29ZSUNJb01KUUg0N2o3?=
 =?utf-8?B?bzhRUTRaOWRBZ1N4enI5c0x5c3lkdWJkcmNvSlFLdHVZeTY5U0VJem9EVi84?=
 =?utf-8?B?Y29Tb2dTVGpyazVUSHU0czh1bjVIOThTb3NKRDczdXhheE9hSWt1UWNIcUoz?=
 =?utf-8?B?aUZGV0VFY0ZnemF1MWV1ZjhUUE8waERvcUEvSER4cHdpazZlWWpWTmJmeFFJ?=
 =?utf-8?B?RVk0b2p2N2c5MHVMaTN4NWpwUm9yY1ZwbzAwU0h6SjJZcHR0Z1Fydkl0dS9j?=
 =?utf-8?B?aTBJQngxd3VrUDRqdWJzL25sRUIzTFhPTHBRMm1YUTBGTG9DNi9BMXNudEkw?=
 =?utf-8?B?Sm9CVTNhWHRSdENDc0tCSnczS1ZWQ2x2UlFQS3BWbm1sMk1ZQ2ZMVlorWTlw?=
 =?utf-8?B?MWNtRXZHaVczaXBlaXVTaURLT0JwSDZmRFlkM2lubTJWM1pObEx4Z0FIZldU?=
 =?utf-8?B?WHZ4bXozVVJLakdJMUFmc1BhV1BVRlBNVFZ4elR6OUZDMnBNUmlGWlJhODR3?=
 =?utf-8?B?RllBem5nRXhVVFFoai9YcTUxdURBN2RUUFBuK3V1YUlVekxTek1ySFNZTTlN?=
 =?utf-8?B?YUtSL2hEWURINXRQWW5OTXAzZG9ZYjJGa1hScnBDcXQyL25BVTJjVW41cnB2?=
 =?utf-8?B?ZEozZlpOQmdBVHlOODBGbmF2UUZEWjRSTnVCV25FTDhjOHgybmRUU1dyRTJy?=
 =?utf-8?B?ZFRGM1U2NzNZWmpGRXVuU0IxRjBNTUxVK2s0TFZCbnNZeTBwQmJtV2hZWXV4?=
 =?utf-8?B?WWJ6Z0JBVmd4NUFZUG11REdIQU83aFNlVDlKTkRSMFRHS1ZjSXBaeGZjMmJn?=
 =?utf-8?B?dklNY1kzZGRwazhPeWNZZGlkdzZVKzVQcHN1WGd0ZEJPUGZ0N0JjaHdTcXha?=
 =?utf-8?B?bFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1A2535060FB730408371D7C47A3EDB5D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 383f363f-d341-4629-d7bb-08da8cf12b83
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2022 14:41:07.0789 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K0fPW2IQOxnU7HdGpYoWavgWxqedByGLy2YBmxCPD/XCwp7qjG9aHBs9JLhf5thq/1cWgtFzBNvmCeKuZhpq2g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5128
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Let's avoid even early init
 if SLPC is used.
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

T24gRnJpLCAyMDIyLTA5LTAyIGF0IDA3OjE2IC0wNzAwLCBEaXhpdCwgQXNodXRvc2ggd3JvdGU6
DQo+IE9uIEZyaSwgMDIgU2VwIDIwMjIgMDI6NTE6MjYgLTA3MDAsIFJvZHJpZ28gVml2aSB3cm90
ZToNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxf
cnBzLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jDQo+ID4gaW5k
ZXggNmZhZGRlNGVlN2JmLi5jMjk2NTIyODFmMmUgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ycHMuYw0KPiA+IEBAIC0xOTYwLDYgKzE5NjAsOSBAQCB2b2lkIGdlbjVfcnBz
X2lycV9oYW5kbGVyKHN0cnVjdCBpbnRlbF9ycHMNCj4gPiAqcnBzKQ0KPiA+IA0KPiA+IMKgdm9p
ZCBpbnRlbF9ycHNfaW5pdF9lYXJseShzdHJ1Y3QgaW50ZWxfcnBzICpycHMpDQo+ID4gwqB7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHJwc191c2VzX3NscGMocnBzKSkNCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0KPiA+ICsNCj4gDQo+IEhpIFJvZHJpZ28sIExl
dCBtZSBkb3VibGUgY2hlY2sgd2l0aCB5b3UsIHRoaXMgd29ya3MgY29ycmVjdGx5IGF0DQo+IHRo
aXMNCj4gcGxhY2UsIGNvcnJlY3Q/IExvb2tzIGxpa2UgdGhpbmdzIHRvIG1ha2UgdGhpcyB3b3Jr
IHNob3VsZCBnZXQNCj4gaW5pdGlhbGl6ZWQNCj4gaW4gaW50ZWxfdWNfaW5pdF9lYXJseSgpIHdo
aWNoIGlzIGNhbGxlZCBqdXN0IGJlZm9yZQ0KPiBpbnRlbF9ycHNfaW5pdF9lYXJseSgpDQo+IHNv
IGxvb2tzIG9rIChjYW4ndCB0ZWxsIGZvciBzdXJlIHdpdGggYWxsIHRob3NlIHVjIG1hY3JvcyA6
Lyk6DQoNCnllYXAsIEkgaGF0ZSB0aG9zZSB1YyBtYWNyb3MgYXMgd2VsbCENCg0KSW4gdGhlb3J5
IGl0IHNob3VsZCB3b3JrIHdlbGwgc2luY2UNCg0KQCBzdGF0aWMgdm9pZCBfX2ludGVsX2d0X2lu
aXRfZWFybHkoc3RydWN0IGludGVsX2d0ICpndCkNCiAgICAgIGludGVsX3VjX2luaXRfZWFybHko
Jmd0LT51Yyk7ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICANCiAgICAgIGludGVs
X3Jwc19pbml0X2Vhcmx5KCZndC0+cnBzKTsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICANCn0gICAgICAgICAgICAgICAgICAgIA0KDQpBbmQgaXQgd29ya3Mgd2VsbCB3aGVuIHNscGMg
aXMgZW5hYmxlZC4uLg0KQnV0IG91ciBDSSBzaG93ZWQgdGhpcyBpcyBhIGRpc2FzdGVyIHdoZW4g
U0xQQyBpcyBub3QgdXNlZC4NCg0KSSB3aWxsIGhhdmUgdG8gZml4IHRoYXQuDQoNCg0KPiBSZXZp
ZXdlZC1ieTogQXNodXRvc2ggRGl4aXQgPGFzaHV0b3NoLmRpeGl0QGludGVsLmNvbT4NCj4gDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoG11dGV4X2luaXQoJnJwcy0+bG9jayk7DQo+ID4gwqDCoMKgwqDC
oMKgwqDCoG11dGV4X2luaXQoJnJwcy0+cG93ZXIubXV0ZXgpOw0KPiA+IA0KPiA+IC0tDQo+ID4g
Mi4zNy4yDQo+ID4gDQoNCg==
