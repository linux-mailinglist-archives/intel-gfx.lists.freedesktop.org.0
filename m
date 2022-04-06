Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C238F4F58D8
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 11:19:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F281C10E251;
	Wed,  6 Apr 2022 09:19:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECCD10E251
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 09:19:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649236763; x=1680772763;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gYL+/o9RxPo6rbhgARoE2N6C+qt1QvDNcQTljl1bP4A=;
 b=B0psSOg1CD0PIepTUDeN8V5KCEg8Ix8J9s2BPjs0y6T6ItBMCviAse+6
 oqFJBpi3xoPtSj3OheTQgvGZQV4jsywcQZLKUpuZWAvYP2Bk727pVkjnQ
 cU7k/gfntx/0o2qo63KgvIp0x6Os62lOxWZMhdwgwv+r8JSINXfaK+ExM
 KoUfCJHkDrjoaFayHfvL+Wthw5C9JAszbhIrfBsU1gyFoPUbrfGKU7FAl
 7KI4wS32PgJ10N2tpfCGvxGHhOSht6kbmEAPY2R6xxbYWblwEUPAa+/9C
 4jvi6PvZpudfkHTHNAlLTbc1c2CeezFVYcewyBIphqsENPtJtylv9cue1 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="241581737"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="241581737"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 02:19:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="523846429"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 06 Apr 2022 02:19:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Apr 2022 02:19:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Apr 2022 02:19:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Apr 2022 02:19:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mt3WiAYCWCsTho7e4F9jEKNNDotGcbOtbuphQJBhqYTb/ZTk8WQfro5++mVS83HvafkxcZOa+ukvWktBQjp1oCHF7cTUuKl237b4vjGAlbujdhrXJcDdAWLN0FNRyEAaazrIbVlriQU0fL2vR53d5aBrx40rqll1rx/gpOMVKwi9XX5nDr69Cs2SHRoQCJUFp0bZVTMYEoreA5IM9PWh8ZgxBNXUy9ptG91HKbbIUDdoOK+9cuIPqNKHMxWIDe0fQ/rdMYmfZH/SOPq8TSQqp571FAIQ0QSUFJE7pod/dFVChfKrs8aYk4YGngM3iwBn5oGimG8RLh51Ib4oEFaADg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gYL+/o9RxPo6rbhgARoE2N6C+qt1QvDNcQTljl1bP4A=;
 b=ItGcs5hHFlpbsutFzA0MQS3J6z9wTKIuFpO3DADcnCBlrvbhXWtn3Y2QLRFilcsk2Xnz7+v7FLrKjtpG+0e7i3U7j+5x9oSq9cffdcTzacxXqxWCVx2eCGCaLOGxTJ3vdAAmObAF2IJTU6oUbGGeJomC/1SNgcjI+tte5HZ9HFGI0Q5HJgPtURzjfGEeohJ9oDYyvCUXkC4rTVLGAVb45ybWCMzNWcfaPh3W3AnlOhv/e0Vw93XkyqbKUpeLjCcrCLS1xD5Sw48Fo5VKIhSb1IT5/vEwQUGtCNjVTyaSf8uB46uZak08reuJz7LL7FCDNXRlo0gVvRfJVzhH+68lHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by DM5PR11MB1498.namprd11.prod.outlook.com (2603:10b6:4:9::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5123.31; Wed, 6 Apr 2022 09:19:20 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%7]) with mapi id 15.20.5123.031; Wed, 6 Apr 2022
 09:19:20 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix skl_pcode_try_request function
Thread-Index: AQHYSNmZp1g4zlUZC0ugQ5TdFdIzQKzh3JeAgACnC4CAABlygA==
Date: Wed, 6 Apr 2022 09:19:19 +0000
Message-ID: <8fdb6de96d0515784d946cc2639e9f2de583abb8.camel@intel.com>
References: <20220405104114.20780-1-stanislav.lisovskiy@intel.com>
 <9436bf0c9b30a5d69a4d3a5cb23304b2f2ed1c5c.camel@intel.com>
 <20220406074813.GA14848@intel.com>
In-Reply-To: <20220406074813.GA14848@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1c3974da-a007-462c-eb19-08da17ae8806
x-ms-traffictypediagnostic: DM5PR11MB1498:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM5PR11MB1498B43770A696D23C6EBB5EF6E79@DM5PR11MB1498.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: xjkdm5ot/YRQFNJ2SmqBFGITdos5USIzVXBC52d6I4WmszmnwFwRK0MazlIMmnThr5RZBVivoo4WQ96dMR/xn2OQtszVLv6MU5dM7zCBo5GNU2xXSztzbuGUWtdDQrGbJHk26fBeu2wHlyD+6HzyuRI5jz9s/+ZaRAmbJ7fKdCtQMAiopeqDQDP25oBik99dVEbr3QIxNFOqXBSD8eSkUGcHtiO2c/ba2hr2vosyi/j2X2Fjo8ojJJf5iXbmPOlOk+xqlTtmpojRxUoVbHerRXgTv0W1mOUhD3n0s/4Li/tfoNdjHcI0eIL1woJchvxYxqQY8MLmk7YONEhJRveyPXy+2ynNZOetNZmumdMynUlXk09z1UQvQWDkxfhD10eLBimu19vrUkRK9zukR6ed2+qv4sLC4YgGYjdFYjOPt+dFpoqGvs+KXWvBGD5raWmZ/765+jS+aH1tP+BWRD2GI6lX4MuNR3/eKxwrTRMJzMjx3IzPmZomUEea7gtf/fUMcBkVpSfD7Pqv5ViXJ+Zg+YwHcXhXPUf7eHu3TpCZgnvHpZxhdSKHukl8fOjdK81qNNRe9Yf3lNGSOHFaQvqZrY0GgciEF8kBmqquLZtKi+BNphCWKaYg7+/uJWenc8Eh0utNtqGtrMto2D3BUfr/t1yzyBRT/gUwXxI7cvaQNmwT6+2yk2w/B7oBXef4k+S/xjM5w9uRFMHvGSSjOYr3IQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(2906002)(5660300002)(6486002)(38100700002)(36756003)(122000001)(82960400001)(508600001)(8936002)(66476007)(8676002)(83380400001)(91956017)(186003)(66446008)(71200400001)(37006003)(6512007)(6636002)(4326008)(76116006)(66946007)(64756008)(6506007)(316002)(66556008)(6862004)(2616005)(86362001)(26005)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QlkycWRtV1hlVVcvNFJiYUtVNFk2QTVIOENBN2NmY1dZdUR4R0c0WGZVaU1W?=
 =?utf-8?B?SWdxeEJ5dUxyQ0RZUmFtcGt0UHFtTk9peGRTazc3ZDVjMkQ3RHh0N1VVMGZt?=
 =?utf-8?B?cDMxbThGNy9IRTl4K2MzOEhpVzJyMVA2bmNqVXBzYUpPbWJRU0RvV3dBcmFa?=
 =?utf-8?B?cVRVT3dJU3FuNXhmc1ZIUnlLTHZnMDdVbzg1KzdsdEFkeGlGRVczcnhnbmph?=
 =?utf-8?B?ZXVJdlBqL0dVaFhia3BtaFJCWEswTUE1cjNDbmZGWklTL0twR1ZiRS9PZzVp?=
 =?utf-8?B?clg5ZTA4V0QvTzdyWDdNNC9sRmVGY0xHNjJZMFBQTGgrY25mSlJLMTBRKzBs?=
 =?utf-8?B?L0JkbnpmU1FleUtXMSsyQWJvWlJQVGp4RlVJSURoNGY2M0hOeDNxZUFxNmow?=
 =?utf-8?B?TDJuaGtvRGJZM1crd1Q3NUZVVE05c1hjaG9jL2p2NUJLVnFOOUxLaGlZem01?=
 =?utf-8?B?SGluY0V2NkVmLzJOTWxsTzQ4eGVocXF5RFNzazVZNitMZjhwbXppeUxWQUNL?=
 =?utf-8?B?UTlGYlZaazVLQ2dxTVFSbUlaL3RRRXNocExaRnQxU2M5cnBaQjU2Rm45Nitt?=
 =?utf-8?B?a3NSNzI4ZDVRT0JBejJZaTNlZ0pKUFZSd2NWR1dvVjFINmh4clYxaU5HRkgw?=
 =?utf-8?B?dFlvdE1nNVRCMFJyd3dsVFFVRG1CQ3FEQzFKSWZvdDludG1aR2Z2Y2VScFQx?=
 =?utf-8?B?K1ZENHozUTB6TFcrVmVFd2NtNkkyenBzZmtFTGY4UnVGaEV6RFFaNFVMNnlz?=
 =?utf-8?B?bDhKY0pzSTBlYi9PSEFoWiszWHlFZzlMdW5INDFkdmJPeVUvRmNIQTNBSGky?=
 =?utf-8?B?dXNzMVo3UDR3RWtJclNvYmdveVIyTkRFbG5sWldaaDZBQUJtZTFpOXl0TEVY?=
 =?utf-8?B?N2g0ZU92RlVXTEdKWUhkZ1pNK1hsd21UdDZCWm9HUXFXRU54R3Y1b1hyczVm?=
 =?utf-8?B?Zy9wOXpjd05LaWdiR1EvZkQweWlRM0hvbENlbEdlR2RTdTQ5WlBHQVJCZitk?=
 =?utf-8?B?bmd3bjhlejlqbGxxdkNMTk5LdGo0T21zWmhIT0JZNEgrVldvK3h5WE5sbVht?=
 =?utf-8?B?UzZpRE9qSjJYbElkT09yeHB5VVB3d2cveEJtRXVxaHh5WTdsTlRENUM5Zm8r?=
 =?utf-8?B?Q2piQmp1QkdJYWNnWGpsK1o3RWRnVHZleWV1QlNRRWovMEVTb0xQVXNNSzNi?=
 =?utf-8?B?VXN2TkN1d0lpQ0ZwZUJFOHdSbFpiZzcwQmVoVXFXam9QeUFjOFFlMlMvQnVj?=
 =?utf-8?B?RVpyd0dzMWhRRFVncVJKNG5ORG14M3JWenVST1JTNHFLWHVYKzlIQnpaZ3Vr?=
 =?utf-8?B?cEtVU2hsSFJINmRwdHRTYTVUU3RmVTZxYVo5cTc2WnZSdEo2RFphMWxZYStX?=
 =?utf-8?B?WlVDZDNIUXBRZDBsZEhzRGROZklRWmNYdlVXc1JZRVVseEJtZ3BocnVUeWdI?=
 =?utf-8?B?Mndtc1cxaWdKVGNyaURXZzdNMlFud3BiK2gzWWVWVnd5OVBqVmhSN25zYisv?=
 =?utf-8?B?OTcvd0ZYbXlTZG10THZhcy9JK2lvbG9OQis3UHYzcmZWMjZxSW9IWmpqS3cv?=
 =?utf-8?B?L3pKZGJEYmhFWWh0VmFiUUdDaUhMUDc0RlU1Rm5nUGpZdlo5MTM2QzkrQUhH?=
 =?utf-8?B?V0dWbThvdk1tODJSZ3N2NUlIY2FvNWV0L3NRbjNwSnplVFFFT1NQektQV2M1?=
 =?utf-8?B?cmRLOVFjL1VDbUJWckpUTUhkVFUySmV6aWUybG5PUCtOVTZwZ3ovQm1wTVBD?=
 =?utf-8?B?UnkvUTVicU9qdUdtS1pMbVFpL201bzJTSHlkS0FZYXh2QVJwUzNiQ2dMckVI?=
 =?utf-8?B?UkdrRlgraXNNNnB5YkZGdWtPOUJkVi9MaytsT21SWDRVOW91T05kVVFIWkZE?=
 =?utf-8?B?YmE1bWRVQ0x4Tk1CcGM0VTBrUnhaQVlEMlcwRGRueWFCYzJjWWhnUkdMTjUr?=
 =?utf-8?B?K3ZxNEN5ZkRIc083d0V4cDNoRmo5Qjh0c3ZqWm9xOGFsMXpQaE9ZNklWQm8x?=
 =?utf-8?B?eFZ6RXEyd2lJZlFCSVVTcWhPM1Y5b2dRanNiTlhRZk0vMGdTczYxTUlYa1h4?=
 =?utf-8?B?dFJqeTY4RXcveng4SFlsYkRrdkN5UDJzOGMwQk01dXZsaVhrclFJaVJ6TVli?=
 =?utf-8?B?UG50VWlkLzBhQVRTL21vaVUrc0l0aUdyNSt1dzB5bld3UmIwejhuamI2WXRK?=
 =?utf-8?B?d2NyUnlSV3dpdklEY1g1OXU0bEI4OXJVR2dBSW5HbFp0K3A2MEtMaUJMZWUw?=
 =?utf-8?B?YmlROVBFYi9hUmhuWFZqRW5TOUFYMS9ZK2p1WVhoU0NmWngyQ01kNDgrc0Rr?=
 =?utf-8?B?NERFNGtXZnl0SDVQeDFMT1ppSkI1SnBJalJKd1BvWHM0b1FReTlkaXVRNi9K?=
 =?utf-8?Q?uWmOBmmhJPCb9ILg6AhWc2NDCoBwiBWrjqJah?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <252A25281E68D140A63E93AB38E1F724@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c3974da-a007-462c-eb19-08da17ae8806
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2022 09:19:19.9311 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SAXj5vAhY5Miv3YeadqFM6+wwDd94OAlr2rMKPIkn5Vxz/1HFB1+zqF7PgumhtH9a+vBhmkP1GxqV+BMed5yZxradjncLYYk9c8RomsqdaM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1498
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix skl_pcode_try_request function
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGksDQoNCk9uIFdlZCwgMjAyMi0wNC0wNiBhdCAxMDo0OCArMDMwMCwgTGlzb3Zza2l5LCBTdGFu
aXNsYXYgd3JvdGU6DQo+IE9uIFdlZCwgQXByIDA2LCAyMDIyIGF0IDEyOjUxOjI5QU0gKzAzMDAs
IEdvdmluZGFwaWxsYWksIFZpbm9kIHdyb3RlOg0KPiA+IEhpIFN0YW4NCj4gPiANCj4gPiBOaWNl
IEZpbmQhIENvdXBsZSBvZiBjbGFyaWZpY2F0aW9ucywgcGxlYXNlIGNoZWNrIGlubGluZS4uLg0K
PiA+IA0KPiA+IE9uIFR1ZSwgMjAyMi0wNC0wNSBhdCAxMzo0MSArMDMwMCwgU3RhbmlzbGF2IExp
c292c2tpeSB3cm90ZToNCj4gPiA+IEN1cnJlbnRseSBza2xfcGNvZGVfdHJ5X3JlcXVlc3QgZnVu
Y3Rpb24gZG9lc24ndA0KPiA+ID4gcHJvcGVybHkgaGFuZGxlIHJldHVybiB2YWx1ZSBpdCBnZXRz
IGZyb20NCj4gPiA+IHNuYl9wY29kZV9ydywgYnV0IHRyZWF0cyBzdGF0dXMgIT0gMCBhcyBzdWNj
ZXNzLA0KPiA+ID4gcmV0dXJuaW5nIHRydWUsIHdoaWNoIGJhc2ljYWxseSBkb2Vzbid0IGFsbG93
DQo+ID4gPiB0byB1c2UgcmV0cnkvdGltZW91dCBtZWNoYW5pc21zIGlmIFBDb2RlIGhhcHBlbnMN
Cj4gPiA+IHRvIGJlIGJ1c3kgYW5kIHJldHVybnMgRUdBSU4gb3Igc29tZSBvdGhlciBzdGF0dXMN
Cj4gPiA+IGNvZGUgbm90IGVxdWFsIHRvIDAuDQo+ID4gPiANCj4gPiA+IFdlIHNhdyB0aGlzIG9u
IHJlYWwgaHcgYW5kIGFsc28gdHJpZWQgc2ltdWxhdGluZyB0aGlzDQo+ID4gPiBieSBhbHdheXMg
cmV0dXJuaW5nIC1FQUdBSU4gZnJvbSBzbmJfcGNvZGVfcncgZm9yIDYgdGltZXMsIHdoaWNoDQo+
ID4gPiBjdXJyZW50bHkgd2lsbCBqdXN0IHJlc3VsdCBpbiBmYWxzZSBzdWNjZXNzLCB3aGlsZSBp
dCBzaG91bGQNCj4gPiA+IGhhdmUgdHJpZWQgdW50aWwgdGltZW91dCBpcyByZWFjaGVkOg0KPiA+
ID4gDQo+ID4gPiBbICAgMjIuMzU3NzI5XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9j
ZGNsa19kdW1wX2NvbmZpZyBbaTkxNV1dIENoYW5naW5nIENEQ0xLIHRvDQo+ID4gPiAzMDcyMDAg
a0h6LCBWQ08gNjE0NDAwIGtIeiwgcmVmIDM4NDAwIGtIeiwgYnlwYXNzIDE5MjAwIGtIeiwgdm9s
dGFnZSBsZXZlbCAwDQo+ID4gPiBbICAgMjIuMzU3ODMxXSBpOTE1IDAwMDA6MDA6MDIuMDogW2Ry
bTpfX3NuYl9wY29kZV9ydyBbaTkxNV1dIFJldHVybmluZyBFQUdBSU4gcmV0cnkgMQ0KPiA+ID4g
WyAgIDIyLjM1Nzg5Ml0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06c2tsX3Bjb2RlX3JlcXVlc3Qg
W2k5MTVdXSBTdWNjZXNzLCBleGl0aW5nDQo+ID4gPiBbICAgMjIuMzU3OTM2XSBpOTE1IDAwMDA6
MDA6MDIuMDogW2RybV0gRVJST1IgRmFpbGVkIHRvIGluZm9ybSBQQ1UgYWJvdXQgY2RjbGsgY2hh
bmdlIChlcnINCj4gPiA+IC0xMSwNCj4gPiA+IGZyZXEgMzA3MjAwKQ0KPiA+ID4gDQo+ID4gPiBX
ZSBzZWUgZW4gZXJyb3IgYmVjYXVzZSBoaWdoZXIgbGV2ZWwgYXBpLCBzdGlsbCBub3RpY2VzIHRo
YXQgc3RhdHVzIHdhcyB3cm9uZywNCj4gPiA+IGhvd2V2ZXIgd2Ugc3RpbGwgZGlkIHRyeSBvbmx5
IG9uY2UuDQo+ID4gPiANCj4gPiA+IFdlIGZpeCBpdCBieSByZXF1aXJpbmcgX2JvdGhfIHRoZSBz
dGF0dXMgdG8gYmUgMCBhbmQNCj4gPiA+IHJlcXVlc3QvcmVwbHkgbWF0Y2ggZm9yIHN1Y2Nlc3Mo
dHJ1ZSkgYW5kIGZ1bmN0aW9uDQo+ID4gPiBzaG91bGQgcmV0dXJuIGZhaWx1cmUoZmFsc2UpIGlm
IGVpdGhlciBzdGF0dXMgdHVybnMNCj4gPiA+IG91dCB0byBiZSBFQUdBSU4sIEVCVVNZIG9yIHdo
YXRldmVyIG9yIHJlcGx5L3JlcXVlc3QNCj4gPiA+IG1hc2tzIGRvIG5vdCBtYXRjaC4NCj4gPiA+
IA0KPiA+ID4gU28gbm93IHdlIHNlZSB0aGlzIGluIHRoZSBsb2dzOg0KPiA+ID4gDQo+ID4gPiBb
ICAgMjIuMzE4NjY3XSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTppbnRlbF9jZGNsa19kdW1wX2Nv
bmZpZyBbaTkxNV1dIENoYW5naW5nIENEQ0xLIHRvDQo+ID4gPiAzMDcyMDAga0h6LCBWQ08gNjE0
NDAwIGtIeiwgcmVmIDM4NDAwIGtIeiwgYnlwYXNzIDE5MjAwIGtIeiwgdm9sdGFnZSBsZXZlbCAw
DQo+ID4gPiBbICAgMjIuMzE4NzgyXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpfX3NuYl9wY29k
ZV9ydyBbaTkxNV1dIFJldHVybmluZyBFQUdBSU4gcmV0cnkgMQ0KPiA+ID4gWyAgIDIyLjMxODg0
OV0gaTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06X19zbmJfcGNvZGVfcncgW2k5MTVdXSBSZXR1cm5p
bmcgRUFHQUlOIHJldHJ5IDINCj4gPiA+IFsgICAyMi4zMTkwMDZdIGk5MTUgMDAwMDowMDowMi4w
OiBbZHJtOl9fc25iX3Bjb2RlX3J3IFtpOTE1XV0gUmV0dXJuaW5nIEVBR0FJTiByZXRyeSAzDQo+
ID4gPiBbICAgMjIuMzE5MDkxXSBpOTE1IDAwMDA6MDA6MDIuMDogW2RybTpfX3NuYl9wY29kZV9y
dyBbaTkxNV1dIFJldHVybmluZyBFQUdBSU4gcmV0cnkgNA0KPiA+ID4gWyAgIDIyLjMxOTE1OF0g
aTkxNSAwMDAwOjAwOjAyLjA6IFtkcm06X19zbmJfcGNvZGVfcncgW2k5MTVdXSBSZXR1cm5pbmcg
RUFHQUlOIHJldHJ5IDUNCj4gPiA+IFsgICAyMi4zMTkyMjRdIGk5MTUgMDAwMDowMDowMi4wOiBb
ZHJtOl9fc25iX3Bjb2RlX3J3IFtpOTE1XV0gUmV0dXJuaW5nIEVBR0FJTiByZXRyeSA2DQo+ID4g
PiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6IFN0YW5pc2xhdiBMaXNvdnNraXkgPHN0YW5pc2xhdi5s
aXNvdnNraXlAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVycy9ncHUvZHJtL2k5
MTUvaW50ZWxfcGNvZGUuYyB8IDIgKy0NCj4gPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+IA0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3Bjb2RlLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9w
Y29kZS5jDQo+ID4gPiBpbmRleCAzOTFhMzc0OTJjZTUuLmZiNmM0M2U4YTAyZiAxMDA2NDQNCj4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bjb2RlLmMNCj4gPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bjb2RlLmMNCj4gPiA+IEBAIC0xMzYsNyArMTM2
LDcgQEAgc3RhdGljIGJvb2wgc2tsX3Bjb2RlX3RyeV9yZXF1ZXN0KHN0cnVjdCBkcm1faTkxNV9w
cml2YXRlICppOTE1LCB1MzIgbWJveCwNCj4gPiA+ICB7DQo+ID4gPiAgICAgICAqc3RhdHVzID0g
X19zbmJfcGNvZGVfcncoaTkxNSwgbWJveCwgJnJlcXVlc3QsIE5VTEwsIDUwMCwgMCwgdHJ1ZSk7
DQo+ID4gPiANCj4gPiA+IC0gICAgIHJldHVybiAqc3RhdHVzIHx8ICgocmVxdWVzdCAmIHJlcGx5
X21hc2spID09IHJlcGx5KTsNCj4gPiA+ICsgICAgIHJldHVybiAoKnN0YXR1cyA9PSAwKSAmJiAo
KHJlcXVlc3QgJiByZXBseV9tYXNrKSA9PSByZXBseSk7DQo+ID4gDQo+ID4gSGVyZSBJIHdvbmRl
ciB3aGV0aGVyIHlvdSBuZWVkIHRvIGNoZWNrIHdoYXQgc29ydCBvZiBfX3NuYl9wY29kZV9ydyBy
ZXR1cm4gdmFsdWVzIG5lZWQgdGhlDQo+ID4gcmV0cnkhDQo+ID4gSXNuJ3Qgb25seSBFVElNRURP
VVQgbmVlZCB0aGUgcmV0cnk/IE90aGVyIHJldHVybiBlcnJvciBjb2RlcyBjYW4gYmUgcHJvYmFi
bHkgYmUgaWdub3JlZCBmcm9tDQo+ID4gcmV0cnk/DQo+IA0KPiBIaSBWaW5vZCEgVGhhbmtzIGZv
ciBjb21tZW50cy4NCj4gDQo+IFdlbGwgdGhlb3JldGljYWxseSB5ZXMsIGJ1dCBpbiBwcmFjdGlj
ZSBJIHRoaW5rIHdlIHdvdWxkIHByZWZlciB0byByZXRyeSBpbiBhbG1vc3QgYWxsIG9mIHRoZQ0K
PiBjYXNlcy4NCj4gVGhlcmUgYXJlIGFsc28gbXVsdGlwbGUgZXJyb3IgY29kZXMgd2hlbiB5b3Ug
bmVlZCB0byByZXRyeSwgc3VjaCBhcyAiRUFHQUlOIiwgIkVCVVNZIiBhbmQgcHJvYmFibHkNCj4g
c29tZSBvdGhlcnMuIFRoYXRzIGlzIHByb2JhYmx5IHdoeSBvcmlnaW5hbCBjb2RlIGFsc28gZG9l
c24ndCBtYWtlIGEgZGlmZmVyZW5jZS4NCg0KQWNrDQoNCj4gDQo+ID4gQW5kIHNob3VsZCB0aGUs
ICJyZXR1cm4gcmV0ID8gcmV0IDogc3RhdHVzOyIgaW4gInNrbF9wY29kZV9yZXF1ZXN0IiBiZSBj
aGFuZ2UgdG8gInJldHVybiByZXQgPw0KPiA+IHN0YXR1cyA6IHJldDsiIHRvIHJlZmxlY3QgdGhl
IGNvcnJlY3QgZXJyb3IgY29kZSB0byBjYWxsaW5nIGZ1bmN0aW9ucyBhZnRlciB0aGlzIGNoYW5n
ZT8NCj4gDQo+IEkgdGhpbmsgdGhlIGxvZ2ljIGhlcmUgaXMgc3VjaCB0aGF0IHJldCB2YWx1ZSBp
cyBzb21ld2hhdCBtb3JlIGltcG9ydGFudCB0aGFuIHRoZSBzdGF0dXMsIHNvIA0KPiBpZiByZXQg
aXMgc29tZXRoaW5nIG5vdCB6ZXJvIC0gd2UgYWx3YXlzIHByZWZlciByZXR1cm5pbmcgcmV0LCBm
b3IgdGhlIGVuZHVzZXIgdG8ga25vdyB3aGF0DQo+IHdhcyB0aGUgcmV0IEVSUk9SIGNvZGUuDQo+
IElmIHJldCBpcyAwLCB0aGVuIHdlIGNhbiAiYWZmb3JkIiB0byBsZXQgdGhlIGVuZHVzZXIga25v
dywgd2hhdCB3YXMgYWN0dWFsbHkgdGhlIHN0YXR1cy4NCj4gDQo+IFRvIG1lIGl0IGFjdHVhbGx5
IHNvdW5kcyBhIGJpdCB3cm9uZywgSSB0aGluayB3ZSBzaG91bGQgZ2V0IHN0YXR1cyBwb2ludGVy
LCBsaWtlICImc3RhdHVzIg0KPiBhbmQgbW9kaWZ5IGl0LCBzbyB0aGF0IGNhbGxpbmcgc2l0ZSBf
YWx3YXlzXyBrbm93cyBib3RoIHN0YXR1cyBhbmQgcmV0LCBtaXhpbmcgdGhvc2UgdHdvDQo+IGlz
IGEgZGFuZ2Vyb3VzIHN0cmF0ZWd5IHdoaWNoIGV4YWN0bHkgY2F1c2VkIHNvbWUgY29kZXIgY29u
ZnVzaW9uIGFuZCBwcm9iYWJseSB0aGUgYnVnLCB0aGF0DQo+IHRoaXMgcGF0Y2ggaXMgZml4aW5n
Lg0KPiANCj4gU3Rhbg0KDQpBZ3JlZWQsIHRoZSBvcmlnaW5hbCBjb2RlIHdhcyBpbmRlZWQgYml0
IGNvbXBsaWNhdGVkISANCg0KQnV0IHdoYXQgSSBtZWFudCB3YXMsIGFmdGVyIHlvdXIgcGF0Y2gs
ICJyZXQiIHdpbGwgYmUgZWl0aGVyICIwIiBvciAiRVRJTUVET1VUIi4gDQpJZiByZXQgPSAwLCB0
aGVuICJzdGF0dXMiIHdvdWxkIGhhZCBiZWVuIDAgdG9vIGJhc2VkIG9uIHlvdXIgY2hhbmdlIGlu
IHRoaXMgcGF0Y2guDQpJZiByZXQgIT0gMCwgdGhlbiAic3RhdHVzIiBtaWdodCBoYXZlIHZhbHVl
cyBvdGhlciB0aGFuIEVUSU1FRE9VVC4NCg0KU28sIA0KInJldHVybiByZXQgPyBzdGF0dXMgOiBy
ZXQ7IiBtaWdodCBiZSBiZXR0ZXIgaW5zdGVhZCBvZiB0aGUgb3JpZ2luYWwgInJldHVybiByZXQg
PyByZXQgOiBzdGF0dXM7Ig0KZXNwZWNpYWxseSBhZnRlciB5b3VyIHBhdGNoLg0KDQpBbnl3YXks
IG5vdCBzdXJlIGlmIHRoZSBjYWxsaW5nIGZ1bmN0aW9ucyBjYXJlIGFib3V0IHRoZSByZXR1cm4g
dmFsdWUgbXVjaCBvdGhlciB0aGFuIGp1c3QgbG9nZ2luZy4NCkl0IHdhcyBpbmRlZWQgYSBxdWl0
ZSBnb29kIGZpeCENCg0KUmV2aWV3ZC1CeTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292
aW5kYXBpbGxhaUBpbnRlbC5jb20+DQoNCj4gDQo+ID4gDQo+ID4gPiAgfQ0KPiA+ID4gDQo+ID4g
PiAgLyoqDQo=
