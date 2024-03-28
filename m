Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D712F88FE63
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5267C10F552;
	Thu, 28 Mar 2024 11:53:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fmooJ9Qd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D293E10F552
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711626806; x=1743162806;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=vW+wxZTs3JhJhJwkUz6mPayK3c1jnEDVDmsK96u/XZI=;
 b=fmooJ9QdCOdk+c3xqiEoZSfKtdyt3PhIIQ5HUINuRSURPPp1K87vYMuX
 QC43XFTejPtaHX7ILQNvQe4ubh63Rjzxbmmjy2yi5TOoCoB6cs2lksWDM
 GhJlDNarLA/tcuw0Gm2+mUv5Qk6k5G2vYrwV5OX459iPr9TJd/Q/54rlK
 pjpdrGIsJ73FhF8cso+4GS2L19BsePvQjg+1vBj0iNtzL712GqdAKK/Ml
 4ZTY0eVtaNmsJu166WpZ2QSFvIG/rmZMnns8mvkRLYDhFuBqixJMkV+D/
 0+WHNtDsUzUKOx9bDKpQwBPWiHUQ3k9f9PhQzQn9nbqgdRTpTJrzOwxh3 g==;
X-CSE-ConnectionGUID: Wr7ZDpzST7aLIarGpDKMPg==
X-CSE-MsgGUID: sUN0C/TKQyWi7+j6ACb7xQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="32176905"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="32176905"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:53:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="21347307"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:53:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:53:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:53:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:53:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nmrGuQ+b2XDc9ic/RpGexR6tJQKxvjY/BKj5Sma88M/3wTgCVuXpdHIf7MWvHmdZtBkZgLKIRAcZyq2UIoyBWmr+dnUVsXh0hrqiaAZIMGrT6+dsIle0j99rOLqCPxDXSOSxadEZ3odInkje/qALUQ0TBSh2AHFMvMPhD3KeCRT/p62iRu50dU2wDOgunFAdB0oUrT7M1+gRIwHx8FoHgNhaY/UHtMXMV8eAMuraWCiyPJ7nEQlbJGCRBqnUoHjkJ1ytC/8ntGBvs6yawZfmPljpB3favVa47BbbVDLKJ22pIkEvoxdvXlxv7ixX9EN4mwoDH2nmkg54Ge9HgL9MUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vW+wxZTs3JhJhJwkUz6mPayK3c1jnEDVDmsK96u/XZI=;
 b=egn/BvI7pQMtGWu1MOa796ZdBPpN6qbRxm0DvtDarQsm3aNEqUXFZ/O2Slj6Mm7hSttsD44N5iWZ8Qs/VQcjc8h0xM8wBk170wK0qUhcGL2EJvGIOIPyWY4GomFvC9jwdvqd/jkWvtsUrOl5gFmD5OFMQuowWKmTl5Snrzl1rMIrU0WBAsq74vY1qBJAFvmO+KQV/LePxjsy1JOHEiTCWOAHFtbcFBYzWkunwCW9NWxLLhuDK548jUtl5IYdzwQEAtfzXmpvOB3267yahXv1eZD/L4UezsAPNVOupOePkOAdPJ+TIALI3sc+9VqZgUZBM41Va6VtA2YGQo5ZYowQuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Thu, 28 Mar
 2024 11:53:15 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:53:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 05/13] drm/i915: Loop over all active pipes in
 intel_mbus_dbox_update
Thread-Topic: [PATCH 05/13] drm/i915: Loop over all active pipes in
 intel_mbus_dbox_update
Thread-Index: AQHagG6zReUUk7a5TkK4JFyBMlUWyLFNC/dg
Date: Thu, 28 Mar 2024 11:53:14 +0000
Message-ID: <DM4PR11MB63606E47131F791BAD2DEFC2F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH7PR11MB5863:EE_
x-ms-office365-filtering-correlation-id: a6507ec3-f981-419d-5da8-08dc4f1da6ad
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8Oza6IjHw1827S/bm3uobh9V/97mabb9+lBzVtUsWy1GGzD/4gOxP0+mITf1qjN7jwbxURPSUoamD8o4WgjiDfTq0zFfnV2H9kQZ9f7X8s9g1MHtQujUJHS+iZXzOAPlbvJt49qkJH2F9vulbsuKcF4lrfRzfdxlHEmC8TX2L7yDEgs+Rc7K4SmX3ISovTo4NsiKE8NGLu4yo1F0ff1H0lMNMyQqjtBqO1s8QrHT2P7jjzusHKC7K0qBlJYmMmnNNo57HepB3lRhy8t/z7MQNA7l734pyqkUMJ1JD1O9Id6rIGKlMQFuaErX2MGkOq9Im0boCNP660SNThYorK9kDzVuYfmxCFVtXmcYDC1cCGKe30sOVWDnDvYfoxYCfG9N6BjT0L7Rio6qYeC9RVg8hFgaFQPjifsX1v0OD4OYXpDBCAf8kxZ9Z5ZjxjHNNgKFtSxs3kgni9KbAzr5uaBhXTlLY2shB17RUJfKZT6WQMSpHoO7e/FlOObzWVfA/652ycCmsdVbCBPS9CldNGOfgRFF5D39R+gBG4MGgPep+g9/TUvnOmuyBdZ8MQdq8Es4VxK3Ey/I7MKTtxPsg9uaWnSkld41U/ZIirXWK+wY2cHrKC9Rnxs4MP3EuI6lJDiJSbX1VYqSRBEUhj5JU3VCGJIRb1+Ho3r8TWIjPiZIT3gIawjr5dRHwZIsiv0ImGC10C0Jau+9YkxJRK9IpTnVJg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WUF1Unc1UDdSZWJYaEw2MEpXRFJHWlFyVFlkV2RXVkNUbElLb3RJUzAwNSs4?=
 =?utf-8?B?dFJ5SHhiK2Q4MGxWQThZallocEt1R3JLTTJVV3pOaUxFT1hFY08ray83Rkh5?=
 =?utf-8?B?ME04dlA1TTdDS3RnNFZwTlVrS0NpblUvRjZFWkgvd1VXWm9sV3lBME1WLzZV?=
 =?utf-8?B?SWdON25JcnU4U1FxbUZGR3JlWkl6bC93NnZkeVd3ckNaRWlIdkZLeEtrYVVr?=
 =?utf-8?B?L3dlbU4wNjRxYnJRVUFxUG9JTWhlUlI1K0p2eXk4b3ZvRnBISnZhVmZnb3py?=
 =?utf-8?B?Z3Y1WGUzY1lTcmVlM0F3VzhBZkozRzJUWDZLUzdVRHNmWDlGZEoxeCtxd1ZD?=
 =?utf-8?B?ZXFvVXh0NFQ1UFoyRFFPUHlHNmNUVjFHTTJrZ1dQN3p2OFdpRTJtMmdKdEtW?=
 =?utf-8?B?M01OdEtlNURDeGNVV29IUjVNUVcvbkZrOU00UzlXNnd6TkFCbG1IRFdTZ1Jm?=
 =?utf-8?B?RzBFOWw3VDh6U3dkTWs2azdidW9DUVFyeHV3Q1ViVFNib3l5RDI2UUx5cW01?=
 =?utf-8?B?cTcrVmZXajl1M0FJMzNabUIxL3VwN2pIQzlyVEp1YUV5QWhxYmp2OXdPUXRm?=
 =?utf-8?B?STFURklhNnZ3NzlvN1gwd0JmTTFvaUVXT2ora2NsVHFNK1pHRGZGdERrZE1C?=
 =?utf-8?B?N09TbDQ0d2NXcDBoQ095TjA1UW9NbE1oMm1tYWpsUTVnVURucVRWci94TC9W?=
 =?utf-8?B?VzJGWFpaVXBSZFY5cHVKK2tBcFduMTEzZDNTeW1STHdRbDNTZHJ0ZEZwQ0F0?=
 =?utf-8?B?V2c1dGlvNkduZVVUaSsrWXVwVXFFOXRHZERUQ2tiZEFxbVlGMDd1ME9SdHQx?=
 =?utf-8?B?UVJiNk1PTXRRc2FOK201UU1NNUhxN0xvSEk5cXc1bEczd1d1K2hRVmRDeVhz?=
 =?utf-8?B?d3hrbFVlTlVHNWlabW5MS3k2SnpXeXVubTFhbGgwMUEwTkc2M04wNUd0VFVZ?=
 =?utf-8?B?RkMzNWZWZTRkYWN4cnpucmxvOTIxc2J6TkRvSDJnMnNrYmJQVUFZMkpJYTZH?=
 =?utf-8?B?ZlJhZjJYelBranM3Q3pUeTluWGw5czRFc204SDIzaXY3VHNUbnppbnd4bENh?=
 =?utf-8?B?RkprR0RnOFhvTVY2S2I5ZDg1NUhKK1NqTGVSaUhRTkdMeExqREFXSWhxKytR?=
 =?utf-8?B?eW5KY0RhMVdRNkVML2lMRXZuTXhIN0NnR3g3VTZVUXZNWm9MNUpKS2dyVlB2?=
 =?utf-8?B?MDV2a3Q0bVZoOEhWdlNtMkZTTURsYStrV2VBcW9BallHb3dtQ2hFMWRJeGRG?=
 =?utf-8?B?V0lEcnZXS1VzcUVwenBad3JNSGthdm5ESlcrc2FDb05IUWNQMCsydlVoczBF?=
 =?utf-8?B?T3BROEN3RkxJUFhRdksyaDBYUW9xcDE5UDhOYzlBaG1FK1UzNmdaSHBmVzc3?=
 =?utf-8?B?K0p6VE8yNHNUUmZuM2xqM3lCZ3FvMUlJMy9HditidTN0YkFkQ0NDbloxaEZK?=
 =?utf-8?B?VDVTeGlWenF1dzkveUxpR1QwSVVUbjBIeFFDOUVxTDlMejFmNnc5Tmo1ZzdU?=
 =?utf-8?B?UE5qYjl0L1VudEZkQmZkK1lzOUg2OEtZV1NOTjVFZXlUbnloVXkySC9udUQy?=
 =?utf-8?B?ckU0RlI1SVJSUDJKTWJsL05tVGdZL2lrdkVacG5JaTlaT2JRZUl2V3B2aHY0?=
 =?utf-8?B?dTJQRHMwVzYvQ1JjM2NHZktKNlcxeHBLQW96S055eWdRUmtBeEhaZzZLU2dq?=
 =?utf-8?B?a01sWFIzWngxeVhDYk42U1ZWSkpIZXpoYVJqVVpCOWpwZEtuWXBvLzBOOVJ2?=
 =?utf-8?B?Y0RFL1Q4UWxuYk9IYVNsaHZOVjFUT0tzYUN6K3BBci8rUDhFL0xWN1JZOU5Z?=
 =?utf-8?B?UUl2NlYvY1dscndZd3hwTzdtdnlWdjRwbWROcFhGZUZNbXBXbURsMUJpMGxK?=
 =?utf-8?B?MHJpck16QWxNR2JUQ1BWSkRYRzk5WnBYaU8wRXFTL2VJcU8zbzFaYWxPV1kx?=
 =?utf-8?B?UXZPU0RENlBJWE0vTGcxZmRLMW15RCs0ZXlHU1FHK09ia3pjemRNQnIyWGwr?=
 =?utf-8?B?cnBVN2VLSnA0dFZxeWV4U3ZYT1BMYjdMWForV2JZSEI0QzFnLzBVWDBTSEI3?=
 =?utf-8?B?V3lEemt5djV2SkdLYlBFeDdqWDVFTFlqay9LWENKWkN1MDRRWndoM0QzVlRk?=
 =?utf-8?Q?6CPjyyhpo11VBICENAp98YsAS?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a6507ec3-f981-419d-5da8-08dc4f1da6ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:53:14.8416 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eGY7VvXlutseInydQjb0MSSiVJc2T9N+NrGy6RTgEaleieXFyj9h2l8MH5t+c/1gZNgQWu+v6Z8pcd/HsVY8DA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
X-OriginatorOrg: intel.com
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA1
LzEzXSBkcm0vaTkxNTogTG9vcCBvdmVyIGFsbCBhY3RpdmUgcGlwZXMgaW4NCj4gaW50ZWxfbWJ1
c19kYm94X3VwZGF0ZQ0KPiANCj4gRnJvbTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2
Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IA0KPiBXZSBuZWVkIHRvIGxvb3AgdGhyb3VnaCBhbGwg
YWN0aXZlIHBpcGVzLCBub3QganVzdCB0aGUgb25lcywgdGhhdCBhcmUgaW4gY3VycmVudA0KPiBz
dGF0ZSwgYmVjYXVzZSBkaXNhYmxpbmcgYW5kIGVuYWJsaW5nIGV2ZW4gYSBwYXJ0aWN1bGFyIHBp
cGUgYWZmZWN0cyBjcmVkaXRzIGluDQo+IGFub3RoZXIgb25lLg0KDQpMb29rcyBHb29kIHRvIG1l
Lg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQoNCj4g
U2lnbmVkLW9mZi1ieTogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+DQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmMgfCA3ICstLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2Vy
dGlvbigrKSwgNiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3dhdGVybWFyay5jDQo+IGluZGV4IGJjMzQxYWJjYWIyZi4uZjU4Mjk5MjU5
MmMxIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRl
cm1hcmsuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1h
cmsuYw0KPiBAQCAtMzY4MCwxMCArMzY4MCw4IEBAIHZvaWQgaW50ZWxfbWJ1c19kYm94X3VwZGF0
ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJt
X2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUoc3RhdGUtPmJhc2UuZGV2KTsNCj4gIAljb25z
dCBzdHJ1Y3QgaW50ZWxfZGJ1Zl9zdGF0ZSAqbmV3X2RidWZfc3RhdGUsICpvbGRfZGJ1Zl9zdGF0
ZTsNCj4gLQljb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqbmV3X2NydGNfc3RhdGU7DQo+
ICAJY29uc3Qgc3RydWN0IGludGVsX2NydGMgKmNydGM7DQo+ICAJdTMyIHZhbCA9IDA7DQo+IC0J
aW50IGk7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDExKQ0KPiAgCQlyZXR1cm47
DQo+IEBAIC0zNzI3LDEyICszNzI1LDkgQEAgdm9pZCBpbnRlbF9tYnVzX2Rib3hfdXBkYXRlKHN0
cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCQl2YWwgfD0gTUJVU19EQk9Y
X0JfQ1JFRElUKDgpOw0KPiAgCX0NCj4gDQo+IC0JZm9yX2VhY2hfbmV3X2ludGVsX2NydGNfaW5f
c3RhdGUoc3RhdGUsIGNydGMsIG5ld19jcnRjX3N0YXRlLCBpKSB7DQo+ICsJZm9yX2VhY2hfaW50
ZWxfY3J0Y19pbl9waXBlX21hc2soJmk5MTUtPmRybSwgY3J0YywNCj4gK25ld19kYnVmX3N0YXRl
LT5hY3RpdmVfcGlwZXMpIHsNCj4gIAkJdTMyIHBpcGVfdmFsID0gdmFsOw0KPiANCj4gLQkJaWYg
KCFuZXdfY3J0Y19zdGF0ZS0+aHcuYWN0aXZlKQ0KPiAtCQkJY29udGludWU7DQo+IC0NCj4gIAkJ
aWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDE0KSB7DQo+ICAJCQlpZiAoeGVscGRwX2lzX29ubHlf
cGlwZV9wZXJfZGJ1Zl9iYW5rKGNydGMtPnBpcGUsDQo+ICAJCQkJCQkJICAgICAgbmV3X2RidWZf
c3RhdGUtDQo+ID5hY3RpdmVfcGlwZXMpKQ0KPiAtLQ0KPiAyLjQzLjINCg0K
