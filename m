Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 286476ABEEE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 13:01:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A789A10E363;
	Mon,  6 Mar 2023 12:01:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B215E10E36E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 12:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678104087; x=1709640087;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=e+NXczPXMtgkX9UL+GpLfw5YaMKX1AkHbDUs0J0QyF4=;
 b=OSNi+5btmXQKqwyzvhrJRHK5yb1+VF3oW46DBT7MSFB7qy7HGBZaW+/m
 B6YRmX+hTKg1eThO30qsOw0GIMudrsZd5hFrZDemllSZZNObIs0DWGwSW
 xX7Mg21z+twr62sS638dVnVGFgKVhn9GBSNZdYsrajP/XtDz7kctICjsS
 jyPxzWmTcfrCbSuK2ysWwJPFpGW5RCnt7HGJpfw8zJw3k7TeDJDXYK03c
 DkSqTU4CCTRrGnlhOXuP6YSfzEANrehiFJR0NvY2uLMV9x64o9j61Osq/
 lftG+XrbaJHg3YeegNcfRhAwgm/N/hB5HERHHIq5N1kw9bZKVmxFB4bov g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="315195254"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="315195254"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 04:01:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="669412402"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="669412402"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 06 Mar 2023 04:01:17 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:01:17 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 04:01:16 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 04:01:16 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 04:01:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DMIrDL8YiB0XSDB28D+XjfNF2NGkf74jDK/xKTcw2rKIfGiRqa1kn3N7Da25BQmY9bttBCruIWb8GEKiRcrhw2vMOnLjlHHegGhbz99cwpv4gc5NV9DU8OSVhDq3brL0FdP7Kemof+STsKBMvYyY18kJufNU03YS0Ol1Mp5bLHINHGAFQZWEC7ynNhS5nRt23qmiI/tJeIcwYrtMP9b1zjn5tkG4+ltPlVpSj9+XERyWpG+Y+X+T+SLjpZD14TLXzhPm9CdiAHxty+IBvujnUq/JVaTxBm5W6GXAhQnJoZ2xwA5XQ3w0L6+Kv5FWkNLRcGdJh/GSeYW2T1+YD6Un2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e+NXczPXMtgkX9UL+GpLfw5YaMKX1AkHbDUs0J0QyF4=;
 b=KVW/XsvFeiCkGY+5AFlF4UrdaTira94ewagwy/DqH/HFR4WDxnw+ZW5Y1nhY1ddzjeg9etxHgOyV1HN/+zzWUdZyfHVaK4DbmritslfE+zMGPkLKBtVW47gE4gfi+dWpHvKe/UxVNlCSzmr/+Mtv7xXTQuuBfgvydY3GVsDBAGBC4h0rrpuGZFPl5c1JJ7JOu5TqEnxNSXsXl/vRyP8GkCC9dsLSOaJhW1DKVNQTwoddaEcrS+a6SU+j8DNbfhgMEsc8pvrdcu51ji4d0TTTIburkpJUOsKe122y4g34MLSClN5XYZAhWaN3M3jvbj6fpewbCIrV7qZOhIR9t3maaw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by PH0PR11MB5593.namprd11.prod.outlook.com (2603:10b6:510:e0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Mon, 6 Mar
 2023 12:01:14 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::9cbe:1b81:53be:aae8%8]) with mapi id 15.20.6156.028; Mon, 6 Mar 2023
 12:01:14 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915: Ensure DSC has enough BW and stays within HW
 limits
Thread-Index: AQHZUAJBq7a4O0E4P0i9tIeA6SeyO67tpqqA
Date: Mon, 6 Mar 2023 12:01:13 +0000
Message-ID: <97a4ea77b68fc3b89abd85e89470072d510c3d4f.camel@intel.com>
References: <20230306080401.22552-1-stanislav.lisovskiy@intel.com>
In-Reply-To: <20230306080401.22552-1-stanislav.lisovskiy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|PH0PR11MB5593:EE_
x-ms-office365-filtering-correlation-id: 7cd90a33-5ebd-4fd0-3992-08db1e3a7bed
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: OGOX2+lyx2e7QkZj353OTZb22eJW2AI+0yaSM09X4gj3GaxLiZjol0N6eDGwTdZOSrlo1VRAnrt4XxgP3XdmndMv6bBifF54WWj+8suBTFmUmePYQIO7O4dh6fhIE4+gGqnDkesD1cxPft6kjijOSyrbWobmjfA7H2vRuvhANNgNYgplid5ql+YJuTSY9fgSKTkz1aVEYKwx9ZBIDXtzjC0ogu+szgqgFwNgrZpakoZCYWOGiNfq2sCsm+XpnYyKfQgq4IUPfTe7IyzO6gMsCP9abP+ikJwF/v9KrO8/0zKCNmD4LN3nSLhI9aZnGYZte0xCQovm7lzZuJeBRE5kDueaQNcaeNU5K/EH6624nVCdSnyBtYs6hdxDjW7HypRkspUEEkFVoQrGsTxWBUrW2b006giUlx425QVVux8u8+nqhUmDMPxzFeG7muujjhaNxESMQBP6bT7eF/2BPrrzJEFMOnrflWCdhwa12dh9dfQT5p84aLse8SJtS94+XEqwDi3/d4NrcMrpnRNZ4Ikaw/Ct8y92kAwuvxSKgTG94Dc4HUoLsFgPqbPtHECCgpBjazZWkWQcHwse+9WbiHPhRgA4BML7gueH3TRgHIBzz46j3Vk23Jt602KwHDE3VwaoXQ0UlYb0dITNqt3IAPSYVd9cVA4A6JThPN05dJkjm2WKz58vztr/n1snSqcnrSbtM+RSszjfDsyZzVN4eRGqYQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199018)(6506007)(6512007)(6486002)(107886003)(36756003)(38070700005)(83380400001)(86362001)(122000001)(82960400001)(38100700002)(186003)(26005)(2616005)(41300700001)(91956017)(66476007)(66946007)(66556008)(76116006)(66446008)(4326008)(8676002)(64756008)(2906002)(8936002)(5660300002)(71200400001)(316002)(54906003)(110136005)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?N3ViVUE0NXpzTXQ0WlJCeUpLWStGN1l2aE1CQXd1UGZJeDFleXA1ZnZHcCtk?=
 =?utf-8?B?djJDZWJTampkTDNoaXBJK21ZenE1QlordGdCOHI3dUcvUG5WQVkvMHhtMVVI?=
 =?utf-8?B?UnU3dFF2cVhSNDR3L2duZVVHamF3V1FHUDlzMTN4MG5jckVzTTBWeG1JL3VC?=
 =?utf-8?B?VjBEdGpaYkNvd2pRcE9jNTdYZERZaXY2N3NZTEFSSUpwMTB0TTZRYWoyN0I4?=
 =?utf-8?B?QzVDUWJ3UGhYcUlxU0NFb2ZJRzdNM3M4eGtCaHlCSi9IM3c3UmdOU3lRVFhp?=
 =?utf-8?B?S2Z0VktwclBkUFhzcW03VXcxb1RTbUZCKzBpTitXYVc0SUVCR1pzeThoUnFa?=
 =?utf-8?B?Z2ltb21iNWFQYk85bXU4RkJOWXk1b2VyWURGZlZXOEJGaSsvc1FVaHlTU1Va?=
 =?utf-8?B?czQ5ZFk1b0ljUHNEOVBkYks3bTFHTi9SQ3cwY2tpZ2h0YzZLWmF6cUIvQmk5?=
 =?utf-8?B?Uis0M0hyakJzRlo4b3I1VWFZSDBZRVNXNmJWK0xZOWM0bXkrTzcxcm90cCsw?=
 =?utf-8?B?QVVhSnBIK3FUVjlrdWVnUDZ2TlVxSzdNbFN6cTBXbzI1VDAzYXc4R2ZIVndG?=
 =?utf-8?B?czBwaFFCY256eWMrNmUvYk9ZU0xtV2pCZEhFUlQ1Y3NYUW5SYUtBS1RBalUw?=
 =?utf-8?B?TVRaWjFkbk9mTUc2UjM5V3dQd0xyejd5UFVIWDY4R2NjMzArT3J0cGIzU3Fv?=
 =?utf-8?B?KzgrRUV3SXh3SlZYbk1RYTk5S0d6TXQ3ekZ1T1JIQVZaRFhkWlM3RXVhSDM5?=
 =?utf-8?B?S2hmVlRNY2tBNTRQcVVNNENQNUZjQldqWDJwak5KVkxIVm9pbTVYQnE5RHFO?=
 =?utf-8?B?OXBjRFBTOGkwdzJSODNvVklzWlp4emdaVC9yOFpTdDdSTjNyejRWeXYvSnl2?=
 =?utf-8?B?emVwTkx3WXk1ZEhiWTRUbkU0Q2V1a2hIQ1lLRXN4M29OaHMxdUVkTmx5U3hF?=
 =?utf-8?B?a3BKRnVJVEhubVhDdEFCdmlqZ1dvVnBWemdiMHNKU2YvS0NVamF5d1pERyto?=
 =?utf-8?B?UDlkbXZqKzVCL2tQV2QwMzIvRm04YUNTRFdRYWRDc0FiWDhOb3VWcXIwekJz?=
 =?utf-8?B?WCtjTlVFcmRoeVcwQ0JtVGIycEhxL1REeE9LY0VCU2lRT2duMysyRStpa2x6?=
 =?utf-8?B?TnlPS2k5MWtvcHRmbUx3eGhXRVg3NlVFVm9sZjhBZHhLQjY4dVFnODE5RTh1?=
 =?utf-8?B?Mjc5clB2TjV0MXA4VmNjRzZKZUlXd1RRVlBUUEdVSURDdlZ2c2hKSWtIaGth?=
 =?utf-8?B?bE1ZSE8vQmRiTUU1TEFvb3FpQldGY2xCOGNMOXYzY3VOM0ZxNFNvcWloNzdy?=
 =?utf-8?B?UE1DS3AxQ1lFTGYvTEc2eHRYYU1vNmhiRHU1VnBQUk9ML2JlTlhKcjlPa2RH?=
 =?utf-8?B?Zm5wR2FuZ1dDZXhTcGVsbk0yYnRNdEt2T1R1a29JblAwNGJYVFllVjZnQnRv?=
 =?utf-8?B?ZUtlRW1WYytzU2FHWXNJWkpHZlVZNmhBa25ZVlVEc0ZTWEV2ZXFiTy9vNkNl?=
 =?utf-8?B?bUpjdHZ3THdrTlMySUtxN2NYNjNsSDVOWlU0Tm1hVHhLWDQ5Rkw4cDBYa05u?=
 =?utf-8?B?TWZadXhlSzNlWFQwRk9IZTZ1WlRzTWFCcGR3ZE52MzA4MXkyK1Jqa3R0RVoy?=
 =?utf-8?B?WU9oT3lhaFZBRG5MbTZ5anlRakJacWVXS2dlcDk2VU1vWUFPNThCNGpjYzVD?=
 =?utf-8?B?WlBOMElDeHVleStTbmp3Rm1NdE5RVHFQbGVBR0JZbDkvRjJKczNLakF1QUpH?=
 =?utf-8?B?ck9PYmVNb3FCaENuczd6L3VVelJDYzRzb1BvUW5xWGw1OFJuVWZHRVNsdW5n?=
 =?utf-8?B?c0E1eFp3OXR6UitOWmFvWGYxcXhLcDYwTGhmOHhLZGx2eUd5c1pjU0YvWVJz?=
 =?utf-8?B?amdrb1UxYnRvaEhoVis0WHQvcXdhOFZZYU1lVEFXbEtpTkpTa09BaWF3MnQ2?=
 =?utf-8?B?azI1blJGNm4xZWoreUxacVpGME5NUUpUTTZsTDQ1bVRhYzVGL0doOENjUW5N?=
 =?utf-8?B?d1RVUVIzUnlwUlp4b3lnMzg3QlAxSW41Mjkwd0E4amJaK1NyS29ML1QvY3ZR?=
 =?utf-8?B?VUh0aE1Cb1V1OEtkKzFRamRlR2NIWmVSQ2c1WHpnazkwWEpETU8wNTU1Umt2?=
 =?utf-8?B?QWJBSUNVWWV4Y2pvZ2VUd0ZJaDl4TUFzdnI2K2VMS0lpWXM1ak1SR05TK29T?=
 =?utf-8?Q?Kn1HBaDH+fOCGgLgtofSM+8=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <70CC4A5D3FA52B4AB713644D73676D2A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7cd90a33-5ebd-4fd0-3992-08db1e3a7bed
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 12:01:13.8513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3vGCAKvJX9tFh8Q95HAf7/I/13N3gmp7fWRgAp1hzbuA7vxLzIFwgBMmeKuj1zWbHyylyw+6gIIfofayefYCITP/1Uglt7ZjWb707Mx17Z4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5593
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Ensure DSC has enough BW and
 stays within HW limits
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgU3RhbgoKT24gTW9uLCAyMDIzLTAzLTA2IGF0IDEwOjA0ICswMjAwLCBTdGFuaXNsYXYgTGlz
b3Zza2l5IHdyb3RlOgo+IFdlIGhhdmUgY3VycmVudGx5IHRoZSBpc3N1ZSB3aXRoIHNvbWUgQlBQ
cyB3aGVuIHVzaW5nIERTQy4KPiBBY2NvcmRpbmcgdGhlIEhXIHRlYW0gdGhlIHJlYXNvbiBpcyB0
aGF0IHNpbmdsZSBWRFNDIGVuZ2luZSBpbnN0YW5jZSwKPiBoYXMgc29tZSBCVyBsaW1pdGF0aW9u
cyB3aGljaCBoYXZlIHRvIGJlIGFjY291bnRlZCwgc28gd2hlbmV2ZXIKPiB3ZSBhcHByb2FjaCBh
cm91bmQgOTAlIG9mIHRoZSBDRENMSywgc2Vjb25kIFZEU0MgZW5naW5lIGhhdmUgdG8gYmUKPiB1
c2VkLiBBbHNvIHRoYXQgYWx3YXlzIG1lYW5zIHVzaW5nIDIgc2xpY2VzLCBob3dldmVyIGluIG91
ciBjdXJyZW50IGNvZGUKPiBhbW91bnQgb2Ygc2xpY2VzIGlzIGNhbGN1bGF0ZWQgZm9yIHNvbWUg
cmVhc29uIGluZGVwZW5kZW50bHkgb2YKPiB3aGV0aGVyIHdlIG5lZWQgdG8gZW5hYmxlIDJuZCBW
RFNDIGVuZ2luZSBvciBub3QsIHRodXMgbGVhZGluZyB0bwo+IHNvbWUgbG9naWNhbCBpc3N1ZXMs
IHdoZW4gYWNjb3JkaW5nIHRvIHBpeGVsIGNsb2NrIG5lZWRzIHdlIG5lZWQgdG8gZW5hYmxlCj4g
Mm5kIFZEU0MgZW5naW5lLCBob3dldmVyIGFzIHdlIGNhbGN1bGF0ZWQgcHJldmlvdXNseSB0aGF0
IHdlIGNhbiB1c2UKPiBvbmx5IHNpbmdsZSBzbGljZSwgd2UgY2FuJ3QgZG8gdGhhdCBhbmQgZmFp
bC4KPiBTbyB3ZSBuZWVkIHRvIGZpeCB0aGF0LCBzbyB0aGF0IGFtb3VudCBvZiBWRFNDIGVuZ2lu
ZXMgZW5hYmxlZCBzaG91bGQgZGVwZW5kCj4gb24gYW1vdW50IG9mIHNsaWNlcyBhbmQgYW1vdW50
IG9mIHNsaWNlcyBzaG91bGQgYWxzbyBkZXBlbmQgb24gQlcgcmVxdWlyZW1lbnRzLgo+IExhc3Rs
eSB3ZSBkaWRuJ3QgaGF2ZSBCUFAgbGltaXRhdGlvbiBmb3IgQURMUC9NVEwvREcyIGltcGxlbWVu
dGVkIHdoaWNoIHNheXMKPiB0aGF0IERTQyBvdXRwdXQgQlBQJ3MgY2FuIG9ubHkgYmUgY2hvc2Vu
IHdpdGhpbiByYW5nZSBvZiA4IHRvIDI3KEJTcGVjIDQ5MjU5KS4KPiBUaGlzIGFsbCBhcHBsaWVk
IHRvZ2V0aGVyIGFsbG93cyB0byBmaXggZXhpc3RpbmcgRklGTyB1bmRlcnJ1bnMsIHdoaWNoIHdl
Cj4gaGF2ZSBpbiBtYW55IERTQyB0ZXN0cy4KPiAKPiBCU3BlYzogNDkyNTkKPiBIU0RFUzogMTgw
MjcxNjcyMjIKPiAKPiBTaWduZWQtb2ZmLWJ5OiBTdGFuaXNsYXYgTGlzb3Zza2l5IDxzdGFuaXNs
YXYubGlzb3Zza2l5QGludGVsLmNvbT4KPiAtLS0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyB8IDIxICsrKysrKysrKysrLS0tLS0tLS0tLQo+IMKgMSBmaWxlIGNo
YW5nZWQsIDExIGluc2VydGlvbnMoKyksIDEwIGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBpbmRleCBhZWU5M2IwZDgxMGUuLmUzNjgwYWU5
NWI4MyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
LmMKPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMKPiBAQCAt
Njg3LDYgKzY4NywxMiBAQCB1MzIgaW50ZWxfZHBfZHNjX25lYXJlc3RfdmFsaWRfYnBwKHN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICppOTE1LCB1MzIgYnBwLAo+IHUzMiBwCj4gwqDCoMKgwqDCoMKg
wqDCoC8qIEZyb20gWEVfTFBEIG9ud2FyZHMgd2Ugc3VwcG9ydCBmcm9tIGJwYyB1cHRvIHVuY29t
cHJlc3NlZCBicHAtMSBCUFBzICovCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihp
OTE1KSA+PSAxMykgewo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYml0c19wZXJf
cGl4ZWwgPSBtaW4oYml0c19wZXJfcGl4ZWwsIHBpcGVfYnBwIC0gMSk7Cj4gKwo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAvKiBBY2NvcmRpbmcgdG8gQlNwZWMsIDI3IGlzIHRoZSBt
YXggRFNDIG91dHB1dCBicHAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYml0
c19wZXJfcGl4ZWwgPSBtaW4oYml0c19wZXJfcGl4ZWwsICh1MzIpMjcpOwo+ICsKPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgLyogQWNjb3JkaW5nIHRvIEJTcGVjLCA4IGlzIHRoZSBt
aW4gRFNDIG91dHB1dCBicHAgKi8KPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgYml0
c19wZXJfcGl4ZWwgPSBtYXgoYml0c19wZXJfcGl4ZWwsICh1MzIpOCk7CgpKdXN0IGJlZm9yZSB0
aGlzIGxvb3AsIHRoZXJlIGlzIGNoZWNrIGlmIGlmIChiaXRzX3Blcl9waXhlbCA8IHZhbGlkX2Rz
Y19icHBbMF0pIHRoZW4gaXQgcmV0dXJucyBhcwoidW5zdXBwb3J0ZWQgQlBQIi4gVGhlIHZhbGlk
X2RzY19icHBbMF0gaXMgNi4gU2hvdWxkIHRoaXMgbmVlZCB0byBiZSB1cGRhdGVkIHRvIDggZm9y
IGRpc3BfdmVyID49IDEzCm9ud2FyZD8gUGxlYXNlIGNoZWNrLi4gCgoKUmV2aWV3ZWQtYnk6IFZp
bm9kIEdvdmluZGFwaWxsYWkgPHZpbm9kLmdvdmluZGFwaWxsYWlAaW50ZWwuY29tPgoKCj4gwqDC
oMKgwqDCoMKgwqDCoH0gZWxzZSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAv
KiBGaW5kIHRoZSBuZWFyZXN0IG1hdGNoIGluIHRoZSBhcnJheSBvZiBrbm93biBCUFBzIGZyb20g
VkVTQSAqLwo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZm9yIChpID0gMDsgaSA8
IEFSUkFZX1NJWkUodmFsaWRfZHNjX2JwcCkgLSAxOyBpKyspIHsKPiBAQCAtNzcxLDYgKzc3Nyw5
IEBAIHU4IGludGVsX2RwX2RzY19nZXRfc2xpY2VfY291bnQoc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCwKPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG1pbl9zbGljZV9jb3VudCA9
IERJVl9ST1VORF9VUChtb2RlX2Nsb2NrLAo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgIERQX0RTQ19NQVhfRU5DX1RIUk9VR0hQVVRfMSk7Cj4gwqAKPiArwqDCoMKgwqDCoMKg
wqBpZiAobW9kZV9jbG9jayA+PSAoKGk5MTUtPmRpc3BsYXkuY2RjbGsubWF4X2NkY2xrX2ZyZXEg
KiA4NSkgLyAxMDApKQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBtaW5fc2xpY2Vf
Y291bnQgPSBtYXgobWluX3NsaWNlX2NvdW50LCAodTgpMik7Cj4gKwo+IMKgwqDCoMKgwqDCoMKg
wqBtYXhfc2xpY2Vfd2lkdGggPSBkcm1fZHBfZHNjX3NpbmtfbWF4X3NsaWNlX3dpZHRoKGludGVs
X2RwLT5kc2NfZHBjZCk7Cj4gwqDCoMKgwqDCoMKgwqDCoGlmIChtYXhfc2xpY2Vfd2lkdGggPCBE
UF9EU0NfTUlOX1NMSUNFX1dJRFRIX1ZBTFVFKSB7Cj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLAo+IEBAIC0xNTk3LDE2ICsxNjA2LDggQEAg
aW50IGludGVsX2RwX2RzY19jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
LAo+IMKgwqDCoMKgwqDCoMKgwqAgKiBpcyBncmVhdGVyIHRoYW4gdGhlIG1heGltdW0gQ2RjbG9j
ayBhbmQgaWYgc2xpY2UgY291bnQgaXMgZXZlbgo+IMKgwqDCoMKgwqDCoMKgwqAgKiB0aGVuIHdl
IG5lZWQgdG8gdXNlIDIgVkRTQyBpbnN0YW5jZXMuCj4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+IC3C
oMKgwqDCoMKgwqDCoGlmIChhZGp1c3RlZF9tb2RlLT5jcnRjX2Nsb2NrID4gZGV2X3ByaXYtPmRp
c3BsYXkuY2RjbGsubWF4X2NkY2xrX2ZyZXEgfHwKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGlw
ZV9jb25maWctPmJpZ2pvaW5lcl9waXBlcykgewo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBpZiAocGlwZV9jb25maWctPmRzYy5zbGljZV9jb3VudCA+IDEpIHsKPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBpcGVfY29uZmlnLT5kc2MuZHNj
X3NwbGl0ID0gdHJ1ZTsKPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgfSBlbHNlIHsK
PiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGRybV9kYmdf
a21zKCZkZXZfcHJpdi0+ZHJtLAo+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiQ2Fubm90IHNwbGl0IHN0cmVhbSB0
byB1c2UgMiBWRFNDIGluc3RhbmNlc1xuIik7Cj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gLUVJTlZBTDsKPiAtwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgfQo+IC3CoMKgwqDCoMKgwqDCoH0KPiArwqDCoMKgwqDCoMKgwqBpZiAocGlw
ZV9jb25maWctPmJpZ2pvaW5lcl9waXBlcyB8fCBwaXBlX2NvbmZpZy0+ZHNjLnNsaWNlX2NvdW50
ID4gMSkKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcGlwZV9jb25maWctPmRzYy5k
c2Nfc3BsaXQgPSB0cnVlOwo+IMKgCj4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGludGVsX2RwX2Rz
Y19jb21wdXRlX3BhcmFtcygmZGlnX3BvcnQtPmJhc2UsIHBpcGVfY29uZmlnKTsKPiDCoMKgwqDC
oMKgwqDCoMKgaWYgKHJldCA8IDApIHsKCg==
