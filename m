Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 120087C5A73
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Oct 2023 19:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 871DB10E00D;
	Wed, 11 Oct 2023 17:44:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7168210E028
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Oct 2023 17:44:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697046289; x=1728582289;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=laqK7bwUphyVRQhlhsLzJC6Pq53UiPbxGJgXjyTXcI0=;
 b=jNpojBu0lE4wo8Jvd2N7TLp0sLU3k/Aqu0A467Rmfuz/qzOs2SOfEVww
 z13UeJ4mGn/w5/I1UkbStxVWVw6UU3WxyIbXR98+vNkNKzuXRHHQZR4dY
 MluIcLam8Edf5eHllFFSkPEMZohMUz58Hliw2VO1jfy4Oc8KnIRWMTbh3
 hzvINBZdN8Xaaa/2SoRblIF/llwzrNV5wlRWOncX16QDct3TT3wtlCoiv
 DqlYtHzSW4Rkn1HR6YyhGHHj1WeXOEGLB8vROHvJNaDQ5B141Iza9+gyQ
 3P/xCrk/KlrNJZHTA3TMMQvPs+sda+BqK6HBIRCC3YAcEyUYtw8Ohz0IQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="451216524"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="451216524"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 10:44:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10860"; a="870242232"
X-IronPort-AV: E=Sophos;i="6.03,216,1694761200"; d="scan'208";a="870242232"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 10:44:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 10:44:46 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 10:44:46 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 10:44:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WGFqSumlPIRRwnzykAoCxLE2T0vGhhEY9Z1Fd/zsPz7Do4U76MasuKyhMH+Ux7q+OEMluZVymXlv0oJwGp3vQlUOoBjrAX4aQGntVtDI9nKKM+TnvL+NmAeWbh2+gLKeS//wvdYoiugoGOPYoUfpDiiPvcuQ1Dfyn2FcNSTPj674E5QdobmjkJ/bTQfRtDyYTxo92xCtMMZzVfvWjqP8/yrjzTlzjMB5ptMzczK+vjzEgzultwFJHJSxf6B61TT3p0ZjVfktqoHLF4AKcsCJtK0iqEvLVipS7j0RDxAzrfP33gHCMKzDqUyfN0qTlKzL4zyziNQ2Xd3f3FIpK5q8ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uXYoQM88RClRZ0aqHBTVfZ0vqqtk0UcltMxL0ZiR9OI=;
 b=RbAicObENB6FCWGQiVJx2cV7XSfrDtq/oY871OBGia4I25VtB55xs9+g3m8Pqnt1AiJt12uJKmmpU7NfnAPIHO68PQ6PkAXYfQ0PYtpwPPWYiJb6pjL0pb8Exb+W+C4uGl0pcXneIW07WN39sqDnWqeh6LJXB4pWYwl9HyWYiyKKx+z7MnQy7FfXp4X3jrPjpbii9nhEGm4GeJMcG1t67TKnLSZH5PWlNFbXda5dzs3r9TdTIMsRtCnIqfQ7iqk8P8biSLTPDrviYATw0uDU4C/n5RD10UfwcvJNEpi51YOnG+EkI+V7LP3Mp0DqtaNEUvxQQLmRARc5XXZnC6cUFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BY5PR11MB3911.namprd11.prod.outlook.com (2603:10b6:a03:18d::29)
 by PH7PR11MB6426.namprd11.prod.outlook.com (2603:10b6:510:1f6::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Wed, 11 Oct
 2023 17:44:42 +0000
Received: from BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5]) by BY5PR11MB3911.namprd11.prod.outlook.com
 ([fe80::a782:6fec:8d96:27b5%6]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 17:44:42 +0000
Message-ID: <b89d9426-ac5e-42ea-9107-09c954e5506b@intel.com>
Date: Wed, 11 Oct 2023 10:44:39 -0700
User-Agent: Mozilla Thunderbird
Content-Language: en-GB
To: Jonathan Cavitt <jonathan.cavitt@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20231011000248.2181018-1-jonathan.cavitt@intel.com>
 <20231011000248.2181018-3-jonathan.cavitt@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20231011000248.2181018-3-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0248.namprd03.prod.outlook.com
 (2603:10b6:303:b4::13) To BY5PR11MB3911.namprd11.prod.outlook.com
 (2603:10b6:a03:18d::29)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BY5PR11MB3911:EE_|PH7PR11MB6426:EE_
X-MS-Office365-Filtering-Correlation-Id: 24ddc89f-f012-47bb-e243-08dbca81c00e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GmAX6W4zAgzLyj+Gv7jenTav9Zy9mugkIOh2M6SJJtLRTno8T4B+MNus/tdW2+xFFIiEgkp+j7diUmyLrnTtyINNPzpA/HWnko1h64irxufmd0coXABMfQDa1V/GpLq/4EohtZmeT6EwxxxyE9O+NJ/EoIeXai0zmpADh/DyhlhAwV06J9rulKx5DRCpHcJZkMgITQq9J72jK9AMlWzeW271gFErHuJTGx5Izn9RF51exQ6sjb6bhQ0ZeDQNUGrLlhaenMnae7VvqzhCD9eWQ1IbrdNpvML4h1sZ8Ukd2Yz5aYaA6R5At3SU3jt0ju3IWoj/mYqEzGyIbtfHfvAKXlkOhBOxAJsKKYBuV8J9UutbEzRgh2aNYLT9tFu9RldQbbptxaxHLbZoDClR9phECHyCrfOFlebRixyOi5RAAfohLy4s/0xuWAH9IKG8O9WWK35kGccZCZ8npRoVccOUvQucAAY8O1HA9TDNEeY8pfbuiYN/p7S2CdPwWpszctnP4l5pEhU7JSO4Y8oTAjQoOgk408UAnQSRYy/ItCEEe/ggwfOCDBzSV6nGngUwlOo13NAvv3kqr2+kQ4Uw05PlqmNlRLbkZk7TH6vSFwXLqNXoUmSAiU/YC+bwbfL3ldcHY9sLG0oG7JcNWEcV3k0JWA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB3911.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(346002)(39860400002)(376002)(136003)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(26005)(66899024)(2616005)(5660300002)(6486002)(36756003)(478600001)(6512007)(6506007)(31696002)(6666004)(86362001)(53546011)(38100700002)(66946007)(66476007)(316002)(8936002)(2906002)(4326008)(82960400001)(8676002)(41300700001)(66556008)(31686004)(83380400001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MWl3TzBRalRCdElVMXNjY3Vsb01ZVFRnVTRCOHR3dWZMRm0wcm9oNVlWeEZ1?=
 =?utf-8?B?QUNya3c5Zk5iWms4cWxrUUV2RFZ5NWc3MVZxUXU0cEd5ZHphY3R0VkM3Qjkw?=
 =?utf-8?B?QXlxZW1FUENldWhoenpXSGIxaXN6eDNlV25JTUpJZ2VhTFlid3lEcC9kYndu?=
 =?utf-8?B?YWo5S3oyL0ZCZ0tWRGx3Q0ZUMXNSSjIwNDdCR3FUYkhmTmwwazZCMEJwcmIw?=
 =?utf-8?B?eHpBaEYvbjE3a1dmdzM2R0ZZYkEySGFjOWRWeUJQOFg1aFhVQUJKVHpQTHlC?=
 =?utf-8?B?Z2pUbWlVVW1mZlFZRmxwczgwUncrN2MvMnd0Zmd2Z2dWZFB3WkRKL3NsOVk2?=
 =?utf-8?B?RnlRRmxYTVJnNFJYNWVrcjVnRFluZlk4aFE2ZnI1aU1WOVFYVVMwcU1qZm82?=
 =?utf-8?B?M2ZZQTJvU0EyTlpKYnhHVW0vdC9OZDErWkVRTVJ2MTBRaG9acHcyL29JMzJF?=
 =?utf-8?B?TDBlS1ZmRTVvWkRTYnliZEE3RGhLZVVDUVcrL3pjU0FDMGZuaXplOFFMeHE4?=
 =?utf-8?B?dkQvL3dVNytIRDE4a2dzcUN2dFZDek9GcURON3drVVc5RXBQcklib1BSRUJz?=
 =?utf-8?B?MmVnMDBuQ2poM04wUlRSTlVxVjNmczJQLzBPYlNlYUxocXFLRDBNY0tzWnZi?=
 =?utf-8?B?c1VPaURmRmYwNFh3THRaeVNuN1liVnBIYVJyUEsxNFlrM1NFWlZVK041dUNm?=
 =?utf-8?B?dzZ4MWRDdXdaUGxXNXZ1KzFxelZwY1lDclRvYlFGNGF1SkV4S05QOWNoNndH?=
 =?utf-8?B?STEwbStEc0pTcnJNRkdUQVJsWS9sTDc0cm1mcEtMN3Y0ZDlJNitjdFFZa3J0?=
 =?utf-8?B?WlhocXlodnRWMUx1OENLa1dzMGVSbEZCaGZZUDJMcDI2QmVrOW0zTjhOdzRv?=
 =?utf-8?B?bXBGSm1TVFphNmtEVzhnTllCbkVOYkg3WjJUTUhzLzEyR3FXVlJuVVowNGFI?=
 =?utf-8?B?L2NxMTBOWUVYUVpQODdLeVNtVU1ONGx3Nyt2YW9RS3pGTkVQdnVNejVsS0cx?=
 =?utf-8?B?K05qeGljbExOdDBsdTR2SzNVNVRPMzZrRDR4WWEvOVRkN0p1b2Rha25JRWFY?=
 =?utf-8?B?SmM3V2VUb1dQZEFvU0E2RWdvblJJL1BQekRxVXVMSzBtZVc4YUdoZm43N2J1?=
 =?utf-8?B?OUQ4TmdtTEJVTnNaeGxhVGRqQU0vSjNmTE80enhqNGFtamE1WGJSZDFjWWpZ?=
 =?utf-8?B?eDlEMU9HL0xSR2lEb2ZKUDZwckw0LzlXSDRwazFsdTJIdXd1RXRlY0tRK2Nr?=
 =?utf-8?B?L1JieTZOcmhHZ3JQOGRXdEd3c2JUSExjOVIrNEluMXd1M0gxVEFlaWZEWmpU?=
 =?utf-8?B?Zjh4bDdtT1A3c3JlQW42WDFEekFidWZhMVRYM041VWRqZ3FnZUZNYms1K0VD?=
 =?utf-8?B?NHRCM0hCUHdRVUxNbXpKdGM2RnoyMDA4V1U5U3RFU1NySEZ5dURzUjYySkhN?=
 =?utf-8?B?NFlRbmVqb25JbVJDMGZieTc1OTh1WTBtanF2MUlSVkJpaTdVM0JYYlZGelVJ?=
 =?utf-8?B?TmtqSks1eWZ3RFg4dHd2T1lLYkozaWJMRS9ub0taWkxabC9LY0dLK1BIL1Fz?=
 =?utf-8?B?RU5NQnRkRHNVZUk0L205eEhUayt3RkhEOFZKSVpHajVQTTBJeHdvOHljK1Nv?=
 =?utf-8?B?OXBHZHlLSkZBN0RCWG9uTDVMMWlCMHpya3VjUENycWl2Tjd0UEs2RjJiNzFL?=
 =?utf-8?B?YllhVDJ0YUl4ek1wd3R5dElsS00zaHhacmFsMFF6UHh5U3VWSjlsdjhydGg5?=
 =?utf-8?B?TlIyWi9aTjV4TEZCdGMyWFRrUDhWMCs1YXM4ZktJZTlEZy9yck9VZjZNNXIr?=
 =?utf-8?B?WDA0RXhzbVpWWTY3enlBUExqcG1vcjdaRndVdi9nL1l6WWVzaGV5bFJ0bkx2?=
 =?utf-8?B?Wmt0Wkh0SWkxWkxJNGNmTFFWS283UVF5MlQ3cnpnMzRmb3VtdFdNM0tpMm5u?=
 =?utf-8?B?OHJ0TEpGeG4rZGxscUhZZ1ZlK3pRcVpRNXhMdXZ0VlpFSjY2OTdjNGQyLzVQ?=
 =?utf-8?B?N2czcW1NTlBPT3RYVW9XL2Z5YzVTcUt4RCsvRHQzMHdvSVcxV3k2OGhOQXJh?=
 =?utf-8?B?elhkN1h0bkgxRXlXZkRuK1BUUndmNHF2VEI5dGI2bTkwK2x5cEptQTk3ckVu?=
 =?utf-8?B?NFRPcktYR3lKQmtySGU0M2EvWnhpbWFSQm82Q0NrQ0lCaCtuWXV0c2dsS21M?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24ddc89f-f012-47bb-e243-08dbca81c00e
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB3911.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 17:44:42.6426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: i7kZWrydgOTjF5g5q0GtEhhwzUSDn3JAT7R7xiabAmsvI1PdiaivnmxdIGLlZ6Nyr8ko29lteHvxf5bmD/8urz75VBQSa/OcWWdArPIYJ6c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6426
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
 chris.p.wilson@linux.intel.com, nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 10/10/2023 17:02, Jonathan Cavitt wrote:
> Add a helper function to the GuC CT buffer that reports the expected
> time to process all outstanding requests.  As of now, there is no
> functionality to check number of requests in the buffer, so the helper
> function just reports 2 seconds, or 1ms per request up to the maximum
> number of requests the CT buffer can store.
This comment is inaccurate.

The buffer is 4K bytes. If it was only 1ms per request then a 2s total 
means 2000 requests in the buffer, or 2 bytes per request. The smallest 
request possible is 2 words or 8 bytes (and that would be a request with 
no data at all). The average requests size is more likely 4 words at 
least. Which means only 250 requests per queue and therefore a maximum 
time of 8ms per request to hit a 2s total.

It would be better to simply say "As of now, there is no mechanism for 
tracking a given request's progress through the queue. Instead, add a 
helper that returns an estimated maximum time the queue should take to 
drain if completely full.". The description in the code itself gives the 
full details. No need to repeat all that in the commit message.

With that updated:
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

>
> Suggested-by: John Harrison <john.c.harrison@intel.com>
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
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

