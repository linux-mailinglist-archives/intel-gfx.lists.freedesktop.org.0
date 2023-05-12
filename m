Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B54B70044D
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 11:54:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 11B9C10E65F;
	Fri, 12 May 2023 09:54:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D9F610E65F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 09:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683885268; x=1715421268;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=TXEjDMGBQY1OojRgPvc153VLaT9TOR/1yFcBbOmTqbM=;
 b=KTUefrLRELM470HTxmo9lCI9pr1OkUdHWOmAgl2esDf8VyoTXDOeUaaj
 XgPspzPVjK+2Dn0NvmqpPa6xLDkD5IQouCgB4WA1F4Iqc40sxKBpzma33
 J7x1fBwoJiEPHIPh8RWtN2Dn/eu4sUXDo7AoZreehJ7tLaWS0gCoxf/Fo
 ykFQr15m1MY4lhfEYwyASatanztH/ePSpoaleWUjyp6W1jw4YuLCxgHMw
 eot1HLE1l7ivI0aJ+na61tqk903cXWEh3kGOMU5QoWjIRDrPzO206o2CC
 MOscvRLUrDk+NZzizRHdcz1Fg0Dc/WbS+M9hyDXhnWaKxtD4ArwxKjwwS w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="348246950"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="348246950"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 02:54:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="703139442"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="703139442"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 12 May 2023 02:54:27 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 02:54:26 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 02:54:26 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 02:54:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 02:54:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q4OFpTAlubhgX1mda22MZoh0wmbmKlCh30fAKDr8hjH8vOM/aktPJ257nlRx6U9IBrHcQWZEY8SIc0julSPHJBIOr9T8nkPuo/CLohXFNC//O78+XYr09Q0HNv2T4SWErbWZ1HX5yvRDqmD4dlVR7TH06MY1MfEgJphswrounuyAO4/Cxh1PgYW318YB2jncRTOfWQ9uqrtw+lXIJ4nw4q9omFt8Hgl4oLS9dVhecZIaDCtcCCibgdtae6yAU8b8xBYKUrrc0Pmq9l8L8N+4Cn42UK4EU+5/Mb7szy6ujBSoxn8Vrhr+gXmeVe3Gnmwu1zu3ASURQRClN8Hr98HVaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TXEjDMGBQY1OojRgPvc153VLaT9TOR/1yFcBbOmTqbM=;
 b=oIv6ynLoERHG+NlogIDehD3emXJelFYPWhHb2SImMEy6IaNa7kxp1Q4/pPFt5is/MWAoveF2xrtTQFofc/XgZMym10SUkH7vhiiLOwJyMILNW9SObIEtwjtn33tN+a3XQqNTCWY8HctjRs6DU1mdqOTqHbrfnGGkWnQWdJMxt3XA+qaYIHqvMA40xUuBndV76sd8Nezn3YxbhpEYGb+My104Sls5IruOZwp8R3+pW3r/f0ZmrPJnnQA0FyrlZPkXJd8cv9qRJli5YLnwW6j0bvOZgEK6Tq1hKOxM1xMR73vnoAS90menXd1Yxc8H7PneFw5Kjy5u8ZuGTexEggUktw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by CY8PR11MB6891.namprd11.prod.outlook.com (2603:10b6:930:5c::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.22; Fri, 12 May
 2023 09:54:24 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9%6]) with mapi id 15.20.6387.022; Fri, 12 May 2023
 09:54:23 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/gt: create workqueue dedicated
 to wake references
Thread-Index: AQHZhLDDHJAR52bEVUmkKkecp6JPza9WWcaAgAAGI4CAAAYogA==
Date: Fri, 12 May 2023 09:54:23 +0000
Message-ID: <a2cf2fdce2be46fbf90088a757f1a4da1723e9bd.camel@intel.com>
References: <20230511082013.1313484-1-luciano.coelho@intel.com>
 <20230511082013.1313484-3-luciano.coelho@intel.com>
 <43e3f1e2-5910-6a3f-2282-44e4718bcd04@linux.intel.com>
 <294471856c7245b3e3aef29508bddb5f4ea33bfb.camel@intel.com>
 <5082e0dd-8af5-89f2-9ae5-7d5cc54e79f4@linux.intel.com>
In-Reply-To: <5082e0dd-8af5-89f2-9ae5-7d5cc54e79f4@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|CY8PR11MB6891:EE_
x-ms-office365-filtering-correlation-id: 59a59d0c-7f07-4f8d-39a7-08db52cedd9f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p7hSj+N/1g1BQ/E78wu3Lq7F4E8oVAQg3mn2p3umPJuyrvJEgOM7YAn/NewyDAgHiZ28qh0hQAtjS0MrylosaKXF/SyHyHloLWieRjJmW3alpSu7czSy2lRqCsHaZ9nWjaPxeg94f5QNWqf57Cwf8s4p3T38pZ/huLZd+o1ocQhjI1mSnp5OCfYMKPbXfLYdQNrrWOcBXxl4b960CaOWZ2K7cgx5FKWq2RWcsAC4DxbqFUV14SSTm2jMnk6Blwy1hF12AfkeX7h+da1fVzPdOJvlSiWWoMN62nH3bEhtAa6DK8bCHXI3i8N06VIoc6+CU/hEkQw08RE/wPM+EhfhpFV1xG9lfNzu8sVgQ+31kIauEgESBZc+baCj39Qx3ce35EVoIRtK420VjSJryzTrN7g2qbA0kS4iHtksg5SKwciWVmTeQUyJiHIjL6tQF622Feo9shAn8KzFMYC42jDNFoV0/dQYWETpyhNWYWiD37+2HFca6iPAyimi4pCMm43B0PYGYyhwvJIn5agay4NOvM1pPSrj9E+JFfjAD3pOL1sZ2b+JiB3KxC1JSKEjiTcPuwSfO4C9Cc1ChffnXdYX3UPEKQZkck3NQkdYeOpFYYzKXgt5BU8LhlB0KtfSTHp6
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(39860400002)(396003)(346002)(366004)(136003)(451199021)(83380400001)(66574015)(122000001)(2616005)(41300700001)(8936002)(8676002)(86362001)(5660300002)(478600001)(66946007)(110136005)(76116006)(91956017)(316002)(66556008)(66476007)(66446008)(6486002)(64756008)(2906002)(71200400001)(38070700005)(36756003)(82960400001)(38100700002)(6512007)(53546011)(6506007)(26005)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RzhqbnhhK2wyQlE5SzlRcmxncjl6M1NuN1BnNDY1eWdGbnBLQUN3d3VpajRG?=
 =?utf-8?B?WEJHL2dVakRZZXR0emM1U3dtRWJRNkhTQm1uVTRJWkx5OGZ3U1dZNE9QWStM?=
 =?utf-8?B?RDhNc0dXc20raHh6dGxpcEd1L2dwMjlZc1dzZkhqcTlSeC8yZFVRempCdnJv?=
 =?utf-8?B?NXNNYmlicjN2YURmMmNqV09Wclh6bnVycE5RSm0ySHhqb3ROOWJGZkFQaHBy?=
 =?utf-8?B?UFRCaXp2cVRDdUFCSHBFNFlUTTBmS3dNdGV1UDFYSm84WXI1aVp5aTZ1d25S?=
 =?utf-8?B?ZGdMank1SHZMZXhUakRqaUg0ZWxhUWx4WjUvRFRqdmJkdVE4cjNoVlpDYlhX?=
 =?utf-8?B?VnhLOFVmZUlPa0ZDWDdvYk5iM1pTUUIrenVwdm9UMVRKV0E4QVFqNXVRdlIx?=
 =?utf-8?B?OHdRcTFTeS9RdWdiMFBJd0J0NjJzRG4rQ2dUL2RYM2hLbXlkY3o4eGJvUkh6?=
 =?utf-8?B?K3FMR2RRNTArci9hbkpjbUJiVEtBZ0YvYXBXZU1KQ1U0NmR2TE5KaEFKVlE0?=
 =?utf-8?B?cG94ZnJFSWo4b1BhNEVyRUVJQ3pqZUNMYnMvaEVuS2oyUnExblEzRGtCQzdT?=
 =?utf-8?B?QWRXTm9Zc2hGN3M5TC90dnQvd1RFdXZRU2xROURGd3lDK2U3ajBoWGtiUVF6?=
 =?utf-8?B?RHdSQzEwSjhlcy9DYmFzdUVKaUo1TUt5amxycWxxUGc5ME1XbzJBb1VhdnRY?=
 =?utf-8?B?V2lvODIwbWNUZmljSHkvcEFSUVBVdnkxZ1hBbGFYZjlxalNOc2ZuSVV5VkF6?=
 =?utf-8?B?b1NDeElkc0dORXl1MjFmSUhpMlRySDZHRFVTUlFHb21teFpiNFZoTEkyT2U3?=
 =?utf-8?B?MFowekJsS0dFVU1MMmpWcW5pVEx6ZUE4cERLZGltMzViNmhyaUc2Y1RTVDFQ?=
 =?utf-8?B?MEx0T0VvNnRGVHdNc0Fra29obTBOTU9pNHI4MmJvV2FWaTVvZmx5blh6cFdl?=
 =?utf-8?B?T0FZc0tIWnd0RGhuVnV0aXZuSHh3SVZnYzBlQkh2MEpMVkZ1cHBxTmdndytM?=
 =?utf-8?B?SDJJU1paaStNWUhvb0kxOHhwZDBkNmlvMWNmTmpKbUcvTk1QbTVZODIzSXE4?=
 =?utf-8?B?S1VuV2Fha1ZlQllhdWViWHd1Tm1hRlFwNFNzQ1JrUTlkWklBV0xYQVRDMC96?=
 =?utf-8?B?ZUliT1BJL2kvWll3T2F2ekt4WUYwdGszTWdDbk4wR3NrN2JtT0lUWFUzMGV2?=
 =?utf-8?B?Y3UvOHAzdDdwa1NVZlNFdkh3aC90eGl0WkQ0UjFjMjREUFFQcmEzbTA0eGRi?=
 =?utf-8?B?OXpZRWtiTXcvVnFoOHR6QkxmN2p2V1RUTzVibWYvSEZNMVYwcWlGVHdJN3hO?=
 =?utf-8?B?QUVXMEpPZ2p0aGdNd3RlTVdWaEs4UHZiS0pQbXFiR2VXNVBkRDZmTmpFS2ZQ?=
 =?utf-8?B?NmVYTUE3VUI5b2IramxMek50RVFUSzVCY2lwRkZwTmMrQVpSdlpNZFBSOXUx?=
 =?utf-8?B?bU9EaENJSThIM3hUQnB3VE9JR2ZGTkU0OWE0OEUvYWE0TlNuMlpWN25Wc3I1?=
 =?utf-8?B?L0NIMXhvcmxDZWI1U2ZUZ21JNC92Kzc1UkNyczJOVkRaUFR0SlR5dFhVMC9D?=
 =?utf-8?B?c0tPek5SUEorbHkzNmV6bi9vZ2hjZE82YXVMQUErMDN4WDJqQi9EenlRbDlO?=
 =?utf-8?B?UE9mSzY2OEgzamF2MVB6ZDFLZFhpVmp2M0ROdzJCR3lGdlNuY0NrSjlJTU9h?=
 =?utf-8?B?TEVVcVlSaWxQazhaVHZkWEtNNUNGZFpvWXJxRVVxYUs0WTFRNUJZQU9JNmIw?=
 =?utf-8?B?Z2VPTGJpSWxKR3F1UDVzZkNpVVFkdWluaFAwZDRXZ1VIaGo1Mm5kbzhMOWZy?=
 =?utf-8?B?RXB3bzVyQldHajZaS1puRmFINjdtRkdwbklXUTE3RjZRMkdicWh2cmdLOVph?=
 =?utf-8?B?T0RpaTRXcGx3cllvNm1FYWVzd1dDb09sblZhN2FnNHE2RlUxYlMzZVZJYjBP?=
 =?utf-8?B?Umpoek5LS0ozQUJqcEY2djNaS3FnM21BTkloMExlRkJFbCtDOVZXeXFDQzN2?=
 =?utf-8?B?K3M2djNWK0wvdmFRTVc5SGo5clJlTWs5cFlKblY1SEY2L2lnVmNKZkVZeDI5?=
 =?utf-8?B?Tk00WnpUTG10bWdLYk1VV2llNWRmNnpXd1RYdVdIOGY0TzlWUGw2azZ2eW5m?=
 =?utf-8?B?NUc5N09HYy92b2F3WTNDQ0E1K1Y2QjlBWjVMWG41TUFSOUtabVhmcDdWK1V6?=
 =?utf-8?B?Umc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0BB2A128DBE18343A58CB7CB7317A196@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 59a59d0c-7f07-4f8d-39a7-08db52cedd9f
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2023 09:54:23.7604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IgjH1jrUvcTbBfMAlpLoKeoyWflD65UyVdnACq4gqMw8VnBYz4j7/tsGLlF5nEQfN++M7jI4sPw99PFBOGEC6aqfjCgWvKRkP11HAD7MlYA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6891
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: create workqueue dedicated
 to wake references
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

T24gRnJpLCAyMDIzLTA1LTEyIGF0IDEwOjMyICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMTIvMDUvMjAyMyAxMDoxMCwgQ29lbGhvLCBMdWNpYW5vIHdyb3RlOg0KPiA+IE9uIEZy
aSwgMjAyMy0wNS0xMiBhdCAxMDowNCArMDEwMCwgVHZydGtvIFVyc3VsaW4gd3JvdGU6DQo+ID4g
PiBPbiAxMS8wNS8yMDIzIDA5OjIwLCBMdWNhIENvZWxobyB3cm90ZToNCj4gPiA+ID4gQWRkIGEg
d29yayBxdWV1ZSBpbiB0aGUgaW50ZWxfd2FrZXJlZiBzdHJ1Y3R1cmUgdG8gYmUgdXNlZCBleGNs
dXNpdmVseQ0KPiA+ID4gPiBieSB0aGUgd2FrZSByZWZlcmVuY2UgbWVjaGFuaXNtLiAgVGhpcyBp
cyBuZWVkZWQgaW4gb3JkZXIgdG8gYXZvaWQNCj4gPiA+ID4gdXNpbmcgdGhlIHN5c3RlbSB3b3Jr
cXVldWUgYW5kIHJlbHlpbmcgb24gZmx1c2hfc2NoZWR1bGVkX3dvcmsoKS4NCj4gPiA+ID4gDQo+
ID4gPiA+IENjOiBUZXRzdW8gSGFuZGEgPHBlbmd1aW4ta2VybmVsQEktbG92ZS5TQUtVUkEubmUu
anA+DQo+ID4gPiA+IENjOiBUdnJ0a28gVXJzdWxpbiA8dHZydGtvLnVyc3VsaW5AaW50ZWwuY29t
Pg0KPiA+ID4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiA+
ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5j
b20+DQo+ID4gPiA+IC0tLQ0KPiA+ID4gPiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9lbmdpbmVfY3MuYyB8ICA3ICsrKysrKy0NCj4gPiA+ID4gICAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgfCAxNSArKysrKysrKysrKystLQ0KPiA+ID4gPiAgICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCB8ICAzICsrLQ0KPiA+ID4g
PiAgICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2VuZ2luZS5jICAgICB8ICA4ICsrKysr
KystDQo+ID4gPiA+ICAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyAgICAg
IHwgMjEgKysrKysrKysrKysrKystLS0tLQ0KPiA+ID4gPiAgICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9pbnRlbF93YWtlcmVmLmggICAgICB8IDI1ICsrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ID4g
PiA+ICAgIDYgZmlsZXMgY2hhbmdlZCwgNjAgaW5zZXJ0aW9ucygrKSwgMTkgZGVsZXRpb25zKC0p
DQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3Qv
aW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVf
Y3MuYw0KPiA+ID4gPiBpbmRleCAwYWZmNWJiMTNjNTMuLjY1MDViZmE3MGNkMCAxMDA2NDQNCj4g
PiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMNCj4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMNCj4g
PiA+ID4gQEAgLTEyOTAsNyArMTI5MCwxMSBAQCBzdGF0aWMgaW50IGVuZ2luZV9zZXR1cF9jb21t
b24oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQ0KPiA+ID4gPiAgICAJCWdvdG8gZXJy
X2NtZF9wYXJzZXI7DQo+ID4gPiA+ICAgIA0KPiA+ID4gPiAgICAJaW50ZWxfZW5naW5lX2luaXRf
ZXhlY2xpc3RzKGVuZ2luZSk7DQo+ID4gPiA+IC0JaW50ZWxfZW5naW5lX2luaXRfX3BtKGVuZ2lu
ZSk7DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwllcnIgPSBpbnRlbF9lbmdpbmVfaW5pdF9fcG0oZW5n
aW5lKTsNCj4gPiA+ID4gKwlpZiAoZXJyKQ0KPiA+ID4gPiArCQlnb3RvIGVycl9jbWRfcGFyc2Vy
Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICAgIAlpbnRlbF9lbmdpbmVfaW5pdF9yZXRpcmUoZW5naW5l
KTsNCj4gPiA+ID4gICAgDQo+ID4gPiA+ICAgIAkvKiBVc2UgdGhlIHdob2xlIGRldmljZSBieSBk
ZWZhdWx0ICovDQo+ID4gPiA+IEBAIC0xNTI1LDYgKzE1MjksNyBAQCB2b2lkIGludGVsX2VuZ2lu
ZV9jbGVhbnVwX2NvbW1vbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpDQo+ID4gPiA+
ICAgIHsNCj4gPiA+ID4gICAgCUdFTV9CVUdfT04oIWxpc3RfZW1wdHkoJmVuZ2luZS0+c2NoZWRf
ZW5naW5lLT5yZXF1ZXN0cykpOw0KPiA+ID4gPiAgICANCj4gPiA+ID4gKwlpbnRlbF9lbmdpbmVf
ZGVzdHJveV9fcG0oZW5naW5lKTsNCj4gPiA+ID4gICAgCWk5MTVfc2NoZWRfZW5naW5lX3B1dChl
bmdpbmUtPnNjaGVkX2VuZ2luZSk7DQo+ID4gPiA+ICAgIAlpbnRlbF9icmVhZGNydW1ic19wdXQo
ZW5naW5lLT5icmVhZGNydW1icyk7DQo+ID4gPiA+ICAgIA0KPiA+ID4gPiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYw0KPiA+ID4gPiBpbmRleCBlZTUzMWE1YzE0MmMu
Ljg1OWI2MmNmNjYwZiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3BtLmMNCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX3BtLmMNCj4gPiA+ID4gQEAgLTI5NCwxNCArMjk0LDI1IEBAIHN0YXRp
YyBjb25zdCBzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9vcHMgd2Zfb3BzID0gew0KPiA+ID4gPiAgICAJ
LnB1dCA9IF9fZW5naW5lX3BhcmssDQo+ID4gPiA+ICAgIH07DQo+ID4gPiA+ICAgIA0KPiA+ID4g
PiAtdm9pZCBpbnRlbF9lbmdpbmVfaW5pdF9fcG0oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5n
aW5lKQ0KPiA+ID4gPiAraW50IGludGVsX2VuZ2luZV9pbml0X19wbShzdHJ1Y3QgaW50ZWxfZW5n
aW5lX2NzICplbmdpbmUpDQo+ID4gPiA+ICAgIHsNCj4gPiA+ID4gICAgCXN0cnVjdCBpbnRlbF9y
dW50aW1lX3BtICpycG0gPSBlbmdpbmUtPnVuY29yZS0+cnBtOw0KPiA+ID4gPiArCWludCBlcnI7
DQo+ID4gPiA+ICsNCj4gPiA+ID4gKwllcnIgPSBpbnRlbF93YWtlcmVmX2luaXQoJmVuZ2luZS0+
d2FrZXJlZiwgcnBtLCAmd2Zfb3BzKTsNCj4gPiA+ID4gKwlpZiAoZXJyKQ0KPiA+ID4gPiArCQly
ZXR1cm4gZXJyOw0KPiA+ID4gPiAgICANCj4gPiA+ID4gLQlpbnRlbF93YWtlcmVmX2luaXQoJmVu
Z2luZS0+d2FrZXJlZiwgcnBtLCAmd2Zfb3BzKTsNCj4gPiA+ID4gICAgCWludGVsX2VuZ2luZV9p
bml0X2hlYXJ0YmVhdChlbmdpbmUpOw0KPiA+ID4gPiAgICANCj4gPiA+ID4gICAgCWludGVsX2dz
Y19pZGxlX21zZ19lbmFibGUoZW5naW5lKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCXJldHVybiAw
Ow0KPiA+ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+ICt2b2lkIGludGVsX2VuZ2luZV9kZXN0
cm95X19wbShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpDQo+ID4gPiA+ICt7DQo+ID4g
PiA+ICsJaW50ZWxfd2FrZXJlZl9kZXN0cm95KCZlbmdpbmUtPndha2VyZWYpOw0KPiA+ID4gPiAg
ICB9DQo+ID4gPiA+ICAgIA0KPiA+ID4gPiAgICAvKioNCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmgNCj4gPiA+ID4gaW5kZXggZDY4Njc1OTI1Yjc5Li5l
ODU2OGY3ZDEwYzYgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5oDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5oDQo+ID4gPiA+IEBAIC0xMDQsNyArMTA0LDggQEAgaW50ZWxfZW5n
aW5lX2NyZWF0ZV9rZXJuZWxfcmVxdWVzdChzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUp
DQo+ID4gPiA+ICAgIAlyZXR1cm4gcnE7DQo+ID4gPiA+ICAgIH0NCj4gPiA+ID4gICAgDQo+ID4g
PiA+IC12b2lkIGludGVsX2VuZ2luZV9pbml0X19wbShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpOw0KPiA+ID4gPiAraW50IGludGVsX2VuZ2luZV9pbml0X19wbShzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpOw0KPiA+ID4gPiArdm9pZCBpbnRlbF9lbmdpbmVfZGVzdHJveV9f
cG0oc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKTsNCj4gPiA+ID4gICAgDQo+ID4gPiA+
ICAgIHZvaWQgaW50ZWxfZW5naW5lX3Jlc2V0X3Bpbm5lZF9jb250ZXh0cyhzdHJ1Y3QgaW50ZWxf
ZW5naW5lX2NzICplbmdpbmUpOw0KPiA+ID4gPiAgICANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9tb2NrX2VuZ2luZS5jDQo+ID4gPiA+IGluZGV4IGMwNjM3YmY3OTlhMy4uMGEzYzcwMmMy
MWUyIDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9tb2NrX2Vu
Z2luZS5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5l
LmMNCj4gPiA+ID4gQEAgLTMzNiw2ICszMzYsNyBAQCBzdGF0aWMgdm9pZCBtb2NrX2VuZ2luZV9y
ZWxlYXNlKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkNCj4gPiA+ID4gICAgCWludGVs
X2NvbnRleHRfcHV0KGVuZ2luZS0+a2VybmVsX2NvbnRleHQpOw0KPiA+ID4gPiAgICANCj4gPiA+
ID4gICAgCWludGVsX2VuZ2luZV9maW5pX3JldGlyZShlbmdpbmUpOw0KPiA+ID4gPiArCWludGVs
X2VuZ2luZV9kZXN0cm95X19wbShlbmdpbmUpOw0KPiA+ID4gPiAgICB9DQo+ID4gPiA+ICAgIA0K
PiA+ID4gPiAgICBzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICptb2NrX2VuZ2luZShzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiA+ID4gQEAgLTM5Myw2ICszOTQsNyBAQCBzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICptb2NrX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkx
NSwNCj4gPiA+ID4gICAgaW50IG1vY2tfZW5naW5lX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQ0KPiA+ID4gPiAgICB7DQo+ID4gPiA+ICAgIAlzdHJ1Y3QgaW50ZWxfY29udGV4
dCAqY2U7DQo+ID4gPiA+ICsJaW50IGVycjsNCj4gPiA+ID4gICAgDQo+ID4gPiA+ICAgIAlJTklU
X0xJU1RfSEVBRCgmZW5naW5lLT5waW5uZWRfY29udGV4dHNfbGlzdCk7DQo+ID4gPiA+ICAgIA0K
PiA+ID4gPiBAQCAtNDAyLDcgKzQwNCwxMSBAQCBpbnQgbW9ja19lbmdpbmVfaW5pdChzdHJ1Y3Qg
aW50ZWxfZW5naW5lX2NzICplbmdpbmUpDQo+ID4gPiA+ICAgIAllbmdpbmUtPnNjaGVkX2VuZ2lu
ZS0+cHJpdmF0ZV9kYXRhID0gZW5naW5lOw0KPiA+ID4gPiAgICANCj4gPiA+ID4gICAgCWludGVs
X2VuZ2luZV9pbml0X2V4ZWNsaXN0cyhlbmdpbmUpOw0KPiA+ID4gPiAtCWludGVsX2VuZ2luZV9p
bml0X19wbShlbmdpbmUpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJZXJyID0gaW50ZWxfZW5naW5l
X2luaXRfX3BtKGVuZ2luZSk7DQo+ID4gPiA+ICsJaWYgKGVycikNCj4gPiA+ID4gKwkJcmV0dXJu
IGVycjsNCj4gPiA+ID4gKw0KPiA+ID4gPiAgICAJaW50ZWxfZW5naW5lX2luaXRfcmV0aXJlKGVu
Z2luZSk7DQo+ID4gPiA+ICAgIA0KPiA+ID4gPiAgICAJZW5naW5lLT5icmVhZGNydW1icyA9IGlu
dGVsX2JyZWFkY3J1bWJzX2NyZWF0ZShOVUxMKTsNCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2lu
dGVsX3dha2VyZWYuYw0KPiA+ID4gPiBpbmRleCBkZmQ4N2QwODIyMTguLjZiYWU2MDllMTMxMiAx
MDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5j
DQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYw0KPiA+
ID4gPiBAQCAtNzQsNyArNzQsNyBAQCB2b2lkIF9faW50ZWxfd2FrZXJlZl9wdXRfbGFzdChzdHJ1
Y3QgaW50ZWxfd2FrZXJlZiAqd2YsIHVuc2lnbmVkIGxvbmcgZmxhZ3MpDQo+ID4gPiA+ICAgIA0K
PiA+ID4gPiAgICAJLyogQXNzdW1lIHdlIGFyZSBub3QgaW4gcHJvY2VzcyBjb250ZXh0IGFuZCBz
byBjYW5ub3Qgc2xlZXAuICovDQo+ID4gPiA+ICAgIAlpZiAoZmxhZ3MgJiBJTlRFTF9XQUtFUkVG
X1BVVF9BU1lOQyB8fCAhbXV0ZXhfdHJ5bG9jaygmd2YtPm11dGV4KSkgew0KPiA+ID4gPiAtCQlt
b2RfZGVsYXllZF93b3JrKHN5c3RlbV93cSwgJndmLT53b3JrLA0KPiA+ID4gPiArCQltb2RfZGVs
YXllZF93b3JrKHdmLT53cSwgJndmLT53b3JrLA0KPiA+ID4gPiAgICAJCQkJIEZJRUxEX0dFVChJ
TlRFTF9XQUtFUkVGX1BVVF9ERUxBWSwgZmxhZ3MpKTsNCj4gPiA+ID4gICAgCQlyZXR1cm47DQo+
ID4gPiA+ICAgIAl9DQo+ID4gPiA+IEBAIC05MywxMCArOTMsMTAgQEAgc3RhdGljIHZvaWQgX19p
bnRlbF93YWtlcmVmX3B1dF93b3JrKHN0cnVjdCB3b3JrX3N0cnVjdCAqd3JrKQ0KPiA+ID4gPiAg
ICAJX19fX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qod2YpOw0KPiA+ID4gPiAgICB9DQo+ID4gPiA+
ICAgIA0KPiA+ID4gPiAtdm9pZCBfX2ludGVsX3dha2VyZWZfaW5pdChzdHJ1Y3QgaW50ZWxfd2Fr
ZXJlZiAqd2YsDQo+ID4gPiA+IC0JCQkgIHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0sDQo+
ID4gPiA+IC0JCQkgIGNvbnN0IHN0cnVjdCBpbnRlbF93YWtlcmVmX29wcyAqb3BzLA0KPiA+ID4g
PiAtCQkJICBzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9sb2NrY2xhc3MgKmtleSkNCj4gPiA+ID4gK2lu
dCBfX2ludGVsX3dha2VyZWZfaW5pdChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YsDQo+ID4gPiA+
ICsJCQkgc3RydWN0IGludGVsX3J1bnRpbWVfcG0gKnJwbSwNCj4gPiA+ID4gKwkJCSBjb25zdCBz
dHJ1Y3QgaW50ZWxfd2FrZXJlZl9vcHMgKm9wcywNCj4gPiA+ID4gKwkJCSBzdHJ1Y3QgaW50ZWxf
d2FrZXJlZl9sb2NrY2xhc3MgKmtleSkNCj4gPiA+ID4gICAgew0KPiA+ID4gPiAgICAJd2YtPnJw
bSA9IHJwbTsNCj4gPiA+ID4gICAgCXdmLT5vcHMgPSBvcHM7DQo+ID4gPiA+IEBAIC0xMDUsOSAr
MTA1LDIwIEBAIHZvaWQgX19pbnRlbF93YWtlcmVmX2luaXQoc3RydWN0IGludGVsX3dha2VyZWYg
KndmLA0KPiA+ID4gPiAgICAJYXRvbWljX3NldCgmd2YtPmNvdW50LCAwKTsNCj4gPiA+ID4gICAg
CXdmLT53YWtlcmVmID0gMDsNCj4gPiA+ID4gICAgDQo+ID4gPiA+ICsJd2YtPndxID0gYWxsb2Nf
d29ya3F1ZXVlKCJpMTkxNS13YWtlcmVmIiwgMCwgMCk7DQo+ID4gPiANCj4gPiA+IFR5cG8gaGVy
ZSAtDQo+ID4gDQo+ID4gT2gsIGdvb2QgY2F0Y2ghIFRoaXMgaXMgb25lIG9mIG15ICJmYXZvcml0
ZSIgdHlwb3MsIGZvciBzb21lIHJlYXNvbi4NCj4gDQo+IFllcywgSSBoYWQgdGhlIHNhbWUgb25l
LiA6KSBQYXRjaCAzLzMgdG9vLg0KPiANCj4gPiA+ICAgSSB3YW50ZWQgdG8gYXNrIGhvd2V2ZXIg
LSB3aHkgZG9lcyB0aGlzIHBhcnRpY3VsYXIgd3ENCj4gPiA+ICJkZXNlcnZlcyIgdG8gYmUgZGVk
aWNhdGVkIGFuZCBjYW4ndCBqdXN0IHVzZSBvbmUgb2YgdGhlDQo+ID4gPiBkcm1faTkxNV9wcml2
YXRlIG9uZXM/DQo+ID4gDQo+ID4gSXQncyBiZWNhdXNlIHRoZXJlJ3Mgbm8gZWFzeSB3YXkgdG8g
Z2V0IGFjY2VzcyB0byB0aGUgZHJtX2k5MTVfcHJpdmF0ZQ0KPiA+IHN0cnVjdHVyZSBmcm9tIGhl
cmUuICBBbmQgSSBkb24ndCB0aGluayB0aGlzIHdvcmsgbmVlZHMgdG8gYmUgaW4gc3luYw0KPiA+
IHdpdGggdGhlIHJlc3Qgb2YgdGhlIHdvcmtzIGluIGk5MTUuDQo+IA0KPiBZZWFoIEkgZG9uJ3Qg
dGhpbmsgaXQgbmVlZHMgdG8gYmUgc3luY2hyb25pc2VkIGVpdGhlci4gV2FzIGp1c3QgdGhpbmtp
bmcgDQo+IGlmIHdlIHJlYWxseSBuZWVkIHRvIGJlIGNyZWF0aW5nIGEgYnVuY2ggb2Ygc2VwYXJh
dGUgd29ya3F1ZXVlcyAob25lIHBlciANCj4gZW5naW5lKSBmb3Igbm90IG11Y2ggdXNlLCBvciBp
bnN0ZWFkIGNvdWxkIGp1c3QgYWRkIGEgYmFja3BvaW50ZXIgdG8gDQo+IGVpdGhlciBpbnRlbF93
YWtlcmVmIG9yIGludGVsX3J1bnRpbWVfcG0uIExhdHRlciBhbHJlYWR5IGhhcyBycG0tPmtkZXYg
DQo+IHNvIGNvdWxkIHBsYXVzYWJseSBiZSByZXBsYWNlZCB3aXRoIHJwbS0+aTkxNS4NCj4gDQo+
IEFjdHVhbGx5LCBsb29raW5nIGF0IGludGVsX3J1bnRpbWVfcG1faW5pdF9lYXJseSwgeW91IGNv
dWxkIGdldCB0byBpOTE1IA0KPiB2aWEgd2YtPnJwbSBhbmQgY29udGFpbmVyX29mLg0KDQpZZWFo
LCBJIGNvbnNpZGVyZWQgdGhhdCwgYnV0IHVzaW5nIGNvbnRhaW5lcl9vZigpIGNhbiBiZSBwcm9i
bGVtYXRpYw0Kd2hlbiB3ZSdyZSBub3Qgc3VyZSB3aGVyZSBleGFjdGx5IHRoZSBlbGVtZW50IGlz
IGNvbWluZyBmcm9tLiAgTXkgd29ycnkNCndhcyB0aGlzOg0KDQppbnQgaW50ZWxfZW5naW5lX2lu
aXRfX3BtKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkNCnsNCglzdHJ1Y3QgaW50ZWxf
cnVudGltZV9wbSAqcnBtID0gZW5naW5lLT51bmNvcmUtPnJwbTsNCglpbnQgZXJyOw0KDQoJZXJy
ID0gaW50ZWxfd2FrZXJlZl9pbml0KCZlbmdpbmUtPndha2VyZWYsIHJwbSwgJndmX29wcyk7DQpb
Li4uXQ0KfQ0KDQpJbiB0aGlzIGNhc2UsIHdlJ3JlIGdldHRpbmcgdG8gX19pbnRlbF93YWtlcmVm
X2luaXQoKSB3aXRoIGFuICpycG0gdGhhdA0KaXMgY29taW5nIGZyb20gYW4gaW50ZWxfdW5jb3Jl
IHN0cnVjdHVyZSBhbmQgbm90IGZyb20NCmRybV9pOTE1X3ByaXZhdGUuLi4NCg0KLS0NCkNoZWVy
cywNCkx1Y2EuDQo=
