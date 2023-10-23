Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC797D2FBB
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 12:24:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E50E10E0A7;
	Mon, 23 Oct 2023 10:24:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C14D10E094;
 Mon, 23 Oct 2023 10:24:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698056646; x=1729592646;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=W0gtp1qk0PxJLEIBusxZdtXO+p0MXpsJbLq16WQmemE=;
 b=HJTc727GehvpE191vWmhlCvLZ4AGUgGGTD9L5zCaql0TGUSXtM5h0tv+
 I880LOPOCj0OvYj7XqUvSnZX9B8FstFRFDweFES3ytO8NPvsaKrXpCB1l
 U32nO0ct1CQpnws/gHakeKHG2N8HWjoE1wJKwGyBiv8KRm8lcJhckMk2J
 yKNgqxs2GTMpCDvFEUwuFquSFObzIpu/q/lslhJ596CEEAvudFI3yIifR
 Bp31M7fNNGYg2R4QPKjGTcYmqUejIZSqTFTFpFCzet2/WWcljQPSJSFcf
 LqVXrCLSGzIGn5w+O6RAF7nU+0SNZhT8Pf6n7PCIqOKX+ZJQEippOwchQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="389655772"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="389655772"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2023 03:24:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="848750402"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="848750402"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2023 03:24:05 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 23 Oct 2023 03:24:04 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 23 Oct 2023 03:24:04 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 23 Oct 2023 03:23:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kDnGefw6/iQ3hiF0u+Zeuj+uQjPpT4n5X7hmvXVy8ulE+XHFpzR7YdL5henAusFpCVM4ylHIzeZ1vfUbiWSIhOestHL3nkdlV3bGEDmPlnsLys19aPiBCImCHW4CSaqmJRQzTxC1PHyqFx63YN91LMHWY9A/lQC+XiPHo540ct+5jXFDSDK4ZVdAY02cs0osv1idUIvIO/8tADTobCAjcanl08YuRX92CwUk+m4/ItYm0LYrrCeeZwgG9skK7LT+Co6Cc3MNiOxMrzvhq8Ock/Tx7i3Exu4KFiKxyu9T8pci9QgZZzNVp7ZH4dK6Yxs5ut7RkCHoYrZCWXJLlrUqpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W0gtp1qk0PxJLEIBusxZdtXO+p0MXpsJbLq16WQmemE=;
 b=UhQLxvDqmaZaQK7+jgQCD1H4ZQ72ABaKShnk7wueUmURmguRo/XuKjUCwZeVbQzQ14XJBgwR0dNTfkIfyiJEadAbQ7P56Yl7M1hc8t9jGNYN5xBloIFFY4oJtJiNcenUa26zN6iYuYOYCsJCcTy+7URLL6Q0gysPi7yKSyfSnoD2p/XkLlI2l+u1WMA9gmY7xztcYYneHkc+AJlLKJADlYD6VrhnQ8ZWYj5lHOAjJ5ZXdL7xSV8LtZpX84kh2fqM76z25SbImMJt621eOJSElNzEaq8ps+6sY/7s9OaMey16n9+5GZOB3NuTJXWqFc2zhXZjM2pHZXtF3LQ622itcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by SN7PR11MB6656.namprd11.prod.outlook.com (2603:10b6:806:26e::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Mon, 23 Oct
 2023 10:23:51 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::a32b:3ba8:43d1:e0fc]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::a32b:3ba8:43d1:e0fc%5]) with mapi id 15.20.6863.043; Mon, 23 Oct 2023
 10:23:51 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-xe] [Intel-gfx] [PATCH v2] drm/i915: handle uncore
 spinlock when not available
Thread-Index: AQHaBZDbBOOCk3HlmkG4nyqBkItXJLBXKlwygAAAhAA=
Date: Mon, 23 Oct 2023 10:23:51 +0000
Message-ID: <04a2c6b641273a85b4972565bdac4394c88e3e81.camel@intel.com>
References: <20231023084322.1482161-1-luciano.coelho@intel.com>
 <87fs21d7pw.fsf@intel.com>
 <9749798a6af666cc070598169ecf9d0770842c93.camel@intel.com>
 <874jihd4g6.fsf@intel.com>
In-Reply-To: <874jihd4g6.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|SN7PR11MB6656:EE_
x-ms-office365-filtering-correlation-id: db836bc8-575f-4e69-970c-08dbd3b226c8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A8qtUqqj1K6VKZ55nQwrS10zCINq1NKN42/0ywmKQrfxkqLpK3JAo+oaDLCVkBw+/93RoYY/pwucqv4/7Mg1+LBIzJfyFecO2/TgrCsxy9xLVP7MU+CFCRCe9yXDCm6WEwuUirSy8kN+B9kMycTt96lunecJPK4P0pD+Y8mTd6yz98uhWdWlRaYly/V++wAYyjrH0fq/8MstO/f0qlkq+BNWFccZKS6Czhkj44CxyF0HDHXDNIBXD+q3ZOVER9IAbNpC7wlVNQrsmacUlv/9CxqXRMXeoS067AE42GWvoARkCBJuPDg9snRoJvcW6avycUnywLwwNOSzUJ8vbh6IMZkAQu0CDB3wJ6t4vGodaAWstJ2E030mbK4RQ4VYI2NO5skzGZ6hv8Y7zabik2MxFDRr2Ez4gGF+dMTdCw8qlF85THIjnQ7mD+IuCFf0c6DwAuZHBqdKtwcNmONDid56RIGXwsBdaXQ7uXSSuji+OHxlKNb59w/EH5yUgiU5HU3CokhJNPIdyu0H9gc/YiNQRjIFbGN6VAhPpFfnBl2A6h+BQTM1xX7WNcTBPcM6XdvxnQG9Ixifq1MjZgiMoGtCSoG3idTuOjLZt2IPt1Eq8XI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(366004)(39860400002)(346002)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(38070700009)(4326008)(8676002)(8936002)(2906002)(5660300002)(83380400001)(41300700001)(26005)(38100700002)(6506007)(6512007)(71200400001)(2616005)(66946007)(86362001)(36756003)(54906003)(4001150100001)(91956017)(110136005)(66476007)(76116006)(66556008)(66446008)(6486002)(478600001)(122000001)(64756008)(82960400001)(316002)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWsyVk1LakszMm1OWmh0eElNQ2QrV1RLUjd4TTlpR2xZeC9Ua29mOVRzdDky?=
 =?utf-8?B?K0JJOVBvZEozWFF1d2RFNHc2Z24xOHQ0dWc3VjNaY2ZWMVVrdnRLOWdPNG9T?=
 =?utf-8?B?bFl0d3dLK2xieEZZaVpnQ3ZKMTczMXZPODBNd3ZmaUJxTHJzWWszeWlUWjdU?=
 =?utf-8?B?SnErckRxd2lSNTNKM2NuTUFSQ2VkTk0zOUZLWWpTTDZHUjRxRVhCNEs5bVQw?=
 =?utf-8?B?L1VQNzQ0cmgwYmJ1U1lTaGxidWV3SXZJM3NrcENuUnBvSnFYbmlacmxKZ0tI?=
 =?utf-8?B?WGFidEtkbWxzbEtLNmtPR2swYjRVZEo3TTNHWWlMcVpMazRPQngrM1RxL284?=
 =?utf-8?B?L2tPalBjMnlBQXhlRTNScUsydUtvbHdJYU5BOGNTMklyUU1iV0pENEdTbHU3?=
 =?utf-8?B?a1JLQm9vS2dNSkFVekhFdit1WW0vQ1NCM3U3WHJQN0tXMGpQSlhxbTI0VHhG?=
 =?utf-8?B?UHViYi9EMEQxTWpjanlIMmJuRFI3WjVXVWR3VlcxNitWbTQ0Vjh6SXdIMDZy?=
 =?utf-8?B?enNyUkN6ODh3MnlxTmh3dzNHRUFNV1U2K0Y0cXJHcVRZYWhWNy9vL1JZOTBD?=
 =?utf-8?B?UHJBTEFNOFBkSSsvZ1F3eVM4NUJrbS9TRml3b2VkVTdSS1NkZVU2ampkalpX?=
 =?utf-8?B?TjgxbTJQWHI0Y3EwbVczUU5XYzYzbnAwcmFEM2xuS2ppVjlRYzVTM2ZmVS9u?=
 =?utf-8?B?ODNMeEJOZnVUK2o1WlVOUEtnK3hYRU9SbHJLQ1NLYkNoZnorZ3pmY21zTGdS?=
 =?utf-8?B?TEh1Z3p5TyttYkVVRUFNMmd4d09Wa2VJNUpQUDM1c1poSjE5MytyZitrZlk0?=
 =?utf-8?B?ak9FaXdBU2wrTXV2bUhORlUraG5BOUllcFNRUG4vTUN3NVlwRWNsVTlNZzZk?=
 =?utf-8?B?TTZZd2VMUmllcFdld0I2VHBmUFhRbkJWcm5yVForVk5RUUYwaFAxdjFCMVVI?=
 =?utf-8?B?dC9jaVhqR3hJNndZcFErUytSQVhBSm5nUkticGJVdENOUUJtSGd4NC9zOTRa?=
 =?utf-8?B?V1ZQM0cvOWV3cHBvZ3V6eDRPdU92azV0SVlzdDZDQUxiczNRU0xUanJEQWFK?=
 =?utf-8?B?Z3lGR0dGSWtOSUJsa2NHYmRldGJ6b09NOEdsUDNqRHlubi91d2lhK0pnWCtj?=
 =?utf-8?B?dXVsM1owMDd4ZHBuZjlXMGxQTEtZczJnbGZmMVYya1F2QmdJMkpVQThCVlp0?=
 =?utf-8?B?aFVjdmp2U3BiWkJlbytYcVJ3V2xrdFZ4TEdGaWVzUzlvK1EzNWRkRFU2VUhs?=
 =?utf-8?B?dmR2V0lJeUZ0RjJ2VXV6bW16VGZ6eWpxM01BN3NUM1dsSGJlclRUZWpTUFc0?=
 =?utf-8?B?b1EzYXVwZTlRV2JXRi9uS1J3Mk1XRUNFVUt3LzlyQTFMV2lmV2sxVlQwZ0N1?=
 =?utf-8?B?TVlUNmNOQ1FZSDVHaWs3V3Z3dHY1UmhncTRZRW5ieXppS2F4c1RDc0F5OEV5?=
 =?utf-8?B?MVN0WFZBTlF2YXRlbmJsRENxMGxwNXpjaHBPRUZrUHFUeDkvQlliWjRZU3ht?=
 =?utf-8?B?cVR0aERGblhQS0QwbWt1M2M5bjd6Um1ZUm1FWXBiTGsyc1A4ZTVucWJmT0N0?=
 =?utf-8?B?TUg1YVd1eGFTZFlwalVEQjg0MlY0MUlUU1gwRWltazJFdVFWdmN6ekIwRlho?=
 =?utf-8?B?bmsrTHJJeWxpWmxLR1RrdlRxRTU4aEdEMDJqY0lmUjRSVXA4c3BxKzQ1cUUr?=
 =?utf-8?B?MXgxM01JZ21ReGJkR3J0WmlQUC9lOVFrbDNrLzBBTWVIdHZIMXZMTmc4eW4x?=
 =?utf-8?B?d2hTZlY1M0Y5dGlReUc2dzBYMlR0Q2FPVGNnaWZ3ejM1R09RM3BNWjNEd1hK?=
 =?utf-8?B?TG1hajRZZll1SWhzNTNMRGx2Q2V1Wi9EUGpyc0U4THZLeFhNU1p6U0NkY0hR?=
 =?utf-8?B?eFBOdjZYYUNycXVqSjZkZWxlUm5vSjFNeXU0ek1yY1NSRmlJai8wMXpmWlVj?=
 =?utf-8?B?VGdaVTJnbTVpSzltNXNwRlE2WjYyNzVGRXhhNXR2NmNnYms3SDRXQ05PREha?=
 =?utf-8?B?QlVwV0RkMmZSUUR1M0toNlI0cVlQL3lRUUdvelBMUE9IbGkrWFNjZTExME5C?=
 =?utf-8?B?YTBHRnd4d0o3dXFBaERNS2FDM2RxVTg4MnRkOFBWNHpCSHR2d0FTWGY0dGJ3?=
 =?utf-8?B?TjR2NlV6dzVPbiswTEtJYXB3S0hvZTlsenBrTVJKTWF0MUdzUjUxWHRWK0l3?=
 =?utf-8?B?RHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BFB3965D0DBCD741AAA327D3FC20611B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: db836bc8-575f-4e69-970c-08dbd3b226c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2023 10:23:51.0946 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3PpaKLjYkKoSUv1H1ybpQETsEL5An+pNd8y95yLZ733D7C9Ee61FStuVlacOuUqL+mtkky8gopGuNTxgdnrT3mw9/o/+Ft2R4wMh8+YR/OI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6656
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v2] drm/i915: handle uncore
 spinlock when not available
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
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Vivi, 
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gTW9uLCAyMDIzLTEwLTIzIGF0IDEzOjIxICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAyMyBPY3QgMjAyMywgIkNvZWxobywgTHVjaWFubyIgPGx1Y2lhbm8uY29lbGhvQGlu
dGVsLmNvbT4gd3JvdGU6DQo+ID4gT24gTW9uLCAyMDIzLTEwLTIzIGF0IDEyOjExICswMzAwLCBK
YW5pIE5pa3VsYSB3cm90ZToNCj4gPiA+IE9uIE1vbiwgMjMgT2N0IDIwMjMsIEx1Y2EgQ29lbGhv
IDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+IHdyb3RlOg0KPiA+ID4gPiBUaGUgdW5jb3JlIGNv
ZGUgbWF5IG5vdCBhbHdheXMgYmUgYXZhaWxhYmxlIChlLmcuIHdoZW4gd2UgYnVpbGQgdGhlDQo+
ID4gPiA+IGRpc3BsYXkgY29kZSB3aXRoIFhlKSwgc28gd2UgY2FuJ3QgYWx3YXlzIHJlbHkgb24g
aGF2aW5nIHRoZSB1bmNvcmUncw0KPiA+ID4gPiBzcGlubG9jay4NCj4gPiA+ID4gDQo+ID4gPiA+
IFRvIGhhbmRsZSB0aGlzLCBzcGxpdCB0aGUgc3Bpbl9sb2NrL3VubG9ja19pcnFzYXZlL3Jlc3Rv
cmUoKSBpbnRvDQo+ID4gPiA+IHNwaW5fbG9jay91bmxvY2soKSBmb2xsb3dlZCBieSBhIGNhbGwg
dG8gbG9jYWxfaXJxX3NhdmUvcmVzdG9yZSgpIGFuZA0KPiA+ID4gPiBjcmVhdGUgd3JhcHBlciBm
dW5jdGlvbnMgZm9yIGxvY2tpbmcgYW5kIHVubG9ja2luZyB0aGUgdW5jb3JlJ3MNCj4gPiA+ID4g
c3BpbmxvY2suICBJbiB0aGVzZSBmdW5jdGlvbnMsIHdlIGhhdmUgYSBjb25kaXRpb24gY2hlY2sg
YW5kIG9ubHkNCj4gPiA+ID4gYWN0dWFsbHkgdHJ5IHRvIGxvY2svdW5sb2NrIHRoZSBzcGlubG9j
ayB3aGVuIEk5MTUgaXMgZGVmaW5lZCwgYW5kDQo+ID4gPiA+IHRodXMgdW5jb3JlIGlzIGF2YWls
YWJsZS4NCj4gPiA+ID4gDQo+ID4gPiA+IFRoaXMga2VlcHMgdGhlIGlmZGVmcyBjb250YWluZWQg
aW4gdGhlc2UgbmV3IGZ1bmN0aW9ucyBhbmQgYWxsIHN1Y2gNCj4gPiA+ID4gbG9naWMgaW5zaWRl
IHRoZSBkaXNwbGF5IGNvZGUuDQo+ID4gPiA+IA0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNh
IENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4g
DQo+ID4gPiA+IE5vdGU6IHRoaXMgcGF0Y2ggd2FzIGFjY2lkZW50YWxseSBzZW50IG9ubHkgdG8g
aW50ZWwteGVbMV0sIGJ1dCBzaG91bGQNCj4gPiA+ID4gaGF2ZSBiZWVuIHNlbnQgdG8gaW50ZWwt
Z2Z4LiAgVGh1cywgdGhpcyBpcyB2Mi4NCj4gPiA+ID4gDQo+ID4gPiA+IEluIHYyOg0KPiA+ID4g
PiANCj4gPiA+ID4gICAgKiBSZW5hbWVkIHVuY29yZV9zcGluXyooKSB0byBpbnRlbF9zcGluXyoo
KQ0KPiA+ID4gPiAgICAqIENvcnJlY3RlZCB0aGUgb3JkZXI6IHNhdmUsIGxvY2ssIHVubG9jaywg
cmVzdG9yZQ0KPiA+ID4gPiANCj4gPiA+ID4gWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNr
dG9wLm9yZy9wYXRjaC81NjMyODgvDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oIHwgMjIgKysrKysrKysrKysr
KysrKysrKy0NCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJs
YW5rLmMgIHwgMTkgKysrKysrKysrKy0tLS0tLS0NCj4gPiA+ID4gIDIgZmlsZXMgY2hhbmdlZCwg
MzMgaW5zZXJ0aW9ucygrKSwgOCBkZWxldGlvbnMoLSkNCj4gPiA+ID4gDQo+ID4gPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaCBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+ID4gPiA+IGluZGV4
IDBlNWRmZmU4ZjAxOC4uMDk5NDc2OTA2ZjRjIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+ID4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+ID4gPiBAQCAtMjks
NiArMjksNyBAQA0KPiA+ID4gPiAgDQo+ID4gPiA+ICAjaW5jbHVkZSAiaTkxNV9yZWdfZGVmcy5o
Ig0KPiA+ID4gPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfbGltaXRzLmgiDQo+ID4gPiA+ICsj
aW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gPiA+IA0KPiA+ID4gSW4gZ2VuZXJhbCwgcGxlYXNlIGF2
b2lkIGluY2x1ZGluZyBoZWFkZXJzIGZyb20gaGVhZGVycy4gSW4gcGFydGljdWxhciwNCj4gPiA+
IHBsZWFzZSBkb24ndCBpbmNsdWRlIGk5MTVfZHJ2LmggZnJvbSBoZWFkZXJzLiBUaGUgaGVhZGVy
DQo+ID4gPiBpbnRlcmRlcGVuZGVuY2llcyBhcmUgcHJldHR5IGJhZCBhbHJlYWR5LCBhbmQgd2Ug
bmVlZCB0byBjbGVhbiBpdCB1cC4NCj4gPiANCj4gPiBSaWdodCwgSSB0aG91Z2h0IHR3aWNlIGFi
b3V0IHRoaXMsIGJ1dCB0aGlzIHNlZW1zIGZhciBmcm9tIGNsZWFuLCBhcw0KPiA+IHlvdSBzYXks
IHNvIEkgdGhvdWdodCBpdCB3b3VsZCBiZSBmaW5lLg0KPiANCj4gQWRkaW5nIHRoYXQgc2luZ2xl
IGluY2x1ZGUgYnVtcHMgdGhlIHRvdGFsIHJlY3Vyc2l2ZSBpbmNsdWRlcyBvZiB0aGlzDQo+IGZp
bGUgZnJvbSAyIHRvIDk3Li4uIGk5MTVfZHJ2LmggaXMgcHJldHR5IGJhZC4NCg0KQXJnaC4gIEkn
bSBzZW5kaW5nIGEgdjMgYXNhcCEgOikNCg0KLS0NCkx1Y2EuDQo=
