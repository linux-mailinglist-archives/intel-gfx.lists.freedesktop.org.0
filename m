Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C7764D927
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Dec 2022 11:00:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FBAB10E0A8;
	Thu, 15 Dec 2022 09:59:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFC4A10E0A8
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Dec 2022 09:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671098369; x=1702634369;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=xKf0cAPDs+E0nPEfQFxsCtuCsah/pkPQ0K6n/YRLoPk=;
 b=TBeeEG2JZXIgWnzXkPAhSgZ9V19A03d3R/gfDTFIeziqZOSkL/0or2vA
 n1WysXn5dl9xPudBss8LGfqGAaZ3uQelXf61uCb41WKtx9GtuTxHl/IXQ
 8+8W+dwNa9IxoLU0hy4LIXMdf9eAfnjNYil18VD3BlDeXk5SdvOo4saoW
 upl3yxiz36xHeO3dSi0Lufzvkf/7qVZqSi420s8vjj6dbDxA2mlf0xFz7
 b+/tbEUi1VxQKBylMWKMAOoSxo7/oMq51qOds+TfyhTXmnAFLDfEq30sa
 NqF1gQZnWnk6nng4rr5wFzAN+uWrlfE4h2xZi+8G715SEi+PRToWcxAbf g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="318680497"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="318680497"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 01:59:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10561"; a="756282215"
X-IronPort-AV: E=Sophos;i="5.96,247,1665471600"; d="scan'208";a="756282215"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 15 Dec 2022 01:59:28 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 01:59:28 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 15 Dec 2022 01:59:27 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 15 Dec 2022 01:59:27 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 15 Dec 2022 01:59:27 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CahiWFvLjTFD4dl1YWedx2nOo73VUL2QMlcdbzeTkiq9eSh5gZas8HRy5G3yW3eVLfe92fEN/OtFQoIdZPIrCXzzaxUqH24qUJYLds1Bs8IU6XW8lNpemFcM8sXuiaSGfKMrEmoldXvfo7KiA5GCnUcskw/1XEXwwxw6tl5lspVmCIMKfT00EXJHKSPTrpY3piQWyV76fYFh36a9YuZcG/BbqV3HUBTgJNu776lU08UMfDPeI05uUGOmA61XhYyNJ1G/y7E5v9OAcOP6FlaLAYBowe+uOi/NkoBa/EMBsB20ZoKAtV60trQ8Zofx+Jb/o/B5qQn5qQ5Vxr83Sk/D3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xKf0cAPDs+E0nPEfQFxsCtuCsah/pkPQ0K6n/YRLoPk=;
 b=IvnF8bl1h1j9V4Zv4KaEOyZ8An7bJ1QYc92az48PgIEm2Qf5aPCYkQ04ZjSHJDCgRiSsYaY1WGgNMft8wbWkGazE00RaVt0EzcBroLvo3VinZj2OMs7NcsN/M90/dPLDaa0ghVqZEYgy5sdMJCHhSTCCUqICaQQlEhntv6Wpr9FYl3NqhYNZgb6o7oxcBhHhJziJkQXUE4wxsUe2BWtIIqC/HbtjnSg7mGpr/6+rV/lwqMLq30l+Y0iKlpDdEPePbgMd9NiUot4h3x/YupBcugNSl5qoV3NDtYX8rBzBohrN60y3p9yYXRpskQqNqicdEqhxWiGiC342F2AmsKkouQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB4625.namprd11.prod.outlook.com (2603:10b6:5:2a8::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.11; Thu, 15 Dec 2022 09:59:25 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::f1cb:21b7:f511:ea11%5]) with mapi id 15.20.5924.011; Thu, 15 Dec 2022
 09:59:25 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
Thread-Index: AQHZDjY7S6mr+lYzqEqInl+7DRVqrK5syLlwgABT+ICAARpkIIAAd0QAgAAMDrA=
Date: Thu, 15 Dec 2022 09:59:25 +0000
Message-ID: <DM6PR11MB3177A60D4B187A5676EC9818BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <ad40080099b3d0c95f0fac89053b5c34d2ef4549.1670855299.git.jani.nikula@intel.com>
 <BL0PR11MB31703B1D64C3125DE1B3EADDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
 <87k02uwdlw.fsf@intel.com>
 <DM6PR11MB31777C066D99AFF73AD5D956BAE19@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87wn6tuj1x.fsf@intel.com>
In-Reply-To: <87wn6tuj1x.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3177:EE_|DM6PR11MB4625:EE_
x-ms-office365-filtering-correlation-id: 6427b147-db95-4f87-742e-08dade830c30
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kJBV5o8VXSM/Sdm5sA/X/9/TKPlv1gFeTYJB9ruKmTzfc2wVHp47cfAilky7NOkZiZlriN8OiiPFbFuQs0VEoz4u5oPnrYC0pPUNksFICfbr7LNHaINhtSv803ntTC8JVU/gDbKMBNdEkbGPPFnQkUDZ4QEnaeTrWxGTkBqndPY7tDBttLVUgp0uY0bWunA9Y9ojf4bg35MH7jX9CtOsq89UPc+YZUi77pLPrbwr5H+IqXdnEshkyhZPDKatEtbisbzYIknYVfTRSVUoYu8BplD4HU7qetUeDqb6mXmreteZar5JhtkwbBJXiZ4eW5idKtGATRrOg2kPM6jAckvpQWilBNegn8AbgIvYhP6eAFnj/OtTXCSi8OvstfPG3q9uO0UqylVp96mNZ84Ol+IeOKAQI/Qdl1ZdItl7wbPhPRSx0zE5Eh3G3Di2PgIgI8NKiwThAjrCjZPzHktc8VoT2zWZxjLHzoGjn/lFZu9WVWhAAO6a8Lz8LHUwbCKdgDgIyRZmZnA96h6muUt3nonNp0eRqaqrB468pHynaclVAiErQYP2JzEL/ZWSL6odm6xFFOH4Brl+CMRUDbjC+ks6yiyhkaPC/Imp+UXThJGO1iRDTDpboHm563wf4J0XD8iMTW1UtswMKXLko+aFvAX8voUk7dHDsu2CfhbZ5RUCp5SMJJOhfEaW30hDRuQBoIDnTPD4hh0BsoY/Vcmbj471vg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(136003)(39850400004)(346002)(396003)(451199015)(8936002)(478600001)(86362001)(7696005)(9686003)(38100700002)(55236004)(71200400001)(6506007)(53546011)(26005)(186003)(122000001)(82960400001)(2906002)(41300700001)(110136005)(52536014)(83380400001)(316002)(38070700005)(66946007)(76116006)(66446008)(64756008)(8676002)(66556008)(66476007)(5660300002)(55016003)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUIyUmsyZGpkTjlmd3ZnVWExR2E1S0NpZSt4NnRjWnk1UXpjWmcyN2ViVTVo?=
 =?utf-8?B?SnhwWm5wQk5qS1F6SERwOEtlMW9rek1zMndTeStUeUwxMUpGcjZnNmVkV1VK?=
 =?utf-8?B?emNnMUtTZHVWdzJUYUFnS1JzdFMvYVliSFVuWEJLS3RneE9iMnpzc0t2ZGZa?=
 =?utf-8?B?ODdDZXRzWm9UL3EwWlJaMzVOWldKVDh6WExJTTVzYmlpZ2MvR2ZkRDZoM3JW?=
 =?utf-8?B?SStFUVRWOHo5MHJQZWtNQ2hOWFd0VHBNRmhvZzdRVWJNU3o1dmlQdGN5Qlor?=
 =?utf-8?B?K0ZiMEVCaDd0RkxlT2NxL3MzZWMrMkt1N29yZk9DRmZBZUpiRW9pbVVTa3lD?=
 =?utf-8?B?aGZxUHltRGN6b2M4MWRkSkt4RHZPRy9sTVFMdFZEZGlhR3NkZCtjSzFidHVT?=
 =?utf-8?B?ajJMbm5mQ1N0bjk0bllSdGlPVUdNbFFHVXkzaXNtRU1TSHc4MXQzVHJ6L25Z?=
 =?utf-8?B?NWNjYmg1Ym5zZkQxa2x3ODBxM3MvMUpHbHFLZU91V0VLd1Q0SUlUbXNtUUNk?=
 =?utf-8?B?VWFPUjNqbmUveTJDbTZrUUxVckk2N2pOcHFobVAyNThIcDQ1VmpDV0ZmZ0kw?=
 =?utf-8?B?dGlSNlg0UGVHbEFwWFBzVnpCUUFQREJVcWNmSEtocEUvMmZTeEl2bnZqSDFv?=
 =?utf-8?B?UzhuR3hvcThmaUZneDV1S0g2TTMzOCtuK01XczFCMjV3VWRMMStVU0prcWRh?=
 =?utf-8?B?ZVRoZlN1bVhia25XUG40clR2VlpoLzM0T0ZUZVdmRzUvUlhROVF3bXVWUUZm?=
 =?utf-8?B?Y2l6Uld5MiszeEVnOHA3TWNDN1dOcWY1enZ5cytHRzhJMFJTTEM4WlRLbmtx?=
 =?utf-8?B?a0hyeHk2TzZQWk0yZ2UxbHorR3NqbS9Vdi9XbVFrNlJTZFNOOVFYQlRPSHZO?=
 =?utf-8?B?NFdzajlkUFczeHVtMTJwNjJnOGxiWXNoMjFPcGJ1d0oxQVR6SDZsZkpCNG9x?=
 =?utf-8?B?RjI4MXFqbmJOditDSU5DWnpPU1phMFArbXFWdk5QbU1JNVVHVys1RVdZaEhL?=
 =?utf-8?B?eG5lMm9PbmFXNGdZK1dycy81ZlZqd0hqck1jWHlBUFNMUDFzSitNOUM2TlMz?=
 =?utf-8?B?M25xVjZnN3RtdWZmWGNUSkw4K2VOQ3Q1OVEzQjk5TnpOcHowSmVYaGdtVkxk?=
 =?utf-8?B?dlZxejhjSmdGWTZGNHNZOUN5M0RXclRvQlE3WUpEenBEUHZLTzhPREljL2xv?=
 =?utf-8?B?a1U0cmNicWdrdGRiZmlGejJvaVRyWlBnaFpPVTd5NE16UTFiTWJzbzhTZUZQ?=
 =?utf-8?B?Q3A5cG9jY0xMRVVNYmxKNmIvN1VpRGNYU0RDUmh5NXVjcEZmQ0o4K3h0bWJp?=
 =?utf-8?B?ZlB2S3E1RzhFc0dFeFl5a1B2Q0J6N0dMRjdJWUlQR2xCZTZLWlJvdFc1S2hG?=
 =?utf-8?B?YmxEeGVjWUFWV29Qc00wci9VMStqamRMYisrR1R4Ui9nTGNORHBRVVByT3Zh?=
 =?utf-8?B?RzVMNFNyL1NrakN4UlJnS0o2OEZtSExiNTFHSGlLWkFMMXRhRnRYTEZCS2Zs?=
 =?utf-8?B?a1RqdmpRL2g4cEQ0OWY4b29kb1JncDJScnlZSTlwc1NzZUErdnViVFFTVWRo?=
 =?utf-8?B?ZUZLaTlWZmY4RktjVDR0WGV4RlVRdEFSMVJhQklINnBaSlFuNHBMOCt5b1V5?=
 =?utf-8?B?MVNVRkpiRnpwWnU1Mi9JSnRVN0Qwalc2NTdLb0VxT1gvNVc2UnNLU2poRWM5?=
 =?utf-8?B?Mm5JUDVVTUcvaFlabzlMeVlEbnVIbnpNQm4zclp5WjNneWJUamhHZk43Yjhk?=
 =?utf-8?B?b2dWeE1RSDBiNGNmS3VBVnh3MXg2d2hpTjlEeEx1eThpR1BjcDNhSXFoOEpY?=
 =?utf-8?B?MnVTWUFyMVRjWG92NkdjNllVcFZTemhKWlJPazk4TUhZYkQyU0YzWjBlMEpr?=
 =?utf-8?B?S0o1OCtHcFN5OGZLNDhxRlNZTEdGbXdrbXNLMW5TN3dqS1BpcHBEOHNwV2dN?=
 =?utf-8?B?dWlOTVhRQkNRWFR0NzEybHp2Zyt4cWN6RVFmVW54Q3JpSW5Zc2lpN1NiYWRD?=
 =?utf-8?B?Mm50WnVHNlhLQW5GQWJyYjFyRmJCQURyQXRHZDRqK3Zzb1BRaStBbkhQS2xE?=
 =?utf-8?B?bExjaExSZzVDRTg2YkFuNWN1V2t4VEF2WGNZRmNmL2VkblBOM0lDc0pFSEM2?=
 =?utf-8?Q?WNZbPk6obgQvkmEoSR8QhqkPi?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6427b147-db95-4f87-742e-08dade830c30
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Dec 2022 09:59:25.2305 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: J9AWsi82UVia0KL3lYosvYZ+ZNJCDhEFRLSOJMzs3c4Y6DShHVPlftFBsoBcO5PhqEm4AFHukM5UXQp/wPB6Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4625
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/7] drm/i915/display: move more scanline
 functions to intel_vblank.[ch]
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIERlY2VtYmVyIDE1LCAyMDIyIDI6
NDMgUE0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IGlu
dGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMi83XSBkcm0vaTkxNS9kaXNwbGF5OiBtb3ZlIG1vcmUgc2NhbmxpbmUNCj4g
ZnVuY3Rpb25zIHRvIGludGVsX3ZibGFuay5bY2hdDQo+IA0KPiBPbiBUaHUsIDE1IERlYyAyMDIy
LCAiTXVydGh5LCBBcnVuIFIiIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4gd3JvdGU6DQo+ID4+
IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+IEZyb206IE5pa3VsYSwgSmFuaSA8amFu
aS5uaWt1bGFAaW50ZWwuY29tPg0KPiA+PiBTZW50OiBXZWRuZXNkYXksIERlY2VtYmVyIDE0LCAy
MDIyIDI6NDUgUE0NCj4gPj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVs
LmNvbT47IGludGVsLQ0KPiA+PiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+ID4+IFN1Ympl
Y3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMi83XSBkcm0vaTkxNS9kaXNwbGF5OiBtb3ZlIG1v
cmUNCj4gPj4gc2NhbmxpbmUgZnVuY3Rpb25zIHRvIGludGVsX3ZibGFuay5bY2hdDQo+ID4+DQo+
ID4+IE9uIFdlZCwgMTQgRGVjIDIwMjIsICJNdXJ0aHksIEFydW4gUiIgPGFydW4uci5tdXJ0aHlA
aW50ZWwuY29tPg0KPiB3cm90ZToNCj4gPj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0N
Cj4gPj4gPj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVz
a3RvcC5vcmc+IE9uDQo+ID4+ID4+IEJlaGFsZiBPZiBKYW5pIE5pa3VsYQ0KPiA+PiA+PiBTZW50
OiBNb25kYXksIERlY2VtYmVyIDEyLCAyMDIyIDc6NTkgUE0NCj4gPj4gPj4gVG86IGludGVsLWdm
eEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPj4gPj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5u
aWt1bGFAaW50ZWwuY29tPg0KPiA+PiA+PiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMi83
XSBkcm0vaTkxNS9kaXNwbGF5OiBtb3ZlIG1vcmUNCj4gPj4gPj4gc2NhbmxpbmUgZnVuY3Rpb25z
IHRvIGludGVsX3ZibGFuay5bY2hdDQo+ID4+ID4+DQo+ID4+ID4+IFJlZHVjZSBjbHV0dGVyIGlu
IGludGVsX2Rpc3BsYXkuYyBieSBtb3ZpbmcgdGhlIHNjYW5saW5lDQo+ID4+ID4+IG1vdmluZy9z
dG9wcGVkIHdhaXQgZnVuY3Rpb25zIHRvIGludGVsX3ZibGFuay5bY2hdLg0KPiA+PiA+Pg0KPiA+
PiA+PiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4N
Cj4gPj4gPj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNv
bT4NCj4gPj4gPj4gLS0tDQo+ID4+ID4+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDM2DQo+ID4+ID4+ICstLS0tLS0tLS0tLS0tLS0tLS0tIGRyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPj4gPj4gK3wNCj4gPj4gPj4g
MzUgKysrKysrKysrKysrKysrKysrKw0KPiBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3ZibGFuay5oDQo+ID4+ID4+IHwNCj4gPj4gPj4gMiArKw0KPiA+PiA+PiAgMyBmaWxlcyBj
aGFuZ2VkLCAzOCBpbnNlcnRpb25zKCspLCAzNSBkZWxldGlvbnMoLSkNCj4gPj4gPj4NCj4gPj4g
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxh
eS5jDQo+ID4+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gPj4gPj4gaW5kZXggNmNkZmRhZTJjNzEyLi4wY2RiNTE0ZDdlZTAgMTAwNjQ0DQo+ID4+
ID4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
ID4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5j
DQo+ID4+ID4+IEBAIC0xMTUsNiArMTE1LDcgQEANCj4gPj4gPj4gICNpbmNsdWRlICJpbnRlbF9x
dWlya3MuaCINCj4gPj4gPj4gICNpbmNsdWRlICJpbnRlbF9zcHJpdGUuaCINCj4gPj4gPj4gICNp
bmNsdWRlICJpbnRlbF90Yy5oIg0KPiA+PiA+PiArI2luY2x1ZGUgImludGVsX3ZibGFuay5oIg0K
PiA+PiA+PiAgI2luY2x1ZGUgImludGVsX3ZnYS5oIg0KPiA+PiA+PiAgI2luY2x1ZGUgImk5eHhf
cGxhbmUuaCINCj4gPj4gPj4gICNpbmNsdWRlICJza2xfc2NhbGVyLmgiDQo+ID4+ID4+IEBAIC0z
ODYsNDEgKzM4Nyw2IEBAIHN0cnVjdCBpbnRlbF9jcnRjICppbnRlbF9tYXN0ZXJfY3J0Yyhjb25z
dA0KPiA+PiA+PiBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gPj4gPj4g
ICAgICAgICAgICAgICByZXR1cm4gdG9faW50ZWxfY3J0YyhjcnRjX3N0YXRlLT51YXBpLmNydGMp
Ow0KPiA+PiA+PiAgfQ0KPiA+PiA+Pg0KPiA+PiA+PiAtc3RhdGljIGJvb2wgcGlwZV9zY2FubGlu
ZV9pc19tb3Zpbmcoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUNCj4gKmRldl9wcml2LA0KPiA+PiA+
PiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZW51bSBwaXBlIHBpcGUpDQo+ID4+
ID4+IC17DQo+ID4+ID4+IC0gICAgIGk5MTVfcmVnX3QgcmVnID0gUElQRURTTChwaXBlKTsNCj4g
Pj4gPj4gLSAgICAgdTMyIGxpbmUxLCBsaW5lMjsNCj4gPj4gPj4gLQ0KPiA+PiA+PiAtICAgICBs
aW5lMSA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJlZykgJiBQSVBFRFNMX0xJTkVfTUFTSzsN
Cj4gPj4gPj4gLSAgICAgbXNsZWVwKDUpOw0KPiA+PiA+PiAtICAgICBsaW5lMiA9IGludGVsX2Rl
X3JlYWQoZGV2X3ByaXYsIHJlZykgJiBQSVBFRFNMX0xJTkVfTUFTSzsNCj4gPj4gPj4gLQ0KPiA+
PiA+PiAtICAgICByZXR1cm4gbGluZTEgIT0gbGluZTI7DQo+ID4+ID4+IC19DQo+ID4+ID4+IC0N
Cj4gPj4gPj4gLXN0YXRpYyB2b2lkIHdhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKHN0cnVj
dCBpbnRlbF9jcnRjDQo+ID4+ID4+ICpjcnRjLCBib29sIHN0YXRlKSAtew0KPiA+PiA+PiAtICAg
ICBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KGNydGMtPmJhc2Uu
ZGV2KTsNCj4gPj4gPj4gLSAgICAgZW51bSBwaXBlIHBpcGUgPSBjcnRjLT5waXBlOw0KPiA+PiA+
PiAtDQo+ID4+ID4+IC0gICAgIC8qIFdhaXQgZm9yIHRoZSBkaXNwbGF5IGxpbmUgdG8gc2V0dGxl
L3N0YXJ0IG1vdmluZyAqLw0KPiA+PiA+PiAtICAgICBpZiAod2FpdF9mb3IocGlwZV9zY2FubGlu
ZV9pc19tb3ZpbmcoZGV2X3ByaXYsIHBpcGUpID09IHN0YXRlLCAxMDApKQ0KPiA+PiA+PiAtICAg
ICAgICAgICAgIGRybV9lcnIoJmRldl9wcml2LT5kcm0sDQo+ID4+ID4+IC0gICAgICAgICAgICAg
ICAgICAgICAicGlwZSAlYyBzY2FubGluZSAlcyB3YWl0IHRpbWVkIG91dFxuIiwNCj4gPj4gPj4g
LSAgICAgICAgICAgICAgICAgICAgIHBpcGVfbmFtZShwaXBlKSwgc3RyX29uX29mZihzdGF0ZSkp
Ow0KPiA+PiA+PiAtfQ0KPiA+PiA+PiAtDQo+ID4+ID4+IC1zdGF0aWMgdm9pZCBpbnRlbF93YWl0
X2Zvcl9waXBlX3NjYW5saW5lX3N0b3BwZWQoc3RydWN0IGludGVsX2NydGMNCj4gKmNydGMpIC17
DQo+ID4+ID4+IC0gICAgIHdhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKGNydGMsIGZhbHNl
KTsNCj4gPj4gPj4gLX0NCj4gPj4gPj4gLQ0KPiA+PiA+PiAtc3RhdGljIHZvaWQgaW50ZWxfd2Fp
dF9mb3JfcGlwZV9zY2FubGluZV9tb3Zpbmcoc3RydWN0IGludGVsX2NydGMgKmNydGMpDQo+IC17
DQo+ID4+ID4+IC0gICAgIHdhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKGNydGMsIHRydWUp
Ow0KPiA+PiA+PiAtfQ0KPiA+PiA+PiAtDQo+ID4+ID4+ICBzdGF0aWMgdm9pZA0KPiA+PiA+PiAg
aW50ZWxfd2FpdF9mb3JfcGlwZV9vZmYoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUNCj4g
Pj4gPj4gKm9sZF9jcnRjX3N0YXRlKSAgeyBkaWZmIC0tIGdpdA0KPiA+PiA+PiBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPj4gPj4gYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ID4+ID4+IGluZGV4IDc4YTU3OTQ5
NmFkMS4uZjI1ZWM2NDNhMGEzIDEwMDY0NA0KPiA+PiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+ID4+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gPj4gPj4gQEAgLTQxNywzICs0MTcsMzgg
QEAgaW50IGludGVsX2dldF9jcnRjX3NjYW5saW5lKHN0cnVjdCBpbnRlbF9jcnRjDQo+ID4+ID4+
ICpjcnRjKQ0KPiA+PiA+Pg0KPiA+PiA+PiAgICAgICByZXR1cm4gcG9zaXRpb247DQo+ID4+ID4+
ICB9DQo+ID4+ID4+ICsNCj4gPj4gPj4gK3N0YXRpYyBib29sIHBpcGVfc2NhbmxpbmVfaXNfbW92
aW5nKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ICpkZXZfcHJpdiwNCj4gPj4gPj4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIGVudW0gcGlwZSBwaXBlKSB7DQo+ID4+ID4+ICsg
ICAgIGk5MTVfcmVnX3QgcmVnID0gUElQRURTTChwaXBlKTsNCj4gPj4gPj4gKyAgICAgdTMyIGxp
bmUxLCBsaW5lMjsNCj4gPj4gPj4gKw0KPiA+PiA+PiArICAgICBsaW5lMSA9IGludGVsX2RlX3Jl
YWQoZGV2X3ByaXYsIHJlZykgJiBQSVBFRFNMX0xJTkVfTUFTSzsNCj4gPj4gPj4gKyAgICAgbXNs
ZWVwKDUpOw0KPiA+PiA+PiArICAgICBsaW5lMiA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYsIHJl
ZykgJiBQSVBFRFNMX0xJTkVfTUFTSzsNCj4gPj4gPj4gKw0KPiA+PiA+PiArICAgICByZXR1cm4g
bGluZTEgIT0gbGluZTI7DQo+ID4+ID4+ICt9DQo+ID4+ID4+ICsNCj4gPj4gPj4gK3N0YXRpYyB2
b2lkIHdhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKHN0cnVjdCBpbnRlbF9jcnRjDQo+ID4+
ID4+ICsqY3J0YywgYm9vbA0KPiA+PiA+PiArc3RhdGUpIHsNCj4gPj4gPj4gKyAgICAgc3RydWN0
IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+
ID4+ID4+ICsgICAgIGVudW0gcGlwZSBwaXBlID0gY3J0Yy0+cGlwZTsNCj4gPj4gPj4gKw0KPiA+
PiA+PiArICAgICAvKiBXYWl0IGZvciB0aGUgZGlzcGxheSBsaW5lIHRvIHNldHRsZS9zdGFydCBt
b3ZpbmcgKi8NCj4gPj4gPj4gKyAgICAgaWYgKHdhaXRfZm9yKHBpcGVfc2NhbmxpbmVfaXNfbW92
aW5nKGRldl9wcml2LCBwaXBlKSA9PSBzdGF0ZSwgMTAwKSkNCj4gPj4gPj4gKyAgICAgICAgICAg
ICBkcm1fZXJyKCZkZXZfcHJpdi0+ZHJtLA0KPiA+PiA+PiArICAgICAgICAgICAgICAgICAgICAg
InBpcGUgJWMgc2NhbmxpbmUgJXMgd2FpdCB0aW1lZCBvdXRcbiIsDQo+ID4+ID4+ICsgICAgICAg
ICAgICAgICAgICAgICBwaXBlX25hbWUocGlwZSksIHN0cl9vbl9vZmYoc3RhdGUpKTsgfQ0KPiA+
PiA+PiArDQo+ID4+ID4+ICt2b2lkIGludGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVfc3RvcHBl
ZChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yykgew0KPiA+PiA+PiArICAgICB3YWl0X2Zvcl9waXBl
X3NjYW5saW5lX21vdmluZyhjcnRjLCBmYWxzZSk7IH0NCj4gPj4gPj4gKw0KPiA+PiA+IElzIHRo
aXMgd3JhcHBlciBmdW5jdGlvbiByZXF1aXJlZCwgc2luY2Ugbm90aGluZyBlbHNlIGlzIGJlaW5n
DQo+ID4+ID4gb3RoZXIgdGhhbiBjYWxsaW5nIHRoZSBmdW5jdGlvbiB3YWl0X2Zvcl9waXBlX3Nj
YW5saW5lX21vdmluZywgY2FuDQo+ID4+ID4gdGhpcyBiZSByZXBsYWNlZD8NCj4gPj4NCj4gPj4g
V2VsbCwgZmlyc3QsIHRoaXMgcGF0Y2ggaXMgb25seSBhYm91dCBjb2RlICptb3ZlbWVudCouIEFu
eSBjaGFuZ2VzDQo+ID4+IGxpa2UgdGhhdCB3b3VsZCBoYXZlIHRvIGJlIHNlcGFyYXRlLg0KPiA+
Pg0KPiA+IE9rLg0KPiA+IFJldmlld2VkLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5
QGludGVsLmNvbT4NCj4gPg0KPiA+PiBBbmQgaG93IHdvdWxkIHlvdSBwcm9wb3NlIHRvIGRyb3Ag
dGhlIHdyYXBwZXI/IFRoZSB3cmFwcGVycyBhcmUgYWxsDQo+ID4+IGFib3V0IHJlYWRhYmlsaXR5
IGluIHRoZSBjYWxsZXIgc2lkZToNCj4gPj4NCj4gPiBJIGRpZG7igJl0IG1lYW4gdG8gZHJvcCB0
aGUgd3JhcHBlciwgdW5kZXJzdGFuZCB0aGF0IHdyYXBwZXIgaXMgbW9yZQ0KPiByZWFkYWJsZSwg
d2hhdCBJIG1lYW50IGlzIHRvIHJlcGxhY2UNCj4gd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3Zp
bmcvc3RvcHBlZCB3aXRoIGl0cyBmdW5jdGlvbiBjb250ZW50cy4NCj4gDQo+IFdoeSBzaG91bGQg
d2UgZHVwbGljYXRlIHRoZSBjb2RlPw0KDQpzdGF0aWMgdm9pZCBpbnRlbF93YWl0X2Zvcl9waXBl
X3NjYW5saW5lX21vdmluZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yykgew0KCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5kZXYpOw0KCWVudW0g
cGlwZSBwaXBlID0gY3J0Yy0+cGlwZQ0KDQoJLyogV2FpdCBmb3IgdGhlIGRpc3BsYXkgbGluZSB0
byBzZXR0bGUvc3RhcnQgbW92aW5nICovDQoJaWYgKHdhaXRfZm9yKHBpcGVfc2NhbmxpbmVfaXNf
bW92aW5nKGRldl9wcml2LCBwaXBlKSA9PSBzdGF0ZSwgMTAwKSkNCg0KCWRybV9lcnIoJmRldl9w
cml2LT5kcm0sDQoJCSAgInBpcGUgJWMgc2NhbmxpbmUgJXMgd2FpdCB0aW1lZCBvdXRcbiIsDQoJ
ICAgICAgICAgICAgICAgICBwaXBlX25hbWUocGlwZSksIHN0cl9vbl9vZmYoc3RhdGUpKTsNCn0N
Cg0KPiANCj4gQlIsDQo+IEphbmkuDQo+IA0KPiA+DQo+ID4gVGhhbmtzIGFuZCBSZWdhcmRzLA0K
PiA+IEFydW4gUiBNdXJ0aHkNCj4gPiAtLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+PiBpbnRlbF93
YWl0X2Zvcl9waXBlX3NjYW5saW5lX3N0b3BwZWQoY3J0YykNCj4gPj4NCj4gPj4gdnMuDQo+ID4+
DQo+ID4+IGludGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVfbW92aW5nKGNydGMsIGZhbHNlKQ0K
PiA+Pg0KPiA+PiBCUiwNCj4gPj4gSmFuaS4NCj4gPj4NCj4gPj4gPg0KPiA+PiA+IFRoYW5rcyBh
bmQgUmVnYXJkcywNCj4gPj4gPiBBcnVuIFIgTXVydGh5DQo+ID4+ID4gLS0tLS0tLS0tLS0tLS0t
LS0tLS0NCj4gPj4gPg0KPiA+PiA+PiArdm9pZCBpbnRlbF93YWl0X2Zvcl9waXBlX3NjYW5saW5l
X21vdmluZyhzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yykgew0KPiA+PiA+PiArICAgICB3YWl0X2Zv
cl9waXBlX3NjYW5saW5lX21vdmluZyhjcnRjLCB0cnVlKTsgfQ0KPiA+PiA+PiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaA0KPiA+PiA+PiBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmgNCj4gPj4gPj4gaW5k
ZXggOWMwMDM0ZDc0NTRkLi41NDg3MGNhYmQ3MzQgMTAwNjQ0DQo+ID4+ID4+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmgNCj4gPj4gPj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaA0KPiA+PiA+PiBAQCAtMTcs
NSArMTcsNyBAQCB1MzIgZzR4X2dldF92YmxhbmtfY291bnRlcihzdHJ1Y3QgZHJtX2NydGMNCj4g
Pj4gPj4gKmNydGMpOyBib29sIGludGVsX2NydGNfZ2V0X3ZibGFua190aW1lc3RhbXAoc3RydWN0
IGRybV9jcnRjDQo+ID4+ID4+ICpjcnRjLCBpbnQNCj4gPj4gKm1heF9lcnJvciwNCj4gPj4gPj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBrdGltZV90ICp2YmxhbmtfdGltZSwg
Ym9vbA0KPiA+PiA+PiBpbl92YmxhbmtfaXJxKTsgaW50IGludGVsX2dldF9jcnRjX3NjYW5saW5l
KHN0cnVjdCBpbnRlbF9jcnRjDQo+ID4+ID4+ICpjcnRjKTsNCj4gPj4gPj4gK3ZvaWQgaW50ZWxf
d2FpdF9mb3JfcGlwZV9zY2FubGluZV9zdG9wcGVkKHN0cnVjdCBpbnRlbF9jcnRjDQo+ID4+ID4+
ICsqY3J0Yyk7IHZvaWQgaW50ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3Zpbmcoc3RydWN0
DQo+ID4+ID4+ICtpbnRlbF9jcnRjICpjcnRjKTsNCj4gPj4gPj4NCj4gPj4gPj4gICNlbmRpZiAv
KiBfX0lOVEVMX1ZCTEFOS19IX18gKi8NCj4gPj4gPj4gLS0NCj4gPj4gPj4gMi4zNC4xDQo+ID4+
ID4NCj4gPj4NCj4gPj4gLS0NCj4gPj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNlIEdy
YXBoaWNzIENlbnRlcg0KPiANCj4gLS0NCj4gSmFuaSBOaWt1bGEsIEludGVsIE9wZW4gU291cmNl
IEdyYXBoaWNzIENlbnRlcg0K
