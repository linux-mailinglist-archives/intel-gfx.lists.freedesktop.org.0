Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCE176A948
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Aug 2023 08:38:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56A5810E0D6;
	Tue,  1 Aug 2023 06:38:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8783A10E0D6
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Aug 2023 06:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690871913; x=1722407913;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=IP4sdW775zfNKXHrP0rOfE71fPR/lF4KE5Ic/fOhrqo=;
 b=hsZBahNenMY0JQqWnv+B0ksDjWKGLzzz02L/VfpJ4yO+bePM+xqKrMl4
 MpMSU1zLB263q/ggG7hBhwocZ1qk/SuL9BVp9XoRR+AOyBzLsO9SY5VX0
 3HYraxdxKhRC3Sgj4S/zDCGN4iUyWyQX3gdguDhOfDZGN2RfTfSpq3Q9v
 8rafryZeUnzEjD+T/tXUbzqoK/RxSVbpS7w4mPcEzQ5R280yQerP27hPX
 LmSCOGgkYcoL2xAUragbxoPISMa38KagzGVb6Qy9bG5OKculjhzT+rOts
 5TSwLHuWsa8XGwiID1uTJjVesEpwjtcwgNZfENr4iDpxajDdVCHci1Z9Y w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="455586605"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="455586605"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 23:38:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10788"; a="852325803"
X-IronPort-AV: E=Sophos;i="6.01,246,1684825200"; d="scan'208";a="852325803"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga004.jf.intel.com with ESMTP; 31 Jul 2023 23:38:18 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 23:38:19 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 31 Jul 2023 23:38:19 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 31 Jul 2023 23:38:19 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 31 Jul 2023 23:38:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MW4nFex6E6xaDZsDqHtBInnzfCek27CmtZ+Gs5dvJ55NeSope5l0XsWUX9XsXwrQr2687l+fdJeJr6dq9xuVPtUwG9ADje/LVGDJaU0z1X2XJROYXanh7REv+81JB/MRfil24oJ2JIN+pM3GjPTji0LZJVh1b3RjKRiR7nhVklasFLBozWf0eNJxDoXWBFHzE4WZe5XHcLyml2rp8MZO6vEL+gzqmzGfTlCc7bpHjoMxRBdJoBq3mzDw/Q1pf/wxLEZHog1XlXyWct0yiwNWRgi9oeQ9BaiL7mOY4lLuLYW+lEIur/OaHzaVSfIWJrN0EqFvYdgpAm+nQAuk5fzmuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IP4sdW775zfNKXHrP0rOfE71fPR/lF4KE5Ic/fOhrqo=;
 b=ns5NwGj8B6R/HE8jqBYZzIS/Bu2JI6Mx85jYXRVspHuXBkuJYbxdVgGciXT7jWRrgFSJ5WCvxmjH7eplmUdQN+mkqa7kD8+7UESOZTTN2jEksC8sehCJebSPiOzxZUXQEOiXOlazNqU4CLdmBKsa5T593JVWo2EGE/HwOH/ozz5+9f0FVGM1VgXg7g/YIHlCFk9d+ecsKy6QFgTMZYEa/3ph8ee1Gox3ZxYTlP34i027tP78oNlC0+9pthaOnjiTMHPXEd/LPf3xLWLmfY2VyygQ4BB/rmq291656CBTV8kWO5q/XoJxikmzNE6G298QEnumW4+Y6WEViRsudWnqbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ2PR11MB8321.namprd11.prod.outlook.com (2603:10b6:a03:546::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.42; Tue, 1 Aug
 2023 06:38:12 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::d9be:7bed:df51:87ef]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::d9be:7bed:df51:87ef%7]) with mapi id 15.20.6631.042; Tue, 1 Aug 2023
 06:38:12 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3 2/6] drm/i915/panelreplay: Added HAS_PANEL_REPLAY()
 macro
Thread-Index: AQHZwVLtiUdWfjEhykGvE9XDnVyHgK/TbVOAgAGT5hA=
Date: Tue, 1 Aug 2023 06:38:12 +0000
Message-ID: <PH7PR11MB598138F411E15AC2C4ECDE07F90AA@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20230728124609.2911830-1-animesh.manna@intel.com>
 <20230728124609.2911830-3-animesh.manna@intel.com>
 <c38192ed2e0420d124f842480c1d90360b914e39.camel@intel.com>
In-Reply-To: <c38192ed2e0420d124f842480c1d90360b914e39.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ2PR11MB8321:EE_
x-ms-office365-filtering-correlation-id: 723bbcec-5f30-4655-bbf0-08db9259e0d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: iARft++EDC5I+cP30dlL0snZK4D8NjuPOrpns2P7w7BpESODptcoBBF0hq3fCHZUGZF/vckDBlA58CDZEyDfhT9SdmeemyJFaJm9GW0H04x6S6QV/bMum4wHnSszN1mcUgnHsRlrF0d5Tqtlj61JIWKu/jDnS4vLDqQcmt9GHorlwFGS8abhl5WEpjzNarZ77vm5i7Ci7X+HYOBpXLTLUUAQHF/IqZ74QhNDJIMaIIPtWY8n2T90/VB5pOuUQ9CeyKRHs7m5oBEpvF1nEl1jcdYAsgJCKrTWtmB6DlE4+JxINkU1eMZlPSLfqWxNuSCeVwuFo0DPprO6o0V9Iq6jh76qwHS6Wr7CwDsJ9RhJ+zCWeJX/SkzbvZ49UMPvV6Jgr2i+D04OK201s++394ieAFiC0cu2NkfpxilmWKwHzI0PIam7zVE+ScVu2P1hTdE6we12xKEYc6Jlwbx28T3++oXgy48+FU6nf+5QIkozBJkCZjnbzR/I8K73Kd7PNrf1q7YaTzd7UcyHKy9Mb346u9zz4NAXV278oVCbDEO9wLgZT3n0E7oM2YLSdFRV3xOmxUo58TxglnYtoQXZAbcJk/Zv6i84XW23vmwW2AoSd+eHvZDaeVZpWYH9E0Jfj6XB
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199021)(9686003)(7696005)(55016003)(53546011)(6506007)(26005)(83380400001)(107886003)(186003)(76116006)(33656002)(66946007)(52536014)(66556008)(110136005)(122000001)(82960400001)(38070700005)(41300700001)(38100700002)(86362001)(66476007)(316002)(5660300002)(66446008)(4326008)(8676002)(8936002)(64756008)(2906002)(71200400001)(478600001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cVNuRGtaR3hPZlIwSkFYTlJxanVyUkNORG45S0h0RnlBMFNsSDVwS2xJOFFi?=
 =?utf-8?B?Mjg5cjhXcVVkTCtDNGRCRDJwMHpvTkM4Wk1GR0lTYUE3ODJidFdCNjdJdTJI?=
 =?utf-8?B?UHdQZTZFcTBvRkNjOEJrazl1Qk1ZaXZwTXgyVi9qZkFqR1pjMGZvTXpFRkVZ?=
 =?utf-8?B?ZTNGMGtwVEx0MXRSUzVDcnQrcmU3N1ZRcE03TlFUbW54V0x2MXVubk53SFlO?=
 =?utf-8?B?N1JTOWx5SzdhMmEyc21LTzV5V1A5MGY5QXlDdE9IbnM0OW1aQUZPSVNONUU2?=
 =?utf-8?B?RkptUlpneVlRTEdzL0o2NndvNjkyM0ZSVXBwMkNub015WDA4UXFWdHpPOFJQ?=
 =?utf-8?B?dkZuU2UrVkNPY2duZ01yaEhzMk9FNVRXc01KM1Ntem1UeENjTHVuQnNBTHgr?=
 =?utf-8?B?ZTF2WUdjVTJ6RHZabzNkWFkxSlo3alMzeWUrSEdaWGVlSkxzd1Yxd3dqWkVE?=
 =?utf-8?B?ak1JdUJYSkhCVnVQVjV4bmZ6dFF2SEptWndDMUFoODR1S250cHVUUDJJZE1Z?=
 =?utf-8?B?cjcwUEFrbHJiODBBNGlvWkpwa0toK1ZNNk80Z1oyVGNQWitJSVk2MTRVemgw?=
 =?utf-8?B?THJRSHpWc0xpRGhWVm9Nd210ZWw5aE10bDdRSHpOdFVOUHdXdFdoZlNGcEtL?=
 =?utf-8?B?alNVN055U1M3bXM0VTBPZktLUmVqMjV3NTlhNUwwdjBGNzdra0VhVmltWVpQ?=
 =?utf-8?B?L09VdlAyTndVcVdRVlgyd1BtOHlCWU5SQzFpbkt6OEJYRzVubm5CVWNJY1RO?=
 =?utf-8?B?RStKajhsTVJsa0tEb2Z2RTVjMGpNVk9pbnlXd1NhZkJnbHJ4YS9UK09mVmZm?=
 =?utf-8?B?L2duak95Mk11ZzdrczBxZ3piVS9sRXpyZkNPSzhWNEZ2THozQWtteE5pV1pN?=
 =?utf-8?B?MWhjUkl4a0lYbnJxcnZqWW5EcFROYjQ2L1djcXU5K2U2RkRvVkhRYmVZekRY?=
 =?utf-8?B?cmZRazQxWXlPQUV4ZmZ3citqY1l2b2xLWW5SaUlvN3M1b2IrM1JsYWRMQ2NT?=
 =?utf-8?B?dVZsY1JMZ0U3TEFwK2RLU0FaOUxtanBnMVpUdWxXMCt2VDFVbWJ2ZVoxWFA4?=
 =?utf-8?B?M1ZxOVpDalVpMVV1UFZnNDNTSSthSElGbVBMcEZzZFJkU092MXFMaFNKbkNE?=
 =?utf-8?B?ajBPZFBDbSs1cGp2Y1c1R0xtbE55N3U5RUViVXY0YkRKOFhHWFBLaTlQS3FS?=
 =?utf-8?B?b1dUSDhWT1ZIRWd5b09FMlgvNTRJSG5FeHJVbjNTaldrVlBFRzFsZWdlY2FK?=
 =?utf-8?B?V1EwVzBOeDVyWGI1Qm9MTHFDVGFGRC9BNHNwQTRTVXdQOG1ZQ2p2OVZrc3hB?=
 =?utf-8?B?bzVabXNwV2xxSlcyYXVsRS9qeEJUL0FLOCtIazRhK01IM0VQYWtzTzVkczJH?=
 =?utf-8?B?T2ZBSVNXOEJxVUx0YTdFYUEzazN4eS8wQm92ekI1ZEtlUW1sdVJNYm4wVWFI?=
 =?utf-8?B?N0hCMXBqSGJVams1MzNsZVJmS3JrcVpvSEFObWgyaCszT0oyVHlsZWc4dURm?=
 =?utf-8?B?K2dMS2x2blY2b1AzZUErV0xWakZZamVSOTRvaUtpMHduKzlQOE92cE1OVy8y?=
 =?utf-8?B?ZW9sNDBNWFhaQSt6ZEF0ZGdHb1lQQmZUd0txM2pVdTJIbVpZRjNydmlGVXBx?=
 =?utf-8?B?bTh0amozd0doeUZVSG1KMzlKZ2JHT0pVbjQveEF6cDJxbUhxaHByZEpiUnJS?=
 =?utf-8?B?TWVjd25GYk9NaWRQbDB6MkRMT1REb0ZLVk1rTlJhOFRBakR5bzBNNjVnZFhy?=
 =?utf-8?B?aGJSWG85TDY1RHBxelREREwzQ29HOTQ0bE1xTUJVMGxvTHYrb050RlNoa0xK?=
 =?utf-8?B?SkszR3VsQUt0Yi9QUm9sU0JZRVE1Z0VSMkFDcnZHemFrTEl1UWFieEJyL0k0?=
 =?utf-8?B?OGFhSkczWndLdU9MUEwxUVZEQjNVck1FQ2ZQTDFSVGFkaWhuK0tWcmxEQndK?=
 =?utf-8?B?NVF0TFdnTWVNLzJKaHMvQXNlQTFaaWxDM2JlYlhGbjNBMmVEa3RDQVhFWnFT?=
 =?utf-8?B?MERMM0dXWS9oeG8ybXBIdkpUNjNObmtlNFJLeHF0U1E0RlZHaVRaT2hFUTQr?=
 =?utf-8?B?MnNIT1ExRnZqaE1FUU1sOTlFZzVaaDFFNnhvWUFXYU8xeXdsQUtDK2d0dk1t?=
 =?utf-8?Q?4qIa2NwU2yaf3RXaBHgvkJiD/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 723bbcec-5f30-4655-bbf0-08db9259e0d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Aug 2023 06:38:12.5047 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GzbFHKLDobdAjVsUehWmnfIbuIzBbFecFB7B2GjRFZU7eeDNFqE9huc+R0REDsnlUYikg+gMD+wG976gfm94Ww==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8321
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 2/6] drm/i915/panelreplay: Added
 HAS_PANEL_REPLAY() macro
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgSnVseSAzMSwgMjAy
MyAxMTo1NyBBTQ0KPiBUbzogTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29t
PjsgaW50ZWwtDQo+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE11cnRoeSwgQXJ1
biBSIDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MyAy
LzZdIGRybS9pOTE1L3BhbmVscmVwbGF5OiBBZGRlZA0KPiBIQVNfUEFORUxfUkVQTEFZKCkgbWFj
cm8NCj4gDQo+IE9uIEZyaSwgMjAyMy0wNy0yOCBhdCAxODoxNiArMDUzMCwgQW5pbWVzaCBNYW5u
YSB3cm90ZToNCj4gPiBQbGF0Zm9ybXMgaGF2aW5nIERpc3BsYXkgMTMgYW5kIGFib3ZlIHdpbGwg
c3VwcG9ydCBwYW5lbCByZXBsYXkNCj4gPiBmZWF0dXJlIG9mIERQIDIuMCBtb25pdG9yLiBBZGRl
ZCBhIEhBU19QQU5FTF9SRVBMQVkoKSBtYWNybyB0byBjaGVjaw0KPiA+IGZvciBwYW5lbCByZXBs
YXkgY2FwYWJpbGl0eS4NCj4gPg0KPiA+IHYxOiBJbml0aWFsIHZlcnNpb24uDQo+ID4gdjI6IERJ
U1BMQVlfVkVSKCkgcmVtb3ZlZCBhcyBIQVNfRFAyMCgpIGlzIGhhdmluZyBwbGF0Zm9ybSBjaGVj
ay4NCj4gPiBbSm91bmldDQo+ID4NCj4gPiBDYzogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dh
bmRlckBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVz
aC5tYW5uYUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGV2aWNlLmggfCAxICsNCj4gPiDCoDEgZmlsZSBjaGFuZ2Vk
LCAxIGluc2VydGlvbigrKQ0KPiA+DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gaW5kZXggMzMyNGJkNDUz
Y2E3Li41M2JjOGY5NzJhMjYgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gQEAgLTYwLDYgKzYwLDcg
QEAgc3RydWN0IGRybV9wcmludGVyOw0KPiA+IMKgI2RlZmluZSBIQVNfTVNPKGk5MTUpwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQ0K
PiA+IMKgI2RlZmluZSBIQVNfT1ZFUkxBWShpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAoRElTUExBWV9JTkZPKGk5MTUpLQ0KPiA+ID5oYXNfb3ZlcmxheSkNCj4gPiDCoCNkZWZpbmUg
SEFTX1BTUihpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChESVNQTEFZ
X0lORk8oaTkxNSktPmhhc19wc3IpDQo+ID4gKyNkZWZpbmUgSEFTX1BBTkVMX1JFUExBWShkZXZf
cHJpdinCoMKgwqDCoMKgKEhBU19EUDIwKGRldl9wcml2KSkNCj4gDQo+IEknbSBiZWdpbm5pbmcg
dG8gdGhpbmsgdGhpcyBtYWNybyBpcyBub3QgbmVlZGVkIGF0IGFsbC4gRFAgUFIgaXMgcGFydCBv
ZiBEUDIwDQo+IHNwZWNpZmljYXRpb24gLT4geW91IGNhbiB1c2UgSEFTX0RQMjAgZGlyZWN0bHk/
DQoNClllcywgSSB0cmllZCB0byBmb2xsb3cgaG93IHRoaW5ncyBhcmUgZG9uZSBmb3IgUFNSLiBX
ZSBtYXkgbmVlZCBhIGZlYXR1cmUgZmxhZyB0byBlbmFibGUvZGlzYWJsZSBmcm9tIHNvdXJjZSBz
aWRlLg0KUGxlYXNlIGxldCBtZSBrbm93IHlvdXIgdmlldyBvbiB0aGlzLg0KDQpSZWdhcmRzLA0K
QW5pbWVzaA0KDQo+IA0KPiBCUiwNCj4gDQo+IEpvdW5pIEjDtmdhbmRlcg0KPiANCj4gPiDCoCNk
ZWZpbmUgSEFTX1BTUl9IV19UUkFDS0lORyhpOTE1KcKgwqDCoMKgwqDCoChESVNQTEFZX0lORk8o
aTkxNSktDQo+ID4gPmhhc19wc3JfaHdfdHJhY2tpbmcpDQo+ID4gwqAjZGVmaW5lIEhBU19QU1Iy
X1NFTF9GRVRDSChpOTE1KcKgwqDCoMKgwqDCoMKgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQ0K
PiA+IMKgI2RlZmluZSBIQVNfU0FHVihpOTE1KcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAoRElTUExBWV9WRVIoaTkxNSkgPj0gOSAmJg0KPiA+ICFJU19MUChpOTE1KSkNCg0K
