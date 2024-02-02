Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91E27846784
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 06:29:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C72610E68E;
	Fri,  2 Feb 2024 05:29:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jKdM4X/u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6951410E68E
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 05:28:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706851739; x=1738387739;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sBe/ZOvGJQeRhD7g9YFcS3HBSGzPhVoh3xs1ksoUVU4=;
 b=jKdM4X/u0XbAgRMcEVLY8n6EBEU6g/7w6BVg1RhuINFqj/QDvtO1koWY
 zIPTVFPhpJFsgdsxNR92QEqaQhtgyiNSmsEB0d/RjQYEwOyat47C+ttmB
 xfsCnKsQ+6Ws4fPz/71h3qpCwI9CDpJRnEy+gj7EVfvcZzvu5+XtTHadO
 0yFUCx5KcF5r0RhkRgVukUYRu859pPav4p43tGch/yp9rdKp77nyLG7DA
 Nd31geM5s7ua4JUbgKQU/1/5OO1Ue++9d7GMfNtcW8K6G92/Ft3e8NeaB
 ZkK1y4WME9Kl0BJrTtpjxS8L3k/cDJKcHLbdXnW8sTAIA2bxTA2EZs6eB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="11187998"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="11187998"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2024 21:28:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="859329465"
X-IronPort-AV: E=Sophos;i="6.05,237,1701158400"; d="scan'208";a="859329465"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 01 Feb 2024 21:28:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 21:28:57 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 1 Feb 2024 21:28:56 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 1 Feb 2024 21:28:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 1 Feb 2024 21:28:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GRa1GijCUsfS1SjBMfuDmSw1KmV05KUpEjnXKKCNWNpgFz2NhDV6jzA7+UiXafjbhxJzSPmKZuoUsoIRW8Tw4DusNw3jcUrHUq8X3A3R/YXBAequuFMgxwtWCcE1c+iyyLb62XysU0p1SJdEJnmwa6qA5m5sRay/ChZhpIJIiUcn3m/7TzDCBtCAiGfwWG+8JzGN30zfYZp30/lDpRxFyrPQn5oM5fcqk5sBac7FcLZ/HeMgO8s2X2Ib+KlxQV/i9QsW0FKJ3MzFdAqemenbFqsFg1H/Q+XjzCi1Svn861WUo6T/pKRFYANZHEv2wJE4NhmadGFcc98p2IiiDaL81Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y6K1gPmQUFoBWiwl0xWeAZukx10EFHoMByxOZiPgzGw=;
 b=AzT+6RondDtV2MbO77ShNwxT88buDjL/1VN7SsrxWSWMYwd81Hzmu1OZ+7XjLPU39uCXXjPrqGVPyw1iBY8EvW3YM201r9IVPP0vR543FXVTLzHo47FlWz4VjggR7UiFE2xToN5cZjn0junvOwLHptkv930RK4rhmb4okq6Os4vcesXKkGePhEY9/iV82Y2R2IUEvES4LPtwDNWXVUfPRfiBRwMx4DHOW5EatKLsCaKoDe6mOZ/4eN3N8d6HFN+l3W5iFzZbQm+f+JyE88ZthYNcL1j8r0CxrWzWcrHsdnPy4ecoGBEBfIle54REOWgbiLjsNyl7XNQTXNJBtDkCUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7162.namprd11.prod.outlook.com (2603:10b6:303:212::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.30; Fri, 2 Feb
 2024 05:28:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 05:28:54 +0000
Message-ID: <c996e1b9-a131-4d84-98c0-b5f08d99a193@intel.com>
Date: Fri, 2 Feb 2024 10:58:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] drm/i915/hdcp: Allocate stream id after HDCP AKE
 stage
Content-Language: en-US
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20240131193929.938748-1-suraj.kandpal@intel.com>
 <20240131193929.938748-10-suraj.kandpal@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240131193929.938748-10-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2P287CA0008.INDP287.PROD.OUTLOOK.COM
 (2603:1096:c01:21b::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7162:EE_
X-MS-Office365-Filtering-Correlation-Id: e2a79334-8050-43ef-f7bc-08dc23afd87e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: f0kDj+gkS64ca5ZMWI/ShdOjzHM0pQ9OXkEgQsEygM19soNBOpRaJC1LaNCpwtkTfiE/tRibGkWpJjmYXb4+UVSP7Nclx0qI+VQK13nEWkHJcw52g/T10Bs03OIQhozu6SofJuQW7UJ9yL5B6zGlm0cqoCP0tghAH5Df2XsoO0bTfm8Dgk0gXh9b2RVMWjDIdQfRIRvnYpgTqs0wU2/OXcg9X813BgiEIaVJxuBSuVzHwVQo5qyf78gqtTe+DZR31TRt1UmmGF9CWkIiN6+QyUGCAGzWleHZgW5xG58qNHc7Jd/rluCXYP8QLGgZN6lbtsaHS6zoiewjB9X46UmeOtoelHoSD3Fhfyd4yF9F6qDwwCFp432sGyutFMiNASRLkDUARp/zN3aOcnvAq9M9V7/wqhdOBpe0Jh2bw/IaeUBCbykKb2k5nEoE545fmeEc1BuM1Guecs1vntgSgAgJGFWyNpHaDmQZFLiuUGmZCZcTqjsNKNoiBYc4r6kHz2tyc0O8hXmo52Q3YED1qG399unjoqTWJUuVoeELr3v/IKVrghxClB56xYVyiNRUDOBQkcTm9BgcfqmU9ANsQpcrGl3LnhIBIRs4aXxL2zENZ7eAZyVWiksp4FNmzuGzuqjxxs5TiP7yq8a2DAoKTDSJcA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(136003)(376002)(366004)(230922051799003)(1800799012)(451199024)(186009)(64100799003)(6512007)(6666004)(6506007)(53546011)(26005)(107886003)(2616005)(31696002)(4326008)(8676002)(8936002)(36756003)(316002)(66556008)(66476007)(5660300002)(86362001)(2906002)(66946007)(41300700001)(6486002)(478600001)(31686004)(82960400001)(83380400001)(38100700002)(45980500001)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YmpWQ1ZoUFk3Mno5UWxHeVFheWY2MVdJb21kbWdnSEZvMDF5a2pCZ2UwNHNn?=
 =?utf-8?B?dnlRVmxxN3Q1TnpydFc1bkxVVkZEd0xpWTgvWnUyUXhta0MzbkNzOXluTk53?=
 =?utf-8?B?dmNUdDRZNGNqZDJZOXZPWkIvY25IcUpOaldmTE1xZExmbFFqZlNUTW9pYnVy?=
 =?utf-8?B?ZXl0dWJ1d3FzSDQ2ZklDOHhpRWdya2FaVG5paXlWQU5LQnF4NHhFMkYwQysw?=
 =?utf-8?B?QllDUlVYT0tEUU92S1MrS0w0R2Q1bHVJSlptWmN2bmpQd0NWTlFHV2NXNnQy?=
 =?utf-8?B?SmJ3WlJ6WFdvQ3BYeTVQN29TV0ZsbThFUWY4NUtwdmppZzQvL3VVaTZSdzhz?=
 =?utf-8?B?UEw0d3o5NG15bDNhcThLNnc0Vk85ZEptekVKWmNVdG9uaGtxKzRPdEE5Z3pO?=
 =?utf-8?B?T045SFhtUkRXM2RMRVFkQkdXQVdTRDlQOEJNUWtvSFljMnJoK3k4NnVISXpz?=
 =?utf-8?B?UUVkcERRdkdLTU5FbG5QWnREOS9teXo1bjBxSUdwQnFnNzR3NXViN1g3SkZT?=
 =?utf-8?B?Y2RVdDhOSzNoMENXc09Xc3NwSjQwdVdhQ3dQcllYYVJkUm8wOFlKNW9SVjRy?=
 =?utf-8?B?OEFRdjdjYUR0Vy8wcnpoaVlGYUVwc0pwK1YyZndkTlVoUnh3eFJ0NHZQbGpy?=
 =?utf-8?B?M1NBWDBucmo5SVI0ZkhLWkd3ZWxLWFFRLzZrYW03TmJ3SllIWExWeThzNTkr?=
 =?utf-8?B?SzMyOXBCZDJjam5CcVdDVlRqS2syZzJsVVo4SklGTlR0RkR4c3ZOdTI2OVpQ?=
 =?utf-8?B?alIxbWxQV25UMy9BRC9IQUFUNDdxSXd4MGZXT3VxMHFvdHAzTXdQL1h4MDAy?=
 =?utf-8?B?UHJRRTl6NFdaYTVDQVIrTDNtcTVxTk5oNUlwL3A4aVhoVzhZQTJmcENuR0RI?=
 =?utf-8?B?L081TVFvaFd3WkEvWWhNZmMwU2VYdnhGK29pM2Nma3BQVEZ6UThBMGFMOVZZ?=
 =?utf-8?B?bkFUamdNczkwQzlsV0p4Uk5XZ053UEtaSjFSaEo1SWJUVVJPQVU0TUs0Vm1B?=
 =?utf-8?B?OGdDeWNkZVJwQnVmSzVBaGVsTmpTSm1EU1VYMEozZ0RMUSswakRIbWhtUkh4?=
 =?utf-8?B?ekkvaFFQQmpOeDM2RjJkMUM3SFplaVJMaW0zVnVFT2V2OUhLZ2xNdlBaN0dv?=
 =?utf-8?B?d2NXN2g3SEpyb3RxZGhDUExaQjJ5ajB2c2R0N1Nxd1FuQ2pXWlpPY0ZnMWxz?=
 =?utf-8?B?c2NKam0wR3htMzVBa0locFFMTW9IazJQczVYTklLTld1d3d0NkR1S1FmYzR5?=
 =?utf-8?B?UnRwZUd0M1BRQkprT3FuWEZWdmlPZGI5aTl4a0pBam9WMXpKWU42cDF2d1o2?=
 =?utf-8?B?U1Jhc1VkTjl0LzJXRkZ3S1V6NWZWRS9xR2FnODBkNE0yMldKREp5YUU4dTVD?=
 =?utf-8?B?Y004MUkwMzFkYWlYZ0U4b1UxejF3VmI5OTgzSFF2dHBYZkplZmVjUytTZ1o4?=
 =?utf-8?B?NG5UdCt2YlNET1RkdHFwaDVGVkpmbG9CemxBbmxKd0lxbHIxKzZnbHJYK3BJ?=
 =?utf-8?B?K0MzZ2ZBcmVzMFZheVRSN1gzbnJKYzZKc3lnKzdGZUhYczZCYzZEaEJZTVRP?=
 =?utf-8?B?VFJWbnNpV0s0VXBtaHY2eFNSbFNySHB0dVFIZkxPU2JzM1ZYbDlpV08rbFQz?=
 =?utf-8?B?aEdFMVRhakI0N1FXQnVuVkxLZkJ4V3hrVmpWRFdxcVA3MUkybjR1RFJhbkM0?=
 =?utf-8?B?R1BmRTJ4ZEoxbWo4UHI0Zmd5M1lQc09LRTkzSjJpdmhlUDV5SmtkZlc4bkx5?=
 =?utf-8?B?QUhFZnpBbGdxRXR6RmJlWTNJaUxHVFI0TGtkWXZ0b0ZZVE1NSUN6QmVxcGZi?=
 =?utf-8?B?SnJ3emRLV0wvNFZ1a0d2NlR5d3loeVQ2SVhvNUpwN0hUdDlmbFU4djNBTXQv?=
 =?utf-8?B?a1BETXg2QWRwSHd2dXNPUmtycXVYYzZvN21LVk9ha0tWUzhONHJhNmRURjRJ?=
 =?utf-8?B?MWZvQ2FzaDY4bTNhM0Z4TWVRTGdZWW1Vc3RFUXFVMmkwTzhDOGlLUjZJOHVH?=
 =?utf-8?B?aEVBall1aEEzeFdBeTZxNGVTZS9xU3YweVpFb1JkZTZuTk0zdzNUMllZUzdW?=
 =?utf-8?B?UUM3clBzVE1yV2wyblVyYlJBMHpPc1JhQWpPUmdBb2pOSlk3MEhiakdnbm10?=
 =?utf-8?B?QW16RDBreGoxSE5pTzI4SXpaZ012aTlKeDQ3dU5yYlI0WUQzNjk3SzljTG13?=
 =?utf-8?B?NUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e2a79334-8050-43ef-f7bc-08dc23afd87e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2024 05:28:54.1235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qDAJZFC/7VysEAGpJdqGWZtRF6LhmQF9C1YgPnRRzFd+7IbzodvQ19N8A2w/clsx9x/HmUq+HjMTjBhBQy4LuhiMpGV/YKzTkn067BjZe+8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7162
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


On 2/1/2024 1:09 AM, Suraj Kandpal wrote:
> Allocate stream id after HDCP AKE stage and not before so that it
> can also be done during link integrity check.
> Right now for MST scenarios LIC fails after hdcp enablement for this
> reason.
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   .../drm/i915/display/intel_display_types.h    |   1 +
>   drivers/gpu/drm/i915/display/intel_hdcp.c     | 124 ++++++++----------
>   2 files changed, 59 insertions(+), 66 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7e7a370a3b30..d7b2af07b499 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -545,6 +545,7 @@ struct intel_hdcp {
>   	u64 value;
>   	struct delayed_work check_work;
>   	struct work_struct prop_work;
> +	struct drm_modeset_acquire_ctx *acquire_ctx;


Lets have this change as a separate patch.

There are too many things this patch seems to do at a time, apart from 
the change in flow required for the fix.

So IMHO, lets break this down into smaller patches.


Regards,

Ankit

>   
>   	/* HDCP1.4 Encryption status */
>   	bool hdcp_encrypted;
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 2b739249b60c..5c9da7b9756f 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -30,8 +30,9 @@
>   #define KEY_LOAD_TRIES	5
>   #define HDCP2_LC_RETRY_CNT			3
>   
> -static int intel_conn_to_vcpi(struct drm_atomic_state *state,
> -			      struct intel_connector *connector)
> +static int
> +intel_conn_to_vcpi(struct drm_modeset_acquire_ctx *acquire_ctx,
> +		   struct intel_connector *connector)
>   {
>   	struct drm_dp_mst_topology_mgr *mgr;
>   	struct drm_dp_mst_atomic_payload *payload;
> @@ -43,7 +44,7 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
>   		return 0;
>   	mgr = connector->port->mgr;
>   
> -	drm_modeset_lock(&mgr->base.lock, state->acquire_ctx);
> +	drm_modeset_lock(&mgr->base.lock, acquire_ctx);
>   	mst_state = to_drm_dp_mst_topology_state(mgr->base.state);
>   	payload = drm_atomic_get_mst_payload_state(mst_state, connector->port);
>   	if (drm_WARN_ON(mgr->dev, !payload))
> @@ -68,19 +69,51 @@ static int intel_conn_to_vcpi(struct drm_atomic_state *state,
>    * DP MST topology. Though it is not compulsory, security fw should change its
>    * policy to mark different content_types for different streams.
>    */
> -static void
> -intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
> +static int
> +intel_hdcp_required_content_stream(struct intel_hdcp *hdcp,
> +				   struct intel_digital_port *dig_port)
>   {
> +	struct drm_connector_list_iter conn_iter;
> +	struct intel_digital_port *conn_dig_port;
> +	struct intel_connector *connector;
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	bool enforce_type0 = false;
>   	int k;
>   
>   	if (dig_port->hdcp_auth_status)
> -		return;
> +		return 0;
> +
> +	data->k = 0;
>   
>   	if (!dig_port->hdcp_mst_type1_capable)
>   		enforce_type0 = true;
>   
> +	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> +	for_each_intel_connector_iter(connector, &conn_iter) {
> +		if (connector->base.status == connector_status_disconnected)
> +			continue;
> +
> +		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
> +			continue;
> +
> +		conn_dig_port = intel_attached_dig_port(connector);
> +		if (conn_dig_port != dig_port)
> +			continue;
> +
> +		data->streams[data->k].stream_id =
> +			intel_conn_to_vcpi(hdcp->acquire_ctx, connector);
> +		data->k++;
> +
> +		/* if there is only one active stream */
> +		if (dig_port->dp.active_mst_links <= 1)
> +			break;
> +	}
> +	drm_connector_list_iter_end(&conn_iter);
> +
> +	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
> +		return -EINVAL;
> +
>   	/*
>   	 * Apply common protection level across all streams in DP MST Topology.
>   	 * Use highest supported content type for all streams in DP MST Topology.
> @@ -88,18 +121,23 @@ intel_hdcp_required_content_stream(struct intel_digital_port *dig_port)
>   	for (k = 0; k < data->k; k++)
>   		data->streams[k].stream_type =
>   			enforce_type0 ? DRM_MODE_HDCP_CONTENT_TYPE0 : DRM_MODE_HDCP_CONTENT_TYPE1;
> +
> +	return 0;
>   }
>   
> -static void intel_hdcp_prepare_streams(struct intel_connector *connector)
> +static int intel_hdcp_prepare_streams(struct intel_connector *connector)
>   {
>   	struct intel_digital_port *dig_port = intel_attached_dig_port(connector);
>   	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
>   	struct intel_hdcp *hdcp = &connector->hdcp;
>   
>   	if (!intel_encoder_is_mst(intel_attached_encoder(connector))) {
> +		data->k = 1;
> +		data->streams[0].stream_id = 0;
>   		data->streams[0].stream_type = hdcp->content_type;
> +		return 0;
>   	} else {
> -		intel_hdcp_required_content_stream(dig_port);
> +		return intel_hdcp_required_content_stream(hdcp, dig_port);
>   	}
>   }
>   
> @@ -1910,7 +1948,13 @@ static int hdcp2_authenticate_and_encrypt(struct intel_connector *connector)
>   	for (i = 0; i < tries && !dig_port->hdcp_auth_status; i++) {
>   		ret = hdcp2_authenticate_sink(connector);
>   		if (!ret) {
> -			intel_hdcp_prepare_streams(connector);
> +			ret = intel_hdcp_prepare_streams(connector);
> +			if (ret) {
> +				drm_dbg_kms(&i915->drm,
> +					    "Prepare stream failed.(%d)\n",
> +					    ret);
> +				break;
> +			}
>   
>   			ret = hdcp2_propagate_stream_management_info(connector);
>   			if (ret) {
> @@ -2314,52 +2358,6 @@ int intel_hdcp_init(struct intel_connector *connector,
>   	return 0;
>   }
>   
> -static int
> -intel_hdcp_set_streams(struct intel_digital_port *dig_port,
> -		       struct intel_atomic_state *state)
> -{
> -	struct drm_connector_list_iter conn_iter;
> -	struct intel_digital_port *conn_dig_port;
> -	struct intel_connector *connector;
> -	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> -	struct hdcp_port_data *data = &dig_port->hdcp_port_data;
> -
> -	if (!intel_encoder_is_mst(&dig_port->base)) {
> -		data->k = 1;
> -		data->streams[0].stream_id = 0;
> -		return 0;
> -	}
> -
> -	data->k = 0;
> -
> -	drm_connector_list_iter_begin(&i915->drm, &conn_iter);
> -	for_each_intel_connector_iter(connector, &conn_iter) {
> -		if (connector->base.status == connector_status_disconnected)
> -			continue;
> -
> -		if (!intel_encoder_is_mst(intel_attached_encoder(connector)))
> -			continue;
> -
> -		conn_dig_port = intel_attached_dig_port(connector);
> -		if (conn_dig_port != dig_port)
> -			continue;
> -
> -		data->streams[data->k].stream_id =
> -			intel_conn_to_vcpi(&state->base, connector);
> -		data->k++;
> -
> -		/* if there is only one active stream */
> -		if (dig_port->dp.active_mst_links <= 1)
> -			break;
> -	}
> -	drm_connector_list_iter_end(&conn_iter);
> -
> -	if (drm_WARN_ON(&i915->drm, data->k > INTEL_NUM_PIPES(i915) || data->k == 0))
> -		return -EINVAL;
> -
> -	return 0;
> -}
> -
>   static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   			      struct intel_encoder *encoder,
>   			      const struct intel_crtc_state *pipe_config,
> @@ -2400,22 +2398,16 @@ static int _intel_hdcp_enable(struct intel_atomic_state *state,
>   		dig_port->hdcp_port_data.hdcp_transcoder =
>   			intel_get_hdcp_transcoder(hdcp->cpu_transcoder);
>   
> +	hdcp->acquire_ctx = state->base.acquire_ctx;
>   	/*
>   	 * Considering that HDCP2.2 is more secure than HDCP1.4, If the setup
>   	 * is capable of HDCP2.2, it is preferred to use HDCP2.2.
>   	 */
>   	if (intel_hdcp2_capable(connector)) {
> -		ret = intel_hdcp_set_streams(dig_port, state);
> -		if (!ret) {
> -			ret = _intel_hdcp2_enable(connector);
> -			if (!ret)
> -				check_link_interval =
> -					DRM_HDCP2_CHECK_PERIOD_MS;
> -		} else {
> -			drm_dbg_kms(&i915->drm,
> -				    "Set content streams failed: (%d)\n",
> -				    ret);
> -		}
> +		ret = _intel_hdcp2_enable(connector);
> +		if (!ret)
> +			check_link_interval =
> +				DRM_HDCP2_CHECK_PERIOD_MS;
>   	}
>   
>   	/*
