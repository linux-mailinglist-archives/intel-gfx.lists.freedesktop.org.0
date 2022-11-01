Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FD476152A4
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 21:01:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55BED10E41E;
	Tue,  1 Nov 2022 20:01:04 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1D1DB10E419
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 20:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667332862; x=1698868862;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=3tO+iR+3ZM6b1igSAeZyZqY9HlYfLataazoIFNaI/+4=;
 b=W68wKjEk4NCFUHCc6cECiTKKL932twx8+QbrNR2ZSlI/NpYrOOR/7PAN
 dADlP+f7NNv6r2qubPTT0hD7dSAU/Bc1XJrnATZy6u4xTICtAzXoZKdLO
 3Jn+/hjqM83GVIgTn3KjwvLHLyRSwAf468eJyOxkGP0YWLf+Hssi185h6
 KlzW+TOr4e/KgwUeX50uQaVxP7ph9Pucg4sXxZsTcOuJjVeNRwIKfp7/T
 l/gR9ntdtna39+P1UAgW6tp372rh9cIANC1358s7UxDWCopYMlv1wASxc
 Ye2IN5S+ctkIS71aonV9Lbd+gp9pzLXgrqje6kX56GOil+p/w9sXUVXuk A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="335901583"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="335901583"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 13:01:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="611965812"
X-IronPort-AV: E=Sophos;i="5.95,231,1661842800"; d="scan'208";a="611965812"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 01 Nov 2022 13:01:00 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 13:01:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 13:01:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 13:01:00 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 13:00:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YbykFYOkRL4vFzZrKRHEtqNyMdSVzTSmmmuEARzm1tv8tssyui6YPZgPvmE5TNfvKxoJ11gSsEkwxRgpBIYVuZ07GYEUGdQDCjVX14LWWsxy05+8mqo/KIC+jwU9Szkofl022Xp66Rla9MEQorbhkBkDz3/Hu0tE8b3n8B/xML1Q9bXIC3XBdwb9LP3VfuKE/xgPM/DzK3aWz5akJVbtguqrNzJkplp034XcG4KQ/fZZv8Ffka60TN9StYytFJD0n1n4R1lrpnOBYxQc1E0vHK5w0Via0q7394ok3qtOcyWsT+1XILL4pm65yoyGrCkpJEqRe+QYdWfs0avJc7TSJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3tO+iR+3ZM6b1igSAeZyZqY9HlYfLataazoIFNaI/+4=;
 b=idrYEiw96WlwdkLBYLKlgv2Er7Rpenm5JXNz0i1QJuBQn06l7JCq4MfZJXrGO3kL6pdbe/0iPAYQIDto6IYJfJSy+BZnSEuIsYMG+hf07VxvhqSGsxwgtLgXfvOc++5aL+WRPIodOyuMwyzGRxQjPd11qTLYCaZ2MQO0go5IzMYXwra7SeEzLyfrRk7Z+YQMLTKJi9k+ENixU3xx928uhrzOA6pejhvI5Xfqmm+caa67QT7DKrd5DkUFPIxkGMQjjH4tH+3KldfshLVgP0e6FCpH5apCDO2oc0euiPQm6sxbY6MUb6KG5ezLcQ8PH+5zCgLw7tSRghViq9tvtsbGqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY4PR11MB2054.namprd11.prod.outlook.com (2603:10b6:903:2d::9)
 by SJ0PR11MB5183.namprd11.prod.outlook.com (2603:10b6:a03:2d9::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.21; Tue, 1 Nov
 2022 20:00:53 +0000
Received: from CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba]) by CY4PR11MB2054.namprd11.prod.outlook.com
 ([fe80::a84e:a253:dad0:d9ba%4]) with mapi id 15.20.5769.021; Tue, 1 Nov 2022
 20:00:53 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Hogander, Jouni" <jouni.hogander@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Remove inappropriate DSC slice alignment
 warning
Thread-Index: AQHY5REUxIJcB6L7tE+ICiPNmUH6pq4qjySA
Date: Tue, 1 Nov 2022 20:00:52 +0000
Message-ID: <0839ad26187a137e1a1afb80ea6dc40d5dc9e3f0.camel@intel.com>
References: <20221021054922.2753034-1-jouni.hogander@intel.com>
In-Reply-To: <20221021054922.2753034-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY4PR11MB2054:EE_|SJ0PR11MB5183:EE_
x-ms-office365-filtering-correlation-id: 2d25d260-65b2-42d2-9989-08dabc43c7f4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DiDtE9RJICFHkvXUDFu89+ayhUsCQtpQTp0pFdJ1TaxsfcnjYtsPZ73mzq9rzh2PoXmKLi4FAELhUA4a/PVoU8VdUBWuedf8wrdak6PbXGN3awi/23O/0+HLMHrJjgg8P/zuEXOZtUT7Yw/bxSncxJUXltcEa80BwTaWxWzsELyxVqM3XUYoxTSsez2sdr/P1cWhYpuptkkmgWUTH3P5sSKEK1gZUH1DqUEEKKyTRIalWJJ2tznoaoU3UiLkbStiyytZ4x7Ms7g4+/yedLINbYMcl3Q/J9EOS4QB86lPlvrCIvSBR6AGLAtlQJF54HeQwFZnA+EZX6/qSdmrAek8maqT9KeZ3ScIosRPeLgf8mLTK2UTzmLBHwErmXXluEkyqlirOa3OSzd0kHn6NMPgiFNPjEVg5OLDzMARQwe2nyU4sOAfhe6NontMau9+upEEZFxXzc9KDtkDzBMmBfqUEZanUWJtkPJ+T1wLOJ0/PQjPhVY5AflPqHG2dqpvZHTUkR0n11gijD9gnYZTlxwh3N8EiEQrszgu1146X8axDQWSGWASsfio0zKYCsNRUjHmP1QR1qTUlcbcdeNJ5Zslq2Wd6vKRXzC7RhmWRn2rZmeLLagKEq1e3jz7PxjeMNWjTSGjLoPXzPDloeY/13dPySgArkoaXsA67/dGTZ9tSZvEBMX8vEwzemflxehBjAZPTaEzkLYlW/UdoczGCN4r0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY4PR11MB2054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(396003)(136003)(366004)(39860400002)(451199015)(2906002)(66574015)(83380400001)(66946007)(4326008)(8676002)(76116006)(91956017)(6636002)(478600001)(71200400001)(38070700005)(6512007)(6506007)(26005)(107886003)(41300700001)(66556008)(186003)(66476007)(66446008)(64756008)(86362001)(4001150100001)(36756003)(2616005)(6486002)(38100700002)(82960400001)(122000001)(316002)(110136005)(54906003)(966005)(5660300002)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cFBKVkEvVEFhNTVMcFdBbTRYQ243UU5FTEZqbnpyaS9rUGNLSHBydzFRVDdn?=
 =?utf-8?B?eXNwMmh6ejQ4WnB4TDBhblAxWTJjd1JCK3VsN0xlbXA4aHluOVh3dTJtWDUz?=
 =?utf-8?B?VitnYWZzN1pqNmF4RW8rakd2OERaSUY5aDFWelQ1aHkwb0UvbUN6UWVGZlRa?=
 =?utf-8?B?ZEdScThpaFFHbDdLTmdZRkpKclM0WVU1aEg5Z0ZTQStmcEFnNzBQSFBIbzRH?=
 =?utf-8?B?RkljOGh4R0h5Sm9JMG1sVVFXSEthZnVmMDY0MnhmR0V5TXNDS0taVjh5NFlO?=
 =?utf-8?B?YTlzNG9lR2JhRGRMYUZaVFRmZlp1MXVKYzZJampLVTNxRGxKZmdDNlVGVEpS?=
 =?utf-8?B?MklVanpJNmowQ0pSY1VKU2o4M0w2dWtBQjNkcjhBZjdHRzF1dDV2aUkveWZm?=
 =?utf-8?B?aDFpRjk3V0N5THZlejJURzEweDlCU0hoTjFBVWVrZ01TdjFvQXVlbmxBM0o5?=
 =?utf-8?B?SGxKK0FKaXpFbUhxQlk4dFV3WWtGRm55QmxrOXR6dzQ0dm4yQ2hpaGVWMzV5?=
 =?utf-8?B?M2wyVGNCaVl1TWVobWhqSmcxQ0R2QTFKSDlmR0hidXRGZnNpSE4rWkpaT3pt?=
 =?utf-8?B?WFVKeEN6V3NRSXZsR3c2bE5SbXhhM3ZEVnBjK3h3M082emRwZjdycDhaQjB2?=
 =?utf-8?B?LzJId3BEZEZRTHpqaDE5SEEzc3UyNXRpS0QrVHBianl0Q2NCRjJUdEJqOVBL?=
 =?utf-8?B?eE9wb1ZrV2lqc2ZnUzR1NGZIanJyT2M5bVoxZi90ZW1yeGRCaUsvMTNDaXJN?=
 =?utf-8?B?d1lvaGU3NGxrY1lmdzQ1aEI0RytUQmlCenYvVG5kZjRRR2ZNUkcwelJlR2Jh?=
 =?utf-8?B?T2VlSmwxdWNsLzhSZFhkeFkvenJLMlVaZUY2SytWblFjTlZpM3VxR0hvKy9I?=
 =?utf-8?B?TVlDeENzREV3NFl6YWYrNW14bUVrV3pTSkpBNmU2WDF5SkppbDlDTmtFbkxX?=
 =?utf-8?B?K055UllYYVM4aU9nUmxFSjlPZThLSG54cEdXTEtpZ0hKYUlrSm9Ici9UVDh1?=
 =?utf-8?B?RS9SNGY1Ty8zRjdyeUdGNWlEdHVGSG5EL0Y1VUFIUllPdFlyNENteStZMUNi?=
 =?utf-8?B?Q2MySGRlRmJINklsQWg5dkRQZytFMjZncnhGbTR6dEZsYnRnVXRYZGxYQndp?=
 =?utf-8?B?UUZCdnJWaDc5d3YrNXZNbGtDK3FZbndyY0lrb1hOSDAyYjc3aVF3ZCt0OVJm?=
 =?utf-8?B?NURZQ2VxS2d3RU1EalZxUFAySWFuTVh4Qmc5NHpEWnEzcGtjUkpiMVJQOGVR?=
 =?utf-8?B?a1ZKNDlFQ1JPVVhqcEFWRE9aYjVXbmVBUGp0UEh4dXBVQk1QaE9ldUxoUEZU?=
 =?utf-8?B?WXJ5MGt6b0ZkOXdDQmh3S1FvbVBOeGlKOWQwcndLQkk4N0tRcEJHR3B1WGRu?=
 =?utf-8?B?ajV1V0pGb04xWjFCMFhFS2xPcWtJUFh0dzBtZjFVMUlRcHdGOEpxbHJPeSs3?=
 =?utf-8?B?YkE2SkR6aUt4SG9BZTdRV0loTlhoV3M5Z0tyVTRGUGp4cVNBUW9XbzEwN3ZG?=
 =?utf-8?B?QTg0U0FocnNOanNGSXk2NktxSXpDaG9najJGUHlENENaNXQxMFlQRm1GRk1C?=
 =?utf-8?B?S3hESXd6N2F0SWVHVUxCUy82SWJ0MkxiMFFBMlBHbVZPVWtwQjZ0ZjFhN0ZE?=
 =?utf-8?B?Mjd2cXlmRExoOHdCQjVSRXRFekY0ekZ5NTNlQTNYQ1NCb2xRcTlHYUdoRTN0?=
 =?utf-8?B?Q3J6ekFzTEIzLzlrc3BUc2YrOXNjdVdnNXFEcnBoU25ONHJrdDBaajFnL05T?=
 =?utf-8?B?TWZKMld2dTdOVDE3b2RYd2ZRMjlud2tiZUJDem55R2lSK3UzWkZ3WjErNlB0?=
 =?utf-8?B?WTYyRGExUFAvN3hhR09lQkJ6NmZFRzRUS3ZkcEZLczlLNHFOcFFkdHNWUkRN?=
 =?utf-8?B?N25JUXdld2ZSTTEzK0M1SzJzUlFTbW41Mm9yUUtmSG14RFl0NWhoL1orTXdn?=
 =?utf-8?B?VkZxNTA2YkxEeVdkbVY5bGpjRVVHMnJZTThUekhUcmYrc1R2WHg3NHJ2VlVh?=
 =?utf-8?B?RVczMHVib05jYjJmbVFsNlZ2L1A1TlBOa2NwUXRBL2ZnMDFBM3ZhS2dqYXF0?=
 =?utf-8?B?a0VCOUw4Y1pOb0FOb2IyRDBKMDlCSTlGVzBJUXY4Rk1NZ09qNG9GT0JkQjQw?=
 =?utf-8?B?Vm9iZzdnMWVtcUpYeXpqdnR3TGMyMkF0aFRJZnhTNDhoMjc2a0pHTDdnVnVI?=
 =?utf-8?B?L1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DB9645116BD2DF4D88F2B48ACEAC2BD9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY4PR11MB2054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d25d260-65b2-42d2-9989-08dabc43c7f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 20:00:52.9717 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sIdZIOHTs4dE+XPPVspARIT799daM+uvNBw0G8HUUgQvecbmDVplsPO3TpKN6LRPU68V64QsK5pcL81HAyP4Bg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5183
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Remove inappropriate DSC
 slice alignment warning
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

T24gRnJpLCAyMDIyLTEwLTIxIGF0IDA4OjQ5ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+IFNlbGVjdGl2ZSB1cGRhdGUgYXJlYSBpcyBub3cgYWxpZ25lZCB3aXRoIERTQyBzbGljZSBo
ZWlnaHQgd2hlbg0KPiBEU0MgaXMgZW5hYmxlZC4gUmVtb3ZlIGluYXBwcm9wcmlhdGUgd2Fybmlu
ZyBhYm91dCBtaXNzaW5nIERTQw0KPiBhbGlnbm1lbnQuDQo+IA0KPiBDYzogSm9zw6kgUm9iZXJ0
byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IENjOiBNaWthIEthaG9sYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPg0KPiANCj4gRml4ZXM6IDQ3ZDRhZTIxOTJjYiAoImRybS9pOTE1
L210bDogRXh0ZW5kIFBTUiBzdXBwb3J0IikNCj4gQ2xvc2VzOiBodHRwczovL2dpdGxhYi5mcmVl
ZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzcyMTINCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMgLS0tDQo+ICAxIGZpbGUg
Y2hhbmdlZCwgMyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiBpbmRleCA5MDRhMTA0OWVmZjMuLjY0ZTllMTM0ZmRjYSAxMDA2NDQN
Cj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNjc4LDkg
KzE2NzgsNiBAQCBzdGF0aWMgdm9pZCBpbnRlbF9wc3IyX3NlbF9mZXRjaF9waXBlX2FsaWdubWVu
dChjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqYw0KPiAgCXBpcGVfY2xpcC0+eTEgLT0g
cGlwZV9jbGlwLT55MSAlIHlfYWxpZ25tZW50Ow0KPiAgCWlmIChwaXBlX2NsaXAtPnkyICUgeV9h
bGlnbm1lbnQpDQo+ICAJCXBpcGVfY2xpcC0+eTIgPSAoKHBpcGVfY2xpcC0+eTIgLyB5X2FsaWdu
bWVudCkgKyAxKSAqIHlfYWxpZ25tZW50Ow0KPiAtDQo+IC0JaWYgKElTX0FMREVSTEFLRV9QKGRl
dl9wcml2KSAmJiBjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlKQ0KPiAtCQlkcm1f
d2FybigmZGV2X3ByaXYtPmRybSwgIk1pc3NpbmcgUFNSMiBzZWwgZmV0Y2ggYWxpZ25tZW50IHdp
dGggRFNDXG4iKTsNCg0KSXQgaXMgbmVjZXNzYXJ5IGNoZWNrIGlmIERTQyBhbGlnbm1lbnQgYW5k
IFBTUjIgYWxpZ25tZW50IG1hdGNoZXMsIGlmIG5vdCBQU1IyIGNhbid0IGJlIGVuYWJsZWQuDQoN
Cj4gIH0NCj4gIA0KPiAgLyoNCg0K
