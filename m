Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78CDB4D2D14
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 11:24:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7838210E38A;
	Wed,  9 Mar 2022 10:24:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 82AF610E379
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 10:24:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646821484; x=1678357484;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=aURmWTS3MPrbsaiQgxg43YWQfS0n5TrrIYPWrv/Os4g=;
 b=cK5nFjyqVYqyGlc6XaibjJ+e9B49m6OLDa3Clb1wDjwX5h1HgN1a/CjD
 GeXgN4EuSflUd04DVAHA8wAJoRkzz2e4MSjqdDK0CBoxmHfKwr+jXtYpN
 s7ZZ22uMUnXC5nqi1mQa1K6mqqrisAt3rUjpvBH9vEaXOpPlK6iVq0ZVt
 EzmHT9lUgzrSuNBNQdvP2cg6b2g0UHmiG74Y6P1ITdmFDWK6aIFPmDhSU
 N6kFsm1ItySHa+UDB3Iwhh+zOGJQVR0hctLeEgG2KC8uv6OXEMCY441yH
 9iLDDFAqxyB5YTcXqSc6d7QqCbC+as7mWm48ceCkcrrVN34LKBbUpbH2g g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="253771986"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="253771986"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 02:24:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="554063553"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 09 Mar 2022 02:24:43 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Wed, 9 Mar 2022 02:24:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Wed, 9 Mar 2022 02:24:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Wed, 9 Mar 2022 02:24:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dvVHwxJhZUnSzy5IFcutYdFDeaqmnnOKu51i8ntF1w1TajIFRN/4bRfz6YeP4GUz56DvDchJ4J8mqpZgkPQD4X9RtAL5ZNLOkE26sPO3kMXSHsL5P6y64MGXohuC15SyMlf0n4y8MBSONQkR5AtsNnWoWqtuuU7i3jLYzuJ+ttmB/P+M4jLOgxlWxPyqet6QTsqnt73Clof02zxa0O51VH89t2t36s434xUuTZSNd39YAAtk6vYy+Z0obXM0oNi7D1IkM8vZERAStrzru2AdlwrBPhsWP2vE9uF2nrhws8IKKWoEQv1O0m3RErs1cmHhZ6j6RxA/fO4PDz26W7MWhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aURmWTS3MPrbsaiQgxg43YWQfS0n5TrrIYPWrv/Os4g=;
 b=L5tWiIwJlGZ3JtVEP2CACFSyQoobuvbP1W7XvLRyznBUcB7QahjomguvBhbjjx+HHCcqawpUZ5uCnU5cGP2Te1WmlrW5vrsP2Kc46GtMIGVh+HdD28vTib1rl98JJeGiWagBf4c4/x9XqV4Z8Nx41JlTUbibMJlYJNpEvnw3y/VkBcI3py7WZEwRApYc7V/ELyA59mejFCKqXs6KSA7bUnEE/24gyoiKJQw2jzL9bN+HyABuOZJ7deyC9w8nXP3jK0Ll1bXx62GaSfaS9rUivY5vkK2WQ1YLBAi/YTlU8lJSHDEg56ig6ry2AWgbzFqpPgz6mTDrYVu+3iO63hEKuA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5038.14; Wed, 9 Mar
 2022 10:24:41 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%8]) with mapi id 15.20.5038.029; Wed, 9 Mar 2022
 10:24:41 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/6] drm/i915: Remove leftover cnl SAGV block
 time
Thread-Index: AQHYMxRmOTuVZch4o0i6fj9aiz1kkay22ZwA
Date: Wed, 9 Mar 2022 10:24:41 +0000
Message-ID: <f31035ff15d5e6332bd5f4dfd0e246af7124c8eb.camel@intel.com>
References: <20220308173230.4182-1-ville.syrjala@linux.intel.com>
 <20220308173230.4182-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20220308173230.4182-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6912fa0-f8bd-4cba-b1a7-08da01b70610
x-ms-traffictypediagnostic: BY5PR11MB4243:EE_
x-microsoft-antispam-prvs: <BY5PR11MB42434BBC2A72963EDBA67BDCF60A9@BY5PR11MB4243.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1wi/dODZUXSrfQ8eRl3uy0RddyFNSkJPu/MqnedCsufDM0brcl5vhgZhKSkuHsWDwmntbzWKfQ3oJMMpkLQcih2T3MOv29dRlrWuVLmcE72Bh3su4XylPevFI6nBQU9E5TTdYHFhkFaGiQ81j6Ir/EXtRtLZN2bzD6ulQ0uM+p8bGM/iSPhCwPCX1FmhWLwOcrRdhX2lPDW1fZh6sEYGrjBaLvyTMyvRG37noYmzdUQlQEvoyWTLTNOabJbYN7ctmyC8saCpKinh3D434+aSCWiiUsX62UMo7mCbhLRbebNCE6nYwv0JLa+XNYOfxWkgFlkZ87m0P4qUDfUiAl5s2880PUdCHqeUTsOx2m7T3bsYmnluQAQG3gZnkEi2T7VYoLxsn6GtfR1sTX2Yl6Yw782wu0aLfAxV+/YsJ5O5WYfr/hKL9ATp8zjRVIm5mNpJuMdzFCeKkKg/wMrEKSlshjR60nALmaZJ7yY07iuTRf+OXPWJ5x+/ldPkQs3UFJyrROk/XGy7FVBxO21HNCp0y7W53gfe7hZPlySq99RZH7qVlVS5t0tMKU9lPcXq1KwkpmxTSSfJo41Tb0Dar+5wA8CjikdT3OANnvhFu6jT+y05pIQO33YnFixmyrPzjhuTiNO8fvimJKBrwRzud5eOg+Dkbx18Qm+DjMGUK49lRiWsnWNW+tDiaXIM8yrOytypQwAr/rjoNlBRIQYQdlorvQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(110136005)(2616005)(186003)(26005)(2906002)(122000001)(5660300002)(86362001)(8936002)(38070700005)(4744005)(83380400001)(6512007)(38100700002)(6506007)(82960400001)(71200400001)(64756008)(66446008)(66476007)(66946007)(76116006)(8676002)(66556008)(91956017)(6486002)(508600001)(316002)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cHRuT09icDJOWUt2aW5iNEI0L001NmI1d1MvY2xtRjZ5YkFnTnNHQ1FLSmNP?=
 =?utf-8?B?UnJlMitUcTFEcEpHZDVNR1Z2b1l1bmZ6NGJiK0M2RlMyODYvVzVnbzQ3Ykwz?=
 =?utf-8?B?akI0aEdkZld1ODJpUVVUdHNNUmtMQzNmWW42LytjM1lMYzR0VENIMitKcTRv?=
 =?utf-8?B?Ly9MWVRuR29pbnQyOUdHdytleFAxeEJ3NEJLS3VFU2l3TDlCVFhiMUlsVlF6?=
 =?utf-8?B?T3FJMHNUTEF6TTlXWVE3Z2p3ZllWVCtEK3FJWTNNRUczUjJuZFQzWWxOMmN0?=
 =?utf-8?B?UTdiNGczcjJMZ0JLSHlrV0E4Q2tzYXRQSWw3TDV4UC9UeFNKUnlSbkJsVktS?=
 =?utf-8?B?VW9pbTk0a3ZXTEtRZ1FSa09pMXkvMG5KdHY0V0Y1cmNzL1pEcTdEdHp6Sk9h?=
 =?utf-8?B?eS83WGsrelMvcmZHcmg5ZlIvekw4a1V4UnF1VVlaMFJ4U09aZU1HUWI3cmFH?=
 =?utf-8?B?eENSTnNMOWY0WUd6NDJMQnBLWldEV2xPckdROXhMYXFUSEpVOWtaQnZ4Smx5?=
 =?utf-8?B?NmxYMlF4UGNERkp2bXFoQW02QkNyVm9STWY2ZkdCOGw5MEFYK3VCK1QwczlX?=
 =?utf-8?B?V29hOTRFNFp2clRvenNjMVFsWDhoUnRmcEIyWFhhOWtCVGM5aEllcGJpc0or?=
 =?utf-8?B?Tk1KR1A2bmZVNXd1elNtWkJ1VkZpNmZPN1dINXpyeE9HbXJlT0c0RVNaZW5p?=
 =?utf-8?B?Z2VoQUlJdWtaT3dJYmtaelVscC9ZdFFYZkZ5d3NhVFNTSHUrOVB4SHk2Uko4?=
 =?utf-8?B?WGlQWHdLZG8vTmpjZCt4eGtrWldWWGVRTFVQaUQxMlg4anNnZVdUNUg1dThj?=
 =?utf-8?B?T0gydm0vd0lIR2tIK2ZSdkE2MDNFN1krSCtMeSt2ZW5oMmNNc0l3NWdFRTU1?=
 =?utf-8?B?Z1lYVVRxWUR0azhuYkNBallEaFVzUEE0a0ZSelU4N0FhR01zRjBrY1EzRzhU?=
 =?utf-8?B?eGlwMEd4NDAyUlQyc0lYWG45TC81ZEdYNVUxQW92UkU2NE1MNjhVMFZEWkdm?=
 =?utf-8?B?L0hWVnRXMDJYZlVSVDFzMlFueGloNjV0N1FlTjJZcVF1cjg3eHFxZnArejdN?=
 =?utf-8?B?bGpwdHJlUUZBMUNDTVRXajhhZklDM2piRkJQMm9lZi9BYjRqRDBaaWVTUVA2?=
 =?utf-8?B?WVJvUGpsNjE0R2ZRSm9DTlYzUW8xLzZJc3hEeTZQcjZWWjh2ZllMb0RMQnZN?=
 =?utf-8?B?OHY2bDJaYnJuOUY2RGp0QkxBalVwdkVCL1Z0U2ZLcWdvZGNZQVdsK0lSdHBi?=
 =?utf-8?B?enZCT0ppWGt4T0Z6NkRjZXppUzdGMmtUS1dLYS8yNEJja1Jkb1NjbFFVZVp3?=
 =?utf-8?B?VUFuVnBBMS9oSmlUWWlQSDlWc3lDY1hDektZMU1KdGpDTDBkNTI0Q2NBS1ZG?=
 =?utf-8?B?NEhxY0JldTBpYlJhcklGRjBaN01oTUgwdzV1bGhKZWIrZEYrUFNXaUlsakI5?=
 =?utf-8?B?WFd3ekV0QmpEU0ZYVE9tOFloODk4N0FzTTE5Nm9rY3BKQVpCcXZ4VHZqQXoy?=
 =?utf-8?B?b1pHWDZqWWUzMjdIMW5KT05XYzMzSkw0TkphS2s5ZGpmS0J6eTJDeU1BNnow?=
 =?utf-8?B?TXFoa3JUcHhzZnhYaGdjZ1pkVjhnQUZGNEM5N2U4UUI2QmhTRytaK2xxNFRi?=
 =?utf-8?B?TWVCZ0l2bmJ0RUlod1hFUWFkWkdKN3ZGTnZhWFlWZitYNzZnSEQ5eXNsR09Q?=
 =?utf-8?B?Q2RBdlNQSnd4V1VIb1h2NFJrUVFzVFNscE1SWFJHQ1RDRXhjTmVMTWhXVXFX?=
 =?utf-8?B?NjJ0RlZ0N0p0V2VSQitNSTY4S1REWWZ6QjRHMXZNUGltQmYrbXJiSHp3VGM1?=
 =?utf-8?B?OGZ4VklQanpyQXN0Tmt0UkdYdTJ4a29nRElrSFZqME00cGl5b0MwMjdhKzY5?=
 =?utf-8?B?QUtmaGFDb1EwV3lMY1BTNHZFZWFJcWdqVHZMZzZ6MTZ2cFVyTjRmRERXYngr?=
 =?utf-8?B?RWh0b0VaSlZwb3VwK05HYUw2RFdrRjhvQitHN0t0WTZjYms2RG9oYUZ6NUhz?=
 =?utf-8?B?ODdXdGVLQ0VRc2FSVEpxcTVJY0hPdUt4Z0cwSzBqVEZCU0ZsY20wU1IrYU5F?=
 =?utf-8?B?Q2IzN3liK2pULzMxLytBME0yaFpmTTFaS1R2NFkrZEFxeTFYdmFtSHNOVjZM?=
 =?utf-8?B?aWhiQUx6M1hsMzRyeFI5ak9nMU5lYnRnblcvVlFtL2cyeUNXT3dlbGFvTE1j?=
 =?utf-8?B?VFlpTHl6VmlOelVkR0JIMkJmRm5aaEVrbEl3MDB2SkluT2RZTVl4RnZmZVJa?=
 =?utf-8?Q?ECieh84v6MRuukq7ydDqb051Bjti7ZJr4tO4fLAeB0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <08757D5D984BCE44BE640449479A9B1B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6912fa0-f8bd-4cba-b1a7-08da01b70610
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Mar 2022 10:24:41.8121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SgZR+pDEnCBSzHo4/ZJxbIQ+jzZ2rKUPzQ1hfGjjHpBAfx2sOzEBSlW1ujD0Y8/4vFsSVSFhiNNBFnGiNc241oeKcalrXUXsN7tEwwSPNwI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4243
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/6] drm/i915: Remove leftover cnl SAGV
 block time
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

T24gVHVlLCAyMDIyLTAzLTA4IGF0IDE5OjMyICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gR0xLIGRvZXNuJ3Qgc3VwcG9ydCBTQUdWLCBzbyB3aXRoIENOTCBnb25lIHRoZXJlIGlz
IG5vDQo+IHVzZSBmb3IgaGF2aW5nIGEgRElTUExBWV9WRVI9PTEwIFNBR1YgYmxvY2sgdGltZSBp
biB0aGUgY29kZS4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUu
c3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGls
bGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFpQGludGVsLmNvbT4NCg0KDQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYyB8IDMgLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMyBk
ZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRl
bF9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiBpbmRleCBmNzBlYjEw
YWIyNGQuLjhlZTMxYzk1OTBhNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfcG0uYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5jDQo+IEBA
IC0zNjg5LDkgKzM2ODksNiBAQCBza2xfc2V0dXBfc2Fndl9ibG9ja190aW1lKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdikNCj4gIAl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9w
cml2KSA9PSAxMSkgew0KPiAgCQlkZXZfcHJpdi0+c2Fndl9ibG9ja190aW1lX3VzID0gMTA7DQo+
ICAJCXJldHVybjsNCj4gLQl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSAxMCkg
ew0KPiAtCQlkZXZfcHJpdi0+c2Fndl9ibG9ja190aW1lX3VzID0gMjA7DQo+IC0JCXJldHVybjsN
Cj4gIAl9IGVsc2UgaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA9PSA5KSB7DQo+ICAJCWRldl9w
cml2LT5zYWd2X2Jsb2NrX3RpbWVfdXMgPSAzMDsNCj4gIAkJcmV0dXJuOw0K
