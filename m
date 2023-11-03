Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CA9047E0528
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Nov 2023 16:00:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3D410EA12;
	Fri,  3 Nov 2023 15:00:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E757A10EA11
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Nov 2023 15:00:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699023642; x=1730559642;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=gtdBs7+kY0edDfK1GywPxzYKLDS13p1OI0rNdVqLjPQ=;
 b=BQvZD5rUg5SgHT9NiAv8GNm+RUuMDCodaRmumA3HJX7h79rJ632BNefG
 7YokTQ/zrFTFRhQnJiU/J2LYiUdV0zbNfVYd1BjLsOXwHsTWLsHYN9Xlu
 xjbNN5pd1XjY/Voc6CbCgkOLZf8UxPCwRdoXSdLp1cIrhtm5IuHpfMGEM
 EJgHTIRZ3BwvquvANDpD1AA2sNYFJS9qSS7mRxgJAhcKTep+wZjum8NSA
 Bj0QPW5fSELAYxqLF776wxsmEvGfgy6VwXbCgEdH0zzT2jdMuJpr6qwJk
 Pvzd3m19VJMo6sX/3ZLZ//SbZ/HsN/vECkCS++ks1b38Mfq5pWsDTXxtw g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="392841122"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="392841122"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2023 08:00:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10883"; a="1093075980"
X-IronPort-AV: E=Sophos;i="6.03,273,1694761200"; d="scan'208";a="1093075980"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Nov 2023 08:00:37 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Fri, 3 Nov 2023 08:00:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Fri, 3 Nov 2023 08:00:37 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Fri, 3 Nov 2023 08:00:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lBEBR2ka+iTcn3wxmoBVVs1R/LcDeIbJQDqRtmYWP0JK13a0Onsb6Nrg8b/JX4Xp61Rn34r/BmVFLmfvjhO/IRM2lpqs+4kYYBddvxDSqznQh26EcH8/VlfAi3lc/rFcUJCz2O0M5K10UcXDZ/AoDMXurZO0FTTlrcpC0zowYVfH643JkB37UzI83SetS8pgQe3dcfBWjNi/uUV410YBfU9/QlfKwgS6SzcYWf33CyTzSpT1gvaS3WS0e9+YzXPlUoFHe41pLSyA5DU8zXlSPr7f8ziZXK90T2uGWuNuUIhYP9a2RZv2xN2Rb5hE6uJcR7u9aE8Q7mA2gHHuqLtE6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gtdBs7+kY0edDfK1GywPxzYKLDS13p1OI0rNdVqLjPQ=;
 b=EKMosI9nnVoQnaJwWf5EJmcY8M7Bb3ot/j9kfLRSW6K7jcyZzG68PUcOupX2nE58jqGInJwjsSabjMSiRuSVxk3zm7pcF4kUHbaFHlhqwUNe7VYrGyub4CT0eYh1RPldurDrl+8LEoGQ8jrOwWck3cUKFaLXFVN/ORseedBouPrv/Y5Nmmq8wv+gtxpqvqdWa3YKCVIf2ar1iQvORoDI5rxNCOiAppv5SimaIADuj0IcBzWN8llPhyZY3qAwhNX8fM8ArxtQZC6JCwD0cXUfrYTUfeZQDUpl5pOFf9EkfhPX2mENoy+iul/z9F9TrtdMD1ib4bqS298ld3H9FzOThA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by IA0PR11MB8399.namprd11.prod.outlook.com (2603:10b6:208:48d::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.24; Fri, 3 Nov
 2023 15:00:30 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::ca35:a0cf:9a74:f348%6]) with mapi id 15.20.6954.019; Fri, 3 Nov 2023
 15:00:30 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Sousa, Gustavo" <gustavo.sousa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/mtl: Clear possible sticky bits on PICA message
 bus
Thread-Index: AQHaDK6J1tnoTORVwUCs0fN8gaWC47BnFu+AgAAGplCAAXcf0IAAHmmw
Date: Fri, 3 Nov 2023 15:00:30 +0000
Message-ID: <MW4PR11MB7054BA425CD21D4DE7FBF310EFA5A@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231101103101.156505-1-mika.kahola@intel.com>
 <169893500976.1757.2763206983162106542@gjsousa-mobl2>
 <MW4PR11MB70548082087217EF87D066F6EFA6A@MW4PR11MB7054.namprd11.prod.outlook.com>
 <MW4PR11MB7054968C7179AD1072F0C38EEFA5A@MW4PR11MB7054.namprd11.prod.outlook.com>
In-Reply-To: <MW4PR11MB7054968C7179AD1072F0C38EEFA5A@MW4PR11MB7054.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|IA0PR11MB8399:EE_
x-ms-office365-filtering-correlation-id: 8ee93618-0a08-48c6-0368-08dbdc7d9f2b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qFs6lRLEnVpjFkq5V/w4aRdMhKII9zXp1StszWVxBjOfpm1a3ldg+/Jy/6kPVDiFr1yqhpJFKRI8e6ChVwLbTTVwrGdRDtNc8qKWOJX31BwKKC50yimB39egl6XNO7Tul6E96jgZh0xa+J0NLHwaa66Wla0i5jo6USbH9CIhDP3Z4SNYhL2USz+k0BeFoUil97K6rg49oqLZ3X/UQnUiSJKyqDKt5OITjKiPvO3BBq99Nn1u+FcOeyEzuzrMxZGnY0x7RyQeyRRk2VbJtLQ3i6hYP1FyBxJiuPSLpXYUxp6Yb3vtRbuvjiV9ZQfErFHVmqmdE3dUv/fiBaNEYHLmVXSkTCNSwEcyaNPecvwTCDc7y16fiqiSWRfUNAr6jON+Xj4Q+SD5Ut5zurRV7lTyANmltzrhUusBOCSocmz0m7JoAeUMXOmSU8u1G5lWl1d7VSnisemBNHzB97S1U+0yIf8r+1G9+9rXtJxdlY91shiaeYXzj3uKaYVX73KQ6L+l5DelQDGIen09V2wMthKUF3p0bdSRL6UkNpiRwbajxck/04NcsAL9UDcYkT3ZJvlt4/Dcnl7Y93AYtPQ3Vnwpr0jNvpn4ep2y38Ql8WXbD9peMUGL98VN7irMKzEBrEeo
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(396003)(39860400002)(136003)(376002)(230922051799003)(64100799003)(186009)(451199024)(1800799009)(41300700001)(52536014)(33656002)(5660300002)(316002)(54906003)(64756008)(38100700002)(8676002)(8936002)(4326008)(38070700009)(15650500001)(83380400001)(86362001)(2906002)(66446008)(122000001)(9686003)(7696005)(6506007)(26005)(55016003)(71200400001)(53546011)(478600001)(2940100002)(82960400001)(107886003)(110136005)(66476007)(66556008)(66946007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFNmSUtTcjR5N3lzdTBlSXU0dEloNXFoRUxvMWhwY0gwZjl3ZWlxTXh0T3lF?=
 =?utf-8?B?MFBnRW9HZEJLMzB5eHBvMHZZRnMyYlVUQ1FvZ09IZTNTaGsxL2RZengrekRz?=
 =?utf-8?B?YS9ZYkVsVUhES1NIamFKbytOeGNlUFBCR1Brem8xRitUQjFjU2JHZ3Ezc3Va?=
 =?utf-8?B?WjB6dmloK3RyTHJtKzgraVBVKzllYitXS1U3UGJ0bXV4WkhBUGs4amlCSEhF?=
 =?utf-8?B?Qmo3dGVsRWZRbjNidmZhNWk0SE4xVzQ3U2RQR29mci9lNHRBOW9UK2tkVkNB?=
 =?utf-8?B?S1d3cXdZNzRiTW1CQXVUTmhScnpJQ0k2aEJlZkwwK2RtcytwY2VpN0NzL3Jp?=
 =?utf-8?B?MVN6WUR3K3RmS1JSS1M1UVlGZk9KUFFOYUYya1lBenA1RkJlZ0hVZ2g1TDhY?=
 =?utf-8?B?Z2lCUlpMR2xPdU80aTM0dG81YTB5WDI0OGN2ZnIydHhsSGprU3kxRFFzVHVs?=
 =?utf-8?B?WUhvSmVOVlNCZElVendWT2dRTStFK2V6RHlWUDVFRDdVVExoRXBSOTdTUWRD?=
 =?utf-8?B?dFBqd21KdEduMTFYMlZxNjFRMEhvWk5Jam8wZ0FtQXR0eklXTWdIeVdvY1FU?=
 =?utf-8?B?NEFrN2NwM0phdTdVZ2ZLSlRPSTE0TFQ5ZzFDVGFDQWh0S0w3aGhoMHg5bCth?=
 =?utf-8?B?eWhDR3pvUEhQdVVjTUxqZ2dvRFZrajl0SkhDOUZnTVM2QjJmcEQxOC9JVkQ1?=
 =?utf-8?B?bnhVdGd6b3Vpc3FZeWdHVG83Wm5zaVJDUHYxY3ZuNEJkbzlHL2IrcmE5VXBM?=
 =?utf-8?B?Vk1nZTFHT1pDWlZjbmtKK0k1WW0yYjBidmdwOENLcGc4SzZvUFcrTGdTWkZ1?=
 =?utf-8?B?TytLZnFiemxnbnpvOCtoSGJFTDZXdTFqK0RjKzdkSnZoU1o0YnlvczR0c01j?=
 =?utf-8?B?K0FUZldDbTMrMHJEVlp3ZHZVUzVNckw5N2EvUWQ5dlRXSnFhUlFVME1icGZp?=
 =?utf-8?B?VU5DM3NVOXpuT1NiN3d2eVVNUk8zeFpmdThHMzRNelZqMFVwNGJlMU1LWUdp?=
 =?utf-8?B?amZtNVlNTlJPd0RUenR6eE5pcHhHOU53ZDFoYlhtdlVZUXdTMStadnhQaUto?=
 =?utf-8?B?a1c2VVRZRTNkcXdzNFlhbFdzaUV6R2paTWtnTy90NSsrWjE1RkFHa3RuMkN3?=
 =?utf-8?B?Y1Z5ZHNWenZaenVnTDVIT1BTbitOemxtbFVycEJkTy9XZVUvQTVZSm5GMC9U?=
 =?utf-8?B?ZENxVnNwcXJZeW9iTm1YT2ljLy8xWGp0dUFkU2E0RVVqTGFZWEpPcWdzeFFk?=
 =?utf-8?B?RUNSbEhvOXNHVXpacTQyWDZyRjNqT2dNNEcvODRodzU1UjBDc1luNXptZ2Iz?=
 =?utf-8?B?bW01WDhOblovdExsNWtibjNpKzdrQjdDNnNVOG9NbXNTOG1Lb1N4MXZvTTRM?=
 =?utf-8?B?d2t5SmpDSVhtN1padHUyRkdoVFZDbmpxNjE3OU1QN2wxdkdJQ3RsTVlIOTdQ?=
 =?utf-8?B?V0xQNEw3R3RGMzVPYVZBNUg0ZzJlUTJWd3ZMUjRzM2F4S0ZHT0hjRVhYK0F1?=
 =?utf-8?B?Qll1ODF2L2tlRTI5dVFEQXNLNE1WNllEV0JsZTF4WGlpclpxRU5sZW5EN2dt?=
 =?utf-8?B?LzdXdktjSERTMlBZcUJGOHFBdVE2eno5azRFbHd5NGhNRHk0emlsTWVpOEh6?=
 =?utf-8?B?VlpKMFJ0dXdaZVpOeU5za3dqdE1CTzV4N3RjQVZ4VWZlRzkzU3hCSitNa3FJ?=
 =?utf-8?B?a2tsNWlOWmdPdHlFS3NOakVDeFNrUWVZbmQ3N1ZhRForNzRHOXZlcWRXM3Fp?=
 =?utf-8?B?MjVJRmVvNjlwRWVFWUc3bm1oa0NYdjhCTlFMdVRicHRjMzF3Y3FaMG8vTi8x?=
 =?utf-8?B?c0pWVFNXaG54RWlHSEtHMlF1T01ManNiQ3pGK2ZLRC93bjc5NElKZmJXWTZ1?=
 =?utf-8?B?eWZiNkRZb052MVo0ZEY1akVQVWpVa0xnTWUyNERZMlE4Sy9YQTF2b0t4L0tx?=
 =?utf-8?B?dnZDUjJteDZSMnlqYW1yblV3OWVwTUR3b3JaYjVkUUNvTnMvRkVDMWgxQ2lN?=
 =?utf-8?B?YkZWbUtGdXhqeGhVZTN4ZXlScllBY05wZ3Z2enBDYWxycWlnK0lGcUNYcU1Q?=
 =?utf-8?B?b3FwdzZVYjJ6cCtrOW8yREdEMUFjRUFpRjJjL1EvRm4vNUJxcmZjRS8zQnhI?=
 =?utf-8?Q?m+MqAGbOt6z74pWDyyR4r8Pl/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ee93618-0a08-48c6-0368-08dbdc7d9f2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Nov 2023 15:00:30.2407 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rJ6yvUePkNwnJe8odbdRCszte2YbjBOG+YJ/nGFBmJ/hdq2In6+JPe/i3H35LI6tYs26E2624urZgiJTwej4ug==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB8399
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Clear possible sticky bits on
 PICA message bus
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYWhvbGEsIE1pa2EgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBOb3ZlbWJlciAzLCAyMDIzIDQ6NDcg
UE0NCj4gVG86IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgU291c2EsIEd1
c3Rhdm8gPGd1c3Rhdm8uc291c2FAaW50ZWwuY29tPjsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNr
dG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBTeXJq
YWxhLCBWaWxsZSA8dmlsbGUuc3lyamFsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiBbUEFU
Q0hdIGRybS9pOTE1L210bDogQ2xlYXIgcG9zc2libGUgc3RpY2t5IGJpdHMgb24gUElDQSBtZXNz
YWdlIGJ1cw0KPiANCj4gPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiA+IEZyb206IElu
dGVsLWdmeCA8aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhh
bGYgT2YNCj4gPiBLYWhvbGEsIE1pa2ENCj4gPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMiwg
MjAyMyA0OjU0IFBNDQo+ID4gVG86IFNvdXNhLCBHdXN0YXZvIDxndXN0YXZvLnNvdXNhQGludGVs
LmNvbT47DQo+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBOaWt1
bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IFN5cmphbGEsIFZpbGxlDQo+ID4gPHZp
bGxlLnN5cmphbGFAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBbUEFU
Q0hdIGRybS9pOTE1L210bDogQ2xlYXIgcG9zc2libGUgc3RpY2t5DQo+ID4gYml0cyBvbiBQSUNB
IG1lc3NhZ2UgYnVzDQo+ID4NCj4gPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4g
PiBGcm9tOiBTb3VzYSwgR3VzdGF2byA8Z3VzdGF2by5zb3VzYUBpbnRlbC5jb20+DQo+ID4gPiBT
ZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgMiwgMjAyMyA0OjIzIFBNDQo+ID4gPiBUbzogS2Fob2xh
LCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+Ow0KPiA+ID4gaW50ZWwtZ2Z4QGxpc3RzLmZy
ZWVkZXNrdG9wLm9yZw0KPiA+ID4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwu
Y29tPjsgTmlrdWxhLCBKYW5pDQo+ID4gPiA8amFuaS5uaWt1bGFAaW50ZWwuY29tPjsgU3lyamFs
YSwgVmlsbGUgPHZpbGxlLnN5cmphbGFAaW50ZWwuY29tPg0KPiA+ID4gU3ViamVjdDogUmU6IFtQ
QVRDSF0gZHJtL2k5MTUvbXRsOiBDbGVhciBwb3NzaWJsZSBzdGlja3kgYml0cyBvbg0KPiA+ID4g
UElDQSBtZXNzYWdlIGJ1cw0KPiA+ID4NCj4gPiA+IFF1b3RpbmcgTWlrYSBLYWhvbGEgKDIwMjMt
MTEtMDEgMDc6MzE6MDEtMDM6MDApDQo+ID4gPiA+SXQgaXMgcG9zc2libGUgdGhhdCBzdGlja3kg
Yml0cyBvciBlcnJvciBiaXRzIGFyZSBsZWZ0IG9uIG1lc3NhZ2UNCj4gPiA+ID5idXMgc3RhdHVz
IHJlZ2lzdGVyLiBSZWFkaW5nIGFuZCB0aGVuIHdyaXRpbmcgdGhlIHZhbHVlIGJhY2sgdG8NCj4g
PiA+ID5tZXNzYWdlYnVzIHN0YXR1cyByZWdpc3RlciBjbGVhcnMgYWxsIHBvc3NpYmxlIHN0aWNr
eSBiaXRzIGFuZCBlcnJvcnMuDQo+ID4gPiA+DQo+ID4gPiA+U2lnbmVkLW9mZi1ieTogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gPiA+ID4tLS0NCj4gPiA+ID4gZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5LmMgfCAxNCArKysrKysrKysrKysr
Kw0KPiA+ID4gPiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKQ0KPiA+ID4gPg0KPiA+
ID4gPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9w
aHkuYw0KPiA+ID4gPmIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jeDBfcGh5
LmMNCj4gPiA+ID5pbmRleCBiMmFkNGM2MTcyZjYuLmY0MzlmMGM3YjQwMCAxMDA2NDQNCj4gPiA+
ID4tLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N4MF9waHkuYw0KPiA+
ID4gPisrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3gwX3BoeS5jDQo+
ID4gPiA+QEAgLTE5NSw2ICsxOTUsMTMgQEAgc3RhdGljIGludCBfX2ludGVsX2N4MF9yZWFkX29u
Y2Uoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0LA0KPiA+ID4g
PiAgICAgICAgICAgICAgICAgcmV0dXJuIC1FVElNRURPVVQ7DQo+ID4gPiA+ICAgICAgICAgfQ0K
PiA+ID4gPg0KPiA+ID4gPisgICAgICAgIC8qDQo+ID4gPiA+KyAgICAgICAgICogd3JpdGUgWEVM
UERQX1BPUlRfUDJNX01TR0JVU19TVEFUVVMgcmVnaXN0ZXIgYWZ0ZXIgcmVhZCB0byBjbGVhcg0K
PiA+ID4gPisgICAgICAgICAqIGFueSBlcnJvciBzdGlja3kgYml0cyBzZXQgZnJvbSBwcmV2aW91
cyB0cmFuc2FjdGlvbnMNCj4gPiA+ID4rICAgICAgICAgKi8NCj4gPiA+ID4rICAgICAgICB2YWwg
PSBpbnRlbF9kZV9yZWFkKGk5MTUsIFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTKHBvcnQs
IGxhbmUpKTsNCj4gPiA+ID4rICAgICAgICBpbnRlbF9kZV93cml0ZShpOTE1LCBYRUxQRFBfUE9S
VF9QMk1fTVNHQlVTX1NUQVRVUyhwb3J0LA0KPiA+ID4gPisgbGFuZSksIHZhbCk7DQo+ID4gPiA+
Kw0KPiA+ID4gPiAgICAgICAgIGludGVsX2RlX3dyaXRlKGk5MTUsIFhFTFBEUF9QT1JUX00yUF9N
U0dCVVNfQ1RMKHBvcnQsIGxhbmUpLA0KPiA+ID4gPiAgICAgICAgICAgICAgICAgICAgICAgIFhF
TFBEUF9QT1JUX00yUF9UUkFOU0FDVElPTl9QRU5ESU5HIHwNCj4gPiA+ID4gICAgICAgICAgICAg
ICAgICAgICAgICBYRUxQRFBfUE9SVF9NMlBfQ09NTUFORF9SRUFEIHwgQEAgLTI2Miw2DQo+ID4g
PiA+KzI2OSwxMyBAQCBzdGF0aWMgaW50IF9faW50ZWxfY3gwX3dyaXRlX29uY2Uoc3RydWN0DQo+
ID4gPiA+K2RybV9pOTE1X3ByaXZhdGUgKmk5MTUsIGVudW0gcG9ydCBwb3J0LA0KPiA+ID4gPiAg
ICAgICAgICAgICAgICAgcmV0dXJuIC1FVElNRURPVVQ7DQo+ID4gPiA+ICAgICAgICAgfQ0KPiA+
ID4gPg0KPiA+ID4gPisgICAgICAgIC8qDQo+ID4gPiA+KyAgICAgICAgICogd3JpdGUgWEVMUERQ
X1BPUlRfUDJNX01TR0JVU19TVEFUVVMgcmVnaXN0ZXIgYWZ0ZXIgcmVhZCB0byBjbGVhcg0KPiA+
ID4gPisgICAgICAgICAqIGFueSBlcnJvciBzdGlja3kgYml0cyBzZXQgZnJvbSBwcmV2aW91cyB0
cmFuc2FjdGlvbnMNCj4gPiA+ID4rICAgICAgICAgKi8NCj4gPiA+ID4rICAgICAgICB2YWwgPSBp
bnRlbF9kZV9yZWFkKGk5MTUsIFhFTFBEUF9QT1JUX1AyTV9NU0dCVVNfU1RBVFVTKHBvcnQsIGxh
bmUpKTsNCj4gPiA+ID4rICAgICAgICBpbnRlbF9kZV93cml0ZShpOTE1LCBYRUxQRFBfUE9SVF9Q
Mk1fTVNHQlVTX1NUQVRVUyhwb3J0LA0KPiA+ID4gPisgbGFuZSksIHZhbCk7DQo+ID4gPiA+Kw0K
PiA+ID4NCj4gPiA+IExvb2tpbmcgYXQgdGhlIGN1cnJlbnQgc3RhdGUgb2YgdGhlIGNvZGUsIGxv
b2tzIGxpa2UgdG8gbWUgdGhhdCB3ZSBhbHJlYWR5IGNsZWFyIHRoZSBiaXRzIGZyb20gYm90aCB0
aGUgInN1Y2Nlc3MiIGFuZCAiZmFpbHVyZSINCj4gPiBwYXRocy4NCj4gPiA+IEZvciB0aGUgInN1
Y2Nlc3MiDQo+ID4gPiBwYXRocywgdGhhdCBpcyBkb25lIGJ5IGEgZGlyZWN0IGNhbGwgdG8NCj4g
PiA+IGludGVsX2NsZWFyX3Jlc3BvbnNlX3JlYWR5X2ZsYWcoKTsgZm9yIHRoZSAiZmFpbHVyZSIg
Y2FzZSwgdGhlIGNhbGwNCj4gPiA+IHRvDQo+ID4gPiBpbnRlbF9jbGVhcl9yZXNwb25zZV9yZWFk
eV9mbGFnKCkgaXMgZG9uZSBhcyBwYXJ0IG9mIGludGVsX2N4MF9idXNfcmVzZXQoKS4NCj4gPiA+
DQo+ID4gPiBUaHVzLCBjb25zaWRlcmluZyB0aGF0IHdlIHN0YXJ0IHVzaW5nIHRoZSBtc2didXMg
ZnJvbSBhIGNsZWFuIHN0YXRlLA0KPiA+ID4gbWF5YmUgdGhlc2UgZXh0cmEgc3RlcHMgYXJlIG5v
dCBuZWNlc3Nhcnk/IEhhdmUgeW91IHRyaWVkIGFkZGluZyBhDQo+ID4gPiBjYWxsIHRvDQo+ID4g
PiBpbnRlbF9jeDBfYnVzX3Jlc2V0KCkgYXMgcGFydCBvZiBpbnRlbF9jeDBfcGh5X3RyYW5zYWN0
aW9uX2JlZ2luKCk/DQo+ID4gVGhhdCBJIGhhdmVuJ3QgdHJ5IHRvIHJlc2V0IGJ1cyBhdCB0aGUg
c3RhZ2UuIEkgY2FuIGdpdmUgaXQgYSBnbyBhbmQNCj4gPiBjaGVjayB3aGF0IGhhcHBlbnMuIFRv
IG1lIGl0IHNlZW1zLCB0aGF0IHdlIGFyZSBzb21ldGltZXMgc3R1Y2sgYXQNCj4gPiB3YWl0aW5n
IHRoZSBhY2sgYW5kIGV2ZW50dWFsbHkgd2UgdGltZSBvdXQgYW5kIGJhaWwgb3V0LiBJIGhhdmUg
bm8NCj4gPiBjbHVlIHdoeSB0aGlzIGhhcHBlbnMgZnJvbSB0aW1lIHRvIHRpbWUuIFdlIGFscmVh
ZHkgcmVzZXQgdGhlIGJ1cyBhZnRlciBldmVyeSByZWFkL3dyaXRlIG9wZXJhdGlvbi4gSW4gYWRk
aXRpb24sIGEgc21hbGwgZGVsYXkNCj4gc2VlbSB0byBoZWxwIGFuZCBjbGVhciB0aGUgc3BvcmFk
aWMgcmVhZC93cml0ZSBmYWlsdXJlcyB0byB0aGUgYnVzLiBIb3dldmVyLCB0aGlzIGlzIG1vcmUg
bGlrZSBhIHdvcmthcm91bmQgYW5kIEknbSBub3QgcmVhbGx5DQo+IGhhcHB5IGFib3V0IHRoaXMg
c29ydCBvZiBoYWNrLg0KPiA+DQo+ID4gSSB3aWxsIGdpdmUgYSBnbyBmb3IgeW91ciBzdWdnZXN0
aW9uIGFuZCBjb21lIGJhY2sgb25jZSBJIGhhdmUgdGhlIHJlc3VsdHMuDQo+IA0KPiBJIHJhbiBh
IHRlc3Qgd2l0aCBpbnRlbF9jeDBfYnVzX3Jlc2V0KCkgd2hlbiBwbGFjZWQgaW4gaW50ZWxfY3gw
X3BoeV90cmFuc2FjdGlvbl9iZWdpbigpLiBUaGlzIGRpZG4ndCBoZWxwIGVpdGhlciBhcyB3aXRo
IGttc19mbGlwDQo+IElHVCB0ZXN0IEkgd2FzIGFibGUgdG8gdHJpZ2dlciB0aGlzIHJlYWQgZmFp
bHVyZQ0KPiANCj4gW2RybV0gKkVSUk9SKiBQSFkgRyBSZWFkIDBkODAgZmFpbGVkIGFmdGVyIDMg
cmV0cmllcy4NCj4gDQo+IFRoaXMgd2FzIHdpdGggdGhlIGNvbmZpZ3VyYXRpb24gd2hlcmUgdGhl
IHRlc3QgdmVoaWNsZSBoYWQgNEsgYW5kIGVEUCBtb25pdG9ycyBjb25uZWN0ZWQuDQoNCkkgdGhp
bmsgd2UgY2FuIGlnbm9yZSB0aGlzIHBhdGNoLiBJIHdhcyBhYmxlIHRvIHRyaWdnZXIgdGhpcyBl
cnJvciB3aXRoIHRoaXMgcGF0Y2ggYXBwbGllZCBhcyB3ZWxsLiBUaGlzIGRvZXNuJ3QgZml4IHRo
ZSBpc3N1ZSBlaXRoZXIuDQoNClNvcnJ5IGZvciB0aGUgbm9pc2UuDQoNCi1NaWthLQ0KDQo+IA0K
PiANCj4gPg0KPiA+IFRoYW5rcyENCj4gPiAtTWlrYS0NCj4gPg0KPiA+ID4NCj4gPiA+IEFsc28s
IEkgdGhpbmsgaXQgd291bGQgYmUgZ29vZCBpZiB3ZSB1bmRlcnN0b29kIGJldHRlciB3ZXJlIHRo
b3NlIHVuY2xlYXJlZCBiaXRzIGFyZSBjb21pbmcgZnJvbS4uLg0KPiA+ID4NCj4gPiA+IC0tDQo+
ID4gPiBHdXN0YXZvIFNvdXNhDQo+ID4gPg0KPiA+ID4gPiAgICAgICAgIGludGVsX2RlX3dyaXRl
KGk5MTUsIFhFTFBEUF9QT1JUX00yUF9NU0dCVVNfQ1RMKHBvcnQsIGxhbmUpLA0KPiA+ID4gPiAg
ICAgICAgICAgICAgICAgICAgICAgIFhFTFBEUF9QT1JUX00yUF9UUkFOU0FDVElPTl9QRU5ESU5H
IHwNCj4gPiA+ID4gICAgICAgICAgICAgICAgICAgICAgICAoY29tbWl0dGVkID8gWEVMUERQX1BP
UlRfTTJQX0NPTU1BTkRfV1JJVEVfQ09NTUlUVEVEIDoNCj4gPiA+ID4tLQ0KPiA+ID4gPjIuMzQu
MQ0KPiA+ID4gPg0K
