Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDF1987A6F6
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Mar 2024 12:15:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65AAB10F74D;
	Wed, 13 Mar 2024 11:15:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O1MWVVT+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B4F010F74D
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Mar 2024 11:15:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710328531; x=1741864531;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=B/7eb4MnGA169h8Or2eNJXxe2fWzXKC9wrWjRhtR8ZI=;
 b=O1MWVVT+CXyhkHNnKrtcRp0VBO0m80Z60zN2QPgwNz0VCre5KlhDe1T3
 Q+yIgoL+2lzxeGqtNMzwytX/bwxifYUMA707W3k6uZpKAxyCDanRctOtZ
 SzYXO1HuZwyzf2qmik6wZqXser/6pW2bbPo7znMoqGaC7xfWDeSv44xZ3
 evhl1iclRynEVmTf6YafbkUAyh7YqDHHXusymLldVTcMujfBXYKXf9HRh
 FAVNvPaKnsOkMPfVL785m3Fu7bLMZa599gJWV0wdxCqJtue0mKMsV2T4Z
 2opvClp0iohhCPAq84CVe3oI0ltvtEe/pd2965Nb70GHxOaV/7e7xsdVE w==;
X-IronPort-AV: E=McAfee;i="6600,9927,11011"; a="5015524"
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; 
   d="scan'208";a="5015524"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2024 04:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,122,1708416000"; d="scan'208";a="42882273"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Mar 2024 04:15:31 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 04:15:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 13 Mar 2024 04:15:30 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 13 Mar 2024 04:15:30 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 13 Mar 2024 04:15:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LfxWsD4298YqdYDMDJjtcVzza/0LqbNkdLipFcXVOv03e6ukDEnIXPbejBZyPsoACex/NBpQv4OifpD3K5zjgOcnhjTfe6ztERsmY4XT/uOpx94wJlG3e1Bxe1N6EY1QhXlJN9haibafAs2ovCYsLYbbs5xFlFutCxHhLvCGb6ntYcJzudrhnbKEDXBAINZdc7/iD2KIsZL/HSFPay0PxMR+iVCMUVOoJZB0MFJLNkDLhAeUPxslBaxCywKgWK9HoBCUYaxypkiTgFvUKA/LYvItiU6t9rn1vvgPlSTKeM59xL6SFzNrY7fuibvsfn6V7X0GnBwAQ35Z7unYrt5zrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B/7eb4MnGA169h8Or2eNJXxe2fWzXKC9wrWjRhtR8ZI=;
 b=TTr3jvXaMeVBby9Bo29Z7tM42cXJsaRDJWP7CUY+FMja9z0MO42baaES3L1pIDG7wjFHGCRC/4fNDYRcKUdX6E8lMYt1RwdZs4RuDVN6YcHs6cNqoYfufdknpqCPP3THaUeKU6lwT22BnSrxZfOq0fByVZkhnpUmxi2oVousOV+Q7fpKz6sRU0+EXwOmulYQm86994EOOIBvN0sPEkD61Ue17I8bpZYA8gkHUIR7DFmeMybW2VQnNKYSZzFnGMsZLWMn6gWb8Y1xaEpWtSea7i5rETN8eaLrludfcIfndNlw5DKlbzlJCiAnC2m5CHr/9CoUUcuX6mepZZbGByIZ5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by CY5PR11MB6236.namprd11.prod.outlook.com (2603:10b6:930:23::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Wed, 13 Mar
 2024 11:15:09 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::8970:61a2:f00d:b23f%4]) with mapi id 15.20.7386.017; Wed, 13 Mar 2024
 11:15:06 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: =?utf-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 5/6] drm/i915/psr: Enable ALPM for eDP Panel replay
Thread-Topic: [PATCH v3 5/6] drm/i915/psr: Enable ALPM for eDP Panel replay
Thread-Index: AQHab7NynUHrxNyOhUG8+4Iw5/LmSrE1jNxA
Date: Wed, 13 Mar 2024 11:15:06 +0000
Message-ID: <PH7PR11MB5981C3C4C13015B5E5692DBCF92A2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
 <20240306104513.2129442-6-jouni.hogander@intel.com>
In-Reply-To: <20240306104513.2129442-6-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|CY5PR11MB6236:EE_
x-ms-office365-filtering-correlation-id: 60b8d40c-75f4-456e-3057-08dc434ed666
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hWhX++L/FCIzOyGr2BJDJVWgYI3QeOwSBI75Y9jTVSwAsAzVKq+j/Sz1w740XdN7vvK97s7os2IZp03ut4nyt4eQlw5Gx6Ub5mi+sYmML+27LHJTLqbmg1HAHj+qhsMlylkabqBeGP0jjbvSKtUmhfIGJVOZP+f1Ou1kRqn1rmwUPRatLPgqvbu/8Chw/pZq1kjfYP9AAGxOP/d5x8rODnaq9zuxMSq5lWG9iseT5I0nZ7SRjKngb4zGQVBSUTCUggL6zW1+SI/rBmXLHoA8L97Uzy/5Qzp7+XInEDamx4DqTtLwOE1xTEPBtCsBPiAgj0Jt9NBis9iCEvqfB2mQfZGYJ43Ypwi8lf3wNEtC9I0y/5FUd1FA+KOhqvL9OBu64Lj8ATFJ86qP2fW9XWHgeuqRxDYuG6cAkHIWdV3ukml1DXvCBMFttfSYw0/crB52seS72mAyl913XYOQ4K03OYQ6htRcCSMuS7IVmZQKU8ADZqRr2NbLnOYcA+GT+EjUhKOm+/EDCSoZlYS4DvYyFmdE/nCCuaKYDRVY3YEDTUc/qRjBUB3lcXiHo2pQXcvaFG2wowox9hthfKylxkaZ73962oSeL9oii20C5RJUQJXwlqpiErke2FXLlLVf45RWHInigyJBmn4v3BM/GZI8qFTe5j28oE7K95aQUM08XwgXjlqyZBvfBbbIPsgSJ6UXXiP3a5TgXlU+FAM/iXFyIVBykEJBQwjC7CEodhMkffc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K05ycU5XdXJpajlBc0Nka09aU2FrdVFaRkJRT0JEbDY4YzhJckcwMTJCK052?=
 =?utf-8?B?SXZBclRvKzNYYXVPNnNvS3FWSG5weHdPeTZHa21qNDc2anZUTVh3RFVkU0Nk?=
 =?utf-8?B?UjQ0b1hqenlnbFIreTA4aVZjMGQ0MDhKZTV0TjRLVkRFOExsdDlzb0RuKzdo?=
 =?utf-8?B?OUpEZjYrdEJkVVRhT3Y2OHpRUHFIRk40MVVYVDJyNUJGeVZ2blVRMVoyYmlq?=
 =?utf-8?B?YTE4ZEdtZmt0TjdaMnJHNnpySUNycXFxbHhtWXR4Z2ViWkkyYktFbUpLenRF?=
 =?utf-8?B?eE10MjRkaHZzMWNKN1hhR0h0ckRDbC9tZmJ2eXEyWS9ESFJoTGNDV2V0WjR3?=
 =?utf-8?B?aDdZU3AxUjhnVFluRkVrTE9UNExTSGVyZkJQQ2E2WVB0VVZtTlYvNm9xdDF6?=
 =?utf-8?B?NTJkVTVrL0hiOFJwcmsweU5oc05hb2FjY3I0OEtsQ1ZURW1DMnEydStacXlS?=
 =?utf-8?B?N25GaHpibG94ZHVWdFRDemRNSlk1ZU1EZzBVSjdiWWp2Z20vSnZBazRWMThm?=
 =?utf-8?B?L2dXc0dlSGx3cU53R3BwNlBCUWk0SUFUaks3OWhNNWVrTkVvWXk0TlprUUVo?=
 =?utf-8?B?TUZ3RjkvR3pOSjErUEd5bCtzTkVEMkpSYzJmcnVZaEhFeWhwUitYQS9mckFv?=
 =?utf-8?B?TWVablZvNi81Y3Jocm1kZFhCTGk1MXlGdC9oUXZ2cFFML2ZwU1BsOGNYdmVY?=
 =?utf-8?B?eFJpUFNxaWd4ZDE3cHk2L0pjWG5LQlg3WURCODJVN0pPeDVENlBIN3NudHFP?=
 =?utf-8?B?V2VNdnV0SkphVXliN1F0UEcra1drQVp2VG9IZ2tNc3MwS1h2RWdLY2NHU3Fz?=
 =?utf-8?B?NVBEakc5THliNGhVbDc4RzhRcU9aaXZKNFZWZ29xcGNyemVpcmhubXBBN1dm?=
 =?utf-8?B?V1BjRVBPcnJES3NPOHFJUEhJd1U0bHhDZVVsWUNOeGhyd3QzYzQvUzk3L0JC?=
 =?utf-8?B?aHJKSVZ5U2l4RjVpY3dXSnBNeDZzOHZTL3RvUUhleVcvY0hvTm9WVUs1OVl0?=
 =?utf-8?B?M0J2dEdJSmwyVG5pcmxCNWJyZlExUzYrVGZmNFlvLzY1YzVTTWVwUTg0QmlL?=
 =?utf-8?B?WjV6N0pYSzdJNWl0SFhiTzhkWVgvdUlWOEpDTU5DVHA0VGNCdlhsOXVMVUZI?=
 =?utf-8?B?YmxoVmJMV2lQUWFGK1cyZ29ORHVyUHI2Ky9uZlFqUTFmL3FMVXFISDNkUkVU?=
 =?utf-8?B?VnpMalZBekREbXdmajNMQWFFZHNRNzVFY3h1RlZQOFQycEFNU3lxNEk3UHBa?=
 =?utf-8?B?c2pyR3Q5c3BMd0h1ME0yMWR1MXRsZ0RiQTE5SXFwMVV4QitqR2VQcHVvVTRV?=
 =?utf-8?B?aEx1amdLS0FycXRtVHVGUHBlSnBjMjZHbVUxeDVOWmhrQTd0am42enVKc1N5?=
 =?utf-8?B?cDJBaks2NGUrZ0dTZzkySVcvNXpVVE1wQkhadWwxbHFzRzBYMWtiSGNTaEtE?=
 =?utf-8?B?akg3aDhkZWhFWTlOYy9Rb09GaGVmNGdHMjNoQnc2SzZCTWxkT05CeklGZUhM?=
 =?utf-8?B?RnBORUQ5blRZbjJKbzBnUTV6dlFRUkN1NjRsUkR5NVZrbjZRMm9Ca3hLTVhx?=
 =?utf-8?B?TzM5SzlXaFZwbXV3RFBhZjMzTEtqblNDWGNTZVJadzU5eUpOdWZ0UjdHczF4?=
 =?utf-8?B?R3hjQ1UvMDRMQ3VXenlZSWJMMHpVZSsvRy90NU5ZNkhlUWEzUG1vSnZJc3lP?=
 =?utf-8?B?K1dncFljeHBrVnJESUUxNXlRWTFZcEo5VjY0MzdFN2llTy9HTWRCUFY0a1pY?=
 =?utf-8?B?N1hBZ1hFNDdEWjlyTEZDQ1BLY0w2V0g4dkJnZW52aTdQVWQyejFTczJWbUZL?=
 =?utf-8?B?YklTOEFzVHVYSTU1bUpScWxGRlFhRnBnL3B0OHhmWitHNUVPbkQxaFRTcGVC?=
 =?utf-8?B?ZWxZSnUrMTdTd0NYRm1mS0Y5WlpSeHN5ZEhNb3FZNHNXSjFzTE1vMmJHT25S?=
 =?utf-8?B?cTJTZ3ZxWE8zWjJVRnF1YlIwdGMwam5tY3VpS1hsNHVNUnhkNlpCb29HTGJN?=
 =?utf-8?B?aGt0QnFJVklDVUFjSDJxTE9zVTlORGd4clJ0NEs1VVIyTTVyZGY0U3ZFekZm?=
 =?utf-8?B?cjBOOG94MUs0U3c0cEsyNTNYYVZ5Z3JBK3RrdjB0MkxiN1JxNnV3UDdhVm9t?=
 =?utf-8?Q?NcgIPujqHMHOrFkmWkoIXoXb5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60b8d40c-75f4-456e-3057-08dc434ed666
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2024 11:15:06.2730 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pr0ryvzU9qtkXmq/KErnNdlZErBPLftAAAgAzwizfYl9Rlnf6ujD58icJR+yovxXTRoBS0k+ytgE4ApnngNM0Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6236
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggNiwg
MjAyNCA0OjE1IFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPjsgTWFubmEs
IEFuaW1lc2gNCj4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgTXVydGh5LCBBcnVuIFIgPGFy
dW4uci5tdXJ0aHlAaW50ZWwuY29tPjsNCj4gSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2MyA1LzZdIGRybS9pOTE1L3BzcjogRW5h
YmxlIEFMUE0gZm9yIGVEUCBQYW5lbCByZXBsYXkNCj4gDQo+IEVuYWJsZSBBTFBNIEFVWC1MZXNz
IGZvciBQYW5lbCBSZXBsYXkgZURQLiBBbHNvIHdyaXRlIGFsbCBjYWxjdWxhdGVkIEFVWC0NCj4g
TGVzcyBjb25maWd1cmF0aW9uIHZhbHVlcyBhY2NvcmRpbmdseS4NCj4gDQo+IEJzcGVjOiA3MTQ3
Nw0KPiANCj4gdjM6DQo+ICAgLSBkbyBub3QgdXNlIGFscG1fY3RsIGFzIHVuaW5pdGlhbGl6ZWQg
dmFyaWFibGUNCj4gdjI6DQo+ICAgLSBkbyBub3Qgc2V0IEFVWC1XYWtlIHJlbGF0ZWQgYml0cyBm
b3IgQVVYLUxlc3MgY2FzZQ0KPiAgIC0gZHJvcCBzd2l0Y2ggdG8gYWN0aXZlIGxhdGVuY3kNCj4g
ICAtIGFkZCBTTEVFUF9IT0xEX1RJTUVfNTBfU1lNQk9MUw0KPiAgIC0gYWRkIFBPUlRfQUxQTV9D
VExfTUFYX1BIWV9TV0lOR19IT0xEDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgNDIgKysrKysrKysrKysrKysrKysrKysrLS0tDQo+
ICAxIGZpbGUgY2hhbmdlZCwgMzggaW5zZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBpbmRleCA3Mzhl
YTYyM2EzOTUuLjRjZDJiYWQ1MjQxZiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNjk3LDE0ICsxNjk3LDM5IEBAIHN0YXRpYyB2b2lkIGxu
bF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHANCj4gKmludGVsX2RwKQ0KPiAgCXN0cnVj
dCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IGRwX3RvX2k5MTUoaW50ZWxfZHApOw0KPiAg
CWVudW0gdHJhbnNjb2RlciBjcHVfdHJhbnNjb2RlciA9IGludGVsX2RwLT5wc3IudHJhbnNjb2Rl
cjsNCj4gIAlzdHJ1Y3QgaW50ZWxfcHNyICpwc3IgPSAmaW50ZWxfZHAtPnBzcjsNCj4gKwl1MzIg
YWxwbV9jdGw7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJpdikgPCAyMCkNCj4gIAkJ
cmV0dXJuOw0KPiANCj4gLQlpbnRlbF9kZV93cml0ZShkZXZfcHJpdiwgQUxQTV9DVEwoY3B1X3Ry
YW5zY29kZXIpLA0KPiAtCQkgICAgICAgQUxQTV9DVExfRVhURU5ERURfRkFTVF9XQUtFX0VOQUJM
RSB8DQo+IC0JCSAgICAgICBBTFBNX0NUTF9BTFBNX0VOVFJZX0NIRUNLKHBzci0NCj4gPmFscG1f
cGFyYW1ldGVycy5jaGVja19lbnRyeV9saW5lcykgfA0KPiAtCQkgICAgICAgQUxQTV9DVExfRVhU
RU5ERURfRkFTVF9XQUtFX1RJTUUocHNyLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9s
aW5lcykpOw0KPiArCWlmIChpbnRlbF9kcC0+cHNyLnBhbmVsX3JlcGxheV9lbmFibGVkICYmDQo+
IGludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpIHsNCj4gKwkJYWxwbV9jdGwgPSBBTFBNX0NUTF9B
TFBNX0VOQUJMRSB8DQo+ICsJCQlBTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSB8DQo+ICsN
Cj4gCUFMUE1fQ1RMX0FVWF9MRVNTX1NMRUVQX0hPTERfVElNRV81MF9TWU1CT0xTOw0KPiArDQo+
ICsJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LCBQT1JUX0FMUE1fQ1RMKGNwdV90cmFuc2NvZGVy
KSwNCj4gKwkJCSAgICAgICBQT1JUX0FMUE1fQ1RMX0FMUE1fQVVYX0xFU1NfRU5BQkxFIHwNCg0K
R29vZCB0byBhZGQgY29kZS1jb21tZW50cyB3aHkgYXV4LWxlc3MgYWxwbSBpcyBlbmFibGVkIHdp
dGhvdXQgY2hlY2tpbmcgcGFuZWwgY2FwYWJpbGl0eS4NCg0KU2FtZSBmb3IgYmVsb3cgd2hlcmV2
ZXIgd2UgYXJlIHNldHRpbmcgYml0IGZvciBhdXgtbGVzcyBhbHBtLg0KDQpSZWdhcmRzLA0KQW5p
bWVzaA0KIA0KPiArCQkJICAgICAgIFBPUlRfQUxQTV9DVExfTUFYX1BIWV9TV0lOR19TRVRVUCgx
NSkgfA0KPiArCQkJICAgICAgIFBPUlRfQUxQTV9DVExfTUFYX1BIWV9TV0lOR19IT0xEKDApIHwN
Cj4gKwkJCSAgICAgICBQT1JUX0FMUE1fQ1RMX1NJTEVOQ0VfUEVSSU9EKA0KPiArCQkJCSAgICAg
ICBwc3ItDQo+ID5hbHBtX3BhcmFtZXRlcnMuc2lsZW5jZV9wZXJpb2Rfc3ltX2Nsb2NrcykpOw0K
PiArDQo+ICsJCWludGVsX2RlX3dyaXRlKGRldl9wcml2LA0KPiBQT1JUX0FMUE1fTEZQU19DVEwo
Y3B1X3RyYW5zY29kZXIpLA0KPiArCQkJICAgICAgIFBPUlRfQUxQTV9MRlBTX0NUTF9MRlBTX0NZ
Q0xFX0NPVU5UKDEwKSB8DQo+ICsNCj4gUE9SVF9BTFBNX0xGUFNfQ1RMX0xGUFNfSEFMRl9DWUNM
RV9EVVJBVElPTigNCj4gKwkJCQkgICAgICAgcHNyLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmxmcHNf
aGFsZl9jeWNsZV9udW1fb2Zfc3ltcykgfA0KPiArDQo+IFBPUlRfQUxQTV9MRlBTX0NUTF9GSVJT
VF9MRlBTX0hBTEZfQ1lDTEVfRFVSQVRJT04oDQo+ICsJCQkJICAgICAgIHBzci0NCj4gPmFscG1f
cGFyYW1ldGVycy5sZnBzX2hhbGZfY3ljbGVfbnVtX29mX3N5bXMpIHwNCj4gKw0KPiBQT1JUX0FM
UE1fTEZQU19DVExfTEFTVF9MRlBTX0hBTEZfQ1lDTEVfRFVSQVRJT04oDQo+ICsJCQkJICAgICAg
IHBzci0NCj4gPmFscG1fcGFyYW1ldGVycy5sZnBzX2hhbGZfY3ljbGVfbnVtX29mX3N5bXMpKTsN
Cj4gKwl9IGVsc2Ugew0KPiArCQlhbHBtX2N0bCA9IEFMUE1fQ1RMX0VYVEVOREVEX0ZBU1RfV0FL
RV9FTkFCTEUgfA0KPiArCQkJQUxQTV9DVExfRVhURU5ERURfRkFTVF9XQUtFX1RJTUUocHNyLQ0K
PiA+YWxwbV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9saW5lcyk7DQo+ICsJfQ0KPiArDQo+ICsJYWxw
bV9jdGwgfD0NCj4gK0FMUE1fQ1RMX0FMUE1fRU5UUllfQ0hFQ0socHNyLQ0KPiA+YWxwbV9wYXJh
bWV0ZXJzLmNoZWNrX2VudHJ5X2xpbmVzKTsNCj4gKw0KPiArCWludGVsX2RlX3dyaXRlKGRldl9w
cml2LCBBTFBNX0NUTChjcHVfdHJhbnNjb2RlciksIGFscG1fY3RsKTsNCj4gIH0NCj4gDQo+ICBz
dGF0aWMgdm9pZCBpbnRlbF9wc3JfZW5hYmxlX3NvdXJjZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVs
X2RwLCBAQCAtMTk3NSw2DQo+ICsyMDAwLDE1IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNh
YmxlX2xvY2tlZChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiANCj4gIAlpbnRlbF9zbnBz
X3BoeV91cGRhdGVfcHNyX3Bvd2VyX3N0YXRlKGRldl9wcml2LCBwaHksIGZhbHNlKTsNCj4gDQo+
ICsJaWYgKGludGVsX2RwLT5wc3IucGFuZWxfcmVwbGF5X2VuYWJsZWQgJiYNCj4gaW50ZWxfZHBf
aXNfZWRwKGludGVsX2RwKSkgew0KPiArCQlpbnRlbF9kZV9ybXcoZGV2X3ByaXYsIEFMUE1fQ1RM
KGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJCSAgICAgQUxQTV9DVExfQUxQTV9FTkFCTEUgfA0KPiAr
CQkJICAgICBBTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwgMCk7DQo+ICsNCj4gKwkJaW50
ZWxfZGVfcm13KGRldl9wcml2LCBQT1JUX0FMUE1fQ1RMKGNwdV90cmFuc2NvZGVyKSwNCj4gKwkJ
CSAgICAgUE9SVF9BTFBNX0NUTF9BTFBNX0FVWF9MRVNTX0VOQUJMRSwgMCk7DQo+ICsJfQ0KPiAr
DQo+ICAJLyogRGlzYWJsZSBQU1Igb24gU2luayAqLw0KPiAgCWRybV9kcF9kcGNkX3dyaXRlYigm
aW50ZWxfZHAtPmF1eCwgRFBfUFNSX0VOX0NGRywgMCk7DQo+IA0KPiAtLQ0KPiAyLjM0LjENCg0K
