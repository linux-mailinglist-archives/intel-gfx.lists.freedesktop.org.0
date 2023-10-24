Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 056BC7D4FA7
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 14:20:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7665910E360;
	Tue, 24 Oct 2023 12:20:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2173D10E360
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 12:20:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698150004; x=1729686004;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=7is6GrsBYmoVZ/rlveR1P8VugrrxQBXvh0RWlx2bC/w=;
 b=RROds3gsEvW7VAJR0QHbYOJjRYm9A1qiCwtAty5kPNnLbBNqBIHDOsX6
 FBBL1ls64z96baRI1/914J3MaPH3y/RxiqEf0wuj2QdA4A/aYzbXN5rfv
 7UsiN15CSYBBzt4oIkNK6IpmT2pMOVVVMk4zBrnYbR9XVM6IL9aGpuNS1
 z8QZhKeVHRKkD/0sQdQl45KbtM6SzGL5Tc0CHKbsJaE6TmpHboWKxp+qy
 FSyE24jzXbuJjcNemiTNQu5G+fEqfKC2xLjfMY8JqVv9bLaUEr9URjcNq
 8H6Y3Dhhm6a+0dH2RsSE8HqrXmkzqRuSV9atk1yq3VtRXKwLyTzD99Xg5 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="453502978"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="453502978"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 05:20:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="824269251"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="824269251"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 05:20:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 05:20:02 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 05:20:02 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 05:20:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mQ46mLiH51z+EFaTHk783l6xb9Tsy0tyoWRAvfkfcj2HA4ZwzpB5ExbiEaiKp3oi4/8td+2dmcMxYsjUPAIwCy8G9Fm2fxYM+zsQ2Umv2DJCIOjGgfWWX9lZNBV5sXI7REdRV3Uldk0RSnHdMFurh/sOj7fiMfJX37hZWYPsUAEgOvrEhJ6WWzCgGhOQp4mPUVCCqJl9DfXZ8PxaMOSUyHzQZyt9zAkS/0OdRXFXohjuts8qhjGupAWmIJiv60TiSc9dwMBl1fqyoUPyseGxHSVCc+5ZBVQFIQboDb3MyTntucMCdl2kBh1hMYBQFEdyBONYBDY78KFhf6buPnlcrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7is6GrsBYmoVZ/rlveR1P8VugrrxQBXvh0RWlx2bC/w=;
 b=iVUV53CeAnoCD+IpA9IWB+LHu6JLrQ4yLzrnvWBCJOu0MWYvoTT+OjTPh1r9UtVtCNrjFeOA/3Fd7vzuiJJ9jrroSPK8iRMPh+cZJiALvlGeDxaocnSTw7p78pzbohtqVABdQpwXnEgxJ+2eDaKhwtp5+ffMC0+STgnkUdFWVkCCwo065Kkeu2j34HVusGCjbd04vvNDZKB9k1wGmIftlqGJAB4rfFYd/YSgnmle3Jk5a1JB+J93D06xnxUugGgH4LH+QUaaejojHTrvxNsAbFvSMKPDeHik4OMxMZzZfXlqB/WSAGGtYx6qH7Z5HNUASnjsQQf+GmLxbt7U++JTUg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB7015.namprd11.prod.outlook.com (2603:10b6:806:2b8::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 12:19:54 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6907.028; Tue, 24 Oct 2023
 12:19:54 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "luca@coelho.fi" <luca@coelho.fi>, "Nikula, Jani" <jani.nikula@intel.com>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 21/24] drm/i915/display: Move
 verbose_state_checks under display
Thread-Index: AQHaACJq9chEcHq6DUK5UyumHmU7B7BXckQAgAEz4ACAADTpAIAAC2kAgAACCgA=
Date: Tue, 24 Oct 2023 12:19:54 +0000
Message-ID: <99b9250e5ae7c60317651ce7b624bd6180a503bb.camel@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-22-jouni.hogander@intel.com>
 <daf1bc85a60793a55c5c9371778bb4e17319e8da.camel@coelho.fi>
 <f68c3d2669013b16f3bf3263dacbc13f267d2572.camel@intel.com>
 <c6e2a0afa151f361ac920994cd105a9ce0b6bf9d.camel@coelho.fi>
 <87msw89q33.fsf@intel.com>
In-Reply-To: <87msw89q33.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB7015:EE_
x-ms-office365-filtering-correlation-id: 1527e494-f807-45dd-fcaf-08dbd48b8769
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZsVIeL2+UzQ2+TWqAweMiYTQiRT6TQdKvZOYDh7ITUAQw85YWGjSConl3XTlt72tB4tws6srpneTy9Ac8XJ+kHe6xjPsDm5bbjvNBoy7GNL1Q76yAmZz5oC2uX6YGFsTPs6/k8n8pW2BTooQ0LMAPmgrojaa3HWwTP8CD+Y8jnBccYCZdO6QRtmMFIYF9UNZul2wUwP7HkVfx+PiB1t+ojVuIVYML3rq97UZEzfcFMoZnC//hmdXL9BaucdEH7GmU0PxiZr1zXPy2roFS+NijJz0dwcbxmVqjPOPMYNVo5qx5foNTXw9FDQ2rxuLqyWHUomTYPand5g98DPkDCrARHzJzXSUVaS0OD7/JteNNopd8I4Po4efFFgn2yJO0/LzycT8uJU8V57Ycv786LwLZKI7yJ6oHzI1/nijqvMvPTfHVQ9t1g+f/8mpsCIlxUsDbxdcE7n03tBlCVOuHs64nnQ+nQ+vbs8NRiqwfua4XVKQuGyHx3adUvLzTEvJp1lT5ivKnu5jy5YC5AmQSu3lAaSZzO/q1+bCBrYjBAOEj3dctVdoABLFHjC5WKJ7SDb3A62z9LF1CfX1bn/phDSr2rq0oZX4ZUHlcKp/jpOcVC5faW0KC9W6fdgvBV7bAwNX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(136003)(366004)(346002)(376002)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(2906002)(38100700002)(6506007)(316002)(64756008)(122000001)(91956017)(66476007)(66946007)(66446008)(110136005)(76116006)(66556008)(478600001)(82960400001)(2616005)(71200400001)(6512007)(66574015)(6486002)(83380400001)(36756003)(5660300002)(41300700001)(86362001)(8936002)(8676002)(26005)(38070700009)(4001150100001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?amorOFBjcHY3UDM3ZEsvZEVNa3c5Z2RiUzFyTWFISU9pYWk3OHZZQ0xVb1NF?=
 =?utf-8?B?b1RJRmc0aFhUYnlmNXNTNkl4MkRJNHBmRFAvbFpkbkJmbEoyZW0yMmxsSlBq?=
 =?utf-8?B?RmlzZ1NqYVJsczhnT2JON2d6ZzhLZEM1R3oxL2dFcEVNWm5tSFQzakgwSDFG?=
 =?utf-8?B?WGhJdy9FVVFHV1VDNkNaSnJFcWhiSHh0VmVNOUp2WEk5YmZrZ3QyQVJZRit6?=
 =?utf-8?B?K3B2N2JScTRjMXF3RU5Ubno0Y3FwNEhJcytWNGplTzAzRzFxNXhFRUhSdVU3?=
 =?utf-8?B?NDVsM1N3MTVnRmkyYXdocDVGU3RyUUNVbkVqcm9jdGF0d2NCd3JvZnFyY3Nw?=
 =?utf-8?B?aFM2aXVTTWxRQTA5TnIyYlhqcnpkT1JZTUtpSmVGOVlndjN4VldDUGl2ZE9W?=
 =?utf-8?B?ZTk5N2srZEVMWFRQdXdYVFRBMWVyT3NoZHN0OWxTQXZ2SG9PZElxd2NTS25J?=
 =?utf-8?B?MGxpRm5FZitFblMyMGFCeDNNWHdXaC9YRDBrRUNKY0hWcnFpVFdodk0vdk1U?=
 =?utf-8?B?QnMybWZkbzFpNXpoVW1ENmJRb1VwYS9PUHduc0lwZ0pocVQ5WkEwTWk0aFRj?=
 =?utf-8?B?dzZtUXJKZURJd1I2Mm9NbVE3cHlZNWp4bjZjYmY1cncrRktxL0JhcWpQOUlH?=
 =?utf-8?B?aDJodU91RXcvdThWM2ZDUVJManRuQnZ3dENwb0Rqa3ZHT0VwdThKMjZKZC9O?=
 =?utf-8?B?YVQvallNb1hxeFg5Y0hpb3JqbmlrWDd5dnJMd1M5d0E3RXNQRVIvRU9uWnB1?=
 =?utf-8?B?S2VHc256cGtaVk5HSFVXTFZjZ1VJZklXRjgweEt4ZVUxTVUxNHBsbFpvNDI1?=
 =?utf-8?B?RFdoY3RiT1NMcXB0eWJPbTdpZXMxMFRTcFdlaktyNjRYWEVjR1FBVkxvMHFu?=
 =?utf-8?B?Q3JBTkptTEFCRkdQMlYyRWZLT05pRks4aGdOdjdSTW9kbUovVmZvdjZCcWZS?=
 =?utf-8?B?YTdQdHBFSk1mSXJ0K0gzOXFsdFl6WmxkcitsS0s3T3J5bisyTWI5ZGdGM1FL?=
 =?utf-8?B?M2w2aWQ3ZGpJTGJFQnM3NG1ZWlBSbTJOV2kzNGpQZzB1TTJybFpKSm1MK2R1?=
 =?utf-8?B?TmEyaVFmQkk5V3MwNmhLbUQ3WmhxWVNKUXJzNUFnMkF4ZTN3RWQwVlFiemZK?=
 =?utf-8?B?UldVZ1VKOGZkeERURmEwZFYycjREUCtOSGlXTThRZytKNlZ0R3NnYXdwWjdP?=
 =?utf-8?B?UENWaUlYQVBsNDc3dEFWTmpxTVFIWnl6endXdjh2UG5vWUoxdlh0VUFZRWJL?=
 =?utf-8?B?b2dSeEUxcjNYRjl4dnVlUmFXUjdzQVo0dkxjaVBiVyt5UW11VFgyNmJlWitY?=
 =?utf-8?B?RmxZbWdLcWV0Z3lWUFgyUmcvMkFwZ1FaeXpidWhjU1ZjK3c0SmJIcDhqcjVj?=
 =?utf-8?B?dkE5TlExNEFSSkFnU0RFK2NkcW1NM09JOERydUtBNkdKZHZIVkt5alJOTUJt?=
 =?utf-8?B?MXc4MzNSaDFZeGIxbHIydG1SWVcvelR6QnZkSWxmYTloNUJ1a1lQQWplb0tt?=
 =?utf-8?B?SzV2SnZudFVqUW81TUdNZjFSdHlOaVQ1b3B4K3VOcC84UkU0Mmp1R3BxTm5D?=
 =?utf-8?B?bmpEb1ErZkRFZEhBSG05WUE3UkNsRXB6YWRrclhRaklGL1ArNEFreDF1VVp4?=
 =?utf-8?B?K3UzM25iY1haUDM5c1N2TjFuLzY0ZEN1YU53OGZ6V3VWdGVTcktlbTR1TlY5?=
 =?utf-8?B?bWVDRFVHVllPZTZxTmRoTTN3a0MyS2w2UFNyYWg4SnEvb01FdXRRLzBxR3FG?=
 =?utf-8?B?TFhBMzJpbzlLYWNxN3o0U1pqZFAxWElFOVZ4Nk5EcGdiMjQ2NEdNWFVURWVP?=
 =?utf-8?B?Sm5Pb2NadWZjd29yVmFkVWp2ODJVNFRFTVBHTHhJanFEaGl5V2dteFJSMGdF?=
 =?utf-8?B?aHVJNHM4WTBlRWhiR0hUakxmNmhqYUJDN1ZXamJiRGtPN2wvN2ltaXBxTjRm?=
 =?utf-8?B?RW9ycEwrQmVHVWllYmJ6d2VPV3hTVUlqakQ0NnBKRlFCbGN1bVBUN1lodCt3?=
 =?utf-8?B?VnNBY291NXhHNXBLZ1NtMWRmRGtJU1U2WDVZT1NYcWlVUmFxMWtDd2dRaXp5?=
 =?utf-8?B?ek5hM0dYOVh4OEFpU09WbHk5clRTOTFMQW81ays1RmlGb1NIOExxbWExem1p?=
 =?utf-8?B?QUhiZUVqSkxsSVg5OTYybjlPMUQ1bG0ySEl6aXhpT0V0V2hib2NtczhsWFNZ?=
 =?utf-8?B?TlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8DA2805BC720FA42A1564BE0B84755E6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1527e494-f807-45dd-fcaf-08dbd48b8769
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 12:19:54.0452 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vSrxWxSPAd4eNfm8XBtzKVsB9t0o0dgpVPbhwyZFjD9XGkoukP2Zh/u6TbDIX9Mo2yz5gxvWy6TOpvLy1tX/LU8VYJ44UZM4C3+Y0HbloXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB7015
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 21/24] drm/i915/display: Move
 verbose_state_checks under display
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

T24gVHVlLCAyMDIzLTEwLTI0IGF0IDE1OjEyICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gVHVlLCAyNCBPY3QgMjAyMywgTHVjYSBDb2VsaG8gPGx1Y2FAY29lbGhvLmZpPiB3cm90ZToN
Cj4gPiBPbiBUdWUsIDIwMjMtMTAtMjQgYXQgMDg6MjIgKzAwMDAsIEhvZ2FuZGVyLCBKb3VuaSB3
cm90ZToNCj4gPiA+IE9uIE1vbiwgMjAyMy0xMC0yMyBhdCAxNzowMCArMDMwMCwgTHVjYSBDb2Vs
aG8gd3JvdGU6DQo+ID4gPiA+IE9uIE1vbiwgMjAyMy0xMC0xNiBhdCAxNDoxNiArMDMwMCwgSm91
bmkgSMO2Z2FuZGVyIHdyb3RlOg0KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdh
bmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gPiA+IC0tLQ0KPiA+ID4gPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmjCoMKgwqDCoMKg
wqDCoCB8IDIgKy0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9wYXJhbXMuYyB8IDMgKysrDQo+ID4gPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmggfCAxICsNCj4gPiA+ID4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcGFyYW1zLmPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIHwgMyAtLS0NCj4gPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cGFyYW1zLmjCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHwgMSAtDQo+ID4gPiA+
ID4gwqA1IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4g
PiA+ID4gPiANCj4gPiA+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGlzcGxheS5oDQo+ID4gPiA+ID4gaW5kZXggYmEzNTQ4Zjk3NjhkLi5iYzk1
ZmIzNzczODYgMTAwNjQ0DQo+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmgNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuaA0KPiA+ID4gPiA+IEBAIC01NTIsNyArNTUyLDcgQEAg
Ym9vbCBhc3NlcnRfcG9ydF92YWxpZChzdHJ1Y3QNCj4gPiA+ID4gPiBkcm1faTkxNV9wcml2YXRl
DQo+ID4gPiA+ID4gKmk5MTUsIGVudW0gcG9ydCBwb3J0KTsNCj4gPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgc3RydWN0IGRybV9kZXZpY2UgKmRybSA9ICYoX19pOTE1KS0NCj4gPiA+ID4gPiA+IGRy
bTvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBcDQo+ID4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoGludCBfX3JldF93YXJuX29uID0NCj4gPiA+ID4gPiAhIShj
b25kaXRpb24pO8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoFwNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaWYNCj4gPiA+ID4gPiAo
dW5saWtlbHkoX19yZXRfd2Fybl9vbikpwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+ID4gXA0KPiA+
ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAoIWRybV9XQVJOKGRybSwg
X19pOTE1LQ0KPiA+ID4gPiA+ID4gcGFyYW1zLnZlcmJvc2Vfc3RhdGVfY2hlY2tzLCBmb3JtYXQp
KSBcDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghZHJtX1dB
Uk4oZHJtLCBfX2k5MTUtDQo+ID4gPiA+ID4gPiBkaXNwbGF5LnBhcmFtcy52ZXJib3NlX3N0YXRl
X2NoZWNrcywgZm9ybWF0KSkgXA0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9lcnIoZHJtLA0KPiA+ID4gPiA+IGZvcm1hdCk7wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgXA0KPiA+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqB1bmxpa2VseShfX3JldF93YXJuX29uKTvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgDQo+ID4gPiA+
ID4gwqDCoMKgwqDCoMKgDQo+ID4gPiA+ID4gwqDCoMKgwqDCoFwNCj4gPiA+ID4gPiDCoH0pDQo+
ID4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiA+ID4gPiBpbmRleCAwNmU2
OGM3ZmVjMWMuLmU4Njc2NjYzOTM5NiAxMDA2NDQNCj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiA+ID4gPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4g
PiA+ID4gPiBAQCAtODcsNiArODcsOSBAQA0KPiA+ID4gPiA+IGludGVsX2Rpc3BsYXlfcGFyYW1f
bmFtZWRfdW5zYWZlKGZvcmNlX3Jlc2V0X21vZGVzZXRfdGVzdCwNCj4gPiA+ID4gPiBib29sLA0K
PiA+ID4gPiA+IDA0MDAsDQo+ID4gPiA+ID4gwqBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkKGRp
c2FibGVfZGlzcGxheSwgYm9vbCwgMDQwMCwNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgIkRp
c2FibGUgZGlzcGxheSAoZGVmYXVsdDogZmFsc2UpIik7DQo+ID4gPiA+ID4gwqANCj4gPiA+ID4g
PiAraW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZCh2ZXJib3NlX3N0YXRlX2NoZWNrcywgYm9vbCwg
MDQwMCwNCj4gPiA+ID4gPiArwqDCoMKgwqDCoMKgwqAiRW5hYmxlIHZlcmJvc2UgbG9ncyAoaWUu
IFdBUk5fT04oKSkgaW4gY2FzZSBvZg0KPiA+ID4gPiA+IHVuZXhwZWN0ZWQNCj4gPiA+ID4gPiBo
dyBzdGF0ZSBjb25kaXRpb25zLiIpOw0KPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiDCoGludGVsX2Rp
c3BsYXlfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9mYmMsIGludCwgMDQwMCwNCj4gPiA+ID4g
PiDCoMKgwqDCoMKgwqDCoMKgIkVuYWJsZSBmcmFtZSBidWZmZXIgY29tcHJlc3Npb24gZm9yIHBv
d2VyIHNhdmluZ3MgIg0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqAiKGRlZmF1bHQ6IC0xICh1
c2UgcGVyLWNoaXAgZGVmYXVsdCkpIik7DQo+ID4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiA+
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5oDQo+
ID4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFy
YW1zLmgNCj4gPiA+ID4gPiBpbmRleCA2MGQ5YzNkNTlmZTQuLmIzNTQ0M2Y1MTM3NSAxMDA2NDQN
Cj4gPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXlfcGFyYW1zLmgNCj4gPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmgNCj4gPiA+ID4gPiBAQCAtMzksNiArMzksNyBAQCBzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZTsNCj4gPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcGFyYW0oYm9v
bCwgbG9hZF9kZXRlY3RfdGVzdCwgZmFsc2UsIDA2MDApIFwNCj4gPiA+ID4gPiDCoMKgwqDCoMKg
wqDCoMKgcGFyYW0oYm9vbCwgZm9yY2VfcmVzZXRfbW9kZXNldF90ZXN0LCBmYWxzZSwgMDYwMCkg
XA0KPiA+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBwYXJhbShib29sLCBkaXNhYmxlX2Rpc3BsYXks
IGZhbHNlLCAwNDAwKSBcDQo+ID4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgcGFyYW0oYm9vbCwgdmVy
Ym9zZV9zdGF0ZV9jaGVja3MsIHRydWUsIDApIFwNCj4gPiA+ID4gDQo+ID4gPiA+IFdoeSBpcyB0
aGlzIG9uZSAwPyBXaHkgY2FuJ3Qgd2UgZXZlbiByZWFkIGl0Pw0KPiA+ID4gDQo+ID4gPiBJIGZv
dW5kIHRoaXMgY29tbWVudCBpbiBvbGRlciBjb21taXQgbWVzc2FnZSB3cml0dGVuIGJ5IEphbmkN
Cj4gPiA+IE5pa3VsYToNCj4gPiA+IA0KPiA+ID4gIjAgbW9kZSB3aWxsIGJ5cGFzcyBkZWJ1Z2Zz
IGNyZWF0aW9uLiBVc2UgaXQgZm9yDQo+ID4gPiB2ZXJib3NlX3N0YXRlX2NoZWNrcw0KPiA+ID4g
d2hpY2ggd2lsbCBuZWVkIHNwZWNpYWwgYXR0ZW50aW9uIGluIGZvbGxvdy11cCB3b3JrLiINCj4g
PiANCj4gPiBUaGlzIHNvdW5kcyBwcmV0dHkgb2RkLCB3aHkgd291bGRuJ3Qgd2Ugd2FudCBpdCB0
byBiZSBldmVuIHJlYWQ/DQo+IA0KPiBJICp0aGluayogSSByZW1lbWJlciB3aHkuDQo+IA0KPiBX
aGVuIEkgYWRkZWQgdGhlIGRldmljZSBwYXJhbWV0ZXJzLCBJOTE1X1NUQVRFX1dBUk4oKSwgdGhl
IG9ubHkgdXNlcg0KPiBvZg0KPiB2ZXJib3NlX3N0YXRlX2NoZWNrcywgZGlkIG5vdCBoYXZlIHRo
ZSBpOTE1IHBhcmFtZXRlciB5ZXQuIFNvIGl0DQo+IGNvdWxkDQo+IG5vdCBhY2Nlc3MgdGhlIGRl
dmljZSBwYXJhbWV0ZXIuDQo+IA0KPiBUaHVzIHRoZSB2ZXJib3NlX3N0YXRlX2NoZWNrcyAqbW9k
dWxlKiBwYXJhbWV0ZXIgaGFkIHRvIGhhdmUgMDYwMA0KPiBtb2RlLA0KPiBhbmQgbW9kaWZ5aW5n
IHRoYXQgcnVudGltZSBtZWFudCB0aGF0IHRoZSAqZGV2aWNlKiBwYXJhbWV0ZXIsIGV2ZW4gYXMN
Cj4gcmVhZC1vbmx5LCB3b3VsZCBoYXZlIGdvbmUgb3V0IG9mIHN5bmMgYW5kIHNob3duIGEgZGlm
ZmVyZW50IHZhbHVlLg0KPiANCj4gSSBvbmx5IGFkZGVkIHRoZSBpOTE1IHBhcmFtZXRlciB0byBJ
OTE1X1NUQVRFX1dBUk4oKSBsYXN0IE1heSwgYnV0DQo+IGNsZWFybHkgZGlkIG5vdCBmb2xsb3cg
dGhyb3VnaCB3aXRoIHRoZSBwYXJhbWV0ZXIgY2hhbmdlLg0KPiANCj4gRnJvbSBub3cgb24sIGl0
IHNob3VsZCB1c2UgdGhlIGRldmljZSBwYXJhbSBsaWtlIHRoZSByZXN0IG9mIHRoZQ0KPiBjb2Rl
LA0KPiBpdCBzaG91bGQgaGF2ZSBhIG11dGFibGUgZGVidWdmcyBmaWxlLCBhbmQgdGhlIG1vZHVs
ZSBwYXJhbWV0ZXINCj4gc2hvdWxkDQo+IGJlIDA0MDAuDQoNCk9rLCBJIHdpbGwgc3RpbGwgZG8g
dGhpcyBjaGFuZ2UgYW5kIHJlc2VuZC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+IA0K
PiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiANCj4gPiANCj4gPiBJbiBhbnkgY2FzZSwgaXQncyBu
b3QgcmVsYXRlZCB0byB0aGlzIHBhdGNoLCBzbzoNCj4gPiANCj4gPiBSZXZpZXdlZC1ieTogTHVj
YSBDb2VsaG8gPGx1Y2lhbm8uY29lbGhvQGludGVsLmNvbT4NCj4gPiANCj4gPiAtLQ0KPiA+IENo
ZWVycywNCj4gPiBMdWNhLg0KPiANCj4gLS0gDQo+IEphbmkgTmlrdWxhLCBJbnRlbA0KDQo=
