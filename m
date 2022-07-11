Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C71C56D445
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Jul 2022 07:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7024514A990;
	Mon, 11 Jul 2022 05:19:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B23F14A990
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Jul 2022 05:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657516774; x=1689052774;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=RTZGbomNhifg7woCExmcwUYQ0UvlDBL3JIf4ZHzOYwc=;
 b=cS0bfQCEEG1BAlwCGNl6aXAQFXSsoUd7QbXeg8rFKKAR+4VqveY0GVbB
 /weounYesuJi5vCCjts+DSToF6kFGqpStg8YXJEqtD1UCoJH6s9UVbF/b
 xoztP7WIxO3l64kUhYNCXX02GYk+hW6mthl0swavr6n8QoPHM+EfHKuR7
 rSFcoFbzscX2+Z78icPGEuPDGQx1WXJARxq4m/tfXp0BEqEgsavmG/L0L
 Fr3k2IYa4VHHpo+SPZUN0qWesfAS2mGr9Ro8cApGon6KbBq9sonUt4pKJ
 xQ4OL3zU05bc9RMpt6De2REOvGBexW4WGBsTeZGy5LOvaNgZVu3NKieSh Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10404"; a="285321594"
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="285321594"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jul 2022 22:19:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,262,1650956400"; d="scan'208";a="662417473"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2022 22:19:33 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 10 Jul 2022 22:19:32 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Sun, 10 Jul 2022 22:19:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Sun, 10 Jul 2022 22:19:32 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 10 Jul 2022 22:19:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YRGvIDrI3R2TsZRA8nHWIGqlwziJxTj37ddhsgX9HwLgZiLlEa2KOHy8p8fpPtnRUpQ7uJhn7oQFU9P9hPnLal1rrkYFfObNJXgpnok6/GqFhdXqvVqaKkjtA7InOuH3+O4w8xTrW9GErJZpiHAJxPofYRwImkoFC6qohnD4uOOkAQiNCObgTVgla38d7bbUhvFT9kV/xwr+Mhu5lWsKU5NSZ2rPPRk2QTmQRFMK9RuR4CYnkckYSSpJ27YQ9oyKYk+oRsOWjne1nZqHly+JAXovJ/abZWmxDNnzhbDuJGLycj5XRhm8EFFyRWdOZfTYSsZQC5mv5JcmbXGyVT+crg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vW9V6gm6Z3e0eO2DXdqM5pOyNR/Ap7I5Acb3cYZLnqU=;
 b=O3aadenHqvxYrjdY9wQgDH1WLFCpcGdwDOxA27SkPNegw4I4SgTBqyEjgLsiuq1o3yRtBTmDrCW4rAKbz5xqAa3L5nZjvA0k2D8D6S9UffrWDtuNkRzeDBmgd6REw0A5zlDF4ffGNiUW08Hn2pA0WSiZsheMebLsIlYT6dpwJFjjF4+PxMKXBtTgNLZj3DvVDqSsmci1zcXhuH237C3+ru6zHOZvc2PmkZzG4vqPUjaMJ4XFdeKL03Gogdi3jbXauM9DsgBaypV8m5N90z2yxR8g2GAVSxY9WE6GQjhqndxhGCVNCzE1X+Dxu+qkKQpDxRK042YsGF1VSfuTirp38g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB4243.namprd11.prod.outlook.com (2603:10b6:a03:1c8::16)
 by BL0PR11MB3076.namprd11.prod.outlook.com (2603:10b6:208:33::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5417.20; Mon, 11 Jul
 2022 05:19:30 +0000
Received: from BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a]) by BY5PR11MB4243.namprd11.prod.outlook.com
 ([fe80::d84a:6462:d08d:d35a%4]) with mapi id 15.20.5417.026; Mon, 11 Jul 2022
 05:19:30 +0000
Message-ID: <5a866783-5477-475c-e160-6efe9dd45378@intel.com>
Date: Mon, 11 Jul 2022 07:19:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <cover.1657289332.git.karolina.drobnik@intel.com>
 <165729212273.4506.9607116977312554430@emeril.freedesktop.org>
From: Karolina Drobnik <karolina.drobnik@intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173, 80-298
 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <165729212273.4506.9607116977312554430@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0149.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::16) To BY5PR11MB4243.namprd11.prod.outlook.com
 (2603:10b6:a03:1c8::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a0963c7d-3c4b-4ed9-9176-08da62fcee75
X-MS-TrafficTypeDiagnostic: BL0PR11MB3076:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /tj0uZbBSi1qr1H5VkNPwF4zFPbS0JyCTXslWwls71UlNnsEgJZM6uOgB9TY4to/NSKL6g3HxA/WR/1ZCDV9Ut1GSJlRvRDCaqf61Wuo87izt2GTNkYoGzGNcer7WAwrdJkdL+3s7xAlbjwumztgwWoY/bjzoRansfxRAHbsScfYBuN6eQCwKcl0GzG+gXQwMjMUBGJhZzG5Bn29rBP49EtBvEceKhzk5LHyBZ885F3K29UliCmPy0VhqeOv3VOv995NzVJdrYSwUEb6elY76JjEdVM6c2a2lpNTz+fbgu0QIYxMoTJ6GOLd5DF4Z96bV9UJMN3EjvUsdpPjqoTw/dr136ilOuiiIQmTtEDUgla2hYE+Ja1ok4BkQbh0PZOsAGiT+1v5F5kspujy4iYklOfTBa5XOSjBLoxiLJ4mwelF1PmHgLysEy0xoqdBzp11HnEnaO2rvCB5NgJsTLwoX5GLf90R4mkgA3hYJEOSm3UOn6eF9lFrFuHggygBEWVW/BmGA/sMP2eWFZPQs/H83Csu8j81iG0EJ+yyeDeOsaLgO8a33oiFXGA1rj4JiHchZo13nW5AUucu+UJhHXLvTMy3aPB+QIHtyJ6eQZMME1aI571vC/JJOszXeFtMblQruc28MQVlij+zMK/JsgxLcLXJD3rMfLK/bo8A4bDCHSM3ODGxJq1pl28kS1G94sR+ecAK49dAt5nc2h9NPrTplGNXVBv7d5/gzY8wQKYqIN6HQsDKXnFEbdyslhctEwEHCb9xRInHKOeH7me6LBkgQQw932ZiQm9GMMofbZSRBhA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4243.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(376002)(346002)(39860400002)(136003)(86362001)(44832011)(31696002)(966005)(6486002)(478600001)(186003)(2906002)(36756003)(6916009)(8936002)(2616005)(5660300002)(316002)(6506007)(53546011)(36916002)(6512007)(66476007)(66556008)(66946007)(31686004)(26005)(82960400001)(41300700001)(83380400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MXJGS2FCbDlQY1pMcDNMc3pOcU1rVTJCU1FKMzZycGRxTElmZnhKMTNHOFJz?=
 =?utf-8?B?Z1doQnBOZFBFbVFocVRtU0lnaFpJZHJPNDVDWHRPU2labEE3UktZQW5yVmlG?=
 =?utf-8?B?U3FCdHBKQmFxRGVVSU42Mk9lNjVVelpQdHNXSWZmUWxQeWRVeWVHbVczc1FQ?=
 =?utf-8?B?RzNNczdvWFhpK2dpYzRFY0VablNBTGJYYXpraU9YNWg5QXF6Vy9YSFdqcDNB?=
 =?utf-8?B?d2syR09uanNiLy93ai9mUUV1MXh3dU1rNUppZWJ4VEtqNjJsZ2hldE1idGVS?=
 =?utf-8?B?NjRJdlRXSnpvVmdyT3Z6ODhFQ0Q5ZFFGYjcxemx3cjhaNEVHRmwwa09HcVIw?=
 =?utf-8?B?eDBrODVxVHUycEl0TmFLVkFIZCs1cVZVWWNacFhabzhjZTZwWGpNQW16c2lh?=
 =?utf-8?B?ZnVEMFJRSUt1TTFua0p2U1JhY0MzVTdoVnFHd3d2VkR1dTdIdktVbEVpSHZ0?=
 =?utf-8?B?U3JQRWwvdTN6SW9vbnYzWXhJTzBzdmNvSDhtdzMxM0ZRMEVCdDFmWm01WmZo?=
 =?utf-8?B?bjBFVys1ME5GN1pJTTlnaEdwSHhhM3BSOFhNVWlwUXRYNFVoRjlra3Frays4?=
 =?utf-8?B?WW5seXE4S2JWRXdKZ0Fib2EzR2ptV1RWZWZTZEY1ekxLVVZ6VjZpWDlBbHJU?=
 =?utf-8?B?QWZJYUlVakF2a0YrV0dIQ3AwRjM2dmFmRk9MWjYvQ3o4NUJhK25kRWs3dVhp?=
 =?utf-8?B?K1RIdDdoblZ0K3l1WTR0aXRXaW5oRk1UaVJyT3pXc1dDaFdUWFVPQjBRQWtO?=
 =?utf-8?B?L1hKNytvYjFjTHhBT21nb2hOUHNZejh5SXdhV1BHalBzUXl6dWR5OWk3RkxM?=
 =?utf-8?B?dE5RNG1yUkJiUjE1YXh1R1ZRT09UMVpsNVZKZ05YVHg2UGsyZ0FiSWo2dFU4?=
 =?utf-8?B?am1ZL3cxcFdEdndXdHc4bVpuYmR4dVFUNThiWHhYU1E2aVI4dExud3lFU0hV?=
 =?utf-8?B?S1Jheit3UFpWSnVRU2hyMVJMVnAyYjhDcitGTlZUcDBIQ09OaERmRWhOTlpn?=
 =?utf-8?B?TVI1bjFlZnBRMkZJMkNVZkJ4NElIM2xvM3ZISjQ2YTJDSXdSZWZVY3FlWkpF?=
 =?utf-8?B?ZjM5SExzQjhiL2dDUlhrdUNvYkxPTnRrdy9VTml2cUhZMCtvaXpuTEhiMW1Y?=
 =?utf-8?B?RzhuMFBqMDcrRGNYcEdCMyt4SFQ1K0xNWjI5bnhIT3o3SXMrU3FXL3V1MTJT?=
 =?utf-8?B?MXVpcDFoanliZzZLVGdoTTB1ZUR5VUFEcnFQd1orKy9INFFjVWQwRWNZQ0s3?=
 =?utf-8?B?ZU91amdqajE2REpxY1lGNkdZME1LR2twSHR3RURXT3UyRDFycDNvaFk1Smk1?=
 =?utf-8?B?NDFydTZQVEpqTXhqZkZ5S2FneElTQmVaK1ZGWUliOUVXb1JqV0JybEc5VHpY?=
 =?utf-8?B?SW9CakhrbzRnQUpta3JEclpudzFKQi96ZzVGM3RZU0t0S1lUVWl5c0JHMHp0?=
 =?utf-8?B?YWVGa29xWmQvMGtWa25QYXE1T1Yza2Y5TjB2c1VmWEVxNGVESXFPb0RxV24w?=
 =?utf-8?B?NHZtQWtPUzl3b3o2aUl1WTJ5YlpidlI1emZtSVA1dkNxS1VoWW84R1FiU1Vz?=
 =?utf-8?B?NTZteUk4UTVsTVhoMFlrbGlqT1JWZVA4RGY4UmE0TTJlMm1PaEhXQmV3WGZI?=
 =?utf-8?B?QStGeGthaHdBU1Mva2xCT0JTelRtajFKN21aRFFRWUZuNnVjMTBsSkUwT1Yz?=
 =?utf-8?B?MTdzUzZGT0VXb3hURlJlbmpsVzFML0NFRTJJZHdtR3BHZ3Y1RXpaWWMvYTlD?=
 =?utf-8?B?LzZEemQvRmFlNFpFVEdrMVoxRHpYcUxiWExrekNKalJ1MTJUMHRJUTNKQUp1?=
 =?utf-8?B?bDdUbmo4NW53WWJOWEpwVzl4eklUelNndW5jMnRJdDc5Z0dzWXBaUzhPV3E4?=
 =?utf-8?B?c0tvVGFiTWJ6eS9rYzlybStFdmJITm01UnVZS3JKNVh5VTVtdEVqOEN1QzFE?=
 =?utf-8?B?WjRnTCt1ZW9IR1VyRnpSRUIyYUhVRUFROTZINVM5dm5vOEM0QmZyQ1dOLytV?=
 =?utf-8?B?TnFZc3hLS1A2RlYwOVJjV1pOTldmdkdSWTlDV0VQTUc3VUw0UEdORXljN0V1?=
 =?utf-8?B?NDBicG44MVJtMjIwK2VMaE9ieVBVNVMyelNuMEVkUkc1Y2ZBdEdreTFWRVYv?=
 =?utf-8?B?V3JWcFBwMldsWXc5SWZ1d3VMRU5QSnUxQnNkaHZDaU5DcU0xUWJmRFdkVktU?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0963c7d-3c4b-4ed9-9176-08da62fcee75
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4243.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2022 05:19:30.2371 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T6wDICtDovaV3SDhnUwmvvDA71Jxoe2X49f5+rDICe3cbdATlJXYJG01lqFYnzLaZo3BtLCSzL7BzDcu5ALEJUuZM42BBo8TaGIGKSWzd2c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3076
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkNIRUNLUEFUQ0g6IHdhcm5pbmcg?=
 =?utf-8?q?for_drm/i915=3A_Apply_waitboosting_before_fence_wait_=28rev2=29?=
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


On 08.07.2022 16:55, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915: Apply waitboosting before fence wait (rev2)
> URL   : https://patchwork.freedesktop.org/series/105925/
> State : warning
> 
> == Summary ==
> 
> Error: dim checkpatch failed
> e35c61e9e46c drm/i915/gem: Look for waitboosting across the whole object prior to individual waits
> 85a4558b5d11 drm/i915: Bump GT idling delay to 2 jiffies
> 0ec610488c77 drm/i915/gt: Only kick the signal worker if there's been an update
> -:23: WARNING:COMMIT_LOG_LONG_LINE: Possible unwrapped commit description (prefer a maximum 75 chars per line)
> #23:
> References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")

Tags shouldn't be wrapped

> -:23: ERROR:GIT_COMMIT_ID: Please use git commit description style 'commit <12+ chars of sha1> ("<title line>")' - ie: 'commit 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")'
> #23:
> References: 047a1b877ed4 ("dma-buf & drm/amdgpu: remove dma_resv workaround")

"References:" line doesn't need "commit" keyword, it's a false positive

> total: 1 errors, 1 warnings, 0 checks, 9 lines checked
> 
> 
