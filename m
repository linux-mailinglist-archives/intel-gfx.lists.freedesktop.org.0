Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F367063F7E3
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Dec 2022 20:06:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BBE10E672;
	Thu,  1 Dec 2022 19:06:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D62010E672
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 19:06:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669921598; x=1701457598;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=lv9/iuPzCfhiIf0nrsR55vj0p8d4f1qG4VubRdvuF5Q=;
 b=DW64nXQvTaCZvTpbnnsHvJNiOz+Z7XFsjZrkXOJQxR9xUPmPA9WTjiEN
 UP5bjabOcLmeZ3w5adt+zDYJobIzoB3fj64koXy1ecEWqrOsht6N1xGNN
 r+fZxqF85IoHcCY/InWarT2YseMn4JkBqc8aen+vGHlq3P7vvh0Ohp31e
 HVq1ceyOhPcoy/meVvZwHAXMS8nxh6VjsvF4bPoRYKsCPn2SaPzxyZza0
 AvX1voLwNjEy0EOnu1ZWvJjegcdUN7qqxFMWoBf/Gbw0hNhPi1eBbgAKb
 FYRJAMgf/HoVHS+a+221Vud5Q0aktecsAz7D2qv9PCNZCIhMzZdn0Z77F A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="313410718"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="313410718"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 11:06:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="646876345"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="646876345"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga007.fm.intel.com with ESMTP; 01 Dec 2022 11:06:32 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 11:06:31 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 11:06:31 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 11:06:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T9b+Hk/zZBDIhQcly+++yntSjVqruOkPtH/YfRtmeUCkkMbL5VFZE3MW2UbaLkcMu/9RtJvAX9+ifV6Vk5NBL1pR+hKsTywgVpCbGConsf1rhruJ7ao3+iUTUouoIZD3sc+rfZlD/eeX7MWZ7dtaKBNARopc6qXwQ6UZFeT0GH145gf5EjfJkOdJ6/vIpFRLg4NmDOU0CK4SBL3nmuyeZRMGWNdJIzc6VvWXWpZeZfgkfxQt7DVbYaZilC9wenhox/cKO1+fqCrIFbt1nyC0kLfxlDo4l6tx3ty25kV1x9JXds4NUoQqn3AKIs07wmgglPGfNrK/ViQ0ZuqE0iUAVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lv9/iuPzCfhiIf0nrsR55vj0p8d4f1qG4VubRdvuF5Q=;
 b=co5t+OLVvxHqvmjlgrykt4H/drHj1ZmVt4rxepSNRhrFbQQUwK+r+nS0uM1T2QEA5DJDkRTcy5Ek3R+M5Me84L0yigHUFrN1trVhjR1XEaV54q8JicDg8uPaBYwZNBwuohYfxqZi521nZ0W5tzwEtQCuMl823vo/nMJOp+yme/Opq2mfqcH2mFj3RrW2LMGOzuJByEuqzXG25DLo+Du/pCCEI8qn1OwW6a+0Aj5dHwliYOAfvZHKjuskIpUmUQhv9jDOdqO0SKdbmuaYr+Z84ZZlvOvIF6FuXzLWsIWUPuhaVFJ3J4ZS+NGx2MkUAQTr9MogyXqYrDVh1ST3V732rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 DM4PR11MB6311.namprd11.prod.outlook.com (2603:10b6:8:a6::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5857.23; Thu, 1 Dec 2022 19:06:29 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6894:1dbc:4681:66b6%4]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 19:06:29 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
Thread-Index: AQHZA4nHZz/omAjLo0WDAgip6sYJSa5Wa+EAgAAuEwCAAJCWAIACPxwA
Date: Thu, 1 Dec 2022 19:06:29 +0000
Message-ID: <d431c48eae76fce327e8367e88ccfb5af528b484.camel@intel.com>
References: <20221129003152.3652072-1-alan.previn.teres.alexis@intel.com>
 <20221129003152.3652072-2-alan.previn.teres.alexis@intel.com>
 <Y4Z5ajHrt3hllvUZ@intel.com>
 <f7eeaed53842bdcae62e3fec9dc3fc879189afd5.camel@intel.com>
 <87lens3jxh.fsf@intel.com>
In-Reply-To: <87lens3jxh.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|DM4PR11MB6311:EE_
x-ms-office365-filtering-correlation-id: 03ed6d91-2742-42a5-3d8d-08dad3cf273f
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: P4W+q1N26iojbqEIZtNMaQ2Z5FCTizkRBHF/hy9htBFNegwf24wnf9hLkfQozeJbmpKfA5Lqcao5QgamSPbB6RmyCdzrjOyrk0y48cO+wMXVJ9z8XtxXRzVKoLDbEs4Ioxpt7raLToD5PFLzF6Em9SLUqEZCUTGxI+VGSxrgJgvjYclRDjC8T9r+pNqETkln69lmCmezGIeV/+lJlIxWNDsWFrhipvozd8OpzwQRSWH7x7QzXTM391PSDey9YrFTFqWEsk1OoLgOgc25NQ82kvesqVL+F9qchdrQodgMw7ibPf7ToZ3pzvL0JiKYDHDCwq4KDFm1YqZQpHchKZSjkmkTVlPj3jJvIQ+5wMaQj2twIxarsr0suBFww5hhFsZIfhty9/LImu1Q2s5IcYGKX1/LwhFiUA9boI4cPB+cMgLfvbYYMTa3OO0lM6IDUFTnigog69mj3vjUHIMrf7+VElqAKyCW6rMrQ9+hmDFmvISUkQc8u8Ceh2oZDHJQK+RLN16pS027kJnT0dULyRNIGhIzBnQ14txaVDWYi8mppZjrKVCcdd6/mPyZ93z/jf/WOtWR9ljYcNsKQzBCQg8DoaF/bOWsohr6v7kWkzTPV3Q2W+2Kzt2g5vXmJli8scY8i/1KbdFioY878zKM29judArZkxOUx+LsAHcvio7N+/mGJSk+RPp7Yr2fYav+Yr6Z8O4KDf8lrd0u5uXbWxZDxA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(366004)(346002)(136003)(451199015)(41300700001)(2906002)(6512007)(66556008)(64756008)(66946007)(66476007)(186003)(8676002)(316002)(6636002)(110136005)(91956017)(76116006)(5660300002)(26005)(71200400001)(8936002)(86362001)(6486002)(6506007)(36756003)(4326008)(66446008)(2616005)(83380400001)(38100700002)(478600001)(82960400001)(122000001)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?bTFacGVVOWVsTnlWQm9sTlhmTlhZdmtDMXVEc0Q2cmVQNml0SVU1STZBSDFF?=
 =?utf-8?B?RFg5RkRrUzAxRlZxdXMvT2FJcC9iVzJRVFpXV3pxMCtLelQvZy84WWtLR0ZS?=
 =?utf-8?B?ZGlpMHZGcjFDelkrUGtkZ2VIOTQ2U0k4U21wcGdxVU1GYWJ3a2wrU3laL1cw?=
 =?utf-8?B?eTlTTlBid0p5ZERNcmZJNTBPQTNKWFdlUFZkNzdZemxTSmFaT1JiN3ZVUjR4?=
 =?utf-8?B?aHlHOU8xMXF6RVNUMHRGeUNmYzFxall3QlVMVER4V1poOW5WL25keFZISzhw?=
 =?utf-8?B?OG9IK1lkTk5LbUc0SFdhdk42V0tUeWcvb2swbXljRFdFbWswOEVsWkpqTkp1?=
 =?utf-8?B?R2NESTAwajNkK3hmeHZwTk1wOEtCemxuNE5hRXkzSHltZmtJZFl2LzY2TnFF?=
 =?utf-8?B?YVQvcC94cDJIeTd6UG5jYWcyQ1ZuZmZVNHFMdEh0dDI5WldsUlJOQVNMT0Nv?=
 =?utf-8?B?S2pnVHNwUVFESU0zRWlROFNIWW90aHorS2hSNHBlUHFYVXJsYmdyb3pIRUhG?=
 =?utf-8?B?MURTaytNWENTNndXQVZEVE8wc0ttck00a0o5cmFaWGlGd2IwR0NrSWtORHpU?=
 =?utf-8?B?VUtTSHUzOWtTQTZ5eVkrQk9yMDFkRjU5eGI0dzdXMkpsdnZaMFd2bGh0STY4?=
 =?utf-8?B?azdhWmJ3VlU3SHpid1pNSk4wMUsrcXpCSFAyTUNpcG1ON0R5d0xMdWsxeHpD?=
 =?utf-8?B?djNMUk10N0lqSmVwUEhVOEg5KzdRVmxBOWNyWGZiN01sajNEYzdSSTZRc1Vs?=
 =?utf-8?B?NG4zQkovN2NwczZPK08vQWdrcklBUm5sWjdFT0dQY2E4UlFXT2lwVEVEVGE2?=
 =?utf-8?B?OHJ6WGRQeXI2bHNFV3FMa29xcTl0MnNWYlVWMUFiL0QzYlN3VzRQRkdEeUI1?=
 =?utf-8?B?MGl3THNGVUZoLzFnMStHamRTM1F6ZFIzS2M5bTNHdDRKN1BCeVNWY0RYVVdF?=
 =?utf-8?B?NEQzdUQwNTJMRndLMkRtVDNqSmF0eHl3cEhHMWFUa3hDaUtPSmk4RmZYblhH?=
 =?utf-8?B?cUZnNkhza0RlSnF5SGlLTUlWdmtXQ3VSRW1aWSttUGFubGJ3NDlKazRvS2Uz?=
 =?utf-8?B?ckRHVGJrdklhYUlVWG50SXRiY2JoaWVnZXZSN0RYVm1kOVdJbEpuR3hQZzdU?=
 =?utf-8?B?SlRwUWNORnBwTGVQdWY0bHB5eXJnZDhuQ2ZJempJdm9Ldk42MW1Ec25JVXNL?=
 =?utf-8?B?SGNrcGhGSXRMaDlWOGRTTHI3SXdXUjN4ckYrTmxlTUZTKzN3QXYwTUxOQThX?=
 =?utf-8?B?TGUvVmIrWVEvWUFlcUNEeEhWRDFFY2IwdmxGUGNSWkY2VDRXWlZjc1VCTlpB?=
 =?utf-8?B?clNHYmtieThGR1ZUZFo2ZmhBVkRWN21oakdLTld0QVV2Yi8zMk9MbVBVYUFU?=
 =?utf-8?B?UzNjVFFqb05TWDFvSHExYnpoclppN2NSRlhCYlFrQ0F1QUttVCt1Zm85YlhW?=
 =?utf-8?B?ckU0WHhUankwUkxqQVJEdjdDdHhsbUtGa0VHUEw0UEtwYnM5S2Z0V0hxVVJB?=
 =?utf-8?B?UXljTjFZN2xHcmoraE84eVVxWW4zSy91THlNaHZJRWYyeHdWbjIyWFI4YTlR?=
 =?utf-8?B?Wkxvek82Z1oyZ1RYZDhDWkZWMTFkNnp0bm9mc1pUbEcvSHNKRWh2a2lnK2FS?=
 =?utf-8?B?WUtvNVZKMHNRR2ptMUxWeEUrUmI5L0sraEFPTGFzMktmcTFiSzVxNkVEVllk?=
 =?utf-8?B?dzN1SzI3R3lFU3piejM3cEk4T3hrRXRBbUhWVDllNURGUkgrblhaVGF3SjBJ?=
 =?utf-8?B?ZEZ4NGtBM3JQbXROaHQyVnYzMm5IbjFjT3FBOXRDZVQxQ2xRQXhXaHFvUmFt?=
 =?utf-8?B?Y0g4dFFUeXlpL0xGUTVjRERYWmFrejdUbkY4Q1RzSCsvWVpJUFJySFZTM0JM?=
 =?utf-8?B?QlRtbitRcXczak5wU0w5cHk2RHROSU9TNEcyM2NQelhSaFIzMk9PN2x3RFl6?=
 =?utf-8?B?bnYrMUVrSVl0QUREdHdXV3h0NGdxdUtGcmxlZU1lNUMrOW1WMXhGaE55ZVhn?=
 =?utf-8?B?eUVySXFGck45N3cxaStKSWlnVDJlQlExSlphL3p0cG10RncwdzNJdW9MMVlr?=
 =?utf-8?B?cHU5ZjRzTUYrU2VGdGF3TVRTdWllaDNJNlZuNFE1NHBadmV6TzVxblBsa2dH?=
 =?utf-8?B?ZEFkaGhNb1E0Yk9BbGVVMGRBSmJ3YTJWMERkMVJvL2F1VVNFQ1AyUy9uYjhR?=
 =?utf-8?Q?SpwVftFBPYDDamVnpQ/eK9Q=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <35419374707C6241AD10E798DA85F0AE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 03ed6d91-2742-42a5-3d8d-08dad3cf273f
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Dec 2022 19:06:29.6024 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yNEHbwc55V5F/1yBrM3AoidRrke9Rx6ArI4v44zAxkh5NKsN1kiVd0M5CTw62LjTaUXXecc+VRW/ylfd6HzuAlG+pRroZHCM3RXMTV+Ky9iAo8ofgbps8XuJc47NQw2X
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6311
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 1/1] drm/i915/pxp: Promote pxp subsystem
 to top-level of i915
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gPiA+IA0KPiA+ID4gUGxlYXNlIGxldCdzIGF2b2lkIHRoZSAqKiBoZXJlIGFuZCBldmVy
eXdoZXJlLg0KPiA+ID4gDQo+ID4gQWxhbjogSW4gb3JkZXIgdG8gdG8gYXZvaWQgY2F1c2luZyB0
aGUgZW50aXJlIGRyaXZlciBpbnRvIGEgcmVidWlsZCBiZWNhdXNlIG9mIGFueSBjaGFuZ2UgaW4g
dGhlIGludGVsX3B4cCBzdHJ1Y3R1cmUsDQo+ID4gdGhlIG9ubHkgd2F5IHRvIGFjY29tcGxpc2gg
dGhhdCBpcyB0byB1c2UgYSBwdHIgaW4gaTkxNS4gQnV0IHVzaW5nIGEgcHRyIG1lYW5zIHdlIGFs
bG9jYXRlIHRoZSBtZW1vcnkgYXQgaW5pdCB0aW1lIGFuZA0KPiA+IGZyZWUgaXQgYXQgZmluaSB0
aW1lIGFuZCB0aG9zZSAyIGNhc2VzIHdvdWxkIHJlcXVpcmUgdGhlIHB0ci10by1wdHIgdG8gZW5z
dXJlIHdlIGdldCB0aGUgY29ycmVjdCBzdG9yZS4gVGhlIG9ubHkgd2F5IGkNCj4gPiBjYW4gYXZv
aWQgdGhlICoqIGlzIGJlIHBhc3NpbmcgaTkxNSBhcyB0aGUgcGFyYW0gYW5kIHRoZW4gcG9wdWxh
dGluZyB0aGUgcHRyIHZpYSBpOTE1LT5weHAuIFdvdWxkIHRoaXMgd29yaz8NCj4gDQo+IEluIGdl
bmVyYWwsIG9uZSBvZiB0d28gYXBwcm9hY2hlcyBzaG91bGQgYmUgdXNlZDoNCj4gDQo+IDEpIFRo
ZSBjYWxsZXIgdGFrZXMgY2FyZSBvZiBzdG9yaW5nL2NsZWFyaW5nIHRoZSBwb2ludGVyOg0KPiAN
Cj4gc3RydWN0IGludGVsX3B4cCAqaW50ZWxfcHhwX2luaXQodm9pZCk7DQo+IHZvaWQgaW50ZWxf
cHhwX2Zpbmkoc3RydWN0IGludGVsX3B4cCAqcHhwKTsNCj4gDQo+IDIpIFRoZSBjYWxsZWUgdGFr
ZXMgY2FyZSBvZiBzdG9yaW5nL2NsZWFyaW5nIHRoZSBwb2ludGVyOg0KPiANCj4gaW50IGludGVs
X3B4cF9pbml0KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1KTsNCj4gdm9pZCBpbnRlbF9w
eHBfZmluaShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSk7DQo+IA0KPiBQYXNzaW5nIHBv
aW50ZXJzIHRvIHBvaW50ZXJzIGlzIG5vdCBhcyBjbGVhbi4NCj4gDQo+IEluIHRoaXMgY2FzZSwg
SSdkIGNob29zZSAyKSBqdXN0IGJlY2F1c2UgaXQncyBiZWluZyBjYWxsZWQgYXQgdGhlIGhpZ2gN
Cj4gbGV2ZWwsIGFuZCBpdCdzIHByZXR0eSBtdWNoIGluIGxpbmUgd2l0aCBldmVyeXRoaW5nIGVs
c2UuDQo+IA0KPiANCj4gDQo+IEJSLA0KPiBKYW5pLg0KDQpJIGxpa2Ugb3B0aW9uIDIuIEFsc28s
IEkganVzdCByZW1lbWJlcmVkIEkgdXNlZCBhIHNpbWlsaWFyIGFwcHJvYWNoIGZvciBndWMtZXJy
b3ItY2FwdHVyZSAgKHdoZXJlIGludGVsX2d1Y19jYXB0dXJlX2luaXQNCnJlY2VpdmVkIGEgcHRy
IHRvICdzdHJ1Y3QgaW50ZWxfZ3VjJyB3aGljaCBvd25zIGEgJ3N0cnVjdCBpbnRlbF9ndWNfc3Rh
dGVfY2FwdHVyZSAqY2FwdHVyZTsnIG1lbWJlciBhbmQgZGlkIHRoZQ0KYWxsb2NhdGlvbikuIEkg
ZGlkIHRoYXQgYmFjayB0aGVuIGV4YWN0bHkgdG8gYWRkcmVzcyBKYW5pJ3MgY29uY2VybnMgYmVj
YXVzZSBpIHdhcyB0aXJlZCBvZiB3YWl0aW5nIG9uIGJ1aWxkIHRpbWVzIHdoZW4NCmRldmVsb3Bp
bmcgb2ZmbGluZSA6RA0KDQpXaWxsIHJlc3BpbiBhY2NvcmRpbmdseS4NCg0KLi4uLmFsYW4NCg0K
