Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4D165CDF3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 08:59:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BDCA10E0B0;
	Wed,  4 Jan 2023 07:59:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2002310E0B0
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 07:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672819180; x=1704355180;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=I6Vrmvde4vVBbgO4X3AO8QYhKuGhjkN87qFKZ8O+Al4=;
 b=OzHyscrepK4LJgSVbe2W6qMR2d4j48YvAiUzcmPFTVnYF68uj82M7sBV
 vAwKQ91CtL3qnl0xgHuD/cV1dOyT8uTBFe27ZAXFdcKTcckHWtsrtALmj
 /Cu7uGANmojRw5wUv2TAuFHqJRRVmwHCVwI315KiDoJqSpLUSqJzpVkzB
 4bCS1BqJTd/CnLOUuATFrN2KpDAgabXawUUQ9B69COeCLns3wsw4Iup3A
 a978NsTWDpHFJsVLVAwSmOlE+zfXaIMQaIyTOYb1ul+tQZfcX5HWrrrw+
 MVfLmKG3DGmHCttGMSpxEky3qBqPXS0r8zDxrPcS5K+zWvWDliN8b4ROm A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="305375740"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="305375740"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 23:59:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="797444393"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="797444393"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 03 Jan 2023 23:59:39 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 23:59:38 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 23:59:38 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 23:59:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yomm6RHg0J2ef+nlRf9dkydlE8hYfapmBcV+6SDG8+ZeqcuVfsZjJw6cKRaRdw/Hb9XZakkMQD10bTrovzixpVgO0t19RvbV481VxE64mAaK8eIanocqaTowf3oxDZq53YoN9/UfPf3wh491Asef9oYFmFK74HNHBsbd7G+W72FNYJgdLSpti/Gl9KBIGO/cWC7b4QMEh1W09GvT2+HPyKfG4LD4JY7F4oE1e+8yeUsJRGu6HaoFLjQj0qrH2BTcS4AjiJDFxlu4ZoS7yET/CHqWcRGt1EbbXLfkD7/gQ9LqEmPn0ejlu2FUxpBaFFOWw1rHENoN10//CswmKxEenw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I6Vrmvde4vVBbgO4X3AO8QYhKuGhjkN87qFKZ8O+Al4=;
 b=Ai22glgYJXrSd7m/zPIYYUII/1N7RNBg9c/4GoVgye7RxyBxKWOPJe1HSVJyKprBfHE5fnvHmxGxcHOhXDG3eV1i7IxVhUDVm5bocPZ973VPBvwK2xM1gKNWMTMVwmOxiDlSzL8Kx/ts/9krPTWjBmgA7Fhr0icoFd2tmD+aDhhm4kd06Vao75NOUMDvBsrfGjk72bC+d98k03ODoDxTLih6P0KoMQc3Br2QWdNJbbd7eKzxqbpwAxVy+jVntKcPPSlG6cJNPiydGoc2/N+F1LL5cE+4niJ4N8LXqo3Oalbwv1J81MkzymnED6pKYHqDxWLR4/AA6K6gkcGR1pB0EQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by BL3PR11MB6339.namprd11.prod.outlook.com (2603:10b6:208:3b3::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 07:59:35 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 07:59:35 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 01/13] drm/i915/dsb: Stop with the RMW
Thread-Index: AQHZEObGD3NL2AWjPkq+/cardOql0K6OAszA
Date: Wed, 4 Jan 2023 07:59:35 +0000
Message-ID: <PH7PR11MB598193D52B9D0C4D713542CAF9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|BL3PR11MB6339:EE_
x-ms-office365-filtering-correlation-id: 9b8e3c8c-b1d5-47a5-0b9f-08daee299f12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 7nVos8+0NUDGWsYyoe+xmZN06wRXbx2X5Zr9xs09OlpCCv3UjTrEfw0JPWPI988SK/eEIncqHJEwxvIs0wa3cR3Lli6o9UWMXjGhqA3leIf8QP+9KTjR9eNGxfYueWF33RyFVQaQxzdTPe7UjyBXdR8GAuBjP9Vb/MIRkholeRheWgeNm/NWk5aEoX/nO0ep3QWrJaXkZ1wVwdeco3qrBBsB8pNbMGnubSA1NtHr1NiLS6Z24yl5GB+FT4jpxQAVdw4iTztjiGJ1hgRM0lo1DbS6Iv/0zWpPLAM0t9/abROX0i2ckHDkKQQJqSJgmg//ruS3+WSlkmPMxGjT5KYDsqV79y5b55ahA7A4gIRXYcHkUL1RzynsSjZ55ewXbAY6sJNJRpT73f1rtd4x+U5UhQnHof2xJLPWuQBz9ywT4HT87I3gfL9PLQzg8M047rUXO4HdJJrSbFPNEiof9Mms+b03+5aor/oQfc4QgaY58ISDfi/jpo/CTzuSBNSgG+eLmW75UjEcERWhZaeCcSZHALiIxVF1Cgw8ozqHN5zcEKzry/qJ8EHVHd2LgkrvndsWG5iFlN5LTOdIZUmsiMFp9OSwnAZznPT4QoyIg1MGHyQTz2PbkN/n6dgEmKlfVdVkknfs5p1prABxMjEsnppRsJ2oJWDtPJx9zRJotrJNcmenf5xDJ8O5B4VPhrOH3cgtjID0TItdMmvNtyzqzebTxg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(376002)(346002)(136003)(366004)(451199015)(33656002)(55016003)(66476007)(8676002)(66946007)(66446008)(66556008)(64756008)(5660300002)(76116006)(83380400001)(52536014)(41300700001)(71200400001)(55236004)(478600001)(8936002)(26005)(6506007)(186003)(53546011)(7696005)(110136005)(316002)(9686003)(38070700005)(86362001)(2906002)(38100700002)(122000001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WDRnM1hFQlBpUEZUaEJZSG85QjlWS1ZiYVN0Zyt3YVU0Mk40b1VxMGRyUyt0?=
 =?utf-8?B?OHpiR2tYQkFVZktyazR1YXJuc0ZWcWJSc3dWZzA0TVBReFlFQWxLRnd2K0xF?=
 =?utf-8?B?SVluVGRVWjFlYWdUTlFUM0pscTdxejVtd3RXY29aNHA3NE13ZWZSRk5WOVFE?=
 =?utf-8?B?d2ZBcVIwdWczWEVyYWIwZGNkNHFrWTZncTNDOUhKUG4xdlJBZ2VTa0wybTIz?=
 =?utf-8?B?SXd0a0tuVzBpUi9XWFZ6WDIvY3Z2NTNrSG0wTXc1VW03czZlS3Q5YmJkUTcx?=
 =?utf-8?B?b2FLd1dYWENFY2ZpWk5rUnZ1NGJRWTNzU29rSXV3TDJON3dtMzh2dVVJaDNn?=
 =?utf-8?B?RzZLaVVVa2xiQU1LdTdiWXAvT2ZjV3planFNRXFFUVNqeU1kNHlvd1lCWGpw?=
 =?utf-8?B?bUtpOEk5alRxUEJWcUVSVWF0c3NCY1F1ZGVPZDdsbDJSbFU5QzQzVXhkWWtV?=
 =?utf-8?B?WXcvVlVEd3RvU08zR1grcldQZlFOdmFPdmhKa3Jwb3hTNHBTNjV6eElSYnF6?=
 =?utf-8?B?OEFTYjhud280bUFoaGxoRS96WElxdUJMdms1d3hmK2libFdndktEbjcwUWV5?=
 =?utf-8?B?cHI4VUYzNjhETVVVbFB3WkZ0UkRHd0JGellpQnN6VzVSMjVOV0xLKzNCbWlo?=
 =?utf-8?B?VG1TNWVoeHIyS2hvdUJhQmRSRWREUzVIT0kxazhGV2JvTEhGN0QvOXNyWmNt?=
 =?utf-8?B?TjgxdkdkRmFBQXJYcktXc0ZyODc5TFNva0FqMnJId2NpcEQwS3JBNHFncXpK?=
 =?utf-8?B?ak1HMnltcTBHYVdhMXQwQ0dDUXMxL1IrUC81TDc3T3MyYjB0OVVhQURGWlRo?=
 =?utf-8?B?OHdqc0w5WWFkcm1YdGgwYkZnUDUwVWgrU05OTHJ6MnQxQzQ2Yk1McW56VTBY?=
 =?utf-8?B?QXMxby9pMWZ4ZU1RQngwclNHQWI5bEZIaGtBU1VPdzh6TFdJb2NncUFpY0Nw?=
 =?utf-8?B?Z3hHZHVxb0JWbjNqbE9sY0tUcGduRXZiZGtIempvajBaS2pScEFiRFlMeGFh?=
 =?utf-8?B?TjVsdC9qYzR3MGxKWWtscUVtSVF5SWx1OXFFaGsyYXdIWXJzSFZBcHZIczho?=
 =?utf-8?B?Ti9TLzFoTFh1bndLZXdYd2tjOXdsVkY4Q3ExcXp1T1AxeUR0YVlWRm9SMGRw?=
 =?utf-8?B?dFB5RmJmcFplT3QwS2p2U21jYmpic01LYkFTZ3o3aXMyNHBXR2MrcHlTdG4r?=
 =?utf-8?B?a3E2VWZuL3hmZFQ4ZDd0c1FZT2hPaXhGYXQxMDgzajZVK3ZkcFBCZFBDZHpI?=
 =?utf-8?B?MnUySWEyZ2hWOFpuSXRES1RQai83eWoxdWpibkNyQmZkMWNBdEZEWUdtUXZ0?=
 =?utf-8?B?cUFNcXViUmJEeWJxbi8yZUVxMDllSlByYWxKUDdtSXA5NTBKQ3FWczZUdTd5?=
 =?utf-8?B?VzVIYlZiMUZKMzB6azhWM3hlLzhndTJtbDU4ZzJhMU9xRUgrSFhJTk9aNkJ2?=
 =?utf-8?B?NjdxVVB2ZmRGamJrVEtVNVpEU0V6QTd1cVNDL0NhT3pnUWVzcE1xTUcraUFL?=
 =?utf-8?B?dnpldjNlTEtKNGJEK0kvS0pRSVByeXh3ckRteFpNOWJmVlNlaG55Ylg1b1Ur?=
 =?utf-8?B?a2dkYkpYajMwai9VZmpKWjB5MWgvdTBqZHVSNjgzUWxmQ1d1M3kyM2tBd0dk?=
 =?utf-8?B?Z0dRb3l2NGJiUG1nWCtmWkJMcmNBRFcvMGxaYnVkNit1MjlsZElZMkMydzNQ?=
 =?utf-8?B?TnRtQnljb2tmZFViS3pQS0dKOWI2RWlaSkg0dSs0eGR1aVBoZjJvR2JKdm5k?=
 =?utf-8?B?VFJTT3VOTWlhZVdHUGNWbEFrZGRoNlpFWXdCc2gzc3Rpc01kUm1nVk9LeVJa?=
 =?utf-8?B?YndDQ2FCQ0llVzk2ci9GcUNzUmpsbHlLTjQ0VVQzM3gwRCttMkcydGlUZnIz?=
 =?utf-8?B?QmpWbVlzSXc2MlVmYVhiNk1IQ1kzMEpYTTNaWHNJQ1ZpM2RmN1hiOVZBVi9j?=
 =?utf-8?B?T24waFVrTTQxbG0xckZteW1IMXlCWnNROG9pay93SDc2bVZKb3FMVGQ2aDI2?=
 =?utf-8?B?TWN6MCt1SUljaENnYlh1djNsV1puYXBtZUQzb1gvYkwyWE5HcjMzNlptN2xs?=
 =?utf-8?B?YTYxRXhDMGF6NDBJdjZZL3p5eFJ1cmRlMS9VSDhpUnUyQW5ITGV5YXBoSm1v?=
 =?utf-8?Q?FXs/PmSdVeIkYN/kpdSzK33I5?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b8e3c8c-b1d5-47a5-0b9f-08daee299f12
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 07:59:35.5864 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AhNZiZL0ONFxBTBGq52bHteslpq3dyPHfaCaG84bjUHrkX5NanQPeO4SA5P71hET7pKun3h7qcRxt7rRqg7Lnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6339
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/dsb: Stop with the RMW
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
XSBbUEFUQ0ggMDEvMTNdIGRybS9pOTE1L2RzYjogU3RvcCB3aXRoIHRoZSBSTVcNCj4gDQo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBXZSBkb24ndCB3YW50IHRvIGtlZXAgcmFuZG9tIGJpdHMgc2V0IGluIERTQl9DVFJMLiBTdG9w
IHRoZSBoYXJtZnVsIFJNVy4NCj4gDQo+IEFsc28gZmxpcCB0aGUgcmV2ZXJzZSAmIGFyb3VuZCB0
byBhcHBlYXNlIG15IG9jZC4NCj4gDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQoNCkxHVE0uDQpSZXZpZXdlZC1ieTogQW5p
bWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQoNCg0KPiAtLS0NCj4gIGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMgfCAyMiArKysrKysrLS0tLS0tLS0t
LS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oICAgICAgICAgIHwgIDIg
Ky0NCj4gIDIgZmlsZXMgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspLCAxNiBkZWxldGlvbnMoLSkN
Cj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiBpbmRl
eCAzZDYzYzFiZjFlNGYuLmViZWJhZjgwMmRlZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IEBAIC03Myw0MiArNzMsMzQgQEAgc3RydWN0IGludGVs
X2RzYiB7DQo+ICBzdGF0aWMgYm9vbCBpc19kc2JfYnVzeShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwgZW51bSBwaXBlIHBpcGUsDQo+ICAJCQllbnVtIGRzYl9pZCBpZCkNCj4gIHsNCj4g
LQlyZXR1cm4gRFNCX1NUQVRVUyAmIGludGVsX2RlX3JlYWQoaTkxNSwgRFNCX0NUUkwocGlwZSwg
aWQpKTsNCj4gKwlyZXR1cm4gaW50ZWxfZGVfcmVhZChpOTE1LCBEU0JfQ1RSTChwaXBlLCBpZCkp
ICYgRFNCX1NUQVRVU19CVVNZOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyBib29sIGludGVsX2RzYl9l
bmFibGVfZW5naW5lKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiAgCQkJCSAgICBl
bnVtIHBpcGUgcGlwZSwgZW51bSBkc2JfaWQgaWQpICB7DQo+IC0JdTMyIGRzYl9jdHJsOw0KPiAt
DQo+IC0JZHNiX2N0cmwgPSBpbnRlbF9kZV9yZWFkKGk5MTUsIERTQl9DVFJMKHBpcGUsIGlkKSk7
DQo+IC0JaWYgKERTQl9TVEFUVVMgJiBkc2JfY3RybCkgew0KPiArCWlmIChpc19kc2JfYnVzeShp
OTE1LCBwaXBlLCBpZCkpIHsNCj4gIAkJZHJtX2RiZ19rbXMoJmk5MTUtPmRybSwgIkRTQiBlbmdp
bmUgaXMgYnVzeS5cbiIpOw0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+ICAJfQ0KPiANCj4gLQlkc2Jf
Y3RybCB8PSBEU0JfRU5BQkxFOw0KPiAtCWludGVsX2RlX3dyaXRlKGk5MTUsIERTQl9DVFJMKHBp
cGUsIGlkKSwgZHNiX2N0cmwpOw0KPiAtDQo+ICsJaW50ZWxfZGVfd3JpdGUoaTkxNSwgRFNCX0NU
UkwocGlwZSwgaWQpLCBEU0JfRU5BQkxFKTsNCj4gIAlpbnRlbF9kZV9wb3N0aW5nX3JlYWQoaTkx
NSwgRFNCX0NUUkwocGlwZSwgaWQpKTsNCj4gKw0KPiAgCXJldHVybiB0cnVlOw0KPiAgfQ0KPiAN
Cj4gIHN0YXRpYyBib29sIGludGVsX2RzYl9kaXNhYmxlX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVf
cHJpdmF0ZSAqaTkxNSwNCj4gIAkJCQkgICAgIGVudW0gcGlwZSBwaXBlLCBlbnVtIGRzYl9pZCBp
ZCkgIHsNCj4gLQl1MzIgZHNiX2N0cmw7DQo+IC0NCj4gLQlkc2JfY3RybCA9IGludGVsX2RlX3Jl
YWQoaTkxNSwgRFNCX0NUUkwocGlwZSwgaWQpKTsNCj4gLQlpZiAoRFNCX1NUQVRVUyAmIGRzYl9j
dHJsKSB7DQo+ICsJaWYgKGlzX2RzYl9idXN5KGk5MTUsIHBpcGUsIGlkKSkgew0KPiAgCQlkcm1f
ZGJnX2ttcygmaTkxNS0+ZHJtLCAiRFNCIGVuZ2luZSBpcyBidXN5LlxuIik7DQo+ICAJCXJldHVy
biBmYWxzZTsNCj4gIAl9DQo+IA0KPiAtCWRzYl9jdHJsICY9IH5EU0JfRU5BQkxFOw0KPiAtCWlu
dGVsX2RlX3dyaXRlKGk5MTUsIERTQl9DVFJMKHBpcGUsIGlkKSwgZHNiX2N0cmwpOw0KPiAtDQo+
ICsJaW50ZWxfZGVfd3JpdGUoaTkxNSwgRFNCX0NUUkwocGlwZSwgaWQpLCAwKTsNCj4gIAlpbnRl
bF9kZV9wb3N0aW5nX3JlYWQoaTkxNSwgRFNCX0NUUkwocGlwZSwgaWQpKTsNCj4gKw0KPiAgCXJl
dHVybiB0cnVlOw0KPiAgfQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfcmVnLmgNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3JlZy5oIGluZGV4IGNl
Zjk0MThiZWVjMC4uZWQ5ODllNzQ5NjM1DQo+IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9pOTE1X3JlZy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcmVn
LmgNCj4gQEAgLTgxMDQsNyArODEwNCw3IEBAIGVudW0gc2tsX3Bvd2VyX2dhdGUgew0KPiAgI2Rl
ZmluZSBEU0JfVEFJTChwaXBlLCBpZCkJCV9NTUlPKERTQlNMX0lOU1RBTkNFKHBpcGUsIGlkKSAr
DQo+IDB4NCkNCj4gICNkZWZpbmUgRFNCX0NUUkwocGlwZSwgaWQpCQlfTU1JTyhEU0JTTF9JTlNU
QU5DRShwaXBlLCBpZCkgKw0KPiAweDgpDQo+ICAjZGVmaW5lICAgRFNCX0VOQUJMRQkJCSgxIDw8
IDMxKQ0KPiAtI2RlZmluZSAgIERTQl9TVEFUVVMJCQkoMSA8PCAwKQ0KPiArI2RlZmluZSAgIERT
Ql9TVEFUVVNfQlVTWQkJKDEgPDwgMCkNCj4gDQo+ICAjZGVmaW5lIENMS1JFUV9QT0xJQ1kJCQlf
TU1JTygweDEwMTAzOCkNCj4gICNkZWZpbmUgIENMS1JFUV9QT0xJQ1lfTUVNX1VQX09WUkQJUkVH
X0JJVCgxKQ0KPiAtLQ0KPiAyLjM3LjQNCg0K
