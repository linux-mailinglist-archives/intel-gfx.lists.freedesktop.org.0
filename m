Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 97C4065D0F7
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 11:54:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1934F10E56E;
	Wed,  4 Jan 2023 10:54:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11A5410E56E
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 10:54:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672829670; x=1704365670;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aKJMNs3ruhIEHtDCcaoCtPd367rqg947joFBKzVk+bc=;
 b=M7o34On4xo4/T+8XbrZ84tpzz+/dBCi7bTGXqECWDwav8nrDWzFbHWyM
 KnESuQuN+NRLg2rZ8M5crdXkAKZdK3XIpS7haCWpvs4BPfi28N7aZQLB8
 FWi0AXctQB0KlCcnK38pgc3U1mbXty1aHr/aekF4Tcb3QpY9jdiFkmy6R
 gVTcTzwzjNjBjsUaLtwtEhgI2URmWGlQPU+p3nyVXmllAghb4dfX69sHk
 8Vr7jVgYISJ5nHus4RG918RppJkhjl0uT+sHx9i6i+jKUoeSv0XfTQ9/0
 9y4Dv/8m1/uRHrBqS5UfipmNKpl+2opnlrry8uk0xM1uZsVHJw6mLll9r w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="302280472"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="302280472"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jan 2023 02:54:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="779180160"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="779180160"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP; 04 Jan 2023 02:54:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 02:54:28 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 4 Jan 2023 02:54:27 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 4 Jan 2023 02:54:27 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 4 Jan 2023 02:54:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PCTnlavjbzyeq7vT3s8idtH7dWpiES6oP9LykfVeV+EXyezoAd8HvsEmNU8+ZBrH4FVkx7t5rHJ3NQ002eD8scfNM7ycd4CF1U0wJHKBFG6FVAvAgCTSx/pyncly5BXHwpPpilzl4n9e0AMAz+iJOUQNJGhZIBsfOLgeD4MO1a8NG/8+8N29gFFInBiY5+X1PYeo6//AOcnFLC0JGXV6sCO12EB0LcB6gDrG2AkKMfz+2Q1iIIkzANZUQOgnbgmkIL31ZUlzIVZYzk3NMFezgKpUVZncOnZliQaPdHPcknTHg9Dxd78JfdDN+bOcWgXHpmvGgh+4AkMA6Z6LkJCKhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aKJMNs3ruhIEHtDCcaoCtPd367rqg947joFBKzVk+bc=;
 b=ZGEr4maUl3o3llFzWJyQ24vn06Ww4QW652oVqhMGBTy/9Y7fo9/TmRDnFW1b6rEIDve1eoWsKXuBM7Xlle204xSXob79e/W99NU8XVJHj2fjmCIwNBSTOcyTObKoWajSa96VE3B0tSW7MOHlQoVCjbZ5jmFT8HhxSgqunVVfmMRKzD9/kZSe0E/c+a4Iq3aTjv8Frd/Y2fZaZWBP9hbATPzfRMUvoIKzUdoEQ+qPyHsqqtJ/+Ccmzcy3I23G0LErl7s5LJ4IvqeCh0YFkGYmglNWmDXMzeobm8UzouS4PSqt5JJgSgPLuwWyxXmkwZk3bF1dI+xC1Qowee7eKamB+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BL1PR11MB5509.namprd11.prod.outlook.com (2603:10b6:208:31f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 10:52:46 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 10:52:46 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer
 size checks
Thread-Index: AQHZEObYtbs3EqJRBk2wnLvGPNg23K6OM1iQ
Date: Wed, 4 Jan 2023 10:52:46 +0000
Message-ID: <PH7PR11MB598147D5820DD2BE453C0F13F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BL1PR11MB5509:EE_
x-ms-office365-filtering-correlation-id: 07c1cd59-da12-453e-502d-08daee41d083
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oaLdgp5az8tke7aknL0wsV62WsFINaU0zl/GjB/6FMUUHDTkEKsJp76EnXrhhX6F9e2dPUFrvbXuGvtE8M5tijJsTBTFXEllRR4kptNfByJHMc9kvadfZ5AMNWoLenM5Ag/W7itO+R4MySyi/JLbLCjuH3bShvr9f/PiN45TrAZVJF7N63B4J0r2byf632CXrkb4l9L7zE20Kb+IrMVRCfdkeN5JX52fkejVos6lXLM+CQcSkcDXyK+G6JoKt4+JDRz/pHHHHyVjBv9xx1Q4MpbxGFyFmyxTfQEfvqfP+O1LsIPBcl1AuzKa0LiHkA0XEyIa8CG5vPLowahxtq+nQBzBPUyL2hvSvyedzNXHsxasjQFvuwh9hco8Z36h/Syan1zzUiA3WhLp+1qClh9L1+vmfv6chaMW8Km8hRPEMYc0dLfDFaPh1IYZyDmTUAnWr2Yha2Fd8/o8F913eq629ligGl99HJqBUejoPuR5s2Yvpn5lwNpEa2AGFyonWniSiBl3BTZugJlE6s8WANEbtfF+0Ndx7BHMCSSVPDG4Ph6uylMLuyfruiNlkbqY8kMp83M99qrBoynu2mW5T5CzAN6hhP11NMr3TDEyAyTP2HgdoRHHJmYKhSd+mRIMm96alcdT+mWIdHAxBe5MDDNV9bkiYlMg8e2ZUgSHI61U4ONDUN74OfY2wEeFdfc9iowV
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(346002)(39860400002)(366004)(451199015)(5660300002)(41300700001)(64756008)(316002)(66476007)(66446008)(66556008)(76116006)(66946007)(8936002)(8676002)(110136005)(2906002)(52536014)(6506007)(7696005)(71200400001)(9686003)(478600001)(26005)(53546011)(186003)(55236004)(86362001)(55016003)(83380400001)(66574015)(38100700002)(122000001)(38070700005)(82960400001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RkhyeUUyVW1vYy9nUE9wRStWSVpuaXdlU0NBODN3VmNvckZib3J5bVdBUmJL?=
 =?utf-8?B?QVlDNkFqNEdIT28yV0czYlpYSENRMWFHdm56bm5DT21YRzBraWFGRnBUSXU5?=
 =?utf-8?B?NEN2YXBTTHJVY1VEaFpnUG1xcHVOemNlVjhVdGlHT2RFbnRzK0lFK3FxY00r?=
 =?utf-8?B?VzJwcFVjM05zWmh3V0xzbENvMWl6WnFuVTE3MUE2dlFXbGdmQ1lBUGZlMnJo?=
 =?utf-8?B?a29KNXMxRWFKUWR4VlhEMFU5aW84SHFUcmZhbk10WmVuU2tiS0R1dGE2MTNs?=
 =?utf-8?B?NUdVWGRvYmpwREhUd0o5dE81RGlxdFowaEp4dERRRlpsVmlGdzRRMW9MZ0U5?=
 =?utf-8?B?enI5b2pYa243WlpZZ05kMkNaRnUvUHpXekVId0dUQ2Rxb251eXJqWENSdk1X?=
 =?utf-8?B?U3F6VENKbk1XcU54OVJLNzdaZSt0eFJyWnZvMk9TdjZob3l0TkJlOUVrNmJ2?=
 =?utf-8?B?Slh2SnRBQnVrMjJjY25nMlNJUk1uTHRDNFZBTGQrYU02YlNpcmJXaytPVEV5?=
 =?utf-8?B?d0lZV1hQZ2tsbGRLNEp2cFV4N0s2NlBvTTVodk42VEtRaEJVVzBkL3dwYWc4?=
 =?utf-8?B?VWVOV2FnV05xejlzcEtRNWlBY3N6bTh6RTEwOXVFUDVOZGhCTENzUnpCOW9Y?=
 =?utf-8?B?Sk85aCt0U2tsRndjTUUxSGNBOHF1cmRDTjJiU0pQNU5TbnhaVjYxSHRIVk1M?=
 =?utf-8?B?TGJ1OW9CSXVPRkJCOGZFU2JSTVRJdFZpQ2VHdXhNbHd0QXUvV2RkT1lHRXVj?=
 =?utf-8?B?WTRYVFZjbXNDZ044Ujh1QXdmdUhDZkV0WG9tWUlSRW1WSC9qamtJdnp5TTRj?=
 =?utf-8?B?RytFZ2RkR2tIZHdNRlBlbWRWRUV0blhoVDUrNzU4ZGNzQVRFejNEVW9FL0ZQ?=
 =?utf-8?B?SHNxeHVnYS9nV3ZIczlrUHpiSHNhaDUxSnZMc1FZQjB3RmFCQ01QRnJ5UXRw?=
 =?utf-8?B?b1hoVjNNZm1pRmtYbFh6MW1VZFpTL3kycnlTVkRzT3M1YlJkL2RTSktOWDZk?=
 =?utf-8?B?UzV3WklLeVFiMjFUTlIxY0YxZ0huVllTU1VQeUdSUktPbFpMUWhOdWpyUDVt?=
 =?utf-8?B?SmRXNjFMekMvKzU1QzlOYjQydmJDV1UrekNqUUMzclJ5bmNOeVpLZWNTcmd1?=
 =?utf-8?B?eWtIaUg3dFU0eGZTOVhCT2h0QXpLQkhHOXhMalRuNXk5eVZTR3pHZVB2eEpT?=
 =?utf-8?B?K1lsUTBDTHI2L3ZWN1l6QjVVdmxUeHNEZU5HOG93TkJ1VHJUc2dOQkRZQ3Rs?=
 =?utf-8?B?MWFHeDlRbUdBNmlqUVNDdktwZzhoaTkzZjVpck1OMm5XVW1yR2JuQWJIRDBT?=
 =?utf-8?B?ME9sK3o4TjdQbnE0RGwwU09YdzBOeDFpQ2hEMXNSWDNhTVQ5STRMS0ZUY2N1?=
 =?utf-8?B?ZXJjRW1UVkNUTUpXYy8zcnFXVFI3QWdiSG1DdVY0aFBJaWNEMktjV0RpWTlG?=
 =?utf-8?B?MjdMK3BRZ2pDS0R2MEJiclpka2hiZDdMOXg2WmtkVnRydWZxQ0lKSnd0K3pD?=
 =?utf-8?B?ZUJ1aFVHWmJIZG5SNVVHWlFsdGV5QjBGZVhucnVZbi9lU1BDSFZENHRvbUVB?=
 =?utf-8?B?MzhvVUFscFRVNEJQYlhTNzZ3MmFkNGR6SHNTdWlVV2xRV09JMjR3cm5lQlh6?=
 =?utf-8?B?NWxGcWs4dFZHYUxQdnR5Ym10ZnRVSE9JREVrZGZiTjkxKzBERlNicGtRdjBT?=
 =?utf-8?B?dERac1lUYjVHMUF5eUluM3dxM2Mva2hxSGF6QlpoOEk0UTMzRHFGb2NITFZ0?=
 =?utf-8?B?cjRiUktQUnpCVmpaWHV2a0lQL0JzbWhTdFFhend4Q2JyT2pjOXFWdkFRRE1T?=
 =?utf-8?B?aTFNQWpJYTlRcE1zZ09leThWTE1aNC9Vc3JZcnJnZ25kTzNpaE5lOThvWCtS?=
 =?utf-8?B?MWV1MlArU09KRDRBOUFiZk5aSFBPSmlUK2h2TkM4dnFCR2R1S2poMHhEd09k?=
 =?utf-8?B?Z1FTbDV3VlIvckVwbk9tOUdGcU91MGVNQmRqejc0eEJXZHVaTHVVVTRaYTN4?=
 =?utf-8?B?Ym1GM1NjdURYRU9PcXRJcWU4dlppWjc1MWdUaUVtZUtKcGY2VjVPak9CL09q?=
 =?utf-8?B?dngrZG9xVHl4bk1XQTlhVGxHL1hoWnRZNXJZOEoxU29RVVJKRFhuM0ZZajJU?=
 =?utf-8?Q?oDEqjucogfIN43hcONdBzvltb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 07c1cd59-da12-453e-502d-08daee41d083
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 10:52:46.4585 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SxdFbKIorRDRnWMumSNui3JMJiY99vDtxJAAq5hH9ja1MmnjQGHyvpBODbTrZrFnU+9639KCQgEfuRTv3dWXdQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5509
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer
 size checks
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTYsIDIwMjIgNjowOCBBTQ0KPiBU
bzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwtZ2Z4
XSBbUEFUQ0ggMDQvMTNdIGRybS9pOTE1L2RzYjogRml4IERTQiBjb21tYW5kIGJ1ZmZlcg0KPiBz
aXplIGNoZWNrcw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxp
bnV4LmludGVsLmNvbT4NCj4gDQo+IGZyZWVfcG9zIGlzIGluIGR3b3JkcywgRFNCX0JVRl9TSVpF
IGluIGJ5dGVzLiBEaXJlY3RseSBjb21wYXJpbmcgdGhlIHR3byBpcw0KPiBub25zZW5zZS4gRml4
IGl0IHVwLCBhbmQgbWFrZSBzdXJlIHdlIGFsc28gYWNjb3VudCBmb3IgdGhlIDhieXRlIGFsaWdu
bWVudA0KPiByZXF1aXJlbWVudCBmb3IgZWFjaCBpbnN0cnVjdGlvbiwgYW5kIGFsc28gYXNzdW1l
IHRoYXQgZWFjaCBpbnN0cnVjdGlvbg0KPiBub3JtYWxseSBlYXRzIHR3byBkd29yZHMuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KDQpMR1RNLg0KUmV2aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFu
bmFAaW50ZWwuY29tPg0KDQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuYyB8IDQgKystLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwg
MiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kc2IuYw0KPiBpbmRleCA2YWJmZDBmYzU0MWEuLmZiY2JmOWVmZDAzOSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC05Nyw3ICs5Nyw3IEBA
IHZvaWQgaW50ZWxfZHNiX2luZGV4ZWRfcmVnX3dyaXRlKHN0cnVjdCBpbnRlbF9kc2INCj4gKmRz
YiwNCj4gIAl1MzIgKmJ1ZiA9IGRzYi0+Y21kX2J1ZjsNCj4gIAl1MzIgcmVnX3ZhbDsNCj4gDQo+
IC0JaWYgKGRybV9XQVJOX09OKCZkZXZfcHJpdi0+ZHJtLCBkc2ItPmZyZWVfcG9zID49DQo+IERT
Ql9CVUZfU0laRSkpIHsNCj4gKwlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIEFMSUdO
KGRzYi0+ZnJlZV9wb3MsIDIpID4NCj4gRFNCX0JVRl9TSVpFDQo+ICsvIDQgLSAyKSkgew0KPiAg
CQlkcm1fZGJnX2ttcygmZGV2X3ByaXYtPmRybSwgIkRTQiBidWZmZXIgb3ZlcmZsb3dcbiIpOw0K
PiAgCQlyZXR1cm47DQo+ICAJfQ0KPiBAQCAtMTY3LDcgKzE2Nyw3IEBAIHZvaWQgaW50ZWxfZHNi
X3JlZ193cml0ZShzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ICAJc3RydWN0IGRybV9pOTE1X3By
aXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShjcnRjLT5iYXNlLmRldik7DQo+ICAJdTMyICpidWYg
PSBkc2ItPmNtZF9idWY7DQo+IA0KPiAtCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwg
ZHNiLT5mcmVlX3BvcyA+PQ0KPiBEU0JfQlVGX1NJWkUpKSB7DQo+ICsJaWYgKGRybV9XQVJOX09O
KCZkZXZfcHJpdi0+ZHJtLCBBTElHTihkc2ItPmZyZWVfcG9zLCAyKSA+DQo+IERTQl9CVUZfU0la
RQ0KPiArLyA0IC0gMikpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJEU0Ig
YnVmZmVyIG92ZXJmbG93XG4iKTsNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gLS0NCj4gMi4zNy40
DQoNCg==
