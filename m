Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B06F3594F0E
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Aug 2022 05:32:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BBD3C99042;
	Tue, 16 Aug 2022 03:32:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B88B8DAA7D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Aug 2022 03:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660620723; x=1692156723;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AxMsm6piFASVHcTZ+Ov9a2vPduMrorelN4Y++XS4nc0=;
 b=Ccjc3DtHXnle21dTvIT7aLHX45G81rwzyyvoCeLHFe83YBR9M6PQLi1V
 hc1RxNcSazQHJzWEa1q7c6+wCluVJcl+bQhgRAmtqugsdmUiFehLp79fj
 o40w2NZHiotGPetKS/a0Lxna3oWKEdiaIQr67Me379oqmj38Uy8r7c52Q
 HrOlZ24Cpi+l45R3il+J3k6vTs8ZZQmtVYhjNE6C0nXMjlwY8UVJWpOZh
 tU8YZv83YckpG4TnUCfbqSPEdbQ499t6v8q3KmNNmbYq9DmbIU8pw+hc5
 /j4e+lgmlqLs+x8od1jNET/1Wutyj22sAlcCajjfTAttX9CRolJlURFYP w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="292910876"
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="292910876"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 20:32:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,240,1654585200"; d="scan'208";a="606878558"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 15 Aug 2022 20:32:02 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 20:32:01 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 20:32:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 20:32:01 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 20:32:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kjBoKQDKyxrWjwdcWDjW0AM2GLcvfL5E9A3+m2oh/rl81QyVKrBTErGrFdrHkoJUworlkFoEUFr5EPZwsRz3nbUdVlkT5thfGkd3Y1D8v+B7yNXiYtH998+CpOyA74bTbbs3EiZ+dtiJUxDHj+c2n5wseyPSsAz+jJ/ClnWTc4kqz7urvObWQUI2qv5kTgGOy6EKdSy9Xl8SvVriZ6PvNCaRRZ0i027aN/vX4FAzBvKQmtxnCD+8R0ysFi+b0IT5kWMQMTTO3b7ieaxCXklU3ds4XIMrlUU3SSQj5GTKbE1gBI4aXvAdhvdgaEUL64dX3ZT4m2Gaq5YPV0V5k21hGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AxMsm6piFASVHcTZ+Ov9a2vPduMrorelN4Y++XS4nc0=;
 b=SyFq2mfxUUDnJYO0I5xC0N4CaravZcalsm5Hlz3U34g0UWljiXn00ozKNZ2qamN0lnqMkszOqxSLJw2+yl/YOlFsAegmvSiiQ1M1FUPXbkso1WadbyaEJM+22pc2KoT9qTP2KwebeJRhSJunLKFEi7evyfgt/7PVJWlJWfbTddHyb1wbUK/0S+G5n77arFxVqICmsio2kZ2KrX03qAXuQ8poODSve3Id7MbzgYAFqxlUgqXUQd8z2HZC5Mz0izXiIwHuetlAc0zYTVwzzXD+/2NYZITBxbsKStabsytBWWtJZdpTm2DvZszf2OY1qOuJWXG5uDwT84oLZUCumuQaFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 DM6PR11MB4706.namprd11.prod.outlook.com (2603:10b6:5:2a5::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.10; Tue, 16 Aug 2022 03:32:00 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Tue, 16 Aug 2022
 03:32:00 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
Thread-Index: AQHYrZXlzdW1V3Lj1UmoUlDicsFACa2qp5AQgAAp+oCABhSREA==
Date: Tue, 16 Aug 2022 03:31:59 +0000
Message-ID: <DM6PR11MB3177FC14F388F35CD62892F2BA6B9@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1660230121.git.jani.nikula@intel.com>
 <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
 <DM6PR11MB3177A81A3B4B3DA89C3EC833BA679@DM6PR11MB3177.namprd11.prod.outlook.com>
 <87bksqt16i.fsf@intel.com>
In-Reply-To: <87bksqt16i.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3eac4c2-0f91-4726-fbd9-08da7f37e0f3
x-ms-traffictypediagnostic: DM6PR11MB4706:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jY6e+VgQIQWScG5kr7FAJ35bN5MrcUtaTSGbhhtTXO3AsKi1Z4sT1ioDCfD240IrLdc2bRGa8Jdv/DAK1gxqrToYXZzhAdP4pp5GakjKHbMn4TM3K1q4vtu2yTlWOaaf3xOdKrTV3yuk8DRkRpmKqLgCqVhvMryuvK3L7sqz6snOl6LUrw6rJb4Ya8m7CKutkq6wdc1rNSZXN+5WyKrbXuXfSuPbDfhMm4kn9l8NkMEr4pec5sRdC5+wzPUDd07IKKsm5ILmST/CbeXGBHD6vjyVS1BKKPX9ILiD/7vmw+SzJcszHziZUvqo3nuif1kS3zHu22sGC7MTyw1X+663lm76haSWAI70/9zdPIGM4Vxpi3AV+ZoRAjdmr8e3SFL6TK8VWuSHkdRmvF/PGlsfOLes9iXQrPXsuRyJaCfspqoQzZp2py7EkIAS806BF4EAuPJW753cw0m3VqusKnnWvt3WVJUkivTkmjhjjutcgBbciV8u+aC72vku4TzH04ZaBQcRiDO6FsJQM15dAxTTfjQZA5B5Csv3nbrU+IKH3GQ4XPz/eFEypbXRXUNljmw3w/nVPR740nGYbHuJQDbeoG/Abci375JYklGefHQ3SCepToZkl8xx3QX0mKUzdfdjP7y+VsULSAQ+dDXq2mhLSWhh4+CatmEGD3kVtcFHbVuLZ8mzJtiuzuIDqBn7BDClz3hsUtuwJ6FhkHOVc1npim5NJumlPmd7aKWhmwyAATIB3ofct2GPuCIjiM+v4xX77lC4Ax6pncg+t1JDsMGwewqMZMwEZ+Tj5xxVvTf5HejEXqxucZlo5hHhhfXCbYP1
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(376002)(396003)(366004)(39860400002)(76116006)(38070700005)(5660300002)(52536014)(316002)(66556008)(41300700001)(64756008)(110136005)(4326008)(8676002)(86362001)(6506007)(66476007)(53546011)(122000001)(33656002)(9686003)(2906002)(66946007)(55236004)(26005)(8936002)(66446008)(7696005)(55016003)(83380400001)(82960400001)(186003)(107886003)(478600001)(38100700002)(71200400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3VETFNLdG80V1EwcWZ0MVV5dWFYSDBlRW1nY052QThZdlczeVJXdEtOaXQw?=
 =?utf-8?B?MmhnZ2NqMWxITlBrSTZFRmtmbnZ1bmpqWTNQTXBMK1Z2d0NxNnhaU0dlc2JG?=
 =?utf-8?B?N2lOajd1VHNZdGtRTW1EQnovQ01TMXBNdVc4WXNZSElVS3dHMEpDMHFSaFZY?=
 =?utf-8?B?UHVYTFpVYWZyeWFWTlFwRDgvWEhiUllPOW8weXp5MUpCaUlzMUk1bTdOTG04?=
 =?utf-8?B?c05EM1BIOUFUSWdLM1U4K3gwc0xJRWcxNkhMaXUwK0dLQlB2WEFPYnJINFhM?=
 =?utf-8?B?Mko1T2Q4eG5BQkJsMXR1SEQ4MWlBZjRjNVRacXpVK3h0S3Z1eFdjcmpTaXlH?=
 =?utf-8?B?MXNWK0FUaTA3ZFJDR1QvNHdZVkJDbU1ZQWhrZUwvUVpQZWQ2QXdjVW9WWHJi?=
 =?utf-8?B?TFhFVmpubkdpeXMySDlsTDJocVM0cnhvSE5lbURHQ3ErbVpDVE5tS2YvOUxM?=
 =?utf-8?B?TTZqRkVEZlhVTGx0NGwzNFZ3OUd2bXRUMWYrSUpUU1V1ekQvb1JLbVpBQ3NZ?=
 =?utf-8?B?dWdvVnJ4LzlPQTFMVTVkNFhQRXJXdG0xRmdhUytTVml6WDhjN2lOai9ObTBm?=
 =?utf-8?B?M045SlZzK2hjbGtXUTlvVUxFWEc5RHdSVzZLK2RkbG9wUE1KOWRFMmZzWkRt?=
 =?utf-8?B?Q2hVUXJIQndTUmZuUWplODYrT0FHOHdsaXNqcjlNMGliSjN5T1JUbjBiWURI?=
 =?utf-8?B?VUxFUVQyWHZLYU41dU5POHBhbDBVOHJZemVQNWc1Z1dieC9qSHpGTm1VVzhW?=
 =?utf-8?B?Q1VZdEtzU3VJMDFlZm5IV0J2aUhkbGd3Mk5sbk11bkNtQXhObWJ2M2JRcSsz?=
 =?utf-8?B?aGRwTi9DVzJpUTBFSUR5QkhqT0JFMXJnaDNaSDltNlAyUmM1Nk45REJJUXNx?=
 =?utf-8?B?M09aSEtOTXZDZXFMdGVsNEFDYzJUVEhETUt3SWMzQVVQdWdKRE11eFZFbVFt?=
 =?utf-8?B?Z1FxeUo5ZEZiUjJ1bitJYXJYL24wcnBTM0dZeDBjdEIvcWpITkJqaU4zZWE4?=
 =?utf-8?B?dzk1bTNUWDRNaURLaDUvQ09Jd1h0T3YzQ2J6UWVmTzRtdFJGSDlmM25penF2?=
 =?utf-8?B?U2lOc1c1bHJpOElTVjd5a1VrWDBGa0FrZG5NelBUSVRVVGVsc2xZTTlMYXU0?=
 =?utf-8?B?aVBYaS9FYlFWeUZwaEZJZUVVNTM0d1RxMGxRWDVyeG9mYmNmYkFjY3IrSXBU?=
 =?utf-8?B?RkJZUExxT0lZdEcxN1pTYUJvMDVqVGgva2JieXRPa1RnNytCUk1wbzhPSy9a?=
 =?utf-8?B?NVljTllIbXliZjUrRUNya0plTFdSdXYvN0ZRL094WWMvM2dWRTNieW9DZ0U2?=
 =?utf-8?B?THE4VGFhT0hqSVp0YXZKNjllT3k3WXo5aUtKdzlTWEUrSEJBZlpPMmIrWWJC?=
 =?utf-8?B?Z2R2QytkMkdRaUhzSkJPd1RFUm9ISWhLcGppWDB0d2R3RExoYk1ZVU1ydnda?=
 =?utf-8?B?aFNDaU1sQmxQNXVvN01xUm9VditzOXFaMmxnbUdiS0MwTFJwOERDY1gzU0ZK?=
 =?utf-8?B?S0dGSE4waEFLSjB0L3JqUXVuQnJ1enozeDRoZStPMnVKMEZXS0NubWNqZ2g0?=
 =?utf-8?B?WFZqck5QWTlnQTl3TmVvVmFSUnRIRnJnVWR3UXY4NGRhT0MyWkRHdXA1NnZj?=
 =?utf-8?B?d2VHeGpnZmNFTEIzc2c2b05tSmhpd1JrOXNieWdNaTJYRHZEV09MVjdXOG9u?=
 =?utf-8?B?b2xKcm1SR1ZEZ3VNNnU5anBMWXM3akQ4UzNOU3B5c2t0OHJScStRVU9nNGgz?=
 =?utf-8?B?VVF0Q0tDdWhJYzd3RGxCYXpWWUp5aytjWks5bE05QzA3emdUM3QyVnErb0J2?=
 =?utf-8?B?WEFpbW42WUQ1VDYrdG5obWJ3T0pYQ0F4QzV1RGd6ZXJVbjNSZkpRVy9jVUVr?=
 =?utf-8?B?YmM5OU9meTlsd2xGSUVNcjY0amR0dUR5TURZZmdBQ1RlQ0puQXMyMjIzZUty?=
 =?utf-8?B?TjUwdGdBZzlPMWxQWVNUbFlNNC81bVFBLy9oZUlucUx3SmkxN2tSdXhPV0Rh?=
 =?utf-8?B?cUxFcDF6Ymp3VUlZTTNCUGNJZFFTSGZ5TTlWUE9XYmRzUGNBTHZVYlJsQW1j?=
 =?utf-8?B?bzZoNTV4WVQ4V0RsWFNod0pRY2NrV3p2cVpLN3FyRFIxWDlKTVBEMzVaTUpy?=
 =?utf-8?Q?LNAYO7S/GTPKhBCie2FyRH41+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3eac4c2-0f91-4726-fbd9-08da7f37e0f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Aug 2022 03:31:59.9892 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mlTCGFOk3STbKmFLsF8jDaiE/lbHSr0Agv0ojSH3IZDEwXyiUFTMyxG4AXoLwHSTWIsaNRCt0RQ0Fxxy0QjD+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4706
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
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
Cc: "De Marchi, Lucas" <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBBdWd1c3QgMTIsIDIwMjIgMTI6MTAg
UE0NCj4gVG86IE11cnRoeSwgQXJ1biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT47IGludGVs
LQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBEZSBNYXJjaGksIEx1Y2FzIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0ggMDEvMzldIGRybS9pOTE1OiBhZGQgZGlzcGxheSBzdWItc3RydWN0IHRvDQo+IGRybV9pOTE1
X3ByaXZhdGUNCj4gDQo+IE9uIEZyaSwgMTIgQXVnIDIwMjIsICJNdXJ0aHksIEFydW4gUiIgPGFy
dW4uci5tdXJ0aHlAaW50ZWwuY29tPiB3cm90ZToNCj4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2NvcmUuaA0KPiA+PiBAQCAtMCwwICsxLDM4IEBA
DQo+ID4+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovDQo+ID4+ICsvKg0KPiA+
PiArICogQ29weXJpZ2h0IMKpIDIwMjIgSW50ZWwgQ29ycG9yYXRpb24gICovDQo+ID4+ICsNCj4g
Pj4gKyNpZm5kZWYgX19JTlRFTF9ESVNQTEFZX0NPUkVfSF9fDQo+ID4+ICsjZGVmaW5lIF9fSU5U
RUxfRElTUExBWV9DT1JFX0hfXw0KPiA+PiArDQo+ID4+ICsjaW5jbHVkZSA8bGludXgvdHlwZXMu
aD4NCj4gPj4gKw0KPiA+PiArc3RydWN0IGludGVsX2F0b21pY19zdGF0ZTsNCj4gPj4gK3N0cnVj
dCBpbnRlbF9jcnRjOw0KPiA+PiArc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+ID4+ICtzdHJ1
Y3QgaW50ZWxfaW5pdGlhbF9wbGFuZV9jb25maWc7DQo+ID4+ICsNCj4gPj4gK3N0cnVjdCBpbnRl
bF9kaXNwbGF5X2Z1bmNzIHsNCj4gPj4gKyAgICAgLyogUmV0dXJucyB0aGUgYWN0aXZlIHN0YXRl
IG9mIHRoZSBjcnRjLCBhbmQgaWYgdGhlIGNydGMgaXMgYWN0aXZlLA0KPiA+PiArICAgICAgKiBm
aWxscyBvdXQgdGhlIHBpcGUtY29uZmlnIHdpdGggdGhlIGh3IHN0YXRlLiAqLw0KPiA+IENhbiB0
aGlzIGJlIGNoYW5nZWQgdG8gbXVsdGktbGluZSBjb21tZW50aW5nIHN0eWxlLg0KPiANCj4gWWVh
aC4NCj4gDQo+ID4gLyoNCj4gPiAgKg0KPiA+ICAqLw0KPiA+PiArICAgICBib29sICgqZ2V0X3Bp
cGVfY29uZmlnKShzdHJ1Y3QgaW50ZWxfY3J0YyAqLA0KPiA+PiArICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqKTsNCj4gPj4gKyAgICAgdm9pZCAo
KmdldF9pbml0aWFsX3BsYW5lX2NvbmZpZykoc3RydWN0IGludGVsX2NydGMgKiwNCj4gPj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0IGludGVsX2luaXRpYWxf
cGxhbmVfY29uZmlnICopOw0KPiA+PiArICAgICB2b2lkICgqY3J0Y19lbmFibGUpKHN0cnVjdCBp
bnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAg
IHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gPj4gKyAgICAgdm9pZCAoKmNydGNfZGlzYWJs
ZSkoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gPj4gKyAgICAgdm9pZCAo
KmNvbW1pdF9tb2Rlc2V0X2VuYWJsZXMpKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUNCj4gPj4g
KyAqc3RhdGUpOw0KPiA+DQo+ID4gQ2FuIHRoaXMgYmUgY2hhbmdlZCB0byBzb21ldGhpbmcgbWVh
bmluZ2Z1bCB3b3JkLCBzb21ldGhpbmcgbGlrZQ0KPiA+IHVwZGF0ZV9tb2Rlc2V0KCkNCj4gDQo+
IEl0J3MgYWxyZWFkeSBib3JkZXJsaW5lIGRvaW5nIHRvbyBtdWNoIGluIG9uZSBwYXRjaCB0byBy
ZW5hbWUgdGhlIHN0cnVjdCwgYW5kDQo+IGRlZmluaXRlbHkgdG9vIG11Y2ggdG8gcmVuYW1lIHRo
ZSBob29rLiBNYXliZSBpbiBhbm90aGVyIHBhdGNoLg0KPiANClRoYW5rcyBmb3IgYWNjZXB0aW5n
LCB3b3VsZCB0aGlzIGNvbWUgYXMgcGFydCBvZiB0aGlzIHNlcmllcyBpdHNlbGY/DQoNClRoYW5r
cyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo=
