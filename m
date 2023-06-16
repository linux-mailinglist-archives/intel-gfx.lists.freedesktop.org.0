Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 87484732854
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jun 2023 09:05:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F98710E0B7;
	Fri, 16 Jun 2023 07:05:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F78610E0B7
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Jun 2023 07:05:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686899108; x=1718435108;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3oVdbX2BDXPrwTpHLb9qh4wfJL7N4C9u+U7rUCbCUOA=;
 b=SisQGAQKmhAJ4CzptPGjHE54N9wj3dbTQoeTDixMRr8tHKP0FUQG+qOM
 FxtAv9slWmqFCKKpEZUE6zPS5+Eq9RYmQds2godPv66GRhs55dsCrixNE
 EcWzKjCpyXcZK0fZBcvzp8Vq2Eg1WPCwERNKU+kv4qGhLIxxqb0Lugnzm
 Fzkn5f8nfGcCZ6NLskq/xlcNDLMczwDtHExqrEJiiKCeY7gD8wa7DVI15
 6JiiffX0W7hX9NCzqkHMLqujPQIEYSle/WDcMTv9HaGpTd7FIfDByMn2F
 Hk/p3IphXoiXsB6FBHOQv8zz7Pvkv1bpO1w9wk7I/tll2TM0V7XqsRK6v Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="358021626"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="358021626"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2023 00:05:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="825626282"
X-IronPort-AV: E=Sophos;i="6.00,246,1681196400"; d="scan'208";a="825626282"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga002.fm.intel.com with ESMTP; 16 Jun 2023 00:05:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 16 Jun 2023 00:05:06 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 16 Jun 2023 00:05:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 16 Jun 2023 00:05:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iL7TypARcMZKwg6D4T58AUqZ3XRPm9clO4vRPFH0yUkJKgUiqelAwflQXSbv4mv6KY9KlV4x9FMhVkvnpe3QWvrYIP46VCVh5hRWUBpoCL7YwxWfTU/pM3IC38eBzs3PLjuAyGXv4rLU6yHU/pXPCxCSTBemBKvYH1s+E0xosiuPAdO1NlIZUMLzgQ03Sn29INWwd1/Q8bEMllrY7m7tJJ+6/FbnvUlyj14qnbCMhGpQf0N1GCzIXfkGylERWT4YOlAdS2YTVK7wS9IlwGZyVgDjc55cL0NnqkwHXl34E1Vyk11pE9pOKuJFnWCbP3xW1aERaO+G7XtOQJrzKdHtCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3oVdbX2BDXPrwTpHLb9qh4wfJL7N4C9u+U7rUCbCUOA=;
 b=XLrwHyt19hwZga756R9KezQgk6kHZy8PjJPkcY2uMgvzMG0XDeFMv4VyBHBFja5OXqKkifmnsUP8LYKjiTwd9rIt1gxiCmklA5CZ4IMOTzJdIjCjBZZffkwj0qTro1kRggS1KqH8Mp/7sNLKLtp7aq/avhyUl08k1xyKII+lK1KOlxjfKZWNNfBznoP9pS9RwXAe127zihQ9P+gqyWHD1w3KiKi50s/YkapTm1Sc25AvG7uXtR7qSaIju+fGpMmCIBd3e1J8gpB+HAxItc2z3iLumH3kCp088ZHUnzEgsViRq/gYmecbCLgznduKMvM5MfLsp0puafknHjLGtD7SmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7041.namprd11.prod.outlook.com (2603:10b6:806:298::15)
 by IA0PR11MB7282.namprd11.prod.outlook.com (2603:10b6:208:43a::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Fri, 16 Jun
 2023 07:05:04 +0000
Received: from SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::2fe4:f49e:42b4:267c]) by SN7PR11MB7041.namprd11.prod.outlook.com
 ([fe80::2fe4:f49e:42b4:267c%7]) with mapi id 15.20.6477.037; Fri, 16 Jun 2023
 07:05:04 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Fix SSC selection for MPLLA
Thread-Index: AQHZoAzP/EiSvzMsRUOx1IH2aeQr+K+NAW4A
Date: Fri, 16 Jun 2023 07:05:04 +0000
Message-ID: <SN7PR11MB7041CBB63A47A6B22D21D385EF58A@SN7PR11MB7041.namprd11.prod.outlook.com>
References: <20230616043950.1576836-1-radhakrishna.sripada@intel.com>
In-Reply-To: <20230616043950.1576836-1-radhakrishna.sripada@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB7041:EE_|IA0PR11MB7282:EE_
x-ms-office365-filtering-correlation-id: 8772f4bd-8e07-456b-ae60-08db6e38029f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hhfqXAaapAAZ7ECQOQm+cu14QPgnnYG7eNCKpavUwY/DcPUQMEg3tZKH6jwsXEk4gsF1hhZof85xyc8d1e2XAPFLBhEH+Do7suQodYr3AdI/uNJ30LCcPelzAhf+B+11UsZNhOaqt8JDmNww0kISw7SbkrhlEMmX8jYql+9P9TISRPGuWU8FHVfq3ks/yni5KTteDTceRiRnMPMPyEMqlkIMqACxIfZFHQ/MrmsRnZXIcu95EtDECX6h/UPiAVPU8x9gj+wA4KCQ3QGN759P1dj8+KGgWLDhxgU/PmRzP2Ylqtq7qgk7vBXFL6u85Hzhy5HjuyC9DyaQNIYb3kDaIOrw/6bLCkaOP9dNeeg58ZgMPNQuBVToLGT76d1UH9TahWLveEMwtYpjpmFSUvfm1jaQot0mWaWwwaKNFFZM8MW01VYulVRuAtfeZUn4ftoRKvdR+y5vWw6jfrnHuJ6PTaMVD2ROqEbMfnY0HFuzJfl7cm1A6ddoQPaiqG+/YUGXF+VzLX4RRyN7gTMimV6ym8SsMuaJcpGh/1uFVJknr+blbw3nHyoH4UM5Y2puD9pVQHiIzztvXYT+/12Kl0kNK5wJcyclh1WymcftliBj9tiiyl+lED1MyG/Umf1IElMC
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7041.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(136003)(396003)(376002)(366004)(346002)(451199021)(66556008)(55016003)(83380400001)(66446008)(66476007)(66946007)(64756008)(76116006)(53546011)(71200400001)(9686003)(7696005)(6506007)(26005)(107886003)(2906002)(478600001)(54906003)(186003)(110136005)(86362001)(8936002)(8676002)(52536014)(33656002)(122000001)(4326008)(38100700002)(38070700005)(41300700001)(316002)(82960400001)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bmJ6TFZBK0tlWXhBYUUzVVpGOW9EWEFCMEhhTFEwODlJZ1dVT0xSbjdMV25P?=
 =?utf-8?B?MDIyK0hWd3VRNDdDQUFpeTNYait4M0xBbEF6cVFrQnBiVXZnUUFrUkxjWnNp?=
 =?utf-8?B?Y2JMQkJxVlM3eFNBZmFRU0ZvUzNyZUZIYVZEbWRwYzJmRENkRGE3R09oU1VM?=
 =?utf-8?B?SU1RY2diNmROS1k5OUQwdEZMVEYzalAyY1JWNUE4L1BVQzFvL0dCTkEyWTZh?=
 =?utf-8?B?SFBCVFIrcXRteU9YY0xnOFFyTWVzRWFjZXEvK1M0eXM5TWl5dHZuTkZTUEtI?=
 =?utf-8?B?R2RDamtnaCtBeFpmMjZuMjBFWE9nUWtjQkZZMVdVc0lzSHk4TDIycW95d0xm?=
 =?utf-8?B?SEFsSVU5cDQyNlF4VVZFTUpHL013Zytlc0N1N3pINTI5eFlmenk2M1Zubjd5?=
 =?utf-8?B?dnRkd3M1dHZuQ29VQ2dRUDFRQlVnQmQ0UlVBSEh0b3dNdTN5L09RaFFOR2xP?=
 =?utf-8?B?MFY0K3VGQVFBQnJhZWNwaFdBWnZ4elZIZkFyU0NjSDQxbEcxdE13TGhyV1E4?=
 =?utf-8?B?YjFSSGU4eHF5S1JaVVFBd0RHQXNKS21ORFhGVGM1eVp4aDh4SEFxS0pPUW1H?=
 =?utf-8?B?bldhcjQxbjFidkVjbm50RTlpUm1RUHJCSXc5THAvaXk2QWpPYy9RSjJjeE9l?=
 =?utf-8?B?RzRNbC94bVJnQzNRQWtEOS9yV0tkWVpkV3FqV1RlTHlGcGhyejZ6cEt1YlF0?=
 =?utf-8?B?a3I1by9HRXNwWWVCNk1kSnJvNGdCNHRoZjdOQnJ5WUpnQS9TUGxuUE1NeHFK?=
 =?utf-8?B?bWhzbFovNmNMYThhZWNxTExaYmNLRlN2Q2RyRWhiRWczT2Nla2Y5bVUyTnNo?=
 =?utf-8?B?VkYzY1pUWm9hWlY3dDJjbHhBVmhreWdycDM5T2ljamhsc3RYZXdHZ01WeHhD?=
 =?utf-8?B?MldZWkdNUU93MmhGQitsTmFMSS9wQzhpYXBDM3FHOWN5WXNDbXRrUHNDNTZ5?=
 =?utf-8?B?bVh0L3V4REI1UjVKOGVsQ3dDYWIrbkNuaHdoZUZHeDgwWGdFdFJUQ0ZQYU5U?=
 =?utf-8?B?SG5FZlg3aDlXMFVNbkJvQktmSmk0QmdESHNBbFNYOWFoRXREcW82ZjNDZWtP?=
 =?utf-8?B?MkRwYkYyZW03dlhUOXN5TU96MUMvUmIydnhXWGFIWmM0TStWamVVOUxXU1h6?=
 =?utf-8?B?QzdqTUxnNngxcExMdXAydUJ5SnNodHBxcmJyQWlvU2xaSy8yeG1ueTZSTERU?=
 =?utf-8?B?VHFPOXZXY3hyTnRRZVNCcVU4dVY2UG9BczFFSVVyZUV2SS9PMXBlbTdCbWNI?=
 =?utf-8?B?NXRkcERocmp5Y051a3RKazdPcFhVelBPeGlJb3ZFVXlUN2pKMGtvN25zSkFi?=
 =?utf-8?B?dzhidWdFSnhrRkx0RkZpOGQrZjU5UGUzaTJoZEpvU3cwdUNBNW9GMndTcGxw?=
 =?utf-8?B?Tk4wRklBdVpqWnJjQzdUYWczbzFlcVBlbGtxNVJvVWlTMWF5WUN6L2d6NHkw?=
 =?utf-8?B?NDdXam9Eb09lVGJDZzN4L3JPWkw1TTBSY1c3ZEd5S3RlVXFnc0tjZG4xWDRO?=
 =?utf-8?B?VUVUVm8wbTkvaFJHbnJLTnVCVHVpZm9EUWF6UDZ4SVhON3ROMFpOSnZZUjU1?=
 =?utf-8?B?alV1akZpRG8ra3dGUWo3TFp0ejRZNm1JNXVmVkxBZmNVLysvQldENGVBL0pk?=
 =?utf-8?B?RnFNTmJZdzVTM1BpNGVlTjBhalpvZGpFbEQzcnYzV3JMcDVkUnRXMHFnOU52?=
 =?utf-8?B?NXdXL0g5RmNwZlhWc3hIb2RpaFJrcXhuUW5ZODNHcmhDSUxmRkU5clZUckxB?=
 =?utf-8?B?aU41aEt6U1ZvZ3FwLzI3V29zN1BlSFJ6b0s1dXRwbGdjenlMaHhmR2UvbGxS?=
 =?utf-8?B?Q3lQeFZWcExQUmlRYlNLQmFPYnY1TWdXVEpxcW9GT3N5M0tjbDlIR0JCSWdG?=
 =?utf-8?B?QmhpV0FkMXNic2kxTU00ZkRUR0JWZnVlTU5FZ2t2TE40S3duTkZTUlVyM3dW?=
 =?utf-8?B?Sm1od09OQ1k5YmIxTC9TWUptUDZMb01CcCtVS09BdFA0OE9ZOFhsaENGbW9W?=
 =?utf-8?B?aWppY1VMcVQzSklLVFQyZ1Q4S1Q3d1hsQUJvbXBPRkF3WGZpWlRrRE14cFNn?=
 =?utf-8?B?akYrMEhRc2M2YkhjM2trQXVlZWpiaTA5WE14bHZxRHpFdGdoc2VKM2lvcFEv?=
 =?utf-8?Q?tQ/aQgpUIuZZ0+PktKunJP7rG?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7041.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8772f4bd-8e07-456b-ae60-08db6e38029f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2023 07:05:04.3794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gQum+fjRZbUnxH8EppkNVeN7BvkTF+qMqVpx5jcOkERc2FqApSE5Nw62jz0SbIDBNf35D0p5dXI14aQemj9X3w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7282
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Fix SSC selection for MPLLA
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBTcmlwYWRhLCBSYWRoYWtyaXNo
bmEgPHJhZGhha3Jpc2huYS5zcmlwYWRhQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBKdW5l
IDE2LCAyMDIzIDc6NDAgQU0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IFNyaXBhZGEsIFJhZGhha3Jpc2huYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwu
Y29tPjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBUYXlsb3IsIENsaW50
b24gQQ0KPiA8Y2xpbnRvbi5hLnRheWxvckBpbnRlbC5jb20+OyBBbG1haGFsbGF3eSwgS2hhbGVk
IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPjsgTXVydGh5LCBBcnVuIFINCj4gPGFydW4u
ci5tdXJ0aHlAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1L210bDogRml4
IFNTQyBzZWxlY3Rpb24gZm9yIE1QTExBDQo+IA0KPiBEcml2ZXIgZG9lcyBub3QgY2xlYXIgdGhl
IGRlZmF1bHQgU1NDIGZvciBNUExMQS4gVGhpcyBjYXVzZXMgbGluayB0cmFpbmluZyBmYWlsdXJl
IHdoZW4gdHJ5aW5nIHRvIHVzZSAxMEcgYW5kIDIwRyByYXRlcy4gRml4IHRoZQ0KPiBiZWhhdmlv
dXIgYW5kIGVuYWJsZSBzc2Mgb25seSB3aGVuIHdlIHJlYWxseSB3YW50Lg0KPiANCj4gRml4ZXM6
IDIzN2U3YmUwYmY1NyAoImRybS9pOTE1L210bDogRm9yIERQMi4wIDEwRyBhbmQgMjBHIHJhdGVz
IHVzZSBNUExMQSIpDQo+IENjOiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0K
PiBDYzogQ2xpbnQgVGF5bG9yIDxDbGludG9uLkEuVGF5bG9yQGludGVsLmNvbT4NCj4gQ2M6IEto
YWxlZCBBbG1haGFsbGF3eSA8a2hhbGVkLmFsbWFoYWxsYXd5QGludGVsLmNvbT4NCj4gQ2M6IEFy
dW4gUiBNdXJ0aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogTWlr
YSBLYWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBSYWRo
YWtyaXNobmEgU3JpcGFkYSA8cmFkaGFrcmlzaG5hLnNyaXBhZGFAaW50ZWwuY29tPg0KPiAtLS0N
Cj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jIHwgMyArKy0N
Cj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gDQo+
IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHku
YyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+IGluZGV4
IGYyMzVkZjU2NDZlZC4uMWIwMGVmMmM2MTg1IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiBAQCAtMjQzNCw3ICsyNDM0LDggQEAgc3Rh
dGljIHZvaWQgaW50ZWxfcHJvZ3JhbV9wb3J0X2Nsb2NrX2N0bChzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlciwNCj4gDQo+ICAJaW50ZWxfZGVfcm13KGk5MTUsIFhFTFBEUF9QT1JUX0NMT0NL
X0NUTChlbmNvZGVyLT5wb3J0KSwNCj4gIAkJICAgICBYRUxQRFBfTEFORTFfUEhZX0NMT0NLX1NF
TEVDVCB8IFhFTFBEUF9GT1JXQVJEX0NMT0NLX1VOR0FURSB8DQo+IC0JCSAgICAgWEVMUERQX0RE
SV9DTE9DS19TRUxFQ1RfTUFTSyB8IFhFTFBEUF9TU0NfRU5BQkxFX1BMTEIsIHZhbCk7DQo+ICsJ
CSAgICAgWEVMUERQX0RESV9DTE9DS19TRUxFQ1RfTUFTSyB8IFhFTFBEUF9TU0NfRU5BQkxFX1BM
TEEgfA0KPiArCQkgICAgIFhFTFBEUF9TU0NfRU5BQkxFX1BMTEIsIHZhbCk7DQo+ICB9DQo+IA0K
PiAgc3RhdGljIHUzMiBpbnRlbF9jeDBfZ2V0X3Bvd2VyZG93bl91cGRhdGUodTggbGFuZV9tYXNr
KQ0KPiAtLQ0KPiAyLjM0LjENCg0K
