Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D478AA79C
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 06:20:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E444E10EE7B;
	Fri, 19 Apr 2024 04:20:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k7va28m2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E14010EE7B
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 04:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713500448; x=1745036448;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=A8c6ZCvCBndw4Y610NWOGyD1xCdU4RZPVxj8JKOJRZU=;
 b=k7va28m2M5g97dWU+mpuEJjumGFusyPIyIIw8BFsx0HwKRu5iuZunSFV
 CnPgjq9hxK8pRxIbbHFdTpnECL7a5MF6NW1QKpZLtt/3ze0h5fMs4rUlK
 g3grYgcScIhRf6SPG25doISH0iZcc/m9Ki71xdcqOJgzgzDIWKhG5/zjK
 WmSf8eRiFOR0Rl4Bm3zAiWykif7o3nuAGwdKplLPmwj9zobJ/E1sz1XdZ
 oUWSWkY3WxKqLV+eLDx/1J+IcU5vhj6LElRqC4gCOnreFxe6PE/LMHKz0
 tYWgBG907YwTB5o6DDO8K1d6jNq/pmE2XE1yHXhT3JISF0YeAISto9gun w==;
X-CSE-ConnectionGUID: kSCKzn9vSIWCFXqQpyI8Ig==
X-CSE-MsgGUID: D/HGvJrvSMmbmImyQrwXoA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8923976"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8923976"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 21:20:48 -0700
X-CSE-ConnectionGUID: n2YOygjmSTiqHjX/m2cguw==
X-CSE-MsgGUID: /xlJgLPXSK2pl1fq+kHqEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="27862437"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 21:20:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 21:20:47 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 21:20:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 21:20:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LSd3+ZF5GdxywP1ry78GXO+pNSQ67NRk0mefRKQRJvllNuoujC/8nhbc8JX7OT/F3XjFLwpu4tFck1mudbEY5WZGLErKJP0cVXIFds3kl1SWkwB/90/Qc//6ri6Yo5R9udAiCu1bdKpTmw/l1BKpt8os50LWJoonPJrkTWUzR7+Qn1e0mdKrZWAA09wkb9qzxNn0EBf9pLxJ0V40bAu3Ddwa0eEKcX8ZuFUk9088PoiV6t8c6TaFyfIujLOr7e7IfM9DyVN1muQPdUY9wp3GvEZ6ZHDn7gh5y3u4EELrS1+wcijL/svguaN5jGLj+a2ZNed+GBj664JjabKb61g2eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A8c6ZCvCBndw4Y610NWOGyD1xCdU4RZPVxj8JKOJRZU=;
 b=i0f6uwzLm6RowLDwMApIkryV71w/goLimJ11EYQh9ur3lVp0baWiQfx++LgDvDkGAsWijw2k0gss5KONNxb5Gujht8Wz/zQ5n9r7a/Ll+rAuN/vzjr2vMkN6CWMMIBT8Dvanr2GpLYeJzc0sdSW+t1pM/CogaWNKfBraN0n0D4/jmbYs6yrt9Hf8WTF3a49aOB40usJEFsIW3pOoTVTCGCVFui+F1HTenLGFce1tMS/kQwcmm2aj2XMiHGw4hDasH5i47PLUR3scsGL49eE2eNiMzZRmi5PoezrPlJkl+Sq7H+QuH3c/ujVVykwdV8nc6KtuP12fBtroFLFZn6B5HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH3PR11MB8547.namprd11.prod.outlook.com (2603:10b6:610:1bd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Fri, 19 Apr
 2024 04:20:40 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7472.037; Fri, 19 Apr 2024
 04:20:40 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 1/6] drm/i915: Align PLANE_SURF to 16k on ADL for async
 flips
Thread-Topic: [PATCH 1/6] drm/i915: Align PLANE_SURF to 16k on ADL for async
 flips
Thread-Index: AQHaeuBdpk5PkFQwCkOQO7wK6ZdAALFvIALg
Date: Fri, 19 Apr 2024 04:20:40 +0000
Message-ID: <IA0PR11MB7307385AC116A560D0E6466FBA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240320160424.700-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|CH3PR11MB8547:EE_
x-ms-office365-filtering-correlation-id: 2c277710-88dd-45f6-740a-08dc602812a0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: KxQB0uFAJU8WmgPA+acYvj5VDqfJBi/Rs1994saxivKz6PVcYaBJd5DVc2QU67HhnWuJ5ONllJtGk2lqFGeRyG0Mlb5OQStIpTwedG4y+in9f+imz538jPf1eRlFnR244ZRIzugTLHJ3+N/rrnY1xNA0X0JfgH4PFm8ywR5gZ5yJ1byg5x2G1ZKZipHjuYcA3mb1CspS/3QUzuA1Wd3XrxcNjTwmxWALYVScePLBQ2Am0iZ32PQgu3m3wxiwYiQjjc6LM0qLOY6NYvIck3A1KpKKBb4a1A2rnnlfaNvNNrP1yyft2qYnm7w/H1JLE0sO7gX8MtnZTCq4ECOJUaAqt6Z6MRjxR4afhLSd8WuCbhwoeNouY96SyCb9qBS5IlSGCpNrS+uMw07l4gmNuV5kTxZklzdgIfpLSMdQBMJn0xntxd1fDHJDi7ioASABgL9LomOuQacIPhxJNawvkAhqs25WLDR+6F0+twmOZJlGC1TjaoH8ziGKLY9tUVk1DdWlpkts22eckIGq/IaoWbrKPooFM3h0nJaJGVXG1RwB/Ta0dADZW9IM45E5ruRnRl7KvoG1JXY7wuQ15sRUV6wwE4VzIJb/YLwETfXLUvJ3dK0zIjMXXviyJJ2H7h+r9E61adeiPVa/x3vMeKaY2UG1HVhzzjJu54IQHTAxjQ0vbY5whAHsE9y+kVWENIZHd4F3d1xqu49y3h4Wxvq4vG3pr/cBE9LvuWU4K2A1jYtDOVc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VksyVlBmY2FBSFIxby9wZE1kT1NSN3RCWGhLS2V2QVFUT2VQTWlJcll2SFpk?=
 =?utf-8?B?bUJUbDNlZUdkQlRhNHJtbVl6cU5BdzRpVHNCdEVJV3c0SmpVdW5jMmZ6S1Q0?=
 =?utf-8?B?VE8xOTdUVXdtM3k4Q21VcmU5cktFYndFdWJKODUrWnNmbVo2dG5TaG1md0Zn?=
 =?utf-8?B?Z2pCVmYvSDY5anhLaFB5bk1vUnpZVjd2OVhLZXFLeVZJdmovaDdIYkREeFFm?=
 =?utf-8?B?cWh3TVVFaG80MXhoRmphT3kvZm9OSkFZL2lxakY2d1pJYTgxMVdJNkljc1pz?=
 =?utf-8?B?OVJHdmN3RjFpVGc5VDhXeHY4eC9UNWJ5WWNQTmRqSW83ZUkxWW5nV3NzM3Ru?=
 =?utf-8?B?d2NlQzRxMVBVS1J4d0JDNEhwRjNQOWFmeEZHU0FlbVBZTHhCR2wxaTlPQnpT?=
 =?utf-8?B?andnbkU3SStpbW9UT1d2KytjTWswMHVzQXNkb1NMZHh6b21iQXMyKzd6Z2Nu?=
 =?utf-8?B?aFhxTGFTeDloMktZS3RaVzk5V0p5M01RV0oxYTdZMEUxWHZ5akpNV3hQY1FZ?=
 =?utf-8?B?NkpwRUoxaURSS0VEY2tIaEJ1RDdIczdyVVlDbUZDOHE2dnErcWZZdlVEUzRl?=
 =?utf-8?B?SXUvRHJpb0dEMHpnbUtPU3FRVUJSenlIb083WEpScmprYzFYc1FUZTYxckta?=
 =?utf-8?B?enJ2eDd4d21UdmpiWnJGM3ByZ1VXQ2pYamdJVGp6N3RuM3VnWnp2bk9TY3dz?=
 =?utf-8?B?c2VjVDFDOHdiUW9oUGlxYWd3Y0w0MmJIZE9HelNpRnhsbFhkYXkxekM1b2V2?=
 =?utf-8?B?aERyQTlveGE4ay9jRExFTCtyVjhVVU03QXA1bnQ4cm5zZE9nRjZsUFZ2QlRw?=
 =?utf-8?B?U0hDak13ejBxeFdlT2k5VnBvaFMyTmtIa2wyZVZNSXBiM20rZHF5SzQza1FY?=
 =?utf-8?B?bE9yYnRFSGZseDQ2bXFWUDg5S0d4dzlpbDVoclJZaG5Gdk12QzdpblNOcmpD?=
 =?utf-8?B?d3BURmVvYzdwNjc1ZTNKdEsrTVVqN0pQSGgrSlkxTndIemZoZ0QrVElFVHpR?=
 =?utf-8?B?REptN3grcHpzRUl2VmE0dEJlaG9MbVNYR3dnUE9xRnJXdTMzVWJQaVNqYzRi?=
 =?utf-8?B?VDBxaHFkQkpvM3ByaDNwRHdrUzdiN0o2emxPei9VOFJoYXRKQVRhaG0wNXoy?=
 =?utf-8?B?Ri93NnQzeStNdXQ5SG1NTHlxU1Vydm51U3V4b29xRlRPMklUam9OMG9rOHc5?=
 =?utf-8?B?bXpOV1J0MFZaZTNlVTgxalI3aVdlRW9ZYW9CcmxjTVpmS1dtMHI3UTQrS1VD?=
 =?utf-8?B?V0hzNExIREVJY1V6STBrNmUzSklvbzkvM3d5OWthQ1dJdlVXUzRhSytUaDNk?=
 =?utf-8?B?RDdLaUMvZGI1NUtUZXpjejB5Y1JaUktEMFVxNDhtQVE1dHJiTDRMS2xkeHhx?=
 =?utf-8?B?Rk1nZDBVK2tsdHAra2FyWk9BQ1IxWll6ejRGc0J3UktvY1NWR1liUnBSc3Fx?=
 =?utf-8?B?YjRYS3dCYmpDTG50MEdxVE1JV256U2NXZ1dNdml3WWxhcG9GakxpT2JNVUpP?=
 =?utf-8?B?MmpVUjJNYThZbjZvNGwyV0FRVktRNEg5Y2ppaEowZ0dwQ2pzQzFBOExwTVdp?=
 =?utf-8?B?Yi9pYzk4M1JPSHRwbFJtQ3BMZEV0QStMRGlza1JUaWk0NzdFZkxHNzN4c0Jl?=
 =?utf-8?B?MjViYkpxQmQ3bXV5dnBURnhzVklKUy9JQmROSGEzNzRFQkRDMXNjQVdlZ2Ja?=
 =?utf-8?B?NGQ3VHdlMFhlVGhEZ3hEb1lZSlBHMVVyeWVUdis5SjlnTkUxTXUrbGgzd3Nn?=
 =?utf-8?B?cXRBc1ViaE1qR2U0MzBTanJnWG9CSk44QlhOSkJBdno2SyszWlFzemd6aXNn?=
 =?utf-8?B?UEZET0xyTmp5RDJMWjlRdkUybHEvd0k0RUVpMHhYV21ZZUpiWHJudmJKSlZW?=
 =?utf-8?B?dnNxam9YRGoxMS9LQW91cUIyNm9vNVpLb2wzZG9PeXhXTi9qTm85anB1Rkg5?=
 =?utf-8?B?MmMvR2ZLeTdtWlRmTlQ1T3NJNVQwUyt3VWJDc0ZLWldMQ2k1Ymo5ZlpCQUk1?=
 =?utf-8?B?YUN3Ujd1azFHR0pZWHVYZUtPNEl3SDRNVDg5djVyNnRjT0ZwWFpMbTdTenNQ?=
 =?utf-8?B?YW9PYTNLSDB5K0NpMC9IdEtmeFdjeHpYczZqRkNpNFQrZ2w0dG1ERlY4UnZF?=
 =?utf-8?B?WFJtc21nQmYxeFI3elRTUEkyOWF0TnZHK3BiZ2RaY2VEcXFUYkJDTWduYlJl?=
 =?utf-8?Q?l3SWJQzT+dw69cebqxoo/ALrmUiPLcDvJYYpsaDrmARc?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c277710-88dd-45f6-740a-08dc602812a0
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 04:20:40.7087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d7smWgzfpKFYEreNCGGNra5Syo1DsDuRPoKasn0vTc5VBWYnLKNiEOI36wy/llz6eDp7KBSnFRxFAfN1XHTcCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8547
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDIwLCAyMDI0IDk6MzQgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEvNl0g
ZHJtL2k5MTU6IEFsaWduIFBMQU5FX1NVUkYgdG8gMTZrIG9uIEFETCBmb3IgYXN5bmMgZmxpcHMN
Cj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBPbiBBREwgYXN5bmMgZmxpcHMgYXBwYXJlbnRseSBnZW5lcmF0ZSBETUFSIGFu
ZCBHR1RUIGZhdWx0cyAod2l0aA0KPiBhY2NvbXBhbnlpbmcgdmlzdWFsIGdsaXRjaGVzKSB1bmxl
c3MgUExBTkVfU1VSRiBpcyBhbGlnbmVkIHRvIGF0IGxlYXN0IDE2ay4NCj4gQnVtcCB1cCB0aGUg
YWxpZ25tZW50IHRvIDE2ay4NCg0KSSBkb27igJl0IGZpbmQgYW55IHN1Y2ggcmVzdHJpY3Rpb24g
aW4gdGhlIHNwZWMuIENhbiB5b3UgcGxlYXNlIGFkZCBsaW5rIHRvIHRoZSBzcGVjPw0KDQpUaGFu
a3MgYW5kIFJlZ2FyZHMsDQpBcnVuIFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0tDQo+IA0K
PiBUT0RPOiBhbmFseXplIHRoaW5ncyBiZXR0ZXIgdG8gZmlndXJlIG91dCB3aGF0IGlzIHJlYWxs
eQ0KPiAgICAgICBnb2luZyBvbiBoZXJlDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJq
w6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmMgICAgfCAgNyArKysrLS0tDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5oICAgIHwgIDMgKystDQo+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMgICAgIHwgMTcgKysrKysrKysrKysr
KysrKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJfcGluLmMgfCAx
MCArKysrKy0tLS0tDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDI3IGluc2VydGlvbnMoKyksIDEwIGRl
bGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHB0LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
dC5jDQo+IGluZGV4IGIyOWJjZWZmNzNmMi4uNzg2ZDNmMmU5NGM3IDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHB0LmMNCj4gQEAgLTEyMSw3ICsxMjEsOCBAQCBz
dGF0aWMgdm9pZCBkcHRfY2xlYW51cChzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlDQo+ICp2bSkN
Cj4gIAlpOTE1X2dlbV9vYmplY3RfcHV0KGRwdC0+b2JqKTsNCj4gIH0NCj4gDQo+IC1zdHJ1Y3Qg
aTkxNV92bWEgKmludGVsX2RwdF9waW4oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFjZSAqdm0pDQo+
ICtzdHJ1Y3QgaTkxNV92bWEgKmludGVsX2RwdF9waW4oc3RydWN0IGk5MTVfYWRkcmVzc19zcGFj
ZSAqdm0sDQo+ICsJCQkgICAgICAgdW5zaWduZWQgaW50IGFsaWdubWVudCkNCj4gIHsNCj4gIAlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHZtLT5pOTE1Ow0KPiAgCXN0cnVjdCBpOTE1
X2RwdCAqZHB0ID0gaTkxNV92bV90b19kcHQodm0pOyBAQCAtMTQzLDggKzE0NCw4IEBADQo+IHN0
cnVjdCBpOTE1X3ZtYSAqaW50ZWxfZHB0X3BpbihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2
bSkNCj4gIAkJaWYgKGVycikNCj4gIAkJCWNvbnRpbnVlOw0KPiANCj4gLQkJdm1hID0gaTkxNV9n
ZW1fb2JqZWN0X2dndHRfcGluX3d3KGRwdC0+b2JqLCAmd3csIE5VTEwsIDAsDQo+IDQwOTYsDQo+
IC0JCQkJCQkgIHBpbl9mbGFncyk7DQo+ICsJCXZtYSA9IGk5MTVfZ2VtX29iamVjdF9nZ3R0X3Bp
bl93dyhkcHQtPm9iaiwgJnd3LCBOVUxMLCAwLA0KPiArCQkJCQkJICBhbGlnbm1lbnQsIHBpbl9m
bGFncyk7DQo+ICAJCWlmIChJU19FUlIodm1hKSkgew0KPiAgCQkJZXJyID0gUFRSX0VSUih2bWEp
Ow0KPiAgCQkJY29udGludWU7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwdC5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcHQuaA0KPiBpbmRleCBlMThhOWY3NjdiMTEuLmY0Njc1NzhhNDk1MCAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcHQuaA0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5oDQo+IEBAIC0xMyw3ICsxMyw4IEBA
IHN0cnVjdCBpOTE1X3ZtYTsNCj4gIHN0cnVjdCBpbnRlbF9mcmFtZWJ1ZmZlcjsNCj4gDQo+ICB2
b2lkIGludGVsX2RwdF9kZXN0cm95KHN0cnVjdCBpOTE1X2FkZHJlc3Nfc3BhY2UgKnZtKTsgLXN0
cnVjdCBpOTE1X3ZtYQ0KPiAqaW50ZWxfZHB0X3BpbihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNl
ICp2bSk7DQo+ICtzdHJ1Y3QgaTkxNV92bWEgKmludGVsX2RwdF9waW4oc3RydWN0IGk5MTVfYWRk
cmVzc19zcGFjZSAqdm0sDQo+ICsJCQkgICAgICAgdW5zaWduZWQgaW50IGFsaWdubWVudCk7DQo+
ICB2b2lkIGludGVsX2RwdF91bnBpbihzdHJ1Y3QgaTkxNV9hZGRyZXNzX3NwYWNlICp2bSk7ICB2
b2lkDQo+IGludGVsX2RwdF9zdXNwZW5kKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsg
IHZvaWQNCj4gaW50ZWxfZHB0X3Jlc3VtZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7
IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiLmMNCj4gaW5kZXggM2Vh
NjQ3MGQ2ZDkyLi41OGVhZDA1ZmJhNmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZmIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiLmMNCj4gQEAgLTgwNSw4ICs4MDUsMjMgQEAgdW5zaWduZWQgaW50IGludGVs
X3N1cmZfYWxpZ25tZW50KGNvbnN0IHN0cnVjdA0KPiBkcm1fZnJhbWVidWZmZXIgKmZiLCAgew0K
PiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoZmItPmRldik7
DQo+IA0KPiAtCWlmIChpbnRlbF9mYl91c2VzX2RwdChmYikpDQo+ICsJaWYgKGludGVsX2ZiX3Vz
ZXNfZHB0KGZiKSkgew0KPiArCQkvKiBBVVhfRElTVCBuZWVkcyBvbmx5IDRLIGFsaWdubWVudCAq
Lw0KPiArCQlpZiAoaW50ZWxfZmJfaXNfY2NzX2F1eF9wbGFuZShmYiwgY29sb3JfcGxhbmUpKQ0K
PiArCQkJcmV0dXJuIDUxMiAqIDQwOTY7DQo+ICsNCj4gKwkJLyoNCj4gKwkJICogRklYTUUgQURM
IHNlZXMgR0dUVC9ETUFSIGZhdWx0cyB3aXRoIGFzeW5jDQo+ICsJCSAqIGZsaXBzIHVubGVzcyB3
ZSBhbGlnbiB0byAxNmsgYXQgbGVhc3QuDQo+ICsJCSAqIEZpZ3VyZSBvdXQgd2hhdCdzIGdvaW5n
IG9uIGhlcmUuLi4NCj4gKwkJICovDQo+ICsJCWlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikg
JiYNCj4gKwkJICAgICFpbnRlbF9mYl9pc19jY3NfbW9kaWZpZXIoZmItPm1vZGlmaWVyKSAmJg0K
PiArCQkgICAgSEFTX0FTWU5DX0ZMSVBTKGRldl9wcml2KSkNCj4gKwkJCXJldHVybiA1MTIgKiAx
NiAqIDEwMjQ7DQo+ICsNCj4gIAkJcmV0dXJuIDUxMiAqIDQwOTY7DQo+ICsJfQ0KPiANCj4gIAkv
KiBBVVhfRElTVCBuZWVkcyBvbmx5IDRLIGFsaWdubWVudCAqLw0KPiAgCWlmIChpbnRlbF9mYl9p
c19jY3NfYXV4X3BsYW5lKGZiLCBjb2xvcl9wbGFuZSkpIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiX3Bpbi5jDQo+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9mYl9waW4uYw0KPiBpbmRleCA3YjQyYWVmMzdkMmYuLmMyOGFl
OTllYmU2YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9mYl9waW4uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Zi
X3Bpbi5jDQo+IEBAIC0xOSw2ICsxOSw3IEBADQo+ICBzdGF0aWMgc3RydWN0IGk5MTVfdm1hICoN
Cj4gIGludGVsX3Bpbl9mYl9vYmpfZHB0KHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLA0KPiAg
CQkgICAgIGNvbnN0IHN0cnVjdCBpOTE1X2d0dF92aWV3ICp2aWV3LA0KPiArCQkgICAgIHVuc2ln
bmVkIGludCBhbGlnbm1lbnQsDQo+ICAJCSAgICAgYm9vbCB1c2VzX2ZlbmNlLA0KPiAgCQkgICAg
IHVuc2lnbmVkIGxvbmcgKm91dF9mbGFncywNCj4gIAkJICAgICBzdHJ1Y3QgaTkxNV9hZGRyZXNz
X3NwYWNlICp2bSkNCj4gQEAgLTI4LDcgKzI5LDYgQEAgaW50ZWxfcGluX2ZiX29ial9kcHQoc3Ry
dWN0IGRybV9mcmFtZWJ1ZmZlciAqZmIsDQo+ICAJc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3Qg
Km9iaiA9IGludGVsX2ZiX29iaihmYik7DQo+ICAJc3RydWN0IGk5MTVfZ2VtX3d3X2N0eCB3dzsN
Cj4gIAlzdHJ1Y3QgaTkxNV92bWEgKnZtYTsNCj4gLQl1MzIgYWxpZ25tZW50Ow0KPiAgCWludCBy
ZXQ7DQo+IA0KPiAgCS8qDQo+IEBAIC00MSw4ICs0MSw2IEBAIGludGVsX3Bpbl9mYl9vYmpfZHB0
KHN0cnVjdCBkcm1fZnJhbWVidWZmZXIgKmZiLA0KPiAgCWlmIChXQVJOX09OKCFpOTE1X2dlbV9v
YmplY3RfaXNfZnJhbWVidWZmZXIob2JqKSkpDQo+ICAJCXJldHVybiBFUlJfUFRSKC1FSU5WQUwp
Ow0KPiANCj4gLQlhbGlnbm1lbnQgPSA0MDk2ICogNTEyOw0KPiAtDQo+ICAJYXRvbWljX2luYygm
ZGV2X3ByaXYtPmdwdV9lcnJvci5wZW5kaW5nX2ZiX3Bpbik7DQo+IA0KPiAgCWZvcl9pOTE1X2dl
bV93dygmd3csIHJldCwgdHJ1ZSkgew0KPiBAQCAtMjU3LDE0ICsyNTUsMTYgQEAgaW50IGludGVs
X3BsYW5lX3Bpbl9mYihzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUNCj4gKnBsYW5lX3N0YXRlKQ0K
PiAgCQlwbGFuZV9zdGF0ZS0+Z2d0dF92bWEgPSB2bWE7DQo+ICAJfSBlbHNlIHsNCj4gIAkJc3Ry
dWN0IGludGVsX2ZyYW1lYnVmZmVyICppbnRlbF9mYiA9IHRvX2ludGVsX2ZyYW1lYnVmZmVyKGZi
KTsNCj4gKwkJdW5zaWduZWQgaW50IGFsaWdubWVudCA9IGludGVsX3N1cmZfYWxpZ25tZW50KGZi
LCAwKTsNCj4gDQo+IC0JCXZtYSA9IGludGVsX2RwdF9waW4oaW50ZWxfZmItPmRwdF92bSk7DQo+
ICsJCXZtYSA9IGludGVsX2RwdF9waW4oaW50ZWxfZmItPmRwdF92bSwgYWxpZ25tZW50IC8gNTEy
KTsNCj4gIAkJaWYgKElTX0VSUih2bWEpKQ0KPiAgCQkJcmV0dXJuIFBUUl9FUlIodm1hKTsNCj4g
DQo+ICAJCXBsYW5lX3N0YXRlLT5nZ3R0X3ZtYSA9IHZtYTsNCj4gDQo+IC0JCXZtYSA9IGludGVs
X3Bpbl9mYl9vYmpfZHB0KGZiLCAmcGxhbmVfc3RhdGUtPnZpZXcuZ3R0LCBmYWxzZSwNCj4gKwkJ
dm1hID0gaW50ZWxfcGluX2ZiX29ial9kcHQoZmIsICZwbGFuZV9zdGF0ZS0+dmlldy5ndHQsDQo+
ICsJCQkJCSAgIGFsaWdubWVudCwgZmFsc2UsDQo+ICAJCQkJCSAgICZwbGFuZV9zdGF0ZS0+Zmxh
Z3MsIGludGVsX2ZiLQ0KPiA+ZHB0X3ZtKTsNCj4gIAkJaWYgKElTX0VSUih2bWEpKSB7DQo+ICAJ
CQlpbnRlbF9kcHRfdW5waW4oaW50ZWxfZmItPmRwdF92bSk7DQo+IC0tDQo+IDIuNDMuMg0KDQo=
