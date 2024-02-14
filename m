Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A4D855772
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 00:46:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9E1F10E227;
	Wed, 14 Feb 2024 23:46:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MwXKDcmg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9740310E1EA;
 Wed, 14 Feb 2024 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707954386; x=1739490386;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=c/95IOrSCFwzrUix91E6f02+rqUPdKADDY/l8yHcDQ0=;
 b=MwXKDcmg0zfZdd7FDU8AthQMCoZr8gNQMDGwTrTz/XznBvnikHohypfa
 ds3n7pGZ3Qe583a5wjEx+cYieSEqpBbATdY8RXOfop2qaNMfsi629g2Ho
 Ai7WGWEESCRpHrjsPHA8Q59iuWF1X1w6GisC2ijmwtlb7sfAhNTq2jZNM
 6F9+a8opPqBrJVV/qeSe9LmFroHPAyBrduUge5c5rQ+BsMz/DegmtyZX3
 A6ySAWMFWVwnAVyY+5lkoro8CAhOld/UwAFfPsryoWuFnBjXYOO7pNFsE
 lJW6Q+BlDDvO5wb/XcwxX/Qg6GvUitn4JMJZwcn/CletE4GaX+EFlOQ3B A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10984"; a="13416043"
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; d="scan'208";a="13416043"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2024 15:46:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,160,1705392000"; 
   d="scan'208";a="8098714"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2024 15:46:12 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 15:46:11 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 14 Feb 2024 15:46:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 14 Feb 2024 15:46:10 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 14 Feb 2024 15:46:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GKFGm6W9HCHd8H2ml1tF1pj2Zhu/uD9PD+FjwKsm1lQ5Lh2FiC52NTqKckt32HcMdnRzrn0kyZ+lrCfz3dpLAjNla6adOoU39xQ8c0GLr74xhnSc+UHUTrPELTc9tQgyVhVIv9RuhJ3ZQmKrKE8ETWMgb43LzpxhZtLgSmpq9kHGFI9H26rmBaRUU/rD/rOMsg07l7vI03vCtwpjOmAQLAkAviy5cwhRSvG57UX+OjWVCmDqJgAZC8jQh0vuJ4g54UDghyNNCLOvQ8HFunelFDgbcejQPDsNmf8lYa5dJuUPih4dQ1OfgvQ3LFW71A8t1bgzRU7WHRh0KmXpvaiSjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2b1ThxaMub0xW9o4MblMjvEwJgzGDRTBobMEpqffFMw=;
 b=aN4TfbldMoxc5DoGD2/5bvv89mBphBGQqsreiog5pYNTIeWICT2je7MVWEsIii8PxEueB02rXvqqx5U7icFleOBb8RjAeVicAqrSWK9T9X6IyvJ4hU5ZzXXSIkNwkZIkV6iu5+A4jU3Fp88ma+PSQxKGMnzj0Eq45aF0SFa0gr/G4CbLVT32bnKlw/LmEt4q5XwwWaoW8u05oo04FSBJ5qoatTl1XbjDKf1teYh7q63WpYDgqjh5yrBT9134MN5ZwH07qEFr6TcbJla4INuIx7LEV/OljMUL7IFrEFpDdFsL9mSFrTnZxr57xTDrFohgoqFKr7xjDIN7dIW7xrCJzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by SA2PR11MB4841.namprd11.prod.outlook.com (2603:10b6:806:113::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.25; Wed, 14 Feb
 2024 23:46:08 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::c590:37b4:ad48:cd0f%3]) with mapi id 15.20.7292.026; Wed, 14 Feb 2024
 23:46:08 +0000
Message-ID: <f7dda4d9-3953-4574-ba48-8d731e806d1e@intel.com>
Date: Wed, 14 Feb 2024 15:46:04 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: PR for new GuC v70.19.2
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
To: <linux-firmware@kernel.org>
CC: <jwboyer@kernel.org>, <kyle@kernel.org>, <ben@decadent.org.uk>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20240202011249.1965081-1-John.C.Harrison@Intel.com>
In-Reply-To: <20240202011249.1965081-1-John.C.Harrison@Intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR03CA0337.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::12) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|SA2PR11MB4841:EE_
X-MS-Office365-Filtering-Correlation-Id: 91922b30-ccf7-47b3-3ce6-08dc2db71da5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E/VByL3s8wdn7gY8+1kFvFPnFfah1kRkq7nm6taLMO5prQ6kXYBtirRIvX0vD0Cl2FhOG7XZMmrPFUPq53Oy3huNjkHoddRQidkiDV6uJaWAkpIXDUbTEryt/nPaKvbzD4odBB0fZAUjMLL0kDs5kCeh0tsPr20G0dzAWUExNl223PJ4fR2En6SuGhAZKEuEW0dqeCmWCZ7L/IPnyagGhlbloCiR/GFl3WPoB6Bqn8n/r2aA/xzodjJdMCmBaI555m+SoXqNzawaFd+o66+IWAqsXmtkhN9vIJ21KT7f/Uwuzth3ENORX4mzAg/mtZbxVZyxMq58Nw+vcz/4txW+stmSpNFtl5r894ydIIVL7rw/ffzXDpmn/+8QRuFYqtseqk0D+mngONkj3SJmxHJP5YdLC36JTDupgj07fNDV/5fExBQwrx/NyJx2NTKAljkRZTzJ/A3lbDxM1NC+1pZ29HG91v4aUcUaIwEjZY3AulWN94fBic7rLpQ9KgQNEUkxp/aXBphO0S5VoZs1ASfsvHPkrjk9Hg0ZiNbR8pRReSbcDBVmy4d3tShMlChCEHiP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(366004)(396003)(136003)(376002)(230922051799003)(186009)(1800799012)(451199024)(64100799003)(31686004)(2906002)(5660300002)(4326008)(31696002)(2616005)(41300700001)(82960400001)(38100700002)(53546011)(6512007)(6506007)(6666004)(86362001)(66946007)(66476007)(66556008)(6916009)(6486002)(8676002)(8936002)(316002)(36756003)(83380400001)(26005)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTVBWWhiZmh6eEZydXlGR0F0eXZwNHdEakFvaDV4T3FOTHpNZFE1TC93VCtM?=
 =?utf-8?B?aEVwYXNQVEo2d3QyWU9OM3M0VnF1dy9OblpxZTgwNElpYm8vNC9MbFlMMnh5?=
 =?utf-8?B?eEp0eG96emhiOHh1U05qV0MzeG1IMUdYcDNlRmQ2aGFPK2VWNEM3dCtINGlN?=
 =?utf-8?B?WlZVUGRhU3JoVUZSRDh2Z2ZDcjVjeGdJdHNMQU00TzBjSjdzSWswTDBvNVNl?=
 =?utf-8?B?bHROeURTK2dUYU1lRFpjT2hadGVXNUE3Q3lUOVZHZ0hrYjV2N0hsRTVDcTlr?=
 =?utf-8?B?dVFIVWxkazZZQUhjNVNic1FTa2o5eHVDK3FkbGI0Qk5MWW9Fd3RDR1hXNTcr?=
 =?utf-8?B?ZDZwcE1YS0ZOZmhOdWpEQm9sMlNKZlNhQng2Ri9CR0QvYlZVQnR6REdTZmIy?=
 =?utf-8?B?dHFjczVVTVQ3TG9TYU9YNERaT2NFc3BVTHpzZGUvRHF6VmZyaFNqelhwM2l0?=
 =?utf-8?B?Wk9HN2htYVk5U2pRTm54OWVTd0RnYUprb0ZaTGZMVmxER0lXZjZuaE5qV2Er?=
 =?utf-8?B?VVVvR0ozeEJvUHBMYVhDNGg4dXczeFJnZTZ5djRqRDIyUGdYdlBtcHhCUGFJ?=
 =?utf-8?B?Vkh5VHN5ZUJFeEJydDFDT3htQmFFcTV0YVVLVzNQeTNZeGpxK1F1czdoY1dt?=
 =?utf-8?B?dXBLeDBMSTRxVzRhd2tvSU5LTUVQU3lqN29rMFBHQUVRSHpHdEswSFVzejZx?=
 =?utf-8?B?cDdVQm5xOHM2Q0tTL0dlSjN6WlN1THQ2cm5QQzVPNDZrMGRFd2hjRlJQREdl?=
 =?utf-8?B?bDZ2SjAySURzamVwaVhGZThybWhzcWpvRU51YkdoRXUwQjhuS1hSb2JpRlRW?=
 =?utf-8?B?TmkyZXpqcDdpZEZHa0M2TlN5UVNhR25IVytPRnRSN3c1ZlVQbzZDd3VWcE1G?=
 =?utf-8?B?bDJXdFZha2NSd0FxMXlpbzVZL1FaNDJBV3NmdGFObzdXTjJxZStEaVJ3R1cz?=
 =?utf-8?B?Y0hZTlREcVRPczFFdUlWS1lWSkFaZGFsRUlwbjZMUG5rdWVBdURVSGhzbkU0?=
 =?utf-8?B?d0VvTGhvdkdyZWpUbGJUaTJKYUx4VXMzNjkvcU1GdHF4ZkJjUWFpS210RHhK?=
 =?utf-8?B?QS9XMEx1UEFGeXhwUFpHTjNDc0hya3lkb2J1Nk0wWEdnRThEQWNIOXdoclpj?=
 =?utf-8?B?QllFelN6SHhpcS9jN0NYWFZyNUhWSG1oUHlWQXdPbUlJbEJWb3ZRS0lmVDFv?=
 =?utf-8?B?T1IvY29XNkluWVdQeCtOZHo0SSs1SXpBbVZ6QzhoRlNWbldoSDFxcmhmNjNJ?=
 =?utf-8?B?YzlUdElQZUFNUzB1aGhsc3BCM3VTWVY2SmFaNDlrKzVTL3JJMkdLTFpRUEN1?=
 =?utf-8?B?Wk1MVEpVNkc2ZVNWTUMyajRpS1VHM2Q1TG9YNnRQNmJSZGg0WEpCTzJyaUc5?=
 =?utf-8?B?Z2VOTkIvOVV3YkM4a1hnZVVMT1lyazBNYnBFU3NVR1NTemw2SnNqT1FkN2dW?=
 =?utf-8?B?K3JWQVJERStGcXV5YUlncTQ0YkF4ckJ2YTlCU1E5N3ZpUVNqeFhuZWlDU0px?=
 =?utf-8?B?cVFNSnZseGJYUVovRlBaM3dqZ3FKVTdiQ2ZJWnJhVERsdlI1clZxK3YvVW5q?=
 =?utf-8?B?ZG1CVHVrc3NpR21EU0ExZEZiS0FzUlRIdE1sNEhqbnNFTkZxVG9td0g2Tkt5?=
 =?utf-8?B?cFNsTXcxUmpsc0JyOVRYVHdseU5EdnV3MFlmeGVQVG5MOC9wQ3dIMmdFRW1B?=
 =?utf-8?B?Rnl6NGFTMXlBSFRqOFAvUXM5R2I4YldjVVlhdG1iSkpsOEYveEJmQXNqQW5J?=
 =?utf-8?B?M2hkWUc2MTU0a3VkSmpUZlpxZzRuWm5HWmQ4WkZ3N1J4WXRVZWJPNW9wbm5o?=
 =?utf-8?B?SHZmUTFwaTFBN1ZUNVpUb0l1QWxJVDFneEVrdDdleE9ycnhlZ253TnZFVEdj?=
 =?utf-8?B?S2krazFYc3R6Vlo4MnZZSEV6MU5Jd3ZyYStFTFNoS29aenAxUU94VlVBUzVh?=
 =?utf-8?B?amp4WkxzNytXR1N3SUtzTEcvSXpmZnFWajZQSGNubUNJNUwrMUo0L0lqcUZN?=
 =?utf-8?B?WTY0cHRwV0V0WmRKWnZNazl4M2QvUFd6ZEVJTXhCTkROZXRmdTl2YytqUyt3?=
 =?utf-8?B?Z01VVk4yZmFob0xOZUJUeUFnZkRCS2NuUHlma2ROdWh1Qnhra2JGMnk0R1p4?=
 =?utf-8?B?Sm1pQW1XNzFCNEFxLzlQbnZ4c1RzK1p5Q2lucDd5cGNXVGN0UEQwRmdUWXBS?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91922b30-ccf7-47b3-3ce6-08dc2db71da5
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2024 23:46:08.1199 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: r1X2gJQZaE3IW1N0yjjMrhFO1o9N7CH813Xp+5DOeynhoPYG3bSrStNp2b2sju1IW489maJQOJG5MQZ4VRmdWPEaMybRc9yJRvmSOffJk6I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4841
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

Hello,

Please disregard this pull request if hasn't already been processed.

We need to send out an update to bump to a newer version.

Thanks,
John.


On 2/1/2024 17:12, John.C.Harrison@Intel.com wrote:
> The following changes since commit 1a9518c73c4b54854c9cd8f416fd3b8f8e3456e7:
>
>    Merge branch 'mlimonci/amd-2024-01-30.2' into 'main' (2024-01-30 15:55:30 +0000)
>
> are available in the Git repository at:
>
>    git://anongit.freedesktop.org/drm/drm-firmware guc_70.19.2
>
> for you to fetch changes up to 92c06b3c1b4b93ccd9953825cfd4e6ab56e03f16:
>
>    xe: First GuC release for LNL and Xe (2024-01-30 09:23:50 -0800)
>
> ----------------------------------------------------------------
> John Harrison (2):
>        i915: Add GuC v70.19.2 for ADL-P, DG1, DG2, MTL and TGL
>        xe: First GuC release for LNL and Xe
>
>   LICENSE.xe           |  39 +++++++++++++++++++++++++++++++++++++++
>   WHENCE               |  20 ++++++++++++++------
>   i915/adlp_guc_70.bin | Bin 342848 -> 347264 bytes
>   i915/dg1_guc_70.bin  | Bin 272512 -> 321088 bytes
>   i915/dg2_guc_70.bin  | Bin 443200 -> 406336 bytes
>   i915/mtl_guc_70.bin  | Bin 365376 -> 332608 bytes
>   i915/tgl_guc_70.bin  | Bin 330304 -> 334784 bytes
>   xe/lnl_guc_70.bin    | Bin 0 -> 336704 bytes
>   8 files changed, 53 insertions(+), 6 deletions(-)
>   create mode 100644 LICENSE.xe
>   create mode 100644 xe/lnl_guc_70.bin

