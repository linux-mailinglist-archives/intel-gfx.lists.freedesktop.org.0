Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCDC64C2FD
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 05:03:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2662B10E213;
	Wed, 14 Dec 2022 04:02:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03F310E213
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 04:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670990565; x=1702526565;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=61YAgaD2Fs+CPeMLtfITkdXIQIf03OVihq7uQNgphWk=;
 b=WiGt2DAaUWGLKyuGYwoUeVGsTNA/sG4Z+gc/2ikBPxcKImj7+giNjSJi
 g8Q6LXtWGNLt0Dy5UdMrbmOR+J9dH2HpcHQF78/Zp8QtuymL6E35L1Qdy
 CvQPIFnbLIjgEa2FTe8mvPnVAXAM63/qKUmdhHA/4mqNsXpmoqSJzN17p
 7d7R/zVwdp/fO+GH/+rgTd/GXgnFStg78t+/rvMigefInKW1j4vnmce/f
 8ujeXMlGLaVGAwZnLrYXHqbLs4Rprrtx89OYrMqkv6Ek7sMU6KsLtl2QR
 hrtD0T+tQS6wkIU9NzXHzZ1DEVR1M3SnEm4Wa78SrpYcvakk2v0jZnguv g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="297988190"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="297988190"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 20:02:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="773199708"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="773199708"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 13 Dec 2022 20:02:41 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:02:40 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:02:40 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 20:02:40 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 20:02:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nWxFZuEH83WSTa/cttA4k6byP6gIUZ96JjrDUK7hJcGjbLKC1Co1qzkEqwnkA8n8kOx++C49084H6N1qvxgJoxfhy7kzhLpwY1YL+jIAHr+jDBWjp57q6EcdlBlcra+hqUJafOhSvbSnOJLoYluLOWgSxV0UYanTjsAWqtq3FWTqto+CDdRkDvDkpYK5qDJa7sK8CbEZ0J1WWOgVbMOgVtC7VdAKJQ1LakRCTStzzkYLld0A4Tc7olaWQaUIebdx9ayd6kUk2Tw4fH8HvUroPoLZvI38RRLRWbfzftJ4ZoaqrQZwmhQ2UDkkT0CvlszTuPN9JfBuoJAu74HQIjLZKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=61YAgaD2Fs+CPeMLtfITkdXIQIf03OVihq7uQNgphWk=;
 b=WEiNyvpZ4UTbExpaBDtRZYgtbzKbb7DRKLeb8yOeRlH8JRKu2cIuGbqvrNikC7VZNO+fxlP6nntJ1CHaAlDXvuMnZm5gP8UNtOByVZmEdnI07T6hBcqGQkb/rRIGqwuLAS9DoFfJRKHJyCDrBIMCm8YmXjXMpeXs6QB3RdngLAc0U5wYDHFGhx9Cz1lqaYSBMAAB4nIWKw9uWkhCdpiSh5ADmuIhXxcnwWZgeJbTVFUYG9eVnfIUf+IKsY0JOYniYiiimXJ6CcHBYhqijrjPXzhFggPYfmmNjVXwYdP7xD5CuEifaoFr8HuxMKB818surhKT2bHc87/76EKzb1Klrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by DS7PR11MB6063.namprd11.prod.outlook.com (2603:10b6:8:76::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 04:01:59 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 04:01:58 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 3/7] drm/i915/display: use common function
 for checking scanline is moving
Thread-Index: AQHZDjZF9veEgqKLIEazESeaBeZBHK5sxQmg
Date: Wed, 14 Dec 2022 04:01:58 +0000
Message-ID: <BL0PR11MB3170127F7C73046A9CB9E2EDBAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <ee0889d70deadc1e596c90dc6e20fa58837cb9b7.1670855299.git.jani.nikula@intel.com>
In-Reply-To: <ee0889d70deadc1e596c90dc6e20fa58837cb9b7.1670855299.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|DS7PR11MB6063:EE_
x-ms-office365-filtering-correlation-id: 5d945494-fc1f-4911-c7aa-08dadd87f292
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: QHcn4cSyt80U7NTcyGxSvRPSJ07X2AAAoRxpK96dRZh5ILIgcJV9NKLPDfkL+4nRsaYvV/ZzM/oAvZBaKkXrVDFVPD676IUoY1BZ9XzZB21KHD9V1pHQ9S5ilOrRiqGqSKZ7egB83TPWRaCidB/Zf3sRiR5J4BSNek3vBtFNUt79v49EhHY/frCY2L05IsMjz8qSiCW7AzCQ3gW4Ht/hRU62oeZA/VczPfIBuSH9bm2Opzxfe8U+Fp0tpogXkguHyZ7R1Rqs7Bs6dW4ftG9Fzzx+jmrX2jVmedeaAjgUsQMqStX9Z/nIiII7iPGgmYP+EMYisxpYQx9eB+RkE6YubcsPyO4Y5DlJktMyDJKY25FU+tDBoSAVAzZFzU7+3JjGLPZ3k6CP4FVmeurg/ReyMGOCTTFp8YUGaLAFEbqOiMWYL66im91puQRnWgPoYFXt6pYn2wOWDKv4z70Yux+EODj1fjPCKvAoBRwrcVZ3qj1kcSZShLsHmeZtW1QqkfcKPexB86150e6Qm9YkVh7A3SE0llJ82EMiI8OTrr5JS1ctyAWxxLo+Ed0NrYrlcQ9zqIisJJ4BFQQ23TgED/w2A2qtt5c+NmLlO5EKX/6xlW3QNXsRsHB0J7+265Dtp3Oi3mqT7RUeDne0OprzTueGiLwZOTC5zgcQFRrQ1FK0WDO2ybw5+/J6/WVjuunBioLrW7YvLkIqQ0hFaseX4Qk/Ew==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(376002)(346002)(39860400002)(366004)(136003)(451199015)(82960400001)(38100700002)(2906002)(122000001)(38070700005)(5660300002)(86362001)(107886003)(478600001)(55016003)(41300700001)(26005)(4326008)(66946007)(110136005)(64756008)(7696005)(52536014)(66574015)(8936002)(8676002)(76116006)(9686003)(316002)(186003)(66556008)(6506007)(83380400001)(55236004)(66476007)(53546011)(66446008)(71200400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cSt1SDljQzhQT2RCV2lxUkl4Q0ZYQkdIZ3ZzeEJQUkhVNTAxcmF6Rm9DdWlz?=
 =?utf-8?B?YUF4VnBNdStPdFp0ZU5teG93dUU0SlF4WlI3NVBPUFBPQktzSnNHeXduSzVX?=
 =?utf-8?B?R0ZRNXZmNG9HeG9GTE82UmFwUER4YXI5UU5TRmlNbHJuQjY0Sk01UXNocnMw?=
 =?utf-8?B?YVVhWExqNjRCYk5YclFLemJuQ21rbHg5WkxVN1U0a1VLbU1ZWlkwWVR1Kzdy?=
 =?utf-8?B?NXpYWlNrcFFGZFVqS3N6U3FJMXhYRzdnK3BHd2RRL2l2c25MeXQzelpEa2VJ?=
 =?utf-8?B?TGRZWVBzQi9XK2dxSWU3cWtvbEE0cFlUUlVUcFRTOHQ5dFduelNreHVrcVRy?=
 =?utf-8?B?ZXpZa1psL0RpUU9WQkxlRHJSdEdVTzdnb3kvS1hDbDR0ZVJyMkdjbVdmWkNM?=
 =?utf-8?B?cFpzZTg0WnZMOGFoQTdudWRlYTZkeXdUWXhORWF1R25DUHEvU2VKSWxkR0dW?=
 =?utf-8?B?Vy94STBITC9xWGwyVlEva21hZHpVSGxYcUtDcVNqNWROanRNbmN1UHRGNWdR?=
 =?utf-8?B?Q1JGaE1PdzlDbmVuZ2dnSmRGejM5a1FtZ3c5eW9MaHc4RTd1VU5QUHBESXl3?=
 =?utf-8?B?QWR2L1pJT3VKWUg1N2tJLzM5aXo1M1F1dDAySGN6S1hLUjFQZlRyOHlKZS9r?=
 =?utf-8?B?V0NiVXZQd1pZZkRxQVlobW03MCsvL0FJSWY5YTNnUnQxZEdLVWpjREpYVHFi?=
 =?utf-8?B?V1ZGTDluSXZ6S0VyNUhWWlJDOWxucVl1eHdVVGdFd3c1RnNRUlJoQ1ZnUUFM?=
 =?utf-8?B?NjFOeUVQR1VLck1ycXZ3czNiOWVXWEkyc284NWlTK2VYc0hqamNuUFVucVg1?=
 =?utf-8?B?eVVrcVNia3NGdlVsRVUza2N4cEFlRVJTSG1vR2NlY1RZYldTQm9uc2k1SHNZ?=
 =?utf-8?B?cExkbjFhZ05BckdreDhRVWJSOWQzVVJVU013eVZYL2lUK1pHck53Q2dCWmQ1?=
 =?utf-8?B?alFvVC9xWkt0eWhGUG1vTUdOQTF2QWpVcEFQUXNFNWpLdWFQbVRxTDBUME53?=
 =?utf-8?B?N1daNVFHWWZXVlZQZlpabWFkazZQM2M2TkZsakppTjN1TzV5THVWckIzeEUr?=
 =?utf-8?B?dTQrVmVDa211TytZNWpQdmZuekNEYlMvLzA0bGVuUy9GcnJQK1BVSlU4d0Jz?=
 =?utf-8?B?aURSZEllZGw1ZmdpOVBhbEpycDExd1liSWtjNFZnSnFHWkpoeVhkTUpUSW8v?=
 =?utf-8?B?OXNycEZBSG5tbVJMdkRiblB2UWt5d3JteVRFQ2lDZ1k0ZmVjdXpEZXlLTFF1?=
 =?utf-8?B?OGNIZnl1aGtVZ1ZHQ1RHUVpmaGVwaWJCM3lPaDExcjhud2V6MERmaDNMNWtr?=
 =?utf-8?B?K2lUYmpJU3kwSGlOU1p3T01YUkI3Yk5EQWZKbWxpeVpROGFBTW9qMEIzSk5z?=
 =?utf-8?B?K2hIdlV2THdyaWdOVkJjM2VRNEwwWnAxbkZVREZFUGtzQm9NREQzYzFQMFFp?=
 =?utf-8?B?bS9PSHFTb1FISFA5dGxPU2ZQMGhhN1pBTi9IdHVzeVQ1Mm9uUFZvdFdGcU5O?=
 =?utf-8?B?enVXWVlSV1owMjdSZkVYa2w3dmRQVkhwbUVzZlBESFBCRlh1RWw3TDM3a0Rz?=
 =?utf-8?B?Z1NYZnJwV0tNMkhvZ1g1UXFoNW0xQXRsYnhXamhoR09qZndJby9hY1Y5N0pZ?=
 =?utf-8?B?eVdpZ2NJdEg3OUFuV1c0TE12ZGhBaVY3Q0U3S0ovL3V6YmoyNFMxS3ZrVlJU?=
 =?utf-8?B?RVEwOXBYb2w3a0NXRVgwaWhpK2c4K0ZHUy9IaEtlaEdlUjgxQ3lnME1rVjNL?=
 =?utf-8?B?NFowSzJZbThiNVVhelVyV0hheUVyYnRXWUlRbWhaeXh5STBSaW90QlNGM2dH?=
 =?utf-8?B?Nm4vVUIzcERyeXdXNU9QbGJtTzdDanRGZ0crNlBHVUFrTnJMejQ0WTJQTDI2?=
 =?utf-8?B?NG1CVEJ4eEpTbmdUQ25BZnd3a0pYTFRRL0lvRlFVdXNmSkpOa1ZHQ2NqZmlB?=
 =?utf-8?B?MVB4RUhJRnR4SEpUU0xjZzlrbVppVE4rc0pNck4xMzBoZnR3am9tait6UzJV?=
 =?utf-8?B?bFV2ZnB3Zlp5SzRNRXJJQnFmWEEwSCs1N0lEZUFIdXhuS2dhVGlia2ttNW9V?=
 =?utf-8?B?Y1BrZmRLTjJkS1pQckNzUEdaTU9MM245eWhZM3p6RGxlcWJtMXl0UEpvc0Rp?=
 =?utf-8?Q?IfPIrc3s5e3dXSnmvYf8ZPG+g?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d945494-fc1f-4911-c7aa-08dadd87f292
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 04:01:58.5750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dtgka67UuSXSckKmkKMy0ljbGsNJ1Q4HfivBOhOSvQpS7T3UdveOblM7ds7PZjUYWPCpyb/8WHXdOFRyd6cDIQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6063
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/7] drm/i915/display: use common function
 for checking scanline is moving
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkNCj4gTmlr
dWxhDQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgMTIsIDIwMjIgNzo1OSBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCAzLzddIGRybS9p
OTE1L2Rpc3BsYXk6IHVzZSBjb21tb24gZnVuY3Rpb24gZm9yDQo+IGNoZWNraW5nIHNjYW5saW5l
IGlzIG1vdmluZw0KPiANCj4gY3B0X3ZlcmlmeV9tb2Rlc2V0KCkgaXMgcm91Z2hseSB0aGUgc2Ft
ZSBhcw0KPiBpbnRlbF93YWl0X2Zvcl9waXBlX3NjYW5saW5lX21vdmluZygpLiBBc3N1bWUgaXQn
cyBjbG9zZSBlbm91Z2guDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGphbmkubmlr
dWxhQGludGVsLmNvbT4NCj4gLS0tDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11cnRoeSA8YXJ1bi5y
Lm11cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFydW4gUiBNdXJ0aHkN
Ci0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyB8IDE4ICstLS0tLS0tLS0tLS0tLS0tLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDBjZGI1MTRkN2VlMC4u
ZWYxNWNjMmIxZmE5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2Rpc3BsYXkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiBAQCAtMTA2MiwyMiArMTA2Miw2IEBAIGludGVsX2dldF9jcnRjX25l
d19lbmNvZGVyKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAg
CXJldHVybiBlbmNvZGVyOw0KPiAgfQ0KPiANCj4gLXN0YXRpYyB2b2lkIGNwdF92ZXJpZnlfbW9k
ZXNldChzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYsDQo+IC0JCQkgICAgICAgZW51
bSBwaXBlIHBpcGUpDQo+IC17DQo+IC0JaTkxNV9yZWdfdCBkc2xyZWcgPSBQSVBFRFNMKHBpcGUp
Ow0KPiAtCXUzMiB0ZW1wOw0KPiAtDQo+IC0JdGVtcCA9IGludGVsX2RlX3JlYWQoZGV2X3ByaXYs
IGRzbHJlZyk7DQo+IC0JdWRlbGF5KDUwMCk7DQo+IC0JaWYgKHdhaXRfZm9yKGludGVsX2RlX3Jl
YWQoZGV2X3ByaXYsIGRzbHJlZykgIT0gdGVtcCwgNSkpIHsNCj4gLQkJaWYgKHdhaXRfZm9yKGlu
dGVsX2RlX3JlYWQoZGV2X3ByaXYsIGRzbHJlZykgIT0gdGVtcCwgNSkpDQo+IC0JCQlkcm1fZXJy
KCZkZXZfcHJpdi0+ZHJtLA0KPiAtCQkJCSJtb2RlIHNldCBmYWlsZWQ6IHBpcGUgJWMgc3R1Y2tc
biIsDQo+IC0JCQkJcGlwZV9uYW1lKHBpcGUpKTsNCj4gLQl9DQo+IC19DQo+IC0NCj4gIHN0YXRp
YyB2b2lkIGlsa19wZml0X2VuYWJsZShjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0
Y19zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YyA9IHRvX2ludGVsX2NydGMo
Y3J0Y19zdGF0ZS0+dWFwaS5jcnRjKTsNCj4gQEAgLTE3NzIsNyArMTc1Niw3IEBAIHN0YXRpYyB2
b2lkIGlsa19jcnRjX2VuYWJsZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAlpbnRlbF9lbmNvZGVyc19lbmFibGUoc3RhdGUsIGNydGMpOw0KPiANCj4gIAlpZiAoSEFT
X1BDSF9DUFQoZGV2X3ByaXYpKQ0KPiAtCQljcHRfdmVyaWZ5X21vZGVzZXQoZGV2X3ByaXYsIHBp
cGUpOw0KPiArCQlpbnRlbF93YWl0X2Zvcl9waXBlX3NjYW5saW5lX21vdmluZyhjcnRjKTsNCj4g
DQo+ICAJLyoNCj4gIAkgKiBNdXN0IHdhaXQgZm9yIHZibGFuayB0byBhdm9pZCBzcHVyaW91cyBQ
Q0ggRklGTyB1bmRlcnJ1bnMuDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
