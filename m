Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 28EDF665BA9
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 13:43:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65F3E10E71B;
	Wed, 11 Jan 2023 12:43:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60DAE10E726
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 12:43:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673441001; x=1704977001;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IU7oA9gpSzu8Q5bux7q+13bU4FlV4ksB5NHTD8dXDtQ=;
 b=HPdFyj78HZ4rbehF0ZYTAhueCASVoP2C1Uc5SIzq75JnmGc5rj8co2sy
 I9tFPRpzAcsHBEsmFJ7AKBlMR/AFciRX2QkNV8gFKayv5cRSIBud1foNF
 pu1TmsI1m2MkHL3KMg7WsPbt3B8mDuk2r6SPXKGnnERFGQd/pBzG7dcYC
 B876dsI0dGFt0I80YoLin3iLD8KM8CKUz/WLV/YFntHNoqtha/97a/tXl
 niKqV8Gxw/xAoJP9/RZAJS8/cohLRtrs3bsRY+495NeqZGBprHRqhUId0
 Vd9mb417c6mrYY2aL5v+4vAPHf7O1CmMTyB4tuVtXZpAoZYmY4SO/26VC Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="387864327"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="387864327"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 04:43:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="657402270"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="657402270"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 11 Jan 2023 04:43:20 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 04:43:20 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 11 Jan 2023 04:43:20 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 11 Jan 2023 04:43:20 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 11 Jan 2023 04:43:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RvNCD0pajZ6TeEC+OGyjbG9saRwHc7UPqZRJ6y+80yf4MyVIea0t9vhpkLLb5j5XLJQ5/DecydVLsPQ6/hdXTLfLFsH7SPGscMzE3hxdK6c4efVzh+o0ONic9A+igXLqTEqIQI4XqHu7GhHyk7wVn4pCkwthuKbTw/6uuSuJxFiou9zOjeIp3KCckT9lOUkNadItDJidRwfiHJbxLSOfCk196G2NRlBNX928alptd+HahVtI5RUIQkhsB7Ea2uW6CX5OgkRhjZe8UiBdR5/BG72Or8U5j4JzuFUCRUyo2fXeXRcIr2UIpnjcOu6+Qge5m7km+HnSuDnUf9pGA2oUdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IU7oA9gpSzu8Q5bux7q+13bU4FlV4ksB5NHTD8dXDtQ=;
 b=KbfyKndbxwH81BJB9EtP4lnlOcUVOA62U82bdq8YKJm+kTyg+0hUMQDrbUMizE4QVjeqIrqR6vTF10j7g+b8SXx0RiGA/W+Z91OHu303BFDb9G5+phyRdKXZC/8yA1wHlir8RpJHt4GQPiWIMBGFjoyoRY+JoLczMaUpcPow+MgwP1e4ic3/xTDiBDcDsAE1uU71+edRK4BReWa492jgFsXV5gAiM01860wBPXb4mghX1jvuDEFyWi0O6ZH38R9LOpTgLwwxAWGGnabgxA9mCLrpbb9z2aMYWl1adEn/UBhh0x/aNrB2xNlEGi4NTwsyWCvSE/pq+IYeQ0Vp3/Vz3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA0PR11MB4653.namprd11.prod.outlook.com (2603:10b6:806:94::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Wed, 11 Jan
 2023 12:43:18 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%4]) with mapi id 15.20.5986.018; Wed, 11 Jan 2023
 12:43:18 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Add mode DSB opcodes
Thread-Index: AQHZEObZhOLB6ayjnE6Kw48PxpUjl66QEM7ggAXsF4CAA1WJ0A==
Date: Wed, 11 Jan 2023 12:43:18 +0000
Message-ID: <PH7PR11MB5981DC5A2DBBC3CD20C6DB47F9FC9@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-12-ville.syrjala@linux.intel.com>
 <PH7PR11MB5981EE9597D82331ABD7472AF9FA9@PH7PR11MB5981.namprd11.prod.outlook.com>
 <871qo42g66.fsf@intel.com>
In-Reply-To: <871qo42g66.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA0PR11MB4653:EE_
x-ms-office365-filtering-correlation-id: 1bab9d6e-702c-4ebb-e1d7-08daf3d16a7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6qzHqcRFO11imSKf6E9hZV2cwjy1EKZgFeEzxayOMiNhrwbFlrdVKyvRTDSMAgFoC66EdRW0xvGA+zLh9tY6bGg4jfs/OE7HgO3HzyP9cpbsPe6JobdsNRlV5EwgDeW/irFt4ZsOaSQ2g7BNFQezSfT/oZA6JPdyxVTIcpN4846BZ/lLrWWkUc4NMfHhk1yGdcxjSieoMioiwPxfaFchgBiEMIBJukKe0qo+DV55KzYfQv+Obeq3gjL1YFW6G8VccAYsVnS8o9SL2p30tEyWlmILpcFEhbYTi34mWaEPfH+tFWXE+Rn4AzIq46drBP1/vAyD84ZnKXGF4J5jCEn6XPvN1OLyuB3aZmC5/eplWrbDQdz8IuGirZDI151SKAon30KMxjsIUPo3V4ZqJZ9ggwQAAvWqsgj2f/9dyORYmR0AoJ8/OFcVYQ8EM20ui7BmmkEWwElkEW000cxEHpJDn5TDJz9QoCuvfIuKv/VGjXPAltuns2fw8uQGRighlkJnoY9BlcdwjLchNeVMJ3E2NKdRh4ejafnoIbHpVRsPZTaZRd6Ta8bjBDDSXIs9LqMbmy1bHIgCtIIr3PI/v/EBb25gPehs7IDFYgU6m6y5um+ga22+4RIaxprjkyYIBldN0rMWc3cJlfy880fNBPlpqEN+x2bhoyWKXJFWQzqPPC2v10mya9kx4gNJ51YCYHbsyRozUGtuDFZDHmxrDf6btQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(376002)(136003)(366004)(451199015)(6506007)(82960400001)(38100700002)(122000001)(55236004)(53546011)(2906002)(478600001)(33656002)(26005)(7696005)(186003)(5660300002)(71200400001)(9686003)(316002)(38070700005)(8936002)(83380400001)(52536014)(55016003)(86362001)(41300700001)(64756008)(8676002)(110136005)(76116006)(66556008)(4326008)(66946007)(66476007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Q2RqeVI1QVZrSjg1QWpmY1NlcUpneThIQmVlNmNaU3BJaE1vdnZvVjcwSWJm?=
 =?utf-8?B?bWlHeW5DNG9LaXpHNFA0YVczQXo0RVBkbHl1NnRjQ3IxZzhYelBtM2t3TGVx?=
 =?utf-8?B?Skk5Qm8xS2tLQ2lqeGJjL1RXUnpJbUduc3ZIbEtzU0VIMlNjUHJRQ1UzMndw?=
 =?utf-8?B?Yi85b094QU1oaFpDMUpSb1hUY2pEK25VU3Fwb2liaGlYSDRmWllKVVRDaktw?=
 =?utf-8?B?NjBNRG50ZElHbmwrbE5SM3MxcWZpN2FNRUVXdWpKQ1VGSXJNZENqUHNNUG9l?=
 =?utf-8?B?RDZOZ2QvNXZpQjFzWVg4L25yVHFpbDdoV1Y4YngxNGhiQXBKVGNORUQvOEx1?=
 =?utf-8?B?MEVKcmNzb3E0eW14QTVmNXhVemxXSit1M0NJYUlkaWZscmxkWkFZMDFkemNu?=
 =?utf-8?B?VEZPam1JUTBhMUNxWEVtYTd4Y3pRaTZNcU9zc0ZQNzMvbm5BSVc2TjBNK0hR?=
 =?utf-8?B?Q1U5R1ppc1JXNEY1Q253a0RoYjlHd2VrYmFaZ1dCVHJWS3UrUVVKZnhWVmdK?=
 =?utf-8?B?U2F0ZURKVWJSY2cxV0srUE8vWUhMak5tUno0WHNhSWpTNytYa3FEdFRzTkNa?=
 =?utf-8?B?ZloxMGZnaFV3WVN5NlF0QUhUTjBibDZpMkNXM093SlNWNUdZakRpNUhtRUlW?=
 =?utf-8?B?YlVjUWVZTHZJQTNSWGNKbG9hV2xlNCtHaWYrY0MxSjRRblh5WXBjTjZneGpS?=
 =?utf-8?B?cG5NUldLbVFtWGJFN1RpM01QaFQwWEpPazByYW5zNVE0MWlZbnJGQWEwNEI3?=
 =?utf-8?B?MkozWTVtREFOUE5XbUt5MjFoMDd6c1lwUUdVbnB0Qk5mejBTb2VKRW5TQXhH?=
 =?utf-8?B?TWJvV09ZdXUvZGNOTmpqQnIrblFXdW1nR2VESnMwcWtOVnRmUmJ1b0NZc3ZT?=
 =?utf-8?B?U0pFblptRkxXUVdLejhNS0ExSEJ6cFJycWpiNTVUWTZpNVhsMHYzTWtiNTd0?=
 =?utf-8?B?Nm80aHp2RXUxckwvd3B2Y2VSdVJlSzlYZXhFZDVnVHlHUTdyZTRIQi8rNEh0?=
 =?utf-8?B?QTFGTVZCL1hxSm5mc21NS3hUSzJiaERES0crNTBMUUtVN05nWU00YlZzR3pn?=
 =?utf-8?B?REw0dFd2WTVaaVVUNk80Zll1Y3FLbzl4K0o2L2MyWVBid0hMb3FWRGRUN0J3?=
 =?utf-8?B?VmxSZE1sdGt6WFBLQis4cyt5MU83dGNSak9qeW5NYkt2cG9nNEpmeDZoTEFW?=
 =?utf-8?B?MFp3cUFZRDVhcWtsYXZadTN6VXRTMEVLMjFrVlNYN3FrWmVzcU1zOGthb1JM?=
 =?utf-8?B?T0phSjhjVjE3MUlLcjduMDhXOHdLbEgyd1FRNGhMdTdXcjJzYmw2d01HMitZ?=
 =?utf-8?B?SmR4SnN4MnNCbW9pRExqTGIyKzB5djZrM1FQVjA5TldJY0hNSVAzRFk1eEx0?=
 =?utf-8?B?Ulo5NmtKaXpGWEpnY2VUVlkwUVRmNmJsM0NGZng0N2ozR2JQcDlLRnhZK0lt?=
 =?utf-8?B?OGFTZ2RLTC9lYkxkWEFRTCtDTTlsbXJ5ZWhGaXgzNEptMGtEWHlUbVU0MEVB?=
 =?utf-8?B?UG8wMWF6SHNOc3k4WnYyMWUzQXk4cEt6amlRMjEwbjdlbW5LY1F5NGNZbWU1?=
 =?utf-8?B?R2ZSNVI5bTF6SlFqWnZWTlZxSjBxYVNmbGVkNHlzS2w1YjRIRy8zUUVaQlNW?=
 =?utf-8?B?ckJqVElNc2NEcmFXMFZBazFVUjRIY1FqUXJsMG5teDVvK0hwQXNQc1E3OGVG?=
 =?utf-8?B?MkRyK3I5QVJTMjhRb1hFODZTeDZESTZ4M0wyY2RHeXNsbkNtYVp4SXpSNU9Q?=
 =?utf-8?B?RjVjTmlHc3FqOHRVc1Vrc24rcDNsWGxnc1RVL1hpZkhqbzFyR3dqWS9EbW1D?=
 =?utf-8?B?WkxlalJXV2F1dzZWUzNRenBLYmNHQWdzdUpQSldFZlBGdjQxcTdsTzRHSjR4?=
 =?utf-8?B?OUZuR2VHREhEWlY3NGF3UnFjeGFUN01iWjFudkNrc3F6TVA2bG00TGN4a0F6?=
 =?utf-8?B?bHExMXpRdG1GL3hOUlYzOXVJa29iaFlONlc4aDJoU0FpMmtvQjdPd3BOck5q?=
 =?utf-8?B?ME1MVzV5WGNDV0MwQmVwa2RId05VN3gxSHNDTjFqTEZTc2Z0UFBQNHZvYXZs?=
 =?utf-8?B?ODVEM2NNRnJDcHE3L3JIYWlxbUtrWS9hY2dSNjM5UW5QYjNMVUs0K0xreFps?=
 =?utf-8?Q?gJM+AXAeUoobkxEe9aI9F80dz?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bab9d6e-702c-4ebb-e1d7-08daf3d16a7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jan 2023 12:43:18.6539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2RLJONMolFtO6LF5Cff8co9QFoC8NVvuVobKk2LrQDpUm8deYPclyExYu9FD/dRCuC4uXIs+jfRbz2GGaqgAgA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4653
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/13] drm/i915/dsb: Add mode DSB opcodes
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSmFuaSBOaWt1bGEgPGph
bmkubmlrdWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBKYW51YXJ5IDksIDIw
MjMgMzoxNyBQTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PjsgVmlsbGUgU3lyamFsYQ0KPiA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJlOiBbSW50ZWwtZ2Z4XSBb
UEFUQ0ggMTEvMTNdIGRybS9pOTE1L2RzYjogQWRkIG1vZGUgRFNCIG9wY29kZXMNCj4gDQo+IE9u
IFRodSwgMDUgSmFuIDIwMjMsICJNYW5uYSwgQW5pbWVzaCIgPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPg0KPiB3cm90ZToNCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJv
bTogSW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9u
IEJlaGFsZg0KPiA+PiBPZiBWaWxsZSBTeXJqYWxhDQo+ID4+IFNlbnQ6IEZyaWRheSwgRGVjZW1i
ZXIgMTYsIDIwMjIgNjowOCBBTQ0KPiA+PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZw0KPiA+PiBTdWJqZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggMTEvMTNdIGRybS9pOTE1L2Rz
YjogQWRkIG1vZGUgRFNCIG9wY29kZXMNCj4gPj4NCj4gPj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPj4NCj4gPj4gQWRkIGFsbCB0aGUg
a25vdyBEU0IgaW5zdHJ1Y3Rpb24gb3Bjb2Rlcy4NCj4gPj4NCj4gPj4gU2lnbmVkLW9mZi1ieTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2aWV3
ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+ID4+IC0t
LQ0KPiA+PiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYyB8IDggKysr
KysrKysNCj4gPj4gIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gPj4NCj4gPj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4g
Pj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4+IGluZGV4
IDdjNTkzZWM4NGQ0MS4uOTZiYzExN2ZkNmEwIDEwMDY0NA0KPiA+PiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPj4gQEAgLTY3LDggKzY3LDE2IEBAIHN0cnVj
dCBpbnRlbF9kc2Igew0KPiA+Pg0KPiA+PiAgLyogRFNCIG9wY29kZXMuICovDQo+ID4+ICAjZGVm
aW5lIERTQl9PUENPREVfU0hJRlQJCTI0DQo+ID4+ICsjZGVmaW5lIERTQl9PUENPREVfTk9PUAkJ
CTB4MA0KPiA+PiAgI2RlZmluZSBEU0JfT1BDT0RFX01NSU9fV1JJVEUJCTB4MQ0KPiA+PiArI2Rl
ZmluZSBEU0JfT1BDT0RFX1dBSVRfVVNFQwkJMHgyDQo+ID4+ICsjZGVmaW5lIERTQl9PUENPREVf
V0FJVF9MSU5FUwkJMHgzDQo+ID4+ICsjZGVmaW5lIERTQl9PUENPREVfV0FJVF9WQkxBTktTCQkw
eDQNCj4gPj4gKyNkZWZpbmUgRFNCX09QQ09ERV9XQUlUX0RTTF9JTgkJMHg1DQo+ID4+ICsjZGVm
aW5lIERTQl9PUENPREVfV0FJVF9EU0xfT1VUCQkweDYNCj4gPj4gKyNkZWZpbmUgRFNCX09QQ09E
RV9JTlRFUlJVUFQJCTB4Nw0KPiA+PiAgI2RlZmluZSBEU0JfT1BDT0RFX0lOREVYRURfV1JJVEUJ
MHg5DQo+ID4+ICsjZGVmaW5lIERTQl9PUENPREVfUE9MTAkJCTB4QQ0KPiA+PiAgI2RlZmluZSBE
U0JfQllURV9FTgkJCTB4Rg0KPiA+PiAgI2RlZmluZSBEU0JfQllURV9FTl9TSElGVAkJMjANCj4g
Pj4gICNkZWZpbmUgRFNCX1JFR19WQUxVRV9NQVNLCQkweGZmZmZmDQo+ID4NCj4gPiBOb3Qgc3Vy
ZSBpZiB3ZSBjYW4gY2hlY2staW4gdGhlIGFib3ZlIG1hY3JvcyB3aXRob3V0IGl0cyB1c2FnZS4N
Cj4gDQo+IEl0IGRlcGVuZHMgb24gdGhlIGNhc2UuIEhlcmUsIEkgdGhpbmsgd2UgY2FuIGFuZCB3
ZSBzaG91bGQuDQo+IA0KPiBCUiwNCj4gSmFuaS4NCj4gDQo+IA0KPiANCj4gPg0KPiA+IFJlZ2Fy
ZHMsDQo+ID4gQW5pbWVzaA0KPiA+DQo+ID4+IC0tDQo+ID4+IDIuMzcuNA0KPiA+DQo+IA0KPiAt
LQ0KPiBKYW5pIE5pa3VsYSwgSW50ZWwgT3BlbiBTb3VyY2UgR3JhcGhpY3MgQ2VudGVyDQo=
