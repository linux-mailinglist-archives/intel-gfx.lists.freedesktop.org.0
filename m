Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 456EB6E8C34
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Apr 2023 10:08:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AA5110E254;
	Thu, 20 Apr 2023 08:08:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E057F10E254
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Apr 2023 08:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681978080; x=1713514080;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=jUPgEK9tFGgowQV79D90k7LbTjJF8Wax5Wp3K82gV4k=;
 b=h3n6CKoXoIxhpqRCZvqkoT1g4Qkr+wdqUsfyPRsXuwrO4o+QTriY2+CM
 UyechPq8daWQXXeA9QUFli6bMvBSL8QD7M4nIKy5ojFgSNA27bE+jKyYV
 ho49rji6yj1Vgq9MLxpxDc+sWgiuvB6G/7pImKGvY1zWusNLcYwnCbCNl
 QzTqXlV8+6fNNJ+61lfj6WeEJpbJZiND+uU3H5GKlUCqLel9Nu42fygLF
 8Qy2Aq4rvDdxI+M6B9e77C1LqEzFUeFFwsrS/T0aolWyu6nTf2BhitGW0
 2jgo1TlppqOsbDKlpDcCcJXxkPw2dXyYbD8jw8GcjCEuKQf7e6oY6caWz Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="334495003"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="334495003"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 01:07:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10685"; a="722283914"
X-IronPort-AV: E=Sophos;i="5.99,212,1677571200"; d="scan'208";a="722283914"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 20 Apr 2023 01:07:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 01:07:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 01:07:59 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 01:07:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TyU6oHgoTpeGMME1Z1bSAMOFytfptag6lpcL9lIMOdznEZjN0ZqVZ3NYUjek5CcFZTTa2Wo+4+6YolrX2XAGFBMkK4w7B60lSPywYJSg+zAI25Ttpf14fBkXP6vSxx/4f+1mw9o5rNU3Q/uk4LJS9jgJ13GZbhNxM1TWJk70UZVdvn/kYq866EG4kpOH7EDeM3547ixrcXCDmJzT3LF580fGcJxqH8CN1S3K/uVSvvCPLBBwkuDjzBrYg5nE6RU7VTHFCWN+4eMkJK7saN06SW0vI17z/n98Og6GYwFqvEegM+Wog3xU508vpP/sXBy0YH61oJ5l7mJO4C6vffbYmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jUPgEK9tFGgowQV79D90k7LbTjJF8Wax5Wp3K82gV4k=;
 b=GbwAlIMtAOFcTuGFzaFndXgdiolt03BRitIIvBkzcnAo5QZ/8mvp2+uwoVZfan4JGw4w9ZWKZQa537wvNweUVzDtfewV0QAYkxSTSKlB53SBlTM9HyBahL0zPzrUGrHrals6QRTdcTTAZOIyLdxpgCnBChwAKBYJuV0SQ5qp4+BROXUeKsff3Vq2Wt8rRcCbE48NAXjyRjQrZs3DP4ihFXpLFU/SyAKythSv6/YGk6b363hUyDj6VZGlIYeZzshq4C11OLS+yNBlDDCJ51rF6Rg47qLXNlSNQg3UrduKIqKFwd71wuuIiA467bXCmYM4jH+RykL1VaczJNeFY1cbFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4879.namprd11.prod.outlook.com (2603:10b6:a03:2da::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Thu, 20 Apr 2023 08:07:56 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%9]) with mapi id 15.20.6319.021; Thu, 20 Apr 2023
 08:07:56 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 0/8] drm/i915: (mostly) PSR related
 register cleanups
Thread-Index: AQHZbKnpWYCcRvu4x0eC+j3LO/H9h68z5RiA
Date: Thu, 20 Apr 2023 08:07:56 +0000
Message-ID: <4aa1075a54b2dbd115be16a196a2aca1ec390606.camel@intel.com>
References: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20230411191429.29895-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4879:EE_
x-ms-office365-filtering-correlation-id: ef7f39dc-b029-4aab-2681-08db41765968
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FFVpmR+N8Qy9JEt3V5AIa9zNjnr6Q3b6SNx6vcJGfEDMVxEh3taoDhm9YiLGhhZu3rvzSVHZfz/BuANwhDD3++PId87kjyhJS3OtHlkZ90c/pTNV7ZnLJk9Lx15IF2BTDmSJq8vGfF7UwcaXl3HftKoIXhGQBaLjJsKMM+sq5SDErRzAXbrHtRs4P4CKvbhoc2m6hewOTagHxAkBC48YyTOu0/WGtdaEY5zvZleiNSAejC6mXwUIIORCq87Cm3J+ru/FsXOKtEWiCJIcYaU+Mz8bPwG3D7NObCKYWrXC1mHiMAelU8isDmDXfOxDz9wv+CLGDQ5fR6C8dRoRIhu7jV7KoESdBt0Ttu0eqvUIaIPkJTeM06zQJ00zPe/NgbGA6UgTBqx5rK73Zm+b3CSqaJ5aeVX6BvT4rJc8NQWNP6kWCFFsS9atPcg7wRfnFyc3qj3LVt9IKkLSSp+x5SSuXqfAjKxE3/9il7YcnpbZF+WyhT9SPNtaccfI6aHki/MUttqJH1+quLlGRgn4JPZe+/x8J4K5u0S5ORLuqsEFTEhIGDhU5evNHWl7sAWZGbBedFPCd69VNTEP0jtu3E4o0nCtEQ8FtCW9kkmCNJ8MXmVfxHlGBGDTseEYjkX8WQrP
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(396003)(376002)(346002)(366004)(136003)(451199021)(36756003)(478600001)(71200400001)(6486002)(110136005)(66476007)(122000001)(41300700001)(8936002)(8676002)(38100700002)(66446008)(91956017)(83380400001)(66946007)(76116006)(82960400001)(316002)(64756008)(2616005)(66556008)(186003)(6512007)(6506007)(26005)(86362001)(2906002)(5660300002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?clZDSWxlbnZtRWFpTEptbnlSTmhIa2lYVnJpRFBkSGJReVFudi9mNEdJYXpl?=
 =?utf-8?B?V3hScGt2UkoyOFBuTWd6K3RGUkN2blhVQXMzdjdQYVVqZlBQRytQeVpLVk5s?=
 =?utf-8?B?Z2s5N1ovK2I0TUY2RWNwZHN0aTNZSFczbC9SUGxHdzYvZm5ITC9ZdjJTUkVG?=
 =?utf-8?B?V0cvTWpNTXJwS0N1Y3NzVksxdjdZbHNMamtJV25GVnpmYTFBaXh2dXljZlF2?=
 =?utf-8?B?VjVLM0VCVk5EQ0EzandSR0w5d1JGQ0xQRlZxTlZYcTUxTEo4UWVhMjkzY01m?=
 =?utf-8?B?ZXozT1hyRFRwbkp0SjEyd3Z6QW1SKzZqN285M005OXBVTVUxRTBGandMS1Mv?=
 =?utf-8?B?QnN2UUZKR1J0MytXNXhuTS82SzlTUzhMTG15d3Q0MFptbDN6M1kxeTdybFRU?=
 =?utf-8?B?R0MzS2ZMOGcwVDJnSzZvV3ZKclZSYXNlWjdTdFliZVF3aUY4aVkrNys5cFZz?=
 =?utf-8?B?NzlFWkw4aDlqdkNCRjhYM3ovdk12YU5mOVljemZtMzdDbnJ4SmFZdVRNYW9V?=
 =?utf-8?B?TGxaSHNjSjBubnpQUjh2V0xYYXYzZGlTK0dkcFQ0MCtkUHVzR3h6VndVQzN5?=
 =?utf-8?B?cm5yOHhXVUhqQ2pyYTF1dzdwWFJlWjBwSG1qSWJCRUhWM05Ub3lIc2gvSVpL?=
 =?utf-8?B?c0hYRWRDbU5DMFpLVm1sTGlUb1MwYkFhUDY2NTkwQ0tDalNoYVptdEZEcGhX?=
 =?utf-8?B?MXY1amdqTXUwL3c4V20zc0JsN3VnTU9RanVuci9oQzlUOUhRSG1vNUVVOGdy?=
 =?utf-8?B?aTlYanRidzBkMUNBcnkrdGdONTVtdkFpUjNpT081RW10T3l4S0d1dTFnNjRZ?=
 =?utf-8?B?c0VSSVUzbDdJd0xhQ21uNy9oR1dQOUJ2cnFoMUF0eHBmV1ZoZ3I2ODAxdTdt?=
 =?utf-8?B?N0M3NXRNSlVZOEdyaGZCejVpMEFDZUp6eUpUeFNyWlZJQ05DOVJVTWc0TGdo?=
 =?utf-8?B?bndYbWI5My9OZDJBeUMwOFhFOTA3ZWE4aWlGblJYYjZlYlBNZWw0ZlhZUFAv?=
 =?utf-8?B?dm1NSGJITHVhRU03SWpMTTR0MGxCczJCVXFxZDlwcGFRRVBpeHRwcHJRTU5F?=
 =?utf-8?B?MSt0aXYvdDZaUXdRdTBtSUlpbURtYmFyMmMwdnRCbkc0eXB2Y241czVPNExY?=
 =?utf-8?B?Q1JzREtSSWFqc2lYUnRVakNidnJRVk5OdlA0UEJGcEg2VjVrUlM5UXhiYXRE?=
 =?utf-8?B?ZGw3OGtWMXI4Wm1MTDgrWmZnMWY1VDFNUzdQTnl1d1hsTW9rNlhjYnlBWHVO?=
 =?utf-8?B?bUI4blZxaUZpaHpvZzFNTHBhZ0s2WG1JdEdWSndrVE1VTTkrR1lzNW5VL3or?=
 =?utf-8?B?blVJUjVSNFhOelJOcTNnVGRvTHZFV241dk92alJWc0JxaE5HZEo2ZHFncUV0?=
 =?utf-8?B?QlVkUkkwWWd5SHhNbEswelBDSmRCSGQ2Rm1Wd2xtU2xIaG9vVG5WV3lHRXli?=
 =?utf-8?B?NTVhT0Rsd2N4OWtka0Y5REF3MlJIVmlrVEN6U2FyM2xKbVdMZXMvZk9FN1Vv?=
 =?utf-8?B?TUJJeFZBNE9kZWxGY1ZrU0ZVVTBlWHlEcTNueXR1ZHNESmlJUHBWbFlyWHpP?=
 =?utf-8?B?ekRWOUNjbzVSQUlKZExnclJvRDc2a21zSHZmM1dvQzhhWjg0U21oUjFyRnQw?=
 =?utf-8?B?ZllSUW9scUJrNUp6anhwckdmSm9IRFAyK1FsU1Q4dXovMHdVNmZYV1RsRnNa?=
 =?utf-8?B?ejNyT2t4WFZSL0hoSVZLbWFwbDRNKzB6S3RMR3BzTWVndDI4dGF4RTlYdUts?=
 =?utf-8?B?Qkt1NXRhL2NHR0NjbklWYnBCT3BsVkgwNEVvSDhOaTVwMkVSTXRDZTJMbnYx?=
 =?utf-8?B?U2VKeUFVRURUcjZkc1ZYdnBZL3pCcm1kM0VKMnY0QVp4NkRSLzVpdUZkaXYw?=
 =?utf-8?B?aHBpaWxKRlBTcHplUk9VQldZU2hyZ2F1cTFZTnVoSXhPWjROaUhDQUZ1V09u?=
 =?utf-8?B?K200ekJtWVdjTktPeFBpSDYxZUJIZHZFeXBObXJFbFNLRTkxMVFqOGN1S1ky?=
 =?utf-8?B?UjJMNXBGYmFCZDlZZ1B4TXF1anVNb01WNEt3Y3RjMFphdzE1WU5aT2lIc01Q?=
 =?utf-8?B?SkZMSUo1eUc3SWw5WFpEOGkwNXhZU1hOQ2RoVXMwYkpCaitZNTNGR2xBRkhC?=
 =?utf-8?B?cnpuTzU4NXRvbnM5eDI1RjlaVWUrTm1XRzlIc1UxcytBUzdEMHlxT0VGOUlF?=
 =?utf-8?B?blE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9754A8303A95064EA182B39BF84EEEC2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ef7f39dc-b029-4aab-2681-08db41765968
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2023 08:07:56.4491 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pI3GvByNZ/p8HzVKAtATA8HBUXw3VWUE1kGF2QtO44Bu+lZc/jE4/SZXdsFQDr0bVKpqXJHKccnSuwGVXBZlZQNT3zYyDewL0h/KXx6JFnA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4879
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 0/8] drm/i915: (mostly) PSR related
 register cleanups
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

T24gVHVlLCAyMDIzLTA0LTExIGF0IDIyOjE0ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gU29tZSBjbGVhbnVwcyBhcm91bmQgbW9zdGx5IFBTUi9yZWxhdGVkIHJlZ2lzdGVycy4N
Cj4gDQo+IHYyOiBJbXByb3ZlIHRoZSBtYXNrIGJpdCBkb2NzIGFuZCByZWJhc2UgZHVlIHRvDQo+
IMKgwqDCoCBpbnRlbF9wc3JfcmVncy5oDQoNCkZvciB0aGUgd2hvbGUgc2V0Og0KDQpSZXZpZXdl
ZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gDQo+
IFZpbGxlIFN5cmrDpGzDpCAoOCk6DQo+IMKgIGRybS9pOTE1OiBGaXggdXAgd2hpdGVzcGFjZSBp
biBzb21lIGRpc3BsYXkgY2hpY2tlbiByZWdpc3RlcnMNCj4gwqAgZHJtL2k5MTU6IENsZWFuIHVw
IHZhcmlvdXMgZGlzcGxheSBjaGlja2VuIHJlZ2lzdGVycw0KPiDCoCBkcm0vaTkxNS9wc3I6IENs
ZWFuIHVwIFBTUiByZWdpc3RlciBkZWZpbmluaXRpb25zDQo+IMKgIGRybS9pOTE1L3BzcjogVXNl
IGludGVsX2RlX3JtdygpDQo+IMKgIGRybS9pOTE1L3BzcjogRGVmaW5lIG1vcmUgUFNSIG1hc2sg
Yml0cw0KPiDCoCBkcm0vaTkxNS9wc3I6IEFkZCBhIEZJWE1FIGZvciB0aGUgUFNSIHZzLiBBVVgg
dXNhZ2UgY29uZmxpY3QNCj4gwqAgZHJtL2k5MTUvcHNyOiBJbmNsdWRlIFBTUl9QRVJGX0NOVCBp
biBkZWJ1Z2ZzIG91dHB1dCBvbiBhbGwNCj4gcGxhdGZvcm1zDQo+IMKgIGRybS9pOTE1L3Bzcjog
U3ByaW5rbGUgY3B1X3RyYW5zY29kZXIgdmFyaWFibGVzIGFyb3VuZA0KPiANCj4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jwqDCoCB8wqDCoCA1ICsNCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoCB8IDI1OCAr
KysrKysrKysrKystLS0tDQo+IC0tDQo+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3JfcmVncy5oIHwgMjA3ICsrKysrKystLS0tLS0tDQo+IMKgZHJpdmVycy9ncHUvZHJt
L2k5MTUvaTkxNV9yZWcuaMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxOTMgKysrKysr
Ky0tLS0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX2Nsb2NrX2dhdGluZy5jwqDC
oMKgwqAgfMKgwqAgNCArLQ0KPiDCoDUgZmlsZXMgY2hhbmdlZCwgMzg5IGluc2VydGlvbnMoKyks
IDI3OCBkZWxldGlvbnMoLSkNCj4gDQoNCg==
