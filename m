Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1277D64C31B
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 05:17:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C06510E217;
	Wed, 14 Dec 2022 04:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 946B810E217
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 04:17:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670991436; x=1702527436;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lLnR89tLhUs+H+pkBmP+DSPezUgS08lid6WABm1YhVs=;
 b=bImG+CSklT9g9FWqMWJHGPKNGlc/6dk8QFHdr7PXL4mG9y2L4QroD0tQ
 NsHD9eokCO2TfznGdoGKOEusN7Hzd1Fje8lo53zYaY4omySSiObOYOXV2
 sF0Mjw38VoE1KiICFDSrckNo/dHiE78gqDGyfaV2jkOHaznqnKarzHrSF
 /ajvyJdTv9zW8amKMuW+qBD10lqZRsLecHb5xHtEB6VwV2iR4phWPZG+7
 rbUwN5N6GF1ZtA9EWkWABmKQfk5KePzTCXv9A6SXGI7nQeepxlzo9JKt5
 O4PYxNIKqu8WJNhuX1GPG3X7rz0qqmpnSxomcM1G+eDrYqhBCgBycYhkQ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="382607248"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="382607248"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 20:17:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="737597300"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="737597300"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 13 Dec 2022 20:17:15 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:17:14 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:17:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 20:17:14 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 20:17:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KjfovV0/hxa9bDMEThdXPY8T/uITB4DqW/DFduFCP0iMbWatRxks+rpDcYXctv7L8QyUyN2ExPvhLieLZzejdIBed9m7C9cojoXLYewvEEMdcvicQBHWEXvDG1lY9LbclTuISEFTv88LC9QtleguGy7eAM5Dmi7/vobb7iwBdaU76kzxOZRwkmwOcE0md0g7+QL1iLqPhtGxx9WCV8QfdfLDudikJETwpAUWhy6/ICLY/dN6f2ks577R/FKIoaa0nXGtBskm8BgDhP/BAm/4oBUyCvFBdIRzvK0ZTjB03LvPDI4h3AUXco1+fG5hv8KO5bP2idLHjz0tWlGgswgeEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lLnR89tLhUs+H+pkBmP+DSPezUgS08lid6WABm1YhVs=;
 b=LAwRjwUO6K8rj2IXUnRYU1Rt+tdQ0OMJS0rdfpkO5j776Sfy6oYYZQsuZ1RlKaUn8zS81jZzx76Ovho6SQ3FxmMWdheWWXWSbAuYaDQaygaWl8OEv6jcnVCtiKkkimpBnnwAcc7YyLPuEfGE8YjQSGlVEvUgrOvLjQ1rEqDjGkYZi1JJOK7OUCyKHOGsMiWG6zCaKlkToFrev3NTqith89hzF/pe0JbRBGIxllNmBcTfLw/7C5UwxTrhrAu9W+B7Nnako/+qFBbgge2WISGG87ZqQYseNul1XTgjwU9fRI2Kt89FWjZp5tDKthZ5CqOTE3EjIT3GygGiBC6Hcj/W9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by PH0PR11MB4886.namprd11.prod.outlook.com (2603:10b6:510:33::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 04:17:12 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 04:17:12 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 4/7] drm/i915/hdmi: abstract scanline range
 wait into intel_vblank.[ch]
Thread-Index: AQHZDjY63aP6SumS4U6+LaX8roUTT65syT+A
Date: Wed, 14 Dec 2022 04:17:12 +0000
Message-ID: <BL0PR11MB317064AC8CF1997EE2662709BAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <8b7e188de7b6cd8bf9e9849e315d51751f9d2b14.1670855299.git.jani.nikula@intel.com>
In-Reply-To: <8b7e188de7b6cd8bf9e9849e315d51751f9d2b14.1670855299.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|PH0PR11MB4886:EE_
x-ms-office365-filtering-correlation-id: 8d943bc3-c37e-44f8-5ca7-08dadd8a1351
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: y4f7gwl5WPX3lurcxrsO3GaAKzMc/2ObTLHMS8dWk7ADQN0GlL4ipnRIxuOmZ7XCIBUc37BMGkkQxH2zXUNGSVALc7sPKA0cKxaPo5BzammJC2rvpzNOGfP7cSXP6m+a3S+0yY5X7BAkSt+zreyp7EQBkMSKttWFhkY4a2PSWGTBkherk8c/2cIjTkPuxfe8N5xTwvm5m/Wil6ifol6kIx/p4MrJGBAldpGDB1D90/0cxSO7IcoPBGi5WSkFsLWV7N3s+E8HpO97zdCyohgixcMxlTAA9iSIY/Y/egz+Lc5Eqt7Xdl89cv6cyJvOAUcIAYF3pm5DUVXe711cwKdZ9n0jmoXQqLiS8MUafgVCuCMJQ9eSL4RK7CoABaTgo/4qxrk1T5HSnaQU4VcnCo15BK9QU2IlOBZvu/Y8ZajK2UFr+Kzf5cGHt5ZRUByprsUEbuVuT1tZSHh4GKzyBpaop3d1/lYuUhK5QcG4I00ddI2UHY0tKvR52wvAYVzF8s6mr9NL+lnyT+mS8/VN4Y6UV4ucdLDJni0yn5Ln8ZybrFA6hThJtTGEwfc//H26WQi0xkD0H91A0jq1UeyFmUHqvqh8K1YU3EtP70Y44eAWYeK1fXmMZCgEAzxqcYOgbZoggywZ5mxLRfLrChr4vATuFPvVtZ3Oomw5BDgct/UTQZbe7R5AD6gkJyIVrOzr+d+ZPHkXxblK99LY7yTyiIQjjg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(366004)(39860400002)(396003)(346002)(451199015)(33656002)(38070700005)(86362001)(186003)(38100700002)(26005)(55236004)(478600001)(9686003)(53546011)(6506007)(71200400001)(122000001)(107886003)(7696005)(110136005)(316002)(4326008)(41300700001)(64756008)(82960400001)(5660300002)(8676002)(8936002)(52536014)(2906002)(66446008)(83380400001)(66556008)(66476007)(55016003)(76116006)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?U0pMTHFjVHovS0RCK1JpeHAzOHRjQmVxbFE0YjlJTjBkYU1lcVFOVGNITmZN?=
 =?utf-8?B?bG0wY2Y1TjRaUUR2SGw5TjFmc3NDSjk2MmdDTzNVWVplcGxnWm9kZnVJS3I1?=
 =?utf-8?B?TndZVTl1UzNpUW5pSFFlQXA0emlpcDk1T0tKeUtYeStQQTJTVEU4Q1RmQnpB?=
 =?utf-8?B?WkpyVWpJc1VIeDBzdmhVb20wMEZOOE52MXk3MWN0cWttZW0vN3RzcWtKTnNy?=
 =?utf-8?B?dlB0OFV1THhWbXFBRENuWk0wbkQ4ZGRrWEhucjQyc1oxdU4xb0hMUTVyS0cy?=
 =?utf-8?B?Vmt4aE1neGFBaGRpWDY4TjRxRFFNYkFMUlFVTElkeTUxYWFwZVg2a0gvbi9z?=
 =?utf-8?B?OHRranBURFF0NkF1TEhMMmdSYXdnNHdWa3g1enRYdllhd0djRXZjTmh3Wm5M?=
 =?utf-8?B?anlBSFB4Ull6OElnOUJCaGNLMUVjWWxuUnVVQU51UHoyRE1VaEh4eWI1U3Fz?=
 =?utf-8?B?VG5HS29nS0hpT2gvVWhrZm55eko1VHNKeGtuazFiN043SkxqZ3A4cVVPV2gv?=
 =?utf-8?B?blk3YnQyQ3E1NVBSSmg1NCtyRVg5K1AwcUczdWpsMWI2Uk1EeTRMckJSNUEz?=
 =?utf-8?B?QW82bzRSejNaaXNIS1dMaXlTU2liUHJEZ2c4REc5eTlMOHQzNmlXVGJqcVNC?=
 =?utf-8?B?YVJtNS84RUREYk9oR0tmcGxLOTc4d3NYN0pzWTI2VGdKOUJ3ck9XZU0zajhi?=
 =?utf-8?B?LzdzRVNHTjBZc2JYUFlBYnNlQzdRbUdXdnljSVBUTGc2MVlqczBqMEVpdmxy?=
 =?utf-8?B?enRqekdqeDAwQmg4ZDZITldQbm42MXA0YU13cExKdTZlSmdGZ1EwVHJTYUdq?=
 =?utf-8?B?anlNdDlZV2NzSVB3Q2VBQ3VUNFBDbmk4ajlqTHNXVUIzT3M0UDFSdHZvZ09D?=
 =?utf-8?B?cXFiTkJ4d0tobTNjUnhtaVhFbVByUExUOXQ4cS9QRUkvZ0s3bUVZNGNzajhv?=
 =?utf-8?B?NVQ2MlJsR09LY0JDTDRDWmZuV01ZRmZkTDR4VTRYNnZid1FJRWpERTFHenN0?=
 =?utf-8?B?YURITGFLZUdlTUdUM3kwQ3hoME5DZ2MrTkxGQ080QVNUM1VueFFjTGNrbSty?=
 =?utf-8?B?U0svV3YyNFVHS2NpWVBIdWtqRGxpMmpRK01PNm51TEVSOEZYNVU1TWxDTkF4?=
 =?utf-8?B?VDA5OVRiTURGQTVJaVZ0WjhwZkVCbTlSN2hOdFdTM0JoaHpTa3VlTlZWNXps?=
 =?utf-8?B?RnhPYXdNMHBoOXM3SHdDWTlzUU1adkJrRkRCQU9EK3Arbjhnc2pjblovQTlj?=
 =?utf-8?B?UjZOVVQ5a1NzUVNmL2xlTGdkV25IWE9kMzRZTU5lZmp3NlNoU0FhbWc4U2o2?=
 =?utf-8?B?VUZBSTVxcnhKWHBmVEFBMnBSbXJ3Ti9WSFU3cUdRWlBoZHhCZHo4ckp5eWVj?=
 =?utf-8?B?amNmVjZucjR6VE10WjBTbVppdTN4ZHNDdWJrNWR1aE1mZ2ltbFJMTUYySkFV?=
 =?utf-8?B?T1JHeGUrTnN6OXhUcVpRN1JQYnpHVnZ5Vkw5aC81MzJPYzg3Ui9NMEtTUDcz?=
 =?utf-8?B?MWEvZ1k5ZDNTSktTRDlPdTFRRXpFalEwV1R3NzgyaTJha3owalZLZGtOL1F5?=
 =?utf-8?B?ODk4S0VNS1RhaG1iSkF4ckI4dU4xeURScWhDNVRQY2NmM3paZzcwQW0xMTR4?=
 =?utf-8?B?aGlsYXp2MmJYVElpY3I2MVNoSm5aQkd5ZmNRalJKdTlST2RkQUFvTitCZFc5?=
 =?utf-8?B?OVlYQWhta1piODdITnIzV29IcktSb0svL2pDcnV2aDVZVGhSNlk3ZWpQeGdm?=
 =?utf-8?B?Tk53NXZvVnJYRmRvODgvc09YSWxLaThuSVZPUFd2bjgrVllSamNIWVBjeko5?=
 =?utf-8?B?NGp2aGZZNStsYVZCSFVPbTBBUUYwK0oyQzBpcGk4ZEdraEVveTQxS3R0bERS?=
 =?utf-8?B?OUFRWEVhWnFWYUlVZGlMV2VXWEFQOW0yVFlvKzh4MHBNQ3FNNGhkVGdzQ2xZ?=
 =?utf-8?B?OHdkanFxeGJ4UFhXd3A4aTY4bGZyZ0VxS0Zzdjd1bHpYN2tEdWFEQzBYQ291?=
 =?utf-8?B?SWRJVHVXRnN3VlJkem1XT0lGZU5kdUl5U1BhRFNoSkhiZmxuMzh3bmRrOHdE?=
 =?utf-8?B?eTljNExQS0VCUUhrSkxiVm9lRGJoOUNiTmJZWEwyaGd2eDc3cFlSR0kvYjlR?=
 =?utf-8?Q?XF7sJBE1ri6N4ecsqre7Z+tE7?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d943bc3-c37e-44f8-5ca7-08dadd8a1351
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 04:17:12.5514 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nOD9YkYX1vI9tWw1mYLAsqC83gGLelMMK/vbWQslyVu9t8p8p2fG1g1bbrXPP1PibHDGiTH5ypSpLVgq+1RInw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4886
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/hdmi: abstract scanline range
 wait into intel_vblank.[ch]
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
a3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCA0LzddIGRybS9p
OTE1L2hkbWk6IGFic3RyYWN0IHNjYW5saW5lIHJhbmdlIHdhaXQNCj4gaW50byBpbnRlbF92Ymxh
bmsuW2NoXQ0KPiANCj4gTGV0J3Mgbm90IGhhdmUgc2NhbmxpbmUgd2FpdHMgaW5saW5lIGluIGhk
bWkgY29kZS4NCj4gDQo+IFRoaXMga2luZCBvZiB3YWl0cyBzaG91bGQgcmVhbGx5IGhhdmUgdGlt
ZW91dHM7IGFkZCBhIEZJWE1FIGNvbW1lbnQuDQo+IA0KPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2
aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1
bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQpSZXZpZXdlZC1ieTogQXJ1biBSIE11
cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJkcywNCkFy
dW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2hkbWkuYyAgIHwgIDkgKystLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jIHwgMTQgKysrKysrKysrKysrKysNCj4gZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaCB8ICAxICsNCj4gIDMgZmls
ZXMgY2hhbmdlZCwgMTcgaW5zZXJ0aW9ucygrKSwgNyBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2hkbWkuYw0KPiBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfaGRtaS5jDQo+IGluZGV4IGU4MmY4YTA3
ZTJiMC4uYWY2ZWY2NjUzNjhlIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2hkbWkuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2hkbWkuYw0KPiBAQCAtNTYsNiArNTYsNyBAQA0KPiAgI2luY2x1ZGUgImludGVsX2xz
cGNvbi5oIg0KPiAgI2luY2x1ZGUgImludGVsX3BhbmVsLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxf
c25wc19waHkuaCINCj4gKyNpbmNsdWRlICJpbnRlbF92YmxhbmsuaCINCj4gDQo+ICBzdGF0aWMg
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmludGVsX2hkbWlfdG9faTkxNShzdHJ1Y3QgaW50ZWxf
aGRtaQ0KPiAqaW50ZWxfaGRtaSkgIHsgQEAgLTE0NzYsMTUgKzE0NzcsOSBAQCBzdGF0aWMgaW50
DQo+IGtibF9yZXBvc2l0aW9uaW5nX2VuY19lbl9zaWduYWwoc3RydWN0IGludGVsX2Nvbm5lY3Rv
ciAqY29ubmVjdG9yLA0KPiAgCXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRv
X2k5MTUoY29ubmVjdG9yLT5iYXNlLmRldik7DQo+ICAJc3RydWN0IGludGVsX2RpZ2l0YWxfcG9y
dCAqZGlnX3BvcnQgPQ0KPiBpbnRlbF9hdHRhY2hlZF9kaWdfcG9ydChjb25uZWN0b3IpOw0KPiAg
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gdG9faW50ZWxfY3J0Yyhjb25uZWN0b3ItPmJhc2Uu
c3RhdGUtPmNydGMpOw0KPiAtCXUzMiBzY2FubGluZTsNCj4gIAlpbnQgcmV0Ow0KPiANCj4gLQlm
b3IgKDs7KSB7DQo+IC0JCXNjYW5saW5lID0gaW50ZWxfZGVfcmVhZChkZXZfcHJpdiwgUElQRURT
TChjcnRjLT5waXBlKSk7DQo+IC0JCWlmIChzY2FubGluZSA+IDEwMCAmJiBzY2FubGluZSA8IDIw
MCkNCj4gLQkJCWJyZWFrOw0KPiAtCQl1c2xlZXBfcmFuZ2UoMjUsIDUwKTsNCj4gLQl9DQo+ICsJ
aW50ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9yYW5nZShjcnRjLCAxMDAsIDIwMCk7DQo+IA0K
PiAgCXJldCA9IGludGVsX2RkaV90b2dnbGVfaGRjcF9iaXRzKCZkaWdfcG9ydC0+YmFzZSwgY3B1
X3RyYW5zY29kZXIsDQo+ICAJCQkJCSBmYWxzZSwNCj4gVFJBTlNfRERJX0hEQ1BfU0lHTkFMTElO
Ryk7IGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Zi
bGFuay5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0K
PiBpbmRleCBmMjVlYzY0M2EwYTMuLmFlYzc3NThlZjkxNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jDQo+IEBAIC00NTIsMyArNDUyLDE3IEBA
IHZvaWQgaW50ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3Zpbmcoc3RydWN0DQo+IGludGVs
X2NydGMgKmNydGMpICB7DQo+ICAJd2FpdF9mb3JfcGlwZV9zY2FubGluZV9tb3ZpbmcoY3J0Yywg
dHJ1ZSk7ICB9DQo+ICsNCj4gK3ZvaWQgaW50ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9yYW5n
ZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywgdTMyDQo+ICtzdGFydCwgdTMyIGVuZCkgew0KPiAr
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5k
ZXYpOw0KPiArCXUzMiBzY2FubGluZTsNCj4gKw0KPiArCS8qIEZJWE1FOiBUaGlzIG5lZWRzIHRv
IHRpbWVvdXQgYW5kL29yIGNoZWNrIHRoYXQgc2NhbmxpbmUgaXMNCj4gbW92aW5nLiAqLw0KPiAr
CWZvciAoOzspIHsNCj4gKwkJc2NhbmxpbmUgPSBpbnRlbF9kZV9yZWFkKGRldl9wcml2LCBQSVBF
RFNMKGNydGMtPnBpcGUpKTsNCj4gKwkJaWYgKHNjYW5saW5lID4gc3RhcnQgJiYgc2NhbmxpbmUg
PCBlbmQpDQo+ICsJCQlicmVhazsNCj4gKwkJdXNsZWVwX3JhbmdlKDI1LCA1MCk7DQo+ICsJfQ0K
PiArfQ0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
YmxhbmsuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmgN
Cj4gaW5kZXggNTQ4NzBjYWJkNzM0Li5lODhhZGRmY2NlYTggMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmgNCj4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaA0KPiBAQCAtMTksNSArMTksNiBAQCBi
b29sIGludGVsX2NydGNfZ2V0X3ZibGFua190aW1lc3RhbXAoc3RydWN0IGRybV9jcnRjDQo+ICpj
cnRjLCBpbnQgKm1heF9lcnJvciwgIGludCBpbnRlbF9nZXRfY3J0Y19zY2FubGluZShzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0Yyk7ICB2b2lkDQo+IGludGVsX3dhaXRfZm9yX3BpcGVfc2NhbmxpbmVf
c3RvcHBlZChzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0Yyk7ICB2b2lkDQo+IGludGVsX3dhaXRfZm9y
X3BpcGVfc2NhbmxpbmVfbW92aW5nKHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gK3ZvaWQg
aW50ZWxfd2FpdF9mb3JfcGlwZV9zY2FubGluZV9yYW5nZShzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0
YywgdTMyDQo+ICtzdGFydCwgdTMyIGVuZCk7DQo+IA0KPiAgI2VuZGlmIC8qIF9fSU5URUxfVkJM
QU5LX0hfXyAqLw0KPiAtLQ0KPiAyLjM0LjENCg0K
