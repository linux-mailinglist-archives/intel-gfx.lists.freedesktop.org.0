Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D3D7D848E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Oct 2023 16:23:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7E3010E7E5;
	Thu, 26 Oct 2023 14:23:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38BE910E7E5
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Oct 2023 14:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698330226; x=1729866226;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gn9zeOdCVf82nUISa6eEm7+J8Ot8FlUFxTOU1uTsALU=;
 b=JoIw9huGyrLrhSN+3XWf8NtxbfJTFhYzP7cXueUhmSFbei3sRmNg6Oxn
 uIi9hLxx6T6nKanXH8FrnCrjToxHWUnWcj2Ovljx9gRwaheWySj+BSDx+
 Pt+u0fSSBbf+lKBgZyyy2GmoQkl8wVPBsBtJje9p3vzLtDgXn73YBc1ZD
 8EY7LsQ8f6DGz/ET3mkyh35fcWZGrUMdWVstYfENXSPIstgZY5BLvO+M8
 2yt8ZqVzZms6iarnpQnoR2c25nU4tcuQvotmrQY9OoLNtWIPBRrFCNx4S
 2/bnnI/yEqvysUaCKJu11PgIY2SYqfyMBiUMN2kML5NdFSsCByTGUXcBc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="360820"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; 
   d="scan'208";a="360820"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2023 07:23:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10875"; a="825016893"
X-IronPort-AV: E=Sophos;i="6.03,253,1694761200"; d="scan'208";a="825016893"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Oct 2023 07:23:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 07:23:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 26 Oct 2023 07:23:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 26 Oct 2023 07:23:44 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 26 Oct 2023 07:23:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PiS+Y+C+/91goFeUGLDab3yGYt09QvniKkaRNrmOmwJ5EkxPuMNEd/xP7HrXXFjXJNC5xFWAxkTygNK61Yq4J2OwtIllm60t742wk7X0J6mx8+yg4GhOqFMZpwYMPU98pGAIvO3Tx/GGUiihc5Pu+NAPevzYacxz5uNDg71aQL+E/fIA4YKR2njD/EJ7bYy76yU0k0KdYDm6/KmHLS8kqrO/aDWbcdzhmeDrMrp3zMVHPInefuwDrbYc4WYnSKEhPdEHhwk7N9XqdAIjv5xcJcyOZYXuOUxi6o66OzzaL3mjgiuDAmLlKj6B7V38C49gMwEFjI7qLZBWwA6IcRqaGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gn9zeOdCVf82nUISa6eEm7+J8Ot8FlUFxTOU1uTsALU=;
 b=SXubnELNlO8HWbLOhf/qd/DDpulUOfuPW32g+eJ+tLVVK+mzlAKVRtajy+hZUsetE2DjAK8+jxEilq6MuOpq6ncIbGb57HBvXUCKJP9qJGUtCbkxcUjPVOkvpZT3OjNAwaHov+Tx23f8Coh0bf+ZJ6j8O/Hognq/dMlv47xD82Pb2FLnoehfFL8IlTMbv5MB+iEZu+vjhRnDI0w0s0FldDSiEeIsnIp4HUhJhljbDuUJEueV8RotD1QZd3Oy4+O11yEYNIHC/qB3VMYZyJs1G6m8a/HHi9lOyJ8CprCvcVAEtUfzAhAq9lmWuna4U6fYLyFdIyS+iiYSmwEmbSC3Lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 DM4PR11MB5438.namprd11.prod.outlook.com (2603:10b6:5:399::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.33; Thu, 26 Oct 2023 14:23:39 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::c542:a94c:fc8a:52fc]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::c542:a94c:fc8a:52fc%7]) with mapi id 15.20.6907.032; Thu, 26 Oct 2023
 14:23:39 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Luca Coelho <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
Thread-Index: AQHZ+dGOHcLFEmZeB0uPflZoX2Fuq7BbyvoAgABjhHA=
Date: Thu, 26 Oct 2023 14:23:39 +0000
Message-ID: <DS7PR11MB5990F5E060115401E8A4C941F9DDA@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20231008101206.1665236-1-animesh.manna@intel.com>
 <9a437097e2fcaabf42b8ba784f31f4e54bbab68c.camel@coelho.fi>
In-Reply-To: <9a437097e2fcaabf42b8ba784f31f4e54bbab68c.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|DM4PR11MB5438:EE_
x-ms-office365-filtering-correlation-id: 2b7994e1-db1e-43fc-9a42-08dbd62f2602
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: R7cNyn9UqSWhg/RsM0DT+kZZCvFSRJ3a3a8F/yBLLis7xxkCYr8fwC/FM5YQdm84g0lePUmx2Mmh9Gsu/s+IJ/wOjpKhftvEwmFnLzFt9lEWjaYDbDBfXsoI/4TxLFsPppFlLTF6bW18tGU+zogeyCS1Rl6NHD8dBnDkku5cHIHYSIAJPfxTAeVEuf2E3up7ZIsKuWJnvJg+h12gzYWLWHafTHfsyxnh5BYGSaSOk92cvKwXg3qE/fHyD0Bd7XRCobPGSGPaWIxw0qG15F0k1jKv6owSx7955RseqT7hNkmXkBl3ynxzlL/RM9j5PDDM5EQt/kIORuEayW0/JtUFhvTARoLiJINlY8fgtIQAQqP77LhMvQPYlUTRVWYq3hSK9g6vXirriLmnHWn6JO4CWxAV2wfk/JuuIdUwL9rL+ZJvjwaVRHDawO1BU0/3AotoOgMmtgvW+Y3kCV/Ak2WmICRvlaizC8pRqFEl43BhNgdjqXuJAEdSNMyWlis340kR7+3ypDqJkURupkJC2qZMAi+gCBplbChbIe26E64qderpNP4VKMCJppwh9+E1gXkmwhaeRi/U++B7hMS43KUvMXLS3xDYDkzzI4b9w/yHPjRLESN3E+j+szMKEMjn2YIh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(366004)(376002)(346002)(136003)(230922051799003)(1800799009)(64100799003)(451199024)(186009)(55016003)(2906002)(86362001)(38100700002)(41300700001)(6506007)(110136005)(66476007)(76116006)(316002)(66446008)(64756008)(122000001)(82960400001)(66556008)(7696005)(71200400001)(107886003)(478600001)(9686003)(53546011)(55236004)(83380400001)(52536014)(5660300002)(33656002)(4326008)(8676002)(8936002)(66946007)(26005)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2ZDV2FZQStqT2s4YVFIVUpMc3Qzem5BOXprZFNpdE5JL3NGS2hhc0FZKzVQ?=
 =?utf-8?B?SVk4VUdBbGgwRUR3L0tFRlpvUkJQV3lLNHBndWx5emlFT0cwYUhEa1hoZ2o3?=
 =?utf-8?B?bktuOWR2Ynk1WGpzeEowMG4zNUNoK3BPVVRQL1JtbnZGNDBDTjBmUXVqMDdY?=
 =?utf-8?B?Mk9BckJsQU1HV2Y1WVkxU2FCdk1LcHNreEZHdUlTanEwS012MDZWbVV1c3cv?=
 =?utf-8?B?VGNUR0RtREVDUzhCSEtlMU9OWVVGeEdySmJ2NWZkcGVUQ0xMUCtMbGYyNlJq?=
 =?utf-8?B?UndKVnUvM0ZzeHhhS3ArS3NPRDNEcDZSVUFHUjg2c0lMVmxKcjRERVd3N3BN?=
 =?utf-8?B?ZmpuZSs3em05SFpUSTNRdkJhUFFpTjdadFI1T09ndFBMNFh3SVJKaVU2NHV3?=
 =?utf-8?B?bDFDUTdxYjNDaSsvZnVjdzYycXYzQmFDWDNZeUVaWjZHd0ZKV1NNallqeVdM?=
 =?utf-8?B?QkpuNHBUODBGek5LTjBvOUxRNVFXTFpYejI1cllZNE43VU9tdk9lejNNd3hm?=
 =?utf-8?B?SFZIY29lZUY2RlJWTDJwbGNzSlI3TWM1QUYzTGRsZnkxRlZmRG1lN0doeWRa?=
 =?utf-8?B?bDNnUE5uREFSVDZONEtBR1VuYWZkNFJPbFV6NmlXVG9xWi91dlBsajBseS8x?=
 =?utf-8?B?TDVYY3V6T3RCMitySU9OKzhRUVpXSmdxbWxsUDRib2R1NWs3RTJOOHFWY1Fv?=
 =?utf-8?B?Nnp6ZzN1aWt1ZDY1QTM4WU4xTUNETENSNXBJTmhnQm5kWk1idlY3OWVQU2VS?=
 =?utf-8?B?Z20xZVQ4MVgyb2tUa29Ha2l1T0NuT1VJUFVNcHFac3BGNXd0dGVxcTFheW1a?=
 =?utf-8?B?eHNKZDlOcFdkQWJSN2Z1NEhncmdXSXFpRTdDckhlUTI4TjlNa3ZQcC8zU3Yx?=
 =?utf-8?B?Y29SMVZ2cnl6aXg1VU45QkoyaE00TmthSkpZUzdjaFhwaTZnOHliRGxnSDZW?=
 =?utf-8?B?T0ZoY1RnbUJFczFwOHB3Qno0UEhDcnBkeXFMaEQ3WUYyU0w2NUJPbXhZN0lY?=
 =?utf-8?B?TWJ4dmV0b2lkRmRma2JBMGdreUFPM1F6QWxIYVhJSXFwa203VkE0WEJDU0cv?=
 =?utf-8?B?TDR6NEJGUGVka3FxTFpMVjdTd3FxZ2lpc2JCc0RJRStjaTd6NnhOWkFHRzFI?=
 =?utf-8?B?NURhV0FCTUJWRUtHMmVwNU9DU1UyeGlkQjc2emNBcXY0NDF1elhJMXQwbWp4?=
 =?utf-8?B?TmhMMXQxbFZIY1pPOXd5VGtvNXlyaHFiQlNWdlR2eHVUVUVudlV5RmxQUnlJ?=
 =?utf-8?B?Y0NVZmIxM3RjUmVjT1JyMG8rVUVRNkVuMmxEV3lpVlJpaXNyWHJrbVJqKzJD?=
 =?utf-8?B?QlM1V2hBRjdqNDdnSDdvNDBSWVFLU0duY3VYMjg2cHZZOFFCejVPNkZOdmwx?=
 =?utf-8?B?NXZxV1NOenNxbEpEMHhYd3FvdjJ6Q3VWenozNDRQb3JCV0dRalFzRittb0Zp?=
 =?utf-8?B?MTlsL1Y2RXQwYk1RNFByUll4MDNMMFZLYTNQZWRGSUlYbHNTNFV4TWxwWnoz?=
 =?utf-8?B?SlE4aDlOU2paOXZUSVZnY2FNQ1FiTmU5SGk0RkZxZUo1VGMxb1E1SVRSeHYr?=
 =?utf-8?B?N0xIcG1WamlwNisxbXdYT3B6a2JNSDhYUHVyUGE0VUpSbldlQ094WDhZQnh6?=
 =?utf-8?B?N3FJQjZzRmZ5WEtQUnJQVWtVcnBmSUFOZ3ZsK2xUMGV6RXBLaHhrN1oxb1Jv?=
 =?utf-8?B?TkM1TnRwMzVBMWsyQjV5RVpYOVFNRFI3aTZXTUtsVmN5VThjbE5qMm41ZGww?=
 =?utf-8?B?NUJBUjlIOGdpa3JoZSs5ZUJJcWlrMnBJWUxGRlU1cEJ0VkNIYXE1aGZQVWpE?=
 =?utf-8?B?OTM5dE9yR21JcEQvR0VZN2w0RmlBbXVsTXNvK0tsZGxIeTEzaEF6ZmZaMFJi?=
 =?utf-8?B?R0VFZVA2cTNWdXhvbkhQTjB1dnpKVXAyQ0hGRmZBUjNFUlZoR0lRZmNMRkxk?=
 =?utf-8?B?dzdVeFdsc25tMWVHb1VreUl4eVJSbjVINGZSNzAyNFBPdTBJS2taSGlaN1cv?=
 =?utf-8?B?UFFmdzluMUZxQmoyV2ltVEFma0JENkNJNzdjYjZPYzFTY3VRRWxoLzhUVmdE?=
 =?utf-8?B?QUN6RlBjRzZicEtBMk9OdXhCNU1YY2plTkg4N1dIM2x4MXdycjVMQnFpMFFl?=
 =?utf-8?Q?LhZpNgAP0dKWRcY/xWtvBGvXA?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b7994e1-db1e-43fc-9a42-08dbd62f2602
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Oct 2023 14:23:39.2294 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xHBxcBgAqwqk7uo82mfFFdh2nznkGLg99VHuE0qvw4tjckzTAGm4lvnEaKOViVl17awJvJx8geCCtYPqS1IJRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5438
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/dsb: DSB code refactoring
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogTHVjYSBDb2VsaG8gPGx1
Y2FAY29lbGhvLmZpPg0KPiBTZW50OiBUaHVyc2RheSwgT2N0b2JlciAyNiwgMjAyMyAxOjA4IFBN
DQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBpbnRlbC0N
Cj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjNdIGRy
bS9pOTE1L2RzYjogRFNCIGNvZGUgcmVmYWN0b3JpbmcNCj4gDQo+IE9uIFN1biwgMjAyMy0xMC0w
OCBhdCAxNTo0MiArMDUzMCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4gPiBSZWZhY3RvciBEU0Ig
aW1wbGVtZW50YXRpb24gdG8gYmUgY29tcGF0aWJsZSB3aXRoIFhlIGRyaXZlci4NCj4gPg0KPiA+
IHYxOiBSRkMgdmVyc2lvbi4NCj4gPiB2MjogTWFrZSBpbnRlbF9kc2Igc3RydWN0dXJlIG9wYXF1
ZSBmcm9tIGV4dGVybmFsIHVzYWdlLiBbSmFuaV0NCj4gPiB2MzogUmViYXNlZCBvbiBsYXRlc3Qu
DQo+ID4NCj4gPiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiBT
aWduZWQtb2ZmLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4g
PiAtLS0NCj4gDQo+IExvb2tzIGdyZWF0IG92ZXJhbGwhIEp1c3QgYSBjb3VwbGUgb2Ygc21hbGwg
Y29tbWVudHMgYmVsb3cuDQoNClRoYW5rcyBmb3IgcmV2aWV3Lg0KDQo+IA0KPiANCj4gWy4uLl0N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2Iu
Yw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+IGlu
ZGV4IDNlMzJhYTQ5YjhlYi4uZWM4OWQ5NjhhODczIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gQEAgLTEzLDEyICsxMywxMyBAQA0KPiA+
ICAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlw
ZXMuaCINCj4gPiAgI2luY2x1ZGUgImludGVsX2RzYi5oIg0KPiA+ICsjaW5jbHVkZSAiaW50ZWxf
ZHNiX2J1ZmZlci5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfZHNiX3JlZ3MuaCINCj4gPiAgI2lu
Y2x1ZGUgImludGVsX3ZibGFuay5oIg0KPiA+ICAjaW5jbHVkZSAiaW50ZWxfdnJyLmgiDQo+ID4g
ICNpbmNsdWRlICJza2xfd2F0ZXJtYXJrLmgiDQo+ID4NCj4gPiAtc3RydWN0IGk5MTVfdm1hOw0K
PiA+ICsjZGVmaW5lIENBQ0hFTElORV9CWVRFUyA2NA0KPiANCj4gSSBzZWUgdGhhdCB0aGlzIG1h
Y3JvIGlzIGRlZmluZWQgaW4gR1QgYW5kIHlvdSB3YW50IHRvIGF2b2lkIGRlcGVuZGluZyBvbg0K
PiB0aGUgZGVmaW5pdGlvbiBmcm9tIEdULCBidXQgeW91IGRvbid0IG1ha2UgYW55IG90aGVyIGNo
YW5nZXMgcmVsYXRlZCB0byB0aGUNCj4gY2FjaGVsaW5lIHNpemUgaGVyZSwgc28gbWF5YmUgdGhp
cyBjaGFuZ2Ugc2hvdWxkIGJlIGEgc2VwYXJhdGUgcGF0Y2g/IEFsc28sDQo+IGl0IGxvb2tzIGEg
Yml0IG1hZ2ljIHdpdGhvdXQgYW4gZXhwbGFuYXRpb24gb24gd2hlcmUgdGhlIG51bWJlciBpcyBj
b21pbmcNCj4gZnJvbS4NCg0KRm9yIFhlIGRyaXZlciBtYWNybyBkZWZpbml0aW9uIGluIEdUIG1h
eSBub3QgYWNjZXNzaWJsZSwgc28gaGF2ZSByZWRlZmluZWQgaW4gSW50ZWxfZHNiLmMgaXRzZWxm
LiBJdCdzIHJlbGF0ZWQgdG8gZHNiIHNvIGtlcHQgaW4gdGhlIHNhbWUgcGF0Y2guDQpEU0IgY29t
bWFuZCBidWZmZXIgaXMgY2FjaGVsaW5lIGFsaWduZWQuIERTQiBzdXBwb3J0IGFkZGVkIGZyb20g
Z2VuMTIgYW5kIHNpemUgb2YgY2FjaGVsaW5lIHNpemUgd2lsbCBiZSA2NCBieXRlcy4gQXMgcGVy
IGJzcGVjIGVhY2ggY2FjaGVsaW5lIGNhbiBoYXZlIDggZHNiLWluc3RydWN0aW9ucyBhbmQgNjQg
Yml0cyBwZXIgaW5zdHJ1Y3Rpb24uDQoNCj4gDQo+IA0KPiBbLi4uXQ0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYl9idWZmZXIuYw0KPiA+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2JfYnVmZmVyLmMNCj4gPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPiA+IGluZGV4IDAwMDAwMDAwMDAwMC4uNzIzOTM3NTkxODMxDQo+
ID4gLS0tIC9kZXYvbnVsbA0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiX2J1ZmZlci5jDQo+ID4gQEAgLTAsMCArMSw2NCBAQA0KPiA+ICsvLyBTUERYLUxp
Y2Vuc2UtSWRlbnRpZmllcjogTUlUDQo+ID4gKy8qDQo+ID4gKyAqIENvcHlyaWdodCAyMDIzLCBJ
bnRlbCBDb3Jwb3JhdGlvbi4NCj4gPiArICovDQo+ID4gKw0KPiA+ICsjaW5jbHVkZSAiZ2VtL2k5
MTVfZ2VtX2ludGVybmFsLmgiDQo+ID4gKyNpbmNsdWRlICJpOTE1X2Rydi5oIg0KPiA+ICsjaW5j
bHVkZSAiaTkxNV92bWEuaCINCj4gPiArI2luY2x1ZGUgImludGVsX2Rpc3BsYXlfdHlwZXMuaCIN
Cj4gPiArI2luY2x1ZGUgImludGVsX2RzYl9idWZmZXIuaCINCj4gPiArDQo+ID4gK3UzMiBpbnRl
bF9kc2JfYnVmZmVyX2dndHRfb2Zmc2V0KHN0cnVjdCBpbnRlbF9kc2JfYnVmZmVyICpkc2JfYnVm
KSB7DQo+ID4gKwlyZXR1cm4gaTkxNV9nZ3R0X29mZnNldChkc2JfYnVmLT52bWEpOyB9DQo+ID4g
Kw0KPiA+ICt2b2lkIGludGVsX2RzYl9idWZmZXJfd3JpdGUoc3RydWN0IGludGVsX2RzYl9idWZm
ZXIgKmRzYl9idWYsIHUzMg0KPiA+ICtpZHgsIHUzMiB2YWwpIHsNCj4gPiArCWRzYl9idWYtPmNt
ZF9idWZbaWR4XSA9IHZhbDsNCj4gPiArfQ0KPiA+ICsNCj4gPiArdTMyIGludGVsX2RzYl9idWZm
ZXJfcmVhZChzdHJ1Y3QgaW50ZWxfZHNiX2J1ZmZlciAqZHNiX2J1ZiwgdTMyIGlkeCkNCj4gPiAr
ew0KPiA+ICsJcmV0dXJuIGRzYl9idWYtPmNtZF9idWZbaWR4XTsNCj4gPiArfQ0KPiA+ICsNCj4g
PiArdm9pZCBpbnRlbF9kc2JfYnVmZmVyX21lbXNldChzdHJ1Y3QgaW50ZWxfZHNiX2J1ZmZlciAq
ZHNiX2J1ZiwgdTMyDQo+ID4gK2lkeCwgdTMyIHZhbCwgdTMyIHN6KSB7DQo+ID4gKwltZW1zZXQo
JmRzYl9idWYtPmNtZF9idWZbaWR4XSwgdmFsLCBzeik7DQo+IA0KPiBJIHRoaW5rIHlvdSBzaG91
bGQgY2hlY2sgdGhlIGFycmF5IGJvdW5kYXJpZXMgaGVyZSwgdG8gYmUgc3VyZS4NCj4gUHJvYmFi
bHkgYSBnb29kIGlkZWEgdG8gZG8gd2l0aCB0aGUgb3RoZXIgZnVuY3Rpb25zIGFzIHdlbGwsIGJ1
dCBJIHRoaW5rIHRoaXMgaXMNCj4gdGhlIG1vc3QgY3JpdGljYWwgYW5kIGVhc2llc3QgdG8gbWFr
ZSBtaXN0YWtlcyB3aXRoLg0KDQphc3NlcnRfZHNiX2hhc19yb29tKCkgZnVuY3Rpb24gaXMgdGFr
aW5nIGNhcmUgZm9yIG5vdCBjcm9zc2luZyB0aGUgYm91bmRhcmllcy4gSGVyZSB3aWxsIGNoZWNr
IGZyb20gdGhlIGFsbG9jYXRlZCBidWZmZXItc2l6ZSB2ZXJzdXMgdXNlZC91bnVzZWQgYnVmZmVy
Lg0KU3BlY2lmaWNhbGx5IGludGVsX2RzYl9idWZmZXJfbWVtc2V0KCkgaXMgY2FsbGVkIGZyb20g
aW50ZWxfZHNiX2FsaWduX3RhaWwoKSB3aGVyZSB6ZXJvIGdldCBzZXQgZm9yIHVudXNlZCBjYWNo
ZWxpbmUgc3BhY2UuIE5vIGNoYW5jZSB0byBjcm9zcyB0aGUgYm91bmRhcmllcyBpbiB0aGlzIGNh
c2UuDQpQbGVhc2UgbGV0IG1lIGtub3cgZm9yIGFueSBmdXJ0aGVyIGluZm8uDQoNClJlZ2FyZHMs
DQpBbmltZXNoDQoNCj4gDQo+IC0tDQo+IENoZWVycywNCj4gTHVjYS4NCg0K
