Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4614C4A9F88
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Feb 2022 19:53:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6461B10E3DB;
	Fri,  4 Feb 2022 18:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 825AE10E5AE
 for <intel-gfx@lists.freedesktop.org>; Fri,  4 Feb 2022 18:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644000810; x=1675536810;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DvpJplEiWp+OiRhk2e8IktrEuvXlh7wSNdTTCDmF0Zw=;
 b=RDDHft9cjsu+91gvLenQA3J7Im0GZksit2JKaozNKrZp5RGOtiBuslwQ
 GvuFKCq0S5LFLsN710qxx3j4O6HHfakCBxWemGQg4cX8poTohI5emRyc8
 YP0mOIyA65RvKgT+08+x9qSTpsxhh45x1X++MPe7DptabPkA4VZMxfjvM
 7qjknWZUJU2T9H/gK/L6WFF2OgqhCJsuKw3GXHnynPFv6Xh2QRYFxN5xT
 8fnhh9O0xQ1nTLP2KwB+kkkAYoNlUgvbn6xQ/y7hrypCOd5a7jLap1nYW
 3sf6GHV280naD+LwWInAcbjpAOwY5iE0INENkpPPXu+yA3qJ+gJxSE0X1 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10248"; a="309168065"
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="309168065"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2022 10:53:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,343,1635231600"; d="scan'208";a="483701780"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga006.jf.intel.com with ESMTP; 04 Feb 2022 10:53:29 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 4 Feb 2022 10:53:29 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 4 Feb 2022 10:53:29 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 4 Feb 2022 10:53:29 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 4 Feb 2022 10:53:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EeVwLjnX8dSAWfQkx2qg2CV8+Dnt62j27GOQVwpg5eOnXRiKHmVlm4WhOi3Ue6/FGylHx/sVMgnfstpeDrCD8XRoMjhZwPuV4EDGyUICrI1ndyAdz4RaM2G+u84LkIUxuuJsxcuCrtd7sK0K6hI7dhsypST8Z3gLy+1mG/pQOyhR6El1nSuLLg5KqzCohyPrzRjHjLXUAyf/c1UIX7AmBgGLvNX3iodY62SjYTzIDAPR6vp+5SWSW4X6wDToMmfmaNHOcuZDM5yOziujvoE+XNIjcD7AQiiguf6pxY+/2J+7hIIlAEBsBRQDXFiE6lpFaRdBdhsKPnLku2LqecY1uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DvpJplEiWp+OiRhk2e8IktrEuvXlh7wSNdTTCDmF0Zw=;
 b=OQ7E/uk55ix7nUISDd103s7Fi/PY2wT/O0onPMKPUyBNcmLL7s3Ds9LR9UiAsRrPkyJtAacyTIerm/MLi5W8hElL+Yp+H8dHRTBBRA3ELrB0VK/XfY4bageUyKHIR0qLA1ohXlJOkaj6YudgoGLUWQF1GaEMRr3uQxWD9lMmm95nU4H1MyVXvXAqjcEUL6QWvKrHqOOPqsDQpUgXVDv9MNNRYASv8VeN7HuI2UehUxZW3CO6nGpDj5sn5n02Cx60/4Tj2Ledt+OsS5sZScA3NZQ9qUzFVqmODgqYnK+rGz0VYo0vmVt2mxZ2lyKW5XWUxLfBihR22SYO6pvJGv4AeQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BN6PR11MB1249.namprd11.prod.outlook.com (2603:10b6:404:3e::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4951.12; Fri, 4 Feb
 2022 18:53:26 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4930.023; Fri, 4 Feb 2022
 18:53:26 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 09/10] drm/i915/guc: Follow legacy
 register names
Thread-Index: AQHYEqH5+olgF0g3D0yoqCS+E8VfnKyCPeqAgAGOZ4A=
Date: Fri, 4 Feb 2022 18:53:26 +0000
Message-ID: <fd84e105fff8f7e116b5c10ba6d51e9fbff98341.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-10-alan.previn.teres.alexis@intel.com>
 <20220203190939.GA4485@jons-linux-dev-box>
In-Reply-To: <20220203190939.GA4485@jons-linux-dev-box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e1d15e8b-9774-4cfa-876b-08d9e80fa09a
x-ms-traffictypediagnostic: BN6PR11MB1249:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB124919624995CBB68B58EB058A299@BN6PR11MB1249.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4303;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HOg8naUvc5asd089JsmZuCfoCKJAM9Q7IoOqQV3C0uCB85MDD4kmQYlYJUZs2+h9gfdrpHe1O1YUD8cXsiF6BdgR5UYybD0PG+o4exatgpEJshDTHmKYBqEg2l01NYZnacPaI88kOytrTQULjIYDsGQYOfpkYz99Dudz5HPlK0MRBafiREYQ/UVY6K7/mI1N5Z8CqBp5Y0KuRkwBvVqVQnivgs7PVSHCpo/IcClH0d26mTA1ZyQtyPuD0uqs85/V+UBtfAzvbvNSy+hYE2FxqCZytSRCRqM+9XRTfUL5YBqZvIftv4YJPV2sgbx+51Vj+ZBYKpkruAbb7MU8Rl3xjRySEoZWoKfiIZsMjPKajZ7rHHeDl2Nkf99cQ26tKL6tnM9jDbhGxMxPSwVMxWq+HXAhgHiQi8HimJNRKhuqkd4ctN1AQcG1u9Xc+PietMU/oYSgV3TOqMJY/i4FnI/OA1ZxFbwQFHe3lw0y/0CZ3JOrnOvEhC3VuMAmJpq55tzuzUBYM3BkZKBUXe1QGBgFWso6vDB41KgafXSGkKx3llx/TanM6gtIpVgbA7zepNSB7mxRWVv72jYPpxDyU6W11XdJeJJXh0OH2IhhaRPDB0I3NsHUrP7OhdDDlzOAkhTgwNdCSHyrzb+f382c5IymGQiHHK4G6BG9NxYw+R+aIKwOdvuLTqMXOydGJ4fxU924a02OLflsCfB/Ib93dSTtFQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6636002)(122000001)(37006003)(186003)(316002)(83380400001)(6486002)(36756003)(82960400001)(38100700002)(26005)(38070700005)(66446008)(8936002)(6506007)(66946007)(86362001)(66476007)(71200400001)(6512007)(4326008)(508600001)(2906002)(6862004)(5660300002)(76116006)(2616005)(66556008)(8676002)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K2wxelQvMWJxKzlyazFzMVdESnpOcTg3blJ6aTVBR3VGc3h3Y2VQb2dsM1Fq?=
 =?utf-8?B?TGVSWEhoWUVkSmRaNmFJWWNFYXFpMURQN01TU0FnY1J6T05TbzAySTVVTDlI?=
 =?utf-8?B?YnEvaEpUajFWRjJsNTB4WDRiWFZLUi9EdmkyamNubWNpVzNtamNwQ3piSHhO?=
 =?utf-8?B?bThnTDJDMHlta25IT2hsUnN2Z1ZqVUgyd3k2U0ZTMjJ4WVR5bDE5bUV6K1l3?=
 =?utf-8?B?VlE4S3Q1cWR4Z2M0OEd0SlAveDNMaUFiTFdqWTRjVEZ3eU4xamVLcTRhekV2?=
 =?utf-8?B?dk5PbXdYRXZHR2lham5tY3JQTmpHZjEzY0U2Q1NXRnZSSXJueTlvdmJzQ0Fs?=
 =?utf-8?B?QlIyck1rWHdEcWhOQmRSd3VTRURiZ1p3RE1Tb3dlL2FGV2ZOTzdEOFlWVEUz?=
 =?utf-8?B?d1M2S1FJYWtCUnNhTG5Gc1lLOUtpR0FFMmRuMlYwUU9YenE5L0hEekJQNHNx?=
 =?utf-8?B?V2QrYWhnZlNsTzhDYTNxblBJNndFRkYzYUlleCt5aS9nb2lJMXAxOXNDKzlH?=
 =?utf-8?B?SjFyUldxUzBaWDkyTFMrT1YrOG5LOEFMTURMaG5lY0IxbDJXRGZPQmgxQVR1?=
 =?utf-8?B?NndKbXB1N2RHRU5EbkNQVTNJYlZydzloejRjczVrd2g4Q01JOHNIdkI4bTB6?=
 =?utf-8?B?TVJUd1B6eXVCdCsrdWpyalBGaENOYlhybnlpbzI0KzJkL3M0Wm9kdHd4MExY?=
 =?utf-8?B?QTI0c1ZLNFB0c3YrRjBQVm56c2IxMUtBSGg2MlV2WWRpMzhpWDJVTVNpTWtM?=
 =?utf-8?B?R0VlbHlBamxZNUJ3UDFJMG5SVlhMSERldE5HMHFQWGF3NUJnc2Q1QlZaa3Jl?=
 =?utf-8?B?a3I5OFFpSVZVTzVlcjVGYVg1NWNVWnNENFhGeEU2bXZjcWdkUGxRLzM5cXpn?=
 =?utf-8?B?M2wxQTlkMW1WQkJUVk1IZXpYUTBRLzJCVW1FVER4TG9VWnZVK3BkLzFGTU81?=
 =?utf-8?B?ZXhFUllkK05ZMVg2NFFVaTc0cGR3Vk9jOWZHelRaZzZLYmEyQnVYKzFRaW9q?=
 =?utf-8?B?MU0xam1maStsVkt1ZjVkOUR4MnIzZmprU0hZYnFJSzlic1BnRjIyOUQzU0NF?=
 =?utf-8?B?UWZKN1lIc1J6cFJTMDE3UVM0STYweVgyNFdhb3I4M3FsQ3JNSDJDcmpxV3Fk?=
 =?utf-8?B?NEZRaGhabXBTdGtvNDNwUmxWMTB6ZGFabG9Wc2ZXVlhNUzZUbzEvOXRPdGZ5?=
 =?utf-8?B?a29OWk1STEd4bE5ZR3U5VkcxWTJ3R1RaTHpRbVM2VmZsek1nRjdtSDhZdmhu?=
 =?utf-8?B?dWJ5VG5CelU1QnNFOFVwMXkwRVQwaUNKUjRXSmlPMUN6TDhQUWRKc2t4d1dO?=
 =?utf-8?B?NUxpWHoxOUE3ODZRbFVVSlc4bUJGMzNaYmRBdUt3VEpuTlErVmJBY0lRWXkx?=
 =?utf-8?B?ODJsemdjRE5rQ29QMTUyNFhybStSSXFRZlpTRkRsTEs2TysyRG9UNVR3ZWxC?=
 =?utf-8?B?MEZjMmgwQnFFcHo1bEEvdGY4Rk9yTWVjTnpveFhRNnphaTJaY0RQK1N1eHdu?=
 =?utf-8?B?WElnZVladGg2OFlNeUtPeXZSS2FJeTdjL25nZ044am9JaTRqU3lFYWM0S3Jl?=
 =?utf-8?B?QVhCWkJEZmtpbTVaS3BuVDF2QTFCeExlY2djSkl4RFhVUkl4K0o5ZWFRa25v?=
 =?utf-8?B?d1lYR1dsQmZqSVhUOXBTL2s4NTdRek44ZXN4QitNTXF2TytZRmRNM1RrazlV?=
 =?utf-8?B?SmE1eFZPZkczalhpYm05MUQrazloK2xRZmZGc0VCL0RuNWMwVGt6Ykgwc0h6?=
 =?utf-8?B?cTkxVFNzbDU0SnNyMXd0azJlUE9vNVRhNmlqZForNlpnTVBUVVZ1MzRmQUZX?=
 =?utf-8?B?UGpZU3dvTUZFTkp5WW9jM09WS0VRWVZWWXlOVFhLb1NMNmp5N0d2emF4UFhq?=
 =?utf-8?B?NUFqT21jOTY0ZWhEeEJ0T09NblVQNTkxQ3JGdGFkSU5BTFZHR0VzZE9aWFZF?=
 =?utf-8?B?NVc4RGd6TXRnd2xvK0RJZHdUc3o1NGppNnVqc0FvdDZVSkRsOWVqQkdHeXUw?=
 =?utf-8?B?dlpJbHF2ZWZEbnI3K2lURlFVV3dSZTAyZWVSbVUxTFBMVXhtY2gzeXBPN2tZ?=
 =?utf-8?B?TC9wc3hSOGdJNitOTE12ZGJqZm9xQW92SWE0RDUxNXgyU3BLQTV3VUgzVVhZ?=
 =?utf-8?B?QmpWK0tjYVIvTDdyODlrZTQ4ZTI1VVdueXRRSEk5QmQ1Z3lvdzJGZ0JrcTJa?=
 =?utf-8?B?UzRFV1pZYloxTHJLdG9KL2NpYXVobGtHbUgwM3NSaStGQ29aZ0FDSlBSdWEr?=
 =?utf-8?B?ZTFQUjFIOUphSVJxM1JZOVdSTG0xR2NvVG5SRGpNY3FHK0tNZWREVGwrUXZH?=
 =?utf-8?B?aDJ0WFh5dGdQZGp0WnBqdllhWjE0ZGZhcyswaUtKK2xnZXFZNjlnQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <875C3D16C97720418D4DA5D4CF7DB8D5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e1d15e8b-9774-4cfa-876b-08d9e80fa09a
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Feb 2022 18:53:26.5489 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QLXeCAIb1AMxzXq6e1x2lFogMtOchfi4TW7GGazqzaSV6jIcWy/4I4lfDj8eoxEBg7zEH4Y+ZDu9OsdDZYO1XxxMFVgjgT6nc1s1msajZ/oaszo/L9vGWeVCwEO0joNX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1249
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 09/10] drm/i915/guc: Follow legacy
 register names
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

U3F1YXNoIHdpbGwgYmUgbXVjaCBlYXNpZXIgaWYgaSBhbHNvIHNxdWFzaCBhbGwgdGhlIHByaW9y
IHJlZ2lzdGVyIHRhYmxlIGFkZGl0aW9ucyB0b2dldGhlcg0KU2hvdWxkIGkgZG8gdGhhdD8gU3F1
YXNoIFhlTFAgKyBERzIgKyBHZW45IGFuZCB0aGlzIHRvZ2V0aGVyPw0KDQpPbiBUaHUsIDIwMjIt
MDItMDMgYXQgMTE6MDkgLTA4MDAsIE1hdHRoZXcgQnJvc3Qgd3JvdGU6DQo+IE9uIFdlZCwgSmFu
IDI2LCAyMDIyIGF0IDAyOjQ4OjIxQU0gLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0KPiA+IEJl
Zm9yZSB3ZSBwcmludCB0aGUgR3VDIHByb3ZpZGVkIHJlZ2lzdGVyIGR1bXBzLCBtb2RpZnkgdGhl
DQo+ID4gcmVnaXN0ZXIgdGFibGVzIHRvIHVzZSBzdHJpbmcgbmFtZXMgYXMgcGVyIHRoZSBsZWdh
Y3kgZXJyb3INCj4gPiBjYXB0dXJlIGV4ZWNsaXN0IGNvZGVzLg0KPiA+IA0KPiA+IFNpZ25lZC1v
ZmYtYnk6IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0K
PiANCj4gSSdkIGp1c3Qgc3F1YXNoIHRoaXMgdG8gdGhlIHBhdGNoZXMgZWFybHkgaW4gdGhlIHNl
cmllcyB3aGVyZSB0aGVzZSBhcmUNCj4gaW5pdGlhbGx5IGRlZmluZWQuDQo+IA0KPiBNYXR0IA0K
PiANCj4gPiAtLS0NCj4gPiAgLi4uL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVy
ZS5jICAgIHwgNzAgKysrKysrKysrLS0tLS0tLS0tLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMzUg
aW5zZXJ0aW9ucygrKSwgMzUgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9ndWNfY2FwdHVyZS5jDQo+ID4gaW5kZXggMmY1ZGM0MTNk
ZGRjLi41MDY0OTYwNThkYWYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvdWMvaW50ZWxfZ3VjX2NhcHR1cmUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2d0L3VjL2ludGVsX2d1Y19jYXB0dXJlLmMNCj4gPiBAQCAtMjIsNyArMjIsNyBAQA0KPiA+ICAg
KiAgICAgICBmcm9tIHRoZSBlbmdpbmUtbW1pby1iYXNlDQo+ID4gICAqLw0KPiA+ICAjZGVmaW5l
IENPTU1PTl9CQVNFX0dMT0JBTCgpIFwNCj4gPiAtCXtGT1JDRVdBS0VfTVQsICAgICAgICAgICAg
IDAsICAgICAgMCwgIkZPUkNFV0FLRV9NVCJ9DQo+ID4gKwl7Rk9SQ0VXQUtFX01ULCAgICAgICAg
ICAgICAwLCAgICAgIDAsICJGT1JDRVdBS0UifQ0KPiA+ICANCj4gPiAgI2RlZmluZSBDT01NT05f
R0VOOUJBU0VfR0xPQkFMKCkgXA0KPiA+ICAJe0dFTjhfRkFVTFRfVExCX0RBVEEwLCAgICAgMCwg
ICAgICAwLCAiR0VOOF9GQVVMVF9UTEJfREFUQTAifSwgXA0KPiA+IA0K
