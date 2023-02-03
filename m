Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9067B689458
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 10:50:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B04710E4C2;
	Fri,  3 Feb 2023 09:50:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 037D710E4DC
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 09:50:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675417840; x=1706953840;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=8KzVB1lUvy8fsrVlggsL/0b4jpTJ9jRH/OXb+GgeMx8=;
 b=Kf9SGgMQQNqNu43TUzn27fJj5+qSd7n4qfPsVy8E+e+l8apL1wkhw+hX
 NBV+ZVvEzHF1yLZ7rsza1mhvB6JnmrVe2hWXr6Ocmcn8Yg96uZm4q6s3u
 uz8weEDiov3yaHy2oh5nkJna5DvTQ2SERhq8xDHfu3d5gViQOVx2QcooN
 rv6E2rj64LpLqXodtKwa4KdcB6lG5QZPw8UIWhBqOSEDu5JCYuhYMEkGE
 97NZ3cMUhr+UAYUtWok22mJ2yz1VGvVJVLjT8fcA8IE0Q0Ao9IRGtnBeh
 gqUUiVdW8PRJfPd+aR1LWDeyvW3UYBqjFYQimhV3yP3P2PcCrx2SNHVJF A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="391101607"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="391101607"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2023 01:49:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="698016645"
X-IronPort-AV: E=Sophos;i="5.97,270,1669104000"; d="scan'208";a="698016645"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 03 Feb 2023 01:49:27 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 3 Feb 2023 01:49:27 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 3 Feb 2023 01:49:27 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 3 Feb 2023 01:49:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=atQ6/9q7nGyICkHPXs9at682RlNU4H1kZmWK9lqgy4DjYsg+BZv3KdtPDx7YgV4w9Mq7mf5gVsf4KsY/CSxRV/gpeLKTOQ98fyOWsN0SqD8wbY3uzN3G0ILkLbNGa0EMUWVFbR+BCFM0wVVClVOF5w1EkDwemEjiKGplH8h3meeSu4b/CLbEo8zUCIWB1hO0Z3zI6y/36ZSQmiNxAoULMKSbgXfbcrBysNl8bSRokkqXtL83A9EXf+8bmM+yvD7cfCCpgfB1V2She1WVrNnvEAaA/lC8FA6r8/KdQWQwyqSrInQ19HKL1g9OLjY6y4kZB/usESkBJcGUJyw3I///pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8KzVB1lUvy8fsrVlggsL/0b4jpTJ9jRH/OXb+GgeMx8=;
 b=lcEGrxN6b/+8MDqmkcY5O88054aemK3vv5tAMz93KJieBFKp/gQVkBwm/SoqwY1TtP2Xe9yccTMaGwXkmbfTj3wE0P+39LQQMjHS6KTEeV6069AInRCa5FPb373T0qh6bXGCXUiPsiNEsGl74p4sbKD3Y5Fj+jMkCG27n89W3emapNmJr6ft60wGPRjUfBOqCcM9UUX59DgH44yYvmazDaP3L/fSefAe3/eXqQQIVFVBgguIc8H5a6+i/xegeXpefIFjFbUVkAku+XIWqD1r/kHrtTwIyH4lnvQwoVCVtZzRnazyXF7QTfFYB49WcprxfHGA5QRgZ4RNrF+6v5BT/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS7PR11MB7932.namprd11.prod.outlook.com (2603:10b6:8:e5::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6064.29; Fri, 3 Feb 2023 09:49:25 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Fri, 3 Feb 2023
 09:49:24 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 02/13] drm/i915/dsb: Pimp debug/error prints
Thread-Index: AQHZK1pKnxJCi4mE1k+1bmDw9EgVcK69EoYA
Date: Fri, 3 Feb 2023 09:49:24 +0000
Message-ID: <PH7PR11MB5981B7266627DC811EE21DC4F9D79@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS7PR11MB7932:EE_
x-ms-office365-filtering-correlation-id: c94201f8-270b-4a33-5475-08db05cbeefc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TttefY2FhPkU2TuWUDrI40k225GcilJZA/JEuJpxxUoejIZL5xJmQPPI2WPmowKc+O2AddpqHxKw3O4mMMakQChmJMohijusURdie0jk6QP7PyH2qcQYkKQJsftJOAHVpbA6Cwj8OLipHL/ZG3Kzl0Fzwy5U5uhEA4PhARZxwT3/Bc+O4H+PGo0AR0az/AcdfJ186AtZxJRdbniqjtSfNf1/v/11kxjxXfbLHhzdDktlGreWESfkSXKyxP9FKtdufQBnt/0H2zY2SIwzU5dlGQoFzlZnLCT/bz09uy97I/C7FtYzBE82efs5IxdGgaEA7hxrb9m155eKpHCjwmmg1/d+2ZvBMWiIedrvYsPH/1dWRZ1eCTFCYxjZRU2EWDfczpl8A28Hp4X9PkyqY9tPR85CuMoc1xr/+eTni8kxt9ccoVC4lhfDEAPtrXYCISi/9UiXD9lL9qLaXV9okMCARFZVAmkSsNJQeoLQLkf8IYxSxgXXMm3o1cY0RTMe/6ladBHhgh370d+wW/AGv9ZC4l/Yo7xU95fMZ9+RogZdLZ+GlTUDDMMRTffSTP3obDvOwmPtdup7xwYoedh9z/qq1Mc2mUXPlpEKV57U+8OQdawWeQAVenPtgEMzTPOTznpEIyh5fiG68P8lNkmvVTHt9MM6o7MPY69sa95Z0is2tpWmzgfcjhxolOFCtxL1BEUJ0wue5tKUvXtzJzi5AVrsE1q5RpuGmf6Rfxkuo0+Orfk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(376002)(396003)(136003)(366004)(346002)(451199018)(33656002)(66556008)(66476007)(66446008)(478600001)(76116006)(5660300002)(83380400001)(71200400001)(64756008)(66946007)(2906002)(186003)(55016003)(26005)(9686003)(8936002)(41300700001)(38070700005)(82960400001)(122000001)(38100700002)(316002)(110136005)(86362001)(6506007)(7696005)(53546011)(52536014)(8676002)(18123001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RGQwTEhtdjc2cmptajhTdDFpMHg4Ty9nelgwS21GaFh0cVZXV2pFNzBKYkpx?=
 =?utf-8?B?Z0w2UWlTVXNQOG4wZlcwTFc3Z0sybzduTkNiOXMwZDljZEFRcEd2VE04bWFY?=
 =?utf-8?B?NU95UEJLWDZrREhXNExlVXZYdVNoVk1JUGIweGRDQisvczBVWCtrQ2xsSnlz?=
 =?utf-8?B?Z2ZBSFBIYldrNVhrc1VqOWlyZ2FWN25EUG9memxoR3hUU0ZWRkNGUTM2N2xB?=
 =?utf-8?B?K0c0KzhtZkVWTWRGclFncnRNVjQ5TEJCZVNuVkxUTUNUNzQzNUpBanNBWVA2?=
 =?utf-8?B?c3dkeHdrd3o0QXNybHNXMnkvRjFUd015Q0JNSWh1YWVRSjlLK29kN2xjem5H?=
 =?utf-8?B?SmxBVC9xL3IrOHVoTzkraWZuOEpOQTI2Y2RMOSt0RUJKbDZDQnFpVUZlbVlz?=
 =?utf-8?B?RCtlb1poT0xETHF5SS9JZDdDMnZvRkJTUHczdFRKRXpSaTk1cGdETE5vUW5r?=
 =?utf-8?B?S21qekllRnpsRDBXVTRXMWxNZnp6Qjk3OU1UckUyQVFMd1AyVXQzMTZCa2Ji?=
 =?utf-8?B?TW9hdFZ5TEhSNGF2aFJTZUljZXE5WmVsc0ZFT210Q2VIRG42R1A5UHlOR2ts?=
 =?utf-8?B?VU5mWmgwdFY3KzZHVFJkeFB3TTRCdnlTbDhxZnlxZlQvNFgrTFVCbFRxZEFY?=
 =?utf-8?B?RUZFM0VvTjBsbDJ5b25LMEgwUE1EQ3VEWERQMklYWWZuMDFzTEh3NzBOak1k?=
 =?utf-8?B?eEJyT2RObVY4UFd5bXp5WWhVdjI1SmRHekV0ZHN4M2l5ZEloQnRWd1pDWDht?=
 =?utf-8?B?WTJOeE9YTWFDQktMNkh0akN5ZUVabEZjdjZFSkZGbzYwWHV1dGsyRDlLdEZj?=
 =?utf-8?B?dUZQYnRoaU9idTlzVXY4ZXpmQ3NoVHhURFY2TXJOREpmWS9XaTgvbDE4MWlw?=
 =?utf-8?B?T1F1OXR1d2VCOXNjU2NWT3Y3QjYwZlgwSXJZTUZEaEFFTjVSMFo3Ly9LUU9h?=
 =?utf-8?B?U01aWlVJaXo2aTQ3WHBPNXRpcExWbXRhdTR0b1FRcUNGSmUzQlpZbjhnTXRy?=
 =?utf-8?B?cXRGN3RBQXQwQWViV3ZidHFMdGpkNWVhZHF1TVMxcVlZZEVUMFN0SkdKVFR6?=
 =?utf-8?B?bjlKWkZZckZvL1Q2RDBOR0swMzVlcUp3UFQ2N0tXYTVHc3NiblNHNVZNZVlJ?=
 =?utf-8?B?OVBCV0tBbE81eHpEZmREekxqcEM3ZUhVR2Y2bWs2UU1zZncxd2RCcXlibjQ5?=
 =?utf-8?B?eDQvRkI1ZjRydHViUm4vZUhzNGh5NjJHcEtJRXpjZTNpb29MdGg0NitXL2l3?=
 =?utf-8?B?eGpVN3JacW00RFF6YURaRExHbG1qNHNrd3lYek9jeVJFSVg3SDRYNDJHcE5E?=
 =?utf-8?B?ZHhVYy9ybkprSDdwMjBScWJMaDhzQXIvRENiU1p2bGcyb0g4R1U2Sjcxd1lt?=
 =?utf-8?B?UUlZMGIzeTd5WnVIMWRKQzI2cjhGamh6TE1tMXQ2ZVhmYnNvS1FrT1FocU1C?=
 =?utf-8?B?UUxaU1hCcXFJTkpRQy9jbGF1RXRTQW9sZFVVRzgzM09EY2UzZTFpOGdlWXZF?=
 =?utf-8?B?b3UwOEw0MTJ5bndsUEpZZWlZSHNRd1JZTHVQZjRSNTBPT29mR3FrdGJCYW1G?=
 =?utf-8?B?L1EzU1FNMk9hbllNcHJlRFkvWUhzNHMxR0xaZmdUd1RSMnJNOFhHKzVYODly?=
 =?utf-8?B?NEUrVEE5aW50S0hCWnRjQnBYY3VDTXVzVWt1Sk5HdjNQUzVPakIramlrR2dS?=
 =?utf-8?B?NXJONjZxQ2xlRkR6bmY5UVNGeWpuVlZMRkplVUF0TWM1bFMvREVJMlpuR2Qy?=
 =?utf-8?B?UWJ3bDFkNWQzQmpPUklDdWZNQ040UXlMd3l0RUZzSGd5VER5ZmxFb0t1Ukta?=
 =?utf-8?B?K2NKa3QrcElMVWYxTDlyWjNRemZmeE80QWVHYlhGbG8wS0htYnRZeVZuN1ZR?=
 =?utf-8?B?Z3M2dGtwcWcwVEZEUHN5WEpja2VkVndDQXFoOXNDK2g0NGpPb2o1MGN6dERq?=
 =?utf-8?B?eUtJQU5iQXQxNGZ0K3pxV1B2UHpoQzZUWE5mV3RNVmY1T1llMi9RVGtSN1ox?=
 =?utf-8?B?V2N2VThCWTFucDJEMlI3UkJrRUR5Y2N5SmpDbTlDUTlSMHhYaUNkWTlNNnF1?=
 =?utf-8?B?TFNXVTdnS0hFeVVuNFlhZzhmb0tJU3B5N0Z2NEVVUmtkMEdpUWx6dHRPMU1k?=
 =?utf-8?Q?mWA9+gHUxviuemZTT4uudggu5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c94201f8-270b-4a33-5475-08db05cbeefc
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 09:49:24.8758 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sfUpExXRNAujwjTbuTZt3WyRnSWqHybkDWPZffGm4P4NRTSSHTBcSQsm/5xBzL+uOXd9MQ0uG2plUXAlyUsV4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7932
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/dsb: Pimp debug/error prints
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMCBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDIvMTNdIGRybS9pOTE1L2RzYjogUGltcCBkZWJ1Zy9lcnJvciBwcmludHMN
Cj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBQcmludCB0aGUgY3J0Yy9EU0IgaWQgaW5mb3JtYXRpb24gdG8gbWFrZSBpdCBj
bGVhciB3aGljaCBEU0IgZW5naW5lIHdlJ3JlDQo+IHRhbGtpbmcgYWJvdXQuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50
ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
c2IuYyB8IDEyICsrKysrKysrLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9ucygr
KSwgNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYw0KPiBpbmRleCA5NmJjMTE3ZmQ2YTAuLmY0MTE0NmZjODRkNyAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC04OCw3ICs4OCw4
IEBAIHN0YXRpYyBib29sIGFzc2VydF9kc2JfaGFzX3Jvb20oc3RydWN0IGludGVsX2RzYiAqZHNi
KQ0KPiANCj4gIAkvKiBlYWNoIGluc3RydWN0aW9uIGlzIDIgZHdvcmRzICovDQo+ICAJcmV0dXJu
ICFkcm1fV0FSTigmaTkxNS0+ZHJtLCBkc2ItPmZyZWVfcG9zID4gZHNiLT5zaXplIC0gMiwNCj4g
LQkJCSAiRFNCIGJ1ZmZlciBvdmVyZmxvd1xuIik7DQo+ICsJCQkgIltDUlRDOiVkOiVzXSBEU0Ig
JWQgYnVmZmVyIG92ZXJmbG93XG4iLA0KPiArCQkJIGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+
YmFzZS5uYW1lLCBkc2ItPmlkKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgYm9vbCBpc19kc2JfYnVz
eShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSwgZW51bSBwaXBlIHBpcGUsIEBADQo+IC0y
MzIsNyArMjMzLDggQEAgdm9pZCBpbnRlbF9kc2JfY29tbWl0KHN0cnVjdCBpbnRlbF9kc2IgKmRz
YikNCj4gIAkJcmV0dXJuOw0KPiANCj4gIAlpZiAoaXNfZHNiX2J1c3koZGV2X3ByaXYsIHBpcGUs
IGRzYi0+aWQpKSB7DQo+IC0JCWRybV9lcnIoJmRldl9wcml2LT5kcm0sICJEU0IgZW5naW5lIGlz
IGJ1c3kuXG4iKTsNCj4gKwkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwgIltDUlRDOiVkOiVzXSBE
U0IgJWQgaXMgYnVzeVxuIiwNCj4gKwkJCWNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5u
YW1lLCBkc2ItPmlkKTsNCj4gIAkJZ290byByZXNldDsNCj4gIAl9DQo+IA0KPiBAQCAtMjUwLDcg
KzI1Miw4IEBAIHZvaWQgaW50ZWxfZHNiX2NvbW1pdChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpDQo+
IA0KPiAgCWlmICh3YWl0X2ZvcighaXNfZHNiX2J1c3koZGV2X3ByaXYsIHBpcGUsIGRzYi0+aWQp
LCAxKSkNCj4gIAkJZHJtX2VycigmZGV2X3ByaXYtPmRybSwNCj4gLQkJCSJUaW1lZCBvdXQgd2Fp
dGluZyBmb3IgRFNCIHdvcmtsb2FkDQo+IGNvbXBsZXRpb24uXG4iKTsNCj4gKwkJCSJbQ1JUQzol
ZDolc10gRFNCICVkIHRpbWVkIG91dCB3YWl0aW5nIGZvciBpZGxlXG4iLA0KPiArCQkJY3J0Yy0+
YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsIGRzYi0+aWQpOw0KPiANCj4gIHJlc2V0Og0K
PiAgCWRzYi0+ZnJlZV9wb3MgPSAwOw0KPiBAQCAtMzI1LDcgKzMyOCw4IEBAIHN0cnVjdCBpbnRl
bF9kc2IgKmludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9jcnRjDQo+ICpjcnRjLA0KPiAg
CWtmcmVlKGRzYik7DQo+ICBvdXQ6DQo+ICAJZHJtX2luZm9fb25jZSgmaTkxNS0+ZHJtLA0KPiAt
CQkgICAgICAiRFNCIHF1ZXVlIHNldHVwIGZhaWxlZCwgd2lsbCBmYWxsYmFjayB0byBNTUlPIGZv
ciBkaXNwbGF5DQo+IEhXIHByb2dyYW1taW5nXG4iKTsNCj4gKwkJICAgICAgIltDUlRDOiVkOiVz
XSBEU0IgJWQgcXVldWUgc2V0dXAgZmFpbGVkLCB3aWxsIGZhbGxiYWNrIHRvDQo+IE1NSU8gZm9y
IGRpc3BsYXkgSFcgcHJvZ3JhbW1pbmdcbiIsDQo+ICsJCSAgICAgIGNydGMtPmJhc2UuYmFzZS5p
ZCwgY3J0Yy0+YmFzZS5uYW1lLCBEU0IxKTsNCj4gDQo+ICAJcmV0dXJuIE5VTEw7DQo+ICB9DQo+
IC0tDQo+IDIuMzguMg0KDQo=
