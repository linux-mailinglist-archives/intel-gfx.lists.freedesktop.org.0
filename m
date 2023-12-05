Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FE980566C
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:50:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C65810E542;
	Tue,  5 Dec 2023 13:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7084110E542
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701784212; x=1733320212;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=FJ+VH0VJFJZ6T41KZtFoNAELSxCxYwa7bO9djMbiq7o=;
 b=c9oohF56rPWK/DCSW21ZQXjd51+g+bYznumF2EySBrRv+6Zi/CnQ6pzh
 46PrtDczHvfQTQcdZH3OZ2JP5C1cROTKTJjhGxanEsGIJaqSDWkPJrjlp
 U1qSArSAcWPny33/OAXGvYI9G6ZB4qUz+bQWBiumMWiJnkvT4oCJWNkyN
 oCZcyY8+I9sp0GvclD70B6/JcgReFIxwdvIfadhlHhX0Yxfp5iJ+XqToy
 uk4uBjdCSnNpxFSX7HI7RYXm9LXxZEggdODjbJZXCwkBbuJHLNCpklmXs
 y5dxkbtDoD1dbWgl+b84V/LEz1+0pNtGHP+gM29Mbnai494cGsVAMCfCh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="391058739"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="391058739"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:50:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="774638012"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="774638012"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Dec 2023 05:50:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 05:50:11 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 5 Dec 2023 05:50:10 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 5 Dec 2023 05:50:10 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 5 Dec 2023 05:50:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SUoS0gFIG+lLq3Gy973uBrS4CzXoug78K3Zirt2HU8952TvSP/uSoYod0qJyNCN7dS8eUKjWZ8/UCIeb65mOaPLqq0+gNnAGgLrwYMn+Dv4GP0b0HYfia8yeKJ/SWCM0e4HOP56WIU+fTfY4zNNtnx9OGrW3QSk7wNN5PAIFhv056ccsIAGPtuiss0rukimWyCGuXP1Vp57wvpiPz9fPdGD+bFI5GqaXirMmkjKANZcFxdfiIQjjuYyLDPHx0mKMj0agt3C62xLB7d2YvBLH4rZ0rH/853H8HCl20aJj+pGTnEniA7PvJGqQDcUi8P4aoJIfZDwBM/fxpS/cscVprw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FJ+VH0VJFJZ6T41KZtFoNAELSxCxYwa7bO9djMbiq7o=;
 b=UGfzHELx6Y8/XlAFlyhao1VeEDxXBsL3hJ8+JOWku4JQCkXadfy87wgzW9A0+Ol35TsBHHts2EqmS8nsnr6bMaicF6fo32wGXNWm6i/8rqygoplHX1KQF9qNM3cG0WiNuIVmxDUaD2YZ+Mryg3FP7nMKM+bBZcG7L8i8BTyA3aJmqn75y5Fy5AHZhVnNCr4fK5v8OVhU6NtRepa19ysPsYInYSw9qmIMOM/Uu378JMkgt7PoTGPgg4dwmRNaHkd6H9XEm8oSeS62uHBqMAP1znV9/n/S95rxG2tgQg/vN8IDBbXjY9xjv8tCth3lpzdDlXjjjDjmkQx1jrJI6Q7Nog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 LV3PR11MB8459.namprd11.prod.outlook.com (2603:10b6:408:1b0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.34; Tue, 5 Dec
 2023 13:50:08 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.7046.034; Tue, 5 Dec 2023
 13:50:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "kai.vehmanen@linux.intel.com" <kai.vehmanen@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-all
 quirks
Thread-Index: AQHaJr1fBfuwTOY/UEq4btTH49yiNbCatm6A
Date: Tue, 5 Dec 2023 13:50:08 +0000
Message-ID: <4d2b603136623149119a6e7326439c34d979a9af.camel@intel.com>
References: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
In-Reply-To: <20231204140955.2020491-1-kai.vehmanen@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|LV3PR11MB8459:EE_
x-ms-office365-filtering-correlation-id: 24daa064-6c1a-4f3f-7304-08dbf599183e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: bNMBPKxKTRiODKWCjX8vYpNlM02J4MvCNJ9YcFLVxVR11+0IcvyQeVJN18ZDcGcGIuBLewkHw5Nzj6cus2fJVCq22LxXUFd7Vmz9x/9+bR9ULf8CPasjPq32y3yhMtBLVI/hsVfOOyjJVnjEMRwWji2QS9mjiq+EpPO+cXps6o9vif3nWu8IxL2b8RxZxtYRlvMO4+GNzR7/mNlNEsDSXPcvfuvPZ0zKU1bt3sztUX9pCA010mFZrV1GtVVOPnPnmVthhvc1zu7lRIvCuafba+mXEHxCdplJW4dulmnI3qAGPvtOw4ClEeWg37np2W2P64PYqaQ86GL9Sf5BiHPI1Q8yE3UUZb0DqUFqp6S8K5obeAWh+Jo9kPmIaVDBzGzjDiYlx5doKg1x+FcZXPmbArElNFQNqiLmLAMWYMq/VLE+v+jhl4HkxgkajwlU8wgDZzClh9y+dC5GPofc0JoVt479GGY9whZl/DGoKcz+kXYWwcJsD2OZyqh3fPL/22PfAicUxykF0snKqbYecFGPtbj9cfdIUwXNP+ElZ4nv6fInUZUUDuBU/QZcU9W2v9lMPSCZ7+fZ8X4i8VratF6J7IspwlPOcHjiDLZ7x5QrKOU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(136003)(39860400002)(376002)(230922051799003)(64100799003)(451199024)(186009)(1800799012)(66574015)(6512007)(6506007)(26005)(122000001)(8936002)(8676002)(110136005)(91956017)(66946007)(76116006)(64756008)(66476007)(66556008)(316002)(66446008)(71200400001)(38100700002)(2616005)(6486002)(966005)(82960400001)(478600001)(83380400001)(4744005)(2906002)(41300700001)(5660300002)(86362001)(36756003)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NWUvSEt3aW1QaXh3L3ZmUEJxY2U5WWxXeHlPcW81OGRMc1ZCL21wdHJySmN3?=
 =?utf-8?B?UDV5aFFURmlUVURMN2xDTnF3RzI0ejVPWXZmWExWKzNCVmFOUDZ1aUJneEQr?=
 =?utf-8?B?b2lkSW1IY1NUSzlZNG9nUitGUWJWMDQ5ZEdyamxDMHVHV0RjVFprekVINGdX?=
 =?utf-8?B?WkpNTXJlWHZkMk81OGE1c0hybWxhNC9EZkdIYjJXT2NuS3BXN2VSOUNPcktS?=
 =?utf-8?B?S2RKcGdwMENZQlNPZTNNTEVmMU1zVkZWQ1pZRXl6RTB5Ym1HMXNxSkNhVlFh?=
 =?utf-8?B?Y1cvYU9PbUtrVXVSY05tYUhvR2NXL094cFpQc0dHcU45ODBSNnBaVkVRS0ND?=
 =?utf-8?B?NnhuRDJ4TklWS1EvbUthdEd6Yzd6R3o4RlMzbzhYdFZEakhmVmp5bG1sYkxM?=
 =?utf-8?B?Vmo2QUtnNzc0YlNyd3A1cU9JRWNaQ29USkNsTUNSQWhYMWN6Yzh5UmUwUHhh?=
 =?utf-8?B?aFh6UVBIaDVrL3g1UHlvZWExbWw2bWp5MXo1UGQyQ2I4cStFZnNqd0h4L2VZ?=
 =?utf-8?B?Zm1SWE5nLzlRQ3l3T0dXTU9OUkhURVBSR2tVeFJTRUdiOXdacVhnemcxVW9G?=
 =?utf-8?B?TDRESHZyUUJGQTQ2bWN3OFI4S280RGp0TktPeWd6K3Z2dVphMFU5MXRxRVR0?=
 =?utf-8?B?MXJzOE5rb2MyVnF0WjNMM1RhZlNTN0JCRWszZE82SlA1dnlHSUIvN3Y4czYv?=
 =?utf-8?B?UGRTUnFjaFlYU1A3cmtrK2pkWVcxdVIwTmFnaEhjNlFzeVFKSjh0N2JpVTJX?=
 =?utf-8?B?dU1UTzBQN1lxTmRrbFZjWkhLM041RWpxWWVQRDMxUHdTQWkxSG4ydDRYSU0z?=
 =?utf-8?B?TlZOUWpkbGRTQVpkdkFraGQva1FnYWdEWHZWODQ1MlcrMUQ2QjJhTHZ0YTV1?=
 =?utf-8?B?ZVBtbC9JblEyWm9wVG9zbmdTM09rSDBxTmRub1VoOVJjNkV1TW85c0c3UitT?=
 =?utf-8?B?d1JZTDVEazhqYXFMM2JBVXdOaFNuUlZETHJYQnh0WTNNM3dOaVR6OXErWm9Z?=
 =?utf-8?B?b2xJeGhuVVdYZlhyeU84T1lhWjJyT2xjS1BvbnpBbXNUMllVK2RQL2E3Um1o?=
 =?utf-8?B?RVBENFBMSzlkSjFBUkRPZ2RRTUVYSHhPZjVYOWszNHlGSHdGTHkyZVpUTzVm?=
 =?utf-8?B?Z0c3RjVrUVdUaG9ncmY3ZitQMTdxSEFRTThZSW1XeEVTczNMMVZyZFJXZC8w?=
 =?utf-8?B?UG13MUFqNE9icCtQeG1YKzlaSDI3Ym9SdUNZYk5Ya2s3TVhqdTJnb2JLZ2pE?=
 =?utf-8?B?Y2h2Zm5TUklWWFRjUU4yVnpjdEwyTlhpZlQwa2E5ajZVN1FRQkZOcWh4NGlx?=
 =?utf-8?B?Rk9JeFU1dlVXVGQvNWNmZ0kxZHpQcE9TODY4Z0FGQTY1N0JKT0RhSUxONHBQ?=
 =?utf-8?B?Qm9WTkNpNzZyK1cwWGNUYUtncjNqbWo5VVZYOStIYjZYdkowODdkcXpTVEpp?=
 =?utf-8?B?UjFmYUJmeE5GWDY2eXU5N05vSzFPbDVjTEl3YTZGTEp6NFNGNkJ1WnY1RW9O?=
 =?utf-8?B?RzRITnVhU3EveUN5TGhRaEd1UVpmZW5NRVJuL3U4NDBDNnZkQ1lGbnQ4QzZj?=
 =?utf-8?B?dTVYMFV4UTVUQlJUalBMb2g0S3IvQXI0dENpU08wYlpPZHZTVDIzS1hXZHpx?=
 =?utf-8?B?MlIxQUtQdGJ2T3BmV2ZSeThYekFvQUh4L0JNdFlXZllySmV4Tm5yV1BvZnVP?=
 =?utf-8?B?UDE5VlFuVk1PdVdtYWE3dVBsK1BpTEZZcWpxenprQ3lYTHFZZ253Q0NMVnBy?=
 =?utf-8?B?WGZ1TmNiOHRvenU5UlNmL2J3eEVRZlpKbHBka1NlVVpDZXlqckN5ZmJiL1Bw?=
 =?utf-8?B?SzNzUWJYUXZmSi84QTBldVJheENPMzdpTFFGQVRwNzFMRDVhQkRjVnBLMFJM?=
 =?utf-8?B?eUJESDY2L2c2emtDVktld1Q5eXFsYWU4SWxyTEt0V2N4Y2ZMamEvY1dJVjhp?=
 =?utf-8?B?Tm9XM2lxQ3VQZWxDNVRNcmpqVkxtSUtiUnZSem1xTGZiRlBpWERHTnZPeU1L?=
 =?utf-8?B?TzdXSHBkS1RNRjE4MjNOMnNvemdsNGlmTEFGaDBNamlVVGFKS01YTGx1Wjh3?=
 =?utf-8?B?UTdUTzFZdWUyUTYvQ2UvSWZ3TVhXcmdSL2t3TnB1SlBXNzFXTHVPY0xxMkcy?=
 =?utf-8?B?VlJNUXZORnlUZWI1YVpzcWFPdk16YTh6ajBLYU56THBqYzJKbDRxYkRlWFgr?=
 =?utf-8?B?d2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DD047F5B11BCD24FBF9BBD78159B4860@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24daa064-6c1a-4f3f-7304-08dbf599183e
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 13:50:08.7869 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: V9U7aQosMuK4Db3wFjnoJB1scXSU4I2Ne2bUFEjkrO6FU249kGyV5PJEPLA4lTLEKpVs5bNbHpo5NNZVh3qoYcW6RV2Cdxf/n2juqQ5SGYk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8459
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 0/3] ALSA: hda/hdmi: add SKL/KBL connect-all
 quirks
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

T24gTW9uLCAyMDIzLTEyLTA0IGF0IDE2OjA5ICswMjAwLCBLYWkgVmVobWFuZW4gd3JvdGU6DQo+
IEhpLA0KPiANCj4gSSdsbCBzZW5kIHRoaXMgZmlyc3QgdG8gaW50ZWwtZ2Z4IHRvIHZlcmlmeSB0
aGUgaTkxNSBDSSByZXN1bHRzLiBJZg0KPiBhbGwgb2ssIEknbGwgc2VuZCB0aGlzIHNlcmllcyB0
byBBTFNBL3NvdW5kIHVwc3RyZWFtLg0KPiANCj4gVGhpcyBzZXJpZXJzIGlzIHRvIGFkZHJlc3Mg
a21zX2hkbWlfaW5qZWN0QGluamVjdC1hdWRpbyBmYWlsdXJlcw0KPiByZXBvcnRlZCBpbjoNCj4g
aHR0cHM6Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pZ3QtZ3B1LXRvb2xzLy0vaXNzdWVz
LzMNCg0KVGhhbmsgeW91IEthaSBmb3IgdGhlc2UgcGF0Y2hlcy4gVGhleSBhcmUgbm93IHB1c2hl
ZCB0byB0b3BpYy9jb3JlLWZvci0NCkNJIGJyYW5jaCB0byBoZWxwIG91ciBDSSBCQVQgcnVucy4N
Cg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0KPiBLYWkgVmVobWFuZW4gKDMpOg0KPiDC
oCBBTFNBOiBoZGEvaGRtaTogYWRkIGNvbm5lY3QtYWxsIHF1aXJrIGZvciBOVUM1Q1BZQg0KPiDC
oCBBTFNBOiBoZGEvaGRtaTogYWRkIGNvbm5lY3QtYWxsIHF1aXJrIGZvciBBU1VTVGVLIFByaW1l
IEI1NjBNLUENCj4gwqAgQUxTQTogaGRhL2hkbWk6IGFkZCBjb25uZWN0LWFsbCBxdWlyayBmb3Ig
QVNVU1RlSyBaMTcwIFBybw0KPiANCj4gwqBzb3VuZC9wY2kvaGRhL3BhdGNoX2hkbWkuYyB8IDMg
KysrDQo+IMKgMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKQ0KPiANCg0K
