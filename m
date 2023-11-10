Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC717E7709
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 03:07:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93F4910E414;
	Fri, 10 Nov 2023 02:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10AAB10E414
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 02:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699582039; x=1731118039;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=v3M78NhYS2P6CgmzegNdTNQa6cd2l/2osCili8TONOM=;
 b=HSRlIdIDucbUrfZFtK5I59+2kxldCXITYWashGVc06uCHXKc2kOy7vR4
 aBBE6l7kVZQ8H2cyRsfhdOcCzD7bhMqdYoWv1BrDzZyNZgcHSlxAWUpPO
 xgMMUVDthZdwQsnvjIOxt3JUl5Z2edbGQsiKxde6C8sm3PhXj7yAr5ndV
 JIHe3nVZiD79eGiteZRMtB8hrmqveL+P+DMJpKxdsqh6F7nZ4c5pBqrJ/
 +z7WleOoi9P7B1yQ+tVXwp8I/jgnQYd7I8qX9KTFxZifDy/NtjuUnyu2o
 uBdotgH+gM2owLMpRnmGHkrMQNVho1h2NZGONbAqzUKcnIiUMQUgWgsaY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="456614119"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="456614119"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2023 18:07:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="829508490"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="829508490"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Nov 2023 18:07:11 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Thu, 9 Nov 2023 18:07:11 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Thu, 9 Nov 2023 18:07:11 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Thu, 9 Nov 2023 18:06:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hjLk1hFwtkL0rGjD2t3gkvzxsYO2rExIuYH5NEa/Sv8d67MbwadmqjERUfV5J+U4zMCL5Avc9OdfQo2K9F6dWn8zb9p1wMJjxDwnn4/RUB3fvdsl+hwMSdYWl3ozabZMMmD8SxEt5CDDvvRketFJB/VpcCvb4zR3Tb8zhxKdpRK5HXp0F6VXYmI1Zp4YGhLjmSiaTVOfBS52sUHUopPaYL8o2qz0HaBk7gX8RoNnouYjeyXGsyM2FTLeilJicfAxHoyg0iohe3OKm9oMzWxEeNVJNPTdpGpFZXf8SBHrdHn8J6GTAJmVbtpEShcdlFHymDK9qt99QuUyNEsJSYjxug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5Bp5T+1XGWP4Tq87rCk3zmxob1tSY8nAcDh+wfPJCxs=;
 b=c9E6uCTcIZk9EVIA/QzfrTcYYpov1HcnULfAH80phNvBD6KSnzcfWr0EOeiDzFuJqpGSPAxvLSP4ifAiHvjYO3Ue7MGfTYqKH1GvNUZTtZJ2DO1lNQvjHKl9S/Mw89qglbaSRxb0rQIthO2GNpBx/Xb4tWPZKfelNO5/4pi75uKHeToqyzRgDqC2WnzkSk0thqBCgW84nmpRQX+AqVI/8/T76D/vbaV5Ptk/Np0pC7otCp0hQxkwSfsBkF+ghbXl07J8Hwe+O6/+ptp8eAk3pgzq8VEhabfWpTUARi9kH9PyANyggQFw1avmJ/IYSNWDAW+QXVPVUyG4GiqOhEqTmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by DS7PR11MB6016.namprd11.prod.outlook.com (2603:10b6:8:75::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.28; Fri, 10 Nov
 2023 02:06:37 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::de08:93ac:5940:ec54]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::de08:93ac:5940:ec54%4]) with mapi id 15.20.6954.029; Fri, 10 Nov 2023
 02:06:36 +0000
Message-ID: <7d82bd6e-ce31-4e1d-94c5-4373b65c0c37@intel.com>
Date: Thu, 9 Nov 2023 18:06:34 -0800
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231109235436.2349963-1-daniele.ceraolospurio@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231109235436.2349963-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0373.namprd04.prod.outlook.com
 (2603:10b6:303:81::18) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|DS7PR11MB6016:EE_
X-MS-Office365-Filtering-Correlation-Id: c381c748-df9c-427c-501d-08dbe191ab09
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yCv45ID1JgtzCbLtAngbka/Kc9xKLOW6czOmQEnYWvzLmjOA1zG2BZ59b6Rhu0K6UjOCFzKfJJG45A/4lkl8TXtcESL89IdMVv+/PjVse81dJvz41HRH94tpj+FuCM1vTst1Gy0FGi7Ytt8RMroHq2qPxI5DA8bD6szS3yXL7v4vP9LEzEtH5ZO6yIRshViZp+0UzyLc/OqFHnsMhIlKGvrFaSQjZ7YF1oCulwfJeJBCMUkUOFZRpj1M6cfGgTpEvY9407Zl46MJ3ay3qlWyT/vu7B0N2qvZ/NckI6+RbNWw3AgC6torgEN+tnFRI4qs4RVOV+rTv+8i301UFdEyARj7GQR/8UxPqXfq7vP4iwMJplEkgWRTX5FPHO/kfiBzOb7EgqxTRzZILDmx4ne98djYzkUsz/HCh8vYjni2Az4CTkOv7Vl4SDdSLPIQHmkQEliO00QUIOzSaBvZPYnT2lGirhFgbRF6Chq+oN0fUbBbDR/nCe2VZxDPx/fIXWigUrStgLhqiGUV3OM9MPiX2utblmq80n8l34iIQdRD0Yoz6oMDD8eHmn3mgROtwWfdw23qcXk/Dl2es7Yx8aEkpmNgx+Xh2fOEnqvRT5G9hnKUf3iGUC/QE+sFj0Ragpnp+DRX0ZI41WU4qqVRb3bdU1LI7TWyoLIzsHdnzGnA5H7kIU7YwF6SulfrIskuR5Wo
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(346002)(376002)(39860400002)(396003)(230922051799003)(230273577357003)(230173577357003)(1800799009)(186009)(451199024)(64100799003)(36756003)(5660300002)(83380400001)(26005)(8676002)(316002)(66946007)(66476007)(8936002)(66556008)(41300700001)(6512007)(6506007)(478600001)(53546011)(6486002)(2616005)(82960400001)(2906002)(38100700002)(86362001)(31686004)(31696002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0NpK1BwaFhFTmkxRndPdmc0VjlTbGJlNmszWmdib0NQM2VFRlo0TlBpZmV1?=
 =?utf-8?B?MFBWT0tBYUNTYm9ieFhIbS9jUnFhV1BHY3ZFS0lLUUhqSWk3TWdqTmFEZXpj?=
 =?utf-8?B?dDlJaS8rODRmK0lycElsZ05SNGhTMWszenU5K0FLNXQzcFZUNkJTVXFaNDBY?=
 =?utf-8?B?NldFTHNQMFdnWDloTVFhL3J0TG44K0JTWjFZZW9rbFROQ3FsSHAxQzVnMTAx?=
 =?utf-8?B?cTdGbHd6aGFtV2xmMWZ3V3JTbEtJWW5sRDJwTlhGdzJTUjB4bTRMSHZNT2Y4?=
 =?utf-8?B?L2NQQW9tSzZXdjBtakRMbFRmaGFsM2MzdEJTRHdENWthT0s3NlJKQ0FPZC9Q?=
 =?utf-8?B?OGQyejhhSlcwbkFzMTBvSWNyR3lTSXpOd2xmTW5OQ2lMQ05kYlUvdlo3cmcr?=
 =?utf-8?B?eHVkMlRONXBQbXBDQUVWRlI3d1JOMjV1dzV3V25DNW1qNHNBcUk3YktoVWJl?=
 =?utf-8?B?dzM3eVkyQ0pGWGdXdFFTbng2alhaTDR4TEhqQmxYZ2lhMWJKaHNaellUalky?=
 =?utf-8?B?UEtDV3RaQ1RabXJ0UTg2YWhIUlRrZmNMT3RncUFPanBIL0ViVTRYZGpCUmRu?=
 =?utf-8?B?bHRzSFpGT3M5aW9zbk5oWmt3WTl3TVZrU041KzJaZ1VFeVlvVzQvN0dzVVB5?=
 =?utf-8?B?ak0wZXErRmJPZysxSzdEUEZ3dUJvaEF2bEN4VnhKcExWakZ5WUlsODIwSG96?=
 =?utf-8?B?b0QyZ0M2Wi9YaE1jV3JpcC94U0RYTHpRVmMvQVpDaE14SWU5SEZSRzNvOURU?=
 =?utf-8?B?QVZROFZjL2Y3K3JTejJLNVYxZi9rYTIrUk0yZkg5RjlKQ0VPUlVVVGJ6TTg2?=
 =?utf-8?B?OStKeXBPdzNGcUtvTHZtTWNNR2JFQlpqNklNbzZjQjI4NDYrWjhKNVZZYXV6?=
 =?utf-8?B?ZWFGUjFDNzlMdG5CUEpCSW5McUwvUWtueHV6UXFmWnZUSVpFbmhBenFKeC81?=
 =?utf-8?B?cnNBRkVBNk5rV29MZ2RvR2p3MFY5Q1FUeThLRCs2QkdLYm1XcnJMUVdLYWk5?=
 =?utf-8?B?MDRmZE5zT2tzWktjakR0dkFvYUJEMHRsQnh3aXd3SXAwYjI0YWg0Q2cvelVt?=
 =?utf-8?B?V2o4TGN2Wk1jQzY3b1dBdlY0S2Juc1RYa3J4cWREYitLYU9HbTJKQmVKK3lW?=
 =?utf-8?B?L0tuMmlGWW5SNFN3K1pkNkk2RTIwckYxQ3R3UGhmbTQwcjJhcGJhOUxCaXVa?=
 =?utf-8?B?RFl1dS9KTUpad0lDeWpGbTJvb1kxN1l3TXdaVlhiNG5tUmhVc0x4SzJyeEky?=
 =?utf-8?B?MUh6bDQ1SHBLOGp4QjUrOWJOWW50SnNlNXNsMGNvcUR6cFd4STIyY1E4SHho?=
 =?utf-8?B?Qm9YYlNBbFlhMEZKYWNjUDAySlMvT2xvT3p2WHFWa1VHMVZ5cjJOVkw2YWNi?=
 =?utf-8?B?QTlqWjNMcHJpczBCSHp1bGFVUkh1UEtMcVZ2VUdwVEZDQ3BKTjJGRFArUHZu?=
 =?utf-8?B?OTJQTDNYSEdEKzN1djI0WHVxRkM1Z2hYc29mdVp0S0U4TWxMdWdPRWxSMU52?=
 =?utf-8?B?b3d6TkdSUm9SY050Ykkzc0lhTE40ckxQbmRIekFZWHJDa1dXcXNWb0U1MEdq?=
 =?utf-8?B?NmkxQ1FoRDE4NERIaUllTjdYemRoS3VYejFKOE1UL0tvWFVIVVp6NmZlYXlJ?=
 =?utf-8?B?d1NrUENMMXUwNzRHSkJrUTRmR2FBWDdYZ3VuK1FrUmFaM3dlbVRJNDIyMVYy?=
 =?utf-8?B?UGVuUktlTFhVcVhyQmVkVnB1anJjanVGMUNneGpEL1FzSi9mWDM5a2UyY3h6?=
 =?utf-8?B?WkxRNHhheWVaWWw1TG1lL3NCMklXZmI1RjYyVXMxWEttaUVMREphanJySUx6?=
 =?utf-8?B?WmpIVHZzd3BGbC9iVy8wK1Rrby9HMmRrUnhvblVsczhDdndrdEk5NTRLNGQ5?=
 =?utf-8?B?SkxWemZDcThJR001ay9NdGlzY3BZMzdJcEI0anZLb0RGL2NUOVpCT0xYNnFV?=
 =?utf-8?B?S2dFeXEwanhGN25WVVV1ZFRQN08zNm5GK3dQdjE5ZG5yVCtyc3g0bFkzeWFt?=
 =?utf-8?B?MW12QWxwdktLQzBVUGtLZk5CUUFzazMxb0xKMjVmWkN0ZVZ1ejFpUEhHYXdZ?=
 =?utf-8?B?anRydmE2Sk5DQmZOS1c5QmxXbTZUMUxtM3RZRlc2OVJjaTN6Lzk4NjhvVHlO?=
 =?utf-8?B?SzNQdlV4clBoS3Q2aWJpVXZBblRuTFp0Wk5mYjFSSjVXYXBnZ2pMZ2xlNU5G?=
 =?utf-8?B?VWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c381c748-df9c-427c-501d-08dbe191ab09
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2023 02:06:36.0677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KMqCoRbK1oTj7U0GBFw65nyglEbteuhELTCAF8YE5dAIDh+NOyPCjwr9Vjy9JOzx1rtvUNRdi6od8oOsc9jwu1d35YMpxYML+gPlfOiwGUE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6016
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/huc: Stop printing about
 unsupported HuC on MTL
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

On 11/9/2023 15:54, Daniele Ceraolo Spurio wrote:
> On MTL, the HuC is only supported on the media GT, so our validation
> check on the module parameter detects an inconsistency on the root GT
> (the modparams asks to enable HuC, but the support is not there) and
> prints the following info message:
>
> [drm] GT0: Incompatible option enable_guc=3 - HuC is not supported!
>
> This can be confusing to the user and make them think that something is
> wrong when it isn't, so we need to silence it.
> Given that any platform that supports HuC also supports GuC, if a user
> tries to enable HuC on a platform that really doesn't support it they'll
> already see a message about GuC not being supported, so instead of just
> silencing the HuC message on newer platforms we can just get rid of it
> entirely.
Not following this argument. Someone might attempt to enable HuC only 
and do so on a older platform that supports neither HuC nor GuC. There 
would be no GuC warning because GuC was not requested. But now there 
would also be no HuC warning either.

John.

>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <john.c.harrison@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c | 5 -----
>   1 file changed, 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 27f6561dd731..3872d309ed31 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -106,11 +106,6 @@ static void __confirm_options(struct intel_uc *uc)
>   		gt_info(gt,  "Incompatible option enable_guc=%d - %s\n",
>   			i915->params.enable_guc, "GuC is not supported!");
>   
> -	if (i915->params.enable_guc & ENABLE_GUC_LOAD_HUC &&
> -	    !intel_uc_supports_huc(uc))
> -		gt_info(gt, "Incompatible option enable_guc=%d - %s\n",
> -			i915->params.enable_guc, "HuC is not supported!");
> -
>   	if (i915->params.enable_guc & ENABLE_GUC_SUBMISSION &&
>   	    !intel_uc_supports_guc_submission(uc))
>   		gt_info(gt, "Incompatible option enable_guc=%d - %s\n",

