Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F90E6E1372
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 19:25:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3531210E19A;
	Thu, 13 Apr 2023 17:25:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1A43A10E19A
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 17:25:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681406719; x=1712942719;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4J9zSYqLIpl9UOeKgGOg6FkQ1Vuqw0okYDEyM5cptTM=;
 b=hzVos4DTMFiGlkMyWhAQMfI0CUnLC+usAzRDTsrMR4VmroGAbsXyOZsx
 vBbKGT6yIgbWnKjRgV+GOEmUp+ICCGnlh2zH3suC+DZwIa7nWZ6SSCbqA
 jI4iDzFsDDvHPxnu5NdroMS2TUM8FazrfCU/GtrqrnDZN6Qkhr9HSRf5z
 eDPw+DlXI1kKtBbDnz13uPmrYBTW4jwob/1L84n2PeJRTraz301lHw9Hz
 EYBLZEgr2IpADVDbbRkWxuvOBUBsM3mTi0M4lt55e+QgDgVxkCuar7Afj
 e89OrujPKOnR6694BbxcGLEWeoz1ZLEFka+stUz5jC3B8S/3jecZ+3xj7 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="346068484"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="346068484"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 10:25:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="863875071"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="863875071"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 13 Apr 2023 10:25:17 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 10:25:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 10:25:17 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 10:25:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fiYxZoZNCDibUGkPdORWHGS0fCvdQwxkt9ZZbvBtSqeIEqBA/VuIYHwO8FRrxChpXvAOssTQ95dwCDnTDIGnSetpZj2v5X9BuKUxI7G3WBjUHjj447eD2yP+5jzI/n//eF8KAgJs/GTj39iqnS9K4tLC89pGS4FSBLcmz/qByj9Sz9m46OL4Rar+/wHNw06a+1PokNSWxwURUido2lTPKl6Q/Dj0T6AsQ1/xhkStPjAlvb+NmIP4PM0czCKFaltmwM9THeIEsVMx1UmSRXsGoV3zu1as8QH1nDx+MxIk6+MaeH6jbPRSa2Pk2IHUcg7cp6I1vLxWY9b0QKL5eQXQOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4J9zSYqLIpl9UOeKgGOg6FkQ1Vuqw0okYDEyM5cptTM=;
 b=UNjEgq8kUE2L5JVUxfwG+bEKKFCFy8krtGL4/Ix1chhIHAR9Ehj21D4aoLyOWg46XcBMMto6ws9FZO2BWG/XrrsGnrcmVh4XBrx8YuUgnGBcRX/OVQDBrptk/qBUy4+Th8MpZd3dLiZC6ToSDA2DTvu+4KLfBuYD51HgOXej72CzmSPr4dSIlxWoMWZ02x23DWuTRqymJnXd4BUrY13aceYUiqm1JOFYjgFQfvEKzbUZN1oMCXnb45XXCW5T+NL8kKp4pu3ml/1UOTzIJ76F9B9FzuiLon/RUK1cS2TtQAO78LY1hTFT52qzWxvA1Exn2LeRvBYDTBB9axZaNnwv1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by MN6PR11MB8196.namprd11.prod.outlook.com (2603:10b6:208:47b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 17:25:15 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 17:25:15 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915: Evade transcoder's vblank when
 doing seamless M/N changes
Thread-Index: AQHZZx6OHgdLvX5US0qBLoChCHelra8pizzA
Date: Thu, 13 Apr 2023 17:25:14 +0000
Message-ID: <MWHPR11MB1935B230BBFD78658DC32D00B2989@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230404175431.23064-1-ville.syrjala@linux.intel.com>
 <20230404175431.23064-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20230404175431.23064-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|MN6PR11MB8196:EE_
x-ms-office365-filtering-correlation-id: 6c716fc3-e4f7-473e-4d99-08db3c440b4f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M+m1WU941EhdpVUFFmDNywUFSaLfZP44TuVdGLoXbN7HBgr+nMf6u/BaC57Qc5IxylDdE/m6qcAhE6D4mbi6nkB2Cw+AirnRtJ/NiN6aug0UZ4vs5XDYZEJMTwYOr3DTdvexYD5w63yGTOLzQs24pE/3hXyELnA45CQ86Wkl/+XAMnZehSS8f62/T/OyWXOexYdm5MMutONurkA4lTKXYOHbZmnlq8I3T/wBLnuHNlTt8ZvTZCPmHna4BM2dsu79bnSCUE8ZkoVSFfVI1ddNJtJguigE3vWynuLEzhmETV7ptHLqtmhnWIG5NJnesRsUlaBywP0plNoBycQorzVowUR5Bxk901jlbxgQ0+7tB/5OFnsEfT3C02EFPVGQfxrhTlLFowWTClm1Uu8sTnxFCn34HvanUgR6Y176wC28pAnsoa6nKLwnAa2bWWm2p3oqdfeAV+PUZXjFN+jden3kekm9P2AqR5S3qIfufvIJGlSKzGLi9JJjuwIzWG+gVICFeoMqw8X6e4s3YiHtYAiRXhNWNrZML3NztNFVYUjPvjkv9rKNEJRwS6WUVTLRKOrugtlSKXsdGJabQ2kSe+Sof7RwsJXcxzHeM5mM6/PCCdcWzjaG0WjJkWZRjuYgT90e
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(366004)(346002)(376002)(39860400002)(451199021)(33656002)(76116006)(66574015)(83380400001)(26005)(71200400001)(478600001)(186003)(9686003)(55236004)(53546011)(7696005)(6506007)(52536014)(2906002)(38100700002)(38070700005)(122000001)(4326008)(66476007)(66556008)(66946007)(6916009)(82960400001)(41300700001)(66446008)(55016003)(8936002)(86362001)(64756008)(5660300002)(8676002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SXFKQzI3T3pLVTJZcUhKdFZ1TzNhWnJtTjhMc2pMdWpzVFZzYUZPdnZHamsr?=
 =?utf-8?B?Nm9BNkN1eWV6VXZFaXNjYml3QzZaUFNITHFwZjVyYkJCeVdmWkNJb3VRcWJz?=
 =?utf-8?B?YnphZ2FSYk1aOFdHNFg3TGI4VndZOC84TnZGQ0NUcllQNWVrc2svR2lzRWxo?=
 =?utf-8?B?QjRjRmp3K3NPRW9rNWpkRzV3NGwrc2FybDFFQWZiSXFYcW53eXJJcjF1WEtV?=
 =?utf-8?B?b0wxbkVHR0o3MUVzbmM2Ym9PS1NiS0NjckhxaDBHNGgxM2svNmhrbzhtbUEw?=
 =?utf-8?B?T2ZHUjhlUk9XV3M2WmRaNmhaWmxVbS9ZVHFaVG9QSkRCVWVlNkR4WE1CbWMy?=
 =?utf-8?B?cUpZay92bHlZRzdwREpBa3YvTGVKOG04c1hSV2FzQ0Y4NzlJclZXbVVxeEtz?=
 =?utf-8?B?NVZUSTduNzZhTEdOU0dXb0ErWkhBK1kwUXVuODJ6WHZvbkl0K3ZEbkhUSGgx?=
 =?utf-8?B?K1c3VDUwRi8vRGl0aFZad3RxWjdUbHAxZHNVem5WUmx5R2FjMDYrZ0t0cU9L?=
 =?utf-8?B?WTFaYXdhUTlGM0lTalhTZTc4RGI1czZENjczMWdJQnNNT0lCeDZsQTJLL1R2?=
 =?utf-8?B?RjNzTXBGemJseW1Pd05xcHpKbWdDUE03ek1ENGlkU09tNlNzb0t3eEJPaXY1?=
 =?utf-8?B?RHpOYVNITjF6NE0xZHVoakRqdStTVjN6eFlJSnBMUWx1RUQxSGdDMzFkQVdt?=
 =?utf-8?B?VVlrN3R3cDZWUm9JL3RENXlOTEM3N1p2Yml1RUpEdTJwMHJGc283ajBwaVZH?=
 =?utf-8?B?UEQ2WDViY0dadG1FQ2k4TDNBZEkzRzJ0OGdtV1VZaTA1dzFSQzNML3d1V0R1?=
 =?utf-8?B?UXRkWVovUlp5dmdpeHQrQmhFVm4wYm11eVNXMHdRUDdBUmdRbHdCc1dBWmxS?=
 =?utf-8?B?KzBXUFRRbTYwRUptSlJnL1hRZ3RtNjg3QzFBbGJFb0QzcExYNys0YkovZHhY?=
 =?utf-8?B?alRIZFltT2YvZncyOWVNTTViNDlxQjdFSkt4QnFVV1ZLTE9wTmVyMGZKVlcv?=
 =?utf-8?B?SmtoTzdINkgrTkpLNEhBc2FLQ0lFQWtpMlg3dVErOUw2ejExQVhhM1drdkNC?=
 =?utf-8?B?akE1dWJ0MmNTSzRYbXJYU1RwWXlmV2M0ZTN1QkVFcU1uSkxBQjVoU20xdlV6?=
 =?utf-8?B?K1Q3KzFIc01Wak9mYnJVUW9ZRmsvQ3pLb0ZXZkdPUHJ1MW9oaE1ONTZub0Ri?=
 =?utf-8?B?amtZZHc0dERvSnpULzZkR3JGU2ZoMkRqVjN2KzdnVGd2b0lFZmNiV3UwUHI3?=
 =?utf-8?B?Ry9pbHdXQ3lrajliU1JoOGx6dy9nYndsSXhRMUpXcEFOQ2tBWklPS0RZS2dM?=
 =?utf-8?B?RUxWL3BnSEsvTkFLT2tTMDB6TWdVSXVZNkpER1lPOWcxdCtYb0NVVlU4dC82?=
 =?utf-8?B?S2dXNWZwaC9XNERrSGtDcDNGSERTK2tlOGVteWVRTit1Y09BOXdqbnB1bzRJ?=
 =?utf-8?B?QWVMaGt1SStJaE50Tkl1M0xOdllGNVRJNFZnRDFzUk1GMHhnUlZ6ZmJ0ME1Z?=
 =?utf-8?B?SkpFdysyY3ZGV0tlRnJpWDlwbEJjaW1RbmRPTHRJU2JzQTZzaGZ0M1dTc1hG?=
 =?utf-8?B?NVh5RW1OakZoQlJmNzhEU2ZPVy9BUktDMXFkZkh3U1owSVBWVWN6QmVxNDJE?=
 =?utf-8?B?MTZkbVlvQTQzRWlRbEJYUEU4cTVLK2xFWm1ZRVk1TFpBZmk5TnNGTklBYWZo?=
 =?utf-8?B?Zm1rMm5jK0pYcnVpcTlRWmkvc2lkaFdHNnZqc2VaaFFLeStvNDJTczhoWUta?=
 =?utf-8?B?T01BdFhpaThxQ01ZempHZmdGMG44ZlZjeWQzZnpqV3ljeENYblN5TTY4dHZt?=
 =?utf-8?B?V1ozMlRsNE4ySEhNR0J4V1hpd0pMRU5jQ1JCTG5rd0Y0eXJTUFJvRURoUXlM?=
 =?utf-8?B?L0Y0OTR3UEw3Rm0yVk9IVlVTWnF2d1RlYUlxenJaSnByVmR5ZFlueVd1UTd2?=
 =?utf-8?B?OHk4bHpsUDBLTzJsT2FBWkdJSDBLeWtZTUxySzNIc1UyS0VDRGM4dnQ4TkEx?=
 =?utf-8?B?c1VCcHhJMmhnV1hIb1RnYk9Tb3ZBNWtibEEySVlycUNlY3lsakl3TDFaZng2?=
 =?utf-8?B?enJPcGJYdmxLYml4STdKTXgwZnBHY1Iva0tCdys4NEhIbjVkMHhKT0FNZEIw?=
 =?utf-8?B?T1pBMG5TeDBmWmd1c1d2MHozTkxTcXNaUzlHWHg4M3Ywa3FXUWM2Y0krazJ2?=
 =?utf-8?Q?ccw0Fx991/tPTMK8PUbeHbo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c716fc3-e4f7-473e-4d99-08db3c440b4f
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Apr 2023 17:25:14.8126 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pqthSPmPJ4dsOEF/fPKTttPRWxJ3USW2Y2J2Z3n2JrCzFIbrrqnOTnDjK02nIZ1dD3xSXsQ1kHxAjwrb3VPQ3KorGsH7PPwrKWndWrEyyGOpViQZSdRL/d4n5nlIUHqB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8196
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Evade transcoder's vblank
 when doing seamless M/N changes
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

SGkgVmlsbGUsDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwt
Z2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBP
ZiBWaWxsZQ0KPiBTeXJqYWxhDQo+IFNlbnQ6IDA0IEFwcmlsIDIwMjMgMjM6MjUNCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BB
VENIIDIvM10gZHJtL2k5MTU6IEV2YWRlIHRyYW5zY29kZXIncyB2Ymxhbmsgd2hlbg0KPiBkb2lu
ZyBzZWFtbGVzcyBNL04gY2hhbmdlcw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoZSB0cmFuc2NvZGVyIE0vTiB2YWx1
ZXMgYXJlIGRvdWJsZSBidWZmZXJlZCBvbiB0aGUgdHJhbnNjb2RlcidzDQo+IHVuZGVsYXllZCB2
YmxhbmsuIFNvIHdoZW4gZG9pbmcgc2VhbWxlc3MgTS9OIGZhc3RzZXRzIHdlIG5lZWQgdG8gZXZh
ZGUNCj4gYWxzbyB0aGF0Lg0KPiANCj4gTm90IHRoYXQgY3VycmVudGx5IHRoZSBwaXBlJ3MgZGVs
YXllZCB2YmxhbmsgPT0gdHJhbnNjb2RlcidzIHVuZGVsYXllZA0KPiB2YmxhbmssIHNvIHRoaXMg
aXMgc3RpbGwgYSBub3AgY2hhbmdlLiBCdXQgaW4gdGhlIGZ1dHVyZSB3aGVuIHdlIG1heSBoYXZl
IHRvDQo+IGRlbGF5IHRoZSBwaXBlJ3MgdmJsYW5rIHRvIGNyZWF0ZSBhIHJlZ2lzdGVyIHByb2dy
YW1taW5nIHdpbmRvdw0KPiAoIndpbmRvdzIiKSBmb3IgdGhlIERTQi4NCj4gDQo+IFNpZ25lZC1v
ZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+
IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jcnRjLmMgfCA3ICsr
KysrKysNCj4gIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gDQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NydGMuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0Yy5jDQo+IGluZGV4IGVkNDVhNjkzNDg1
NC4uZjNiODM2ODI5Mjk2IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NydGMuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2NydGMuYw0KPiBAQCAtNTEwLDYgKzUxMCwxMyBAQCB2b2lkIGludGVsX3BpcGVfdXBkYXRl
X3N0YXJ0KHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ICpuZXdfY3J0Y19zdGF0ZSkNCj4gDQo+
IFZCTEFOS19FVkFTSU9OX1RJTUVfVVMpOw0KPiAgCW1heCA9IHZibGFua19zdGFydCAtIDE7DQo+
IA0KPiArCS8qDQo+ICsJICogTS9OIGlzIGRvdWJsZSBidWZmZXJlZCBvbiB0aGUgdHJhbnNjb2Rl
cidzIHVuZGVsYXllZCB2YmxhbmssDQo+ICsJICogc28gd2l0aCBzZWFtbGVzcyBNL04gd2UgbXVz
dCBldmFkZSBib3RoIHZibGFua3MuDQo+ICsJICovDQo+ICsJaWYgKG5ld19jcnRjX3N0YXRlLT5z
ZWFtbGVzc19tX24gJiYNCj4gaW50ZWxfY3J0Y19uZWVkc19mYXN0c2V0KG5ld19jcnRjX3N0YXRl
KSkNCj4gKwkJbWluIC09IGFkanVzdGVkX21vZGUtPmNydGNfdmJsYW5rX3N0YXJ0IC0NCj4gK2Fk
anVzdGVkX21vZGUtPmNydGNfdmRpc3BsYXk7DQo+ICsNCg0KY2hhbmdlcyBMR1RNLiANClRoYW5r
cw0KIA0KUmV2aWV3ZWQtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIuZ29s
YW5pQGludGVsLmNvbQ0KDQo+PiAgCWlmIChtaW4gPD0gMCB8fCBtYXggPD0gMCkNCj4gIAkJZ290
byBpcnFfZGlzYWJsZTsNCj4gDQo+IC0tDQo+IDIuMzkuMg0KDQo=
