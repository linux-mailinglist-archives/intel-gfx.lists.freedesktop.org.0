Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E10263F853
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 20:31:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAA9110E155;
	Thu,  1 Dec 2022 19:31:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C8CF810E155
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669923087; x=1701459087;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=R+/0pjXl5iCBMwp5jh8l5jWzP5ZxQMpQFnefhz21Kb0=;
 b=Neg2JLzu42XT1SXAZ1Do/TDDOIt4jo0xwMKFVJp/tbCyaVyVTOO/88iC
 EUSD/vZNP8z8jzUVywrVeysi7n9VReSyxzwm4tHG15AMou7brUsZKSRl/
 PbmQF5kbpwJuu0BygZp+A0JjiA2+4TMBe272kGjQRldaWYBZtkPePBBmR
 MEtH2KO0w69cXMS8nS6amKBy2Y9AtDDGmFa8cFxDyNYmS3IKjF5QNJyDF
 kXMnE8IdhEltO+6uRlAUG9t0nQfp4WUVUAuWtA3mbz3/FHGs6JZ1OgxGG
 Srjc6slnK46DFIMYOnvLDZfpXnpCIey4ouu1Lzt4SzT+mTaJAWrolt0da Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="402058251"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="402058251"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 11:25:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="595190094"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="595190094"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga003.jf.intel.com with ESMTP; 01 Dec 2022 11:25:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 11:25:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 11:25:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 11:25:40 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 11:25:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJ712wBirH8Swp0l2a3NGYEJyBoH6C5Wv1FpkKNBN5V9u1QaK1tPKkRw+qIkx0XUTOwkAMkXQqZSAviZJkmn4ltgP7FzyY1dtY2uPSXNkXnxkYOjg3d/lJ+Er2Whi9wQlxMXHC3zjMW52yjNXlb6e+jNpC4kEI/ePQKaDTLiR6J32SqDg31oNlNQhsYZBX+gPjdE3rbafWOyGWCZ/q7qOCeZ+u32rO3E1ZGlMc4ZJAJiOf/Ad4iWfuIJTNSBBdYO8fGJutiE5fYpQ2REaQApYKbM01g1ry9vE0zhEGekYzu9mYDpK1uMe2oD2l4h4nyiPvw2tY16ztXeP6WOTew7ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R+/0pjXl5iCBMwp5jh8l5jWzP5ZxQMpQFnefhz21Kb0=;
 b=H2sXagqt/nobqxnSEggYKfoDKja/Pzw49zHPbgt6faoAMEJrZScYeKjBif8h9lV/3yTjDAtMvidoKD9bBPugo33/koSANF5c3LAmmMAtT7TVqZ/hiiVD6MQznKF/sxh21UFS/sR994V0x/SfGPpkiZBkpjuaZjdqF7Gw9zV71ngFxB0NrW7Io15d1rc2oYcGjna3HihAYZIQkO3wRAMg/vvz1ibhMtZ2GhWOVIOESq9r/6CO+NKJUsaoZTGuswgwqpZIh+wQF3E8aX8lqg1pB32O7q/BlWy4CsLvpx3cls8P5BvZaY5feycsXkp83jhh8+YPPbGePib6RfOA4ZvSiw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM4PR11MB5374.namprd11.prod.outlook.com (2603:10b6:5:395::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.8; Thu, 1 Dec 2022 19:25:33 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 19:25:33 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2VyaWVzIHN0YXJ0aW5nIHdp?=
 =?utf-8?B?dGggW3Y2LDEvMV0gZHJtL2k5MTUvcHhwOiBQcm9tb3RlIHB4cCBzdWJzeXN0?=
 =?utf-8?Q?em_to_top-level_of_i915?=
Thread-Index: AQHZBK3T5rqdwHz7h0SaeADwmWXy6K5ZbLGA
Date: Thu, 1 Dec 2022 19:25:32 +0000
Message-ID: <c7461261fd0be882f7db295137cf79fbdb435c8c.camel@intel.com>
References: <20221130020245.3909555-1-alan.previn.teres.alexis@intel.com>
 <166980724791.2880.15961323416952448626@emeril.freedesktop.org>
In-Reply-To: <166980724791.2880.15961323416952448626@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM4PR11MB5374:EE_
x-ms-office365-filtering-correlation-id: e5febed2-1202-4442-cc1b-08dad3d1d0bf
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jrWBRgEB8vwGcYmeLF8petbxrVhGLVg8ujSjZ9UBhPQDi4j+uVuQiaw1EJk7EsCbbA+DMpLDZh4N3TmkXk5bB4YSsennprqLg/sfjIgUGL61y6zL4+hiKxWRKRZEjk9wR3Tl9QIeUjIQ2a18Fua0JjHCmaN9S5xIWHvUDTZcYB6bQh/+UNyL0VQAJW3VcYpeMcp2c7+OOXJsvQQ7w/2AVjwQrAF6QUIs8FdOi5gG2O1kbk24DAgocBKtKAm4piT9zyx6K9A19w/EVcasCEyoQoxSAnQW+NdqqCUPownb13PVQ0MqGsuJexBy2+LwNog3ipDgYEenbDWRWMuEaCVftelw++ne3JCZVxMfs2jHntcC1yzZThRKLBRuaFDRDEje3De3hswnAk+Nq5IdODi0WbXinYgdMQf+2yGGyA5FxiEh7MBC1mv2wPxzANFnCqkxgwApeAaEm6XVrK1BrSrJEdPUWEol37O5XYMccXY9Klfj0y2Hy03chBll17wy5chNxneajVyJYY1HMLXV7+U2C12Pi8vzRhHQx/7fbwmnHI8AYzb4tUTFtvJgA0ptivWYF9QlvMHnFwNcoJcfUXrL0TF7zR79tuyEiWfBAfEFUywosImN3IIpdv5RSKk/xQLY6Km908jR9i5f8aRwSEbmZAcq/DW9rQSZrMECOrnaX3HIIg0l+c0RaK78E2DzpCGOoku8Zo/J1IvwvQgmFsRNbLaBBCU29SN0qPASR+TDn2k=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(366004)(376002)(346002)(451199015)(38070700005)(36756003)(86362001)(478600001)(6486002)(966005)(6512007)(6506007)(71200400001)(82960400001)(5660300002)(41300700001)(8936002)(19627235002)(6916009)(316002)(2906002)(66556008)(4001150100001)(76116006)(64756008)(66946007)(91956017)(66476007)(66446008)(38100700002)(26005)(122000001)(186003)(2616005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YWJWRE5vSFNOcEdtTDM0anJ3NUhhMXVVZDQ2aFpzTy9rRW5zSXZnS2ZrRkV3?=
 =?utf-8?B?cTd0Z2pQUU9FUERjaFlFNUFDc1FEZmtsbVJzRFhQT2dybGc4SWdYTTh4M013?=
 =?utf-8?B?ZUhwVUhtUjNrcEY3QXd0dmJBRktMeVA0VVpKVGFSQmxaN0RvelBOZU91UjhH?=
 =?utf-8?B?Z2YwUE91bk9xd3ZEM3dLdEZRZ2F5ZEw2cnFscDBmUC81cllGb0pTd2ZJMS9E?=
 =?utf-8?B?dkR6eEsvS2lCR2FGbXBnLzhJaCtEVG1xUTFCcnpPajQxWkE2ZDQvamhLcEoy?=
 =?utf-8?B?YU5tTVNpT2wyVVhXRDVIWE4xL3locUNMY3RBclgveDJwS05JRnQyWjlFQnR0?=
 =?utf-8?B?K3N6Z3d5VTB6NFRrMDF5eFFnRWJ1RGUrRVU5M2tETHNDbmJwUzZkVlRLQ3pL?=
 =?utf-8?B?VnJna2dsR0RzU25UMnBNbVg4LzgzVkNhK29scnBaN3hFK1V0ZGdQWDFaNzRZ?=
 =?utf-8?B?dmpHdnc3ekx4cC9pRDdrOTUxR3pNQmcxN2pWQ0FTRzRuSk4vWnAwM3ErN2sv?=
 =?utf-8?B?WWdWRmRTWkJXRkplbnBaVzNpWjNFTXlzdmFZNkZvVUdhcUQ5RGhFaVU2UEJy?=
 =?utf-8?B?QkxnUTlvdm40cHZxTkRkaWJxb3NMc1hxTUhwNmxxazFaVjE0K1NZYjFHdDJ0?=
 =?utf-8?B?empESEpLVWJuQ1RMODBlMHUrOWg1T2RaSW1CNndrbmppNDhGMFZJZ2dkVk5z?=
 =?utf-8?B?b3dGaG05U2RaYWNEVEtqbC9uK3lsSWFKTlh3MWNKVDYvN2NjblUvTjljUVdH?=
 =?utf-8?B?L1RzWW5vUFg0clVsaDkyUmxJdEcvNWU2SVhsakE5U0N4eW9wdW56Q05DdDZZ?=
 =?utf-8?B?ZHRLT1NHbTRNWkg4K1RyN1hUc1YyaXNlQmd6RFhpc1FiRGlIajJVNDQvNS9W?=
 =?utf-8?B?T2NzV2NTdXRpTW5CVXQyc1crNC9RN3Uvcnozd2NpcTBCdWY5OEpDWlJsY0px?=
 =?utf-8?B?Z09MVHdvK3VseE5PZThzU1M5b0tsekRlQjFKNklSME9NQ3ZKTkNUZVBoM2pI?=
 =?utf-8?B?bVhoSWE5Zk92cGZveDhhMk41YkpPcjVHTWpiZmovYmNqS0xoc1dXVXJrRUho?=
 =?utf-8?B?TTU4ckxva0lmcEd0WFhMR3Q4VG5OWXhYdDFkcjZRNThwUlRya0NvNnNrdDh6?=
 =?utf-8?B?bnVERW9DN1JSck1FNWVodDVYd3dXS0UwQy9sTW1zdnRud29sUWZCV04xQnA0?=
 =?utf-8?B?UHJ5M25senZERlBPUGdYOE1FNFdkVk1DUC8vS0FyM0VNRlNza284cnlFWjBJ?=
 =?utf-8?B?MzhPRi9MTmxyR2JSQnFZbUNSK2d1eTBJajZ3cjlGcFpsU2hxQktLZ2ZHdnds?=
 =?utf-8?B?RGIzM053ZERrWDh4Qy9ZNFE4WVdQc0JWZTdtZEd3dFZGNFdCcFk5V2l4dkNL?=
 =?utf-8?B?TXdUVGdKTnVqeUxwSWEwSjVOQllZUEFOa20wdmRLSEloZGZmRVRaRTgydDJZ?=
 =?utf-8?B?dEVacWxJWlg5MjlOdUdoRHpzN25LdldTMHlzZ1hlQk9VcTlaRTZRTC9jbmNE?=
 =?utf-8?B?NXIraFZ2d0NjeWNHenFjTU16SVVvUnBLemY3OVhIZjMwZFpYZ051WW13WW05?=
 =?utf-8?B?cTJESHArYUh3MElhRDhiblpJZStxOU1XSHFBOXVCcnJxb0k4QmFPV3EyT3Bw?=
 =?utf-8?B?SzR6dWMvck9vcGRLb1cwdDZuWi8wVU43VlBFajR5WHBra1VreHJyUjR6Um1a?=
 =?utf-8?B?TWJreTBXcHZsaHhKMGZOTXpZVUhnZjN3cU1qbTk3cGlwMFQ5emZIQjkrSGIv?=
 =?utf-8?B?N2FNY1lxcnViQjBXczBDRHJabHRlTjV1TVRzSkRQU2QyY1owUE1Xc2ZGN2JV?=
 =?utf-8?B?WDBlcmxiaFY1Qjh0azhOUW5pakorMGxCYzBYNHVMV1JwKzdyRkdUT0JSMkJX?=
 =?utf-8?B?Z2NPVUxGQkcxakhUWm9jRDkxcFFMbEI4MTNEVHphZWpCM1ZpWExreFdRSW5a?=
 =?utf-8?B?VDU1dDdxUnNjM0l2Zm81U1VQMCtIaG1oQ0pWaTl2YjJka2E1ZDVsQkk4YVpa?=
 =?utf-8?B?dk5BV0VvMk1uQ0tSSGoxMU0wNTBsaEFEQ1ZPZm5FRXpTUlgrUlFpblBPOG5O?=
 =?utf-8?B?aHc1dHY3dEs5b2ZiR096ZmsrMEVpVXJMUDg0NDlrVG1DbVFiaWNMRTErOWFY?=
 =?utf-8?B?dE5BL3U4UWFHWDQyZk16a1RVemo3enVqWXJyN3V5YlVmMHdPR0hyWG9ZSVlK?=
 =?utf-8?Q?ZHfPNllOro/tnRidkbzjJYs=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4CF38E0AA2F5434C92D8A1F2F528B019@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e5febed2-1202-4442-cc1b-08dad3d1d0bf
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 19:25:32.9733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xW1IFKR7RPFVTkN7UJzCtH48leoo98vFX0kOW9/2kDSzS4Tgh95qkld0x1BlW1VKhRZwxmiJS6s8Pne7cbdrogB0uemfYnhluqCi4aTM2ebGR1jWtMe8hT4HHdppPCs/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5374
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3Igc2Vy?=
 =?utf-8?q?ies_starting_with_=5Bv6=2C1/1=5D_drm/i915/pxp=3A_Promote_pxp_su?=
 =?utf-8?q?bsystem_to_top-level_of_i915?=
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

DQpPbiBXZWQsIDIwMjItMTEtMzAgYXQgMTE6MjAgKzAwMDAsIFBhdGNod29yayB3cm90ZToNCj4g
UGF0Y2ggRGV0YWlscw0KPiBTZXJpZXM6IHNlcmllcyBzdGFydGluZyB3aXRoIFt2NiwxLzFdIGRy
bS9pOTE1L3B4cDogUHJvbW90ZSBweHAgc3Vic3lzdGVtIHRvIHRvcC1sZXZlbCBvZiBpOTE1IFVS
TDoNCj4gaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xMTE0NjMvIFN0
YXRlOiBmYWlsdXJlIERldGFpbHM6DQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVl
L2RybS10aXAvUGF0Y2h3b3JrXzExMTQ2M3YxL2luZGV4Lmh0bWwgDQo+IENJIEJ1ZyBMb2cgLSBj
aGFuZ2VzIGZyb20gQ0lfRFJNXzEyNDQ5X2Z1bGwgLT4gUGF0Y2h3b3JrXzExMTQ2M3YxX2Z1bGxT
dW1tYXJ5RkFJTFVSRQ0KPiBTZXJpb3VzIHVua25vd24gY2hhbmdlcyBjb21pbmcgd2l0aCBQYXRj
aHdvcmtfMTExNDYzdjFfZnVsbCBhYnNvbHV0ZWx5IG5lZWQgdG8gYmUNCj4gwqB2ZXJpZmllZCBt
YW51YWxseS4NCj4gSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90aGlu
ZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+IMKgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTEx
NDYzdjFfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIGFsbG93IHRoZW0NCj4g
wqB0byBkb2N1bWVudCB0aGlzIG5ldyBmYWlsdXJlIG1vZGUsIHdoaWNoIHdpbGwgcmVkdWNlIGZh
bHNlIHBvc2l0aXZlcyBpbiBDSS4NCj4gUGFydGljaXBhdGluZyBob3N0cyAoMTAgLT4gMTApTm8g
Y2hhbmdlcyBpbiBwYXJ0aWNpcGF0aW5nIGhvc3RzDQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXNIZXJl
IGFyZSB0aGUgdW5rbm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGlu
IFBhdGNod29ya18xMTE0NjN2MV9mdWxsOg0KPiBJR1QgY2hhbmdlc1Bvc3NpYmxlIHJlZ3Jlc3Np
b25zICogaWd0QHBlcmZfcG11QGVuYWJsZS1yYWNlQGJjczA6c2hhcmQtdGdsYjogUEFTUyAtPiBJ
TkNPTVBMRVRFDQo+IA0KSSBhbSBwcmV0dHkgc3VyZSB0aGlzIGlzIHVucmVsYXRlZCBiZWNhdXNl
IFBYUCBpcyBub3QgZW5hYmxlZCBvbiBTS0wuIFRoZSBjaGFuZ2Ugb24gdGhlIGR5bmFtaWMgYWxs
b2NhdGlvbiBvZiBweHANCnN0cnVjdHVyZSBjYW5ub3QgYmUgcmVsYXRlZCBlbHNlIHdlIHdvdWxk
IGdldCBtdWNoIG1vcmUgc2V2ZXJlIENJIGZhaWx1cmVzIG9uIGFsbCBub24tUFhQIHBsYXRmb3Jt
cy4NCg0KPiBLbm93biBpc3N1ZXNIZXJlIGFyZSB0aGUgY2hhbmdlcyBmb3VuZCBpbiBQYXRjaHdv
cmtfMTExNDYzdjFfZnVsbCB0aGF0IGNvbWUgZnJvbSBrbm93biBpc3N1ZXM6DQo+IElHVCBjaGFu
Z2VzSXNzdWVzIGhpdCAqIGlndEBnZW1fZXhlY19iYWxhbmNlckBwYXJhbGxlbC1iYi1maXJzdDpz
aGFyZC1pY2xiOiBQQVNTIC0+IFNLSVAgKGk5MTUjNDUyNSkgKzEgc2ltaWxhciBpc3N1ZQ0KQWxh
bjogW3NuaXBdDQo=
