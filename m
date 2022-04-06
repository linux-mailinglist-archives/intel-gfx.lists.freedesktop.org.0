Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50DBC4F58F4
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Apr 2022 11:21:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C39D10EE6C;
	Wed,  6 Apr 2022 09:21:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0517E10EE6C
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Apr 2022 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649236888; x=1680772888;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=vtEj921wpeQkSPhML1CVEEVJmAx81Kd+458jgKTDnzA=;
 b=jUrJ/szRxWeVDfBXWmflDdOs/WjA/g3HWBUnXyZaypGZRIysXjzNmgue
 TcDT5ZaHTT8lkF8v+93+cR71vgGtetw6JYmKarfEi2fxoW8FrDl9MK1E7
 KqwJBTAW6BtkZ+07M9uWWznV7cdBfbA+QAzTfjVm6Z5/rCmUX7pVZIIlk
 LSfaFxTgOum8k6byoqgepQIgQHs7cKUDhzta/mwieNNXyv7dqULHIHJhe
 eUlcniACqfUPpAhstfqYpDsBZEtQZcRVZBIkrMmn7po4S9C1mWwoMz7or
 rMdMsk/B+C9iwXU4GfC+6PHkgzUSxoUuIg5pMP7+OzfZhAOeLEY0OOMob w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10308"; a="347438407"
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="347438407"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2022 02:21:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,239,1643702400"; d="scan'208";a="523846908"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga002.jf.intel.com with ESMTP; 06 Apr 2022 02:21:13 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Wed, 6 Apr 2022 02:21:13 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Wed, 6 Apr 2022 02:21:13 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Wed, 6 Apr 2022 02:21:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZpRYEO0Iv4sqwPSb5o8PqnS5B2eaKvhfIneAF/7Lhr2ZtuWmmYXJMYyC+HTLsRNFRqvmpkfaW53/WyxeL1wH6CasJdpDvqmVLqX8zeAphU2wyMOAkq98dyYa10mN69mZpP4pRZkf2QTUjTZTyERc1h1I6Yf3SLDtcSHbEoc6OVd91Ww8SOEOaHmSYj9zqm74KamuGuHoJy8nntxx+YdSeovUJ59YK1S6V4wM1ZrZBWhfPc/gkPnh7TxwMjLyptYXGYxUkLziVJXp3ciq1Zn2QvO00trxnWOWbEEgFWzaldvq30cEQTnOK7Sw0gNBM5BIknQNK4s7F8S0p5bgrZOWjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vtEj921wpeQkSPhML1CVEEVJmAx81Kd+458jgKTDnzA=;
 b=H48fNIUTwhCS5D/9cFPzRfxek7voAF5jWZ7ooxfpUhJLv1HM5dqs/+rjd6YND/ROkwK4fFCVyaEYrDNoDI6EE98kKLcnc7MMomth7upLet31xbDtmqjvZ/RvmDsTSA6ggJpy/+bs+Nb+pxeMY+eyUm7b/hch5aOp8afW1+lkFAYko0TWreEzAEejmuxyG+oPI3qsPx79CxTWQFenMO7Xlih2mpGDW/TqjTH3x41lpc3LhbO6H5QIJco9/FkSDhq68wNnzkMm9OyzJrBcGaeULoiiEC+YJsQfwzf5869D1rd7J9fpWZ6g5q27rT4mlXZsOzdQ5B9XbFfl7bdfJOQlMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CO1PR11MB4962.namprd11.prod.outlook.com (2603:10b6:303:99::23)
 by DM4PR11MB5328.namprd11.prod.outlook.com (2603:10b6:5:393::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5123.31; Wed, 6 Apr
 2022 09:21:11 +0000
Received: from CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c]) by CO1PR11MB4962.namprd11.prod.outlook.com
 ([fe80::ddc3:c37d:9541:9b7c%7]) with mapi id 15.20.5123.031; Wed, 6 Apr 2022
 09:21:11 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
Thread-Topic: [PATCH] drm/i915: program wm blocks to at least blocks required
 per line
Thread-Index: AQHYSY5dgY+xsSDvA0u8CZB/B487+azinDCA
Date: Wed, 6 Apr 2022 09:21:11 +0000
Message-ID: <2370d248501c25d719e8f298b0ed02031c8e0742.camel@intel.com>
References: <20220404134918.729038-1-vinod.govindapillai@intel.com>
 <20220406081459.GA14945@intel.com>
In-Reply-To: <20220406081459.GA14945@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3335d12a-cf2c-4f8c-a2ee-08da17aeca73
x-ms-traffictypediagnostic: DM4PR11MB5328:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <DM4PR11MB53287908A3D0F0BA401BB622F6E79@DM4PR11MB5328.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GtGlMQBvzDXOQvq9MN2OGDdWQgk8RUpxxeJNTyK8Dz41d0PUk7qydeR38Vu7qUXmF04GFqpgU65bj7o7/GU7pxhfl/ywjNWmqR6Qj5y3qTkQ14G/Um3LvYjcJsypzWzFetg7RY+r8iw7pAB1T6ldEQ/3ZkDySCRdWNHHGI2A/ABba4dXmE2QDo+H20QoCuDuy4Ap0tO7mjAkaPHYi8LGV4QR4IwvS4qjoD47C6O+46JIqaWDxCDX+IRbLLyU2KQmZR3jDlY+utHXDim/AbqRbCGthcSgJi3U7YQFWntPg9+G3BAJ1VKuW053qpPP1uloMMH5aQTm0qcSDm9Hi/UunTPQMC0rAHXe6w1fs2fAd2g2NVac8XGtRXp43TDJtKRHdOXxjb8wKKUcYEWIDJaNUPmX1zZ0Rvh/S5SxTl0Ce8N9kBe6G0VEt0ssMIE6ho4/qtNgnG5fWB2JSxxDuBJ6+cjQjLIenLr9l/ApYdLDbcRZrwVxH0Dzdc2pj3sQG+A1x4kTPmqR/J4xfyLhpdEBoFX8Zl0ahSQ+RtJwdeXFYf6ezqPhBNIEhd/8ec1hSdQ+IpwYfEqlSaSLFV5ur/A8k7keCIo+F4++Op5+t0r0JVdhLePR16nnXRNmaSru53FU+aBd1dC1o5jD3c72WFP2HUTeuD+s+/CTdnzcmfTbWY7Bceo+dG6yQ6wQYow2g+E5FSypaYz2dfQ9VbxPfU9wOw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4962.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(6862004)(122000001)(66476007)(6506007)(66574015)(6512007)(64756008)(4326008)(66556008)(66446008)(2906002)(86362001)(82960400001)(6486002)(508600001)(8676002)(66946007)(186003)(38100700002)(26005)(54906003)(6636002)(8936002)(5660300002)(2616005)(71200400001)(37006003)(316002)(76116006)(36756003)(91956017)(38070700005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TDBtc3dGYk16eTkxUFVDZ0Z2WFNXVzZkRzN2WkdnZkNUOE5NR0lPVTZwNVVv?=
 =?utf-8?B?aVEwN09Dd0l5bE9jU0p3TjNRS0ZWUm44M0RBNElrVU1sZTg0aGRUYVBBa2xr?=
 =?utf-8?B?QmNrZHphMUY3L3JxZXVscVFidGZyOExkMDF6d3hZUktLbmlaVnJVSTFFN2F2?=
 =?utf-8?B?WWR1WVJ0cHg2UVJWZjR0Q0h4cldoNjhEdFNmYnhlcTJYUUx2YUVvN3p3T2p2?=
 =?utf-8?B?bmZWMDJsKzV3NEtSS2w2TzFjMXRSclMvdTA2MWx2THp3M05nSVh5WWliMzNK?=
 =?utf-8?B?alJ1N1l4U3F3UXJseUpLZks0ZWtFYkRiM0l6NnlUWGVHczA0U0E0TU05SUFw?=
 =?utf-8?B?QlYvMjBQRm9sVWVGZW83KzdpNVc4OEZIMC9QcW14bXRPZ1V0RWZBNGprZ1p3?=
 =?utf-8?B?OEFlOVR0cCtmbHRydG0wd1EvS0taRnpDbXBOamxrbHRKaEhvTHUzWGRubWw5?=
 =?utf-8?B?WkJhalpJZlNKTE5NWUVkNW82bXZ4c1FGYndMcGVoS090MzRCY1lsRFd5K05o?=
 =?utf-8?B?bG5BQ3VReGlGZWZIZUpvMnQzSjhqRVphcnhhRGVLb3M5U1lORDA5RWpKUVZZ?=
 =?utf-8?B?Yk04Wjd1aE5vdUM5dTR6LzRmQnJvbXFSWkpJOWZJUFVmL2ZiaytzeGNySGNC?=
 =?utf-8?B?aUZDOW5UeUdHZmw0M204UjUxRk5GVnN6V0dTcWR5Qk1Oc3U2QTRQdDJWSnZD?=
 =?utf-8?B?WVhBbzFxenhreVVWWnZLanpaRlpNSEppTnJlc2dlYUJkSG02QXViMXFBcVRP?=
 =?utf-8?B?UmtTOWVuRXBOTm4zOEJlUlRYamFoSjVYTllkR21wTms5Tm4xZHR5ZDZsQjdm?=
 =?utf-8?B?OUlXUEpXcktBNTZ3NDd1NXBZK1hkOHdLV2NJaHhaWHJsSmpXUmMwR1FRODlV?=
 =?utf-8?B?SXM4aXVyUUFsUms4R3ZSZ0Izcnc3SS9zS3QxZUJZcXJQNlpsbXpBRzU1RExx?=
 =?utf-8?B?dlVDc01wVWlBY3J1T2hRVlRia29Sc3hZSW1keDJualZFSlM3Ym5ka1E2UWJx?=
 =?utf-8?B?dU44VVVFN0ZlcG9NQzZBSFZJS01vdE9lNlBtakxMK0l4NFNkWmFSaUcwRHBY?=
 =?utf-8?B?dGFGZVBhZFgyYzZrbitFL2tYNnc4TTEvMENteG04MnVqUXBIdHFEZDVzR3FU?=
 =?utf-8?B?QVB4YjBGYy9WdVFzRVplSW9SRWt0c25xZGR5dm9VNmdZOVdRWElPNTRSRFpx?=
 =?utf-8?B?TzBLcVBVU1huRGNmaW5iVDQwdVVoelhYdERrd2JGNGpVOHJ6TXJDTlJIeTFK?=
 =?utf-8?B?MFVQMWNxWjlmdkdsRmdtaitpZkN5SDl3ZGRTUkw4d0tHeHJuODFOaWN4c2cr?=
 =?utf-8?B?eWRxMmZ4anVXSmd3VUk1aW1sdjVTM3Y5VXVGWTdvWWZjaDlwaE1VajFxaUJh?=
 =?utf-8?B?S1NaUGhxVnZLanNyVEUwSGVwejVHNS9vTEZ2RDV4bDhGSmJLTHdlK3FmZDZa?=
 =?utf-8?B?TGFCeldab3N0VCtpNC9aaWxtaGVsclNyN1U3c1R4bXVpeDZCT3pFUmQ1MEFO?=
 =?utf-8?B?eVI4eTgzakU1MlMxY1BpOW1COHFlamVoMjA0ZkhDQ2Myc3A3KzZmZjJTRll1?=
 =?utf-8?B?cExEMEpDdVpUK0JTcFdocXo5SVgxUy9qMzBGQ3NkRVdLZnBZUlRxR1IxUCtz?=
 =?utf-8?B?R3pObkluSHpWVFhlNlhEeXRkM1VmdHQzYzlZalFGV2grUkkzV3BBR1RNU1Va?=
 =?utf-8?B?ZnQ2UWZtaXh5d0VtMkQvT1pScmVxem9ZN0p6YjBrakIvSGhEOEx3YUNJeldh?=
 =?utf-8?B?QU90MTJHQmlzZVVBSDA5Yy83R0VyNUtUQ2U5YnBBRUdvQXpjNjVRWGFCaWhE?=
 =?utf-8?B?S0hBdW15eGExRHp0NWU3TnQrdHowbm1YemhZRUNKU2NiUVFsckI4elJqOXpj?=
 =?utf-8?B?dFhlMEwrd1lTZjBGTnlIUjgrekNqRzhqckhQUy95RGRXVC9SZCtDVnJpY1hv?=
 =?utf-8?B?Q0hBTDFod3JlZkNQQWFOS1c3SVVFTFkrdVFCNVh5R2gzOFY2SHhMcTZHTVFa?=
 =?utf-8?B?SzVUY3g4cWxhUkNKU0g2R3JlQ3ZtKzR0TDljdG5QVFVvRlRFM0cyL1pMU0tu?=
 =?utf-8?B?R2tRbTRNajNtdjh6NmFqZlBjbVlScXRNVWt1REtIamtBVmdxN3V2cVYxYkg5?=
 =?utf-8?B?bmhSdExZb0UrMFRyZW5TNDRRdXJGS1dEZ2FQL3BRMndORG5ZM3R0WTdsK09n?=
 =?utf-8?B?dmVwVG11aGZ6KzNQSE1qQnp6YjhjbkFMTy9CQXdhM1dSSko3NE85OVZTN1Vo?=
 =?utf-8?B?MHpnUjFjQTNiWmlsZkxSaVY5ejJjNW1CdUx4QTZ3RTVuOGdIK3gvdlJwZ2ZS?=
 =?utf-8?B?YmlkM3d3VTV2Y0Jlc3lrcm4wZW9RWWRsY1dQTExLL3I1WFBuZkhVbDl5bEhp?=
 =?utf-8?Q?BhFM+h5ekTPXDQbWyhNPXJTy+dcNwv8lJdpBj?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <0998A4849CADCF4D8A27FFDAF42A66F4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4962.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3335d12a-cf2c-4f8c-a2ee-08da17aeca73
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2022 09:21:11.3733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ehfEhlNKxjF/O+SiGc6XWI/7sj25nRx2NCHA22hnQh1jrOBCtw0nFVlm39FtMIpwmpTOpLHWAL+FZ2z1W5RasYskmNWDrUpI2NfFTi4ZOBA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5328
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: program wm blocks to at least
 blocks required per line
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

T24gV2VkLCAyMDIyLTA0LTA2IGF0IDExOjE0ICswMzAwLCBMaXNvdnNraXksIFN0YW5pc2xhdiB3
cm90ZToNCj4gT24gTW9uLCBBcHIgMDQsIDIwMjIgYXQgMDQ6NDk6MThQTSArMDMwMCwgVmlub2Qg
R292aW5kYXBpbGxhaSB3cm90ZToNCj4gPiBJbiBjb25maWd1cmF0aW9ucyB3aXRoIHNpbmdsZSBE
UkFNIGNoYW5uZWwsIGZvciB1c2VjYXNlcyBsaWtlDQo+ID4gNEsgNjAgSHosIEZJRk8gdW5kZXJy
dW5zIGFyZSBvYnNlcnZlZCBxdWl0ZSBmcmVxdWVudGx5LiBMb29rcw0KPiA+IGxpa2UgdGhlIHdt
MCB3YXRlcm1hcmsgdmFsdWVzIG5lZWQgdG8gYnVtcGVkIHVwIGJlY2F1c2UgdGhlIHdtMA0KPiA+
IG1lbW9yeSBsYXRlbmN5IGNhbGN1bGF0aW9ucyBhcmUgcHJvYmFibHkgbm90IHRha2luZyB0aGUg
RFJBTQ0KPiA+IGNoYW5uZWwncyBpbXBhY3QgaW50byBhY2NvdW50Lg0KPiA+IA0KPiA+IEFzIHBl
ciB0aGUgQnNwZWMgNDkzMjUsIGlmIHRoZSBkZGIgYWxsb2NhdGlvbiBjYW4gaG9sZCBhdCBsZWFz
dA0KPiA+IG9uZSBwbGFuZV9ibG9ja3NfcGVyX2xpbmUgd2Ugc2hvdWxkIGhhdmUgc2VsZWN0ZWQg
bWV0aG9kMi4NCj4gPiBBc3N1bWluZyB0aGF0IG1vZGVybiBIVyB2ZXJzaW9ucyBoYXZlIGVub3Vn
aCBkYnVmIHRvIGhvbGQNCj4gPiBhdCBsZWFzdCBvbmUgbGluZSwgc2V0IHRoZSB3bSBibG9ja3Mg
dG8gZXF1aXZhbGVudCB0byBibG9ja3MNCj4gPiBwZXIgbGluZS4NCj4gPiANCj4gPiBjYzogVmls
bGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBjYzogU3Rh
bmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gDQo+
ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxh
aUBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3Bt
LmMgfCAxOSArKysrKysrKysrKysrKysrKystDQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAxOCBpbnNl
cnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2ludGVsX3BtLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF9wbS5j
DQo+ID4gaW5kZXggODgyNGYyNjllNWY1Li5hZTI4YThjNjNjYTQgMTAwNjQ0DQo+ID4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfcG0uYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2ludGVsX3BtLmMNCj4gPiBAQCAtNTQ3NCw3ICs1NDc0LDI0IEBAIHN0YXRpYyB2b2lk
IHNrbF9jb21wdXRlX3BsYW5lX3dtKGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlDQo+ID4g
KmNydGNfc3RhdGUsDQo+ID4gIAkJfQ0KPiA+ICAJfQ0KPiA+ICANCj4gPiAtCWJsb2NrcyA9IGZp
eGVkMTZfdG9fdTMyX3JvdW5kX3VwKHNlbGVjdGVkX3Jlc3VsdCkgKyAxOw0KPiA+ICsJLyoNCj4g
PiArCSAqIExldHMgaGF2ZSBibG9ja3MgYXQgbWluaW11bSBlcXVpdmFsZW50IHRvIHBsYW5lX2Js
b2Nrc19wZXJfbGluZQ0KPiA+ICsJICogYXMgdGhlcmUgd2lsbCBiZSBhdCBtaW5pbXVtIG9uZSBs
aW5lIGZvciBsaW5lcyBjb25maWd1cmF0aW9uLg0KPiA+ICsJICoNCj4gPiArCSAqIEFzIHBlciB0
aGUgQnNwZWMgNDkzMjUsIGlmIHRoZSBkZGIgYWxsb2NhdGlvbiBjYW4gaG9sZCBhdCBsZWFzdA0K
PiA+ICsJICogb25lIHBsYW5lX2Jsb2Nrc19wZXJfbGluZSwgd2Ugc2hvdWxkIGhhdmUgc2VsZWN0
ZWQgbWV0aG9kMiBpbg0KPiA+ICsJICogdGhlIGFib3ZlIGxvZ2ljLiBBc3N1bWluZyB0aGF0IG1v
ZGVybiB2ZXJzaW9ucyBoYXZlIGVub3VnaCBkYnVmDQo+ID4gKwkgKiBhbmQgbWV0aG9kMiBndWFy
YW50ZWVzIGJsb2NrcyBlcXVpdmFsZW50IHRvIGF0IGxlYXN0IDEgbGluZSwNCj4gPiArCSAqIHNl
bGVjdCB0aGUgYmxvY2tzIGFzIHBsYW5lX2Jsb2Nrc19wZXJfbGluZS4NCj4gPiArCSAqDQo+ID4g
KwkgKiBUT0RPOiBSZXZpc2l0IHRoZSBsb2dpYyB3aGVuIHdlIGhhdmUgYmV0dGVyIHVuZGVyc3Rh
bmRpbmcgb24gRFJBTQ0KPiA+ICsJICogY2hhbm5lbHMnIGltcGFjdCBvbiB0aGUgbGV2ZWwgMCBt
ZW1vcnkgbGF0ZW5jeSBhbmQgdGhlIHJlbGV2YW50DQo+ID4gKwkgKiB3bSBjYWxjdWxhdGlvbnMu
DQo+ID4gKwkgKi8NCj4gPiArCWJsb2NrcyA9IHNrbF93bV9oYXNfbGluZXMoZGV2X3ByaXYsIGxl
dmVsKSA/DQo+ID4gKwkJCW1heF90KHUzMiwgZml4ZWQxNl90b191MzJfcm91bmRfdXAoc2VsZWN0
ZWRfcmVzdWx0KSArIDEsDQo+ID4gKwkJCQkgIGZpeGVkMTZfdG9fdTMyX3JvdW5kX3VwKHdwLT5w
bGFuZV9ibG9ja3NfcGVyX2xpbmUpKSA6DQo+ID4gKwkJCWZpeGVkMTZfdG9fdTMyX3JvdW5kX3Vw
KHNlbGVjdGVkX3Jlc3VsdCkgKyAxOw0KPiA+ICAJbGluZXMgPSBkaXZfcm91bmRfdXBfZml4ZWQx
NihzZWxlY3RlZF9yZXN1bHQsDQo+ID4gIAkJCQkgICAgIHdwLT5wbGFuZV9ibG9ja3NfcGVyX2xp
bmUpOw0KPiANCj4gSSB0aGluayB0aGlzIGlzIGEgZ29vZCBmaXgsIG5vIElHVC9CQVQgcmVncmVz
c2lvbnMgYXJlIHZpc2libGUsIGFsc28gDQo+IGl0IGZpeGVzIHNvbWUgb2YgdGhlIGN1cnJlbnQg
aXNzdWVzIGF0IGN1c3RvbWVyIHNpZGUuIFNvIGRvbid0IHNlZSBhbnkgcmVhc29uDQo+IGZvciBp
dCBub3QgdG8gYmUgbWVyZ2VkLg0KPiANCj4gUmV2aWV3ZWQtYnk6IFN0YW5pc2xhdiBMaXNvdnNr
aXkgPHN0YW5pc2xhdi5saXNvdnNraXlAaW50ZWwuY29tPg0KPiANCj4gUC5TOiB0aGVyZSBpcyBz
b21lIGNoZWNrcGF0Y2ggd2FybmluZywgd2hpY2ggcHJvYmFibHkgbmVlZHMgdG8gYmUgYWRkcmVz
c2VkIDopDQoNClRoYW5rcyBTdGFuLiBJIHdpbGwgY2hlY2sgdGhpcyBhbmQgdXBkYXRlLg0KDQpC
Ug0Kdmlub2QNCj4gDQo+IFN0YW4NCj4gDQo+ID4gIA0KPiA+IC0tIA0KPiA+IDIuMjUuMQ0KPiA+
IA0K
