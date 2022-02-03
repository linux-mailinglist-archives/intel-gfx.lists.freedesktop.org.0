Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 88B7A4A9058
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Feb 2022 22:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AFEA410E239;
	Thu,  3 Feb 2022 21:59:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D011F10E239
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Feb 2022 21:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1643925539; x=1675461539;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=jbmzSGLpTfShkumNWmjy0/m7xBfbNOUnkln/ev2Ztek=;
 b=VJQ4+S+G7NZ61WehF+cFmt9WGzE2arqCNUllaXgtR9UVwCOfWpoxaLI7
 F7A8DTJqla6dX5wq7Ze12OhjNvJYS5G+2EcBevfSw4m/6Mr8XjXshoiBe
 fHPbsoT2m0Ingww0+/dAyUeOZYQ0uQqHk1kPZjk60JZR7PItvI++QoLWT
 KHdQGoxnBty9tEhUQJU/YBJBI3nAMH2+WKugjPcaR+kQ0t/cO0Buin5YZ
 3kdY06dZHDMH3VNwAgeNmIpyuj5GcZVl9PW3jikpUV05g0afOUSGFNiYk
 XjQoH9ISnp0ZWTm/9Gil0TSTHBUF68bavGdrZzMVLJ7JedCCMtNP7nr2y g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10247"; a="248476255"
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="248476255"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2022 13:58:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,340,1635231600"; d="scan'208";a="631501014"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 03 Feb 2022 13:58:44 -0800
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 13:58:44 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Thu, 3 Feb 2022 13:58:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Thu, 3 Feb 2022 13:58:43 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Thu, 3 Feb 2022 13:58:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NBS2RHQ7WAYZOg+CNKLRSuViUAdjCSnfG7hpsy02w/GIyB871Zw/JJu+50oHoVWrgOyRVsdYaWk3hfNIE2KnCln5+Jq2436Bv288BevRnkQ+k2JzNRL3n8dyOzZArlyeXecrH4cUg+XksjXTcFxt9+O/PmdZv4vzAB6n83XnIMpqEgvEmbfJhcK4mVdYNP8Q6vKf4CkJK3fKyYQN42scYUYdUIvDtGn43OT5HnbygfW8JWrZJJFVmML4gGiAZ8NVXX/KBZDpoIAvrkJpSffFWSDY+GLvf2VswjkJ6AEmWRrl8uG2Nx3drBMJFEft5RL9VOIxGo2Ws6GgX6H3OqmcYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jbmzSGLpTfShkumNWmjy0/m7xBfbNOUnkln/ev2Ztek=;
 b=jLIAZa2xudu/yoA13VlvayivDyPcBEmlRTUQXFZOKfePsvVTg02GLFcOHEoYeCdlcuAB9eWEEsWOmRv9rfhkcFh5fsKYfzypaGfUXmWWvrwMAcb38nQ3Xk9Pt4NEzbgW+iVxXDONzNYwkWXDiZg4xx3/Ekn/CClbN+Wl+ur3wGByamcb+EvhOMXDgg0tFnWeOATtkNgl8QRO54tZrhxjQNJoiwDU0BKZD+jW9hljn2jE6mv/llKfwU7rEGxG0BnW/LzYXzO5DqK3U++7u+RfB+BB4uvrw1lsZxKYOrQs+5e+sIS0934gSg1jP8YBetX9aNnytTqdI5TYKn38DFgE8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BY5PR11MB4184.namprd11.prod.outlook.com (2603:10b6:a03:192::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4930.17; Thu, 3 Feb
 2022 21:58:31 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::a048:b2cb:5446:6b13%7]) with mapi id 15.20.4930.022; Thu, 3 Feb 2022
 21:58:31 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
Thread-Index: AQHYEqH5AesT2BN4CkW6nekEruHB2ax1582AgAxUXgCAABEugIAACZeAgAABE4CAABAiAIAABYyA
Date: Thu, 3 Feb 2022 21:58:31 +0000
Message-ID: <25ac061fb287b6deb0f761c13ecbee7025e0c550.camel@intel.com>
References: <20220126104822.3653079-1-alan.previn.teres.alexis@intel.com>
 <20220126104822.3653079-2-alan.previn.teres.alexis@intel.com>
 <20220126224619.lyftw7w3okka4lfg@ldmartin-desk2>
 <20220203190324.GA4413@jons-linux-dev-box>
 <20220203200453.jrxhact4bcmwfpw7@ldmartin-desk2>
 <d96b56cd199796f429263ebb5335d97dfd2d9e3d.camel@intel.com>
 <a7dc9b9d3cbdabdec9a56a0a8406f15d1e72692b.camel@intel.com>
 <20220203214048.ibdty7rftm5nqwjr@ldmartin-desk2>
In-Reply-To: <20220203214048.ibdty7rftm5nqwjr@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3dba4a5-abdc-44bb-2f2d-08d9e7605151
x-ms-traffictypediagnostic: BY5PR11MB4184:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BY5PR11MB41845DD58F92D8A93884FB228A289@BY5PR11MB4184.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hIywiQVdW6sSDh2qZuJR1rfD7nu2c/SbbjYDWDo+0QiTqEnNx5ZrMMZS87EFVucDdDi1VWe+ZTPa1Cz9HrgJxFF/o1065KlRGg893kMETlfiNvxsyQZvegMAMexrQrkzRuVPh18Q8TyJnk+Z4VMAL2yZLlitOFyYRKZkPoodXNeNm01CGSkB1yW8ykw9KstnRoWVc79Z0n6HPZZ92MjDDQtuCi/keizzZzrXtjcKgDBeuvTpNnzEC0FsuOIcQ330EF1gZ7z9Z2YVHpZ3w8bIzpk4NPOIGf41yv1BIF2aTipE9m/5zN2FJqRGArDiCun9rim7m8GH2m9CTCbe8D0ryz0LBGDfpnTGG6ZwyvkBx8rK9s4RHYWtjQ8Objh2U1YOVhMZl4JLEXCSwMOlXh4gCGhO9l1PNL+BpBQ1IlJj2m7Po38JSuZLRtfc3ZIJmheqwwR281dj9vkaEZtYH3l2jyGInzrXxnD/ScesGs38Bal47Mx1Nprm5lXsSX1HzQfVJ2OesbfO9YewF/DBqdqrn7OXKteMTfTJb1Cs1fiRcBKtF8f5hTOwDc9cxM3pPvzdEHrpxRb8iVMh+IEfRksl66DxLbu5LZtwaHbJ7nn97vXbmarRRzBMDbOPQaJgqXiRr+ym39JT/nyAte1e6vP/i3BOgXMs2A7u+v0M0lYkRcRceWTget7zFwmb6KsKCssIRifcTO7VoCdAvFO4aRt4Bg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(83380400001)(26005)(36756003)(186003)(6486002)(71200400001)(6512007)(508600001)(2616005)(2906002)(6506007)(37006003)(5660300002)(38070700005)(66946007)(64756008)(122000001)(66556008)(66476007)(86362001)(316002)(38100700002)(6636002)(6862004)(8676002)(82960400001)(8936002)(76116006)(66446008)(54906003)(4326008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SmN3MW9RNGpRL1VxSHRVMVFXUERGcUVzd25TNjdPVDZNZEZ2VWJyc1ZRcHB6?=
 =?utf-8?B?bTcvdGpqLzhTNDNIZU5SbTNvRkxBK24wMGZ0enZ2YldIeVVGNFkyRHIzSE91?=
 =?utf-8?B?TDArT05wRkZOekdrN1JiYko2d2V3dzloUENPYjlRSkRsZityS1ZFUWJNVzR6?=
 =?utf-8?B?bEprUnRCL1VqbDg5Ymk0VTJDeU1Dem5YZkdLMklCMFEyMWRTYWRVUGUwZ2NG?=
 =?utf-8?B?bTVuS0RtT1c2bk1XY0JyS1pYTXNyYnBPQjhkbklMWVlYTFZRMkk3WUI4UnJy?=
 =?utf-8?B?VWVYNThWSWxTMkFmZjRaOVJzSkQyalJpa1p1YTN5SS9lRGd5L0tCcUJVL2xw?=
 =?utf-8?B?d3ZpZWF2Q2ozZ0NZUERWNFNKRjc5L0l3Rk5oUENSb1ZDRGJZTk42cUZaRkRa?=
 =?utf-8?B?eGhsQlpwSjNaMEcrNFNkVEFVODR1U1lxd0ZTUmdpY3hBSWdEM09ML3IvYVJU?=
 =?utf-8?B?ZXJRYmU5cW1vcktSaWJMaHFLZWhNbU5jWTJQRiswdHNQbjhPUnNkREtpcStO?=
 =?utf-8?B?a1Y5V0xTQWx1SlRLb2ZqYlp4UHN3QWFuVm1Rb1dUMUErK0RlR2ZEN1Z3Zkw5?=
 =?utf-8?B?YkpYSU5pOFZLY2RTQ2dJRDVCZ3dBMWwyWnd6WG9VT2hKOTV6eGRlOEp3YzFq?=
 =?utf-8?B?aE1XeklENm0xdjRDdDd6am02RHhsZHBBSkNmS1dBNTIvNnRSd3NNS0g1T1Bu?=
 =?utf-8?B?LzVFYTFpS1hGVFlzQUUraStsdjF4OTVFSkRja2QxY015YU1tYTMwc2QvNFdL?=
 =?utf-8?B?SjNGbDBWTnlMK2FkZWVsdndKeWQvUVRkWk5mY2pXaHZXSytaRmpBT0lMd1ZU?=
 =?utf-8?B?MjJsMytMeXk2cTA2QjIyYURxdUNaeFhmL2pNc2xUMWRJWktZVXVxN2FBdEpF?=
 =?utf-8?B?RVhtVnlrUUZaaVFiSThBTXdJd2FhcnliZmU1MFk3czRuU1hxb2lGMHNVSmM2?=
 =?utf-8?B?M0xnOEx4cHVFVWV3MGN6Z0RUVjJmSnNZR0t0SGdydThkNmNKOFNTVkgyVmpF?=
 =?utf-8?B?enlVUUlsUlgvdVhESG42ekoxK2FPeEY3Nlc5aDJndzhuVEJzOHVlK1JUZHh4?=
 =?utf-8?B?MmlVWmtqMmNGSmJRTW5NcUZNcWVxY0M0QzdhV2xpRVBIR0JVV2ZJVDE2eEUy?=
 =?utf-8?B?RDhIemxPU1A5R28vQ2JLcjZ5SHAvZnFlb3hBS3RVZUw0OWpKTG51blEybFQ4?=
 =?utf-8?B?Z081VWt5aDRjSXhBdTcwN2huV0xTajRMR2FNNWpwUGNaUE5tbTczd3ZwY3NQ?=
 =?utf-8?B?YWpZSStGZWdkWnltdjJWbEdoUm9Ga29URVBZT0tsNzN5eW5QWnRRZzEyMmtW?=
 =?utf-8?B?ekJQbWxQYWNrZ1ZNRE5sdlhDUjQzbGhFQWZRUUFaUVJnY2xDQWc3UVQ2VGd2?=
 =?utf-8?B?MGZYb2prUldoZThtZ2RTMm5lcjUwckhJSjhmNnhYMS9FaGdRM0svSjZLY3kx?=
 =?utf-8?B?U1dLUzNHMDl6SmRseWZRbmxNb0FyWEhuTDJxb3RPblV6Uk5zVUJmVHNweXdI?=
 =?utf-8?B?eFM1MlVldnIvOCtMS1VwbXlDdWN3ZjN0RE9XZXJBbTJCd0RFVXlnYjVXaUdP?=
 =?utf-8?B?QTZtWE4rdE9HMm1BQmZ4UndpbEpYZ2NzRDJlLzZraUdLQXZQc0ZuVzR1akJu?=
 =?utf-8?B?b3M5OUUvU3gya01DbHFhT1M3K0Z4S0Y0cjNUMnZTYzRVQ1h5YmcxTGpQZmQ4?=
 =?utf-8?B?N1ROWkRXRjZRcytyRTNJa08vRWY4a09vQW16RHMzSUJIVi9vMkV5citIWGlO?=
 =?utf-8?B?Y0hBZnoxbk1sT2ZnUDRGYkswR3d1MUhlZ3JJSHQvVmlRSklUck1ac1ZZVlg3?=
 =?utf-8?B?RUplOHNEQWFTSEtsSWVzYmZ1MWVQaTE1L2Q4cnVXYkxycmVzRkNxdHcyL3RS?=
 =?utf-8?B?ZnRpOCtuRXE1eVZIS2xLOTVISHJqWnVpbDZBMjR1S3JQNnBHeXJ1RThRRWpH?=
 =?utf-8?B?R3p1WnlLZUVSR3I4ZUZpaVl2VEl1bFo5djNPUStJc3U3V0djVktUeGhNUXNt?=
 =?utf-8?B?blE3cjg1L21rQlJIK2NFcHlqUURhZWlKU3FrUWhrTll4TWJvUldTbG5SVHFZ?=
 =?utf-8?B?dTR2RHArOE9hV2tjQmlRT1N5V1NhVkI3aUNoc3VrYXhoc1FnT1dheEtCeU1Q?=
 =?utf-8?B?L2lyNVh4K3RnU0FVSmRwWlVsMitSeTk4SUZsSHlOZnF3V1pjYkJZR2pEL1ZB?=
 =?utf-8?B?bk4vUjFmWllaRHh3TjFIV3lKTkdhaFVyYWxoMGk0MkhDVVVmSEYvRUdMM3BJ?=
 =?utf-8?B?QUJocUFaR3h0dy85Vmc0aStRN3pZN1pxTWJQSGYzcFpOOGhnczdUSkcrSmVP?=
 =?utf-8?B?bUYzSFRoRWFhbVJTSVR3cDR3cHUwQmc5dSttM1ZuWFV2REZZcFdiQT09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <766795A59F631D40BF7F41855609C98B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3dba4a5-abdc-44bb-2f2d-08d9e7605151
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2022 21:58:31.5381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IZ9mWRQx1hHa34ubunMPlaB9RCPfnUZLfJnDTqeYbs+O+YofRc5YYsRz37TyzUulQCWMMB/k/EMV4wnQENkUU/NKIfzmnuJf5w+/Ku7BbF62YEkmJx7QyGNbTkdeDpJL
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4184
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 01/10] drm/i915/guc: Update GuC ADS size
 for error capture lists
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

U28gd2UgYXJlIGNvbWluZyB0byBhbiBhZ3JlZW1lbnQuLi4gSSB3aWxsIGdvIHdpdGggdGhlIG9w
dGlvbg0Kb2YgQURTIGNhbGxpbmcgaW50ZWxfZ3VjX2NhcHR1cmUgYW5kIGFza2luZyBpdCBmb3Ig
dGhlIHRlbXAgYnVmIHB0ciBhbmQNCnNpemUgYW5kIGxldCBBRFMgZG8gdGhlIGFjdHVhbCBjb3B5
aW5nLiBJIHdpbGwgaGF2ZSB0byBzZWUgaG93IHN0cmFpZ2h0DQpmb3J3YXJkIHRoZSBjb3B5aW5n
IHdpbGwgYmUgKGlmIHUgc2VlIFJGQy1yZXYxIG9mIHRoaXMgc2VyaWVzLCB0aGUgQURTDQpkb2Vz
IHRoZSBmdWxsIHBvcHVsYXRpb24gYW5kIGNhbGxzIGludGVsX2d1Y19jYXB0dXJlIGp1c3QgZm9y
IHRoZSBleHRlcm5hbA0KKG5vdCBpby1tZW0pIHJlZ2lzdGVyIGxpc3QgcG9pbnRlci4gQnV0IGEg
bG90IG9mIGNvZGUgdGhhdCBnb3QgaW5qZWN0ZWQNCmludG8gQURTIGFzIGl0IHRyYXZlcnNlZCB0
aHJvdWdoIGluZGl2aWR1YWwgZXJyb3IgY2FwdHVyZSBzdWJzdHJ1Y3R1cmUNCm1lbWJlcnMuDQoN
Cg0KT25lIGxhc3QgY29tbWVudCBvbiBiZWxvdzoNCg0KPiA+IEFsYW46IFRoZSBmaXJzdCBwYXJ0
IG9mIGFib3ZlIGlzIGFscmVhZHkgd2hhdCBpcyBoYXBwZW5pbmcgaW4gbXkgc2VyaWVzIHRvZGF5
LA0KPiA+IHdlIGhhdmUgYSBzZXBlcmF0ZSByZWdpc3RlciBsaXN0ICBpbiB0aGUgaW50ZWxfZ3Vj
X2NhcHR1cmUgbW9kdWxlDQo+IA0KPiBubywgd2hhdCB5b3UgaGF2ZSBpbiB0aGlzIHBhdGNoIEkg
Y29tbWVudGVkIG9uIGlzOg0KPiANCj4gPiA+ID4gPiA+ID4gKyAgICAgLyogTGlzdHMgZm9yIGVy
cm9yIGNhcHR1cmUgZGVidWcgKi8NCj4gPiA+ID4gPiA+ID4gKyAgICAgaW50ZWxfZ3VjX2NhcHR1
cmVfcHJlcF9saXN0cyhndWMsIChzdHJ1Y3QgZ3VjX2FkcyAqKWJsb2IsIGJhc2UsDQo+IA0KPiB5
b3UgYXJlIHBhc3NpbmcgdGhlIGNvbXBsZXRlIGFkcyBibG9iIG91dHNpZGUuIEknZCBldmVuIHRy
eSB0byBhdm9pZCBwYXNzaW5nIA0KPiB0aGUgc2Vjb25kIGxldmVsIHN0cnVjdCBkZXBlbmRpbmcg
b24gdGhlIGNhc2UsIGJ1dCB0aGF0IHdvdWxkIGJlDQo+IG11Y2ggbW9yZSBhY2NlcHRhYmxlLg0K
DQpJJ20gc29ycnkgSSB3YXNudCBjbGVhciwgd2hhdCBpIG1lYW50IGlzIGp1c3QgdGhlIHBhcnQg
YWJvdXQgaGF2aW5nIGFuIGludGVyaW0NCmJ1ZmZlciBmb3IgdGhlIGVycm9yIGNhcHR1cmUgcmVn
aXN0ZXIgbGlzdCBvdXRzaWRlIG9mIEFEUyBibG9iIGlvLW1lbW9yeS4NClRoYXQgYWxyZWFkeSBl
eGlzdHMgaW4gYWxsIHJldidzIG9mIHRoaXMgc2VyaWVzIGJ1dCBpbiByZXYgMyBvbndhcmRzLCBh
cyB1IHBvaW50ZWQgb3V0DQphYm92ZSwgdGhlIGV4dGVybmFsIGJ1ZmZlciBwdHIgd2FzIG5vdCBw
YXNzZWQgdG8gQURTIGFuZCBpIHdhcyB0YWtpbmcgdGhlIGJsb2IgcHRyIGZyb20gQURTLg0KUmV2
LTEtUkZDIHByb2JhYmx5IGlzIGNsb3NlciB0byB3aGF0IHdlIHdhbnQuDQoNCg0KLi4uYWxhbg0K
DQo=
