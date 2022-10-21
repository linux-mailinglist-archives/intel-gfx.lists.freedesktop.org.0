Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2C96071E8
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Oct 2022 10:17:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B31C10E636;
	Fri, 21 Oct 2022 08:17:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10C0710E491
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Oct 2022 08:17:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666340222; x=1697876222;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=8hWVax8wyeubYuXBFjC/Djcz/asawKGX6uF8TddYgxM=;
 b=aTQ1tY18rBPLdkvX028n6nJPEEriHVInqiPdaXSYhxzgLaJiOKHljJ5a
 irlydHOkcocoGW17T3wWqfNLqkJ6e149b1b5kPX4ihIrOZOiDy23yUec/
 oFu0JDalk+nnXed9K93zR+kLAKQ6h0KOJgjfUksNoJPoVMxPLu0cSGr+8
 YzLyJccULylfyEsIC6p30KTYR0TGD6QQVyirmrTxet2a+HNYGUgZ+Wy/H
 hEK10mhQ6S5x/EBJEULLKcFoD0snqmwLi7zymjAZu+w12LxhOicTj0+GQ
 Ypwx9QEvnS/Su2a9vuUKsqbvc7ZvSVxSSY5fjnnnfLxELUmkHmOmkM/uG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="290254687"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="290254687"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Oct 2022 01:17:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10506"; a="663613202"
X-IronPort-AV: E=Sophos;i="5.95,200,1661842800"; d="scan'208";a="663613202"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 21 Oct 2022 01:17:00 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 21 Oct 2022 01:17:00 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 21 Oct 2022 01:17:00 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 21 Oct 2022 01:16:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gGybCtVuS40V6VyYkScZB3ou1KJS28YBf4twOxUA8Jb43EzxVcYZbiX3tp/usI30xRfsPkxSLgBrtHuK+ViA1A+XXG9bFNBzZxBDk9s3XVHjNY+mO6PldguYZ4/pWTTsAhRb5OAKXxP2ds4bLDDixUGs+ehASzoQddGCctfobB/H/HcOH/mNY6AFjPe0ct2VLCfZdO0b8/p35kkiqUQfB70jEQWNDnDUmtozfaTrYrBwohcf31izgr3ehvWN+QrtDFudC0LPLqE75HfnjC1gzccGZhQ2f9Vx7IjhuQhXejqPmMb2Whb/eRTy1pUeUiuX2mot7WgCkjS7UOP//NiUpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8hWVax8wyeubYuXBFjC/Djcz/asawKGX6uF8TddYgxM=;
 b=FI6Ea5cNvOGxNq4Ok/68TEyvDNV/TrsgJjopYyftsNWnhWTcbE2rtse77QL8Q32qjdPKmtsLKCVCWZ3QHf10a6Hxzm7YdTQU5fbab/dTYiUyPEaQuNLm89eC51QTGLcfibXu5jLSqf7YiBSpJzX77k3U8foqmG/+pRtOMP3WNT4p4wyyIPF/WvL8XkdpRo7ISmfSEfwXxxUUa3XSnVPLI6/7V9pT+JrF0QrAkRHbkI1eL5GXJCpgNtPuiYbvweLOEbz5NlUXR8xJtoshE33xSqke2uTIYtZXvK2MS0Rc8PWFnpcO/coH5EgoK7CLqLaszmRmeESWFJnjI9NA1FtfTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 CY8PR11MB6820.namprd11.prod.outlook.com (2603:10b6:930:60::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5723.29; Fri, 21 Oct 2022 08:16:58 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%5]) with mapi id 15.20.5723.034; Fri, 21 Oct 2022
 08:16:58 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 1/7] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
Thread-Index: AQHY2T1PjHtLPCorvU2nC/2szV/3/a4M17uAgAYKiYCABbbZgA==
Date: Fri, 21 Oct 2022 08:16:57 +0000
Message-ID: <c910350b310179948deed7e8f7f636fecb9c5a85.camel@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
 <20221006043834.606220-2-alan.previn.teres.alexis@intel.com>
 <a43a158e-8772-729d-2e2f-bcc8dba1a8d0@intel.com>
 <ca3929d15d31d18f5aa95b8612a7dc5e62932e08.camel@intel.com>
In-Reply-To: <ca3929d15d31d18f5aa95b8612a7dc5e62932e08.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|CY8PR11MB6820:EE_
x-ms-office365-filtering-correlation-id: ef308849-6235-4ca4-de6c-08dab33c9f6c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kZffWAndgoGsplLg25VsJL3A9IqmmI2THAmfxOUZ8p3l2ocJDVbVXPGQqQJjkdhuQdu5Bw2/ELm3Dv4G8cS6a7YytQef1RUp3C2eEGCOa6BhmXIhIfRUEakJWN0e5yWjOTD1hmf+M9TuP1DMrKyIK6GpHYZqHhRd7nboPBgHR94N0FlxL/JcpZJiR+1mBldLxVAMHZWAZNGLd591oAW6pe3x4QMWZMbWcgVhB6b6cg9oKOiGa69pxmqLHXwPnMF1mdLvRhwYiBM6Rjw8hLdFay5jx3cu5ldh9rVWKp8L0ADOWYoRbWOagNRjWfoiXd8rFeOPc8kkXqoCjEiGeqZzYMhZqF+wzq0IczQTMpMpHo9rBTMFrvMJKsU/oMOe4DO4tFPhTUbSGLmKd7210XdgKLwxwiA9z2lFFW1JElCLzCvCAH4J7ftZDm+CWZDaxpGh0ek2CTc4CQqzee+9z8D+H2HfNCdMem2nYiUGTOheE+u49AgMgsxwx5cN6u0k4GYlKO7tx4Q1d2B3R+kthCAq7Sx5QFbCUfNLn9riTR2GQ6zbiyjI+i6BciWA06Bn8jFYpEt0eYnjls1CReh7q+95TGXJyDg+piU7tiyoN8hW8uBz96hROmFG9AqzuNCeSZCZIoYzkDgnlM0gCCA3moHdvhQ9B7B02w93tTDU20Mer3zNbssz+bWYzT3VUwaLrbPuIIxe+6gEYXoXEznQHRWQeaDIq7CmButic+bgKpBELVTaX4tM6ep886WYYORuF5+fJh4quNYa7/MjTZ4oG0BfCw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(136003)(376002)(396003)(39860400002)(451199015)(41300700001)(71200400001)(478600001)(38070700005)(86362001)(122000001)(2616005)(4001150100001)(38100700002)(2906002)(186003)(8936002)(26005)(8676002)(6512007)(53546011)(6506007)(316002)(5660300002)(66446008)(66946007)(66556008)(76116006)(91956017)(110136005)(64756008)(66476007)(6486002)(36756003)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?b29WLzY2eDVoTWxJTi8rbWROeno5NVJWOFpscXV1dVlRd2RnTnZTdEhQODZ6?=
 =?utf-8?B?UUJmb1JBYzRpM3VJMnBRTU84T3B6WDhXVGltNkl3RG93aTRCZDhuSkZ4ZlRR?=
 =?utf-8?B?eTBLbFR3STR3eGtBdkJWVW5lU3JENmhWTURtNWFFa0lMc2xJNzFOWU1IcGhN?=
 =?utf-8?B?bzR6V1BzQ0svOHEvZUhCZjVvK0haRWZKd0hvRHIvbGNTUjR4V1dQd0d5OVlx?=
 =?utf-8?B?NzE5eFhSZzh4dk44S09sSWVLMU9FQkw2dXdoMWF1YVA2QXJlcXVrQWJEWmJ3?=
 =?utf-8?B?Zmdpd3lUSzZmemYycnlpeDNjekIrMjVNME5qMDZycHhXb21tWjQ5dmJ0cC9X?=
 =?utf-8?B?N1F3QWtFWWhFU05BM05KTm1zcXpQcnlqTTVNY012Z25Lc1ZDQ3Z1UG5VdlNS?=
 =?utf-8?B?UTN2eTVYb09GME5kNm9RZ3V6RzVBMWNHMWRISTNVb3psL2ZYenJaSmdjRlhr?=
 =?utf-8?B?RWdYYmc2b2ZXV3lXdnlBcWg3NURuSDExbWN2RHpOU1FKdC8zNTdZaTJZdzNj?=
 =?utf-8?B?NFl0b2xwSlZZQ3ZuSTJKTjFrYUp2WGpZNGtmSU9WM2VFRE9CMHI4S1pGZTdV?=
 =?utf-8?B?eDVOZ2dDeXhkTWNMdmJIM0NMamFRM3ZJSU1SSWhJK20wRGJ2NVV2VlE0OElD?=
 =?utf-8?B?VmVhZ3cwSlJ3VCtPQkF1aEFPbmtGczRscW9OVTJQQW9nWDYzSytFUmMrN09v?=
 =?utf-8?B?WTQ1cmtDdEF2UFZYcFlBZmpTU3VkRkc3QUJ2V1BTL3hzM2NUL1E2MEFsQ01w?=
 =?utf-8?B?bE1oZ00xQThMNzFOTWVBQmtYcEI4UjV6VUk5YUQ5WTQ1ek5US2h5MGFwcGNI?=
 =?utf-8?B?cHo3MFVoeEdEb01zMmJYNzhoSXhrbm5OVUVDT2JwWkdsQjdRTHptZTNrM0d2?=
 =?utf-8?B?bUY4SkgyamhKemZyT2NYVHFNR0xWNWUyNmlYZks4ZGw5UzcrTVMyWE03SHRR?=
 =?utf-8?B?Wkl0NEE0V2V5SXlwL2d0OW8xaVdWQ0l2QmkrQ0UxeEV2RTBZYmFYZ1dvV0VW?=
 =?utf-8?B?TmVqbzQ5UVBUSngzNENYYkx4N3lWWFpCaXh0ME9XWWxuVHNMMzdncEdhRlU3?=
 =?utf-8?B?U042WmdwbWdqVW1OL1J0U05VV2RIbW9NbGh0MGFCR056YXNXUXgxVTVEVVhE?=
 =?utf-8?B?YytoVWJOZEFFT1pDMUhtL3lUeEdLK0J5K0lQV3RFL3lzaGFIQ3V4QWFqTzBx?=
 =?utf-8?B?b01WUkpnR3FQMDROTlJMYTRENkcyR2Y5Y20wNWg0ZkVJSjE4VU9vYm1JcGQx?=
 =?utf-8?B?UUQ0b0JzVlVMdDRQWFUydWt0SjRjT0U3Szh4bkxoem5STVpGSW1JdzZMelhP?=
 =?utf-8?B?TTNteUNkN0FJUElhZS82L3NRQnBIUWN6YmhzRzVKeTRvUCszK3ArUVk4MHNK?=
 =?utf-8?B?VnlJV1RHKzlIdnNDTjlQN2VpVmQzUGVRalB4SFgxOHZFZ0VIbW1IK05yNm9u?=
 =?utf-8?B?Z0VmZXN3SDBtZWppT0dqNFo0K0l6V1dWa2dJSVFicVVNOTNCem5hcDg4dnJy?=
 =?utf-8?B?cDFOaTU2aHBPQVp2YklLNVczNEQvcTd6V3cycjV5TnMzWURHMUxVWWJoOWdN?=
 =?utf-8?B?UDVXUE03NWZKdk9Hclp2WDFKZmRoaTlxSUNoeFVQT2d3bXl2U0xTNUh2eWVa?=
 =?utf-8?B?SVpHb05DZkVXenA1a1JEdzRJa2hVeXcxSHFzQkZ4dVpRalVCL0p3eFBsSnNn?=
 =?utf-8?B?bHlMcGtFYk1aS0ZSK2JGS1VCUTdjZEh2QUpIYTJQNWUzTXFJeFdxNjE0UEZM?=
 =?utf-8?B?M2V4bEdsMm9GYzk3aFBjRTZCS21CU0s5bjN6YkJQZXM2OVRieEp4L0N6WFkz?=
 =?utf-8?B?eis3VDZ4Zzc1bUlqem9CcVp1NzhQVWFKejJyVXRKc0V5aUhDQ0ZmRW9ROEhP?=
 =?utf-8?B?SFZyWDRqN21Gellhem4zZHZ3dDBDajRuQVpZek5KdzdpeGdxU2FVci9sTC9M?=
 =?utf-8?B?RDZEL09adVNLR2lwTk5USFJGak45bjlMSmtJR1lxYzBIbjlVcGV2dTRhZks2?=
 =?utf-8?B?eWJzMVNqQjVWTlNoY0NjY3Q4VS9RUXA2MnVwNVY4ckRtOHE2TFZScmYxcGVK?=
 =?utf-8?B?WDVFc0NkeDVncWJPR1UzNzR4cGI1MWJTYnFjbXBDZHZzSGtheHlWWjNUbGRL?=
 =?utf-8?B?aWZvQktUZGwrSzlFMzNpS0N4VHJXODUwMVREZmxjTlFMZWNKM0tnVHAxY0dK?=
 =?utf-8?Q?85wWc0ieYJLn6eDFOgE5sK4=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <8701E5B66AB77B49B7E7164DE6E7F9BA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef308849-6235-4ca4-de6c-08dab33c9f6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Oct 2022 08:16:58.0155 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G1uPwanWW/h/fuN9nCKUGiJYvZQ7KBZg10zCaccJ2oF+ZBemZer9aa6LpNLyC51AIZSHo3om35qiI9lDk7xVkJUm1uCuZ7rp/eCvgTOKmBoXQJUBZTWlGjSadh0UaXj9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6820
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/7] drm/i915/pxp: Make gt and pxp
 init/fini aware of PXP-owning-GT
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

DQoNCk9uIE1vbiwgMjAyMi0xMC0xNyBhdCAxMDowMyAtMDcwMCwgQWxhbiBQcmV2aW4gVGVyZXMg
QWxleGlzIHdyb3RlOg0KPiA+IA0KPiA+IE9uIFRodSwgMjAyMi0xMC0xMyBhdCAxMzo0OCAtMDcw
MCwgQ2VyYW9sbyBTcHVyaW8sIERhbmllbGUgd3JvdGU6DQo+ID4gPiA+IA0KPiA+ID4gPiBPbiAx
MC81LzIwMjIgOTozOCBQTSwgQWxhbiBQcmV2aW4gd3JvdGU6DQo+ID4gPiA+ID4gPiBJbiBwcmVw
YXJhdGlvbiBmb3IgZnV0dXJlIE1UTC1QWFAgZmVhdHVyZSBzdXBwb3J0LCBQWFAgY29udHJvbA0K
PiA+ID4gPiA+ID4gY29udGV4dCBzaG91bGQgb25seSB2YWxpZCBvbiB0aGUgY29ycmVjdCBndCB0
aWxlLiBEZXBlbmRpbmcgb24gdGhlDQo+ID4gPiA+ID4gPiBkZXZpY2UtaW5mbyB0aGlzIG1hdCBu
b3QgbmVjZXNzYXJpbHkgYmUgdGhlIHJvb3QgR1QgdGlsZSBhbmQNCj4gPiA+ID4gPiA+IGRlcGVu
ZHMgb24gd2hpY2ggdGlsZSBvd25zIHRoZSBWRUJPWCBhbmQgS0NSLg0KPiA+ID4gPiA+ID4gDQo+
ID4gQWxhbjpbc25pcF0NCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9ndC5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZ3QuYw0K
PiA+ID4gPiA+ID4gaW5kZXggYjM2N2NmZmY0OGQ1Li5lNjFmNmM1ZWQ0NDAgMTAwNjQ0DQo+ID4g
PiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jDQo+ID4gPiA+
ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9ndC5jDQo+ID4gPiA+ID4g
PiBAQCAtODUwLDYgKzg1MCwxMCBAQCBpbnQgaW50ZWxfZ3RfcHJvYmVfYWxsKHN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1KQ0KPiA+ID4gPiA+ID4gICAJZ3QtPm5hbWUgPSAiUHJpbWFyeSBH
VCI7DQo+ID4gPiA+ID4gPiAgIAlndC0+aW5mby5lbmdpbmVfbWFzayA9IFJVTlRJTUVfSU5GTyhp
OTE1KS0+cGxhdGZvcm1fZW5naW5lX21hc2s7DQo+ID4gPiA+ID4gPiAgIA0KPiA+ID4gPiA+ID4g
KwkvKiBkZXZpY2UgY29uZmlnIGRldGVybWluZXMgd2hpY2ggR1Qgb3ducyB0aGUgZ2xvYmFsIHB4
cC10ZWUgY29udGV4dCAqLw0KPiA+ID4gPiA+ID4gKwlpZiAoVkRCT1hfTUFTSyhndCkgJiYgIUlO
VEVMX0lORk8oaTkxNSktPmhhc19ub25yb290X3B4cGd0KQ0KPiA+ID4gPiA+ID4gKwkJZ3QtPnB4
cHRlZV9pZmFjZV9vd25lciA9IHRydWU7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+IA0KPiA+ID4g
PiBJJ20gbm90IGNvbnZpbmNlZCB0aGF0IHdlIG5lZWQgZGVkaWNhdGVkIGhhc19ub25yb290X3B4
cGd0IGFuZCANCj4gPiA+ID4gcHhwdGVlX2lmYWNlX293bmVyIGZsYWdzLiBNVEwgbW92ZXMgdGhl
IEdTQyBpbnNpZGUgYSBHVCBhbmQgdGhlIG93bmVyIG9mIA0KPiA+ID4gPiBQWFAgaXMgdGhlIEdU
IHdoZXJlIHRoZSBHU0MgZW5naW5lIHJlc2lkZXMuIFNvIHdlIGNvdWxkIGhhdmUgYSBjaGVja2Vy
IGxpa2U6DQo+ID4gPiA+IA0KPiA+ID4gPiBib29sIGludGVsX3B4cF9zdXBwb3J0ZWQoc3RydWN0
IGludGVsX2d0ICpndCkNCj4gPiA+ID4gew0KPiA+ID4gPiAgwqDCoMKgIMKgwqDCoCAvKiB3ZSBv
bmx5IHN1cHBvcnQgSEVDSSBQWFAgZnJvbSB0aGUgcm9vdCBHVCAqLw0KPiA+ID4gPiAgwqDCoMKg
IMKgwqDCoCBpZiAoSEFTX0hFQ0lfUFhQKGd0LT5pOTE1KSkNCj4gPiA+ID4gIMKgwqDCoCDCoMKg
wqAgwqDCoMKgIMKgwqDCoCByZXR1cm4gZ3RfaXNfcm9vdChndCk7DQo+ID4gPiA+IA0KPiA+ID4g
PiAgwqDCoMKgIMKgwqDCoCByZXR1cm4gSEFTX0VOR0lORShndCwgR1NDKTsNCj4gPiA+ID4gfQ0K
PiA+ID4gPiANCj4gPiA+ID4gSSdtIGF3YXJlIHRoYXQgdGhlIEdTQyBlbmdpbmUgY29kZSBpcyBz
dGlsbCBub3QgYXZhaWxhYmxlLCBidXQgd2UgY2FuIA0KPiA+ID4gPiBzcGVjaWFsIGNhc2UgZm9y
IE1UTCBmb3Igbm93IGFuZCB0aGVuIHJlcGxhY2UgaXQgd2hlbiB0aGUgR1NDIGNvZGUgbGFuZHM6
DQo+ID4gPiA+IA0KPiA+ID4gPiBib29sIGludGVsX3B4cF9zdXBwb3J0ZWQoc3RydWN0IGludGVs
X2d0ICpndCkNCj4gPiA+ID4gew0KPiA+ID4gPiAgwqDCoMKgIMKgwqDCoCAvKiB3ZSBvbmx5IHN1
cHBvcnQgSEVDSSBQWFAgZnJvbSB0aGUgcm9vdCBHVCAqLw0KPiA+ID4gPiAgwqDCoMKgIMKgwqDC
oCBpZiAoSEFTX0hFQ0lfUFhQKGd0LT5pOTE1KSkNCj4gPiA+ID4gIMKgwqDCoCDCoMKgwqAgwqDC
oMKgIMKgwqDCoCByZXR1cm4gZ3RfaXNfcm9vdChndCk7DQo+ID4gPiA+IA0KPiA+ID4gPiAgwqDC
oMKgIMKgwqDCoCAvKiBUT0RPOiByZXBsYWNlIHdpdGggR1NDIGNoZWNrICovDQo+ID4gPiA+ICDC
oMKgwqAgwqDCoMKgIHJldHVybiBJU19NRVRFT1JMQUtFKGd0LT5pOTE1KSAmJiAhZ3RfaXNfcm9v
dChndCk7DQo+ID4gPiA+IH0NCj4gPiA+ID4gDQo+ID4gPiA+IFRoZW4gd2UgY2FuIHVzZSBpbnRl
bF9weHBfc3VwcG9ydGVkKGd0KSBpbnN0ZWFkIG9mIA0KPiA+ID4gPiBndC0+cHhwdGVlX2lmYWNl
X293bmVyIGFuZCB3ZSBjYW4gZHJvcCBoYXNfbm9ucm9vdF9weHBndC4gTWlnaHQgYWxzbyBiZSAN
Cj4gPiA+ID4gd29ydGggbWVyZ2luZyB0aGlzIHdpdGggSEFTX1BYUCBmb3IgYSB1bmlmaWVkIGNo
ZWNrLCBidXQgdGhhdCBjYW4gY29tZSANCj4gPiA+ID4gbGF0ZXIuDQo+ID4gPiA+IA0KPiA+ID4g
PiBEYW5pZWxlDQo+ID4gDQo+ID4gQXMgcGVyIG9mZmxpbmUgY29udmVyc2F0aW9ucywgd2Uga25v
dyBhYm92ZSBjb21iaW5hdGlvbiBtYXkgbm90IHdvcmsgZm9yIHRoZSBERzIgY2FzZSwgYnV0IGkn
bGwgZ28gYWhlYWQgYW5kIHJlLXJldiB0aGlzDQo+ID4gYWZ0ZXIgaSBsb29rIGZvciBhbm90aGVy
IHdheSB0byBhdm9pZCBjcmVhdGluZyBhbm90aGVyIGRldmljZSBpbmZvIHZhcmlhYmxlLSBpJ2xs
IHRyeSB0byBnZXQgYSBrYXJuYXVnaCBtYXAgZ29pbmcgdG8NCj4gPiBlbnN1cmUgd2UgaGF2ZSBh
IGdvb2QgY29tYmluYXRpb24gb2YgZXhpc3RpbmcgZGV2aWNlLWNvbmZpZyBpbmZvIHRoYXQgYXJl
IHJlbGlhYmxlIGZvciBhbGwgY3VycmVudCBhbmQgTVRMIHVzYWdlcyBlbHNlDQo+ID4gd2UgbWF5
IG5lZWQgYSBuZXcgZGV2aWNlLWNvbmZpZyBhZnRlciBhbGwgKG1heWJlIGEgYmV0dGVyIG5hbWVk
IG9uZSBpZiBuZWVkZWQpLg0KDQpBbGFuOiBMb29rcyBsaWtlIHRoZSBvcmlnaW5hbCBpbnRlbF9w
eHBfaW5pdCAod2l0aCBvbmx5IHRoZSBjaGFuZ2UgdG8gSEFTX1BYUCB0byB0YWtlIGluIGd0IGFz
IGlucHV0KSBtaWdodCBiZQ0Kc3VmZmljaWVudCBmb3IgYWxsIGNhc2VzIHdlIGhhdmUgd2l0aCB0
b2RheSdzIGh3IC0gd2l0aG91dCB0aGUgbmVlZCBmb3IgdGhlIHB4cHRlZV9pZmFjZV9vd25lciBv
ciBoYXNfbm9ucm9vdF9weHBndDoNCg0KCSogZm9yIEhXIHdpdGhvdXQgUFhQL0dTQy1IdUMtQXV0
aGVudDogd2lsbCBmYWlsIG9uIGVpdGhlciBIQVNfUFhQIGFuZCBfZ3RfbmVlZHNfdGVlbGluaw0K
ICogZm9yIGFkbC90Z2w6IEhBU19QWFAgd2lsbCBQQVNTDQogKiBmb3IgZGcyOiBIQVNfUFhQIHdp
bGwgZmFpbCwgYnV0IF9ndF9uZWVkc190ZWVsaW5rIHdpbGwgcGFzcw0KICogZm9yIG10bDogSEFT
X1BYUCB3aWxsIHBhc3MgZm9yIDJuZCB0aWxlIG9ubHkgZHVlIHRvIFZEQk9YIG1hc2sNCg0KdGhl
IG9ubHkgb3BlbiB3b3VsZCBiZSBpZiBrZXJuZWwgd2FzIGJlaW5nIGJ1aWx0IHdpdGhvdXQgQ09O
RklHX01FSV9QWFAgYW5kIHdlIGFyZSBydW5uaW5nIG9uIE1UTA0Kc28gdGhhdCBtaWdodCByZXF1
aXJlIHNvbWUgIlRPRE8gLi4gTVRMLi4uIiBjb21tZW50cw0KDQo=
