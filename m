Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E4375688521
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 18:12:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6209810E5B9;
	Thu,  2 Feb 2023 17:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFDF510E5B5
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 17:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675357964; x=1706893964;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ziRoaU2eqxHXhSXK798KIZXHL8oSbrAiSWGi6iCDIRQ=;
 b=RKgUpGI9rOc7hcjhtyeGGuBOupWg2pNuDDOOAwdCeqw3/uS/9MHx33LW
 55BMdWllZPl+crF3IpmFtfuj8Df+OmQ0AzdRwBtr1yUWrQ2NopyOQQKOO
 mSAbFK4TQMt87X6M4YHlXf612Dim9RfRQ4c9r74M8OWUOS7nnKnm1Buv+
 k5gQtLdbXiIS4UTf0RDabxXZ0lK+KUiRToJ4UoDTkZkpkb13TW8LDSkSg
 I2c7XpFAPOwWN8A3Yj7yv3EyEJv89xX0tioCUqyaY9B8ZKONaCVhlBfRP
 Fh0r7dqL8iqQJ0YNAWaTQEnL3w6svmWdZ0nGMk23OKJjufEj+CHhZ9TFf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="414711999"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="414711999"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 09:09:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="667348324"
X-IronPort-AV: E=Sophos;i="5.97,268,1669104000"; d="scan'208";a="667348324"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 02 Feb 2023 09:09:08 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 09:09:08 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 09:09:08 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 09:09:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GrXP4T9EbBslYGjD0yXX1OM+Bj6WUHt7wknD1+uMWWIYw0ifnLOX7y/CzorD2eND53n/5PqZJ2G82+zmipNckRoetOf0ANapCM2UbFXRQXNdDf+5HFFeKTol7rlCdck4EpRPg+LjKUjno3CUHpzWbbKHqmz7LuTP45+TEgttyet0WhWL2lHzcUJolPjecR4Q2KNom3RXLtxbx7v86MzhO2YMp0Zf8G6suXB5JP7Qc/YUcX2T/zGmvlQDedBD2LktOuZEGNsCplVXPQwqelYIFonNS/870B/FC/zyxjUOuAL5/5IIyyEa932cx8BuyWBodFczpeBFko6WRcy1FMD+Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ziRoaU2eqxHXhSXK798KIZXHL8oSbrAiSWGi6iCDIRQ=;
 b=EtFeCxPtgd8Rn4ebx+vFDPs9yC8A4GegGPqOWsvRS3eP/5ns1t7/QdPmSs9iQmZylCAm9HWdKNNxzd04z4ygQ96XsCscjB2KFmrTfMk6242v/UZzdy7kbm6aFaI2ysl1PaWFXXaammJ7m/IEYLmWO2uxBw4CAVmFjh72ZzOWEvLgcxqzoVYTSaBS5bjzeh4PI824VTZhyLVxU8pXeoCvKCHu3r+4gonWpwcKR/ZGDaxLh1i4IMzpuzojC5SsimrY9Q/zF/bAnXe0V2k0785scLnBtF5kUZSmKOUpOL5X7Vh4eafqG/BM1lftk6sQctkqefI2i+zoHAZdiZZ84676uQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by IA0PR11MB7884.namprd11.prod.outlook.com (2603:10b6:208:3dc::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.27; Thu, 2 Feb
 2023 17:09:05 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::e470:7eba:a68a:78be%9]) with mapi id 15.20.6064.027; Thu, 2 Feb 2023
 17:09:05 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 05/13] drm/i915/dsb: Dump the DSB command
 buffer when DSB fails
Thread-Index: AQHZK1pUqr2pF9CRFUyytf53grlUoK67+fxQ
Date: Thu, 2 Feb 2023 17:09:05 +0000
Message-ID: <PH7PR11MB59814E671E2CB6628C3AF8A2F9D69@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230118163040.29808-1-ville.syrjala@linux.intel.com>
 <20230118163040.29808-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20230118163040.29808-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|IA0PR11MB7884:EE_
x-ms-office365-filtering-correlation-id: bfd06a37-df34-4a06-23e5-08db05403065
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: CpYq1LPrhem71UlQAv+RB7dglYoTzPfCqeFQnNnmPGElR5/Z41YypiCJUgzcpWIxYRA4WpsW9IPtmG85yWvZViVRss/xO4hcgRNP18AmKTerKiGZwzNtNhfg6FE5QBNtXLdbYa4/+SBMUKP8pMfK4ZsrGRtrZrgo5JQcE26UCUaKkfVVejNl8ws/WZtRcb803BDjBX2dvcsZZBFjVpqjacSnbz6x5uCFsa0PetNxbUGxt/4UP68WgV1ZRTmcXtKeMGpgsQUD23xtDWMr6tf8IMaffrf7zbwtyRUjgw5Vsf41CgrVcf43q94YoKWcR6Xr2rL1Lg6/kgKG5wjf3Gb1bDIGHizyvvb8GyfFSwXcD8Ns0D7KF6JUgmLquSOMKQIaDaQel4F5wFpyEOGSpsLaV4Pc/Mir2989pjMyK/0QH/eFbZ7NJgd8MLj1bqXF1oOtRsWfTYM7tfus3v6zesUX4Y2q4gFx2xpvfmXBVBZwZPuGGsK1JQrrjGbp9h+Y64Ak+Cq2N7SZqp1oLR4QA+w4UcseJt4ivYDL6Rm+h6p2j8XijvEMDTQ4KiEIxV2K7ONfJ/4hqnkQ2S4YVmjEKGwXq+VZw61v5sp34bSa46p6Z7EiRA+ur2KivGelMcjS7YDGT1U8tjqODEYbdMG9rLYZOO2Uc07qf9L3sQOypv0zld/haOvorKTlbRImKyopVwhcFiIrmqTilYSwCziAscKp0A==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(366004)(376002)(346002)(39860400002)(396003)(451199018)(38100700002)(8936002)(52536014)(122000001)(82960400001)(316002)(38070700005)(53546011)(6506007)(26005)(33656002)(478600001)(71200400001)(186003)(55236004)(2906002)(7696005)(86362001)(55016003)(9686003)(110136005)(5660300002)(41300700001)(83380400001)(8676002)(66946007)(76116006)(66556008)(66476007)(66446008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RG5YMXFLVStaTS9IaDV4ZnpWdXgrVmhUaTNlRXJkMTdOQzF1Si9WZUxVcXk5?=
 =?utf-8?B?c05HTXFNOUtWWnlFc3V6Ui9RSlplWGsvalc1bkhiS0ROajBGR0xtWFhJZ09Z?=
 =?utf-8?B?Sk5WZ2poeVYrQmtiSWFLT3ZrS3NSeFNaMVFOaHJITktxWU9GMzVLNWxxcDRK?=
 =?utf-8?B?NWN2MnBNQzZQTGFrZjlnOFRkbWFGNCtRWTVqNDZmYW40QW1PQWJiTzh0NFRO?=
 =?utf-8?B?ZTNmZHd5c0taRFlJWHBjcnJtcjBMN1NGV1BjVitBc2craDlmUk4vZGdRNUxQ?=
 =?utf-8?B?ekdHRmE4NFMvZkxmVWJXcEVCc1puR2dyYWE1a3NKTTg5bG9mZVM3YTRkVWc5?=
 =?utf-8?B?S05JUmY4bXdwVXB5OUNLMnFoSU1vckJ0cUcxRWhPYWJHaW8yclg3cGNaZ3Ew?=
 =?utf-8?B?Um9MbDQ3TkRHVWZYYjFRUlgyRytwMHpGZ3dZbFZDMWVhRHpiS3d5UmRvcDEv?=
 =?utf-8?B?NkJPQS9Fd3MwTnJNM3kvcGR1eW9yQ3RJSW9uWGF3VXNlendSZWRHY2ZEd2l4?=
 =?utf-8?B?Zk9uYTBHZmM4V00zT2ZXS1hLT2lhWEhDU1RKMDNUQk5XTHFtQi9Pc1ExOUNC?=
 =?utf-8?B?L1NNYndMM1dvM0xwZ3B4N0xCSmkxMVFEdnRQdkppTkxORzNQU2p6SHZvTWNO?=
 =?utf-8?B?YTBwbXUzbUZlVDl4ZitNNVV4a245enhpN0VISFo0OWd4YlNtcWxOb2pJWFdl?=
 =?utf-8?B?WGZBcTZLTDJ2WWg3OG9ZSVg1dEZRSStNcXNhajhpcW1YS05sL1ZJZnJ4aEFx?=
 =?utf-8?B?SzM3dDZYUXdYaWxQNEJ0M1M5c01ySjdzZmhTQnhmelhHQW5vUWRqK0N3YnJt?=
 =?utf-8?B?OUswMXZVWGFvV2xDRkdMajhkZDNpdTRQMTFaYWZxRkxaRE00K2dXRFF1Z0l2?=
 =?utf-8?B?Z0g3Vjc0K1FDTy9MMFd6bmppU1pMczRJRnpINDMyQ3hnME5RN2tLVzZNRlNZ?=
 =?utf-8?B?UTQxT20yekVORnkvdGVrS3BuQ2lJVEFFVzVWOENRWlBmUS90cGFlMkI0U0My?=
 =?utf-8?B?dEJCU1RJSXl6d1JOZ1M0V3hXVXAwbXRpSlFYOGFEOTV1cHFOV0x4SlR4aTRw?=
 =?utf-8?B?YXdwNkRTeDl2aGJ4OFo1RTl1K2tJNmo4dkFYdjJySmNrNFlxVXpIVkxTeXZL?=
 =?utf-8?B?NWY1dDZJb05iYVpDSEVhMTlZTC9UWDNuc01LUVp5a2NlRGxjQTFoV1R0azVL?=
 =?utf-8?B?ZHY3eStBSjd2RjVwanRROWR2UWRxRG1rcGtVOGd5NnMvTGJJVDBaaEFIblla?=
 =?utf-8?B?WkNHTGlyb05LZUd4WjJKZTRXK1lLM3JXM21rVGduREtLdEZncXYxaE96dngz?=
 =?utf-8?B?NG4vbFB6elFaSnpWeVNpRDFHMklZSVlNNkpCRDlBNS9aYzhNVDd1UmV6Qzh5?=
 =?utf-8?B?YW9DOG1hOWFVdVhsdXF0a3dWQVkzdmpua1VRRDZ3NUJJcWJYZkRGck93ZFM2?=
 =?utf-8?B?YVZLN09mcmhheThwVTl2bTlCcEZRSW9yVTRoUE9BWjFmUFFFOUJFODB6R0p5?=
 =?utf-8?B?YkVpWkk4VTdRWm56YW5uT0MvOURuU255eStLaWlWbDJvNmErcktWR2tXQ2hu?=
 =?utf-8?B?dys2US9ObC9xMjAvcXZiQ1ZCRTk5blB4VllNaFhMb216V21SSlVrMldEWUU4?=
 =?utf-8?B?ZDVJZStwVDNGY3hhdHd4TW5hQ284SEJPZ2ZCV2lQQ1VXdzhzVllMNittRTBB?=
 =?utf-8?B?aHQrZlpVVzZzL0hvcXZWSkY2d3dKZTY3SHI2d2NyVlA4Q0VLZ3BUbHJ6ZjBp?=
 =?utf-8?B?UGp1NVJIL1BickhCSDgyTmxjMzNzZDR6U1AzTkJuZmxSa3FHT0s0aXJwS3Bu?=
 =?utf-8?B?N1ZwZlU5NGNsb1h2aEdGVDM3NElDMmNhVmp0dEp2cUJRUVZNMjVnOTZLSjJW?=
 =?utf-8?B?RmdsblRBaUxGV1ZHWHlGS3M3OUJBSjRpSDg0Qno1bzVNamlESVdSOGxuMDl4?=
 =?utf-8?B?TkRUSFErVFgxbFlqeVEyMDZmeGpqTEplVVBKOC90bjJMUHJvMFRSVGVjQWtW?=
 =?utf-8?B?cDBIN0hpS0dzc3NlWVVoa3h1UUpyRmwwZFBhdk53azVBb1c4RDhYejNKQXNw?=
 =?utf-8?B?NXFsdnN2N1drdHUzUEtkV2xDVGs3Z2wvdVlpS2pJcXhvbE5rNVZiRkpaSXI5?=
 =?utf-8?Q?Mp9Od1AlwvMP6zG+sRYJty6xp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfd06a37-df34-4a06-23e5-08db05403065
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2023 17:09:05.0881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9hSX/WxmuhQMATF9jwQtrDMM5BZ+HvhYeQR0xSMl5KXYsh/dJg3oMwdwakZRWuCeF0IYP1iMMpb5iktjPuYY8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7884
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/dsb: Dump the DSB command
 buffer when DSB fails
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSmFudWFyeSAxOCwgMjAyMyAxMDowMSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDUvMTNdIGRybS9pOTE1L2RzYjogRHVtcCB0aGUgRFNCIGNvbW1hbmQNCj4g
YnVmZmVyIHdoZW4gRFNCIGZhaWxzDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gRHVtcCB0aGUgZnVsbCBEU0IgY29tbWFu
ZCBidWZmZXJzIGFuZCBoZWFkL3RhaWwgcG9pbnRlcnMgaWYgdGhlIHRoZSBEU0INCj4gaGFzbid0
IGNvbXBsZXRlZCBpdHMgam9iIGluIHRpbWUuDQo+IA0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAzMyArKysrKysrKysrKysrKysr
KysrKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9u
cygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+
IGluZGV4IDllMjViMTM0NTkyNy4uZjQ1NDMyOWI2OTAxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTkyLDYgKzkyLDIyIEBAIHN0YXRpYyBi
b29sIGFzc2VydF9kc2JfaGFzX3Jvb20oc3RydWN0IGludGVsX2RzYg0KPiAqZHNiKQ0KPiAgCQkJ
IGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLCBkc2ItPmlkKTsgIH0NCj4gDQo+
ICtzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZHVtcChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpIHsNCj4g
KwlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IGRzYi0+Y3J0YzsNCj4gKwlzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiArCWNvbnN0IHUz
MiAqYnVmID0gZHNiLT5jbWRfYnVmOw0KPiArCWludCBpOw0KPiArDQo+ICsJZHJtX2RiZ19rbXMo
Jmk5MTUtPmRybSwgIltDUlRDOiVkOiVzXSBEU0IgJWQgY29tbWFuZHMge1xuIiwNCj4gKwkJICAg
IGNydGMtPmJhc2UuYmFzZS5pZCwgY3J0Yy0+YmFzZS5uYW1lLCBkc2ItPmlkKTsNCj4gKwlmb3Ig
KGkgPSAwOyBpIDwgQUxJR04oZHNiLT5mcmVlX3BvcywgNjQgLyA0KTsgaSArPSA0KQ0KPiArCQlk
cm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiArCQkJICAgICIgMHglMDh4OiAweCUwOHggMHglMDh4
IDB4JTA4eCAweCUwOHhcbiIsDQo+ICsJCQkgICAgaSAqIDQsIGJ1ZltpXSwgYnVmW2krMV0sIGJ1
ZltpKzJdLCBidWZbaSszXSk7DQo+ICsJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIn1cbiIpOw0K
PiArfQ0KPiArDQo+ICBzdGF0aWMgYm9vbCBpc19kc2JfYnVzeShzdHJ1Y3QgZHJtX2k5MTVfcHJp
dmF0ZSAqaTkxNSwgZW51bSBwaXBlIHBpcGUsDQo+ICAJCQllbnVtIGRzYl9pZCBpZCkNCj4gIHsN
Cj4gQEAgLTI2MCwxMCArMjc2LDIxIEBAIHZvaWQgaW50ZWxfZHNiX3dhaXQoc3RydWN0IGludGVs
X2RzYiAqZHNiKQ0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5
MTUoY3J0Yy0+YmFzZS5kZXYpOw0KPiAgCWVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4g
DQo+IC0JaWYgKHdhaXRfZm9yKCFpc19kc2JfYnVzeShkZXZfcHJpdiwgcGlwZSwgZHNiLT5pZCks
IDEpKQ0KPiArCWlmICh3YWl0X2ZvcighaXNfZHNiX2J1c3koZGV2X3ByaXYsIHBpcGUsIGRzYi0+
aWQpLCAxKSkgew0KPiArCQl1MzIgb2Zmc2V0ID0gaTkxNV9nZ3R0X29mZnNldChkc2ItPnZtYSk7
DQo+ICsNCj4gKwkJaW50ZWxfZGVfd3JpdGUoZGV2X3ByaXYsIERTQl9DVFJMKHBpcGUsIGRzYi0+
aWQpLA0KPiArCQkJICAgICAgIERTQl9FTkFCTEUgfCBEU0JfSEFMVCk7DQoNCk9uZSBkb3VidCAt
IFdoeSBEU0JfRU5BQkxFIGJpdCBpcyBzZXQgaGVyZT8gSXMgc2V0dGluZyBEU0JfSEFMVCBub3Qg
c3VmZmljaWVudC4NCk90aGVyIHRoYW4gYWJvdmUgdGhlIGNoYW5nZXMgbG9vayBnb29kIHRvIG1l
Lg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KDQo+ICsNCj4gIAkJZHJtX2VycigmZGV2X3ByaXYtPmRy
bSwNCj4gLQkJCSJbQ1JUQzolZDolc10gRFNCICVkIHRpbWVkIG91dCB3YWl0aW5nIGZvciBpZGxl
XG4iLA0KPiAtCQkJY3J0Yy0+YmFzZS5iYXNlLmlkLCBjcnRjLT5iYXNlLm5hbWUsIGRzYi0+aWQp
Ow0KPiArCQkJIltDUlRDOiVkOiVzXSBEU0IgJWQgdGltZWQgb3V0IHdhaXRpbmcgZm9yIGlkbGUN
Cj4gKGN1cnJlbnQgaGVhZD0weCV4LCBoZWFkPTB4JXgsIHRhaWw9MHgleClcbiIsDQo+ICsJCQlj
cnRjLT5iYXNlLmJhc2UuaWQsIGNydGMtPmJhc2UubmFtZSwgZHNiLT5pZCwNCj4gKwkJCWludGVs
X2RlX3JlYWQoZGV2X3ByaXYsIERTQl9DVVJSRU5UX0hFQUQocGlwZSwNCj4gZHNiLT5pZCkpIC0g
b2Zmc2V0LA0KPiArCQkJaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFNCX0hFQUQocGlwZSwgZHNi
LT5pZCkpIC0NCj4gb2Zmc2V0LA0KPiArCQkJaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgRFNCX1RB
SUwocGlwZSwgZHNiLT5pZCkpIC0NCj4gb2Zmc2V0KTsNCj4gKw0KPiArCQlpbnRlbF9kc2JfZHVt
cChkc2IpOw0KPiArCX0NCj4gDQo+ICAJLyogQXR0ZW1wdCB0byByZXNldCBpdCAqLw0KPiAgCWRz
Yi0+ZnJlZV9wb3MgPSAwOw0KPiAtLQ0KPiAyLjM4LjINCg0K
