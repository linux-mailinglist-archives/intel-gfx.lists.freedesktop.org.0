Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE5A567A69
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Jul 2022 00:53:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F100010F7F1;
	Tue,  5 Jul 2022 22:53:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3232210F72A
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Jul 2022 22:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657061608; x=1688597608;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=A9I62PUmUif+S5MAS4f6zZ8pCjN3rvEpbP/+7978tsE=;
 b=Vt63k57jg3we5Oc7nRIXzPBwQgakI03HBDYT6Ko2xwVsOUhMlcf0vnoi
 np05IausC3PXkNGkh0PZRzIrHPGp2qL/OTF2PYZ02FCnXFXB92ApP42gL
 CYmRw44NcKBjnnlkTU2w9VHnTmfsV85qq6WdSIQWkUlGmAX7KPGuBPfCg
 dJrbsdq3Tey5wZPDO+HV48G59/8bk0F8VScTKe54059Q+NFwwVPABR2Wf
 I3OWf+otMsJnFh63J2WlnpSbznUJYtDGlODQcKYuRgL9TPh06mRs4WSrV
 LbSDzs/E0cPVmoRVnociY/xP4EYp1ylGYsyiILODNAHfNnUGOEm90npS8 Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10399"; a="284287569"
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="284287569"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2022 15:53:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,248,1650956400"; d="scan'208";a="543142329"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga003.jf.intel.com with ESMTP; 05 Jul 2022 15:53:28 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 5 Jul 2022 15:53:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 5 Jul 2022 15:53:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 5 Jul 2022 15:53:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTpKPRntIs5ZKDlnpxuy+xthpTGiHs/VWLq9ZjVfnu58aEOdJxVPqM2WDJJOuF+SEmuJ6iIqobRR6Jchox2tYnLIpQ5YcP4zib9Zssa9h2qEUbwx6GDc5hpzoFYAnu2kaMhMAfSMDn9bQN7T1V0o5eHec7ur9U1eaMNsRGeG7wbrgEcd0Pw7vgFaGjsggbBs7sXNNyLL01mRmaZwI7WZO3yNEjbkBXwiTsDyRIsJk83d2d4y44ZvojBmho58I+UeKw8XQW1rHk3jgotoXntun6AFhca88tZlJu376moKVrW1UEJ023IwgGwrXsWW61FT6kJANlhvPujTcMz+OVmsqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QP1Wi41vuxePEN+Wmb8EEjut+fA3IRqQ7mK0Jv8tJoE=;
 b=kn4rE3rukJuioFZsp2TVjDeMVyunGQ3FNH1okHDcTuTvN5qKA+WmTf/17wlTNW/gt+8IfjkO/YQuf+nzPKFiNNEkh/I8iZmrK1uxPUKEsMKJRlX/bC+QYFzltFIqdlVHwAs3T2d73IguDFfVHALQiBfP9PlBvmu2B33Lxyl80f3gkc/f3PD9XEufGtSOSfyTTzE1uqnzbBFyzCykz5hTP0ZJqSGbT6n/OaT9iy+XHJX8yCdWb1nZjiWBYqjW1lue8IlEWLelo09RyAoNN7BysEkkv+XCLOaeRl8UFekOyZXkFGDshnudDyvxPV3wRppYHG00To0cI4SUc9QwQhCI8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by MWHPR1101MB2175.namprd11.prod.outlook.com (2603:10b6:301:5b::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5395.15; Tue, 5 Jul
 2022 22:53:26 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::516d:4bc0:8e7b:9a12%6]) with mapi id 15.20.5395.021; Tue, 5 Jul 2022
 22:53:26 +0000
Message-ID: <b0ac5ad4-f028-6c7f-e4e2-2f3e0f40ccb0@intel.com>
Date: Tue, 5 Jul 2022 15:53:23 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.11.0
Content-Language: en-GB
To: Alan Previn <alan.previn.teres.alexis@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20220607002314.1451656-1-alan.previn.teres.alexis@intel.com>
 <20220607002314.1451656-2-alan.previn.teres.alexis@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20220607002314.1451656-2-alan.previn.teres.alexis@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MWHPR13CA0035.namprd13.prod.outlook.com
 (2603:10b6:300:95::21) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e5a0b28e-5eb7-45ae-e372-08da5ed92be0
X-MS-TrafficTypeDiagnostic: MWHPR1101MB2175:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yyPOUiPnuTrRkCg7Zd/nVsjbRSJchj6og2phsojS3AsV2N/gjyVtaR246E7JAe9wDzoFgP9xWA9DhE7gnwJDooI7EKFQz8HR21vrd8+b1IS2zze10XZ3hjAhnRkDF01mWq+qfLe3AY29y3VrUFKctywAh15Y2b0mNS5JP3o6L3dtOuUCDRn0rBYv19hbVo4o1YVwxqw4aPsyMo17/Rt56o+mKZP0VM9nmgktexVtzoGauHMfoi2t9sOXLcOrq0iYQzn9jP/2zUvQWeTbIVJYm17Q1zDdDjnWe+vDIUypSb4EPmUk4QaNl2hu9t+slJ1LNy+DQF6nezfhO2GXmN9emXog17EEvZMvjzuZ4uQg+KzcMkhfMGPjJHuZkRR7v+RmYejEdfgMzNwlooh+IdPQGUhQ83gEfFQkPSQZRorrq+SiM5KFNgCCkSYc/PF5bpoY8P72IG/jyAW3rWL+P6yxO3tJjp8xDioPfgnWTd4pb820BXA/VoruymeLhlYuVGsrk8qlnrSANNB6dcNiCZE+8J5Q6YX8iX+MBRIn/O3fi8VaaZLq2vrcYs6MlDiS1uaYV02/8LP0Tiyb51eD3kb4mZX8o/KRg0PWQ4oP7zAPLzwZXBVn1V6HhC8dTFOsjQqPKLuwYrYUflfSyZ7LDFAxj3MSSAT0qaTrNwqKquaVjWH+Jq7KetoO2wk9aE2IS1QIrBVqMFQEAv2RnunRKYQ2QZ3+9CGSLCto0TVmQNGopqm/91FILEoOvYK1yx9/HRqqoAvkGc0siGJraZCvIsu2fQ5nbtIzhU9fU83vi5ClEKX2XTljJwEkFydOMHVBGP08R4uUeac4ZMqRE+OR/wfukP/DeegBgcdzaUYxneraVbg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(366004)(396003)(136003)(346002)(376002)(38100700002)(66946007)(8676002)(66556008)(66476007)(6506007)(5660300002)(2906002)(86362001)(31696002)(82960400001)(53546011)(8936002)(2616005)(6486002)(6666004)(478600001)(41300700001)(83380400001)(316002)(186003)(6512007)(26005)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGNLR1lKVUNydDNOWDJFZ1NDZThSY3NaYkF3UE95ZDBiZ0VMbmNrK2xsMDN4?=
 =?utf-8?B?K0lHalloYjg3UWpuY0lTcUxRZFpqOW5IN1p5NTJtN1JmdkJZVmdZcXpWaVpY?=
 =?utf-8?B?YUxkTktGeTNuNG1ycDBXQlFOekxFOG12UGVBR3dSQWNPZE40MHc2L0IrRllk?=
 =?utf-8?B?dHA2Yi84eXNSRDZ0TE5aaVBud0pZNE1USkZHWVI3OHM1NHpVK1l3aEZQNXVB?=
 =?utf-8?B?ZGpVaHQvRWJZVkZrc2wxVTlITXBMNExHU0FDZGhnd0F3aUtEdkRIbXNaRU9R?=
 =?utf-8?B?dkJRWmJlaVRxcmF0MDlpajRjaUU1Y1gwNEVONU9EaWMxQXp5dnZ2Q3hneFdM?=
 =?utf-8?B?b2M4amwvQ3M1MTkwWTdRMEd3OVdIa2UreVFWcnJ6eXI4V1pwbk9MYVN2cEhM?=
 =?utf-8?B?eDVnVStUenBoRlVkSTh2MnoxMmxIN1haUjJUc0F4SEpBMDZuRmgxTzNpN2xr?=
 =?utf-8?B?SWVYay9CRnNoRmExbURNM05DVmdjUll3UXVLYUZpSElXTWdHbVpJd1MwNXh0?=
 =?utf-8?B?SFlObGx2N3hieVZFRnlaTXRjV21OdXBjU1FwRjZ5RzdBUmoxU0RaTm5Sc1Bu?=
 =?utf-8?B?VkloTXlOV2RyRnR4dFRZRkdDNUJwVmFhaVpINUVEOVUzUlM2eDNJL1dLclBi?=
 =?utf-8?B?NnEvOTd4WEJHazRBRkY2bDlKQTVMWGRjeTRqMEduTGRGUUlVRXd2YnRBYWdo?=
 =?utf-8?B?R2VXaEpYT0x4U0p5dVRDbjFJSjJPUGF5bWVGTVNReHRKY05mRFRKZUFuVHE4?=
 =?utf-8?B?cGhMRFhmaExEZ2crMlUrb3VmajlRSkZKVjhTSlV0ZzllTVhkMFhPbHErT2M4?=
 =?utf-8?B?NFowVmZqMm4yR1FWSS9NREF5bzR6YWdVYmdBYUpHYXNPclRSajhsK05IaDZM?=
 =?utf-8?B?a3dZSEE4Zy9Ob2Jnb0lsamJUMmhVK21BMDZicXlUSWhMaUNvVGoyUGR6c3g3?=
 =?utf-8?B?aCtiL2tPbDJlT3laR2o3bkRTVWNMeE1MV09wUnQ1NVlibGlzV3F2S3E1cHR1?=
 =?utf-8?B?bjljOHhCdmVrWWE3dUg1STFvK0ViY0daZlBiMU5WYyszaGZIbFRiakN6eGtw?=
 =?utf-8?B?eGd2Q0wrMDA2L2FWdWlMNFM0SFFjZlNMOHpadVI5eVY3QTBYWE5nVXFGUk16?=
 =?utf-8?B?YXdRRk9TNlR5TDV2NkNBekx4TE50cVUzYm52Q3dTNEtZMndyL21uZ0U3WWJh?=
 =?utf-8?B?OGhkYWVhZjdhOFcwOTNQeWV2YUc5RTU4eWthV1F3bGV2ZVc3OEY2QkFyNmZD?=
 =?utf-8?B?cUZNbkpIdzM3NjZKNm8xeEFCeEo4QTI3cXRjWjFWM2tBUzNtVzJMbHZ3dG5J?=
 =?utf-8?B?U1FYTU0rdlhSWUJtZ1p5WEFxYnR0MmVhbXo1OGovSmNJMWpleksxK2doS3RU?=
 =?utf-8?B?RnIxUVNEZ2F5bjZ4R1Q4UWliVEV0TmNJRlBOSTFPZmpVN1kzMlVKdTViVDRT?=
 =?utf-8?B?aGZ5aXhmMDJ5WitjeDF4TzJuaVpNbWx3S2NsTGNZdWpPck1ieHRoVmFJSmxH?=
 =?utf-8?B?ZXJIemtBNjhwRGUyM05jdHZ5bjJzT1UxdVRGbmUxSWhPNjhEaVNWeU5NQ21v?=
 =?utf-8?B?QzlvblVUR3hlWGhiUThRQ0dGdFJldEwxUktiY3NEQ2FWb295aXcyOXRRZFdF?=
 =?utf-8?B?dTdZc2xQNFpsRmVrV3pKeExERHo4eVZLaHBKbjRLckFneDJZanpGRm4rS0tZ?=
 =?utf-8?B?VnFwa0p6Mk1jbVY2cW9qdTY0L1NjR1NZK29OdFZTSm1lTE1OTmMrbEVGR3Ew?=
 =?utf-8?B?OWJGZmZyblBqeDlUYzVKeGYzV3pKRjBjcmwydUJsQ2pjYXAvZXFqNlNXQXd5?=
 =?utf-8?B?eG1QVzM2RnRyNUNQMXk0TXh2bVZCUEM4WDdscjI0L2hEUXVlQ2F3SXc5WktM?=
 =?utf-8?B?amxiSXZNVXdHRnJETlBDVkl3TC95cm5zRzdhSnJOSHprQjZPdGJVc0h5ZXBz?=
 =?utf-8?B?dHVadTh2US9BL1Y0SHgySmJZN1VlcjlDSllaa3Nsck5rTExid0dvYkVVelNP?=
 =?utf-8?B?SVRoRnFNSUgxQUpUSGZHN1NWZkoxQXlETDFhV3dQTGFqK3lsRFhwZmwvNjAy?=
 =?utf-8?B?SHUwOHMyMEtFbjlZeCtweVIzNWo3bkRTWkNKN01Hekt0dHltWDREZVcvVG9k?=
 =?utf-8?B?ZlhUZ0lGSXd2eVBiZEVEcWJtVmluSDlTQjNUYTJUNmRlTHkxU2g3QkI1THVR?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5a0b28e-5eb7-45ae-e372-08da5ed92be0
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2022 22:53:26.4669 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dti5tuTI5fF+opOrfsBo7PVQJpCwWp4VH/A4bKqJOFnPffdgB1W8+xN6MMdkKu52Ne83B+16SQfyO6Jd8erk3uQkiGFBt18jQDuONH0Wdbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR1101MB2175
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-gfx 1/1] drm/i915/guc: Asynchronous flush of
 GuC log regions
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

On 6/6/2022 17:23, Alan Previn wrote:
> Both error-capture and relay-logging mechanism use the GuC
> log infrastructure. That means the KMD must send a log flush
> complete notification back to GuC after reading the data out.
> This call is currently being sent synchronously.
> However, synchronous H2Gs cause problems when the system is
> backed up. There is no need for this to be synchronous. The
> KMD wasn't even looking at the return status from it. So make
> it asynchronous and then there is no issue about time outs.
>
> Signed-off-by: Alan Previn <alan.previn.teres.alexis@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c | 3 ++-
>   drivers/gpu/drm/i915/gt/uc/intel_guc_log.c     | 2 +-
>   2 files changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> index 97a32e610c30..ffcd7a35f8df 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_capture.c
> @@ -1261,7 +1261,8 @@ static int __guc_capture_flushlog_complete(struct intel_guc *guc)
>   		GUC_CAPTURE_LOG_BUFFER
>   	};
>   
> -	return intel_guc_send(guc, action, ARRAY_SIZE(action));
> +	return intel_guc_send_nb(guc, action, ARRAY_SIZE(action), 0);
> +
>   }
>   
>   static void __guc_capture_process_output(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> index 02311ad90264..25b2d7ce6640 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
> @@ -31,7 +31,7 @@ static int guc_action_flush_log_complete(struct intel_guc *guc)
>   		GUC_DEBUG_LOG_BUFFER
>   	};
>   
> -	return intel_guc_send(guc, action, ARRAY_SIZE(action));
> +	return intel_guc_send_nb(guc, action, ARRAY_SIZE(action), 0);
>   }
>   
>   static int guc_action_flush_log(struct intel_guc *guc)

