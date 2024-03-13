Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1842687A769
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 13:11:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0147710F76C;
	Wed, 13 Mar 2024 12:11:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TkMpXN0A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B68CE10F76C
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 12:11:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710331906; x=1741867906;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=KglzdjaxjWpthMSMzrT7nYMQDNcQQ9qkmAv71FAtczw=;
 b=TkMpXN0AGGr3Iz3NfPgHQWswEOiBiZrSCrwe7+2KORKcMbuN4nVKN3Tk
 dBVZJs794ngajuOCLRXm4xAlMnSuqa7MNz28pBaPXqkNWpYq/jPE7nQLA
 Jj76maSSW4kdnIjfC9wWIx8bx8ZA6PlB70qnvjtbBJmaB1OTAE/twy1Y1
 /LEmOdXotoSfJI/Zy/brwZmoXG3R1gyLNJb/ND4KVYyr9xnXxhL9Y7jsH
 dXsy/9aI7hyPk9iNsxgZojPqNmvUW5wk9bd9dKeaRCfGF3zfhFAOKrtgC
 37SasPJEMNES3TD+8p/cpOYtRAm0i+E4mzNk9D4iZ6N/Fisg+W3aE5str g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="15647866"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="15647866"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 05:11:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="16561804"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 05:11:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 05:11:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 05:11:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 05:11:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjlDM3cFRWXaAiSRM+Xge0XVczWSG18UQdXkDT2fTyotL1thpGNh7rENOnPte4TCPgPUnU4D4wPvIECSS9LOibez0XYOXmF81o4VrAlVd4tKiTIljFZ3zBQEsjMRxLaqo1odTEGf3f66mVVLGGQ3JKKHCmSv6BW/DblAwi3yRNJ7ekbpvCuBTBy4q0/Wl7nb3l/1KRqUNryKjFI3GF86zEdt7kNHHnbDPgLpCYdgqFrWXExxwNtNcAJ0vkGORu2/nPxACrUQT1QjN2Y0TeXHxu+na5CMCuryuG3s5/6Vi7UAevVxwnuMwL5Nk5ZcNPHeWgcBkR2gKmTMOTiXL6KZrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KglzdjaxjWpthMSMzrT7nYMQDNcQQ9qkmAv71FAtczw=;
 b=mMssU83clRZkAhRjkgac8woVpUFaJpqGssyPdZBAXZw3CjTA/L7TfaiQY0DOVigYFL6NehF/jpny48AbNVqMpJWtghQI0HV9uNwODhdCfGNu+jLxCtmdOew/2Mt0/IgONRgp8wuqeAUDuc7+lOLJC6c5t/G4uzqxcT8+JNOZl6e5jAskbymLrXuc4yTy3jcncyfRAl3cuQyIf35hJ5ckqFVP4woFONCbU+6hZ+kWg/Uadt4PMpdgIrUgTiWCbrjt7P1Y82p4eRGF+U7N1b+tvEdXM0SBISWdE8c0o2FzwCqOx5N6pgshDWVwtsJY/45mPkjbmE3k0/vLA1k4MT0nsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4694.namprd11.prod.outlook.com (2603:10b6:208:266::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7386.18; Wed, 13 Mar 2024 12:11:24 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 12:11:23 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v3 3/6] drm/i915/psr: Calculate aux less wake time
Thread-Topic: [PATCH v3 3/6] drm/i915/psr: Calculate aux less wake time
Thread-Index: AQHab7NxfypgIUMO7EOulwqb4H71m7E1j/QAgAAPxQA=
Date: Wed, 13 Mar 2024 12:11:23 +0000
Message-ID: <d22240fd4fa17b5acc3055d55a437e0b28a03b0e.camel@intel.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
 <20240306104513.2129442-4-jouni.hogander@intel.com>
 <PH7PR11MB5981117DD607E9FBCFC3ED17F92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981117DD607E9FBCFC3ED17F92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN2PR11MB4694:EE_
x-ms-office365-filtering-correlation-id: eafca3a5-e7a6-455f-b44e-08dc4356b398
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ndzepIvgbFOkcP1gldIaH0Pj6G/HzTMMct7x2MW0dDoix8mU1LoVclTpvL437MCv0sHfBwhkj4sF6DcRsvxaXpJIpXVLo2niacLdIkKWtVT7HLgYDM7x/i+HfD0SsEDfAl8AhyStYKVh+fFsrEjtD2M8Xo5VGumxoiz3XOTz5sa48/31FAAAYh3pDchcj9v9TZLyA2l5QoqKRJNVF+UVl6f2XAI/6JKO1tWij8e8P0ZdNoVrTW9thsY3rzCg2gt2gjt/7WFLJdaVAM0lHyETXmnTBpu7gNQ6qry9d1R94ZXXF16OCH5OB94cOCNJ0rNDfqXQYbmN9xO9flfAGC5wp1vNntElBpsaFASQFgBH6u8Yiti5bRmKztW7YaF1QV/YNPU6Oabs3p2McUdzOmd1ZQj+kJm4/AbpzlTBgVODOyMMNTeDQa/enkhUwvVMWBo8ETGCkKab5tM2YD9dZ4NOklUTqxq9pO4couv92YMX3LFFY0JcD0w8nv/qy3Zd1WeXSAN0IBt21O2IOSv5L42jFkwRHbbWTx+5IpxrfWCna6Nx2G6j3GDfOzkf5DzdQgNH0gMD4J2iI09dkHoZQsg6xmA51Y/h/g1ErK9aqtbEh5gaLZsL7yPiAGAqH3IEwz9eVI1uZqwabeh1yh3bOKYmAqXd6gVCwaqGFRimZWv6OrM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MlhUbGFyUzlTcmFieEpBNnBxSzlEVnY0NXo5R25uNmRjMGpXK2dyNGlwZVBk?=
 =?utf-8?B?R3VVZ2ZHekptaXlXTTN0c045b0JtUWxCOFU0QjhiaUVVMmh6UEN3QUhyVHNC?=
 =?utf-8?B?cDFhcFFtUFkyTExzMklhQXExQ3V5d0J6RURybFdZeWtpRXpYdXIyMVBIZGVP?=
 =?utf-8?B?NlNXTDVQL1VHRWZjWEkyalo5eUE0TjFLYXJSc25tRnQ2Wm53Z2RaSE5Sclox?=
 =?utf-8?B?emxUOS9rdEpvMEZzUzlOWDJ5L3U4eDltOTJsR28yaEZlUy9VcXB0S1dYRmhG?=
 =?utf-8?B?NFlwVk81R0pHVVRMYW1Hb05tL3ZqVm5IekdvVVhOdnFVUXdDTXRIam4wZFNO?=
 =?utf-8?B?MmQzYnROb1hMNHVTQ1VpY1Q3eUxaMTZKMW85RTh6dko3c1RIM1dFbnd6Z0xG?=
 =?utf-8?B?aXJ2RkRIV0R1a3c3N2lRMCt2MHA0L0FxLy9Mam9FQS9UWVU5eEVTWTJoZ2JE?=
 =?utf-8?B?Sk5xTHZKS1FtOUR3VVdETUx0UWZGVW5neko1Tng4OWdLSlBYVmxNSUpqdzFC?=
 =?utf-8?B?ZTgwNmJERGFlN0plYjdUZDZuMm9hazl4Wm9rWWYzMUo0NjNCczV4OU00a3Ns?=
 =?utf-8?B?U01kZ3ZyQzMwSjRRdFNkTVJ1aFNYNTJmc2pjaHRKZEYrSG9NZUhxNSt4OFA2?=
 =?utf-8?B?ZFE3OEhlR21pTC9UMFMrV2o2b2JuNWQrOTh5ZVFmelo4SVlQYWJGeXlKaHlr?=
 =?utf-8?B?Q3NYSjZueFRzRHpwdjlLb2tydmFXbXZHcTVaY2Y1dk13VUVsRVlDQlpKNnFN?=
 =?utf-8?B?TXlNbG5aTUJnd2RsQjJaMU9FRUxkRER1L2cvOVhZa1c1L2lzR09SVjRZUDhi?=
 =?utf-8?B?NFlTdTBhN0QxQjZPd21Dd2luZzI1Q1J0VEJvd0xteUFTYXUrZUxzbEU4aWRv?=
 =?utf-8?B?bEZuNzNmTndRTU5qZ1ErUjZEVC8yUGRtOFBYYzcwVnllY0JocjBtRFE3Tk5J?=
 =?utf-8?B?bnArNnRCb0dlTE8zeFVkSFVtemxTWWc4VjlBQnV5UXhLMjNkSUdHN2MwemJ4?=
 =?utf-8?B?dm9wN0RITEp3TkJMODU1MjVDL1hHaTRzMUZBQ0lhanN5ZzNaQnRzRjU5QUdQ?=
 =?utf-8?B?QUZvd2luNkV0UTJBNkpvSzAzTEkyZ1A1bHlXaGpuUGM0RURHMFNrbG1rMjk4?=
 =?utf-8?B?Y1NKUEZsVVNsRllXekNjclJBRU84eDBBcGJ2cTh2cWdNRlllWEdLVWxha2pK?=
 =?utf-8?B?UzRzb3JIcEpqNFJwSWRUTzVOWC85bi9PY09mcHFrcUQvMUozTFVaM1FNUE5B?=
 =?utf-8?B?ZUkrMGRackJ1c2I3czVBK2ltbWxpRzBHa0tYQXRIQ2lEaC9VUmd6QlY4Ky9X?=
 =?utf-8?B?bzJ2L0ZZVWFNN3Arbk85K2wvRGk4ekV6TVVpMVhJWUFLU3dPY0lnSkpmdm14?=
 =?utf-8?B?N2JWODZpbWxLUUxEK2ttU2dlZUVVSzZvVytZMktpeDZQczdRdXZZV1lGeHBw?=
 =?utf-8?B?RktXSEpqRGxyZmk0NHZvWEJ5dlc4a2kxTnE3MTlZandaclRvRnIwejJnb0FJ?=
 =?utf-8?B?VUVhajZrU1czWlljYitZNzg2d2NVZVlaUzRqV2MweUY5MW1wVXVzbHhGR3Fp?=
 =?utf-8?B?SVprdXVSb2wyVzk1SGF2NVBQS1o0VXoyZ01XeTNwYXkraWlXOEpqZG9PRTFG?=
 =?utf-8?B?RjU3dnNPL21mSmR4WjlBUCtIUFZtVEM0bFc4WURWdUpad29WSjk2Uk9TczBL?=
 =?utf-8?B?U2t4VWlGZllCeWR3OUtFeXMvVWtqSjRyT2pXNDJCSkRPZHBYZlYxeEdOYzUv?=
 =?utf-8?B?cy8rWEV6cGU4ZmZ5S2pTTjVYTks0eXdzcTFsUldtZHdoeUxnSXBFUkhYQm5W?=
 =?utf-8?B?clo5d29EZFl4eVRMTGJBU1l0emNmaGt6QUx6VGdpR0NGMVB4V2MzeUNuNGlX?=
 =?utf-8?B?ZVlLNjQvTGJYQ2hpaXlwUGdXMk5HMmd3akU2THZYMkR6MXBoYWhIUXlzTUZF?=
 =?utf-8?B?S3U0cXl1QVd0ODlIcjFKZmFPeDhXUnRlZm5SWkNEeWMxTW5hd0Q3MDcyS245?=
 =?utf-8?B?R0lQWGNSR0dtQ1dWV3c1blRXM2dHR0VDdHNOb2JsTUxicERLaXp1L2w1aEFL?=
 =?utf-8?B?TXVmL0xONXV3VGVMNG9FMVF1aDBUZ2FHOTk0Y1hSdVBDSjBGeDM2VXQ4SGpN?=
 =?utf-8?B?N0Z2VDgxQTc2K3RKOXFWdW44SVNvUU9PQ1RkZEJmN05VMndiUjNTbllIMFFq?=
 =?utf-8?B?UWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <34DBE21547F4D044935360BE9A5DFF3F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: eafca3a5-e7a6-455f-b44e-08dc4356b398
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 12:11:23.9084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5bjzyNOtB1ZmS9FwtbKbQT+uWlgk3uqxr1MrQEyaWu79ud6+6mLNIr1u+17scrjWHaiH95nh9QCfBkU/RTI0QHklKng0MjyTonJF1Qjz9Bo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
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

T24gV2VkLCAyMDI0LTAzLTEzIGF0IDExOjE0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogV2VkbmVzZGF5
LCBNYXJjaCA2LCAyMDI0IDQ6MTUgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPjsgTWFubmEsIEFuaW1lc2gNCj4gPiA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBN
dXJ0aHksIEFydW4gUg0KPiA+IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47DQo+ID4gSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW1BBVENI
IHYzIDMvNl0gZHJtL2k5MTUvcHNyOiBDYWxjdWxhdGUgYXV4IGxlc3Mgd2FrZSB0aW1lDQo+ID4g
DQo+ID4gQ2FsY3VsYXRlIGF1eCBsZXNzIHdha2UgdGltZSBhbmQgc3RvcmUgaXQgaW50byBhbHBt
X3BhcmFtcyBzdHJ1Y3QNCj4gPiANCj4gPiBCc3BlYzogNzE0NzcNCj4gPiANCj4gPiB2MzoNCj4g
PiDCoCAtIHVzZSBBTFBNX0NUTF9BVVhfTEVTU19XQUtFX1RJTUVfTUFTSyBpbnN0ZWFkIG9mIHZh
bHVlIDYzDQo+ID4gdjI6DQo+ID4gwqAgLSB1c2UgdmFyaWFibGVzIGluc3RlYWQgb2YgdmFsdWVz
IGRpcmVjdGx5DQo+ID4gwqAgLSBmaXggbWF4IHZhbHVlDQo+ID4gwqAgLSBtb3ZlIGNvbnZlcnRp
bmcgcG9ydCBjbG9jayB0byBNaHogaW50bw0KPiA+IF9sbmxfY29tcHV0ZV9hdXhfbGVzc193YWtl
X3RpbWUNCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfdHlwZXMuaMKgwqDCoCB8wqAgMSArDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDYwDQo+ID4gKysrKysrKysrKysr
KysrKysrKw0KPiA+IMKgMiBmaWxlcyBjaGFuZ2VkLCA2MSBpbnNlcnRpb25zKCspDQo+ID4gDQo+
ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV90eXBlcy5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfdHlwZXMuaA0KPiA+IGluZGV4IGU2N2NkNWIwMmU4NC4uOTI4MzE3YWNjMWJkIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
X3R5cGVzLmgNCj4gPiBAQCAtMTczNyw2ICsxNzM3LDcgQEAgc3RydWN0IGludGVsX3BzciB7DQo+
ID4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBMTkwgYW5kIGJleW9u
ZCAqLw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdTggY2hlY2tfZW50cnlf
bGluZXM7DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHU4IGF1eF9sZXNzX3dh
a2VfbGluZXM7DQo+IA0KPiBBcyBhdXgtd2FrZSBvciBhdXgtbGVzcyBpcyBtdXR1YWxseSBleGNs
dXNpdmUgY2FuIHdlIHVzZSBleGlzdGluZw0KPiB3YWtlLWxpbmUgdmFyaWFibGUgZm9yIGF1eC1s
ZXNzIGFzIHdlbGwuDQoNCkkgZG8gbm90IGhhdmUgYW55IG9iamVjdGlvbnMgaGVyZS4gSSBjYW4g
ZG8gdGhpcyBjaGFuZ2UuDQoNCkJSLA0KDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiANCj4gUmVnYXJk
cywNCj4gQW5pbWVzaA0KPiANCj4gPiDCoMKgwqDCoMKgwqDCoMKgfSBhbHBtX3BhcmFtZXRlcnM7
DQo+ID4gDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGt0aW1lX3QgbGFzdF9lbnRyeV9hdHRlbXB0Ow0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5k
ZXggNjkyNzc4NWZkNmZmLi5jNTQ1ZWUyMjk2ODQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBAQCAtMTEyNiw2ICsxMTI2LDYzIEBAIHN0
YXRpYyBib29sDQo+ID4gX2NvbXB1dGVfcHNyMl9zZHBfcHJpb3Jfc2NhbmxpbmVfaW5kaWNhdGlv
bihzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZA0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1
cm4gdHJ1ZTsNCj4gPiDCoH0NCj4gPiANCj4gPiArLyoNCj4gPiArICogQVVYLUxlc3MgV2FrZSBU
aW1lID0gQ0VJTElORyggKChQSFkgUDIgdG8gUDApICsgdExGUFNfUGVyaW9kLA0KPiA+IE1heCsN
Cj4gPiArICogdFNpbGVuY2UsIE1heCsgdFBIWSBFc3RhYmxpc2htZW50ICsgdENEUykgLyB0bGlu
ZSkNCj4gPiArICogRm9yIHRoZSAiUEhZIFAyIHRvIFAwIiBsYXRlbmN5IHNlZSB0aGUgUEhZIFBv
d2VyIENvbnRyb2wgcGFnZQ0KPiA+ICsgKiAoUEhZIFAyIHRvIFAwKSA6DQo+ID4gK2h0dHBzOi8v
Z2Z4c3BlY3MuaW50ZWwuY29tL1ByZWRhdG9yL0hvbWUvSW5kZXgvNjg5NjUNCj4gPiArICogOiAx
MiB1cw0KPiA+ICsgKiBUaGUgdExGUFNfUGVyaW9kLCBNYXggdGVybSBpcyA4MDBucw0KPiA+ICsg
KiBUaGUgdFNpbGVuY2UsIE1heCB0ZXJtIGlzIDE4MG5zDQo+ID4gKyAqIFRoZSB0UEhZIEVzdGFi
bGlzaG1lbnQgKGEuay5hLiB0MSkgdGVybSBpcyA1MHVzDQo+ID4gKyAqIFRoZSB0Q0RTIHRlcm0g
aXMgMSBvciAyIHRpbWVzIHQyDQo+ID4gKyAqIHQyID0gTnVtYmVyIE1MX1BIWV9MT0NLICogdE1M
X1BIWV9MT0NLDQo+ID4gKyAqIE51bWJlciBNTF9QSFlfTE9DSyA9ICggNyArIENFSUxJTkcoIDYu
NXVzIC8gdE1MX1BIWV9MT0NLICkgKyAxKQ0KPiA+ICsgKiBSb3VuZGluZyB1cCB0aGUgNi41dXMg
cGFkZGluZyB0byB0aGUgbmV4dCBNTF9QSFlfTE9DSyBib3VuZGFyeQ0KPiA+IGFuZA0KPiA+ICsg
KiBhZGRpbmcgdGhlICIrIDEiIHRlcm0gZW5zdXJlcyBhbGwgTUxfUEhZX0xPQ0sgc2VxdWVuY2Vz
IHRoYXQNCj4gPiBzdGFydA0KPiA+ICsgKiB3aXRoaW4gdGhlIENEUyBwZXJpb2QgY29tcGxldGUg
d2l0aGluIHRoZSBDRFMgcGVyaW9kIHJlZ2FyZGxlc3MNCj4gPiBvZg0KPiA+ICsgKiBlbnRyeSBp
bnRvIHRoZSBwZXJpb2QNCj4gPiArICogdE1MX1BIWV9MT0NLID0gVFBTNCBMZW5ndGggKiAoIDEw
IC8gKExpbmsgUmF0ZSBpbiBNSHopICkNCj4gPiArICogVFBTNCBMZW5ndGggPSAyNTIgU3ltYm9s
cw0KPiA+ICsgKi8NCj4gPiArc3RhdGljIGludCBfbG5sX2NvbXB1dGVfYXV4X2xlc3Nfd2FrZV90
aW1lKGludCBwb3J0X2Nsb2NrKSB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHRwaHkyX3AyX3Rv
X3AwID0gMTIgKiAxMDAwOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCB0bGZwc19wZXJpb2RfbWF4
ID0gODAwOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCB0c2lsZW5jZV9tYXggPSAxODA7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgaW50IHQxID0gNTAgKiAxMDAwOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlu
dCB0cHM0ID0gMjUyOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGludCB0bWxfcGh5X2xvY2sgPSAxMDAw
ICogMTAwMCAqIHRwczQgKiAxMCAvIHBvcnRfY2xvY2s7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50
IG51bV9tbF9waHlfbG9jayA9IDcgKyBESVZfUk9VTkRfVVAoNjUwMCwgdG1sX3BoeV9sb2NrKQ0K
PiA+ICsgMTsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnQgdDIgPSBudW1fbWxfcGh5X2xvY2sgKiB0
bWxfcGh5X2xvY2s7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHRjZHMgPSAxICogdDI7DQo+ID4g
Kw0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBESVZfUk9VTkRfVVAodHBoeTJfcDJfdG9fcDAg
KyB0bGZwc19wZXJpb2RfbWF4ICsNCj4gPiB0c2lsZW5jZV9tYXggKw0KPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHQxICsgdGNkcywgMTAw
MCk7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0YXRpYyBpbnQgX2xubF9jb21wdXRlX2F1eF9sZXNz
X2FscG1fcGFyYW1zKHN0cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0DQo+ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkNCj4gPiB7DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSBkcF90b19pOTE1KGludGVsX2RwKTsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnQg
YXV4X2xlc3Nfd2FrZV90aW1lLCBhdXhfbGVzc193YWtlX2xpbmVzOw0KPiA+ICsNCj4gPiArwqDC
oMKgwqDCoMKgwqBhdXhfbGVzc193YWtlX3RpbWUgPQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBfbG5sX2NvbXB1dGVfYXV4X2xlc3Nfd2FrZV90aW1lKGNydGNfc3RhdGUtDQo+
ID4gPnBvcnRfY2xvY2spOw0KPiA+ICvCoMKgwqDCoMKgwqDCoGF1eF9sZXNzX3dha2VfbGluZXMg
PSBpbnRlbF91c2Vjc190b19zY2FubGluZXMoJmNydGNfc3RhdGUtDQo+ID4gPiBody5hZGp1c3Rl
ZF9tb2RlLA0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgDQo+ID4gYXV4X2xlc3Nfd2FrZV90aW1lKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDC
oMKgaWYgKGF1eF9sZXNzX3dha2VfbGluZXMgPiBBTFBNX0NUTF9BVVhfTEVTU19XQUtFX1RJTUVf
TUFTSykNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0K
PiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoaTkxNS0+ZGlzcGxheS5wYXJhbXMucHNyX3Nh
ZmVzdF9wYXJhbXMpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGF1eF9sZXNz
X3dha2VfbGluZXMgPSA2MzsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZHAtPnBz
ci5hbHBtX3BhcmFtZXRlcnMuYXV4X2xlc3Nfd2FrZV9saW5lcyA9DQo+ID4gK2F1eF9sZXNzX3dh
a2VfbGluZXM7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOw0KPiA+ICt9
DQo+ID4gKw0KPiA+IMKgc3RhdGljIGJvb2wgX2xubF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpbnRlbF9j
cnRjX3N0YXRlDQo+ID4gKmNydGNfc3RhdGUpwqAgeyBAQCAtDQo+ID4gMTE0Miw2ICsxMTk5LDkg
QEAgc3RhdGljIGJvb2wgX2xubF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdA0KPiA+IGludGVs
X2RwDQo+ID4gKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoY2hlY2tfZW50cnlf
bGluZXMgPiAxNSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBm
YWxzZTsNCj4gPiANCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoIV9sbmxfY29tcHV0ZV9hdXhfbGVz
c19hbHBtX3BhcmFtcyhpbnRlbF9kcCwNCj4gPiBjcnRjX3N0YXRlKSkNCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ICsNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgaWYgKGk5MTUtPmRpc3BsYXkucGFyYW1zLnBzcl9zYWZlc3RfcGFyYW1zKQ0KPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY2hlY2tfZW50cnlfbGluZXMgPSAxNTsNCj4g
PiANCj4gPiAtLQ0KPiA+IDIuMzQuMQ0KPiANCg0K
