Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A6A7BBE24
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 19:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 23A4D10E533;
	Fri,  6 Oct 2023 17:57:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0792210E06B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 17:57:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696615047; x=1728151047;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9smG931LqVKCDLqRxZs8V+BryyAa5CTzv3FE17iLLxE=;
 b=OM+bC7h8jvRcKuIWfQ8ciYeQloQ8IJNb0LEUvjw4VfhKeHYmPOhrEKdT
 CEAW1FMYJq+F+X+z4k8qehV4dGjDoqrHP2PaDXNWcRaHt2HN8a/ZxVdBu
 mo9a2vX8pxPz53jWdQHRV+XoOsMbwI9REWXLJfOagS0Rr5kedUwEanfEv
 9xA0RL/d5Cx0/KtqzJAEn6EvcxKkEtmjIBBJJGGBc4HWqWqqjhDqMN/Nl
 ukaOOawn0ufIG9MtU2VkpmOQf7M1oo737MJpCcjgV7duluj5WJvNRy1Vb
 Oda/cl/7ALvKi3nQG9b7R1VqANPmRLT7vkOO/jLp3w1v1dcpIx/ZhkMYr A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="381081666"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="381081666"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 10:57:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="926031992"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="926031992"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Oct 2023 10:57:25 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 6 Oct 2023 10:57:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 6 Oct 2023 10:57:24 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 6 Oct 2023 10:57:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A9Mg1kNbLBsC+YaBEXUCidlwAoUriYeX4woeYhhgy4PFJGt9Y4McPaBdjAVBElMibAZX07GWsawT9AbpnHwzdzL82x/PbOdheap+mCLUn1soVMQVJGeKS+Mg1dY5rR/8AxPLoU0qXDB2ZPxpvT3P+2uRnYWDs0M5JA+b4hxDVheB6fQqQSURUrJzZNCddtoiqw/WUWD3QhC0nDwoc0TJNvxnmMzF+J1NSi80jcb+x7VAzCKRXFwNDGtqvUav8Rc0BrZL+z2EHlErYY2b9LuKOitXy7e0boITe3V4fr22+XAVyNORXcfaLM2NlDl/V6cwKYH7HrHOvz/YqLaOFWiFTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T5Plg0XlvHSuvxZUWQZ4iH36wpIaeBFoj4bVfUO32D0=;
 b=J1dcCNwcbEZM6fFyqayDSH8PuajEPAg6SswUphf/1CfvAt1ufJnOl+Alr8RK75b6LQDGAG0Sq2F3xo93NAQbbhjHjRgCuY3N46bWREbhB491ob8Mhkm5z4XuIzA5H+aGMLkUzlnfyPWLI5KGKUmysM9gcQ4LfjgdO5WEg7XAbQ+2XDx6ORLgGnAQRoi4uFFyDBXrLBn15/LyYTxEWGw6AWtvECU9VnHLNj/x9x8mrRi3jktg5kVzbPg6wr+0uxTv7OTE7SBTuX/kHXo4VwjTu9jqp5244bIRpen8B/ATK+56t3ZQXLcNT6bSnkPiahQ+VNAiXN2dprAUOLmIMRFQXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB7593.namprd11.prod.outlook.com (2603:10b6:510:27f::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.39; Fri, 6 Oct
 2023 17:57:22 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6838.033; Fri, 6 Oct 2023
 17:57:22 +0000
Message-ID: <0ba191c1-910f-6320-1baa-fd9d9d6b6c04@intel.com>
Date: Fri, 6 Oct 2023 10:57:19 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.15.1
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231005193536.1463159-1-jonathan.cavitt@intel.com>
 <20231005193536.1463159-6-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231005193536.1463159-6-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0261.namprd04.prod.outlook.com
 (2603:10b6:303:88::26) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB7593:EE_
X-MS-Office365-Filtering-Correlation-Id: 47e7d3c3-86ee-4607-471f-08dbc695b0d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oo0+WJJV8FoGolCJ5nO02Qtq3rgewEjNabP1DalvmMaZ/xQYkEX98eoXG1SU+RjwD9MO3wqpv4QDrKc/IAJPfssTQu+TVbOk1JVUMC1h0K6R3jG4gVQL6g1Ou+0fE1mMgmWt22BUb1NBJhGIew0NMGu2Ybxsq6T0YUCWkuv4E4mnjZEQLmAIW7ATZUFDjyY+MWAlwYXpM/dJoln17eob/kLwhZ9pGCGaWVI5oxquHCQ69BKMqjOzDypwk8VjSB3eppNZUjuioPoRmmS+onK+svfprBqEaBL7LnfutQIFP/hCjItFkYl/Cz67ggLN1MODvNLr7tOFWkmpeArHa8Cd8ElzFt4g1YimyKy5xFOjEZ//cl7ZptQFPuPHiOa2rPFAOm+UgmWSIl/GIb6vLV+nSkGLscBQaZoZcq0bCSCfW4l4XNm6Me+I1VuyRqgsOtpkobJ+higFCkjqcKYB1VDwUwc0hRFRviC3DlwB84YWUmyvGDmKrCVTlN0FQKQosWLLMEVXOkuFXFGbISmNj5uWQbSktnlJe2e2wQK1pOshcITezr0xmV1Uc5aLgDRN4LRoDyV7ZKB+4mTtPRmwFzwbvAWNej3+pu83UadfqG6l5EdsU5pScK65ggDYpnSR0mex9hbtB+o35biptG1d8mDiBA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(366004)(346002)(39860400002)(230922051799003)(64100799003)(1800799009)(451199024)(186009)(31686004)(53546011)(2616005)(6506007)(6512007)(86362001)(31696002)(82960400001)(38100700002)(36756003)(26005)(2906002)(6666004)(6486002)(478600001)(83380400001)(8676002)(8936002)(4326008)(316002)(41300700001)(5660300002)(66946007)(66556008)(66476007)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d08wNVZtN1NXR3BNRUxoNUl0aHNiakxWYlVWVmwzQkIrdXFDUnJ3c1h4Q1BH?=
 =?utf-8?B?bHQzTkVXdElYOU1zdjB4ODBMNmhOSTZvTXhYMlJnUzdGZXIwMWlFSEVwVGt3?=
 =?utf-8?B?MTdUaFcveGc5cWxWVjJuSWJxandDajNHQlJJcnpmY2dTeGRLRE1NRStudHEx?=
 =?utf-8?B?ajZJMzNKRlNyR2RMTTVDYlBITjI3UmlEVXVuek1rZXI2cURpYWNQbEFZRWc4?=
 =?utf-8?B?NzdBUGF6WlhpNEticUx1ZDZkTmlKbW9RWUFUTGtVeUJPZnVuS0p4RnlpeXI2?=
 =?utf-8?B?b1RYK2JibTgzbVN0akRVUHBpM1cxSUcrYkRIRTQycWNvbXVRSzFOR2xOQnVy?=
 =?utf-8?B?cW1zVko5dmRYcU00M3JBTy9MUk5vcnpkb0dLMWQ4YzRHYTFZWWpFZHZ3UzAr?=
 =?utf-8?B?STh0U2V3TmRLOG1jOCtlMG5PaGxKUlBqaiswdlJlYTNnaTBOLy9zMG1hY1V4?=
 =?utf-8?B?cWUxdzFEWndISHlRNVQ2R1ZZSWUvdkhBNy8xcy80SkpoWVA1NjlGd0lML2tO?=
 =?utf-8?B?TEhralA0cGRGd1gvcDNhVWZmeUtneDJYM04ySzJUeWtQdDRMbGhEeldwd2Zt?=
 =?utf-8?B?aVFiZ1ZmeEgxdGs4Sy8yVUg1NEk0YXJZLysvTXlLOWJWQ3IyZGF0SVZpUU8y?=
 =?utf-8?B?SFRMQzNpY05hb1RYejV1ZStFSThFem0yajhCb2RSNWdwL1VWL2RyOGgyMUVH?=
 =?utf-8?B?MGY1TFg5ellWTlFsc3hpc0lncHVTM0NXMkJjTnpEOEVSSytUOFpaSTdFeW1p?=
 =?utf-8?B?UmJPRS9wSGlZb2JSVENsNGxIR2pkckhpRnNKdC9CVXY3RVhjMHlhbUE3emxn?=
 =?utf-8?B?cDkzelZlSVNFa2NmWnBiNnNLK1doMGYwUFR5Z2pwU0xNRzJlT1BmRUtlT0xy?=
 =?utf-8?B?L3RLWFBHWnhCNk95Q2g1cmxMMGJsWUx5U2VyK3BaNTM0OCtlTStlcWtNQmtS?=
 =?utf-8?B?cWpuL2tTQXlrVmxpUzFCdTRRRVJIczJPNVdQZ0dKWEI5V3F4WGNieW9zR0hK?=
 =?utf-8?B?eTA4R2JvY1VaaG1EQ2ZiYmEvVmdCMFR2YnNzTEk5R01IMHp3SUVCWEEwa2N1?=
 =?utf-8?B?enlQalM1TWFTNzYwMmdVK1hNdVUzUzMzTWtJNUpuYkE1RlZ4b1RYNmRRNjBC?=
 =?utf-8?B?d203MVpheVRtSnZ1dDluUnNlYVBvRk5RejlKeU5ubU40ZkhuYTJoS3JnTmNx?=
 =?utf-8?B?WHJ6aXNxRkVzZllPT2xvbWwzNFkwT0RxdW1tRCtwSjZlSERwSzZOS2d2SkFh?=
 =?utf-8?B?TldNOXQ1cTV1RUs2cndDamUrbGk3ZkxwbVk4L1ZYd3ZJNElkb0ZqWW00OEtp?=
 =?utf-8?B?SEVqZmE2K3VWRkpjU2tIbCtRbmtVakVDREFoYXJBOHdDRDJaM2g1UTVkU01X?=
 =?utf-8?B?QnBYOUZtSkdRMVNseStnTXUyaGhCYkxJcnpUSW5NMHkvaVVxWDZpTW9zdlAx?=
 =?utf-8?B?WHJic3ZMSmxXeEUzTzUrTTJUbFJvdHBBRlg4RERsQXF5eTBEdEJsQndISUJm?=
 =?utf-8?B?eXpLbUE4Z2ZHdG1NMDJualluOTBFWXFtTm0xRmJCUURFdWI1WVVubGJXV3Ja?=
 =?utf-8?B?czhCdnN6TmtWZXBvbHZJZjVZOWxnNlY3eEVqMWFjSmxYVFc5WUpycWpWWndm?=
 =?utf-8?B?WTUvc3NmWlVIY2dxRk1NUzZMNC9IVUJIayt6SDE1TkVzOWpUT2tYeEwyU0xP?=
 =?utf-8?B?QkdjdDFwaDExK1NPQXZLUk85SzlndXNiNEpsM2dIRUEwZis1WGMvOC9aZHlj?=
 =?utf-8?B?S3R0c2wwenlmYUFhU20rc3lUZVBRNzlCMGhaSWcycWR1ZHZkbXNTZFhLbEdm?=
 =?utf-8?B?eW96bXVvekxsMkdLb29scEptWXgxQjArQSs4MnFvZTdSWTZEK2tGS3BtMWFw?=
 =?utf-8?B?elljV3RVRzFJZDdnYkcrWU9tR1F2bW5Oc2RtbnE2STFjYW54YTZENHJrZlRv?=
 =?utf-8?B?VEYvcU5YVVRwajVXbkpDeXBIL2tJeEpmOGF1R3J4VHN5Qk1vU3N4TnErSFMz?=
 =?utf-8?B?Y2tiSk5ic2JqZTRKQkUvdU1LY014OVR4c2xLQWs3eDdva1g2cmNkbXI0MHQx?=
 =?utf-8?B?VzRuN3d3N3g3ckxSVDd1ZCs5YUVSekFzazZmQ1pvb0htSk15M0t1T005NS96?=
 =?utf-8?B?OFBHeDZCbnVDMnlvWklOeTV1MitjTlFNNTJNeE41NWRMZzBpOWVZeFpodTBJ?=
 =?utf-8?B?ZUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47e7d3c3-86ee-4607-471f-08dbc695b0d8
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Oct 2023 17:57:22.3913 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f/pO2f1UvJlhg7tUaSRBnJbw7VLE4sQh+mZ/3FkqhDswqsYGVrhUjAGCO/wQjAwFDosPwuzHgsR17UKrFt4+NyNw0qsEne+H9mdMyjg6U0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7593
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v7 4/5] drm/i915/gt: Increase sleep in
 gt_tlb selftest sanitycheck
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
 matthew.d.roper@intel.com, chris.p.wilson@linux.intel.com,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/5/2023 12:35, Jonathan Cavitt wrote:
> For the gt_tlb live selftest, increase the timeout from 10 ms to 200 ms.
> 200 ms should be more than enough time, and 10 ms was too aggressive.
This is simply waiting for a request to begin executing on an idle 
system? How can 10ms possibly be too aggressive?

John.

>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_tlb.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_tlb.c b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> index 7e41f69fc818f..46e0a1dbecc8d 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_tlb.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_tlb.c
> @@ -137,7 +137,7 @@ pte_tlbinv(struct intel_context *ce,
>   	i915_request_add(rq);
>   
>   	/* Short sleep to sanitycheck the batch is spinning before we begin */
> -	msleep(10);
> +	msleep(200);
>   	if (va == vb) {
>   		if (!i915_request_completed(rq)) {
>   			pr_err("%s(%s): Semaphore sanitycheck failed %llx, with alignment %llx, using PTE size %x (phys %x, sg %x)\n",

