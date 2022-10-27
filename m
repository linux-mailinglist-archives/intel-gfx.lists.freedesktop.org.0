Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EE27060EF91
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Oct 2022 07:41:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7385810E2D0;
	Thu, 27 Oct 2022 05:41:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C57F10E2D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 27 Oct 2022 05:41:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666849302; x=1698385302;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=5BVvYv1ioe3V6LMoOJIcA0hyWI3hjL/91nNmeY/D7ys=;
 b=SjdvCn1hGrXRwk4UtMFKsGtEPaT8LDSHeMCT0886evHygY9SgMKg8RQn
 M5gIeAXAWQyVq6hOUI40d/SeQD6+9QfcOjitTqwGm9pubd4rC9Y7TJBVm
 jBN4XVdno/gLI1MPDG41LjnXc3HOVm2cXyYC7SAQ+RDfCbvWFmGsS5HbJ
 gElYJLPxSWBSdW+wCVLsJJbN99mNKKNL8MX94pDRKWZA0zIGRyFuqdlQV
 FCCQS8IhrD43WS9xeCGEIhU0TRtck+mk37LtVcW5gvUUCdyXvHNVEb73P
 G/MAv/SitDCNZ6oJiMvek3wTNsZ4adq3wqdS5B3IfhHmyKIsNx6QhjaF2 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="295543826"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="295543826"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Oct 2022 22:41:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10512"; a="665550882"
X-IronPort-AV: E=Sophos;i="5.95,215,1661842800"; d="scan'208";a="665550882"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 26 Oct 2022 22:41:41 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 22:41:40 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 26 Oct 2022 22:41:40 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 26 Oct 2022 22:41:40 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 26 Oct 2022 22:41:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O4rbnw1+bKVd89Zouy9BTBdU+EL337Q//c8FELzMk6isfP034K4ee2z8PyCMUXclmbFJYUU+mkAga/ftXAJ7lH2cLAYJ2cqd0t1imIh8DFF7wh5KPnuzvbLh7EufjElCIlc5c3uDFTIM3YEc/Xj7ACgup5p8DTiJKmBV1FtSXhPY4NDwrgt/SdMUVUTp86nwIvUIBVN4uUNoS6yabseZHAQOk3dNDawZ+3hBktuAQ/GlheZZOXcGuFnbQc8S5m4Oq9c+5DIfvk2/xajacJW7njzQ8zF7mSPVf+079GfpTzR/4IiwcaiNms6UrltCv5NKuC9He8xbdpRMTba820SOcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5BVvYv1ioe3V6LMoOJIcA0hyWI3hjL/91nNmeY/D7ys=;
 b=QA/u5vk/thocUA8qGhhQUgbE/UpnqPIbURUFkLP5NLn2n2AFoUvFHkUPkw/F09aIZhUCbUYEGJ2mu70EZAf7enxVX9WsEpNlmmrqCwKi/ZUe/a2zCE02LzJIlsGHDEJNtwxm0xjxgGSAcH7ruDPellTR16BIv00nHiYXDDdbPtt+yM4EcCafj3Y7skQ7LQmeWk8hOPxVee4pL/Ldb5QRrbwJ3f5DiDlF9wjkjdIy0wiyNFXV+rj+/x/O4TZ/arLd49RE6BxA9KyxWcegfZp3huJy4Fu3cUt9DMwfkgC8E67Sr2D/0NQgXdNI5ncv8DCU3+7jaPqloYDjO61a3+cfzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6213.namprd11.prod.outlook.com (2603:10b6:8:ae::17) by
 SJ0PR11MB4894.namprd11.prod.outlook.com (2603:10b6:a03:2d4::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.28; Thu, 27 Oct 2022 05:41:37 +0000
Received: from DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::5b63:28c3:a7ac:c19d]) by DM4PR11MB6213.namprd11.prod.outlook.com
 ([fe80::5b63:28c3:a7ac:c19d%4]) with mapi id 15.20.5723.034; Thu, 27 Oct 2022
 05:41:37 +0000
From: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?W0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkxNTog?=
 =?utf-8?Q?CAGF_and_RC6_changes_for_MTL_(rev11)?=
Thread-Index: AQHY6Jbx1K5zXyPg/0eNpSc4fUXIcq4hvFdQ
Date: Thu, 27 Oct 2022 05:41:37 +0000
Message-ID: <DM4PR11MB6213B98AB084DAC10A96823DEC339@DM4PR11MB6213.namprd11.prod.outlook.com>
References: <20221024202422.3924298-1-ashutosh.dixit@intel.com>
 <166666110614.15483.9867911405392487662@emeril.freedesktop.org>
 <87k04nq0h0.wl-ashutosh.dixit@intel.com>
In-Reply-To: <87k04nq0h0.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6213:EE_|SJ0PR11MB4894:EE_
x-ms-office365-filtering-correlation-id: d9fc903e-75f1-4b47-2e44-08dab7ddea84
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 1j3S2d4/TAVnqiDV2NRxb5mStb9fSj0vqZ5qvsPofimzTpStwFr69un4MLH4kVkomgc/Y/7cwQrkT56s2YwWDtCQthlWYmtOaVS54BVyvRPkNBRWJLVRGslyt/Po122i+gSknZ4MGag0rLd7dESFERtrs9M0BjrEBf/8B64sWUOcvd18Za7gkR9AmJkUG1lIccgL2NSh+W81+TEnOGaE3vXICvvF9ZYleI+QthC+A0BGOcDe8T/C8nE4pZ+G+R6Bb5rx1COXmwLLUtrLX62VHUacGG9Af1GerRnZeNrtZfWA67s4zwdw3cZajuqaw/fiMIEQGqYI9rRdx9hDI8gwuQvDIfTW87XCUF6VOpALllAKKMDdXrj0ACAejQYT6XBgMzvMSgNyffqIlgytyGyRTJWNIU5atk3PGfEZ2QGBr027zQxzUWXVvX6UlnUMo/5ktFunEi7fLAXo6fWGi2P3jxqA7ihFLY2mL5XroE8eTGmJZWaje127R6apdUbsZJzNJciiz2ggD/OESSf6/bkan22Df1e58SnCm1924BGUOmIuAvscB2zlpF7YgmxwterbfOG8OJSAm7N8XwbbpH0ayNqUEsT8KO1RRD7fOT8+6ZTSE/GYcJ2mzoYw1s8Ms4LEqLOhFwOZquqlTraQ54uFGqAK9J/VGZooPTTmnirt03845xqCys8DZjF7Kth+iV7AAFPA4ymB29+4b0oQUWkPPwfpVwuRmWfKiHW/3zBlcKPkoboatfwso4RXN3tzSjZFDlmAymIb+TlIrESKxpAm7bmUU4t4XVTaXSG3tp+v884=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6213.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(346002)(366004)(39860400002)(376002)(136003)(451199015)(122000001)(66476007)(82960400001)(66556008)(76116006)(52536014)(66946007)(38100700002)(5660300002)(8936002)(83380400001)(33656002)(38070700005)(86362001)(66446008)(186003)(110136005)(71200400001)(26005)(9686003)(41300700001)(55016003)(2906002)(966005)(478600001)(64756008)(316002)(53546011)(7696005)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V3oyRk43WklGcFJaamIrazh2Q0UvdXhsQnQ5aHoySmZibktHSU44UEpiWjY1?=
 =?utf-8?B?ZksxdjI2Y0VJUGZYaWN4Nm1tOWgxU1JzblJrZmhLZE1GSDB4LzVVbEh0YlFu?=
 =?utf-8?B?UEw5bmx4VDZUNlJ6RGhtMThJQjBQT2dSZWR5WlhFck05UXlSMUFwQkRqY1po?=
 =?utf-8?B?bGtxTkJNNUtHUTlkSlRXQy9zbUNOUFY4WndhT1hWVmxHZlN6VlJWUFRSeXlS?=
 =?utf-8?B?WGhjdkRJVm1NUlFOa2xUKzNVVkxWWjhUWU9OaEZ6UHZqdklqcU5wWDBYYkVE?=
 =?utf-8?B?S0R1b0NNYlJGSDFVOUlTZUNHZHpyRzJWcEd1RDBiMGN3UjkzL2s4WXFtbDh1?=
 =?utf-8?B?MW0zVXJia0ZRQ1NzNjdmYVROTG15K09hSkNBWG5qc1k2ZlF3d2ZWL1VJbUQ1?=
 =?utf-8?B?MTFYdllLcTAvbVNIeWg5L3ZWTnB3cUxOVHk2NFdNb2srMnM3ZTh6clZveU1C?=
 =?utf-8?B?NTNJY29XUXo1UnpqNWVzTmh1MTNDazRRNnE2djIwWVhvek9udGZrUXRqSTdF?=
 =?utf-8?B?TitEN0p6M3RDRnV0a094czFhNWdmamxyd1puTExKbGNZZk9zM1NWZjQ4YkVl?=
 =?utf-8?B?cllhWURmbmJydEJRNXQvcmNtWkZSRzJzRXQzaDRBSG1JUDl1Zy9ValdTVWdr?=
 =?utf-8?B?STlxNmVEOFhtNFdJeUVBaXNrcmx2YnRwcUNrTlNmbUZUSDRtQWhwWnVKSHE1?=
 =?utf-8?B?a1JHcEVjU29LTmZ6bmxOaHo4UUZzdDkrMFpwUVExZTh6bDNPZERTWlRkTWxK?=
 =?utf-8?B?cW5HanE2RWVxVlZJakR1ZjM2SXZZRW5qQ252ak9PcUo4em1NNjdDOVV1aHpD?=
 =?utf-8?B?UEVHdnk1V2FBT2RmQlR6djhnb0cyS2xLTGhDMEhqbThlYzFKcXZSdzVyTGFj?=
 =?utf-8?B?TGdFdTRWQ2JQZFVDbmVCVDA3S201M0NHMmtsUnRXRHUrRnRqU0pJTFpjRkVJ?=
 =?utf-8?B?NVVQcHBlWUV1RkdRMmlTMGthQWhYRmJuWTdiSDRwaHVjaFprMWpmMU1KTXNT?=
 =?utf-8?B?U3NXOUtGaWs1VkRjT29rM3E3ZzFjTzl6Y3lFcS9aMUFvQWZDVTJQMklBMlVk?=
 =?utf-8?B?MXpWbkkzckxBdERxYnFkSlRpTFpPUmREbktDUGgwZGZtUDNESHBQbHQ5dEsx?=
 =?utf-8?B?MkZBMTJhNCtYaENFSEdrcVdYUDdkaGRsalZKZ1RKRGFROUpNeUx5L3ZsZ1Bn?=
 =?utf-8?B?SzVtMGs4REhRVTExaG5OMmdwQmpWTk03cFJxYzgycDMxNHM3TUhldjJIT0t3?=
 =?utf-8?B?aU9HN2QrQllUZGY5UlVEUXZSTC9KU1JCV294blpLTHhrVDJMenhLY25Fb1hI?=
 =?utf-8?B?Z2czQWZ4enYzemowRHQ2ZUlFVlc5L1VqUXZLUG5ORVRkTkN4TW5UUUl6NGFa?=
 =?utf-8?B?STNscWYyWWFpakd4eC94eTlzeFgzWG5ySGNUZE5zdVkvVzB1dFlCaVFtZVJU?=
 =?utf-8?B?c2RRMWl6amlCSHdFTW54VDNqM3pQN1oyYUxqM1FHUVc1UUJDaDVPT0tEbldC?=
 =?utf-8?B?bDVSMWZGUGlyTmxXZktvKzgvdWRDSEMwVHo0ZDh3Yzk1K2ROdEZ1eGJPbWxh?=
 =?utf-8?B?Yk9acGJQdXRla3V2K3o3bGl4OVl5aWJ6Mys1MkpCYVE5eElhMmZHTHU0Q1NC?=
 =?utf-8?B?UzVjbWpvVDUwUTVQeU00OUczczZBazdOOUV2UGdKb2JhRGxUeHlQNmQycUFG?=
 =?utf-8?B?Z3AySzhIUHZuVUw0VVZHckR4MDBRR3JrVTI4YU5wQUlpZUppUXVvZndWZDdB?=
 =?utf-8?B?QlgvYWZJMUpwaDJXdzNKdE5hRnJLRFpwd0lPdnN0dUhNMGIwQ2ltbE5mZUYz?=
 =?utf-8?B?M2tETHQrdTJ3cnlPZzZQdmFna1VQd0psZTJrYXBWdGN2UUFIZnl0b1RUNDlv?=
 =?utf-8?B?eWdxNXdyRTJCMDR2ZFhJWmxUSnI3Y3BSM0JuUzdqUmtqWDkxWHdsVVRLamJY?=
 =?utf-8?B?NVVIa3lIdEN3RmNyTFE3V1Z1dkdQK3g5OUY3b2luMCtOblNLSS9teEVWRzZO?=
 =?utf-8?B?SURIK0NaT0VBa2thSGhPU0s5YWMwbFQwRHo4bjJaRmNoNCtkUUJGenVVTFNP?=
 =?utf-8?B?d1VLeFpzaVJ6dzI4Y1NRdWt1QTRrc205Z2RVbVdMTTBId0FGMkZ4NlJzeEFi?=
 =?utf-8?B?NENycjV6Q2E4a3VZdEpqMytWSmtyUWNnUVgzWG1MZFZUOTM0R0lhbTBsSTcv?=
 =?utf-8?B?UEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6213.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d9fc903e-75f1-4b47-2e44-08dab7ddea84
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Oct 2022 05:41:37.6064 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KQYy2tjEw8ZKOqHspLYywmFWYbiKt9eg3yP+F86txc3qlG8ZkXwxiV44jRmjQbD3MOkoFPUCh3+2ejsksg9wzZzZVABSi9kWUNph1bvHFjg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4894
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBmb3IgaTkx?=
 =?utf-8?q?5=3A_CAGF_and_RC6_changes_for_MTL_=28rev11=29?=
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

UmUtcmVwb3J0ZWQuDQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBEaXhpdCwg
QXNodXRvc2ggPGFzaHV0b3NoLmRpeGl0QGludGVsLmNvbT4gDQpTZW50OiBUdWVzZGF5LCBPY3Rv
YmVyIDI1LCAyMDIyIDEwOjI2IEFNDQpUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9y
Zw0KQ2M6IFZ1ZHVtLCBMYWtzaG1pbmFyYXlhbmEgPGxha3NobWluYXJheWFuYS52dWR1bUBpbnRl
bC5jb20+DQpTdWJqZWN0OiBSZTogW0ludGVsLWdmeF0g4pyXIEZpLkNJLkJBVDogZmFpbHVyZSBm
b3IgaTkxNTogQ0FHRiBhbmQgUkM2IGNoYW5nZXMgZm9yIE1UTCAocmV2MTEpDQoNCk9uIE1vbiwg
MjQgT2N0IDIwMjIgMTg6MjU6MDYgLTA3MDAsIFBhdGNod29yayB3cm90ZToNCj4NCg0KSGkgTGFr
c2htaSwNCg0KVGhlIGJlbG93IGZhaWx1cmVzIGFyZSB1bnJlbGF0ZWQgdG8gdGhpcyBzZXJpZXMu
DQoNClRoYW5rcy4NCi0tDQpBc2h1dG9zaA0KDQo+IFBhdGNoIERldGFpbHMNCj4NCj4gU2VyaWVz
OiAgaTkxNTogQ0FHRiBhbmQgUkM2IGNoYW5nZXMgZm9yIE1UTCAocmV2MTEpDQo+IFVSTDogICAg
IGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTA4MTU2Lw0KPiBTdGF0
ZTogICBmYWlsdXJlDQo+IERldGFpbHM6IA0KPiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcv
dHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDgxNTZ2MTEvaW5kZXguaHRtDQo+IGwNCj4NCj4gQ0kg
QnVnIExvZyAtIGNoYW5nZXMgZnJvbSBDSV9EUk1fMTIyODggLT4gUGF0Y2h3b3JrXzEwODE1NnYx
MQ0KPg0KPiBTdW1tYXJ5DQo+DQo+IEZBSUxVUkUNCj4NCj4gU2VyaW91cyB1bmtub3duIGNoYW5n
ZXMgY29taW5nIHdpdGggUGF0Y2h3b3JrXzEwODE1NnYxMSBhYnNvbHV0ZWx5IA0KPiBuZWVkIHRv
IGJlIHZlcmlmaWVkIG1hbnVhbGx5Lg0KPg0KPiBJZiB5b3UgdGhpbmsgdGhlIHJlcG9ydGVkIGNo
YW5nZXMgaGF2ZSBub3RoaW5nIHRvIGRvIHdpdGggdGhlIGNoYW5nZXMgDQo+IGludHJvZHVjZWQg
aW4gUGF0Y2h3b3JrXzEwODE1NnYxMSwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIHRvIA0K
PiBhbGxvdyB0aGVtIHRvIGRvY3VtZW50IHRoaXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2ls
bCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGluIENJLg0KPg0KPiBFeHRlcm5hbCBVUkw6IA0KPiBo
dHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDgxNTZ2
MTEvaW5kZXguaHRtDQo+IGwNCj4NCj4gUGFydGljaXBhdGluZyBob3N0cyAoNDEgLT4gNDApDQo+
DQo+IEFkZGl0aW9uYWwgKDEpOiBiYXQtYXRzbS0xDQo+IE1pc3NpbmcgKDIpOiBmaS1jdGctcDg2
MDAgZmktaWNsLXUyDQo+DQo+IFBvc3NpYmxlIG5ldyBpc3N1ZXMNCj4NCj4gSGVyZSBhcmUgdGhl
IHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBoYXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdv
cmtfMTA4MTU2djExOg0KPg0KPiBJR1QgY2hhbmdlcw0KPg0KPiBQb3NzaWJsZSByZWdyZXNzaW9u
cw0KPg0KPiAgIOKAoiBpZ3RAZ2VtX2V4ZWNfcGFyYWxsZWxAZW5naW5lc0Bjb250ZXh0czoNCj4N
Cj4gICAgICAg4pahIGZpLWJzdy1uaWNrOiBQQVNTIC0+IElOQ09NUExFVEUNCj4gICDigKIgaWd0
QGk5MTVfc2VsZnRlc3RAbGl2ZUBodWdlcGFnZXM6DQo+DQo+ICAgICAgIOKWoSBmaS1jZmwtODEw
OXU6IFBBU1MgLT4gRE1FU0ctRkFJTA0KPg0KPiAgICAgICDilqEgZmktc2tsLWd1YzogUEFTUyAt
PiBETUVTRy1GQUlMDQo+DQo+ICAg4oCiIGlndEBpOTE1X3N1c3BlbmRAYmFzaWMtczMtd2l0aG91
dC1pOTE1Og0KPg0KPiAgICAgICDilqEgZmktcmtsLTExNjAwOiBOT1RSVU4gLT4gSU5DT01QTEVU
RQ0KPg0KPiBTdXBwcmVzc2VkDQo=
