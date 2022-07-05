Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2325669AB
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Jul 2022 13:34:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A27C112D62;
	Tue,  5 Jul 2022 11:31:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36E9510E00E;
 Tue,  5 Jul 2022 09:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657013345; x=1688549345;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k4HU0tEf1xZYZKc13Fi0QBgYxB1OhIW8RM3e4v2H6BQ=;
 b=A3cnY4CP1t5dY2jMiiCYPKjNymYI5Z6/0ztj3blF9Tt6Zk/nh3VVjeTr
 VOgBAvyIQ7759LiJTp1PcmXe/FUSdeomuXS6d7kV96aLGB18CtFuuH6KK
 WB22DClGxcoTHUoC978NmVxclTd7k3BSnKV7IZfiGhDdB11EdXFA9r4Ln
 jx6snmRZXqVw2tu06hp4gnt7GUQh8YYfOs+hx7vEU+Bem7dZM5/gG2Jdd
 pZ9f2qJOyWM6AcG/X2LvA1VWbirCs6MtrT0O0fWguoW6UjBKUtRnyuc9y
 oy9GNmTiAOyhNlWw8Y9gsPHey11SkTvvYGCZdx9hDQO0ubCWV0RITIdN0 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10398"; a="308844183"
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="308844183"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 02:27:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,245,1650956400"; d="scan'208";a="719662944"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga004.jf.intel.com with ESMTP; 05 Jul 2022 02:27:40 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 02:27:39 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 02:27:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 02:27:39 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 02:27:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aRmxIhU0x90iR3DeSPHFH/jWPDLpYsSm+0UZwFS6Go8L5i5SerQo0Ta4R1S51X4kUNeBU9093Hb0oj0ucAj6b1Sh2OmfnrOB1yyvvZh3KTEWEaHU0URNxy7H/VdwZcKE2neoN7CMXiaRJxoUpi/VtKTEw3blPAEzrASN4O8kJoAVzsrWhzMSX3yrAB6RDq513Y1iwUdS8ZAOaBRej3mKVyJT9Tn0qcbQ/ugY/ynr2V1YZ8prOMbMlsoFp2+pnmKQmjwW7CcGPpScya+tJ825HTvC0rhtzWnQUQSEBR1dTLq+ZPcSZOo23xDtE7I0kviujHDz6mpf4SVB6qltvlg3XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1NHggODHuTvCGCByaGza+69WGRM3zz1apdJbAsrKn1s=;
 b=TdmKFfv76iX9tnkpJftOaYlLccm+ZlhomTNjSt32lwaXo1bz6iJ4zLNAoV73tInKNDJ1nNsuJWwStgPPBJSiLkCROATatWI6S4KMnV0R/EvafTKBE6b07c8sgJUl6+4hjdXJza/3BO80bXAj8HY8fldXDdpRfu+Wvr37jxzb8cCdn0Q/wlA7tL+FHAplIHRKcSn68C0tUKG5w/rlvHV0i4Z6u2nhYONbkOjnfbdN0qpS0tnMpm2uwg6liEyk0mmFSAGbw0YTuQ+divQWZ/3AiwK5vLi+SJcBtzJ1t3pE+bVMdwStJilngo0o0eKdwMnSvNAUnqGJND0g1KpTI3sV4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5690.namprd11.prod.outlook.com (2603:10b6:610:ed::9)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.21; Tue, 5 Jul
 2022 09:27:36 +0000
Received: from CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::f887:8e4a:3a5f:f23d]) by CH0PR11MB5690.namprd11.prod.outlook.com
 ([fe80::f887:8e4a:3a5f:f23d%5]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 09:27:35 +0000
Message-ID: <b3935ec4-c239-0db0-33b4-9de43bbf7965@intel.com>
Date: Tue, 5 Jul 2022 14:57:25 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-US
To: Arun R Murthy <arun.r.murthy@intel.com>, <igt-dev@lists.freedesktop.org>
References: <20220628110409.768308-1-arun.r.murthy@intel.com>
From: Karthik B S <karthik.b.s@intel.com>
In-Reply-To: <20220628110409.768308-1-arun.r.murthy@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0066.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::11) To CH0PR11MB5690.namprd11.prod.outlook.com
 (2603:10b6:610:ed::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bf36a3d3-15dd-4fe9-3a00-08da5e689849
X-MS-TrafficTypeDiagnostic: MW5PR11MB5859:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C7ALNhaT0hoVTBPo3lI2mN99HytDZQFCW+uBwHwKJK8AlhRpMciRSE+cv13eGR5e9oce2MXhrCZ+Fu1FjC2+00YjlicIpbKATaaMSi61CWSDYoOHA7gYp59ubAmDENpB3H+buieyqhFsMo6eGy4fiJ0rVRjc/PTRztHb2Xl4zQa1Zkp+2H7niFDzdFR56jQPX0xhNis4fPAQbuU7N27XmTBZ9Ri9uot8fLWzm6JOqSTx0dwXEXF7piI3Dmx6+F1hw53WgXvDoJjMX42jpmpLeugekuLq36W09y40dvFqILsuI/LotKUhYbE8HSp8thivuFYFK5jY4gCIHNMtvl8HF+TP4kcw4Jb/ms0JqFxROrRgQg7VSXtEW2wJ37H9sVpYfoYQZXJA8PsjH2HLrPORsbV770h1MaLwtXyFHoj3c2k0B0bwaIi2MzCJN5pJ7BJQBYcWi/MzF5Kl1kUAPMQDyDD0afTAZNpqb5PGC7PMauhROHNW/H2y5TVRvlt37FchCSL8xr8+QtI8sqyz0IPz3P8nMnvN3FAGJ8CBnzbr7R+H/Owa5RiWenhZstyEX5kj3SsjI0+hPHYrB86RL6luD3AsCZoEx4Li/uCMlHTc2y99t0TpTz3v0c80wGrv8AqHXKpqLQ2O7GbB2l5djub1MBUHLqkG1st+9JcmXxhfZ3uvqG1IcVJibEfVa0XVGFA24r+Nmvndld0U0G3Jj17C5irbp5Kz0vaPRYqER2f4OUAh+zi77BYSo/lGiCGjHcVUaq56jwsRMPr8nr5WdvjJQPKAcKEPMObmVXx6bMMtkSx+PgaoiGpfUdLsIAHXWF2hoqWBagknnQTykh+9UtCnejb/nzuT0b3m3ktan6E9awo=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5690.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(366004)(396003)(136003)(39860400002)(346002)(8936002)(31696002)(38100700002)(6486002)(86362001)(478600001)(66946007)(6512007)(4326008)(8676002)(66476007)(66556008)(82960400001)(5660300002)(2616005)(26005)(186003)(53546011)(55236004)(316002)(36756003)(31686004)(2906002)(41300700001)(6506007)(83380400001)(6666004)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cTNERGUxS0RtK1h0MW1yZzB6VGRpQTEwUUQxb2lrcS8rWGY2L0hYTXhpVGxE?=
 =?utf-8?B?OE94YzFtQzJUc2d0S1pRRU5UelBJMFpYYThtWTlZQWJ1MjYxblVvbzdCSGxr?=
 =?utf-8?B?ZUdNMVErRUNjcTdJSGZBY052WGlxbXcvMjI3SlY0RDZtQ21ReWxkUTYyYXZo?=
 =?utf-8?B?SmtZV25TS2svK2krc0gwVmVjRndaODN3bWl5OEJnclNURUxHTW16dEdreEd4?=
 =?utf-8?B?elFCZ2NBZ01Mc3d4RVVEUWt3a3dlMHJBOVl2a2pYSVVrbmYvMXdtMVVISGpG?=
 =?utf-8?B?L3VydFE4c3Nka21PWjFjc1lHaU11M0ppYlRsQWNwQVM3RWtNUnZKUUkrUytM?=
 =?utf-8?B?cThQTzZWMW1iNURWdThxR1hRb05zS3lrdHlQU2pJSXV4cC9TbXZ1cWV6ZHl5?=
 =?utf-8?B?bFBXZGJsaG5BV3ZRd1JGMjF4UWxoTi9xeDVhQk02QjFydG1XZC9oSWZWdzMy?=
 =?utf-8?B?KzRuWmZiVEJTeDkyQmtzb3hOb0kwQkY1aGEwUHRnNXYxc1lWVE5nVzNKdm9U?=
 =?utf-8?B?eHB0VGJCNHZ4Y29wOU9SR2c2OCtBQXRTbHFTOS9Qano1TDJUWHBwNFJlS0ZW?=
 =?utf-8?B?aFM0MnVMU2dpc2hQOGdFN3B3NXplQy8rcWlESTRrMXcrOWxoWERFaDdibUtC?=
 =?utf-8?B?YkVnMkticmJCeU8yZlZvQnhQekZQbm1lN05La1dJbXpwaG1LcWhMVGNOT0V1?=
 =?utf-8?B?NStIZ2JPaHNTQlRha1NnSWxBSTJ4ZEIwSU0yRUczS2FOTVppOVhQcWRQVFg3?=
 =?utf-8?B?QTZYcWRvdUMza0pxSHhUazcxK3JwN3hZYnp6a2RMdjRBQmtPdmJobVdRSkk5?=
 =?utf-8?B?TUZTR3dXVm9CdERwVk1IdHowaGZSRnpBa0xNYlB5Z3cvM2N4dG4yYk5MRGU3?=
 =?utf-8?B?SXptMzVsWEhTQVdqQUl2WFhPdTBWcmJuS2dVWlVmRlBrMklndG14NmVReHZM?=
 =?utf-8?B?YUoraGVqSkFqUXpVQytYQU1SQnovSjVUMHpOZ1Z0R0RUKzA2L21qdjk5bmhu?=
 =?utf-8?B?cHQ4RVJMa2lZdk8zaExLeG5sd1dabGp2UHlOdE5qeGlDdVRibEFLcEJaaUt1?=
 =?utf-8?B?ZXJYdC9zbVppK21POGltVnVBK2wzRG1WUmpOdHVNOUw0YVR4VTJWQ2loT1JK?=
 =?utf-8?B?dzdqeG1jM2VHV2RWbkoyRWY4VXFrbnI0M1A5NG9YR0tVMlF1am9LZE50Qitk?=
 =?utf-8?B?MXl3N0N0V1lOai93UDhjUXJqQ3Y2ZzRDV1BZTmtONms3eUtzUittNnBseDQv?=
 =?utf-8?B?eUJtVnJlbGcrN0xlRHEvcGdBRlRYdUFhU0ZGWGoxQ3FZOWhuZVdCRngyTHhu?=
 =?utf-8?B?YmVOcVF4UTdXNjhjMzRXR1pLWkxWMmJZRDRMQ1RmbldUWnNvajExdVR6M0kv?=
 =?utf-8?B?OTB5SmkxS0ZqTXU0NEpNYUJCSVdKRnhtZ3dsS0hEVGIyNGNWcWtCb0FZRXhr?=
 =?utf-8?B?R2gyRGVzenRyNno4THZzTW12ekZTL1RUWW5qYithb0l3RXpLTmg0aDBYNnFQ?=
 =?utf-8?B?NzZNVldrd2NyRXJLekNjYU9OQTNMQ3BVbmlYOUF5dFpuWW40SG51NU1CNGlk?=
 =?utf-8?B?OW9lUHBTajNHcGptTDg5UHdHOWpLeFVzMU5xRUNNeGRUbGVXaWxCSFZscEZY?=
 =?utf-8?B?SmdpSjlkZ3VHOTdJU1AzcnNULzV1L0xPZjFXR1RVak9ZSUdZTUo5TDQ0SG5L?=
 =?utf-8?B?Q3NoaHBWNWpDNG81KzVaeGlBSHhta0tCSnUzOVpFSE5iWXhFYmJrVGVQSDlS?=
 =?utf-8?B?MlRBL0w5OEoxRHVOVDN0RHg1bm9sNlczS2NPemkvOXh2YXZEV09YVlJ3ZGdZ?=
 =?utf-8?B?TGFhd2swMStGbThqN04vSzFsam9DQ3Ntd01HTVpOOGtIMFlaVEVzS0dIOFFP?=
 =?utf-8?B?Y0c4L21qUnBxZm9GZ0xrUFR0Ri9Ma1ovTlNYRFJBQTNMRFovV1hVbFhJNWp4?=
 =?utf-8?B?ckpSSnAzRXFlYXNGdFBySys4OFhDYjZxNkZQVVhTMEtEMWF1bkdYZHpIZmhi?=
 =?utf-8?B?d0hYSWpjbWZiSHRWZlpCSnZseWhPRGxiRVZKTU1XKzRvL1V1eFZzaDRTQmg0?=
 =?utf-8?B?aWlYaWNuTTZ3cWZ6c08rWlRoYS9FUUJ4bCtYQlJyWVJQanZ4UVZUQWM1Zkp4?=
 =?utf-8?B?d1hOVUhaL1hBbDlGbjJtL0UzUWE4aU5UQmptbWl3MEFCR2xrNk1WdDhGZFVo?=
 =?utf-8?B?YUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bf36a3d3-15dd-4fe9-3a00-08da5e689849
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5690.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 09:27:35.4317 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1KZqInNh5GI9+NSqCzTXxpGMoBvE5VfFfOyvQbdntmfkgoUVL+ENo68NlanwlTfQ9IGsiRjt2bRpP9fK86B19A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915/kms_big_fb: trigger async
 flip with a dummy flip
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
Cc: intel-gfx@lists.freedesktop.org,
 =?UTF-8?Q?Juha-Pekka_Heikkil=c3=a4?= <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 6/28/2022 4:34 PM, Arun R Murthy wrote:
> In oder to trigger the async flip, a dummy flip is required after sync
> flip so as to update the watermarks for async in KMD which happens as
> part of this dummy flip. Thereafter async memory update will act as a
> trigger register.
> Capturing the CRC is done after the async flip as async flip at some
> times can consume fairly a vblank period time.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>   tests/i915/kms_big_fb.c | 29 +++++++++++++++++++----------
>   1 file changed, 19 insertions(+), 10 deletions(-)
>
> diff --git a/tests/i915/kms_big_fb.c b/tests/i915/kms_big_fb.c
> index d50fde45..6caf3c31 100644
> --- a/tests/i915/kms_big_fb.c
> +++ b/tests/i915/kms_big_fb.c
> @@ -465,7 +465,7 @@ static bool test_pipe(data_t *data)
>   static bool
>   max_hw_stride_async_flip_test(data_t *data)
>   {
> -	uint32_t ret, startframe;
> +	uint32_t ret, frame;
>   	const uint32_t w = data->output->config.default_mode.hdisplay,
>   		       h = data->output->config.default_mode.vdisplay;
>   	igt_plane_t *primary;
> @@ -519,7 +519,19 @@ max_hw_stride_async_flip_test(data_t *data)
>   					  DRM_MODE_ATOMIC_ALLOW_MODESET, NULL);
>   
>   		igt_wait_for_vblank(data->drm_fd, data->display.pipes[primary->pipe->pipe].crtc_offset);
> -		startframe = kmstest_get_vblank(data->drm_fd, data->pipe, 0) + 1;
> +		/*
> +		 * In older platforms (<= Gen10), async address update bit is double buffered.
> +		 * So flip timestamp can be verified only from the second flip.
> +		 * The first async flip just enables the async address update.
> +		 * In platforms greater than DISPLAY13 the first async flip will be discarded
> +		 * in order to change the watermark levels as per the optimization. Hence the
> +		 * subsequent async flips will actually do the asynchronous flips.
> +		 */
> +		ret = drmModePageFlip(data->drm_fd, data->output->config.crtc->crtc_id,
> +						      data->big_fb_flip[i].fb_id,
> +						      DRM_MODE_PAGE_FLIP_ASYNC, NULL);
> +		igt_wait_for_vblank(data->drm_fd, data->display.pipes[primary->pipe->pipe].crtc_offset);
> +		frame = kmstest_get_vblank(data->drm_fd, data->pipe, 0) + 1;

Hi,

Should this be added inside a gen check similar to kms_async_flips?

>   
>   		for (int j = 0; j < 2; j++) {
>   			do {
> @@ -528,23 +540,20 @@ max_hw_stride_async_flip_test(data_t *data)
>   						      DRM_MODE_PAGE_FLIP_ASYNC, NULL);
>   			} while (ret == -EBUSY);
>   			igt_assert(ret == 0);
> +			igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
> +					   frame, &compare_crc);
>   
> +			frame = kmstest_get_vblank(data->drm_fd, data->pipe, 0) + 1;
>   			do {
>   				ret = drmModePageFlip(data->drm_fd, data->output->config.crtc->crtc_id,
>   						      data->big_fb.fb_id,
>   						      DRM_MODE_PAGE_FLIP_ASYNC, NULL);
>   			} while (ret == -EBUSY);
>   			igt_assert(ret == 0);
> +			igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
> +					   frame, &async_crc);

We should be moving this IMHO. By waiting for vblank after each async 
flip to capture CRC, what is the intended result? Seems to be completely 
changing the existing test logic.

Also, seems like we are overwriting the CRC captured for j = 0, as 
comparison is done outside this loop. Is this done on purpose?

Thanks,
Karthik.B.S
>   		}
>   
> -		igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
> -					   startframe, &compare_crc);
> -		igt_pipe_crc_get_for_frame(data->drm_fd, data->pipe_crc,
> -					   startframe + 1, &async_crc);
> -
> -		igt_assert_f(kmstest_get_vblank(data->drm_fd, data->pipe, 0) -
> -			     startframe == 1, "lost frames\n");
> -
>   		igt_assert_f(igt_check_crc_equal(&compare_crc, &async_crc)^(i^1),
>   			     "CRC failure with async flip, crc %s match for checked round\n",
>   			     i?"should":"shouldn't");


