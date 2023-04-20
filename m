Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5000F6E9874
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 17:37:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0B30310E982;
	Thu, 20 Apr 2023 15:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD9C510E8FF;
 Thu, 20 Apr 2023 15:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682005023; x=1713541023;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ERi11Q3BaMm2UJvX7llGauLAXxuBjM+GWX2I44hkrzI=;
 b=bHWgOu0oKdepJjt/3Kf8FAQjdJK296wRJihe+uRXBCT0MCEKSXUH90KT
 H2NQqszQ5PgclNRADLzn6wnGpph22jHcE8OronfVwJhreY/93w064MxJg
 Ieh/hivCXgMZo5VK1y6kipJxbT7DyGV6IDnf9nowH/zcwKRLYCZAn9T9L
 9r7JWzA3cZD52ew9fvVdBkvihe2N2QyePyrVRmQi8sfcOxB9+QlTjeKYo
 n/a7ToZUEqzAc5/jfrPktoxVOlGYaYDIxLDj3NkX/nH4ZbJGfD7PF4gMh
 929Dn7shiD9elqP/P12TxAkIWswEs4Kq2v0wIqIK71E5R5eM1HjY14ZLh g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="347638933"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="347638933"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 08:36:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="816064166"
X-IronPort-AV: E=Sophos;i="5.99,213,1677571200"; d="scan'208";a="816064166"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP; 20 Apr 2023 08:36:40 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 08:36:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 08:36:40 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 08:36:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SkcTfKL2hLNt0TbFIyLHu4iowNsmegy0EOaRmEM6YNpsvGXFK3Xp/PRPiTZKwYePUKUlb59KN2UI+ThB9dnnFrzCFgAtmAiNf8ugE+fsa/zflbbs7P0+1l0RaFaTeGxVUcdk5WBrIfGZU3Pu6SJzKeAdR9QHu44nrS07tmZ6QvTjBYv4HoWtYGkIIfkktlUoi87bczkMtcK3E0slb7eRyvMI3wsIScKKAHS6dtPDxnbQ8oIyxYoMIqDLSzDsavGeny4/kjoB/EDVCIfSj+ipuDj11AIfZ4QF0szMy0pdlXAB0R1wbyV0I+lWCt6W+w9oAVZ2Uv+i9bKzkyPkFwgWpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ERi11Q3BaMm2UJvX7llGauLAXxuBjM+GWX2I44hkrzI=;
 b=V6877W5f9vHfPsZCdspH/pcuEOgrsnXKgs+KMy3N2tlZlmJILVLGCT7rYHBc8HzqmWWBmoUbqDIVlpyx4ZRs5S6odbofPr1y/aL7l79jDONIohlLm54ZjcvbR/1przqvYIDJE9QqADwZgY+lE8w/wXrxP1PrYYcFCU9E+V2G9P+IRudNLzatJf/o1f9WYqVVMcrA2yz9p2bNo7+e8hHazy1B0vKijGAZOSNRfBeGIo4EoBGifNOMgWZbhdb9V7zwBFbwaDU0HswO9vNXYHS6066x5TnOGWUc0NUgrgB3OJ0v6xz1whCSkYatDKoCyyWMKf2E32gc2xrU58dWkuG4HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by BL1PR11MB5555.namprd11.prod.outlook.com (2603:10b6:208:317::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Thu, 20 Apr
 2023 15:36:38 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::e5e1:11b0:163a:c828]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::e5e1:11b0:163a:c828%8]) with mapi id 15.20.6319.022; Thu, 20 Apr 2023
 15:36:37 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>
Thread-Topic: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
Thread-Index: AQHZchT1JgGddvJEYUGJZMIJij2gaq8yLKcAgAADMgCAAAmtAIAAA7AAgAHz/QCAACPSAIAAApWA
Date: Thu, 20 Apr 2023 15:36:37 +0000
Message-ID: <e04570c0a82752db16d179d72ce5f4ed6c271c9f.camel@intel.com>
References: <20230418164337.50303-1-jose.souza@intel.com>
 <uiz4v7ipqtw3mtgvccmi6vgiqojptaahydvh66aaqwq2tvy7sn@ne5s2vatg2zp>
 <tfvlalzyff5hv5wxid4q5garmiburkapqo6xv3zdrdxicwt2un@64brrcp2ckgb>
 <878reo1gvt.fsf@intel.com>
 <iyxrhj6q37af2fhgk6bnj756rhofpek3n77ynmwkpd4d5eckdg@cp5jmu37fsn3>
 <0394295946956dcd04d37d38bb4bfd08c9314386.camel@intel.com>
 <ZEFZ1vVrUjtx7RIl@intel.com>
In-Reply-To: <ZEFZ1vVrUjtx7RIl@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH3PR11MB8185:EE_|BL1PR11MB5555:EE_
x-ms-office365-filtering-correlation-id: 50abaa56-ee9e-406b-1ade-08db41b5079c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0IzGR/BbKDG3YB0pbPk4eBXYIAUR+n51f7kBg3Y8I2s7xwJ279H97b25N7wDiH1XEdXcican1+zmEwcUE7h+3sS5q5uojLaMgZG3M4fDWdoqHI7V/J+9o9HDkWbKGuCJdFNPahnJwlpclE4DNHXA5ULhGTiNIirfwijKQhSd1TfshWSESyVTziv7rB+QYWG616vIunYUuI6BBMtUvYUUjznIXcBX5u6Ccu2syFmlog05hPl1+LI+VfoshmgSwJWNg+nT7bv9H4kVgiqsAQiUXhsqo3IuHxbzstqlPxUae2M3ncyXFmidM8cH4d908Tn5WtQXLtINnVpVw8v1LYhsyHdenb4zGN/UPA+e2mB/ABEXQvUNKOl50BqGnVMABzO4wEuxhsEeITaQz7XZExufKyvPRnhOQIQgvfKYfBasWUcFoEUsmLbNS/WgIjW/r/abLEswD54+BelHc36y34Omd1p6p8SJT221vyVoxa+NdDCJpgqss0iHFnptC5X45iCRMkQrvdt0IsKRreU5RXTHTUebjseCoVs1CuXTqkOrJri09JAUn+V5DmDDHpsRxlw65XdywRqn3UwlHX4qgiD1vsbk08YgRW2b1PHobjH5TUMG/szK8zCgQmTjExQk/BGM
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(366004)(376002)(39860400002)(396003)(451199021)(38070700005)(38100700002)(8676002)(2906002)(8936002)(6862004)(66899021)(5660300002)(36756003)(86362001)(83380400001)(6486002)(71200400001)(6512007)(6506007)(26005)(107886003)(54906003)(37006003)(6636002)(478600001)(2616005)(66946007)(186003)(91956017)(450100002)(76116006)(82960400001)(316002)(41300700001)(122000001)(66476007)(66556008)(66446008)(4326008)(64756008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bWovY2JoRU1hMGgrc2xyQllKNm42bWtrSStVZ0RJc2loays0VWovMUphMi9n?=
 =?utf-8?B?SjhvU2ViNHVxcVp6dkkvSEhxUmZVK0ZKMDJIQ0UxcjVteStweHdJNzZQU2tJ?=
 =?utf-8?B?SENyY2U2UzNDVExjdkhpcEJpeWxrUVFNMjNCWTVJTkpVTFllZmlyVWU0Q1hh?=
 =?utf-8?B?c1J3RHVJMGtTbC8ycDBJRmFIeWtQK3ltM2NseUdtc3JSdEl2NkZoZExDSDlE?=
 =?utf-8?B?Rkl5NE5NWjRjbURVNUx1VnJZaHI1ak0xWkViRlJTRUFBbFQwMXc5MFdCeURm?=
 =?utf-8?B?dGlUTjE4VEtkQzg4NUFBM0EwMEtkblBqbFVZNFpyK2ZGbmNmcTBwVHlTaUJZ?=
 =?utf-8?B?ZW9NOW1kUUhwMnp6Z3Qyb2UvYUNiZzRVdUhOa0lVVUtPOXhrRCtIS0xLbW1O?=
 =?utf-8?B?YkVnMTJQaWxzRUt4OEs4TVBEcXNnT0poVC96SHRKTUZ5VC91Rkk2L09sR3Ra?=
 =?utf-8?B?Qmh2cEd0ampDYUZrdjV0TThPcStRMkp2WXV6T1h2M1dGczRDOW1POEY2ZjRi?=
 =?utf-8?B?dWpKUyttbTRVRnNUL1pGRzZ2OWcwN1JwVkNqblRpWkNQcEFiSFBOdnpRTkJZ?=
 =?utf-8?B?N2grT05UOW1za0ZCdUFML2Q5U085cmV0VnZLWmpDalhKbCtrWkNzQllTcVBo?=
 =?utf-8?B?RGVCRWtja3k4WCt1OUJDN1A1Rm5PVktsSGpocGN3VVpPK0ZJbVVtYnlQT28w?=
 =?utf-8?B?MWhkUVRnYXFwaFlZZkdNemNKM3drVDJjUWpIajRHaFhzMEdyV3BWN3hJNnZW?=
 =?utf-8?B?Y2h3Ti9DWWFyMnlYOVorMVpnR0d6K29oeWhabTk5ZXF2Yk9QTFp1RFVMOWtN?=
 =?utf-8?B?SXVXYkhldDlBbzJkQ2g1eU01WTZlcWFsVnUwMnFRLzlLWGRveE80WldwdUs1?=
 =?utf-8?B?VFZISUZ0Vy9YeXdwV1owTUtDbFg2cXpKYlFwZHo1QXVyV0FQN2lPQ0pOMVpP?=
 =?utf-8?B?MGs4UWw3YVd0Ti8valA5MHl0WVg2cCtZbVRIbURYcFc2cWdJY2ZtMFBuZEtC?=
 =?utf-8?B?L3BBMGJ1Z3F2T2V0Qi8zRHNWb284QlBDdEhZczEyQk4vTTg4YWE3dG5aa1A3?=
 =?utf-8?B?ZG5OaENlU2doSXVGbjVuaEpwdkU4amRWVUNvMlRjalBZc29QaXdzaWVXc1Zi?=
 =?utf-8?B?WjFCSVNuZ2lFMnUyalY0MGIxSmVRenRuZ2pWdjBtQ2Y5NktLOTBXa0lDTHRW?=
 =?utf-8?B?K3hEYmJGZWM1Zi96T3hidzE0dk5pc1BjRHc2YkllWjdsNlRKUlBvcGoxYmtJ?=
 =?utf-8?B?eXBDZ2ZZeHZnWUFualdwdkQwUHVWUThaRitmZU5QZVptWXFDWW5vbkhUdmVO?=
 =?utf-8?B?R1Z3YTdOdTdNMmdaVXZvWVdpYVpaZTZObXZLYVpxS0VtZnk1UUh2Y1VneEtP?=
 =?utf-8?B?MnN6aW5BWjRPU0tCTFdFQmpJbUJqTVhZeGVqbTU5Nkd0dXhlYUZKOUJFMDBT?=
 =?utf-8?B?UGxQMmNrOXFEaUc4QmFXSGVlNnNrVElFNWhUVG8vZ1hzbmZrNTNnK3JjUHYz?=
 =?utf-8?B?Zk42OG5WOUl2TjI3NFM3dDRyV05rK0JMUkdGV0c0TWtpak13NUJaWDZqeUQ3?=
 =?utf-8?B?KzRsR1ZyRHk4a2dBbzJpMHJXQnRIZ29DbXBkRkt3RkZxWFZKeExPSGk5SW4r?=
 =?utf-8?B?ZlBSTlZvNi9mUjBkM0RIQ2N5MXk1N3lWaGhNT3IrUUNqbDdDRGh0NU91VHB1?=
 =?utf-8?B?M3cveDBvaERNRWpYd0RnN3BPUUs3TGtMeWRVQ29LbnJNeUNrMkVkeWQyTVdN?=
 =?utf-8?B?L3VZRURMV3NpR3Fkc1czeWYyVER5M2QrQzdtM2xOQzF0elRRWHIzczFjYzFU?=
 =?utf-8?B?Mk9wRGlxdWhJbU5ZbS9wWFFYbUJKQStIMmY5djdRMW5NNDBXVFVLVTB2dnBG?=
 =?utf-8?B?R1BMSFBpTnhuVWNaTDJxa1pMaTBOb3VnV2l4SW5NdkxOWnVLMjNPMHdnWm5W?=
 =?utf-8?B?dU1yeTJhRGNrK2NKaVZzcWs2Z1JkZnpCMU1iUFhGdHpRNFBGcTViQWgzRGNr?=
 =?utf-8?B?cGZVd2hrQVBQRmlCTVAya3NaVGNUd2Z4ekNYMmVrSXRORUFyVjhrSTRnT2hE?=
 =?utf-8?B?UmV0ZEdwck5DY0xqcXZJb05SeUkwU3VpQ3FOQWVnVjlvUWF2aEdhTUVuaUdq?=
 =?utf-8?Q?gx00HXsyaj519++P9nhOJx+TE?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9884677FF624CB4D99590ABBE61A38F3@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50abaa56-ee9e-406b-1ade-08db41b5079c
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 15:36:37.5102 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1/LLBmnixS8iBpxtTn4HZEu8bT5pDhOnne7UgK03s8SyrhkaatCL2Sf1B1bVTvZLN6eT/lByQ8YHCNK5bxGHJg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5555
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH v4] drm/i915: Initialize dkl_phy
 spin lock from display code path
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDIzLTA0LTIwIGF0IDExOjI3IC0wNDAwLCBSb2RyaWdvIFZpdmkgd3JvdGU6DQo+
IE9uIFRodSwgQXByIDIwLCAyMDIzIGF0IDA5OjE5OjA5QU0gLTA0MDAsIFNvdXphLCBKb3NlIHdy
b3RlOg0KPiA+IE9uIFdlZCwgMjAyMy0wNC0xOSBhdCAwMDoyOSAtMDcwMCwgTHVjYXMgRGUgTWFy
Y2hpIHdyb3RlOg0KPiA+ID4gT24gV2VkLCBBcHIgMTksIDIwMjMgYXQgMTA6MTY6MjJBTSArMDMw
MCwgSmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gPiA+IE9uIFR1ZSwgMTggQXByIDIwMjMsIEx1Y2Fz
IERlIE1hcmNoaSA8bHVjYXMuZGVtYXJjaGlAaW50ZWwuY29tPiB3cm90ZToNCj4gPiA+ID4gPiBP
biBUdWUsIEFwciAxOCwgMjAyMyBhdCAxMTozMDoxOFBNIC0wNzAwLCBMdWNhcyBEZSBNYXJjaGkg
d3JvdGU6DQo+ID4gPiA+ID4gPiBPbiBUdWUsIEFwciAxOCwgMjAyMyBhdCAwOTo0MzozN0FNIC0w
NzAwLCBKb3NlIFNvdXphIHdyb3RlOg0KPiA+ID4gPiA+ID4gPiBTdGFydCB0byBtb3ZlIHRoZSBp
bml0aWFsaXphdGlvbiBvZiBkaXNwbGF5IGxvY2tzIGZyb20NCj4gPiA+ID4gPiA+ID4gaTkxNV9k
cml2ZXJfZWFybHlfcHJvYmUoKSwgdGhpcyB3YXkgaXQgaXMgYWxzbyBleGVjdXRlZCB3aGVuIHJ1
bm5pbmcNCj4gPiA+ID4gPiA+ID4gWGUga21kLg0KPiA+ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+
ID4gVGhpcyB3aWxsIGZpeCBhIHdhcm5pbmcgaW4gWGUga21kOg0KPiA+ID4gPiA+ID4gPiANCj4g
PiA+ID4gPiA+ID4gWyAgMjAxLjg5NDgzOV0geGUgMDAwMDowMDowMi4wOiBbZHJtXSBbRU5DT0RF
UjoyMzU6RERJIEEvUEhZIEFdIGZhaWxlZCB0byByZXRyaWV2ZSBsaW5rIGluZm8sIGRpc2FibGlu
ZyBlRFANCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjEzNjMzNl0geGUgMDAwMDowMDowMi4wOiBbZHJt
XSAqRVJST1IqIEZhaWxlZCB0byB3cml0ZSBzb3VyY2UgT1VJDQo+ID4gPiA+ID4gPiA+IFsgIDIw
Mi4xNzUzNDZdIElORk86IHRyeWluZyB0byByZWdpc3RlciBub24tc3RhdGljIGtleS4NCj4gPiA+
ID4gPiA+ID4gWyAgMjAyLjE3NTM0N10gaXJxIGV2ZW50IHN0YW1wOiA3NTQwNjANCj4gPiA+ID4g
PiA+ID4gWyAgMjAyLjE3NTM1OV0gaGFyZGlycXMgbGFzdCAgZW5hYmxlZCBhdCAoNzU0MDU5KTog
WzxmZmZmZmZmZjgxMjJjZjc5Pl0gdGlja19ub2h6X2lkbGVfZW50ZXIrMHg1OS8weDgwDQo+ID4g
PiA+ID4gPiA+IFsgIDIwMi4xODAyOTRdIFRoZSBjb2RlIGlzIGZpbmUgYnV0IG5lZWRzIGxvY2tk
ZXAgYW5ub3RhdGlvbiwgb3IgbWF5YmUNCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjE4Mzc3NF0gaGFy
ZGlycXMgbGFzdCBkaXNhYmxlZCBhdCAoNzU0MDYwKTogWzxmZmZmZmZmZjgxMWE1NTM5Pl0gZG9f
aWRsZSsweDk5LzB4MjMwDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4xOTI3MzRdIHlvdSBkaWRuJ3Qg
aW5pdGlhbGl6ZSB0aGlzIG9iamVjdCBiZWZvcmUgdXNlPw0KPiA+ID4gPiA+ID4gPiBbICAyMDIu
MTk4OTUxXSBzb2Z0aXJxcyBsYXN0ICBlbmFibGVkIGF0ICg3NTM5NDgpOiBbPGZmZmZmZmZmODEx
NGFiYWU+XSBpcnFfZXhpdF9yY3UrMHhiZS8weDEzMA0KPiA+ID4gPiA+ID4gPiBbICAyMDIuMjA2
ODgyXSB0dXJuaW5nIG9mZiB0aGUgbG9ja2luZyBjb3JyZWN0bmVzcyB2YWxpZGF0b3IuDQo+ID4g
PiA+ID4gPiA+IFsgIDIwMi4yMTIyMzZdIHNvZnRpcnFzIGxhc3QgZGlzYWJsZWQgYXQgKDc1Mzk0
Myk6IFs8ZmZmZmZmZmY4MTE0YWJhZT5dIGlycV9leGl0X3JjdSsweGJlLzB4MTMwDQo+ID4gPiA+
ID4gPiA+IFsgIDIwMi4yMjA1OTJdIENQVTogMiBQSUQ6IDE0MTUgQ29tbTogbW9kcHJvYmUgVGFp
bnRlZDogRyAgICAgICAgVyAgICAgICAgICA2LjMuMC1yYzQremVoLXhlKyAjOTA5DQo+ID4gPiA+
ID4gPiA+IFsgIDIwMi4yNDMwMDJdIEhhcmR3YXJlIG5hbWU6IEludGVsIENvcnBvcmF0aW9uIFJh
cHRvciBMYWtlIENsaWVudCBQbGF0Zm9ybS9SYXB0b3JMYWtlLVAgTFA1IFJWUCwgQklPUyBSUExQ
RldJMS5SMDAuMzM2MS5BMTQuMjIxMTE1MTU0OCAxMS8xNS8yMDIyDQo+ID4gPiA+ID4gPiA+IFsg
IDIwMi4yNTU3MzddIENhbGwgVHJhY2U6DQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4yNTgxNzldICA8
VEFTSz4NCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjI2MDI3NV0gIGR1bXBfc3RhY2tfbHZsKzB4NTgv
MHhjMA0KPiA+ID4gPiA+ID4gPiBbICAyMDIuMjYzOTIyXSAgcmVnaXN0ZXJfbG9ja19jbGFzcysw
eDc1Ni8weDdkMA0KPiA+ID4gPiA+ID4gPiBbICAyMDIuMjY4MTY1XSAgPyBmaW5kX2hlbGRfbG9j
aysweDJiLzB4ODANCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjI3MTk3NV0gIF9fbG9ja19hY3F1aXJl
KzB4NzIvMHgyOGIwDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4yNzU3ODZdICA/IGRlYnVnX29iamVj
dF9mcmVlKzB4YjQvMHgxNjANCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjI3OTk0Nl0gIGxvY2tfYWNx
dWlyZSsweGQxLzB4MmQwDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4yODM1MDNdICA/IGludGVsX2Rr
bF9waHlfcmVhZCsweDE4LzB4NjAgW3hlXQ0KPiA+ID4gPiA+ID4gPiBbICAyMDIuMjg4MTgxXSAg
X3Jhd19zcGluX2xvY2srMHgyYS8weDQwDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4yOTE4MjVdICA/
IGludGVsX2RrbF9waHlfcmVhZCsweDE4LzB4NjAgW3hlXQ0KPiA+ID4gPiA+ID4gPiBbICAyMDIu
Mjk2NDc1XSAgaW50ZWxfZGtsX3BoeV9yZWFkKzB4MTgvMHg2MCBbeGVdDQo+ID4gPiA+ID4gPiA+
IFsgIDIwMi4zMDA5NDldICBpY2xfYXV4X3Bvd2VyX3dlbGxfZW5hYmxlKzB4MmJkLzB4NDAwIFt4
ZV0NCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjMwNjIwMl0gID8gaW50ZWxfZGlzcGxheV9wb3dlcl9n
cmFiX2FzeW5jX3B1dF9yZWYrMHg3NS8weDEyMCBbeGVdDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4z
MTI2NDldICBpbnRlbF9wb3dlcl93ZWxsX2VuYWJsZSsweDFjLzB4NzAgW3hlXQ0KPiA+ID4gPiA+
ID4gPiBbICAyMDIuMzE3NTQzXSAgX19pbnRlbF9kaXNwbGF5X3Bvd2VyX2dldF9kb21haW4ucGFy
dC4wKzB4NGQvMHg3MCBbeGVdDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4zMjM4MTJdICBpbnRlbF9k
aXNwbGF5X3Bvd2VyX2dldCsweDQzLzB4NzAgW3hlXQ0KPiA+ID4gPiA+ID4gPiBbICAyMDIuMzI4
NzA4XSAgaW50ZWxfdGNfcG9ydF9pbml0KzB4MTk5LzB4MmEwIFt4ZV0NCj4gPiA+ID4gPiA+ID4g
WyAgMjAyLjMzMzM2M10gIGludGVsX2RkaV9pbml0KzB4NmFkLzB4YjAwIFt4ZV0NCj4gPiA+ID4g
PiA+ID4gWyAgMjAyLjMzNzY3OF0gIGludGVsX21vZGVzZXRfaW5pdF9ub2dlbSsweDUzNi8weDZk
MCBbeGVdDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4zNDI4MzhdICB4ZV9kaXNwbGF5X2luaXRfbm9h
Y2NlbCsweDE5LzB4NDAgW3hlXQ0KPiA+ID4gPiA+ID4gPiBbICAyMDIuMzQ3NzQzXSAgeGVfZGV2
aWNlX3Byb2JlKzB4MWY1LzB4MmEwIFt4ZV0NCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjM1MjEyN10g
IHhlX3BjaV9wcm9iZSsweDI4Yy8weDQ4MCBbeGVdDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4zNTYy
NjBdICBwY2lfZGV2aWNlX3Byb2JlKzB4OWQvMHgxNTANCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjM2
MDE2NF0gIHJlYWxseV9wcm9iZSsweDE5YS8weDQwMA0KPiA+ID4gPiA+ID4gPiBbICAyMDIuMzYz
ODA5XSAgPyBfX3BmeF9fX2RyaXZlcl9hdHRhY2grMHgxMC8weDEwDQo+ID4gPiA+ID4gPiA+IFsg
IDIwMi4zNjgyMjZdICBfX2RyaXZlcl9wcm9iZV9kZXZpY2UrMHg3My8weDE3MA0KPiA+ID4gPiA+
ID4gPiBbICAyMDIuMzcyNTU4XSAgZHJpdmVyX3Byb2JlX2RldmljZSsweDFhLzB4OTANCj4gPiA+
ID4gPiA+ID4gWyAgMjAyLjM3NjYzMl0gIF9fZHJpdmVyX2F0dGFjaCsweGNkLzB4MWMwDQo+ID4g
PiA+ID4gPiA+IFsgIDIwMi4zODA0NDJdICBidXNfZm9yX2VhY2hfZGV2KzB4NzIvMHhjMA0KPiA+
ID4gPiA+ID4gPiBbICAyMDIuMzg0MjUzXSAgYnVzX2FkZF9kcml2ZXIrMHgxMTAvMHgyMTANCj4g
PiA+ID4gPiA+ID4gWyAgMjAyLjM4ODA2M10gIGRyaXZlcl9yZWdpc3RlcisweDUwLzB4MTAwDQo+
ID4gPiA+ID4gPiA+IFsgIDIwMi4zOTE4NzNdICA/IF9fcGZ4X2luaXRfbW9kdWxlKzB4MTAvMHgx
MCBbeGVdDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi4zOTY0MzFdICBkb19vbmVfaW5pdGNhbGwrMHg1
NS8weDI2MA0KPiA+ID4gPiA+ID4gPiBbICAyMDIuNDAwMjQ1XSAgPyByY3VfaXNfd2F0Y2hpbmcr
MHhkLzB4NDANCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjQwNDA1OF0gID8ga21hbGxvY190cmFjZSsw
eGEwLzB4YjANCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjQwNzc4Nl0gIGRvX2luaXRfbW9kdWxlKzB4
NDUvMHgxZTANCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjQxMTUxMl0gIF9fZG9fc3lzX2Zpbml0X21v
ZHVsZSsweGFjLzB4MTIwDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi40MTU4MzhdICBkb19zeXNjYWxs
XzY0KzB4MzcvMHg5MA0KPiA+ID4gPiA+ID4gPiBbICAyMDIuNDE5Mzk3XSAgZW50cnlfU1lTQ0FM
TF82NF9hZnRlcl9od2ZyYW1lKzB4NzIvMHhkYw0KPiA+ID4gPiA+ID4gPiBbICAyMDIuNDI0NDA5
XSBSSVA6IDAwMzM6MHg3ZmQxMTI5MWVhM2QNCj4gPiA+ID4gPiA+ID4gWyAgMjAyLjQyNzk2N10g
Q29kZTogNWIgNDEgNWMgYzMgNjYgMGYgMWYgODQgMDAgMDAgMDAgMDAgMDAgZjMgMGYgMWUgZmEg
NDggODkgZjggNDggODkgZjcgNDggODkgZDYgNDggODkgY2EgNGQgODkgYzIgNGQgODkgYzggNGMg
OGIgNGMgMjQgMDggMGYgMDUgPDQ4PiAzZCAwMSBmMCBmZiBmZiA3MyAwMSBjMyA0OCA4YiAwZCBj
MyBhMyAwZiAwMCBmNyBkOCA2NCA4OSAwMSA0OA0KPiA+ID4gPiA+ID4gPiBbICAyMDIuNDQ2NTMw
XSBSU1A6IDAwMmI6MDAwMDdmZmZmZGUxMTM2OCBFRkxBR1M6IDAwMDAwMjQ2IE9SSUdfUkFYOiAw
MDAwMDAwMDAwMDAwMTM5DQo+ID4gPiA+ID4gPiA+IFsgIDIwMi40NTQwMzFdIFJBWDogZmZmZmZm
ZmZmZmZmZmZkYSBSQlg6IDAwMDA1NjE2YTYxN2YyMTAgUkNYOiAwMDAwN2ZkMTEyOTFlYTNkDQo+
ID4gPiA+ID4gPiA+IFsgIDIwMi40NjExMDZdIFJEWDogMDAwMDAwMDAwMDAwMDAwMCBSU0k6IDAw
MDA1NjE2YTYxN2ZlNjAgUkRJOiAwMDAwMDAwMDAwMDAwMDBlDQo+ID4gPiA+ID4gPiA+IFsgIDIw
Mi40NjgxODJdIFJCUDogMDAwMDAwMDAwMDA0MDAwMCBSMDg6IDAwMDAwMDAwMDAwMDAwMDAgUjA5
OiAwMDAwMDAwMDAwMDAwMDAyDQo+ID4gPiA+ID4gPiA+IFsgIDIwMi40NzUyNTBdIFIxMDogMDAw
MDAwMDAwMDAwMDAwZSBSMTE6IDAwMDAwMDAwMDAwMDAyNDYgUjEyOiAwMDAwNTYxNmE2MTdmZTYw
DQo+ID4gPiA+ID4gPiA+IFsgIDIwMi40ODIzMTldIFIxMzogMDAwMDU2MTZhNjE3ZjM0MCBSMTQ6
IDAwMDAwMDAwMDAwMDAwMDAgUjE1OiAwMDAwNTYxNmE2MTgwNjUwDQo+ID4gPiA+ID4gPiA+IFsg
IDIwMi40ODkzOTZdICA8L1RBU0s+DQo+ID4gPiA+ID4gPiA+IA0KPiA+ID4gPiA+ID4gPiB2MjoN
Cj4gPiA+ID4gPiA+ID4gLSBhZGRlZCBpbnRlbF9kaXNwbGF5X2xvY2tzX2luaXQoKQ0KPiA+ID4g
PiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gdjM6DQo+ID4gPiA+ID4gPiA+IC0gcmViYXNlZA0KPiA+
ID4gPiA+ID4gPiANCj4gPiA+ID4gPiA+ID4gdjQ6DQo+ID4gPiA+ID4gPiA+IC0gZHJvcCBpbnRl
bF9kaXNwbGF5X2xvY2tzX2luaXQoKQ0KPiA+ID4gPiA+ID4gDQo+ID4gPiA+ID4gPiB3aHk/DQo+
ID4gPiA+ID4gDQo+ID4gPiA+ID4gYWguLi4gb2ssIG5vdyB3ZSBoYXZlIGludGVsX2Rpc3BsYXlf
ZHJpdmVyX2Vhcmx5X3Byb2JlKCkuIEkgdGhvdWdodCB5b3UNCj4gPiA+ID4gPiB3ZXJlIGRyb3Bw
aW5nIHRoZSBjYWxsIGZyb20gaTkxNV9kcml2ZXIuYw0KPiA+ID4gPiA+IA0KPiA+ID4gPiA+IFJl
bWFpbmluZyBxdWVzdGlvbiBmb3IgZGlzcGxheTogZG8gd2Ugd2FudCB0byBzcHJlYWQgdGhlIGxv
Y2sNCj4gPiA+ID4gPiBpbml0aWFsaXphdGlvbiB0byBlYWNoIGNvbXBpbGF0aW9uIHVuaXQ/ICBP
ciBzaG91bGQgd2UganVzdCBrZWVwIGENCj4gPiA+ID4gPiANCj4gPiA+ID4gPiAJc3RhdGljIGxv
Y2tzX2luaXQoKSB7IDxhbGwgdGhlIGxvY2tzIGhlcmU+IH0NCj4gPiA+ID4gPiANCj4gPiA+ID4g
PiB0aGUgbG9jayBpbml0IHNlZW1zIGEgdmVyeSBjaGVhcCBpbml0IHRoYXQgbWF5YmUgZG9lc24n
dCBkZXNlcnZlIHRvIGJlDQo+ID4gPiA+ID4gc3ByZWFkLiBUaGVuIHRoaXMgcGF0Y2ggY291bGQg
anVzdCBtb3ZlIGFsbCB0aGUgbXV0ZXhlcyBpbml0aWFsaXphdGlvbg0KPiA+ID4gPiA+IHRoYXQg
d2VyZSBsZWZ0IGJlaGluZC4NCj4gPiA+ID4gDQo+ID4gPiA+IEkgc3RpbGwgdGhpbmsgaWYgb25s
eSBvbmUgZmlsZSB1c2VzIHNvbWV0aGluZywgdGhlbiB0aGF0IGZpbGUgc2hvdWxkDQo+ID4gPiA+
IGluY2x1ZGUgdGhlIGluaXQgZm9yIGl0IHRvbywgYW5kIG5vYm9keSBlbHNlIHNob3VsZCB0b3Vj
aCBpdC4gSW5jbHVkaW5nDQo+ID4gPiA+IGxvY2tzLiBJZGVhbGx5LCB0aGV5IHdvdWxkIGJlIHN0
b3dlZCBhd2F5IGluIGFsbG9jYXRlZCBvcGFxdWUgc3RydWN0cw0KPiA+ID4gPiB0aGF0IGNhbid0
IGV2ZW4gYmUgYWNjZXNzZWQgKG9yIGluaXRpYWxpemVkKSBieSBhbnlvbmUgZWxzZS4NCj4gPiA+
IA0KPiA+ID4gc28uLi4gdGhpcyB2ZXJzaW9uIG9mIHRoZSBwYXRjaD8gIFdlIHdpbGwgbmVlZCB0
byBzcHJlYWQgdGhlIG11dGV4ZXMNCj4gPiA+IGFyb3VuZCB0aGVuLg0KPiA+IA0KPiA+IERvIHdl
IGhhdmUgYW4gYWdyZWVtZW50IGhlcmU/DQo+ID4gSSdtIGFsc28gaW4gZmF2b3Igb2YgaW5pdCBh
bGwgdmFyaWFibGVzIGluIHRoZSBvbmx5IGZpbGUgdGhhdCB0b3VjaGVzIGl0Lg0KPiA+IA0KPiA+
IFRoZSBvdGhlciBtdXRleGVzIGNhbiBiZSBtb3ZlZCBncmFkdWFsbHkuDQo+IA0KPiBJIHRoaW5r
IHdlIGFsbCBhZ3JlZSBoZXJlLiBBbHNvIEkgYmVsaWV2ZSBpdCBjYW4gc3RhcnQgd2l0aCB0aGlz
IGFuZA0KPiBsYXRlciBkbyB0aGUgcmVzdCBvZiB0aGUgY2xlYW4gdXAuDQo+IA0KPiBQcm9iYWJs
eSBjaGFuZ2UgdGhlIGNvbW1pdCBtZXNzYWdlIHRvIHJlbW92ZSB0aGUgWGUsIHdoaWNoIGlzIHN0
aWxsIG91dA0KPiBvZiB0aGUgdHJlZT8NCg0KSWYgdGhlcmUgaXMgbm8gb3RoZXIgY2hhbmdlcywg
SSBjYW4gZG8gdGhhdCB3aGVuIGFwcGx5aW5nLg0KDQo+IA0KPiA+IA0KPiA+ID4gDQo+ID4gPiBM
dWNhcyBEZSBNYXJjaGkNCj4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gQlIsDQo+ID4gPiA+IEph
bmkuDQo+ID4gPiA+IA0KPiA+ID4gPiANCj4gPiA+ID4gLS0gDQo+ID4gPiA+IEphbmkgTmlrdWxh
LCBJbnRlbCBPcGVuIFNvdXJjZSBHcmFwaGljcyBDZW50ZXINCj4gPiANCg0K
