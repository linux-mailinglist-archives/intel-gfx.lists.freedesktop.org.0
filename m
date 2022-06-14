Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E173E54B16D
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jun 2022 14:55:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42FD810F73F;
	Tue, 14 Jun 2022 12:55:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 429E110F598
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jun 2022 12:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655211310; x=1686747310;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=7+QPsahQf42G7tSliligUzZG0F9hAs4M6a5n0VwSRLU=;
 b=C2YLfRB6IIVQiKBaE+aAvK+XtupvFBikXrLPmuXUlzEo6EvDoPK+CHGl
 7iVDXbhMdR5Irs/cbtXL5LoG/WM4//OAb9iK/74h6TvUWw8Zeoqe9auXH
 tNUB4yStiMg+4gPIOCgD1E4Cir8hfTsAgViZQXv06wCYtvtI3VdnC79Mj
 cbKxycatNKDGmFUJt9PrFyAfVc9saM4RlLVNdIUyMBhnzTtYffS9rBCpw
 LwE9u8RS0i3PyLwYaynpcQeMiSm0V8OsB2wbGzL5zs6XtsATJuoOBAufd
 BmIuCv51SPdANSCV/TW73uBTYkacq0WUc91NQ96F9OCyXYuAPtDnOkNL1 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10377"; a="278647647"
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="278647647"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2022 05:55:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,300,1647327600"; d="scan'208";a="588455632"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga007.fm.intel.com with ESMTP; 14 Jun 2022 05:55:08 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 05:55:08 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 14 Jun 2022 05:55:08 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 14 Jun 2022 05:55:08 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 14 Jun 2022 05:55:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bls3bnZ4HLQR+es6g1qH9Ulkynq57tQfbGOILhXIWYfnkxBwPbpASee/w5xAubJgQxWs6is+tinTaMVdbOFWgS9gcQBTm7OOgYWJP7HD51Lv7oyGrWyMdYpHbMZh/SSk+1BedPbq1Ln7e8EXUsJI7w9KSxp2igvQVXQmHWEDOO5baZ08hTEpnGci7VWx8qhqCqYZ0FKmSeIqtYX+ZiJgGmT4FqoQMJZ5unBh7oJLXBa3Ntxsr5jybOL9sLfpA1S2aOVh9nGCN4PifdPOc9gUFeG62B/w61Dgl5pcs86sEMa+WqIEL8WWYYdS9tJzmFJD+G4vvMNL+3q3lDY/gvpd9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7+QPsahQf42G7tSliligUzZG0F9hAs4M6a5n0VwSRLU=;
 b=mQ+lzfnJ5y+DXQtlvBJRZyM1hsosjmIFGksrX/URhFc8GeqpQxO+qTFLuaN3ViS0iVKMexDBP8O41pu0tJrEdWaQF6BWs82OvXRoPxcPqAqQb4Ou5p5F+DOy8uLIwCj65kE4RUQtRx3qYAr1QWcmArbnlWcrcXEM+4YBEonGfdQH4dQjQdDlrXKOedl0ShB1Tzy34EGlykK+8sVR/boy+mmPcRjmdXv4OujFfwrYTRj5sOuxlOkVKkrITkscHLw+9kAlBhuLmv23YHs74kjk96PEH66JVoEYDjsuuBKFQLGpBRHi2n9Nv1NoAUwoP3q2hs8L9eQntoz6UqTiorbqsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN6PR11MB2989.namprd11.prod.outlook.com (2603:10b6:805:da::28) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5332.17; Tue, 14 Jun 2022 12:55:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a4a2:3569:ce75:fd0f%3]) with mapi id 15.20.5332.022; Tue, 14 Jun 2022
 12:55:05 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 1/1] drm/i915: Do not enable PSR2/selective fetch if
 there are no planes
Thread-Index: AQHYf+lywAUks90ykEiJbotMy1gDrq1O3BsA
Date: Tue, 14 Jun 2022 12:55:04 +0000
Message-ID: <bfcd24764e38db1fd13a1315106cb71dac0d7d01.camel@intel.com>
References: <20220614122257.10925-1-stanislav.lisovskiy@intel.com>
 <20220614122257.10925-2-stanislav.lisovskiy@intel.com>
In-Reply-To: <20220614122257.10925-2-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 83187626-857e-4531-6019-08da4e051a5b
x-ms-traffictypediagnostic: SN6PR11MB2989:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <SN6PR11MB29891A2788B6F169F61490888AAA9@SN6PR11MB2989.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: a2izIO5z7n2UicorH+DWhPpzuik8ATBamRz6GRspXsZVlDxVtfDVML62xp8EKrUa3dL57fq4xLsdrixMWGpEDKON1juRVbMDTdVMHgg0krF2dAit5AEruBMdH4oJYfhZ3fLnQtAOHDiYiRtQAF7/JdbylCGqgYupQEOUYNHEfkAWIcqLNQJv/0vEDUP0bTFRy2kP+k/ezeHU/54hOWY8oEfG3zrVkOEmckQ9gWX6Is8PYvWcJoo4lG5ClLi7eS5rsGLXl5DwQGQf2YDJdEUTliWDxQdgVnUe8oGQZIioXb7YIHSebq1Rw4KEeWqM4fu4OXgABECh9hthkK3+Uz+JhfQ2WvWvw2ZxH93/6rMSDZLTNd3TSKepLYkQ7ypRBt824GbsIANWpQKXLSZ6U0iwaTLidkqzlG+d2Ue998gYu6VOTrR0EeZLOwkRGTr5QXnD1/Uo4+iVezou06X2/FrCjyCldboWay4X9s9lVl233iHrHhnmowil8RxTOA7FgaYIM68V+8ieKJeI0D+NvCW8Sa8aKKIXBQgDTYFAehExWV2XXCt0buSkOwQTXxjTTENCo2UEfiuaFEhXlav197ZfaEqVmTr91BU8V2alKOmliI9Rt6W8ZygG4E3DgSdTTb0LV0P0Z3F0fGgdmrC++8EMnjg1jZaT2ChTopTrqCyB+8AvYeM155FpQVLD+cFlP/I1UyyThRbSS8923Iqf5mDqVw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(2906002)(83380400001)(91956017)(66446008)(66556008)(71200400001)(38070700005)(76116006)(38100700002)(66476007)(64756008)(66946007)(110136005)(4326008)(54906003)(8676002)(26005)(82960400001)(186003)(122000001)(508600001)(86362001)(2616005)(6486002)(6512007)(6506007)(36756003)(5660300002)(316002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WUVnSm9RdDQrMVI0SFJka3E1aVlJNlZkL1Z4VTVOQ241Z1VubzQ2ZnQ0K2Q4?=
 =?utf-8?B?TmRCSDFPT1BrQkN4ZFdjVERTV1hpWkZBZjBiQytUcW5OL20wdFNZcnZBV3VR?=
 =?utf-8?B?UXVEY0xwajFZUzdseXVaK1ZDa3QvL2ZrcUk0WGN3VElXT3hWdWQ0ei9jL1RH?=
 =?utf-8?B?YzhiRUdreDBWY3UzWmhhMGN4TzE1N21pZzRmSjZaZGNjZG1GSjA1TUJKcXFI?=
 =?utf-8?B?anF0ZHhLNHB2TjA1RFJZdjZCNzJRSWlMMUI2dDA2LzR4cXM0bTZMNDduYUdH?=
 =?utf-8?B?WVVTM3hyODFNTUxlUmhRMUVpVlFOclN0dkxDdzRMak5DdXk2bTNhd3EzNEo4?=
 =?utf-8?B?ZnpFK2hPeVRULy9EenpvVXRBZUNJM29qRUtBOXJhMnZyS2dXRUdWQ05BWHd1?=
 =?utf-8?B?dERvMkl1QmlMNU4rd25ISDg5eUhjdm5SelBsVzBFcDVSYlRGa1hSQUNnZXBk?=
 =?utf-8?B?WUhpYy9qRVhiVStlWWVlNXpXdmRXUWRPNnlzcVUxTFAwMDRwTWVYSGtNWDZ1?=
 =?utf-8?B?ZDh2NXp0akk4Nm94Y0gyRHR1Zy9rWW90Z09KYmNhVWNoRURZazRSWldkcXBn?=
 =?utf-8?B?SEJHcnFNd1BqU08wU2xKdFlOdmQrb2RTdHNjL00xTmxZdzAwOTF5dW43dFo2?=
 =?utf-8?B?SDVrVWZJOTRQUVZzYzRScnRLTlNwRG81Uy9ISnJLN1JNMXBDczdKV2l6ZXBD?=
 =?utf-8?B?REs5S1E3OGFBTnAreCtYNGp0TTNIakFNc2JQNnpuNktzK0ZjSm42ZW9taCsr?=
 =?utf-8?B?cDBVNXkySE9Ld00yNWcxVjkrWWtyQTN1WUxyRnMvQlZLNlhhcDVxUHJ0Q3My?=
 =?utf-8?B?V1dDemM2TjE4eDdOSHlYMHJxa0FoQWFsTWE1Sm1iUE9UVy9CZEoxTEJNN0Y3?=
 =?utf-8?B?cnd5a3NQSU5ueU9HaHFvQW4vQ2tiVHJndVpKZ0VwQytOeFpERlRWM3o5MDZH?=
 =?utf-8?B?Y29ZbTRUQko0aHBLZjQ1TnVWbjNtMzdWbFcwZ2xCTXhnVkV3enJnYzN6SDBP?=
 =?utf-8?B?MTFGWU8xV3pIMDVrNU5wNks1SUEzMUF5ZUtQOE9tZXpvVDJLT2R4OFBMSG9m?=
 =?utf-8?B?NnlMeGlPYTNhakFpREYwWllzNTBPWjVnaENUdCtkcFY0M2NxQVUweFJ4Q0k3?=
 =?utf-8?B?MTBPL1dXOVNGb2ZjYTJSTXNVS1lBRSt1ZlF1MEJuUk53c1NmNVRIaWdHTGtM?=
 =?utf-8?B?VmlGa2V4M0hRM0FrdWxVVjJnSGFEYTZsWUdRYWJHZEcwUUdDbXRzWWtrSTJD?=
 =?utf-8?B?MWpmTzhRMUp3c2Y3eGs4eHRxZGxZRTVlM3JaanNsU29FT3h1dVd3U2ZJRGU5?=
 =?utf-8?B?WTNnM0hqUVFUY1U0cy9YSElpblZnMk12NERNZXlhTWt6UWttRTVUeCs2QUx3?=
 =?utf-8?B?YnZtYVh6TEQwQWQrSUtVK2NtMkM1cGNzTDdOWFg0NG5FRmpORVV3ZVZiM09r?=
 =?utf-8?B?emhwaTB4KzJOZlMrNE4rVDNUVCt6N2NQY0Q2ajYrOFI3aTY3TWlNUDVLbVAw?=
 =?utf-8?B?STFXSThHencwTWhTU1l5WFNPY2dnNHZRZTNHTWtMa2xyUUNlMUQ1Zkw1cDVB?=
 =?utf-8?B?OVpGNXBzSDdzZnhFak1zOThBQS95T25ucXAremtTbE5YbjJGNFprRytOTkQr?=
 =?utf-8?B?U2VFOGpESUpuZnBzdFFNYzhWVVAvd2pReXdra1dUdjZVOUxGeHA3OU5KZ1ZD?=
 =?utf-8?B?dGJjRTZFc1JjTUNWbFdzNDJiUStuVzJVcXV0bW8rdUlDWnFTM0RNOGxoMWoy?=
 =?utf-8?B?WlJZdUdKMTdFRVlqZmUvb1RsN0dPODVheCszVHhUemFwcmtZRE9tRVE5dVZ6?=
 =?utf-8?B?TCtTeC9pSEFKc3BJWW11Szl5RUc4aVBUcVYrNk5lWVhkVzQrRXFBMDVZOVVa?=
 =?utf-8?B?a3ZuQ1g5YStqYkpBVkswT2V4L1pmNXN3R256eFBzVnlXSUxWdzFTR0JNMjdC?=
 =?utf-8?B?Ui9qWFhLTEN6REZWWUM3YVMwaDBFWStQMStFUHFudkNRM2tKZDV0ZkFEK1Z4?=
 =?utf-8?B?MU45SFA2UVBVVnBicWdrazdzcnVVRVJJUVpCMmtuSnlOa3JTeHdsdVZ6aGZv?=
 =?utf-8?B?ZWZiNldqUUpRTEhuYkZEay94MUZXSmlrZmtNanZza0NhUVdmMjNFUDZJZDRZ?=
 =?utf-8?B?cUtrdE9iYjdEL0hXenQvZmcrVEN3WlZIZERWdWNGV3dJVHZ1QTZaN1hOWjM3?=
 =?utf-8?B?WkJxU2xqVXhDRE5uWDc5YlhxNHhzWlFTajFRY1hHUEs4QzdqZmpPYnk5ekx4?=
 =?utf-8?B?TmpxUUYyVDA1Wm5saGNxRHRtNWptUWFsZ1NNSEI1STRCOW9ZeGptc1JrRHFu?=
 =?utf-8?B?VE1rL09RYXhrWmVUb2xHVUl0QlZpcFRYNmdadTdydXhwTjhvV0twNW1ZYWxJ?=
 =?utf-8?Q?6L1ZqLcOPoNIVQOlQh6tA1AOlC5fjPXNFUPSR?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9ABA3E57CD2B0441AF3D6DCD497E8228@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 83187626-857e-4531-6019-08da4e051a5b
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2022 12:55:05.0189 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +U01GANM2+X7lkpXkMxVP7tj7OqiJ3Jy83BTJVQKQCn/VDNWUIzX8Ieqay7l6YfMhRxhHbyTv/MFjdqp1WiYuCcO0zGUCnWF22DMn3dBZC4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2989
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/1] drm/i915: Do not enable PSR2/selective
 fetch if there are no planes
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

T24gVHVlLCAyMDIyLTA2LTE0IGF0IDE1OjIyICswMzAwLCBTdGFuaXNsYXYgTGlzb3Zza2l5IHdy
b3RlOg0KPiBXZSBzZWVtIHRvIGVuYWJsZSBQU1IyIGFuZCBzZWxlY3RpdmUgZmV0Y2ggZXZlbiBp
ZiB0aGVyZSBhcmUgbm8NCj4gYWN0aXZlDQo+IHBsYW5lcy4gVGhhdCBzZWVtcyB0byBjYXVzZXMg
RklGTyB1bmRlcnJ1bnMgYXQgbGVhc3QgZm9yIEFETFAuDQo+IFRob3NlIGFyZSBnb25lIGlmIHdl
IGRvbid0IGRvIHRoYXQuIEp1c3QgYWRkaW5nIHNpbXBsZSBjaGVjaw0KPiBpbiBpbnRlbF9wc3Iy
X3NlbF9mZXRjaF9jb25maWdfdmFsaWQgc2VlbXMgdG8gZG8gdGhlIHRyaWNrLg0KDQpXZSBhcmUg
YWxyZWFkeSBkaXNhYmxpbmcgUFNSIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlIGlmDQphY3Rp
dmVfcGxhbmVzIGlzIDAuDQoNCldlIGFyZSBhbHNvIGNoZWNraW5nIGFjdGl2ZV9wbGFuZXMgaW4g
X2ludGVsX3Bzcl9wb3N0X3BsYW5lX3VwZGF0ZSBhbmQNCm5vdCBlbmFibGluZyBQU1IgaWYgaXQn
cyAwLg0KDQpTbyBJJ20gbm93IHdvbmRlcmluZyB3aGF0IHNlcXVlbmNlIHRoaXMgcGF0Y2ggaXMg
YWN0dWFsbHkgY2hhbmdpbmc/DQpJLmUuIHdoZXJlIFBTUiBpcyBjdXJyZW50bHkgZW5hYmxlZC9u
b3QgZGlzYWJsZWQgaWYgYWN0aXZlX3BsYW5lcyA9PSAwPw0KDQo+IFNpZ25lZC1vZmYtYnk6IFN0
YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA2ICsrKysrKw0K
PiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IGluZGV4IDdkNjFjNTUxODRlNS4uMDNhZGQ2
OWNmZGNhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMN
Cj4gQEAgLTc0Nyw2ICs3NDcsMTIgQEAgc3RhdGljIGJvb2wNCj4gaW50ZWxfcHNyMl9zZWxfZmV0
Y2hfY29uZmlnX3ZhbGlkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ICAJCXJldHVybiBm
YWxzZTsNCj4gIAl9DQo+ICANCj4gKwlpZiAoaHdlaWdodDMyKGNydGNfc3RhdGUtPmFjdGl2ZV9w
bGFuZXMpID09IDApIHsNCj4gKwkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sDQo+ICsJCQkg
ICAgIlBTUjIgc2VsIGZldGNoIG5vdCBlbmFibGVkLCBubw0KPiBhY3RpdmVfcGxhbmVzXG4iKTsN
Cj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCX0NCj4gKw0KPiAgCS8qIFdhXzE0MDEwMjU0MTg1IFdh
XzE0MDEwMTAzNzkyICovDQo+ICAJaWYgKElTX1RHTF9ESVNQTEFZX1NURVAoZGV2X3ByaXYsIFNU
RVBfQTAsIFNURVBfQzApKSB7DQo+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KDQo=
