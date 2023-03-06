Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F7DD6ABDFE
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 12:17:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FF8B10E231;
	Mon,  6 Mar 2023 11:17:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F04EC10E22E
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 11:17:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678101464; x=1709637464;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1WOQbo1GZAz99rN3BNu6+QgDvUfO/nkfHmKwCqKf6h4=;
 b=R0uwxzFir8luJkRSV710AqF0Tjs2gE+d+fM8IAvM+Hjfvkalk7CgJbbs
 c9ZX7jzv2a3pyWufNOVQb+BDVf3wSclvoFT1l/qHaeuU6+D3CRhQtSTnh
 /0qwawVuvnzHXh0eIUVciYnfBsa7APyM8mRNxf3BRpd4tG3qzbetzUdFz
 PMQ90GLPvi423XMAg0DScFjjQQ62RE18OVK8SIXRU8J7Zc2DMpRusL+34
 wcnutF7gnS2EFu49dwoSARwI/Mg5qdpIPGagTnEE08ttXHXZsT7JSwbLL
 hl4fUKRpS67A9H3t9WXsYI5HeZo+v3prkZWo40nUshdMK4VrVG5Ip4E0c g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="400350199"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="400350199"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 03:17:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10640"; a="678436841"
X-IronPort-AV: E=Sophos;i="5.98,236,1673942400"; d="scan'208";a="678436841"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 06 Mar 2023 03:17:22 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 03:17:22 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 6 Mar 2023 03:17:21 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 6 Mar 2023 03:17:21 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 6 Mar 2023 03:17:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d25BbIZZBVXOi/mUiJbF9s7+1U78QPhCMdPP3TxHfOVhQxtNylOC/eV98nIuyUdTLBypCX6EUoqJV56f+G5t0vqYR0MJc3y2In2KH2ptlOFrdsUrcRY5colWsTGHLnsQ9RveOducZlR44eYTnbqfbK092LVBcVQ333gd5NkWdUCuQIIvqNQ3WO04tkc7pHJ52MUTTNsVfHYa5V9N5IHf8bGnhxk2d/F9B16RZRjm4RRq/1ybLxXjYq/i4ynnpsRzVu5UsW7xnu0tJf/xK/5ychq29N//m019XKSAg0nnhIWkbArra9FfySJnTERSrIt9RapAaW4qeyCeIsnobJe0eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1WOQbo1GZAz99rN3BNu6+QgDvUfO/nkfHmKwCqKf6h4=;
 b=gQHNwbdvsF1OuIbiIo2Q3ahHfqTtxPWSzQ9TXmvRs/KU72pYO0woQX7oJwH7J7cduyfkoBpWKmEypCOB2wC+M0jgbE9R48VGxoz/QjGA+YMrXtcnumdrWicm2+GdOQ4VWhZXM1vcWhw32/kHcfT6eeZ4Plf7/73o4QPtDih9sqJ7ceEVBS/v884Nwla9UrvjGDCKvq+sdGKxuqtEFZ+5esC3L6RhlY3TUSOHFFLknZy9CCjmPmZ1mSh22bYZmbeTvEQjVlN4et0IvZQtuJLczqX3msSMAvWyockT9bvLnuizhl3aXHxtlS4zSe3CjmtixTPXBnXt+JBn2z11KMolFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN2PR11MB4680.namprd11.prod.outlook.com (2603:10b6:208:26d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.23; Mon, 6 Mar
 2023 11:17:14 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::f677:36e:9fae:b45e%5]) with mapi id 15.20.6156.027; Mon, 6 Mar 2023
 11:17:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v10 1/6] drm/i915/gsc: Create GSC request
 submission mechanism
Thread-Index: AQHZNhzko7YJCBODwU62v3zoRhBLIq7tsS2Q
Date: Mon, 6 Mar 2023 11:17:14 +0000
Message-ID: <DM4PR11MB636077F835BC611A09283EEAF4B69@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230201090806.3008619-1-suraj.kandpal@intel.com>
 <20230201090806.3008619-2-suraj.kandpal@intel.com>
In-Reply-To: <20230201090806.3008619-2-suraj.kandpal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN2PR11MB4680:EE_
x-ms-office365-filtering-correlation-id: 321e70b9-ae90-4a50-d579-08db1e345683
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MeILHsHV5ebfG3GSvYpYSMWI6bmg2o6zUQjKtHt2bPaftHdAKVh2hST3eovViCY/B7aGZ7QI8sJbDIDM7mYF/rKluVxvMff65xdtMyhR65EMcRMfnQgJ8Yv85UuyoqWEa/iWsVRbskqUVRDywtzSzrDAE8nwxMJoyEdpXlPx4E6jziGnDNmqJXKM8DIdTYDUNjzOZ3+YsdEOu+ezOnPxmCfrI5YsAiGnChNZzbB2mBh2ueRdBGGkdrWDbPP/SBDV/Uzh8PKOOfcqP1rIKLnmAqfF5vIbPBn10iuhSIAIQ6JCkeTfZfRKkWzhJ/uuL3a0ycXc9fg5K6q+/1OSXvO5C7BsnQNSVsQonXvNGo9KpACYVv+hUfWa97L5To/Foze6IguVP0JOZbMacoNxRQaq0Dfg1iOiNH/qqMb7vthlw+V51+OO1uNwvndt/yEIcwNGpIgV73m6gZmJAFC3GR/ZTSCeefAIGyirGktBhFsbxwjRXuSMZZxet6WF3MeMh7OjstasbuyzCcopW7LXtixvmqRqN/7gNAeYVD9LXkNcG5NcP1KKvLh4snqWjhpW7fQ7PvFau8CBlExmuo210lXHLPaPaQaj1DWoXGiTgx8OpfnoY3DfaOgzcc6DMMM8opbNPYxCn7CcD1OOwAN+gjwZOV8X4AgFe8JMYR5v6e7H6++QDak5CYC8aTFBeCzo2k/vj8BjB8hZfgBoRTyD737YVg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(136003)(346002)(396003)(366004)(39860400002)(451199018)(64756008)(76116006)(4326008)(8676002)(66556008)(66446008)(66946007)(66476007)(83380400001)(26005)(186003)(9686003)(7696005)(316002)(107886003)(110136005)(53546011)(478600001)(6506007)(71200400001)(33656002)(55016003)(82960400001)(122000001)(38100700002)(2906002)(38070700005)(86362001)(41300700001)(5660300002)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RG5uNEhxamx6elU5ZHJ4NVNoTDJLN1RST0I2S244VWlXbUUvbDdjbmZjQjk3?=
 =?utf-8?B?YWxxODlVZ0JaMkx3MkxJUHNjK1dqbVczclVDNXpVMXM4aHRGVURVNDJ3d3ov?=
 =?utf-8?B?clZhTFAxWHVXREswdDVPQ0c1blNZQmRYK0xqbGp0R09vcUtpQ0lYQ1lSS25R?=
 =?utf-8?B?U1ZhRldWN2hpWjYwYnlOczdvdFR2ejRRVzhIQUYyczUxR1YxdVY3cUEraUNH?=
 =?utf-8?B?RkxPd2lWT1ZiSzlkQ0g5cWsrSm0vVmFMa3VHQWxwa3g1cEFDbmliaS9jd3pT?=
 =?utf-8?B?ajVuVzBMQ0QxRml0aTF2ajBPNW5FanIyR1h3N1pzUkx6YkVjaFZNNE53MW1q?=
 =?utf-8?B?ZEVRdFgzdzl1WDBycE15STZId0VqUGh0K2FRSlNwZHJkWU5QaStkRWFUOGpP?=
 =?utf-8?B?VGEzTThNQWxDYVhpblNjVFRLU3FkN25BSUREdU1KUkpVZlkzVWJ0S3dBR2VO?=
 =?utf-8?B?Mm1LRFBtam11K1Y2ZlRjRU5wc1J1aW9Meld3a1VMRkxsYXhWTnlndzR3ZVVL?=
 =?utf-8?B?M2w3QlpNOWU1d2NnSU43cUlob3pURXNIMU5qQ0lieERxNWhpT2lVVFd4Vm54?=
 =?utf-8?B?d2RPRmZIc0xpSkorbzdxenBSc2FWNDMvOVYrREd3a1hLQnhPTWFQUUhuV3c5?=
 =?utf-8?B?eHF3eU9LRHpXemlMOEg2ZDFyMGJnaEJVbTJUU2dmRkk0dmNSRmJvR0ExcmZ1?=
 =?utf-8?B?ako0MEd1MUIyNU1VYjlmMnkvdG5maDVxSTVTZTFremZpVUVjSnl6aVFpc3c4?=
 =?utf-8?B?R3VPWlJCS25wVlZzNzVxc1lJRUlwQitjWEgyNXRzSWduQ0VhN2tUaDhHbzIx?=
 =?utf-8?B?bnhua2NNdmc0Mjg0MEJKd3FpRmpsUjJ5ek9kZnR2T1lORU9PamhsSWlwN3Iw?=
 =?utf-8?B?Tkp5a1luVDRUVmMrWVRQU1RBSXBKYWd1SE1lM2VZQ0hScWI2aEZyRG50SVVO?=
 =?utf-8?B?aGNncEVoUmRIanQrM2hVVWZCVDkzQzNmZnBIQTBEanUzNUxMQnJtTzVaV1Ax?=
 =?utf-8?B?ZUorTzF0b2VzOFdQcTJzc2M5R1hDZGdZUE1GWWVseERLTXl5QlBMcjVtU1R1?=
 =?utf-8?B?Wm1NS2RUYUg1NlpTK3RLUUZDb2QvTHN4cjZjM1FDUi9QQ2MvK204dlJCNHdo?=
 =?utf-8?B?MUV5ZzZqV1JsSm1NSjBsb2szNWhFUVZkM2ZZTG82Q3ZQckZoK3NtQ1krU3NS?=
 =?utf-8?B?SisrcWFVNS9zeS9PN0dnNy9UcU90VlU2YjRIZVYxUUNIUmJua3l4V04rakVU?=
 =?utf-8?B?cUpxWXlKZm9nUUMrYXRVc1VuMlZ4R2F1aXE1QkZVZnRENWhzNUxUNW9FMjlR?=
 =?utf-8?B?MkUyTUVoRVdXMnZUb3JjM0NTVlNBdVZyS01aSk1JNE9yaGR4eFc4RGhrMkt1?=
 =?utf-8?B?bkNuLzZ3RGMwVkhQenpUUG5XZ1E3MnM2cVpta3EybFhVVVRiZ3ZORnBkVFVi?=
 =?utf-8?B?c0VBcUdaK0FINmtlSjJPdzdWL3FtMks5V2k1UG51TktyaWNIcFZMMnBCci85?=
 =?utf-8?B?VVRMV2ZVa2RZZ2E0S2F6RDlYVHZ3SWNYVWRLM3ZZcllHYjVPU3gxMmd0T2ta?=
 =?utf-8?B?VTZEQ3Vic2JMUkl3RUJWMktVMU1ucXg3dUhlUXBZenZENUpWS2hPK3RkMWpX?=
 =?utf-8?B?UmFlK3JPcWlBcmZITVNJZjB3R2pTaGZ4ZmxVaWt1SHR3TDBUYnV4cU9xdmQv?=
 =?utf-8?B?dG9iOUtNUzNSYSttK09uNUUzTmF0Y05XeTFCTVhCNGdoQ1BSOWxWZ2xRRXpF?=
 =?utf-8?B?VFBSbW9VTGIvcjc4dFZrdkQ4anVySzZldnR0WWFHVDJYeS9QR0FmL2Q0UU9z?=
 =?utf-8?B?MVdlM0JOdTNZS2E2c2hsc0gwaE9GUlozMWdORmRybkFFdmlpUndnemlPWDVD?=
 =?utf-8?B?RzF6RDlFdW5wVk9JK3doeUQrNUUvV1QvbW5QMkVxZDRrem52dU03MW50VnJL?=
 =?utf-8?B?a1E0SXlBUUJUS2RncUhmK3lnUTJnMERyZ08zbVhVaEdURnRIUCtMYnhBL1ps?=
 =?utf-8?B?OFdnQWhQdlgyN0Y2c3ZSWUl4Zys5UGtyMmdKc1puUXhRTHZEdDlFUVgwcFg0?=
 =?utf-8?B?dExYczYxbDZFRUphWWlmYkE2UGRWbUVNc3JLYkVaYWtDU08zZnROQ0pvdjVL?=
 =?utf-8?Q?UcMR7W/Kzfxk9E0QjwLKVVGet?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 321e70b9-ae90-4a50-d579-08db1e345683
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2023 11:17:14.1358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hNebcQa+dLfDIdvkypdRh35LWivx+nN6iQaTyUhUaMMW6r5Xv/MSBcsjLYgPPm3ss+lW792ACgfON4YVdVb0bw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4680
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v10 1/6] drm/i915/gsc: Create GSC request
 submission mechanism
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
Cc: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBTdXJhag0K
PiBLYW5kcGFsDQo+IFNlbnQ6IFdlZG5lc2RheSwgRmVicnVhcnkgMSwgMjAyMyAyOjM4IFBNDQo+
IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBUZXJlcyBBbGV4aXMs
IEFsYW4gUHJldmluIDxhbGFuLnByZXZpbi50ZXJlcy5hbGV4aXNAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbSW50ZWwtZ2Z4XSBbUEFUQ0ggdjEwIDEvNl0gZHJtL2k5MTUvZ3NjOiBDcmVhdGUgR1ND
IHJlcXVlc3Qgc3VibWlzc2lvbg0KPiBtZWNoYW5pc20NCj4gDQo+IEhEQ1AgYW5kIFBYUCB3aWxs
IHJlcXVpcmUgYSBjb21tb24gZnVuY3Rpb24gdG8gYWxsb3cgaXQgdG8gc3VibWl0IGNvbW1hbmRz
IHRvIHRoZQ0KPiBnc2MgY3MuIEFsc28gYWRkaW5nIHRoZSBnc2MgbXRsIGhlYWRlciB0aGF0IG5l
ZWRzIHRvIGJlIGFkZGVkIG9uIHRvIHRoZSBleGlzdGluZw0KPiBwYXlsb2FkcyBvZiBIRENQIGFu
ZCBQWFAuDQo+IA0KPiAtLXY0DQo+IC1TZXByYXRlIGdzYyBsb2FkIGFuZCBoZWNpIGNtZCBzdWJt
aXNzaW9uIGludG8gZGlmZmVyZW50IGZ1bmN0aW9ucyBpbiBkaWZmZXJlbnQgZmlsZXMNCj4gZm9y
IGJldHRlciBzY2FsYWJpbGl0eSBbQWxhbl0gLVJlbmFtZSBnc2MgYWRkcmVzcyBmaWVsZCBbQWxh
bl0NCj4gDQo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVy
aW9AaW50ZWwuY29tPg0KPiBDYzogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhp
c0BpbnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFN1cmFqIEthbmRwYWw8c3VyYWoua2FuZHBh
bEBpbnRlbC5jb20+DQo+IFJldmlld2VkLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVy
ZXMuYWxleGlzQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgfCAgMSArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9ncHVfY29tbWFuZHMuaCAgfCAgMiArDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9nc2NfZncuaCAgICAgfCAgMSArDQo+ICAuLi4vaTkxNS9ndC91Yy9pbnRlbF9nc2Nf
dWNfaGVjaV9jbWRfc3VibWl0LmMgfCA5NCArKysrKysrKysrKysrKysrKysrDQo+IC4uLi9pOTE1
L2d0L3VjL2ludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQuaCB8IDQ1ICsrKysrKysrKw0KPiAg
NSBmaWxlcyBjaGFuZ2VkLCAxNDMgaW5zZXJ0aW9ucygrKQ0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0
IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQu
Yw0KPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVs
X2dzY191Y19oZWNpX2NtZF9zdWJtaXQuaA0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUgaW5kZXgN
Cj4gOTE4NDcwYTA0NTkxLi40ODI5MjhjZmZiMWMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L01ha2VmaWxl
DQo+IEBAIC0xOTUsNiArMTk1LDcgQEAgaTkxNS15ICs9IFwNCj4gIGk5MTUteSArPSBcDQo+ICAJ
ICBndC91Yy9pbnRlbF9nc2NfZncubyBcDQo+ICAJICBndC91Yy9pbnRlbF9nc2NfdWMubyBcDQo+
ICsJICBndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0Lm9cDQo+ICAJICBndC91Yy9p
bnRlbF9ndWMubyBcDQo+ICAJICBndC91Yy9pbnRlbF9ndWNfYWRzLm8gXA0KPiAgCSAgZ3QvdWMv
aW50ZWxfZ3VjX2NhcHR1cmUubyBcDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2lu
dGVsX2dwdV9jb21tYW5kcy5oDQo+IGluZGV4IDJhZjFhZTM4MzFkZi4uNDU0MTc5ODg0ODAxIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMu
aA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ncHVfY29tbWFuZHMuaA0K
PiBAQCAtNDM5LDYgKzQzOSw4IEBADQo+ICAjZGVmaW5lIEdTQ19GV19MT0FEIEdTQ19JTlNUUigx
LCAwLCAyKQ0KPiAgI2RlZmluZSAgIEhFQ0kxX0ZXX0xJTUlUX1ZBTElEICgxIDw8IDMxKQ0KPiAN
Cj4gKyNkZWZpbmUgR1NDX0hFQ0lfQ01EX1BLVCBHU0NfSU5TVFIoMCwgMCwgNikNCj4gKw0KPiAg
LyoNCj4gICAqIFVzZWQgdG8gY29udmVydCBhbnkgYWRkcmVzcyB0byBjYW5vbmljYWwgZm9ybS4N
Cj4gICAqIFN0YXJ0aW5nIGZyb20gZ2VuOCwgc29tZSBjb21tYW5kcyAoZS5nLiBTVEFURV9CQVNF
X0FERFJFU1MsIGRpZmYgLS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRl
bF9nc2NfZncuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2dzY19mdy5o
DQo+IGluZGV4IDRiNWRiYjQ0YWZiNC4uMTQ2YWMwMTI4ZjY5IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZncuaA0KPiArKysgYi9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfZncuaA0KPiBAQCAtMTIsNCArMTIsNSBAQCBzdHJ1
Y3QgaW50ZWxfZ3NjX3VjOw0KPiANCj4gIGludCBpbnRlbF9nc2NfdWNfZndfdXBsb2FkKHN0cnVj
dCBpbnRlbF9nc2NfdWMgKmdzYyk7ICBib29sDQo+IGludGVsX2dzY191Y19md19pbml0X2RvbmUo
c3RydWN0IGludGVsX2dzY191YyAqZ3NjKTsNCj4gKw0KDQpUaGlzIHJlZHVuZGFudCBhbmQgdW5y
ZWxhdGVkIGNoYW5nZSBjYW4gYmUgZHJvcHBlZC4NCg0KPiAgI2VuZGlmDQo+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0
LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRf
c3VibWl0LmMNCj4gbmV3IGZpbGUgbW9kZSAxMDA2NDQNCj4gaW5kZXggMDAwMDAwMDAwMDAwLi5i
ZTI0MjRhZjUyMWQNCj4gLS0tIC9kZXYvbnVsbA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0LmMNCj4gQEAgLTAsMCArMSw5NCBA
QA0KPiArLy8gU1BEWC1MaWNlbnNlLUlkZW50aWZpZXI6IE1JVA0KPiArLyoNCj4gKyAqIENvcHly
aWdodCDCqSAyMDIzIEludGVsIENvcnBvcmF0aW9uDQo+ICsgKi8NCj4gKw0KPiArI2luY2x1ZGUg
Imd0L2ludGVsX2VuZ2luZV9wbS5oIg0KPiArI2luY2x1ZGUgImd0L2ludGVsX2dwdV9jb21tYW5k
cy5oIg0KPiArI2luY2x1ZGUgImd0L2ludGVsX2d0LmgiDQo+ICsjaW5jbHVkZSAiZ3QvaW50ZWxf
cmluZy5oIg0KPiArI2luY2x1ZGUgImludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQuaCINCj4g
Kw0KPiArc3RydWN0IGdzY19oZWNpX3BrdCB7DQo+ICsJdTY0IGFkZHJfaW47DQo+ICsJdTMyIHNp
emVfaW47DQo+ICsJdTY0IGFkZHJfb3V0Ow0KPiArCXUzMiBzaXplX291dDsNCj4gK307DQo+ICsN
Cj4gK3N0YXRpYyBpbnQgZW1pdF9nc2NfaGVjaV9wa3Qoc3RydWN0IGk5MTVfcmVxdWVzdCAqcnEs
IHN0cnVjdA0KPiArZ3NjX2hlY2lfcGt0ICpwa3QpIHsNCj4gKwl1MzIgKmNzOw0KPiArDQo+ICsJ
Y3MgPSBpbnRlbF9yaW5nX2JlZ2luKHJxLCA4KTsNCj4gKwlpZiAoSVNfRVJSKGNzKSkNCj4gKwkJ
cmV0dXJuIFBUUl9FUlIoY3MpOw0KPiArDQo+ICsJKmNzKysgPSBHU0NfSEVDSV9DTURfUEtUOw0K
PiArCSpjcysrID0gbG93ZXJfMzJfYml0cyhwa3QtPmFkZHJfaW4pOw0KPiArCSpjcysrID0gdXBw
ZXJfMzJfYml0cyhwa3QtPmFkZHJfaW4pOw0KPiArCSpjcysrID0gcGt0LT5zaXplX2luOw0KPiAr
CSpjcysrID0gbG93ZXJfMzJfYml0cyhwa3QtPmFkZHJfb3V0KTsNCj4gKwkqY3MrKyA9IHVwcGVy
XzMyX2JpdHMocGt0LT5hZGRyX291dCk7DQo+ICsJKmNzKysgPSBwa3QtPnNpemVfb3V0Ow0KPiAr
CSpjcysrID0gMDsNCj4gKw0KPiArCWludGVsX3JpbmdfYWR2YW5jZShycSwgY3MpOw0KPiArDQo+
ICsJcmV0dXJuIDA7DQo+ICt9DQo+ICsNCj4gK2ludCBpbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3Vi
bWl0X3BhY2tldChzdHJ1Y3QgaW50ZWxfZ3NjX3VjICpnc2MsIHU2NCBhZGRyX2luLA0KPiArCQkJ
CQl1MzIgc2l6ZV9pbiwgdTY0IGFkZHJfb3V0LA0KPiArCQkJCQl1MzIgc2l6ZV9vdXQpDQo+ICt7
DQo+ICsJc3RydWN0IGludGVsX2NvbnRleHQgKmNlID0gZ3NjLT5jZTsNCj4gKwlzdHJ1Y3QgaTkx
NV9yZXF1ZXN0ICpycTsNCj4gKwlzdHJ1Y3QgZ3NjX2hlY2lfcGt0IHBrdCA9IHsNCj4gKwkuYWRk
cl9pbiA9IGFkZHJfaW4sDQo+ICsJLnNpemVfaW4gPSBzaXplX2luLA0KPiArCS5hZGRyX291dCA9
IGFkZHJfb3V0LA0KPiArCS5zaXplX291dCA9IHNpemVfb3V0DQo+ICsJfTsNCj4gKwlpbnQgZXJy
Ow0KPiArDQo+ICsJaWYgKCFjZSkNCj4gKwkJcmV0dXJuIC1FTk9ERVY7DQo+ICsNCj4gKwlycSA9
IGk5MTVfcmVxdWVzdF9jcmVhdGUoY2UpOw0KPiArCWlmIChJU19FUlIocnEpKQ0KPiArCQlyZXR1
cm4gUFRSX0VSUihycSk7DQo+ICsNCj4gKwlpZiAoY2UtPmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFk
Y3J1bWIpIHsNCj4gKwkJZXJyID0gY2UtPmVuZ2luZS0+ZW1pdF9pbml0X2JyZWFkY3J1bWIocnEp
Ow0KPiArCQlpZiAoZXJyKQ0KPiArCQkJZ290byBvdXRfcnE7DQo+ICsJfQ0KPiArDQo+ICsJZXJy
ID0gZW1pdF9nc2NfaGVjaV9wa3QocnEsICZwa3QpOw0KPiArDQo+ICsJaWYgKGVycikNCj4gKwkJ
Z290byBvdXRfcnE7DQo+ICsNCj4gKwllcnIgPSBjZS0+ZW5naW5lLT5lbWl0X2ZsdXNoKHJxLCAw
KTsNCj4gKw0KPiArb3V0X3JxOg0KPiArCWk5MTVfcmVxdWVzdF9nZXQocnEpOw0KPiArDQo+ICsJ
aWYgKHVubGlrZWx5KGVycikpDQo+ICsJCWk5MTVfcmVxdWVzdF9zZXRfZXJyb3Jfb25jZShycSwg
ZXJyKTsNCj4gKw0KPiArCWk5MTVfcmVxdWVzdF9hZGQocnEpOw0KPiArDQo+ICsJaWYgKCFlcnIg
JiYgaTkxNV9yZXF1ZXN0X3dhaXQocnEsIDAsIG1zZWNzX3RvX2ppZmZpZXMoNTAwKSkgPCAwKQ0K
PiArCQllcnIgPSAtRVRJTUU7DQo+ICsNCj4gKwlpOTE1X3JlcXVlc3RfcHV0KHJxKTsNCj4gKw0K
PiArCWlmIChlcnIpDQo+ICsJCWRybV9lcnIoJmdzY191Y190b19ndChnc2MpLT5pOTE1LT5kcm0s
DQo+ICsJCQkiUmVxdWVzdCBzdWJtaXNzaW9uIGZvciBHU0MgaGVjaSBjbWQgZmFpbGVkICglZClc
biIsDQo+ICsJCQllcnIpOw0KPiArDQo+ICsJcmV0dXJuIGVycjsNCj4gK30NCj4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2dzY191Y19oZWNpX2NtZF9zdWJt
aXQuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3VjL2ludGVsX2dzY191Y19oZWNpX2Nt
ZF9zdWJtaXQuaA0KPiBuZXcgZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAu
LmNmNjEwZGZjYTdhNQ0KPiAtLS0gL2Rldi9udWxsDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2d0L3VjL2ludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQuaA0KPiBAQCAtMCwwICsxLDQ1
IEBADQo+ICsvKiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogTUlUICovDQo+ICsvKg0KPiArICog
Q29weXJpZ2h0IMKpIDIwMjMgSW50ZWwgQ29ycG9yYXRpb24NCj4gKyAqLw0KPiArDQo+ICsjaWZu
ZGVmIF9JTlRFTF9HU0NfVUNfSEVDSV9DTURfU1VCTUlUX0hfICNkZWZpbmUNCj4gK19JTlRFTF9H
U0NfVUNfSEVDSV9DTURfU1VCTUlUX0hfDQo+ICsNCj4gKyNpbmNsdWRlIDxsaW51eC90eXBlcy5o
Pg0KPiArDQo+ICtzdHJ1Y3QgaW50ZWxfZ3NjX3VjOw0KPiArc3RydWN0IGludGVsX2dzY19tdGxf
aGVhZGVyIHsNCj4gKwl1MzIgdmFsaWRpdHlfbWFya2VyOw0KPiArI2RlZmluZSBHU0NfSEVDSV9W
QUxJRElUWV9NQVJLRVIgMHhBNTc4ODc1QQ0KPiArDQo+ICsJdTggaGVjaV9jbGllbnRfaWQ7DQo+
ICsjZGVmaW5lIEhFQ0lfTUVBRERSRVNTX1BYUCAxNw0KPiArI2RlZmluZSBIRUNJX01FQUREUkVT
U19IRENQIDE4DQo+ICsNCj4gKwl1OCByZXNlcnZlZDE7DQo+ICsNCj4gKwl1MTYgaGVhZGVyX3Zl
cnNpb247DQo+ICsjZGVmaW5lIE1UTF9HU0NfSEVBREVSX1ZFUlNJT04gMQ0KPiArDQo+ICsJdTY0
IGhvc3Rfc2Vzc2lvbl9oYW5kbGU7DQo+ICsJdTY0IGdzY19tZXNzYWdlX2hhbmRsZTsNCj4gKw0K
PiArCXUzMiBtZXNzYWdlX3NpemU7IC8qIGxvd2VyIDIwIGJpdHMgb25seSwgdXBwZXIgMTIgYXJl
IHJlc2VydmVkICovDQo+ICsNCj4gKwkvKg0KPiArCSAqIEZsYWdzIG1hc2s6DQo+ICsJICogQml0
IDA6IFBlbmRpbmcNCj4gKwkgKiBCaXQgMTogU2Vzc2lvbiBDbGVhbnVwOw0KPiArCSAqIEJpdHMg
Mi0xNTogRmxhZ3MNCj4gKwkgKiBCaXRzIDE2LTMxOiBFeHRlbnNpb24gU2l6ZQ0KPiArCSAqLw0K
PiArCXUzMiBmbGFnczsNCj4gKw0KPiArCXUzMiBzdGF0dXM7DQo+ICt9IF9fcGFja2VkOw0KPiAr
DQo+ICtpbnQgaW50ZWxfZ3NjX3VjX2hlY2lfY21kX3N1Ym1pdF9wYWNrZXQoc3RydWN0IGludGVs
X2dzY191YyAqZ3NjLA0KPiArCQkJCQl1NjQgYWRkcl9pbiwgdTMyIHNpemVfaW4sDQo+ICsJCQkJ
CXU2NCBhZGRyX291dCwgdTMyIHNpemVfb3V0KTsNCj4gKyNlbmRpZg0KPiAtLQ0KPiAyLjI1LjEN
Cg0K
