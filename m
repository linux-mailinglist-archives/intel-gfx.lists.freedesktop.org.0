Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7971A79AA9D
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 19:47:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C5E3410E32B;
	Mon, 11 Sep 2023 17:47:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 153CD10E1B1
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 17:47:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694454422; x=1725990422;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=FigRNVuuNwOXKgeG72a6ugdzwPGleNxDO/d6XbmhEUo=;
 b=Lxu7jSD1p6OUsjt2SfOwKzT4yvMdVHpXqE8ftCAluPnx89jjcSKqTTgr
 uIRNgaTHGmRONPvbIVMOXX6HBE/f6BsBScM7lbfMMZ6+VVjGkVHnUbkqD
 CpvGaiSdLOIsea53lPZvoC3Z3193K4k1IfN0u3UDkZsySf8XtC+MwRmZp
 /8O8DslM2Xw2FNyX3jDEp/2nU1xwPWs8fl0H62HaMy/a4bapW845avhhG
 UFncxUCWlPMRxSVU0Xy1QvKbHnTJwjPY9JcwqPsF8NbvpBxeOICVvvG/o
 QfkFT9n4Jend1QTzCOn2ycNxxGNHNx1HDTQqcSGsRMzjcAEtZz0Y9HKqY A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378068054"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="378068054"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 10:46:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="736837952"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="736837952"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 10:46:55 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 10:46:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 10:46:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 10:46:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 10:46:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cy5H1Chi8bCMNZHhqseg5XX7vBAtJ81+EcwM9fE+FEdi0UKUat0ZEek02J23sNOkaJX9HzEsVn2Ij8gbEdQysZkuSxwsPdRsa+tJF67RbKNJBsheqcCb4zOpMt8hfGzINQtG+oj643m37g07FQmcPBWI+OiiHY8PVR9bH69sppZEHR2hbm2QhYpW4PCGhuOhWZwTCJysbbtRs0pbeHQqdhH4B9R1vg7e1g3w8MW2d8w+b89kUn7c7M4psu6erOb5iF6BnyzyeIKW2kz98LYkk7fqFDhVB49Fj3krxHl8JE9yPK5iOvDS6KjBWfEqmC5HwcLv2crwH5YvE0i1U9D4hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FigRNVuuNwOXKgeG72a6ugdzwPGleNxDO/d6XbmhEUo=;
 b=LT8olaTgioC9+1cNLxr4G0AdBNrIl9xukvm9otqrcOE7WPmcndITQKJ5lQFKQ0TvyRpgzGizqj4TmYNGjV1T+ftbgry8x6L4MRpkdX1Uh+pbm9iuQl3pykO6F030htDj1cQh3NGbc+J38nHvvQSZjP1lPEeyTKiy6k2j1ian6EvDQQDosvLVlRBkMliaX2UB1t3mu2Ac89nwSTvH2Dwi/XTDKJHMprAz6rvjmsBXNP8+35QRNUVlna7sEj8MNBIF58NQs7SrR78/oPFR8unlfe2qkgwTRXO4+E5XoNavWtUv+XE0PkZ4QRy/EtytYl4d60u/+XGqBM7AQcAq7P4dpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6348.namprd11.prod.outlook.com (2603:10b6:208:3af::16)
 by CY5PR11MB6209.namprd11.prod.outlook.com (2603:10b6:930:27::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Mon, 11 Sep
 2023 17:46:52 +0000
Received: from IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85]) by IA1PR11MB6348.namprd11.prod.outlook.com
 ([fe80::4426:1551:a299:9a85%7]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 17:46:52 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 09/12] drm/i915: Disable VRR during seamless
 M/N changes
Thread-Index: AQHZ3NUGQvYsu+mF6kSn4+/mmustRLAV9bEQ
Date: Mon, 11 Sep 2023 17:46:52 +0000
Message-ID: <IA1PR11MB6348C9712CE16F5E1B0AA2F3B2F2A@IA1PR11MB6348.namprd11.prod.outlook.com>
References: <20230901130440.2085-1-ville.syrjala@linux.intel.com>
 <20230901130440.2085-10-ville.syrjala@linux.intel.com>
In-Reply-To: <20230901130440.2085-10-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA1PR11MB6348:EE_|CY5PR11MB6209:EE_
x-ms-office365-filtering-correlation-id: 25a729e3-08c7-4c24-8084-08dbb2ef1519
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nur2HlKcHmVHqtDGubvvUPH760wrzH6TUPStO7XwC2d6SwoYDKmpIQ7YKVTVy93E48fQaDITPkVZT0dIbq4kEolL3OIfVt15nBqCYL9fQy+81ZwWRj8S1yba2FEtCUn75DIMDSjRdRI91aDS03C+KQirG09vDopkTUI/nrCvQDjsoIJ9Z/lIeQyriPmIGFNUZ/cEmNqQOYfwflq0fi81pe/hIPaZv1se1X5U4JFl/NOSVieqoUZCa8NENJEkD2Pa44BCIOjv2unn964NB0T6zpS8JNHj218gtccuhDvWY6hmsAAxiCQ9e324BDKTi/7FpBYOGHGv9wlBLFHZHhqosUNAt/o8oe4yb3PrMxhi5z8QCUwwYgbu95AuHRtNvrf+TV8OslqyfE9mgRz7PUG++coeGh+7pE5WcSe+Sy2SYLa2kA5daYvZFLrclBjfny9fSZuYO+yS4BS+NQGhu7B3xgCqsb8gWHgQgb2Tj7kJl9h98Mi+00c7DE2aQHzKMLzjT0xtKlmPJMGVWuO9HuzliQqfB4ttMTd/kaRwIr9nCCpeeApLkwOJGJUE/+t20hS1jLk5J/LkZ9bEnX4ud9msKi024oIAvEkafWQYtnCCdHUCXzXfJPkw/2n78sBE7ph2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6348.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(39860400002)(376002)(136003)(1800799009)(186009)(451199024)(52536014)(71200400001)(53546011)(6506007)(7696005)(55236004)(83380400001)(76116006)(478600001)(41300700001)(66574015)(26005)(9686003)(2906002)(64756008)(66476007)(66556008)(316002)(8676002)(5660300002)(110136005)(66946007)(66446008)(8936002)(33656002)(86362001)(55016003)(38070700005)(38100700002)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aTkwSlpWaXpDNjMzMitlV3pqMUp2cUZEMWFvaVY1QklUb3ZyV25lZE9QRkI2?=
 =?utf-8?B?YXlWQUROT3IweFRXd2JJMTZka3BqdnBlMVVxSHFpT0ZyeGZ0WGlpdnRtQzUr?=
 =?utf-8?B?L0dMOE0yUkVRMk1EUkhwNFQwcHBtU2QvWWtUYUs4VlFqTVhBaUQ4M0hjZFJE?=
 =?utf-8?B?L0tlNzBVNnZUN3EySk9iTDRKNGRYR3d5ZExqenlVaHF0ZnJSMWovN3IweHlO?=
 =?utf-8?B?UHlram5rSnF4c1pmZXp2azhyQkQ3SmFlVEZhSm9UeUVUSnZObGhhc1hmbXJN?=
 =?utf-8?B?S2UrRGkwZXRNWktUbTIxTExFYkxUVmZCcDR3Rk05UGNnT2ZMRnB3elZxMjhj?=
 =?utf-8?B?Si81OExkTWpSUWFjaHNoOEd5ek91blQ3alBuY0g0aHh3aTJoMFVUSi9aa2Ex?=
 =?utf-8?B?eXNLR1EvZGsvZU5CbllMMjUvY0FnTC9IWmZYYnhDdnhRaGk0QmpvNU9NbVdj?=
 =?utf-8?B?aDZmMDNDS1JXN09jSE1HVjBydWV6SnpRMjBGeStVZzhZWXJ0NzNuTEhQUmdy?=
 =?utf-8?B?M3ZFTlMveU9wcU16a1ZheEszZVBhcWtrVzhTeWlEVDBLcG1TellqTDJXVDdy?=
 =?utf-8?B?VzFhS1VlSVp1VUI3WTBqYkhIcURZdys3M1lHc3M1SDhzN2l0YXhZRXM3OGZU?=
 =?utf-8?B?ZU12WXlnQXhLcHdpSE51emQ1eWt3TjZGRFpFaVRseCtLMkpuMGp0ZlNtS2Ri?=
 =?utf-8?B?eElqem5yNGpaM0g0NE40S0h3L041eE5Lc0hSLzcwT2JMRjFqcnN5V3VrcnRW?=
 =?utf-8?B?OEpBLzRHc3VZQmRzWFVhakZORnlBSEhhcUZsd1VMNmo3SlkveGtKVWRiSHRw?=
 =?utf-8?B?bGRORDEzb1RIVEhSaGxHZCsvVWYzemF3SERIL2hkdlBseGdYN2R5blR2V0Y1?=
 =?utf-8?B?b085R3dCNWROSmFIMTlhWDdDUmJ2MlliNXZrVzlXLzlMbVpYMXEvc0ZSSVlu?=
 =?utf-8?B?aUFIcUlPNFIxaytkMlpNUzh0dW1SOFE4alVmc3BCVkxVY2Q2UkVod2t5Vk15?=
 =?utf-8?B?TlIvdWREYlNvSURKZXhWazJRRlpNUmo2RVlOVkN2di85bytHOEdZN2UvNHJh?=
 =?utf-8?B?WXY3STc1eFRSbVRCSTQyRXpzTVpUM2pLZ2pQZ3I1OHpkWG44WExoeTMrZE1k?=
 =?utf-8?B?OVVkSXJQbUtMaVRCajdsWnRESzdwR1AxUDNrQVh6WE9jMFZzRFl5cFllTnRR?=
 =?utf-8?B?VllsbVU0UzFYQUcvTDlVdWZOMWxuS3cvbDZLTFZxVVdLcE1hN08zSENvMmxD?=
 =?utf-8?B?b3dlSWFIMXUzQWh3NlpZQkhxSGI2MStzaHZjRFp3eUt2dGZKM3ZGWmVyWVU3?=
 =?utf-8?B?RTdmUlNyTkdueUZ0V1kzQ3hoT1V1QjVjZUNLSk4xR0pIUzJ0bTV6MmNqbklp?=
 =?utf-8?B?STFCbzQ1bXY2NG4vdlV0VDRzK1UrTytmblpmaVNVdmtoTnJ3cDNGTGNubjZ6?=
 =?utf-8?B?VldwVjk5bWt4T2ZmQy9wa1NGOUlnWjFhNW5jY3g0MEJxWEZ2RW5RYURHWXF3?=
 =?utf-8?B?TlcxSVhDRDRVZURzNzNJKzVFektjSmc4M2NWYlJpbzU5VXNteTBoK2Q2UkJz?=
 =?utf-8?B?QUcxM08yYUZCTVNWbTFvMXRkYWxFaE5CMkVJSGFlU1ZLczUrS2ZhVTI5OFFL?=
 =?utf-8?B?MHlIYXhPNWVod0o0RTQ1Uy9tMDBhWTZMS1MybFM5RWU3TUljdEpGRmk1Vmpy?=
 =?utf-8?B?N2pzWUMzalhxbUxNcjBvam5STFh3Qlp1OGlwTG8yNzVuNFJTYmF0QTZNdTRx?=
 =?utf-8?B?K1ZNVmVyMjJUQ2NUV0RzRk5TRUY3QXVZUDNiQjR3L1FPVTRFcjN1Lzc3TVI0?=
 =?utf-8?B?YjVZc3R3ME1PdHdkek40N2p5bGEvVWR1aG9LRFIzWGZZaFFCY044Q1NZWkRF?=
 =?utf-8?B?QndLaXQzMXAyRVV3NlBWK1VSbWQweXdFSGFXTTI4bVhEMEpUeEc5ZmtpRHV3?=
 =?utf-8?B?WWJTRy9WS1NwdTZKVHZmNzh4b2JjcVJNdWhxdThLYlJSeW80dEdGQnpRMHBq?=
 =?utf-8?B?M0VUeEJaUHJkS2RLWlJrditISHBEcTFDL1Y3Q2VkVTVCSDc3V01vcGhFaVRT?=
 =?utf-8?B?QjEzVm1HOXprMElteFFJM1dVZkJJd2FIU0hVNzhtazJSOUZTeXFid0RPcnNq?=
 =?utf-8?B?a1M0UzNPVUdtWlNzaGpycGFWbS9NZ2t4UlU1Mm9EejNyUDk1Q3B2Q2NTZGdD?=
 =?utf-8?Q?Md7okHvMUQQ61wKDJy944C0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6348.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25a729e3-08c7-4c24-8084-08dbb2ef1519
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 17:46:52.3684 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: welprDts6chDWxbVshGrKmDgQFXKeFFEeqi2tdJb1gBDLs+ERk532vKKbjWqPInxAQf1Zz5E7PJ1EdHkV411AWoBKj6Ajw7dabR0onAtc1+f10LGwnv/RBp4cO9NaYiN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6209
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 09/12] drm/i915: Disable VRR during seamless
 M/N changes
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IDAxIFNlcHRlbWJlciAyMDIzIDE4OjM1DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAw
OS8xMl0gZHJtL2k5MTU6IERpc2FibGUgVlJSIGR1cmluZyBzZWFtbGVzcw0KPiBNL04gY2hhbmdl
cw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4NCj4gDQo+IE1ha2UgbGlmZSBsZXNzIGNvbmZ1c2luZyBieSBtYWtpbmcgc3VyZSBWUlIg
aXMgZGlzYWJsZWQgd2hlbmV2ZXIgd2UgZG8gYW55DQo+IGRyYXN0aWMgY2hhbmdlcyB0byB0aGUg
ZGlzcGxheSB0aW1pbmdzLCBzdWNoIGFzIHNlYW1sZXNzIE0vTiBjaGFuZ2VzLg0KPiANCj4gQ2M6
IE1hbmFzaSBOYXZhcmUgPG5hdmFyZW1hbmFzaUBjaHJvbWl1bS5vcmc+DQo+IFNpZ25lZC1vZmYt
Ynk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMgfCA2ICsr
KystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+IGluZGV4IGMyMGVhZjBlN2E5MS4uY2JiZWUzMDNjZDAwIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBAQCAtOTE2LDEzICs5MTYs
MTUgQEAgc3RhdGljIGJvb2wgcGxhbmVzX2Rpc2FibGluZyhjb25zdCBzdHJ1Y3QNCj4gaW50ZWxf
Y3J0Y19zdGF0ZSAqb2xkX2NydGNfc3RhdGUsICBzdGF0aWMgYm9vbCB2cnJfZW5hYmxpbmcoY29u
c3Qgc3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKm9sZF9jcnRjX3N0YXRlLA0KPiAgCQkJIGNv
bnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpuZXdfY3J0Y19zdGF0ZSkgIHsNCj4gLQlyZXR1
cm4gaXNfZW5hYmxpbmcodnJyLmVuYWJsZSwgb2xkX2NydGNfc3RhdGUsIG5ld19jcnRjX3N0YXRl
KTsNCj4gKwlyZXR1cm4gaXNfZW5hYmxpbmcodnJyLmVuYWJsZSwgb2xkX2NydGNfc3RhdGUsIG5l
d19jcnRjX3N0YXRlKSB8fA0KPiArCQkobmV3X2NydGNfc3RhdGUtPnZyci5lbmFibGUgJiYgbmV3
X2NydGNfc3RhdGUtDQo+ID51cGRhdGVfbV9uKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9vbCB2
cnJfZGlzYWJsaW5nKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpvbGRfY3J0Y19zdGF0
ZSwNCj4gIAkJCSAgY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19jcnRjX3N0YXRl
KSAgew0KPiAtCXJldHVybiBpc19kaXNhYmxpbmcodnJyLmVuYWJsZSwgb2xkX2NydGNfc3RhdGUs
IG5ld19jcnRjX3N0YXRlKTsNCj4gKwlyZXR1cm4gaXNfZGlzYWJsaW5nKHZyci5lbmFibGUsIG9s
ZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSkgfHwNCj4gKwkJKG9sZF9jcnRjX3N0YXRlLT52
cnIuZW5hYmxlICYmIG5ld19jcnRjX3N0YXRlLQ0KPiA+dXBkYXRlX21fbik7DQo+ICB9DQoNCkl0
IHNlZW1zIHdoZW4gVlJSIGlzIGFscmVhZHkgZW5hYmxlZCBhbmQgZHVyaW5nIHNlYW1sZXNzIE0v
TiBjaGFuZ2VzLCBkaXNhYmxlZCBWUlIgYW5kDQplbmFibGVkIGJhY2sgYWdhaW4uDQoNCkNoYW5n
ZSBMR1RNLg0KUmV2aWV3ZWQtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxrdW1hci5haml0a3VtYXIu
Z29sYW5pQGludGVsLmNvbT4NCg0KPiANCj4gICN1bmRlZiBpc19kaXNhYmxpbmcNCj4gLS0NCj4g
Mi40MS4wDQoNCg==
