Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D5EBD8471E7
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 15:29:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D31D210EE16;
	Fri,  2 Feb 2024 14:29:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SFK3p0Yr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21C7C10EE16
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 14:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706884151; x=1738420151;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=OBjEQ7P0bzgTjwyNdwMQXT7GgJ+GFMejW5/piu56Vps=;
 b=SFK3p0YrPlJiz3hif4MZBCyIQpNbK6HUhoeJlBmV8uOq02DkrF4LRbdX
 6OSSplaFP5dxNS9pHLhpCalOrgS3TrswqdAf/11thcDJpIFCVUXNl8TZ6
 8ZJ1ofE7n0G9g1vwxAtVUoLHdNdfL9GDlm3+pCXhH7UNCJIwhap66xI0D
 udvEAw7HzmUHlLgnbLk9gTqtWuWYadXGbgqvk9zWim2N7vcMOvg5zg3OE
 OulErUf21N658gZul5+ZkbJbuqo8OjV/V2rSqxL7E+Wq8RY2deNJpUfmF
 shJC97FozndcSDQp92w5q8zshcZ25KoklVkCLaswXCO2KoUTaQ0Xt5QuY w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="4004659"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; 
   d="scan'208";a="4004659"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 06:29:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="30901760"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 06:29:11 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 06:29:10 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 06:29:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 06:29:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K//QbRkIarm5BPU/1vlMU+luAUcMHuL6aTin3XiMoGO15+Sh/aLx8bGKfNzSy2rhZGQaUPbP06aECcVTPM5mAWKOl9mYrt8vI9qPu4kDLTuBARj7QgEYNUyf5qTlGu7ageiJpRcsgtOqTFqKmYFKCQsaEXtUYlzETop0gkeVqv+RgJo9JUSRGk7vlpW2MpgqBtloT5zNP/5f1vVPhmYn/2KVAAdlYvuvWG2GqOGv0Pv1QuPvwyR43bbr0VUTBiKL4+HP3lxizIOClC9OrveAfzMDLmZlwlGXPeNbVRiQXWcDgRCuQBJls6pUZIE73iQqQid9i8rU7GYaFcuRj8CWtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OBjEQ7P0bzgTjwyNdwMQXT7GgJ+GFMejW5/piu56Vps=;
 b=QmyV9/KccmkaEBatXxGu1r96/uMj/awWIM0Wh+VdnIHihsoNxGkUKRzwKk1CJ2Zj4N/F9wRSmEKLu9r/OTgGZN7+4us0bhKpVwrz4gXufvE6gJRB2f12qLZogHpx+aUeNyQ6zkaMsZoGZrNo7kwxr7WeWApn1odwjkgE/euSigfoM4Y/1ABRuUaHKMQLOSb9Jb+AkXvtRyKPcAim1/AqvGwkreQ1ROwTc01+lJIrN3a88JKyoDAFjQ3wk4OKHNL8C5r9cGC+GL5vRTxylixm0Sx04njc1MG8u8F+MQllDk83WZe9MR08EnVEi89WgVO9vqzaXlUNCa+QuFpQm2QTEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB8256.namprd11.prod.outlook.com (2603:10b6:806:253::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 14:29:08 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::bdc0:e60:4a62:706f%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 14:29:08 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v3 13/21] drm/panelreplay: dpcd register definition for
 panelreplay SU
Thread-Topic: [PATCH v3 13/21] drm/panelreplay: dpcd register definition for
 panelreplay SU
Thread-Index: AQHaSr/cC6YZ/xSnokWsq3KBunrmnbD3MqmQ
Date: Fri, 2 Feb 2024 14:29:08 +0000
Message-ID: <PH7PR11MB5981C68DF0FC72C6792420F5F9422@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240119101024.1060812-1-jouni.hogander@intel.com>
 <20240119101024.1060812-14-jouni.hogander@intel.com>
In-Reply-To: <20240119101024.1060812-14-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB8256:EE_
x-ms-office365-filtering-correlation-id: cc6b5e2c-405d-42d5-8782-08dc23fb5146
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /DwQNcbzaOA9BpKZDQnyC4HqaS58E0DxLL4efMM2lAbwYW7MdsrBN+Vmf4oSbSHVtVktd3PRlrmel8ia2HDLZVNMdJ8dsUJ0pkgd3J6tjeu5kkQnv+CPfBdt7s57R64Tw3IcxxkmGV1xV8p5JrmAle9peH9oV2d0dSHLfUptekB5sSc83Si3Lbw15N+c6FOvKlz3YO+l6yuUjNkoU3UGzHK27EthWyHuMWJnaSHWOTWAzAh68BJYSNLSgiKWFFEcIPvzEj0+35y8UIS5J0zSRdbt7ii1ouGDhRqH7E7cgP5VpFhmq7TuoAKUK6KMFQ/TMCCh+9UKHWs/+P5hroLlc+QIoc0KYtfyORYHd++wEfcR4MPJaL5M2RRQEtzDdMujbyjJ82loM3+Pqk7M/RvnVxukOYRsaV+bb4MbIkoOQnrA4wDfCI319AccggUjfF6OsfvhC3A32yCKpvaBu2xM8TW83CYFuXzBSfZ0jkklvj5iU5ELtTcsiF2BVbZP8wpV6WvWAqBvVvqgZYCtGEu8D1uBklpSiIUVu0cKH+oluIsToejlOO7pMNAXy4fs1uOBb5hO4i3ouAwdGAo+CWJ4lC/NP45HDvVV1QMap1aMqc+lxKn4vFixyF9meQCVlw7z
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(136003)(366004)(346002)(396003)(376002)(230922051799003)(451199024)(186009)(1800799012)(64100799003)(83380400001)(26005)(478600001)(82960400001)(71200400001)(6506007)(38100700002)(110136005)(8676002)(8936002)(66574015)(66946007)(76116006)(52536014)(66446008)(2906002)(64756008)(122000001)(316002)(66476007)(5660300002)(66556008)(41300700001)(7696005)(9686003)(38070700009)(53546011)(33656002)(55016003)(86362001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Y1Y5djcyU3gwVTNYNS9tNS9OZENUMjVwSVBSOElkalpQZnVVRkNJVFlzckVH?=
 =?utf-8?B?ZENvbm9tRU1KcUxpR0ZER1hYbkt4elF2d0FpdzcwRUg2MVRVZmc2Njc2d2Fu?=
 =?utf-8?B?UHNCSEZ1eGZVZGN2bzE3aUtTWXRNMlRvNDZ4UEdCN0d2enBJMXRTSk9idXkw?=
 =?utf-8?B?UC9sSCtISHp5NFJoS3ozV0dhWVg5aWdHNVBrZGZBbnFOb2o0b1RxREhpZElv?=
 =?utf-8?B?QUFndmo5WU5BdVpaRzZJL29JclQzY25PZzR2ZWFGL1laTmI1SDJqRE5PQXV1?=
 =?utf-8?B?dlVPM29FYW03Ny9EdnFxRGkzRGpmN3ZXbE5wZytzMnFUa1ErQTc2alJsektE?=
 =?utf-8?B?N2R6VktLWWJRM3d0NTZEdTdmRWJJY040ZzBMSEFiZEdBcDJ5TlVuNm5WN3F5?=
 =?utf-8?B?OVZSR2tZUmNBWmdrZmN4YzlhMFhCWVZMK2hVeTh3YmtDV1N2Q1hQTmsyeFlw?=
 =?utf-8?B?YTRpc2FEbUFiR2Y4R1BCa1YxWnJIZ0c2MFkrV2tBNGFTZnp1aGJOREV3Tzhi?=
 =?utf-8?B?YWxYTlJWdWxQcDVZaHAyMzFOZEt3ME1sOGNUOEtTd09wNkRFZlMzcXhJUXVQ?=
 =?utf-8?B?VmhzUStXdUpwZjlicnNlQ2pqeGFlc0d1ekVaRFlyQTZjaUY0VjVFUzU1a0VS?=
 =?utf-8?B?QzhCWTQwUUVFR1FwNzMxaUQ5WmtoY3ZndWRhU211RTdwckhLUmpqNmhuSWF5?=
 =?utf-8?B?VE1QTWlCcDM2ZVMrelpBTDFBRmxaT2l4bWZUaDc3dFJuYktoUXNtZWlaeGk5?=
 =?utf-8?B?Q2xoZm9hYThRQ2tlNnZGdURxU0RZWkdwc1FpR1h5aGt0Vmg0V2dmNDB3RkhC?=
 =?utf-8?B?bXNlenlYVThaNVYwQktMSndtVEdUV3hKU21xbUVjUCtObUlzMjJQYTAyTkR6?=
 =?utf-8?B?U1ZlK3BEN3ZKQzlDSkRDZEMrbmVFTHBTR2F1ekpJdVE1YUFqVzJydXVFTlBZ?=
 =?utf-8?B?ZFRwVGYwbkdTSXU3S2owMC9ySFNJL3M3OE1YN1FDS0FTbkpoSWtqWXEzQWw0?=
 =?utf-8?B?ZlpRYTZIc2tCQzBkN21WbXdsTnBsekNoRFdLVndic3ZlbXFqdTdiYU1wMlR4?=
 =?utf-8?B?WmEyUjZFbDhVNjNhMDJsZVpKZWJEWGx4KytTMXB2TjNzZVFXSC9tY3BlMzh0?=
 =?utf-8?B?VGlkallPLzkvd1Nsd01DVnFwTVJkb3JYbEp1WU96QkxQNjNUTXJBUVB0akZD?=
 =?utf-8?B?WFQ3ZVZzTGNhTVgvamNWeldranNwd29yZnFPencrd3VUNjU2UW1obTdLaC9Y?=
 =?utf-8?B?WUxHQngraHVLNVFJQk5rL2c5TlgxaHh5TmlGanptYVhkTU01SzRraXdSK1Fk?=
 =?utf-8?B?ekxQOVpRN2gvQy9aKzhuSklsRmVmQ05JUGFvVFFTQ0EycTY5NXNQQzZaUW1O?=
 =?utf-8?B?RjRQYlRiYWUvaEx4Z3AvWkhTYk05d0lnM3hpa3p0T2JxcTJ5MDJhc3U3eGky?=
 =?utf-8?B?SXRDYnVvOFd3d2V2eHBERFVJa2JDcUxXaXp4TFNUdTY5c0IvdkdyZzV4bzJG?=
 =?utf-8?B?ZHRZU2lsZlI3RVRQVlJlMXN0WjdlSnQrWjhkdFpPblRmS09MWVlaQWg2eEhs?=
 =?utf-8?B?b0E1ZFNUVVdhNHBVcEcyOW1xODBkUVVPQkUrNVptV0ZMUmpEdUx3Q0xxRi9s?=
 =?utf-8?B?ZDY2Z0FRdGhnMC9va1hVcnNYcEdNZW5vdnZtS1NtTzVZOWp6VHdHNGNMMEZr?=
 =?utf-8?B?RVdobmVOUmFadk1sMWNRajd1U1VtVGYrdHZhWHl6b2pkN0xJNFp2WVpxZDNt?=
 =?utf-8?B?Vlcvb29CZEsyOE9EbSt6WXRQZmxFcE5aZ2FoRDlibGxFV01IWlZVYnJldUc0?=
 =?utf-8?B?UlhOVGtndmJoN2dFaWZ1bHJSdHBWU2JCZk55UDhQZFBTZm1hUFFUYiswUzJj?=
 =?utf-8?B?UmtUMjdZdVhlbjFZUU9LK3BFVDllb1BaVGVnQVpPWTJHbGhnV0JmdmhJSFhJ?=
 =?utf-8?B?NEEzL2FjclVzUXVycm1rWkUxYnhuQk5seXIxN2hVYkUwZWVhL2ZvSkUvdGZB?=
 =?utf-8?B?eWhuQno1ZytrTENlVWpVZzE2akRtbzB1ZHlWelpRYStWa2ZJbnRoNXZXRUlP?=
 =?utf-8?B?djl3dnBBR0thdkY5WStYVEU2UnhKZXVCUGs4dHlMb3lmTU9EK3V4aGJ1ZUV1?=
 =?utf-8?Q?tvrTEarsCI97NyGjPQ5IPx5Wl?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc6b5e2c-405d-42d5-8782-08dc23fb5146
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 14:29:08.6706 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Txes2aA1J4Uf3bz8byxRhY6BQIQpnKIwp+gXpX04GUEZwQ/BxJC7b37jBiCZibio3WdIdKmrV2XK+aHWrwEIMg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8256
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IEZyaWRheSwgSmFudWFyeSAxOSwg
MjAyNCAzOjQwIFBNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+OyBIb2dhbmRlciwgSm91
bmkNCj4gPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BBVENIIHYzIDEz
LzIxXSBkcm0vcGFuZWxyZXBsYXk6IGRwY2QgcmVnaXN0ZXIgZGVmaW5pdGlvbiBmb3INCj4gcGFu
ZWxyZXBsYXkgU1UNCj4gDQo+IEFkZCBkZWZpbml0aW9ucyBmb3IgcGFuZWwgcmVwbGF5IHNlbGVj
dGl2ZSB1cGRhdGUNCj4gDQo+IHYyOiBSZW1vdmUgdW5uZWNlc3NhcnkgQ2MgZnJvbSBjb21taXQg
bWVzc2FnZQ0KPiANCj4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQoNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1h
bm5hQGludGVsLmNvbT4NCg0KPiAtLS0NCj4gIGluY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwLmgg
fCA2ICsrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQ0KPiANCj4gZGlm
ZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2Rpc3BsYXkvZHJtX2RwLmggYi9pbmNsdWRlL2RybS9kaXNw
bGF5L2RybV9kcC5oDQo+IGluZGV4IDI4MWFmZmY2ZWU0ZS4uNGViZjc5OTQ4YzdmIDEwMDY0NA0K
PiAtLS0gYS9pbmNsdWRlL2RybS9kaXNwbGF5L2RybV9kcC5oDQo+ICsrKyBiL2luY2x1ZGUvZHJt
L2Rpc3BsYXkvZHJtX2RwLmgNCj4gQEAgLTU0OCw2ICs1NDgsMTIgQEANCj4gICMgZGVmaW5lIERQ
X1BBTkVMX1JFUExBWV9TVVBQT1JUICAgICAgICAgICAgKDEgPDwgMCkNCj4gICMgZGVmaW5lIERQ
X1BBTkVMX1JFUExBWV9TVV9TVVBQT1JUICAgICAgICAgKDEgPDwgMSkNCj4gDQo+ICsjZGVmaW5l
IERQX1BBTkVMX1BBTkVMX1JFUExBWV9DQVBBQklMSVRZCQkweGIxDQo+ICsjIGRlZmluZSBEUF9Q
QU5FTF9QQU5FTF9SRVBMQVlfU1VfR1JBTlVMQVJJVFlfUkVRVUlSRUQJKDEgPDwNCj4gNSkNCj4g
Kw0KPiArI2RlZmluZSBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWF9HUkFOVUxBUklUWQkJMHhiMg0K
PiArI2RlZmluZSBEUF9QQU5FTF9QQU5FTF9SRVBMQVlfWV9HUkFOVUxBUklUWQkJMHhiNA0KPiAr
DQo+ICAvKiBMaW5rIENvbmZpZ3VyYXRpb24gKi8NCj4gICNkZWZpbmUJRFBfTElOS19CV19TRVQJ
CSAgICAgICAgICAgIDB4MTAwDQo+ICAjIGRlZmluZSBEUF9MSU5LX1JBVEVfVEFCTEUJCSAgICAw
eDAwICAgIC8qIGVEUCAxLjQgKi8NCj4gLS0NCj4gMi4zNC4xDQoNCg==
