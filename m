Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4649958E5DA
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Aug 2022 05:57:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0174FE6B97;
	Wed, 10 Aug 2022 03:57:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B24DE6B65
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Aug 2022 03:57:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660103831; x=1691639831;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Epfwyrtu2aJl1uTB6RMUM5nNKSYpPrBrD0Zgoi/XL1k=;
 b=d4kC4JOqIHtcglnw0FRlMlvdI+s2nRidk6+KbkZxO38paTzFOAs5JyZd
 myuiWRvxm8Cdt7eq8UHmWPFODuA90HjRi1oSSMYO8uaQZnIQLKzG2EFvI
 M5ae7CZzB310H7m/EfqKivv00Vth+ZoNRwkgrOIZUYMTsu1k6Rj69ddnp
 nOIjGI1IQUwgH9fsFrpyK2gXclpTRsnOrsJDPMdLGJv3ZNVI38+HjA+Y/
 +eEAZk5FU6xJ8lo7m+9mrWzHzh91HVDkrKUy+zOLJqxNuZlmOg4IwCuNs
 v5H/2FsUkZxS2K7P4xF3p7s658F+Edqk+HtlBiuNGC1JPeHafvlNGwUXD g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10434"; a="274041194"
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="274041194"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Aug 2022 20:57:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,226,1654585200"; d="scan'208";a="781097630"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP; 09 Aug 2022 20:57:10 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 20:57:09 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 9 Aug 2022 20:57:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 9 Aug 2022 20:57:09 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.170)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 9 Aug 2022 20:57:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fTqYV3WgN4t6SN/cSMyzTliInlnBEyHIRqlHnfpcaYO0Eq/oi9A5rSR7EisZOxEKRrPuV1Goi9TLQJtcZn+RUU495S1CUXWzaSd67f7AW+bj9yFLMShMkGjuenfdUbD8lL6QMghaEBfwkTKCPfT6p9MUVGnvWNJGGPOGv0MsqFAQn9Pnnfz2T2Mx6kQUFDt9SaBp/ZgA25sAh8txgIWKLyXc9PxMZhqXsa30WJFx3GY9nMZsYEJTsLYkbAF11tbgEKqvP4/BnXYc95IeO0u+Eqbysc8AbHeQCDZdNbxUcfd8CRxZ89elDGXAtoFVKybZiYDyfMj9GVhDVuVy6XZOxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Epfwyrtu2aJl1uTB6RMUM5nNKSYpPrBrD0Zgoi/XL1k=;
 b=FxwxeQu0CN7RHcTDdUcNExyKZLUEhj/H2pbFrBJBUVHOi+7aXeMXDUDRTlWjt0n1cge7eGcV/ly09Iu8rvA7hCmCnbEb43UBegW8w1jYAsMd3UY75QGqKdeRfSBWvgjh3usV3dUPsP8CB8bBQ2hROHvgipBkLxLnYcRgcovMh6DVh/y4YL7HP6KjYItfC1cg87YCX/KAZFhJ/GkUqEs390zGyhChL6w2PPdcJKVvuvsXtvNAu2I3PDWrcLsapM1Tl1Z9h+v1VM2AMnMLP2hZAoEa+bwh4AP7GZU25foCTTlFrR/9YwqlHBms8daQ7zNqq6KoLxPmrGBNfDSroNuOBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 BL1PR11MB6052.namprd11.prod.outlook.com (2603:10b6:208:394::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.10; Wed, 10 Aug
 2022 03:57:06 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::a055:9a40:b527:28b5%7]) with mapi id 15.20.5525.011; Wed, 10 Aug 2022
 03:57:06 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: split out hdcp registers
 to a separate file
Thread-Index: AQHYp+jkgPND2ov3VE+YTAPfq2jVY62nimgg
Date: Wed, 10 Aug 2022 03:57:06 +0000
Message-ID: <DM6PR11MB317727B00B01BEBE372C85DFBA659@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <cover.1659607033.git.jani.nikula@intel.com>
 <ce8334342e8bdf92c17c714aa13574e66cad93bb.1659607033.git.jani.nikula@intel.com>
In-Reply-To: <ce8334342e8bdf92c17c714aa13574e66cad93bb.1659607033.git.jani.nikula@intel.com>
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
x-ms-office365-filtering-correlation-id: 2e09c21e-4872-45b4-8eb3-08da7a84644c
x-ms-traffictypediagnostic: BL1PR11MB6052:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: NzVUWHauHeyY2tsFAap+3yVzReAuspFSI0Td8N/eYVSwaq5hr5gLCSiaVUulzplmSK5UwO72mHak+lIEQzfDrNN9F16r8zau/Et8nPh7YFj07Dq4fsH4nDyJU/iSwcu6dClfT4UucvZ6a87iJL/RVNr+H39ZC6R5WCeTUlG7uXdnmMeqNshctfbgQgbx97/FTiUQZbKIWt0kPLduh9c/YcXNa+j5JgPWCaEDWAUQEft145jVZ9dhZ/rP8eXJEYE2gfG3mv5fBr0MLEBex7zsZgYYAeIO/FB9Y7nMWUz1dStpiGXA0ciauEy3NlpJFxDutDdaYumNLoNPNbQDVZ0SROSW4rLvD6/dv+8NRgF4cseo7Twf/Fs0tFZGISOgs3SzhU+sRw4W0uedSM/olSM1QmFOF72IxPHhTEbqNEGNGQ63XuKnObOgrg+hXAyG879N3miVaA5YFCyAdDJmAIjWYe3lc0Of2aMmFU9TKT1O/LPLMpnczF6KTG2uzCiFDlsoUr9Aq2zFRdQkE3mAaDOij0oYlKvQMbfAmX+pP81PLWYzJstTg6w0O+RBPK8rVvCFyWrrciIcIVjXoiSYsN3pM/UG3DDAC9EoNdvASkCVeseHfxB3IlvtJL2jnj5dYoOz5YRlsCjfe5eBPDpyE0AH59/9LFGxOyPhH1wxWrm9JHS/akPXXsJ59brznK1r52eBuylpY+Gye0mzJOUjNMEJHtU/8jnZvplGDfkT2yOnxCXrM0eakf02rCLCY5GAjuamW+NZNMlYfHodO5wU9yE25qqqM7yvRCxNzz3mMkOxxS0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(396003)(39860400002)(366004)(376002)(136003)(8676002)(66946007)(52536014)(66476007)(64756008)(66446008)(4744005)(122000001)(71200400001)(8936002)(76116006)(66556008)(478600001)(38100700002)(4326008)(316002)(110136005)(5660300002)(2906002)(41300700001)(33656002)(107886003)(186003)(55236004)(7696005)(6506007)(26005)(83380400001)(9686003)(86362001)(38070700005)(55016003)(82960400001)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YmQzQytmVlRNZmRieUtuUEY0bnpKUGlKelQzay9BRldvQ05VMWQwTlJuMkNP?=
 =?utf-8?B?dmdONmtUR3pYUFZhTXZidEdCQnBMYXdOdUVXMVlVNmE5VFo4QU9NeDhXVmJp?=
 =?utf-8?B?WEFZRUxHVmwyRHF0TzMxT25hTzllSzdjQlo2dm93V0pORHp6ZEttbXVQTFRC?=
 =?utf-8?B?YVdSOWJLRkxQVXNLbmJ2T3JPVVptZ1FMUFhvSE5pYXd2R0RnR1BNakdQN2pS?=
 =?utf-8?B?bjlicjU5cVNvaEZBT2czZDIzZEY3Vm5iYk4zK0xIODNQWnpHbks2UDFPZ3RX?=
 =?utf-8?B?L2F1MnBRay9Fb0NJdFJ3Qmxld0ZTZUNab3Y1RWRjUitLNDdaQzMvM3pnTTVU?=
 =?utf-8?B?Q2hQWEk4T0xxZlpvNFVXVmkwNWpFWFEzUE9DRVg0dGJldE5BczBBem9XSnN3?=
 =?utf-8?B?QXBPZm9tYmJUamtIV09xOXVoNUVOZGZMR1ZPcHJ2ZHdXbzc4bWErckhabG05?=
 =?utf-8?B?UXlPbTh3bHFNOEMzOHFxOUd1dTNxdSsrSEZuR01zcGpBeXRlTmNlNXJKaTdr?=
 =?utf-8?B?Y1BNakR3d0dOMm9CZEVwSzV4cXcrdE44Znh5N3d5dVlBa0xLd1E3R1Y1MEJH?=
 =?utf-8?B?b1hzVjhnNjhVaVl0Nzg2ZlRCS1JXYzBwWlZoWTY4Qi83bHgrclJKcTU1WVAy?=
 =?utf-8?B?ZWlvcy82THJHSG9sNXZudzNXMWhnTjhxTWt4TDBCRklZV1ExeEh1QVlGWDJL?=
 =?utf-8?B?YVFFcXdPT0lheDhjcXJVeTh3YThUUnF3a2tMN2ZLcklUeVprK096WUttelBj?=
 =?utf-8?B?REpMdUFtbExoUDArWEJGWUlYSXdYbC8xK1dVcDFUbWdJeC9MQ0dHdG9WUVpT?=
 =?utf-8?B?dnJIRm4vL2V1VTJwenBMdlVXcjRzRDFLaENqTm1WRXNDQ1piZGdNNzJ0V1VH?=
 =?utf-8?B?eGVBTTgrTXlFWU9MRWxEOGpHd3RGMlRCU0FsUG81MGVpR3RKYlI5N0tNNFFQ?=
 =?utf-8?B?dUVKbE9kVUNGUDk4TUh4bmVnYUlLSnU1OUY3NlhPLzV2QXJRQ1hvMmFjS3lh?=
 =?utf-8?B?WXUvK29kZEtvT2tQUzJsS2I2dWUyKzVtVU56QS8rMy91ZnZCSnlHMnVtYWw3?=
 =?utf-8?B?blQ3YVo4Ym15M2hlVVdmZmFhQnVkY05FdmVMcWhkaisvQW9PTStIdVpiZmxi?=
 =?utf-8?B?Rk1aK3BTTHp6QWFUWk1WV1NCczMrOWhkWkNyUUZtVU5HaXA0cmxEZEN3bWJx?=
 =?utf-8?B?SVdJdHBIMG8wWU1LQ0ExTnpDUmZKV2F0YWF5N1NHZ3ZCaDhWQWFpcWJLOGlp?=
 =?utf-8?B?WjE4dU1IbVlBUFVzNk1zY0pFVElzSEhHVm5OV2hXYU5XNFJpNkNUT1R2SFkr?=
 =?utf-8?B?SVhqNmZIZDJmN01PUnFvcnd1aEp2Q3dzTDFQa2VrUzd6M1BhR0R3MGRWMmRV?=
 =?utf-8?B?ZDhrcXM0RnYwSzBhNDMrQ1VXbTJOQlc2Nm9RaUM2OHg0MXBWQnU4QzRKTUx0?=
 =?utf-8?B?MXdkd3RjNDdhWlE5Wk9jWU9ITkJuTVZLRWlsREpDU21CZVRlUm5SSmtBWXQ5?=
 =?utf-8?B?TmpSM2lucW1uUll3M1ZsYnlGVm1GOGZzR0lKbjVWZFhDNjk1TUFPUjBGdzBX?=
 =?utf-8?B?clMzcHBjTkQ4VGEyY3hVemFDMDZVeXlsTWRZVTdhcUUvc0NhVXBwTXA5dEpq?=
 =?utf-8?B?M0RyUWlMaW5HNmU1OWpGOGR2UEtPRTA5blZnK1E4SDBwYmZuUlQ3dElWcU5a?=
 =?utf-8?B?eDR3Y2RHelI5NTlLMis2b3NoNnBTZ1pLTStZZUhlOHdtbko3N21uaDB3UXNG?=
 =?utf-8?B?TXYvVUtQNnlQM0picnhvVlNrNW40VUdROWd0WTdQeFBWTUZZUjhidmhoY3BY?=
 =?utf-8?B?WlZpbXhjaUgxU2tqL2pBSTYwUWdXUHNZRmJHMlpmaEo3dFpON2c5RDNMcWY0?=
 =?utf-8?B?MDE5bjNjOUxvQkpLQ3NxcS9WSnljNUM2Ni9ucGZ0dDFUd3NXTW1vNG1hTnpV?=
 =?utf-8?B?aHRxVEJhRXZjcElZdHI1bjQ3ZXpwU2lVT1g2N1dvbjBQVnhtM0lnS1E2bmpm?=
 =?utf-8?B?Skd0dy84d3g3azFhdVNmSklOU1BTc0pGRnAwT1JnVEpYWEZFcGNLbVhXaUo2?=
 =?utf-8?B?UmRjTEVxUnd4VWlBU20rSHlmM2R5K0dpcFRRTVIvMHZKMDF0WCtlTmdDZ2x1?=
 =?utf-8?Q?0a9mFuBQLGgEeLygyhe485/AY?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2e09c21e-4872-45b4-8eb3-08da7a84644c
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Aug 2022 03:57:06.2888 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YjnWNlnNN7+3U+oavv+8tjcz+Stwr1ZzqeeUgtieIJeJqI785NugTi4r0Snimz56BVEYkzCCfmqRAgqsVLQudA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6052
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/hdcp: split out hdcp registers
 to a separate file
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
dWxhDQo+IFNlbnQ6IFRodXJzZGF5LCBBdWd1c3QgNCwgMjAyMiAzOjI5IFBNDQo+IFRvOiBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlr
dWxhQGludGVsLmNvbT4NCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDEvMl0gZHJtL2k5
MTUvaGRjcDogc3BsaXQgb3V0IGhkY3AgcmVnaXN0ZXJzIHRvIGENCj4gc2VwYXJhdGUgZmlsZQ0K
PiANCj4gUmVkdWNlIHRoZSBibG9hdCBvZiBpOTE1X3JlZy5oLiBUaGUgcmVnaXN0ZXJzIGFyZSBh
bHNvIG9ubHkgbmVlZGVkIGluIGEgZmV3DQo+IHBsYWNlcywgbm8gbmVlZCB0byBoYXZlIHRoZW0g
ZGVmaW5lZCBldmVyeXdoZXJlLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQoNCg0KUmV2aWV3ZWQtYnk6IEFydW4gUiBNdXJ0
aHkgPGFydW4uci5tdXJ0aHlAaW50ZWwuY29tPg0KDQpUaGFua3MgYW5kIFJlZ2FyZHMsDQpBcnVu
IFIgTXVydGh5DQotLS0tLS0tLS0tLS0tLS0tLS0tLQ0K
