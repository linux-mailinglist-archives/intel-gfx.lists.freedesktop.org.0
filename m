Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F5104EB284
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Mar 2022 19:13:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C736D10E9AC;
	Tue, 29 Mar 2022 17:13:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A67010E9F1
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Mar 2022 17:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648574014; x=1680110014;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W1RSD/dcVmWrVsAxZGXr+66DZF1nw+33yW6qCzyNA1A=;
 b=TrFTCYb1BqKOmhtN8d+z23Z2xuMHjZ9paVQ2/OEEeSldUjz/IYY1XFzR
 MQQ4jRDEE0lLfW0cblVY1dhJLfacUo2ECk8KaEDDPhdgHNAom5wbhf1xu
 L98MXbBkn4G547C7A/rJ6ourPl6ssgV7GKfum/447VegnEN/Vlkx7FE9Z
 0s+3GvB/oOsuQrncuy4QCvemxtzKBM37AQGNRW9WIGXDyCHB7DhvUperA
 Qm7wLJ2DMIZVYT9LKk3lXmDoeiwA7X2ufz4U2aA/wmafXoNgvDNic0YLc
 a9E62hDtI+pFM6aCHJa6dYsRJCoe4AbUZXTXw3N0eb3URAUfDr0poq3sU A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10301"; a="320012401"
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="320012401"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2022 10:13:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,220,1643702400"; d="scan'208";a="835053604"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga005.fm.intel.com with ESMTP; 29 Mar 2022 10:13:29 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 10:13:28 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 29 Mar 2022 10:13:28 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 29 Mar 2022 10:13:28 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Tue, 29 Mar 2022 10:13:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZisfftG0bSInAG5CEaGkX8j7Xgezs+hVkX+oM+OpQO4V0py5T/EmfLnvJk27Ssh3QAvHsjuTfp5IfVKOWyiyfo1hUcv07o0dnkEX1Lo0yHQNynIpVbmRF9TT0ueu8dSeGZx8K4KlimlafDVqBeRfX7ZudR3L3HECo+z+Msz6+sNwSzDkqK11Ll8JA6GNaKK44sW+ZnjsQ+WW03o0mUxc8g1s+kAvLeFe1Zi6VJj5eQZYuJ4YGZqvc+PDzmeibhZvQAJ1iX/SjaGh7uOI6srEMSaDZ9a4zYdeKDItuS0rw6izweFGR6pjXZexvPblBNjS4c3mMR9h2zeiOAP54ILVyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sacdxRsACjbkZ8M7QVtTxn8XZIHr3lBncJkd9b3b4+w=;
 b=h7AQQ52q9zEi6yI7cXOW1XdR12gKHtE+vwvZj7MxzfYJRghoC08dkeiXWDDO1lWWQcdXno4Z/JFmDloRAVqijGosLyMyCpRtFLCUfFmKZQuBeTzOVJ33ZXa3Yq6uCKm62YvVHshoSNvLQktQa9XXweDZORV/57K2g/4anTFp2cYROu3pMh0FCoYM9IRYTXI2XPvOydt/9I5EoBEe+pXR8NSojvr+JOa0vvXlekpzA8R6k8nllnQ8BLa7KqM/mGdgPbIMLFv60GXNhNC60wZ+RyboocPgTnfwvFtow9exi5eQMGagsC8KD9fICkiah+3C2gfYXsc+SoQ0JFsYlPlQDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by BY5PR11MB4184.namprd11.prod.outlook.com (2603:10b6:a03:192::33)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5102.16; Tue, 29 Mar
 2022 17:13:26 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ec9b:3e60:90cc:bca]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::ec9b:3e60:90cc:bca%7]) with mapi id 15.20.5102.023; Tue, 29 Mar 2022
 17:13:26 +0000
Message-ID: <59f44790-5162-c84d-7bc6-b4ba3a931366@intel.com>
Date: Tue, 29 Mar 2022 22:43:17 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Anshuman Gupta <anshuman.gupta@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220328102227.14545-1-anshuman.gupta@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20220328102227.14545-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BM1PR0101CA0038.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:b00:1a::24) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 16dbe125-b161-4bd4-933a-08da11a76f9a
X-MS-TrafficTypeDiagnostic: BY5PR11MB4184:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <BY5PR11MB418461D17E5F97FDAF006B7AE51E9@BY5PR11MB4184.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qfr5DjzAoYzer2uLrKepHnN6vEzyKB325AS+8cPnlJfbXSury4daN80ACO5oQTQxzWo2JpgY8NxnW3H3PLBfvD1LyaOGHujTTfJHl27zxWzZKnyr00A/RTOf8VP41cltplY18JkCR7g3lxQGIOz3AX6Vjr1+DIgS2HDkJTAlsyi0tJ1A7WlB+yG8R3sOEvO5WWI7X6zsG9AS237Qb8exxPwcJ2cNrZ2dgn+KgKexUhIg0K/FdvS9BVOuOpn/eAddIXcC5ygrgx8QH4kjaxZejbrlJgC/c+9EMVKQj+OhxooKPe7omwbg3Y2cp4FH+v3E3maTarwrDMDkfxdQwD/rqcp3xB29cMW0kRAqmc8ECWiJQY1fGyIdxcNEQX+uggULuwoDfCBSYG5batVZXGwPsJZ1c4m2xeS9CfvE7rwRYdIU/YiKveKjFA5LRNSW6i0QJxD4DgZW+dB2rCscensM8CPZpRCjvsEJw5YTIZLyCeZILPbqcGF4iIgZs7wE9YCPcoTvF6BiN4fXLnEruGYWYIuNRFXn6lvC4+6Rk4e8W1Ikj5Gb4Wg62BHafd7rzo4jJWVaGsnnjAkYrLoSGqzwHGou4DvO3jBIvqU/QkiJ4DS3Id5zvKpJEwjAdYLTdLDQF5ZmBzEiWPzSi25FdsIraRlkqGYZ1Bt4L4qnFWviCRLWN1kApFoH4a7Lyu1M14HzAcjzdLRhixrKVK5luZQqF/ISgUx5z8O1gRBSntVlgp4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(5660300002)(4326008)(82960400001)(36756003)(6512007)(83380400001)(6666004)(6506007)(53546011)(26005)(2906002)(31686004)(316002)(508600001)(86362001)(8936002)(38100700002)(186003)(31696002)(8676002)(66946007)(66476007)(66556008)(107886003)(6486002)(2616005)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cnIzUXYzS2FPb1NjM2xjV3YvbDFjZ3BlVnVRaERPVTIvbFFBZUF4bU5oL3FC?=
 =?utf-8?B?U290d3cxeWpWQU1Lam1mT3llNXhYbEFMTjRGd01tSldlSGJMUXdCa1JuQWpR?=
 =?utf-8?B?UUFRaHJPTStBQWpVeTJRT1JSb3ZHTlpCZkx5amxuV1IvL1paTk04dUhtZVQv?=
 =?utf-8?B?SDNQTU1JZEpiZFptTWpqaGlUcFNNNUZoekozSTE4MjY1T2NVcjI1WmpUSXFy?=
 =?utf-8?B?OTJ1ZnN0NElEYXFxOUJzYnFudHZPR1Vjd0QyZlNmbUdldlRwTzZSVmZMTjR2?=
 =?utf-8?B?cmV2dnBzWUEzZ0dsY0lRTnpPUmt5UnZsUlFsTm90UXdOSVYyKzNqYVpOTnFF?=
 =?utf-8?B?TUtSTTlHOUcrUnhDKzd3VGJPS2syUlpETklkWlRnTkdzUC8xODhkK0NUaTBP?=
 =?utf-8?B?Nit3UFhwTWE0ZUY0NGVPaXQwaHV2Smxndk9GeTV2cmF1Qkd3ZlZEeXRUc2dG?=
 =?utf-8?B?aHJaa0RLVGQ4RW9jaUN3bjBBWlZNWHgzdlFEdG1sS3plc1VpWURpT0dna09m?=
 =?utf-8?B?VnM4OGdySTNSMVZWOE8vSUlvbzFrbUU0RGRoRTNHZWE5U3FidTIrRFZyRllv?=
 =?utf-8?B?aS9uRVpxYjcrQlVLZ2FrZlEzdVFtNzNKYTFwZmFUQ0dlSjhiRm5EMkZaTzJh?=
 =?utf-8?B?VkU5RXVVa1Yvd2crTnJUNE1ESG5QRzRQL2JMWTJGYmk3T1gzRDdPS1pRNk4w?=
 =?utf-8?B?bktaeHhVbnFXMFpXZjlRWUR2K2lGUlYybEtabnJYR01mb0tEVmIzUVNKSlF3?=
 =?utf-8?B?RzJZRjJDYzZVK2w3b2l6NzR0Q0h3Uk9yeFIyZHNVTzd0ZlNRLzJBbUY4bTlD?=
 =?utf-8?B?a2M4cDB3dHdFeUh0V1hmVmpYS0wvMzVzVzJCd3RVU0tsZEtUYzFYL1RwbDBI?=
 =?utf-8?B?Yy9pczRlV3NvRFFYS1F6WDFUcU1Bb1dXNEhJclJkd1RBaDlFL2xmenY5clRI?=
 =?utf-8?B?TEs5ejRHR2ZZcjlBZDkwUUViYlJWRk0wR2NvWTQ1cS9YYS9QT3BEY2xhKzlH?=
 =?utf-8?B?TWhoTWhZWXF3c2szNU9GTEpsc3pzSTVQbnN4QVFDSE9IOE1iaW82VWRwNm54?=
 =?utf-8?B?cFVCYVhsaDZmYWp1QXYyVFozZUdTSmwzaWFPUi9jTzV0cW1sNm1KTENWSGhh?=
 =?utf-8?B?emJsWDFuTGtrdFVnMzliK3VjYkdOZkVPdDZvOTdXK0VVdHQxSWhEeG1SdS83?=
 =?utf-8?B?SG1nYkM3b2xaYkxrZC9ENlNrenp2REdrL1J0QUY0NVFMOUNmRU5Zd0lvcWJZ?=
 =?utf-8?B?TkNLU3hwV3NsUG5jV0c5UVZLRml5WW5LMG4xMFltMWlkVHg0RTZzWEJwNWlS?=
 =?utf-8?B?VTQwMGZkbE50NENZNXhEdmMvWDN4a2hNaURxekdYMXloTURzMy9oZzkxc0JS?=
 =?utf-8?B?WjhGampJbmhsUFB0ZGNRc1M4QVVURWtlSE5ISVJtZ3pJNGsrMzN4N05DT291?=
 =?utf-8?B?cW0yTHVraUVCNkZqS05EWElWUEZ3RWN2c01UUFJwOXEzRlJVaXAvY0VHcTVt?=
 =?utf-8?B?RTQzSzB0Nk5mWjd4QUUycXhjL3BVakJtc1hpdGdCS292NGR3SlRldXpDTjFM?=
 =?utf-8?B?SG5TbTJaTTcvRXp0eE5RYkMzbzFHSWJMNU1zMnhLc3BRa1dFeW5HdG1UVFBX?=
 =?utf-8?B?UWxicmxuYmFQQ0lKT0RCbzlLdGhKaTE1T2tCaXpQSk5NK2t6eWhMUWVDWGZh?=
 =?utf-8?B?YnlHZy9XQnplUEZvMEp1Zk9rN1Y0RDN1K2dBMys1ZWJhV2Z5ai9hMUJpdVRV?=
 =?utf-8?B?TXhTWnBIVmw4MnZaTmlaTWJNV3hQVk15WHlGNldMZ0w1NS9LSUM0SUJtQmE0?=
 =?utf-8?B?V3F3Wkd3TUhhZzh5TGEvS1JHSkZoK0ZWZndJdDhTRjY4ZU92bnpkQXVOSHFl?=
 =?utf-8?B?bURyK2g4R2F4TUp6bW5kSVRhK2ZZeXVDck9UYVQwazV2RkdHaVdBbmlUcHFO?=
 =?utf-8?B?T0laZmpSU3YrdEpEelRWQkVEbHFqVldvWE1IRXpweVpVSlQ2Y3NPYTVpY28x?=
 =?utf-8?B?WGtsdExpVElZYXgwSDdibTdURzU0cWJ3S3dsUjBnQ25yL2JjV2ttRHdCNWw4?=
 =?utf-8?B?M2VCcWNKUWtYOWlKd2twdzQxUm5pWkM3bWJRbVBOOUsxVlFmRG5jOGpLTVJN?=
 =?utf-8?B?cGRSQXhJQWl4WWMzZ2ZVa0phUFBnOE12ZFBFSnNIakQ5NEFLZ20yU0c2R0Rq?=
 =?utf-8?B?MURra1VnYmpCK2dVN3Z4SHBnZlVpRnN2OTl1cEFTaEE0VTYzekQvMXFiK0F4?=
 =?utf-8?B?emlLWkhjQ1JGK0pQRmUzUlMxcXF6WHFDNDV0aUwvdzBlRkNWTGtsb0cwblV5?=
 =?utf-8?B?SDNEWE45YU85bUViUUNpWktSWEJPalNMWlhualBlVFBKc3R5WU5MSTlEWTRK?=
 =?utf-8?Q?m0/oxL5ShDp/3Pgk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 16dbe125-b161-4bd4-933a-08da11a76f9a
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2022 17:13:25.9564 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hFLbaWTuXD6ppYFLS/zaTxbLWZrULjelztqAf06k+/wCzoHB1KvLH3VLOdqKxgY67znVq3EbUidEpyUmeMFBvw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4184
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: Dump i915 children
 runtime status
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
Cc: Chris Wilson <chris.p.wilson@intel.com>, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 28-03-2022 15:52, Anshuman Gupta wrote:
> i915 doesn't use pm_suspend_ignore_children() which warrants that
> any runtime active child of i915 will block the runtime suspend
> of i915.
> i915_runtime_pm_status only exposes i915 runtime pm usage_count,
> which is not sufficient to debug in the scenarios when i915 has
> zero usage_count but there are runtime active children.
> Dump i915 child's runtime pm status to debug such
> i915 runtime suspend issues.
> 
> Cc: Chris Wilson <chris.p.wilson@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_debugfs.c | 38 +++++++++++++++++++++++++++++
>   1 file changed, 38 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i915_debugfs.c
> index 445b4da23950..ea1730419f8d 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -483,6 +483,40 @@ static int i915_rps_boost_info(struct seq_file *m, void *data)
>   	return 0;
>   }
>   
> +#ifdef CONFIG_PM
> +static int i915_runtime_dump_child_status(struct device *dev, void *data)
> +{
> +	struct seq_file *m = data;
> +	const char *rpm_status;
> +
> +	/* Early return if runtime_pm is disabled */
> +	if (dev->power.disable_depth)
> +		return 0;
> +
> +	switch (dev->power.runtime_status) {
> +	case RPM_SUSPENDED:
> +		rpm_status = "suspended";
> +		break;
> +	case RPM_SUSPENDING:
> +		rpm_status = "suspending";
> +		break;
> +	case RPM_RESUMING:
> +		rpm_status = "resuming";
> +		break;
> +	case RPM_ACTIVE:
> +		rpm_status = "active";
> +		break;
> +	default:
> +		rpm_status = "unknown";
> +	}
> +
> +	seq_printf(m, "\t%s %s: Runtime status: %s\n", dev_driver_string(dev),
> +		   dev_name(dev), rpm_status);
> +
> +	return 0;
> +}
> +#endif
> +
>   static int i915_runtime_pm_status(struct seq_file *m, void *unused)
>   {
>   	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> @@ -500,6 +534,10 @@ static int i915_runtime_pm_status(struct seq_file *m, void *unused)
>   #ifdef CONFIG_PM
>   	seq_printf(m, "Usage count: %d\n",
>   		   atomic_read(&dev_priv->drm.dev->power.usage_count));
> +	seq_printf(m, "Runtime active children: %d\n",
> +		   atomic_read(&dev_priv->drm.dev->power.child_count));
> +	device_for_each_child(&pdev->dev, m, i915_runtime_dump_child_status);
> +
These changes looks fine to me.
Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>
>   #else
>   	seq_printf(m, "Device Power Management (CONFIG_PM) disabled\n");
>   #endif
