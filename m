Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 678AC70036F
	for <lists+intel-gfx@lfdr.de>; Fri, 12 May 2023 11:10:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 785A510E64F;
	Fri, 12 May 2023 09:10:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E002210E64F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 May 2023 09:10:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683882643; x=1715418643;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=eLGJy8qRYpYyDkEJvTx4ZkOTQ+icQs/kMN3hrsfY3BM=;
 b=cKSSy9MbFmAHV7VwuZZxjC8dBAhuRMnEq3AbAx1FYE6++d1xQVUCvPx4
 SO33dSh7fPE1Ehx2hL4NZG3LUw6JnIlqoNIYe/3/zlK7pEcWOCjspHmJm
 jCKmdibNdrvY1EzToyG8AphZDyAuUBvZGrb01+VDz1GpPs9/yusO2LC4u
 hT7vjGBrwpN9Iqycq6t8ZnZYC7DdkSk3wc1Zcevp8YXRnuQZ+MhXMAZn2
 m2xd6B9WHMm/3U55nVwuuveDW0IZa0FZ60o6Jx3XhZCRKclPTn25IUPTn
 z1GQmCr1yjlnoQYy40lJHIr/5P9B66Y9cZGo/9UWxqpAm79QSFBhRe+lS Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="437078934"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="437078934"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2023 02:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10707"; a="694167462"
X-IronPort-AV: E=Sophos;i="5.99,269,1677571200"; d="scan'208";a="694167462"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 12 May 2023 02:10:30 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 12 May 2023 02:10:30 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 12 May 2023 02:10:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 12 May 2023 02:10:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TKjPNCAhWKTmbXk9kuC9LJKGzkhw3gFaAwlJjlHpRxdyPNLOLcCYuQbCAEqbNnaCWbWDmy0v+W/1fnB2PkhW1kc3Q34ggs96yEL880shPo8mZp6UCaJHKyZsJHW6NHkWt+7zn25x4ua64mqJaMocQkAL86Dvd7WTuacBDxt68AKKgcmAxtEXka1x5mfdGhB+PsNCfLenXyJW8d6Rxm8P2riDySNNZiUJY9ypHHIW/ZF6ZprKQzaNsfJT2dknZYlKy5jdFP/wUVED6kP+nz5Mlbtt8yyREU/se1VQeKl76n/1o2KvESVYo3/ihZHfwsuaF3tmGU9Cy0UhJx62xMNIMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eLGJy8qRYpYyDkEJvTx4ZkOTQ+icQs/kMN3hrsfY3BM=;
 b=AoXiKtFR197BE1Kp/1NsEStAjAgGJu4iaW2B0iO58WrmUDXC046QLpNS5AKjW9b7F+f1952XdjROOzK0ZW3e1clHvYZVU2IRjGpo5Z79jVDwa3fJOqwCqnVZ3gQx8wkVBM4jRUKWzq09UBRb45U9CfVtsTBtrepWSRkc7Cs4u/2Bj40miFyR3aYqoX/JeUtypC+snqdc1DRHwJUFR4VOI17n7GZTOa2CayqYD3tWv3ni4kk8vJ8IXFaRXKXIXYVlXqCtGW1fzDXsIceukxOTsOYCJbScdHYs/eo3gea4VQe9WTLSM+BUXWPFVxX5kIbmCOU+YGw0JbyPgKaPmflU1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB7382.namprd11.prod.outlook.com (2603:10b6:8:131::13)
 by DS7PR11MB6037.namprd11.prod.outlook.com (2603:10b6:8:74::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6387.22; Fri, 12 May 2023 09:10:23 +0000
Received: from DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9]) by DS0PR11MB7382.namprd11.prod.outlook.com
 ([fe80::7c95:e842:18f6:92f9%6]) with mapi id 15.20.6387.022; Fri, 12 May 2023
 09:10:22 +0000
From: "Coelho, Luciano" <luciano.coelho@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915/gt: create workqueue dedicated
 to wake references
Thread-Index: AQHZhLDDHJAR52bEVUmkKkecp6JPza9WWcaA
Date: Fri, 12 May 2023 09:10:22 +0000
Message-ID: <294471856c7245b3e3aef29508bddb5f4ea33bfb.camel@intel.com>
References: <20230511082013.1313484-1-luciano.coelho@intel.com>
 <20230511082013.1313484-3-luciano.coelho@intel.com>
 <43e3f1e2-5910-6a3f-2282-44e4718bcd04@linux.intel.com>
In-Reply-To: <43e3f1e2-5910-6a3f-2282-44e4718bcd04@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.4-2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB7382:EE_|DS7PR11MB6037:EE_
x-ms-office365-filtering-correlation-id: 58ea4c86-a572-4cef-f91d-08db52c8b755
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: WGBWJxwKxwiD10tXtgAlYiOo+UscVT/S59iPI09a09H6t+EEZx56WGoss3aDkuo9YLlwfeAwl/e+4cFQyD0LIGQfQ8a2iLWcdWWRBYg8TzBFOq1LPP7DmcXzGGhPHmHrtFdgLq2ow2A04eJnD1smcIx47NegVJM8VJyh4OQqs/TfBJQuRU2679Cg9hVXVxEu0uzPs6dYgdNtplM49cu2laaJIxCSBv47T3HohkXnExZtAYi4LsD1u9cfr4kXRs7c4p/EFRgjxnQE//mMt0DjMger1LaNymUggzZl33C6u3spjnnHAqWtPtlEwM6LSHQvHOmDHiJFbHWTUs3PdohtLywvqLrtzWLm5V2FfbYZJ2Ib6bn/uRCO3P5MUiWhtVyU6YypKrNp2c4biLcV/oDDWSNL04cyUQAZYjHNmFovIVTOF4fGRxzFnmG20NT2N8pcGJMWCAE+7QmuoepwV09fBGBgz5RRpzOAR7ivqUIDtF4LAfpujvZbg78E7WH008azF/LaDK5Unich8VJ4fE2KqzXXxDObZ6lMMoC1FxpUzVBfYfdnYdZxs9pT2rpIaCryWGB5oqQkp+lbvsxNSv6SxkQRctR4YJ2JbTAP/aYeByQcjHUNrwHvbRSJPGrjfB4b
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7382.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(366004)(396003)(136003)(346002)(39860400002)(451199021)(6512007)(6506007)(2616005)(53546011)(26005)(38100700002)(41300700001)(71200400001)(66574015)(186003)(83380400001)(6486002)(478600001)(110136005)(8936002)(66946007)(91956017)(64756008)(66556008)(66446008)(66476007)(82960400001)(76116006)(122000001)(5660300002)(2906002)(38070700005)(36756003)(86362001)(8676002)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dW1LemNzbzJKRnpZZmhLYkdHWlp4OWcrNXhET2s2WTA4ZHl5QisxOFB5Sms2?=
 =?utf-8?B?VFB4NDFnMUw2QU9QU3M0WmtobjFXWGh3bW5zSDEwdFZoRlBiQXB5YUdjQ2M4?=
 =?utf-8?B?WlB6UUlxTDQ1N3hQeXJ5a1FQQUltMTFsSzQ4RlJoNnpvRE5XMjRnbENUR1lw?=
 =?utf-8?B?bVRiTkc1OG9YZ3dwUGNuN29iWGxpTnJrM2VGc2FJWVRsS2tKTmFteWpxY3Mw?=
 =?utf-8?B?Qk5aOUZrTjIvTjhFZ205RzVWbGJrRUlpbWlUNXVqSlo1NFpqLzlZUnVzNlAz?=
 =?utf-8?B?TjFGWURkMENFNmNRWGZ3UTZVZHpnUlBSZ3ZSdDlRZ3drM3ZJR0FJQklHa0Mx?=
 =?utf-8?B?OENYV1dUUlFOYzNYSklsbFphYzdHVDFWYk5Sa0llWWNjbEh4c3N0T2M2c0ll?=
 =?utf-8?B?RG1oNVVlS0lISWFCWjdnUWViamtpRE1BakVGek5DM2ZyZDNtSlo4Tk9DVHZa?=
 =?utf-8?B?UnRIRjJYWUVYOEhvd1B1bG1xZk83QngvQzQzR1Uva0VqU1JNUHIwTFcvMFF2?=
 =?utf-8?B?Zkw5UnhzazhjLzMxNERrRmFTeDJFN3NNTllNdHBwZE5JZk9DSVR3OUxtZWta?=
 =?utf-8?B?OHZxYnVUaCtKb1Y2RUVONlBLQVVSbk5nN2duZEpLQ2t1a3Znbm53Tk1RZlRT?=
 =?utf-8?B?aS9pajlBREFhNHdRVXRIRWhPS0gvR0c1NEV4M28yR0U1NzFmcXZ3N0Rla1RP?=
 =?utf-8?B?Zk8zdlB6VlJnaWpFUXQ1N3JwbWNlWGV0dGpKRUJrMk9vOVM5a2JOR2wzRmti?=
 =?utf-8?B?N0ZMa2x3bXZjb3pMN055Ny9iMDZLQWZZdEcrK3VoUlkra3RoUWpOU1psNlRT?=
 =?utf-8?B?emQ2Q3pwa3dsWmd6SzA4clVzbk56TFZuZFJXU3p4Zm5jQWNITzg3SnFqTEVs?=
 =?utf-8?B?VW93bi9iVjhYTUJmYVlTMVZyaG9NNnh6ZW42RGlaQ0ZkRW5sZWl4WnNuQU85?=
 =?utf-8?B?ZUJHU2lxTWJQeTBBbTB6N1JOWnZkY2t0V21uZVRMLzRmS2pIV3VBdHJtdlJI?=
 =?utf-8?B?ZVo1TnI5dTBDYU1sc1RXSTlZaXZ3MUJuWERPQjBNMUJhZ1g0MnQwMm1abmlJ?=
 =?utf-8?B?UlQzL3dyVXBkT3g0ai8zUkxXQjJZeGNjYW5IdUNJaEd1b2psYzhleitlVUM4?=
 =?utf-8?B?RUZGdENRSVNmN25Ndk1raEh6YzRLL3FJNnYzSyszRGJ6Tmt0R3FnKzVRWlNV?=
 =?utf-8?B?aGJGc1NKbER1R3A4ekJXVDgvODhkQXErdGJRZGtRbDNYSWg5ZWdIRFNUUC9W?=
 =?utf-8?B?dkV3dUJBV2dpMWpEbC8rSDNGdzFycUpYVEE4NVI4NGdReC9qZWhGNFg5c3BF?=
 =?utf-8?B?Q0YxV1JzaG1xb045QjFoalhZU25vcWw2MUJ4NGRHckh3T3ZScVFoWXNVemhQ?=
 =?utf-8?B?bUszZ2xqTlpxUDU0L3NsMUF1VnVWSExmakdNVzNFL1JhWDVLYmhXd1JaV1JT?=
 =?utf-8?B?RHNNb3MyQ3dBYm9uczcrZTlBWXI5ZlljMWYweFFGZGlNQk5vVmdvdGlwY3pW?=
 =?utf-8?B?Wmw1MDM1Z0toN2dOdmRFRUc4YlJQR0ZCY2xKNkdlZVY4MVBna29POVlVVWYv?=
 =?utf-8?B?WGRFeTZpenY2MXZKYldBaTJib2Rwb2x6cUtYQm9JNVkxam1KdlN1aUM5U0Jw?=
 =?utf-8?B?UGFYTUZLWW9pdzJzdmhwNGs2dkM5Y3YwNmJyUklkRFhoMFByOXF2bzViTndC?=
 =?utf-8?B?blpqcDFWZWhnME9kMnhlelRsaVNLOVBSWno1MUI0bXNnYzJNVEVZUW9hR1BK?=
 =?utf-8?B?SzZYWHpMZFY5SndhbjFXNnBCNWhTbFlEVmJSWU1QK3d1aTJsZUY1OUlaNEsz?=
 =?utf-8?B?ZERPWlRjTlhyV2RJY0x5QndJSFlpM3piNEN4RFhLb0NvZTdyZ1dJVzNqVzdo?=
 =?utf-8?B?SFFiZHhKZWZtSUhhb1pMMmw4M1ZNbDZLQUl3NTk3eUs4bU5JTlFWMEQzdC9N?=
 =?utf-8?B?djNwUFlUdkczeVR6Ui9wVThOKy9ZVDMvdkEyZEFkRkkvR1E1Vzc0akhqWkV2?=
 =?utf-8?B?cEhiRDgzdDY4VUgxb09PSEQ4emRQQm1jbUgvcGM2TTJOaFc1UkhWaTdxbGps?=
 =?utf-8?B?S1lNTTNTTDJjYU55bWpvNS9hclBuZXVscFhYR29SUzlUSkZFZXJaZXhkQ3dD?=
 =?utf-8?B?algwdzNNL2x6Sm1Rb2FkZTc3VEg3RHdMSWVvRFpPL1VLSFI3bzZPWlo4VVNq?=
 =?utf-8?B?NGc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2F05DB7BF38024498E254A9377FFCA0E@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7382.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58ea4c86-a572-4cef-f91d-08db52c8b755
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2023 09:10:22.5762 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vqPXrY9rVWWPtqcvSWqSeD7CzrlS3qBrzzm3a4nIBTq1QdzqezCKU8s/r1LtjN9NGrYmkHTRU+5AWiCePBfTHrqjnT1zDVKkN8oTDqPcS4I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6037
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/gt: create workqueue dedicated
 to wake references
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

T24gRnJpLCAyMDIzLTA1LTEyIGF0IDEwOjA0ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMTEvMDUvMjAyMyAwOToyMCwgTHVjYSBDb2VsaG8gd3JvdGU6DQo+ID4gQWRkIGEgd29y
ayBxdWV1ZSBpbiB0aGUgaW50ZWxfd2FrZXJlZiBzdHJ1Y3R1cmUgdG8gYmUgdXNlZCBleGNsdXNp
dmVseQ0KPiA+IGJ5IHRoZSB3YWtlIHJlZmVyZW5jZSBtZWNoYW5pc20uICBUaGlzIGlzIG5lZWRl
ZCBpbiBvcmRlciB0byBhdm9pZA0KPiA+IHVzaW5nIHRoZSBzeXN0ZW0gd29ya3F1ZXVlIGFuZCBy
ZWx5aW5nIG9uIGZsdXNoX3NjaGVkdWxlZF93b3JrKCkuDQo+ID4gDQo+ID4gQ2M6IFRldHN1byBI
YW5kYSA8cGVuZ3Vpbi1rZXJuZWxASS1sb3ZlLlNBS1VSQS5uZS5qcD4NCj4gPiBDYzogVHZydGtv
IFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGludGVsLmNvbT4NCj4gPiBDYzogSmFuaSBOaWt1bGEg
PGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5z
eXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBMdWNhIENvZWxobyA8
bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJt
L2k5MTUvZ3QvaW50ZWxfZW5naW5lX2NzLmMgfCAgNyArKysrKystDQo+ID4gICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYyB8IDE1ICsrKysrKysrKysrKy0tDQo+ID4g
ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaCB8ICAzICsrLQ0KPiA+
ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUuYyAgICAgfCAgOCArKysrKysr
LQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaW50ZWxfd2FrZXJlZi5jICAgICAgfCAyMSAr
KysrKysrKysrKysrKy0tLS0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pbnRlbF93YWtl
cmVmLmggICAgICB8IDI1ICsrKysrKysrKysrKysrKy0tLS0tLS0tDQo+ID4gICA2IGZpbGVzIGNo
YW5nZWQsIDYwIGluc2VydGlvbnMoKyksIDE5IGRlbGV0aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfY3MuYyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9jcy5jDQo+ID4gaW5kZXggMGFmZjViYjEz
YzUzLi42NTA1YmZhNzBjZDAgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
Z3QvaW50ZWxfZW5naW5lX2NzLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9p
bnRlbF9lbmdpbmVfY3MuYw0KPiA+IEBAIC0xMjkwLDcgKzEyOTAsMTEgQEAgc3RhdGljIGludCBl
bmdpbmVfc2V0dXBfY29tbW9uKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSkNCj4gPiAg
IAkJZ290byBlcnJfY21kX3BhcnNlcjsNCj4gPiAgIA0KPiA+ICAgCWludGVsX2VuZ2luZV9pbml0
X2V4ZWNsaXN0cyhlbmdpbmUpOw0KPiA+IC0JaW50ZWxfZW5naW5lX2luaXRfX3BtKGVuZ2luZSk7
DQo+ID4gKw0KPiA+ICsJZXJyID0gaW50ZWxfZW5naW5lX2luaXRfX3BtKGVuZ2luZSk7DQo+ID4g
KwlpZiAoZXJyKQ0KPiA+ICsJCWdvdG8gZXJyX2NtZF9wYXJzZXI7DQo+ID4gKw0KPiA+ICAgCWlu
dGVsX2VuZ2luZV9pbml0X3JldGlyZShlbmdpbmUpOw0KPiA+ICAgDQo+ID4gICAJLyogVXNlIHRo
ZSB3aG9sZSBkZXZpY2UgYnkgZGVmYXVsdCAqLw0KPiA+IEBAIC0xNTI1LDYgKzE1MjksNyBAQCB2
b2lkIGludGVsX2VuZ2luZV9jbGVhbnVwX2NvbW1vbihzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICpl
bmdpbmUpDQo+ID4gICB7DQo+ID4gICAJR0VNX0JVR19PTighbGlzdF9lbXB0eSgmZW5naW5lLT5z
Y2hlZF9lbmdpbmUtPnJlcXVlc3RzKSk7DQo+ID4gICANCj4gPiArCWludGVsX2VuZ2luZV9kZXN0
cm95X19wbShlbmdpbmUpOw0KPiA+ICAgCWk5MTVfc2NoZWRfZW5naW5lX3B1dChlbmdpbmUtPnNj
aGVkX2VuZ2luZSk7DQo+ID4gICAJaW50ZWxfYnJlYWRjcnVtYnNfcHV0KGVuZ2luZS0+YnJlYWRj
cnVtYnMpOw0KPiA+ICAgDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5jIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5l
X3BtLmMNCj4gPiBpbmRleCBlZTUzMWE1YzE0MmMuLjg1OWI2MmNmNjYwZiAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uYw0KPiA+ICsrKyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L2ludGVsX2VuZ2luZV9wbS5jDQo+ID4gQEAgLTI5NCwx
NCArMjk0LDI1IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9vcHMgd2Zfb3Bz
ID0gew0KPiA+ICAgCS5wdXQgPSBfX2VuZ2luZV9wYXJrLA0KPiA+ICAgfTsNCj4gPiAgIA0KPiA+
IC12b2lkIGludGVsX2VuZ2luZV9pbml0X19wbShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdp
bmUpDQo+ID4gK2ludCBpbnRlbF9lbmdpbmVfaW5pdF9fcG0oc3RydWN0IGludGVsX2VuZ2luZV9j
cyAqZW5naW5lKQ0KPiA+ICAgew0KPiA+ICAgCXN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0g
PSBlbmdpbmUtPnVuY29yZS0+cnBtOw0KPiA+ICsJaW50IGVycjsNCj4gPiArDQo+ID4gKwllcnIg
PSBpbnRlbF93YWtlcmVmX2luaXQoJmVuZ2luZS0+d2FrZXJlZiwgcnBtLCAmd2Zfb3BzKTsNCj4g
PiArCWlmIChlcnIpDQo+ID4gKwkJcmV0dXJuIGVycjsNCj4gPiAgIA0KPiA+IC0JaW50ZWxfd2Fr
ZXJlZl9pbml0KCZlbmdpbmUtPndha2VyZWYsIHJwbSwgJndmX29wcyk7DQo+ID4gICAJaW50ZWxf
ZW5naW5lX2luaXRfaGVhcnRiZWF0KGVuZ2luZSk7DQo+ID4gICANCj4gPiAgIAlpbnRlbF9nc2Nf
aWRsZV9tc2dfZW5hYmxlKGVuZ2luZSk7DQo+ID4gKw0KPiA+ICsJcmV0dXJuIDA7DQo+ID4gK30N
Cj4gPiArDQo+ID4gK3ZvaWQgaW50ZWxfZW5naW5lX2Rlc3Ryb3lfX3BtKHN0cnVjdCBpbnRlbF9l
bmdpbmVfY3MgKmVuZ2luZSkNCj4gPiArew0KPiA+ICsJaW50ZWxfd2FrZXJlZl9kZXN0cm95KCZl
bmdpbmUtPndha2VyZWYpOw0KPiA+ICAgfQ0KPiA+ICAgDQo+ID4gICAvKioNCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50ZWxfZW5naW5lX3BtLmggYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9ndC9pbnRlbF9lbmdpbmVfcG0uaA0KPiA+IGluZGV4IGQ2ODY3NTkyNWI3
OS4uZTg1NjhmN2QxMGM2IDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0
L2ludGVsX2VuZ2luZV9wbS5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvaW50
ZWxfZW5naW5lX3BtLmgNCj4gPiBAQCAtMTA0LDcgKzEwNCw4IEBAIGludGVsX2VuZ2luZV9jcmVh
dGVfa2VybmVsX3JlcXVlc3Qoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQ0KPiA+ICAg
CXJldHVybiBycTsNCj4gPiAgIH0NCj4gPiAgIA0KPiA+IC12b2lkIGludGVsX2VuZ2luZV9pbml0
X19wbShzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOw0KPiA+ICtpbnQgaW50ZWxfZW5n
aW5lX2luaXRfX3BtKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7DQo+ID4gK3ZvaWQg
aW50ZWxfZW5naW5lX2Rlc3Ryb3lfX3BtKHN0cnVjdCBpbnRlbF9lbmdpbmVfY3MgKmVuZ2luZSk7
DQo+ID4gICANCj4gPiAgIHZvaWQgaW50ZWxfZW5naW5lX3Jlc2V0X3Bpbm5lZF9jb250ZXh0cyhz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmUpOw0KPiA+ICAgDQo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC9tb2NrX2VuZ2luZS5jDQo+ID4gaW5kZXggYzA2MzdiZjc5OWEzLi4wYTNjNzAyYzIx
ZTIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZ3QvbW9ja19lbmdpbmUu
Yw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L21vY2tfZW5naW5lLmMNCj4gPiBA
QCAtMzM2LDYgKzMzNiw3IEBAIHN0YXRpYyB2b2lkIG1vY2tfZW5naW5lX3JlbGVhc2Uoc3RydWN0
IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQ0KPiA+ICAgCWludGVsX2NvbnRleHRfcHV0KGVuZ2lu
ZS0+a2VybmVsX2NvbnRleHQpOw0KPiA+ICAgDQo+ID4gICAJaW50ZWxfZW5naW5lX2ZpbmlfcmV0
aXJlKGVuZ2luZSk7DQo+ID4gKwlpbnRlbF9lbmdpbmVfZGVzdHJveV9fcG0oZW5naW5lKTsNCj4g
PiAgIH0NCj4gPiAgIA0KPiA+ICAgc3RydWN0IGludGVsX2VuZ2luZV9jcyAqbW9ja19lbmdpbmUo
c3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsDQo+ID4gQEAgLTM5Myw2ICszOTQsNyBAQCBz
dHJ1Y3QgaW50ZWxfZW5naW5lX2NzICptb2NrX2VuZ2luZShzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0
ZSAqaTkxNSwNCj4gPiAgIGludCBtb2NrX2VuZ2luZV9pbml0KHN0cnVjdCBpbnRlbF9lbmdpbmVf
Y3MgKmVuZ2luZSkNCj4gPiAgIHsNCj4gPiAgIAlzdHJ1Y3QgaW50ZWxfY29udGV4dCAqY2U7DQo+
ID4gKwlpbnQgZXJyOw0KPiA+ICAgDQo+ID4gICAJSU5JVF9MSVNUX0hFQUQoJmVuZ2luZS0+cGlu
bmVkX2NvbnRleHRzX2xpc3QpOw0KPiA+ICAgDQo+ID4gQEAgLTQwMiw3ICs0MDQsMTEgQEAgaW50
IG1vY2tfZW5naW5lX2luaXQoc3RydWN0IGludGVsX2VuZ2luZV9jcyAqZW5naW5lKQ0KPiA+ICAg
CWVuZ2luZS0+c2NoZWRfZW5naW5lLT5wcml2YXRlX2RhdGEgPSBlbmdpbmU7DQo+ID4gICANCj4g
PiAgIAlpbnRlbF9lbmdpbmVfaW5pdF9leGVjbGlzdHMoZW5naW5lKTsNCj4gPiAtCWludGVsX2Vu
Z2luZV9pbml0X19wbShlbmdpbmUpOw0KPiA+ICsNCj4gPiArCWVyciA9IGludGVsX2VuZ2luZV9p
bml0X19wbShlbmdpbmUpOw0KPiA+ICsJaWYgKGVycikNCj4gPiArCQlyZXR1cm4gZXJyOw0KPiA+
ICsNCj4gPiAgIAlpbnRlbF9lbmdpbmVfaW5pdF9yZXRpcmUoZW5naW5lKTsNCj4gPiAgIA0KPiA+
ICAgCWVuZ2luZS0+YnJlYWRjcnVtYnMgPSBpbnRlbF9icmVhZGNydW1ic19jcmVhdGUoTlVMTCk7
DQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYyBi
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dha2VyZWYuYw0KPiA+IGluZGV4IGRmZDg3ZDA4
MjIxOC4uNmJhZTYwOWUxMzEyIDEwMDY0NA0KPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2ludGVsX3dha2VyZWYuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2ludGVsX3dh
a2VyZWYuYw0KPiA+IEBAIC03NCw3ICs3NCw3IEBAIHZvaWQgX19pbnRlbF93YWtlcmVmX3B1dF9s
YXN0KHN0cnVjdCBpbnRlbF93YWtlcmVmICp3ZiwgdW5zaWduZWQgbG9uZyBmbGFncykNCj4gPiAg
IA0KPiA+ICAgCS8qIEFzc3VtZSB3ZSBhcmUgbm90IGluIHByb2Nlc3MgY29udGV4dCBhbmQgc28g
Y2Fubm90IHNsZWVwLiAqLw0KPiA+ICAgCWlmIChmbGFncyAmIElOVEVMX1dBS0VSRUZfUFVUX0FT
WU5DIHx8ICFtdXRleF90cnlsb2NrKCZ3Zi0+bXV0ZXgpKSB7DQo+ID4gLQkJbW9kX2RlbGF5ZWRf
d29yayhzeXN0ZW1fd3EsICZ3Zi0+d29yaywNCj4gPiArCQltb2RfZGVsYXllZF93b3JrKHdmLT53
cSwgJndmLT53b3JrLA0KPiA+ICAgCQkJCSBGSUVMRF9HRVQoSU5URUxfV0FLRVJFRl9QVVRfREVM
QVksIGZsYWdzKSk7DQo+ID4gICAJCXJldHVybjsNCj4gPiAgIAl9DQo+ID4gQEAgLTkzLDEwICs5
MywxMCBAQCBzdGF0aWMgdm9pZCBfX2ludGVsX3dha2VyZWZfcHV0X3dvcmsoc3RydWN0IHdvcmtf
c3RydWN0ICp3cmspDQo+ID4gICAJX19fX2ludGVsX3dha2VyZWZfcHV0X2xhc3Qod2YpOw0KPiA+
ICAgfQ0KPiA+ICAgDQo+ID4gLXZvaWQgX19pbnRlbF93YWtlcmVmX2luaXQoc3RydWN0IGludGVs
X3dha2VyZWYgKndmLA0KPiA+IC0JCQkgIHN0cnVjdCBpbnRlbF9ydW50aW1lX3BtICpycG0sDQo+
ID4gLQkJCSAgY29uc3Qgc3RydWN0IGludGVsX3dha2VyZWZfb3BzICpvcHMsDQo+ID4gLQkJCSAg
c3RydWN0IGludGVsX3dha2VyZWZfbG9ja2NsYXNzICprZXkpDQo+ID4gK2ludCBfX2ludGVsX3dh
a2VyZWZfaW5pdChzdHJ1Y3QgaW50ZWxfd2FrZXJlZiAqd2YsDQo+ID4gKwkJCSBzdHJ1Y3QgaW50
ZWxfcnVudGltZV9wbSAqcnBtLA0KPiA+ICsJCQkgY29uc3Qgc3RydWN0IGludGVsX3dha2VyZWZf
b3BzICpvcHMsDQo+ID4gKwkJCSBzdHJ1Y3QgaW50ZWxfd2FrZXJlZl9sb2NrY2xhc3MgKmtleSkN
Cj4gPiAgIHsNCj4gPiAgIAl3Zi0+cnBtID0gcnBtOw0KPiA+ICAgCXdmLT5vcHMgPSBvcHM7DQo+
ID4gQEAgLTEwNSw5ICsxMDUsMjAgQEAgdm9pZCBfX2ludGVsX3dha2VyZWZfaW5pdChzdHJ1Y3Qg
aW50ZWxfd2FrZXJlZiAqd2YsDQo+ID4gICAJYXRvbWljX3NldCgmd2YtPmNvdW50LCAwKTsNCj4g
PiAgIAl3Zi0+d2FrZXJlZiA9IDA7DQo+ID4gICANCj4gPiArCXdmLT53cSA9IGFsbG9jX3dvcmtx
dWV1ZSgiaTE5MTUtd2FrZXJlZiIsIDAsIDApOw0KPiANCj4gVHlwbyBoZXJlIC0NCg0KT2gsIGdv
b2QgY2F0Y2ghIFRoaXMgaXMgb25lIG9mIG15ICJmYXZvcml0ZSIgdHlwb3MsIGZvciBzb21lIHJl
YXNvbi4NCg0KDQo+ICBJIHdhbnRlZCB0byBhc2sgaG93ZXZlciAtIHdoeSBkb2VzIHRoaXMgcGFy
dGljdWxhciB3cSANCj4gImRlc2VydmVzIiB0byBiZSBkZWRpY2F0ZWQgYW5kIGNhbid0IGp1c3Qg
dXNlIG9uZSBvZiB0aGUgDQo+IGRybV9pOTE1X3ByaXZhdGUgb25lcz8NCg0KSXQncyBiZWNhdXNl
IHRoZXJlJ3Mgbm8gZWFzeSB3YXkgdG8gZ2V0IGFjY2VzcyB0byB0aGUgZHJtX2k5MTVfcHJpdmF0
ZQ0Kc3RydWN0dXJlIGZyb20gaGVyZS4gIEFuZCBJIGRvbid0IHRoaW5rIHRoaXMgd29yayBuZWVk
cyB0byBiZSBpbiBzeW5jDQp3aXRoIHRoZSByZXN0IG9mIHRoZSB3b3JrcyBpbiBpOTE1Lg0KDQot
LQ0KQ2hlZXJzLA0KTHVjYS4NCg==
