Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C1684A05E
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Feb 2024 18:14:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEA8910E2EE;
	Mon,  5 Feb 2024 17:14:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Es2aAzJX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BB5C10FB0F
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Feb 2024 17:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707153261; x=1738689261;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XyMV8/2qnIrPi6rlYC8VL7jsw6WlXYfkSNDHa4tfaj4=;
 b=Es2aAzJXlLD/Hwn2v4YhThie7spu7zqjuGnq51ZPh5OyQHuM0ks9wbM1
 47VWt6vZED9Txnd60fNUib+jp1htV1FSYyZQ6hKCQvME2FqDBNimZmw6K
 xYWqL0HsVLvh8hmfVSZuYpJSvgdC0vMIFG9l4fodQg3db7SqYo2SH1PgP
 OnwuFQz//11l/9Dslirgvat10a8ksC8ml9hlYm45NdEzuFDQVKBhSKy9K
 5LtdS63FnwOm4HtjpFJb95h8MpfkcrivbLOWM/129bW9cUZjLFFJd//UG
 BdtSc5wvwVp/4gfFNIFM4STRreKqhPZJHoFtHPO6j/K4SPM3fHQirAfFP Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10975"; a="710914"
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; 
   d="scan'208";a="710914"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2024 09:14:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,245,1701158400"; d="scan'208";a="38200694"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2024 09:14:20 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 5 Feb 2024 09:14:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 5 Feb 2024 09:14:19 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 5 Feb 2024 09:14:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Dv2Qu/gDC5pEraNlE1zaqNP5UlyTlEoje81/tYXB6QBRon0t4YLGddrr7HW7cJdqwAz8rt72xPGIQQpOf9NT/1oNfF6vADW4LS/wZSoCG+PPZt4qUwEVrQVg2If8IZXX5J3DTueryUstYtc2X+S2MxUPRBPIC2maarQE8MWnay3FI8qfCbiyxxK3A3SrJU4iJ6ad/T4cLW184QDltOYQqinmRkgL4aNy3Q401pwK1TlW4HGPCc6EWoFEkL1yxeTMdY1lZNMESTBHaJeocPOXu8c5jMlWnOWWnwGpB3eTmrFGHF4/Q8zhkNjDUBPUi4nyxXDtOVKYT9HDINb1oVAWCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XyMV8/2qnIrPi6rlYC8VL7jsw6WlXYfkSNDHa4tfaj4=;
 b=Ot7A87X57yRUiHuqNEglZKtxlbSBehuKN4M4YSUut+Up+LSIHCI2DSglnenzC2qXhyMw1SPahO9mmSBkr6osB7gH+bXYRJz3nMdwxXoXWJfhO7hbgZrQb9d7F1IR3+VXe6ugM0r1JZGQAR3ihCrk3Iydty3JDpDk0ShLyeflCzINE9ru+sE3XxenYI5p2gAx8euTCCgC+/vp9es5kl6MNaTvrmtiyzFZvvtbJmofct+3uJ2Xno4HTloI4E+zBvoAhbpDAbNHZWb6bPt/UUxQyKgRf60S28ysZ4YTcvGTWdKE6cq7v5SQqXCC6aMDcKkUp5PnVMFLk+rExBJAAxpcCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by IA1PR11MB7822.namprd11.prod.outlook.com (2603:10b6:208:3f2::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.34; Mon, 5 Feb
 2024 17:14:17 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::e90b:e018:1b70:f107]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::e90b:e018:1b70:f107%4]) with mapi id 15.20.7249.032; Mon, 5 Feb 2024
 17:14:17 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>,
 "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [PATCH 0/6] Cursor Fault Fixes
Thread-Topic: [PATCH 0/6] Cursor Fault Fixes
Thread-Index: AQHaWABPtVe9+4+49UeW6ZiuDCepfLD7vLSAgABACbA=
Date: Mon, 5 Feb 2024 17:14:17 +0000
Message-ID: <SJ1PR11MB6129218BBEB0EF4E41A95293B9472@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20240205064836.3645402-1-chaitanya.kumar.borah@intel.com>
 <875xz3dp0w.fsf@intel.com>
In-Reply-To: <875xz3dp0w.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|IA1PR11MB7822:EE_
x-ms-office365-filtering-correlation-id: 2630f571-02c3-4cf1-da19-08dc266de2a1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5xmK7zfaV8O1noA29AB1JC0jKJmuThOxRxDBJ5UIuZ1F2ZIasuZgGH4+WLN86R1KUKZUFJoU+AK4AP6AGbC+VT9Jnt9kkkfXFtSY/D6DjR69zDNlM5Oq3TpWLxT3EHTfv0DXTddrePc9US5Rz2LJ6UIJAXWQ2bmlP9jNUw860Vm2irtB/1YIhvVhcJZcPWZ3L1WHXNAYUerA/TCZ9q4NVzG443bShF4fT3EhScUFFr92SEZhhaethnLGkmKMM2yWz1bJqa0JIAzgS5gw08axgzYLIZ3ctDdC/dpK9jedeGsgblUaa+qw4GVS5/6hJ9EWCNtfzWsJZ5CvoWnOsuOXZOey+OBQ7iXI5JnO/LqdmjjDiVcG2NkvZexnT8wEWl2uFqbYXiDdOGLHp9ALqTXVEj4Og0CGnkL2gBU0ETY3PJNvYF5H3WzmPM8vHaetKmk3mB40l3A5gL6awkvyBMCVkIRVmcSLRZJG1r3Cyp0WINlKgTUsJ0iV64N9m8hkUb/czdT+napEUn0CqV/1v7VHO0VQKyUQZKt/VIFXsC5V2r84m0AzjqG+HGok92j8aP6tfbErYDeZrzw/1rGfmFRDEJBe/dKwG7N6/4r4lAm4XXw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(136003)(396003)(366004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(55016003)(41300700001)(33656002)(86362001)(52536014)(53546011)(478600001)(9686003)(966005)(38070700009)(4326008)(66574015)(83380400001)(26005)(66556008)(66446008)(54906003)(64756008)(2906002)(7696005)(71200400001)(5660300002)(66476007)(316002)(66946007)(6506007)(8936002)(82960400001)(110136005)(122000001)(76116006)(38100700002)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?QnBXWVdaQzhUZy90OEMyTkJVUjEzTkN1d2ZFQ241UVk4eUFsT0FYWkplL3R0?=
 =?utf-8?B?U0ppYVFBL2QweklhcjhzMkt5TlAzcExKZ01Kdy91Rlh5L2drOU10K3dFVmxy?=
 =?utf-8?B?ZXFMUDZ3dkY0OG5TeUVIRk10K2g4Ym1zV3hOaGF0ZHB5ZDB6Z2FRTEtuSFlm?=
 =?utf-8?B?SGZhbGRrTjBPRm9GMnl0dndBSkwrVEhJOEw1bnlLSzB3bk51WmtYSUJmdmdj?=
 =?utf-8?B?aHhoZXlaeW15UkhnR2c5K2dGQkdhSk90TGd5ZDJTd1I0NndScXBITU13VUts?=
 =?utf-8?B?ZDBVb2Y0L1kvNzRsKzU0SmJydWdqMC8wZDZLaGZxVWVnVUdMRWorb3U2QkV4?=
 =?utf-8?B?ZlNvTUptcGRUUkdnMVdmSVYzUlBCbWlnemJsQTlURFloMGRvRmZMbmp3RGtI?=
 =?utf-8?B?b0ZVcGJMNncyTkx1VTNFWUdOVlpaOTRHRHFRdGtnK2I3NitJUFJiUTBrZ3Zn?=
 =?utf-8?B?UWZoUXFlcTNwaGpGcC9QVm1iRmFXSVk0TWliVzRJLy91TUV4MkNJclQ3bDZx?=
 =?utf-8?B?Q3dHbzNsNWg3MzNpMHBpVTZtR202RWlaUVZMcnl4ZzRTZVBZUDcwdTZScGx1?=
 =?utf-8?B?bHY3b3h4eG44aVlpdVpBdGFES24vbHBtVVRKQ3MwMzZmVmxpd2JhTWYxYkVh?=
 =?utf-8?B?aHRUZ0NBdFhRbWJQOFY3bC9OT0dLTEZ2dWxWSG5IbzVsVUJUV0duVDRDaTNP?=
 =?utf-8?B?dTRIb3BTR241bUJlR00rMTVWTEF6cFhjcythd3drOVFzbFlWZjZuSGdxd0t1?=
 =?utf-8?B?Y3kyVnlyRG1XUGpGU2x0bXEzaWlBZTJLRTBrVnhVK0J4aUJCMDFsVHJ2Ty9r?=
 =?utf-8?B?NjVjMjBYbzRSOFV5MWl2OXUyckttRUw4ZVk2aGRaeDUzY2RyelU1Z0U2QUZi?=
 =?utf-8?B?NjFzSit6K25FczUwc0ZwSHJUOEorTWN3VWs1TjI1a0Zzc29JM1JzREN2b1Jp?=
 =?utf-8?B?MkE4emxRWjd5Y2k0Rys4MDNsem11VTFwTXVMOXhOUFhNb294VCs2bVgyOUNH?=
 =?utf-8?B?MHhwWUNROU5QS0VkbGt5VWlIdWdOaUlqWmllL3FzM1hGTXRnSlVHc0owOG1O?=
 =?utf-8?B?QXVYM09jWU1KSnc2QWR5VGl0SkZGQnhCWFN1VzRjWjdIOXprVUVtK0RITEE0?=
 =?utf-8?B?NTVYM0UrenRBeVY2YW9RN3UzNHdIYlZmOW5Ha2ZKL0JDTUc1TVlHSVQ1Umlw?=
 =?utf-8?B?bXFqaVlFVUZpRkFiV1pqaGJabE1WVll0dzIyVVlpcXhGQ2JEaDhqUENZeHdI?=
 =?utf-8?B?YXZEV3NvYnF3c1RFRUdvUlI2NDQ4MlgvNkNPWGViZEdxanFVeGp5SXg3MFNN?=
 =?utf-8?B?OTlJK1JCSFlEVFcrbk5abzVtdENadkhPakdvMk5JWUlFZ1RMNnFmN3daZXJt?=
 =?utf-8?B?bVZUeXdzNUFJWmM3UlllMmp3eE9LRklVaGMraWRqbm1wUnZRTXBHdVgzcExX?=
 =?utf-8?B?b21Sc21wWFJPeVFVL1JDQ3hleFlhZmpRQ0syNVRiSjJjM3haTW9JbzZtZWJy?=
 =?utf-8?B?SS9yY09YWGZZZnlFLzRlYUJnMnpWOSs0dVVMZlV0citQc3ZUQUppRjJHbmlt?=
 =?utf-8?B?Zk43aFJ4dU5udzMzdENaVUVBeWh4WnNkRkpXcUhUQzFzcEVFOUM5Y2RSYmFE?=
 =?utf-8?B?eVRlR2lIQmRsZEFRcnpET0ZtUkgvVkpqYnp3NFphazQxMUM2TVM0RENib0lZ?=
 =?utf-8?B?bDFzQlRSdldTQ0dkQWIxRytWQjlWMTNsN3F2Tk81K0NUQ1BJYVlsMXhDaGRo?=
 =?utf-8?B?WlprQmY5UkdQUU9Sc2JkVEo3cC9yZmpVUjNaS0JScjVOdFRrSGdXOFI1T1h6?=
 =?utf-8?B?Vm9oTWRpSEowOHpCc1grMkFNekM4MzdTdnU0NFVKM2h3UHRtcXlkV2w5OFVl?=
 =?utf-8?B?QllUaVhhQjU4UHFtb0VZVVk4MFBTQWphQ0kwM043MGxwYk1hZVBaSWFhS0g4?=
 =?utf-8?B?bGtmWkJzcDBobEhxL0xEa3cvVXVRTjNxVFdNVHA1bUhoTUh1L1ZkY01BNklT?=
 =?utf-8?B?NEliQVdXZDJvV0hhMy9wRGpNblVkdkJSR1R6bktXNU4yZUJVZktKbWtPNkxO?=
 =?utf-8?B?Tjd2TEdGUFd1VS9WVkwraFpZanVrMnFrTStLelNENjFTT1A4QXg4dUdzTDdB?=
 =?utf-8?B?MStFREJJWmFidE9YakZlU2FFRTNNNHVXQlpNRkpQWUN1SFJHK2NvZzBmWGkv?=
 =?utf-8?B?MFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2630f571-02c3-4cf1-da19-08dc266de2a1
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2024 17:14:17.5027 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XR0PZlF6m6jpS86nvKAxa43jJWDFj3NtjGwpsdVQJRuV/AM372uHTxAFtsHi+DEVr9yvZsBhpbf7I2NlyNfs/eFPaUeYLIuZwLMY1xfOdoI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7822
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBGZWJydWFyeSA1LCAy
MDI0IDY6NTIgUE0NCj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1h
ci5ib3JhaEBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
PiBDYzogU2hhbmthciwgVW1hIDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBCb3JhaCwgQ2hhaXRh
bnlhIEt1bWFyDQo+IDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPjsgbWFhcnRlbi5s
YW5raG9yc3RAbGludXguaW50ZWwuY29tOw0KPiB2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNv
bQ0KPiBTdWJqZWN0OiBSZTogW1BBVENIIDAvNl0gQ3Vyc29yIEZhdWx0IEZpeGVzDQo+IA0KPiBP
biBNb24sIDA1IEZlYiAyMDI0LCBDaGFpdGFueWEgS3VtYXIgQm9yYWgNCj4gPGNoYWl0YW55YS5r
dW1hci5ib3JhaEBpbnRlbC5jb20+IHdyb3RlOg0KPiA+IFRoaXMgc2VyaWVzIGlzIGJhc2VkIG9u
IHRvcCBvZiBbMV0gZmxvYXRlZCBieSBNYWFydGVuLg0KPiA+IFRvIGZpeCByZWdyZXNzaW9ucyBz
ZWVuIGluIENJLCBmb2xsb3dpbmcgY2hhbmdlcyB3ZXJlIG1hZGUgb24gdG9wIG9mDQo+ID4gdGhl
IG9yaWdpbmFsIHNlcmllcy4NCj4gDQo+IFlvdSd2ZSBzZW50IGF0IGxlYXN0IHRocmVlIHZlcnNp
b25zIG9mIHRoaXMgaW4gdGhlIHBhc3QgMjQgaG91cnMsIHdpdGggbm8NCj4gaW5kaWNhdGlvbiBv
ZiB0aGUgdmVyc2lvbi4gUGxlYXNlIHVzZSB0aGUgLXZOIHBhcmFtZXRlciBpbiBnaXQgZm9ybWF0
LXBhdGNoIG9yDQo+IGdpdCBzZW5kLWVtYWlsIHRvIGluZGljYXRlIHRoZSBzZXJpZXMgdmVyc2lv
biBudW1iZXIgaW4gcGF0Y2ggc3ViamVjdHMsIHNvIGl0J3MNCj4gZWFzaWVyIGZvciBwZW9wbGUg
dG8gdHJhY2suDQoNCk5vdGVkLiBGb3Igbm93LCB0aGUgcmV2aWV3ZXJzIGNhbiByZWZlciB0byB0
aGUgdmVyc2lvbiBoaXN0b3J5IGluIHRoZSBib2R5IG9mIHRoZSBjb3ZlciBsZXR0ZXIuIEkgd2ls
bCB0YWtlIGNhcmUgdG8gYWRkIGl0IGludG8gdGhlIHN1YmplY3QgYXMgYW5kIHdoZW4gdGhlcmUg
aXMgYSBuZXh0IHZlcnNpb24uDQoNClRoYW5rIHlvdS4NCg0KUmVnYXJkcw0KDQpDaGFpdGFueWEN
Cg0KPiANCj4gVGhhbmtzLA0KPiBKYW5pLg0KPiANCj4gDQo+IA0KPiA+DQo+ID4gMS4gYWRkIGEg
Y2hlY2sgaW4gdGhlIHBsYW5lIHN0YXRlIGRlc3Ryb3kgaG9vayB0byBub3QgbW92ZSBmb3J3YXJk
IGlmIHRoZQ0KPiB2Ymxhbmsgd29ya2VyIGlzIHNjaGVkdWxlZC4NCj4gPiAyLiBhZGQgY2hlY2tz
IGJlZm9yZSBhY2Nlc3NpbmcgZnJhbWUgYnVmZmVyIG9iamVjdCAod2UgYXJlIG5vdCBzdXJlDQo+
ID4geWV0IGhvdyBtdWNoIHRoaXMgaGVscHMgYnV0IHdlIGhhdmUgZm91bmQgdGhhdCB0aGlzIG9w
ZXJhdGlvbiBjYXVzZXMNCj4gZHVtcCBzdGFja3MpIDMuIGRvIG5vdCBkZWZlciB0aGUgaW50ZWwg
YXRvbWljIGNsZWFudXAgaW50byBhIHdvcmsgcXVldWUsDQo+IGluc3RlYWQgZXhlY3V0ZSBpdCBh
dCB0aGUgZW5kIG9mIGF0b21pYyBjb21taXQgdGFpbC4NCj4gPg0KPiA+IFdoaWxlIHRoaXMgc2Vy
aWVzIGlzIGluIG5vd2F5IGEgY29tcGxldGUgb3IgcHJvcGVyIHNvbHV0aW9uIGl0IGlzIG1lYW50
IHRvDQo+IHRyaWdnZXIgYSBkaXNjdXNzaW9uIHRvIGFycml2ZSBhdCBvbmUuDQo+ID4NCj4gPiBb
MV0gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMjY5MzQvDQo+ID4N
Cj4gPiB2MjogQWRkIG1pc3NpbmcgcGF0Y2gNCj4gPiB2MzogUmVtb3ZlIG1pc2xlYWRpbmcgZXJy
b3IgbG9nDQo+ID4gICAgIENoYW5nZSBjb25kaXRpb24gdG8gYWNjZXNzIGZiIG9iamVjdA0KPiA+
DQo+ID4gQ2hhaXRhbnlhIEt1bWFyIEJvcmFoICgzKToNCj4gPiAgIGRybS9pOTE1OiBkbyBub3Qg
ZGVzdHJveSBwbGFuZSBzdGF0ZSBpZiBjdXJzb3IgdW5waW4gd29ya2VyIGlzDQo+ID4gICAgIHNj
aGVkdWxlZA0KPiA+ICAgZHJtL2k5MTU6IEFkZCBzYW5pdHkgY2hlY2sgYmVmb3JlIGFjY2Vzc2lu
ZyBmYiBidWZmZXIgb2JqZWN0DQo+ID4gICBkcm0vaTkxNTogZG8gbm90IGRlZmVyIGNsZWFudXAg
d29yaw0KPiA+DQo+ID4gTWFhcnRlbiBMYW5raG9yc3QgKDIpOg0KPiA+ICAgZHJtOiBBZGQgZHJt
X3ZibGFua193b3JrX2ZsdXNoX2FsbCgpLg0KPiA+ICAgZHJtL2k5MTU6IFVzZSB0aGUgc2FtZSB2
Ymxhbmsgd29ya2VyIGZvciBhdG9taWMgdW5waW4NCj4gPg0KPiA+IFZpbGxlIFN5cmrDpGzDpCAo
MSk6DQo+ID4gICBkcm0vaTkxNTogVXNlIHZibGFuayB3b3JrZXIgdG8gdW5waW4gb2xkIGxlZ2Fj
eSBjdXJzb3IgZmIgc2FmZWx5DQo+ID4NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2RybV92Ymxhbmtf
d29yay5jICAgICAgICAgICAgIHwgMjIgKysrKysrKysNCj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHwgNTMNCj4gPiArKysrKysrKysrKysrKysrKyst
ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmggfCAgNA0KPiAr
Kw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYyAgICAgfCAy
NyArKysrKysrKysrDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vy
c29yLmMgICB8IDI2ICsrKysrKysrLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2N1cnNvci5oICAgfCAgMyArKw0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYyAgfCAxMSArKy0tDQo+ID4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAzICsrDQo+ID4gIGluY2x1ZGUvZHJtL2RybV92
Ymxhbmtfd29yay5oICAgICAgICAgICAgICAgICB8ICAyICsNCj4gPiAgOSBmaWxlcyBjaGFuZ2Vk
LCAxNDIgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+IEphbmkgTmlr
dWxhLCBJbnRlbA0K
