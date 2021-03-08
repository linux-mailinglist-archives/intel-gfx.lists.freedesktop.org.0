Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDF13314EA
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Mar 2021 18:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F1789E59;
	Mon,  8 Mar 2021 17:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6226189E59
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Mar 2021 17:32:47 +0000 (UTC)
IronPort-SDR: gjJ/F7BhD/PUnxDEcn191h9ol8NoangkYSr/AX9kRgGx+v7com95dWlU+jTzn1q9OTfKIr8K5I
 2YZ4bjP1LSEQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9917"; a="167985002"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="167985002"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2021 09:32:46 -0800
IronPort-SDR: bR92O9Poa4SjLJgMeD8K1Jdgxm+5x5wvGQ/yzJrDioy6T9W5ld1YS3adisRzbuefEIRwEibaG1
 R2fgQHStp2LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; d="scan'208";a="430444143"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 08 Mar 2021 09:32:46 -0800
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 8 Mar 2021 09:32:46 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 8 Mar 2021 09:32:45 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 8 Mar 2021 09:32:45 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 8 Mar 2021 09:32:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S9oMe59xRX796/2vylAxKHrtSLHRVUdG/NTlf6CIKN/q75c/u0Bd3mzXaicNfNID83BjUIppn21o6n1+4jWgI8WPTQDEF0nyurqoEwMILZlNhmEoORuJl3T71iGAbJiaRUYxi/qMgUdUhxz4/FMQIjMeVzY/NuG5wh8gsngieo91nL+fquCMwEeQ5HBtr/qgq3j+HUsZyZjwir53Ky1GGWU9rO92SvAzDUNzDPF9OLO/LzUoFil0oieOLCrkFWR+xz54LPV0tvxqGyd/IR2yYzxPP0UYUU9VNyxRDrFTISA/yCWMCfgpDDa3MqAoNLZYZz1omvvNYhsNv/uUttxLpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tJ7qbd9A+72f65H4Um3thFwKwGQRrKb20V9rrdnfgU=;
 b=Kyh5H/2tgtcjeCPeKj/z2n7dQO7r4Z3a6v0fxbBsOxxaQb9xKFTCOPIJYWv0nXOsVrwijhrVE4L5gGvrnh4pOSADnIRhLV2U2djQl1PsfeEAo4uqafzzOxuEnaRBWDuLSZvNPzj8ADgvWT8WYsOxYqKTYGBHUBnDB7+WclsymFO7X4HXl2MZdw1VHd2YKWPKjl0yZC/ku+9ZnEi0rNtOoYtFy05CSLW6IoRJVo4vaNi+w3RwlOVdBcO8NLANk+MizZxnC1TCalDi1p9Zit+BUBVjM3EnvTNPjjfKShZNjxMPXs/9CDRfVyrRSwxi9i3+AfVd37HCQ8G4g82Vu5EYgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6tJ7qbd9A+72f65H4Um3thFwKwGQRrKb20V9rrdnfgU=;
 b=Ohhxz824LYcBK40epGZcy6k+8XgI+zCGgcLe00JzBRQiWvHtfVtmATT2/I9SxdT5WE9efZIPq8y6+5MEx6DUdc2rQbBjMTahivPmjgLQK3zY6UJX4qJvbS9tKdpcJ+1nJl/cR11dq6RKJe+tOhJ6Y0DTdeUm+ARQ/X2CQw+FqWA=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB2815.namprd11.prod.outlook.com (2603:10b6:805:62::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3912.26; Mon, 8 Mar
 2021 17:32:42 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3868.041; Mon, 8 Mar 2021
 17:32:42 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXDy9TNUpQng5a8UOTNIkE1rTbjqpzjp4AgAAB8gCAACvUAIAA2R2AgACOaACAADGngIAAMJ3wgAAM94CABMGLcA==
Date: Mon, 8 Mar 2021 17:32:41 +0000
Message-ID: <SA2PR11MB496960ABA0D7C5E2A53A2C099D939@SA2PR11MB4969.namprd11.prod.outlook.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210302062700.6025-1-cooper.chiou@intel.com>
 <0c8ef2fb-34b0-98ea-12bb-fc300172799c@linux.intel.com>
 <161484956454.28586.15932692857365863465@build.alporthouse.com>
 <161485897632.28586.2630377954645968923@build.alporthouse.com>
 <161490560153.13701.1838349946598091390@build.alporthouse.com>
 <40dd702b-c71c-0b99-93e6-0e120ef7715d@linux.intel.com>
 <161494684568.15221.13792200139079395463@build.alporthouse.com>
 <SA2PR11MB49696180125900E3CCB090049D969@SA2PR11MB4969.namprd11.prod.outlook.com>
 <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
In-Reply-To: <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [123.193.93.97]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45a65e97-a999-4fdd-52fe-08d8e2582ddb
x-ms-traffictypediagnostic: SN6PR11MB2815:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB2815609BD59817E75FA9A6229D939@SN6PR11MB2815.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 78h7wxM+nupOPwFFUvZSVjxZ0ns+EPb3K2LGZQBdQCNwBFIfeCd5JWLLAj7jVv6LwwlcbCjs9rQAWM4MXn6oRTPLQ/zp21Nv9nWInsPJwoq6P2rw2F1ScVVS4LBSnbetFqJFsHMlSl2ll+X2+1Rr3j88uI9v98+XcKLd/LqAN5TbB0XPisK3jScRWX3DSr872KHs6ykwiGOZEA0PrvTcUty5pLOmHkoRAUs5pBHujquHjXUWjTPD+2DjhvXWzyeN5wQFo9dQocZZ6ZJh+BaRzF38gmj8gmx6DyVFOkqMf3ywl0vYJ9W8tZqc9o9tFfLZdZyEv1W3omCqpXgixWfQS3DuXDOV+zBTqxpdKOYVdknqqgCpgzbWwbsoY/HlGGtZQmRYzXzRiuHtKn7znqHV29V7jAihfPXtlYi/zv17i4iyJsN90ivb1VujORO7W2MA6K4wBU7TR5CIm3LztQavxyDJf51JSQ2/L/dkH2qVDRjgbNc+15OUVRouAOh30M5EVbVvoQtt5ZHE2V6PCgQm+C+N10aNpY7vCfQE7R1PDg+VbdNk7vRV7G2LzQwXrLRN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(39860400002)(366004)(136003)(346002)(376002)(396003)(33656002)(76116006)(66446008)(66556008)(66476007)(64756008)(186003)(26005)(2906002)(5660300002)(316002)(83380400001)(66946007)(9686003)(54906003)(52536014)(7696005)(6506007)(55016002)(71200400001)(478600001)(4326008)(110136005)(8936002)(8676002)(86362001)(213903007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?QWtCZlFtSVc0YzlUMmsvV0lBUDFlWndNTXQ5enVYQS94UWNFV01VZXUybjZx?=
 =?utf-8?B?aXBEb0p3OE1ITStMbmczQWt1R3EvUEFVZk9WTWNPTWYyZU82ZVJzczdoY0U4?=
 =?utf-8?B?elNwRk1nMkJpaXExL1ZIUlV5QXFzZ2picVQvTU96alZXdWxCVVNKRzNyQkRD?=
 =?utf-8?B?cGFCcVcwc2xuNnd5M0RTNEFFUUxpOGhpcytjRTQ1QUFLUWd2d1M1RWZZVi9v?=
 =?utf-8?B?eS85bGpHY1BSSWE1WGhRUks1MGlpaWFwdFNSYjV6OE5BSWdVeDAwZHlUZi9l?=
 =?utf-8?B?MUpHL2ZKd2tFQXJzK1B3U2dmRmV0MGNsZnluR0Fjd2FSTnJLZGZmenRRWEtr?=
 =?utf-8?B?amc3SVBIRjhIQ0pWd2FQcGRQNm5CckJyb0ZBQitnbUxvTFFhWExKclVEK2Ix?=
 =?utf-8?B?WkNsQ1AvL0xkT3ZzbzYweEN1QWY2UURtbFdVbXZ5RStCMHZmQStuRHJxbisw?=
 =?utf-8?B?TllibjVmclZhVklqTHlrWnZMNGp2L3RnYWdaTVFiUThEY1RBbHJ3WktNMGND?=
 =?utf-8?B?ZE1tQjNTZmE4QXoxRjAzY3NCTkV0bkw4a3ZGZTkrZ3JLNmRnMDkwVnFKQ2xH?=
 =?utf-8?B?ckRlelJ4Und4UTJEWE9UYkd2N3NFSmJMejREUWFqS2daalcvZjlBem5rNXJa?=
 =?utf-8?B?TnMybzA1YlE4SisvNG1mbTBISGM4S2xaTGFRTzd6RFhoUWJLOHV6ZlJFRlNo?=
 =?utf-8?B?b0pOdUZhYWtHYktzQUQvT0VyQmFMMTN2MUs5RnJlTit1cDJHK2hKNUNGNlhj?=
 =?utf-8?B?WjhoR0g5RG1veVFScy8wNDhuTytkVnN4MTJxcVZrRmtNakdIOXBmUG9leDhK?=
 =?utf-8?B?SWhVVjZmYU52WXQva05UN0h3OWZlZU93YkVvdzdZQ2xqY3BtT3Zoc2lKTnFI?=
 =?utf-8?B?Ynp2T1hSQWdMZVIxYi92Yms2M1ZZQzQ1Qm5ncjFSeHVNVWt0T3AyQWVnbnlV?=
 =?utf-8?B?eTV2USszT1BFR243TEhWWkRPdURmMU5Sd3NMaFJZM2ZWdkNuT0RKa25jU2NK?=
 =?utf-8?B?M29FSEFyaCt1T2swdGRNc3k2M1lDU3hub3lnZ0djOHp2Vzk2cll2dWVWWGFN?=
 =?utf-8?B?WTNvdjRUNHJYcWJDZUNxeHJkc0h1S0Z6WTZuV09lVUJtb3BDNTFzaisvQlZI?=
 =?utf-8?B?eWpUWVcyTFk3cSs0ZU0ybldGNTZ0T1REOFc5WGkyR0RpSHRqTzBmeFZQZXIr?=
 =?utf-8?B?ZmZ4VWJhOE5McWlIRWh6ekFINXBmWTkxYWMzaVRkc0MwaHAra1JaWDE4NjE3?=
 =?utf-8?B?NnM5NUYrU3I5Rzc4VUNjblU2OGhLS1JRN0o0eFo2bmhLQjUyMzNUeXltdmJu?=
 =?utf-8?B?MEpTWU5iMCtWVlFmd0owdnlDN2pkV3doY01HK2RPczRvcW1rOWppZzNyQXU4?=
 =?utf-8?B?WDN0cjJJQU1IZERKQXRkS2VCVkJ4SFJaekg2SmJPbGhub1A1eTV6SnJzclMr?=
 =?utf-8?B?aDduZFNOZVZBMHpxMVZxeDd1TTMyRXlzL1V4bVRzR2VjdW9YcnMzSSt0emx4?=
 =?utf-8?B?YlFLTEFsUy8zTnpvQ0pta3hKcnJDVnNWZUl1L2FWUks0OXZtRHhDZmpZZlZt?=
 =?utf-8?B?Q1pYNC8xZWViUTdvY0NranhGc0ZhM2IzRmxtWU9vV2xGUUt0VFZLMU1pb3Bl?=
 =?utf-8?B?VVp2clVxUWV5d0NNa2QzQU83YUtxUUJ0S245RmhnQ0ljVHhrWWVDUllsYW1p?=
 =?utf-8?B?clpLYmlSeDZvT3kvVW5UNlVVek9hbFl4TEZLMVd6RTZuYklvWXpqb2QvYVFu?=
 =?utf-8?Q?+iexmN1PWdixbVzGh4SFUTkTDP09PFGDXLvmUmq?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45a65e97-a999-4fdd-52fe-08d8e2582ddb
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2021 17:32:42.1617 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hatkIeM1bnHFis4c9TjSGLHg7WopdijjF3Fxmjp+iXY8rsFokClQkSUpBx8YQToS2Kls19i8bfmxWG+uTeI9OQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2815
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>, "Tseng,
 William" <william.tseng@intel.com>, "Chen, Rong A" <rong.a.chen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

I've tested on GLK, KBL, CFL Intel NUC devices and got the following performance results, there is no performance regression per my testing.

Patch: [v5] drm/i915: Enable WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Test suite: phoronix-test-suite.supertuxkart.1024x768.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second
Kernel version: 5.12.0-rc1 (drm-tip)

a. Device: Intel NUC kit NUC7JY Gemini Lake Celeron J4005 @2.7GHz (2 Cores)
    Without patch, fps=57.45
    With patch, fps=57.49
b. Device: Intel NUC kit NUC8BEH Coffee Lake Core i3-8109U @3.6GHz(4 Cores)
    Without patch, fps=117.23
    With patch, fps=117.27
c. Device: Intel NUC kit NUC7i3BNH Kaby Lake Core i3-7100U @2.4GHz(4 Cores)
    Without patch, fps=114.05
    With patch, fps=114.34

Meanwhile, Intel lkp team has validated performance on lkp-kbl-nuc1 and no regression.
f69d02e37a85645a  d912096c40cdc3bc9364966971 testcase/testparams/testbox
----------------  -------------------------- ---------------------------
          %stddev      change         %stddev
              \          |                \
      29.79                       29.67
phoronix-test-suite/performance-true-Fullscreen-Ultimate-1-Gran_Paradiso_Island__Approxima-supertuxkart-1.5.2-ucode=0xde/lkp-kbl-nuc1
      29.79                       29.67        GEO-MEAN phoronix-test-suite.supertuxkart.1280x1024.Fullscreen.Ultimate.1.GranParadisoIsland.frames_per_second

Best Regards,
Cooper

> We need testing on more that one box I'm afraid. Need to cover different
> fusing configs of Gen9 with and without the patch. I don't have any useful
> ideas on how to do it though. :(
> 
> Regards,
> 
> Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
