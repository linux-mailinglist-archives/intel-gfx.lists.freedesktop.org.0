Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A8F359320E
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Aug 2022 17:36:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD024CC6D0;
	Mon, 15 Aug 2022 15:36:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5B33CC6AD
 for <intel-gfx@lists.freedesktop.org>; Mon, 15 Aug 2022 15:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660577740; x=1692113740;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SF1XOaMlhXGSMTlwOIluGsDpH3gIxMfCqQFclQ7g8Mg=;
 b=RFh27vtdQYgvgwe8gDXu2oKs922+7vU/BEd0HrGcY5uTASx/IkZbnoVo
 VlryhENYKcYnxnJ+6yKsePswFyDkuU3wZ2Ar61MVH5h2j/WDvmb6HVDyq
 elugCZQ7vS6gIVBALdZaMlYt4aCW2QjyTfSYE92yyKILljzShdZRjeiLv
 a3dpxw+/aJ5mBF5qf9whKgD4POg/KQds8euW3i/tZOYtjqsvPhaQabOiF
 o++ljlB3rrguDKHCCQjYfm9I/OGKLXJQx+N4MoDzY0k/NSxZCWjULXbio
 Db90O9SXxNA0L6K+YGZRg6mNmVOYero+tbV7+fx01ACqFAUn2v7ipRQDM Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10440"; a="293257788"
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; d="scan'208";a="293257788"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2022 08:35:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,238,1654585200"; d="scan'208";a="852312350"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP; 15 Aug 2022 08:35:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 08:35:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Mon, 15 Aug 2022 08:35:34 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Mon, 15 Aug 2022 08:35:34 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Mon, 15 Aug 2022 08:35:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cw4usW/1H7OGaa1XE+x+D1rItF4eYeexi0I3N24F5hxB7wQgPb3PMdVPW7WOMt4kPEUbQ9C3eo7JaZxCpu3ki2Xv2WD2LckBhVhc0tXeNVQEHNWBXhhgqL6qWmRvd0FgSIsVfSuKuQrpg7prvn0zUMMQHuKezGQsd4BMRAfVRy4qVl6U2EIC8BVExRqiNYcy12i+jytzLMrlf9zesDkXkS6SwqypoGt28VdU9l3hVAVMSZog6Vtfets/H7PdwsDo3P07exWgGVWbioWNvHJ7jLeW/4c0shQGw196Y3Q8qj11smT69pvXoyhP7wxIyz/QXv11b485/Su6/oFB1tDq5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BSp5TzwhU0+S5zt/7Ln93/yBMPuOH/IdDlg46SboNVk=;
 b=hN3so6Qf1Gml41n0ypDlv9nd5y7KD7GqXFtPyGnZKhNv6Zx0Xuf/aBfqCU2FRRLA5zWBdkrSHSgDfG+NbTrQISTQRoD09Qb9+ZdyA3I+a7UxvaXCyt2NcZBMBzmETFRZup/DMZ2u0lnngxjln0H0hbOX6gUwms9Mpjnwx+irCGKLs8P+i9YuKYzSX+3vg/FN4IA8Few4QGaqhZ24afO4mImlRBvGad7boLJVKuaf0tn9l48DrNswdkZpgnF9EY1ONk6BLF3I3s6ryVGX8r+k4ZEYlPS2XNvTddbp0xMJSr+SQUeQNNHwLaOVECj65OiibTZR9x/rJVdSx+8Pp7r6Vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5525.11; Mon, 15 Aug 2022 15:35:32 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::1977:59e7:5a28:24e1%7]) with mapi id 15.20.5525.011; Mon, 15 Aug 2022
 15:35:32 +0000
Message-ID: <3dd74afe-5f2c-32b5-d24f-a7458d3859bb@intel.com>
Date: Mon, 15 Aug 2022 08:35:30 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Content-Language: en-US
To: Juston Li <justonli@google.com>, <intel-gfx@lists.freedesktop.org>
References: <20220810004253.3240393-1-justonli@google.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20220810004253.3240393-1-justonli@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: BYAPR02CA0022.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::35) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ecc7c0ab-1a45-484a-f986-08da7ed3ca46
X-MS-TrafficTypeDiagnostic: CY5PR11MB6163:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: SWjRAgZtjylzPb4MeS5L2fnkP5fDHriLG45diV0U8PpYFaR46yQgEXjqfu2w3H6buJj/tdna6iInGkOBAxx/cgpyUERhKY0m5v42u6RjF2J4AbQueVArvC/kpNdwZirsD2MC3mEqnRH5k8KNrhkUoKKPTsVlHDTpSGvBt023Nn8l5MDlTZhnB3UB3jWX1uo706CGzPZqA2PEX7badF2uXIfBJzJLEPpSavCf89jykyAXktM/HsqlcnmONlvbdDGftrLi1/p93UJF36Dz63nEY1TUtFrms+R5gLCIFBuu4IaHd3glzYpPGJLXJUAMDZnkAEKBqG3hB7bvXmCjzQO9qh9MxExOdei73tsDL9A4Md9JseNsSxzrOIzjTQZfagUwAat0v8FUn82gZcK7+HL868cFzZw0Vbfovfa35QPEMTZn76MjJPQhtJcrGFIrzg0NeuAIQeD/3pr0BC85fJ3YfkHVIw4/A5VWBfa4MSa6OM11wLnAaH+IWIrDSZhI/FLPsS72jaZMylhtQrDVoReTOZ1l8q+REdCQfQxlpEJ40mxAtrr4+GDtEbQKvlEM/bwlJhPbH6ncsjz6PG95OXQ8dS16LmkzFGgWtWCmWW6xiDIYTmpGhmb96DBfhf6nrvBeJF1tc2DJ1+E+n097Dc8zE5RXBaxxNvx2sEJLgREMUempSjVrnCdN+5G+LGX/slXFZimrB5ClzG79AVTCb45injte32t6pQmycFPuy45lQ4SU9hXtP7YdcuDImmJFSHRh88sg6UUwOOHzrmTBE7XNhmidKDlR5CrheIdYSIKdKsQP1vUdHF6oSaBhH6TA6PgQULgo9JHl1ngyArdD4RUc2A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(346002)(366004)(396003)(136003)(38100700002)(26005)(82960400001)(5660300002)(66476007)(6512007)(6506007)(478600001)(8936002)(6486002)(86362001)(83380400001)(41300700001)(8676002)(2906002)(4326008)(66946007)(53546011)(66556008)(31696002)(316002)(31686004)(107886003)(2616005)(186003)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TjNDZ2FwQ08yVEtnVWt3cEl6UW9HRWpZeStRWVZoVDRxc0lMdkI2L2dPaTRJ?=
 =?utf-8?B?a2YwRmRuWUs5QTVGTUsrRWROeEx0UGU0aGRKa0I3dUNuVTJBMVU4TFVIQ0hS?=
 =?utf-8?B?aHFNcDhoRWVySThyK3FqeFI3WCtQNjFmRzMxcGZ1b3p4bCs1bFlBM3N6aEdW?=
 =?utf-8?B?ckdzdzg1Yi8wUWdEQ2Jwc09HMUMzRGhrelBVSVNQdnUyeWZHaHVZL3RsSWlz?=
 =?utf-8?B?Q3V5dFN3T2owc0t2c2tJN1BaTmFsUGIrZ2U2TlZIcWVFNHYxbWZKeTJlT3Vx?=
 =?utf-8?B?S2JiY0NoVTdRZVF3YXl4SHNWWjhyc3Vhb04rbUkrTUpHZUhkb1JGd0R1cE1o?=
 =?utf-8?B?WUF0R3MvelV0U0R1bVdXdmRmR0F0MThuV3AwUDM3ZjJQTmsyMXI1UWl3L3Zp?=
 =?utf-8?B?YkNqU1hiRStseU1KWkxaVHljMGNYdUR1N3RGSmtUL3lad0UxZXR1YlI3eVVO?=
 =?utf-8?B?bjhpQzJxVWdvdGJ3YjZQUGszTUN5K2kzOUwxMU9kT3ZvR1FQL3FIK2hqWFh2?=
 =?utf-8?B?MGhCbkUrdFljbEw1eFRRTVVBZkFGSmtqdGR6dnVnblcwaERoVnNFMzh1ZWlL?=
 =?utf-8?B?Y0pXWlhWZjFhd0Fzd3BZbzJ4dGtsMnlMOTlKelM4eWM1TjZ1QjZpQVM5WW0w?=
 =?utf-8?B?dzN6TkdSSGkxbm9lTzJjb1BkQW1oc1N2aDY5YU5KN0FIUWtDUXRJNE1PanA5?=
 =?utf-8?B?TmgzQ0V1aU1LcWJ6dThYZjJXTVR1QnM3eGFRODJiVXVVQ05adEl6Q2R4aXoz?=
 =?utf-8?B?RXJKVWdHVjlMZDJmVW9vSGNvYTBMVzVlMklGZUxGTVJqN2tmcUFMdU1hQ2kr?=
 =?utf-8?B?cVJ0c0Ewbm5mbmdlYUMwa3RTdVhEMVZxQU5aRmhvMVRSeHJyRFhVL1poTStG?=
 =?utf-8?B?djByalg3bmZXVm9QSCtVRS9vTTNUcHRqakZJaVUvOVJ3T1orMjJWeUhxcVE3?=
 =?utf-8?B?VzNJZDh5VjZ0Q05QMVdOOGdwNVdUU3dtdEtqRUpBdDRjV1RHUTY3M0w2b1pZ?=
 =?utf-8?B?ZFVSam5jbFVmZjZ4WHBmK3VHeTcwNEppOXFaYy85RUpsM3ppa3pQcUhvbkl0?=
 =?utf-8?B?U3A4dHh1NWNZVXdULytWWHlxa29hdUhKRDZJWXZQQ1pxcVJjeFJFL2ZEUXZL?=
 =?utf-8?B?SUdCeVV1QnN0VkxJbFMyT1cvdUpxR2I1SGIxbXNVV0g5WDB2c2dnMUphMjRK?=
 =?utf-8?B?WXBPS3hrLzVZZU1mWXVtczRlTzlCY0doMnBlWFUrc1g5N0VoWTNNanNTemdu?=
 =?utf-8?B?SVpDOFJ6N0VsaGVycmdTNDExUzlDRng3MnN5YmU2alFBbWs0eGV4QTBJTHJ5?=
 =?utf-8?B?bFhvNmpiTXY5Mm9mWGlUVmRHMUI5M1p0cGNnTkdMZHBhWlJwL3Y3VnUvNEJ5?=
 =?utf-8?B?QkhzQWFETVM2TlkxMFI2YjlrMWlBM244b1BzcEVqNGxMeHFvYjJFbUZCaDRX?=
 =?utf-8?B?RDMzbmRsVE1vblo1d2didGdXUkkyMXQ3aEMySkZvVHhGZnh6MjZFWVVkczdP?=
 =?utf-8?B?TkhjNFJJVkd1dy9CclgzdmNRVWc0aWF2eVo2UThlVWFjamZYSnJtNGpROGRC?=
 =?utf-8?B?Vmp4OFhpVXR5NXNyQVdlWjhFMTQvUDRLTTl2WnN1MStoUU5obTV2R1lvQnJq?=
 =?utf-8?B?c2RQZjI2czcrZzd5RGFPeDFmbUxROUY0bDRMQ0NCODhhYUlQYTNtQ1BqbVMx?=
 =?utf-8?B?TW5iM3drVzJaWDhsUmlJMzUxQWMyNDdXVFBsR2c3OXR2UW9TQkRwaEJHOVBB?=
 =?utf-8?B?Q2VDZ1RiOFRRem91VkU5T0ljTzlJRXMxZzZpa1VpOGN0bDhOTWRvcTBwQ2Fu?=
 =?utf-8?B?NEhNaHA4Y3FQNG4xbDYxYnZiL1Flb2NWWUgxZGR2RlBXcXJvSzJOSnFwVXpv?=
 =?utf-8?B?K1B1ZjRsQkpPd3h6SU83dTMvYzU2SG4wcm51UG9ubTU0bmpsUnJvN1ovek41?=
 =?utf-8?B?U0EyT3RrZWJRbDBQRTk1Z0FzTnhMTGFKVWNCam52UnhFOUJrU3AzM3F2UTha?=
 =?utf-8?B?ZGF2VXpuRXEvZzBUOGtPQW5PM1U4akd3ZUNaZWZhZDhjSHZVbUs1TUR0b29J?=
 =?utf-8?B?WitycEZWYVBvNHJBaFN1cU55TWREcFZFNVlYRlNtWGJaVHBqQk5sbmlCU1RQ?=
 =?utf-8?B?ekhPNUk3YXZhaG83L3pGbldxcmk4ZXV3VnR3VHd2SDJNY0F6S3NKQ0doYXNk?=
 =?utf-8?B?MkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ecc7c0ab-1a45-484a-f986-08da7ed3ca46
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2022 15:35:32.4444 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: trha13Td4hvJEfoyg2T2zt8CmJFeq4QhR7zQtmEeYUe61oSlBDPznYD0vIKRx5/CJAYbGaDomUuK+JIC5YhwAtC8gaBadMP/CIiRvX3X6pU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/pxp: don't start pxp without
 mei_pxp bind
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
Cc: alan.previn.teres.alexis@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 8/9/2022 5:42 PM, Juston Li wrote:
> pxp will not start correctly until after mei_pxp bind completes and
> intel_pxp_init_hw() is called.
>
> This fixes a race condition during bootup where we observed a small
> window for pxp commands to be sent before mei_pxp bind completed.
>
> Changes since v1:
> - check pxp_component instead of pxp_component_added (Daniele)
> - pxp_component needs tee_mutex (Daniele)
> - return -EAGAIN so caller knows to retry (Daniele)

Sorry for the follow up, but I have reflected on this a bit more and I 
was thinking that maybe it would be better to wait a bit for the 
component to be bound, instead of immediately failing the call. Do you 
have a measure of how long after your failure you see the component bind 
complete? The wait would make sense only if relatively short (< 1s).

Daniele

> Signed-off-by: Juston Li <justonli@google.com>
> ---
>   drivers/gpu/drm/i915/pxp/intel_pxp.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> index 15311eaed848..8b395ebc430a 100644
> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
> @@ -187,6 +187,14 @@ int intel_pxp_start(struct intel_pxp *pxp)
>   	if (!intel_pxp_is_enabled(pxp))
>   		return -ENODEV;
>   
> +	mutex_lock(&pxp->tee_mutex);
> +	/* check if mei_pxp is bound */
> +	if (!pxp->pxp_component) {
> +		mutex_unlock(&pxp->tee_mutex);
> +		return -EAGAIN;
> +	}
> +	mutex_unlock(&pxp->tee_mutex);
> +
>   	mutex_lock(&pxp->arb_mutex);
>   
>   	if (pxp->arb_is_valid)

