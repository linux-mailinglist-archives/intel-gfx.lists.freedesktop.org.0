Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E437B6CD97F
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 14:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C8CA10E537;
	Wed, 29 Mar 2023 12:44:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3504510EA8D
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 12:44:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680093895; x=1711629895;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=aIqwGTpeJG2zit8Z45oBqYCAU49PNkUAwMxZUMx0Zts=;
 b=UlpVrbX6N9tB/Uw5wzuP18GwwXVNkwnByVZ5kQAKjV4J142mTQw9zxGv
 8Q5He4jDXtJoN9oYFQyPdImObDIwMH3gB3UyWePpzZpHaOGns2lGs5ziG
 rttIhPi3hXzm1SPu/ggd9m5JPQvVQYAb0nH6eE74ado30TZeRgWpQJ3Gb
 6a9397+BiE3NE2yOmEr2QbI3FvxsTUZammzLGTrvMwZViWMK4tyLCWXXj
 +bBi+k5og5BeeFCYB0nMIuYDEsQ/UYK7iXrwIc1ne9SuWPimVWch+i3oZ
 FE3lxO/nHzYpkr9aEs1N5654AVKfzYOb3g0b6/9SqT3CBpX53ibOFQ8gB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="403489447"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="403489447"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 05:44:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="773560659"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="773560659"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 29 Mar 2023 05:44:54 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 05:44:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 05:44:53 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 05:44:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TALjC0m2lTHLqnD3WtyKh3W/l8pF5WOTywSg2DkDEzPCc/CdimX6gyi3yiR55s8UCcKIUwNv9rDrpjlrEcoVL5MXBXDWg+nUQv4ZA2UuqzIDIf1hrS3c5xcIoL5v2dGgpZ8rucLL9DcByozT+u9jUjvEoGXZ4jbFPRiOt7+8A21HJN61pSCvhD4oFccpPRR6hfw80kAYPzYi3R3Gb93YWyVOC21Fl4uAqjyv6fiXKZL4n2rTSvFz0Cgsa5UcsMcyxrP1CaNu1/z0NwphKqTkJrLu3Y9Iy54ketwSBqE2+0dphUSSZDWPpVmB5/wff5StmTGNYjmYfe1qoSIJaHxgWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aIqwGTpeJG2zit8Z45oBqYCAU49PNkUAwMxZUMx0Zts=;
 b=HyVUNldty/ClS5If5AhWJtm9dDUFFgn5/hCp5g65hhfOu+y8pQkFJtjANCYvTlnZOi4EtM8HDpIDAEFOF05wsVx+qJrsvpXj9t4JfgvGm2jNMBzvaPhidXxB4LT5GsjlASVCW4RK4QHmqLdymd1lO6frOC5LwKrwJYhnWR4A80SmIHaoOIyaWirGyJ4XKCNuCJGnI7vpoBSQ/D/2uGqrCPeawU4LiBPwQr88YphKqO3AtdTTjCOBM3mUr7SKzjFPvHUi1z9UEUCXUjfQs3+gGjHblzLutEuumhA57waMFZeF8APafGwiE1D0D3x4O8nx9n6pfpHnuRGnGp1j00NTAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB7836.namprd11.prod.outlook.com (2603:10b6:8:e3::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.33; Wed, 29 Mar 2023 12:44:51 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Wed, 29 Mar 2023
 12:44:51 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v6 3/6] drm/i915/psr: Implement Wa_14015648006
Thread-Index: AQHZYiNPaJLu9nfKx0OmvUf4hRLDLq8Ro2UAgAAQ04A=
Date: Wed, 29 Mar 2023 12:44:51 +0000
Message-ID: <996f787923f4678fd7fd2dd80e82acdc88dd82ee.camel@intel.com>
References: <20230329094532.221450-1-jouni.hogander@intel.com>
 <20230329094532.221450-4-jouni.hogander@intel.com>
 <ZCQkpHc0gRzWRm5r@intel.com>
In-Reply-To: <ZCQkpHc0gRzWRm5r@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB7836:EE_
x-ms-office365-filtering-correlation-id: 5bd5eed5-525c-4e09-4c26-08db3053637b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: weGpanYYSsFtIGRkM5OfH4YuRVhjrw/oFg5VbvMSnrxKImlxStTqI5DnQMcxwh/RQ15k3trMWP7Gjbsr5cVRafmOO9LwCEmVnTl9TMbL4MJT2Rgmd3HX7jIG4Uo9ImriVsry1XLoT6WfNU6KfevQgyflGeL3cHTqIPSHA4GWAFiyAcF2KseSw3Ok94R/DB3fBjh0xacx9NAsTGQVRKeQOqN4F/bpEiEcNABNna+iWNyyAj+0fp42VaXo/MRUMmMYBFBrU1iCek7rR59vuDYKDQNiVf5Is2MNx+VJYGNDwDkl5lVwFlD0pwMTGD6tg0nFg2ZIDmJLTfA7LQRqF+qcclCnurwV5S2SAjkoyRyB9v3u0hX2Tvq3Tq9yXVHox8NsLNy2tKOCNzRVGeTMEDSrPh0hwhBgk5CR/C8VyBVvlmvTRquLXpnqm23opN8vpGeOCdy41+AnPV+SSRIRNrVFwSH/b9WmHzBTt57yleQH9uCozt8hv0MF9JuBIinNl6f9hGeOG0a+U63gfAOLRyQhFOKDqpwwBUJlrjz+2xl5vJG+e5drzpvtfM26IWpcJWQI50VcHTCcNZNXSWVJaM/0fXuMslr1X16sFSQOZWGKkIAYxIvTtr0X4Wtug38DiaFe
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(39860400002)(396003)(376002)(346002)(451199021)(6506007)(316002)(6512007)(122000001)(82960400001)(86362001)(8936002)(5660300002)(2616005)(66946007)(6916009)(64756008)(41300700001)(36756003)(76116006)(8676002)(66446008)(91956017)(66556008)(4326008)(66476007)(66574015)(186003)(26005)(38100700002)(83380400001)(478600001)(38070700005)(71200400001)(2906002)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Tnh6aEJ4NUFMTE1RREF0dlE3M1NOOUxxaFZVVmo0dzZMbjcvMXpKaGQrZHZr?=
 =?utf-8?B?UzNzWU1mYmlTdlhTNDh1THJBOFJsNXdibWdUYjRqYVk3anI5VmUvU2hsQng5?=
 =?utf-8?B?YmN3M21KZUFPSjhNemFIY0xCbC9mNENVZDYwU25jNDZvQkFjaUd6SXlubWFC?=
 =?utf-8?B?citERWkyU2ZSMEtwekpaNkdPQXJDTkZUQW5udGlzVXQ3bTlKZ2FlU0hVa1ZO?=
 =?utf-8?B?akdLcHkxbHMyMlZSb2hLR0l5QnJYblJlWUxJY3diL25BVU5KaUJwT25QVVdN?=
 =?utf-8?B?VkNmSE1qa2xqUGhNQTBOZEwyUXVpS2t3ZDZMSzFoYXZmcFBObTNtaVNha3RU?=
 =?utf-8?B?c3AvWUVLRFlhUTRNeW41OFFoOUhmYTl6TmI3bFVmSkhZV3N4c0RQaWROMEho?=
 =?utf-8?B?bVZ5ckJ2STFzYnA0TWxXZTJiQThOcmJudGxPRHErb0VkTEJ1ZWJ1b05kcW8r?=
 =?utf-8?B?TXlyVHZ4a0RSaG1udmZKNzF5dWtta2QrcDNaeWowb0hSVkp5RVJ5SDZsWGVw?=
 =?utf-8?B?YlJCcG83ajdWTERiOWRTRG01dzhUZDRuYWtVa3FzcWh2WnVTVlo2S28xRHkx?=
 =?utf-8?B?TjNsbVk3clFiSnlHbi9XcWlGNDA1cURIYVJXcVo5ZXpzajErbTFvaFpuOG1k?=
 =?utf-8?B?ZDZ3UDRyL3liU2ZFeDlQWEV1UVFHenJoVzB6VzRKYk9UM2NaOE1wRWVxTFpL?=
 =?utf-8?B?R21EaHdNdzNDckcwS3lLd055eVJhRkIxMnFUSFgvVTlQRWVmQUZPYTdja2da?=
 =?utf-8?B?VVQyZHVBQ1RnNE1yeGNsaWVKTmlpUExxZHJ3Q05oOUVodzZSZG0weTNlTzRn?=
 =?utf-8?B?RzU1M0wrYzE3RjVkYm9tM3FrZnF4MmVMYlByQU9BbS9EYXFTNkRRYXRoRFV2?=
 =?utf-8?B?MjI0ZVY4VzJQYldjUThDUjlaNllncTcvQVZEbjN1c1A4RFdGZHhyaWhZUkhV?=
 =?utf-8?B?bmc1dVM1ek9qcWVUVlA3emE3dE41WFVyMjU0aWUrZGdhMUxGTTJveW1JM21q?=
 =?utf-8?B?c0F1anZENzh5cGgrazIrR2pTV0E3cFMzczA2aGVUdkNMMC9qeDF3OTROYTNr?=
 =?utf-8?B?cnJHbWRBTDVCcWVjV3kxNTJ3Sm9DNnNXeVcyNmhzdE95YU94UHNISFROV2RV?=
 =?utf-8?B?b2FYSXgvVHZuN2c1SGZRV2RvMUdRa0cyQjdPcENmQ0lzempNZnZXMms2cVFY?=
 =?utf-8?B?dGdUZVlpMnNvRTVlQ0M5NEQ0Q0p5TXlmNVVDbjZJZ0FZZWp0MVU4UGlTZ3JN?=
 =?utf-8?B?Q0pkNlIyU3FPWHdMVDZ6Q2ZhTUtBb2RHaEZpbFN5bm5HYkx5RnhBOFBHZWFP?=
 =?utf-8?B?VVZqWmsvaHY4a28zeEprbW9zS2NqTlBCeGlZcWJxZGxnLzVWUktyTStIVGQ3?=
 =?utf-8?B?Wm1ZUVAxWFdQa0ZZRVJSZ2o1N3BIcVlTV2Y4dEkwZTE1a0tyKzYzQ1kzTTZW?=
 =?utf-8?B?cFIxeHBRZlNuQzBSeEgwY3UybjdkamhCaE14eWpYdEh6Z3RidEJEK1JWYnEw?=
 =?utf-8?B?QVVvZXFBN0l5NlA1aVdQWi9RVHVnSzU1L29ZQWRLWTZlNzdoTjhHL3dPV1Vw?=
 =?utf-8?B?MmpPRmhPK0kzdDhFVzUxVUVjdDM2S2dXK3JaOFFxRzhHTVZnenVpcC9SVThj?=
 =?utf-8?B?d1hmMmkvOUtiTGdQNmZVRmF4Tm1pTnIyWGNuTks0SmlQTWo4V2JBajJZWXhB?=
 =?utf-8?B?NHlVVGFFUWExUW85S1lpeHFvUnNHTUF3b3ZvcDg4QXUwenVzMVI4YlAwT3cy?=
 =?utf-8?B?eDRkNEVaeWhmZkY1L1UzcjJ2d0ttaG5YOEtsZkJTc0hWcXphNXBXZ2ZVL2sw?=
 =?utf-8?B?WDd6MTFPYVg2ZHpyZXlwYlMwN1FVUm9sUkdVaHRPWFZxdVdQemFleWZES1Y5?=
 =?utf-8?B?WHoxR1g5VmltUE1FQk9aRVJwSjN6Wkw1c0xPeTErRzhsN0cwYWpROU5kNmth?=
 =?utf-8?B?b2gvQ2JDZXlzWllKWWh3UExHd0RpYnFkMUQ0MC9zS01uSU5ITU1XMWhYNzMz?=
 =?utf-8?B?SkwzZ1NsZ21mczR3WnFmMmhLVlo5ZVZGRzFoQmdCVEFaS2dhMmdTK29LeUg2?=
 =?utf-8?B?Q283RnUyMWd4cjNYem5mU2psNSt5VVFSNmRDZmZpdkJidU9hSlRPb1B6U3Rq?=
 =?utf-8?B?Y2lHSzFJUWxSMnBhTFJzYXBGd0F5QlFVWHBlWmYwWkFEOVYwcjM0Nnh0Rkpk?=
 =?utf-8?B?bWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <25EF4B31EA316B49BA1D835052CE65DB@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5bd5eed5-525c-4e09-4c26-08db3053637b
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2023 12:44:51.2208 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 95OiLfsWUVkXdd0mKcuN9RIrEByjF2Kk3mmuPMtRMDy4y2JvyS6ztz2/gFOOBQMgYDJh1LpERVSwui1OuWTddFpQku4m0xPoBGH5BC7nd6c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7836
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v6 3/6] drm/i915/psr: Implement
 Wa_14015648006
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

T24gV2VkLCAyMDIzLTAzLTI5IGF0IDE0OjQ0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gV2VkLCBNYXIgMjksIDIwMjMgYXQgMTI6NDU6MjlQTSArMDMwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gUFNSIFdNIG9wdGltaXphdGlvbiBzaG91bGQgYmUgZGlzYWJsZWQgYmFz
ZWQgb24gYW55IHdtIGxldmVsIGJlaW5nCj4gPiBkaXNhYmxlZC4gQWxzbyBzYW1lIFdBIHNob3Vs
ZCBiZSBhcHBsaWVkIGZvciBJQ0wgYXMgd2VsbC4KPiA+IAo+ID4gQnNwZWM6IDcxNTgwCj4gPiAK
PiA+IHY0Ogo+ID4gwqAtIEhhbmRsZSBtb2RlIGNoYW5nZSBpbiBwc3IgZW5hYmxlL2Rpc2FibGUK
PiA+IMKgLSBIYW5kbGUgd21fbGV2ZWxfZGlzYWJsZSBjaGFuZ2VzIHNlcGFyYXRlbHkgaW4gcHJl
IHBsYW5lIGhvb2sKPiA+IHYzOgo+ID4gwqAtIFNwbGl0IHBhdGNoCj4gPiB2MjoKPiA+IMKgLSBz
ZXQvY2xlYXIgY2hpY2tlbiBiaXQgaW4gcG9zdF9wbGFuZV91cGRhdGUKPiA+IMKgLSBhcHBseSBm
b3IgSUNMIGFzIHdlbGwKPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxq
b3VuaS5ob2dhbmRlckBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmggfMKgIDEgKwo+ID4gwqBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jwqDCoMKgwqDCoMKgwqDCoMKgwqAgfCAxNAo+
ID4gKysrKysrKysrKysrKy0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xf
d2F0ZXJtYXJrLmPCoMKgwqDCoMKgwqAgfMKgIDcgKysrKystLQo+ID4gwqAzIGZpbGVzIGNoYW5n
ZWQsIDE5IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0pCj4gPiAKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ID4g
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ID4g
aW5kZXggYWIxNDZiNWI2OGJkLi40MjM2YWQ3NTFjMmMgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgKPiA+IEBAIC0x
MTU3LDYgKzExNTcsNyBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7Cj4gPiDCoMKgwqDCoMKg
wqDCoMKgYm9vbCBoYXNfcHNyMjsKPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIGVuYWJsZV9wc3Iy
X3NlbF9mZXRjaDsKPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHJlcV9wc3IyX3NkcF9wcmlvcl9z
Y2FubGluZTsKPiA+ICvCoMKgwqDCoMKgwqDCoGJvb2wgd21fbGV2ZWxfZGlzYWJsZWQ7Cj4gPiDC
oMKgwqDCoMKgwqDCoMKgdTMyIGRjM2NvX2V4aXRsaW5lOwo+ID4gwqDCoMKgwqDCoMKgwqDCoHUx
NiBzdV95X2dyYW51bGFyaXR5Owo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fZHBfdnNj
X3NkcCBwc3JfdnNjOwo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYwo+ID4gaW5kZXggMjZhZDQzNjU5NjBmLi45YzQxNmIzMDE1NTUgMTAwNjQ0Cj4gPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jCj4gPiBAQCAtMTEzNiw2ICsxMTM2
LDcgQEAgc3RhdGljIHUzMiB3YV8xNjAxMzgzNTQ2OF9iaXRfZ2V0KHN0cnVjdAo+ID4gaW50ZWxf
ZHAgKmludGVsX2RwKQo+ID4gwqAKPiA+IMKgLyoKPiA+IMKgICogV2FfMTYwMTM4MzU0NjgKPiA+
ICsgKiBXYV8xNDAxNTY0ODAwNgo+ID4gwqAgKi8KPiA+IMKgc3RhdGljIHZvaWQgd21fb3B0aW1p
emF0aW9uX3dhKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsCj4gPiDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUKPiA+ICpjcnRjX3N0YXRlKQo+ID4gQEAgLTExNDMsNiArMTE0NCwx
MSBAQCBzdGF0aWMgdm9pZCB3bV9vcHRpbWl6YXRpb25fd2Eoc3RydWN0Cj4gPiBpbnRlbF9kcCAq
aW50ZWxfZHAsCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRl
dl9wcml2ID0gZHBfdG9faTkxNShpbnRlbF9kcCk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBz
ZXRfd2FfYml0ID0gZmFsc2U7Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKgLyogV2FfMTQwMTU2
NDgwMDYgKi8KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChJU19NVExfRElTUExBWV9TVEVQKGRldl9w
cml2LCBTVEVQX0EwLCBTVEVQX0IwKSB8fAo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIElTX0RJ
U1BMQVlfVkVSKGRldl9wcml2LCAxMSwgMTMpKQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHNldF93YV9iaXQgfD0gY3J0Y19zdGF0ZS0+d21fbGV2ZWxfZGlzYWJsZWQ7Cj4gPiAr
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgLyogV2FfMTYwMTM4MzU0NjggKi8KPiA+IMKgwqDCoMKgwqDC
oMKgwqBpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49IDEyKQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBzZXRfd2FfYml0IHw9IGNydGNfc3RhdGUtCj4gPiA+aHcuYWRqdXN0
ZWRfbW9kZS5jcnRjX3ZibGFua19zdGFydCAhPQo+ID4gQEAgLTExOTcsNiArMTIwMyw3IEBAIHN0
YXRpYyB2b2lkIGludGVsX3Bzcl9lbmFibGVfc291cmNlKHN0cnVjdAo+ID4gaW50ZWxfZHAgKmlu
dGVsX2RwLAo+ID4gwqAKPiA+IMKgwqDCoMKgwqDCoMKgwqAvKgo+ID4gwqDCoMKgwqDCoMKgwqDC
oCAqIFdhXzE2MDEzODM1NDY4Cj4gPiArwqDCoMKgwqDCoMKgwqAgKiBXYV8xNDAxNTY0ODAwNgo+
ID4gwqDCoMKgwqDCoMKgwqDCoCAqLwo+ID4gwqDCoMKgwqDCoMKgwqDCoHdtX29wdGltaXphdGlv
bl93YShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7Cj4gPiDCoAo+ID4gQEAgLTEzNzQsOCArMTM4MSw5
IEBAIHN0YXRpYyB2b2lkIGludGVsX3Bzcl9kaXNhYmxlX2xvY2tlZChzdHJ1Y3QKPiA+IGludGVs
X2RwICppbnRlbF9kcCkKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgLyoKPiA+IMKgwqDCoMKg
wqDCoMKgwqAgKiBXYV8xNjAxMzgzNTQ2OAo+ID4gK8KgwqDCoMKgwqDCoMKgICogV2FfMTQwMTU2
NDgwMDYKPiA+IMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChESVNQ
TEFZX1ZFUihkZXZfcHJpdikgPj0gMTIpCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoRElTUExBWV9W
RVIoZGV2X3ByaXYpID49IDExKQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9kZV9ybXcoZGV2X3ByaXYsIEdFTjhfQ0hJQ0tFTl9EQ1BSXzEsCj4gPiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCB3YV8xNjAxMzgz
NTQ2OF9iaXRfZ2V0KGludGVsX2RwKSwgMCk7Cj4gPiDCoAo+ID4gQEAgLTE5NDksNiArMTk1Nywx
MCBAQCB2b2lkIGludGVsX3Bzcl9wcmVfcGxhbmVfdXBkYXRlKHN0cnVjdAo+ID4gaW50ZWxfYXRv
bWljX3N0YXRlICpzdGF0ZSwKPiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoGlmIChwc3ItPmVuYWJsZWQgJiYgbmVlZHNfdG9fZGlzYWJsZSkKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX3Bzcl9kaXNhYmxlX2xv
Y2tlZChpbnRlbF9kcCk7Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZWxzZSBp
ZiAocHNyLT5lbmFibGVkICYmIG9sZF9jcnRjX3N0YXRlLQo+ID4gPndtX2xldmVsX2Rpc2FibGVk
ICE9Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBu
ZXdfY3J0Y19zdGF0ZS0+d21fbGV2ZWxfZGlzYWJsZWQpCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoC8qIFdhXzE0MDE1NjQ4MDA2ICovCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHdtX29wdGltaXphdGlv
bl93YShpbnRlbF9kcCwKPiA+IG5ld19jcnRjX3N0YXRlKTsKPiAKPiBUaGlzIGNhbiBub3cgYWxz
byBjbGVhciB0aGUgYml0LCB3aGljaCBpcyB0aGUgd3JvbmcgdGhpbmcKPiB0byBkbyBpbiBwcmVf
cGxhbmVfdXBkYXRlKCkuCgpZZXMsIHlvdSBhcmUgcmlnaHQsIEkgd2lsbCBmaXggdGhpcy4KPiAK
PiA+IMKgCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG11dGV4X3VubG9jaygm
cHNyLT5sb2NrKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMKPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMKPiA+IGluZGV4IGZmNzAyMjVjMDI2My4u
N2UyZTc2YWZiZjJhIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
c2tsX3dhdGVybWFyay5jCj4gPiBAQCAtMjI3Niw5ICsyMjc2LDEyIEBAIHN0YXRpYyBpbnQgc2ts
X3dtX2NoZWNrX3ZibGFuayhzdHJ1Y3QKPiA+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUp
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBsZXZlbDsKPiA+IMKg
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgLyoKPiA+IC3CoMKgwqDCoMKgwqDCoCAqIEZJWE1FIFBTUiBu
ZWVkcyB0byB0b2dnbGUKPiA+IExBVEVOQ1lfUkVQT1JUSU5HX1JFTU9WRURfUElQRV8qCj4gPiAr
wqDCoMKgwqDCoMKgwqAgKiBQU1IgbmVlZHMgdG8gdG9nZ2xlIExBVEVOQ1lfUkVQT1JUSU5HX1JF
TU9WRURfUElQRV8qCj4gPiDCoMKgwqDCoMKgwqDCoMKgICogYmFzZWQgb24gd2hldGhlciB3ZSdy
ZSBsaW1pdGVkIGJ5IHRoZSB2YmxhbmsgZHVyYXRpb24uCj4gPiAtwqDCoMKgwqDCoMKgwqAgKgo+
ID4gK8KgwqDCoMKgwqDCoMKgICovCj4gPiArwqDCoMKgwqDCoMKgwqBjcnRjX3N0YXRlLT53bV9s
ZXZlbF9kaXNhYmxlZCA9IGxldmVsIDwgaTkxNS0KPiA+ID5kaXNwbGF5LndtLm51bV9sZXZlbHMg
LSAxOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgLyoKPiA+IMKgwqDCoMKgwqDCoMKgwqAgKiBG
SVhNRSBhbHNvIHJlbGF0ZWQgdG8gc2tsKyB3L2EgMTEzNiAoYWxzbyB1bmltcGxlbWVudGVkCj4g
PiBhcyBvZgo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIG5vdykgcGVyaGFwcz8KPiA+IMKgwqDCoMKg
wqDCoMKgwqAgKi8KPiA+IC0tIAo+ID4gMi4zNC4xCj4gCgo=
