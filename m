Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9024E6FBF
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Mar 2022 10:04:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2451010EA40;
	Fri, 25 Mar 2022 09:04:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 92DBA10EA6D
 for <intel-gfx@lists.freedesktop.org>; Fri, 25 Mar 2022 09:04:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648199051; x=1679735051;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=u5mx2hlIjsZ6YKkzdJTw0Aqyq86rR6X4Gos4c59y2SE=;
 b=PhO2+RRPrpYOuxzg3CpkoaMbWwgjPrrXmCvFyostvbBaA3DGAu3ILkZB
 1UQODomQwDfUw8WqbtJMOUU3DKWJQ58VT9rchfpUx8II/gzAoJYiRnXF9
 BWak0AZTgV5VkfMZOBOjYhmN4dKLzWh7uLgoIuNE8hm4kz3KDeTqZEnnS
 DMuQoIE/71OkDns7QIWzbBucNOGlMsUCtG4fHOz+9Lw0pQEtPgzPTX6MU
 ywJHpD3GG1/ZTIEkRLp+ND71av9vbeGxAcc3gCrd86t0DxGYVQbuMjFuG
 ngFdUONh7bdr0u9Iwg9Ju6kfuE76NPZu7zLoFfZ7B2h8P4af4fm3cki8O g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10296"; a="258785176"
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="258785176"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2022 02:04:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,209,1643702400"; d="scan'208";a="520134362"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 25 Mar 2022 02:04:10 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Fri, 25 Mar 2022 02:04:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Fri, 25 Mar 2022 02:04:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Fri, 25 Mar 2022 02:04:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bj7D500nucrQlYxh1wYFi3Bvm6r2T4mHUx4l7WTn5h2992wcAIg5pdjqCn2I6owInJjiI5eZ4K/TqRPF2UR4SkLfDGEatJx5bBh4Ri+/HkZENLGSlY6qqJffTVHl8ZifQLyDAVuz/4c39TeyvmkE7mNDy/GXZ3vwreSBHu30Vsdbp+Wbyv4m8In3BCeSeo/1v8YVWFWQgTjXm2SeZPSVL+NSyJCqAiJmJXgdH+XisM42XPXAfRY6lhipDXYNG5L1Tt6IgL3gwBRZO8R0swifGGY5E/EDS7Eh4et/+EyMGtzxBQduveBQWlAiPcpnkhen9IO82OkN74qFlmzGEFBn7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=u5mx2hlIjsZ6YKkzdJTw0Aqyq86rR6X4Gos4c59y2SE=;
 b=JULsUqyWUV1HuSU0+4s3M7WlqXxJYZmmyVs0ApuKLwIurasRbPIJHc2bNIueHPO0qTBhqW6ofZ41w3Ujb+pLPiPcK0JgEtwiYkJP5muHLKfVOueaGccMRV+6pfyCimO5PlfLEhS8Gi80iWqvzYMb4Re5LiaixUuOcVkd9YAFyFqK1qLxOkfWx/XiOG5uNQqzNHY6tJgXOUQaS/D4jDBEddqACsWAU9RFlsNYWdrWxXX8iTccs67dQC1TnYTVjgznrMKSHH11cn8HLimsGBc21kzLajxrqtn+aUaxOFJJod4fGISvPebjB596HaPIjFSTibZtP2dsunYOE9eOZH4HdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN6PR11MB2033.namprd11.prod.outlook.com (2603:10b6:404:47::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5102.17; Fri, 25 Mar 2022 09:04:08 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ac5e:2fe2:3bc6:fe36]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ac5e:2fe2:3bc6:fe36%7]) with mapi id 15.20.5102.017; Fri, 25 Mar 2022
 09:04:08 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/2] drm/i915/display/psr: Set partial frame enable when
 forcing full frame fetch
Thread-Index: AQHYP6rEKh0EVZlMDEqUVfNF6ARY9KzPzzuA
Date: Fri, 25 Mar 2022 09:04:07 +0000
Message-ID: <7eff4a665c478b97e364627f070c07730fc64f28.camel@intel.com>
References: <20220324181347.129378-1-jose.souza@intel.com>
In-Reply-To: <20220324181347.129378-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d9004785-ca35-4e1b-bc67-08da0e3e6b7a
x-ms-traffictypediagnostic: BN6PR11MB2033:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BN6PR11MB20335B7CE02AB8B935C35CBC8A1A9@BN6PR11MB2033.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 87S0v2iAiQ5jJbeCvko+oZ7/0SMM6MmzWS+xGA8AMGsx1KOQ/ZN2NQ6TZimNmYbmj4OnwWdadvHj4zbc81VpfqTTTNV2jt76GnRXdeqmWCkcGpgPan09mXVO50OGy6bmdknRdHEqWkBWBVn4Yht+EFumC7WmsRqJXpDkwcagWyEO/yyy7jSfeR1QNi0YPtvCjMkNCwGFo+7thGTm7MNbHdS1tqCu3LansaeeWDFAnH6QmCZS66m1EUDkLyorWmwx93fNBGH8HEPabSZR2UxKiPTXqGO7x2ztIEklQKouYtBkECnZGHU2dgcBUWy8fKtVfGEsmRzqUuEaHWryf8OELYMkCP+CUWcGu1jzdcGN0IS0/QF/zQ+cVmTTQjN8wpYNpNLyEwlQ2vBkP9qh51U2KJsF7n6qJQ/Cy2mdmNPVAc875+N12XSCQ9IJnxdZrq1sxWGnLSsjfmRGQ17ICXAtCxUb4M9gJQaOdhLvz/Ug8N0NRsyF4DCBpaxn4GnxYzltZx7shL5am9jdIYAoE4eUh7l5V6zxSnCEgNzauP3BDSOiVC8w7V0t3loUafmp5g/7r3gkAm+dH8lEnzox1dxbrmApnpKs6hmcYuMy+YWE6ppUwAiCeMDmd0ILsnGPzEfmIVbpFdFV4JuXlN5o8UY8bT8igPfcwrHg5l5c69ZmgoTJ/6WbfPvGbQuyCdjqqpD9drGOH1VZGHEkkr9X3j/67exFr7s95MaWOnhVI9OjfrfOoVJrkxyCqFoExDqPnCU9
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(508600001)(91956017)(5660300002)(6636002)(71200400001)(6486002)(8936002)(2906002)(38070700005)(36756003)(86362001)(110136005)(82960400001)(122000001)(38100700002)(2616005)(6506007)(66574015)(186003)(83380400001)(6512007)(107886003)(26005)(66556008)(66946007)(8676002)(64756008)(66446008)(66476007)(4326008)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YUc5VjgweVh2QVFPY1o0REdXNjRwZWoya0NHdi9JYzBEYXF5aUQyb3lzMjAy?=
 =?utf-8?B?YmhkTmxDTmxqK3ZXOUcvUGx1RDBCNG02bWV4WHhMNGVZbTBaejBkd2pSUFRM?=
 =?utf-8?B?MSszUWdKMmhtWkdkOVNWTUJIT3RUMlBuNis2V0o2emluRFY4ZFBmckwvUGc2?=
 =?utf-8?B?cFpMUnlNSi95ejkxdE1zaXcvVkk5anFDTGxqVFEyQTE5bTNFSXk2a1B1RkRR?=
 =?utf-8?B?bWprVTZRT2MvcGJGbXlyLy9QTmdxTTRaZThwbHhMS0ZrNnduelh4VW9Od0VY?=
 =?utf-8?B?ZlBjczhnTzdCQ2RMemxYeXVKUXZ3RnhxdHNlaXJmaEx3eC9KRUl5K1RYaWE3?=
 =?utf-8?B?ZzZqcG9NUGtpUFZaOGZDanFScHR0QjYwV2Q5YzdoQWFlNTJzdWVLQlIrVVM4?=
 =?utf-8?B?ZnE4dkM3QXdRN3kzSDQ0K01aekJVckZWdmpqeG1aWkVYVFAyT0YxalJVQTJW?=
 =?utf-8?B?MEx3YnJJaGNiMDdBcGdBeUZzeHd2dlJBcnlDV1BZMnRmYVViV2xCQlM1YlBa?=
 =?utf-8?B?NWJ6ZlozTktCSU1aUElQdGJJMkVDMENRQThRZEhHMmRtbzc3YXR2Z2ZDSHdt?=
 =?utf-8?B?SkxpUTVvWEdwdlRMdGpjS0pJR3FTRGxtQ2E3Nmw0Z0QwSEJXaDZyOTVBclFS?=
 =?utf-8?B?VXZoMjk2ZmY1NzV0VXpuanFOU0hZZVRiRW9EY0JwL2kxTGJRWUpjS2hWdkZU?=
 =?utf-8?B?MEtpM0ZjRlVXMG9XR1NlTHg2SzhGN2Nqb0tWQVR5SWJLR2VPSExhYnZpeG93?=
 =?utf-8?B?QVhrTk9zQXRPN3phaGRSMFNoZ0IvMlZxVXdXNkR0WUkyR0FETXY4cnRkL3ZI?=
 =?utf-8?B?aThmOTYvUUNXd0FqbFdKTWFsWkZCOVB4M1hwYUZ2U3g3b2JDczhpSENmck5R?=
 =?utf-8?B?aG5PMC93VEVCSmQxVTNYOXZTR1pEQmZwZ3FIYncyTTZPdE8vdmFqUWJXQUYv?=
 =?utf-8?B?MmFnMVNMdFA4VjFPNGdSYWR3TTM0Uk1QemlSdGJ5VDgwcldOSGM3UlM3K2gw?=
 =?utf-8?B?WGwxLzVSTGl5QWhQcWw1TzNzY1E2VkJFMzVpZDV5dGJQS25FRjNNWnZVZ0VY?=
 =?utf-8?B?bnRPZ1BlM1RvSUsyaGNSQTFPczZUc0JybWhGd0E4ZHN6RjN4dldDSDNMTWNB?=
 =?utf-8?B?WW92UnF4MlBidUVqaWRnc3hmeStkdEQ4bENzWEhNMVNEZ0N6TGQrb2h5Z0Yw?=
 =?utf-8?B?YytSeElmZUxCSTRNVmlpNEZyWi9ydWdpRUg1Zm5WYnFKcUNGWHdLOWlVT013?=
 =?utf-8?B?Q2tybW02WVhKTmpjbUJxeFBXbXhScGlYWUtNTDZvbks4VFYvWnBhQ1k1ZG02?=
 =?utf-8?B?YVZjZjRtcGJjWEI0a3dzZ09vM0YxRFhyMXhJanZjYWlKZUJsbjlBQ2VaZDVN?=
 =?utf-8?B?bFlqSHB2WlZTOElpOHgyL0VIOEtJY2orWjRHVis4Z3BCS29kdzRjbWU1VE1F?=
 =?utf-8?B?YXlGaWllNVAvdFhLcmh4a0t6TCt1c0NYbHNEQVg3QUlIR0RHY2hieEc4MVpW?=
 =?utf-8?B?VGJST1IxUkJYeWhlZzB1Rk02K3hPRkszYXBxVUtOekxNYTd4NG1EaC9PSXFv?=
 =?utf-8?B?L1ZGSGNDNTZpYXcvbEpLclNLbkp1YStJZ2MyRncrNVFoSGNUWlYyNkRZNlA4?=
 =?utf-8?B?ZXZMSFM3MmNibmFERi9QcUQ5bEhWdXhjd3dzM1lpdnUwK3hkK3plN25mL0ZH?=
 =?utf-8?B?NW5qQ2drRGdGSkdhMjB4K3E3b21aMmpDY2pZR29SZDFyWkZkSHdxQlNVVi9B?=
 =?utf-8?B?WElyUUR5dk82YU9nTGZwUWg4dXpUaXk0M0N3UWp4dkZhdDMzOUdMbStlb09m?=
 =?utf-8?B?UFlVeHRRVUUvVW9lTXF4R0QyNlRZUEFENUt2Tmh2ZGtSZHhZUHU3M1hNaTFi?=
 =?utf-8?B?cUlpQVhZVXJvbVhPT080NGRiZTkvZVFoWVllVis5ZnJwY2thYlluNkZReDN6?=
 =?utf-8?B?RmZjS25KbzRiL0s4WDh0UVpWQWgwTGlXdWltU1d0NUgra3dlS2d6SWZxR04r?=
 =?utf-8?B?WWJMcTN1czdJb1lQMmdEVHhZQ3ZyTFVCa2VQMXdrMlRuTTdQbnJpdC9CRUdC?=
 =?utf-8?B?VTlCT24zSzNvaXFvQjFMMExYQ1orNUlPYmd6eEdGMy8vUzVaMG1pMWYrd0JK?=
 =?utf-8?B?VW5VeVYxSDBJT2xwSjBVY2NaQUwzZzl1SnZXQi9yM1FNZ1pINW9JOHJPOStj?=
 =?utf-8?B?S1krVk5Lb3NMdXlIeGwraWVJbU56T1NGZDFtZ2tweDN4L21ZeCtvMzNyYUFh?=
 =?utf-8?B?Kzdpb3U0aTdhR1FlTnNac3htcytmMnFSUjRpTUV4eHBpeGdoQ0ord2xiMitL?=
 =?utf-8?B?U0VZNlFUb1kwMUtGQnUxaG9ZQkVjMGpvZ00wNFdRK0VXUGxjcGR5c1hiaHB0?=
 =?utf-8?Q?rdhWRRL0XmkBUZqLKrFbhUPjYSbWXbZIKAdb/?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B1D333DA7F2194449708BE9769B82E4A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9004785-ca35-4e1b-bc67-08da0e3e6b7a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2022 09:04:07.9376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GX45PLJql4hOjRPm6hKw5kjFnV2VGKYhD8ipz1tF9/hiKDZUo7TT0OqVOHHE7XbdD/fN2eQWj2EKekyNquXVMYu73MK8mX9OATFwxjUBdhk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB2033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display/psr: Set partial frame
 enable when forcing full frame fetch
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

T24gVGh1LCAyMDIyLTAzLTI0IGF0IDExOjEzIC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBGb2xsb3dpbmcgdXAgd2hhdCB3YXMgZG9uZSBpbiBjb21taXQgODA0ZjQ2ODg1
MzE3ICgiZHJtL2k5MTUvcHNyOiBTZXQNCj4gIlNGIFBhcnRpYWwgRnJhbWUgRW5hYmxlIiBhbHNv
IG9uIGZ1bGwgdXBkYXRlIikgYW5kIGFsc28gc2V0dGluZw0KPiBwYXJ0aWFsIGZyYW1lIGVuYWJs
ZSB3aGVuIHBzcl9mb3JjZV9od190cmFja2luZ19leGl0KCkgaXMgY2FsbGVkLg0KDQpSZXZpZXdl
ZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gQ2M6
IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBDYzogTWlrYSBL
YWhvbGEgPG1pa2Eua2Fob2xhQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSm9zw6kgUm9i
ZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMgKystDQo+ICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggODAwMDJjYTZhNmViZS4uZDg3YjM1
NzgwNmM5MSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IEBAIC0xNDU3LDcgKzE0NTcsOCBAQCBzdGF0aWMgdm9pZCBwc3JfZm9yY2VfaHdfdHJhY2tp
bmdfZXhpdChzdHJ1Y3QNCj4gaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgCWlmIChpbnRlbF9kcC0+
cHNyLnBzcjJfc2VsX2ZldGNoX2VuYWJsZWQpDQo+ICAJCWludGVsX2RlX3JtdyhkZXZfcHJpdiwN
Cj4gIAkJCSAgICAgUFNSMl9NQU5fVFJLX0NUTChpbnRlbF9kcC0NCj4gPnBzci50cmFuc2NvZGVy
KSwgMCwNCj4gLQkJCSAgICAgbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhbWVfYml0X2dldChk
ZXZfDQo+IHByaXYpKTsNCj4gKwkJCSAgICAgbWFuX3Rya19jdGxfc2luZ2xlX2Z1bGxfZnJhbWVf
Yml0X2dldChkZXZfDQo+IHByaXYpIHwNCj4gKwkJCSAgICAgbWFuX3Rya19jdGxfcGFydGlhbF9m
cmFtZV9iaXRfZ2V0KGRldl9wcml2DQo+ICkpOw0KPiAgDQo+ICAJLyoNCj4gIAkgKiBEaXNwbGF5
IFdBICMwODg0OiBza2wrDQoNCg==
