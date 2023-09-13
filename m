Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB5A79F33B
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Sep 2023 22:50:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98BEF10E116;
	Wed, 13 Sep 2023 20:50:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B62910E108
 for <intel-gfx@lists.freedesktop.org>; Wed, 13 Sep 2023 20:50:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694638246; x=1726174246;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=xgwl8JgaeHjX88iE+oPh/PMEEvBDkAZNFR50YfzDzzM=;
 b=LjFwu9VkF5XMWb+lTA3cc+WjBQR8BqnQXlRof6sfV35sEm/izv/WNXIK
 oCCCpItIUSlCFMsQS9QVqecrPhOLQ8yb4VMJNVQK7EcbOQVtCWplosMDn
 WlPR4maq0EnHbW8M0NvGL1JjPbgONNNsQTirGlPFxqRPi2vQ2zrnryWnq
 U2bShssX3D8QgNHbRzkMQQ4DNRV23tv1DEsu5rVOqAcCwlDmwsbe13lJG
 GxQiM/JSjfTuL9e4p11d10k6M60INiXrlUKVusGPAUExicbFvU6r5In6p
 tx4d+NVzCGz3Vt6Jc3oFAdwGodt0+sXQN9pBg0i4+sAo91yHiEbDVn5AV g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="378705527"
X-IronPort-AV: E=Sophos;i="6.02,144,1688454000"; d="scan'208";a="378705527"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2023 13:50:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10832"; a="814405386"
X-IronPort-AV: E=Sophos;i="6.02,144,1688454000"; d="scan'208";a="814405386"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Sep 2023 13:50:45 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 13 Sep 2023 13:50:44 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 13 Sep 2023 13:50:44 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 13 Sep 2023 13:50:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZSwPUyFxYAc/aq8pja4+LbcwktbXetrQNuUvMeJZnQ/HUq3r4+oNCNEQW2FkKoCxWw1ASrf4bLmMFdfETZOpr2F5tp/wSD9ZG14M1x3VJeYepl0XGgoquuiJCG6yoAT59ymGtBwEjjJVopySCw48t5gw/ANIwq/pw/2G1qz4HlZRK1nHfUGjzFtIrSElwS8bqX1VW5MfJ662h7IkUkCUMwUL/O/OGMsSr34O2glv7aVwxe75WDNyGUrDhav+O4k9p9bSakMQSHiKAxlNWbR75VIDy4ZUvikWdnuHWNKBVgzCXS1d9t5D2RAE7IGTE3EVf/v6NtRK3r4RbbYMsoEV4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xgwl8JgaeHjX88iE+oPh/PMEEvBDkAZNFR50YfzDzzM=;
 b=XEQ3QjHHwZTpM6XEAz8eCUFZT3WUXo5c4EcmvxqwMTm3GmDBaWyMNjKyaMYO+yLq9QPf4gJ40A4GFtXcd8VW8T45lJLbczRERgftBIxxwoCqBfxZy4OzdjZb1l7rbblboYiq4byXiUcfXeTgt7pIp7SLIbQxs5vQVU8Xxl3fgkTIzHxK1OrXisGbTU5iG2u8CHrNpfxLZypQPkNBQWF9n6kuUBeZsytIP/rcySCst4Yw089PbCFZbvdblNBLJWxqaBGcIvmuc+Wzy7YpKU6lvaucP6+/phC9UazeIPM3lYj15kvGLnYIqLKyFEfpK2h4TDNy0j3JWf/u5acantloXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH8PR11MB6903.namprd11.prod.outlook.com (2603:10b6:510:228::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Wed, 13 Sep 2023 20:50:41 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::542d:f32a:14b:1531]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::542d:f32a:14b:1531%3]) with mapi id 15.20.6792.019; Wed, 13 Sep 2023
 20:50:41 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Harrison, John C" <john.c.harrison@intel.com>, "Nerlige Ramappa, Umesh"
 <umesh.nerlige.ramappa@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Ceraolo Spurio, Daniele"
 <daniele.ceraolospurio@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] i915/pmu: Move execlist stats initialization
 to execlist specific setup
Thread-Index: AQHZ5b9U/afaL+jxSkq+Rnxe7LXOD7AZPGiA
Date: Wed, 13 Sep 2023 20:50:41 +0000
Message-ID: <80d06a7e53e6df0bd6073cbb72fba0094ffa1ca9.camel@intel.com>
References: <20230912212247.1828681-1-umesh.nerlige.ramappa@intel.com>
In-Reply-To: <20230912212247.1828681-1-umesh.nerlige.ramappa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH8PR11MB6903:EE_
x-ms-office365-filtering-correlation-id: 545de070-aa57-4dba-f7e9-08dbb49b17c5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WokoO0JpafGP1xB4sl5+lGlQrdDjqFrLYYZ6aC8cces4BnmlJwV2bVii3j++M7tRxb93W5Rbjn0ACVTD22Cs5wxq83bfjlPVMpW2/w1Ez4OZXPbtWVYPRUXdQ7yVQ/pgNF+EDu+RDX6y/P3VzYEh2+aXK8SnCtSXwCefaNlX4d5841unfuFyp3b3vr3hjC6EoOhYyBmx4MmPHPbJib6ydC22mBGToLthf+nHAJ+hobMyHGDDICsrpqdWbtBH13SzB7oi1LhZ8CPo9kPTDkZIZzujFhnbwi2DVbWyo/eBMnQ5S2gPcfzKEfyOpSPHUU8bu7CrF42YskPFCMqmLxRTfgC1veyM5a9GOOlAvTt2FaLmqAGgLOXgIUm2/eWAEc8XnRFD8ublO/e7kVU2grAZWETRyS82PuLh9czftrR9TlSnCuNEdQQVrcWTPmSCCS/Gsmlnqv0tNCWYkCalgvLgQMNJ+VKebxXW+LoYQhzmqx0IUstgNVcwj8mMxLOMe73ZWu+Wg9OEPo4440ZiWBkAzapBRlmdAKE7up5QeOlsr2vW7luYW8F+FtMW5El+uaZcAsaKw+Ixj4O6AiBsaC3jKSHII6BvY6Wn6DmiHB5D1lTvqAhYtt9Qkac9MI3WYQz2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(39860400002)(376002)(366004)(136003)(186009)(1800799009)(451199024)(6486002)(41300700001)(6506007)(66476007)(316002)(2906002)(478600001)(122000001)(86362001)(36756003)(64756008)(6636002)(66556008)(76116006)(110136005)(66946007)(91956017)(66446008)(38070700005)(71200400001)(38100700002)(82960400001)(5660300002)(83380400001)(8936002)(26005)(8676002)(2616005)(6512007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VStQcjBUK0JRRndkbDcyRU9oOTN6K2ZFaC85aE1YMkJvOEFEUjFrd3A2RjhY?=
 =?utf-8?B?QXZ5R1pMUGdxb1ozY0w5RW1GWkhjc0RybHV4dCszNUhQZlRNWVQrSlEwVmt1?=
 =?utf-8?B?bzNyRC9mTm9KTkNUNHcwb0hLbGZEdC81OExmOGFKdVJQSDVMS1lmOUpQOEtM?=
 =?utf-8?B?SGU0Y1FlK2dCWHRHMzVUWk5XaXljMUd1QmMraFN6R1Nqc1BTQ1Rocms4QUxo?=
 =?utf-8?B?TTNtZjVSZHlXNFFubFpsanJVRmFFT0dkK0VPaVAwNjZYeTJRL2hqOVNoa0lH?=
 =?utf-8?B?b3RqVTR1ZDI2V1dXdkZnbU00UWVyaU15WFdTVUdZQXhrVGpFZURDMUdoOEdl?=
 =?utf-8?B?STh3Nm9XcVJvMFBLRkZjVGpTeFcrckI1YmdKL00vZW51OGpnNGZuWnRMRzZj?=
 =?utf-8?B?VlRNbi9hcWF6V0U1N1BrL1daRjlIR0VLNEJ3TEZmanJUbGlqSWl4YWdkbitr?=
 =?utf-8?B?L1ZNMFRKbFZ5OW1STWxsUDFjVU0wU0FGa21UN0s4VktidTZkemtDWStnODh3?=
 =?utf-8?B?UExrbTl3ZHRxL09pUnhBdUtGeGNGbU1za0hTK3hkUnVNTVR0N1V0MmtKLzlW?=
 =?utf-8?B?R3hRbVQ1SFdvNDZGUnQ3L3RoNmlvTmNzOGlQWWZWR1JTeXZCd21jQnRsVmtn?=
 =?utf-8?B?bVpVWGl2TFV2RjQzaVhReFhCU011L1c5a3F1VjlWSUZaMWRpMWlBakE1UGpj?=
 =?utf-8?B?dG16cUNoUGZpLzZmS1RhQXpZRFlFMlVtMWhRWlNvdjR6MkFOSStGbTRWcE9y?=
 =?utf-8?B?OUx5bkJXSWNRTkdicjNZTDZrcVRGZmNzbzhMNElaKzMzZXhiREZET0c1QVFV?=
 =?utf-8?B?eUFuaWtBdXdZS0pmZEg3NTkyYTEydXNodUp6OXJSUTI4RkZSVGZrSWNvRWEy?=
 =?utf-8?B?VGRQRUwxS1lwTlMzWU5GNHVEMkVKY2JSekE1NjJvcEpBMkJMbFVpN1pjY2dU?=
 =?utf-8?B?MTdldE1Fa05JSFp2WXhkSmVmK3FJK3FpNkhnQXMxbWxYWXpiSjNFU1M2N3Z5?=
 =?utf-8?B?T1ExcHNYTG85dUJFSURkcVJIcmFmVkdLMlFiY3dtQUMrVm5RYmFNcEpXRmgr?=
 =?utf-8?B?dzFWZXFNWUFZRi8xNW5BQ1I1M3pNRXJkVVBlWkJUaDdHeWJXTk1RcFBhSDBz?=
 =?utf-8?B?TXNBamJudVpTRmp0eHJnRVhMMjRNQng1WHk4VU9tcFFmU0d2MkRvTUVwYXdk?=
 =?utf-8?B?Vkg4UE9mcnlZa0pmallDZHhWZ0ZYa1VheE8ybDZsWHZwVkE5U0ZvRTMyU1ZP?=
 =?utf-8?B?WDBlRkh4QXpESm4yT25nMkNQQmdZT2xGYndFK1BMQWQvc3FkUkIxMFAyMnlY?=
 =?utf-8?B?SU9EaW50SzY0YktzaGd2VUxlTEIzOTVmeHhCWE1BVHhtVURJKzFlYUNwMXBu?=
 =?utf-8?B?cGdUK2NpaU10Yi9kU0hQbUZJNGFQMlJmUjRyMFRVMTVTMUZ1dCtGSkgzMHM2?=
 =?utf-8?B?MW5PY2t2VnRZa3cwWkZQV3FUN3dxU1kyazJrbFRlVUFzZ0d4WXJOMVFieDNj?=
 =?utf-8?B?MTYrTjJ5bGtLTHNGYU43ZDVtYUlrUWtQT0NGQlRkQWQ0OHJwMTR5VzRCVERw?=
 =?utf-8?B?U0NFaVI5bFU5djEyVW5HVWdQNXNrc3N5aGdJVEpXNzhHV3NpU0N4Rjg3OHRV?=
 =?utf-8?B?b05sMTVqSGdubXVHcDhrdE9qVExyS0dTbzRRQjNHNk5kU1NOa21Ba3c1aFk5?=
 =?utf-8?B?c04yRU9RWC9zcEk0YkZGL1gvUDdNSUk4MWVkMWxoRHdZamE1Ti9tcFVZT3Fv?=
 =?utf-8?B?NkRTTnEzMTFUZmdORXI3ZTRsRDZ5MVh2eisvYnYxQTdCYm9jZERxQjYwa2NO?=
 =?utf-8?B?bXNSalZPdE8yYStCQTdtblZTa2JUbEZVT1NWRkhETkRMdjNCRXdLeXZXak1T?=
 =?utf-8?B?TlYxMmVWak0ra3BHSXJqT25pOU1paXU1dWk1ekVOQVJEOWZzMUpTTFUxRSt1?=
 =?utf-8?B?a2Z5V0pDTFBHOVhWSjRLL3pVeFdWdnFtamlXN3dVcDNQNk8vQU9ha3hRcmla?=
 =?utf-8?B?OEVVQSsyMUl6UllpZ0NMZzZBQTdudHZCcnBIUnZuUm05U1dLdGMzRm4ycHl5?=
 =?utf-8?B?VkZXSytXT284aW5IaE9laWJPTWhtVzVnWWI0SHFNZS9iRG9iYUJUQkE4N1FF?=
 =?utf-8?B?dXljcDFkTUJXSHhhbTJad3F4L2lnMnRaQUpzTVN1WGhtZFgxeDREcThSVVFW?=
 =?utf-8?Q?fnRl0v4BtaMX1Et4lQGUpGw=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D1E9D76C069E6840B3B3FBD7DDF547D6@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 545de070-aa57-4dba-f7e9-08dbb49b17c5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Sep 2023 20:50:41.4579 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fFH/13sSuAKOgQtmPh/0dPFI8iz2WYSOWIKgJ6pmqaaVrvL0g7GReUxDgcZXmpGiHr+ZiAtmIiL4KTK221RM0yrABLOGGn6ml3gFWspGQlAuP5+48qpJ4oFPjLNHj8Y3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6903
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] i915/pmu: Move execlist stats
 initialization to execlist specific setup
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

SSB3ZW50IHVwIHRoZSBjYWxsIHN0YWNrIHRvIGVuc3VyZSB0aGUgZGlmZmVyZW5jZXMgYmV0d2Vl
biB0aGUNCm9sZCBhbmQgbmV3IGxvY2F0aW9uIGlzbnQgc2tpcHBpbmcgb3ZlciBvdGhlciBmdW5j
dGlvbnMgdGhhdCBtYXkgcmVmZXJlbmNlDQpzb21ldGhpbmcgZW5naW5lIHJlbGF0ZWQgKHRoYXQg
bWF5IGFsc28gZW5kIHVwIHRyaWdnZXJpbmcgc3RhdHMgdmFyaWFibHMpLg0KDQpXaXRob3V0IGRp
Z2dpbmcgZnVydGhlciwgaSBzZWUgdGhlIG9sZCBwb3N0aW9uIGhlcmU6DQppOTE1X2RyaXZlcl9w
cm9iZSAtPiBpOTE1X2RyaXZlcl9tbWlvX3Byb2JlIC0+IGludGVsX2d0X2luaXRfbW1pbyAtPiBp
bnRlbF9lbmdpbmVzX2luaXRfbW1pbyAtPiBpbnRlbF9lbmdpbmVfc2V0dXANCm5ldyBwb3N0aW9u
IGhlcmU6DQppOTE1X2RyaXZlcl9wcm9iZSAtPiBpOTE1X2dlbV9pbml0IC0+IChmb3JfZWFjaF9n
dCkgaW50ZWxfZ3RfaW5pdCAtPiBpbnRlbF9lbmdpbmVzX2luaXQgLT4gc2V0dXAgKGludGVsX2V4
ZWNsaXN0c19zdWJtaXNzaW9uX3NldHVwKQ0KDQpBbmQgYmV0d2VlbiBpOTE1X2RyaXZlcl9tbWlv
X3Byb2JlIGFuZCBpOTE1X2dlbV9pbml0IGFyZSBvbmx5IG1lbS9nZ3R0LCBkaXNwbGF5IGFuZCBp
cnEgcmVsYXRlZCBpbml0IGZ1bmN0aW9ucy4NClRoYXQgc2FpZCwgTEdUTSAoYWx0aG91Z2ggeW91
IGRvIG5lZWQgdG8gYWRkcmVzcyB0aGUgQkFUIGZhaWx1cmUgYmVmb3JlIG1lcmdpbmcpOg0KDQpS
ZXZpZXdlZC1ieTogQWxhbiBQcmV2aW4gPGFsYW4ucHJldmluLnRlcmVzLmFsZXhpc0BpbnRlbC5j
b20+DQoNCk9uIFR1ZSwgMjAyMy0wOS0xMiBhdCAxNDoyMiAtMDcwMCwgVW1lc2ggTmVybGlnZSBS
YW1hcHBhIHdyb3RlOg0KPiBlbmdpbmUtPnN0YXRzIGlzIGEgdW5pb24gb2YgZXhlY2xpc3QgYW5k
IGd1YyBzdGF0IG9iamVjdHMuIFdoZW4gZXhlY2xpc3QNCj4gc3BlY2lmaWMgZmllbGRzIGFyZSBp
bml0aWFsaXplZCwgdGhlIGluaXRpYWwgc3RhdGUgb2YgZ3VjIHN0YXRzIGlzDQo+IGFmZmVjdGVk
LiBUaGlzIHJlc3VsdHMgaW4gYmFkIGJ1c3luZXNzIHZhbHVlcyB3aGVuIHVzaW5nIEd1QyBtb2Rl
LiBNb3ZlDQo+IHRoZSBleGVjbGlzdCBpbml0aWFsaXphdGlvbiBmcm9tIGNvbW1vbiBjb2RlIHRv
IGV4ZWNsaXN0IHNwZWNpZmljIGNvZGUuDQo+IA0KPiBGaXhlczogNzdjZGQwNTRkZDJjICgiZHJt
L2k5MTUvcG11OiBDb25uZWN0IGVuZ2luZSBidXN5bmVzcyBzdGF0cyBmcm9tIEd1QyB0byBwbXUi
KQ0KPiBTaWduZWQtb2ZmLWJ5OiBVbWVzaCBOZXJsaWdlIFJhbWFwcGEgPHVtZXNoLm5lcmxpZ2Uu
cmFtYXBwYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX2NzLmMgICAgICAgICAgICB8IDEgLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24uYyB8IDIgKysNCj4gIDIgZmlsZXMgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYw0KPiBpbmRleCBkZmI2OWZjOTc3YTAuLjg0YTc1Yzk1
ZjNmNyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X2NzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMN
Cj4gQEAgLTU1OCw3ICs1NTgsNiBAQCBzdGF0aWMgaW50IGludGVsX2VuZ2luZV9zZXR1cChzdHJ1
Y3QgaW50ZWxfZ3QgKmd0LCBlbnVtIGludGVsX2VuZ2luZV9pZCBpZCwNCj4gIAkJRFJJVkVSX0NB
UFMoaTkxNSktPmhhc19sb2dpY2FsX2NvbnRleHRzID0gdHJ1ZTsNCj4gIA0KPiAgCWV3bWFfX2Vu
Z2luZV9sYXRlbmN5X2luaXQoJmVuZ2luZS0+bGF0ZW5jeSk7DQo+IC0Jc2VxY291bnRfaW5pdCgm
ZW5naW5lLT5zdGF0cy5leGVjbGlzdHMubG9jayk7DQo+ICANCj4gIAlBVE9NSUNfSU5JVF9OT1RJ
RklFUl9IRUFEKCZlbmdpbmUtPmNvbnRleHRfc3RhdHVzX25vdGlmaWVyKTsNCj4gIA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Np
b24uYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9u
LmMNCj4gaW5kZXggNGQwNTMyMWRjNWI1Li5lOGY0MmVjNmIxYjQgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZXhlY2xpc3RzX3N1Ym1pc3Npb24uYw0K
PiBAQCAtMzU0OCw2ICszNTQ4LDggQEAgaW50IGludGVsX2V4ZWNsaXN0c19zdWJtaXNzaW9uX3Nl
dHVwKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkNCj4gIAlsb2dpY2FsX3JpbmdfZGVm
YXVsdF92ZnVuY3MoZW5naW5lKTsNCj4gIAlsb2dpY2FsX3JpbmdfZGVmYXVsdF9pcnFzKGVuZ2lu
ZSk7DQo+ICANCj4gKwlzZXFjb3VudF9pbml0KCZlbmdpbmUtPnN0YXRzLmV4ZWNsaXN0cy5sb2Nr
KTsNCj4gKw0KPiAgCWlmIChlbmdpbmUtPmZsYWdzICYgSTkxNV9FTkdJTkVfSEFTX1JDU19SRUdf
U1RBVEUpDQo+ICAJCXJjc19zdWJtaXNzaW9uX292ZXJyaWRlKGVuZ2luZSk7DQo+ICANCg0K
