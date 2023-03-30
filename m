Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3116CFCB0
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Mar 2023 09:27:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CBE10ED03;
	Thu, 30 Mar 2023 07:27:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D62EB10ED03
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Mar 2023 07:27:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680161266; x=1711697266;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=c0FBTdeuXWLD1CxhLjXXnNMOCkM3vDN1Dm9AeASQKjM=;
 b=M+/XGdLlUzY7cFKdUffdghJ+qJmlCuESoIZNzr1lOekTNo4D8A86xgpV
 CTpC8uloEdAouMmOrXc3dXb1bSNM3mjA8cJceSxPlMspTLeWEffejFsJ9
 TVoBrOp136PsipnGS1MF+cxxxaI2DU5zTJl60O0GnKgSlXh0C2Is16kee
 gAdiUJQEeBmud4upwf0H+dOO3CrNvA6m7NWFP6FAHvVHGwAMj62ejhk03
 oIQLD5PDZR5aZOcYQ3dUk7SHMZwLTpq1lhsorGGcyBTa7i+cw9lus2tdY
 feSwRZz37tA/kYkS3UYcdH9F8xdd29APgPlFvRdWFzsb7l3bp5mDS6KZg g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="321476833"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="321476833"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 00:27:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634764778"
X-IronPort-AV: E=Sophos;i="5.98,303,1673942400"; d="scan'208";a="634764778"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 30 Mar 2023 00:27:41 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 00:27:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 00:27:38 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 00:27:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c7Dj2R7VZzvUUtvzuAQjJ1bB0Ayn/lDQ6+bRwHevCYpILypFFqbTEWfMu/SQEwxpSSFd5PGa+Fe2hzbYONnIshgvXq3kKheXh741mXFMqZZY9JtnjklWrndOtG7Ap/I6/M5bYddZL/vtKHxJ4y/AsyTZE7/2EJy75jNGJ/Lc9rsztH/zJ5e5BylOWhFP/Gq6dLnUhZllGh08gmD2wrwO2dae2ksZqlyZsFAex7bOgvnpJfdoYnrnQGhd3FRpgWqv6mruPYBdYKLiu88uFxbVeF2hG7kGyMPK0g2qs4aYqUKQzDs7ISdM3f+5O0WzlT+qwmOBCNZK7iqMlCjTR2yrfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c0FBTdeuXWLD1CxhLjXXnNMOCkM3vDN1Dm9AeASQKjM=;
 b=TbpkHWQxcUhtS13m+q9egbP/2YJUmLPh02cVRSvXSAsyntrMfEqPXfen1WFNFAVSCdnSusgoqe1QRBpTlplXhFY3S6DdcbzNgjrEzgCp5voY5PFpkMb7qceKUfa+nykjc/m/RLXnWuyqHKUdM7g2dG//RrDKfie5Qw0D49f0/tMCCgcu1cfo6Wxch82jhsqh9ZKadU72VNCclhTaewOKRV8ZTQr3BXslGl5YcV4VpPLXmdExMKq1WLpkAM7PcmIePrbLUMTL6lJENFW8OBiHoUHS5BgNwtRBks+5EbcJ3/Eyg0S32QaS44P2Ta3kRvExAIYVMrCypOdIzphoyQlmcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN9PR11MB5500.namprd11.prod.outlook.com (2603:10b6:408:105::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.35; Thu, 30 Mar 2023 07:27:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Thu, 30 Mar 2023
 07:27:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/2] drm/i915: Fix fast wake AUX sync len
Thread-Index: AQHZYmNYTevUZx1Iq0SBVQtaT9xyvq8S7WcA
Date: Thu, 30 Mar 2023 07:27:35 +0000
Message-ID: <1b834a39566c0d5f63ea51a5303b9d70411e867a.camel@intel.com>
References: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230329172434.18744-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BN9PR11MB5500:EE_
x-ms-office365-filtering-correlation-id: 778f80b8-19e3-447e-e63d-08db30f03be4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wh8dYnwb1NRcm9LmhPRk8XqkZME9pS+ddR5UvfuUDkHOvxhTcqcuwvxwxiSK/ijyzPz/eCl1xKb+wl8pZ861ULjDAsk7zu74wHHIwqEb3UsV4tceLladEp3qioF9NptE8J8d1x8P+Yp8xE3oxcel6vsEOTNi9kMnPNECpyYajRnRgd5+8NMLcQKyvhShepOGk+7cmyi/JxcaHbH3PrDwhDAJd9wJN/xRIDTaN/CKpoq5k6lKQdKUzaBkH0XKQJHpVXZojoVXAjiNFjgio3N0Ap1h6bshzoOT92o/OqhXebspY42mrFLP4SARVPgX1+BxEbJYmAuHi1re0glOT+nKdADYKo0A4C2k44r58DE66zWUVfSkKuEVoUuNWJuEz42kndaGm0sZKDN3qYnP7QNl3cnMQGyf1pzVUpCjVMKDr1YR4vSsBgtXyOQhwut0+0v0baMQE2iNNXvNtDcXn2yYBlJgRFGHcg4JAM5jOLda1U9RaTH3OSqEAjNTEAfqqmZyPqLHlsLFtx5IsQAjST0x+kiwcCp1kqPGHERKMM/pulDCpeDW7ngPLbQ7zvm3F/f091hZipClAq5v7esxvUkkfa+rvLE1Mf3AbC5s0SOtAL5ldB3G6Byydi9oGf36uxZB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(376002)(346002)(366004)(396003)(136003)(451199021)(83380400001)(122000001)(26005)(66556008)(71200400001)(478600001)(91956017)(110136005)(316002)(76116006)(38070700005)(36756003)(66946007)(66476007)(66446008)(41300700001)(86362001)(64756008)(6506007)(8676002)(66574015)(2616005)(186003)(6512007)(82960400001)(6486002)(38100700002)(8936002)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUYyRkRtWWppMGZOWEVmNDdxeU8zRlZBQ3p5NzRxZmdMY0d4L0Z2bXdldlBa?=
 =?utf-8?B?WnVHK3pvZEh2RXkyYnVZaW5lMnZnVE5MYm9FWC9yenZpcXFLVCtJOG1GcFJq?=
 =?utf-8?B?TjUvRE5FYW8wamozUitIdWszSFZkcFcwazZ5cWc4OHAvVnZHd1doT3NHc21J?=
 =?utf-8?B?aE1mRG1Yb2pFSE5rcHQxYjl4dXhBMnNHRlZ2ZlFXWnU4SXdzUnpRRldMQU1k?=
 =?utf-8?B?M1BwRFFYU0FlZTI4OUxGdEhMdVJYVk1YNks1c2tJODVyUFNPMDRwcmEyM21J?=
 =?utf-8?B?WjFuMXJPU05hb2RBVGc3MURmVnVLSmRzeGJ0S0h6YnR5OEI0UVNyOS9LT0dm?=
 =?utf-8?B?N0hoL2FiQ2hUa2xiTUZuL3dlODdER2l0OUxsdG05TjNQWDVNZCt0UithOG13?=
 =?utf-8?B?a2lZZ0pYRTlvRExHbWVEL3NhNnBzcUZoZU5WOVpHeGFxTzNkUnZnaFlOWGNV?=
 =?utf-8?B?Ukh4UjA1ZHR5QmY5YllZdDk3NVFqT0VJMkluUjNWMDRIMUxNWURoYmdHdlNi?=
 =?utf-8?B?RVdOTG1ISlJOa01hZmJMSjVBem1lVGhXcXRITnp5Q2RXaHhsUG9TRmswczlP?=
 =?utf-8?B?NTVkNEZ6aXV1T2owdnFQbXloUzdIclZlRXo4bi9yUit1dGtvT2JjejBpL3pn?=
 =?utf-8?B?UWlQWTZEalhrclkrQjNobllIQkhpakRFeWFDc3JzMnRQOXBOVHpCdlJ3akd3?=
 =?utf-8?B?ZE85ckVRY3RtdnBPa2JDTW5jbEJuYjViNzVueklsS3UvQ21uRCtVUnl1QUw1?=
 =?utf-8?B?ZkVLemhsb1hLV0x4SnA3Qk5yQis0bE9YN1VlSzZRSG4xSVhHa3hhdHlGV2VC?=
 =?utf-8?B?SHlyRUU2ZTV4ejArTGhmcE9wcEd6ejJ1RERmSmEwaEtvaDl2TkVaeEJXYmF1?=
 =?utf-8?B?eE9CR1l1bng1SzdLKzFhY2JPS1c0ekhLMmsxVU1ScGtISS9NU0x5Z0tYeE5G?=
 =?utf-8?B?NXFheEtWeVhoN0ZkNlg5TVJNYTdqaHlmeGlDSWRsMVI2aWNLL2ZkNkhlb2Nk?=
 =?utf-8?B?YU8zVjBIT0xONnBoOXE2NEp6RlRDM2R1UTBqUGVjdkFTWE05UHhZdGtBdkQ4?=
 =?utf-8?B?dmhUSEMrSnY2d1YrZ0pTa0xDY24rYXpUZHZGRXJWWXc4eWlEQklhYmhBRVVD?=
 =?utf-8?B?cGFDNlRPZUFxV3hmK0pSN0pGOXJwQzVJMTF4OWVYQXBhZ3VqbjBmcFJUcFh6?=
 =?utf-8?B?Y2ZnZ2dZQnE5bG9qcGxQOERnSXJTSUxhN0FUenRQWlBSK2FUVVZ4NjNhdFg3?=
 =?utf-8?B?TlBWVklYSFkyWEJydjhhQUZzWHhTc0FGMUhMQWRWUnh6Y0VJaVphOXBRWk5F?=
 =?utf-8?B?NWcxNVVXUjdjdTI3Q2pCZmdjOWpVWmszNEY2dmp5MU5iUEV1dHhFNGpGU0NT?=
 =?utf-8?B?Ykc3b0VLSjhjV1k2ckt3OTJRMU84eEhodVN0eDUycDdOU0hKRTltekhZNS93?=
 =?utf-8?B?T2NQU3dhRDk4MXN5UXJzQ3F0WUY5VFhkUitmbktNTS9uSVRhd3ZtWXgwalc4?=
 =?utf-8?B?U1JmUmQvY2VwZVJyYnhJSllYRk9vQVlPREFUSGZoSnJKZnpEWEZSUUo2UUtM?=
 =?utf-8?B?akdHRzR0d0ZHVnl2czQvSVJLanh0L3VjTDNNMTFYVDRnb3Fsb0dLb214ZXpq?=
 =?utf-8?B?UTYxVGFlMURBdHd6MlF2UEg5aGhPTUUwTmZVM2xmcFYvelkwVm1ZTVQrZWRv?=
 =?utf-8?B?NFBmRmg0YkZ3K2dGeWpOeVpRU2RtZlI4Z3kySTV1MllmcFViTWxqbmJXSnov?=
 =?utf-8?B?Y0Z1N2RnNVdUQXhROVdYSDBoaVhIbU1sNEh5OHBGbWxCVUxzbURYVTM0OFBy?=
 =?utf-8?B?NUhJb2ZsbHQ0U1dxdEN1czhmSzVQODdqTHI4cW56bUFTNUtlVXRlU2VVVXZm?=
 =?utf-8?B?c0RwRTZGZHdnajJGV0d1NnVJNmN1MHNnNnJzR3dsN0ZZbUN6RGx3MHNGRlZ4?=
 =?utf-8?B?akdrWGxYYUpIMGRWaTFMSFpFektEaU4xZ1ZnV21kNGdhc2p4amV4aTJtdzg3?=
 =?utf-8?B?anVKd3FHcFE2Z1k2VG94V2FwcXdtWmI4czBMa2RYV01jNUlMRGJwL3JiTXRh?=
 =?utf-8?B?dTc0VlhKNHRtbUUzcllrU3NPdE9SR1JhTncwMFlKemFkbm8rU2NPb0tFZ2Qz?=
 =?utf-8?B?ZHdieWhoZ1VEZTV0MlBmZGxQV2ZLcXRqU3BpTkQrUkhjbGlTUmRpaGRoOTgy?=
 =?utf-8?B?Unc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7343272ABAB7844687480980026EDBB9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 778f80b8-19e3-447e-e63d-08db30f03be4
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 07:27:35.8024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ceeWIfpDqYg9N2lT7t0X6OdW5GvOkVt/ppfuiWLAiPH8pE904gGE5Le5/QXhP726O2FmzpyNImAUe3A0x04KY3M8wakXwacOHqkNYAgrsY0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5500
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Fix fast wake AUX sync len
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

T24gV2VkLCAyMDIzLTAzLTI5IGF0IDIwOjI0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRmFzdCB3YWtlIHNob3VsZCB1c2UgOCBTWU5DIHB1bHNlcyBmb3IgdGhlIHByZWFtYmxl
DQo+IGFuZCAxMC0xNiBTWU5DIHB1bHNlcyBmb3IgdGhlIHByZWNoYXJnZS4gUmVjdWNlIG91cg0K
PiBmYXN0IHdha2UgU1lOQyBjb3VudCB0byBtYXRjaCB0aGUgbWF4aW11bSB2YWx1ZS4NCj4gV2Ug
YWxzbyB1c2UgdGhlIG1heGltdW0gcHJlY2hhcmdlIGxlbmd0aCBmb3Igbm9ybWFsDQo+IEFVWCB0
cmFuc2FjdGlvbnMuDQo+IA0KPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5p
LmhvZ2FuZGVyQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2F1eC5jIHwgMiArLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgMSBkZWxldGlvbigtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+IGluZGV4IGViMDdkYzVkODcwOS4uYWQwYWFjNzA3MjE5
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1
eC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMN
Cj4gQEAgLTE2NCw3ICsxNjQsNyBAQCBzdGF0aWMgdTMyIHNrbF9nZXRfYXV4X3NlbmRfY3RsKHN0
cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
IERQX0FVWF9DSF9DVExfVElNRV9PVVRfTUFYIHwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgRFBfQVVYX0NIX0NUTF9SRUNFSVZFX0VSUk9SIHwNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgKHNlbmRfYnl0ZXMgPDwgRFBfQVVYX0NIX0NUTF9NRVNTQUdFX1NJWkVfU0hJRlQpIHwN
Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9BVVhfQ0hfQ1RMX0ZXX1NZTkNfUFVMU0Vf
U0tMKDMyKSB8DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgRFBfQVVYX0NIX0NUTF9GV19T
WU5DX1BVTFNFX1NLTCgyNCkgfA0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBEUF9BVVhf
Q0hfQ1RMX1NZTkNfUFVMU0VfU0tMKDMyKTsNCj4gwqANCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChp
bnRlbF90Y19wb3J0X2luX3RidF9hbHRfbW9kZShkaWdfcG9ydCkpDQoNCg==
