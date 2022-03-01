Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DEB4C97D8
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 22:37:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF3B910E29A;
	Tue,  1 Mar 2022 21:37:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5243B10E29A
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 21:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646170651; x=1677706651;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pONp5BdoP7sz0WJkfRrFyRS9XWIVaTDqQCxJVvFlJtY=;
 b=VPY4Iab3lBRAklxmnzBRjC6LJS0Vvwe1zIzrTx2+4b5yhymOwHxh1vzu
 iBEmj453pF5gv+Brjfv9BW6uKB+6d1hQruZyMv5kLkl9OmSlX46I8IhjB
 hmRg16u3uSiLyzS6e0ZqvGe2ZYIDRr/QccfWPFxWi0PAEt6Bt5yIp/Hv2
 U9mbAkAlO+UXtyr1DcGKyXqoJz7tztCoJxErvygPZFjEJEd7FdBI8EWTT
 8gXMDAy5wZA+CYhtg7pQl50079oA65rRPuQ4g9rCGrWPnG/BLcFT3Shzm
 WR8jNoPh8GFe1lKTsSqU/uiRoSUfQNOH4dlPWVW8hWZgNalcqHW9x2429 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="277920139"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="277920139"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 13:37:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="493272660"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by orsmga003.jf.intel.com with ESMTP; 01 Mar 2022 13:37:30 -0800
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Tue, 1 Mar 2022 13:37:29 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Tue, 1 Mar 2022 13:37:29 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 1 Mar 2022 13:37:29 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cx+6F/uHNOnNXfY9U7KEFyoatMyaWGIln8vDeeRay8kvMfFwh+0Su+42GKg7bkTO4AhW36UJSh44uwjCqF+XufbIstGNPV4cIzpX5Pnm1ysdTSsvwxVtjwYBTMkBuRLKLk8cj5Edcqg6zWkpol0yZPXGKfEiBWw/JXsjWNeXW9K5g2RIzIAoacNV1HHUZxlVsE1oeZi5c+881/3ftro/0a3qf2beCbICu/Imru/S1mfyItP73omrJMzfxHSzncb7AJO/v4qjS5PaXiFDCdGYex5u3MxN1HFxMeqaNLsi0TQt74Ly2O5CnIyd4xyewDGDaniLtgY5JMiH3SUOvwE4LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cvTcoNzb4ckG6UBC9Y5YSXC2PQWm7nPlCBU2DV0YABo=;
 b=hqoZQBW6FSKx9D/bjnuIs6VWqztNs4vd4xTtOTAvE4lKmpKUNCjOC+pg0zQLevpbomtIGRhgDpGXlmvjSdIjbk4hOJT4F5YXFZf97HvYgsbzbCArica7+7IHdjHWmXBKF/M5NmZdPrpoPNP6eDdSMbrTOgZvBGN+nUGGmFiUnz1uZguLyfAaNPyhmzSKn5yQS0i0j6lK3bu2AoiD4QwyVGc8tgk/YA8d4S8GgRJQkGehNCceyAkeGNVcBY1IdRie8q6ZG1Um9jXgBhva+JsVLoZms6zINtDI30Vq8O9sOyUGt5AyMivOVDbD7QNt1PAThlk8vEVrGtRvK43gWSWlog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by BYAPR11MB3637.namprd11.prod.outlook.com (2603:10b6:a03:f9::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5017.24; Tue, 1 Mar
 2022 21:37:27 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::dd36:1843:a629:4ad7]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::dd36:1843:a629:4ad7%4]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 21:37:27 +0000
Message-ID: <c4976a17-1254-c893-6501-e6fa6620a855@intel.com>
Date: Tue, 1 Mar 2022 13:37:23 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.6.1
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220226062732.747531-1-alan.previn.teres.alexis@intel.com>
 <20220226062732.747531-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220226062732.747531-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0086.namprd04.prod.outlook.com
 (2603:10b6:303:6b::31) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 457eb3f8-f0e5-42e9-1e96-08d9fbcbae33
X-MS-TrafficTypeDiagnostic: BYAPR11MB3637:EE_
X-Microsoft-Antispam-PRVS: <BYAPR11MB3637D940D2322A7B051844B0BD029@BYAPR11MB3637.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /YZHS3/p/QujDqk15h9kBtAeXHDTmQS2zN1S2r1AIvrQt16XpaGDsI3GA399qPIZEBYodEKV35MHbgjFSh/jbPOENVuwcSNT4PGNoXi6tEwtbDB/xibHQY/tQ1heIbO5QFBAz+Dtk17lSTuSFW6EBdmpUPnXL20voS8x++v+a3ufArneda2twlrEO7cF7ccMESzgP0yL/jndfQVy5yWxhBSFvVJ6fdfcaAhxBK1VbCqStBkp59XdGQgbiTTNwoGLvXs0BzknGfxEc3/w8FEXbfbcsGvvrOAhVPLRqG7mzx4idUDuBTwBjpD4/L2lkHpx84sPGKDOh0LMY4xadK5V2LGqWJZfO+64BT9IcCBEuwm39/JKL+YKTcL1b/i0UsgiXPE74Et6oGb+IKw4WriYyP/0/aKFrYatth4HyLsw2/W9L3mWwVn/CeNDLjcEyq8ChoTAVkTxnk90czaFFQAoSe0AqWImOopZN/L0JKHEl79Peji2KSBEIo/ibluCrzePfyp3n9Qy+2AA9/OEaT6nEScf3P3S1ZY5h+/YJx8VBakBkPjLVSDpTDW/LUt3UQW1A+ebb6dl7YYikpMv6BPkpTNclxbijwW+avpbcSBndPjtxBBc1kMGXsfFQCEQ0vPd/E8zfN/dFUzxx/Dulpd4Qz4d3svk6ofaxNOfjpBPFi7rToK4B4KCnp1SibfA85DfKDAczmUMiYJtTo149hNglX/B1fZ//ZpTXib5ofVVvYwDM3s8xFJ9YyD4OOaZdso9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(86362001)(8936002)(31686004)(53546011)(2616005)(316002)(6506007)(26005)(6512007)(6666004)(186003)(83380400001)(66556008)(45080400002)(8676002)(66476007)(31696002)(2906002)(508600001)(82960400001)(6486002)(5660300002)(66946007)(36756003)(38100700002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eGZyVkc1OUJZUDcyTkpsNVdweXo3UUdkbVdLRUJFbEYzOVB3bkZtc3h5WHNi?=
 =?utf-8?B?ZUMvMmJ0Qytyc2x1V2hGbEQzTnVtTGJVci9yeC9wV0hCTjVtaHBPTzdKTDcv?=
 =?utf-8?B?WVVxWUwzZzlPWVNiamVRK3VWY3FCNENTZTdHNkFldlJTVU4ra1pVNGpwSHo4?=
 =?utf-8?B?QUplWU45MDczNFdtQStTWHJ5TzBEZ3RaUlppUEdGb2F5TVpGbE1TUWdpdjYr?=
 =?utf-8?B?R3B1VEFHRGdMODhQYWszeWlHWFJycWVlU0FWcjAvMWhUT0pTSTZMMCtaVjg1?=
 =?utf-8?B?bXJ6bTk1eW1TeHFQcWpYTzNtUXpucEFySi9uRlVJajFmSHNHMlRvbWo1ZzBE?=
 =?utf-8?B?VXJ3Z21VMFRiOTJyaHNRSjh0eExYZWYxZDgrbC95ZUFJRjNjMjVybjFqblRj?=
 =?utf-8?B?U2ZyOXh4MkFaK3BwcjhaeXFBbVJCMHN6VE5QUUFaOTEvSGpwRWxGZXc5NXcy?=
 =?utf-8?B?ZnBidXhXVVlHVFNscFFjR3hZZDVIRGNQcU5hSDFMdzdJMjQzdnNEcEpnNzZz?=
 =?utf-8?B?ckxxenJhK1krOVl1RzdhMHl3WkZPcEU4MkhxZUJJYzRxTTRJbDBzU0hlSUE2?=
 =?utf-8?B?N0ZLOGRKb20waVRJT3ZmeUhTWEdlemJUc0FPcGkxS3lnaDVGUlFYWFp6eXBS?=
 =?utf-8?B?cytwZy9TOWtQZjF3TXVERmtudndhWlVablJ5QTZYcE1Sc08zT29xbmRjSSsx?=
 =?utf-8?B?b1dkMHhmRkszWklxdUNwbWhMQitHM0hadGlFbThHdkh1UW45WjkzZE02TDBk?=
 =?utf-8?B?WEpEbVJKbHE3ZEt6N1VqdVFFMzRUZ3RRNThicEppMVRZSTJaN0FKZktaK1Ru?=
 =?utf-8?B?U05hZnVqZmxRb08rOWR4UVZnakFyY1lZcmxobEE2ZnRTNTNvR2o1Yzd6RlZK?=
 =?utf-8?B?Y2Qrd0ljRThTU1FyVm5yVDVGZDllQnZnMU0rU3ZtMUdmdkpLWTExS3podkhF?=
 =?utf-8?B?cEY0Qm0xeXFBbmpXV0l2dFl4eFRTWlRYbjlnbFNUVmgrM2Jnd0ZncStlcHhF?=
 =?utf-8?B?amoyckduVHFKMVJIYUxCVlZ4WDlZaU9SUys4dVcvVU00YkQxM1RsSjUvRkxE?=
 =?utf-8?B?YnZaQnJQQ3pVZGpmWHZEeklRSnBzVVVkb1MxaVlxRDIzQzQvSzEwRE1rN2pN?=
 =?utf-8?B?Uzl6eml2SU0vRDNOTHNCWDJSTnQ3aG1rVjRwRFJMUW0rMTdpcEhsbEJrR3U5?=
 =?utf-8?B?WXdxck1rRE5WL1BNSXlrKysyNU1mWW54Vk0yMzF5bnNMYWRIelRacGJSWWtN?=
 =?utf-8?B?dmJJNThRMTU5VVFmcDJZMGRjL2Noek1QK2xwcnVsWnJZRDM2V0VrazJ5bTc2?=
 =?utf-8?B?SHhFdFNicnFCRmhId1JmRi84RFBpN01xeEVBSFphQVpxdksvWDNsNnJoRmlO?=
 =?utf-8?B?WEVXMnpqQ3B6Si9TY0tJQVhnVHJhN0R6WTRFU09VMHQ0c0JNd21acVp6OWt1?=
 =?utf-8?B?eUI0QUVaY0hmS1YrRzlCN0QySmRiWnB4ZjI3akhLVnJNaHovdkh3Vzl6U2Rl?=
 =?utf-8?B?aHBHQStOZlRDL3ZDc2VvYmwxemJvdkxQM3BjQWQvbDJxeTN0OXJVS1dOS2g3?=
 =?utf-8?B?ZS9DY1RSK0htTFVFc25OK0x1UkxWVktiaDJETjl6SElSMVVJWTVyTC9jY0JX?=
 =?utf-8?B?TEUrOGIxT0lBbDVtdXBDV0lOMFVEVGEvTFQrS3FsNGlvWGJSZC9DbGhiYU5u?=
 =?utf-8?B?THNCQnNPS2tzUHhxYlFsMDZHa0pkbFRWdmkyTEZXZzk2dlFZbDh2M21zQmhP?=
 =?utf-8?B?RWtzZ25haFY3QjRIZk9aRjBpdERVQkRpOWdJQW95cVlDZDVMYXNuS1FvRnZQ?=
 =?utf-8?B?TzJCaEg3QlJScElwRjhhVEFJc1N5bkR4VW9qK1JYeGxjYzNmL0hCY2xRS1hB?=
 =?utf-8?B?VlpJTVVUVlk0MXh5c3U5K0JxTlYrMkpJbTVhcUJJcmp5N0c3aTF2QlZzRTlR?=
 =?utf-8?B?dWt6Zy90R2grZzVSK1FTYUVwZXE2anpwMVlYdVQxWkdNdXlYejVpampZeXAy?=
 =?utf-8?B?MGpKY0RCS1FlZElFa1orM0ZFOTg3cC94VThGZHNVVlUrc1Z5NlpLN25ucmtv?=
 =?utf-8?B?M29wc2ZFVnNYNVAzTG1Zd1V0dFVYeUdJQ2xicklLRGVZRzd5Z0xXS3BXR21s?=
 =?utf-8?B?UUhnUkJJQmFoMUtFbW0xREgyUmVQNFVkWVpMcFhuRVdhUnNvdjZqNW5ZVDdB?=
 =?utf-8?B?ZytUZnZ6RUxNSmNGdUltQnIzUS9zaTBOT1VhS2s1bkN6SnhacG5HZ2Z6b3l2?=
 =?utf-8?Q?hmIokv4+58IwjLuCQ6v8Qp4GNMmH4m9hTSZjw1EaFk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 457eb3f8-f0e5-42e9-1e96-08d9fbcbae33
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2022 21:37:27.0873 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k05bK4fY9f/reEw2VUkvC2spr7O+7A/ZYc4CUMdsyMlN2vgCZCkLa1jV9V4RruhJg5nJQakYMHpIiQD0694a3PZFEmx12Ih9sOAelhGnsCE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3637
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/reset: Fix error_state_read
 ptr + offset use
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

On 2/25/2022 22:27, Alan Previn wrote:
> Fix our pointer offset usage in error_state_read
> when there is no i915_gpu_coredump but buf offset
> is non-zero.
>
> This fixes a kernel page fault can happen when
> multiple tests are running concurrently in a loop
> and one is producing engine resets and consuming
> the i915 error_state dump while the other is
> forcing full GT resets. (takes a while to trigger).
Does need a fixes tag given that it is fixing a bug in an earlier patch. 
Especially when it is a kernel BUG.
E.g.:
13:23> dim fixes 0e39037b31655
Fixes: 0e39037b3165 ("drm/i915: Cache the error string")
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Mika Kuoppala <mika.kuoppala@linux.intel.com>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: <stable@vger.kernel.org> # v5.0+


> The dmesg call trace:
>
> 5014 [ 5590.803000] BUG: unable to handle page fault for address: ffffffffa0b0e000
> 5015 [ 5590.803009] #PF: supervisor read access in kernel mode
> 5016 [ 5590.803013] #PF: error_code(0x0000) - not-present page
> 5017 [ 5590.803016] PGD 5814067 P4D 5814067 PUD 5815063 PMD 109de4067 PTE 0
> 5018 [ 5590.803022] Oops: 0000 [#1] PREEMPT SMP NOPTI
> 5019 [ 5590.803026] CPU: 5 PID: 13656 Comm: i915_hangman Tainted: G U 5.17.0-rc5-
> 			ups69-guc-err-capt-rev6+ #136
> 5020 [ 5590.803033] Hardware name: Intel Corporation Alder Lake Client Platform/
> 			AlderLake-M LP4x RVP, BIOS ADLPFWI1.R00.3031.A02.2201171222
> 			01/17/2022
> 5021 [ 5590.803039] RIP: 0010:memcpy_erms+0x6/0x10
> 5022 [ 5590.803045] Code: fe ff ff cc eb 1e 0f 1f 00 48 89 f8 48 89 d1 48 c1 e9 03 83
> 			e2 07 f3 48 a5 89 d1 f3 a4 c3 66 0f 1f 44 00 00 48 89 f8 48 89
> 			d1 <f3> a4 c3 0f 1f 80 00 00 00 00 48 89 f8 48 83 fa 20 72 7e 40 38 fe
> 5023 [ 5590.803054] RSP: 0018:ffffc90003a8fdf0 EFLAGS: 00010282
> 5024 [ 5590.803057] RAX: ffff888107ee9000 RBX: ffff888108cb1a00 RCX: 0000000000000f8f
> 5025 [ 5590.803061] RDX: 0000000000001000 RSI: ffffffffa0b0e000 RDI: ffff888107ee9071
> 5026 [ 5590.803065] RBP: 0000000000000000 R08: 0000000000000001 R09: 0000000000000001
> 5027 [ 5590.803069] R10: 0000000000000001 R11: 0000000000000002 R12: 0000000000000019
> 5028 [ 5590.803073] R13: 0000000000174fff R14: 0000000000001000 R15: ffff888107ee9000
> 5029 [ 5590.803077] FS: 00007f62a99bee80(0000) GS:ffff88849f880000(0000) knlGS:0000000000000000
> 5030 [ 5590.803082] CS: 0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> 5031 [ 5590.803085] CR2: ffffffffa0b0e000 CR3: 000000010a1a8004 CR4: 0000000000770ee0
> 5032 [ 5590.803089] PKRU: 55555554
> 5033 [ 5590.803091] Call Trace:
> 5034 [ 5590.803093] <TASK>
> 5035 [ 5590.803096] error_state_read+0xa1/0xd0 [i915]
> 5036 [ 5590.803175] kernfs_fop_read_iter+0xb2/0x1b0
> 5037 [ 5590.803180] new_sync_read+0x116/0x1a0
> 5038 [ 5590.803185] vfs_read+0x114/0x1b0
> 5039 [ 5590.803189] ksys_read+0x63/0xe0
> 5040 [ 5590.803193] do_syscall_64+0x38/0xc0
> 5041 [ 5590.803197] entry_SYSCALL_64_after_hwframe+0x44/0xae
> 5042 [ 5590.803201] RIP: 0033:0x7f62aaea5912
> 5043 [ 5590.803204] Code: c0 e9 b2 fe ff ff 50 48 8d 3d 5a b9 0c 00 e8 05 19 02 00 0f 1f 44 00
> 			00 f3 0f 1e fa 64 8b 04 25 18 00 00 00 85 c0 75 10 0f 05 <48> 3d 00 f0
> 			ff ff 77 56 c3 0f 1f 44 00 00 48 83 ec 28 48 89 54 24
> 5044 [ 5590.803213] RSP: 002b:00007fff5b659ae8 EFLAGS: 00000246 ORIG_RAX: 0000000000000000
> 5045 [ 5590.803218] RAX: ffffffffffffffda RBX: 0000000000100000 RCX: 00007f62aaea5912
> 5046 [ 5590.803221] RDX: 000000000008b000 RSI: 00007f62a8c4000f RDI: 0000000000000006
> 5047 [ 5590.803225] RBP: 00007f62a8bcb00f R08: 0000000000200010 R09: 0000000000101000
> 5048 [ 5590.803229] R10: 0000000000000001 R11: 0000000000000246 R12: 0000000000000006
> 5049 [ 5590.803233] R13: 0000000000075000 R14: 00007f62a8acb010 R15: 0000000000200000
> 5050 [ 5590.803238] </TASK>
> 5051 [ 5590.803240] Modules linked in: i915 ttm drm_buddy drm_dp_helper drm_kms_helper syscopyarea
> 			sysfillrect sysimgblt fb_sys_fops prime_numbers nfnetlink br_netfilter overlay
> 			mei_pxp mei_hdcp x86_pkg_temp_thermal coretemp kvm_intel snd_hda_codec_hdmi
> 			snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core snd_pcm mei_me
> 			mei fuse ip_tables x_tables crct10dif_pclmul e1000e crc32_pclmul ptp i2c_i801
> 			ghash_clmulni_intel i2c_smbus pps_core [last unloa ded: ttm]
> 5052 [ 5590.803277] CR2: ffffffffa0b0e000
> 5053 [ 5590.803280] ---[ end trace 0000000000000000 ]---
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_sysfs.c | 8 +++++---
>   1 file changed, 5 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_sysfs.c b/drivers/gpu/drm/i915/i915_sysfs.c
> index a4d1759375b9..c40e51298066 100644
> --- a/drivers/gpu/drm/i915/i915_sysfs.c
> +++ b/drivers/gpu/drm/i915/i915_sysfs.c
> @@ -432,7 +432,7 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
>   	struct device *kdev = kobj_to_dev(kobj);
>   	struct drm_i915_private *i915 = kdev_minor_to_i915(kdev);
>   	struct i915_gpu_coredump *gpu;
> -	ssize_t ret;
> +	ssize_t ret = 0;
>   
>   	gpu = i915_first_error_state(i915);
>   	if (IS_ERR(gpu)) {
> @@ -444,8 +444,10 @@ static ssize_t error_state_read(struct file *filp, struct kobject *kobj,
>   		const char *str = "No error state collected\n";
>   		size_t len = strlen(str);
>   
> -		ret = min_t(size_t, count, len - off);
> -		memcpy(buf, str + off, ret);
> +		if (off < len) {
> +			ret = min_t(size_t, count, len - off);
> +			memcpy(buf, str + off, ret);
> +		}
So the problem is that the error dump disappeared while it was being 
read? That seems like it cause more problems than just this out-of-range 
access. E.g. what if the dump was freed and a new one created? The 
entity doing the partial reads would end up with half of one dump and 
half of the next.

I think we should at least add a FIXME comment to the code that fast 
recycling dumps could cause inconsistent sysfs reads.

I guess you could do something like add a unique id to the gpu coredump 
structure. Then, when a partial sysfs read occurs starting at zero (i.e. 
a new read), take a note of the id somewhere (e.g. inside the i915 
structure). When the next non-zero read comes in, compare the save id 
with the current coredump's id and return an error if there is a mis-match.

Not sure if this would be viewed as an important enough problem to be 
worth fixing. I'd be happy with just a FIXME comment for now.

I would also change the test to be 'if (off)' rather than 'if (off < 
len)'. Technically, the user could have read the first 10 bytes of a 
coredump and then gets "tate collected\n" as the remainder, for example. 
If we ensure that 'off' is zero then we know that this is a fresh read 
from scratch.

John.


>   	}
>   
>   	return ret;

