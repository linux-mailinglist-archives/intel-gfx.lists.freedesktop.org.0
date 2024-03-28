Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AFE888FAE8
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 10:16:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C5ED112391;
	Thu, 28 Mar 2024 09:16:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NfpZju4S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7445C112391
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 09:16:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711617391; x=1743153391;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=fhGy4yclOhLyNsalBxUW1koVRMSD5a3ljBvaPmosDD8=;
 b=NfpZju4SodVXIA7kR2FV76yydaTlwq25+SnHINX/islADUNZffXPACp1
 A0zdeMlkYpkb2gU2DBf1YOj4s6V/UnopKYO340v+2wW9QSa7RrJvb3G1p
 u46bXftmSG4DqL+ma/JffeiXDrhP0u6QnpZxy3hQ8E3D12h51h1b7+AhX
 HF6eUZmcj1LU8PINhmEK1D4A7W9JPNREMcOrE5wtPyxULGzk6QwCJeJqb
 3hfMLKs+c0hUVB7EsMdoyUYA9jzAX94ELjp+ROvv3mKuVUNkXXe4QydVk
 BjaJGaXrzZJHdJ+XevCgFQJdoZjuA0H+mIc6u1kRukuoAmTzjd79hYW57 g==;
X-CSE-ConnectionGUID: md9OJvjPTkONbzdDtb7/lA==
X-CSE-MsgGUID: ve9VShtBR5uRMotPCRRnvQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="10566963"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="10566963"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 02:16:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21248407"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 02:16:30 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 02:16:29 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 02:16:29 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 02:16:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDWqICFHLBhhhvIg5ShXOY2QYXG2gQUhXN8pHfoNtHTWNjrUKFHCLHet0D3PURGodmY5e41jznbvcJUReSBld5UjRkdwJHi/HRTRD0q7KK+5NLG6QwxmtUG9uj7YgaDaATZbBe9TvO02UfN7dd9Lr8UDCvnthCIrbi0pYdYbfK2JQvqvvpmkIfeIpkNdAZViGtVTwBxiUcr/kEssxRLDE1MTQBua5JIGRYIClTcXzE49O89HyQYDIf+Igj3xYstE72kNtJHy/FbU6Fj3wioS59fhTHBkVR7sYDppOgcIw+EHJ8JSIwDFH90oe34qf1vsYtGrMmEAt5acCRA5A89Lkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fhGy4yclOhLyNsalBxUW1koVRMSD5a3ljBvaPmosDD8=;
 b=VzcE5TOJtDboDXrfTBaGogzvoHPsf3WimEbuHOFdzjCwl4/f3QwFQQ8ZpotP/AcCCQb2tm9LWk8eTS4bXuu5XMRsHzWnOZHW2UhRyrR3RHc9c0MKviAgckAa9kkclZmDK0tDLvUNy7fX034XspbOmKaAnHz089RqSzOE+BbfABIydtE1UyojzCmdGUwVHM2T9Uk7cE6qw0tz58wuUfyi+g30u3nTEKvJOVHlLqp4x0MRxGYkZqlttIF7qLRaveRDJ/sv5ZW+6Tr4t8slkxEqApBjWbH2pZoEhVoK8sh1Yo9jMgcZZAc/gnTPaSvzGkOb+4LCdM33W64PC9Gt6sPnJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA0PR11MB8419.namprd11.prod.outlook.com (2603:10b6:208:48b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 09:16:06 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9ddd:359e:6b45:833a%5]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 09:16:06 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 01/13] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Thread-Topic: [PATCH 01/13] drm/i915/cdclk: Fix CDCLK programming order when
 pipes are active
Thread-Index: AQHagG6lGjFNZH/j6EaQsV+t9N+e77FMzl4A
Date: Thu, 28 Mar 2024 09:16:06 +0000
Message-ID: <IA0PR11MB73070772669115D9CF4BA368BA3B2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|IA0PR11MB8419:EE_
x-ms-office365-filtering-correlation-id: d03893cf-3986-4c6e-7a02-08dc4f07b2be
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: p1ZLbUIj4ofFtZEUDUf/z2VrnvAWrV0fzi42D5zwUQWZ1/a+ycUu5i/YBiVwyp9Cadj1guOzLw0HM58of/S/Hj7b4vSs+v72K33Bwmtr3Ohyv39BRGZFFmQH7BiDzBMPtM/jzfwJurLVTpqKPDsqMcKeuf7bbaBcLNRakBly+HDRhd175AYTze8xuzHoREBNt7/RsjJNJ9LItClz634OtCeVXWNLFOUpxlrqHaDcoTNNlfncssjisIqM4iiu8jSFQNhk8CkOp6ENZmu83qOFN044Tvf1wdWOMnvNf0aeb+JDMHyjFYACcg+5C9C7cDmpTOdxuqQel4faZR1R26zlK6bQdGjlz+dE0siLjzK1nBv4SBY2bNktuvTZXbKtYEpi4qg7qVpR/2u6eelo4E5zUA4GF+MwXMEh9cyNXubConfTo4LaEHfgUtzxwwkL2SRgZZB0BXV69lZFGbilUa6fXbv8BALP56/cKR9KZkLCqPxcLTaa+WWO9C282wj+F3OXw1GgGdrwi7oyejdYucdemNoA++Uw7yXW+nnUM5xfXoAE/GAEkKvPSzENDkWDuRuVZryvR7yKTvQLiSTxu6j6g81O86F25LLn6WmZwhZaAp133CpNf/t6JEN+vUZrgwhuXgTjbWLyyX9ZJTsbjgHgP5SzFEbnkpT2eaVgoDxTJWs0NQreUmez6nMvK+d94nezhQ+9Ne6+s70dj10g7rtPwQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aVlVQXphK2VzbHVKSEtpeEdXaFVKVTA3OVhUc0ZGLzVZMkdmc0FETVZOcmdQ?=
 =?utf-8?B?dVM3N1BBYi80WHkxcDdieEtMdTJKTDhEdXBHQk9yTmlyZVhDR3BkZm5OeVdN?=
 =?utf-8?B?SytjbkFxb3d5MG85MkVKOTNoV0E3NUlHbVRpNzd0dXc0N2VhOTU3Q0I4UGM5?=
 =?utf-8?B?bXpMaytWb1Q4RDZ0OEZlL3JBYm1ZQlpBT3licDFUUEI0eVhub1RhcmJCMnhQ?=
 =?utf-8?B?bUc3cDR4bE9icHkvQVhlaGRVUnl0aTVtRm9iOVYrS2NiR1hjaHpqVVdnREVH?=
 =?utf-8?B?ZDl3d04vMHBCY01uOVJlKzZlNzFCUUNrYzRIMis5OVBhRERPN0xVeGZrSDAy?=
 =?utf-8?B?aWVMODdJbHFyQmwxbU1BVzVYMDk4VDlWaUpualNUYmhjWkRZdTJRbUs5ZnRa?=
 =?utf-8?B?bW9xOU54MFVOUVQ2VHRXczlNMmhUVHVzb0traUpsbVhqTG5GUDdaeFdoMC9t?=
 =?utf-8?B?Ykp1cDRXTzI1TkNaK2dxVklqbWZzK1FsZHFXSXVPZTFIcnFoMktScUlHVEtl?=
 =?utf-8?B?R1pTc0NNLytBZHlrYWtIK0VZd2FsbjRyd1JJb0tFSUptcnEwZTZVelBsNmNl?=
 =?utf-8?B?ckJVL3BWSWtUUkQ5UTM5R29jMjFOR3k2REMrUDRUUExMZEx1M2xsWXljcUJr?=
 =?utf-8?B?TWU1NVp4OUVpdnEyYkk1QURaRnZQZU9QT0t1Q1NrRnZMZitVby9JWG9YQXZp?=
 =?utf-8?B?eVdpbnY5bHMzYVo1QWkzTVlNL3RRYkR5RFhXUmQ4LzQ3Ym9ZTzViQXUwSi9n?=
 =?utf-8?B?emdkc1k2eFFyczhEekRXZmRrWHp1WE0xamxLdDM2MFZIc1dnUGsxU21DK0l3?=
 =?utf-8?B?eHMvamhxUDRBTTZkeGUvcXpub1oxTkxYeUZmTlYvaUlEc01IT0RLeC9rM3JE?=
 =?utf-8?B?dHh6UUZ0azdFVzVSamU5NEV0RWxnNjVDcmg4MWl3cmk2end0SzMzdFlDQ0J0?=
 =?utf-8?B?SXRDR0VuS1pzRzBnQUdOUTJmeUhvT1dKZDVERm9FRE5LU0NOc04zcm5wNU5l?=
 =?utf-8?B?cU9KM0gyMmMxa09rb2gvczY3V2FkNHpRRGJyY0E2V3FBRkdmVGM1R1lMcmNa?=
 =?utf-8?B?Vm9OODkvSERrM056UWZ5REtJNEhzVWpSeUUrN1NIeFY5UWNCVU5WL0hvdDdN?=
 =?utf-8?B?TUJ6Vm1xWmMzeURIaFR0MU9YY1hiQ1ZRWHdpQ3N1SGI2eUlXTldYRDlUNDAw?=
 =?utf-8?B?MU15ZFlwRHp6dXVRaEhJTiszYWYxc0pFVDB2dDZMZFVLbTFrYU8ra09ta0M4?=
 =?utf-8?B?NzBVK0cwS3ZLaCt5ZTVWbVltbXVtd2UrRCtWWVh6cU5SUW1HSVo2bVc3UU9q?=
 =?utf-8?B?ZjJDei9MU0thZlphRGo3cjdmWS9zN1RmOUdRVklOU3NlTVIrUjk2b2FyL3Yz?=
 =?utf-8?B?WUVOdzAyMFBsYXhxb0c3bW5KNDlHU0lkZkFrT0xnTVFhNjcvNUwxajlBT3M2?=
 =?utf-8?B?UEtlQXFqUU9hUHNueWJFd2NSK1JaSGpyOTdVeUs3d1Z2R3dtTGZicXg1QzI5?=
 =?utf-8?B?VmE2aE9oaEdGTjV6TVVDUVJudGlmUEZpbVdtU0xCYmRWSS85dDdNdTBObkc4?=
 =?utf-8?B?VUorSWEwM2NITjVFNDFHTUk1Vlp1WjBraTd1QU01b0R2OGRwKzhVb3hpb25F?=
 =?utf-8?B?Mi83SkxxRnU5USs4bFBmRmF5NjUxZHZRVDFDNlA2RituYldRYUxqRUxXQ1Bs?=
 =?utf-8?B?cmF6bFlLTHlpQTNiZ1E5TE92NC85NG4zTHVJWFFWLzJOSE5JVFI2VHNlVDhY?=
 =?utf-8?B?NVZEeVZrZEFzNzRyWVZUUnJZQUlwb01qSnVUcXZyMTVseTl6NnptTHNDSmRi?=
 =?utf-8?B?S3hsVmlDQmdWb0FCbExYdTdTU2pqRW9zdDVkWStiQW8xTXFvOGp0K2lYRmx4?=
 =?utf-8?B?eDA4dFVOU2c0RHFFZmgvVVlNYnVNVGJlOGNMRUNuUGZiUTNGNzM1MnFYaC90?=
 =?utf-8?B?dzl6dUpRYTUyOVNVbXFzYzRMS1d3TkVpdVE4UU1jWFBjTVZ0R1B2VzE1ZFg1?=
 =?utf-8?B?WElxV1VyeEc0K3VPbnpIdU8rSmFWTzdwYmhJWWJiWmJkaDYweGNKUFBvUU1M?=
 =?utf-8?B?Sk5sL3daMmZ6RmpXVUVydWdGa0dMMy9sWUNTNEV2T2l5Wk9oVEZ6TzlsZytz?=
 =?utf-8?B?d3oreThLSHRna1RVRm9lUzZMVDJqK3lyamQwNDZEckJjeGo1ZHd6bzBVNnMy?=
 =?utf-8?Q?5AL6RLD8e8k87GiXEd6KlBk5fTD/VAC2e5MJaXKNr4KK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d03893cf-3986-4c6e-7a02-08dc4f07b2be
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 09:16:06.1608 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tDia8xQM/WYdCMKTfK+CFPv4mfVghg0596U0YDSkJ/9dQXMcpdgObf0c5KsQKIVQKrHZOnwRo9d+U6wT3LYnNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8419
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

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8aW50ZWwt
Z2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUNCj4g
U3lyamFsYQ0KPiBTZW50OiBXZWRuZXNkYXksIE1hcmNoIDI3LCAyMDI0IDExOjE2IFBNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtQQVRDSCAwMS8x
M10gZHJtL2k5MTUvY2RjbGs6IEZpeCBDRENMSyBwcm9ncmFtbWluZyBvcmRlciB3aGVuDQo+IHBp
cGVzIGFyZSBhY3RpdmUNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBDdXJyZW50bHkgd2UgYWx3YXlzIHJlcHJvZ3JhbSBD
RENMSyBmcm9tIHRoZQ0KPiBpbnRlbF9zZXRfY2RjbGtfcHJlX3BsYW5lX3VwZGF0ZSgpIHdoZW4g
dXNpbmcgc3F1YWhzL2NyYXdsLg0KVHlwbyBzcXVhc2hzLT5zcXVhc2gNCg0KPiBUaGUgY29kZSBv
bmx5IHdvcmtzIGNvcnJlY3RseSBmb3IgdGhlIGNkMnggdXBkYXRlIG9yIGZ1bGwgbW9kZXNldCBj
YXNlcywgYW5kIGl0DQo+IHdhcyBzaW1wbHkgbmV2ZXIgdXBkYXRlZCB0byBkZWFsIHdpdGggc3F1
YXNoL2NyYXdsLg0KPiANCj4gSWYgdGhlIENEQ0xLIGZyZXF1ZW5jeSBpcyBpbmNyZWFzaW5nIHdl
IG11c3QgcmVwcm9ncmFtIGl0IGJlZm9yZSB3ZSBkbw0KPiBhbnl0aGluZyBlbHNlIHRoYXQgbWln
aHQgZGVwZW5kIG9uIHRoZSBuZXcgaGlnaGVyIGZyZXF1ZW5jeSwgYW5kIGNvbnZlcnNlbHkNCj4g
d2UgbXVzdCBub3QgZGVjcmVhc2UgdGhlIGZyZXF1ZW5jeSB1bnRpbCBldmVyeXRoaW5nIHRoYXQg
bWlnaHQgc3RpbGwgZGVwZW5kIG9uDQo+IHRoZSBvbGQgaGlnaGVyIGZyZXF1ZW5jeSBoYXMgYmVl
biBkZWFsdCB3aXRoLg0KPiANCj4gU2luY2UgY2RjbGtfc3RhdGUtPnBpcGUgaXMgb25seSByZWxl
dmFudCB3aGVuIGRvaW5nIGEgY2QyeCB1cGRhdGUgd2UgY2FuJ3QgdXNlDQo+IGl0IHRvIGRldGVy
bWluZSB0aGUgY29ycmVjdCBzZXF1ZW5jZSBkdXJpbmcgc3F1YXNoL2NyYXdsLiBUbyB0aGF0IGVu
ZA0KPiBpbnRyb2R1Y2UgY2RjbGtfc3RhdGUtPmRpc2FibGVfcGlwZXMgd2hpY2ggc2ltcGx5IGlu
ZGljYXRlcyB0aGF0IHdlIG11c3QNCj4gcGVyZm9ybSB0aGUgdXBkYXRlIHdoaWxlIHRoZSBwaXBl
cyBhcmUgZGlzYWJsZSAoaWUuIGR1cmluZw0KPiBpbnRlbF9zZXRfY2RjbGtfcHJlX3BsYW5lX3Vw
ZGF0ZSgpKS4gT3RoZXJ3aXNlIHdlIHVzZSB0aGUgc2FtZSBvbGQgdnMuIG5ldw0KPiBDRENMSyBm
cmVxdWVuY3kgY29tcGFyc2lvbmcgYXMgZm9yIGNkMnggdXBkYXRlcy4NCj4gDQo+IFRoZSBvbmx5
IHJlbWFpbmluZyBwcm9ibGVtIGNhc2UgaXMgd2hlbiB0aGUgdm9sdGFnZV9sZXZlbCBuZWVkcyB0
byBpbmNyZWFzZQ0KPiBkdWUgdG8gYSBEREkgcG9ydCwgYnV0IHRoZSBDRENMSyBmcmVxdWVuY3kg
aXMgZGVjcmVhc2luZyAoYW5kIG5vdCBhbGwgcGlwZXMgYXJlDQo+IGJlaW5nIGRpc2FibGVkKS4g
VGhlIGN1cnJlbnQgYXBwcm9hY2ggd2lsbCBub3QgYnVtcCB0aGUgdm9sdGFnZSBsZXZlbCB1cCB1
bnRpbA0KPiBhZnRlciB0aGUgcG9ydCBoYXMgYWxyZWFkeSBiZWVuIGVuYWJsZWQsIHdoaWNoIGlz
IHRvbyBsYXRlLg0KPiBCdXQgd2UnbGwgdGFrZSBjYXJlIG9mIHRoYXQgY2FzZSBzZXBhcmF0ZWx5
Lg0KPiANCj4gdjI6IERvbid0IGJyZWFrIHRoZSAibXVzdCBkaXNhYmxlIHBpcGVzIGNhc2UiDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXgu
aW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
Y2RjbGsuYyB8IDE1ICsrKysrKysrKy0tLS0tLQ0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmggfCAgMyArKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMTIgaW5zZXJ0
aW9ucygrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2NkY2xrLmMNCj4gaW5kZXggMzFhYWE5NzgwZGZjLi42MTk1MjlkYmEwOTUg
MTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NkY2xrLmMNCj4g
QEAgLTI2MDAsNyArMjYwMCw2IEBAIGludGVsX3NldF9jZGNsa19wcmVfcGxhbmVfdXBkYXRlKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0
X29sZF9jZGNsa19zdGF0ZShzdGF0ZSk7DQo+ICAJY29uc3Qgc3RydWN0IGludGVsX2NkY2xrX3N0
YXRlICpuZXdfY2RjbGtfc3RhdGUgPQ0KPiAgCQlpbnRlbF9hdG9taWNfZ2V0X25ld19jZGNsa19z
dGF0ZShzdGF0ZSk7DQo+IC0JZW51bSBwaXBlIHBpcGUgPSBuZXdfY2RjbGtfc3RhdGUtPnBpcGU7
DQpMb29rcyBsaWtlIHRoaXMgY2RjbGtfc3RhdGUtPnBpcGUgaXMgbm90IG1vcmUgdXNlZCBpbiB0
aGUgZHJpdmVyIGFuZCBjYW4gaXQgYmUgcmVtb3ZlZD8NCg0KVGhhbmtzIGFuZCBSZWdhcmRzLA0K
QXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAJaWYgKCFpbnRlbF9j
ZGNsa19jaGFuZ2VkKCZvbGRfY2RjbGtfc3RhdGUtPmFjdHVhbCwNCj4gIAkJCQkgJm5ld19jZGNs
a19zdGF0ZS0+YWN0dWFsKSkNCj4gQEAgLTI2MDksMTEgKzI2MDgsMTIgQEAgaW50ZWxfc2V0X2Nk
Y2xrX3ByZV9wbGFuZV91cGRhdGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUp
DQo+ICAJaWYgKElTX0RHMihpOTE1KSkNCj4gIAkJaW50ZWxfY2RjbGtfcGNvZGVfcHJlX25vdGlm
eShzdGF0ZSk7DQo+IA0KPiAtCWlmIChwaXBlID09IElOVkFMSURfUElQRSB8fA0KPiArCWlmIChu
ZXdfY2RjbGtfc3RhdGUtPmRpc2FibGVfcGlwZXMgfHwNCj4gIAkgICAgb2xkX2NkY2xrX3N0YXRl
LT5hY3R1YWwuY2RjbGsgPD0gbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwuY2RjbGspIHsNCj4gIAkJ
ZHJtX1dBUk5fT04oJmk5MTUtPmRybSwgIW5ld19jZGNsa19zdGF0ZS0NCj4gPmJhc2UuY2hhbmdl
ZCk7DQo+IA0KPiAtCQlpbnRlbF9zZXRfY2RjbGsoaTkxNSwgJm5ld19jZGNsa19zdGF0ZS0+YWN0
dWFsLCBwaXBlKTsNCj4gKwkJaW50ZWxfc2V0X2NkY2xrKGk5MTUsICZuZXdfY2RjbGtfc3RhdGUt
PmFjdHVhbCwNCj4gKwkJCQluZXdfY2RjbGtfc3RhdGUtPnBpcGUpOw0KPiAgCX0NCj4gIH0NCj4g
DQo+IEBAIC0yNjMyLDcgKzI2MzIsNiBAQCBpbnRlbF9zZXRfY2RjbGtfcG9zdF9wbGFuZV91cGRh
dGUoc3RydWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+ICAJCWludGVsX2F0b21p
Y19nZXRfb2xkX2NkY2xrX3N0YXRlKHN0YXRlKTsNCj4gIAljb25zdCBzdHJ1Y3QgaW50ZWxfY2Rj
bGtfc3RhdGUgKm5ld19jZGNsa19zdGF0ZSA9DQo+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X2Nk
Y2xrX3N0YXRlKHN0YXRlKTsNCj4gLQllbnVtIHBpcGUgcGlwZSA9IG5ld19jZGNsa19zdGF0ZS0+
cGlwZTsNCj4gDQo+ICAJaWYgKCFpbnRlbF9jZGNsa19jaGFuZ2VkKCZvbGRfY2RjbGtfc3RhdGUt
PmFjdHVhbCwNCj4gIAkJCQkgJm5ld19jZGNsa19zdGF0ZS0+YWN0dWFsKSkNCj4gQEAgLTI2NDEs
MTEgKzI2NDAsMTIgQEAgaW50ZWxfc2V0X2NkY2xrX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdA0K
PiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCWlmIChJU19ERzIoaTkxNSkpDQo+ICAJ
CWludGVsX2NkY2xrX3Bjb2RlX3Bvc3Rfbm90aWZ5KHN0YXRlKTsNCj4gDQo+IC0JaWYgKHBpcGUg
IT0gSU5WQUxJRF9QSVBFICYmDQo+ICsJaWYgKCFuZXdfY2RjbGtfc3RhdGUtPmRpc2FibGVfcGlw
ZXMgJiYNCj4gIAkgICAgb2xkX2NkY2xrX3N0YXRlLT5hY3R1YWwuY2RjbGsgPiBuZXdfY2RjbGtf
c3RhdGUtPmFjdHVhbC5jZGNsaykgew0KPiAgCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhbmV3
X2NkY2xrX3N0YXRlLQ0KPiA+YmFzZS5jaGFuZ2VkKTsNCj4gDQo+IC0JCWludGVsX3NldF9jZGNs
ayhpOTE1LCAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwsIHBpcGUpOw0KPiArCQlpbnRlbF9zZXRf
Y2RjbGsoaTkxNSwgJm5ld19jZGNsa19zdGF0ZS0+YWN0dWFsLA0KPiArCQkJCW5ld19jZGNsa19z
dGF0ZS0+cGlwZSk7DQo+ICAJfQ0KPiAgfQ0KPiANCj4gQEAgLTMxMjQsNiArMzEyNCw3IEBAIHN0
YXRpYyBzdHJ1Y3QgaW50ZWxfZ2xvYmFsX3N0YXRlDQo+ICppbnRlbF9jZGNsa19kdXBsaWNhdGVf
c3RhdGUoc3RydWN0IGludGVsX2dsb2JhDQo+ICAJCXJldHVybiBOVUxMOw0KPiANCj4gIAljZGNs
a19zdGF0ZS0+cGlwZSA9IElOVkFMSURfUElQRTsNCj4gKwljZGNsa19zdGF0ZS0+ZGlzYWJsZV9w
aXBlcyA9IGZhbHNlOw0KPiANCj4gIAlyZXR1cm4gJmNkY2xrX3N0YXRlLT5iYXNlOw0KPiAgfQ0K
PiBAQCAtMzMxNiw2ICszMzE3LDggQEAgaW50IGludGVsX21vZGVzZXRfY2FsY19jZGNsayhzdHJ1
Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkJaWYgKHJldCkNCj4gIAkJCXJl
dHVybiByZXQ7DQo+IA0KPiArCQluZXdfY2RjbGtfc3RhdGUtPmRpc2FibGVfcGlwZXMgPSB0cnVl
Ow0KPiArDQo+ICAJCWRybV9kYmdfa21zKCZkZXZfcHJpdi0+ZHJtLA0KPiAgCQkJICAgICJNb2Rl
c2V0IHJlcXVpcmVkIGZvciBjZGNsayBjaGFuZ2VcbiIpOw0KPiAgCX0NCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0KPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY2RjbGsuaA0KPiBpbmRleCBiYzhmODZlMjkyZDgu
LjI4NDNmYzA5MTA4NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9jZGNsay5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfY2RjbGsuaA0KPiBAQCAtNTMsNiArNTMsOSBAQCBzdHJ1Y3QgaW50ZWxfY2RjbGtfc3RhdGUg
ew0KPiANCj4gIAkvKiBiaXRtYXNrIG9mIGFjdGl2ZSBwaXBlcyAqLw0KPiAgCXU4IGFjdGl2ZV9w
aXBlczsNCj4gKw0KPiArCS8qIHVwZGF0ZSBjZGNsayB3aXRoIHBpcGVzIGRpc2FibGVkICovDQo+
ICsJYm9vbCBkaXNhYmxlX3BpcGVzOw0KPiAgfTsNCj4gDQo+ICBpbnQgaW50ZWxfY3J0Y19jb21w
dXRlX21pbl9jZGNsayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7
DQo+IC0tDQo+IDIuNDMuMg0KDQo=
