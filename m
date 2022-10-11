Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68FB95FAF59
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 11:30:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E6E710E206;
	Tue, 11 Oct 2022 09:30:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB01C10E206
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 09:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665480595; x=1697016595;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=QU4KTnTl6vKMyLwdp3CruEe5ExvlS9YjV7zWneQJQVI=;
 b=Mqfaz6lYUT5axb7zLoJTnqbkmdUr3DkG7ICTntmSh3Tc0Af9g+2b2z18
 ZdYqmOAuYf2mbTev4tOjLlbiSccdxJKvHYPmCgiuCCFk6NcRIeEDsA7x5
 CKYiFjlBeKBwdMBZ4LMU5QX+I7flGJmHO47IXIr2TzxQ6WOMUJep+zJBs
 t0VOgJMoK8YiRaZUhZZa+5MqyXW3BfCs/wW7ZZJVAyV9NAhBLV4PbrD4u
 l+FjbFaP5NHrDmw+vCYdDDLyBQC07KBq0KMUXH3eZaMAXABNIS2EOy06R
 3AVG9vUakpBy75xCvqjEx3Ib7zPojlEQ1atZozyv2wuwfmAGjt5H+kmhF Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="390764179"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="390764179"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 02:29:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="694989708"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="694989708"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 11 Oct 2022 02:29:55 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 02:29:54 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 11 Oct 2022 02:29:54 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 11 Oct 2022 02:29:54 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 11 Oct 2022 02:29:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PKGnMt2e9bm70BE1QLRgPyfZ+dUQHwP3k2hxUKN0efjbAGn9+kl1qaZ8Y7wtSU30M4pYUu0m0Lrb24t3caQ2B7e1IPEsilIr7quLLumYFEjOkZOwp5HRgCAYHfTZ8LNJ7sgJ1jDiVC1ofom6R97uw1yg/umUhw+grol/U2Tww3MfLSuvcnGvYp73RGUSpZPGOMGIFd6/aH1gfdHkQTLDi4h16/cfN2IEUSUlbxae58tSoih+SC6o3xvNrSIAUDepPTR1lO4Ax6cvFx3oKsbb/v4licRGQ6ITVtonX4MhP9/ljgCMDQw6IJP0BCkm74CUTaQJ/Gt9wi+jAq6hR/t18Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QU4KTnTl6vKMyLwdp3CruEe5ExvlS9YjV7zWneQJQVI=;
 b=DVlrt0ee4UeYpxen2MBuLYNro7vDZPlAOvfXkcCi5lf0MIiyFfC/zOaP6GVyGbCSXxdKJQwTPL2ljbYByOaHCuT50l99kUdRmJoDVf4+lsXwvN+jyqQFhGgGz2wa37dFnr3wX9hIP4iSyac4dLRd6oiieOR0opIYaeGYTO2+0hwauhqAlcmdBw1sAHIfPISicC6I7AOAZDTnjWr8KPNym0V7vdSGYjKO8g3biqp/nTlfuIHjb/rDV3K5cQXGievnZ8DNxpt/yJ/RjMbtiwlJDkaazSDLUt9bJCwxMSG1aKHNcAkq97uamIBXCp87v/uQFYWW/fIdHpIUkc5CXsBrEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by MN2PR11MB4647.namprd11.prod.outlook.com (2603:10b6:208:262::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.15; Tue, 11 Oct
 2022 09:29:46 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::8d5f:f673:eede:6def]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::8d5f:f673:eede:6def%8]) with mapi id 15.20.5709.021; Tue, 11 Oct 2022
 09:29:45 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 0/2] Provision to ignore long HPDs in CI
 systems
Thread-Index: AQHY3VN2wXokb8Oe/Uy2qJzhvQD6h64I7VaA
Date: Tue, 11 Oct 2022 09:29:45 +0000
Message-ID: <880d94dd30a70810fa2a86c05eeb045e4189203e.camel@intel.com>
References: <20221011092508.445966-1-vinod.govindapillai@intel.com>
In-Reply-To: <20221011092508.445966-1-vinod.govindapillai@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB4962:EE_|MN2PR11MB4647:EE_
x-ms-office365-filtering-correlation-id: 03806c10-2c50-4a27-702b-08daab6b2278
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: u6Clxb6qGAgAJzoY6uOHbjF/l1t220CAPjIBXUnEHgo2tKE2aaUQ9YQFM2tT+fJTEf3JuKKn1FUea6JYVtwlOrnPyRrLkE4C4NJdUBIwTgpuRX7zGl0xJ5ANRSf3H/xWptRnCajfiw0FEl8kJ8ryfcniVrFznr8z7dbj2YIyiNiyiRrzacx7PLogvSDctGUzX3hluHbR02ivG+wd15sEORhuJld7yg+WCJqTweMP0ISPi0FsJ9vLR6qhcLbQ7qiEMxDAvEo0O4JnEwdPdEbrlsRLYkCSD41LXb4gv6b0XwvutssxJjDVNQaMneXNxGIcxqXdjml45vs/aHZznR8ESJK7JYRQBPmpkc6QJTIfQ58a5vKm6AZ8gAQukK4b6dt5WFtZiuXyodpDFsoI+jAckSSF2uRsVLEnwxUh48oMX72hzcP/Mj6aX2qaSivTvk5ZtgsagMQEYbS3Xfk91AglaUsX3OWyN87ukyjH8N/nLNnKh7TM07vt/mhHlg/vZCaPwuXqwPQrob91016NcQUqEfuH9Ehl4zMpEHve1fh7rKH1RKVmuekoGpq9lN/I3gg2mFocpFGvPjTu33qoj50+kpOqxkTUVkebG2UabkqgKLvaMY75yDOf07nZUPA3+8ohzhsqfEm2dnRMyR4U3MALqpQ+qILQkFp5suRaUykPl7CpE77DoQlAj4TEHUP4Cvo2Mm97/Hu6MFNTbvnIzfNyBIUcyJ+wzRoxkTQrMaWz2w2gHYciE+D9v3ikSG9D+8EUKNcroujZj6P9GTrarVe95Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(366004)(346002)(396003)(376002)(39860400002)(451199015)(38100700002)(82960400001)(2906002)(4001150100001)(2616005)(6916009)(316002)(186003)(38070700005)(122000001)(5660300002)(6506007)(4744005)(36756003)(26005)(6512007)(107886003)(8936002)(66476007)(6486002)(66946007)(76116006)(66556008)(4326008)(91956017)(8676002)(64756008)(66446008)(86362001)(71200400001)(54906003)(478600001)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uk1NdFVDVzVBUkpHY2RYMWNLeVJHWFJjSzROUUtSajdFLzRxMjlrNkpvWTlF?=
 =?utf-8?B?czF5cWxUNWRadnV6SzNxT2htSit2bktXNVVBV2NXZHZBM3ZsL2l2b3BsOWR2?=
 =?utf-8?B?V3NKS01GcWZuczZIUmV2U0w1bXFpR2t2TUJzbitiajkxZGFIbmxzN2gxYmhw?=
 =?utf-8?B?dGNJN1JHdHlsSU9EWHo1bWViaDFTOTJRNUh0MXVZM0NlZDkza1YwQXRYbys0?=
 =?utf-8?B?aVZsdnl4dFhoQmwweldjWWNNV29BejEySUdQT1BIY1ZqZzBZb0RLS20vQk1m?=
 =?utf-8?B?Y3creFZEWWZkMUtFMTBjKzNiY3ZEeWxmNGhQd3hrdXA4NzJ5b0VhSnVST3FN?=
 =?utf-8?B?TFNxRExUTnN2bHl6MHZvalR5NDBQV2tQbzN0WkFzRENmeXdWMVpCSU5wOGo3?=
 =?utf-8?B?NHBiS0dvS2NsU0NubHVwRlliVHNtTjZ0bE42a3JmWWRrN2ZVZ2Jlb1NESXpX?=
 =?utf-8?B?aGRmOS9YQnp1MWxpQWVFTlQrc09NMnZINktEQnRDQ0t1K0JqMG9tRzlQZWhB?=
 =?utf-8?B?S3VIUVY0RTQ4SEk2aHhGVTFQZjlwcGFXNHRZdHJHWEFsSlJ0eXQ5ZmQ0YUpY?=
 =?utf-8?B?ZERLemVVczVpVTZBVGt6bkhXdEt5RDFDM3lMZDFXcDZjamJZUWRuYlowMExr?=
 =?utf-8?B?Z29pSzVXei9sUUxEaFI5dWRIQmJUYnRlR3dEWVM3TjBHeFBubVNNdGdkYU1X?=
 =?utf-8?B?ZmR0MWY1TFByUmQ3RmpKU1lKY0RNdER1SUVGeXVFelFKSk5qQnVyWkxQa0Iz?=
 =?utf-8?B?QklFYVI0MElGcS9nWTRBdU5CMXhha2Q5OG9MaGRFakFUeXU1TTdPMDJjVGtm?=
 =?utf-8?B?MTF3ak45ME8wYU1QZUI4Q3VnZ3BELzB4aWZtSEpOT2pZNHJTTWZxMU1lblMw?=
 =?utf-8?B?Nk1Pci83bjRYdXVYSmlBWDRaODlBMEhBa0hraGVEb2xLZlBnL1N3VjQ1aHJK?=
 =?utf-8?B?b3RLWjZsTXFzSEpBMTRUdEFubTQzUXUvbmxLMTZKR2pkalk4RVJvRzAwbC9R?=
 =?utf-8?B?UUc0cVZCd0VkNHRyZnhQYnBjNkt5ZDBPeHQxUktEa1l2UGFQMUJRN25XeW1p?=
 =?utf-8?B?Q01TU1ZYU3RwZ1VGNyttNkhrTlBYTXpHbENvMTA1RmZzTWJCdFJVMkZldmVR?=
 =?utf-8?B?dUI4aVg2T0s0ekltL0lHc2dEcEdoSWd3alBoZ01rMkRTMTBYbmowVFYrNmVT?=
 =?utf-8?B?UlFhUnFwYVBZS2dCNDJtVkcyTEtDNDV2aStZSElqa2ptaU1OYWZVcjloaXV3?=
 =?utf-8?B?ek8yMUljcGdwUStaeFlvcXZRZXVUVXB1eUFlMEd3dzRzOFlRWVgvSVI2Y2RO?=
 =?utf-8?B?UlY3UkY5TE9ndDRoTzJZcitOQjBocTVURk1sb1k4NlFnb202WjBpUE9VNko1?=
 =?utf-8?B?Vm9kc1AvemJydmxrNTNqajF1MjJybkZYTVoraEFiSmlLNDlKTGVERlFvdHlq?=
 =?utf-8?B?UVJxalIrS21CbWtjK1dGUHdwTVFkRENtWnhuRWN6RU0vL2JvZzFyaWpMMG9l?=
 =?utf-8?B?RmIzZExwY0FhSGwzMXoycUphRFN2UmJNSFM5d0Jkd1owRytwSXdnVlZ1UGtV?=
 =?utf-8?B?T2Q2V1cwajFuMkQ1cWlkc3A2ZHJBOHVkNVJLdWdodTg5L3NZWFlidWFXL1Vj?=
 =?utf-8?B?NU1xMTQwZmVGSktUTTZlTWduMU8zeDZsKzQ5VGt4N0tFcDQzaTdvU1BkaFZ3?=
 =?utf-8?B?UEpCaFMyeEdBcmVKdjRwZUV0ZXlWRmRJTmE4NllvRTZaWmxnQ0VBNnBxcWxv?=
 =?utf-8?B?cWVpZ2tkVXB1NENCdVJ6bjd4RGhEdjVDeWxzZ3JKNGQxN2tEMzRRaEdzZHFp?=
 =?utf-8?B?S1VYK2Z4bzQyY0c0WFdFSWV1MGNnTnBqNkNrK1pOeFFpeDNrUC9ROHhyTkxF?=
 =?utf-8?B?c1V3NkVxUndyRzF5RExkT3lFdGlnZXZLbDU4SkZJTXlYZWZEdmx4STRPUmlH?=
 =?utf-8?B?Qm93ZjJDa1JaVWZrZENzTVFEVVZSeWljU3AvVHpXQkpkQ3IwOVpkcUdHVWFa?=
 =?utf-8?B?eTJZdW04MXdVMnlKS1NTVFRKK2taQXZNdC9FQlFTVnI1WFR6RlBDclhtVWg2?=
 =?utf-8?B?SHd5QjN3UUIrMEtLQnhBOVNFbWs3Qyt5Tm95cThvNWowVE0yNWdramQyTmJC?=
 =?utf-8?B?YU8wWXJCTko0OENHNm4zeGtUMkdkZHBMT2lpTHFyQkxCT0d2QjYzTUp0M2NK?=
 =?utf-8?Q?tlnjlVc9idVvyo/HIluQzTk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <76FDB02A8537BF4E88035F95E1E42B2F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03806c10-2c50-4a27-702b-08daab6b2278
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Oct 2022 09:29:45.4202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oLBmpPVK8LNvwXpwoY8NKDzmQc6Ub1JD0Y49H0OKsKvtzmGtQ8T9QHjlFzJXTuWHhBWNcjv+N2wHY0VEQ19HrxixfVojVsxmZpWHY9vsvug=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 0/2] Provision to ignore long HPDs in CI
 systems
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "De Marchi,
 Lucas" <lucas.demarchi@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

U29ycnkuLiBwbGVhc2UgaWdub3JlIHRoaXMhIEkgYWNjaWRlbnRhbGx5IHJlc2VudCB0aGlzIQ0K
VGhpcyB3YXMgYWxyZWFkeSByZXZpZXdlZCBieSA8YW5kcnplai5oYWpkYUBpbnRlbC5jb20+DQoN
Ck9uIFR1ZSwgMjAyMi0xMC0xMSBhdCAxMjoyNSArMDMwMCwgVmlub2QgR292aW5kYXBpbGxhaSB3
cm90ZToNCj4gQXMgc29tZSBmYXVsdHkgZGlzcGxheXMgZ2VuZXJhdGUgbG9uZyBIUERzIGV2ZW4g
d2hpbGUgY29ubmVjdGVkIHRvIHBvcnRzDQo+IGNhbiBjYXVzZSBDSSBleGVjdXRpb24gaXNzdWVz
LiBBZGQgYSBwcm92aXNpb24gdG8gaWdub3JlIHN1Y2ggbG9uZyBIUERzDQo+IGluIHN1Y2ggc3lz
dGVtcyB3aXRoIGNvbnRyb2wgdGhyb3VnaCBkZWJ1Z2ZzDQo+IA0KPiBWaW5vZCBHb3ZpbmRhcGls
bGFpICgyKToNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogaWdub3JlIGxvbmcgSFBEcyBiYXNlZCBv
biBhIGZsYWcNCj4gwqAgZHJtL2k5MTUvZGlzcGxheTogZGVidWdmcyBlbnRyeSB0byBjb250cm9s
IGlnbm9yZSBsb25nIGhwZCBmbGFnDQo+IA0KPiDCoC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5X2NvcmUuaCB8IDExICsrKysrKysrDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kcC5jwqDCoMKgwqDCoMKgIHzCoCA3ICsrKysrKw0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaG90cGx1Zy5jwqAgfCAyNSArKysrKysrKysr
KysrKysrKysrDQo+IMKgMyBmaWxlcyBjaGFuZ2VkLCA0MyBpbnNlcnRpb25zKCspDQo+IA0KDQo=
