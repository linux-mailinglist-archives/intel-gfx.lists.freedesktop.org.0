Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C409823E8B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Jan 2024 10:24:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BE6010E3D4;
	Thu,  4 Jan 2024 09:24:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2D5010E3D4
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Jan 2024 09:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704360285; x=1735896285;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z8eFv1IrxwHhuV7aMQlrDqZETyhpCgU8SlXXGpOX6Kk=;
 b=aZ1Rp0Mqjz6JA/riZzA8nmjoW7iXkuG0/nRz/j9BC8QfGYMHq1ARetdZ
 HnNikmq4sp24/GDP8eMqBrWiC13Wjmo6PZMFqFFH3r/WpiN+SNPP+t1Ds
 bj4w0PAPGQDXkiyKwacpNwnUlwKtV2PciIGQpCLlG2auU4iGvX+Bf6e8v
 CYB4UwbWb/qaSxMbOA5DxdEjbgRNjm3N8tHyRAZ526fXt5diukUDXPy+/
 sRY/izDblebKKLBjJjj8+l17rBVnMR3pABBlq5DFFBVhisho7fm8js+Is
 HRzB57ExGwp9YStEJnKY/jxv/MkKeCbuR9L/X1u0VtmtptOGSp6sgpvYm w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="3951071"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; 
   d="scan'208";a="3951071"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2024 01:24:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="1111665692"
X-IronPort-AV: E=Sophos;i="6.04,330,1695711600"; d="scan'208";a="1111665692"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Jan 2024 01:24:45 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 01:24:44 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 4 Jan 2024 01:24:44 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 4 Jan 2024 01:24:44 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 4 Jan 2024 01:24:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SCWQgyDaxEF+jJMUpr80tXUmMJPhuoBIm9JtjW52le4JGM8wbgQJc+ezSJgIKkmnNHYVsKfcJLoD1CIW1E4QANLyJsGeSxnVVjf8lsgK2aNiymkdi8wIFRes/n5giHrNnUcz2kbMzF0zgg+00uDYSHwpIxEjXVkuw3kMTZTmv9TEIPlz7aHo0H91dtNM4YhDMpgpU3C49tASFJwdG953RycKM1FhUDEymyI0OsN8yD1DL1dhb6rJrYIsWLPhhGvwol7Lhpm5NjTkHe7hgwjbvtWLh3xS38uB4QXvGbP4wi+zaCDtucgI6cn3wmafDrK5Y3bhF+mevsJpwkWzgp/buA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z8eFv1IrxwHhuV7aMQlrDqZETyhpCgU8SlXXGpOX6Kk=;
 b=MCSUFdnJZLAoNglLR7yFuG2kmp7Lh2zywwFbdq3flwkn0VxbqV4/yTwH2mSLF2tflyC5HU9WnRzjIRP0JAWA+UmaO3CpY+tdIWD2ByjswoJLVxqOxlApS+4Jwo4LDqoSISzlDS7DBtecoPHMNNWWQQVCD/ZhVKHiFKX67AiVpu+/yv7Fk8NUiva3DJiXDWg5K90wkkL0jCWEZ9b85WE70QpNF2Pg79dvJr8N0S17nbSW+8zyAE1bCOhg6DLj6bG12fllLFi086bFz1FNicDlobk9Jgnjj47hxPDTFYrU6wZ6KKa2vUj0pOzkRmUhERLmWjJ453mMjD5aybECYsxFwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by SA1PR11MB8573.namprd11.prod.outlook.com (2603:10b6:806:3ab::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7135.29; Thu, 4 Jan
 2024 09:24:41 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7159.013; Thu, 4 Jan 2024
 09:24:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>
Subject: RE: [PATCH v2 3/3] drm/i915/display: Cleanup mplla/mpllb selection
Thread-Topic: [PATCH v2 3/3] drm/i915/display: Cleanup mplla/mpllb selection
Thread-Index: AQHaPXPWUinwHjuDuUKBAadnlqgcHLDIRVEAgAEfC8A=
Date: Thu, 4 Jan 2024 09:24:41 +0000
Message-ID: <MW4PR11MB7054B9BA1FF6789657776E02EF67A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240102115741.118525-1-mika.kahola@intel.com>
 <20240102115741.118525-4-mika.kahola@intel.com>
 <ZZWINHpXR/qVEsvn@ideak-desk.fi.intel.com>
In-Reply-To: <ZZWINHpXR/qVEsvn@ideak-desk.fi.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|SA1PR11MB8573:EE_
x-ms-office365-filtering-correlation-id: 62e1748f-0bfd-46d5-63d6-08dc0d06fb5c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eaMw0iXCyLm8Ynus1MZ3TI0i+hSaj/b04ROUGjfGjTaxhMh8AdCGlCIGvkphFGwOzeqmxrU9nQUMHfLkWRsXryAHn70yqFWdp0mDnjA0855B/v4UjFJm0V2YhLoniGXbow6+aHmw9Y58Xj++3BnNIUBycHteDtmVDrA9e7rzTAZ8PRXVqswgOv6F4Otqm7g3lQye8cGbX/ZEOslM1JAEOnykKnUUkZSfdsr34gxjHjaWJwHkol5Q5r5bKpjTS8fGdwISvWF4K+le2RJMSGjPpqyDzQw2+gjti3Hf1pGGBr9eZhuScwo6emHkK4sspdtJnmSdsaSxPmM0qyPUx+6OO3aYBntGP7sbsHho5CCOkivDZ190PFwHgtQ0vtV2sMDb1y+f86p2gP94ENPUKHlSjLYpiwpwJIUCpe2QrW1AhHYfI52Dgb1cPb7nJyQrCWyYaCgwCZIB8LihZZWtBa73/p9hRCfoBkONuFtAnyFmu0e61XTiC7ig8EzOpyo25gB+XBPdRfki0vA5wLoc5YmFsYfpj/mh6tXKALzPMhWwetlY14JKEyq16bYVQrOGffh3FDrmZ5TXMRNYN3qFF2AgBkpfW8eYz5G9WVt+DtAI/Qxsst2YXuoFAhNuxR7liFaU
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(366004)(376002)(39860400002)(136003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(55016003)(53546011)(71200400001)(26005)(9686003)(7696005)(6506007)(478600001)(38100700002)(122000001)(33656002)(86362001)(82960400001)(2906002)(5660300002)(41300700001)(83380400001)(38070700009)(6636002)(76116006)(66476007)(66446008)(64756008)(316002)(66946007)(66556008)(6862004)(4326008)(8936002)(8676002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?THMyV2F5UFZyWE1tb29iOWE1bFBjUGlxWVhUUjRMZnpha2o5bGZjMnpDdUsv?=
 =?utf-8?B?SGFEbGVCRSt1K2NVa3gwTnFWWWV0dVgyOFNzNkJTdGc5ZFRiVFZqc2hER3dP?=
 =?utf-8?B?a0JILzZ6Y1RGSEFMQmdtOFoxc1MwNHZWcFg3M3gvbUhPT3A5bTdHMVRkQzhR?=
 =?utf-8?B?cFJhVWltcFRjWkRLVkdPcVU3R1U5ZUt2b2RmMmlZcmtRbWRxbTlYeFVzZUhQ?=
 =?utf-8?B?cXNaTFFUNjFCRVk3YU96V0Ezb2M1Skx1U2RnU0ZLd21UZTg5VXFNVGU4V3RP?=
 =?utf-8?B?SGF6cUVScTY0YTRiaVdCUlIvYnRUZXFQeVN0bUVVa2RZVFJwME1hUEZTeHdy?=
 =?utf-8?B?Mk9EckdXcXcrcEZnUFZPcUN4L0M3ZFVOckcxTy9zdkxEdlEvQytFU3JpNkla?=
 =?utf-8?B?V2FtMnJwdU8wbVlUU3JLN0o0Njl1N2RqNnQ2N3JkWTNEdVRLWXVkWUhVbStS?=
 =?utf-8?B?MW1YT3NuYXRva1pIZ1hZRW84eldoZXRJZFVuVDEvNHhNejE1MzJIVXNSQlpE?=
 =?utf-8?B?aXdRUEtxZzhnWThwZEw4cExQamg2MVdYS21oRzdlVUZZQ01RV21zSTc2amxG?=
 =?utf-8?B?THNNNW85WDdmQndrVkNQb2NFMjRrK285c3BZMW1xY0l2ZjFYbkk3TU02cDZn?=
 =?utf-8?B?QmFOa3R6NTBQMXQ3Qy91TzM2bGNtbE5yQ1d4UGtUbEJubC8wbTRMejRhZnNy?=
 =?utf-8?B?K1JCYXoxelBYTTBHV0duUDdYRnZjbUhEcVJHU29wWnN6VjJERE1lY0lGZVdh?=
 =?utf-8?B?eElYS25KQzFNNmcxdnZBTGtrMHJOSjJUaVRZTEMvQmt3ZXVjaTR4Q3cxK0JP?=
 =?utf-8?B?WC9MUVJxdkI3Y0dxTFV4ZjJtVDBmcmNzODR2UnlDcjlDZjg3REQ3Y1NURnJO?=
 =?utf-8?B?Rk5EenE2bjVMd0k3UURQMVVKT1dKaytRako2STMwQ0V1NWR4NEVpVWlibDkr?=
 =?utf-8?B?ZUpkZ3BZR0xpTDEvYStaaUl5dHhVakF4ejR4TFJMczBYOWt6MU1XMFltQzdZ?=
 =?utf-8?B?UzIxNDN3L296OTVucEJxTDdrS09RNFpweEZ5ZjNqOWxZUVNrOUYwdDFQSGpa?=
 =?utf-8?B?cEY5YWgxT2F0UmJpS0RibHhhMERXdnluWDdiVGNyTFZnWnUwdTBuY3Jsc0NP?=
 =?utf-8?B?N3hqa1I4YXdxZE5reHVzMmJHcnppOHBCbzQ3ZnMvYlI2ZnhRVXZaOCtEUTBN?=
 =?utf-8?B?bWtIS2VKZDRKdyszTGMwc1JuRFV6dnBpSnM5WTQzUUMrLzZzSTJQY2UxRDFj?=
 =?utf-8?B?YU9YdHNJZCtNWVlCVzdPRjBsczFzb0JHMVhpNkJEb1ZTL3hubklGREpUelNl?=
 =?utf-8?B?Um5vckNiazVtY1RVRGNienNrampEbTJ1eEN0SEtqUjJKNVVEZzF4bWl5RnFY?=
 =?utf-8?B?Z1BpTW5Wa3VIWkMxd2Y2YkcxZ0hVNmRrNnRZWUVVVjVqeXpPV3M5QzNvYnhr?=
 =?utf-8?B?ZFhOcHJveDJZWjdQVkdkTEpmZnA3WDBzNlhrZVh6YjB3VW8wb3BKemVFQUh4?=
 =?utf-8?B?eXRjWEpkVWg1bThPTmFORWxJTllyQ1B0TEMrUHpEWGpoVUpFRktHYnFBREov?=
 =?utf-8?B?MHJ6eTQwRTdhcGR3Q01wOE1IYlIyNDVXazRxYVlsK2wxNHUvcnFHREUzRWFm?=
 =?utf-8?B?SWtvaGtORENNeXNzeUhTOXZzN25Qa2NCSkJYWU93ZGlaU0w3SVhBbWhtU1BW?=
 =?utf-8?B?QTVHUmxVemFKWFFrV09YRmEzUnBoMUtWZkRGWlNFNnpNVlF1NEdMMlV5UVVX?=
 =?utf-8?B?TzFWcGZ6UUZSTlhDdmpNN3kxdUlGcGhoV2pyRFRHQkdKcjdyS01WcXFybDFl?=
 =?utf-8?B?NytCdUVVREYvQ0pSOGcwUFVEOUlxSnRmSDBvdEJLeTlVYkYrR3dTaTcweE9K?=
 =?utf-8?B?UjdDUndqdjVtQ2pPWjRjYmdVREZWUWtvcjJ0OGZyZGd0MGR5Z0hWS3BBd1lh?=
 =?utf-8?B?SjVQU2VqRm1uN1BYL3dmK29rMXJidjkvRWpLMWRia1VLN210bG5iWGovYnZU?=
 =?utf-8?B?bE9zSU5rdDZYeDdpV05jbzhUdEhOdU9rY3MzbW9JK3RqdEppdkFLcGZkUDdQ?=
 =?utf-8?B?a3ZUYVRlMjdxbmwzV3RqUVJ3S3NaU1hPenY5c3BoTDNSODRkRjBGYVFLOFRK?=
 =?utf-8?Q?3/tHqAHzlz68qwLf2VqHoYRUT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62e1748f-0bfd-46d5-63d6-08dc0d06fb5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2024 09:24:41.7417 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nFfze2fQ2bq2JdA9n9c5ikQF2sX0U+8TdbME4bZYds+I5bOT0zoHttn1LMkI2Tgo2thAhG1+elwe3qYVlY84qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8573
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBEZWFrLCBJbXJlIDxpbXJlLmRl
YWtAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIEphbnVhcnkgMywgMjAyNCA2OjE2IFBN
DQo+IFRvOiBLYWhvbGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gQ2M6IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAzLzNd
IGRybS9pOTE1L2Rpc3BsYXk6IENsZWFudXAgbXBsbGEvbXBsbGIgc2VsZWN0aW9uDQo+IA0KPiBP
biBUdWUsIEphbiAwMiwgMjAyNCBhdCAwMTo1Nzo0MVBNICswMjAwLCBNaWthIEthaG9sYSB3cm90
ZToNCj4gPiBUaGUgZnVuY3Rpb24gaW50ZWxfYzIwX3VzZV9tcGxsYSgpIGlzIG5vdCByZWFsbHkg
d2lkZWx5IHVzZWQgYW5kIGNhbg0KPiA+IGJlIHJlcGxhY2VkIHdpdGggdGhlIG1vcmUgc3VpdGFi
bGUNCj4gPg0KPiA+IHBsbC0+dHhbMF0gJiBDMjBfUEhZX1VTRV9NUExMQg0KPiA+DQo+ID4gZXhw
cmVzc2lvbi4gTGV0J3MgcmVtb3ZlIHRoZSBpbnRlbF9jMjBfdXNlX21wbGxhKCkgYWxsdG9nZXRo
ZXIgYW5kDQo+ID4gcmVwbGFjZSBtcGxsYS9tcGxsYiBzZWxlY3Rpb24gYnkgY2hlY2tpbmcgbXBs
bGIgYml0Lg0KPiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTWlrYSBLYWhvbGEgPG1pa2Eua2Fob2xh
QGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jeDBfcGh5LmMgfCAzOQ0KPiA+ICsrKysrKysrLS0tLS0tLS0tLS0tDQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAxNSBpbnNlcnRpb25zKCspLCAyNCBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0K
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMNCj4gPiBp
bmRleCBmYzcyMTE2NzViMmYuLmQwYjZiNGU0MzllMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+ID4gQEAgLTIwOTYsMTUgKzIw
OTYsNiBAQCBpbnQgaW50ZWxfY3gwcGxsX2NhbGNfc3RhdGUoc3RydWN0IGludGVsX2NydGNfc3Rh
dGUgKmNydGNfc3RhdGUsDQo+ID4gIAlyZXR1cm4gaW50ZWxfYzIwcGxsX2NhbGNfc3RhdGUoY3J0
Y19zdGF0ZSwgZW5jb2Rlcik7ICB9DQo+ID4NCj4gPiAtc3RhdGljIGJvb2wgaW50ZWxfYzIwX3Vz
ZV9tcGxsYSh1MzIgY2xvY2spIC17DQo+ID4gLQkvKiAxMEcgYW5kIDIwRyByYXRlcyB1c2UgTVBM
TEEgKi8NCj4gPiAtCWlmIChjbG9jayA9PSAxMDAwMDAwIHx8IGNsb2NrID09IDIwMDAwMDApDQo+
ID4gLQkJcmV0dXJuIHRydWU7DQo+ID4gLQ0KPiA+IC0JcmV0dXJuIGZhbHNlOw0KPiA+IC19DQo+
ID4gLQ0KPiA+ICBzdGF0aWMgaW50IGludGVsX2MyMHBsbF9jYWxjX3BvcnRfY2xvY2soc3RydWN0
IGludGVsX2VuY29kZXIgKmVuY29kZXIsDQo+ID4gIAkJCQkJY29uc3Qgc3RydWN0IGludGVsX2My
MHBsbF9zdGF0ZSAqcGxsX3N0YXRlKSAgeyBAQCAtMjIyMSwxMg0KPiA+ICsyMjEyLDEyIEBAIHZv
aWQgaW50ZWxfYzIwcGxsX2R1bXBfaHdfc3RhdGUoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5
MTUsDQo+ID4gIAlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLCAiY21uWzBdID0gMHglLjR4LCBjbW5b
MV0gPSAweCUuNHgsIGNtblsyXSA9IDB4JS40eCwgY21uWzNdID0gMHglLjR4XG4iLA0KPiA+ICAJ
CSAgICBod19zdGF0ZS0+Y21uWzBdLCBod19zdGF0ZS0+Y21uWzFdLCBod19zdGF0ZS0+Y21uWzJd
LA0KPiA+IGh3X3N0YXRlLT5jbW5bM10pOw0KPiA+DQo+ID4gLQlpZiAoaW50ZWxfYzIwX3VzZV9t
cGxsYShod19zdGF0ZS0+Y2xvY2spKSB7DQo+ID4gLQkJZm9yIChpID0gMDsgaSA8IEFSUkFZX1NJ
WkUoaHdfc3RhdGUtPm1wbGxhKTsgaSsrKQ0KPiA+IC0JCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJt
LCAibXBsbGFbJWRdID0gMHglLjR4XG4iLCBpLCBod19zdGF0ZS0+bXBsbGFbaV0pOw0KPiA+IC0J
fSBlbHNlIHsNCj4gPiArCWlmIChod19zdGF0ZS0+dHhbMF0gJiBDMjBfUEhZX1VTRV9NUExMQikg
ew0KPiANCj4gVGhlIGFib3ZlIGNvdWxkIGJlIGluIGEgaGVscGVyLg0KDQpJIHdhcyB0aGlua2lu
ZyBhYm91dCB0byBwdXQgdGhpcyBvbiBoZWxwZXIgYnV0IHRoZW4gZGVjaWRlZCB0byBnbyB3aXRo
IHRoaXMgYXBwcm9hY2guIFRoZXJlIGFyZSBjb3VwbGUgb2YgcGxhY2VzIGVsc2V3aGVyZSB3aGVy
ZSB0aGlzIGxpbmUgaXMgdXNlZCBhcyB3ZWxsLiBJIHdpbGwgcHJvdmlkZSBhIGZvbGxvdyB1cCBw
YXRjaCB0byBnZXQgdGhlc2UgZGVmaW5lZCBhcyBoZWxwZXIgZnVuY3Rpb25zLg0KDQo+IA0KPiA+
ICAJCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKGh3X3N0YXRlLT5tcGxsYik7IGkrKykNCj4g
PiAgCQkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIm1wbGxiWyVkXSA9IDB4JS40eFxuIiwgaSwN
Cj4gPiBod19zdGF0ZS0+bXBsbGJbaV0pOw0KPiA+ICsJfSBlbHNlIHsNCj4gPiArCQlmb3IgKGkg
PSAwOyBpIDwgQVJSQVlfU0laRShod19zdGF0ZS0+bXBsbGEpOyBpKyspDQo+ID4gKwkJCWRybV9k
Ymdfa21zKCZpOTE1LT5kcm0sICJtcGxsYVslZF0gPSAweCUuNHhcbiIsIGksDQo+ID4gK2h3X3N0
YXRlLT5tcGxsYVtpXSk7DQo+ID4gIAl9DQo+ID4gIH0NCj4gPg0KPiA+IEBAIC0yMzczLDI3ICsy
MzY0LDI3IEBAIHN0YXRpYyB2b2lkIGludGVsX2MyMF9wbGxfcHJvZ3JhbShzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSwNCj4gPiAgCX0NCj4gPg0KPiA+ICAJLyogMy4zIG1wbGxiIG9yIG1w
bGxhIGNvbmZpZ3VyYXRpb24gKi8NCj4gPiAtCWlmIChpbnRlbF9jMjBfdXNlX21wbGxhKGNsb2Nr
KSkgew0KPiA+IC0JCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHBsbF9zdGF0ZS0+bXBsbGEp
OyBpKyspIHsNCj4gPiArCWlmIChwbGxfc3RhdGUtPnR4WzBdICYgQzIwX1BIWV9VU0VfTVBMTEIp
IHsNCj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShwbGxfc3RhdGUtPm1wbGxiKTsg
aSsrKSB7DQo+ID4gIAkJCWlmIChjbnR4KQ0KPiA+ICAJCQkJaW50ZWxfYzIwX3NyYW1fd3JpdGUo
aTkxNSwgZW5jb2Rlci0+cG9ydCwgSU5URUxfQ1gwX0xBTkUwLA0KPiA+IC0JCQkJCQkgICAgIFBI
WV9DMjBfQV9NUExMQV9DTlRYX0NGRyhpKSwNCj4gPiAtCQkJCQkJICAgICBwbGxfc3RhdGUtPm1w
bGxhW2ldKTsNCj4gPiArCQkJCQkJICAgICBQSFlfQzIwX0FfTVBMTEJfQ05UWF9DRkcoaSksDQo+
ID4gKwkJCQkJCSAgICAgcGxsX3N0YXRlLT5tcGxsYltpXSk7DQo+IA0KPiBJbW8sIGF0IG9uZSBw
b2ludCBpbnRlbF9jMjBwbGxfc3RhdGUgc2hvdWxkIGJlIGNvbnZlcnRlZCB0byB1c2Ugb25seSBv
bmUgbXBsbCBhcnJheSBpbnN0ZWFkIG9mIG1wbGxhL2IgYW5kIGRlZmluZSBhDQo+IFBIWV9DMjBf
TVBMTF9DTlRYX0NGRyhjbnR4LCBwbGwsIGlkeCkgbWFjcm8gaW5zdGVhZCBvZiB0aGUgYWJvdmUg
b25lcy4NCj4gDQoNClRoYW5rcyBmb3IgdGhlIHJldmlldyENCg0KPiBUaGUgcGF0Y2hzZXQgbG9v
a3Mgb2s6DQo+IFJldmlld2VkLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQo+
IA0KPiA+ICAJCQllbHNlDQo+ID4gIAkJCQlpbnRlbF9jMjBfc3JhbV93cml0ZShpOTE1LCBlbmNv
ZGVyLT5wb3J0LCBJTlRFTF9DWDBfTEFORTAsDQo+ID4gLQkJCQkJCSAgICAgUEhZX0MyMF9CX01Q
TExBX0NOVFhfQ0ZHKGkpLA0KPiA+IC0JCQkJCQkgICAgIHBsbF9zdGF0ZS0+bXBsbGFbaV0pOw0K
PiA+ICsJCQkJCQkgICAgIFBIWV9DMjBfQl9NUExMQl9DTlRYX0NGRyhpKSwNCj4gPiArCQkJCQkJ
ICAgICBwbGxfc3RhdGUtPm1wbGxiW2ldKTsNCj4gPiAgCQl9DQo+ID4gIAl9IGVsc2Ugew0KPiA+
IC0JCWZvciAoaSA9IDA7IGkgPCBBUlJBWV9TSVpFKHBsbF9zdGF0ZS0+bXBsbGIpOyBpKyspIHsN
Cj4gPiArCQlmb3IgKGkgPSAwOyBpIDwgQVJSQVlfU0laRShwbGxfc3RhdGUtPm1wbGxhKTsgaSsr
KSB7DQo+ID4gIAkJCWlmIChjbnR4KQ0KPiA+ICAJCQkJaW50ZWxfYzIwX3NyYW1fd3JpdGUoaTkx
NSwgZW5jb2Rlci0+cG9ydCwgSU5URUxfQ1gwX0xBTkUwLA0KPiA+IC0JCQkJCQkgICAgIFBIWV9D
MjBfQV9NUExMQl9DTlRYX0NGRyhpKSwNCj4gPiAtCQkJCQkJICAgICBwbGxfc3RhdGUtPm1wbGxi
W2ldKTsNCj4gPiArCQkJCQkJICAgICBQSFlfQzIwX0FfTVBMTEFfQ05UWF9DRkcoaSksDQo+ID4g
KwkJCQkJCSAgICAgcGxsX3N0YXRlLT5tcGxsYVtpXSk7DQo+ID4gIAkJCWVsc2UNCj4gPiAgCQkJ
CWludGVsX2MyMF9zcmFtX3dyaXRlKGk5MTUsIGVuY29kZXItPnBvcnQsIElOVEVMX0NYMF9MQU5F
MCwNCj4gPiAtCQkJCQkJICAgICBQSFlfQzIwX0JfTVBMTEJfQ05UWF9DRkcoaSksDQo+ID4gLQkJ
CQkJCSAgICAgcGxsX3N0YXRlLT5tcGxsYltpXSk7DQo+ID4gKwkJCQkJCSAgICAgUEhZX0MyMF9C
X01QTExBX0NOVFhfQ0ZHKGkpLA0KPiA+ICsJCQkJCQkgICAgIHBsbF9zdGF0ZS0+bXBsbGFbaV0p
Ow0KPiA+ICAJCX0NCj4gPiAgCX0NCj4gPg0KPiA+IC0tDQo+ID4gMi4zNC4xDQo+ID4NCg==
