Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DCDD6153A2
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Nov 2022 21:55:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1D510E41B;
	Tue,  1 Nov 2022 20:55:42 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C24B010E41B
 for <Intel-gfx@lists.freedesktop.org>; Tue,  1 Nov 2022 20:55:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667336139; x=1698872139;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=fxthvkGt2R8bo0cZy6p+CjcVCzFrO1BbNmlbU5LJjvU=;
 b=T+5FuA0/6Mx77MIZt67bxuzHZyjqWge2gOq+8k9fWiOVod6+1QkG6oce
 TfR72Tu10pWyR3SRPKOBE7hRLyXEP0siQc/JcvzFc4hUwIl/Y45TjB0ud
 +YXtsHu3pFz0ajGEcT3hwQO7FGUIAeUAZWLrITXCpKPwwL62ztSyR4K3t
 0jH8tQgN4qgkN8wWniCSwCjDFEm5qxdtgpfvaE04yGf8uIA3YhZQuXaqq
 2InC7S/lnO2xjr/VIaG4V9ZaB+DyU1U3wwDqqOVeFPbSrFJtK8bc3JZhw
 Xkn/GGUBfgfYDyqbWiJXACkCGga7hoewS5ykltOL9HQBFC5QFencsH2Kw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="371327382"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="371327382"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2022 13:55:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="697542781"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="697542781"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 01 Nov 2022 13:55:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 1 Nov 2022 13:55:38 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 1 Nov 2022 13:55:38 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 1 Nov 2022 13:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nE3p09tSUdy8VJJDUcoKr3ee10rnXrLqcczJuLbm+kuHpSGzR/0q8U0acSh4FCe+/NY+DQTkJzF46iorwoPSl3EJVY86GovvLRFOwg8NE/VGS3/R6oq0htBJgOl1Ltp1YqDahEc+z5uaAmWOJ8pOwUPuu+ReBj4pNa+XIr7NBXgOVUTu3GcpAj1WSkWBKoD/ecJYVWA5w3MHDAH5j+OBg7ci8sQLwLRXAu0fBZMpZZmKHPauJ60qGRl77kpWPsVYkVHWqSR4ZyVK4jeh4hdcDaj0IGUEGG2XBgICTtsjVm9umLfiDXRqrCFuzfU1L0bdrsbGLrX9KXzDM8A5L+8Wpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fxthvkGt2R8bo0cZy6p+CjcVCzFrO1BbNmlbU5LJjvU=;
 b=ZTpgy2w6kemRjCy7M2Pmn/SeNriJcC13NwQPfYokm8dUCQ/qbtxN9iq73qrPasfkbg6ReMg8tVvzASpSQHkyyr6BKzp32Z+TGpahPYKdSVZ+jfbGNvZCaocWXq4TaWDrXc9MFax6EjlpV8hkY4H0vJLsE3pH6eaIpMh29Z8zJ1N3skkJK3gJZIrg6PObh5iQtemSxmDkwV8BemOEN140NoES5QaAD7kv9yR5tQkJUOgNYFhRAQMpg4BWDaCjIf5/exc38WOaP7Qj/dyZVOcQrQ9Hsx2fTSJ+tjszNhrS7q38dVS6aL43VoZuUam1uppv91NHNwjNWHKKNj7KGQgJKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB5914.namprd11.prod.outlook.com (2603:10b6:510:138::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.28; Tue, 1 Nov 2022 20:55:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fbdb:a959:437c:13c6]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fbdb:a959:437c:13c6%8]) with mapi id 15.20.5769.019; Tue, 1 Nov 2022
 20:55:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH] drm/i915/psr: Remove inappropriate DSC slice alignment
 warning
Thread-Index: AQHY5REUTS5OSWvPsUSxbvrMs7pIJK4qjycAgAAPSoA=
Date: Tue, 1 Nov 2022 20:55:36 +0000
Message-ID: <7fd6c03e88471339440401126043e7422df9a9c7.camel@intel.com>
References: <20221021054922.2753034-1-jouni.hogander@intel.com>
 <0839ad26187a137e1a1afb80ea6dc40d5dc9e3f0.camel@intel.com>
In-Reply-To: <0839ad26187a137e1a1afb80ea6dc40d5dc9e3f0.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB5914:EE_
x-ms-office365-filtering-correlation-id: 9374ae68-e6ab-492f-6407-08dabc4b6cee
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5OwonoWSozcQxZc4TIhngtHYqFBBFHgOTzVQOW6EA5zpmfmtm+j/KdzB41rqEXTdgd98el2qps9bmIzi/vX/F+SP3zeAW5obZb8B0hfpm7zucUz2ThV9kch6aOe0YjxtfYKnj0eEr9YTZfSAsYbRKZP8ZmzSiVlBP5X8wh+mkexfU3gasfdVaMjt3hKS/1Cm3lb7bQjsgDdKeIoeRq4eTAuRAnyCEL7UQZF4orj3WfwRQJsCqbLicv4uUb9PyAGMwtC3FBK5+6yle35SrTkN8aExUqgWuRRwOU3QXuMTGduCT70zYvpr23XMBY26ui7/ZXziDJn+c+KeGSjXGl+2Ylou0JngUlZMLTAvBV3eWX/scN5P47PnBa51XHnDWRyf6eQTxRMd64n4cPX/FT7CodzKNST/jzpZsdIYNAUrgD8awt2T1JLq3DLgPNDNlHWfYREsIL1GQ5UX2rM++q7BgsiUM1q3yocV8gy043Czl/SS0znTcz8UjRilm0HhYOBbZ3I3lVgD2BZtc7xo7jjSrSNSOyfa1CidOv3jzECA/kKk8jiEvipnElSrc6MAZIZItCCIRXx0Fz8fpnnyvbzgy85OuYhSOkCtxu2rrVv1+E10V6aDZgWm39YS7XDJFa00Y6QeYC8TUDchgLnPHdZ/VNle/+0CZklcXqopVC9vbHPqn13r2hCdeCJWiHh//340677ggsvTyEdviW0b6J22Ng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(376002)(39860400002)(136003)(451199015)(64756008)(26005)(91956017)(6636002)(8676002)(122000001)(107886003)(6512007)(6506007)(66946007)(36756003)(66476007)(76116006)(66446008)(83380400001)(110136005)(316002)(66556008)(38100700002)(54906003)(186003)(4001150100001)(4326008)(2906002)(38070700005)(66574015)(5660300002)(86362001)(2616005)(8936002)(41300700001)(966005)(82960400001)(478600001)(71200400001)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y3B0dmFLRkJINmxuU0diWGpsNUd4TVNsRkVTT1A2OG8xWjJONldQb0t4OTJw?=
 =?utf-8?B?WVdJamFrRkgrUEQyNnBRTFNPbUVLdEdqUTE4SGp1V3AveVFuUVA3QVVKZXpE?=
 =?utf-8?B?ZENtODZoYnl4VnY0Q1V6WE1EVDU0V29CVUtnRjlETW5vUWx0ZVgyREJnTGJT?=
 =?utf-8?B?ZEczajZPcEFaZHNtY0E1ZjdTYStuZWhOQ1RCU0xSNzcvdmxsNmc2QUM2eVZG?=
 =?utf-8?B?NzB5azBQVnhYeVhzTURNL01oVXYyaVlqcVAxNWE3VmR4VUdZdVM0MUJmam9a?=
 =?utf-8?B?Y2pkT1dSenNnT0FGWTZFRUhEYzJpMDF5dEZwRXFlVEx3eEcyM2JXaXY4MGNL?=
 =?utf-8?B?SzAzS1pNN2dSSEc3eWtiY3JubkR4Y3JPSms5aU1VTEN5ZmZaM0tZSHY0VmZL?=
 =?utf-8?B?TE8zTW42b2ZBdjZHa25YWUMxRU9nYWdxSldPSTlHS0dSejBoVFNJL0tUTkM4?=
 =?utf-8?B?M1BIeThDYU9mUkt0ZldhdEMvY1dvU3kvTE5XUDZyRWRVV2k4MG1GcS9OOERo?=
 =?utf-8?B?dFVrR2RMK2FTcFQzVktHTXRYWkhwSGN4L3h6ZWZ6citHbldLWi80QWhweW80?=
 =?utf-8?B?cEhORFdaVEV5elhrU2NHT3lMUEhzcjdrc251N2RLcEtLY2NiOHpNNWZaV3Rk?=
 =?utf-8?B?VXhVanVyRldyUWhFS3RqYUxjNlVrMlZIQk43bzhvTlRBTUtXZ2ppMHJEd1JR?=
 =?utf-8?B?dXAvZTZrVmVMR1JJZjdWUkZKOXlEMGlWYWozdVdPc3hLV0lkclhvYU5SblNu?=
 =?utf-8?B?RDJoRTdBSkt2bk5FU21zcXg5SXpEWG5pMG5JYTBYU3lGMVp2TkJrYjh1d1Nq?=
 =?utf-8?B?ZWJpWVNhZjB3d2tUU2czcTNWdm5GaVJINytkZzkxMFdYT2IwQWttKzZ2ZXUw?=
 =?utf-8?B?OHJ2dGJMeloyWURyRGZFL3BCNTlTVTRUSzE3UnIxaFpicnZwYXE0MWIyU3BR?=
 =?utf-8?B?Umw1UDZDOUNQWjE3TVQ1MTFXQ0N5T3RQaHBnUTE2NTg2L3Vpak83NTBaUEV5?=
 =?utf-8?B?VjlNMTRrRWVXQnY0NCsrcjRiUERnSllwTlNjQ3BGdW9PcjZmQUN6ODJ0OUhh?=
 =?utf-8?B?TGZHVS80K09lT2JITU1YL2dUeUREZ04ycFZQd0RFNjNSblRJUVhXR25lY3JP?=
 =?utf-8?B?VC9Fc2hzRGxTaG9GdXZJaWZ4MmN6VG5RVkJrcHV2ZVN4ekE1MHdxUWFueitI?=
 =?utf-8?B?UTdhV2piLzF1Z2VWUHU0b2IwTnBvenJCYjlIVjYrTmNmdU9ZdWVWUU5reFhM?=
 =?utf-8?B?Nkp2UGFzelNtdDhMM2hvMDV0dTFLUTRTb3dQd00wSzRKdXdaTi81c3dhMmp0?=
 =?utf-8?B?QnU2YjlOMTQxV2xKWGhWS09lUkJVZWZ2dFFYbTJLZVBveXZhc1lubUlaZkRX?=
 =?utf-8?B?K3hZSkpmdVQ2RUJ1N3BoTjA0NFV6NzZZR3hleWp6NUlkLzh5dlFCblFJblU2?=
 =?utf-8?B?VXdkYXUxWnBFWDhidmpQTTdrOWRTOXRwTVNQOFdLa0xzVnNUQ2E4NklzbVZ3?=
 =?utf-8?B?WGlpdGJROEhOWDZnRk9ueUtDcCtFY2RUQlEzNTNKd3lJRDNuRlY3bjN0SXIz?=
 =?utf-8?B?YTU3SkRlQnZMSk1Ja3hBQW5KZ3JsQm9HNnRiYzUzNWVLLzR2YlVsUDI0TS9z?=
 =?utf-8?B?NFJ3OHdEVkViS0xRRTRHZWtUMk1ZV3Q5bE1NclJRTG8vTks3UmhIdG96TTFu?=
 =?utf-8?B?ZnRKQitrbVY5Wk1FM2luOFVJTlBzcXF6YzRJOGVJVGZZbDBjZXdkRCtNV3pn?=
 =?utf-8?B?TmIxMkFtaTRKM3NkbzNwbGQxRHdjTFFYVEp5bm83S2xyYXVjelVMYjlFS0lI?=
 =?utf-8?B?cGtTYlJIOUVlNllhUHBveHlGM2ROVGQ3K3lxcVlNU2JzcnlRcml3akhkTnVB?=
 =?utf-8?B?NytMeTFjUGZVdndpaXJNM1V3MXNOYXlQbUZvNmNOQXVPSWMxQ0pJcm92V1ZN?=
 =?utf-8?B?a2dkZ2NUc3lyL2ZkSmdzSjkxQXZvVzg4aFpIalAreHQrbU94SmNIck5tcDIy?=
 =?utf-8?B?dFErNHkyM0dMSlU0T2IzWjN4TFRZM2F0UVorRDFNRkNqMjI4czZWZWhRVkZj?=
 =?utf-8?B?Y01XQkc2L3Z0S0k4ZXdPYmtvWEc4YjM2WGFzNjJsSXIwQmlacENQSDNka21q?=
 =?utf-8?B?aFN5Uk90alZOTmZwME95UmtnZ3ZmNGVrL084QVFaQkZBaTZWSWdXZVIyN00y?=
 =?utf-8?B?K2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <879B0879C8C80A4C871BCB23BABA76F4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9374ae68-e6ab-492f-6407-08dabc4b6cee
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2022 20:55:36.2321 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G25SNRGmXkf7FhPTWSQyIavznK4eKbW3ypz517FkQ70N6juslEHOTBsNNj4p7XTbCG3InZZw2JNwpkHw8x+HSPGJMoh2XFYzGuB7Xl4V7hQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5914
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

T24gVHVlLCAyMDIyLTExLTAxIGF0IDIwOjAwICswMDAwLCBTb3V6YSwgSm9zZSB3cm90ZToNCj4g
T24gRnJpLCAyMDIyLTEwLTIxIGF0IDA4OjQ5ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gU2VsZWN0aXZlIHVwZGF0ZSBhcmVhIGlzIG5vdyBhbGlnbmVkIHdpdGggRFNDIHNsaWNl
IGhlaWdodCB3aGVuDQo+ID4gRFNDIGlzIGVuYWJsZWQuIFJlbW92ZSBpbmFwcHJvcHJpYXRlIHdh
cm5pbmcgYWJvdXQgbWlzc2luZyBEU0MNCj4gPiBhbGlnbm1lbnQuDQo+ID4gDQo+ID4gQ2M6IEpv
c8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IENjOiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+IA0KPiA+IEZpeGVzOiA0N2Q0YWUy
MTkyY2IgKCJkcm0vaTkxNS9tdGw6IEV4dGVuZCBQU1Igc3VwcG9ydCIpDQo+ID4gQ2xvc2VzOiBo
dHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcvZHJtL2ludGVsLy0vaXNzdWVzLzcyMTINCj4g
PiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNv
bT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBBbnNodW1hbiBHdXB0YSA8YW5zaHVtYW4uZ3VwdGFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYyB8IDMgLS0tDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMyBkZWxldGlvbnMoLSkNCj4g
PiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
IGluZGV4IDkwNGExMDQ5ZWZmMy4uNjRlOWUxMzRmZGNhIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE2NzgsOSArMTY3OCw2IEBA
IHN0YXRpYyB2b2lkDQo+ID4gaW50ZWxfcHNyMl9zZWxfZmV0Y2hfcGlwZV9hbGlnbm1lbnQoY29u
c3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4gPiAqYw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBw
aXBlX2NsaXAtPnkxIC09IHBpcGVfY2xpcC0+eTEgJSB5X2FsaWdubWVudDsNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgaWYgKHBpcGVfY2xpcC0+eTIgJSB5X2FsaWdubWVudCkNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBpcGVfY2xpcC0+eTIgPSAoKHBpcGVfY2xpcC0+eTIgLyB5
X2FsaWdubWVudCkgKyAxKQ0KPiA+ICogeV9hbGlnbm1lbnQ7DQo+ID4gLQ0KPiA+IC3CoMKgwqDC
oMKgwqDCoGlmIChJU19BTERFUkxBS0VfUChkZXZfcHJpdikgJiYgY3J0Y19zdGF0ZS0NCj4gPiA+
ZHNjLmNvbXByZXNzaW9uX2VuYWJsZSkNCj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgZHJtX3dhcm4oJmRldl9wcml2LT5kcm0sICJNaXNzaW5nIFBTUjIgc2VsIGZldGNoDQo+ID4g
YWxpZ25tZW50IHdpdGggRFNDXG4iKTsNCj4gDQo+IEl0IGlzIG5lY2Vzc2FyeSBjaGVjayBpZiBE
U0MgYWxpZ25tZW50IGFuZCBQU1IyIGFsaWdubWVudCBtYXRjaGVzLCBpZg0KPiBub3QgUFNSMiBj
YW4ndCBiZSBlbmFibGVkLg0KDQpUaGlzIGNoZWNrIGlzIHRoZXJlIGF0IHRoZSBiZWdpbiBvZg0K
aW50ZWxfcHNyMl9zZWxfZmV0Y2hfcGlwZV9hbGlnbm1lbnQ6DQoNCi8qIEFETFAgYWxpZ25zIHRo
ZSBTVSByZWdpb24gdG8gdmRzYyBzbGljZSBoZWlnaHQgaW4gY2FzZSBkc2MgaXMNCmVuYWJsZWQg
Ki8NCmlmIChjcnRjX3N0YXRlLT5kc2MuY29tcHJlc3Npb25fZW5hYmxlICYmDQoJKElTX0FMREVS
TEFLRV9QKGRldl9wcml2KSB8fCBESVNQTEFZX1ZFUihkZXZfcHJpdikgPj0gMTQpKQ0KCQl5X2Fs
aWdubWVudCA9IHZkc2NfY2ZnLT5zbGljZV9oZWlnaHQ7DQoNCkZvciBzb21lIHJlYXNvbiB3aGVu
IHRoaXMgZ290IG1lcmdlZCB3YXJuaW5nIHdhcyBzdGlsbCBsZWZ0IHRoZXJlLiBOb3cNCmp1c3Qg
cmVtb3ZpbmcgdGhlIHdhcm5pbmcgYXMgd2VsbC4NCg0KPiANCj4gPiDCoH0NCj4gPiDCoA0KPiA+
IMKgLyoNCj4gDQoNCg==
