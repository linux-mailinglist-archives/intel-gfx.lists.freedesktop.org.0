Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E075A65CD67
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Jan 2023 07:58:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A1AB10E080;
	Wed,  4 Jan 2023 06:57:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AF0B10E079
 for <intel-gfx@lists.freedesktop.org>; Wed,  4 Jan 2023 06:57:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1672815473; x=1704351473;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3PzSnaZikvdYNkhS7dSTojT2oL6hxFqIz4hcQtplqYM=;
 b=BHXm4/8RaydjZc43Gn79ax4hiA1zI1Zy219vBywW3PEPJGm2b4PftNC7
 zzkH9MZS++SrgdqA33afURuv8tUjjqDNmm4YEz9mCr7tiljErA45dBoqm
 h8mkTXl6psLuDgTiFo/aNUikjhIow6bwjGXy4DT4R7M2Gu1OzVk4BxuSn
 Wpik9hHlkrvn6Kp0KMV06mU+hbjFO2P3OgkdSuyd46UIHDB15zAl6MXdC
 xpjCmxdLjVWw4+XiTkZiRFi/mF+3y+rJDhxAW62Mkp1DwsTHPnPjrdRtO
 mHv3guUJQrpHlNstTUIr6kDQxZGs5Uee9yBUPDKG+IuNPnROfiCz8dU9C A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="301543983"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="301543983"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2023 22:57:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10579"; a="900457119"
X-IronPort-AV: E=Sophos;i="5.96,299,1665471600"; d="scan'208";a="900457119"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 03 Jan 2023 22:57:52 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 22:57:51 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 3 Jan 2023 22:57:51 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 3 Jan 2023 22:57:51 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 3 Jan 2023 22:57:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AVK8emwSy5J36hf1imi39xQKKl/7Lv2ChSm3lcTE2RWuYyLDBXR/aFHhwjHJ6/MyqNLrbC3usd5Ju2tXyGGUonDQGL/NhagNMF4onMBNJM8Z2fNM5yAV9HNf2AglAGNBl4xTn4UiGf6z3dSs0o4nmotKEWYiUoIPczmeEzR9Uz0JarIs8zSXqxFGnsMdpfYgAmgYNhrPFYL5eaDXiSze5Ad1GQKFMhXwFIK1VyuU1/tUDtxLizs539fnLkaCoQWvi6UZWmiFvPCKXhS4X3Pn4l24afchx16dQHf81Wi/GTxqCer77U+6R99SpOGdWV7omNXX3E43Q2KqXctdeJ+lyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3PzSnaZikvdYNkhS7dSTojT2oL6hxFqIz4hcQtplqYM=;
 b=QQ0fEiypZ77vvddBBSBusHNuDsK1lACPbwNZwXQDAvr49daj1pUF+XkME1ZHaBB2XXhlpLDkcvtsOmoHMxED35UTCygKr2OD0X6ShbQPlPpwP1/4c6qLnGfvVeD8/y7Ay4g3EWpJh3gEPBzmVSNSkhnrNxfzgPuU6zSRWD87nP9iIr3wxFHdXgjCnkcGkZEHVCP+vfPrDw1Q5pYjXwgmARsqxTNoFmI6VsmaOE/a5eXV6G6YclI6D3r8gxQDmpgpnmCxkvidVnqUy0X63N9T+8aA2QTS3KzR0iK50sGxA9u700aBGlQhbQHIEAtRU7DvI3EHpU+WEVpW72NH3rMDVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SJ0PR11MB4925.namprd11.prod.outlook.com (2603:10b6:a03:2df::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Wed, 4 Jan
 2023 06:57:50 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::f0a1:f049:98db:6cb2%3]) with mapi id 15.20.5944.019; Wed, 4 Jan 2023
 06:57:50 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer
 size checks
Thread-Index: AQHZEObYtbs3EqJRBk2wnLvGPNg23K6N7aOA
Date: Wed, 4 Jan 2023 06:57:49 +0000
Message-ID: <PH7PR11MB5981820C64B5C70CED4B8522F9F59@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
 <20221216003810.13338-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20221216003810.13338-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SJ0PR11MB4925:EE_
x-ms-office365-filtering-correlation-id: a7a26140-26d1-494d-f466-08daee20fe5c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dPL0iSG9rb3KDTIt4fYgI+1QhLPT3NmXYjqMewDsbenwYIroDjWe4jo4JwYjQzYJQ/MmkBgKijul2sARavNs3+FF05HZIsvzGG0BaQcQRncV4nZWHyN+D/ViV1DldTyc7TR/Wl/4Johkua4pEP55DJWjGoQtlPrzpLQcezrpECj/4zDhWSa6WP89ZeF7wr873HGGBpgt7x3nyXUQYttbvX0d1gaLLYUTwtIGMBQwXvTp9Ac5Mhw90g5aJCrIi9i1t/EAyYCQOixumGM148a40XlYgsx/V1e6ycsodmpEUlJd6dLLu3w3zxcKGAUmZ8bb1qbcK7Q5gfmELf8hvH9miQMg32uqe+TXpGjjuykQ6SBWdBgzWtZTyKfL+C+OHVDd52S3+4T89jU+VBJfRA5F2mf2bLLSnlJKcK4sLa5PNIY1vFRWiFrL0a3c6LYidKikB9WUgNRqmbN0Uy+hCWsc52T46HXcjUDCKIvC3WF6SunySaFf2AIandOsDorz000BWGgmpgYWm21g3v50Pg18uGvN2oNkSd8xXdxis/SC/czBxh0awD9i4/w2DRfDsu1fcpjtxqHUj9qGIM0Z3O+MlgI7syBrO3CVYxui4TJZwZJFL1bBLvAKg48PqoUm3po0wh9RMXPLkHz0AzQnGXyXk5057TU/pR05+xdLif2JgAW+YRmNbDhlS3LUIwui46aG
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(376002)(136003)(366004)(39860400002)(451199015)(5660300002)(8676002)(66476007)(316002)(76116006)(66446008)(66556008)(66946007)(64756008)(41300700001)(52536014)(8936002)(7696005)(2906002)(71200400001)(110136005)(33656002)(478600001)(6506007)(38070700005)(38100700002)(82960400001)(26005)(9686003)(186003)(66574015)(55236004)(53546011)(122000001)(55016003)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SDBhWWtNM2pTT1B1UXRXWkJuS3NETWE2Ky9mUUlwalF3RDdMd3k3S0h0SnBF?=
 =?utf-8?B?OFpZa09iMHo2NFVJWVdqNTRCRkkxUndhZUxuYm5rQUNnU1p5cS9NY3UrNU9q?=
 =?utf-8?B?bVRXMlVidlMrbDlxZWFCcVB5aDdSeEtCRDBZT3lXRXNDUVhSb20wV1RSdG1U?=
 =?utf-8?B?K1c0RVhiSkJMY2hLbU9KL25ldTJDNUtIMFM3djI4UTRLcVk2L0hHZFZWdCt4?=
 =?utf-8?B?ckgwU3hsMWtrS3hKeHVrY24zMTNaQU9NWC8yWGpwT0EwckMvc3cvVzFOVHJV?=
 =?utf-8?B?M0JIRVNHZTlHQW5ZSmJZcU91eHRqVHlIMjZVbytDNXNUNTlpb1A3WCszYnN5?=
 =?utf-8?B?eGl6d2owVU1RODNGb0hDWTk2cXM2SXFOcVlqNC83MHU5aUpubmo4OTYwY1N1?=
 =?utf-8?B?NXc2emtYYnpPUWV5MmlhRWFCbThua0VRZ1JEQ0wrcExpTVI5d2RXK0wxR0tj?=
 =?utf-8?B?eWRkRXFDRDVHd0VhYzZlVU1VVnlJc1lEL1pwa0tKZjl6YkdsRmtINDlwRFQ2?=
 =?utf-8?B?emRXRG9RVVpiSjRXNzJ2cFpPcVdqMWFsSTcyNGRaS3dMVFlySmFnNFNtTlg1?=
 =?utf-8?B?ZFFWUDlaQWQ5dXRPM2QvSUlrNGw5SVlJL2owZnVpUFJuY1JtVy9ybDIrNXpp?=
 =?utf-8?B?UVRmbi9rNkRZL0dSSytlMEc3OUJRakxhdUcvbGxubzJSMGZQeXdvYnQwQ1lM?=
 =?utf-8?B?OHBnTFJmTE5rQnJHaFRPRVJKaEZBUm1rNytOS1loVkRqMDdEVmQwQUlFYzQw?=
 =?utf-8?B?dDB0SVBuRHR3dDVWMUVZdXNqUlcrbjk3YTNEVnlCSkFmV2xKM2o3VTQ3VDIw?=
 =?utf-8?B?OThiTkZQQ0JqNnlReFBwUEhUdDBjcXRTZFVUc2tVN0Z1RndBZ3RwUWkyQlZa?=
 =?utf-8?B?K2JiZ204ZjFBbTdBMERVTzQ3aWJ6MW9aR3RITTFjdkNHa09MT2VzcjJrM3Q3?=
 =?utf-8?B?Unlzcnh5WnJWcUtDWHZjNEhuaDM3WlZodEJFaEcvVStwQ2VNalRKb0ZyU1lS?=
 =?utf-8?B?ZU5SRHVYTndoOHM4c2puVmxRb3h5aVhxaml1WThKaFQ0bWROUUtqVHhNUnZl?=
 =?utf-8?B?Y3dXRUZrZnBXRGRlZEwxZG1sQXFYZHZBVFRmYlkvalhpNFhOMjJUQWh3QmhW?=
 =?utf-8?B?TGo1OHpuYURDdXVhczhUaTNUVmJHN1FOYjB3VHZzNkZMQTMvMHJkOUtCcGQ5?=
 =?utf-8?B?bVZUQWdEazlTd1FCVm5MQlQ0ckxPVCtiRjFOTEg5cDlzSlh5MnFEN0gzMm1r?=
 =?utf-8?B?MlZEUXJrMnNsRHRiaVR0SkZWd1hGRzd3NTI1eGlqSmsrckJVeTVWOTlocGk3?=
 =?utf-8?B?VURGRzJtdzV6cStuSnVCSHF5WlZheWkwR1dUWHNKWEdiZWJCNll6SVhFK2Uy?=
 =?utf-8?B?TzQvcUw1MW15NGZlWHUzU3VhS2JMMkhjWE5LbGpFYmhmZThHVHlDSDdZQ0dD?=
 =?utf-8?B?VFdUa2NFVnU4ZlBnNG5pVVFCZk1lTzN4dnlxajNMZ2xWd1lLSVZvTDUrQzFY?=
 =?utf-8?B?ZFM1bzFCYzhNb2FUMTdzTkZRTVJqeFNSaUFnUnJXekFhVlUwcHhxTlBwNWJt?=
 =?utf-8?B?SXMvZ2FDU0pMbkVKVGJnS3VjOFpqZTNpQUkvYm9DQlBkWkJLVlJkS0xUSGhm?=
 =?utf-8?B?cmJWTTNKZzFoWlM1cHVGdy9iTG9EbG5KYmVITW8wVkhwK3A0dmVDWnJIQmNl?=
 =?utf-8?B?aDRvTGE2S1RnR01Yd0NCRVZ6ZjhsdVVEaVM4TVRPUWNmRUlVN3o2N0xYaHNx?=
 =?utf-8?B?eGRsdzF6NlR6elV0MlVlZCtjMy9aTmJoSTZlOFBScXRmRHprM3lrTU9oaDZC?=
 =?utf-8?B?cmkrZWZURGZOTVpqN3duSmFHSitkY1AvdWxvN2hGcmVKLzBlczZXekpjQmRQ?=
 =?utf-8?B?bGpuQnl1aVA5R0N5OXBONEEvR0JjYlJ4K2MrMXc4OCtaS3BpL1dWSHJpeSsr?=
 =?utf-8?B?YjJSZmM2MkhibUk0aHNSMmlrU29VNFZiNU1vSGdpaFdhblBnYXUyYnlOYlFQ?=
 =?utf-8?B?eFk1WHBwZG9lOWhoMUk2bHM2VE9JbkRvSWZzc0kwQjJWYnBCVDlxTzQyREFy?=
 =?utf-8?B?dTd0S3RncE5mOC9ZNHdNbzhaWG9BL0MxYW42THBtNUVwcHkyeUxZRjM3UkpG?=
 =?utf-8?Q?Js4zheN4kEbunR55SjwNQEtpb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7a26140-26d1-494d-f466-08daee20fe5c
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2023 06:57:49.9590 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eYxl+MtT1bie13le5fBcE6ornZghnDM3jmP2hx63VHrH/8EhYXIQV/ekjSKzzdT+EEphSOxs6/FiSANv2O0DZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4925
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/13] drm/i915/dsb: Fix DSB command buffer
 size checks
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

SGksDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxp
bnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxs
ZQ0KPiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgRGVjZW1iZXIgMTYsIDIwMjIgNjowOCBBTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbSW50ZWwt
Z2Z4XSBbUEFUQ0ggMDQvMTNdIGRybS9pOTE1L2RzYjogRml4IERTQiBjb21tYW5kIGJ1ZmZlcg0K
PiBzaXplIGNoZWNrcw0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IGZyZWVfcG9zIGlzIGluIGR3b3JkcywgRFNCX0JVRl9T
SVpFIGluIGJ5dGVzLiBEaXJlY3RseSBjb21wYXJpbmcgdGhlIHR3byBpcw0KPiBub25zZW5zZS4g
Rml4IGl0IHVwLCBhbmQgbWFrZSBzdXJlIHdlIGFsc28gYWNjb3VudCBmb3IgdGhlIDhieXRlIGFs
aWdubWVudA0KPiByZXF1aXJlbWVudCBmb3IgZWFjaCBpbnN0cnVjdGlvbiwgYW5kIGFsc28gYXNz
dW1lIHRoYXQgZWFjaCBpbnN0cnVjdGlvbg0KPiBub3JtYWxseSBlYXRzIHR3byBkd29yZHMuDQoN
CmZyZWVfcG9zIHZhcmlhYmxlIGlzIHVzZWQgYXMgaW5kZXggdG8gZmlsbCB0aGUgZHNiIGNvbW1h
bmQgYnVmZmVyIGFuZCBnZXR0aW5nIGZpbGVkIGJ5dGUgYnkgYnl0ZS4gSXQgaXMgbm90IGluIGR3
b3Jkcy4NCkJlbG93IGdpdmVuIHRoZSBzdHJ1Y3R1cmUgZGVmaW5pdGlvbiBvZiBkc2IgY21kX2J1
Zi4NCnN0cnVjdCBpbnRlbF9kc2Igew0KICAgICAgICBlbnVtIGRzYl9pZCBpZDsNCg0KICAgICAg
ICB1MzIgKmNtZF9idWY7DQoNCg0KPiANCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgNCArKy0tDQo+ICAxIGZpbGUgY2hhbmdlZCwg
MiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IDZhYmZkMGZjNTQxYS4uZmJjYmY5ZWZk
MDM5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rz
Yi5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4g
QEAgLTk3LDcgKzk3LDcgQEAgdm9pZCBpbnRlbF9kc2JfaW5kZXhlZF9yZWdfd3JpdGUoc3RydWN0
IGludGVsX2RzYg0KPiAqZHNiLA0KPiAgCXUzMiAqYnVmID0gZHNiLT5jbWRfYnVmOw0KPiAgCXUz
MiByZWdfdmFsOw0KPiANCj4gLQlpZiAoZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIGRzYi0+
ZnJlZV9wb3MgPj0NCj4gRFNCX0JVRl9TSVpFKSkgew0KPiArCWlmIChkcm1fV0FSTl9PTigmZGV2
X3ByaXYtPmRybSwgQUxJR04oZHNiLT5mcmVlX3BvcywgMikgPg0KPiBEU0JfQlVGX1NJWkUNCj4g
Ky8gNCAtIDIpKSB7DQoNCkhlcmUgRFNCX0JVRl9TSVpFIGlzIDQwOTYgeCAyID0gODE5MiBieXRl
cw0KRFNCX0JVRl9TSVpFIC8gNCAtIDIgPSAyMDQ2IGJ5dGVzLg0KV2l0aCB0aGUgYWJvdmUgbG9n
aWMgd2FybmluZyB3aWxsIGJlIHRyaWdnZXJlZCBhZnRlciAyMDQ2IGJ5dGVzLg0KDQpSZWdhcmRz
LA0KQW5pbWVzaA0KDQoNCj4gIAkJZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sICJEU0IgYnVm
ZmVyIG92ZXJmbG93XG4iKTsNCj4gIAkJcmV0dXJuOw0KPiAgCX0NCj4gQEAgLTE2Nyw3ICsxNjcs
NyBAQCB2b2lkIGludGVsX2RzYl9yZWdfd3JpdGUoc3RydWN0IGludGVsX2RzYiAqZHNiLA0KPiAg
CXN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9IHRvX2k5MTUoY3J0Yy0+YmFzZS5k
ZXYpOw0KPiAgCXUzMiAqYnVmID0gZHNiLT5jbWRfYnVmOw0KPiANCj4gLQlpZiAoZHJtX1dBUk5f
T04oJmRldl9wcml2LT5kcm0sIGRzYi0+ZnJlZV9wb3MgPj0NCj4gRFNCX0JVRl9TSVpFKSkgew0K
PiArCWlmIChkcm1fV0FSTl9PTigmZGV2X3ByaXYtPmRybSwgQUxJR04oZHNiLT5mcmVlX3Bvcywg
MikgPg0KPiBEU0JfQlVGX1NJWkUNCj4gKy8gNCAtIDIpKSB7DQo+ICAJCWRybV9kYmdfa21zKCZk
ZXZfcHJpdi0+ZHJtLCAiRFNCIGJ1ZmZlciBvdmVyZmxvd1xuIik7DQo+ICAJCXJldHVybjsNCj4g
IAl9DQo+IC0tDQo+IDIuMzcuNA0KDQo=
