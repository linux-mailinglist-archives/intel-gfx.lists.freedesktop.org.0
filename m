Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 475775EBAF0
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 08:48:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 121B610E2D5;
	Tue, 27 Sep 2022 06:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35BF910E2D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 06:48:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664261298; x=1695797298;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Z38SnulXdvrgWmVRKfLuG29tlGkA4PwOR/FnGizz5Wo=;
 b=DQxJqXOcnrkEe27GyTDBmME3H8b3OH8yVxndkcGIcBGktAer3XbQDcCy
 TF4e/vnOMR+X8vZBvG88/VVWrsGkzYBrCJUSRi7STRGCCHhtoWhirEvg1
 3JdipEtehbnfjtEezWXdUCcHy+jcvklBqeu8/wojWEPQgeFnmgYwK3dOi
 4/8xCQd1sUtCnr2tAgVraxWdY6XnSngJ7zV1HhSpkphzXcSZSQ2UL1Zlv
 lZl/MYjrwh+5+8diH/09mNQ3fUqGDFI9uJgzaRHAtB2u3BtI/fPUa7Pvx
 QSI0HNBvjwhHl6dU9WnCdlGV++CEnW9pp1U9oRza4n4TAg3C7ptgwChuq Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="301217284"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="301217284"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2022 23:48:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="746937482"
X-IronPort-AV: E=Sophos;i="5.93,348,1654585200"; d="scan'208";a="746937482"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 26 Sep 2022 23:48:17 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 23:48:16 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 26 Sep 2022 23:48:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 26 Sep 2022 23:48:16 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 26 Sep 2022 23:48:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DILSqrVNmYYUXK0sLaAsDoluEbiOHFj4aBUJaJNM3aGfupp60JbMZDp7B9dmu4qBNSGHvcjIiZUaCMUIqgAEUiEEIcW3Jt1+aqYINdrx4B0kDcQ+z0OLuaQgT/MmSSAp9Ai+B2CMyEuMnEAaa1yGAGJ5mRztVevsyIcUCT0TWxjy+0V9cUB92OuqsO/7XG/d6uj3MLxEbc9eRmuTiDWPoiJJ0+Ht+AoI2RgnqB/6/Ty8XgR1FG87qUEgVl+/4Wh39HaCNfNIId0PKoiN1ux0gGf1gA7nbq28ObbYS7yHUO5wvN0A5LSl/zwrLHIeYvo3E+SrLD5wIsRWzv5fX8peaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z38SnulXdvrgWmVRKfLuG29tlGkA4PwOR/FnGizz5Wo=;
 b=UENy6OvU+h8SJWbVOQVPpO1ydrL6Ub4ZQh+/xYiqOUGLhiurotIcNqPeIY0uovgG8sw4pKrzjy+rXI2O1av/GbpONPyh1wLS+NACB5m6sbiQwMOeu+obj8kAO6URNJFjSD8hywCro8nJT2ow/0LzEI7MnSZ8nMPLXPY4UBDjgScDZbPJkcBbpYd6EpRnbqHY01ZrwhMWlQSa87HsVPmamaJo33KwCC2ffU3ktQaH5k57UslIf5mnoAkSqH+L2ofFvAHbDTtUmfwXmQXxIG+kAbMFiRXn6u7gDJccE9bhXAVu9PqyrT9Hilpprjb5pVy0PUl13zkMaVwFnD2SJlWBcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by PH7PR11MB5958.namprd11.prod.outlook.com (2603:10b6:510:1e1::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.25; Tue, 27 Sep
 2022 06:48:14 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::c144:218:70eb:9cbe]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::c144:218:70eb:9cbe%5]) with mapi id 15.20.5654.026; Tue, 27 Sep 2022
 06:48:13 +0000
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/rc6: GTC6_RESIDENCY_{LSB, MSB}
 Residency counter support
Thread-Index: AQHY0YR2WKbtbDb09U2P+1SoGv/Z8q3x4HoAgADw0cA=
Date: Tue, 27 Sep 2022 06:48:13 +0000
Message-ID: <CY5PR11MB62111ED05665995C6E27437995559@CY5PR11MB6211.namprd11.prod.outlook.com>
References: <20220926084551.231080-1-anshuman.gupta@intel.com>
 <a12afd96-d1ab-d945-f3a2-6f7da785bb15@linux.intel.com>
In-Reply-To: <a12afd96-d1ab-d945-f3a2-6f7da785bb15@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6211:EE_|PH7PR11MB5958:EE_
x-ms-office365-filtering-correlation-id: f7ec6fe4-0a70-4c5d-1577-08daa0543fe6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: eCosgSCEpDN4wotF37rpCcGdshxGQWn9/EQifydG5TSqM99P9EKDnPe3LW1V1yiHR8riYIFVr7uwghC+LscaZk0zD0C34vIz8LjZQC+aYsRynS+hFlTGyRTnxh74qeSR2/Qj6trQeJcWpMb1lVJ9xzhoPoGNcZNKz4/96Sb5zIlXv1b/5rowqxRUk2VGcIH8a6mfeYQUaTtNbzbMe2grVJzbhv084cFgpgC0PHIu5z8uWPc/xigC2Eeg+hUfSpNKhdyt8FHfdpN5upo5qYkuMLeXsX8OACYcivrYlNgC4yN0jIENWri4afcvWE2/B41LkgEGmNOht0D8ea6vfU837dJGGXEqR9dNHQQmf0DAeb91O4TAC26oWC6eaMnFfWKzHnCKOJfj0Vf6Z73zY3oiOXFe6lEV960HKgyvX2r+lgqnUHAlujO/c2EcCJr51U1jqoXizWBNS9YEaKTPlQYNBa3+0xpwvkMiZM3E/9CR5STmN0NeDQ9eevbSXxOo86V5nuiDuiFIx2bNjpCYsW8M6/L5eFHR8D5buCo1alGp5AwOl9uP4IGxHeih1KS4veCW8bSmnajxWk8MS5sjCw/9BTcVBa3vJwJN+UfG/tEv4yRNAxEL+Ht44E4FUXreuNKZmIExXBT9m6TzclhsVbywKldiKEugOzu20QgQhYFBB2ejgy/yvOUJvlEV2cfjFeIkyzWrFRaizx8b0VECE2KiAoxzqLZBAABBUocLyBnqNVK/ef3hc3j1N52ljjLmBMnvR6RfmNEWbpTlPEq6Kx9XHA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(366004)(376002)(396003)(346002)(451199015)(478600001)(86362001)(76116006)(2906002)(8936002)(5660300002)(52536014)(41300700001)(26005)(38070700005)(83380400001)(8676002)(110136005)(66446008)(66946007)(64756008)(66556008)(66476007)(33656002)(316002)(82960400001)(53546011)(9686003)(6506007)(7696005)(55236004)(71200400001)(122000001)(38100700002)(186003)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TWRBbXBYTlpqN3drbTNRWWJ6c2ZNQzNuaGxKRFE3aENqcFJ1a3Q0dWsrN0pi?=
 =?utf-8?B?SVFRN05rUnArQ056eklPVDdpVHJsZGU0d0FqOW5ORDNQNnpWbTJzZ2tsYjha?=
 =?utf-8?B?WVQxS0FJU1hYZFRvMW82S2RqMGJPMWxPaW1USkd6eVpjZDVtUzIxaWdvYk8y?=
 =?utf-8?B?Q21kSW90c25mRmpRU3pKZXZCUlpoUUJoSVh4Rk1RV2VFSDRXSUp1Vk8rNVJs?=
 =?utf-8?B?Q3FycVBDMUgxc0s2UjEyeDB4YVl0bzhWT2lCQ0NXbk4vb0U3TjRvMVhMMjha?=
 =?utf-8?B?dHFWV1N1cXAxRzJhQW8wVFJwSGQrR0N4ME9JVFllN1lEdStBVXhMUDZwR3F5?=
 =?utf-8?B?OGRjVlhqektHQ3UrenFGRGdVaFYrQlhTVVFjVG12TlhpYkZRMmtBUnFaRElh?=
 =?utf-8?B?emVJb1FXU1RNNU85VzIwcnpOVzRkZGd0VUxkVVI5VXE2YUxVSG9hNGtZeTFn?=
 =?utf-8?B?dnhUandkdk1RYlRQRkpud2lkMWROc2NBeGcwKzdwS0lOaU9MTEZjZTVvYXdJ?=
 =?utf-8?B?MFZsdFF0Szd4ZlhoVFFWSEpBOEVIclFWUHBYYkhnT0JyMXNTeDk4VUZKU3lv?=
 =?utf-8?B?NTk2S1YwMVhjYU92NTAwTHpzV3BMS1lKRjlnakVjK0RXWTBzd3JDeWJlSVNP?=
 =?utf-8?B?UGduZ1VNeVg1ODdMa2hWaS8vKzU3S1dBZXQ5cFpzcXZHN1RnY0pPQ3JxZ2tP?=
 =?utf-8?B?MEhWT3VuMjEyc1dKWTNka21aNjZEUVN0VVhOWlBGcmJNWEl6eVV5dVg3U3J0?=
 =?utf-8?B?NHpjcnFwMk03ZWozbElZeTB6MTUxRHlVQThGOXpOd3p3SnplcFByWTJkS3Fk?=
 =?utf-8?B?aUJhS0JBN1IzaXNscE5VYUs2ajlhQVBkY05wN2VXL0taR0RlTThYNUkzVHJT?=
 =?utf-8?B?dEhFUVNOTHYrR3FPdXhLWWx4SXR2WVp6R3YyRDQ1VmVqWFdpTEhBaEY2a2Fz?=
 =?utf-8?B?U2h3cnhjQ09LUm9WMXQxa2xsMGZIdXM2RlVkVTdSUTNjTHZNSDdwL25PNWFV?=
 =?utf-8?B?UVlnaUJRdU10djFJVjBaKy95dktEMUZYMEtPT08xR0FtYnd0aEVVU1Z3dEFq?=
 =?utf-8?B?RGt3SmcwWG82ZlRpN2FhZlMrd3p4L0xuMmllaVZZcVBFekE2OW9IQmN1Mi9i?=
 =?utf-8?B?OVRUUVRsaEpwM0Y3KzFYWlNFNnc2YUo1NDZpRWY5dTFyb08vekVYOVFVTGFp?=
 =?utf-8?B?UGxkQ25MMmdIV3hrMkoybVZ4LzN1UlIrcmRHYy95Rm9pT1VTQ0N5Sjc1TEVx?=
 =?utf-8?B?V084OG92dCt2akRCalQ5UkJJbTNRMVRyL1F6b0ZJYmgxN3VKUTVOZWczengr?=
 =?utf-8?B?MDVTSk9KMGxwUy9OVHV2VElCbUUrRzk1T0dwcmhrczBqNTJvV0Nobzd4eEh5?=
 =?utf-8?B?ZGF1OGVnSE5UM0xYdGZLTDRXaURVSnJJTnREdTZyaGluZXJGYSt2TWRSRnN0?=
 =?utf-8?B?bVdkZERvN2I0NUgwQU9qYVdzL3hlKy94SHd5WEtDNmRwNmdDUmZMMVRBMSsz?=
 =?utf-8?B?L2xXWndad3JxaC9NRzRRT2NBL2FZRTJYUGEzZnRUM0xaQ1hiS2dxLzVjWC80?=
 =?utf-8?B?Tk9aUWNwTXcvN2JPdS9nenVUQTJYUExGem4rdnlIUmRLR0JBNkdHclQ2RktV?=
 =?utf-8?B?S0JIeWdScGlRTTgzNUhtbDFUNmx6cG5Xd0UwWDljRjBaNXNXM3ZidE5Lb1RU?=
 =?utf-8?B?UVQrS2hDMGJyQkMrenNUZ3h1Yk5aYnFwdGVITUV4NWo4Z1ArSUxJT3dNME9n?=
 =?utf-8?B?RkNpb1kySWlVSlFSYzdzRktVaXdVSTF3T1NSNDhPVmVaeHhLdEY1aE4wTUww?=
 =?utf-8?B?MndFUDdyTll0VklHME03bXJicTBIc3dXQ0hjaFBMTFJVRVZnTDBlbUtMVG5Q?=
 =?utf-8?B?VmdjOHdpVFlmL2pNc2llQVRUUjA3UXZ4ZjRtaldPVEQ1Y2xFSllDdllidE1W?=
 =?utf-8?B?djBNQThpandyeDBMa1ZNcHhNY2ozd1VHS2ttNzQ4UFlQT3lrbVNRUzVlOVk1?=
 =?utf-8?B?YzJWTlFzbDRIWG5YYWhrQ2lIVDliM0wxTWFvYkgxOUdaSE1HM2RCUndWR2pJ?=
 =?utf-8?B?dVJMbzk3SFo2T0cvWUN1czdzNmxjYmVPNllCZ0hScHNHVHU4WWhBcFdKaXlt?=
 =?utf-8?Q?frY6c2+JGKQmlQHYQDPyey4sD?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7ec6fe4-0a70-4c5d-1577-08daa0543fe6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Sep 2022 06:48:13.5461 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4LWugYcaINmQ9M2rASVp/plUwilQCf6mnYlMz4ZR4SpOF9OgwkYfUPFNs4v7NMEIOFxWO2O7PoJJq+3QSEpcO4QeP8Xz19Mrro2bEl5H+Qs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5958
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/rc6: GTC6_RESIDENCY_{LSB,
 MSB} Residency counter support
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogVHZydGtvIFVyc3VsaW4g
PHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBTZXB0ZW1i
ZXIgMjYsIDIwMjIgOTozNSBQTQ0KPiBUbzogR3VwdGEsIEFuc2h1bWFuIDxhbnNodW1hbi5ndXB0
YUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBSZTogW0ludGVsLWdmeF0gW1BBVENIXSBkcm0vaTkxNS9yYzY6IEdUQzZfUkVTSURFTkNZ
X3tMU0IsIE1TQn0NCj4gUmVzaWRlbmN5IGNvdW50ZXIgc3VwcG9ydA0KPiANCj4gDQo+IE9uIDI2
LzA5LzIwMjIgMDk6NDUsIEFuc2h1bWFuIEd1cHRhIHdyb3RlOg0KPiA+IEFkZGluZyBzdXBwb3J0
IGluIGRycGMgc2hvdyBkZWJ1Z2ZzIHRvIHByaW50IHRoZSBHVCBSUE0gVW5pdCBSQzYNCj4gPiBy
ZXNpZGVuY3kuIFRoaXMgR1RDNl9SRVNJREVOQ1lfe0xTQiwgTVNCfSB3aWxsIG9ubHkgaW5jcmVt
ZW50IHdoZW4gR1QNCj4gPiB3aWxsIGJlIFJDNi4gVGhlcmVmb3JlIHRoZXNlIHJlZ2lzdGVyIHdp
bGwgZ2V0IHJlc2V0IGF0IFJDNiBleGl0IGFuZA0KPiA+IHdpbGwgc3RhcnQgaW5jcmVtZW50aW5n
IG9uIG5leHQgUkM2IGVudHJ5Lg0KPiA+DQo+ID4gQlNwZWM6IDY0OTc3DQo+ID4gU2lnbmVkLW9m
Zi1ieTogQW5zaHVtYW4gR3VwdGEgPGFuc2h1bWFuLmd1cHRhQGludGVsLmNvbT4NCj4gPiAtLS0N
Cj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3BtX2RlYnVnZnMuYyB8ICA1
ICsrKysrDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZWdzLmggICAg
ICAgfCAgNSArKysrKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmMg
ICAgICAgICAgIHwgMTkgKysrKysrKysrKysrKysrKysrKw0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfcmM2LmggICAgICAgICAgIHwgIDEgKw0KPiA+ICAgNCBmaWxlcyBjaGFu
Z2VkLCAzMCBpbnNlcnRpb25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZ3QvaW50ZWxfZ3RfcG1fZGVidWdmcy5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndF9wbV9kZWJ1Z2ZzLmMNCj4gPiBpbmRleCAxMGY2ODBkYmQ3YjYyLi41
OWI2Y2M0OTQ2NGU5IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3BtX2RlYnVnZnMuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2d0X3BtX2RlYnVnZnMuYw0KPiA+IEBAIC0xOTUsNiArMTk1LDExIEBAIHN0YXRpYyBpbnQg
Z2VuNl9kcnBjKHN0cnVjdCBzZXFfZmlsZSAqbSkNCj4gPiAgIAlwcmludF9yYzZfcmVzKG0sICJS
QzYgXCJMb2NrZWQgdG8gUlBuXCIgcmVzaWRlbmN5IHNpbmNlIGJvb3Q6IiwNCj4gPiAgIAkJICAg
ICAgR0VONl9HVF9HRlhfUkM2X0xPQ0tFRCk7DQo+ID4gICAJcHJpbnRfcmM2X3JlcyhtLCAiUkM2
IHJlc2lkZW5jeSBzaW5jZSBib290OiIsIEdFTjZfR1RfR0ZYX1JDNik7DQo+ID4gKw0KPiA+ICsJ
aWYgKEdSQVBISUNTX1ZFUihpOTE1KSA+PSAxMikNCj4gPiArCQlzZXFfcHJpbnRmKG0sICJHVCBS
QzYgUlBNIFVuaXQgUmVzaWRlbmN5IHNpbmNlIGxhc3QgUkM2IGV4aXQ6DQo+IDB4JWxseFxuIiwN
Cj4gPiArCQkJICAgaW50ZWxfcmM2X3JwbV91bml0X3Jlc2lkZW5jeSgmZ3QtPnJjNikpOw0KPiA+
ICsNCj4gPiAgIAlwcmludF9yYzZfcmVzKG0sICJSQzYrIHJlc2lkZW5jeSBzaW5jZSBib290OiIs
IEdFTjZfR1RfR0ZYX1JDNnApOw0KPiA+ICAgCXByaW50X3JjNl9yZXMobSwgIlJDNisrIHJlc2lk
ZW5jeSBzaW5jZSBib290OiIsIEdFTjZfR1RfR0ZYX1JDNnBwKTsNCj4gPg0KPiA+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndF9yZWdzLmgNCj4gPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2d0X3JlZ3MuaA0KPiA+IGluZGV4IDdmNzliYmY5Nzgy
ODQuLjc3MTVkMGFlZmZjOWQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZ3RfcmVncy5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZ3RfcmVncy5oDQo+ID4gQEAgLTgsNiArOCwxMSBAQA0KPiA+DQo+ID4gICAjaW5jbHVkZSAi
aTkxNV9yZWdfZGVmcy5oIg0KPiA+DQo+ID4gKy8qIEdUIFJQTSBSQzYgY291bnRlciAqLw0KPiA+
ICsjZGVmaW5lIEdFTjEyX0dUX0dGWF9SQzZfTFNCCQkJX01NSU8oMHhDMjApDQo+ID4gKyNkZWZp
bmUgR0VOMTJfR1RfR0ZYX1JDNl9NU0IJCQlfTU1JTygweEMyNCkNCj4gPiArI2RlZmluZSAgIEdF
TjEyX0dUX0dGWF9SQzZfTVNCX01BU0sJCVJFR19HRU5NQVNLKDIzLCAwKQ0KPiA+ICsNCj4gPiAg
IC8qIFJQTSB1bml0IGNvbmZpZyAoR2VuOCspICovDQo+ID4gICAjZGVmaW5lIFJQTV9DT05GSUcw
CQkJCV9NTUlPKDB4ZDAwKQ0KPiA+ICAgI2RlZmluZSAgIEdFTjlfUlBNX0NPTkZJRzBfQ1JZU1RB
TF9DTE9DS19GUkVRX1NISUZUCTMNCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZ3QvaW50ZWxfcmM2LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3Jj
Ni5jDQo+ID4gaW5kZXggZjhkMDUyM2Y0YzE4ZS4uZWU4MzBjNDAyNzU0MiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuYw0KPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5jDQo+ID4gQEAgLTgxNiw2ICs4MTYsMjUgQEAg
dTY0IGludGVsX3JjNl9yZXNpZGVuY3lfdXMoc3RydWN0IGludGVsX3JjNiAqcmM2LA0KPiBpOTE1
X3JlZ190IHJlZykNCj4gPiAgIAlyZXR1cm4gRElWX1JPVU5EX1VQX1VMTChpbnRlbF9yYzZfcmVz
aWRlbmN5X25zKHJjNiwgcmVnKSwgMTAwMCk7DQo+ID4gICB9DQo+ID4NCj4gPiArdTY0IGludGVs
X3JjNl9ycG1fdW5pdF9yZXNpZGVuY3koc3RydWN0IGludGVsX3JjNiAqcmM2KSB7DQo+ID4gKwlz
dHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHJjNl90b19pOTE1KHJjNik7DQo+ID4gKwlz
dHJ1Y3QgaW50ZWxfZ3QgKmd0ID0gcmM2X3RvX2d0KHJjNik7DQo+ID4gKwlpbnRlbF93YWtlcmVm
X3Qgd2FrZXJlZjsNCj4gPiArCXU2NCBsc2IsIG1zYiwgY291bnRlcjsNCj4gPiArDQo+ID4gKwl3
aXRoX2ludGVsX3J1bnRpbWVfcG0oZ3QtPnVuY29yZS0+cnBtLCB3YWtlcmVmKSB7DQo+ID4gKwkJ
bHNiID0gaW50ZWxfdW5jb3JlX3JlYWQoZ3QtPnVuY29yZSwgR0VOMTJfR1RfR0ZYX1JDNl9MU0Ip
Ow0KPiA+ICsJCW1zYiA9IGludGVsX3VuY29yZV9yZWFkKGd0LT51bmNvcmUsDQo+IEdFTjEyX0dU
X0dGWF9SQzZfTVNCKTsNCj4gPiArCX0NCj4gPiArDQo+ID4gKwlkcm1fZGJnKCZpOTE1LT5kcm0s
ICJHVCBSQzYgTVNCPTB4JXggTFNCPTB4JXhcbiIsICh1MzIpIG1zYiwNCj4gKHUzMikgbHNiKTsN
Cj4gPiArCW1zYiA9IFJFR19GSUVMRF9HRVQoR0VOMTJfR1RfR0ZYX1JDNl9NU0JfTUFTSywgKHUz
Miltc2IpOw0KPiA+ICsJY291bnRlciA9IG1zYiA8PCAzMiB8IGxzYjsNCj4gDQo+IFdoYXQgYWJv
dXQgd3JhcD8NCldyYXAgaXMgbm90IHByYWN0aWNhbGx5IHBvc3NpYmxlIGhlcmUsIGFzIHRoaXMg
aXMgNTYgYml0IGNvdW50ZXIgYW5kIHRoaXMgd2lsbCBnZXQgcmVzZXQgb24gZWFjaCByYzYgZXhp
dC4gDQo+IA0KPiBJIGd1ZXNzIHlvdSBjYW4ndCB1c2UgaW50ZWxfdW5jb3JlX3JlYWQ2NF8yeDMy
IGJlY2F1c2UgdGhlcmUgaXMgc29tZXRoaW5nDQo+IHByZXNlbnQgaW4gYml0cyAzMS0yND8NCj4g
DQo+IEFueXdheSwgd2hhdCBpcyB0aGUgdW5pdCBoZXJlIGFuZCB3aHkgaXQgaXMgdXNlZnVsIHRv
IHB1dCB0aGlzIGluIGRlYnVnZnMgKHRvZ2V0aGVyDQo+IHdpdGggZHJtX2RiZyk/IChDb25zaWRl
cmluZyB0aGUgdmFsdWUgcmVzdGFydHMgb24gZWFjaA0KPiBSQzYgZW50cnkuKQ0KSSB3aWxsIHJl
bW92ZSB0aGUgZHJtX2RiZy4NClRoaXMgY2FuIGJlIHVzZWZ1bCB0byBrbm93IGFib3V0IHJjNiBl
eGl0IGZyb20gZGVidWdmcy4NCg0KQWN0dWFsIGZyZXF1ZW5jeSB0aGlzIGNvdW50ZXIgaXMgdGlj
a2luZyBpcyBub3QgcmVhbGx5IGtub3duIGZyb20gc3BlYy4NCkkgYW0gc3RpbGwgdHJ5aW5nIHRv
IGZpZ3VyaW5nIG91dCB0aGF0LiBDdXJyZW50bHkgdGhlc2UgYXJlIGp1c3QgcmF3IGNvdW50IGZy
b20gcmVnLg0KVGhhbmtzLA0KQW5zaHVtYW4uDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4gVHZydGtv
DQo+IA0KPiA+ICsNCj4gPiArCXJldHVybiBjb3VudGVyOw0KPiA+ICt9DQo+ID4gKw0KPiA+ICAg
I2lmIElTX0VOQUJMRUQoQ09ORklHX0RSTV9JOTE1X1NFTEZURVNUKQ0KPiA+ICAgI2luY2x1ZGUg
InNlbGZ0ZXN0X3JjNi5jIg0KPiA+ICAgI2VuZGlmDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2d0L2ludGVsX3JjNi5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC9pbnRlbF9yYzYuaA0KPiA+IGluZGV4IGI2ZmVhNzFhZmMyMjMuLjZmYTA4OTY3NTZkNDcgMTAw
NjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfcmM2LmgNCj4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9yYzYuaA0KPiA+IEBAIC0yMyw1ICsy
Myw2IEBAIHZvaWQgaW50ZWxfcmM2X2Rpc2FibGUoc3RydWN0IGludGVsX3JjNiAqcmM2KTsNCj4g
Pg0KPiA+ICAgdTY0IGludGVsX3JjNl9yZXNpZGVuY3lfbnMoc3RydWN0IGludGVsX3JjNiAqcmM2
LCBpOTE1X3JlZ190IHJlZyk7DQo+ID4gICB1NjQgaW50ZWxfcmM2X3Jlc2lkZW5jeV91cyhzdHJ1
Y3QgaW50ZWxfcmM2ICpyYzYsIGk5MTVfcmVnX3QgcmVnKTsNCj4gPiArdTY0IGludGVsX3JjNl9y
cG1fdW5pdF9yZXNpZGVuY3koc3RydWN0IGludGVsX3JjNiAqcmM2KTsNCj4gPg0KPiA+ICAgI2Vu
ZGlmIC8qIElOVEVMX1JDNl9IICovDQo=
