Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 620B031D591
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Feb 2021 07:56:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E2346E32F;
	Wed, 17 Feb 2021 06:56:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A512F6E32F
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Feb 2021 06:56:25 +0000 (UTC)
IronPort-SDR: oEHlRbUIGU/72kTRLujdqpc0nksTz8QTTYuX7Ob4i9/VMSraCmicFJWkGXBQo3iZ/EvR2/uDVU
 wB3juXetWzbA==
X-IronPort-AV: E=McAfee;i="6000,8403,9897"; a="247191069"
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="247191069"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2021 22:56:24 -0800
IronPort-SDR: gC8cP3Lr4IxKI8pFo81Eb/qA6m8eDkw7leNdQhOzvbni11rcpKxJw+C/3EhJaimV2zuTU2f//0
 8Y+DlyrgBbgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,184,1610438400"; d="scan'208";a="377871244"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 16 Feb 2021 22:56:24 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Feb 2021 22:56:24 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Tue, 16 Feb 2021 22:56:23 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Tue, 16 Feb 2021 22:56:23 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Tue, 16 Feb 2021 22:56:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NXdLzTaKkkPN8ozhOcTCuYyiX4cvkimOMvggm3JAGBnzWq/7ACvekEy9MUmzLikmemp3jIUFwnLIYTdimrYZJPUJtzvpAp0YN+9cQQbNcER1Gt0WMVL6B+v9XBjJc13o9aQbLkef47QhvZmHAynSIr8OMssAfm/WXHp0RKbNdMEGYHIwv7oonvrwixdMmPiUgULnG0UIsjorqy24XfPFX8E0Wc/MWr1C//L/mZHke5IQrPKThBPQ0iMRZaSFB0VuDqY56V0mH0swG5vUjtZLRpPfUm0Z2bpxd65VBBvCB8pr4gBElwbKY97pqOct3aLLIw1cOjq0yTgZxSmbcMsagQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PP5Uzr6XwpWGd1FnWnLc8YMNOVhWg7eoS9ResQpD/cI=;
 b=i/x6iY9eLN1jkYvZMjpO8aoaInxpIAbr3gG3KRjGbPkOT5qHyOKdnWvnAjjjAg6MuoEao1UNWU/XGsSyWahqfQx43tPB9QJSzSDMtTLjh0KRNprK2cli9Au96N1CX5fxVX+nWMAMmIx8sYEIo6qQyQe1oIm7MG3qv8ccMXs+HuZ1zHVq0GN8RIAM5BJxXw/KhZSlSymnTWNRjyaDEEG369kNipmXpjkZOK9ZDu00KIbpYbmGKevcTRxCVdV7DiRbiDmqui0NhqN8FAqhJ7WvbJyHZkIli6iov/fCeYFeyWD4MvuofjgcudvjfM/lFs/OWknty8KgAR/Z2EZgRy4ATQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PP5Uzr6XwpWGd1FnWnLc8YMNOVhWg7eoS9ResQpD/cI=;
 b=LLGPtqPJ+wf9YogkAMApfCzSRlOeCoTf1XHh8jjJKUrmqCqnGkJzPiUjbuB4qSLECXoyXV+clqdRgDNG/nm8i1jZCiRQ5hP5kaxx5pk7S7VJownv9QR9LDZ7Nxf6D9Ggm4+UbaIhx30Rx/YRU6+p4gVOsLHKeaY85/tbk0mwMyw=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SA0PR11MB4640.namprd11.prod.outlook.com (2603:10b6:806:9b::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3846.31; Wed, 17 Feb
 2021 06:56:17 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3868.028; Wed, 17 Feb 2021
 06:56:17 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: "Chen, Rong A" <rong.a.chen@intel.com>
Thread-Topic: [Intel-gfx] [drm/i915] 04ff178484:
 phoronix-test-suite.supertuxkart.1024x768.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second
 -30.4% regression
Thread-Index: AQHWj/jXft7wr1ZnPUCeqC0CqhjEiKoy4HrQgBtnCwCADouRgA==
Date: Wed, 17 Feb 2021 06:56:17 +0000
Message-ID: <SA2PR11MB49698E6D1BB060243754CC939D869@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20200921092220.GH13157@shao2-debian>
 <SA2PR11MB49694B1464470425AF44AAAB9DA19@SA2PR11MB4969.namprd11.prod.outlook.com>
 <20210208004544.GA1712029@shao2-debian>
In-Reply-To: <20210208004544.GA1712029@shao2-debian>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 69e5b3a8-2628-474f-a8fc-08d8d3112017
x-ms-traffictypediagnostic: SA0PR11MB4640:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SA0PR11MB464036F2D50E7E70EF47B9EA9D869@SA0PR11MB4640.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3276;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: JDhZBr9InpjITkhmE4TCVcs+153DtQ6Ams8ES+ud+RQZVqVY6aHUGGdwMbr/6H8fV+OVCrQ9AFYfJyZqsaUApTkRaFplDPBYdUm4JrMV2mxU6RoNERynSUN7xVz1MgIqLFS3/mhGP4FaOSXT6ikoDMgzpNr2sSZZXWXLgOPz4UMkK8cNC2UVlxqeSD0FJW3V5wUie8LBs5Fr42KSjiQNnxCQkDg09wH5LtGn2tvuQG/TT3gkZipgZUy3jt2hNGSQ0FENCuTp2rr6PoLbU5EHLAK+TXquT8cvSv3rO1rLIt+nisWEdG5s1OrlZTEUetO26r1NJRADyPfFlBH7hX3ycaSaE8hxoNFynzcU4cBhKLK9+gm9tYc/edhxY5q6xNL70/LGZyEy0AUTXyCTi8dy+SyYiN+SaViApehLfpTMi3q6pLm8nFH4mJrND2zzO6s/1un3rjrWVoZRsl+1kAK/CTj4po6gx8M01qc4fYBjCtt0SvRKO2KfsB6X9CiL9bifaeJg/mPMr1beCzc3tOTpKA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39860400002)(366004)(376002)(136003)(346002)(64756008)(52536014)(316002)(33656002)(107886003)(478600001)(7696005)(54906003)(26005)(2906002)(6506007)(6862004)(53546011)(86362001)(186003)(71200400001)(66946007)(9686003)(6636002)(66446008)(8676002)(8936002)(55016002)(4326008)(66556008)(5660300002)(66476007)(76116006)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?M1pMVmRlNnF5OWhGVXZoRmJPZHIyQW9MZzZLZFpNcmVlc3ZiUkdjQ21VMWV4?=
 =?utf-8?B?REo0T0diZFF2QVRVcjYxb2lRZm00bHFldUJWWkpMRnFSL1RJRXZzRzBvRWNC?=
 =?utf-8?B?VmFTTWZSUGRJY2hhTWM5UE9xMnhadnhkSlpTRXNHL0ZPRE5zazRwOXJmM1p1?=
 =?utf-8?B?RGd4U3dXd2tSN0k1d0NaSHpQRnJoNGlLa1VnV0h3VlNrdU1YcUxBMWpUK3No?=
 =?utf-8?B?OG0rRThWZmNPai83NkFFT0dZNGNNSGh4Q2crekpWTHNsODhuaTJtdFBjS1BD?=
 =?utf-8?B?UGw5bXJSSk5keGVaQnJZcFk2Y3dRbDRIYzFMT05RRG0zZk1RRWxTSUcxU0di?=
 =?utf-8?B?c3FSdGt6dFZMa1IybFh4cXM5dXJvWHUrMEN5LzRRMERGR1JjNm02b1V6QUxI?=
 =?utf-8?B?NVFOVTZ3aG1kQUJiUUNLcXpIaE12ajZqRmJJMmxZOEZadUJ2aE1iZ1pIUE1X?=
 =?utf-8?B?R2ZRd2MxMStmNE0wTEI2cTl6WHVhbXgxOWErYkp2NTNDNFg4T1dDd2FYeldC?=
 =?utf-8?B?dTBNdTJpalBGanQ1MkV6WStIQzVpMk0xT3JqckhRRFNDTStweGE3ZTNxQktk?=
 =?utf-8?B?TnpxeW4wa1dPbklvdU1WRTcrNjVJZTY4Z3M1WXRyRDd6c1JsWWZsL0w4R042?=
 =?utf-8?B?Wnk2YjR5b01ZL3JqRCthVlBJREhLYnd5NzIrakdUOUhLNVFMS1BWZlJDUGUz?=
 =?utf-8?B?N05sQ3hkQ1YzYkNQdGNhUTVIamFZSFFwM2luTG9oYXZoUk41Um1BUEtiMFFq?=
 =?utf-8?B?dzZHbVhxazI3YXZvWUFyQkp0VnFCRjNVZDhmeGFrbUlVL1h1blpPaGhQb0hk?=
 =?utf-8?B?cHdDUWNwMkJhYWhiQ2Zrc0Nqb3d0ZVpMOVF0cks2R1B1M01lTFJCTTR4VGto?=
 =?utf-8?B?VWdsRi9vSVh1dkhNSXpiTXVRSUczWHlyMFliYmZpOFFMMW9ianEvK2h2c0dz?=
 =?utf-8?B?dlhveEtwUTRzSktmdU51cXdkRTF6cnRwWG53OE5PTnM4SFN3ZnlmV3ZvVEVD?=
 =?utf-8?B?bFZ0Vk9uU1pvNWp3a1E1RkZ0dTZrQXRQQ1VDMVAwdlBwdVM0UlZlV1lvMWFn?=
 =?utf-8?B?VlRuVk94ZkJPbHVuY0ZZNmVaVlJTWnIrby95d2ZWNTBMNVM5UEE2MmxrUmpk?=
 =?utf-8?B?VGJEZG1vTWZBRU9FamcyV2tadHdIU0hDWUVRSkF1Y2h4ODJLbnZXbDBNTzFk?=
 =?utf-8?B?Mmp1LzBiUVordzhURkE2bU5XMXhjaUh4c0ZlKzRENmwwK1RuQzJObmdTeE0z?=
 =?utf-8?B?OUpoK2d1T3I3MzdCeEE5N251RGFFTVJ5bU9HeS9oWkxIQ0FrMjFvc1prOXRB?=
 =?utf-8?B?UW1acVZlQytPQVlPbGJGeitYdzRrd0JEdlZDaGZvZU9CQzhoblpsMW92QVpW?=
 =?utf-8?B?YklFTUhZRTFHQUEzVGxWYnlqN2toZThsRzJyTjh1UTJtTEVrWkIyL3gzbWho?=
 =?utf-8?B?QzJlUHNIRjVCNUxSS0tzZndDeldpbGtNMEo0Slg0UFVscDI4VzRwMjduemlJ?=
 =?utf-8?B?dmV2WTQyMFpjTnZVY3F2R05tcHZSblRFNnBpaFVqOGYvMWxPeXNudzJ3WDBm?=
 =?utf-8?B?MXhvUUxNZW1kUnp6eUx3RW9TRFZYVUFvOXJ2UTVTRnNJcEhoWWh6cE5OalJG?=
 =?utf-8?B?V1BtSXZFZUtrSXNJdWVsMGQ3TnRqSlM5NkttOXYrTDlqOFN6NUtQdzE3L2dZ?=
 =?utf-8?B?V0pNdEQ3eGVzemhNdXNUZ2crTzZHaE54YytOK2RmRUIvaWxVNDgvSVlTT3dx?=
 =?utf-8?Q?H1oYpRUdyB0pb7e3/tiLXeWCsCJZLIfIfqmob1R?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 69e5b3a8-2628-474f-a8fc-08d8d3112017
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2021 06:56:17.6752 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i8Nnp+t27aWYIWaEZwuSywDdfVbbYROSmGwE490q0hQwL/ERSFWarpFGc3JTYDYQCEePwK5CH6ThDc6tbVbzNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4640
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [drm/i915] 04ff178484:
 phoronix-test-suite.supertuxkart.1024x768.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second
 -30.4% regression
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
Cc: "Tang, Feng" <feng.tang@intel.com>, "Li, Tiejun" <tiejun.li@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>, "Du, Frank" <frank.du@intel.com>,
 "Chen, Guobing" <guobing.chen@intel.com>, "Tseng,
 William" <william.tseng@intel.com>, "Sun, Jiebin" <jiebin.sun@intel.com>, "Fan,
 Shuhua" <shuhua.fan@intel.com>, "Zhao, Fan" <fan.zhao@intel.com>, "Huang,
 Ying" <ying.huang@intel.com>, "Kang, Shan" <shan.kang@intel.com>,
 "lkp@lists.01.org" <lkp@lists.01.org>, "Xing, 
 Zhengjun" <zhengjun.xing@intel.com>, "Huang, Wenhuan" <wenhuan.huang@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Li,
 Guangli" <guangli.li@intel.com>, "Chen, Ming A" <ming.a.chen@intel.com>, "Ma,
 Yu" <yu.ma@intel.com>, "Ji, Jessica" <jessica.ji@intel.com>, "Mi,
 Dapeng1" <dapeng1.mi@intel.com>, "Guo, Wangyang" <wangyang.guo@intel.com>,
 LKML <linux-kernel@vger.kernel.org>, "Xie, Gengxin" <gengxin.xie@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi upstream committee, 

Please consider to merge this patch which resolved VP8 hardware encoding GPU hang critical issue on Gen9 sku, and there is no performance regression on this fix.

Best Regards,
Cooper

-----Original Message-----
From: kernel test robot <rong.a.chen@intel.com> 
Sent: Monday, February 8, 2021 8:46 AM
To: Chiou, Cooper <cooper.chiou@intel.com>
Cc: Tang, Feng <feng.tang@intel.com>; Li, Tiejun <tiejun.li@intel.com>; Chris Wilson <chris@chris-wilson.co.uk>; Du, Frank <frank.du@intel.com>; Chen, Guobing <guobing.chen@intel.com>; Tseng, William <william.tseng@intel.com>; Xie, Gengxin <gengxin.xie@intel.com>; Fan, Shuhua <shuhua.fan@intel.com>; Zhao, Fan <fan.zhao@intel.com>; Huang, Ying <ying.huang@intel.com>; Kang, Shan <shan.kang@intel.com>; Xing, Zhengjun <zhengjun.xing@intel.com>; Huang, Wenhuan <wenhuan.huang@intel.com>; Nikula, Jani <jani.nikula@intel.com>; intel-gfx@lists.freedesktop.org; lkp@lists.01.org; Chen, Ming A <ming.a.chen@intel.com>; Ma, Yu <yu.ma@intel.com>; Ji, Jessica <jessica.ji@intel.com>; Li, Guangli <guangli.li@intel.com>; Guo, Wangyang <wangyang.guo@intel.com>; Mi, Dapeng1 <dapeng1.mi@intel.com>; LKML <linux-kernel@vger.kernel.org>; Sun, Jiebin <jiebin.sun@intel.com>
Subject: Re: [Intel-gfx] [drm/i915] 04ff178484: phoronix-test-suite.supertuxkart.1024x768.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second -30.4% regression

Hi all,

The problem can't be reproduced after test environment changed, there's no regression found on this patch now, we don't know yet why it caused a regression in September 2020, but we'll continue to root cause.

Best Regards,
Rong Chen
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
