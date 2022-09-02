Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C6D5AAC02
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 12:03:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EB92A10E7DA;
	Fri,  2 Sep 2022 10:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 12B9A10E7DA
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 10:02:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662112976; x=1693648976;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=AfWHuUiBJ+kCrTv/MURN7wpcBUqg12X0smToZoR9fBQ=;
 b=ZiYAU3siVW0SozWIhjtpfw5/R/RjjUTbxOx4vDsE1vrFAPW4il7MWBZA
 Fwi0VKszktzf6YOOzpj/dqC59GAxKr+orR9Ydc6TtUJjFyc4qwVqDsPba
 7xDlRpg08MVKXON4A/XzzQ2vRRCudHjycHbptgLkMIQ5flSnTNTJn23cv
 mylJY/QQojQG+B4RghERtpBklEgUVufrcswLVr8Zpw2mpxiGQTZaVH+sl
 j3SYkUzDqU7hCqOqSXfANHMBfE3Ssic6JfeyHSjxqyzcLk6f3Ja4bxZZl
 n99G9qlhIaWs5d0brLrromIMuc3jFwS905sXpjkDyM2L7aFEi+E1RSJLi w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="296729854"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="296729854"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 03:02:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="716468429"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 02 Sep 2022 03:02:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 2 Sep 2022 03:02:54 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 2 Sep 2022 03:02:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 2 Sep 2022 03:02:54 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 2 Sep 2022 03:02:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A0cSMJckJwl7li9cvXzA3X/x6mXW9oqwvxd92Ugs9klaA1HpT7lA9WSpnNwqDz+H4kZ3srSeY88WvCNp5+ZlWNitz33vITL/jFr1wYKj4wBbKGCJbwmISl1+DmAurcFAj/gEyoFkckoAmwsTU2HkuZ+sC8gpKZquyC93S769fIVmZiZLRHv6WsI3Rns9UEbFTboZL/lNYKSFimQcWjsvtqvwzN3pft9BCqucHLf1z3DioSIZWgnrHFsYwwVlblx4++IfjDMRPvoyb9smu16+Wo6Ydz+U4Bn4NyOWD34MyNa0rbOeVbUELqM+ay+Uu9IKe5iNd0hbG09YsARufiSD+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AfWHuUiBJ+kCrTv/MURN7wpcBUqg12X0smToZoR9fBQ=;
 b=lkDA812WJ7X536sOXtGgc8AlD6bi4Nj/fIdeT++HiFfeQd5gQKJT/MF0nyiqnZrEeWb2RxDytNzJ3OWr7ahZRiol/LB/KVgBi/pMnZHE99gMcEFk6D7bUNBeRc6BmN3BfS0Ex3TtVBFy6/VcCpr+wPHMSXp4LmAe0/wapc6n0DQ8zIJRSOzeInsTiI3QeReKUjrBT/nLinNljfdIWanE3WvzxusyM5qzxX4WjINKKUYARUmwxgYJCHlK0gG+iYBr5AYw/a6TKPGbJiHmysLHPIoMem/Dpbs7XE4XHCmWPFjpwFJANOZVRSr2voxvSi/LpSbgtasgTVeRjqOdgp6B3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY4PR11MB1544.namprd11.prod.outlook.com (2603:10b6:910:d::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5566.21; Fri, 2 Sep
 2022 10:02:52 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.010; Fri, 2 Sep 2022
 10:02:51 +0000
From: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
To: "nirmoy.das@linux.intel.com" <nirmoy.das@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915: Move some of the request
 decisions out of rps_boost function.
Thread-Index: AQHYvjmw2QgxGzB0s02YGdZpmX4Tka3L2nqAgAAPZAA=
Date: Fri, 2 Sep 2022 10:02:51 +0000
Message-ID: <c7ad340b9eec696167d9a71e12e369b879b7dfed.camel@intel.com>
References: <20220901193228.255098-1-rodrigo.vivi@intel.com>
 <d47157f7-1bd0-aeb3-101e-541e4ad1de40@linux.intel.com>
In-Reply-To: <d47157f7-1bd0-aeb3-101e-541e4ad1de40@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.4 (3.42.4-2.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a92d1e60-84db-45eb-6708-08da8cca4c5d
x-ms-traffictypediagnostic: CY4PR11MB1544:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i8qzrOdXb6yNpfQrEDuh5Cpl0lz1b61tXXtc4kHFOq6g6gDxwf/CpUHWzvlU1rtoEq0clmdVjn8y8ryvdE2DVazWLJkooSZ9186q5jCx6yQQj+PotPRi7nvMRDdIt60ACqcTycvf+8GARCq61iwtAyh1GU++hLUewuMEZSuWPvDDj2p2umhe69MTRePnPS6OvQsu8Xx80c2nJ8pbxWGPBvz6mpKuwiOblC5c897w6iRusv31yyM+y5npxffYi6XqT6bjuo8iqz8UnZX+D8rzKZsodG2N4HypS1Vau6mHH2U76ARSwX051qNycsXv7YehKsC7l7e47vZ03a3CJw5quD/XxtDAdqyf8XbURgOosBfki7aWlNUxsO4/0OSykjy74N0lMqYA4S40ZJCB43DVuCwX+x1nmDoTt5B8JamVtUm39nAhSFCy8wtn9V/0j6M5OANMxv5p9czMGxjmA5FDaOc4HRhJ9p7I4MQiDTgMN/6g7wSGEsWCZ/eRxcQhMmVJicb3TUYqT5IAD13nQihyoonn1hi0A0hR4VYJKR5/2TKX3uv2svi6FFBvD/pdhSing+A4t91gVuCL9OCx9YgBVnlO+SHDi4CkUO/TegOBED1PLFvAKBresD15rMNKcqyOSQreTCpX+Tj/zEiEolOkpchJ8RNG6kj1FCmdMcka5yiWAs8s2i5GQ9ghWVQ40DTaJHs57qxkIq0lVPCRwi5LYw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(376002)(346002)(39860400002)(366004)(136003)(478600001)(8676002)(76116006)(64756008)(66476007)(316002)(966005)(110136005)(71200400001)(66446008)(6486002)(66946007)(2906002)(66556008)(8936002)(82960400001)(38070700005)(36756003)(38100700002)(86362001)(5660300002)(53546011)(6506007)(122000001)(2616005)(26005)(186003)(83380400001)(91956017)(6512007)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b2NLYVpubVdWSHNZK3BKb1F0ZlVCd1ZiTVd1eGY3Ym9YSFVwWFV2YUxVeHY1?=
 =?utf-8?B?UFFWZEdzRHpzM0dvT210RTJrRTFQZHB6MkpoYllJb0paQXpQay9LSTRNRmFL?=
 =?utf-8?B?bTV6WE15SE1hOTJpa0JpWVJEM3hSbGNxdjBzUHdrWEFDT3ZXTVM0QzNDQnps?=
 =?utf-8?B?S2tqL0tKVmRyb3pERWhxRFZMN3p4ZTJQYWlFWDRRKytEWjBrVmtlMHpYSk1s?=
 =?utf-8?B?NW9SZU1oK3E3M05UbW8reWdmT01nNnRtRWtGckhKbmhLUlJtTWJoZXlZQWxT?=
 =?utf-8?B?d3pQeUNUNWk3S1F0c081TmZoZ3Q5NVZrS3hlemw2YkVsckh5WitSOHh6aGtK?=
 =?utf-8?B?Wjdhejhqc3hUR0JLaXBGcVZCTnFLcjFvNUxvQTJoNkt5b1ZHUlR2SjB2eEZv?=
 =?utf-8?B?SU1zNHZOeTRDbHdnQ2h6TWpZRDFiSWFaaHVWejQ5eHRTNjhjR0lSTnhoVm43?=
 =?utf-8?B?N2J2T1o0cVJ6blJseU1SVy9RUERQb2pWYlFKNXI2SDZ5NnNtTzNRaXdGNHp2?=
 =?utf-8?B?Y1lZNVNtREZGajJ0SkRJcnBzRzV4NGhzZGJkYXBtSnRySG51M2RmUW5HdkdC?=
 =?utf-8?B?QTE3RGw0N3MwdzkwMG41djdkZklWbzZwbTN2RHc2RWh5bDRUdElkdlA1cUZs?=
 =?utf-8?B?M2ZhcEx3d2V1OEFaTkU1b3Z5S2RROE1NdGNncEoyOW5DWHBGdXZ1ZVl6bG15?=
 =?utf-8?B?VWVVY0ViS2RIakppMmxNeXJjNTBPNHNzY2NnVWxzRnBsQWQyMU5DUUNrZnhv?=
 =?utf-8?B?K2VnWE1ZNy9nU1pqTmFzOUNvZGl0L3d1dFJ4UnVLNHpJZVQ0L2YvWFJwdHJu?=
 =?utf-8?B?dFhIR3NSakJ1Tkx6MmJLaDlnUmJOUjBmUE16dzF5YnRRS2ZwL0hVMjVPclQ2?=
 =?utf-8?B?SEFSeVpyZjF2bzdZREt0OVliNEpUdGpoaVE0MVA2Snh6WHhBR0NkTnNYVEUr?=
 =?utf-8?B?a3k3OHEvZ2xieENvWm1NaklIWUVjU3NrWmthWUFPUVpIZ1RVbmNGVU0zajEw?=
 =?utf-8?B?a1Y2dGsrbFhvRTRmZXZENWtFd0xFWjk0MEhxY3ArZUtZRGdBenRLZ2F6ZHl5?=
 =?utf-8?B?T2pSSVVrdDI0aFFxWjJoN29YNjZQYUJtbVIwZXcwbmk4R0oyS1lsMG92Myto?=
 =?utf-8?B?QVA1ZXJ5L2NhSzlYeldnOHRHaXNYWVRPSUh5VTc5OTdtYW1DOUN1SWEvcDVL?=
 =?utf-8?B?L0NoQm95eWVTYXRLS005NFRTclhKUFVGcjF4MmF2MW9jQUNadkpVYTNqUi8x?=
 =?utf-8?B?dktQMG9FQmNhNytlZldzR091OGxFWldQSVhqOTFRVFFRSTlSMUl2ZTBYSHl4?=
 =?utf-8?B?dGlWOHIveVNmaW9qK0tQOUpxYVFaUlB6YzY0Z0ZCVXZWUEJQZmlCTzJRclNR?=
 =?utf-8?B?amJUZ0FZTkpVei9tWm85Y0o4VWJWdTJ3RVllSi8wYXpyd2VHNUNid0RMOWE0?=
 =?utf-8?B?TUR2emNZYlRTcEFHZHBmWXJrMUtBS0VmQlF2eEhoY3ZRdTJHamJXbTdNaE5Q?=
 =?utf-8?B?emE5MHdoaXM2MWdsaG1ad1UxaEdHYTNqNGV3MlJreTdCb2RFUm5IUnNNSU1u?=
 =?utf-8?B?UWJwL2JJWmNTMG5RMjJ3eWlsVXFQZ3llZzYzT1RDWllhNGRxenZUbzRoTzkv?=
 =?utf-8?B?NGlaT3pDQVR4eG9PbEF2WkdtQWhNd2d2OEpXWUhTOEEvdTdZR0FsLzYydTN4?=
 =?utf-8?B?Q1FKMWJONDdBWWJSQTZFMVZLczlsWVJCQ0RtelcvUFhjT2ZHRElleHYwVXJw?=
 =?utf-8?B?MjltOWllOXhGaWp0NEROUXhvTGc0aWZGaUpkMmwrUlNKRFJWakx6dGh0dWZ2?=
 =?utf-8?B?QVdzek5aZzhYcmJ2QmJScjJnTldhbUtNdkZHMi8wd0pKUThKcGppOXRualdo?=
 =?utf-8?B?T2pyZnJFRHlWT2o3aUR0aUsrR2FhMTRqR0E1Ym9rOGlveFZxSHNEYkF2c0dN?=
 =?utf-8?B?TVR5bjZxc1NrRkJoMUNGcjM5TWQwTzQwU3JnSHMrSWh4djMwWmtZU2N3dEla?=
 =?utf-8?B?aW5SQlcxQ0drV3FLRDllZVZvR0FqSm9sdVdURHFBa0tpazFuNHFlS2pvbVk1?=
 =?utf-8?B?QWZRSnBoUkNFSHRYTENMZk0xZlREbWpFWjhGWC81NnNKTmZjRFdKMkZUTWtF?=
 =?utf-8?B?ZEtkRE9TMHBZMWJKWFVnQ1lXeWtXWGptWCtGVElSMDFGR3Mya1NUYXFmSCtm?=
 =?utf-8?B?S2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <09AB14843FE5DA45BA5F8B6903B1ADC5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a92d1e60-84db-45eb-6708-08da8cca4c5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Sep 2022 10:02:51.8662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GuHLhKRreF0UeCMP93WQxWg42R0z4gxJSfZz7mKF76gYMpWjxQ8beLUKX8OisQ/3YAXLBsKYq3HsuaL/kKqAMQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR11MB1544
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Move some of the request
 decisions out of rps_boost function.
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

T24gRnJpLCAyMDIyLTA5LTAyIGF0IDExOjA3ICswMjAwLCBEYXMsIE5pcm1veSB3cm90ZToNCj4g
SGkgUm9kcmlnbywNCj4gDQo+IE9uIDkvMS8yMDIyIDk6MzIgUE0sIFJvZHJpZ28gVml2aSB3cm90
ZToNCj4gPiBJZGVhbGx5IGFsbCB0aGUgZGVjaXNpb25zIHNob3VsZCBiZSBtYWRlIGJlZm9yZSBj
YWxsaW5nIHRoZSBib29zdA0KPiA+IGZ1bmN0aW9uLg0KPiA+IEFuZCBycHMgZnVuY3Rpb25zIG9u
bHkgcmVjZWl2aW5nIHRoZSBycHMgc3RydWN0LiBBdCBsZWFzdCBsZXRzIG1vdmUNCj4gPiBtb3N0
DQo+ID4gb2YgdGhlIGRlY2lzaW9ucyB0byB0aGUgcmVxdWVzdCBjb21wb25lbnQsIGJ1dCBzdGls
bCBsZWF2ZSB0aGUgdGVzdA0KPiA+IGFuZCBzZXQgb2YgdGhlIGZlbmNlIGZsYWcgYm9vc3QgaW5z
aWRlIHRoZSBycHMgYmVjYXVzZSB0aGF0IG1pZ2h0DQo+ID4gYmUgdGltZQ0KPiA+IHNlbnNpdGl2
ZS4NCj4gPiANCj4gPiBDYzogQXNodXRvc2ggRGl4aXQgPGFzaHV0b3NoLmRpeGl0QGludGVsLmNv
bT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBSb2RyaWdvIFZpdmkgPHJvZHJpZ28udml2aUBpbnRlbC5j
b20+DQo+ID4gLS0tDQo+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9h
dG9taWNfcGxhbmUuYyB8IDIgKy0NCj4gPiDCoCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkx
NV9nZW1fd2FpdC5jwqDCoMKgwqDCoMKgwqDCoMKgIHwgMyArKy0NCj4gPiDCoCBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAz
IC0tLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5owqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCB8IDEgKw0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5
MTVfcmVxdWVzdC5owqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB8IDUgKysrLS0NCj4gPiDC
oCA1IGZpbGVzIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWNfcGxhbmUuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9t
aWNfcGxhbmUuYw0KPiA+IGluZGV4IGRkODc2ZGJiYWEzOS4uNjk2N2M0N2M3YmEwIDEwMDY0NA0K
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5l
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19w
bGFuZS5jDQo+ID4gQEAgLTkxOCw3ICs5MTgsNyBAQCBzdGF0aWMgaW50IGRvX3Jwc19ib29zdChz
dHJ1Y3Qgd2FpdF9xdWV1ZV9lbnRyeQ0KPiA+ICpfd2FpdCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
ICogaXMgcmVhc29uYWJsZSB0byBhc3N1bWUgdGhhdCBpdCB3aWxsIGNvbXBsZXRlIGJlZm9yZSB0
aGUNCj4gPiBuZXh0DQo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIHZibGFuayB3aXRob3V0IG91ciBp
bnRlcnZlbnRpb24sIHNvIGxlYXZlIFJQUyBhbG9uZS4NCj4gPiDCoMKgwqDCoMKgwqDCoMKgICov
DQo+ID4gLcKgwqDCoMKgwqDCoMKgaWYgKCFpOTE1X3JlcXVlc3Rfc3RhcnRlZChycSkpDQo+ID4g
K8KgwqDCoMKgwqDCoMKgaWYgKCFpOTE1X3JlcXVlc3Rfc3RhcnRlZChycSkgJiYNCj4gPiBpOTE1
X3JlcXVlc3RfbmVlZHNfYm9vc3QocnEpKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaW50ZWxfcnBzX2Jvb3N0KHJxKTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgaTkxNV9yZXF1
ZXN0X3B1dChycSk7DQo+ID4gwqAgDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2dlbS9pOTE1X2dlbV93YWl0LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9p
OTE1X2dlbV93YWl0LmMNCj4gPiBpbmRleCBlNmUwMWMyYTc0YTYuLjJmMmNhNWUyNzI0OCAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fd2FpdC5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ2VtL2k5MTVfZ2VtX3dhaXQuYw0KPiA+IEBA
IC01OCw3ICs1OCw4IEBAIGk5MTVfZ2VtX29iamVjdF9ib29zdChzdHJ1Y3QgZG1hX3Jlc3YgKnJl
c3YsDQo+ID4gdW5zaWduZWQgaW50IGZsYWdzKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkbWFfcmVzdl91c2FnZV9ydyhmbGFncyAm
DQo+ID4gSTkxNV9XQUlUX0FMTCkpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBkbWFfcmVzdl9mb3Jf
ZWFjaF9mZW5jZV91bmxvY2tlZCgmY3Vyc29yLCBmZW5jZSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoGlmIChkbWFfZmVuY2VfaXNfaTkxNShmZW5jZSkgJiYNCj4gPiAtwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFpOTE1X3JlcXVlc3Rfc3RhcnRlZCh0
b19yZXF1ZXN0KGZlbmNlKSkpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCAhaTkxNV9yZXF1ZXN0X3N0YXJ0ZWQodG9fcmVxdWVzdChmZW5jZSkpICYmDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpOTE1X3JlcXVlc3RfbmVlZHNfYm9v
c3QodG9fcmVxdWVzdChmZW5jZSkpKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Jwc19ib29zdCh0b19yZXF1ZXN0KGZlbmNlKSk7DQo+
ID4gwqDCoMKgwqDCoMKgwqDCoGRtYV9yZXN2X2l0ZXJfZW5kKCZjdXJzb3IpOw0KPiA+IMKgIH0N
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmMNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jwcy5jDQo+ID4gaW5kZXggNTc5YWU5
YWMwODljLi4yYzhkOWVlYjdlN2UgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcnBzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRl
bF9ycHMuYw0KPiA+IEBAIC0xMDA2LDkgKzEwMDYsNiBAQCB2b2lkIGludGVsX3Jwc19ib29zdChz
dHJ1Y3QgaTkxNV9yZXF1ZXN0ICpycSkNCj4gPiDCoCB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0
cnVjdCBpbnRlbF9ndWNfc2xwYyAqc2xwYzsNCj4gPiDCoCANCj4gPiAtwqDCoMKgwqDCoMKgwqBp
ZiAoaTkxNV9yZXF1ZXN0X3NpZ25hbGVkKHJxKSB8fA0KPiA+IGk5MTVfcmVxdWVzdF9oYXNfd2Fp
dGJvb3N0KHJxKSkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuOw0K
PiA+IC0NCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyogU2VyaWFsaXplcyB3aXRoIGk5MTVfcmVxdWVz
dF9yZXRpcmUoKSAqLw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAoIXRlc3RfYW5kX3NldF9iaXQo
STkxNV9GRU5DRV9GTEFHX0JPT1NULCAmcnEtDQo+ID4gPmZlbmNlLmZsYWdzKSkgew0KPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3JwcyAqcnBzID0gJlJF
QURfT05DRShycS0+ZW5naW5lKS0+Z3QtDQo+ID4gPnJwczsNCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmgNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L2ludGVsX3Jwcy5oDQo+ID4gaW5kZXggNDUwOWRmZGM1MmUwLi45YTA1M2YxYjA0ZTgg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcnBzLmgNCj4g
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ycHMuaA0KPiA+IEBAIC0yMyw2
ICsyMyw3IEBAIHZvaWQgaW50ZWxfcnBzX2Rpc2FibGUoc3RydWN0IGludGVsX3JwcyAqcnBzKTsN
Cj4gPiDCoCANCj4gPiDCoCB2b2lkIGludGVsX3Jwc19wYXJrKHN0cnVjdCBpbnRlbF9ycHMgKnJw
cyk7DQo+ID4gwqAgdm9pZCBpbnRlbF9ycHNfdW5wYXJrKHN0cnVjdCBpbnRlbF9ycHMgKnJwcyk7
DQo+ID4gK2Jvb2wgaW50ZWxfcnBzX3JlcXVlc3RfbmVlZHNfYm9vc3Qoc3RydWN0IGk5MTVfcmVx
dWVzdCAqcnEpOw0KPiA+IMKgIHZvaWQgaW50ZWxfcnBzX2Jvb3N0KHN0cnVjdCBpOTE1X3JlcXVl
c3QgKnJxKTsNCj4gPiDCoCB2b2lkIGludGVsX3Jwc19kZWNfd2FpdGVycyhzdHJ1Y3QgaW50ZWxf
cnBzICpycHMpOw0KPiA+IMKgIHUzMiBpbnRlbF9ycHNfZ2V0X2Jvb3N0X2ZyZXF1ZW5jeShzdHJ1
Y3QgaW50ZWxfcnBzICpycHMpOw0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9pOTE1X3JlcXVlc3QuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZXF1ZXN0
LmgNCj4gPiBpbmRleCA0NzA0MWVjNjhkZjguLjRmNTA0OWVmMWFiOSAxMDA2NDQNCj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlcXVlc3QuaA0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2k5MTVfcmVxdWVzdC5oDQo+ID4gQEAgLTYyNSw5ICs2MjUsMTAgQEAgc3Rh
dGljIGlubGluZSB2b2lkDQo+ID4gaTkxNV9yZXF1ZXN0X21hcmtfY29tcGxldGUoc3RydWN0IGk5
MTVfcmVxdWVzdCAqcnEpDQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
ICh1MzIgKikmcnEtPmZlbmNlLnNlcW5vKTsNCj4gPiDCoCB9DQo+ID4gwqAgDQo+ID4gLXN0YXRp
YyBpbmxpbmUgYm9vbCBpOTE1X3JlcXVlc3RfaGFzX3dhaXRib29zdChjb25zdCBzdHJ1Y3QNCj4g
PiBpOTE1X3JlcXVlc3QgKnJxKQ0KPiA+ICtzdGF0aWMgaW5saW5lIGJvb2wgaTkxNV9yZXF1ZXN0
X25lZWRzX2Jvb3N0KGNvbnN0IHN0cnVjdA0KPiA+IGk5MTVfcmVxdWVzdCAqcnEpDQo+ID4gwqAg
ew0KPiA+IC3CoMKgwqDCoMKgwqDCoHJldHVybiB0ZXN0X2JpdChJOTE1X0ZFTkNFX0ZMQUdfQk9P
U1QsICZycS0+ZmVuY2UuZmxhZ3MpOw0KPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBpOTE1X3Jl
cXVlc3Rfc2lnbmFsZWQocnEpDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCYm
IHRlc3RfYml0KEk5MTVfRkVOQ0VfRkxBR19CT09TVCwgJnJxLQ0KPiA+ID5mZW5jZS5mbGFncyk7
DQo+IA0KPiBUaGlzIGNvdWxkIGJlIGk5MTVfcmVxdWVzdF9oYXNfd2FpdGJvb3N0KCkgb3IgZWxz
ZSBBRkFJQ1MgDQo+IGludGVsX3Jwc19ib29zdCgpIGlzIHRoZSBvbmx5IHVzZXIgb2YgaTkxNV9y
ZXF1ZXN0X2hhc193YWl0Ym9vc3QoKQ0KPiANCj4gYW5kIHRoYXQgY291bGQgYmUgcmVtb3ZlZC4N
Cj4gDQo+IE90aGVyd2lzZSB0aGUgc2VyaWVzIGlzOiBBY2tlZC1ieTogTmlybW95IERhcyA8bmly
bW95LmRhc0BpbnRlbC5jb20+DQoNClRoYW5rIHlvdS4gSSB3aWxsIGFjdHVhbGx5IGhvbGQgdGhp
cyBwYXRjaCBmb3Igbm93LCBiZWNhdXNlIHRoZXJlJ3Mgbm90DQptdWNoIHZhbHVlIGFsb25lIGFu
ZCB0aGUgbmV4dCBvbmUgaXMgcGVuZGluZyBicm9hZGVyIHZhbGlkYXRpb24uDQoNCkkgaGFkIHJl
c2VudCB0aGUgc2VyaWVzIHdpdGggdGhlIG9ubHkgMiBzaW1wbGUgcGF0Y2hlcyB0aGF0IEkgd2Fu
dCBmb3INCm5vdzogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMDgw
NzUvDQoNClRoYW5rcywNClJvZHJpZ28uDQoNCj4gDQo+IE5pcm1veQ0KPiANCj4gPiDCoCB9DQo+
ID4gwqAgDQo+ID4gwqAgc3RhdGljIGlubGluZSBib29sIGk5MTVfcmVxdWVzdF9oYXNfbm9wcmVl
bXB0KGNvbnN0IHN0cnVjdA0KPiA+IGk5MTVfcmVxdWVzdCAqcnEpDQoNCg==
