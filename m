Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E0750712725
	for <lists+intel-gfx@lfdr.de>; Fri, 26 May 2023 15:01:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 50FE010E1A6;
	Fri, 26 May 2023 13:01:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 962B710E1A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 26 May 2023 13:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685106068; x=1716642068;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=xAMxkVR8FO/fxlYq2q/BmB0P2Fr+tfXWk0wrSY9yTlk=;
 b=FLJ4sLFEzW8OaSOf+8qSSp0/NDsuLS2c43kaSb98Jl343pz9c7uaVn6S
 eF/Law1b0kQGuDCLHFT+OTUAmgQY/ZqFlNdo7JQ/AUMNNWbPfdUlG3GKq
 TN0Wm+vMOPzS0YO2WOtsZJrKmvoQtKt+LPMOzG/Qg4Hdey8y2tI/JcGFS
 rfIVTpPsTWVaoJ9I6vGqpkhx0Q+8dzwraY2e17J8D6JF0cY5+2aTm1Xkj
 0cLbDMwJKtnj88DdTI18GV2olHsrgpDZrOwEJ8DqGieAbr+TJD6/QLvUr
 e/DyzNOyteC5Y3Q3vVC6//CY/xSANcG72pkOv2luHlUggPyiC2X5Of9gU Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="417680309"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="417680309"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2023 06:01:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10722"; a="829507855"
X-IronPort-AV: E=Sophos;i="6.00,194,1681196400"; d="scan'208";a="829507855"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP; 26 May 2023 06:01:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 26 May 2023 06:01:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 26 May 2023 06:01:06 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 26 May 2023 06:01:06 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.44) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 26 May 2023 06:01:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JSRVH9byM9DyYeHahnIkxXOrcK+hSDNxbR7ier6GE46B3OD+pfBaxTMJc8i9Qr+mZidLhmn3hXPtvZk3oFJ7ymefDRtLQ+A+XIiok9m9U4AhZsDV/fIUE/8KmFtQEwpIlNkLyHQztJXVsZoUOxPWE48u/ZnRkjuHF/QgfiwwplP0QitoVwTPtwvXLA8i94arjkxdsLaxae36hdQDvGy9r/vhwKyB2UrEbqFbwhuHl4IknnD+uvyEQAbqjJF1c3+b+Yfe7CmEDcXVJ72GizqyQTEq4BApZG7p82xdgtmREmYMKXFEQwpHh41nVOO+esKv+d1UYOHR7n809jFjynYjYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xAMxkVR8FO/fxlYq2q/BmB0P2Fr+tfXWk0wrSY9yTlk=;
 b=bcoCUy/ePmuVwmYRM4z1s2Gx4P4TITXK2vfz2QdHQhQhi3c/sDgo5MS6DNeuyVbscfpvZpcmhmvromH+GcYArTp8ICZPbnznuA4WdumnvsnWz1wFBLleYAjFiNbkdctLgLzv1alQVVhc7OgC9hdHtyE5NP/aaAhPmcAXdbZafiHwNtAecRhUhujN8q2+M/4ek/JR4sGR8XI4MmGw5vCWN/WZbtSCxZ/ZdnfB3MZQMLlq2pzsq6RKEO6cLgYjTNK7WrIgCmf9a204ccKtXYi1o0lHgswMLMqbRvOsYlpTxqos9KF6XO5vWVOJum7MIMj4gO56B8sG6AO5K2/LGJyxdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by IA0PR11MB7257.namprd11.prod.outlook.com (2603:10b6:208:43e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6433.18; Fri, 26 May
 2023 13:01:03 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::79ad:e9c0:80ea:201e%7]) with mapi id 15.20.6433.018; Fri, 26 May 2023
 13:01:03 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v8 7/7] drm/i915/mtl: Add support for PM DEMAND
Thread-Index: AQHZjxIp1YWFI3is4UqLKT/IWoCqoa9rDH8JgAAIMACAAXFrAA==
Date: Fri, 26 May 2023 13:01:03 +0000
Message-ID: <65032781752b8352acbedbfc9b0ff23112a1e108.camel@intel.com>
References: <20230524230342.411273-1-vinod.govindapillai@intel.com>
 <20230524230342.411273-8-vinod.govindapillai@intel.com>
 <168502360445.3319.5262709654872376821@gjsousa-mobl2>
 <CO1PR11MB49622FFEE558583ACB8CD5BFF6469@CO1PR11MB4962.namprd11.prod.outlook.com>
 <168502673063.3319.14912816760874614033@gjsousa-mobl2>
In-Reply-To: <168502673063.3319.14912816760874614033@gjsousa-mobl2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|IA0PR11MB7257:EE_
x-ms-office365-filtering-correlation-id: 0fc4394f-5933-4e7b-010c-08db5de94304
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: AfdVR2nx7J9ci6yJRMYJORGp1PJrfDVstyQO1xVnC//p5rCUvYEEmHO17b9CmyxHO1tbAajmyStczqxtvQDg5eI+KrzWaXPiIquEbRa88xaIoZ5geLzclwZtSf1v0+dLD44QpSGx079iBWhFJ7nK/ef8HjIH4W2X1dgLlWVIO5RK6ByHlHpTNdDMhBPHXuQ5PNlFeMvcZr5sDeY6JR9pB4Xw9R1ZK4reVRztm5lHg1uCXjXITZQD8JIRhFx5oTIj7Ueg1O+MUlRWbJKuqI6gr5ZCFW5eBo6EopGQQTfLfwg3SdGW+VjYTiDyFsO74C4OBV33GV0hZL6PueyXJZmCh5q65EYQTZUmBGTaUJyh14T4oV9Fj29JCjq7Evnd5YhScaB9OHozr+4xS0y9rsGyVOSU+4L29QZ87h6SeoGF1THWiLNyqnN/QtxrtLp+awqQu44FdLsN7Vd8aKVkuwVINL/0GXv3hvJxEz7SLPAanWJI1zoTAT3Azp5OXRnj48yg1g7c6p26btU5X2h9YvN1Nzv33R5HD4fE69/BQbVvpRmS8V/fg9IpNlp/k4WyIipnUbLXwjO2PzrsHcvEqHsGhX2nKQZifx1enY+QZL4WeNHHIUt1g/c2Yseko7r9nBkt
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(346002)(376002)(39860400002)(366004)(136003)(451199021)(2616005)(2906002)(4744005)(86362001)(186003)(110136005)(54906003)(6506007)(107886003)(36756003)(38070700005)(91956017)(5660300002)(66946007)(76116006)(66476007)(64756008)(66446008)(66556008)(4326008)(8676002)(83380400001)(8936002)(26005)(38100700002)(82960400001)(122000001)(316002)(71200400001)(41300700001)(6512007)(478600001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RUNuQldSZitydUlsMHp4VEdUdkd4aFo5R2ZhU3h6d3B0QmhST0t3Z1doaDcy?=
 =?utf-8?B?RTB4MDlSNXI5emg3MVRRZTRweGhiaGFLMnZPeDdsc1crQUtPbGw2UldJb1VD?=
 =?utf-8?B?cm9JUFdHSDZOUjExUm04NG5kK09zN3U3c3lsMXRtdkdRM2JGWjZ5V1YyMzNX?=
 =?utf-8?B?enk4bzQ5N3hUeHJTSlJZR1c5MGYvSkFBRkRMSjluZEdpTEUwWkM0MVVZYlY3?=
 =?utf-8?B?YUdSTDREcm5yNVBvT1p6TGJaSmczQjl0amY1enhYSlF0NUZDdjRwVStMSTlI?=
 =?utf-8?B?WlcvWkxvR054N3VvY3ZxUEcvdk94VkdycUYxWGNBRjA5Qjh6c01ydktCOTZJ?=
 =?utf-8?B?V25hUExJSUdXbldNT2tKRk9TMFV3Vnh1c215d1FCVnNmeGhJTWxnYVVjczJ0?=
 =?utf-8?B?TzRQdlZwTGNtbWl5TzlXeDNwcTVZYWZYZENEZzNPcUR0THdiZlNwR0prb0x6?=
 =?utf-8?B?aG9OUEd3UGVVSGtIM2xWYXhXM1lLUnVFMXZsZVJVZTIwN2ZURkV0Ly9hcVc2?=
 =?utf-8?B?NlFFcmRZN0NlemZidmtCYlZoUSsvems3WVBMcEw4Rmg4YWYrSGxvY0g4Y0I4?=
 =?utf-8?B?QVZoV1NDbEJGWTlDemdQVm5LSGM0cmY1c3pnMXd3TERpakZiWDM3TVcxbi9X?=
 =?utf-8?B?c09rRlpZbDJQT1BGZms3TjhWMjBvRy8zTXZlUlk2RlBOcnYweFdlYzVXSllr?=
 =?utf-8?B?N2h0K05pNFVlbXJ4MXF5NHdzNVEyR1IxcnlkNERWMjkvV0RieExqZWd2ZFJy?=
 =?utf-8?B?dlVsS2lSYmtPWUtMcGV4VGpwejVNUHF5bEFTOEJmaUgxQkVxTWhxdGt5MkRN?=
 =?utf-8?B?TUNkd000ekoySkhWcmsrMHFFV2NBSENtKzdja3hUQXprWkVtS0hLVkM0TFE0?=
 =?utf-8?B?WitQaXJueE9CRit4UHRucmdycXRIS1BlMWtiWlRua3Q3UytOc3lDa2VtamZP?=
 =?utf-8?B?eFpLUWNFZnVyU1cyaHBoRXVhekxyZVZnTXNLdXNwbXlnY0VyM204ZUhXQnRY?=
 =?utf-8?B?YjNwck1DSmRvR2lpT3UwQnp6Z1k4Q1J2amJkRDU1Ykl1cnVGNzhrUnhPVzFE?=
 =?utf-8?B?ekNnYzFKYTFmYWk2NzNmVG9uUllJUzQrNjZFdjZ1RnBudG81b09XT1JOMlNY?=
 =?utf-8?B?V0llYWlxNHVjekZvOE9hUjE5R25GWHRPOE5hdlBiK2NHMVNNZG1UZ0NQeWZ1?=
 =?utf-8?B?L1hhMjZ1Vzk3cElpN0VwWVlPQzJNNk1lbmZrUlQvaFgwSkJGR25Wd0RRYmNa?=
 =?utf-8?B?amFOWHk5ZmFoVFZFVUh4OHRlUUN3MlVYTTRoYURUTTNjM2dZQ0wxdUVWV09n?=
 =?utf-8?B?alV5R0QraTNjdHcvUklVMG5FRk43MzNYVmN0S1piL1lHNW1hVDhsRFFLYmIx?=
 =?utf-8?B?MGIzRzNLcEFWaVZJZER4b2J1TzVLTWFYT21TbG9hdFhUUW11TUNaRFhmQTRD?=
 =?utf-8?B?K1UxQzY1T0syMGlIb2kxQWVRM1NWRElISUVOK0RkdlZBcm54OHcwOHpmZ0tG?=
 =?utf-8?B?Um1pNE4rT2w3NmFhTnEzeDVHWUtxRDFwZjZZc2N3VVpTbER6OXRpcW01Y1Va?=
 =?utf-8?B?U2UvVDR4M3Bic1haVUY5dktvVG5wMXE5MndKTlRxcDRadlNtMndNYjZIdjlk?=
 =?utf-8?B?TmJGUkQyUW0vMEdzNzk1WjJiNGoyMUtjcGxwenRyMWdGYnFNaFN1cXN1NWdS?=
 =?utf-8?B?dEgwMVBVY294bkF4ejF6Q1gvSWxaZXI2NGVuMGdJTjl5VE9NaGtxVXVNTVQx?=
 =?utf-8?B?YWNLem5uS1VNZXZWUzNlVmFsSFVKdGgwWXJxN2pzZnViT0xEcjhCZUJKc21s?=
 =?utf-8?B?WlJ4Q3NJd1ZKU0hvRkpYajF4ejRDM3E4cUNRZUtRRWdyeXRIVkVkWWhZRTlZ?=
 =?utf-8?B?WjNMc1M1TUFORGhkL0dLS0NIZXJBb01YZXFDdWpDZnpRemNpNUJpVUtaT1hW?=
 =?utf-8?B?SXh3NlNlanZZYzRDL3NpdGtMdmxDYUc0VUpjYkZXNWFHZEFFZ3NzeWpUb1hi?=
 =?utf-8?B?SWE1dVFvUzQ2S1FxMFhXZTdIelcrUnJlQ0FTOWJ2MHdWSkFORThKNGk1YVFh?=
 =?utf-8?B?NGk0c1UrMUFuM2UwWFR1SVpwOEJER0pIdmtkOTE5cjczcnE4UmZwNE9VQy80?=
 =?utf-8?B?M1ZCcWNHeXgxbzlHV08rWXN1ajJMbit0M2dyamxPVW9sYjZpRCt5Vmx3SXFq?=
 =?utf-8?Q?q2TGIbelcoXLAvFuJekM2+I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1C281E60BDB468419F941160406EE1DC@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0fc4394f-5933-4e7b-010c-08db5de94304
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2023 13:01:03.6037 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7qoGFD+OVJI9MjVEx7VyzbyFGDBJk/SQjhGkoyEbZmlV3sfrBXrRVyd7+lPD5MiNpZZVhREdWz5rQnmFdTGyj3V7Jr4cc+0qUURhmEnaso4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7257
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v8 7/7] drm/i915/mtl: Add support for PM
 DEMAND
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
Cc: "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGVsbG8NCg0KVGhhbmtzIGZvciB0aGUgcmV2aWV3cyBhbmQgY29tbWVudHMNCg0KSSB1cGRhdGVk
IHRoZSBwYXRjaHNldHMgcmVnYXJkaW5nIHRoZSBzdHlsaW5nIGlzc3Vlcw0KSSBzdGlsbCB0aGlu
ayBwb3J0X2Nsb2NrIGNoYW5nZXMgc2hvdWxkIGNhdGNoIGFueSBhY3RpdmUgcGh5cyBjaGFuZ2Vz
Lg0KDQpJTU8sIHRoaXMgaXMgYmVpbmcgZ29pbmcgb24gZm9yIGEgd2hpbGUgYW5kIGNvdWxkIGJl
IG9wdGltaXplZCBsYXRlciBhcyB3ZWxsIGlmIG5lZWRlZCENCg0KQnV0IGxldHMgc2VlIGlmIHNv
bWVvbmUgY2FuIGNvbW1lbnQgb24gdGhhdC4NCg0KQnR3LCBzb3JyeSBhYm91dCB0aGUgc2NyZXcg
dXAgd2l0aCBteSBwcmV2aW91cyByZXBsYXkgZm9ybWF0cyAtIHdhcyB1c2luZyBwaG9uZSEhDQoN
CkJSDQpWaW5vZA0KDQpPbiBUaHUsIDIwMjMtMDUtMjUgYXQgMTE6NTggLTAzMDAsIEd1c3Rhdm8g
U291c2Egd3JvdGU6DQo+IFF1b3RpbmcgR292aW5kYXBpbGxhaSwgVmlub2QgKDIwMjMtMDUtMjUg
MTE6MzE6MDUtMDM6MDApDQo+ID4gwqAgSGkNCj4gPiANCj4gPiAoLi4uKQ0KPiA+IA0KPiA+IMKg
IENhbiBvbmx5IHRoZSBwaHlzIGNoYW5nZSB3aXRob3V0IGltcGFjdGluZyBvdGhlciBwYXJhbWV0
ZXJzIGhlcmU/DQo+IA0KPiBOb3Qgc3VyZSB0byBiZSBob25lc3QsIGJ1dCwgaWYgc28sIEkgdGhp
bmsgd2Ugd291bGQgY292ZXJpbmcgY2FzZXMgbGlrZQ0KPiB0aGF0IHdpdGggdGhlIHByb3Bvc2Vk
IGNoYW5nZS4gSU1PLCBpZiB3ZSBkZXBlbmQgb24gUEhZcyBiZWluZw0KPiBhY3RpdmUvbm9uLWFj
dGl2ZSwgd2Ugc2hvdWxkIHRyYWNrIHRoYXQgdG8gaW4gcG1kZW1hbmRfbmVlZHNfdXBkYXRlKCkg
YmUNCj4gc2FmZS4NCj4gDQo+IE9uZSBzY2VuYXJpbyBJIGNvdWxkIHRoaW5rIG9mIGlzIGFuIHVw
ZGF0ZSB0byBzd2l0Y2ggY29ubmVjdG9ycyB3aGlsZQ0KPiBrZWVwaW5nIGN1cnJlbnQgcGlwZSBj
b25maWd1cmF0aW9uLg0KPiANCj4gLS0NCj4gR3VzdGF2byBTb3VzYQ0KDQo=
