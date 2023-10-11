Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DBE3B7C4DDF
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 11:01:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71E4B10E5D4;
	Wed, 11 Oct 2023 09:01:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D6B510E5D4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 09:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697014863; x=1728550863;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=D+B52qgV/h5TU6/9hPfatEPwMaweNyuWBw7wHoxPsnk=;
 b=kY6AKQ589hT7OOLDnOLuoaOBNwZDf74VOAzyEOpCo1l+7SBAS3NeIed5
 OX0uVmXzL2YBo9MW+di0REMQCXBeRE4Ez+AfPvya/vbhPS6/Fogk9bbeZ
 5NJ4kBlEIIa6OGXETdZKKIDGhFiIVLA3fqrwnMe73VqKYEe36IHDZaamf
 1HlL/CatPgJ6wKTUnlImM+OpRKir9Sgp96XA1fOPndi88Tu5leqEcf3xp
 U2+XB89DVtliA/Zduo/ivH3S6DWtYZDJ8QRG6GCGb5cRVLh2dDEjgKruO
 TCMePjf6SZi7JsPVGtLTF1nPCpecsMDFvE1dhOW3sD4efmLtbLTXd//Kn A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="384467464"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="384467464"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 02:01:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="824083902"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="824083902"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 02:01:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 02:01:02 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 02:01:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 02:01:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F8xiVG8ktuu7BnT0u98gQRlYA0H1tinnkE8N871myt8siR9LqIIw1MJTskHtAxPxPLzEzHZy66SOKlKxN2wNEFDkNIgNl/NTGpq7ronW9AY80GW45rUU0ASQ+oXvTGP/rq/kbF9OovwB05Y4qdQtFwugX2GHJgw0basi1VFBAjjZYu0MCsq0SmtKZuibc+VIuvZQ5k/EHe4eAyzE7WL5aBisGnAG6MyUZgLcMSktuBvjhzqvFN2v0WKpNMfhsv4JGXeTUDyz7FaUFKxwiRwBYPZ7X0RVxg0+Oy4Ny+ET8/2tpKnUwRIySM8jBy5VJ+U1pRZ/rWn9DYpG2FYTIWjooA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gQ0u1fHcMqH7MoM8po1nIuZdX+DbGPfV2SfSg3Jmv50=;
 b=hF2rJOnpBM2YUbhPbWi2gIYaNvyGc4Wyxr02Gyc3zeFEo3H9uBoZcLuhYub5VqkFoC+UiFeNLS6vt0gGm4zWZwvUf8jcxh+nLNLmec4E6h4v+5fjUZXqxgyo/8rJ66+CH1YyHKUHpgfN0QnwFjf8M9XbbPkwFrvcyLzgoSpjwzSFtwzujP1R1NdYsnlfQP6L85i9kjuqwlcCItssfHCZT9cli+L52VR0Lkv/M7x784SCRj8Od1jRCEmSaLqhc5YwtNP5WQAqQu7zwUs+kTwzsEJPUC4joZVf74+VAXzZLV8wmTyIY1Wpbu/4Bou4+74IveJoSGhlPch2YJx/+3rDIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL0PR11MB2961.namprd11.prod.outlook.com (2603:10b6:208:76::23)
 by SA0PR11MB4623.namprd11.prod.outlook.com (2603:10b6:806:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 09:00:54 +0000
Received: from BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d]) by BL0PR11MB2961.namprd11.prod.outlook.com
 ([fe80::1d18:2488:73b2:e47d%7]) with mapi id 15.20.6863.040; Wed, 11 Oct 2023
 09:00:54 +0000
Message-ID: <fd941b82-4dc7-429d-bd47-9a28c6580688@intel.com>
Date: Wed, 11 Oct 2023 11:00:51 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Content-Language: en-US
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-3-jonathan.cavitt@intel.com>
From: Nirmoy Das <nirmoy.das@intel.com>
In-Reply-To: <20231011000248.2181018-3-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: DUZPR01CA0087.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:46a::18) To BL0PR11MB2961.namprd11.prod.outlook.com
 (2603:10b6:208:76::23)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL0PR11MB2961:EE_|SA0PR11MB4623:EE_
X-MS-Office365-Filtering-Correlation-Id: 23b24ece-8ec0-4e12-8635-08dbca38936b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: c0FjdpFNbzCaCie6hhe0LAh0Z8woUeRuJbaDD5QyIQBsCzIpdXYZkIUp4k237FCeib61wjUv86yVxm4+defLH77oG79+WLTnQAvNOc7ImcNCP7mldXMP1ymfXTIj9Wh13v4HdJ9VQt4gwZENHl7fccSPIOOor/zZLsdN0d4H6Yjm5OJcopiZOzBim6aU8fQf57KEStC9QRWuAIL3R5wYfTp0jaZD0mnSj/QE/TXPTisJeE8NqzENP4rUVUMUR3KighCB01D82UjhhGqM+Sfl6xGu/BguKz5O/rIkywvqAv6h4jROLXjAsvpoXc/hNbzb2BGHurzrSxlldlb+27KCKbZPNihFSOKMzdJDzAPgH0tTcKqb4nZ5B213Snac328nsmvpgnSgO0uAZlqQBHbUHDSs0fqXtqpbER05YuaA1AOdVrHJZxPh/Y2+uPRvwgRx3/twG40RoIK2QTyeokFbTmMjOlhxzg5M7R4x8Pd1knHUGsbss9Cbs9Zni3iPgzbaZIZKPsPsH4fsGjNucs3AsYW3kPjOa1sgshXPXPwcmfKW/OEbo069QhlhoAibafKmUh/DQC8MJIHoVEh0VfQuJGKV82flWZU1UPTDp+9mLtkO476rUDDenM8p4mw0nP0JXy3hdzZYFA+EY8yT50A2NQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB2961.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(346002)(39860400002)(366004)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(31686004)(31696002)(86362001)(36756003)(66899024)(2616005)(6512007)(316002)(6506007)(6486002)(2906002)(44832011)(66476007)(53546011)(41300700001)(478600001)(66946007)(5660300002)(66556008)(26005)(6666004)(4326008)(83380400001)(8676002)(8936002)(82960400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OUNNay9abDV4dEY3Q1JWcFZZa3BIK3JCNDBQQXpOQi8yWnJVT09OcFZBVk5V?=
 =?utf-8?B?YlZjM295TVd3SmdmSGQ0ZjF5ZWpmSlRRTlFPd2d6blZMZE5sSngvaTVGTy9K?=
 =?utf-8?B?TzhVMUdXM1k0Y3IwQklBeWZvYVYvSDNtZVhpZENlYU1zN0xUQzUxSGdMQ3hj?=
 =?utf-8?B?dDRjZTgzaWN4U2sxdXNnYWI5OHVlY3VEbUM3K1Z0ZjdjZ01GQVc1alZNVVdi?=
 =?utf-8?B?ZzkyTzdZVHZjQlpON3dYaEhaMkltb3ZRdmY5MTNJMWd4RU9nY2VpVDNyRkpN?=
 =?utf-8?B?dlR4S3E0b3JxYU9ubHdIaUpBNEQ4c2hFdUxLOFFyb2VxZ0pNc2tFU3R3OThI?=
 =?utf-8?B?VlNTVWFLbUFJMlJHaUVmVkE1UEV1eVpEaExucXliMlorZWU4U1FKcXB6WjZY?=
 =?utf-8?B?OWxPWXZPZmUxbHFkUjI1OE9VYjlkZ2dhTXJPYmpjS2U3cmhoeUtuVnFOT3l4?=
 =?utf-8?B?aWl0K2t3QjA4NW9EY01qNjh0Zzl0YnNST01QbkpzQnBTa0QwTU9BUTVCUFh1?=
 =?utf-8?B?SmxiQXdrZHhBcHFqWFF4M1g3WTRsLzJ1OFN5cGo0dklhTmZXYkE0OEZCMkJF?=
 =?utf-8?B?MmwwVFpCU0pUc2NrWE14RmNGU3NGdE9iTXlsMGQ3T1Vab2QzZXpqVmM5TFJy?=
 =?utf-8?B?R1dhREwvNEFuTExvVllRVDFjUk9FaG9HWkN3RWs4bW50b2VuZXV1WTJmRTBJ?=
 =?utf-8?B?WnNleXh3azNRbWp0c3YrR0wwM0pHT2NpbUJ5aXF0eTZzZWV3MSsxczJaQkcz?=
 =?utf-8?B?WS9yd0tzLzd0OVI5b2V2MFVFa3l5M21hcW1oZ3hyN29NWEhHNkRER3BNNm5r?=
 =?utf-8?B?L1h5blB4Szl4SWljL2Y0S2U4Z1RWcllTTUV2aTZqZndwOWNVeGl1NWVvV0Nl?=
 =?utf-8?B?NnF4RTdoRWYydXlFTXFvd3dDRXp4dk95YzBBbjQrMng0WDFkWGlQeS9lWVRR?=
 =?utf-8?B?UHVLQUhESXJ1MzgvNW1lZ21MR3VmZjR6cW5pdmMxalJMMDJ1OTQ3aVRWV24v?=
 =?utf-8?B?MCt5T1FCV05NZVdycjhyUktRcitIWis1UU13cUJ0enppd3VHUnk1dEtWWXE4?=
 =?utf-8?B?LytRWE1tNFB4WncxcUdLY2NFa0JrOFBNeFVSaE1lS280by9FZlIzc3F1UUVK?=
 =?utf-8?B?V2dPTWdEWEgvZHhpcklwWW9IS3dNYXo5TUZwMmcvTk9xZ01jWE1LcGxSSTdr?=
 =?utf-8?B?N0YwVDdVZVg5RUlGR1dRZ3NqQ1ZJRWJoLzVCZjlCWW9NNnpubGVSeDhWNTJX?=
 =?utf-8?B?Z0p3bjk2dnZhYi9WVm43NE1hMXo4WGk1d3lTMnU1dDlWN0xpWkt1S0JQWWlp?=
 =?utf-8?B?ZnNHM1M0eWtVTDZLRUlEdlJ2eXpNSkNpSWRXcTZqR3lyOFRwV2lDR2xweUZW?=
 =?utf-8?B?eU0wQVRtUWZsK09LTWF6OHkyTFp3M3N0M3UxbHlxOTZzcCtkWTl3K01NMHhs?=
 =?utf-8?B?c0JiR1NVTnZJbXRYMDNZK1Y5TGxNTWVRMU15Z1c2N1J6aGszcndyNURGM0tW?=
 =?utf-8?B?M1JNM3VBRG8rdWh0dWRCNGlZbGhvL1ZHbFliMjdXS3AvZ095M0N6dUh2NWxQ?=
 =?utf-8?B?bmxRSFpkcGVmV3lLRVJ3SjNaTm8xWjFNYUNyWkZDbkdBRUF3Qk1zUSs1U3R3?=
 =?utf-8?B?UmhvQ0NDRFNUYkZWdXdDMEpuTkh5K1p6aEUwNnJLd0FadmJicnFwb0VwelMy?=
 =?utf-8?B?T2lWeGI5WHlPamtTd2dVUnlqallmTXowWmtDT0EyUmNuUG9JOGl0dW1TM2ZU?=
 =?utf-8?B?M1NUUjN5WVhLeVdOUUVpNUF1TEhlamdvWHVpN2hPQ3pvdHlQWStRMEsrckJt?=
 =?utf-8?B?TzM0amduMzFHWVQ3YktWSkx2U2tNamYvVjEvUjNHYnRUa2hsMGQ1R3lhZkVT?=
 =?utf-8?B?RlZxUjhLOEVuQkM5TGQ0bm9yZ0h0ZEczYTZGcjUzZmV3OWdXRFQ0aEpKTTUw?=
 =?utf-8?B?dUtkUWJEWGU2akxjRWQvTzh2WHZ5Z09TZkFSN0tZalJBeGhiSytQcTJWZEFa?=
 =?utf-8?B?M00veVZQZVpXenkwSGg5NlFnQThDQmMwWGZkZDJUZFpCMWdTQVhCMFFvMHNq?=
 =?utf-8?B?bG5DUzJZdlF2TE5CcHJ6dGVuMzBYMjNSVkIwdGc5b21sMGxaTUY1OVZETlNP?=
 =?utf-8?Q?KIkaupT2UmNG+deAwfqvIindn?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 23b24ece-8ec0-4e12-8635-08dbca38936b
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB2961.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 09:00:54.4785 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XXlJ+ofbwk7TgSfW65wc0ZsqGNp8QmSQbPu5rwI9TabCxt3YIXxxopdE+fJrPTlc0D30PDTZQi7R3Bp16Ws3Eg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4623
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v11 2/7] drm/i915/guc: Add CT size delay
 helper
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
Cc: janusz.krzysztofik@intel.com, andi.shyti@intel.com,
 matthew.d.roper@intel.com, saurabhg.gupta@intel.com,
 chris.p.wilson@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 10/11/2023 2:02 AM, Jonathan Cavitt wrote:
> Add a helper function to the GuC CT buffer that reports the expected
> time to process all outstanding requests.  As of now, there is no
> functionality to check number of requests in the buffer, so the helper
> function just reports 2 seconds, or 1ms per request up to the maximum
> number of requests the CT buffer can store.
>
> Suggested-by: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c | 27 +++++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h |  2 ++
>   2 files changed, 29 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> index c33210ead1ef7..03b616ba4ebb7 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.c
> @@ -103,6 +103,33 @@ enum { CTB_SEND = 0, CTB_RECV = 1 };
>   
>   enum { CTB_OWNER_HOST = 0 };
>   
> +/*
> + * Some H2G commands involve a synchronous response that the driver needs
> + * to wait for. In such cases, a timeout is required to prevent the driver
> + * from waiting forever in the case of an error (either no error response
> + * is defined in the protocol or something has died and requires a reset).
> + * The specific command may be defined as having a time bound response but
> + * the CT is a queue and that time guarantee only starts from the point
> + * when the command reaches the head of the queue and is processed by GuC.
> + *
> + * Ideally there would be a helper to report the progress of a given
> + * command through the CT. However, that would require a significant
> + * amount of work in the CT layer. In the meantime, provide a reasonable
> + * estimation of the worst case latency it should take for the entire
> + * queue to drain. And therefore, how long a caller should wait before
> + * giving up on their request. The current estimate is based on empirical
> + * measurement of a test that fills the buffer with context creation and
> + * destruction requests as they seem to be the slowest operation.
> + */
> +long intel_guc_ct_max_queue_time_jiffies(void)
> +{
> +	/*
> +	 * A 4KB buffer full of context destroy commands takes a little
> +	 * over a second to process so bump that to 2s to be super safe.
> +	 */
> +	return (CTB_H2G_BUFFER_SIZE * HZ) / SZ_2K;
> +}
> +
>   static void ct_receive_tasklet_func(struct tasklet_struct *t);
>   static void ct_incoming_request_worker_func(struct work_struct *w);
>   
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> index 58e42901ff498..2c4bb9a941be6 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ct.h
> @@ -104,6 +104,8 @@ struct intel_guc_ct {
>   #endif
>   };
>   
> +long intel_guc_ct_max_queue_time_jiffies(void);
> +
>   void intel_guc_ct_init_early(struct intel_guc_ct *ct);
>   int intel_guc_ct_init(struct intel_guc_ct *ct);
>   void intel_guc_ct_fini(struct intel_guc_ct *ct);
