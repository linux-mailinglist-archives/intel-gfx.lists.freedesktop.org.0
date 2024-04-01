Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D6D893A1B
	for <lists+intel-gfx@lfdr.de>; Mon,  1 Apr 2024 12:17:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EF6F10EF2F;
	Mon,  1 Apr 2024 10:17:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="InARMThY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7831010EF2F
 for <intel-gfx@lists.freedesktop.org>; Mon,  1 Apr 2024 10:17:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711966667; x=1743502667;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=q2IccBO8YAFEfLuIEccp8jA+NyP4DhG5kN6Yx8RtUeI=;
 b=InARMThY5P1J87dE4QtM/QmMNYBItKA42mK0bY5xqRMnmnIC7ZboAvJU
 bxoLtPgVKd/lTfAF1CY+iFrPusCvdzkpI73lD2JFXpBumzGiYoOA745p1
 yTOJ88Me0CK562XrfDu70d90bnCrxAVtvvBxcQvM7fXzfcAhoUf3R4FG9
 AUokFPPe/SgeTH9LK/Fj2jKaGWrDVBn/qEcqxwVo8mT+gvQPZ4nMgrH+x
 B8+jX6hHUKcKT4vogBU7CJxX3icMgSzaCRbcC9Q+Wn7sLe+X3glQJ/6Zh
 F9ovjawvFs8U0XxBa9ksqfl9qXBBIYV6+q1XJUSlrdEs99iUFsjCDbgeE w==;
X-CSE-ConnectionGUID: zd7EFYY2TIeMk9eg8ka2sg==
X-CSE-MsgGUID: vYySqgW5TCaslL3JqwptQw==
X-IronPort-AV: E=McAfee;i="6600,9927,11030"; a="7215535"
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; 
   d="scan'208";a="7215535"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2024 03:17:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,171,1708416000"; d="scan'208";a="17747388"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Apr 2024 03:17:46 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 1 Apr 2024 03:17:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 1 Apr 2024 03:17:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 1 Apr 2024 03:17:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=htrQSfTAUgOxdmzKYK+pmulkNlDgrQC0ETTiR0dyJFRddYEmx+4SlTVTBfdRRZtXw/HQF58Nx1VMUD6DVwPXYe4pUXUOynfhKa9Sykr/2bHnhSBvCp2L+xOAzIaEsIYyMKWuSuHBj8dMxox4it2a3jbbdFx31JbRWHBtTO2UiLrDB3ro+EuvO/EcYMWaNi8KZQ7ZvGYRZaV/81mvuXblUbc9IPZHI+N/Ozo9a0Mxo6zzDVPGnET/KFojnoCV/Mwan+vJd4Wr/hv6S0brbTbXSP4gJgeG4DRHUjKc3mwo+gaEU40TeuZP6AfbjY4ZL3dulJszsld5n42JAi40pxeozw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q2IccBO8YAFEfLuIEccp8jA+NyP4DhG5kN6Yx8RtUeI=;
 b=gvquh/nwNBCK8cWXjH+7Ym14gF2CkcPlFdbBp5nGPvmrR2MMbA6njx+hp/6ia0pV+nY3FknHUtzltpAa1gj/J/wHHbq+plh3pvzXdIL2N1MODBIZHUQJPE5dn2vSSBKvIU1Og5u06WJr/skWCZ18KMzhu99fY4RVuHQcvN0iM7FVHLlvQNHmSGQhhxo6is4h8PECIvXXjTJ0vlumODXN1xUoBnuE6jAOHxZu+vN3yb5VXRXlJaXZ0vCp533k0c+Hm7k93YcdC+0Vqkaah89Xk3ah7Vc9AEhtmEBqtzqmtloGJ7NHCZ7P+yXa8/uMt+uvRBiFpSdf+31KxDYMB8OOxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS0PR11MB7216.namprd11.prod.outlook.com (2603:10b6:8:11c::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Mon, 1 Apr
 2024 10:17:44 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7452.019; Mon, 1 Apr 2024
 10:17:44 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 16/22] drm/i915: Extract
 intel_ddi_post_disable_hdmi_or_sst()
Thread-Topic: [PATCH 16/22] drm/i915: Extract
 intel_ddi_post_disable_hdmi_or_sst()
Thread-Index: AQHagXZiw6WYQszCWUqZ1bP96R21drFTOBww
Date: Mon, 1 Apr 2024 10:17:44 +0000
Message-ID: <IA0PR11MB7307804254E0865D91274882BA3F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-17-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-17-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|DS0PR11MB7216:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V1wAR1m4KV0CbtsDKFw1Hsn8widF0zo+DZWlo2YxQExXRCw0llIDhOF0OT+HKEgsrQR74b1pIfd35/1Tfv2/4L4XCm4/5SqFU7ADEHwMRcEwIyROPjZil/o7c6MHUBzKz1vmq5bGaJp4tgP7CKRj5dWJ92Xvnav5vkDmDytWFd1eX8jJso26c/lGJ6mgL8Ftrzrf2Fslg+eFPzuRph1x/YoJQ1WEu8ldCR5IU/4R/0hwYaA9NeFU5iaHJeFdy3rm3XuIr79WhzLj8NnLUEo6K6qSYsJ27H6lrH6G9Z4suNrlI55hFjjtctHEz8Pe9XCmJTVLdgwkMl5DRQZ5XNavG555bPzhDGUGmrYpKTu17otYRZV3QRPUQtDJX7h2eBtYCemRMOpPpjHrb4h20QzVyBmM2hn/YSRle48h9qo1qb55C6pLdvCpa5+QVcq7uuNfXVueJSsC5t3bgzstd0P99Ms7X3S8sGYkyWq7jWAMyUh5Xx0ao0FgvKtZCdh91Ee3o3KPsAdGXswcRQXnzcLbNLaWo1zMt9Kg+MUQ+1vNyPR93NkH8wJ7lfNcDgGkp/24bGnDiYHtbK3y50giSGXmGPI1Fi+X2/bRHWrknSQygp550VBES2/4t8TbyihAfOfHkHWwnRgV5hD2MQV53Ga0orhbWUK1u3DrMlU74d/Jzis=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZVhXZHNiM203YWI1eFBwV01BNWpXQXdURSsrWVFWVFZ0RGtIUTlLaEtxay9S?=
 =?utf-8?B?NUt5dWlxQzJpQWZOVVRRd0wwcUZ5OWxXbU1EQk5XOHdMQ0RtY3dsRzErbDVZ?=
 =?utf-8?B?OXFraVlpZVVXcXpjRUMxM1B2akRNN2lpY3pmOHh4WnRkdkc3NWM3Vks4S1Bj?=
 =?utf-8?B?QnpNVVhncmlyOGpmdnNGcld4dnk2Q1ZHalhya1hwS29ZNkdDMWZ0eTdDMW1O?=
 =?utf-8?B?VHZYbi8wQzQ3T25mdzNnL0xNa2VSU1ZWaTFoNXZ0NFRsYzNBOUFqeG9KaHpy?=
 =?utf-8?B?b1JKQ0FmNWwzNC9ZK2NvUlphVU5ialhBNWFieEo5UWxsSW5LN3ZRRkJnWTdG?=
 =?utf-8?B?bUJIaGttMUUvbUNLL014MmpVUFdIVndkSUtHREp6ME5ObkVTZWVLcFhXdFRz?=
 =?utf-8?B?dTRUMDBLNjcxYS94K0FWWkVwalUwbVNoUnlhQ1BxUURMZmFWWVhzK2l6ZkVv?=
 =?utf-8?B?QmM3RE13REVNbW95ZFZsU252NVlSQkNMU2Y5Z2Vtb3lGOEZQb2lmWW5xUFNG?=
 =?utf-8?B?Mm5OMXR3YWIyMlNSKzBVblBmRWJWblFuM1FPVC9UeitHK09GTWF6R2s1ZG5n?=
 =?utf-8?B?WmJudlQ2Z0JZVCtydHk2MElucmhIejkwK0xsSDh3UGJXSTN3ZEwwNnBFdGY2?=
 =?utf-8?B?MUdObGl3aDNqN0l4VGdDbk1INXZtSnV1enZmcXF1bVRaUFV0YmR0QVRWNTdj?=
 =?utf-8?B?SkplKzhHeXhacFlQWVdybXhQV0RDTFVmQW9kdzMwalJneUZhTnVSTGFTRTRm?=
 =?utf-8?B?Um41VHdDTUduNjZtUkRBSU5Jb1ZCcSt2YjhiYk9oRjBjYU9PMWs2UEFwUnRY?=
 =?utf-8?B?Z2lZTVh1Y3g0bUZRQjNzb1B6ZHJOR2x4QWtFZ2o2cEVTVjRSd1Q0L1N4TUxE?=
 =?utf-8?B?S2VBWGFkVFZHQU5ZTTBLOTA5T3o3T1JDL2JTUHhsQUcvMWY3U29lbDdMTXZq?=
 =?utf-8?B?T2pvS1Q3ZDhnMkkwY3RHOVlYaDJvTElXRmFocDBLaGhPcGU1QzQwL2FGZUl0?=
 =?utf-8?B?UEZyS2JWR3A2bnB3RlBoa09lSWE4MkRKZnV1Qml3djBoM3ZZQmF6cm5VTDc5?=
 =?utf-8?B?OWpRaXNjeitoMy81QVNtaXFVSlZvbm9EZy85djlWQlNza3B2Qk1PKzh2ZXFh?=
 =?utf-8?B?NWFkZ0NXeHVGd3JtcDFvU0lXV0ljQU1TUitzTXlGN1ZXSGZwb2krRWIxVGt3?=
 =?utf-8?B?M3p4WFZsQS9reWtSeXJlS21nRStVbjRMd1VseXdSZE5CU21jeENGb05ZaFRR?=
 =?utf-8?B?SlR5bUtrRGo4bUJVNXlXakUzdEx1SnhybkpGMi9oZ1c1WWhtMCt2UW8yZ05L?=
 =?utf-8?B?TWxxQWRIMUtEdFAvYWI5N0F2WUljZGViUFgyUERNM0NaYlBTamxYcGs3VXhP?=
 =?utf-8?B?cnUydDYzcDVWZlFhb1prbTdPM2ZucHpiQWdLakRZK0x3TXB4SG1TdnpkTVgv?=
 =?utf-8?B?S09nTkNaZklXYmtrN1FTNWo2LzNTa2ozaWJXeWJ2aFljZ0h6dVg3RVkwK3Vr?=
 =?utf-8?B?b1A4bFpRV1JLSzY2NkhTUGVENmtyQyt2a2ZFelFPcElMRmZxTjNjSHlGUDND?=
 =?utf-8?B?TDZ6QWNyTE51WUJkOTNBTStsNHNrZ0liMm83UEl2ZGR0WXVubzVySHFLNlZI?=
 =?utf-8?B?YlVoNUFyWGVKaTc4YS9GaEJaak1tRW1OT3NSZFlKQytwc0ZVOE5zWWh3ODV0?=
 =?utf-8?B?WWp1SXRiMVlGWVBDNFowdTBid3ZiaERXeXQzbWRFZ2NxSndrT2YrS1FnTnZE?=
 =?utf-8?B?L3NSQi84VEdWRXBJN0VvRitiTGxZaTVETlJhUGhNS1Jkd3NrRDY5Ykc1OVFj?=
 =?utf-8?B?UnVtNnYzbTAzQ29CelFIV2tYS3ZGNGI1d3VFMXpDSUxDdGR0NVlvNGtld0hE?=
 =?utf-8?B?R0MyTHUydnROc2NMTWJ5ODdzdE5LNVRyWXI1Y3o2LzlwNG8rYXBSVklSRExY?=
 =?utf-8?B?OEdsSWhNY2VYbU5oaS9VZVRocXhxTzIrWkZCUjBSNk1BMXIyU1pyOFZqQVJC?=
 =?utf-8?B?SUprb3JMVmlMTXFZRW1KZU5rayt1dXBQanVDUUVYcjJ2RkJ3SzJLWEhaWGll?=
 =?utf-8?B?SndqVDBnaHUwTHZwQUZkSG1wdTUyU3BIQ3lyeFk1RE5WZzVDZFU0eEh5NWJL?=
 =?utf-8?B?SGZaSU1tRFNrZnVoSTFrLzIxaC9HQkpqZEpoTDI1bHpzaTRXc09CcFBCTWpx?=
 =?utf-8?Q?6eP/Nwf+YgSZqjzgb/Oi+zIFCVIcedNldgJuWX9PrZ1+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b676ac3-994b-47db-3a8a-08dc5234f896
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2024 10:17:44.1950 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t2Q6MJxsd6LjNKjGMReEOGagxAcKl9HMRpvKRT5jPlrFtM146UXCerNxKBzTfL1lYtUzSJ46TMTa/JRhiz/qWA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7216
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogRnJpZGF5LCBNYXJjaCAyOSwgMjAyNCA2OjQzIEFNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAxNi8yMl0gZHJt
L2k5MTU6IEV4dHJhY3QgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9oZG1pX29yX3NzdCgpDQo+IA0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gRXh0cmFjdCB0aGUgIm5vdC1NU1QiIHN0dWZmIGZyb20gaW50ZWxfZGRpX3Bvc3RfZGlz
YWJsZSgpIHNvIHRoYXQgdGhlIHdob2xlDQo+IHRoaW5nIGlzbid0IHNvIGNsdXR0ZXJlZC4NCj4g
DQo+IFRoZSBiaWdqb2luZXIgc2xhdmUgaGFuZGxpbmcgd2FzIG91dHNpZGUgb2YgdGhlICFNU1Qg
Y2hlY2ssIGJ1dCBpdCByZWFsbHkgc2hvdWxkDQo+IGhhdmUgYmVlbiBpbnNpZGUgaXQgYXMgaXRz
IHRoZSBjb3VudGVycGFydCB0byB0aGUgbWFzdGVyIGhhbmRsaW5nIGluc2lkZSB0aGUNCj4gY2hl
Y2suIFNvIHdlIHB1bGwgdGhhdCBpbiBhcyB3ZWxsLiBUaGVyZSBpcyBubyBmdW5jdGlvbmFsIGNo
YW5nZSBoZXJlIGFzIHdlIGRvbid0DQo+IGN1cnJlbnRseSBzdXBwb3J0IGJpZ2pvaW5lcitNU1Qg
YW55d2F5Lg0KPiANCj4gdjI6IFJlYmFzZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3ly
asOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NClJldmlld2VkLWJ5OiBBcnVu
IFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCg0KVGhhbmtzIGFuZCBSZWdhcmRz
LA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLQ0KDQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyB8IDUyICsrKysrKysrKysrLS0tLS0t
LS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKyksIDI4IGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGRpLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+
IGluZGV4IDI0YTliZTJhMjE3Zi4uMTEzMGJmYjczNjNjIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGRpLmMNCj4gQEAgLTMwOTIsMzkgKzMwOTIsMzUgQEAgc3Rh
dGljIHZvaWQgaW50ZWxfZGRpX3Bvc3RfZGlzYWJsZV9oZG1pKHN0cnVjdA0KPiBpbnRlbF9hdG9t
aWNfc3RhdGUgKnN0YXRlLA0KPiAgCWludGVsX2RwX2R1YWxfbW9kZV9zZXRfdG1kc19vdXRwdXQo
aW50ZWxfaGRtaSwgZmFsc2UpOyAgfQ0KPiANCj4gK3N0YXRpYyB2b2lkIGludGVsX2RkaV9wb3N0
X2Rpc2FibGVfaGRtaV9vcl9zc3Qoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZQ0KPiAqc3RhdGUs
DQo+ICsJCQkJCSAgICAgICBzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gKwkJCQkJ
ICAgICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpvbGRfY3J0Y19zdGF0ZSwN
Cj4gKwkJCQkJICAgICAgIGNvbnN0IHN0cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpvbGRf
Y29ubl9zdGF0ZSkgew0KPiArCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoZW5jb2Rlci0+YmFzZS5kZXYpOw0KPiArDQo+ICsJaW50ZWxfY3J0Y192Ymxhbmtfb2Zm
KG9sZF9jcnRjX3N0YXRlKTsNCj4gKw0KPiArCWludGVsX2Rpc2FibGVfdHJhbnNjb2RlcihvbGRf
Y3J0Y19zdGF0ZSk7DQo+ICsNCj4gKwlpbnRlbF9kZGlfZGlzYWJsZV90cmFuc2NvZGVyX2Z1bmMo
b2xkX2NydGNfc3RhdGUpOw0KPiArDQo+ICsJaW50ZWxfZHNjX2Rpc2FibGUob2xkX2NydGNfc3Rh
dGUpOw0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRldl9wcml2KSA+PSA5KQ0KPiArCQlza2xf
c2NhbGVyX2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOw0KPiArCWVsc2UNCj4gKwkJaWxrX3BmaXRf
ZGlzYWJsZShvbGRfY3J0Y19zdGF0ZSk7DQo+ICt9DQo+ICsNCj4gIHN0YXRpYyB2b2lkIGludGVs
X2RkaV9wb3N0X2Rpc2FibGUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJ
CQkJICAgc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ICAJCQkJICAgY29uc3Qgc3Ry
dWN0IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLA0KPiAgCQkJCSAgIGNvbnN0IHN0
cnVjdCBkcm1fY29ubmVjdG9yX3N0YXRlDQo+ICpvbGRfY29ubl9zdGF0ZSkgIHsNCj4gLQlzdHJ1
Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGVuY29kZXItPmJhc2UuZGV2
KTsNCj4gLQlzdHJ1Y3QgaW50ZWxfY3J0YyAqc2xhdmVfY3J0YzsNCj4gLQ0KPiAtCWlmICghaW50
ZWxfY3J0Y19oYXNfdHlwZShvbGRfY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RQX01TVCkpIHsN
Cj4gLQkJaW50ZWxfY3J0Y192Ymxhbmtfb2ZmKG9sZF9jcnRjX3N0YXRlKTsNCj4gLQ0KPiAtCQlp
bnRlbF9kaXNhYmxlX3RyYW5zY29kZXIob2xkX2NydGNfc3RhdGUpOw0KPiAtDQo+IC0JCWludGVs
X2RkaV9kaXNhYmxlX3RyYW5zY29kZXJfZnVuYyhvbGRfY3J0Y19zdGF0ZSk7DQo+IC0NCj4gLQkJ
aW50ZWxfZHNjX2Rpc2FibGUob2xkX2NydGNfc3RhdGUpOw0KPiAtDQo+IC0JCWlmIChESVNQTEFZ
X1ZFUihkZXZfcHJpdikgPj0gOSkNCj4gLQkJCXNrbF9zY2FsZXJfZGlzYWJsZShvbGRfY3J0Y19z
dGF0ZSk7DQo+IC0JCWVsc2UNCj4gLQkJCWlsa19wZml0X2Rpc2FibGUob2xkX2NydGNfc3RhdGUp
Ow0KPiAtCX0NCj4gLQ0KPiAtCWZvcl9lYWNoX2ludGVsX2NydGNfaW5fcGlwZV9tYXNrKCZkZXZf
cHJpdi0+ZHJtLCBzbGF2ZV9jcnRjLA0KPiAtDQo+IGludGVsX2NydGNfYmlnam9pbmVyX3NsYXZl
X3BpcGVzKG9sZF9jcnRjX3N0YXRlKSkgew0KPiAtCQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19z
dGF0ZSAqb2xkX3NsYXZlX2NydGNfc3RhdGUgPQ0KPiAtCQkJaW50ZWxfYXRvbWljX2dldF9vbGRf
Y3J0Y19zdGF0ZShzdGF0ZSwgc2xhdmVfY3J0Yyk7DQo+IC0NCj4gLQkJaW50ZWxfY3J0Y192Ymxh
bmtfb2ZmKG9sZF9zbGF2ZV9jcnRjX3N0YXRlKTsNCj4gLQ0KPiAtCQlpbnRlbF9kc2NfZGlzYWJs
ZShvbGRfc2xhdmVfY3J0Y19zdGF0ZSk7DQo+IC0JCXNrbF9zY2FsZXJfZGlzYWJsZShvbGRfc2xh
dmVfY3J0Y19zdGF0ZSk7DQo+IC0JfQ0KPiArCWlmICghaW50ZWxfY3J0Y19oYXNfdHlwZShvbGRf
Y3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0RQX01TVCkpDQo+ICsJCWludGVsX2RkaV9wb3N0X2Rp
c2FibGVfaGRtaV9vcl9zc3Qoc3RhdGUsIGVuY29kZXIsDQo+ICsJCQkJCQkgICBvbGRfY3J0Y19z
dGF0ZSwNCj4gb2xkX2Nvbm5fc3RhdGUpOw0KPiANCj4gIAkvKg0KPiAgCSAqIFdoZW4gY2FsbGVk
IGZyb20gRFAgTVNUIGNvZGU6DQo+IC0tDQo+IDIuNDMuMg0KDQo=
