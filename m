Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B79704B8D9A
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Feb 2022 17:13:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 555C910E5D9;
	Wed, 16 Feb 2022 16:13:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EEDF10E5D9
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Feb 2022 16:13:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645028023; x=1676564023;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=zGqDN5zkMvVuPO1pbn/fQU4wcu4Wpytq0nLuPq2p9Ew=;
 b=Vk/AXAkRSE6nZ6efgjvvs/4oc2my7vK9mKSLCv5oe/cHO4X2LsG/BT7I
 MdAhSXnPGqd/zZVRp9dMQ8r7XBJuXnDcO5avQT6CfgBvNdY+encWp4rfS
 lLAjHc3eJdnTfzRfft8KVt7+3QCFpUKbrEmKKjTniUeI60VrScW69FoA1
 qRGDYpdz32HTIiP3jNurikOWo0wFC+G1C3EZejFlQP9Xzir07BhGdppQI
 P25/PWIu92lMoV0VGJeGQ+Oso2yjy7dmvIpeC4wAh9QWlXLte/5RGm/uh
 ALjXNGBy6V41IVRI3ERxD67jC82uUnPwqGdceMu8uCydgTnJeZvkHbNOJ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10260"; a="234193711"
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="234193711"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2022 08:13:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,374,1635231600"; d="scan'208";a="487160954"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 16 Feb 2022 08:13:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 08:13:17 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Wed, 16 Feb 2022 08:13:17 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Wed, 16 Feb 2022 08:13:17 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Wed, 16 Feb 2022 08:13:16 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MED4sGcYOu2/ySfQ3ZxvIjOjIdyO+kyhYW0IcdPyWbB9qYo6wGXzkuO2NrRpLkRC2vILmYgwWD4Bh7TiWi1YQ+urNQN2xt22jOMNYsCzTWovBQwZmTq7hosFXktax/ZLrSC0Bm12nFtk6dV59DFq8Mz4Wn44K75j1tA51I2epLYDWCbPhBIi5rCJAtRvtKFjE0AxUWCPZY108KcJXzpqEwnv2jRJiwfoEVcKtLRZofCuIIYqzsCwTr/FZxz7zL/eEdyq3t8Gy1Gkq1GxhQs7CkBf5X3WPvJ6VUtOXA5DcggCosXkHTtrpFlYd6cOuEB7wsOEtOallwjJvh0eNjKZ/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zGqDN5zkMvVuPO1pbn/fQU4wcu4Wpytq0nLuPq2p9Ew=;
 b=kacK85wO/I0w5hECD4qnAsQV7UqjSBY25MbLwM21M0s4nn4/1A/7w7HsRxt1GaOc8ADUAN8UMl++u1bFW9W7ZmvS5uEEJ0gN84HtX2hnxthvSZdg8E6Jpg7/gH5bPrRrcC7hqHrzd4SEcuexWoCNc76PbISgqXhGQYexpFh1iiW2Xe5TAOaV9r6XpXIgOdl3SM5wt86zLL6o/xJM5+KGOiflOorz1PqQC3hxfMKlG6oTGUBlAfSTaZpOJvoB8gI0/dltShjaZz463tS8glCPtCqrRU2FSjnWWHG/kFUSg9U6GI4UuEk8rS9feAjHLsW1d890tNfwRKVw6u6mkdOhpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5911.namprd11.prod.outlook.com (2603:10b6:303:16b::16)
 by DM6PR11MB4220.namprd11.prod.outlook.com (2603:10b6:5:204::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4995.16; Wed, 16 Feb
 2022 16:13:14 +0000
Received: from MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::e4d0:2424:fab3:eb0e]) by MW4PR11MB5911.namprd11.prod.outlook.com
 ([fe80::e4d0:2424:fab3:eb0e%4]) with mapi id 15.20.4995.014; Wed, 16 Feb 2022
 16:13:14 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH topic/for-CI] drm/i915: Add DG2 PCI IDs
Thread-Index: AQHYIrV9ARu8Ip/aPUerqxLq4jr+c6yWWsUA
Date: Wed, 16 Feb 2022 16:13:14 +0000
Message-ID: <1e6dbfc2e899dca401a92953110d347960263253.camel@intel.com>
References: <20220215214544.2197483-1-matthew.d.roper@intel.com>
In-Reply-To: <20220215214544.2197483-1-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72fbb1d9-9229-4db0-afb7-08d9f1673c1f
x-ms-traffictypediagnostic: DM6PR11MB4220:EE_
x-microsoft-antispam-prvs: <DM6PR11MB42202367C185728B19BF2FB39F359@DM6PR11MB4220.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1013;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aWQz98ZVw7G1xlgsLhWS4lfLGxhmd4ohF+OCPBusCdTyv3kal5GseBy/P5/q+VQ/PJlVgdldBaFxAK2f0Pq1N5d5kUNtfzLpwMzJgH1aN41G/1W5rYOMvUpQDeZdc+ocyXpcQtYBQ11miFfw+PxnwL+4YiYskDISvXuSci0bwG14CsmIBrgLYe0sEHi2tFlgY7+CAZjGb8kCF6OxoRSu9q5sDpjywShQ2spCmBG01TQFu1nYEjB63ZbHbmZ1+UBbEjR+b6u8EdMzjzrHb4ekdjwmj1NAkrZbXHsNCVObcsSA/H/4DqOznoMdrC40014sHBjQMBH+Aq4cyCCx4qO1113+G1UQYyTe2i0Y07rgJsx2BoiEPAGu3NCDxEuNry5tPtHwtDCZh4iz2CDOTdj6KmYtFlBO5SuSXHl0xDyXVIToOq/4xjRkFYs/rns+owFAzHHKvglJhGsXZMsRo3tDN8YaQ4fU7E+bEghgUah/NKFn6rxU0DLGBAScNqjo00uBQGRRV9IpaO1T9gqma7fWnb4vabTJLgw9grot0q82iMzA1VVYSRBoCiOeq/o6rK1cQbVLRGtjhRZITTRGviqycACq2TYlesqaMdzzLmWV4Ma+gUVgqsWRrjFJgzxD4CO4sNEKJzVne/gg5jhX5BU16tRphjutY1E45BmW2J4TC9MsREQCE1qy1kZotF24cVl518NI9T+MnAAq6au+t42hqA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(38070700005)(86362001)(122000001)(38100700002)(82960400001)(8676002)(66476007)(64756008)(66556008)(66446008)(76116006)(66946007)(6916009)(2906002)(316002)(36756003)(8936002)(5660300002)(186003)(26005)(2616005)(83380400001)(508600001)(6486002)(6512007)(71200400001)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MFNGL1FQelJPZ3lWYkFhaXNuMmpmUit0anU0bmg0eFFhSU1ua2t3QklJZWpG?=
 =?utf-8?B?ekZJRlpUa1psL1lxZkpON0pVZXlnZmVoZklsQnl4UmpZV2VBT1JBM0NzNlJS?=
 =?utf-8?B?QlpIbGY2SDlTdEtsVTFKeDVLMEwxYzNvdGoyZlhGM1lId2VLSG5ZUDZ3eWR3?=
 =?utf-8?B?aXFYVnJUelpPZXVSMi9BeU5KRXlPU09Dd2tTQ25QKzhBSFk2bnZlRkhsMG9y?=
 =?utf-8?B?SmNpcmYrbzMvdEFSeWdGY1lvOGZBczRMWGVPV0s4RU03Q3g2bkVncTNQcnps?=
 =?utf-8?B?d1ZpaEU1Nm1QNFlvZXc5SlA5SERXUHByY0JQcThsZldkWlh0alphLzZaOHpC?=
 =?utf-8?B?NzJnNmZoUDVaMEFQYnBzMUVhMnVZeGRSNXd2NnFZYjh3NVBVcVVucjZoelhI?=
 =?utf-8?B?R1k1V05hRHlNaUdOcFEwQzdOQVJEMzJXOUZoNytCK2RqRjZyS3FSNnpWK2dW?=
 =?utf-8?B?WWlJclIyN1ZkZDRaT0xjdFVKeE0zamtNRjZsdEdUTzY4bVhjVC9BTC9pTzFv?=
 =?utf-8?B?aTFJMi8zREp1bmF5TmIyaldCMVhHeTRQNWIrbUMyRlVnUEZuV29EKytacU55?=
 =?utf-8?B?cEphTjRwTUMyTDJweUh0cnpXTjVzbCsza1REbm5uMWhLanQ4Z3F1WHk3UTl4?=
 =?utf-8?B?NkRleDNFUjFpMDVoS1BveFlnYkJwaUVpcjFNTE9OMHFuVWhVRHpQdEJXbnh5?=
 =?utf-8?B?Nk9BaUQrK0szSmVJRDNJYTVSRlBOYWVxVmR6YjUwcDFTcFBmdWkyNktSc2VY?=
 =?utf-8?B?bXFSY1lIYWhWSW5GRTI5cTE3akQ2NFlUUTg2WkYxejloRlE2ak9QdWIwWnBN?=
 =?utf-8?B?eVByUVd2OHJJbXRCL1RmajIrNUlhckZJMGdhWlBkeTNYenBFcG9hNll2a2JO?=
 =?utf-8?B?NXlIenN3NGFvVkRyc3VuUjVtcFF2aFR5N1ByL05Xb1dUbEpOcHFGQSt1dS9F?=
 =?utf-8?B?ZWZCRGxmaHArWEJvY0R4VTk3RjA1NHJENDRuSUZuVmJVdkVaUzh3QSsyMzZx?=
 =?utf-8?B?bUI0TDg1V2djbW5iN2VjY2xZVDI2VS92YnAyMC8wVkFzZlhJSWFFa2VIV3ov?=
 =?utf-8?B?TG9IT0xjM0lkUW9YTTVGbmxqNGR3OFMxMldNc2dQaGtCVmxpNUVpVVNTd1gy?=
 =?utf-8?B?di9aYW1kVS9IdkJNWXVGNkFBVW5VNEZoT2pscUFPTlYzM1Fob0tjN1N1dS82?=
 =?utf-8?B?cUNSS2NUK1JFNmdLa3RKQitRdC8wTTNWY3BiZGtHSkljRFAyclNSVXVPdjZZ?=
 =?utf-8?B?NkJkS2l6ZGEzTFdCYXlPWDZTOUFFUVNBYndaUG1odlAvaWhMZnNkTHZsaDZB?=
 =?utf-8?B?L1JDZ05lMFhhRkpIS043Q0hqWFY1dXpKeDdSMW9obUxaNUdyb3Btd285SW94?=
 =?utf-8?B?U2FIcC9iY2xYUDF6cnl3ZmEvaCtUL1RQMU00RTIyeTdmQ0JrSHV2SXZtT1Nt?=
 =?utf-8?B?R3ZieEQ3cmFlSFRWM09LOXdIK2tKYUtxZ2dIQzN1OTJjd0lyc2hEdDN1V2pK?=
 =?utf-8?B?Z2tSK3BYMElBUWRlakErSzdmV0J4M2YwTisyOE8waEhUYVZadnNHVFFKK1l0?=
 =?utf-8?B?N1RPR1dtd2RzOXY3TFJ1bmVvaWhzc28yOURlMlkvdDJST1BXWDhOVDV4SUtw?=
 =?utf-8?B?Z2tOSlFOZ3R0S3NaUHprL1dZY2t1d0tIeFBqcEhwYzhuVzE3ZHF3MkRFNGNN?=
 =?utf-8?B?NHF6TzZjUWdhRFBjQ29pVnlVL0V5ZU9aTWJ2ays5Vk1vYzlrcTh4bDRtRFhN?=
 =?utf-8?B?RnQvcm1tWlVDb2k5V1NJaHJyWEFFb1dXYXdBUnhPemczSnBUWk1mWWZZelJj?=
 =?utf-8?B?OFI2VDZ1S3VkUzIrc3N1TXNYM1VJdXc1R2FZSjdkSk4yUnhiZkxOMks4dER2?=
 =?utf-8?B?dUwrSFl1Snh1NEUyOWlSbFRPQy9YMUJVdVhTYVd1N3N3TVZORWNYUTJPNEc4?=
 =?utf-8?B?eE1CankyQmdaWmVDS2dNa09ucU9OMnBXekc4NEMyOGwzNjRURkNxenZ4MGNL?=
 =?utf-8?B?NU1UM0M3RjZtU2FZcjhHRzdQd0VsYXZpTjIzZUptVGtwSlVNZUFpUjJLUnll?=
 =?utf-8?B?Zm1ZYjJIbmhaZTRnY0RJeUFKSGJKUmJoWmdhUlQ4RG1wbFVOdkoxNUJTdnp2?=
 =?utf-8?B?R0RpZDhubVJDeXdjR3dGTUp1cGp5bmZGZkxnbTVyVk0vQkswbnRVbGloOWRh?=
 =?utf-8?Q?eQFRsIe/g5JVPtIJ7FXbeO0=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <61F8C1B17E2FB244BE8118DF9A9BD3F5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72fbb1d9-9229-4db0-afb7-08d9f1673c1f
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2022 16:13:14.1802 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 348a6baMHJAecq/DKOVVJn43YJWpadt5p0cDGAn+JsmuWkaBXy0sS7prsZTnDptxspHnZd2OpegRGC8yEWtT8w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4220
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH topic/for-CI] drm/i915: Add DG2 PCI IDs
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

UmV2aWV3ZWQtYnk6IENheiBZb2tveWFtYSA8Y2F6Lnlva295YW1hQGludGVsLmNvbT4NCi1jYXoN
Cg0KT24gVHVlLCAyMDIyLTAyLTE1IGF0IDEzOjQ1IC0wODAwLCBNYXR0IFJvcGVyIHdyb3RlOg0K
PiBERzIgaGFyZHdhcmUgd2lsbCBzdGFydCBzaG93aW5nIHVwIGluIENJIHNob3J0bHk7IGxldCdz
IG1ha2Ugc3VyZQ0KPiBpdCdzDQo+IHJlY29nbml6ZWQgYnkgdGhlIGRyaXZlci4NCj4gDQo+IEJz
cGVjOiA0NDQ3Nw0KPiBDYzogUm9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0K
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gQ2M6IEpvb25hcyBM
YWh0aW5lbiA8am9vbmFzLmxhaHRpbmVuQGxpbnV4LmludGVsLmNvbT4NCj4gQ2M6IFR2cnRrbyBV
cnN1bGluIDx0dnJ0a28udXJzdWxpbkBsaW51eC5pbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6
IE1hdHQgUm9wZXIgPG1hdHRoZXcuZC5yb3BlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYyAgICAgICAgICB8ICAyICstDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9pbnRlbF9kZXZpY2VfaW5mby5jIHwgMjEgKysrKysrKysrKysrKysrKysrDQo+
ICBpbmNsdWRlL2RybS9pOTE1X3BjaWlkcy5oICAgICAgICAgICAgICAgIHwgMjcNCj4gKysrKysr
KysrKysrKysrKysrKysrKysrDQo+ICAzIGZpbGVzIGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyks
IDEgZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9p
OTE1X3BjaS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wY2kuYw0KPiBpbmRleCA4
MjQ2Y2JlOWIwMWQuLjkxNjc3YTlmMzMwYyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9wY2kuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BjaS5j
DQo+IEBAIC0xMDM4LDcgKzEwMzgsNiBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IGludGVsX2Rldmlj
ZV9pbmZvDQo+IHhlaHBzZHZfaW5mbyA9IHsNCj4gIAkucmVxdWlyZV9mb3JjZV9wcm9iZSA9IDEs
DQo+ICB9Ow0KPiAgDQo+IC1fX21heWJlX3VudXNlZA0KPiAgc3RhdGljIGNvbnN0IHN0cnVjdCBp
bnRlbF9kZXZpY2VfaW5mbyBkZzJfaW5mbyA9IHsNCj4gIAlYRV9IUF9GRUFUVVJFUywNCj4gIAlY
RV9IUE1fRkVBVFVSRVMsDQo+IEBAIC0xMTM3LDYgKzExMzYsNyBAQCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHBjaV9kZXZpY2VfaWQgcGNpaWRsaXN0W10gPQ0KPiB7DQo+ICAJSU5URUxfQURMTl9JRFMo
JmFkbF9wX2luZm8pLA0KPiAgCUlOVEVMX0RHMV9JRFMoJmRnMV9pbmZvKSwNCj4gIAlJTlRFTF9S
UExTX0lEUygmYWRsX3NfaW5mbyksDQo+ICsJSU5URUxfREcyX0lEUygmZGcyX2luZm8pLA0KPiAg
CXswLCAwLCAwfQ0KPiAgfTsNCj4gIE1PRFVMRV9ERVZJQ0VfVEFCTEUocGNpLCBwY2lpZGxpc3Qp
Ow0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfZGV2aWNlX2luZm8u
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gaW5kZXgg
OTRkYTVhYTM3MzkxLi5hZTEzYmMzYzc5NzAgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX2RldmljZV9pbmZvLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
aW50ZWxfZGV2aWNlX2luZm8uYw0KPiBAQCAtMTc4LDYgKzE3OCwxOCBAQCBzdGF0aWMgY29uc3Qg
dTE2IHN1YnBsYXRmb3JtX3JwbHNfaWRzW10gPSB7DQo+ICAJSU5URUxfUlBMU19JRFMoMCksDQo+
ICB9Ow0KPiAgDQo+ICtzdGF0aWMgY29uc3QgdTE2IHN1YnBsYXRmb3JtX2cxMF9pZHNbXSA9IHsN
Cj4gKwlJTlRFTF9ERzJfRzEwX0lEUygwKSwNCj4gK307DQo+ICsNCj4gK3N0YXRpYyBjb25zdCB1
MTYgc3VicGxhdGZvcm1fZzExX2lkc1tdID0gew0KPiArCUlOVEVMX0RHMl9HMTFfSURTKDApLA0K
PiArfTsNCj4gKw0KPiArc3RhdGljIGNvbnN0IHUxNiBzdWJwbGF0Zm9ybV9nMTJfaWRzW10gPSB7
DQo+ICsJSU5URUxfREcyX0cxMl9JRFMoMCksDQo+ICt9Ow0KPiArDQo+ICBzdGF0aWMgYm9vbCBm
aW5kX2RldmlkKHUxNiBpZCwgY29uc3QgdTE2ICpwLCB1bnNpZ25lZCBpbnQgbnVtKQ0KPiAgew0K
PiAgCWZvciAoOyBudW07IG51bS0tLCBwKyspIHsNCj4gQEAgLTIyMCw2ICsyMzIsMTUgQEAgdm9p
ZCBpbnRlbF9kZXZpY2VfaW5mb19zdWJwbGF0Zm9ybV9pbml0KHN0cnVjdA0KPiBkcm1faTkxNV9w
cml2YXRlICppOTE1KQ0KPiAgCX0gZWxzZSBpZiAoZmluZF9kZXZpZChkZXZpZCwgc3VicGxhdGZv
cm1fcnBsc19pZHMsDQo+ICAJCQkgICAgICBBUlJBWV9TSVpFKHN1YnBsYXRmb3JtX3JwbHNfaWRz
KSkpIHsNCj4gIAkJbWFzayA9IEJJVChJTlRFTF9TVUJQTEFURk9STV9SUExfUyk7DQo+ICsJfSBl
bHNlIGlmIChmaW5kX2RldmlkKGRldmlkLCBzdWJwbGF0Zm9ybV9nMTBfaWRzLA0KPiArCQkJICAg
ICAgQVJSQVlfU0laRShzdWJwbGF0Zm9ybV9nMTBfaWRzKSkpIHsNCj4gKwkJbWFzayA9IEJJVChJ
TlRFTF9TVUJQTEFURk9STV9HMTApOw0KPiArCX0gZWxzZSBpZiAoZmluZF9kZXZpZChkZXZpZCwg
c3VicGxhdGZvcm1fZzExX2lkcywNCj4gKwkJCSAgICAgIEFSUkFZX1NJWkUoc3VicGxhdGZvcm1f
ZzExX2lkcykpKSB7DQo+ICsJCW1hc2sgPSBCSVQoSU5URUxfU1VCUExBVEZPUk1fRzExKTsNCj4g
Kwl9IGVsc2UgaWYgKGZpbmRfZGV2aWQoZGV2aWQsIHN1YnBsYXRmb3JtX2cxMl9pZHMsDQo+ICsJ
CQkgICAgICBBUlJBWV9TSVpFKHN1YnBsYXRmb3JtX2cxMl9pZHMpKSkgew0KPiArCQltYXNrID0g
QklUKElOVEVMX1NVQlBMQVRGT1JNX0cxMik7DQo+ICAJfQ0KPiAgDQo+ICAJaWYgKElTX1RJR0VS
TEFLRShpOTE1KSkgew0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaCBi
L2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgNCj4gaW5kZXggNTMzODkwZGM5ZGExLi4zNjA5ZjMy
NTRmMjQgMTAwNjQ0DQo+IC0tLSBhL2luY2x1ZGUvZHJtL2k5MTVfcGNpaWRzLmgNCj4gKysrIGIv
aW5jbHVkZS9kcm0vaTkxNV9wY2lpZHMuaA0KPiBAQCAtNjgxLDQgKzY4MSwzMSBAQA0KPiAgCUlO
VEVMX1ZHQV9ERVZJQ0UoMHhBNzg4LCBpbmZvKSwgXA0KPiAgCUlOVEVMX1ZHQV9ERVZJQ0UoMHhB
Nzg5LCBpbmZvKQ0KPiAgDQo+ICsvKiBERzIgKi8NCj4gKyNkZWZpbmUgSU5URUxfREcyX0cxMF9J
RFMoaW5mbykgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1NjkwLCBpbmZvKSwgXA0KPiArCUlO
VEVMX1ZHQV9ERVZJQ0UoMHg1NjkxLCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1
NjkyLCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0UoMHg1NkEwLCBpbmZvKSwgXA0KPiAr
CUlOVEVMX1ZHQV9ERVZJQ0UoMHg1NkExLCBpbmZvKSwgXA0KPiArCUlOVEVMX1ZHQV9ERVZJQ0Uo
MHg1NkEyLCBpbmZvKQ0KPiArDQo+ICsjZGVmaW5lIElOVEVMX0RHMl9HMTFfSURTKGluZm8pIFwN
Cj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NTY5MywgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVW
SUNFKDB4NTY5NCwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NTY5NSwgaW5mbyks
IFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NTZBNSwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0Ff
REVWSUNFKDB4NTZBNiwgaW5mbyksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NTZCMCwgaW5m
byksIFwNCj4gKwlJTlRFTF9WR0FfREVWSUNFKDB4NTZCMSwgaW5mbykNCj4gKw0KPiArI2RlZmlu
ZSBJTlRFTF9ERzJfRzEyX0lEUyhpbmZvKSBcDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDU2QTMs
IGluZm8pLCBcDQo+ICsJSU5URUxfVkdBX0RFVklDRSgweDU2QTQsIGluZm8pDQo+ICsNCj4gKyNk
ZWZpbmUgSU5URUxfREcyX0lEUyhpbmZvKSBcDQo+ICsJSU5URUxfREcyX0cxMF9JRFMoaW5mbyks
IFwNCj4gKwlJTlRFTF9ERzJfRzExX0lEUyhpbmZvKSwgXA0KPiArCUlOVEVMX0RHMl9HMTJfSURT
KGluZm8pDQo+ICsNCj4gICNlbmRpZiAvKiBfSTkxNV9QQ0lJRFNfSCAqLw0K
