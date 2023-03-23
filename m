Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1F56C670D
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Mar 2023 12:48:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B6CF10EA7B;
	Thu, 23 Mar 2023 11:48:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2F7E910EA7B
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Mar 2023 11:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679572135; x=1711108135;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=XRmzScWXXgQc5DDF9ttlgGXLtGS2P/mwEfdsgwNBDuE=;
 b=OiAI03b57N5+CUF5pORbaV8ClhSsWmKxSg+2IbNNy2gFtCD1avm9zgJb
 iVdIPf4ptuEfwWzycLD7EqBrdHygIF7YqsztYJbNm9Ofps33KowmodkYl
 MiUIXy7zzu12u8DzIfhdDV9rkbhRPtq0TBLLLtsKCFd9/PtiOI0pRSnpf
 xVdDDX3RqK7bgOXTt9dWfkk+7mExZ0CYA9XZcjzs7GL7S5IXiCEZMXZSl
 lhzDPPoBXasXCtBQxzioikHSObW6HCtHP6g5PaefHGsy3Lk5EEB7d3jFW
 20EwHF9NoDgg/DLxEmYUtMuIWURSgfn2bgzCd5Qhyeyyvkvyt2aXC2Ce/ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="319118508"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="319118508"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2023 04:48:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="712627081"
X-IronPort-AV: E=Sophos;i="5.98,283,1673942400"; d="scan'208";a="712627081"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 23 Mar 2023 04:48:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 23 Mar 2023 04:48:54 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 23 Mar 2023 04:48:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 23 Mar 2023 04:48:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dQyJPUPlmjcA1GGwZ8e14F4Ir61SmRuBECt7/LvFEoZ6E6J+rrtezyWlxmU7tea0b32e49k4iY+jLVWsQ5bppvxusOXVGJuO61wesD84negc9Gtnqocuudxwt7Iq31hzgD+/rJRuvUblTGwTJc4gkk2JV57AHOYDnEhmb9pZOCsF4ULggTi8g3WkWkT9WkvgIK4d3gqJh+lQcve/Vi9KilrB8zjzDJriua2Eh4CJ1i+/XTiMJ4Fvo7PWj+cE4luk59ErClLq9PNWwEF/Uwzt57+Uudrb4LNtFu3EM+FQT3WyN9cue7TY2ueKa0Eqv9Ot5iRcoN9bg9jeFrtdbMt+Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XRmzScWXXgQc5DDF9ttlgGXLtGS2P/mwEfdsgwNBDuE=;
 b=YRXofC+gdXIpuFbXMRqa5/3gqe96Dk4E+3OjbHp0ZkeXpiWq0e5PeaRBZl7cJv5epKkljo4i8juNNuFJSlbN0W3/371urmY/MXpYi8gandGZ9XB+9korP/8pnoYeQLgj7To1plOwjQEIHcMRwprJjYy1QSabqew8RoN5KCPZso3wF5rYmJr4fuD3qwCcei/cVk3KwnA8ruOro1MLcdjse1O4I8RUsSG52sLcTJTw8pxX5165MFG2WoVbfjTgstiWu01MMLaGCpHDeF3GAUGMOVtsL7ZI/Hl7VdOQRbKUy4i95Op9y7hmGAR0+e50lQ855ZQsu/i5edhY7Y/Fw7mt2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH7PR11MB7961.namprd11.prod.outlook.com (2603:10b6:510:244::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Thu, 23 Mar
 2023 11:48:50 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%8]) with mapi id 15.20.6178.038; Thu, 23 Mar 2023
 11:48:50 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v2 1/2] drm/i915/reg: fix QGV points register
 access offsets
Thread-Index: AQHZXMmashaaltisokm7FmwIa0FOSa8G3cwAgAFjfAA=
Date: Thu, 23 Mar 2023 11:48:50 +0000
Message-ID: <c4f80d41e305914f2bdf89882872ac8c1d2ad1bb.camel@intel.com>
References: <20230322142051.714161-1-vinod.govindapillai@intel.com>
 <20230322142051.714161-2-vinod.govindapillai@intel.com>
 <ZBsSbERoJlz0KE9z@intel.com>
In-Reply-To: <ZBsSbERoJlz0KE9z@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH7PR11MB7961:EE_
x-ms-office365-filtering-correlation-id: e7e52bfd-8ed0-4a1f-0a16-08db2b9491d4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GuL6vHgz+2r/+C6uKqE1dEBs5231c3HeEjD86knPhNuYibNFcpVwQ/JDd8nI6XQB3QiKY3f8K1ECts+AuM1EOJZfkzn5oq6/V6YhXuvsaMJ3XxcnPtunFIxJhVYv+TbwIqsGO4iGo5QoAdjDCoTGazqOnSZaSzXIEP4SlkMO0iULLCaRvtmvl4+dRWqgOIknJ6umsDC5g1pSG2y5oQ8L98/aA3GT1DGOnp0Q5sYCopIZMsPTVgDFS802pyDyvpqm19qTOftoFzfNsKWzx/WjjWFVKQ32qfbVKQrac+mW5m1FnHCvohhSMbDrEb9xHiyxJyPWDEp7hv6TfK5XNPCRxrmug1WYSjdS+ACoVRNvhBn54t0YLai5XFx1fAL9DdFKCmgw2JQ1s1OjmaiGgQuR86L9N+mO4REMIKyQ7MO0Kx45f/wHmyouAaWy6R0hE0pJBVFNqmoCnvGkjJwPbqlDTN8zUyxvLX/XIaBXnXAgGL09roigx8eW91Wmk7ix35c9wm0VpqXEDj2gqSxLwwmHItd2MdYD6BoDiZDd6kk5DM95PMT/s0Ukrmdz3FPM2e+MMAlMXAchDajpuFnGKmmTzJWDcQS6jnXpc62Vbqw9PKqkSN6wNnztj8omh36G1CEGB4GDeMlu4RL4MQ0walPCJ6GlbTYnQoUz3IyZxCKLP6RF2hDQgK5BjeyP4twrZl/cQSmNtt2rh6H90ZpnQC5CPQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(136003)(39860400002)(366004)(346002)(376002)(451199018)(38100700002)(2906002)(38070700005)(478600001)(83380400001)(6486002)(2616005)(66574015)(186003)(36756003)(86362001)(71200400001)(316002)(91956017)(66556008)(66476007)(66446008)(64756008)(8676002)(66946007)(4326008)(6916009)(76116006)(8936002)(26005)(6512007)(6506007)(122000001)(5660300002)(41300700001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aUcvWGR0ZXI4WGN4R1VYMi85Z1FBS0JIRVlQZWV0UTA5dTJMUXRXNHVMQUFM?=
 =?utf-8?B?d2NqMHAwMHkwcVRnYVU1a09NWmt5d1R4WXowTWRnekVBV0tJaUpSTE1CYkxy?=
 =?utf-8?B?Yk0vQ2JWNTNpdE92RXg5SmEzSnBTaHRnV1FFME9NeWJ5YUtCbVMxWU04YXpS?=
 =?utf-8?B?TFlmVndpODBqMG94Q0Q4am9TVk1TUmlDMWt1WVpiTmdKTitrSE1RdU13RHBU?=
 =?utf-8?B?M3A4b1RvMnR1aEhBanAzQnRZQ25HeVJzQUxiNHR1NHliTjQ1aVpzZjZHdFhO?=
 =?utf-8?B?Ym1Fc2hiSlBEZm9XRDFLdXdSSEJqbVZZbGFUZWpQLzYvWFl1ZVVEL29uZTJz?=
 =?utf-8?B?SzhXaXRUZWhqbDdqQ25xV0hGOXB5SDNFM2dURktvZGdnTDVrNnpja1hKMytK?=
 =?utf-8?B?UGJoZUFNS2NUN2RUcUgvUzNhTFJkTVFOUzJiYkRsYVVMYlpmN05IV3Jqdml0?=
 =?utf-8?B?bi9McnB6Vy9ZeXZZVENmelhzU2pMZTdVaE1PZWJDczlRS0UreFl2eXZOL0J2?=
 =?utf-8?B?bnBPS3lleWt2dVJwb3Qzend5am5hR0tWRmRaaDlxNzlKWHpRVFd0RHhaM3N1?=
 =?utf-8?B?Sjc4MzU5ZWY0SjZqY2xNSW13K1JTNDhJOUk3U1RPUkVyRzdUUkJPZVNROUt5?=
 =?utf-8?B?U2czNjBwdzRmWU81STFJeVUzMGhQcENTSXoxQXhkREJ1aFkvSWNmNGFBSUJL?=
 =?utf-8?B?YUlRVU5JYW5TVU96L3FHVDRzYXd1OWtOR1lmZjNCL2d2d2FEN0R6ZDVQd3d1?=
 =?utf-8?B?RWN0SC8vZUVmTWU3eXYyVVNrN01vamVISmpNZHM1U3hZUDBOaVVNc0d2c0xR?=
 =?utf-8?B?VmNmYUNEeVltRGFDendzZk12VmpydzUxQnhRbU9jYlJYUEd4QlloQ0ZEb2p3?=
 =?utf-8?B?VFQxeVZDZ1Q0SjMrTU5aRXh1SVpHeGNQRlFIalJTZExoUlpCRUNIZTlOM0Zv?=
 =?utf-8?B?d0tFbDdxZnY0MmtSdXlubUNnVkNqd2RmcmhrNVpSRk5SaWYxMmdFWGVQRDVu?=
 =?utf-8?B?TThKZ1U3bm9rdld4V2tXSXFrQWNOVXNWbHBrUVkyUnR6RnJxYk4wZGlpWWxH?=
 =?utf-8?B?M0o1SWFFZ0FuY1FUN2pMY2tUcDRiT0dQL1M2VWJSNzk1cXpEU1JIZTJjWk5F?=
 =?utf-8?B?Kzd1Uko5eDVHeVFSVHA5Q3REN25kSHhmNllxcmtWc1ZEVXpxTXltdTdrSzl5?=
 =?utf-8?B?V0tOV3BhcUJpVTcwM0hhQVdNbUJpOWdrRHRlZTlFQlVpVHZiK2NhQWhXSEds?=
 =?utf-8?B?Y1VDL09adXpZdXgyenBBRTdMdndDV09mSThWYmhQL201OXI3UEFyazMvY2FI?=
 =?utf-8?B?ZzRDYWhEVDlWMHJQazE3dWpwdGRnejZUbnVqUC9iRnFTbC83dit0VmhYS1VY?=
 =?utf-8?B?aG5CNGZnU2NNUTRBVTBRWDI0VHpQYlJaa1c2WU03L3RrbFF4TXU3bU1RNFFu?=
 =?utf-8?B?eGlHMEM0M3lqaGUzWFo2STNSbSs4bVBrQ0FhdHRsUG50ZEc5N1loRU1oUzNu?=
 =?utf-8?B?emE2Mmo3SzZuTFg5NEVlNTduWGc0czlJMHFmYWdTdjZvS1RXOTJWcWp5bXBT?=
 =?utf-8?B?dlBqY1BZSSs1VkhzVkduSlpMUzZUZlhrZnhHQWVMRTZPeFVUV3ZydzZGbkdj?=
 =?utf-8?B?a2U5RGtxamtEeVM3UzBIQmFPbFhUWFdHQkZvNmU1bGQ1YTV0UURBSTRUWExx?=
 =?utf-8?B?dWQwVjVhc2c2Q0dXdUZBSGgySzRCcWs2Ty8xTjJRNEdLdml3S01ieG9NSXl2?=
 =?utf-8?B?ZXN3YytxMXp5dzR1WUNyL3piaEE3aVA0NGhNRk9CS3pQTmlDREo4emRTRzhx?=
 =?utf-8?B?QkNzOTQxWjdLOFBFQW8zTXJlUmpwYW4wL3hJOEsrZVFkbE1qSzZBRWF2RUZW?=
 =?utf-8?B?cUhTQzR2c2JHeTNOblkxdG5EOEMxOWdVdkRTQTNDWGNHSzdXSk5EVW5Wd0py?=
 =?utf-8?B?OEZyWndOZ2pmTkNkTjV2K28yMzM5TUxyL251ckNidndsb0s3bVplM014RzJy?=
 =?utf-8?B?cmZyTEFaL2FrcCtKOWd5NlBra1BFNmFYTGxhRDI3dU1ZV3VVZ240L2k4aDhC?=
 =?utf-8?B?M3dEL1huVHJkR0swRVZRWTIvN1d3Mk42UkROdlk1ZTgwOE0vUVllc1kycnVM?=
 =?utf-8?B?b1ZNODIrS1QrQnFOeDVvMDhoZEQySjZKM2F3YVkrNTl6NmtKNUFOV0ZBTndp?=
 =?utf-8?Q?3b6WXvIW/HGN4Bp/6qFms0s=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <219A51B46C83E244962BB0757E1A238E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e7e52bfd-8ed0-4a1f-0a16-08db2b9491d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Mar 2023 11:48:50.4178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TLtwPgeM5K4gRkA44cqiZ+DwYdkY2ieH37N79+wSdBrG8CYf2csJRgTpdGdGWV5PWdUnGqxf3gyy2If91hth8XxqLVEvdwW/cXoyUeNRhpM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7961
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915/reg: fix QGV points
 register access offsets
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

T24gV2VkLCAyMDIzLTAzLTIyIGF0IDE2OjM2ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgTWFyIDIyLCAyMDIzIGF0IDA0OjIwOjUwUE0gKzAyMDAsIFZpbm9kIEdvdmlu
ZGFwaWxsYWkgd3JvdGU6DQo+ID4gV3Jvbmcgb2Zmc2V0cyBhcmUgY2FsY3VsYXRlZCB0byByZWFk
IFFHViBwb2ludCByZWdpc3RlcnMuIEZpeCBpdA0KPiA+IHRvIHJlYWQgZnJvbSB0aGUgY29ycmVj
dCByZWdpc3RlcnMuDQo+ID4gDQo+ID4gdjI6IEF2b2lkIG1hZ2ljIG51bWJlciBhbmQgYmV0dGVy
IGhhbmRsaW5nIHRoZSBzZWNvbmQgYml0Z3JvdXANCj4gPiANCj4gPiBCc3BlYzogNjQ2MDINCj4g
PiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRh
cGlsbGFpQGludGVsLmNvbT4NCj4gPiBSZXZpZXdlZC1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8
c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pOTE1X3JlZy5oIHwgNSArKystLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDMg
aW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvaTkxNV9yZWcuaCBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cmVnLmgNCj4gPiBpbmRleCBkMjJmZmQ3YTMyZGMuLjc0NDY4ZWQ5ZGM5ZCAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvaTkxNV9yZWcuaA0KPiA+IEBAIC03NzI0LDEyICs3NzI0LDEzIEBAIGVudW0g
c2tsX3Bvd2VyX2dhdGUgew0KPiA+IMKgI2RlZmluZcKgwqAgTVRMX05fT0ZfUE9QVUxBVEVEX0NI
X01BU0vCoMKgwqDCoMKgwqDCoMKgwqDCoMKgUkVHX0dFTk1BU0soNywgNCkNCj4gPiDCoCNkZWZp
bmXCoMKgIE1UTF9ERFJfVFlQRV9NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoFJFR19HRU5NQVNLKDMsIDApDQo+ID4gwqANCj4gPiAtI2RlZmluZSBNVExfTUVNX1NT
X0lORk9fUUdWX1BPSU5UX0xPVyhwb2ludCnCoMKgwqAgX01NSU8oMHg0NTcxMCArIChwb2ludCkg
KiAyKQ0KPiA+ICsjZGVmaW5lIE1UTF9NRU1fU1NfSU5GT19RR1ZfUE9JTlRfT0ZGU0VUwqDCoMKg
wqDCoMKgwqAweDQ1NzEwDQo+ID4gKyNkZWZpbmUgTVRMX01FTV9TU19JTkZPX1FHVl9QT0lOVF9M
T1cocG9pbnQpwqDCoMKgX01NSU8oTVRMX01FTV9TU19JTkZPX1FHVl9QT0lOVF9PRkZTRVQgKyAo
cG9pbnQpDQo+ID4gKiAyICogMHg0KQ0KPiA+IMKgI2RlZmluZcKgwqAgTVRMX1RSQ0RfTUFTS8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoFJFR19HRU5NQVNL
KDMxLCAyNCkNCj4gPiDCoCNkZWZpbmXCoMKgIE1UTF9UUlBfTUFTS8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBSRUdfR0VOTUFTSygyMywgMTYpDQo+ID4gwqAjZGVmaW5lwqDCoCBN
VExfRENMS19NQVNLwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgUkVHX0dFTk1BU0soMTUsIDApDQo+ID4gwqANCj4gPiAtI2RlZmluZSBNVExfTUVNX1NTX0lO
Rk9fUUdWX1BPSU5UX0hJR0gocG9pbnQpwqDCoCBfTU1JTygweDQ1NzE0ICsgKHBvaW50KSAqIDIp
DQo+ID4gKyNkZWZpbmUgTVRMX01FTV9TU19JTkZPX1FHVl9QT0lOVF9ISUdIKHBvaW50KcKgwqBf
TU1JTyhNVExfTUVNX1NTX0lORk9fUUdWX1BPSU5UX09GRlNFVCArIDQgKw0KPiA+IChwb2ludCkg
KiAyICogMHg0KQ0KPiANCj4gVGhlIG5vcm1hbCBzdHlsZSBpcyB0byBqdXN0IGRvICcocG9pbnQp
ICogOCcgYW5kICcocG9pbnQpICogOCArIDQnDQoNClRoYW5rcyBWaWxsZS4gVXBkYXRlIGFuZCB2
MyBzZW50DQoNCkJSDQp2aW5vZA0KPiANCj4gPiDCoCNkZWZpbmXCoMKgIE1UTF9UUkFTX01BU0vC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBSRUdfR0VOTUFT
SygxNiwgOCkNCj4gPiDCoCNkZWZpbmXCoMKgIE1UTF9UUkRQUkVfTUFTS8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqBSRUdfR0VOTUFTSyg3LCAwKQ0KPiA+IMKgDQo+ID4gLS0gDQo+ID4gMi4z
NC4xDQo+IA0KDQo=
