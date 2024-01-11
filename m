Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B12D82A7E7
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jan 2024 07:53:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6306810E6BA;
	Thu, 11 Jan 2024 06:53:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D3B4110E6BA
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 06:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704955993; x=1736491993;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=zjED3N3dPKiuXfq47JBvZlULpT+T/XyZUqe9Lw/YvnU=;
 b=NHCEvOwF4q6KDVEpN7Ocuwb3yxj7aKWJS7pX78ODZGMJKIGn95rEwQuW
 YjvVj4e88WoObxx8tD+BmY5j71heWPVz97a9w0sEl8USRdlEz1VMyP+5b
 orEf0cI5uqHSZbM5XhRVA2YyNb1gTq+5cphm0L2JO/zM/rTflXCEMU6lb
 R6trrEjiYzlZff4fGRK45w03oeV5QKsy8kgkA3z4SNdS1M+bcd5qi4cv0
 bwacC6QhLDRjC1L0b+0uo5bZ0KOERyMm3kfmWfyswpeh9aFX4BbZCj68E
 RYj0mbfu9m3gYcaaugI6Yu5u/Ygi0uWYPrahsHTCtiqXM040tDtxsAER8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="395906162"
X-IronPort-AV: E=Sophos;i="6.04,185,1695711600"; d="scan'208";a="395906162"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2024 22:53:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10949"; a="905839698"
X-IronPort-AV: E=Sophos;i="6.04,185,1695711600"; d="scan'208";a="905839698"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2024 22:53:13 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 22:53:12 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 10 Jan 2024 22:53:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 10 Jan 2024 22:53:12 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 10 Jan 2024 22:53:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SueqqyOENi2flOso3mncGSIVN6BMxiDQkzYsLy27gRST4XZl03RqLpi830/X1h1irnAqrVCULxitUvpwbtWqbkrhUtiU6slu0jFwD/Eh7o+3p36riL9ft5MlIjjniQUePqzNAqeWe7nph9dQA6n9JO//CxuLWifOvgWoi6wMej1UTNAXgNdd+GITFgHReUcW9y0ReOQU2kOB2S+ZD2W5IkyERBmh1Tjq3b1q9w+BZOb0WH788CtXcieWovNaFxh2fsKVPAthA05SgRpBdFPOK8bcqK4fy9LTixm1Mzx9szlICvhHvCx5EvNfFd2Czfi+sinlWhvmNd2Ng0uaVM8iHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zjED3N3dPKiuXfq47JBvZlULpT+T/XyZUqe9Lw/YvnU=;
 b=XqlZjLKHAx3QFSTUl3JlTVKKGoJU1BRxkj1XMHNLnT5c2B2ztGD0mpGRgg1KXArzIL+R+hiG3Iy89zQuRigtjmG+pzqUovyLKuqb/ZfBoUpWxIXu+0I659DTGbUW4RGOM+4va99UeJ8JDgMnPxj64PeRsOKar3gAbj7CQcYifdRAStntkC/5qmNhUbGMNtshURJCXHIGLFnfmhnmq0gBhcsVSKdSYdGKeXbyAa/R2LvH5BW5Z1w8lOKR/0dqEdRfWDqUFGyFEV6f05mHYZoPAHbpA9CB22YUiojFnmk6VIkI19xNzbT5uFFOr0H5op73G46Hu1sSfMJNMZCGnR92IQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ1PR11MB6273.namprd11.prod.outlook.com (2603:10b6:a03:458::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.21; Thu, 11 Jan 2024 06:53:10 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.020; Thu, 11 Jan 2024
 06:53:09 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 03/13] drm/i915/psr: Do not check alpm on DP or
 capability change for panel replay
Thread-Topic: [PATCH v2 03/13] drm/i915/psr: Do not check alpm on DP or
 capability change for panel replay
Thread-Index: AQHaQ8bSKjsFm+7b0UCKKphZh4K0PbDUI24AgAAKrwA=
Date: Thu, 11 Jan 2024 06:53:09 +0000
Message-ID: <794c5bdc439b38ceccfdeb23c18257f8328cf272.camel@intel.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-4-jouni.hogander@intel.com>
 <PH7PR11MB5981A68EA2A257D060FE13BAF9682@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981A68EA2A257D060FE13BAF9682@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ1PR11MB6273:EE_
x-ms-office365-filtering-correlation-id: 4f57dac0-f032-4e6d-5faa-08dc1271f90f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Lbq2PzfXHPTZymXzdhXzGOhaIwNosGH4b9vg7O9m5TEgbmfXNsGeelQeIhlqrhd1eF0EN7ySeLh2pg3Gklw60gRR1FLzQ4B7d8mgsEfFMRw8Z/6H11bw+FTacnh98SVTfNYHFLnM1uAtoc2FKCmF6Q9TpsU3aOgF6txJbzKKxsLteOzzb9CZJUFdirUuToNcFrWn1oW2o+7cm5U4ab1AQSWbAptMQSpixnoz1zEyUCnPd3BGyQLJTstqh0sSOtkQvSJ+gqFvPbpmPBRgsMsEhWI71EEvgq0X7aAg71QuRl54hgUMexmErgaqf0Ky9p0SUTaD1HfEYpLE4tG3nTMZTPkb+J+IOc0M3iqbJnHkbI1ReCFYBSz3LuLrM73tv3l3ccAInYi1zr9jJ/RuxIY8VWpIzUleeC17ZRx6eB0jiPMue+frP/YQ+JLgOjmaCQEnHxThOluoadkMlqZ49xgcoODE+ahozagAT1CFq63YoI24OyBM+EiV93skN/jIBsqMWTB+rHvrS3HeEPeJfSkcRM/NmT54xtR1w6gTjyZc8MlFHKvrrjcW8bkNrStU0YMu2lEYwbJEB0cZ4tFvcqbsh+AoDbG4aOOVYCDkpeO4sSTftcEYAgraD2e3Twh2Qnbw
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(39860400002)(366004)(346002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(36756003)(64756008)(2906002)(110136005)(316002)(8936002)(8676002)(66556008)(5660300002)(122000001)(66446008)(38100700002)(38070700009)(82960400001)(86362001)(66946007)(41300700001)(76116006)(91956017)(66476007)(6486002)(26005)(6512007)(53546011)(6506007)(478600001)(71200400001)(83380400001)(66574015)(2616005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bEZHQkRiN21CMzU2N3V5KzRLUnlPQTl6dHBsVllKbXNnWmNmd1J0dVk0NXlF?=
 =?utf-8?B?R1hvazZIZ2UydWM4dnFEYlJZZldjY0ZUYVpUVnRFbk9DcmJlaWN4T0FLa21x?=
 =?utf-8?B?dzcxYUY4QldDL2J1d0hHSHBOWmxXMUtGOHA0WVdxUThnYWpGWkp0cEFmQWgw?=
 =?utf-8?B?RC8rSDMxTE9hQk9ra0g1UjZuM29taXB0ZE10RjlMdC9KY0tmamh0eVltU3h3?=
 =?utf-8?B?K2ZPMlRhSURWeVg2S01idVpuWkdJMFZXanQ4OCtrY0NwWmNaMGFtNFExY2xP?=
 =?utf-8?B?Nko4MnVVaVdZdVhoTXNWRXpXUk1SOGRheWhMRVR6TlZoSUh5MGJqc2RnejN5?=
 =?utf-8?B?cGpObnlDZE13cVN4Yjh6dkVzaEtPVE93Y0xQRWx2TTY1YUFJSUN1UDV1L2Vv?=
 =?utf-8?B?Q2JwVnhxR1kvSis2NWMzSGFTSmJKTjZBOGxIaFh2RHBSUWtqaEVDUTFYN1V4?=
 =?utf-8?B?V3NXYnBFS3dMRlhsTUZqUkN4dDBNYUxPSENTS2E0Z0pmWWJTWm1LSTlTNnJj?=
 =?utf-8?B?SGZUV1BjSk04ZmprbitZeEhmSSt1L3VMRXZuQi9xYkhCOFphczRrWGRLdUNH?=
 =?utf-8?B?YnFqb0N5ekxBS1FBYmZKMnB0NTlZeFBZVGZEbFFoMUQyblNEVVVLWVJjczBU?=
 =?utf-8?B?Kyt3Wm91N0ovQ1NzNENJWjdvMURlVWVscGlqeFZKVTZ4dVFWdWJpMmNKckdS?=
 =?utf-8?B?UmEwNklheUFWL0NpTW5FUG8vdGM5SHRrdjZ4czFldkpLa2duNU5FY0hxQlBB?=
 =?utf-8?B?RGFXM2E0Y1NqWVN5Nkl1NEFYOGsvYktVWTF4NWZZSzZ6cEhhRklFWUU5c2Vn?=
 =?utf-8?B?bVIwcE11Y1JSS1JyZGZQY1J1NW0waGxvVDA5N01jeEhub296R0thQXFLb0Zq?=
 =?utf-8?B?UTVtVFJpTUpEeXg5WkNjQjRHMy83OG1kQU9tOUJ4K2Npc0V6U1lLR3dHcnJF?=
 =?utf-8?B?cU9iNktGMHV3VlZXUmJ4bFA0STFiZWRISmRJWmMvNjBNNHpyTXFWVCt2cnh4?=
 =?utf-8?B?Y0x4Ri9MbnVJUlNOR05hbVJJdTYyeU01TzUxNno1T0xEV3RPcERQRWpmMTl4?=
 =?utf-8?B?UTNrTEJ6YVByVXlkZnlKUG45REpiQTZTbzJJY3d6ZTRPM2tuUlQ3MnYvbXJv?=
 =?utf-8?B?NnBpbXNmdkRSdlJnM3JSem4vaTZkbTVpTWZWQzRQOUdrZVVBN0ZzaStsU1Mr?=
 =?utf-8?B?dGpWL1FuaTk1c3NzNmZ5OXI0V0JTVWViZXJTYTh2OUxhamd0a2pTY3NCZlhj?=
 =?utf-8?B?SnExNmpOUWRHcURDMXg2NGRtZm5VTmVyVjY5aHVjc0VzeldvejNSQm5FZmNL?=
 =?utf-8?B?ZGRLaHIrTkVEUjN5QjRkWDNGTG14L2hlTTJ1dXJMUzgvNStNcXhXL2d3cVU1?=
 =?utf-8?B?R21WN2hiMDFuajJpZ2tWTTRJSXIwenc2OFNnYkxKUVJIZEV0SFVVeXZ5UnpD?=
 =?utf-8?B?S3RNT3RtdEI3bUJPTGJHTjZWUFZmamRQdmZXQmU2YjVCSGZFVFU5S2R3c09T?=
 =?utf-8?B?eTdHTDZXLytXQkxJdWZNejdRZHZsbHd1cFNLU1RrdzJvT0hMUDZoU01RSjVu?=
 =?utf-8?B?OTFjR1gyMDh3NnhhV2xMaDZiRWdDUk5WV1FtaXRmeFB3aGFFY3QrUTdjQTRn?=
 =?utf-8?B?cU5xdHE3U2d6RkVXTGtqVFdjT3owaHhaUDBpOWJlT2JuL0dkSE1pQ0NaYzc0?=
 =?utf-8?B?amRaR2w3Y0RZR3V3SVF3YmZlaEUvMkJoaExNdjd1bE9NV1orcHhtenpVL3lu?=
 =?utf-8?B?ZTlqVVA1NHpZTGFsWUExM0FuNzRjM1BwNTZvRFFPbjZ1empwMi9udU1xaDRI?=
 =?utf-8?B?TDFNMi9pWkZGTHA3SkNIRVkzWUdnLzNNRklxZ1ZiR0tSd2xXenJnQyt2eVBC?=
 =?utf-8?B?Tm40dEIyM1FYQitUVWlrL1JQZ1YyY2VCS00rMS80cnRsb3Zsa2wyYnRFVEJw?=
 =?utf-8?B?MU0wNjd6Y2xHVjV1V1FFbXo4UmhEdWVzZ1ArUGZGUko4SE9yQ08zTlpHMHVz?=
 =?utf-8?B?RjA3WWo4TjdUVU43cWh5UlI2b3V3WWgwbDNZNmpQNHFoRUo5b3hiN3FNZzR3?=
 =?utf-8?B?SzlPZEhmblcyZktBbC9SeXZHTG5DbW1Wb1dmKzM1RTdyZ25tTGplNHJrOEZz?=
 =?utf-8?B?RlZQME56Y01VUllVVDA4NThvNmYwWGhScjMzaUhodE13VTh2RHJubXpuWGpR?=
 =?utf-8?B?SXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9C761200F74EC046A601844AC3876B53@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f57dac0-f032-4e6d-5faa-08dc1271f90f
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2024 06:53:09.8888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Eg2HtCzLfDDlPinCKTIfTC+JJew02VLx8DqByOr02/x7fhsyGaUceCj0QEf6jZ4aC4Hgf3ztUo1hz8n5/oAIp12uHC2sZ5Y2sUsnKdKDuz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6273
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

T24gVGh1LCAyMDI0LTAxLTExIGF0IDA2OjE0ICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0K
PiA+IE9mIEpvdW5pDQo+ID4gSMO2Z2FuZGVyDQo+ID4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5
IDEwLCAyMDI0IDY6NDMgUE0NCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiAwMy8xM10gZHJtL2k5MTUvcHNyOiBEbyBub3QgY2hl
Y2sgYWxwbSBvbiBEUCBvcg0KPiA+IGNhcGFiaWxpdHkgY2hhbmdlIGZvciBwYW5lbCByZXBsYXkN
Cj4gPiANCj4gPiBBbHBtIGlzIGVEUCBzcGVjaWZpYy4gRG8gbm90IGNoZWNrIGlmIG5vdCBlRFAu
IEFsc28gcGFuZWwgcmVwbGF5DQo+ID4gZG9lc24ndCBrbm93DQo+ID4gYWJvdXQgY2FwYWJpbGl0
eSBjaGFuZ2VzIC0+IG5vIG5lZWQgdG8gY2hlY2sgdGhhdC4NCj4gPiANCj4gPiBTaWduZWQtb2Zm
LWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0N
Cj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA3ICsrKysr
LS0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
DQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gPiBpbmRleCAzZTI4N2E5ZjBlMDkuLmE5NDIxZGQwOTJjNSAxMDA2NDQNCj4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBAIC0yOTg5LDggKzI5ODks
MTEgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwDQo+ID4gKmlu
dGVsX2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBjbGVhciBzdGF0dXMgcmVnaXN0ZXIgKi8N
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZHJtX2RwX2RwY2Rfd3JpdGViKCZpbnRlbF9kcC0+YXV4LCBE
UF9QU1JfRVJST1JfU1RBVFVTLA0KPiA+IGVycm9yX3N0YXR1cyk7DQo+ID4gDQo+ID4gLcKgwqDC
oMKgwqDCoMKgcHNyX2FscG1fY2hlY2soaW50ZWxfZHApOw0KPiA+IC3CoMKgwqDCoMKgwqDCoHBz
cl9jYXBhYmlsaXR5X2NoYW5nZWRfY2hlY2soaW50ZWxfZHApOw0KPiA+ICvCoMKgwqDCoMKgwqDC
oGlmIChpbnRlbF9kcF9pc19lZHAoaW50ZWxfZHApKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBwc3JfYWxwbV9jaGVjayhpbnRlbF9kcCk7DQo+ID4gKw0KPiA+ICvCoMKgwqDC
oMKgwqDCoGlmICghcHNyLT5wYW5lbF9yZXBsYXlfZW5hYmxlZCkNCj4gPiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgcHNyX2NhcGFiaWxpdHlfY2hhbmdlZF9jaGVjayhpbnRlbF9kcCk7
DQo+IA0KPiBUaGVyZSBpcyBhIENBTl9QU1IoKSBjaGVjayBzdGFydGluZyBvZiB0aGUgZnVuY3Rp
b24NCj4gaW50ZWxfcHNyX3Nob3J0X3B1bHNlKCkgd2hpY2ggd2lsbCB0YWtlIGNhcmUgbm9uLWVk
cCBhbmQgcGFuZWwgcmVwbGF5DQo+IGNhc2UsIHNvIGRvIHlvdSBzZWUgYW55IGdhcCB0aGVyZT8N
Cg0KVGhhbmsgeW91IGZvciBwb2ludGluZyB0aGlzIG91dC4gV2UgbmVlZCB0byBydW4gaW50ZWxf
cHNyX3Nob3J0X3B1bHNlDQpmb3IgcGFuZWwgcmVwbGF5IGNhc2UgYXMgd2VsbC4gSSB3aWxsIGFk
ZCB0aGF0IGludG8gdGhpcyBwYXRjaC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlciANCj4gDQo+
IFJlZ2FyZHMsDQo+IEFuaW1lc2ggDQo+ID4gDQo+ID4gwqBleGl0Og0KPiA+IMKgwqDCoMKgwqDC
oMKgwqBtdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gDQoN
Cg==
