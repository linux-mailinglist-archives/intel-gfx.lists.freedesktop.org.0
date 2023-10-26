Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1F87D7F79
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 11:23:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3977E10E788;
	Thu, 26 Oct 2023 09:23:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812E210E788
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 09:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698312204; x=1729848204;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=6CKf1x26ICpTiXCuZod+O5DKgIfnh6LqeBu3tW8Ex3s=;
 b=c2TWNet+5jzr6GB94RsFgY1qHHWcQF6TMs7JEtPBAfwsKGVe7GQm3fWI
 4V1xkPeQmqu3M5cs7NED32X8i2kpCiacsYc7oz8Co1uDUI+Kz23nUwBSs
 c3rTTPtV3lwAzEYT0F6Wt9NKW/FVERF/AU9G/L6OsN3QrLSr1apRUSTvu
 JA1GjhXM90XKnWu4RhqoJvGmHvj1Ic86Pn41ch5E8FBBTKL8UXl5R0+gi
 ZOw3BQFs1BmtilIxDJkDjpUdy+ckwxtAlvzfKcX0pLTMbsL7r5yEESMAi
 mZkpeFQfojSYCFcUVEGKeM5AEoEwixFmp9iEjcVtnkl/zv25mJhvi/zfn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="377863935"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="377863935"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 02:23:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="752652416"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="752652416"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 02:23:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 02:23:19 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 02:23:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 02:23:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 26 Oct 2023 02:23:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ewU4WKRToYXNFDiPiMAhfXK1j0zmCrOh3oOeb65sRmKNOgl8k5ZFEgmrR/lNZHu/WkmluQBF1fO0PLkKFl/3VXDbQW1AHhdiVSJbUef0J0FuJDidVyrxVBoSIwbho0JsB7Mc8xWKIe8HB+jqKeZhnyvFaag20KTkiq2uY1OePx66RT+i83+tYmVSz7y4NVmqL3niQzDy3gc4PImOm8ClTrEUYqFHI/iUqDSHlc33KjJGw1Eanqmqnp6isYW3X/U2K+4JRK2w8xR4pTWXClFzsnDW59htKpOGNELJJG266KUoPw0IlmTVcCblrj0e8V5vnSWMV1673fic5wiNM8OMJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6CKf1x26ICpTiXCuZod+O5DKgIfnh6LqeBu3tW8Ex3s=;
 b=KXgIVQ69bMS2pVtO1lBiVcjMMn73qx/yWioDMCKHN56EXRzPVYMPAnVH4TzugaNBWxZ76vGO814qNFjLLWK2UwskODCzQRKPJzGql0kc6uiGqraJAPcgmAolYvYszKOwcgc3FO1yHsfYTF5vxolNP6cxj/9NQAwPL6gpBiGpzXq+9/R0/hqXIQmag1uMGhHGMChvVT90ICJfcbDLDwdpZY+gq1lL11d7ke8gCp7gha4ALivOhahy5sNq3mtrErhE1ULCfZFS3Nl7H6uwCSKIyYnIhnhgk03GKtOHqXJl6YFXThMMTHd8FZxUE0v6MyR7TlrJZPeG2YrUZk3afLLczg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV2PR11MB5976.namprd11.prod.outlook.com (2603:10b6:408:17c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Thu, 26 Oct
 2023 09:23:16 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6907.028; Thu, 26 Oct 2023
 09:23:16 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v4 00/23] Framework for display parameters
Thread-Index: AQHaBndu3UI+RP7W7EGVzNaBCbj/TrBbzygA
Date: Thu, 26 Oct 2023 09:23:16 +0000
Message-ID: <272d7ae21a5418fc0e0c04698e1cbde15befbad0.camel@intel.com>
References: <20231024124109.384973-1-jouni.hogander@intel.com>
In-Reply-To: <20231024124109.384973-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV2PR11MB5976:EE_
x-ms-office365-filtering-correlation-id: d5c5ab7e-9a2d-40cb-9607-08dbd6052f60
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QWxH2rG7XR/Kl91xyLqK1W5P640M1V1top9MU0EAYfcDBQc8/g4INNBaOAJH0/eDNgVKnS99eeBdLZv+vzS3+QHbkapwmabqMcCdJV10WiiDzEgNo8vIJBZPu6lGu1DvIFgQcu+5V6YxNFMCYbfLZE3aoCr4+jDhPgfFntqUqR5mGS5ta4LQUtWxUzmmnqhFfStKOXEdjoz4k2ZwNWmVnEhsdvbWBAsy8U5NquEEEmdlhCHzCExpCaJGCGclhBfXn8Mc6snjuS+MuyfTVRnOTltnFkQfuw/8CGSs+MPnbD389B1pPPsM5kFlcV2OBLNUF6hweB308q2/wg/V2l8alY4eunPobYsAFOI4CtV6+2+y2gslbUGAVvDMzp10zVPPN+8rI5sUFwrFcp6sF876jU2OC7JU6+w5g1bjmk6luzM8QG6LIP/Lri3nBIHEAsKHoByLRCoeZdf/XYf5ZfEUmPKCDVHHZJ8lq0epoGwOUROWVN8PNtGcOQv4Z2FYXr39BG5qZZTf4BbgEg1BNXnnpbO5o1CWLh4rsmjcJeLEb5WxDd7OfeCn6mgnnzBnmL4vxNlRhBiilUkRWrzKclvpFAUFTgGqlWPPMDDET8rxPcEl6sdSoAWHeljuZmhfbQBa
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(39860400002)(376002)(346002)(136003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(66946007)(36756003)(122000001)(2906002)(38100700002)(6506007)(316002)(82960400001)(2616005)(66446008)(478600001)(76116006)(64756008)(66556008)(71200400001)(54906003)(91956017)(6486002)(6512007)(83380400001)(66574015)(86362001)(5660300002)(4326008)(66476007)(8676002)(41300700001)(6916009)(8936002)(26005)(38070700009)(4001150100001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?andadlYyZEV0cnNtSzNOMmEyb3JMWnRpcGFSZWtZZXFhdytEUEc1TjhtOWFi?=
 =?utf-8?B?WEhIM1p0THdCdFhsbkk1WlpKbmRZL1ViTnFpK0pseWxvTE5MenhSNURjU0FG?=
 =?utf-8?B?eW1nNldBOG9vdzdkcU1scG4xclhRSEZ5RGdpakh2YkZmSGhTVVVtRTMvWFdG?=
 =?utf-8?B?aERyekhNUWhZK2VmQWJKekhDRVZWeXcwV04zSVJUK2oxZ0FDU1VQR0FEZzdm?=
 =?utf-8?B?NGo4SnE1SVBoMUVNRjYzNXg3VjRjdFFia0lYTGEyUlozUjZCbFFVOUpiVS9E?=
 =?utf-8?B?dHhpSitWN2lRbUNZTjBkOXducVBCSkVSMGFaVTNVelpzVWpmZVFHRG54M1Uv?=
 =?utf-8?B?akV0bkRMUjVaaDhrQXZZQmZhaVAvdzNvbU9LQko3ZjJYY1FVZnNqalIwVGVF?=
 =?utf-8?B?WTVEUHQyQWl1WDlZMS8zUzd1Q28wejVLTVh6NkIyckZKZ3hsWS9wY01hZ2x0?=
 =?utf-8?B?OUx0dmJLRi9LWjVPWjVKdS80SkEvNDZJMFJ6aXVNUldkNk5PbXZNcFNKMm1I?=
 =?utf-8?B?clZGd3lUa2pJOVJGTzN3SHdId2NHU1V2VHBRNEl0dStBQTVUTHg1dWxKU0xm?=
 =?utf-8?B?OGtqNHlzOVlKOFJUV09kYVo2VW0zZW5JbGgrbTZaOHJIMUhUYUNwNEJrUTVX?=
 =?utf-8?B?ejFaZExKL3JSa1FqU3hlNXgrWlIvaWlybjFFTFFTd0ZzTmMzcEtZTU52V1Mv?=
 =?utf-8?B?dGNaTEdjVm1mWFZENjBSN0xocjFFRmd3RUhQRjV1TjNFZ0hCZDV6U29XcEQz?=
 =?utf-8?B?R0N5MkI4RTFnR3FkSXo5enZMc1ZDM1NRb0xuTkFwbWF0QUJ4ZGFMS0Jrd2do?=
 =?utf-8?B?Y2k2aUtMZ0QyNzQ4RU1Qa3BLSEQzZ2JEb0Z1Y1Q1M1RVUTZGUkRXc01Fdyt5?=
 =?utf-8?B?T0ZqaXBOSHpaSXZSa1JCOWtPTlBweGRRcGdkbmErQUtLUTBqOXFmSERuK0pB?=
 =?utf-8?B?Sm9WVDlBY0lFUzZraTZwQUZHV0tpNjNhd0dlMHdObFlBVWtMeDRNZUZ5YXpC?=
 =?utf-8?B?UDNFUlZUNDAzWlRHOGtsNElJQmVvdDNNd3ZlOG9vajBBbC9nYkhlK3pWRnRh?=
 =?utf-8?B?Sy9nUTFrUFVvTjdIRk9xSkhqYk5mZjJERXRVMVp0VlVWS2Z5NU8vMnJjeU1P?=
 =?utf-8?B?SEJNK096bTZzbVVkcWdSK3lpZzdqQmJHMWc1NmwzZFlyMlhrSVB0TDdsbTBI?=
 =?utf-8?B?LzVSSTZVNDRqSXhkUXlZMHRNM2Y1c1pCU1NkVmJpVERPN0E1U2pMNndpOXlO?=
 =?utf-8?B?MUUrTE5qM29xOFB6K3RHaFNWYlZNSkI2ZkpkOWNySzdyamp1WkxYdEZBOTlo?=
 =?utf-8?B?MGlubWlhN0oyUFlRaU81THBUcHNsNGhmMjNtRHNYQmRlanRsMXA1SUIyVmZv?=
 =?utf-8?B?ZW16dE4vbnA0bzdjbVp6NWF6N3pyQjBnVTFrTWd3Yi9RdzgvOCt0MGxFazJs?=
 =?utf-8?B?czFWUlVhN0thMkZkOWFFcUpDM1ZSUUhzcGdTRWErSUl4TE1DTkNaK3dNWGVC?=
 =?utf-8?B?WS9ZaWlNcGJSVmhXWnExRGhTVE9EWFFpdmZFUDlrMVZZTU4rMmpTdEdYMkE2?=
 =?utf-8?B?c0ZKVmF4M1lxanRaV3ltMDVpYlNhbzRMeFJsY2gzbmt2VWZrNjdaZWxIODI4?=
 =?utf-8?B?YzNMQ3JhN2w2VGtyMGl0Z0ExM090M0lXQWVXMUJxUnA0bndYUDBWRGxjelZY?=
 =?utf-8?B?WXFvUlVBK0l4YWJRUHJlRVI0UGx3RFJyaGVRNUg0MU53emxQQ3BQTHViN1VD?=
 =?utf-8?B?dWp6aS9TYzFyWGd1a25zQ0ptS0VHQjJOK1orb2EycWd6THdXRzQwODdQQmdG?=
 =?utf-8?B?WjE4ZWxHZXhZNk1vaGcvL21nNTg4bXVJWkUwaVFKVGphUFZlOXowZXVTczI3?=
 =?utf-8?B?eEN6NXBsMmRpSTYvOGpCdHo0VFVXK3N1aFp5SCtDL1JYdmxZRnRYVVVnYlBO?=
 =?utf-8?B?eHVXK0g4MHZnR3I3cEdhbzdSNTVRR21xZnAyTFA5Y3hIUU0wM1piZFdXaEYx?=
 =?utf-8?B?NlRjRTFuSmZaRTd6QThGZDFJeVM3QWMxdDAxdWpSUzN0T1QzTDZycFlVUWxC?=
 =?utf-8?B?NVdsMjk3b0JuM0toV1EvalVhWkZKWnhEM2RjWjI1cWhNeEZzUjA4ZjBHQkF6?=
 =?utf-8?B?OGp5NDFxaWFNNEtlZ1A0ZklPaC92ampTNXFSMm5FZUlPSFVUYzJjSzY0amND?=
 =?utf-8?B?REE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1854778901A35648BB0A1E8F89FC5465@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d5c5ab7e-9a2d-40cb-9607-08dbd6052f60
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2023 09:23:16.0917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TZ7C75ohc5YKIG+qR1KaduNqXgmRRBrrH76LLBa9LJHaTPH8S3n7+Y+YlRAnzEYDEg8xSG8zTGiRPE33esgT2+2u9nkkcAXiFT+3O+kbA7c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB5976
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4 00/23] Framework for display parameters
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTEwLTI0IGF0IDE1OjQwICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IEN1cnJlbnRseSBhbGwgbW9kdWxlIHBhcmFtZXRlcnMgYXJlIGhhbmRsZWQgYnkgaTkxNV9w
YXJhbS5jL2guIFRoaXMNCj4gaXMgYSBwcm9ibGVtIGZvciBkaXNwbGF5IHBhcmFtZXRlcnMgd2hl
biBYZSBkcml2ZXIgaXMgdXNlZC4NCj4gDQo+IFRoaXMgcGF0Y2ggc2V0IGFkZHMgYSBtZWNoYW5p
c20gdG8gYWRkIHBhcmFtZXRlcnMgc3BlY2lmaWMgdG8gdGhlDQo+IGRpc3BsYXkuIFRoaXMgaXMg
bWFpbmx5IGNvcGllZCBmcm9tIGV4aXN0aW5nIGk5MTUgcGFyYW1ldGVycw0KPiBpbXBsZW1lbnRh
dGlvbiB3aXRoIHNvbWUgbmFtaW5nIGNoYW5nZXMgYW5kIHRha2luZyBpbnRvIGFjY291bnQNCj4g
dmFyeWluZyBkcml2ZXIgbmFtZS4NCj4gDQo+IEFsc28gYWxsIGRpc3BsYXkgc3BlY2lmaWMgbW9k
dWxlIHBhcmFtZXRlcnMgYXJlIG1vdmVkIHVuZGVyIGRpc3BsYXkNCj4gYW5kIHRoZQ0KPiBtb2R1
bGUgcGFyYW1ldGVyIGFyZSBhbGwgY29udmVydGVkIGFzIG5vbi13cml0YWJsZS4gVGhpcyBzaG91
bGQgYmUgb2sNCj4gYXMgd2UgaGF2ZSB3cml0YWJsZSBkZXZpY2UgcGFyYW1ldGVycyB1bmRlciBk
ZWJ1Z2ZzLg0KPiANCj4gdjQ6DQo+IMKgIC0gQ2hhbmdlIHZlcmJvc2Vfc3RhdGVfY2hlY2tzIGRl
dmljZSBwYXJhbWV0ZXIgcGVybWlzc2lvbnMgdG8gMDQwMA0KPiANCj4gdjM6DQo+IMKgIC0gQ2hh
bmdlIGVuYWJsZV9pcCBhcyBib29sZWFuDQo+IMKgIC0gRml4IGVuYWJsZV9wc3IyX3NlbF9mZXRj
aCBkZXNjcmlwdGlvbg0KPiDCoCAtIEFkZCBkZWZhdWx0IHZhbHVlIGludG8gcHNyX3NhZmVzdF9w
YXJhbXMgZGVzY3JpcHRpb24NCj4gwqAgLSBEcm9wIHVudXNlZCBwcmVkZWZpbml0aW9uIChkZW50
cnkpIGZyb20NCj4gaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzX3BhcmFtcy5oDQo+IHYyOg0KPiDCoCAt
IERyb3AgZmFzdGJvb3QgcGFyYW1ldGVyDQo+IMKgIC0gSW5jbHVkZSBkaXNwbGF5IHBhcmFtZXRl
cnMgaW50byBpOTE1X2NhcGFiaWxpdGllcyBkZWJ1Z2ZzDQo+IGludGVyZmFjZQ0KDQpUaGFuayB5
b3UgTHVjYSwgSmFuaSBhbmQgVHZydGtvIGZvciBjaGVja2luZyBteSBwYXRjaGVzLiBUaGVzZSBh
cmUgYWxsDQpub3cgbWVyZ2VkLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQo+IA0KPiBDYzog
SmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gQ2M6IFVtYSBTaGFua2FyIDx1
bWEuc2hhbmthckBpbnRlbC5jb20+DQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFJvZHJpZ28gVml2aSA8cm9kcmlnby52aXZp
QGludGVsLmNvbT4NCj4gQ2M6IFR2cnRrbyBVcnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5p
bnRlbC5jb20+DQo+IENjOiBKb29uYXMgTGFodGluZW4gPGpvb25hcy5sYWh0aW5lbkBsaW51eC5p
bnRlbC5jb20+DQo+IENjOiBMdWNhIENvZWxobyA8bHVjYUBjb2VsaG8uZmk+DQo+IA0KPiBKb3Vu
aSBIw7ZnYW5kZXIgKDIzKToNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogQWRkIGZyYW1ld29yayB0
byBhZGQgcGFyYW1ldGVycyBzcGVjaWZpYyB0bw0KPiBkaXNwbGF5DQo+IMKgIGRybS9pOTE1L2Rp
c3BsYXk6IER1bXAgYWxzbyBkaXNwbGF5IHBhcmFtZXRlcnMNCj4gwqAgZHJtL2k5MTUvZGlzcGxh
eTogTW92ZSBlbmFibGVfZmJjIG1vZHVsZSBwYXJhbWV0ZXIgdW5kZXIgZGlzcGxheQ0KPiDCoCBk
cm0vaTkxNS9kaXNwbGF5OiBNb3ZlIHBzciByZWxhdGVkIG1vZHVsZSBwYXJhbWV0ZXJzIHVuZGVy
IGRpc3BsYXkNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogTW92ZSB2YnRfZmlybXdhcmUgbW9kdWxl
IHBhcmFtZXRlciB1bmRlciBkaXNwbGF5DQo+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IE1vdmUgbHZk
c19jaGFubmVsX21vZGUgbW9kdWxlIHBhcmFtZXRlciB1bmRlcg0KPiDCoMKgwqAgZGlzcGxheQ0K
PiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBNb3ZlIHBhbmVsX3VzZV9zc2MgbW9kdWxlIHBhcmFtZXRl
ciB1bmRlciBkaXNwbGF5DQo+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IE1vdmUgdmJ0X3Nkdm9fcGFu
ZWxfdHlwZSBtb2R1bGUgcGFyYW1ldGVyIHVuZGVyDQo+IMKgwqDCoCBkaXNwbGF5DQo+IMKgIGRy
bS9pOTE1L2Rpc3BsYXk6IE1vdmUgZW5hYmxlX2RjIG1vZHVsZSBwYXJhbWV0ZXIgdW5kZXIgZGlz
cGxheQ0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBNb3ZlIGVuYWJsZV9kcHQgbW9kdWxlIHBhcmFt
ZXRlciB1bmRlciBkaXNwbGF5DQo+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IE1vdmUgZW5hYmxlX3Nh
Z3YgbW9kdWxlIHBhcmFtZXRlciB1bmRlciBkaXNwbGF5DQo+IMKgIGRybS9pOTE1L2Rpc3BsYXk6
IE1vdmUgZGlzYWJsZV9wb3dlcl93ZWxsIG1vZHVsZSBwYXJhbWV0ZXIgdW5kZXINCj4gwqDCoMKg
IGRpc3BsYXkNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogTW92ZSBlbmFibGVfaXBzIG1vZHVsZSBw
YXJhbWV0ZXIgdW5kZXIgZGlzcGxheQ0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBNb3ZlIGludmVy
dF9icmlnaHRuZXNzIG1vZHVsZSBwYXJhbWV0ZXIgdW5kZXINCj4gwqDCoMKgIGRpc3BsYXkNCj4g
wqAgZHJtL2k5MTUvZGlzcGxheTogTW92ZSBlZHBfdnN3aW5nIG1vZHVsZSBwYXJhbWV0ZXIgdW5k
ZXIgZGlzcGxheQ0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBNb3ZlIGVuYWJsZV9kcGNkX2JhY2ts
aWdodCBtb2R1bGUgcGFyYW1ldGVyIHVuZGVyDQo+IMKgwqDCoCBkaXNwbGF5DQo+IMKgIGRybS9p
OTE1L2Rpc3BsYXk6IE1vdmUgbG9hZF9kZXRlY3RfdGVzdCBwYXJhbWV0ZXIgdW5kZXIgZGlzcGxh
eQ0KPiDCoCBkcm0vaTkxNS9kaXNwbGF5OiBNb3ZlIGZvcmNlX3Jlc2V0X21vZGVzZXRfdGVzdCBw
YXJhbWV0ZXIgdW5kZXINCj4gwqDCoMKgIGRpc3BsYXkNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTog
TW92ZSBkaXNhYmxlX2Rpc3BsYXkgcGFyYW1ldGVyIHVuZGVyIGRpc3BsYXkNCj4gwqAgZHJtL2k5
MTUvZGlzcGxheTogVXNlIGRldmljZSBwYXJhbWV0ZXJzIGluc3RlYWQgb2YgbW9kdWxlIGluDQo+
IMKgwqDCoCBJOTE1X1NUQVRFX1dBUk4NCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogTW92ZSB2ZXJi
b3NlX3N0YXRlX2NoZWNrcyB1bmRlciBkaXNwbGF5DQo+IMKgIGRybS9pOTE1L2Rpc3BsYXk6IE1v
dmUgbnVjbGVhcl9wYWdlZmxpcCB1bmRlciBkaXNwbGF5DQo+IMKgIGRybS9pOTE1L2Rpc3BsYXk6
IE1vdmUgZW5hYmxlX2RwX21zdCB1bmRlciBkaXNwbGF5DQo+IA0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgwqAgMiAr
DQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9oc3dfaXBzLmPCoMKgwqDCoMKgwqDC
oCB8wqDCoCA0ICstDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pOXh4X3dtLmPC
oMKgwqDCoMKgwqDCoCB8wqDCoCAyICstDQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2JhY2tsaWdodC5jwqDCoMKgIHzCoMKgIDkgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Jpb3MuY8KgwqDCoMKgIHzCoMKgIDYgKy0NCj4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydC5jwqDCoMKgwqDCoCB8wqDCoCA0ICstDQo+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmjCoCB8wqDCoCAyICst
DQo+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfY29yZS5oIHzCoMKg
IDIgKw0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jwqAg
fMKgwqAgMiArDQo+IMKgLi4uL2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzX3BhcmFtcy5j
wqDCoMKgIHwgMTc2ICsrKysrKysrKysrKysrDQo+IMKgLi4uL2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eV9kZWJ1Z2ZzX3BhcmFtcy5owqDCoMKgIHzCoCAxMyArKw0KPiDCoC4uLi9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmPCoMKgIHzCoCAxMyArLQ0KPiDCoC4uLi9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmjCoMKgIHzCoMKgIDEgKw0KPiDCoC4uLi9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmPCoMKgIHwgMjE3DQo+ICsrKysr
KysrKysrKysrKysrKw0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFy
YW1zLmjCoMKgIHzCoCA2MSArKysrKw0KPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfcG93ZXIuY8KgwqDCoCB8wqAgMTQgKy0NCj4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X3Jlc2V0LmPCoMKgwqAgfMKgwqAgMiArLQ0KPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoCB8wqDCoCA2ICstDQo+IMKgLi4u
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5jIHzCoMKgIDQgKy0NCj4g
wqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwdC5jwqDCoMKgwqDCoCB8wqDC
oCA2ICstDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYi5jwqDCoMKg
wqDCoMKgIHzCoMKgIDIgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2ZiYy5jwqDCoMKgwqDCoCB8wqAgMTAgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2x2ZHMuY8KgwqDCoMKgIHzCoMKgIDQgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX29wcmVnaW9uLmMgfMKgwqAgMiArLQ0KPiDCoGRyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcGFuZWwuY8KgwqDCoCB8wqDCoCA0ICstDQo+IMKgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfMKgIDE0ICst
DQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jwqDCoMKgIHzC
oMKgIDIgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsu
Y8KgIHzCoMKgIDUgKy0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RlYnVnZnMuY8Kg
wqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfZHJpdmVyLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDIgKw0KPiDCoGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmPCoMKgwqDCoMKgwqDCoMKgIHzCoMKgIDMgKw0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfZ3B1X2Vycm9yLmjCoMKgwqDCoMKgwqDCoMKg
IHzCoMKgIDIgKw0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmPCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgIHzCoCA4OSAtLS0tLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
aTkxNV9wYXJhbXMuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfMKgIDIyIC0tDQo+IMKgMzQgZmls
ZXMgY2hhbmdlZCwgNTQ4IGluc2VydGlvbnMoKyksIDE2MiBkZWxldGlvbnMoLSkNCj4gwqBjcmVh
dGUgbW9kZSAxMDA2NDQNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2RlYnVnZnNfcGFyYW1zLmMNCj4gwqBjcmVhdGUgbW9kZSAxMDA2NDQNCj4gZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RlYnVnZnNfcGFyYW1zLmgNCj4gwqBj
cmVhdGUgbW9kZSAxMDA2NDQNCj4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3BhcmFtcy5jDQo+IMKgY3JlYXRlIG1vZGUgMTAwNjQ0DQo+IGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9wYXJhbXMuaA0KPiANCg0K
