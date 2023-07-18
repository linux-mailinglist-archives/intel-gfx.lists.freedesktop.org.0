Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D9DA7576C9
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jul 2023 10:39:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16B4110E2FA;
	Tue, 18 Jul 2023 08:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED6AC10E2FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jul 2023 08:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689669569; x=1721205569;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vJdRPpUWDQX0YffLJRPR71YpS+gARnmQprAl3vUeaXU=;
 b=DxEZtlE5VFMhh5jNMCHTM0WvwosdE9JnJV3aymtGl+DmexdXsHdea028
 kq0o/OBp74AHvkc3Sl+XhAKzcio85dMEPKCUYa0FaINlqQcfvLEBS67Q8
 ASFBZUbt9QZB+alO6Pem/LyFYFA/R29owYAkg/YO/SdHVB0s9NLi9Bmgj
 5RWEJ1NrJSaeSui2+SfjzOOLKTlErQ6mxtTbzAcnADTxuhaIK5eQGqLCC
 dsUZ2dD0t+OO3joVxuayCd7AJ7dCH1hYZcA8foFGfsyGOIP32xBaQRwfT
 tWESilGwcBGk2JltD8UqmKc/4eSFW8M34+b+ADc+BB2e4wrQMwVrR4RfJ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="396986363"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="396986363"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2023 01:39:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10774"; a="700818836"
X-IronPort-AV: E=Sophos;i="6.01,213,1684825200"; d="scan'208";a="700818836"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga006.jf.intel.com with ESMTP; 18 Jul 2023 01:39:29 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 18 Jul 2023 01:39:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 18 Jul 2023 01:39:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 18 Jul 2023 01:39:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iD81JLILJjtGr0NmVsZIwNfG3qYdGoqnajLyTW+YG621l8t00g48j4kGJfMFG5rbi3jI3imIz6ZILrThEsW+SpcY90764QDOVLG6FrU+zkgFIAUPU8YJGe91ZAZWpzt0y6fnf1Ca+a9TCb43LDA4zTrDJsyqWbZzRHqpYLJmsSgxrUSZ4UxOTAekkn5UsqnJSWy5sB49QBG2KtDacOBTnck3WnKFYrgMwGI1o0poUAfzJazx5Xd6YB1fXN/XZx6tEHZsKbiVtwtf37sAc28cctt6Mrr6mHCQHOF0cIhOp0ZvCxYG6ijgrCxmrU+CyyKk5X2UbKhgfHFy4fa/HH6h9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ay9ZM8RWp/Fci4kzGzazmM28D/vUfPgKBWQBJCjiodo=;
 b=mpQPlyMk5jkO0s69mp9uKklQOph15ljCHNX3d/qOP8E+5Lai3lLLMsot7/m8KaFDRkFtHlo77/Pu3/OUS4pwXUZhkzGAxoocuWzNH01YdufPZvXDAZx6QDcYfyaTh7apacdDwyPQ5zSXAzbLpkKOHHqSShlE7A3Qj85HYN85aT2QHOaLfd3o5a9InOZ24JSaa3GaXFOG0+mqXE6qv6liQHi5qj+u0cxYuMoDzeLUKPU/MOHBeWWXsXenIJwTccSKsh7wF1qR9LXMOEN4ZS8YvablHQcSWwDXhkgbDudPp1di2F0DlZ7sz/EMg/3EKZcG04DUSNpKc6ojNnO/7TrcZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN6PR11MB8146.namprd11.prod.outlook.com (2603:10b6:208:470::9)
 by BL1PR11MB6004.namprd11.prod.outlook.com (2603:10b6:208:390::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Tue, 18 Jul
 2023 08:39:27 +0000
Received: from MN6PR11MB8146.namprd11.prod.outlook.com
 ([fe80::fba6:95b2:f9db:b24a]) by MN6PR11MB8146.namprd11.prod.outlook.com
 ([fe80::fba6:95b2:f9db:b24a%5]) with mapi id 15.20.6588.031; Tue, 18 Jul 2023
 08:39:26 +0000
Message-ID: <46c126f6-5287-7e83-9e79-20b3662fccbe@intel.com>
Date: Tue, 18 Jul 2023 11:39:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.13.0
Content-Language: en-US
To: Ashutosh Dixit <ashutosh.dixit@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20230718024318.2911899-1-ashutosh.dixit@intel.com>
 <20230718024318.2911899-2-ashutosh.dixit@intel.com>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
In-Reply-To: <20230718024318.2911899-2-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: FR0P281CA0148.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:96::9) To MN6PR11MB8146.namprd11.prod.outlook.com
 (2603:10b6:208:470::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN6PR11MB8146:EE_|BL1PR11MB6004:EE_
X-MS-Office365-Filtering-Correlation-Id: 4ccd554d-42e8-4d26-93a7-08db876a7eb5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n8Kb7Z92l8T09rDpJYhytK/5bya3RPx/XqM2zNZ4CzKFicmTNLgtD3vKlW5l0li/uFW92ej6axM4qYG0khlhE3k23/rAk0ZQH1TAFRjuxgeO1oHfyWC8GCv1SOqKLRmFt4uz8Mpx7wkZP51VHNBbnSDEw5OeQTxOz3Qh61JtUKWQeQBMY6zIkBrd0vh0TniLsBMcxSwlXczcX+fRHtCSTsHSO0zX3tLYycmtLN4yBkt01J4grhbT8mPOMmfq0ceG+CuylKoN2PHTbG3j2hqhAKuA7nw+hXlRxMJeceKjIgqWVmM1VSFPcFqXktcExr3pXJgyHVhU1mgqy4P/WlnKe5eUuCAzhMS6U5GOqucCSqp7hCYkiCtRxgOyjkldglC6re/5kRQTHQLsz4dgPkWlHfoM0wrpYbgGuv/zhxsaGLleByOll8rzsRBUdZKVDudAYK6ihcAOJ59gNC2vu8yISJn66pDmO2GAfAbvcLo9N5HeOU4LHZ2M5E7QOHUmQG6eHWg9s4nVJvzcY88t8zv4amnnMuggLuu8lWwo+H9n0nA2wbpEOxhBGad8La1aTgHaRMFvLv0bvMtZTWq6Exp+pecOhmsqr//n2BdrcPnWEZ+ds8TeDBR6iKMsYMSUXwwYPTBZ9MUMZihhoJu/+s3NnA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN6PR11MB8146.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(366004)(346002)(376002)(39860400002)(451199021)(66476007)(66556008)(86362001)(66946007)(4326008)(478600001)(2616005)(186003)(26005)(6506007)(6486002)(38100700002)(6512007)(6666004)(53546011)(107886003)(41300700001)(31686004)(5660300002)(8676002)(82960400001)(8936002)(83380400001)(36756003)(2906002)(316002)(31696002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bndZcmo3VHhSdXJKWEpKc3JxYmNkVkVEUVlYc29Db1VoV3d6L3VCOGd1KzUw?=
 =?utf-8?B?Wk03d2xuNVh0eFhWNng4S0Z2ZVEzM0VxRDhlRDcxbkxwNjdqNEs1NWNRb3ZG?=
 =?utf-8?B?ZlFaM3NlYm9zVFFneUZKclNBWnBqNjIwcGR2Ym1BNFNBSStlOHNBbFVKajRB?=
 =?utf-8?B?Mng1aGUyZ1Z4YXdvOU1JdVI4NERDNFJMYkRhODVhckpBTUhTZzkrcFZUays4?=
 =?utf-8?B?SkxDMVJJc1lVTjB4OXYrMzM1dEltUy9nM0Fia2M2dGEzelUwUklPSFNEV3Vs?=
 =?utf-8?B?UTlxV0k0ZDlIK2hoQWN0T09TeVJ5WEgybjVMYjAwbWpFMythV0FxT01MUDU2?=
 =?utf-8?B?ZFk5MjRHajhOUzRHcmhON21BQnlPdnNsdWQ3SkpDSXBkRXcyRVpSVzlKWkZW?=
 =?utf-8?B?QlVCdUY4MG5jbzlRM05Oaks3ZkloSkdFa2V5aEo0Q0lSTE9ScVUwSWpXL1BW?=
 =?utf-8?B?YTZJdTZGOGNKRUFEMlBmdDkyL29qQmRMMHVid3UxTXlzQmVob3M1bGdlWlhj?=
 =?utf-8?B?eXpNLzl5Q25JVEdLNUJ3QzlhcG9mVnMrWU9LRkp0QjF1cDJiemJZVFZqbmlV?=
 =?utf-8?B?MmhRcE1qVGxXdUFibGNDdGJjNi83Tk9mYytHajM2SU1GdlUyL3A1R29DeTFn?=
 =?utf-8?B?Ni81cHNNeVJDcXpDcGp4U2tESkFLSW5qR2FxN3lGYjVSZ0lXaW5BN05iZzcz?=
 =?utf-8?B?a3dycFpuZTIzMDBTZEFXdWtvUzB3VVFzNStBQWt1ZnlyRjZETTBkcHRjYmJr?=
 =?utf-8?B?SjZXdVVkbk13ZVd3T1dtRkJxUE1mL3JicEhxMngxYmhuYWE4aWdJaUdSSVdQ?=
 =?utf-8?B?M2NCbzRaT0NrK0t5WHVDRk94Nm5PUFhxNUVlajdqLy82dlBiZjJRanNyMjJr?=
 =?utf-8?B?ZzU3UjFHZFl5a0dWUU0vN2VaNUZDazRsZ0JWSmY0TXhGWUpRME9SeXczWFJK?=
 =?utf-8?B?akFSY3NKQTNSMWxGajZ0bnVUQ1ZCd1NKalkya3ZhYit4VXlxZkZNQnNrUjdt?=
 =?utf-8?B?dDZ5Ukd6eGQzRzB5dnF0WnR0SjdSd2RGU2lHNlRQcTNTQmlSd2R2cS9PdFRR?=
 =?utf-8?B?bmQxb2FEWmRIMjZ2N0hveXNmV0gzYjVuaFFpVExiWlJHN1JIM20zb0l1Vm12?=
 =?utf-8?B?dStBRnJMY3ZLLzlib25Vc3BxdTNjVGdaUVZsVTZsOS90ZFFEL0ZxUW82cEJG?=
 =?utf-8?B?c3ppc2NwdnloQVlKVXVxam83RGNGaWZ4OWZ0c2xJY2FQRkNEcUhydlhBTG03?=
 =?utf-8?B?ekx6eThKYVMwN3FtV0ZFYm1KV3VkOUlRZUtJUGJZTTBDSW1FYTBMQ2JhTGwz?=
 =?utf-8?B?L2orVVJoS2I0b3k0Uk5ZRDFBajhSNmN5S3VTa3ZxdUQwQ3ZNL3U2eTdLU29X?=
 =?utf-8?B?SlRyRVZYZkNlZjRtRHBGNmhiWEI3NjhUb2dVVy9WSzlLQ3d3TmhpbWZNL1Za?=
 =?utf-8?B?OHNxdm03N0gva0FMWWNmZWJadmt1OEtzSjNITlJERiszc1RUSmhYQktHZGFw?=
 =?utf-8?B?QlpoekpUenFUQVhQNTd3ME55UU1PM3krYUgzeTNTYlJZVjRYYlJ6anN4Um5w?=
 =?utf-8?B?RVVQeGM1ZmpUYmQzSUEvMmxoWXpqYVc3WERUWEZZWUZqOUpvNkEveDlXQlZ1?=
 =?utf-8?B?ZGFoOGtWVng5OUNSU2lyU0R5cFFqMUN5TjZRd0RWSGtFenNLTUhSTmtWVk9n?=
 =?utf-8?B?N3hDY000OThnK1NoQjVGNzBmRVROcDdLT3A4WEVQb0JSQ0Y4RUNxMm40b2VX?=
 =?utf-8?B?TVpyYlpGTmJBVGxsU05lbmUrWmJ3SEt0YVNuRFI1NitoQnR3WG1IUU42ZzZ1?=
 =?utf-8?B?UTY4UzB5eE9McmFzeENuN3ZTZGhjQ0M5c3RpV2gzVWNVd1RSZHhHeFBwNlJC?=
 =?utf-8?B?Nzgyclc3ZkZCMU5hM29TK0ZNdVJNVTlrcnppZktxNVZqUEptVVNudytjOE9z?=
 =?utf-8?B?ZzVUUVRKcHZYV0k4U0NpaDZjMmRQeDZGTDByWlRSZjdRaGZEdjIrU3I5UDlm?=
 =?utf-8?B?UzVKQ2Q0OFB1L1doVmxyTDZuV3IzVGxJMi9SSndQeWVSQnFTeUJtc285S2pB?=
 =?utf-8?B?dmtDaHA3YlphcEFaRXk5TmdNYlQyM29iK2huZWVGdDlVZUdidVdiejhIRUJt?=
 =?utf-8?B?RW1US0d3NzhvVzV3U1BicHA3V2lXQXlvZ1B1YkxqVGFMeXNzMDF5WWpjbm8r?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ccd554d-42e8-4d26-93a7-08db876a7eb5
X-MS-Exchange-CrossTenant-AuthSource: MN6PR11MB8146.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2023 08:39:26.7367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2jvS/aANvOj+cdcdjyV2tfvCQGt4ud4z/bO5npfXGdQM4Eo/MUPCa+S6HpshgMIr7tAqxRbzHSWTLMX1Cf2Z5qPQxsOdkA0aPCPIaSWOEzM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6004
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/perf: Subtract gtt_offset from
 hw_tail
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

On 18/07/2023 05:43, Ashutosh Dixit wrote:
> The code in oa_buffer_check_unlocked() is correct only if the OA buffer is
> 16 MB aligned (which seems to be the case today in i915). However when the
> 16 MB alignment is dropped, when we "Subtract partial amount off the tail",
> the "& (OA_BUFFER_SIZE - 1)" operation in OA_TAKEN() will result in an
> incorrect hw_tail value.
>
> Therefore hw_tail must be brought to the same base as head and read_tail
> prior to OA_TAKEN by subtracting gtt_offset from hw_tail.
>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_perf.c | 1 +
>   1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> index 49c6f1ff11284..f7888a44d1284 100644
> --- a/drivers/gpu/drm/i915/i915_perf.c
> +++ b/drivers/gpu/drm/i915/i915_perf.c
> @@ -565,6 +565,7 @@ static bool oa_buffer_check_unlocked(struct i915_perf_stream *stream)
>   	partial_report_size %= report_size;
>   
>   	/* Subtract partial amount off the tail */
> +	hw_tail -= gtt_offset;
>   	hw_tail = OA_TAKEN(hw_tail, partial_report_size);
>   
>   	/* NB: The head we observe here might effectively be a little


You should squash this patch with the next one. Otherwise further down 
this function there is another

hw_tail -= gtt_offset;


-Lionel

