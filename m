Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 89C1083A54E
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jan 2024 10:25:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3DA10E98C;
	Wed, 24 Jan 2024 09:24:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0904E10E98C
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Jan 2024 09:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706088297; x=1737624297;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=Wclf/wQSuR6vGoLFlbKXeUiy09mBMcSShbE1zXwihck=;
 b=hCMLP/pLvsHA3a0PqTBbOX9IiLugWjVpP8Vw4i3GU7uOrJ6J2zO50kwd
 p53XAoAbJSh/eBazBNXTMCyGkGV2dZkKuQrpfc4vlWpwSh4v6m2NTowNy
 zz8OR5wBVu9L1TawVacDU6Zb27j3jgcb1ObX2NksoqY5dy8/V7gJplmiZ
 dGLvKfWPePXcm1OcGvkFO8CDf5ufs/RqUcJPaBiRxme4b+VDe07Pr1sQ3
 eUjc1AXtfWV2OJAVlZ+DCCAtMewWp/It+J1YJvppkC6/xYL2mW+Jk+6y7
 /SlEsH6CcwYXaNN4ayxYsf0uOl6Eok6jdFzSc/OHFEg7h0pKexCNALw5g Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10962"; a="392206997"
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; d="scan'208";a="392206997"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2024 01:24:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,216,1701158400"; 
   d="scan'208";a="1867815"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2024 01:24:56 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 01:24:54 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 24 Jan 2024 01:24:53 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 24 Jan 2024 01:24:53 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 24 Jan 2024 01:24:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kvGPutLnt5djv8uloEewdv8xn/j/gCUSjAl2RM+l82cnseAh9aPx1LHzE/tY0JY2Zzf4Uq8RON70xcEEtYB4RwYUXwGBZ5HTmG9hLxJ9ywNhRgifQkej3sw064QVHWLf1fte8nU8y7YxinK8sxchbfl5p8dG8EgJ1shuwFhhiJgnyBCITRqVPhz38TmB+GhreTwHclB4PHqNLQqwkBsmTCFdYUFmjy/YkUXKnHxlGS0PBHZ+PxhWVIQtsO6IQGQ+o2+wY74efmzzBP6rv+Y1Y1BvEwURItTKrS+DgWtUf0tNGWiKBPa9mPoiepeUtnZhpoiZJ2OvyUKolbze2gkAqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wclf/wQSuR6vGoLFlbKXeUiy09mBMcSShbE1zXwihck=;
 b=BCrSND1nzmpMv369wrrSlECByv0DkM4a62svuNU7uFGVB+cQ7bD1VhYBh3ivWvnZgnoHjSr09RpJYlAZQQX1ZvOGhEsdsVI1pBZ1rEsF3kP3bQh0/2WWGBCCz50UaqFnYpYFMKirCqG12+fLHsmqesjyJHbsKfnK7G/EPxjHZmcu6fPKPncIvJ7r8luCRNsdwwqm+qvpuAsVwFwtr1qU28fKbiNXzyeGvSPmaE+lsWuPDF4kA5fr0DlVYjl+PdVELh534ygaO1W5wTilQt1s/y2HcpNZQQIxdIY0nftFksIaESZ7R9F4mEC8IsLPQj4th2bs078EjcHANoYWqw8gSg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6428.namprd11.prod.outlook.com (2603:10b6:510:1f4::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.24; Wed, 24 Jan
 2024 09:24:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7228.022; Wed, 24 Jan 2024
 09:24:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Murthy, Arun R" <arun.r.murthy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/4] drm/i915/psr: Add alpm_parameters struct
Thread-Topic: [PATCH v2 2/4] drm/i915/psr: Add alpm_parameters struct
Thread-Index: AQHaP+Gji1iJ5T53uUKUgV7aavSVzrDozIkAgAACDoA=
Date: Wed, 24 Jan 2024 09:24:51 +0000
Message-ID: <f0bb822ce0752c8807867a15f62bff59b7359e55.camel@intel.com>
References: <20240105141504.2808991-1-jouni.hogander@intel.com>
 <20240105141504.2808991-3-jouni.hogander@intel.com>
 <IA0PR11MB73072CBB4727F093E9784B18BA7B2@IA0PR11MB7307.namprd11.prod.outlook.com>
In-Reply-To: <IA0PR11MB73072CBB4727F093E9784B18BA7B2@IA0PR11MB7307.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6428:EE_
x-ms-office365-filtering-correlation-id: 920633b4-8467-49bf-b582-08dc1cbe5139
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 96cZfOYpF/yMqI3d6YkZj1h5Fj0gZbtZwc6WKrkJql5ennQIMPDGiUaUjT5tg5DtctsgKBhaOx0Jpwaioq7ktW6oJwuz/beniTEiYvG1g8Z6O7h6oCGKj88Q2GafQqHt8Gyfmix8bL/IhGvm2wgPwaRF55BACI3lGo8KHYG4VYFk41fF2ibrK2qvlPUGPIKEtY/O8TCubaTiBY72dsipFH5HjhyHFR0symx/VTIzJ/w9+8Qwhfor/XQVw27zR+Y4nd+nPtzW12XprKDkcOoQC8Nsb1RTDZIPZWnv0OKUsu7/vIVTI8FnZbOvO3euQEgfVRruxJzEaYPyyPq7vcgRU5KMxbo8DwrpWuAbnbPBXRhJ1TXtX/bUSwa600OtTzbXybuSbINhq8fqVfwLRz5/cdA8GXCI/kp7E4Y2HkyM4g2vwNSJo/n0UXd0t/5uroyMrhCeNBXrHXTX8mzWnOlq3q+3QszwTsEiFNlcopS2Ohwzc/JT0rHMJ5D1iwyGAp9UBHKxvD9j/b2wofkDLJil3WXzYnIOlegWQUqlMvpUoGaNsjMxGj7xgLKajBqzfoiKjHF4vIvt2WtBH7s1tDSWh9bO2g5wFnxJkalmQh8eaHA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(396003)(366004)(376002)(346002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(83380400001)(41300700001)(66574015)(6512007)(26005)(2616005)(122000001)(38100700002)(8936002)(5660300002)(8676002)(2906002)(478600001)(6506007)(6486002)(53546011)(71200400001)(64756008)(66446008)(66476007)(66556008)(76116006)(66946007)(316002)(110136005)(91956017)(38070700009)(82960400001)(36756003)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bC8ybWRsQ3Bud3FKNTNqNGtMaFRDVktTWDd0Rk5Ib3JHUmdzbTZ6QlNrNnBF?=
 =?utf-8?B?R1hkT2NmQnduZExFTDVFMG1IZkM1bVh4UGxBOXdoS3Y0YzNoNzVhTkZUMUV3?=
 =?utf-8?B?dzc5UGxjU2J5OElkSUlCTHAva2RLRHNtdkJMMHJ2M0EvcGJJa0NMa2owMlpR?=
 =?utf-8?B?SktuK3F2K3NiY1VRSXRXK3hKZzhDQWZ4RFlSRDV5WlJOU3gvU3hMVHhLd0R0?=
 =?utf-8?B?dzFEckRvaXVYdjVTRGFJQTdxdjF0a2lCVTJLN3FZWFVNSVFlck1BdWE3NENq?=
 =?utf-8?B?RXo5bkpUdTkzZzlqajFRUFRkSXlVOTlPcmZrUUdlbE93cHRSM2YzNWtLSXYr?=
 =?utf-8?B?RVQ5NHhNSmNxUnp6RUJTSlJjV3lDOVpnK25jby9rVlZpS3VmZEowbVB2NzJk?=
 =?utf-8?B?WFk4QWcyV1pVVXViWnVmQnJmK3pZZzRFeGkyOERsaTFWY25zcUNaazEvSDlK?=
 =?utf-8?B?U01ESVMwSjJSZnpZckJyT0psZ1hOUzg3c2JMU25ESTVYUm9iWEtVcmVwZjNQ?=
 =?utf-8?B?bmUzWjhnNzFxVEdBZjBLQk5LZGtZSzFDR3phRjJONzZTNDNBMkxRSERuWXhX?=
 =?utf-8?B?dndSQnVTSGQxd1dkMklLQ1dGdDJDbkZvckZxbkhtdzZqT21ybjRybVFsalVU?=
 =?utf-8?B?akg5aXlUSk4xUVJVMFZWbkFLSzYzT3p2ZDRpaXFhUjhHUnFsMm1RZWNGY3NX?=
 =?utf-8?B?b1gxTVNteENjcE95Tjhia0c5ZWd6TTdycS8zU2dmMDVLWXJEMWZhdlplTmk2?=
 =?utf-8?B?a2lwVzdld1BGejJVQzRtS2Z0SUZGZW5HVlF1YThSVWhSWERubDcwZzNWelRo?=
 =?utf-8?B?MTFrbGlMejJnbm5MeUsvazRTcWRRa1BoZTR5cWxPdnVSMXJTQ3N6c3kyb3ZR?=
 =?utf-8?B?dDh0cEZCWnFNbXQvb29sZDFuWnJERXdaNW9UbXNqV3I1eldtNXM5VnQyNVM3?=
 =?utf-8?B?VmNhbXAxV0JjK0Q5R2lLR3c1eTl4U1Azd2ZkZW1NcWx3YVY5b1FnUlVsa0RW?=
 =?utf-8?B?bm4yT015TThSZGQ2TG1YdUUwMS90L3JzMUtEdERRUVZOMjFYZk5yUm94MmYr?=
 =?utf-8?B?MEM4enBkUVFpbnllUjNKS0NPZ2hTTGJZR2hTdFZCMXdDZ2J1dlNlZkFqcmp6?=
 =?utf-8?B?dWZVRHFPMHg3VTByRnVMNnREeHdxZzJHWGpGdkJQb3dIaEM4NWdUMHFqeXA1?=
 =?utf-8?B?b2pNK0FTR3AzWms2WFQ2dld1SWQwZElpYnI0NStzOXNqVFQ4WEJWVzRCSUpC?=
 =?utf-8?B?dFRCTDQ5bnhKNmVoaTZuWFNrT2ovYURWRnQ1QUljNmFtNDlXeFZKQTkvSEFQ?=
 =?utf-8?B?K05CRjMvUHB0VTNuVkpxWkdGeDI3a0VwN3JMdFNrYzRpNzc4c2J0L0JQYVBY?=
 =?utf-8?B?bTRCck9JOE05T0oxVW9OQ0ZFS3VMVVg4NHd4Vk9TRHVmakNkUjZwVGR6M1lJ?=
 =?utf-8?B?ckxEUkc2a0MxbStUNWlTNlRRZmR1S3VCbEttQzJNZGtuWDhyK0xHd1FMUlM3?=
 =?utf-8?B?bjBqR0NaSnB6ck1Eek4vTnBjeDFVWmlFOThRei9HVmR3MkwzOUs5S0t2bG1L?=
 =?utf-8?B?anJrOE5VU0QyNlR6MXAyY2QrNzQ3dHNsNndqV0cwdjV6VGJIUXR1amltN1gv?=
 =?utf-8?B?bnAzenYvZmZmZG9WMGpzMDIvOG1US3VWK0RhMTZ2NHhxYVM5VUFOdythZVJM?=
 =?utf-8?B?dU1MWmxTWkdTbTBkV1ZJRGJVWWtHMS9MUWwxSFBmRDhCekVRRnRlaE5JaGNw?=
 =?utf-8?B?VW5VUnQwR2pSSkJnbG1DOGxyb09pTHI5RExFWHQ0QStLdFJlU0NRNm0zNzRE?=
 =?utf-8?B?ME9kT3lsSFNjQi8xQkJWRHQxZE5HMS9hUHo0OVpMblBoNGlLditISmFKNCt4?=
 =?utf-8?B?YnZwWFR4eEp3MzVLMnFPQnpqaHp5M0NUQkxnRkpnZExxWkw4d0JJTjhYc3ox?=
 =?utf-8?B?QW1YckoxT1NRdWs1bzZVUGRjMU83WU1TMG1aVEtTcUx5L1AvZDYxYkd4ZnFK?=
 =?utf-8?B?VnNkNVpaYlh1c0ZYcW5HT0thSUc3QU5PNWtMVG5zYjQrRVNMU0VmWi8ySk9Q?=
 =?utf-8?B?N240NzQ2Z3UrOHB0K1AvRWFmL3dnb1h5RnVoTjFkMHkzU1hNTkpEY3VDNTNj?=
 =?utf-8?B?V1Y5QzhJVjlVSEMyRnlhL1crcFRFeXN1WXRjdVJNemZ2VCtYaERUZEpRMEV6?=
 =?utf-8?B?U3c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4501051065E2864AB216169F019E906A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 920633b4-8467-49bf-b582-08dc1cbe5139
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2024 09:24:51.1383 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b4osxXpqk7jqCgR1/2iGNGteUJsN/DXvnre9bHjfJjO8ynDu+p5NtMK9zGVpnXaS9nGALel1YeLnSrc+JBRf34xCyC2BTWAXE4l+0x70O5o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6428
X-OriginatorOrg: intel.com
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

T24gV2VkLCAyMDI0LTAxLTI0IGF0IDA5OjE3ICswMDAwLCBNdXJ0aHksIEFydW4gUiB3cm90ZToK
PiAKPiAKPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4gPiBGcm9tOiBJbnRlbC1nZngg
PGludGVsLWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmCj4gPiBP
ZiBKb3VuaQo+ID4gSMO2Z2FuZGVyCj4gPiBTZW50OiBGcmlkYXksIEphbnVhcnkgNSwgMjAyNCA3
OjQ1IFBNCj4gPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZwo+ID4gU3ViamVj
dDogW1BBVENIIHYyIDIvNF0gZHJtL2k5MTUvcHNyOiBBZGQgYWxwbV9wYXJhbWV0ZXJzIHN0cnVj
dAo+ID4gCj4gPiBBZGQgbmV3IGFscG1fcGFyYW1ldGVycyBzdHJ1Y3QgaW50byBpbnRlbF9wc3Ig
Zm9yIGFsbCBjYWxjdWxhdGVkCj4gPiBhbHBtCj4gPiBwYXJhbWV0ZXJzLgo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+
IC0tLQo+ID4gwqAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKg
wqAgfMKgIDggKysrKy0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmPCoMKgwqDCoMKgIHwgMjggKysrKysrKysrKy0tLS0tCj4gPiAtLS0tCj4gPiDCoDIgZmls
ZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMTUgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaAo+ID4gaW5kZXggYjliOWQ5ZjJiYzBiLi44ODlhOGIzNGI3YWMgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ID4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgK
PiA+IEBAIC0xNjc3LDYgKzE2NzcsMTEgQEAgc3RydWN0IGludGVsX3BwcyB7Cj4gPiDCoMKgwqDC
oMKgwqDCoMKgc3RydWN0IGVkcF9wb3dlcl9zZXEgYmlvc19wcHNfZGVsYXlzOwo+ID4gwqB9Owo+
ID4gCj4gPiArc3RydWN0IGFscG1fcGFyYW1ldGVycyB7Cj4gPiArwqDCoMKgwqDCoMKgwqB1OCBp
b193YWtlX2xpbmVzOwo+ID4gK8KgwqDCoMKgwqDCoMKgdTggZmFzdF93YWtlX2xpbmVzOwo+ID4g
K307Cj4gQXNzdW1lIHRoYXQgdGhpcyBpcyBiZWluZyB1c2VkIGluIFBTUiBhcyB3ZWxsIGFuZCBj
YW4gYmUgcmV0YWluZWQgaW4KPiBpbnRlbF9wc3Igc3RydWN0Lgo+IElmIGV4Y2x1c2l2ZWx5IHVz
ZWQgZm9yIGFscG0gdGhlbiBoYXZpbmcgaXQgaW4gYSBuZXcgYWxwbSBzdHJ1Y3QKPiB3b3VsZCBi
ZSBiZXR0ZXIuCgpBbW91bnQgb2YgdGhlc2UgcGFyYW1ldGVycyBhcmUgYWJvdXQgdG8gZ3JvdyB3
aXRoIEFVWGxlc3MgQUxQTS4gSSB3YXMKdGhpbmtpbmcgaGF2aW5nIG93biBzdHJ1Y3Qgd291bGQg
YmUgbW9yZSBjbGVhci4gUGxlYXNlIG5vdGUgdGhhdAphbHBtX3BhcmFtcyBpcyBzdGlsbCB1bmRl
ciBzdHJ1Y3QgaW50ZWxfcHNyLiBXaGF0IGRvIHlvdSB0aGluaz8KCkJSLAoKSm91bmkgSMO2Z2Fu
ZGVyCj4gCj4gVGhhbmtzIGFuZCBSZWdhcmRzLAo+IEFydW4gUiBNdXJ0aHkKPiAtLS0tLS0tLS0t
LS0tLS0tLS0tCj4gPiArCj4gPiDCoHN0cnVjdCBpbnRlbF9wc3Igewo+ID4gwqDCoMKgwqDCoMKg
wqDCoC8qIE11dGV4IGZvciBQU1Igc3RhdGUgb2YgdGhlIHRyYW5zY29kZXIgKi8KPiA+IMKgwqDC
oMKgwqDCoMKgwqBzdHJ1Y3QgbXV0ZXggbG9jazsKPiA+IEBAIC0xNzA2LDggKzE3MTEsNiBAQCBz
dHJ1Y3QgaW50ZWxfcHNyIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHBzcjJfc2VsX2ZldGNo
X2NmZl9lbmFibGVkOwo+ID4gwqDCoMKgwqDCoMKgwqDCoGJvb2wgcmVxX3BzcjJfc2RwX3ByaW9y
X3NjYW5saW5lOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IHNpbmtfc3luY19sYXRlbmN5Owo+ID4g
LcKgwqDCoMKgwqDCoMKgdTggaW9fd2FrZV9saW5lczsKPiA+IC3CoMKgwqDCoMKgwqDCoHU4IGZh
c3Rfd2FrZV9saW5lczsKPiA+IMKgwqDCoMKgwqDCoMKgwqBrdGltZV90IGxhc3RfZW50cnlfYXR0
ZW1wdDsKPiA+IMKgwqDCoMKgwqDCoMKgwqBrdGltZV90IGxhc3RfZXhpdDsKPiA+IMKgwqDCoMKg
wqDCoMKgwqBib29sIHNpbmtfbm90X3JlbGlhYmxlOwo+ID4gQEAgLTE3MjEsNiArMTcyNCw3IEBA
IHN0cnVjdCBpbnRlbF9wc3Igewo+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBkYzNjb19leGl0X2Rl
bGF5Owo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkZWxheWVkX3dvcmsgZGMzY29fd29yazsK
PiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBlbnRyeV9zZXR1cF9mcmFtZXM7Cj4gPiArwqDCoMKgwqDC
oMKgwqBzdHJ1Y3QgYWxwbV9wYXJhbWV0ZXJzIGFscG1fcGFyYW1zOwo+ID4gwqB9Owo+ID4gCj4g
PiDCoHN0cnVjdCBpbnRlbF9kcCB7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5jCj4gPiBpbmRleCA1NDEyMGI0NTk1OGIuLjE3MDllYmIzMTIxNSAxMDA2NDQK
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMKPiA+IEBAIC03NTks
OCArNzU5LDggQEAgc3RhdGljIHUzMiBpbnRlbF9wc3IyX2dldF90cF90aW1lKHN0cnVjdAo+ID4g
aW50ZWxfZHAKPiA+ICppbnRlbF9kcCkKPiA+IAo+ID4gwqBzdGF0aWMgaW50IHBzcjJfYmxvY2tf
Y291bnRfbGluZXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCnCoCB7Cj4gPiAtwqDCoMKgwqDC
oMKgwqByZXR1cm4gaW50ZWxfZHAtPnBzci5pb193YWtlX2xpbmVzIDwgOSAmJgo+ID4gLcKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IuZmFzdF93YWtlX2xpbmVzIDwg
OSA/IDggOiAxMjsKPiA+ICvCoMKgwqDCoMKgwqDCoHJldHVybiBpbnRlbF9kcC0+cHNyLmFscG1f
cGFyYW1zLmlvX3dha2VfbGluZXMgPCA5ICYmCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgaW50ZWxfZHAtPnBzci5hbHBtX3BhcmFtcy5mYXN0X3dha2VfbGluZXMgPCA5ID8gOCA6
Cj4gPiAxMjsKPiA+IMKgfQo+ID4gCj4gPiDCoHN0YXRpYyBpbnQgcHNyMl9ibG9ja19jb3VudChz
dHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKSBAQCAtNzk3LDYKPiA+ICs3OTcsNyBAQAo+ID4gc3Rh
dGljIHZvaWQgZGcyX2FjdGl2YXRlX3BhbmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwKcKgCj4gPiBzdGF0aWMgdm9pZAo+ID4gaHN3X2FjdGl2YXRlX3BzcjIoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCnCoCB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gPiArwqDCoMKgwqDCoMKg
wqBzdHJ1Y3QgYWxwbV9wYXJhbWV0ZXJzICphbHBtX3BhcmFtcyA9ICZpbnRlbF9kcC0KPiA+ID5w
c3IuYWxwbV9wYXJhbXM7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgZW51bSB0cmFuc2NvZGVyIGNwdV90
cmFuc2NvZGVyID0gaW50ZWxfZHAtPnBzci50cmFuc2NvZGVyOwo+ID4gwqDCoMKgwqDCoMKgwqDC
oHUzMiB2YWwgPSBFRFBfUFNSMl9FTkFCTEU7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgdTMyIHBzcl92
YWwgPSAwOwo+ID4gQEAgLTgzOCwxNyArODM5LDE3IEBAIHN0YXRpYyB2b2lkIGhzd19hY3RpdmF0
ZV9wc3IyKHN0cnVjdCBpbnRlbF9kcAo+ID4gKmludGVsX2RwKQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
aW50IHRtcDsKPiA+IAo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRtcCA9IG1h
cFtpbnRlbF9kcC0+cHNyLmlvX3dha2VfbGluZXMgLQo+ID4gVEdMX0VEUF9QU1IyX0lPX0JVRkZF
Ul9XQUtFX01JTl9MSU5FU107Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdG1w
ID0gbWFwW2FscG1fcGFyYW1zLT5pb193YWtlX2xpbmVzIC0KPiA+ICtUR0xfRURQX1BTUjJfSU9f
QlVGRkVSX1dBS0VfTUlOX0xJTkVTXTsKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgdmFsIHw9IFRHTF9FRFBfUFNSMl9JT19CVUZGRVJfV0FLRSh0bXAgKwo+ID4gVEdMX0VEUF9Q
U1IyX0lPX0JVRkZFUl9XQUtFX01JTl9MSU5FUyk7Cj4gPiAKPiA+IC3CoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqB0bXAgPSBtYXBbaW50ZWxfZHAtPnBzci5mYXN0X3dha2VfbGluZXMgLQo+
ID4gVEdMX0VEUF9QU1IyX0ZBU1RfV0FLRV9NSU5fTElORVNdOwo+ID4gK8KgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoHRtcCA9IG1hcFthbHBtX3BhcmFtcy0+ZmFzdF93YWtlX2xpbmVzIC0K
PiA+ICtUR0xfRURQX1BTUjJfRkFTVF9XQUtFX01JTl9MSU5FU107Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBUR0xfRURQX1BTUjJfRkFTVF9XQUtFKHRtcCArCj4g
PiBUR0xfRURQX1BTUjJfRkFTVF9XQUtFX01JTl9MSU5FUyk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKg
fSBlbHNlIGlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpIHsKPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gVEdMX0VEUF9QU1IyX0lPX0JVRkZFUl9XQUtFKGlu
dGVsX2RwLQo+ID4gPiBwc3IuaW9fd2FrZV9saW5lcyk7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgdmFsIHw9IFRHTF9FRFBfUFNSMl9GQVNUX1dBS0UoaW50ZWxfZHAtCj4gPiA+
IHBzci5mYXN0X3dha2VfbGluZXMpOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oHZhbCB8PSBUR0xfRURQX1BTUjJfSU9fQlVGRkVSX1dBS0UoYWxwbV9wYXJhbXMtCj4gPiA+IGlv
X3dha2VfbGluZXMpOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHZhbCB8PSBU
R0xfRURQX1BTUjJfRkFTVF9XQUtFKGFscG1fcGFyYW1zLQo+ID4gPiBmYXN0X3dha2VfbGluZXMp
Owo+ID4gwqDCoMKgwqDCoMKgwqDCoH0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDkpIHsKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gRURQX1BTUjJf
SU9fQlVGRkVSX1dBS0UoaW50ZWxfZHAtCj4gPiA+IHBzci5pb193YWtlX2xpbmVzKTsKPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB2YWwgfD0gRURQX1BTUjJfRkFTVF9XQUtFKGlu
dGVsX2RwLQo+ID4gPnBzci5mYXN0X3dha2VfbGluZXMpOwo+ID4gK8KgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoHZhbCB8PSBFRFBfUFNSMl9JT19CVUZGRVJfV0FLRShhbHBtX3BhcmFtcy0K
PiA+ID4gaW9fd2FrZV9saW5lcyk7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
dmFsIHw9IEVEUF9QU1IyX0ZBU1RfV0FLRShhbHBtX3BhcmFtcy0KPiA+ID5mYXN0X3dha2VfbGlu
ZXMpOwo+ID4gwqDCoMKgwqDCoMKgwqDCoH0KPiA+IAo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChp
bnRlbF9kcC0+cHNyLnJlcV9wc3IyX3NkcF9wcmlvcl9zY2FubGluZSkKPiA+IEBAIC0xMDk4LDEw
ICsxMDk5LDExIEBAIHN0YXRpYyBib29sCj4gPiBfY29tcHV0ZV9wc3IyX3NkcF9wcmlvcl9zY2Fu
bGluZV9pbmRpY2F0aW9uKHN0cnVjdCBpbnRlbF9kcAo+ID4gKmludGVsX2QKPiA+IMKgwqDCoMKg
wqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiA+IMKgfQo+ID4gCj4gPiAtc3RhdGljIGJvb2wgX2NvbXB1
dGVfcHNyMl93YWtlX3RpbWVzKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gPiAtwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ID4gKmNydGNfc3RhdGUpCj4gPiArc3Rh
dGljIGJvb2wgX2NvbXB1dGVfYWxwbV9wYXJhbXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwK
PiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQo+ID4gKmNydGNfc3RhdGUpCj4gPiDC
oHsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IGRw
X3RvX2k5MTUoaW50ZWxfZHApOwo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGFscG1fcGFyYW1l
dGVycyAqYWxwbV9wYXJhbXMgPSAmaW50ZWxfZHAtCj4gPiA+cHNyLmFscG1fcGFyYW1zOwo+ID4g
wqDCoMKgwqDCoMKgwqDCoGludCBpb193YWtlX2xpbmVzLCBpb193YWtlX3RpbWUsIGZhc3Rfd2Fr
ZV9saW5lcywKPiA+IGZhc3Rfd2FrZV90aW1lOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHU4IG1heF93
YWtlX2xpbmVzOwo+ID4gCj4gPiBAQCAtMTEzMiw4ICsxMTM0LDggQEAgc3RhdGljIGJvb2wgX2Nv
bXB1dGVfcHNyMl93YWtlX3RpbWVzKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmludGVsX2RwLAo+ID4g
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpb193YWtlX2xpbmVzID0gZmFzdF93YWtl
X2xpbmVzID0gbWF4X3dha2VfbGluZXM7Cj4gPiAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKiBBY2Nv
cmRpbmcgdG8gQnNwZWMgbG93ZXIgbGltaXQgc2hvdWxkIGJlIHNldCBhcyA3IGxpbmVzLgo+ID4g
Ki8KPiA+IC3CoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IuaW9fd2FrZV9saW5lcyA9IG1heChp
b193YWtlX2xpbmVzLCA3KTsKPiA+IC3CoMKgwqDCoMKgwqDCoGludGVsX2RwLT5wc3IuZmFzdF93
YWtlX2xpbmVzID0gbWF4KGZhc3Rfd2FrZV9saW5lcywgNyk7Cj4gPiArwqDCoMKgwqDCoMKgwqBh
bHBtX3BhcmFtcy0+aW9fd2FrZV9saW5lcyA9IG1heChpb193YWtlX2xpbmVzLCA3KTsKPiA+ICvC
oMKgwqDCoMKgwqDCoGFscG1fcGFyYW1zLT5mYXN0X3dha2VfbGluZXMgPSBtYXgoZmFzdF93YWtl
X2xpbmVzLCA3KTsKPiA+IAo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiB0cnVlOwo+ID4gwqB9
Cj4gPiBAQCAtMTI2NSw3ICsxMjY3LDcgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdf
dmFsaWQoc3RydWN0Cj4gPiBpbnRlbF9kcAo+ID4gKmludGVsX2RwLAo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgfQo+
ID4gCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoIV9jb21wdXRlX3BzcjJfd2FrZV90aW1lcyhpbnRl
bF9kcCwgY3J0Y19zdGF0ZSkpIHsKPiA+ICvCoMKgwqDCoMKgwqDCoGlmICghX2NvbXB1dGVfYWxw
bV9wYXJhbXMoaW50ZWxfZHAsIGNydGNfc3RhdGUpKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoGRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLAo+ID4gwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJQU1IyIG5vdCBlbmFi
bGVkLCBVbmFibGUgdG8gdXNlIGxvbmcKPiA+IGVub3VnaCB3YWtlCj4gPiB0aW1lc1xuIik7Cj4g
PiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsKPiA+IC0tCj4g
PiAyLjM0LjEKPiAKCg==
