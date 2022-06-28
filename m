Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 261C655C0ED
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jun 2022 14:27:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A61611A1C2;
	Tue, 28 Jun 2022 12:27:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5DD01137BE;
 Tue, 28 Jun 2022 12:27:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656419229; x=1687955229;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vTlq5GF0ya9SJCWPVi0zlXz/uSHDyowCwVo6F0A4W2w=;
 b=SVr1ji9WDsq0oeNVVssx9eGF99UdRnFywsbNzDigYXrk3cjfjLwerLVc
 9RtHqUcCGg9T3IGWulZZ/btlfSusQZSK+YuhNOgh9VjlWVR/SRoxpdnAb
 hD6HLuvUJaTvKKtKjdD03lKiMKCuj3NuWZ19AOm1/PRamL/wbYB3MHiCx
 NNFERPLM8Of63eZOXh4wUuJ1A8N9JY5FlipGi/r0VWXQ4ExeVBWvC1znu
 iM1HpbNs9E0bEkKilNya4onL9nxseW4tvdbLvA3ZmT1T0UOlGA4wk3O5X
 toaI+ABI6AjQDoz530wtQ7fUNIk73eXqM82x0oxIeHw40y0VKpUWAbcTN g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="343416408"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="343416408"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 05:27:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="917164923"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 28 Jun 2022 05:27:08 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 05:27:08 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 05:27:08 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 05:27:08 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 05:27:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AZd0ZKahms9FYRMXBzPo3b623uT0DP3BixXFg3W/ke7QZbmLmeYhBZMsVvp7u1Zg43FP93bFPHZJRsovr+Bex8lIp4+KH357oAYuJbcSiu7F/OyB9tMFOjvNZ2yllkj0/GgERNBoTPyMTrXHIXXFJarF+g2vpa91kV13WoPHfXEw/RACSSnWOfJ2RAXv8mIvHSpwgBv+QTKK8+D1QnZpOUs48wryy9VaMR7io1jD9DgZY/+86tqa8m5oH8CaMXniAIQVQMJ6DnXPVyb667qxaU2KIZZ7RkkX2hnsouiOWwptbi2ghsbrCss2gMQk6mRB5jxB9Pei1yQKZBCwl4Fv2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/ygWIbttUJFRbU8PSiziOS2nddOt4JVAa9a+iozKVZg=;
 b=LEMo2AQptLV2HSMuQJYtr5g8/w5oChEQ4If2WXYtre7pdtdZxvn+b/wCRQAFaV6c6b+sVSYME+C9l9B1xjYFHflWJ5sDiNmBa1Ep0gGxHN8zDTvR6qoFg8pIE2GZ6fbE7vaOjxVqxDLuc+2LQvSBXfxFV6gqta0t64n0z+0tpAGptQfuvaeW79T8OvBRzZBea4epesMaSiolbya0qU3daqyffH8/A612IGVkjjcoc/0+rHsR7XVLkBVQjFcwU3xsWxHuqD+S5QSVtUWpaPova+vSRc31OlcMJ4FwnOTAb4Oq1RMwwqre52ghkO0otZlwZ+twuIlS5X0SfDpTjqSv/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by BL0PR11MB3169.namprd11.prod.outlook.com (2603:10b6:208:69::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.15; Tue, 28 Jun
 2022 12:27:04 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::49da:18ae:2975:c398%8]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 12:27:04 +0000
Message-ID: <22b1a0d6-35c9-73ba-8115-f7bf6bc72f61@intel.com>
Date: Tue, 28 Jun 2022 15:26:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Content-Language: en-US
To: Matthew Auld <matthew.auld@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20220627161004.70153-1-matthew.auld@intel.com>
 <20220627161004.70153-2-matthew.auld@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
In-Reply-To: <20220627161004.70153-2-matthew.auld@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: AM6PR08CA0011.eurprd08.prod.outlook.com
 (2603:10a6:20b:b2::23) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a799c3a1-17c4-4cc9-59c7-08da590181ea
X-MS-TrafficTypeDiagnostic: BL0PR11MB3169:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w8goaCu91iNfNLR+FLqVpkZgrL3ikVnEZuPu8ajwBrTm0EFRZTQBrcSv7+Ejmvc5F/GrYTXSi/v1nGJpGhFB0H7Pv/LDxoEGopccznvDmAlUngG9ntpWO3Kal/lLxCLhbfMDgilCWHra/UonU9PjsBBD+4ymQU3b1zXTquViaI246LvBUIg9f6EdMx+jRQevTSsBPiQDZTxiJft4VS2EETF0++lGT3lOh/IZZX/KOGrt9Aws63D8AcR7EvLTF9sKCNBrwAN2x5UqSGmLkiDch8m4Lfqb6Ib5oGgf9//rShj4TnjRt8kD9BzN0iWw00veikMIJQ0KUY3KksSUiERs8uWyO0YFEZB7wetniI6BpQdn2rfFR7XH+mMDtyzJL8QWeb6zQa7ktjHT4/lJI6qOHm+eyoONCxJmGNKOaBwSelWRZcDw+93js5j2ox9LJL8p/Fyas7Zye5DgvaPh9A6OKhEllaNrWBC9dYfOM+vCHxHMEoNqfbGg9ZGewD7nePxwxs2f2xtvUfrEJR3rn3FUwPijB4zZ2n5CcEHz/bV3iybiZrJQgEK+wdbHVgDiUxhGha3bjZ7XB1zEwZL4bEF2oWQAz5HWvVqiZ5lBxtJRtqwqFTawb2WKrEomor8KGVbBopr/KmWzs5xQ3TSqi4tZUG13SusE91Iw81EpV8OJ3SL54fDyPDvZeAbxr+Dky/WhP5TUB5TbODbqVG933aefvQtpX+3PbJkPlYMPfC0w3Aes4Q7jrIIuxRGSUhC9WtrEDUDNNUeTszPHEDP8OJLyEw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(396003)(376002)(39860400002)(366004)(346002)(8936002)(83380400001)(5660300002)(4326008)(478600001)(8676002)(66476007)(6486002)(966005)(26005)(186003)(86362001)(53546011)(31696002)(6512007)(2616005)(66556008)(6506007)(2906002)(41300700001)(31686004)(6666004)(316002)(66946007)(36756003)(38100700002)(450100002)(82960400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cGxkV28rVGNJVVNKeXVTWmVwWHRtMTM5dEVBTnhmbTk1QlUxRUxhaFp5V3Yr?=
 =?utf-8?B?WExKM2tnQSs2djc0a256VWNJbnZNdmVYMEoyV1R6NlowdkFQMjllYXVqWllE?=
 =?utf-8?B?TmFBYkIyYlY4VDVSUVZ2R1prZlEzZFc3c3pxYjJkd1NHekQzRkN1cDc3MURD?=
 =?utf-8?B?WmpVOEhTekNZak9mQmRNSTVSY1NsTFlsVnRVSnRkMVFudHpaeU5xYW8yanBV?=
 =?utf-8?B?ZnZWT2VQcFczcVlRWXBpWjhpUk04QjQ2a0dNRnplM3hQeXVuKzRmdmgvTmxk?=
 =?utf-8?B?OXA5eGRUM0pzM1QrdEo5Tk5wdEV1M3dmVmRpdXJiWE5PQWliRlJTbXZHTUdI?=
 =?utf-8?B?V3NKcU1IbXBkVUlWVkNtbElWSG9TcGlocHF6d3VNdTdvdzFGTE16bi94YTVW?=
 =?utf-8?B?VmJiaVQvV3dmUU1tY3FYTjZrSVMwZWRXZHlYeGlRRGxuTGJZSktENmtxb0l6?=
 =?utf-8?B?U2ZMaFFLR2x4c2pRQWhnOGtlRm5DbmtScTlIdy9DV3BIRW5XQ1lnN0crSW5W?=
 =?utf-8?B?REQ5MUV6bVZ2V0FCWHNhak92SnJMY3Z2c3FDTWpMTW53NUNJTFAyVXVJZmgz?=
 =?utf-8?B?NzhmajJHZFJxN3g0NDJFUys4WlM2L0hOT3cyNUdDVGljQzVieFJQZlNFaXpV?=
 =?utf-8?B?VEt0NW9YWVJYdGZJb2M0b1dQRFZJRnpKSkUrYXdmK1djVzE1NE84L01kNCt1?=
 =?utf-8?B?WUpjaDM3WE5STDU1QStjMWVVV1Q3c3E5N3lpQUhtcXZ5b1YvYksycXRJakZL?=
 =?utf-8?B?cGt2WHV1eVVOWjFkcEptQWhYQ1JUTTZRd2t2NnRYSnZNcUx2V2NKMUgvNERn?=
 =?utf-8?B?cWNEMGIrZXpaOThyRFRvZzJOU00xUlJucDk4djB6aFJFTFJjSDFjNVQ4Y2RD?=
 =?utf-8?B?QjhmTDlneUpmM3hybTlacU1MRi9Oc0JvVW1JVUZGbHhoNnVLM2xGZFBSQkVF?=
 =?utf-8?B?bTE2Qk96S3Nud0NWRVV5SlF1bnVkQ1p2MUdvK05zY2ZYVVhCZGQrUjV6bzFw?=
 =?utf-8?B?am0zRk91ZTJicU1DWEJTcC9md2lmZ0JVcHFXUWlreXI0RGFVcjRvZ2hmcEo4?=
 =?utf-8?B?c3doZE4yUmNzdFUzUzN5RHlnOURXOEJ3cmpyTUpmZFp4dTVWenVLMm04bW5C?=
 =?utf-8?B?ZmNLcGJ4TjhOdElNQkdhOFZKei9oSWszcWRLVzFneUQxZFQ2LzFiZ25DOGdK?=
 =?utf-8?B?WnAvWlVaZjZwYUcyNWgrMll4Qmh3OFgycFBmQjRnL0IzRHRVdjByNitUS1Fy?=
 =?utf-8?B?QUJyS3dHQm5KV2NRNTY4WFNESm02dEFqRURKTHFuSTQ1cFlxM0QrVmEzZE5x?=
 =?utf-8?B?ZkhJem1wOUtGUGkrNXoxUVZVRysvaHNpdVQ0MlQ0VWVJRHlMQ1hGL2xibFFQ?=
 =?utf-8?B?bUxXMllIaDVWZ3hsQS95dU9GQlNMRUhQRFIxVXo3Njk1Ynp0RG9aWFNTQjRx?=
 =?utf-8?B?K0s1Vzl1UENIcHV5WjhWQkVIT0NoQitDaVNQTXJ4cmQ2ZVN0anZRcTg4UVM2?=
 =?utf-8?B?SGxCSkZGODhuRUpQeFFkbjErOUJYVk95S2JhZy8zS0pjT3Y0RkVSNkxRNEJi?=
 =?utf-8?B?T1NsNGV1UmkvRkFyellCZWNhTDZKWTBweFNzQkJNeGpSTkgvQlhGTXVZNU81?=
 =?utf-8?B?QVl4cFFSUmpLeVRvQkVrS1poQmlCam90L2NTUGFwbnFTVkpqeFlLN0h5QUJs?=
 =?utf-8?B?TUdPQnJqMmtSaG1GM1lTUnZWc2xqQnk4RGNpWUtmY1EvVzFNNzJXcThhTVpM?=
 =?utf-8?B?MUM1aE9UcVJFNGpiKzZRQ2I0ODNETFUzUzJaaWdsSlFnK3J4M1JaaUNqN0xB?=
 =?utf-8?B?aU9PNUxhY0IraDQ3WHNRUENabzZQVEY5cllSb2pGR01jbFp6MUFzN0RFZ1k5?=
 =?utf-8?B?UXl1UFFUYlZjYWdDMFVlTkY0TGo3R2JUTE5JWEdFWkt2bW54UzlidEZtcXBD?=
 =?utf-8?B?cUJ4ZWpyMno3OTdPcUlETU5UUjFxV2Y4SDlXR2ZDZmZDaXZ6VlYrb2xLS2hk?=
 =?utf-8?B?TnFwQy9ITHNCdWxuSExaV1k2dEhWUk1zZm4yWXd5V0lLWE83V2Q3UlFJZEh0?=
 =?utf-8?B?MW5vbitzUjlRYU9wVXVwTUVQR0tVTkpoNGJFWVpGbkJhRk5CSzl6Rnd0TGt3?=
 =?utf-8?B?a0FrQjh3S1FDUWZLOXAzbDR0Rytra1hiRmFhbmFTM2E5T0t3bDFvL0xRWGdv?=
 =?utf-8?B?dGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a799c3a1-17c4-4cc9-59c7-08da590181ea
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jun 2022 12:27:03.9242 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7zpZqvfiiCeIG6PaCreQALxrLZKn+bBCAY2aDwzwZz/Q11CO3+zBn268nbX3S4F5CpwZDb4jt+HYi9wMO5HY+p/o0q6kI30CMH/DmPGSnng=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR11MB3169
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t 2/3] tests/i915/kms_mmap_write_crc:
 handle missing gem_get_caching()
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

On 6/27/22 7:10 PM, Matthew Auld wrote:
> The kernel is meant to force the caching level for the object to
> CACHE_NONE or CACHE_WT when first scanning out the object, since the
> display engine is not coherent (assuming userspace hasn't already done
> this). On discrete we no longer support set/get_caching, but we can only
> do the scanout from lmem, which can only be mapped as WC and so should
> always be coherent for scanout. Adjust the test and ensure it still
> passes as expected.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5303
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> ---
>   tests/i915/kms_mmap_write_crc.c | 11 +++++++----
>   1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/i915/kms_mmap_write_crc.c b/tests/i915/kms_mmap_write_crc.c
> index b17e5fdb..da7312d6 100644
> --- a/tests/i915/kms_mmap_write_crc.c
> +++ b/tests/i915/kms_mmap_write_crc.c
> @@ -78,7 +78,6 @@ static void test(data_t *data)
>   	drmModeModeInfo *mode;
>   	cairo_t *cr;
>   	char *ptr;
> -	uint32_t caching;
>   	void *buf;
>   	igt_crc_t crc;
>   
> @@ -102,9 +101,13 @@ static void test(data_t *data)
>   	igt_plane_set_fb(data->primary, &data->fb[0]);
>   	igt_display_commit(display);
>   
> -	/* make sure caching mode has become UC/WT */
> -	caching = gem_get_caching(data->drm_fd, fb->gem_handle);
> -	igt_assert(caching == I915_CACHING_NONE || caching == I915_CACHING_DISPLAY);
> +	if (!gem_has_lmem(data->drm_fd)) {
> +		uint32_t caching;
> +
> +		/* make sure caching mode has become UC/WT */
> +		caching = gem_get_caching(data->drm_fd, fb->gem_handle);
> +		igt_assert(caching == I915_CACHING_NONE || caching == I915_CACHING_DISPLAY);
> +	}
>   
>   	/*
>   	 * firstly demonstrate the need for DMA_BUF_SYNC_START ("begin_cpu_access")
> 
