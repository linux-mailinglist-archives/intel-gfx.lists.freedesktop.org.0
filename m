Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1058A7440
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 21:04:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A952F1129C9;
	Tue, 16 Apr 2024 19:04:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="D/PlWcqU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E62461129C9
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 19:04:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713294245; x=1744830245;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=MadXfIOYUlRh4bq288ZWl/eH2nE3ic06HFUpUMw4f3I=;
 b=D/PlWcqUx+W0vcDxDVabtIyoEVSZov9PwRTqIK3RCvn27sMn0Vkzhprk
 0N44aJw7xuLk0zKn/URn3Y7eJLcLj0AwkUKVz5ZFETdKuhE1SL1256DU0
 z2DFnS9FF9ubNoGr6TS1eb/2B+0IiGKupaWC31Vg56vNYOD464Xb8xOpH
 IKNp2ncEG9dnNKy5Z4u9w9GohbFi4pgaZl4WIHh/KrKsg45KoAdxPfeZP
 V6snH6DVsiWUyTjnsTQO4wSjRQEM3bQLJ98BTQCoz0/0fQ/PoHMkAXOto
 ip1CwY5gBhaf+8IdcUIpOclMiWVAvYS7vZpXBELPXqXEdJTBf+oGnLmU6 w==;
X-CSE-ConnectionGUID: 0hiOyftJSs+rkZZrCaZOng==
X-CSE-MsgGUID: PI/RbUTORqyYBIMJrLMHHg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="19360131"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="19360131"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 12:04:04 -0700
X-CSE-ConnectionGUID: Ldub9wyvS8GtflWrTVWhZA==
X-CSE-MsgGUID: Rzxk0BblQsSrVSIq0dJL9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="22946977"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 12:04:04 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 12:04:03 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 12:04:03 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 12:04:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OBTwgzYXchRCUTlgv4DosT+Kj/qEA3iUUwIGc2+mBH/qtbzG7UMZavHfR58gArpI0W7LOBdpzJolWSiaLuu9Z0qciz4Ff1jhlbID+WpoRB9sQzhQQ5fvZseQS0BUyssiXhafrGVqxp8nWpvW/Fwd5R1KfJAHAeIxvbV2rsBe7Jrzu45l1lg3o7DNEuFmeU0cVVJJXi2vsAvrsl/hKxJhc7cAY62F5tN3bfHP5mh6dlH1W779CAZkQ0s4dWc0BSVisKTQ5f1q2vZppM9odIDDqu1zB4dCVLy3lhIFKJ+WCOFcyePxXfkd05vjI0C0CefAQ7yxoxWH+7iDbdc50oNk9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EM4663oybmPRoHr1gfLOMjzO/4KkvYeI6iTmCpPXPhs=;
 b=TtmEoeoN5xjpNdBcPNA4M8kiIJIZezJhPi7K63pZ6v9jVslVwE0CaMMbgdl3DBM8KxEhHra/lVDAk7jik1Lk6cSSB9ciL7yIl7rXqAeX3IlbHSpPaboD6HdHEFtmmwMEodpWATsmGML3w3wqGy940xQd043Pzi0cFlOGl0e47YTado4KqlExfEHVIYWrGPxxbL7gmUs4ruTT7Pz78dk3eq9VoWHSLv0Qh6AsdyOQs6C/vXOuozRfdYPT33Tw1FCgzJoEzXhFLxPg1aoEjpiLHYWRIQShxI0uXJgR+m6ovulDGfxWfnBHKDTN+vqsDKMEo1RhtbiYmfLY4QPHjccH5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by PH7PR11MB6332.namprd11.prod.outlook.com (2603:10b6:510:1fc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.29; Tue, 16 Apr
 2024 19:04:00 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::71ea:e0ea:808d:793b]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::71ea:e0ea:808d:793b%4]) with mapi id 15.20.7472.025; Tue, 16 Apr 2024
 19:04:00 +0000
Message-ID: <00c4f36c-18cb-49f2-9e8e-72e38bc01c2d@intel.com>
Date: Tue, 16 Apr 2024 12:03:57 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dg2: wait for HuC load completion before running
 selftests
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20240410201505.894594-1-daniele.ceraolospurio@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20240410201505.894594-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0177.namprd04.prod.outlook.com
 (2603:10b6:303:85::32) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|PH7PR11MB6332:EE_
X-MS-Office365-Filtering-Correlation-Id: c5ecc9a0-51ae-4ec6-5393-08dc5e47f9b2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Cqhj/9IH25BV2pT32s6uOpNPTQQRs7zfZRAuj25JqawArmJlYMTtgBVQSWIzTw7/JmLKSW6UejR5qIURYeGtUhRgPPnOJrySd8FInrQ8xlgGn3DgpsntT/qWo9BqYUSEoastin1r6lypTfH9IpPABY9PqvfAVYeaOn0/QbIxAhXc0tJmP1kED9MoHAQAsHZNYr2mL2HXXWgowKOTMO+HoDeu6yB48tQ24aAhQ9USrnxMlG0b3gEMuf/RvvYfWDBzRLpXe/iUcCX2945Q8N46lyAgA+8cfzxRbnfuDjOs2MOT3tIEWXFCaSr0fJYqrwVaOrZQR1E+di9GDj5CqyM8RVRoFQvzX8R03kspbk2UPYz6GuaAwpd8XOcnPCjiE7s0nKxDsz13S7XvaLOr/GnQtxvd6Swj5YhYjlDX2jT5crw5MOoxh0mH2fIps6hg/fNKMXYQfpaVl7FAk6Eac4NxYKUiTnp6RkGZRqSFgFxqtezYMh7v63/eG43Y5r2aWSmqIwHIUUSx6oBFhIHv08QPDkCyuuWqDKIzD54DuPemd0+bfGHiGDoGTmfLwEmH/UgV3V3VyGzqdRkoN4JNm6KNk6Mxk3MDXKEf1qiW3nAl3Pw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHlRTllqYUNzZ0xCTXMweFltZ1FsLytXRWZDaHkrTGRRQ2JTWk52dStmakxY?=
 =?utf-8?B?ZS9VQVltUFFVcld3NVVzS25peUNPZkNVbktvOHcrblVCa0FMVHk2bms2T0t5?=
 =?utf-8?B?Uk95TWhGeW5FTC9LaHdHWGhiZ3crUHZvMTI2bGVSRHJQNW9kZ3IrOUxYYVFS?=
 =?utf-8?B?OExOanEwN21SOGhIZ1FONFRXYklBN3Jmcm50Ny9sNm4zQlp0UWF0SDcyRUNn?=
 =?utf-8?B?Z1JhdzhZd2Jzazh0U1RBNGQxU1FRU1NqOGN6cXRIWE5Ca3FTekVXNDJoZk1S?=
 =?utf-8?B?TS82MmV0RS9uOUN1NW8yZDJKdm15V2l2UnNheHFhWTg4bWE2ai85TysvSll6?=
 =?utf-8?B?Vk5kc1VKSnlROFJ6NThoVlFOL05yeldlaTg3eUZqNy9RZUwzR1pFa1pMY3Bo?=
 =?utf-8?B?WHExRnB4SlhSNG8rUy9mQTluUllvYytzdDVxbFlGWGg2Smorb3YvYThyUkpH?=
 =?utf-8?B?Sy9XV3BaUFllQytRekN6d3JObjVVNnNKS2hIRWFEcDNqajlUWnF2aktBSUtt?=
 =?utf-8?B?V2Q1OWpobGl6eFdMOUdvZXVWZ0x4cUw5NXd4T3lVbHIvK1VjVEl6RCtZREdS?=
 =?utf-8?B?bVI1S214ajZSVllRcFVwRktYYllWWXlvUjRYWWQ3aVA1V0t4TXVPTEU2d2VW?=
 =?utf-8?B?UkViYkdOSFpSSlhZQmFXckFYYnhNTytCWk5WOTVkdHFMY2J5UCt3VlBMSTBv?=
 =?utf-8?B?VFlwT2VLNWczS1A2ZG90bXBTZXlUVnlOUStoQkZlcHk4SG5UQ1FuV0FUVGVZ?=
 =?utf-8?B?SUJCbHJESlpLUjBQWWlKZERNeEdKd0VSM1lIQWNHOUJSOXlQekYyTmZNekw5?=
 =?utf-8?B?L0ppWjR4ZmdLZE9BTXFBTVFHWnRUZkNyUHlUSzhUZUVZS1YrVHhRaUg2TTR1?=
 =?utf-8?B?Z3FOQ3VvaG02VG1lU3JxZ2VmUDFrdEhXMTFrR1BTWDkrQS8vQUpvank1cHJh?=
 =?utf-8?B?VEMzZnE0YXJ6eXF0ZlFZQXdORGhCQ2dWWjBnR1VieVZKWWZHNXhmakM2YWxr?=
 =?utf-8?B?ejlJVXloa0FzQWszVGxCRlhpbjRTbWYyZ2wzZHE2Y2VaNjZKaUx4aTZUWUsz?=
 =?utf-8?B?Tld6RFo3Y0EyM1lpTFo0b04vZFV2VlV2amxNbnpXMVBJTERiV3d6RFFOUDBJ?=
 =?utf-8?B?MDdkNzljZWc0MEd4NkF0VHgveVJrSnZSTjBQY1B3b3JkZWk0T2FMalo1ekZL?=
 =?utf-8?B?NnNqTWZDekwrckhhYWZSRllvZWtCb0ltUy9Gc3MwdVVxWjdmZ0ZRdVhSSGlP?=
 =?utf-8?B?czU4Q21qSkFjTU5tMDRVcFZqWklvV1l2dmI4VmtMMXUwRmtSQW9xcTdFbXp6?=
 =?utf-8?B?MTN3RFc4NHBja0diMGJUSTA2Zlo1dVlndkNkd0Y3SUVMWkx4NXB5STBnNmFh?=
 =?utf-8?B?bnJROW5vK3lvcElOY0NQamt1dU5jSjBVa1ZqVS9yNitVbVVtVFpBdWdteTlT?=
 =?utf-8?B?ZG00VHcvTUJadnVxU09QUkVxTThLUHpUOUoxb3M1SUdJdHVIRGdaNEVSbVQ4?=
 =?utf-8?B?cVJQeEg5WE1lTDBscW1vV1RKZWdxWHJoNmxNVmFWQ0dBNktWUDBZTVdOMTcr?=
 =?utf-8?B?U2NBNStHZjFETlpEWnF4QUVLbVdhZ0hjUTc2UkJKalZkdDhkQ2xlb3diejRX?=
 =?utf-8?B?M0tySDlmRWJzeU9lMGpjVDVXSlJudEd2dVFKUjRPS3hRdkN4bkJTNjc3UC9h?=
 =?utf-8?B?WENWcHBNUWN1YW5jb2VtL0o2MDVSc24xZUJwWGJCUm91bjlhQ2R5Y1E0amll?=
 =?utf-8?B?V3piWDBBTjd4NmEzM0hhdVJSSHUvbFo2TjdhKzhJVDArQ21sajdRTlhMaGcz?=
 =?utf-8?B?ejF5bitBMlB2SU5RS3FFc3drdHByVGFZRTZodHN5MmZRdnNUZVZWSC95aXBF?=
 =?utf-8?B?cW8wR2NBK1FHcUhGUllFS3p5L3RRdHBMU0gxSXBLQzZGb0xBR095WGluVDV1?=
 =?utf-8?B?QUc1eXhleloxbVYwcjYrWWs0K0RIc2hEQ1BrNVVEZGtjd2dNWnFKWDNVYXox?=
 =?utf-8?B?aEF5Vzd3d0pCZHMzUldENDl3NGdra2hhTVBPT093d0JMdTNLaW9VY3NzbVdB?=
 =?utf-8?B?OUlRNVdFMCtxbXU3QXBQbTRZYWsrRkpQWWd2b2tYU1M1ZjZKNzg1YzVySFZM?=
 =?utf-8?B?Z1BKZjhBNDZ4d2lPbkZvY0R0dHlPcFdwTmlKVC9xRGllTlM3MXdqZnlEWWFK?=
 =?utf-8?B?N0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c5ecc9a0-51ae-4ec6-5393-08dc5e47f9b2
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 19:04:00.6432 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vV2FChCQMFb/q56016YwhVm9L1WnHi+b0dfjKKaJKr9lVDD/TBEFqv8qVMsGua2k+fU9uLq3j/0y9bH6tc16tMGZ8ldr+xyr8DFCWfNUmzA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6332
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

On 4/10/2024 13:15, Daniele Ceraolo Spurio wrote:
> On DG2, submissions to VCS engines tied to a gem context are blocked
> until the HuC is loaded. Since some selftests do use a gem context,
> wait for the HuC load to complete before running the tests to avoid
> contamination.
>
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/10564
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   .../gpu/drm/i915/selftests/i915_selftest.c    | 36 ++++++++++++++++---
>   1 file changed, 32 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> index ee79e0809a6d..fee76c1d2f45 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
> @@ -154,6 +154,30 @@ __wait_gsc_proxy_completed(struct drm_i915_private *i915)
>   		pr_warn(DRIVER_NAME "Timed out waiting for gsc_proxy_completion!\n");
>   }
>   
> +static void
> +__wait_gsc_huc_load_completed(struct drm_i915_private *i915)
> +{
> +	/* this only applies to DG2, so we only care about GT0 */
> +	struct intel_huc *huc = &to_gt(i915)->uc.huc;
> +	bool need_to_wait = (IS_ENABLED(CONFIG_INTEL_MEI_PXP) &&
> +			     intel_huc_wait_required(huc));
> +	/*
> +	 * The GSC and PXP mei bringup depends on the kernel boot ordering, so
> +	 * to account for the worst case scenario the HuC code waits for up to
> +	 * 10s for the GSC driver to load and then another 5s for the PXP
> +	 * component to bind before giving up, even though those steps normally
> +	 * complete in less than a second from the i915 load. We match that
> +	 * timeout here, but we expect to bail early due to the fence being
> +	 * signalled even in a failure case, as it is extremely unlikely that
> +	 * both components will use their full timeout.
> +	 */
> +	unsigned long timeout_ms = 15000;
> +
> +	if (need_to_wait &&
> +	    wait_for(i915_sw_fence_done(&huc->delayed_load.fence), timeout_ms))
> +		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
> +}
> +
>   static int __run_selftests(const char *name,
>   			   struct selftest *st,
>   			   unsigned int count,
> @@ -228,14 +252,16 @@ int i915_mock_selftests(void)
>   
>   int i915_live_selftests(struct pci_dev *pdev)
>   {
> +	struct drm_i915_private *i915 = pdev_to_i915(pdev);
>   	int err;
>   
>   	if (!i915_selftest.live)
>   		return 0;
>   
> -	__wait_gsc_proxy_completed(pdev_to_i915(pdev));
> +	__wait_gsc_proxy_completed(i915);
> +	__wait_gsc_huc_load_completed(i915);
>   
> -	err = run_selftests(live, pdev_to_i915(pdev));
> +	err = run_selftests(live, i915);
>   	if (err) {
>   		i915_selftest.live = err;
>   		return err;
> @@ -251,14 +277,16 @@ int i915_live_selftests(struct pci_dev *pdev)
>   
>   int i915_perf_selftests(struct pci_dev *pdev)
>   {
> +	struct drm_i915_private *i915 = pdev_to_i915(pdev);
>   	int err;
>   
>   	if (!i915_selftest.perf)
>   		return 0;
>   
> -	__wait_gsc_proxy_completed(pdev_to_i915(pdev));
> +	__wait_gsc_proxy_completed(i915);
> +	__wait_gsc_huc_load_completed(i915);
>   
> -	err = run_selftests(perf, pdev_to_i915(pdev));
> +	err = run_selftests(perf, i915);
>   	if (err) {
>   		i915_selftest.perf = err;
>   		return err;

