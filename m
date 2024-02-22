Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43D9785FB89
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Feb 2024 15:48:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D79810EA21;
	Thu, 22 Feb 2024 14:39:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X3AgrBW7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D22DE10EA21
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Feb 2024 14:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708612777; x=1740148777;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ut2VsF6T+28dL7ZVzStLt2jhBIAZAnn/Inx+t6V1bEA=;
 b=X3AgrBW71M+AFXJK6KUsjAZqthK7q9RT8xF8TRW5erfJkjAZ4E1jnGhZ
 bx5opDvkpV6nK0WLNGW192cr56N5PgbK3Mhq0RT2upnOeQyhI1x36VYeB
 LZJoOSemSJ9BbHCJnYzmTAm/Cif0WDFexZ3Jk8b8Kvi8Ux56iP0qh0LZ3
 Sd1b5Q1QS514SF2Qf2Tu0mol9QzgkfxUncPAnD+ba2dQ6Scp1wa4c/+7x
 1j6V1nANduF4POURkZHAXF+xw3/8w3Z/d0t5jTBvzWOQ7yZvCpOPemHzX
 pyuvgstMOQJ6qkZMMElu9DJwcSwKEj7Sk4QUugI2o4rVYwPvY/V8LWE2M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="14261542"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="14261542"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2024 06:39:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10991"; a="827558252"
X-IronPort-AV: E=Sophos;i="6.06,179,1705392000"; d="scan'208";a="827558252"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Feb 2024 06:39:36 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 06:39:36 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 22 Feb 2024 06:39:35 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 22 Feb 2024 06:39:35 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 22 Feb 2024 06:39:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QW0T4ObTeptaoWy6spwLsBupNNHwr5CaWCTe8OOOtjwUMHL0taCIEfzkvBDSm7mlrhNAmYl/zduLHR45ID7Q6CQdR+kzELNedesUMyohN3YlPv6JN5DJuUUwgu0h/tEhgYD6x46AxS0TNbE7CxUbaw3X2PTLdieS005wcJY58hAkIw4KR2kPv45m/245ufOASHB/Wg3YjbghR5yNc5EBEslyJBL3Vv5EQOcefeOeShLMkzcdsod5047WKo9ivJGh/LJDJmi2RrbPhCPm/OAw0fdNHkghx5ZhG4ds2meQpxtXqEKoYP/S/ocRiS4PCTRpNd8vtqa/FOSB9ahCN/7FGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ut2VsF6T+28dL7ZVzStLt2jhBIAZAnn/Inx+t6V1bEA=;
 b=lOBiZwXjet98ZqwsA11yLWwGX6tCAJ5b2tobuKwnxm6F636JJykfrzkOb9Hp5y9mzgIJ+myMoVSN+8hcwbiUdd7KlnMviSwPlL+xK+TQmivOCVHeCYj9vtGnftpwZuZqd1rnKx9exlmYmGV+tQJfA8KPmzPEAHYS/03qSWePXWiunoklDF8+yXyAG22PrBCHjrqSsELD+bGh4LhdrjwNcxcP83ZeVz/2RdTE8nHMeoxI6JbWuk5YrZxbowAnaue7hSnsd3Eg/31aaxB0zbkRIBeJFzYc8zTnL/SLKKKMXX/ija1jzHL5e68eUUWluRAmGeDFZIo0hoxJyfg6wxgqwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by CH0PR11MB5377.namprd11.prod.outlook.com (2603:10b6:610:b8::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7339.12; Thu, 22 Feb
 2024 14:39:32 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::f175:e111:f672:839d%6]) with mapi id 15.20.7292.029; Thu, 22 Feb 2024
 14:39:32 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
CC: "Sousa, Gustavo" <gustavo.sousa@intel.com>, "Lisovskiy, Stanislav"
 <stanislav.lisovskiy@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
Subject: Re: [PATCH v1 0/6] LNL display
Thread-Topic: [PATCH v1 0/6] LNL display
Thread-Index: AQHaZY6emeQULHOHhES93cPg2JxoA7EWZHCAgAAKVoA=
Date: Thu, 22 Feb 2024 14:39:32 +0000
Message-ID: <f6b4f07048371afb1d61f122bd3d4d2b9a3b2233.camel@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
 <rjprf5shfn7ewh6dvdhd2bdhy3o4d5ncffadd5p6hvanuycbbr@k56on5zkxcqs>
In-Reply-To: <rjprf5shfn7ewh6dvdhd2bdhy3o4d5ncffadd5p6hvanuycbbr@k56on5zkxcqs>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|CH0PR11MB5377:EE_
x-ms-office365-filtering-correlation-id: 707f58eb-ae1e-4e41-2c55-08dc33b41537
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: euSRqEiAJ+qFE/yBqPALo8t49OEd55EPoAGHw01QuM++08/SKdXJ+XzshTxAczekbal3IrH20ZjJR1ZhHwzny5CcV408Kr21WxpSwTOcO7fjj8ojjtXIJVSrP8/kxwVJJzueN3MAtCw4aXKJ+UpntD7WrLPBh6jgKQzqL+3fHLGz+TeTFp4fzjmgkMOf7mtpR/uK+xOMyEboK82kbtEieBOAV1/47KDDEsgqYPSde7WxOrH2t4TvhGoVCWhDV4oXzd8PVsCJhuXH5Efp1sM51tlDapvyg88zwiWszs3uKisVq2yGYu4HiQQy+ogCEIFmkWCnpVTgXvv2NpcsxdOpTO4mg4uYD/iB5cPQIdIrOA46uPapnIyZ3k1mH9blXChlI9POQ88uwkGGpGGAdQc+1G9lX10NETlKRUV/qUpI8S8gErHD445s8cSIahE5SZ8QLk7Gh7RBlvu+ERO0L/EfXyZwgV66NRyavCmnempeu83pfH9lrIVVT1qettnQbcX+a9WiA6f2FJ5IOf8DFcaMvx6mLZrQVvPT99pjCgHidRYMG8zuyL13u2EVb80jIAXP9H7OYaY7Jpcf3NhB30UkLLn77Ta5qK7/kvP+lqxjXBw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mmxndnh3elppN2FBSWlISDlLa1UwTGdzbjVBLzQ3WVI4V1phcU13VXVVVW5z?=
 =?utf-8?B?OFdNc1BBOFdIeG16TFhwVm1ZOEI5dis2OTNYVUN6azRadUk0clVSSHo5QkVi?=
 =?utf-8?B?WkNnNCtORmlzZ2hNemJndlVHeXlNYWMxaVRjVm5Td1NuSHFCdnRaYWRHeWVh?=
 =?utf-8?B?YldBbGVoalNoV0VsREprSGRDVzkzNkc2UG5sNzhnT1JuaElJaUZBbG91ekR0?=
 =?utf-8?B?Yys3UlRpMWw4SlZkYUpyRnB3QXhybHMrL0FMYUJKTEloQ0Zxc2tVV1pJZmNU?=
 =?utf-8?B?Ukl4UVcrbmI1dXEzUlQvbWkxZGxlaWFmeHEwZ0sxWkp5MGV2OWZ0bWw5Zmlk?=
 =?utf-8?B?YlhVMklPNXV2bFZaNnZXbGtVWmJhNHNma1FlR2czQ3lGNWlkclpZKzBOMGxU?=
 =?utf-8?B?b1Q3RUtiemFBRTR2aDhzZVJpOU50OE54NHNnNzhhYlBsNnN1REFFZUtpSEcv?=
 =?utf-8?B?L2xoV3grcWEwbFo3L2QrcWUvRmdRTWs3TEdRWW9xUjN1L3g1MXliMjlIYVhH?=
 =?utf-8?B?R2hVUmpRNWtKeVlZVzVBUENJQUV6Z0xVWmpuNWZwZEx1TlNzRVNsL2tOeG5x?=
 =?utf-8?B?L3JpbmQrUGk1VnhpRTFlNGM0TFJXbkdNMzIyQ2lvS052SHZFajU5UyswSWZ0?=
 =?utf-8?B?NTZBTFNNV2pmRWc1ZzhJWDZ0bk9wdDN6V0YyQVhiQWVuRVZyTDZReC9ubkhX?=
 =?utf-8?B?STRoZlF0Zzl3dTA5MFVXZUxHa1hQWG15SU9mK1dOWml1MjZ0VFNrREtTK1dy?=
 =?utf-8?B?RS9zK0lpbytxT1lZN3pZN2grRzJLSW83ejFua3RlejR3bG9GZXFtT1hBR0E4?=
 =?utf-8?B?YUJyZmdQT1VQL21ad2FhUnNOR3hGakhjQXVRVGlaSzUxTG9VbStVY0czdkZi?=
 =?utf-8?B?ZEhsc1VCcmZsRWxOSi9oSWdUMGhwWXdRWW5uK05rWW5ycjdGd2dQNFRDNTBF?=
 =?utf-8?B?VlQvMmdQdFBPYm5Gb1VNM0NMaDJoMENzclZWcGlxUWV5L3M4Ylg5SHh5YjZL?=
 =?utf-8?B?YzNRVXNnLzBsdjNjN0RTRnFRTU9SMkc2dk1Vdk82Ulo2WlJVUUx1eS9jMkMw?=
 =?utf-8?B?ckNxK0twNnF5c1VDaUxuY2ZJM0s1bUNPMjQrc2JBdTFFbngyODF2SUZTOXVG?=
 =?utf-8?B?eEJDaVpQT2R0M0N1MHVwdTg0K2hoZVRReHRGbnA4SGUxUHpXS0ZsaGF3cytx?=
 =?utf-8?B?N3pHMkhyQ0tNZFhXT3h3RDE5UEFGZ0pjVXl0dXQzTk5ud2FkWTRXWGZHcWR1?=
 =?utf-8?B?VncwdVRLS1p1amE1dE04b0ZOZXJzWnRyR1llQjBaUTNzME43U1QwdEJObWlQ?=
 =?utf-8?B?NTVQdFVLRk5YeXc3OWljZ0dzK2hWYnlBeWtuVTdQenVyUGlWYWdQN1hmN09H?=
 =?utf-8?B?NEdkZEVaS0owYUJlWERSaWQ0blZ4K3JzQWcrRHUxeTJnKzFRN1lHaFlXZXlN?=
 =?utf-8?B?ck5wa2ZqdCtBcWdrbXV4ZDNBS1FnSHgrZ1I1Z1NVR0xoTnIrMzhJQ093ZFgv?=
 =?utf-8?B?VTRCZUljeUJmQS8rZWsvbkhLRzRKQzRPUEtvMmJFYUpMUzRxYzd1WStoTG1I?=
 =?utf-8?B?VVA5SWJvQWNybWZkMzdoUXdOVk1idWRWVkRNbCtKTjVoTUE1TGtyYkM1ZXky?=
 =?utf-8?B?T2QyN1FIM0JrTUZBZnFBeEppY3VIb0d5bGlkQ09Da1pGcisvRkVjanpCTW92?=
 =?utf-8?B?c3ZKS0xGYW9QZVR0cEIxZURReDBIdCtEU25OUE5xZkNoWTRtMW5XR3p5b0gw?=
 =?utf-8?B?dkQ1Y1NaWDRGVHBZaW9iLzRVOWNkb2lyaEVBREFrcmxnN1VEVFdIQ29RZFZN?=
 =?utf-8?B?di9QUUU2TGVaM1pBeTdxUGVUcGNzMmRDMEtSbDZKYmRsTkt2dmhRWEtFRitE?=
 =?utf-8?B?NTlxdDhVTG55ZFgvaG1pQ1pYc2YvRVJxZTlZYVJWbHBnWGUzTllBazFnaWV2?=
 =?utf-8?B?Vk95UkVWRjMwc09GWi9hY3dSL09lM2RBVTZUbnpHclJqTXFMVE1CbG95dmRk?=
 =?utf-8?B?MmNFYStyMmJIbTE4VXl1KzJ1cndsS25oYzEvSm1rMkpYcC9qWXN6UTdIYndj?=
 =?utf-8?B?YmR6clljYzRXaEhaMmgrM0s2RjRDclB4V0NTcmp2OTc0cTQzNXF3ZGdDVTZi?=
 =?utf-8?B?eklHNjFxa0k3UVROZDkwSExJZWo0SVoyVVN1STZMZkpiTG9ncFN2TXZRaVF5?=
 =?utf-8?Q?/x0+HPKyKL8q7irx4ndNuz0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FF20CD780C8A0D40976D03CD848560D4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 707f58eb-ae1e-4e41-2c55-08dc33b41537
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Feb 2024 14:39:32.2786 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: XPq4g+hDceZS3T3YPMKCnGwNFqRE9TdMUE78bP8aSlHkO88Kd1BJJY+aKjqaV/qus3uBSuchRhwHokGuGpLHW6cCSrp6Jdj14oY0+F8DeyE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5377
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

SGksDQoNCldlbGwuLiBzb3JyeS4uIEkgZGlkbid0IGtub3cgR3VzdGF2byBpcyBhbHJlYWR5IHdv
cmtpbmcgb24gdGhpcyENCkBHdXN0YXZvLCBwbHMgaWdub3JlIHRoaXMgc2VyaWVzIGlmIHlvdSBh
cmUgYXJlYWxkeSB3b3JraW5nIG9uIHRoaXMuIFBsZWFzZSBsZXQgbWUga25vdw0KDQpPbiBUaHUs
IDIwMjQtMDItMjIgYXQgMDg6MDIgLTA2MDAsIEx1Y2FzIERlIE1hcmNoaSB3cm90ZToNCj4gK0d1
c3Rhdm8gYXMgaGUgd2FzIGxvb2tpbmcgYXQgdXBzdHJlYW1pbmcgdGhlc2UgcGF0Y2hlcy4NCj4g
DQo+IFdlcmUgdGhlIGlzc3VlcyB3aXRoIG1kY2xrIGhhbmRsaW5nIHBvaW50ZWQgb3V0IGF0IGxh
dGVzdCBhdHRlbXB0IGZpeGVkPw0KPiDCoEZyb20gdGhlIGNoYW5nZWxvZyBpdCBkb2Vzbid0IHNl
ZW0gc28uDQo+IA0KPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMzA5MDgyMjQzMDMu
R1gyNzA2ODkxQG1kcm9wZXItZGVzazEuYW1yLmNvcnAuaW50ZWwuY29tLw0KDQpZZWFoLi4gaSBk
aWQgbm90IG5vdGljZSB0aGVzZSBjb21tZW50cyEgTGV0cyB3YWl0IGZvciBHdXN0YXZvJ3MgcmVw
bHkNCg0KQlINCnZpbm9kDQoNCj4gDQo+IGFuZCBhbHNvIHdvcnRoIHRha2luZyBhIGxvb2sgYXQg
cHJldmlvdXMgdmVyc2lvbnM6DQo+IGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8/cT1zJTNB
JTIySW50cm9kdWNlK01EQ0xLX0NEQ0xLK3JhdGlvK3RvK0RCdWYlMjINCj4gDQo+IEx1Y2FzIERl
IE1hcmNoaQ0KPiANCj4gT24gVGh1LCBGZWIgMjIsIDIwMjQgYXQgMDI6NTY6MjhQTSArMDIwMCwg
Vmlub2QgR292aW5kYXBpbGxhaSB3cm90ZToNCj4gPiBSZXN0IG9mIHRoZSBjZGNsayBwYXRjaGVz
IGFzIHdlbGwgYXMgdGhlIHBhdGNoZXMgdG8gZW5hYmxlIHRoZSBkaXNwbGF5IGluIExOTA0KPiA+
IA0KPiA+IEJhbGFzdWJyYW1hbmkgVml2ZWthbmFuZGFuICgyKToNCj4gPiDCoGRybS9pOTE1L3hl
MmxwZDogTG9hZCBETUMNCj4gPiDCoGRybS94ZS9sbmw6IEVuYWJsZSB0aGUgZGlzcGxheSBzdXBw
b3J0DQo+ID4gDQo+ID4gUmF2aSBLdW1hciBWb2RhcGFsbGkgKDEpOg0KPiA+IMKgZHJtL2k5MTUv
bG5sOiBBZGQgcHJvZ3JhbW1pbmcgZm9yIENEQ0xLIGNoYW5nZQ0KPiA+IA0KPiA+IFN0YW5pc2xh
diBMaXNvdnNraXkgKDMpOg0KPiA+IMKgZHJtL2k5MTUvbG5sOiBJbnRyb2R1Y2UgTURDTEtfQ0RD
TEsgcmF0aW8gdG8gREJ1Zg0KPiA+IMKgZHJtL2k5MTUveGUybHBkOiBXcml0ZSBEQnVmIGFmdGVy
IENEQ0xLIGNoYW5nZSBpbiBwb3N0IHBsYW5lDQo+ID4gwqBkcm0vaTkxNS94ZTJscGQ6IFVwZGF0
ZSBtYnVzIG9uIHBvc3QgcGxhbmUgdXBkYXRlcw0KPiA+IA0KPiA+IGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuY8KgwqDCoCB8IDc0ICsrKysrKysrKysrKysrKysrKy0N
Cj4gPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuY8KgIHzCoCA1
ICstDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuY8KgwqDCoMKg
wqAgfMKgIDkgKystDQo+ID4gZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJt
YXJrLmPCoCB8IDM1ICsrKysrKystLQ0KPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3dhdGVybWFyay5owqAgfMKgIDEgKw0KPiA+IC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9z
a2xfd2F0ZXJtYXJrX3JlZ3MuaCB8wqAgMiArDQo+ID4gZHJpdmVycy9ncHUvZHJtL3hlL3hlX3Bj
aS5jwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHzCoCAxICsNCj4gPiA3IGZp
bGVzIGNoYW5nZWQsIDExOCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+
IC0tIA0KPiA+IDIuMzQuMQ0KPiA+IA0KDQo=
