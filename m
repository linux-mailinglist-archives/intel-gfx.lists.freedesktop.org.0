Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F2B08AA7A1
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 06:28:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5875010F2F7;
	Fri, 19 Apr 2024 04:27:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pjtr6+Bm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7092D10F2F7
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 04:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713500878; x=1745036878;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=2TyqAaGCN9nBZLugDsjok9G+r6LaauUGMjU2hYb+E5w=;
 b=Pjtr6+Bmi1FfWwazoCFb1tuyA4LAkL0aR7fngCbd7qVAEa3GgxGPlHA0
 u55gQ8xDEAOgqXPl5DaLMGM5yMTvoTK/jPbLiGakuZoMleZMX9g34WobZ
 P6kzZjOdJUNtnm/1F21lfsSoppdGTRN7LIq1S73pzVJeaBj3wJC9RqeeY
 pAyN+6ES7Utt1ulBqOaDeGuKrlyb9n20zmuN5cWvgn3q3roWW2Abw80nl
 SFQ/W9iisn94mIC4qgfVyGRiIeguy4dM14dv/cH+FnebbbmTK4bbQkYf1
 Y7MAKPNcgfNkXoC/g2MAozovLfQkMViTwhF7BZjEYo2IAmb+bKfe9N3WY Q==;
X-CSE-ConnectionGUID: 5RTyqiPjSO6g4O/4msH90w==
X-CSE-MsgGUID: JuUgOvblQXqyJxrKf8XauA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="20475524"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="20475524"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2024 21:27:57 -0700
X-CSE-ConnectionGUID: +UGzq89wS0aOMrAalR8PYw==
X-CSE-MsgGUID: KAa6F4ACSGyJkXp6y9ogXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23284154"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Apr 2024 21:27:57 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 21:27:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 18 Apr 2024 21:27:55 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 18 Apr 2024 21:27:55 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 18 Apr 2024 21:27:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fu+Fxd4mQsIpC8802xgfXag6077cA1j1COT4XfbCmAuCHUWtPyBhWx2TfC6oOvNHKUVmSaJAiMx/TX3yNutKSgubVovg5wBDv4tJrSJElsf/qWd4KjRqNssM714QtlF4j/3i86TJDDKKZztafIk54XszzbBBDOT2lQzJzlEPKoPrjsQD6qtzd5pm8KAXPCXMyfZ4KL46lUS85URzdV3Tdc4636ohkkRgg7R0uLNpwkX5wotBcqKrC99Sx5PiqyxkwNJPIWFXsYgPkXLclJC9c4y4DJv1cLcHJ368mqEKcK/IREVkdp4SoDSgaocC7gHTMEdTvYy3BDrbuUnzrnIG8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2TyqAaGCN9nBZLugDsjok9G+r6LaauUGMjU2hYb+E5w=;
 b=H8Rxc5q/gxGc2qaGWEQj+w6tdsYqoREMs6PGNCAJNNvCSXxOTC18iH/hem4i6p2XUObOwh21gUn0jT9kZm+7H467MkHZyFZ7+RhSjs627jugLrN+D93yQSv2zrCiSqFQ1sVSA9OO3il2jprhk9QwgRPwCaMeFhgkzCmcX2Uk2sfepYPtXblCr4G1tV1UJSH05/mwky4WpjSvkYk7eKGH/QiE8x4H0OrnH1kJVcflrSP9GT+rtVeRby3CRNULd3xeagHWhVNeW8a1g+OhaIxWtkzr5KJFWqCWVKuVEJBq72kC1cI3naoTKz/57QpHs0sxorw8rylH2d8M0n2/OFrqqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DM4PR11MB5328.namprd11.prod.outlook.com (2603:10b6:5:393::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.12; Fri, 19 Apr
 2024 04:27:54 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7472.037; Fri, 19 Apr 2024
 04:27:54 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 2/6] drm/i915: Reject async flips if we need to change
 DDB/watermarks
Thread-Topic: [PATCH 2/6] drm/i915: Reject async flips if we need to change
 DDB/watermarks
Thread-Index: AQHaeuBlXHMmbe4JoES2dNHc7TfferFvLGyA
Date: Fri, 19 Apr 2024 04:27:53 +0000
Message-ID: <IA0PR11MB73072BC8E9CEAB07BA6D7E04BA0D2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240320160424.700-1-ville.syrjala@linux.intel.com>
 <20240320160424.700-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240320160424.700-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DM4PR11MB5328:EE_
x-ms-office365-filtering-correlation-id: 27460a05-c6f7-4d5d-82d0-08dc602914e5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: zrYzIw/vpfOgsofWi6FxiN6RIPqmW67pG6VJQd1wKHvFi1wk07Ky9jQLZrUh/fFcVtAZtVdLA6dGdYsPujL+SCHJSd5X4heCuuCXcxlWmlcqb+OlnFDfmyjKYuuBfuzl0jGzhDeHatxl8qNj40jVwvXgDCtBPDsSGm0uGKHs2t/QrKQl9A9H7HNYp2vpJUkloYgwxVaIvI5fwFcpT4QHjP5GLP/J+n9GxcHCTPpviR+4nU5qeZWamg2wL7AXzu2e8hChCPV1giniXaMADhoY8nXwfPN+eXH2TdFTbX3yVXMGu9HMAXGVDj4XdIe2tlzHGrs2Cg5vkl32Pltz7eZ9PI64qFZXU41m/DSQHMqGy5tmZ2y50+eJK3ZyEXUSBqriAPq4erXJXdmkbh8KiGkaOockcXlPiSsA4tRmoq8W/OwfqpgRDRElqmkX28U2BOFDXux++vq/Xt7MX5Uku2EzBVaEZnhLch1K9WqLn7Lz19YIeY5eWIv9AQsIoGt3bh2uCA48iLXri+3+yU16x+HQIFV2MpgpNimvt4iDBAoPFIQWk7kyJwAURTR698cENo1mY8qT7fEpDYSfV1aWMyemrMep22sopmc1G3XV3mNVOriqXC3k35QV2Oh4qmPxN4hOj9GG52emduW5OQ1LoNFp+S0HD++IT3QP3DGcgDjBjwi2EQ9xXajoUzRzKZ7AJx6ZScK25Hcl5+TyvOelPt800w==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NE1OYnhUL3VaaVFMYTE2QWtnRjFxcmJQWDVQdUpSN3BZL1BOU3hwTFRQRXB0?=
 =?utf-8?B?ZDRzT0VCVWFSZkd6TDB1M2NiTFRlejR1eDEvUEtoNVlMcWJXdTRUY3EyKzJ4?=
 =?utf-8?B?S3hpbVAwVmRjOUtlaGZUZmJoNXZHdDcwUWxPTyt0MVUyU0VCZDQ1MzY3c2xX?=
 =?utf-8?B?NUZERU9KUG5OUHhHQ1JiZ3lraXJjUDdkL3NEOXk3M2h3RUN5aVpvOG1sVGZ5?=
 =?utf-8?B?SDRqWEsvRU5PZmZQWnRMaGt0L1czM3RJOVZyY2pCbXNBakdqOC9SRzIxV1ZC?=
 =?utf-8?B?WDhyT3hnRHVvVVlta0YySVBKNFpwR1NCOExDVlUzRjI3VjBzQktPS2pmM0tI?=
 =?utf-8?B?eGxTaUJ5VDczVEsvQXoyRURpZVRwRjdaMG9UMnAzOWV1dlVQQkxlQmJUQ3Zq?=
 =?utf-8?B?aUhqd0EyYm1ReDRaOE9Sc3MwUXJmNmlzM2FNL3RKbGF1RDVUa0cyOU9zY1I4?=
 =?utf-8?B?bno5WkxrZnBSRHpoZ0QvRmkwL3kzc1RnVjg3Y3hNTVcwRmhyWFovdXpnUHBi?=
 =?utf-8?B?cTFYVWhNaFBBMnRkMERDVGdEY2M0ZlRVLzBqY1pOWXlpVzdCNlZGNmFsQlNR?=
 =?utf-8?B?MWYzMWJONTZMbUttc1dVWjF0cmdiL3lkNHBUQXdqM0hEcGZFcHVuL253M0po?=
 =?utf-8?B?TzhUK1FCZjFxMitxaGo4SEpieGE0cFhWU0FGNVUyeXRkYVZhaFFNOGp4M09w?=
 =?utf-8?B?OTd0Y3A4bUdiNFlMUFg4L3VDRjI5bkpMM2Q0SWlOY0dRMXRmUzJ0VWs4bm1D?=
 =?utf-8?B?cXhqbGVhYnRjallMM3ZiNFNWdnNxNm9wZjg2alppT0NRdzRObmE1N1p2cXh2?=
 =?utf-8?B?bWs0SzNQMExQRit5TEhtcFJBdklzckdUT2daREZBK0RPMnBpY2YrY05Ndm5R?=
 =?utf-8?B?am9wZFRsbFZQSDZBNlN5VUpnL1puTGZISlpKQzFaOWxmSHpWeGRqeStmTGdY?=
 =?utf-8?B?UkN6Z21peEw2aURDS3VYZUhtekY1OTRPMllhMEVCTDk5TUNCbHNGeUpKNmlD?=
 =?utf-8?B?b1FCRnJRMDB1TEMvdldUQ3Zod0F4ZDUyUFFMd0tkbDRyeEZibXdhb1VKMkdU?=
 =?utf-8?B?T2hCbVpnS04zOFlLZm44TFBWRzlvT2NhM1lwc3F2N2lOVUg2WUZkbE52cUdC?=
 =?utf-8?B?ZGJFanVhWHhLa2R0QmFMTkJZVW1vcngvVmZkTUoxNzQ3d3kzOHI2VWZVUzU1?=
 =?utf-8?B?bFBzRWpDbjUwamFZeGQvTHQvMU1RMUo5VEF4YkdkNlZlenA5TEtxMktUdksv?=
 =?utf-8?B?VmJHelo5NlFHZEJVaDczQ1hMUXdYM0Jib2FLUjVRMmhHbWh6MGJ4Unpkb242?=
 =?utf-8?B?Qy9JdkZkYmMxQjJZQnlvWEFRVkJYRzZPVXpFQ01TTVBqMWhwZVQ1VTBKQU5O?=
 =?utf-8?B?UEQ4VS9vYy8rUEtkc1hXbEo1cGxxU01pcENjRksyNE96L0hDMmtldnhQRkhK?=
 =?utf-8?B?b1B3ZWdJbVl0cEMxejRsbzczS1NuTm56U1lDVU83cVZ5WmtVeWRpY3JFZXZ6?=
 =?utf-8?B?bUhCZUJ1dmsrRVFEVzZIdUdwN1pad2VJcjdMOEdEbERmV05wNU56UDFQdnJS?=
 =?utf-8?B?TnUwcERMK2lpeFBHRkhZak5KeHFuWDV5VUF5bEpLVlovRTRxbHVEYTM1Nzk5?=
 =?utf-8?B?WGZRV1JlOFVJdlpoaWJMaStFR0V4eGdHeVl2UG5veU9ISW5CcE9PTVduVjRw?=
 =?utf-8?B?QlNUVG9ZbmpsQVJNWEZHTExSaG1nQkpJajVGSVB0MEVHT0JIdVV4aDBOL3Av?=
 =?utf-8?B?d1doQTFlNUpsMllQSWJHTEZQNkFJdU5XWWFnMW9pVXZBS3lBdWlWK0pEZkk0?=
 =?utf-8?B?MHhlVGNEREZEeDM2L1hvbHRTTFpZaHBweVVrckx6eVRtTURYYnVtS3ZtZWNU?=
 =?utf-8?B?cFYxYTc3dGlLUW9VTmxoWjQ0Sk9ueWdEUG1Fc3haMytDRWV5eEdVV3FnZ0Fw?=
 =?utf-8?B?bXNBWXVTNjZqdmdPM3dQbVdEdmxqeHpVcFdmcTIrNGhTY1pLekp1M3cwOU5a?=
 =?utf-8?B?bkFBd1ExVm8zV1dab3VNRHN4Z3VQVTQ3R2l3bWhaOVB2WW5ibkhINlVOQ2xH?=
 =?utf-8?B?OXhmREh3OUFHZHd2THhubURQSTlvN1ZMZW80V0N1VnIreTVmcFhOYlZidnJv?=
 =?utf-8?B?djV0SzZ4aXN6OCtvdXgrZE5NdmN3bTdrekJSQlhjbVBnSlU3Qk1EaDdiYnZT?=
 =?utf-8?Q?sKLzayB9fuXmBRroF7i8GMH+98zq523k/R7ZZnRTJHKd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27460a05-c6f7-4d5d-82d0-08dc602914e5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 04:27:53.9745 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gJEBvZl3gD3AIqEicAECH1+Dw+kVYHhVstqjYjHVGiPXNBnL2CrxmFH90ZD9Dv1z86jTXzT2ptruGS4pNDPuQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5328
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
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDIvNl0g
ZHJtL2k5MTU6IFJlamVjdCBhc3luYyBmbGlwcyBpZiB3ZSBuZWVkIHRvIGNoYW5nZQ0KPiBEREIv
d2F0ZXJtYXJrcw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gDQo+IEREQi93YXRlcm1hcmtzIGFyZSBhbHdheXMgZG91YmxlIGJ1
ZmZlcmVkIG9uIHRoZSB2YmxhbmssIHNvIHdlIGNhbid0IHNhZmVseQ0KPiBjaGFuZ2UgdGhlbSBk
dXJpbmcgYXN5bmMgZmxpcHMuIEN1cnJlbnRseSB0aGlzIG5ldmVyIGhhcHBlbnMsIGJ1dCB3ZSds
bCBiZQ0KPiBtYWtpbmcgY2hhbmdpbmcgYmV0d2VlbiBzeW5jIGFuZCBhc3luYyBmbGlwcyBhIGJp
dCBtb3JlIGZsZXhpYmxlLCBpbiB3aGljaCBjYXNlDQo+IHdlIGNhbiBhY3R1YWxseSBlbmQgdXAg
aGVyZS4NCg0KUmF0aGVyIG9uIGdldHRpbmcgd20vRERCIGNoYW5nZXMgc2hvdWxkIHdlIHN3aXRj
aCBmcm9tIGFzeW5jIHRvIHN5bmMgZmxpcCB0byBob25vdXIgdGhlIHdtL0REQiBjaGFuZ2VzIGVs
c2UgbWlnaHQgZW5kIHVwIGluIHVuZGVycnVuIG9yIGZsaWNrZXIvY29ycnVwdGlvbi4NClNwZWMg
aXMgYWxzbyBhbGlnbmVkIHRvIHRoaXMgYXBwcm9hY2guDQoNClRoYW5rcyBhbmQgUmVnYXJkcywN
CkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQoNCj4gDQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMgfCAxMiAr
KysrKysrKysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMN
Cj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBpbmRl
eCBiYzM0MWFiY2FiMmYuLjFmYTQxNmE3MGQ1MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTI1NDAsNiArMjU0MCwxMiBAQCBz
a2xfZGRiX2FkZF9hZmZlY3RlZF9wbGFuZXMoY29uc3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3Rh
dGUgKm9sZF9jcnRjX3N0YXRlLA0KPiAgCQkJCQkmbmV3X2NydGNfc3RhdGUtDQo+ID53bS5za2wu
cGxhbmVfZGRiX3lbcGxhbmVfaWRdKSkNCj4gIAkJCWNvbnRpbnVlOw0KPiANCj4gKwkJaWYgKG5l
d19jcnRjX3N0YXRlLT5kb19hc3luY19mbGlwKSB7DQo+ICsJCQlkcm1fZGJnX2ttcygmaTkxNS0+
ZHJtLCAiW1BMQU5FOiVkOiVzXSBDYW4ndA0KPiBjaGFuZ2UgRERCIGR1cmluZyBhc3luYyBmbGlw
XG4iLA0KPiArCQkJCSAgICBwbGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFuZS0+YmFzZS5uYW1lKTsN
Cj4gKwkJCXJldHVybiAtRUlOVkFMOw0KPiArCQl9DQo+ICsNCj4gIAkJcGxhbmVfc3RhdGUgPSBp
bnRlbF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKHN0YXRlLCBwbGFuZSk7DQo+ICAJCWlmIChJU19F
UlIocGxhbmVfc3RhdGUpKQ0KPiAgCQkJcmV0dXJuIFBUUl9FUlIocGxhbmVfc3RhdGUpOw0KPiBA
QCAtMjkwNiw2ICsyOTEyLDEyIEBAIHN0YXRpYyBpbnQgc2tsX3dtX2FkZF9hZmZlY3RlZF9wbGFu
ZXMoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJCQkgJm5ld19j
cnRjX3N0YXRlLQ0KPiA+d20uc2tsLm9wdGltYWwpKQ0KPiAgCQkJY29udGludWU7DQo+IA0KPiAr
CQlpZiAobmV3X2NydGNfc3RhdGUtPmRvX2FzeW5jX2ZsaXApIHsNCj4gKwkJCWRybV9kYmdfa21z
KCZpOTE1LT5kcm0sICJbUExBTkU6JWQ6JXNdIENhbid0DQo+IGNoYW5nZSB3YXRlcm1hcmtzIGR1
cmluZyBhc3luYyBmbGlwXG4iLA0KPiArCQkJCSAgICBwbGFuZS0+YmFzZS5iYXNlLmlkLCBwbGFu
ZS0+YmFzZS5uYW1lKTsNCj4gKwkJCXJldHVybiAtRUlOVkFMOw0KPiArCQl9DQo+ICsNCj4gIAkJ
cGxhbmVfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X3BsYW5lX3N0YXRlKHN0YXRlLCBwbGFuZSk7
DQo+ICAJCWlmIChJU19FUlIocGxhbmVfc3RhdGUpKQ0KPiAgCQkJcmV0dXJuIFBUUl9FUlIocGxh
bmVfc3RhdGUpOw0KPiAtLQ0KPiAyLjQzLjINCg0K
