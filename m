Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAAE55C029
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 12:25:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E4A11345F;
	Tue, 28 Jun 2022 10:25:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0385A112E1D;
 Tue, 28 Jun 2022 10:25:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656411908; x=1687947908;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+kofpgJ05w7TxKByrGX3BVCYZ0HA2jw8GT+kb4dgIGY=;
 b=Wpvg9UklRZ+x2H2FLBx47cbWzW8PSi72LUa+IduJG+02kVlEtXotFxnA
 M/p8ojuGCwCBhACzF2EBEiWSh4+E18SfEMavtDn728/6LL1lZDfKGP7oj
 0IyFOc9uoGERj7pR1pGNy2dWlZ+cTihVcwe+UNJxyIlAGvJZzkBz0aDRk
 WwFyEPIsMWFk7eHDG1Q5wVf1eN8Qerk9Dml+s9XXH1/2yyHF1nITywMma
 GHzIDGhHrHCb2o/EFjOZ6MXKL7/uZzXiGZ7dQ3B1xYBMFo3NYweQAfqyt
 fPyKAJOcLejfvlnJskS10H4sCl0JoIdEUOcuSo3Ezrg8q/4rMIW+aB3XI g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="270451551"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="270451551"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 03:25:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="540444949"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 28 Jun 2022 03:25:07 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 03:25:07 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 03:25:06 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 03:24:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hLSISK3mOAKVBNEPupN6pk70cOIw/o1Thcd5W7pKw4gfRaumcd2KwAehYwd/I/9dCZSemcV68DRYx9VeoXuJPhVPoscoFWbg7PHSHfEkwpVEPjM9rDAUoNZX9Ruyyo8Ke82RZxfeyEfzD2pFkwPNWxeicZ3fP4xwXkBNdCLUQckMsH3urff12zYr1w8PhHBKqmNfS+STl55RXAKY6eGOw6/PvjiZAxGN1U6v+IteWTSF6PkB8SIthljGR8Edalgn1r1wI3gY7CmqYfotgR2jhR2Dx2vy0mS8EUEogPTPXxDd9JALv4z3bgxkszG07t0RG49jOxbzR31HpTfwl80W3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Na+QyLBsj9ZR9JvAe3WwPy3ZY6kBdO/Q+ZXmlfQ90Ng=;
 b=GNA++JQmOzonOhJxG0JsHfQ1nNowp1Gsomw+2PPzaB3qS/isdeeqO/Snc6r6qdAxLioVni5DgoBEKUbrV8FcRrw1GbGK87rdL99NId2c4YbOLNkNdBTwutg7wj2bHX3NXmEsKfKf7bxJ8YjvfKNi4Uouct9ibO/FVynsEu58WVduQD7oqVLNEZ4HS0tei8zR7VoNEuDM5zAhlRYP4ucmq7ueKr+fIKA7PNcLus1LKo4qrlSwYBc6NOzkn5WJjhE9gc564yus6HFT5+pPphTGiyJXusbH/f60iU63vRDdMUc/CqKekx1i9ZLHJS4BlDh8nnEbylaMZ+tNTqEHnrmzJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by SA2PR11MB4809.namprd11.prod.outlook.com (2603:10b6:806:112::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Tue, 28 Jun
 2022 10:24:49 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398%8]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 10:24:49 +0000
Message-ID: <edb8ed97-fee9-1e86-9339-979fd97b3f95@intel.com>
Date: Tue, 28 Jun 2022 13:24:36 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20220627161004.70153-1-matthew.auld@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <20220627161004.70153-1-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: FR0P281CA0007.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:15::12) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b62c5937-02b3-4176-87e9-08da58f06e0f
X-MS-TrafficTypeDiagnostic: SA2PR11MB4809:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HSsj55aaH3VczTE08v4peWONduqgr6hrtezsyC31PXuMZDSlTl2ujBN+fRlQSIBmjF3g7OhjsIYdLz6U1Bq8mPyFzSYlBE3kqZqE0UDYx3Oyp0/E7PgWtoYjSOpHyGFLGUpYkYo9X39UgVuH1EPyVrYVf4lxN81AQS5pKPAgqXH7sxsadxuIUzIaAsA/O+9WebEI8AOsYg5AubnfXdFWXkTAHJFpxc7MUsbqB6fQZunD8iQ4PgtZ2updPHu0SFGwkt12NrlO/zr/mDUbMh3cYU2wBt0EBMW5cyh9OO+4C/t9+O9+XpEolGn8IL9rfpKrC+8YQrXUn5vr+yh+NgnI/W5FEMCb5NVx9E6DuzYa4pp+B8VffMNOJmkPBYWJCqxnE3NGKnErAGcwF+Glhm7sKjoO1v+i5Ts453dMbQSCJWJfaCwuAmATnJq0vzHZFUc2/Jv8nE7NI+DF6HHLXnD+C+s4531WNgNhYqF4B+4WAQSlOHeXHtt9xVUy9coIHVvg3eoqBiFO1TifkSDSEady2FPaqi/zlteEufcP35Ryl37W0Uv0tmNrbNl5nGni7E1DEoWPND+iBRSVu6ctf82kCOIuWe4fWCtWzz0r2Z6GNpCpY5VZHASGZGfEsS3Gco92A1EJC9PeFrzkHCQGYRGpEQB9sFuUZBbkwBSLAF/Y885b9iZa4eMoO+0C47bxAjvgXnoJG1D5wKeYhFY6zYU6diRp89SiNAT+3Gr/Qvn7brBdOz70XslWI7vSWbGI2XuXJ7ry/1Oz6C0jRnK9AkmYj0BjmI6hVEWjAlKaeoJ/L0z0cL8zgjrGX/nplrHBePih
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(376002)(346002)(136003)(86362001)(316002)(66946007)(5660300002)(66556008)(186003)(66476007)(4326008)(31696002)(82960400001)(8936002)(38100700002)(8676002)(450100002)(6486002)(6666004)(36756003)(26005)(41300700001)(478600001)(53546011)(83380400001)(6512007)(31686004)(2906002)(6506007)(2616005)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFJmczVXVzIzbDlNcGlITHZxRmswTEV2NVVqRFp0aFMxY29WMG00UFlGaTM2?=
 =?utf-8?B?UC96UkEvZG85V1o0aUF2ZENIdU8zZTRCMTFjZDJER1BhWHRUSW9yRFUySjBi?=
 =?utf-8?B?WjJ0QW5rRU1BSWxUL3VicFd4QWZjaDJsNmtxdk9mdkFXVm9jVjBTWFhYUVBG?=
 =?utf-8?B?Q2VqVDV3cFgxQ0pRcVhOaGNCUmdXZy8vc3RDMnkzTjhZcExyNXlEcEVyaHFi?=
 =?utf-8?B?K0k3blpoNlpNY3pWd2hCMjA4ZnVPUG5MQ3NicU9nYzhqenpNVEduQVRHcElo?=
 =?utf-8?B?bXpVTlZSUzhQM1hVTG1udjBSbkdDS2dObFpiVndrWDE1SXFTemVjR3JEUloy?=
 =?utf-8?B?MlJFWnNXZ3pVQkRtcnZ6NUxnMzI4cjh5Q2VYOUJreENUeW1TNTQ0cmRYK0Rm?=
 =?utf-8?B?TmZCc1d6L2dtMFlOWjEyVThxR2NQWXlZc0NncmZlMWxDZUdyQS80dXlGZjFl?=
 =?utf-8?B?NUV3ODcrV0xGbVlEUEFTRmRYL29kaER3SmdsTExWTC9HaFlRN3NnS1IwZlVo?=
 =?utf-8?B?VEFEVjgvdm8vK2ZDM1RzYUoySTFXTU5Jd2QyUmVYa1NESkVrREdsWm4vZFNt?=
 =?utf-8?B?OUhma2dRaWpwSDQ0enZYSit5dFNqZTZNNmRxbVZueGFFV3BVek9LN2QzcGhV?=
 =?utf-8?B?QWdVakVtc1ZFNXZ4YjNlWm1NcUNwUEFTcTNSc3hMM3hFaVR3VDZmVzRkREtM?=
 =?utf-8?B?bU5BU3ZDY3RiMTZiL29mWEhiYXRscXVmcHYvZUx1U1BneFAvTVVjcXRSUG9l?=
 =?utf-8?B?VnR4WnJiUGV4b3FmaEZJMEdUcll2RmVUTlFQZnJBNmhwUHhzOGhTLzFxUWhE?=
 =?utf-8?B?c3hoOWd5QXNSQ0pRclBvS1ZTQ2hobjJpcDRkRWgrQyt4MHNXYzFpQk5FT2E5?=
 =?utf-8?B?YmlEZVRkUmxEVy9UUEpVZXJXUnhFeXA2a3UvMytxK3N3TWlvN2tOYllSb1VD?=
 =?utf-8?B?NGhacEpUYmxRcGd5Z0tVQzBmdW54ZktLZzZKSjNJbXIxdFNOZzM4RkROaEV2?=
 =?utf-8?B?NkFoL3NSdWMydUluNzZzbkNCZi9peUUydlpid04vcnZrZytFQlQvQTBsU25p?=
 =?utf-8?B?YkpmWkkwVHB2UWhYTTZLTnY1Vm5PcWo0S3hjdFZ4V25vejNwaWF1cTRYZmVJ?=
 =?utf-8?B?eFEyVktZRzN0bXAwS2tYT1ErU2NGN3dMOVovTVc5UG5MZ3pWVjRoNFhNbUVr?=
 =?utf-8?B?VXJZOEZOMkw2d0VMV09ESVFqUlJUTzJzTlBna0NvUGZTbDlnOXhZbU10b2tx?=
 =?utf-8?B?V2FoMkQweVM4RmVaVG9ya0VueDYwVzdNVGpWQTg1TDU0TjdUbGtucW9LWUtU?=
 =?utf-8?B?TFRXRXBBRERYYmxzWGV4VUNDZFlRNDJhSmFWQWpydmF5QmszOUxCekdKQXVk?=
 =?utf-8?B?YUlRSXlrSGNZUzBrd2JacUhSbXhVNnFiMFZJbllZZkNjWHpSQ25zekM4NVlK?=
 =?utf-8?B?S2tGd01IZU5ISnk4Y2JKSVBwTXF6bjUzb0FNUDhPSnowektDRWFSZ2tBa3FN?=
 =?utf-8?B?R3VRWlcrdU9PblNhcVRzY2dJbEo3UzdTL2txUzhNbXgrK25jOWdpUHZFK3V5?=
 =?utf-8?B?NCtlU0Q5b05uWURuYklEMk1wcnpESVpRM3lNS2FsV015c2dlcExTcFRmdEVa?=
 =?utf-8?B?MTl6cS9Sam9TdkhNeHpjc0tNZjRBbzQwRVhrVmQ4QkY4bk1EWSttaWg5YTBu?=
 =?utf-8?B?SkR2NUszalV3Vm81cm0zaDZIT3F0UmVWZWtJU0dxRGJoSmdEMXd3dVV1U0lq?=
 =?utf-8?B?RFNGZldqaEF1bzQ0czFNN254UDJkLzQxV3NPL0Q3MFp2SCttM2VZVFRjT3Nv?=
 =?utf-8?B?UDFMa2tzcTc2ay9hUUJBVHZtWGl3SWZYd2xLK0dHM3pmK1I1eG1nbFNGb0U5?=
 =?utf-8?B?WUdKRVdwbmwyTTlPcnZzTEpZS3NqOUp3RUlKTFJBbFpYeXdYclFMWUJjNjBN?=
 =?utf-8?B?b3U1VDZWaFJ0Q3dEelhwTm56Z2w0Q2dWMUo0SjRIaU0rQjdMaTBHMlZ6VmR6?=
 =?utf-8?B?YmNvQ0JmSURVL1hqT0dUMUhGa0tCU20xWDRSYTlUZXV3ZFA3NG9PRXNnRlJY?=
 =?utf-8?B?aEp2OERiSk9DNWp6aEpUZUZaOTVaSVVjN0pKZ0hLSXIwRXp4Y0pCTjU5Rytp?=
 =?utf-8?B?SUN5dnUybHJQT3RGY0pad2treVhUWVVmVkcyS1JTS05VMVZadTFYb05Wem9H?=
 =?utf-8?B?ZVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b62c5937-02b3-4176-87e9-08da58f06e0f
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 10:24:49.2003 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C3zIS8WqkLjTJCNC395kDr6z5SjlCkAiQlaP9ppLOBfpHVj8sawKLhEzXUMPh4nmjH4BiwnDxe8TrLj4AgXF17bnOdptE4JVuMOEhY5olWI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4809
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 1/3] tests/i915/gem_eio: fix uaf
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Looks good to me.

Reviewed-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>

However, the use after free build issue did not occur only with the "$ 
meson build && ninja -C build" build command guided by the igt 
README.md. How did you check it?

Br,

G.G.


On 6/27/22 7:10 PM, Matthew Auld wrote:
> ../tests/i915/gem_eio.c:277:20: warning: pointer ‘ctx’ used after ‘free’ [-Wuse-after-free]
>    277 |         igt_assert(igt_sysfs_printf(ctx->debugfs, "i915_drop_caches",
> ../lib/igt_core.h:667:20: note: in definition of macro ‘igt_assert’
>    667 |         do { if (!(expr)) \
>        |                    ^~~~
> ../tests/i915/gem_eio.c:274:9: note: call to ‘free’ here
>    274 |         free(ctx);
> 
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>   tests/i915/gem_eio.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tests/i915/gem_eio.c b/tests/i915/gem_eio.c
> index 913a21f9..6cbae6eb 100644
> --- a/tests/i915/gem_eio.c
> +++ b/tests/i915/gem_eio.c
> @@ -270,11 +270,11 @@ static void hang_handler(union sigval arg)
>   		  igt_nsec_elapsed(&ctx->delay) / 1000.0);
>   
>   	igt_assert_eq(timer_delete(ctx->timer), 0);
> -	free(ctx);
>   
>   	/* flush any excess work before we start timing our reset */
>   	igt_assert(igt_sysfs_printf(ctx->debugfs, "i915_drop_caches",
>   				    "%d", DROP_RCU));
> +	free(ctx);
>   
>   	igt_nsec_elapsed(ts);
>   	igt_assert(igt_sysfs_printf(dir, "i915_wedged", "%llu", -1ull));
> 
