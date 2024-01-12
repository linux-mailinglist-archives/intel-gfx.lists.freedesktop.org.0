Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C7082BEEB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 12:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7645110EADB;
	Fri, 12 Jan 2024 11:07:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D30A210EADB
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 11:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705057641; x=1736593641;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=urjhRPl+jv+2mbqsw4+93kNIs5pdpafsMCuaZjI5A8o=;
 b=CrihJs6vqaIiOyBVin4r3sryBN4lgCLfWdGQ/g0JggZj7Dp+j4UqeoQz
 zhuNvvhtfjNSS0E69tEg7VkWRycHaBgn85YdckGc8W2klgY80ZB+IhPa9
 k8t1if4ShMGWaHA7UgndARyFxfY+3WwcASl+jyoJM6vej3gpdvouMs2DE
 u+h1Cu2HzFrhqXbyO57POCtf8gn+dpHnThvk/HDMhb/RSPRwMrOKR/Hj2
 KXrGFE/FWnZeeaZewu6N/QaXEG8CEYLIl876LLkR83ynbIyIK4eI6IR37
 MCjUNSLaAqtxKFPCPEzFugAx80pYTS55AtWobKMMnmSauF4/c5k8IPgrF Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="463430856"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="463430856"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 03:07:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="782996270"
X-IronPort-AV: E=Sophos;i="6.04,189,1695711600"; d="scan'208";a="782996270"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 03:07:21 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 03:07:21 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 03:07:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 03:07:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 03:07:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G9D2G2xpAT+BpuO9WYHCtCfxy7ZEdhxIinWpvF+zTQgd+QSJM8dyHhkX090Zpov0RBqd2fQpWxMvQPi9jV0BSzWCz0u06PDIuJCm1x4sQ6t6hopJjEoG0ewyiKMHQvNI/PTaWUilv4EZJy5bcgy9u+yvHwnHJFw8duU6MNPUiX5tQbWyRpn9PHktRggpo7wgCb2l8fLBQ+hvsOFnvYBC2yuFjind3eNoyUt+Fa6W9KUouwKcLu7WDghFl3emhXIO3lrpK21p6Fw4r5RiL8FuGZOAc2Ah5g6N7I1HTUirDeKx89MrihBp1mQoyUCO+J9Y4Wnpro7zZDeX3Oy6rRjlMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=urjhRPl+jv+2mbqsw4+93kNIs5pdpafsMCuaZjI5A8o=;
 b=UmlC8RB131BxPJIKTok1A2vfPijTpniv8rGQLhkVumEQo2zhsDbI+Q5mJNzgPKY9Jhs9Ovb9T7JMhqjtg9wL29TbsPq2kcp/E3fmWsaZvteFync4cEBb/DCxLpa8UuRP+DZ433kWl1SnEiGzoZydkDYcAgxc2fQi50NBUabFWXUfl+r/aeWe4lTPORRhJR1yLDHD+BZEn3UyvHzh2U29dk0ZP5STHImRZtsm0LKWBgn5iKK00ZL5OsXyNWkfOlmERYrhO+eyfJBWKbZy1AJKFsBFzwmH3JfFLed9hpaeqN8/fxrTuEu4CVuqb7QnNfFyNiCK+0F3ixYuid402LEdFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by DS0PR11MB7733.namprd11.prod.outlook.com (2603:10b6:8:dc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.19; Fri, 12 Jan
 2024 11:07:19 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::cacc:5b1d:99f1:a74%4]) with mapi id 15.20.7181.019; Fri, 12 Jan 2024
 11:07:19 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 07/13] drm/i915/psr: Add some documentation of
 variables used in psr code
Thread-Topic: [PATCH v2 07/13] drm/i915/psr: Add some documentation of
 variables used in psr code
Thread-Index: AQHaQ8bpRuuOvN8TtUuTen96JaN3d7DWBvuA
Date: Fri, 12 Jan 2024 11:07:18 +0000
Message-ID: <PH7PR11MB59813B2C5086F126E0882BD4F96F2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240110131304.2470006-1-jouni.hogander@intel.com>
 <20240110131304.2470006-8-jouni.hogander@intel.com>
In-Reply-To: <20240110131304.2470006-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|DS0PR11MB7733:EE_
x-ms-office365-filtering-correlation-id: 846825cf-7d30-42e2-9ecd-08dc135ea4a8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2seO/urjXDeky81KpvdU+JXuWm2ZFgnY+QNBxL76bohgT4FMZk9Ka0hYvIfRh6nQDt6jPxM7rM1yi2Na+8RFUuALqFtwgJ9yLVlJSEpQ+HR8WmWtfjW1BEktbxwsU+2TN2upYoWSooyHRUpFiLIqVzAfofJiU2AeDuug2NrCAkhiURKOyUhqgXpFqBKbnYlZ+cH9YRXuOCYMQecM6D4m/8Uo4bf+wnwViq2BOQjnZPIaL5QalsyIoVhxI9Z+gCMvYasX7Jaxa6AMe2UNjJr6OL4C84lfTEQaR/ClK/6if1ckZezZsuU6KbbcyC8j+TwEy+PEZXB6NQzGlAx80sUM2K4fhyYP/0LgEFatBDn7HuyqfNA7pNrrTvHQkty8drWuQdGIln/QF49JdV+gSR4xuluXkzzGQiuXiJN9E4XEF1r+1fiVFUtwpDZgVzRqhuKQY1/+S6SOn4MYXRTEx7NEFxHX6Hmw4ZiW8ZGdAgCgl7OMaWuD9XdlJOVXZQKHx+/6UsMaG4lhkvFgM9yoxCn+CAraZI5nTGQZBNyztaA0YFnQW/I5RYMIIVElRNFiMU3lctgkJG1APR3pNpf7iwwMcCXA2x/Dj93J862Uqvt1cHBVThdo+m0fPsGSZxVFwR9I
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(376002)(346002)(396003)(136003)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(122000001)(66574015)(83380400001)(71200400001)(26005)(316002)(38100700002)(52536014)(110136005)(66556008)(66446008)(64756008)(9686003)(76116006)(66476007)(5660300002)(8936002)(8676002)(7696005)(86362001)(41300700001)(53546011)(478600001)(2906002)(55236004)(82960400001)(33656002)(66946007)(6506007)(38070700009)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?a2djL05pWGNkRWl2cDJEUjh3dUpDbWJ2eW52cVRGTzRkWFhRTmoxdnlHSlJU?=
 =?utf-8?B?K2M2QkdxU3kxREd1OVVKUnhLOUQzSUVFWVRPZjVQVmd5N3pxS1FWcE9aU0VC?=
 =?utf-8?B?WGMyTk1oT09EcmREWDk3b1RidmtiLzZKc3FWSkR4QlRMOGlrKzIwSElYeTZ5?=
 =?utf-8?B?aWdBMDYrdDFrM3V3bndVbzluaDcxWXpBSWpjTExyL3AwekQ5U0xFazAyaEFo?=
 =?utf-8?B?K0daUU1JaUU0T2pHaHlZWkRmVG5tdTRUVG1UZVUwQlR4WWdjTEJ5YXpoSkNT?=
 =?utf-8?B?SVpzNGlWZGxISzN3K29Oa0Z4S1lBdTl3MGMrM1V2Y21IRlNWeGpEWFdlWkxp?=
 =?utf-8?B?NGRyVnl4VHlsS3BBVFlBR2lIWUhNWUhBUkhRVHFzcjlqdEVYOXd6Vm0ySXd5?=
 =?utf-8?B?THNndkVCemxhR3ZSTWY5TWo2SkoxVkY4dWNaeWNhY0xUc2NRZHFZY21tYzZS?=
 =?utf-8?B?bGhQNkQzMktkTGdEWXRNYU0rdmlrc2hoWmFRL2Uxc2RvVFlFVlVXWnVTY0R2?=
 =?utf-8?B?TXA0Z3lnVzZ6ZzdpK2RrN2Q5Wkk4eHhTUWFJWFRjRHBQd1cvbUZlS3E1YXpD?=
 =?utf-8?B?WWxoNGhYVXNQc3k0cEQwUzhrTkd4MVFVZEs3MGZBbkM2M1FWWkJ2R3JDL05p?=
 =?utf-8?B?NnBDWDA1MTBZbUhLcFJkWjZVWWNkRXM4b3NHdGNoRHRDamJzcDY1SGp3Wkl6?=
 =?utf-8?B?ZU9WWkxYOGE3ZURkVjMvTGpITWlIbkFnWGFPVUIyZ2paa0pUV0o2TlBqaGov?=
 =?utf-8?B?L2owaG5oQzNOcjkrUDhEbHVBQWllanBqQmRnSDdJZ1BscmRrMW56ODFJR0Rq?=
 =?utf-8?B?MFZ3YUpZVFV3UGFTZHY5MGY1Q29XOWxiUFloaHJGY0JyRnBzYlM4WGpGVklq?=
 =?utf-8?B?dGszalJnbGJ3ZkhveGhVTmdlc2Zmd3gzZXJoOUhkVW9vaFBWVkhDRlNncys5?=
 =?utf-8?B?MUJEcDA0MnRqQU9hZVVNbEx6ZFpsR1pKblRVaDZlZWxONVZ6QUxCTFV3cDVl?=
 =?utf-8?B?cW0waVZ1T2NIbW05dUVsaXJLc0o4MjJtQ1BQbzFvYWlhM1FzTm4xcCtsSjhU?=
 =?utf-8?B?aFlEQUYwdks1VHdpRVJJajZvRHI5cXMyRHpyb09OajBJNytCOG5qbXVORDNV?=
 =?utf-8?B?K2NzQ3hoM3hCYVVjOVFtdVNLRFNhenh4bkpPZksxeEt1T3JGcTl1OG9pQUVQ?=
 =?utf-8?B?SStNcjY3aU95aVo2R08yNWhCOFRvSFZoRU1aaHZsYjNKa2t6YmtOUGpUeDlK?=
 =?utf-8?B?QUdCY3dmY3JYSjhtMFpCbURPV0p0K01FMmEzTlpCaERLdnpGMGIrVU50SXhR?=
 =?utf-8?B?R2k3eWJNbDFoNzhaaVlDZlREY0dySFNPQW1xL0tKUStsSjFZVm1uVlBERVlN?=
 =?utf-8?B?UXBmaXZ6RUdRMXEvUzUycVJkeUxOZWtpQ3dGZ09HSWdsaktacFAvYlpXM1N5?=
 =?utf-8?B?bURYYi9kcXIyaGtnVzhPQnozb2dxN0hNNzN3RU42dkFCOVgvUHRZbVFKSm1F?=
 =?utf-8?B?NDZCZSt4NktXS1J3SHlXcjUwTnhVZ0tubmJYT1NTUnBUSGZ1d0lFY0VIb3dI?=
 =?utf-8?B?MXFOQ0JWWVNnMzBSUnE5akFSN1FrWmx3bWNIMmJOWUtReWJISERJcmFFNm85?=
 =?utf-8?B?dG9nOGoxb2VtVG1HMGp6Rm94YUh1bDV5NFliZk5XU0x3MVMrdzVYQ0VIaWFl?=
 =?utf-8?B?bTNDUTMwazBLRUxJd2xQeXM4MVcwVGV3MGlSaFBFbkFjWUQ5V1VMYml0WVlR?=
 =?utf-8?B?NnZNUnZuOFU0RGw3Y2NaZkJhODBEQUlkdDI2SGltbW5vd1VETUhQTWw2OVJv?=
 =?utf-8?B?SDJRNzljR1l5UWlQOThFZTZrdkkzQW1uLzBXMkV2YU9sVWlwT0g3NU5FVno0?=
 =?utf-8?B?VU4zeHJnUnQrazluenlqZ2s0SHExeXY3d29DMGdKWTBHV09SaS9mNExYQXlL?=
 =?utf-8?B?c0JjRnVGeDFjNERGTWpOZmthME5yNHludlJyQVZpS29ld3VHSHdIN0dDU1Vo?=
 =?utf-8?B?eFRidzZVQkxIdVlGSzJpaFBEZE1WRjVDSVdGaFF4Y0RLaWt3cnhNSGo4YXNQ?=
 =?utf-8?B?U29pTjN1TEFMNURraXR1bUViblEvcnU3ZHNHOUpUMmprREpiQmxyVjM4REt6?=
 =?utf-8?Q?Qw24zl6yKjWAk4YYrKKGmi2fg?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 846825cf-7d30-42e2-9ecd-08dc135ea4a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Jan 2024 11:07:18.9537 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VlZEpDEMi+0hSrgLryDHQIaEey9aXd8WNrlmbbiRetfISoFsyu4ooPqfs6R/9PX1j7qkqUzrmyMgifzkhQJhcw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7733
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0K
PiBIw7ZnYW5kZXINCj4gU2VudDogV2VkbmVzZGF5LCBKYW51YXJ5IDEwLCAyMDI0IDY6NDMgUE0N
Cj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENI
IHYyIDA3LzEzXSBkcm0vaTkxNS9wc3I6IEFkZCBzb21lIGRvY3VtZW50YXRpb24gb2YNCj4gdmFy
aWFibGVzIHVzZWQgaW4gcHNyIGNvZGUNCj4gDQo+IFdlIGFyZSBhZGRpbmcgbW9yZSBib29sZWFu
IHZhcmlhYmxlIGludG8gaW50ZWxfcHNyIGFuZCBpbnRlbF9jcnRjX3N0YXRlDQo+IHN0cnVjdHMu
IEFkZCBzb21lIGRvY3VtZW50YXRpb24gYWJvdXQgdGhlc2UgZm9yIHNha2Ugb2YgY2xhcml0eS4N
Cj4gDQo+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50
ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRl
bC5jb20+DQoNCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jIHwgMTYgKysrKysrKysrKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlv
bnMoKykNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiBpbmRleCBjZGU5NWNjOTkyNWEuLmJlOGIxYjdhODAyNSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0xNzEsNiArMTcxLDIyIEBADQo+ICAg
Kg0KPiAgICogVGhlIHJlc3Qgb2YgdGhlIGJpdHMgYXJlIG1vcmUgc2VsZi1leHBsYW5hdG9yeSBh
bmQvb3INCj4gICAqIGlycmVsZXZhbnQgZm9yIG5vcm1hbCBvcGVyYXRpb24uDQo+ICsgKg0KPiAr
ICogRGVzY3JpcHRpb24gb2YgaW50ZWxfY3J0Y19zdGF0ZSB2YXJpYWJsZXMuIGhhc19wc3IsIGhh
c19wYW5lbF9yZXBsYXkNCj4gKyBhbmQNCj4gKyAqIGhhc19zZWxfdXBkYXRlOg0KPiArICoNCj4g
KyAqICBoYXNfcHNyIChhbG9uZSk6CQkJUFNSMQ0KPiArICogIGhhc19wc3IgKyBoYXNfc2VsX3Vw
ZGF0ZToJCVBTUjINCj4gKyAqICBoYXNfcGFuZWxfcmVwbGF5OgkJCVBhbmVsIFJlcGxheQ0KPiAr
ICogIGhhc19wYW5lbF9yZXBsYXkgKyBoYXNfc2VsX3VwZGF0ZToJUGFuZWwgUmVwbGF5IFNlbGVj
dGl2ZSBVcGRhdGUNCj4gKyAqDQo+ICsgKiBEZXNjcmlwdGlvbiBvZiBzb21lIGludGVsX3BzciBl
bmFibGVkLCBwYW5lbF9yZXBsYXlfZW5hYmxlZCwNCj4gKyAqIHNlbF91cGRhdGVfZW5hYmxlZA0K
PiArICoNCj4gKyAqICBlbmFibGVkIChhbG9uZSk6CQkJCQkJUFNSMQ0KPiArICogIGVuYWJsZWQg
KyBzZWxfdXBkYXRlX2VuYWJsZWQ6CQkJCVBTUjINCj4gKyAqICBlbmFibGVkICsgcGFuZWxfcmVw
bGF5X2VuYWJsZWQ6CQkJCVBhbmVsIFJlcGxheQ0KPiArICogIGVuYWJsZWQgKyBwYW5lbF9yZXBs
YXlfZW5hYmxlZCArIHNlbF91cGRhdGVfZW5hYmxlZDoJUGFuZWwgUmVwbGF5DQo+IFNVDQo+ICAg
Ki8NCj4gDQo+ICBib29sIGludGVsX2VuY29kZXJfY2FuX3BzcihzdHJ1Y3QgaW50ZWxfZW5jb2Rl
ciAqZW5jb2RlcikNCj4gLS0NCj4gMi4zNC4xDQoNCg==
