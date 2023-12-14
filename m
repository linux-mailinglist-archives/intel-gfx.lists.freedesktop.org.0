Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AF65812ED8
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Dec 2023 12:42:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CD6E510E1A1;
	Thu, 14 Dec 2023 11:42:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C1810E156
 for <intel-gfx@lists.freedesktop.org>; Thu, 14 Dec 2023 11:42:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702554152; x=1734090152;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=lNIWW0bSCiLAUyNroqn9RrByEJQ86HSYwVTKZzofKHM=;
 b=hhyrl/b6gU/Sr76h+q6kLvI7gPcMDOtnGQCROPtIm6rlXPQYsCfaVo2+
 hUcVEaERyEUmnhrUyQHLVpf6mvcP2Q6VvjVq9CzojXQCXe3Y9GM1CyReq
 siPJtJTMgkuoLZJ2FWPbDkMQYOnxtZ/jE+ZvbgYt1rDKuKx60aUeiyz+l
 2uL0RGKr3k/yps6avwaX+bV449fllm2luz6XSoNHMLWp4xYG/cu+uZKsp
 tHDm8RWWQGUZd4sxoqTwBXExO+7nSkWBPL022sTvUiLNI9ac5+EFnUtvS
 GtfdEP48LcWM4qcMkVLFkVixoo5pWcL6DMxK6gh9C6d8wzOQ+w71XPHzW w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="1942982"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; 
   d="scan'208";a="1942982"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Dec 2023 03:42:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10923"; a="750508006"
X-IronPort-AV: E=Sophos;i="6.04,275,1695711600"; d="scan'208";a="750508006"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Dec 2023 03:42:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Dec 2023 03:42:30 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Dec 2023 03:42:30 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Dec 2023 03:42:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=anN9U5ChTxV9PwmkmJxH+JmdlYy0qmOXLRJzWtNQ/JMrGmQAaiNVxkWNdVxvr9laQs5wyzdo7XS1hWrcl4Myo4nLxhs2sR6RxWh1JSBJiuOlxY+Zjcpes5HTdKLn7Ol+DbchjpTIQs9QK8F4jJskjfuxPItL6K5ARFBElkBFKzE5XGc7gXbcQPmTaWBkBRlWNxJdyfgK281IpgVuUAvwbYDPZfoIHD1TudP17kxA8jF52PTanra+T/LXNIisZnc8JAWnJBrMs1JwKMoKCDirVpYoTrL3V5Wk2cmP5I6v26F1O6bgB0GC680vu+I/NHCgR66g8M8Z5sSFTG8G41M8jw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejq1FrrXX6y9fRTBFmSNNHhsItQQC/31njqPizJsxm8=;
 b=Rfa8yJOcvSquB8yhAqP4a72leNkVCXp+epFwMDlseJz2JVqdHVv4AxcIQoIGjqdDYxfLwzFffjdKgMBWTX4R7oCdA5I8I/KdKwxrVahHo9X7fkwGYBnW0hpzqgM3oMB8yiKST1XB8zFj3VPuDTBpkXoSaR2kv4KZe4VrXuzdoO6CTgZRG3bNXuWbgBn77etm1nRP+QF6ouH6p0UOSipA+sYB+IerxdPCY5VrZ5pCEYhywzwboJggJ72gOY2ER4bIiVGxOYsomRBe2EfqtdhygMT5A39qCD9KBvftVrUUD/iKAewv2+9dZPifPlJnxQP2d2xsBuCKsyld1cpdtJmTQg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by CH3PR11MB7817.namprd11.prod.outlook.com (2603:10b6:610:123::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.28; Thu, 14 Dec
 2023 11:42:26 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::51c3:59ea:6d4:8bc0]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::51c3:59ea:6d4:8bc0%4]) with mapi id 15.20.7091.028; Thu, 14 Dec 2023
 11:42:26 +0000
Message-ID: <c6b2193e-bc17-4266-ad31-4c28ce929b7d@intel.com>
Date: Thu, 14 Dec 2023 17:12:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe: Add wait for completion after gt force reset
Content-Language: en-US
To: Karthik Poosa <karthik.poosa@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20231214100641.2479582-1-karthik.poosa@intel.com>
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20231214100641.2479582-1-karthik.poosa@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0045.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::8) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|CH3PR11MB7817:EE_
X-MS-Office365-Filtering-Correlation-Id: 48a8f3b9-5ac9-486d-46de-08dbfc99be0a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZiKVPsJM9qnYjCStQXs3LaAPTQAXDAhlX4YrTwTKN1Dw9p/L6ZRTvRbg3bEYfBuJz/bp7zGdMPSIHrUF8VeJnSFOl0+GHVeKJ+Y2MtBbMsodm1LPj8WMPz/iXYltjUVW1mUPgMkU0810uu8j4jOXQpQCmNFqyz2LVMp9nYGkXWTWkg37dW9Ma2jd0d7Qy8VflnFARmej9LZyeOaDyi/ogtSD2AOwHG3d1Sq60Ip9f0S4Q4scjsDf9s+mGHFPvrlHj9E/OuhylwPdrrOKehLVRjktKLPRCZ41Irj88/qfg7dnKWuAjlD2yyyQbIV1yB2bZumJQ8bmUWznlYAxeo/T5WYLtAGudAeWUZRBmLCFhvZo9Bkhf3MtUV42OqGIpR5LETlVg1uDiHUO9y50VGKyhFvPPmVM8V0DnJibh91/IcPCmn17OfW6dzZvGtFNJEDkcxefVmCCrjsV47/22PzazGhmLP1AdmLnG4oaWTWFDPwHbi/6J/k4CdyRbmvoYMStV/E2YSSN/4jQqIYFeN0Ruv+cpBegIVBqpn8el1nel9+Zm4fwkMZtJCe9hgP6q7t+Cq8qY8nAl8KRYrR9AQoyJu7n7008gW9iQ2HBu+tYTLVMhqOzwFuUKWgBL6CPD0CPMB6Z1DCe7aMBtbVFWQv0Kw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(366004)(396003)(376002)(39860400002)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(2906002)(86362001)(4326008)(8676002)(8936002)(31696002)(316002)(5660300002)(41300700001)(36756003)(6486002)(31686004)(478600001)(6512007)(26005)(2616005)(107886003)(6666004)(82960400001)(53546011)(6506007)(83380400001)(38100700002)(66946007)(66556008)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YTdDbXd3MnJCajZ0QXNNQTJJdjUwYUl4UUxYMXBBZHc1eDMxeFhyZnljUFdN?=
 =?utf-8?B?eFRiODJIUUtpc0ZSS3pEQmJaU3lIMXVsdGFCYzB1Z1pqSlRFWmpDM3RYNWw5?=
 =?utf-8?B?bkVQYTM3NWthSWVXSE8xV1lIRzhzLzZuNDNNWmh0TWFDb3ZOMkN1ajhudUth?=
 =?utf-8?B?V2ZEb1JDVFBSUndhVXJuMmtBNzBhQnJmUDJiMU1wUWdGM2VwcG5vUCt4aGN5?=
 =?utf-8?B?M2J5eDBwd2NQend4amV6Z05XdS9YaExkMDI0NmZ1aWpJWFBUTGpFYWZRd1Bs?=
 =?utf-8?B?NmVxR3l3M210V0x6azN3cXE1SXJCZE1aelhWbk5CRWlzc0NIVFNKS2pkR2tH?=
 =?utf-8?B?UE4yWlVicVByUGE4MG0yWUk1THRDTERobUlHcGM3TFNoVktzN1FVOUdDR2F5?=
 =?utf-8?B?cjNXbjA5cjVwY2ZyelJ6OTdrTFJPS0xPTGN5WkZxM1c0ZGwrUTdEd1RzOHU3?=
 =?utf-8?B?Wjg4Q0VoMnFFNjY3TXZLZnNNNjI2dVZiU0pNeW5hRGVVQjRERHJUY0FyZU9z?=
 =?utf-8?B?eDBKcnBnUmlxNmEwUTExWVhTREdGY2gwUVM2eUlXOWZjWGlRMWRVQ3lPc2gv?=
 =?utf-8?B?OUZPNDFHeUtJYU9HWm1CelJiYXRLdEZsclpnenpiUWJxcVdlRE1QanRENkw4?=
 =?utf-8?B?NkR3N05CSWxxTWZJZUZBTXVyeE5DSEk2a2hOQXFGZ2RRMEtlUkpBTHM0RUo4?=
 =?utf-8?B?WENaQXpQSTZhZW9kU2RMM0xSZnBVU1FpWUo0QjZybUQrekp5Uk5qTnlDbHhp?=
 =?utf-8?B?MEZDdHR6dG5uekZ4NlBBNUxxMFNUM0k5SXROcjNleXZPMEdmTGV3bWNHSXZw?=
 =?utf-8?B?THFDTWpLKy81dGVTSGlSNUZkWnB5WkRsNkZac2YyQlBoeDdSaXF1a1NReFZt?=
 =?utf-8?B?WFdWV3JML2JKNkppb0tZMDNIT2pQclRneDR5Q3lmVUEvc3Z1U25ZNlR4WElW?=
 =?utf-8?B?MlgwbGV3cDVScUhtVGpoUHpMQys2Q08xN1ZWdndEdnVLY3I4VlRRWi9tY3VK?=
 =?utf-8?B?UEwzTDJtamd3RXJ5QWd1dDRkejFLOVM4V0pYNTlPMjljTjU0amRFUmN4WFJM?=
 =?utf-8?B?Rm1hbHVIUlJJeTJKTTZRU21lR0VMZDRkQzQ4K2NVaHZVd2wyNkFrV2lkcVEw?=
 =?utf-8?B?OW9TRzhWcWJoQXozMzVnWnJjMXNMSjN1VkJtdnp1VEhZeXR6L2tIYzZ6M0E4?=
 =?utf-8?B?bGdERVE3T1pUaDMwRVdZa1ljLy8vYUZHcnRsMlNOdnNXRW82Qm1SSm12RWIw?=
 =?utf-8?B?a3Nwb0E0QnpDNmlTODd4djFzaUdqTXdiMTFWMC94QVFTY0hlcWlJQ1pvREVs?=
 =?utf-8?B?ZVJHeVU0NmozWGFwenR2UnkrSnN3ZFAwNW5ORFFWbndMd08wNm8veW11Tm1z?=
 =?utf-8?B?U3NGVkRnVmhNQmJNbWdlVXZUMFQwRjJNc2ZWSDVtOXpwa1E4U01meGRCS21G?=
 =?utf-8?B?SnRoOTdSSm1TVVBLNzhFdGIvL01BV0x1TGdwWWRaeUt4NHBhRmxQMkRONzcr?=
 =?utf-8?B?Z2hZeDR6UEhrcHNKbzB3djRCSWVjSExLNTQ5cXlOR0dUUkN2ZXhDUllsM2VT?=
 =?utf-8?B?M2Zma2FEVU5RaWdpYlBQT0ZqaFNpMWNkb0JLMWZYZ1Y4VGVFNFB4ZngzV3RJ?=
 =?utf-8?B?eXMwbHBmaVlRZFV3OTJBd09KYlRxQkZYMTZWZEVyaFh5NGJLaC9SaS9xRlVY?=
 =?utf-8?B?YVBFcGZMcGxWRjFPNDVzZFE4QjNoOWVuQlhRYTA0VkxLRXpZc0JLTThEZ05C?=
 =?utf-8?B?aVFodVFPTXlMVTAyNEcyaUxHNVEwdCtFMFZrV01lcTl1NzVnbkRWK3l1WlNX?=
 =?utf-8?B?UU9xV3pETnFGWXViNllvd3dlTi8xSTkvNnd4Yk5aMEE5VG45VW5FdzE5c0tU?=
 =?utf-8?B?M2dzZ3NNNEdqbGJBY1JOSVA0VW0yTjVZYkVwMUxWUDNtaHJ4UGlZL056eUp6?=
 =?utf-8?B?YUI4Y0NFNUp0eDJjU2VHdnpkcXN6SFM2U1dEaUlzdUs1T3JxWVN5cTZyaDFK?=
 =?utf-8?B?NVBxK05ESllaaEJEOFFHM2J2SjlkTFJRMVZ3T2d6cGtrUXJGRHBTaityS2dF?=
 =?utf-8?B?eHB3eGJpTlYxeWRDeFZnOUVwM0UrMnNId2sxYUpHU0owTTVyd2ZodEdoY1FF?=
 =?utf-8?B?WS9OSk5RMXV5RnRJOEdXYUJLOTd3MTZmM2l5OXJpZ2l2bENtampyRGd1RHln?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48a8f3b9-5ac9-486d-46de-08dbfc99be0a
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Dec 2023 11:42:25.4554 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qVXk1QCMeYaZ6t9JqNfHA43eRtSW++IQHVT/rzp6jumqxs1nlSxWry93/JZFc7XABulWPwTg0BRCQ3nBznjZQg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7817
X-OriginatorOrg: intel.com
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

I think title should be make sysfs  gt force reset synchronous.

On 14-12-2023 15:36, Karthik Poosa wrote:
> Wait for gt reset to complete before returning from force_reset
> sysfs call. Without this igt test freq_reset_multiple fails
> sporadically in case xe_guc_pc is not started.
> 
> Testcase: igt@xe_guc_pc@freq_reset_multiple
> Signed-off-by: Karthik Poosa <karthik.poosa@intel.com>
> ---
>   drivers/gpu/drm/xe/xe_gt.c         |  3 +++
>   drivers/gpu/drm/xe/xe_gt_debugfs.c | 10 ++++++++++
>   drivers/gpu/drm/xe/xe_gt_types.h   |  3 +++
>   3 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/xe_gt.c b/drivers/gpu/drm/xe/xe_gt.c
> index dfd9cf01a5d5..eb7552b6dfa5 100644
> --- a/drivers/gpu/drm/xe/xe_gt.c
> +++ b/drivers/gpu/drm/xe/xe_gt.c
> @@ -65,6 +65,7 @@ struct xe_gt *xe_gt_alloc(struct xe_tile *tile)
>   
>   	gt->tile = tile;
>   	gt->ordered_wq = alloc_ordered_workqueue("gt-ordered-wq", 0);
> +	init_completion(&gt->reset_done);
>   
>   	return gt;
>   }
> @@ -647,6 +648,8 @@ static int gt_reset(struct xe_gt *gt)
>   	xe_device_mem_access_put(gt_to_xe(gt));
>   	XE_WARN_ON(err);
>   
> +	complete(&gt->reset_done);
> +
>   	xe_gt_info(gt, "reset done\n");
>   
>   	return 0;
> diff --git a/drivers/gpu/drm/xe/xe_gt_debugfs.c b/drivers/gpu/drm/xe/xe_gt_debugfs.c
> index c4b67cf09f8f..49b30937a28b 100644
> --- a/drivers/gpu/drm/xe/xe_gt_debugfs.c
> +++ b/drivers/gpu/drm/xe/xe_gt_debugfs.c
> @@ -23,6 +23,8 @@
>   #include "xe_uc_debugfs.h"
>   #include "xe_wa.h"
>   
> +#define XE_GT_RESET_TIMEOUT_MS	(msecs_to_jiffies(5*1000))
> +
>   static struct xe_gt *node_to_gt(struct drm_info_node *node)
>   {
>   	return node->info_ent->data;
> @@ -58,9 +60,17 @@ static int hw_engines(struct seq_file *m, void *data)
>   static int force_reset(struct seq_file *m, void *data)
>   {
>   	struct xe_gt *gt = node_to_gt(m->private);
> +	struct xe_device *xe = gt_to_xe(gt);
> +	unsigned long timeout;
>   
This may not work when multiple processes tries gt reset simultaneously.
Check for reset in progress should be here.

Regards,
Badal
>   	xe_gt_reset_async(gt);
>   
> +	timeout = wait_for_completion_timeout(&gt->reset_done, XE_GT_RESET_TIMEOUT_MS);
> +	if (timeout == 0) {
> +		drm_err(&xe->drm, "gt reset timed out");
> +		return -ETIMEDOUT;
> +	}
> +
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/xe/xe_gt_types.h b/drivers/gpu/drm/xe/xe_gt_types.h
> index f74684660475..6f2fb9e3cfea 100644
> --- a/drivers/gpu/drm/xe/xe_gt_types.h
> +++ b/drivers/gpu/drm/xe/xe_gt_types.h
> @@ -358,6 +358,9 @@ struct xe_gt {
>   		/** @oob: bitmap with active OOB workaroudns */
>   		unsigned long *oob;
>   	} wa_active;
> +
> +	/** @reset_done : Completion of GT reset */
> +	struct completion reset_done;
>   };
>   
>   #endif
