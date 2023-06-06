Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB09872407B
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 13:06:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A68F810E32D;
	Tue,  6 Jun 2023 11:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 435AF10E21E
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 11:06:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686049571; x=1717585571;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=843b34kfj5LfoWGXi1tLIRI268uIDkjuhwz2P2dQV2Y=;
 b=QAZflMqlGfcX3KYxbNuUQzYC9i3lLU48niC5SobLMlkUWCG8ZHkyaqW8
 tt7jvgnU81++l4H3v1GiBFqEVwr/KmLPVKSapO2HInGtcAtCjDye/m+x5
 fztD/nYIv3z1VbSkOmMENiYSIFPyUARbV2j/sLmFFHb7txKujp/pAs2Pe
 c73xvFQp6Sv06IxCwN6yGu94M29uFjtyDgiP+t+q6q0DXcPHWQCLQuAuc
 eq6zRJncwFqcV5jvMkWq3xQi7TB+AQFQfuA654eDjWFP3URGdbKGNI4aj
 rl5774LjL6X7vkNSIQkH0HDN/0ezuv5QNUIeWVZuag2KJxgbldZgurB5X g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="356646179"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="356646179"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 04:06:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10732"; a="955711181"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="955711181"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jun 2023 04:06:10 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 04:06:09 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 04:06:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 04:06:09 -0700
Received: from outbound.mail.protection.outlook.com (104.47.70.100) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 04:06:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S4kVMuj1UVElmlyLq+gGBtLeHA9DQ/SoI8sEj9A7a6qzcNHjuAKQTUSG+mCkRfHtzs8OsGDsRMahY/0/9PBSwkBSea2GG0YQP5EJW25TTDsIOM4vcj+QcLtDCgxOlPj+Ny0fB9h3XYKzccmgJz+4NMVOqLP0Ky/MsASf8RzzrTlaH8QLAgGdx1DrPMKavMumkeeCPLRCTMlnM0mux60BxeQja0o6CPoO1jQsq5z75fxyTcbKTGGGqtAzX+AVyc6LfXU1ma3RcE/rfAmRCmGEZPzStIZiKh1/s9Uhqz1RaHVwdWdC811v5Lguver4QbUQacNUaSpddTUbQLrxpmNo9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=843b34kfj5LfoWGXi1tLIRI268uIDkjuhwz2P2dQV2Y=;
 b=URy+Nlvf8IFnk3VBAI1BN/PAVEhJAfqQ63GCxXhoqJEHEYQ4M9/aRy0whDzUYOtMugW4i26lnEv3u+npdEjacJ2Ih0rW8B3xb10q3xV4SRrNOcl11SO1zX0FbrPJLzQBKdvgB8yQ8TPdXaZ75sfR1jjMubL/ZLtTGVNNEtp9BTBYVwZZD10CLSceEs0JEYsLpnCP7iI4Bkocc4dPwXqDcVnpaSl7HaKejiV/BD11kFR89vmgyuwk90n7x+9VrY6aLxHFTOsOIPUC3SvCduPIfvyvAkuP7b/5LsnqyaIA3G1W7tG/oluFY22dhonvUyc/7p4p8Jo2D1XqR4QxLjwtyA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by MN0PR11MB6304.namprd11.prod.outlook.com (2603:10b6:208:3c0::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 11:06:06 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9%7]) with mapi id 15.20.6455.030; Tue, 6 Jun 2023
 11:06:06 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0gIOKclyBGaS5DSS5CQVQ6IGZhaWx1cmUgZm9yIGRybS9p?=
 =?utf-8?Q?915:_implement_internal_workqueues_(rev3)?=
Thread-Index: AQHZmGbjTJFlV5sPakmLNQUbYvNqOA==
Date: Tue, 6 Jun 2023 11:06:06 +0000
Message-ID: <755fa4ba3d28d7be9bff235842ee10934be4c90d.camel@intel.com>
References: <20230530111534.871403-1-luciano.coelho@intel.com>
 <168551428578.17615.13321848387509410861@emeril.freedesktop.org>
 <87r0qqaqz2.fsf@intel.com>
 <df70861a-a8bf-07cc-90d2-400820b751e8@linux.intel.com>
In-Reply-To: <df70861a-a8bf-07cc-90d2-400820b751e8@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|MN0PR11MB6304:EE_
x-ms-office365-filtering-correlation-id: 27d48ccd-12b8-43db-4a72-08db667e0671
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tJ0tqfa866XKAFYSq9c4ma7vcjm0jbj4iz3z0DPwh2GyQTJUmIQv2wI0O67mrM1BJK5hcxqhxs0zyI02sUAzwuaXLop2z+3paqrqjZKxtdITd/2flxTqc7qK4eyL3m0DMfVDtQMm6qSlwn0hQxGJ+zapSZ1TIckMMsFZoLWSPL6sJNYk9pTRMR0Isj0qwzlef/4DjBcqf47HqHK4Huxz8xBprn2jI8IkovLnQukX6Ef0ZneH4k2JPgrvZINzQqDNdWNUrCcaMRPnnBUwOoTPFCs2PX8IsmdWPo+9/vrR8fF3+tuSScxfIoIpCLR0HNeTXxW7ffqRW2AAKefLxRIDwWKVEHGHWCH4BAG1xiugiuMBO4N/C5+NnIOxpYKY99otldRUAnIEoddwr+6m/+Zbefw8t+Yf/kNoOxXyA+pWZWb55GNJtRFlJ6IVl40Sqdlhldxt6ehIdzuLFD+bfUP56CKJa6VD3bUWCdSDMDNNRxpA81UXUgrLYEyniCijd8eXibsxk4e/lYI4mtaA0BylZi5dVvJEkom8uh7r1Q6z6kugBlYQvxS0fKaZ7lTomW0PKTgpiHTTj5VSkTDh1o3mH++SH+cig0iZBXyXuVIADVE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(396003)(136003)(366004)(39860400002)(346002)(451199021)(64756008)(66476007)(316002)(2906002)(66446008)(76116006)(5660300002)(8936002)(66556008)(66946007)(4326008)(41300700001)(110136005)(91956017)(6486002)(966005)(71200400001)(6512007)(6506007)(53546011)(26005)(36756003)(186003)(2616005)(83380400001)(38070700005)(122000001)(478600001)(82960400001)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L2VCQXU3ZkIxM2tlNEp5NVB6ZEZPd3NtR2Uxak9ocVF5ZUdMSlZrTkx6S2FH?=
 =?utf-8?B?UWNIeU5Ud2l1eFJDbWlxMmNWN1Z2cTVRbUE2Q08ySEFnL1FuR01QZkhRa0hP?=
 =?utf-8?B?bkZqT1pPS2E4Y1h6ZlBWZlFaTlhrNC9Ja3NNdU0yY09uWUFzNVdmS0YyclpZ?=
 =?utf-8?B?NFIwSEJYTVVubkZsMndjcTFZbGgvUTBNYmUzejhxTUJiS01FQ05NekZKOHhV?=
 =?utf-8?B?dFJGV1VNMG5qeUd3Rk9vcXRDTCtTUkNrQVV1VzNIOVJpUTA5UHY1SlJqeVlV?=
 =?utf-8?B?L2RnUUl4ZEFuWUhsc1RNNU8vd2VyaDNRdWZ1Q2dyODYxcFYvanFVR29yeVoz?=
 =?utf-8?B?RUx3SjdRaWd0Q0JDcW9uSnJBWE8vbFJoOEhUN1lTcjhqc2haNkZvbyt6TzBS?=
 =?utf-8?B?Nll1RzFtUjk5VTFlazJCVWZnei9tU3RDZTZ5U25wcVluUThWK2g5NEQ4bjR2?=
 =?utf-8?B?Q0pZU0JBWG54Nm1ndCtBSHdiNVUvWjVWcE5XSWorZ3oycjJCa3h6Z0d0S2Fl?=
 =?utf-8?B?Z2dwSVZJZ2FHNDRQQWlkcXRsbTRGWnBKaFdKOHM3cS9tS0NyNXJVeEhhc0dD?=
 =?utf-8?B?THBObzU4MTM3T3lLc21iTE1Tb2ViN3R1MHBvRFppVXFuR1FkNjJiZWpzdTZm?=
 =?utf-8?B?bWpsVkJaWjlOMnhIcTJqeEVFWlRFVFJyWFYwS0VwOXp6dU52cmZOVXMwMElE?=
 =?utf-8?B?clUrTGZWbE12SnRndzZ2dU03V0wxMElvdVp0R3NmZXMrdHBubUtqYTBRR2ZZ?=
 =?utf-8?B?ZUY4Q2Z4TWMrTktQV2RIUytvT2NZZU5sSE1Hckh0RHhqNjIrWTBzMHUzY0tK?=
 =?utf-8?B?bytER0ZnRXllYm1HUHA2SEZOalZRQklBaWJrTTJZMFpBVFpWY0hQSnVEWDZ5?=
 =?utf-8?B?dUg0eDJKTFh1akpTMFYrTCtVclcwV0NmZzMvQ3VIM1VmZGNEbGpDTFFyMnlo?=
 =?utf-8?B?czcrekk1bWVlZWtIQmdCSlY2bHhmSVdTdDVDcEQ4TEl0Vjl0bjBEMWtBcHRZ?=
 =?utf-8?B?NG40RURmaVFoVmpyQXRnYWZta1JUL2VlVWxlcldRWUxReklTTGxGRVVpNCtT?=
 =?utf-8?B?SDA3MjZHSUxoa1IwRGVlWEZZYnZRU2dTYllFTTlFTHB4R3FLazNyNXhWVTU0?=
 =?utf-8?B?Qk0rMXF5bkIwRXBLaGluT1h4WG1hYkZkUTJBL1BpK1p3eGpaL1o3OU9WTys2?=
 =?utf-8?B?WE54c2tvNXg0OGUzUWQ4MzFDR3FzYW05TmZLYWxYSGF4bWJPNnlraUFOaU1D?=
 =?utf-8?B?dWtsNU84TTNjR01uYU41UldnSnlGb2c4aGlkS3UyeXVteXdZc1NyR0Y3UlY1?=
 =?utf-8?B?eEtVcTVYTjltNmhrWGQyUDhhUUpqbGdFWk93U0J0YVZiOWxWWWM4VGd1ckpG?=
 =?utf-8?B?dS9MVDE5RjJHTnBpdGVmeHZaSURoaFhDcG1ZOFNQRVNqODl2M0YxaXpidFVX?=
 =?utf-8?B?TjJsVXczOGg3YktPVDJuSHllTmZ4NUNtQjB1RUYzSzZwV3M3bHo2Q3hLNjA4?=
 =?utf-8?B?RmVzaS9DeEpwLzNFT0IreWJWUzA3MitpWStKQVBpbW5nWnhOakxJTHNtRUsr?=
 =?utf-8?B?TnRuc0tYbndkd2pJd3dkcmpSdzZIK0dIUUxjSEZTc2gyQzc5NEVuZW5XUU5P?=
 =?utf-8?B?TTZIdUFuS0d0QmpxWDhwdjdMR3JwdlZSWGdyZDJkeFM0dFEvQVJzRnhsT00r?=
 =?utf-8?B?QTlxT1J0RmVwTWFlVUJNWjF2MFl3NmFqa24vb3hMWkVWR09VcDlWbm41RDB4?=
 =?utf-8?B?YUcvV3JqU0FuYWpOc1ZpelVWWDBPaXV3MGRSd05KNVJwcHpJb0ZVS05XRURi?=
 =?utf-8?B?N2wvOWNncFVXbXJlUjhDdzdRMXV2NkNDb2dxeEdXU3VFM0h1U1krbzhGVUUz?=
 =?utf-8?B?b2NsMjBpeGt2ZUo2bHRQQ2dBc1RWVko5SlRiUTFxQ0g5UUNkSVAzMnJjTkNj?=
 =?utf-8?B?WkZSYjZma3hTWkVFMDF2RHRCbmdWYXVuMTc2RFpSMi9ya3RYU0Q5QVQwTHlu?=
 =?utf-8?B?ZHpBOWdYRjkxY1dPNEx5RDJoZitFZS82TFp2OC9iQ01EbDB1dTFYUi9ZUnJl?=
 =?utf-8?B?SWtMWU1MM3BsTG80Q0FIZlpRTFlhNUdwejViMjdwSVcyV01wY09qcUNUL0M5?=
 =?utf-8?B?OGdlMk1KUStrd2Q1RFRGcGRQV2V1a3YwUTY2V1JUSXdvWGtuaHVpaEs0d1Rq?=
 =?utf-8?B?L0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DD6605ACF58E3B40B84DEBA1AAC527A4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 27d48ccd-12b8-43db-4a72-08db667e0671
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 11:06:06.2626 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TsAwGSM2Th1t5Ios5M2OrB3WzbWjq/k/A0gUa+WDZ2eDGEHeldZ7T7gBhKIcQrDDleIb5Ge7RWsgE/km01OUKBEfHs+iSayKotAeTFa4QOg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6304
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915=3A_implement_internal_workqueues_=28rev3=29?=
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

T24gVHVlLCAyMDIzLTA2LTA2IGF0IDExOjA2ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMDUvMDYvMjAyMyAxNjowNiwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gT24gV2VkLCAz
MSBNYXkgMjAyMywgUGF0Y2h3b3JrIDxwYXRjaHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4g
d3JvdGU6DQo+ID4gPiAjIyMjIFBvc3NpYmxlIHJlZ3Jlc3Npb25zICMjIyMNCj4gPiA+IA0KPiA+
ID4gICAgKiBpZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtcHJvY2VzczoNCj4gPiA+ICAgICAgLSBm
aS1ibGItZTY4NTA6ICAgICAgIFtQQVNTXVsxXSAtPiBbQUJPUlRdWzJdDQo+ID4gPiAgICAgWzFd
OiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzIwMy9m
aS1ibGItZTY4NTAvaWd0QGdlbV9jbG9zZV9yYWNlQGJhc2ljLXByb2Nlc3MuaHRtbA0KPiA+ID4g
ICAgIFsyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdv
cmtfMTE3NjE4djMvZmktYmxiLWU2ODUwL2lndEBnZW1fY2xvc2VfcmFjZUBiYXNpYy1wcm9jZXNz
Lmh0bWwNCj4gPiA+ICAgICAgLSBmaS1oc3ctNDc3MDogICAgICAgIFtQQVNTXVszXSAtPiBbQUJP
UlRdWzRdDQo+ID4gPiAgICAgWzNdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9k
cm0tdGlwL0NJX0RSTV8xMzIwMy9maS1oc3ctNDc3MC9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMt
cHJvY2Vzcy5odG1sDQo+ID4gPiAgICAgWzRdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMTc2MTh2My9maS1oc3ctNDc3MC9pZ3RAZ2VtX2Nsb3Nl
X3JhY2VAYmFzaWMtcHJvY2Vzcy5odG1sDQo+ID4gPiAgICAgIC0gZmktZWxrLWU3NTAwOiAgICAg
ICBbUEFTU11bNV0gLT4gW0FCT1JUXVs2XQ0KPiA+ID4gICAgIFs1XTogaHR0cHM6Ly9pbnRlbC1n
ZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1fMTMyMDMvZmktZWxrLWU3NTAwL2lndEBn
ZW1fY2xvc2VfcmFjZUBiYXNpYy1wcm9jZXNzLmh0bWwNCj4gPiA+ICAgICBbNl06IGh0dHBzOi8v
aW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExNzYxOHYzL2ZpLWVs
ay1lNzUwMC9pZ3RAZ2VtX2Nsb3NlX3JhY2VAYmFzaWMtcHJvY2Vzcy5odG1sDQo+ID4gPiANCj4g
PiA+ICAgICogaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBldmljdDoNCj4gPiA+ICAgICAgLSBiYXQt
YWRscC05OiAgICAgICAgIFtQQVNTXVs3XSAtPiBbQUJPUlRdWzhdDQo+ID4gPiAgICAgWzddOiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzIwMy9iYXQt
YWRscC05L2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXZpY3QuaHRtbA0KPiA+ID4gICAgIFs4XTog
aHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9QYXRjaHdvcmtfMTE3NjE4
djMvYmF0LWFkbHAtOS9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV2aWN0Lmh0bWwNCj4gPiA+ICAg
ICAgLSBiYXQtcnBscy0yOiAgICAgICAgIFtQQVNTXVs5XSAtPiBbQUJPUlRdWzEwXQ0KPiA+ID4g
ICAgIFs5XTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUvZHJtLXRpcC9DSV9EUk1f
MTMyMDMvYmF0LXJwbHMtMi9pZ3RAaTkxNV9zZWxmdGVzdEBsaXZlQGV2aWN0Lmh0bWwNCj4gPiA+
ICAgICBbMTBdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNo
d29ya18xMTc2MTh2My9iYXQtcnBscy0yL2lndEBpOTE1X3NlbGZ0ZXN0QGxpdmVAZXZpY3QuaHRt
bA0KPiA+ID4gICAgICAtIGJhdC1hZGxtLTE6ICAgICAgICAgW1BBU1NdWzExXSAtPiBbQUJPUlRd
WzEyXQ0KPiA+ID4gICAgIFsxMV06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2Ry
bS10aXAvQ0lfRFJNXzEzMjAzL2JhdC1hZGxtLTEvaWd0QGk5MTVfc2VsZnRlc3RAbGl2ZUBldmlj
dC5odG1sDQo+ID4gPiAgICAgWzEyXTogaHR0cHM6Ly9pbnRlbC1nZngtY2kuMDEub3JnL3RyZWUv
ZHJtLXRpcC9QYXRjaHdvcmtfMTE3NjE4djMvYmF0LWFkbG0tMS9pZ3RAaTkxNV9zZWxmdGVzdEBs
aXZlQGV2aWN0Lmh0bWwNCj4gPiA+ICAgICAgLSBiYXQtcnBscy0xOiAgICAgICAgIFtQQVNTXVsx
M10gLT4gW0FCT1JUXVsxNF0NCj4gPiA+ICAgICBbMTNdOiBodHRwczovL2ludGVsLWdmeC1jaS4w
MS5vcmcvdHJlZS9kcm0tdGlwL0NJX0RSTV8xMzIwMy9iYXQtcnBscy0xL2lndEBpOTE1X3NlbGZ0
ZXN0QGxpdmVAZXZpY3QuaHRtbA0KPiA+ID4gICAgIFsxNF06IGh0dHBzOi8vaW50ZWwtZ2Z4LWNp
LjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzExNzYxOHYzL2JhdC1ycGxzLTEvaWd0QGk5
MTVfc2VsZnRlc3RAbGl2ZUBldmljdC5odG1sDQo+ID4gDQo+ID4gVGhpcyBzdGlsbCBmYWlscyBj
b25zaXN0ZW50bHksIEkgaGF2ZSBubyBjbHVlIHdoeSwgYW5kIHRoZSBhYm92ZSBhcmVuJ3QNCj4g
PiBldmVuIHJlbW90ZWx5IHJlbGF0ZWQgdG8gZGlzcGxheS4NCj4gPiANCj4gPiBXaGF0IG5vdz8g
VHZydGtvPw0KPiANCj4gSG1tLi4NCj4gDQo+IDw0PiBbNDYuNzgyMzIxXSBDaGFpbiBleGlzdHMg
b2Y6DQo+ICAgICh3cV9jb21wbGV0aW9uKWk5MTUgLS0+ICh3b3JrX2NvbXBsZXRpb24pKCZpOTE1
LT5tbS5mcmVlX3dvcmspIC0tPiAmdm0tPm11dGV4DQo+IDw0PiBbNDYuNzgyMzI5XSAgUG9zc2li
bGUgdW5zYWZlIGxvY2tpbmcgc2NlbmFyaW86DQo+IDw0PiBbNDYuNzgyMzMyXSAgICAgICAgQ1BV
MCAgICAgICAgICAgICAgICAgICAgQ1BVMQ0KPiA8ND4gWzQ2Ljc4MjMzNF0gICAgICAgIC0tLS0g
ICAgICAgICAgICAgICAgICAgIC0tLS0NCj4gPDQ+IFs0Ni43ODIzMzddICAgbG9jaygmdm0tPm11
dGV4KTsNCj4gPDQ+IFs0Ni43ODIzNDBdICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBs
b2NrKCh3b3JrX2NvbXBsZXRpb24pKCZpOTE1LT5tbS5mcmVlX3dvcmspKTsNCj4gPDQ+IFs0Ni43
ODIzNDRdICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBsb2NrKCZ2bS0+bXV0ZXgpOw0K
PiA8ND4gWzQ2Ljc4MjM0OF0gICBsb2NrKCh3cV9jb21wbGV0aW9uKWk5MTUpOw0KPiANCj4gDQo+
ICIod3FfY29tcGxldGlvbilpOTE1Ig0KPiANCj4gU28gaXQncyBub3QgYWJvdXQgdGhlIG5ldyB3
cSBldmVuLiBQZXJoYXBzIGl0IGlzIHRoaXMgaHVuazoNCj4gDQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
bnRlbF93YWtlcmVmLmMNCj4gQEAgLTc1LDcgKzc1LDcgQEAgdm9pZCBfX2ludGVsX3dha2VyZWZf
cHV0X2xhc3Qoc3RydWN0IGludGVsX3dha2VyZWYgKndmLCB1bnNpZ25lZCBsb25nIGZsYWdzKQ0K
PiAgIA0KPiAgIAkvKiBBc3N1bWUgd2UgYXJlIG5vdCBpbiBwcm9jZXNzIGNvbnRleHQgYW5kIHNv
IGNhbm5vdCBzbGVlcC4gKi8NCj4gICAJaWYgKGZsYWdzICYgSU5URUxfV0FLRVJFRl9QVVRfQVNZ
TkMgfHwgIW11dGV4X3RyeWxvY2soJndmLT5tdXRleCkpIHsNCj4gLQkJbW9kX2RlbGF5ZWRfd29y
ayhzeXN0ZW1fd3EsICZ3Zi0+d29yaywNCj4gKwkJbW9kX2RlbGF5ZWRfd29yayh3Zi0+aTkxNS0+
d3EsICZ3Zi0+d29yaywNCj4gDQo+IFRyYW5zZm9ybWF0aW9uIGZyb20gdGhpcyBwYXRjaCBvdGhl
cndpc2UgaXMgc3lzdGVtX3dxIHdpdGggdGhlIG5ldyB1bm9yZGVyZWQgd3EsIHNvIEknZCB0cnkg
dGhhdCBmaXJzdC4NCg0KSW5kZWVkIHRoaXMgc2VlbXMgdG8gYmUgZXhhY3RseSB0aGUgYmxvY2sg
dGhhdCBpcyBjYXVzaW5nIHRoZSBpc3N1ZS4gIEkNCndhcyBzb3J0IG9mIGJpc2VjdGluZyB0aHJv
dWdoIGFsbCB0aGVzZSBjaGFuZ2VzIGFuZCByZXZlcnRpbmcgdGhpcyBvbmUNCnByZXZlbnRzIHRo
ZSBsb2NrZGVwIHNwbGF0IGZyb20gaGFwcGVuaW5nLi4uDQoNClNvIHRoZXJlJ3Mgc29tZXRoaW5n
IHRoYXQgbmVlZHMgdG8gYmUgc3luY2VkIHdpdGggdGhlIHN5c3RlbV93cSBoZXJlLA0KYnV0IHdo
YXQ/IEkgbmVlZCB0byBkaWcgaW50byBpdC4NCg0KLS0NCkNoZWVycywNCkx1Y2EuDQo=
