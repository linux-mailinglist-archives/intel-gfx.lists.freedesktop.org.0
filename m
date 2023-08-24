Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 582AF786D61
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 13:06:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBBF610E522;
	Thu, 24 Aug 2023 11:06:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE90510E520
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 11:06:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692875176; x=1724411176;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lUE/LTARiSZFjjm3GTf69d618iW/DgWaPWqqMN7I2gs=;
 b=NF8xlixiZmy3mWjwKb9BbYq3bkr+EHQndt3W9aynxLZ1NheX3hrL9S3h
 YKm+6s0n0Jo94KOE6vjwUXKe44wFraCKLNCzIeVhybGfGjwSo8dVGZvBY
 O32KUkX1LKIIJN3Z6QLAYmc7pbHlaXKtC/aZZS9AtXlVigAqpSNG3QzGs
 pyzeN7+lF2bIVGLrJI9d5BsWsSoKpKRHL8vQp8sCTjlfspnqxsuE/ojYo
 PrMTEglu39HItSFqOq51f1p47ECAcgYWmz8vJirShWQe9gXNoXcNvtAIj
 UJrPrKWS8lFsOCQ2DYprBtLFTbb8vEY//NeohEZnNg74+qk9uShdGQWrN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364584536"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364584536"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 04:06:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="880765022"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 24 Aug 2023 04:06:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:06:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 04:06:10 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 04:06:10 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 04:06:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O81Tg7mw/aF91eAnpIXGCvXkhqVNK6+FRONQWnd3wM9QgvhMDA3mF+wH+noLntjSdGdfdTwhdU7L/PBvmFG5BXqVnrxfrMZHmdwrqph6abJOQTenUGSOwDeGX3pjB/wQc8J1TrzsXzUXW7oM5ylxtQbIK4HUJ66ha526poVE6DMBOcn+AAicx8Qhk0GR/fFyeItTGYqlZnOHPXXf0DW3HXfCN0DC7Jue/k6JrqWePEx/IKCvARE5U8+R2jRNTMjQHb+obg5RhQao07b4E4glEVuK2BqeXZivY8HSQgzEuaNNFsLXtx4/MhTkzoqSE6vQgSgFavbNXpxxFfMIUCJKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lUE/LTARiSZFjjm3GTf69d618iW/DgWaPWqqMN7I2gs=;
 b=UG37QvekaYzDnCSV7xipJcyEZs5k0A2nZMV0UjjUCVPAIKR3+JlgoEV0/vpiJHmFsw01kSiISP3CKDEmJPk2i4O57thNis8Ni9Xt7YTEji5Rwrqq9BgXd9jXgUKWNPaW5KnVBrDtLC7Rpt5Sdio0phtyOBg28HgmSFKk7UQOFfKRsP6dTYSN71jXx5KZnY8GKdJpGdDyXZm+GT/si3IQiIQhaXksvHvdPgoLTS6LDLEKs0OMSSA0WAEbErxIPt/jccRnm4GKD72trHR7LN9FYZTBQygaMxV4wau67eTZqTcCvH50GtOxuFAElRUA+9P3Blg3SNcGF6fjmHwHKPjXwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by PH0PR11MB4821.namprd11.prod.outlook.com (2603:10b6:510:34::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.27; Thu, 24 Aug
 2023 11:06:07 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::9d00:cf05:efc7:246d%5]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 11:06:07 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
Thread-Index: AQHZu8Qri1RTNphTMkaHwnMUz2bkNa/sxIxQgAy53gA=
Date: Thu, 24 Aug 2023 11:06:06 +0000
Message-ID: <916fa2bbb6b3a8571a0dcf3c681b7a142c7a3141.camel@intel.com>
References: <20230721111121.369227-1-luciano.coelho@intel.com>
 <20230721111121.369227-4-luciano.coelho@intel.com>
 <SN7PR11MB67506A441EBC25AC9A772180E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67506A441EBC25AC9A772180E315A@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|PH0PR11MB4821:EE_
x-ms-office365-filtering-correlation-id: b59a9a1c-f28c-44fd-90bd-08dba4921d5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6UP2woEdQ2mnlt+v39AjLb28UkpY7P7yn/ztkYWazIxG2LI/pw51lVwcQ5y5CG+lsPQ2JG8L2vKEEBGTFVaKBPyYyaiz+vc+w1kRQevd3FUbVSH03lQUz94z0dLlwQjd+KHde2MKOwb2cDP+aEMg3OUR86hWsBSZpbqAE/DkatA1U9cgzD+Pi0F2Df5t9CYWgmXXhX2rvMHOPCmEevn39Ko62w0YlIUX0kkSRl4xJPqKX00gUsyRjlRcL6fV+0RvWDhIaDGoAafSKZ5xL8FLfC4hH24OkAAa8NFHEI3JU8xerrirUqJX1s/GwrWbg4MutpxgTAg4zAnaD0rTHfu/hQSLAPnCMnHCFKbUluyZttvPZFsHojZlNwe0U2+x7kwVyZ+y4dQWuSZItOeDVrzXBuz71N5RlCd6vREZaEelnddScQeHc+dwfzgc41ELmJwA7AKPonKcHUxxBMGHcDgsQg08PsmpBzb0avSpAAB8pd3b214jZdpjRcjAB9xAwjHN9zFEPOMrcm9m+5bsE37ngGCPMXP0w8GVb8WIVmE0Vl2nUMFmXB2XsQ0db+gV+41Df19Mo7lbjWno4bWibusQf1tCStO6GXrHgHTBuZu44Lk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(366004)(346002)(39860400002)(136003)(1800799009)(186009)(451199024)(2616005)(4326008)(8676002)(8936002)(83380400001)(5660300002)(107886003)(36756003)(26005)(71200400001)(38070700005)(38100700002)(82960400001)(122000001)(66946007)(66556008)(76116006)(66476007)(66446008)(64756008)(316002)(110136005)(91956017)(478600001)(966005)(41300700001)(2906002)(6512007)(6486002)(86362001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cmY2cS80STJ1dEZYTHUrZTNnNlJMYUR3M3JyL2NSblVLMFJ1NWVZamFKUkw2?=
 =?utf-8?B?eHQzL29oYXgwKzIrT3BNek1LZ1lhWDVLOFJib0N5VlVwaGxJNTVFMkVCTmgy?=
 =?utf-8?B?WGwwelJndnNYWTA5WXcvK0cxclFLRXRlNDhBZWFlSjRRT3hzV3FCM2hPdDEx?=
 =?utf-8?B?TjVMcDlOOFNNOFdTeUxhRDc3eXkybHlBRDltTHd6dDZ3dzM3MW5CZ3NGdWp2?=
 =?utf-8?B?QmFkdUEwSGZPeUtiNVhsbk1QM0s2TjZlcGlBOE5iK3ZoVFQxMm9EV1hTREtH?=
 =?utf-8?B?L0o1SlNQSGFtQlFrRW5mejlSNFpxTVZxeklFemdyL3VTT3ppdE80UktwbTZX?=
 =?utf-8?B?M2xDamt5blBTeGpOT1FWTjNQNFFaMlJEbUkza1Z0ZFpKeTJXQk1ycDFqaTFs?=
 =?utf-8?B?am1DSGpOR3drUU9MdTg1TUg3RHZEWDF4dWVac25oTGN2V3hhNE0vM2lpQ214?=
 =?utf-8?B?cmZyWEhwNVlUdFpPYXNteXhTQ1ViMkV5ei9tSFVLUW1KRi9iWVQvMm9aS0lB?=
 =?utf-8?B?ejVzSHZhQVF0ek1vQkJzQ2ZzMWlRckVPbHBzZWJCdVdFVmFsUkVCR3dPamZI?=
 =?utf-8?B?OHZJYmxNVTc2SkU5WVl0dDgzUjJzTiszM2t6YWZSYkxqZkhaVVlVaFdNcWwv?=
 =?utf-8?B?SlpiZEVSbmFWUENVakZuSTFrazhpZmRIN0N2ZHh2R3dRc0s5cmNjOXpEWmVC?=
 =?utf-8?B?VnhkQ1ZmMjBRK1VBbU9hM2xISnFpekEwVmFtZEJYR1B5R2NtWVE1OUdMcENh?=
 =?utf-8?B?aVdvK2ZsU3htRjBsSFVqLzU3L2pNMzcvU29PWnVKMVhKU09uanVIeGtkYUtI?=
 =?utf-8?B?aFozTlV3SzRvZm9ocEVudG1WTEVvTkE5T0NNSWRUNjU0bENETVVuVzNsYlRK?=
 =?utf-8?B?V0hWM0x4ZmN4QVJhMHZoeVhkeFR4bTNXWmVnZ1V4MVl3VHNPVjN5bXlxMUU1?=
 =?utf-8?B?Qk5mdVlKc2dGQ0F1N1pMbmpkS081MHc0OEtKbys2ODRneGkwbmU0ZWcyWTdV?=
 =?utf-8?B?YU1Ua1RYRjlHRE9DR2U0amJpVFVBR0d2eWtxS0F2dEh2RWFTUlJRYm5kbndi?=
 =?utf-8?B?d1lqZ0NldEVtWlRRM0FhZkhkdzNLbUpCZlZueHBnMUtEZXFLVExqcWlQODJL?=
 =?utf-8?B?N0YrSXR6bDF5R3F1dnhkdURVU3I1LzB2Sys0M3NnNGFZaVA2Qi9lQ1Joa0V0?=
 =?utf-8?B?WVRteXQ1RCtnWmh1Z1l2bXllVU1pMG4vbUVtZGd3eGFZY2pDdG9QNU9uYW1m?=
 =?utf-8?B?d3VxS2FlR0xWUVJvV2ZOTlZvd3EyMDViUHFNZlhwTjErWUd3TUxVaW5hbnlM?=
 =?utf-8?B?czV4N29OQi9oQzNwZmxEZE1UaDdnOWRnTTZwelplOGxsZkViQTB1R0FaNnM0?=
 =?utf-8?B?QkkrdHFtYmVzbmRDUi9BaUIxOHczUkFtRWl6d21WbDJ0Z0NlU09wQ0Rwa09L?=
 =?utf-8?B?MnlWUWhXcThXUkp2VE9vWTAvWG02Yk8yK25wTzV1NnlRTEpONFppMXZ1Z1Rn?=
 =?utf-8?B?UmtKeGo5Z0JrdUl6Umt4UCtzdjVFWk5WVFAwL0lSaG1MV0RrS0kzWnpWOFdP?=
 =?utf-8?B?RFhUOEpSOHp3R3M2L1BOMzNPUzRTZzdjQ2pnUUhmVWJIbUsxTDRRRTRhcDVq?=
 =?utf-8?B?VUZmRVhvWUdYUk9rOVNtdkI1Nmw2by9QeEsrNXQ0ZWIrdWJiR2svalFDejdY?=
 =?utf-8?B?U20rTHpkQVk2QnIyK2VQOWtSYUNlaWExWWdJTGhEUEpKck9qOVNRU1EvbG5m?=
 =?utf-8?B?M3o0QitrRnZtL1h4YXpIbFBoYVN2VkFtYkh1N2xhWUowdUpyWEt2WEh2WXJB?=
 =?utf-8?B?UDVUbEhjdUhqVWtscmFmdUl2dDFLNm9MTmkzUzFJUExwMmhFRkdkbmhsQnN3?=
 =?utf-8?B?UjRmOHRSZkJzanl2WklBSmFaTVRIbVlsVVFQcUZhWjV0ZVpNejFwOHZXMzlj?=
 =?utf-8?B?VDVkZWhTbW8wanJaVHN4V1loU1NuUjFhNEJtSTd0dHNVdmwxdlVvOVE1TFky?=
 =?utf-8?B?UHlLVFFJc1NpTS92aWtEcHVaRGRCdFZwbDQ0SGh3UnFvTFFHclI4ekdrSW93?=
 =?utf-8?B?WEJrTU5NVWJhWVM3bkpFVDFwc3oyMmRZaG5mekVWWjc1aEFYamFMaFFOY2dM?=
 =?utf-8?B?SkNNWU9sa1hmeWRuTFpZQXNrdzNWM2dzcnFjQmM2RUFFNEcxTFk0UWZvenhD?=
 =?utf-8?B?UVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E285482E1AA8D545B7E6A8FB384BB50F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b59a9a1c-f28c-44fd-90bd-08dba4921d5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 11:06:06.7546 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C2y1JjfI+iEWa50X9s4PUtdQk8fZddPf5l+ST5qSt1qCtU99H5OkGeR98sBAqs2AJcSCky5hHEtYTTnF2byHf6Jqtf4Up3baRZnTBhZyOpU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4821
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/tc: move legacy code out of
 the main _max_lane_count() func
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTA4LTE2IGF0IDA4OjU0ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gPiBUaGlzIG1ha2VzIHRoZSBjb2RlIGEgYml0IG1vcmUgc3ltbWV0cmljIGFuZCByZWFkYWJs
ZSwgZXNwZWNpYWxseQ0KPiA+IHdoZW4gd2UNCj4gPiBzdGFydCBhZGRpbmcgbW9yZSBkaXNwbGF5
IHZlcnNpb24tc3BlY2lmaWMgYWx0ZXJuYXRpdmVzLg0KPiA+IA0KPiA+IFNpZ25lZC1vZmYtYnk6
IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmMgfCAzMiArKysrKysrKysrKysr
KystLS0tLS0NCj4gPiAtLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygr
KSwgMTMgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+ID4gaW5kZXggZGU4NDhiMzI5ZjRiLi40M2I4ZWViYTI2ZjggMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ID4gQEAg
LTMxMSwyMyArMzExLDEyIEBAIHN0YXRpYyBpbnQNCj4gPiBtdGxfdGNfcG9ydF9nZXRfbWF4X2xh
bmVfY291bnQoc3RydWN0DQo+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4gPiDC
oAl9DQo+ID4gwqB9DQo+ID4gDQo+ID4gLWludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFuZV9j
b3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ID4gKmRpZ19wb3J0KQ0KPiA+ICtzdGF0
aWMgaW50IGludGVsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdA0KPiA+IGludGVs
X2RpZ2l0YWxfcG9ydA0KPiA+ICsqZGlnX3BvcnQpDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGRy
bV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+ID5iYXNlLmJhc2Uu
ZGV2KTsNCj4gPiAtCXN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3Bv
cnQpOw0KPiA+IC0JZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHkoaTkxNSwgZGlnX3Bv
cnQtDQo+ID4gPmJhc2UucG9ydCk7DQo+ID4gwqAJaW50ZWxfd2FrZXJlZl90IHdha2VyZWY7DQo+
ID4gLQl1MzIgbGFuZV9tYXNrOw0KPiA+IC0NCj4gPiAtCWlmICghaW50ZWxfcGh5X2lzX3RjKGk5
MTUsIHBoeSkgfHwgdGMtPm1vZGUgIT0NCj4gPiBUQ19QT1JUX0RQX0FMVCkNCj4gPiAtCQlyZXR1
cm4gNDsNCj4gPiArCXUzMiBsYW5lX21hc2sgPSAwOw0KPiA+IA0KPiA+IC0JYXNzZXJ0X3RjX2Nv
bGRfYmxvY2tlZCh0Yyk7DQo+ID4gLQ0KPiA+IC0JaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0
KQ0KPiA+IC0JCXJldHVybiBtdGxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoZGlnX3BvcnQp
Ow0KPiA+IC0NCj4gPiAtCWxhbmVfbWFzayA9IDA7DQo+ID4gwqAJd2l0aF9pbnRlbF9kaXNwbGF5
X3Bvd2VyKGk5MTUsIFBPV0VSX0RPTUFJTl9ESVNQTEFZX0NPUkUsDQo+ID4gd2FrZXJlZikNCj4g
PiDCoAkJbGFuZV9tYXNrID0gaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrKGRpZ19wb3J0KTsN
Cj4gPiANCj4gPiBAQCAtMzQ4LDYgKzMzNywyMyBAQCBpbnQgaW50ZWxfdGNfcG9ydF9maWFfbWF4
X2xhbmVfY291bnQoc3RydWN0DQo+ID4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkNCj4g
PiDCoAl9DQo+ID4gwqB9DQo+ID4gDQo+ID4gK2ludCBpbnRlbF90Y19wb3J0X2ZpYV9tYXhfbGFu
ZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ID4gKypkaWdfcG9ydCkgew0KPiA+
ICsJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19pOTE1KGRpZ19wb3J0LQ0KPiA+
ID5iYXNlLmJhc2UuZGV2KTsNCj4gPiArCXN0cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3Rj
X3BvcnQoZGlnX3BvcnQpOw0KPiA+ICsJZW51bSBwaHkgcGh5ID0gaW50ZWxfcG9ydF90b19waHko
aTkxNSwgZGlnX3BvcnQtDQo+ID4gPmJhc2UucG9ydCk7DQo+ID4gKw0KPiA+ICsJaWYgKCFpbnRl
bF9waHlfaXNfdGMoaTkxNSwgcGh5KSB8fCB0Yy0+bW9kZSAhPQ0KPiA+IFRDX1BPUlRfRFBfQUxU
KQ0KPiA+ICsJCXJldHVybiA0Ow0KPiA+ICsNCj4gPiArCWFzc2VydF90Y19jb2xkX2Jsb2NrZWQo
dGMpOw0KPiA+ICsNCj4gPiArCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAxNCkNCj4gPiArCQly
ZXR1cm4gbXRsX3RjX3BvcnRfZ2V0X21heF9sYW5lX2NvdW50KGRpZ19wb3J0KTsNCj4gPiArDQo+
ID4gKwlyZXR1cm4gaW50ZWxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoZGlnX3BvcnQpOw0K
PiA+ICt9DQo+IA0KPiBMb29raW5nIGF0IHRoaXMgSSB0aGluayB3ZSBoYXZlIG1vcmUgc2NvcGUg
b2Ygb3B0aW1pemF0aW9uIGhlcmUgSQ0KPiB0aGluayB3ZSBjYW4gZ28gYWJvdXQgaXQgaW4gdGhl
IGZvbGxvd2luZyB3YXkNCj4gDQo+IGludGVsX3RjX3BvcnRfZmlhX21heF9sYW5lX2NvdW50DQo+
IGFscmVhZHkgY2FsbHMgDQo+IHdpdGhfaW50ZWxfZGlzcGxheV9wb3dlcihpOTE1LCBQT1dFUl9E
T01BSU5fRElTUExBWV9DT1JFLCB3YWtlcmVmKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGxhbmVfbWFzayA9IGludGVsX3RjX3BvcnRfZ2V0X2xhbmVfbWFzayhkaWdfcG9ydCk7
DQo+IA0KPiB3aGljaCB3ZSBhbHNvIGR1cGxpY2F0ZSBpbiAgbXRsX3RjX3BvcnRfZ2V0X3Bpbl9h
c3NpZ25tZW50X21hc2sNCj4gKG5vdyBtdGxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQpIGFu
ZCB0aGUgb25seSBkaWZmZXJlbmNlIGJldHdlZW4NCj4gdGhlbQ0KPiBJcyB0aGUgc3dpdGNoIGNh
c2Ugd2hhdCBpZiB3ZSBoYXZlIGEgZnVuY3Rpb24gb3IgcmVwdXJwb3NlIA0KPiBtdGxfdGNfcG9y
dF9nZXRfbWF4X2xhbmVfY291bnQgdG8gb25seSBoYXZlIHRoZSBzd2l0Y2ggY2FzZSBibG9jaw0K
PiB3aXRoIA0KPiBhc3NpZ25tZW50IHZhcmllZCBieSBkaXNwbGF5IHZlcnNpb24gYW5kIGNhbGwg
aXQgYWZ0ZXINCj4gaW50ZWxfdGNfcG9ydF9nZXRfbGFuZV9tYXNrDQo+IA0KPiBtYXliZSBhbHNv
IG1vdmUgdGhlIGxlZ2FjeSBzd2l0Y2ggY2FzZSBpbiBpdHMgb3duIGZ1bmN0aW9uPw0KDQpUaGlz
IHdvdWxkIGJlIGFub3RoZXIgb3B0aW9uLCBidXQgSSB0aGluayBpdCdzIG5pY2VyIHRvIGtlZXAg
dGhpbmdzDQp2ZXJ5IGlzb2xhdGVkIGZyb20gZWFjaCBvdGhlciBhbmQgdGhpcyB0aW55IGNvZGUg
ZHVwbGljYXRpb24gaXMgbm90IHRvbw0KYmFkLg0KDQpFc3BlY2lhbGx5IGJlY2F1c2UgbGF0ZXIs
IGFzIHlvdSBjYW4gc2VlIGluIG15IExOTCBwYXRjaCB0aGF0IEx1Y2FzDQpzZW50IG91dFsxXSB3
ZSBoYXZlIGFub3RoZXIgY29tYmluYXRpb24gaW4gYSBuZXcgZnVuY3Rpb24uICBTbyB3ZSBoYXZl
Og0KDQppbnRlbF90Y19wb3J0X2dldF9tYXhfbGFuZV9jb3VudCgpOw0KCWludGVsX3RjX3BvcnRf
Z2V0X2xhbmVfbWFzaygpOw0KCXN3aXRjaCB3aXRoIGxhbmVfbWFzazsNCg0KbWx0X3RjX3BvcnRf
Z2V0X2xhbmVfbWFzayhkaWdfcG9ydCk7DQoJaW50ZWxfdGNfcG9ydF9nZXRfcGluX2Fzc2lnbm1l
bnRfbWFzaygpOw0KCXN3aXRjaCB3aXRoIHBpbl9tYXNrOw0KDQpsbmxfdGNfcG9ydF9nZXRfbGFu
ZV9tYXNrKCk6DQoJaW50ZWxfdW5jb3JlX3JlYWQodW5jb3JlLCBUQ1NTX0RESV9TVEFUVVModGNf
cG9ydCkpOw0KCXN3aXRjaCB3aXRoIHBpbl9hc3NpZ25tZW50Ow0KDQoNClNvIG5vdyB3ZSBoYXZl
IDMgZGlmZmVyZW50IHdheXMgdG8gcmVhZCBhbmQgdHdvIGRpZmZlcmVudCB3YXlzIHRvIHBhcnNl
DQood2l0aCB0aGUgc3dpdGNoLWNhc2UpLiAgSSB0aGluayBpdCdzIGEgbG90IGNsZWFuZXIgdG8g
a2VlcCB0aGlzIGFsbA0Kc2VwYXJhdGUgdGhhbiB0byB0cnkgdG8gcmV1c2UgdGhlc2Ugc21hbGwg
cGllY2VzIG9mIGNvZGUsIHdoaWNoIHdvdWxkDQptYWtlIGl0IGEgYml0IGhhcmRlciB0byByZWFk
Lg0KDQpNYWtlcyBzZW5zZT8NCg0KWzFdIGh0dHBzOi8vcGF0Y2h3b3JrLmtlcm5lbC5vcmcvcHJv
amVjdC9pbnRlbC1nZngvcGF0Y2gvMjAyMzA4MjMxNzA3NDAuMTE4MDIxMi0yOC1sdWNhcy5kZW1h
cmNoaUBpbnRlbC5jb20vDQoNCi0tDQpDaGVlcnMsDQpMdWNhLg0K
