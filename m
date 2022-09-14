Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B54E5B8933
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 15:32:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 330F410E915;
	Wed, 14 Sep 2022 13:32:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504A210E915
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 13:32:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663162330; x=1694698330;
 h=message-id:date:subject:to:references:cc:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fXFfAeX00en0XkPVUpHG08ubywcgPqGOsDQbPOES/vc=;
 b=nKIyuX+9sC25/1aWt2+M96iztnJ+ZB6Wju4DHo4Ny9Gn7tmZcEaR2faQ
 BpOGGizlXBxcg5EAW2qYxW4sXM7g/nrQcpyI2+rMi5vNoGC0RZ9yzYv7K
 60RbLbGlGuxYQQP3mYEjXT1S7iLsDA2hZ3/pj+WVSOU0FlhUPeut/M7Q3
 YQg8rI9/c4Y7nCxst5ykX+mxTpwLx7K2de7KlqJ79vC4y9bJTj3lZRPao
 LhVZ558ldma2cQE/ChkWC18zXMfYIq5DIIFsMWWcUvKJgPAJs4LANzG+4
 QKfbXm+srSWSXoFXEBBTKckGu4G7/dmfb5Hfh3zGX+c2Cs+c6Ypb/oAE3 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="360169213"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="360169213"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 06:32:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="594385435"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 14 Sep 2022 06:32:09 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 06:32:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 06:32:08 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 06:32:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CjgCZ6pYytMAV4qlmaULxwGl66dG5Fj+3VwYdHfp9s/ALk2BFhMTD3WrjzYuNAtlcu+zxVuy22aNcs0neGI4xt5+rmXFtuLJlNy+6QU2a+hIQFAuAvRdpsAHN7B7YyuuC8BCQD+xbFLsGWdKsmU7zQ6cd/cmd51bBuG2JE0iSlhdzbC9Jla8VJKtZKllvdA29PZUjQOZWqsK7GVMzNxrk+mcUlvIUvYxbdj97CDOG0CANnCltziP3+c/YBHdpj5yDl2trv24qN0d8ik45nLVrtePS0TsZypzBPsxfNdAEiZuXeUW8+FET51kewtLuAKob05q4EEuz5hEKuJm5BcCfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jA2vju76vVwmHnf338oAt3EylgfzF88a4jF/mnov/Iw=;
 b=KIAabV08Pa3kapIqidw1508cKijhxFYMwwXlQaZVSla0yL9jMFV47z7VX5L7ipDHzLe4qY/9HaA4sGjv3iGvSlbLV+0Ny2MZX+KLesIRgEsz/xxVUPRrYHiS+wFJ4vFravywpZ6a1GCipBiBhXAlSliZ8MmCHtDG95VW06EjrPExkIM6OB1/KFI4S0ChyR8kHAYnD15MVl7fpqPzyoEH9CRbWK3Frk5r5qWXk8soXag9gw8iL3EyvIDnDkz0nfjY+N/l45xEsPRJzbhd11e9ne9UMIan8jvydtbTSM6g4ZhwW07OE/N5+0mpQrCJVH6BK60f44oRMdMUId66x2VVsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6)
 by CY8PR11MB6913.namprd11.prod.outlook.com (2603:10b6:930:5b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.14; Wed, 14 Sep
 2022 13:32:05 +0000
Received: from CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed]) by CY5PR11MB6211.namprd11.prod.outlook.com
 ([fe80::5878:882a:3946:74ed%7]) with mapi id 15.20.5612.022; Wed, 14 Sep 2022
 13:32:05 +0000
Message-ID: <d990f01a-3e1b-d7f8-83cc-513e129ecf4e@intel.com>
Date: Wed, 14 Sep 2022 19:01:55 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.2.1
Content-Language: en-US
To: <intel-gfx@lists.freedesktop.org>
References: <20220913152714.16541-1-anshuman.gupta@intel.com>
 <166315458083.30165.9819029006814221073@emeril.freedesktop.org>
From: "Gupta, Anshuman" <anshuman.gupta@intel.com>
In-Reply-To: <166315458083.30165.9819029006814221073@emeril.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0043.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:49::20) To CY5PR11MB6211.namprd11.prod.outlook.com
 (2603:10b6:930:25::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6211:EE_|CY8PR11MB6913:EE_
X-MS-Office365-Filtering-Correlation-Id: fef9989c-5615-40cd-787e-08da965583cf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BUNhhzUFDebEwHRNjZ9fuS+N7mJ9Ouqv76kT8fz0JZcOKwC4B543TWxH7d1vX9K0uKWf1lSMiuHjFe3u9OzhpueT92XIS71jP68ByGCEFzxwaO2rrXMAsV8P0RmdXBnU7vw7iQHxAg9ZxouqPZUL4N+YWGj20VydagtScCCJDcGJyoTm9Aj7stfDpCuX38n1PObKZ6WnPYfVG9iTOLisub4a6tv60gTzHv/Dol5h0D/97RYCkwdj21lhNOP+oOuqtfgK1NNdRlheFKHYrimza5JKySiaRPWVlVpciRHiPCKD/A6wqFsSWO4Ry7gUE259B9D6jJ8z5VOrjJco7uVMzi22G3ouplDhxGCkfO94xn+L/tX3uVVAKWRR0/utTRMrml1hOvnbmso7SVkG9aETgLYCMgPIx/G7Kr2T1Kg552+Z27oBUyvGitSnu0T9IccMsjaYYg0xkEtHVhR4zKJeNtJlsLxo/htMoyGSUlHo2+iaXfDjqQu+Hah5XjzpBS6I0iWKiECA/KL9N//Sgf0JNlyAHywBcMNeBpLqtjYVQjbfmRYcy0cqvYKX4eYHAQChq8B6zIcd4KNVE8SGVlgu3XE/hwhgX96EBJW4vY0dH+2005reBzBm67gbNejqYdfyu5x33xGdLFjB4MzyCNGPLVN61lLgnvXBIVXJcLhkRi+N0AzTda21Nl9MApSfF1wZTVgeDUReibIphAVxAFAx4pfDfHIOIzeMgKz0xtYClVr3EoglG/T5zh8GaNBPUSqGev964XmrzaGTzkVN1FDu2Vt8lmQsJU0l2EIOsnysFwtXGMcps+/1QnTc1wqNgSUCbsHRPks8IZGACJIrCj/RszRFYyddrLWJtQWJbHEuP4E=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6211.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(376002)(39860400002)(346002)(136003)(451199015)(36756003)(31696002)(31686004)(316002)(6666004)(86362001)(55236004)(66556008)(2906002)(6486002)(41300700001)(66476007)(2616005)(6512007)(53546011)(186003)(478600001)(26005)(6506007)(38100700002)(5660300002)(8936002)(30864003)(966005)(83380400001)(82960400001)(4326008)(66946007)(6916009)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cW1TcWk4ZStpQ3VQOUdhdGd0ODgwOU53QTUwZ3YxSHY2UG9hOGhLSzhrQVcr?=
 =?utf-8?B?NG5yZlkyRXlqamkwc20wVE9IZ2Mwb2dTZnBMU3U0RjIvYzQ3OUFjcHJVNC9W?=
 =?utf-8?B?bGhGZ0ZXVWxITEdtdkVMcms0MW45Rkppb2svRlo0MXI5SFZGVnVNcitaYzU1?=
 =?utf-8?B?MmR1elRjWjF2Z01zSU53cmFiM2RWQ1dtckJ0TVhadmpjVW1jSGNtY2JweC83?=
 =?utf-8?B?ZFJoZUZ2K1FKVnJLQzJxZ3N2OUZlYlBKeHl2NHc0YW9hZ05EZElKV0d0SThz?=
 =?utf-8?B?ams0QVdYdTNCSDQ2V1JwQjNFRy9EUjFOU2tBK2JPRDQ4cFdTR1Z6WXpxMm5u?=
 =?utf-8?B?bVBHSU9jT0U2U3hUaElFd0ErRW1NYUVtdGIyZW5zbVcyV1huRDA5bWxPNkNu?=
 =?utf-8?B?V2c5RDNpb1hWSGwrUkV4Q3VGazY3c2ZpQ04ra3ZxM3JUak1GMnJYUkluMHpR?=
 =?utf-8?B?WkxDOUw5RU91WVN4UnpaM0crT2Ewd2d5eVhQWkQ2VzEwRUx0Nzg1MUNYTUpk?=
 =?utf-8?B?TFJESm9FK0h1M2VGQXExdDNuRzVGQmgvVjEya01CZ1UzR1h2TVcwV1JGRmMx?=
 =?utf-8?B?d05sMEpVRmRpc2t6eVBQQ2R5NWY5TjNaMXRZeUpNK3N3U1dLNWNQdkpzdi9p?=
 =?utf-8?B?Sm1XMDRxRDNNVklXUWxDK0hLVzlOQmN6enBFc0pmY05hY04xQWxjNy9mQ0Nm?=
 =?utf-8?B?dkp4aFMvTFpJbE83Z0VxTzZ3cHBCOEwrV0ZQOTJVUkJjck93UU16ZUJTTWg0?=
 =?utf-8?B?ZHhkbkZ4bFErWVF5Qm5wRXNFNi9YL0dtSDByejF5bmdkOVl6MkZmVE90cTdV?=
 =?utf-8?B?SDEybmZmdjBNSGd5VnJXNVRuVWwzZGNRb2ZCOE9FNmdQSUN5NnFyYmF2dFFw?=
 =?utf-8?B?TzlLQ0NkTGZZNjA0OUFWSWFzbEZRZUtsRmpQRCtlS3ZZekpucDNSYTMzeTBK?=
 =?utf-8?B?aUozdmhKWjFsNXdlbmp2MXlGTnIwU2laaURiVWJUZGJoV1pPdnloUmNLM0Fp?=
 =?utf-8?B?MWw3UXBCU0wrQlQzcTJYL0xndWgzMVhINTZHQnRFYWJ6c2h3WHdsTVUyRldD?=
 =?utf-8?B?bGtnSVNJOG11enJCMGhXUXhpc0xxOGloL0VxRldvczVvOVFJcjlPaUw4YVlG?=
 =?utf-8?B?WHdMRmdYTU4vVDFKWjNGSkNSNFRuUG41cFZyZW5ra0tDU05aSC93ZTc1ejNj?=
 =?utf-8?B?cGZhMVJUa1lWQ0VnbmR1bm1ZeXJvUElRakdEMDR5VDRmckg2VERpVWpjN3d2?=
 =?utf-8?B?YS9pLytJZUVZcUZSNlJhcmkxc0RqY3VGM3pTNUZoK0hjSG9FeTBHOVo5NFBa?=
 =?utf-8?B?emtrUFhRMElCVG5RdXExR0hLRlp6Z3ozaU1obVdmcFloaHpOSFgwMzE4SFRK?=
 =?utf-8?B?d3oxOENLbWtlby9OVWhFc0VYdTJYWmwwYW40TTc0QkYzdWVLTVI1RmR5LzRo?=
 =?utf-8?B?a2lCdldoc1BGZGZ6UnVocG1vOEFTUW01RXdvaUR5MVpRZW1UdFBzbjJ5ZTVt?=
 =?utf-8?B?WjF1MWhxSnVTSlAzVUt6WSsyMFUrTXd5K0Q3cFBUY1ZKT1RSUHdYOVNHeTdY?=
 =?utf-8?B?U1F4ck1FNVF2Mzg0amh3TWE1QTA0YVllYzdab21VNjNQRC9odmJhdkVCeEVr?=
 =?utf-8?B?VmpacVZBNnR1aStCMUZQVkRibitPdExLQjFGVU9tOU5ZWXFNUkFhSkNvSnBj?=
 =?utf-8?B?QVErYlZLYVpiK0xvRnllY2x3dS9ZeWZSdVViZlc2V3JpNGJmanMxZXRZSlJO?=
 =?utf-8?B?QVlRbWtMazlhUUgrWlVSVHJzS2drVkdnYnRrcWFhY3lDdGpMbXBEUm9ZU0Z4?=
 =?utf-8?B?bEVxdEVSUXU3L3ZTbzhuNHBId3YwSUhqWGpsc2luQlNrYW9wZmd2Sm1aQkxn?=
 =?utf-8?B?bGdseGd1RWFKZXd5L3BSendadm5wM2VZMTc2dnFpTk5SMUx4cXNsd09DZjBa?=
 =?utf-8?B?MmlNbFZ1Znk5L3FXSW9Ub3hvS1AxMERpUE1GUGxabG9zMFpjbEcrTGd6K2Jv?=
 =?utf-8?B?UHpHYnA2M1BtZDY4a3J4dDN4dUYyM0ZtaUNFQkdnL1dUdkRvbzl3U2dkQjNv?=
 =?utf-8?B?OFU3b0pwZ2JPSW8wWk5jeWJIYmhCSUdEY1VPdGJKd0R2cFBPZjdLK3AwMmM0?=
 =?utf-8?B?RmxhMmdrM0pHQ0hvREoyOWxEZ1dXbWNVNlZMT1N5MVN0VllGQ0FEcDJaOVZr?=
 =?utf-8?B?VkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fef9989c-5615-40cd-787e-08da965583cf
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6211.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 13:32:05.7894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uIcOE+4atO3AmO69SWUtzxctMnbttqGilaoUhhY0122gS3dQ7d//jCZmp66CnvYC9DzACxtdpVgYDC7xQUgxXxa7qxkFaRuDgkvdu+FA/8E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6913
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyTIEZpLkNJLklHVDogc3VjY2VzcyBmb3IgREdG?=
 =?utf-8?q?X_mmap_with_rpm_=28rev5=29?=
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
Cc: matthew.auld@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 9/14/2022 4:53 PM, Patchwork wrote:
> *Patch Details*
> *Series:*	DGFX mmap with rpm (rev5)
> *URL:*	https://patchwork.freedesktop.org/series/107400/ 
> <https://patchwork.freedesktop.org/series/107400/>
> *State:*	success
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/index.html 
> <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/index.html>
Pushed to drm-intel-gt-next.
Thanks for review.
Br,
Anshuman.
> 
> 
>   CI Bug Log - changes from CI_DRM_12131_full -> Patchwork_107400v5_full
> 
> 
>     Summary
> 
> *SUCCESS*
> 
> No regressions found.
> 
> 
>     Participating hosts (11 -> 10)
> 
> Missing (1): shard-rkl
> 
> 
>     Known issues
> 
> Here are the changes found in Patchwork_107400v5_full that come from 
> known issues:
> 
> 
>       IGT changes
> 
> 
>         Issues hit
> 
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-tglb1/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>)
>   *
> 
>     igt@gem_eio@kms:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-tglb7/igt@gem_eio@kms.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-tglb5/igt@gem_eio@kms.html> (i915#5784 <https://gitlab.freedesktop.org/drm/intel/issues/5784>)
>   *
> 
>     igt@gem_exec_balancer@parallel:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb4/igt@gem_exec_balancer@parallel.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb7/igt@gem_exec_balancer@parallel.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-submit-fence:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@gem_exec_balancer@parallel-keep-submit-fence.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>)
>   *
> 
>     igt@gem_exec_fair@basic-pace-solo@rcs0:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk8/igt@gem_exec_fair@basic-pace-solo@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_exec_fair@basic-pace@vcs1:
> 
>       o shard-iclb: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb1/igt@gem_exec_fair@basic-pace@vcs1.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>)
>   *
> 
>     igt@gem_huc_copy@huc-copy:
> 
>       o shard-tglb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-tglb5/igt@gem_huc_copy@huc-copy.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-tglb7/igt@gem_huc_copy@huc-copy.html> (i915#2190 <https://gitlab.freedesktop.org/drm/intel/issues/2190>)
>   *
> 
>     igt@gem_lmem_swapping@parallel-random:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-apl8/igt@gem_lmem_swapping@parallel-random.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_lmem_swapping@verify-ccs:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk8/igt@gem_lmem_swapping@verify-ccs.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#4613 <https://gitlab.freedesktop.org/drm/intel/issues/4613>)
>   *
> 
>     igt@gem_softpin@evict-snoop-interruptible:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@gem_softpin@evict-snoop-interruptible.html> (fdo#109312 <https://bugs.freedesktop.org/show_bug.cgi?id=109312>)
>   *
> 
>     igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-0-async-flip.html> (i915#5286 <https://gitlab.freedesktop.org/drm/intel/issues/5286>) +1 similar issue
>   *
> 
>     igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk8/igt@kms_ccs@pipe-a-crc-primary-basic-y_tiled_gen12_rc_ccs_cc.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#3886 <https://gitlab.freedesktop.org/drm/intel/issues/3886>) +3 similar issues
>   *
> 
>     igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@kms_ccs@pipe-b-bad-pixel-format-y_tiled_gen12_rc_ccs.html> (fdo#109278 <https://bugs.freedesktop.org/show_bug.cgi?id=109278>) +3 similar issues
>   *
> 
>     igt@kms_chamelium@hdmi-audio:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-apl8/igt@kms_chamelium@hdmi-audio.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>) +1 similar issue
>   *
> 
>     igt@kms_color_chamelium@ctm-blue-to-red:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@kms_color_chamelium@ctm-blue-to-red.html> (fdo#109284 <https://bugs.freedesktop.org/show_bug.cgi?id=109284> / fdo#111827 <https://bugs.freedesktop.org/show_bug.cgi?id=111827>)
>   *
> 
>     igt@kms_cursor_legacy@flip-vs-cursor@varying-size:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb4/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb7/igt@kms_cursor_legacy@flip-vs-cursor@varying-size.html> (i915#2346 <https://gitlab.freedesktop.org/drm/intel/issues/2346>) +2 similar issues
>   *
> 
>     igt@kms_fbcon_fbt@fbc-suspend:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html> -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-apl1/igt@kms_fbcon_fbt@fbc-suspend.html> (i915#4767 <https://gitlab.freedesktop.org/drm/intel/issues/4767>)
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-64bpp-4tile-downscaling@pipe-a-valid-mode.html> (i915#2587 <https://gitlab.freedesktop.org/drm/intel/issues/2587> / i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +2 similar issues
>   *
> 
>     igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb2/igt@kms_flip_scaled_crc@flip-32bpp-xtile-to-64bpp-xtile-downscaling@pipe-a-default-mode.html> (i915#3555 <https://gitlab.freedesktop.org/drm/intel/issues/3555>) +1 similar issue
>   *
> 
>     igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb3/igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-16bpp-4tile-upscaling@pipe-a-default-mode.html> (i915#2672 <https://gitlab.freedesktop.org/drm/intel/issues/2672>) +4 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-indfb-draw-mmap-cpu.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +24 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu:
> 
>       o shard-apl: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-apl8/igt@kms_frontbuffer_tracking@psr-1p-primscrn-pri-shrfb-draw-mmap-cpu.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271>) +31 similar issues
>   *
> 
>     igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@kms_frontbuffer_tracking@psr-2p-primscrn-cur-indfb-draw-mmap-gtt.html> (fdo#109280 <https://bugs.freedesktop.org/show_bug.cgi?id=109280>)
>   *
> 
>     igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb:
> 
>       o shard-glk: NOTRUN -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk8/igt@kms_plane_alpha_blend@pipe-c-alpha-opaque-fb.html> (fdo#108145 <https://bugs.freedesktop.org/show_bug.cgi?id=108145> / i915#265 <https://gitlab.freedesktop.org/drm/intel/issues/265>) +1 similar issue
>   *
> 
>     igt@kms_psr2_sf@plane-move-sf-dmg-area:
> 
>       o shard-glk: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk8/igt@kms_psr2_sf@plane-move-sf-dmg-area.html> (fdo#109271 <https://bugs.freedesktop.org/show_bug.cgi?id=109271> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr@psr2_cursor_mmap_gtt:
> 
>       o shard-iclb: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb2/igt@kms_psr@psr2_cursor_mmap_gtt.html> -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb1/igt@kms_psr@psr2_cursor_mmap_gtt.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) +2 similar issues
>   *
> 
>     igt@kms_psr@psr2_primary_blt:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@kms_psr@psr2_primary_blt.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>)
>   *
> 
>     igt@perf_pmu@rc6-suspend:
> 
>       o shard-apl: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-apl4/igt@perf_pmu@rc6-suspend.html> -> DMESG-WARN <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-apl1/igt@perf_pmu@rc6-suspend.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>) +1 similar issue
>   *
> 
>     igt@prime_nv_api@i915_nv_import_vs_close:
> 
>       o shard-iclb: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@prime_nv_api@i915_nv_import_vs_close.html> (fdo#109291 <https://bugs.freedesktop.org/show_bug.cgi?id=109291>)
> 
> 
>         Possible fixes
> 
>   *
> 
>     igt@feature_discovery@psr2:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb8/igt@feature_discovery@psr2.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb2/igt@feature_discovery@psr2.html>
>   *
> 
>     igt@gem_ctx_exec@basic-nohangcheck:
> 
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-tglu-4/igt@gem_ctx_exec@basic-nohangcheck.html> (i915#6268 <https://gitlab.freedesktop.org/drm/intel/issues/6268>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-tglu-6/igt@gem_ctx_exec@basic-nohangcheck.html>
>   *
> 
>     igt@gem_eio@unwedge-stress:
> 
>       o
> 
>         shard-iclb: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb4/igt@gem_eio@unwedge-stress.html> (i915#3070 <https://gitlab.freedesktop.org/drm/intel/issues/3070>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb6/igt@gem_eio@unwedge-stress.html>
> 
>       o
> 
>         {shard-tglu}: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-tglu-4/igt@gem_eio@unwedge-stress.html> (i915#3063 <https://gitlab.freedesktop.org/drm/intel/issues/3063>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-tglu-6/igt@gem_eio@unwedge-stress.html>
> 
>   *
> 
>     igt@gem_exec_balancer@parallel-keep-in-fence:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb6/igt@gem_exec_balancer@parallel-keep-in-fence.html> (i915#4525 <https://gitlab.freedesktop.org/drm/intel/issues/4525>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb4/igt@gem_exec_balancer@parallel-keep-in-fence.html> +2 similar issues
>   *
> 
>     igt@gem_exec_fair@basic-deadline:
> 
>       o shard-iclb: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb7/igt@gem_exec_fair@basic-deadline.html> (i915#4391 <https://gitlab.freedesktop.org/drm/intel/issues/4391>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb8/igt@gem_exec_fair@basic-deadline.html> +1 similar issue
>   *
> 
>     igt@gem_exec_fair@basic-none-share@rcs0:
> 
>       o shard-tglb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-tglb6/igt@gem_exec_fair@basic-none-share@rcs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-none@vecs0:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-glk9/igt@gem_exec_fair@basic-none@vecs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk2/igt@gem_exec_fair@basic-none@vecs0.html>
>   *
> 
>     igt@gem_exec_fair@basic-pace@rcs0:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb3/igt@gem_exec_fair@basic-pace@rcs0.html> (i915#2842 <https://gitlab.freedesktop.org/drm/intel/issues/2842>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb1/igt@gem_exec_fair@basic-pace@rcs0.html>
>   *
> 
>     igt@gen9_exec_parse@bb-large:
> 
>       o shard-apl: TIMEOUT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-apl7/igt@gen9_exec_parse@bb-large.html> -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-apl2/igt@gen9_exec_parse@bb-large.html>
>   *
> 
>     igt@i915_pm_dc@dc6-dpms:
> 
>       o shard-iclb: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb3/igt@i915_pm_dc@dc6-dpms.html> (i915#454 <https://gitlab.freedesktop.org/drm/intel/issues/454>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb1/igt@i915_pm_dc@dc6-dpms.html> +1 similar issue
>   *
> 
>     igt@i915_pm_dc@dc9-dpms:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb3/igt@i915_pm_dc@dc9-dpms.html> (i915#4281 <https://gitlab.freedesktop.org/drm/intel/issues/4281>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb5/igt@i915_pm_dc@dc9-dpms.html>
>   *
> 
>     igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a:
> 
>       o {shard-tglu}: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-tglu-4/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html> (i915#3825 <https://gitlab.freedesktop.org/drm/intel/issues/3825>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-tglu-1/igt@i915_pm_lpsp@kms-lpsp@kms-lpsp-hdmi-a.html>
>   *
> 
>     igt@i915_suspend@fence-restore-tiled2untiled:
> 
>       o shard-apl: DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-apl8/igt@i915_suspend@fence-restore-tiled2untiled.html> (i915#180 <https://gitlab.freedesktop.org/drm/intel/issues/180>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-apl1/igt@i915_suspend@fence-restore-tiled2untiled.html> +1 similar issue
>   *
> 
>     igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2:
> 
>       o shard-glk: FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-glk1/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html> (i915#79 <https://gitlab.freedesktop.org/drm/intel/issues/79>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk7/igt@kms_flip@2x-flip-vs-expired-vblank-interruptible@ac-hdmi-a1-hdmi-a2.html>
>   *
> 
>     igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb2/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html> (i915#5176 <https://gitlab.freedesktop.org/drm/intel/issues/5176>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb4/igt@kms_plane_scaling@plane-downscale-with-pixel-format-factor-0-5@pipe-b-edp-1.html> +2 similar issues
>   *
> 
>     igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb2/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html> (i915#5235 <https://gitlab.freedesktop.org/drm/intel/issues/5235>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb4/igt@kms_plane_scaling@planes-downscale-factor-0-5@pipe-a-edp-1.html> +5 similar issues
>   *
> 
>     igt@kms_psr@psr2_sprite_render:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb8/igt@kms_psr@psr2_sprite_render.html> (fdo#109441 <https://bugs.freedesktop.org/show_bug.cgi?id=109441>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb2/igt@kms_psr@psr2_sprite_render.html> +2 similar issues
>   *
> 
>     igt@perf@stress-open-close:
> 
>       o shard-glk: INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-glk9/igt@perf@stress-open-close.html> (i915#5213 <https://gitlab.freedesktop.org/drm/intel/issues/5213>) -> PASS <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-glk8/igt@perf@stress-open-close.html>
> 
> 
>         Warnings
> 
>   *
> 
>     igt@i915_pm_rc6_residency@rc6-idle@rcs0:
> 
>       o shard-iclb: WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb2/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html> (i915#2684 <https://gitlab.freedesktop.org/drm/intel/issues/2684>) -> FAIL <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb3/igt@i915_pm_rc6_residency@rc6-idle@rcs0.html> (i915#2684 <https://gitlab.freedesktop.org/drm/intel/issues/2684>)
>   *
> 
>     igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb2/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb4/igt@kms_psr2_sf@cursor-plane-move-continuous-exceed-fully-sf.html> (i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>)
>   *
> 
>     igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area:
> 
>       o shard-iclb: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_12131/shard-iclb8/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html> (fdo#111068 <https://bugs.freedesktop.org/show_bug.cgi?id=111068> / i915#658 <https://gitlab.freedesktop.org/drm/intel/issues/658>) -> SKIP <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_107400v5/shard-iclb2/igt@kms_psr2_sf@overlay-plane-update-sf-dmg-area.html> (i915#2920 <https://gitlab.freedesktop.org/drm/intel/issues/2920>) +1 similar issue
> 
> {name}: This element is suppressed. This means it is ignored when computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
> 
>     Build changes
> 
>   * Linux: CI_DRM_12131 -> Patchwork_107400v5
> 
> CI-20190529: 20190529
> CI_DRM_12131: 3c82566040d2d01a9e98f740d8de4a9e18116818 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_6653: 4f927248ebbf11f03f4c1ea2254f011e7575322f @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_107400v5: 3c82566040d2d01a9e98f740d8de4a9e18116818 @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> piglit_4509: fdc5a4ca11124ab8413c7988896eec4c97336694 @ 
> git://anongit.freedesktop.org/piglit
> 
