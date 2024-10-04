Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F80798FD6E
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Oct 2024 08:41:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8027610E849;
	Fri,  4 Oct 2024 06:41:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dib8synQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2AE810E848;
 Fri,  4 Oct 2024 06:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728024093; x=1759560093;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oxYIpVA3CaFozCWDKekLILHn5R5b+SQixax3zl6CWJk=;
 b=dib8synQY7Mwtgt5BP401CrgKVFqD6mQobQv3l/E3CC/djnfpLNZufFT
 kR1rbT6y6xUiW+30ITqHip4YsqbzYwCWqa7r8lqoZDi8IiUoX7VzlrocE
 pvpnWKTXer/wWf1VdOj2gHL7UPm8lJR6oURpK2ASe7ydYBmSyugtwvppT
 7hKeFGJaZjKC3JSB7rBDBOAJfh1hCqPzAhRmk52VcyboZfD5pAhfeeAb3
 6L8YIKdxcqlbucgecsVFIMl7+4Co8wsEiPeBQ9JigjLhxpgqCH8fyGomb
 DY8p7LYy9IUvy2EBppLJ1a4qWi9NOOyfNDRAHkfukfXnpjODiwrD1iAJJ w==;
X-CSE-ConnectionGUID: gISOVVilSeyALLnCw+1OlQ==
X-CSE-MsgGUID: Q+22/GaqQNiNJkHlAc9QuA==
X-IronPort-AV: E=McAfee;i="6700,10204,11214"; a="14858971"
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="14858971"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Oct 2024 23:41:32 -0700
X-CSE-ConnectionGUID: 5QjqHdCyTBSnSKv2SP9YFg==
X-CSE-MsgGUID: ymEGIX9GQCu3aG19Vq4ljw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,176,1725346800"; d="scan'208";a="79581992"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Oct 2024 23:41:32 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:41:31 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 3 Oct 2024 23:41:30 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 3 Oct 2024 23:41:30 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 3 Oct 2024 23:41:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zU80JUtVg7umTvtv0kfLVbLN2HSeesZyoRMnSNjzUy+gl6G4Hk8LnJWIDPt+kTWG0X4SmyJ2T1XKHXv9eNa7RZCxH/qLNqwVBtS9hncIBmRfmEAE5PMYdc6FMyReveZVdxVplZ+gcj3MxsRxE8nKPrP8SnNKT+eLbqCWraJTt48OEqCUx2RQug5L0m0a1jvLUj2H/2l5SZG/He8ovw2dUpvkUfkVO0inMzwoa7YZDWZiJU17U1m6ZmfGp1neTfqFgib8FhQMDJrZFIg+P8vpNhrUaEJkPLd7v3h/Cfr6E5Ekpa4GUNRLrI2MR09/vnH3PUxO+s2jYMxWNYYadOXZUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jNEYcvcLdtrnT14ZwELDsQG8T/xT6q/tQPmbn8+m6nM=;
 b=Hzk3qH/SqFML0gYCVJ42VRNgvTpBmEHnzS8T2YH480QzAdfp0nhNv03D/x//jSyxpj79KJ6kiRX047M1AW18zYfAJwKrokXvd59FxzusIsGKN5R2CN7loWNZr8xe2RbowPQQeo3FfjU8u5+nyMBca1VxT3gzKZYqriS5NOFq2KgXZplDTrGCfLhrmis+j5M9uOZgY2JFs3PbneAf6hTIzQZmAF/L+QmCqP0LYQ0oVBKoXJzIFtO601jj6Gpzp3YKCfvZcCqdlvugZDdyJ2EnFer84Z/rfPLkEXn85RqKBfYt6dJHR+TCRDomnVNoB1aWxnFOu5eKINwyKm5FesaApw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by PH0PR11MB5061.namprd11.prod.outlook.com (2603:10b6:510:3c::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.18; Fri, 4 Oct
 2024 06:41:29 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.8005.024; Fri, 4 Oct 2024
 06:41:29 +0000
Date: Fri, 4 Oct 2024 06:41:19 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 12/12] drm/xe: Move struct xe_ggtt to xe_ggtt.c
Message-ID: <Zv+ODys43Do5VEPJ@DUT025-TGLU.fm.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-13-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-13-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: SJ2PR07CA0004.namprd07.prod.outlook.com
 (2603:10b6:a03:505::10) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|PH0PR11MB5061:EE_
X-MS-Office365-Filtering-Correlation-Id: ce9a9d61-c771-45e7-f159-08dce43f93ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?XuVrUB1dH3qhel7XotTyvIZViMXboDCeaOdfbUEL7N6SfporgY0es1QeAIgU?=
 =?us-ascii?Q?MG7tJdAM4t8zPJOyJC0o7OW1XiPiikmxzrhtePXpAiAXtxJK60cTRhVTKet5?=
 =?us-ascii?Q?u7q7LFEYJq2maC2l3/THIdUqCb7Iw7a7Y/SgKLq+IWcuv52pcJvVXa1McL9R?=
 =?us-ascii?Q?ceqJsRuxVtb5FIy/7PKFaa//7gmHm04Zqv3TdwjekqyVNI+P/72KHl0TnHll?=
 =?us-ascii?Q?uMKMjkhx3Yd9rpdQrJkfREUZIoW1tYK01CUDn1i7DiVVYZ5YmYdK7C1s3F5m?=
 =?us-ascii?Q?dU5pm8O5j3IiTZzqIUDDEheXFjXIpOwgScRWAjPc8FPD60Ui4NiudrOi698q?=
 =?us-ascii?Q?oCalmrPR77nEVa0lmKyeqwSuQq6aZgI5A5kxvHppPRj60zW2MZnOxqXxkMhm?=
 =?us-ascii?Q?r9zgMKu6IgkANKss+Elqv6rN2dfoWOwBS1aUoA8Q2mAqhYnkjEtmdqKKrrWh?=
 =?us-ascii?Q?6vI5uCz94CnbPr2irDckAr/Prd4TGR4GBBIE5wFOqpN23SRwVnAdPx5GST8H?=
 =?us-ascii?Q?ZM4C+erc/a7oDFxbaUkDA/Fq8Th6+a4XegRiCuLy+8YoKGF0I5ZPkH79F6nn?=
 =?us-ascii?Q?4rVVtfCIsvoSWfzh5/1YWo09fB+zOUjrJbkud06lA8Wrugp+62yaxD4Wr/GB?=
 =?us-ascii?Q?zirUbrPkiudQ8bSi73HSDKyfSeydHMOIDSYQEmSaEBMAluswqWQrNl9BeYAD?=
 =?us-ascii?Q?9cgrkKxIQhnxGAVCeXgDqM8UiRsPOmQ7xfnn0ZnRx9rPistaWcoJyL4tbkc0?=
 =?us-ascii?Q?t2Aeh0YYN/ZCU3qn6AhR41rDsf7M9D81ARIgZPiFoIRfRfih3/nxsiqF5lbk?=
 =?us-ascii?Q?69IdNNqoGbIrfqO9HQw5GHhyteYEKSByBRN2kDGto25UwVY3OFPfCCjwWn/E?=
 =?us-ascii?Q?7DRVzBXkC9cDSxlCIfyzyvL01wNkOARoZOABoTigSWNqeuXExO201t9ASCUl?=
 =?us-ascii?Q?BHAoJSElW75qyCWMEUjjDg+s9LGNQpGHmwjmM83wfRP/vtbUB+zWXLAK5M+g?=
 =?us-ascii?Q?o/VZdhYUWcz2VNqTAk+fO2lo+MxMPCjXz4Z377fydbjJMUuR8Hm04g8vvqqk?=
 =?us-ascii?Q?rP3qhjst6DXNikt/wR4A4QfsgFb/YyOWF5oVJRfAnQfyuXKjcOXbuYPEGdL3?=
 =?us-ascii?Q?RQW71Mj2sqC1VJIyq2OTk6BfhdiPxw6zSF//DCXqqxxOeLl/IvQBQkfgeq32?=
 =?us-ascii?Q?lUkHGEbBERscVv6HsK4MjvLrEkQDO9bMOTnfNZCIsl+X4rplPkbd+2uC5ogS?=
 =?us-ascii?Q?Wr9VyJAzCgj5Onws5VOdSYZP6NIgFzZd5NbFJozcxg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GN5n/i1Y40vG0CoSMoHFlR09WboKVV8oPxHhmErOHqv2dPKj4rVZI+hMhC9w?=
 =?us-ascii?Q?5qBZHymkgoZ66svnGZdEVXlhBya2xFqlUXNywaghyyli2o8oploDgKu1QA4k?=
 =?us-ascii?Q?ayR68BfD+3HXM19amadRsz8gL5gakbPhhPZRaXCi4KREI2JVUnlTqvqNACzQ?=
 =?us-ascii?Q?LZT/ny7r9GUhzI8CMQlZn6a7cZBrEsF8oLdFQMVT85APz7PxtOOH947+pJV+?=
 =?us-ascii?Q?Bjd+6F1FTEyv9AGT90ZEtssrXKd5+V39WagD653mM4fToYIowjeSptw6itxC?=
 =?us-ascii?Q?UQpRFOi3Myi3vH3/t8bd5vVByQKKrmFJLVkmLV4ZNZV0ogfQ1lmFzc/NC+Lj?=
 =?us-ascii?Q?xzNUkWsELWHyvIbiVNkmOzl15pCx+ZwFxlunbq033FRWovyavzI1S70h8fmK?=
 =?us-ascii?Q?Uq9EyS4SfykVEFdtZ2w5cye4GvInMbfe0pnZIuv737IEMszfTXmaeAIQfZFM?=
 =?us-ascii?Q?yuCkSpOtUGVkgL7qd+xwH7YuXbGx4Lnh50xN6fRZ+JBV6U3QtC4TpjwXbd3A?=
 =?us-ascii?Q?o6K2Pqpmp7WNtjK5lSc/BRPpK/gY1fE2HbQ5cZn+e3JzEg3hAi4y4YtH4Eg5?=
 =?us-ascii?Q?a0fr0IsCo8wks/qiKrlgHpA46HoAOmswNlc9O0etAf/womILtFHPjtSahiiI?=
 =?us-ascii?Q?XK2lbg6XhLIziscpn/TWlHMk/MRh9pbU+u6OlMYt7RMg/tlFv7/oo+P60sNt?=
 =?us-ascii?Q?VjdmGOeZIxisIKLws7cehP2XlfsHDu2zxPmxdYKWeYw+bMtvWHiThKEwy5lT?=
 =?us-ascii?Q?L5Slj8pNVtm5okXKmxFCoBh+lJM18SR7R/9mH2OqZLj6vu0VlbwfB8Dlozjb?=
 =?us-ascii?Q?tQxXBCgVSQEv5Z72iERqV7Fmu2JHNrafRiQEM2MH754drgmbIVUW8cOc5zaz?=
 =?us-ascii?Q?AV9mKAC46yegvVMUIssZ6YYdANvxh27OM6BqfaBiHQGnzYsdrIpP+xfDic9d?=
 =?us-ascii?Q?C9yCHzGyLFlcfU50SaRP/skZDE7Cjr2KzaUhPgNenFyfY+4vwAsdbUOlcZJc?=
 =?us-ascii?Q?XX1ueBzSTDwhX4bMULqsli5yM4vUzn6rE5Es3BR2hps8whSpapTd8y5GhK08?=
 =?us-ascii?Q?7mQUfkC40w4V0D6weBdWUmzN5rs3mKad2uGUIc20fFT8tB1+aKWthrTERc/z?=
 =?us-ascii?Q?JW2PLuTxmmjvuOYCp3LILlesQM119JGXzVnNdHXxXPzuN8YcDR/84y9jCADx?=
 =?us-ascii?Q?UwJDlxi76t5aVTTEYnc1+sToSzv7gJNuJZhmoTjk073zyMYWV7H97k0ZJ+P8?=
 =?us-ascii?Q?sF/agMYMnekTkQ/+0iAfww0brW67ApbV8Uo99K8WvcbpAZL8+q5M2r6jxRVQ?=
 =?us-ascii?Q?yk/IJh1Z4Pon43IOVS/l7ZG/U/2Rcy5N0XOVN45NpgFuHOrGmezD6ocRN/4V?=
 =?us-ascii?Q?02ZivD/+GDXLNSJ8ln8CiMPio1bL/4lTEzaWNrvNjgVO/+wcSZIuy0WKvYt8?=
 =?us-ascii?Q?N65eh2FceMzEcADxqqyZ710+Hy2MLJHOA3Roy4frXHxDO7Rs/UsCbi1KyHsi?=
 =?us-ascii?Q?H3eH/sdFq0bh7IsanIPSEys5j5wsevzwrdF7nhVoZTdwVMEoXkDYK/ggeDHa?=
 =?us-ascii?Q?u12TRqJOLOQs3K/Ql/ywsRpHxX+OTrcx25f23ddhUSjp51zsOHLThkHFmXAw?=
 =?us-ascii?Q?iw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ce9a9d61-c771-45e7-f159-08dce43f93ab
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Oct 2024 06:41:29.2133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ih/0z2owLadqWDE1dwCmGydJ7GrQmeC3s9zagFY93Eqr9bordaBdJrHcAh7QIQFmKKNhguA61NEmotck49EiEA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5061
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

On Thu, Oct 03, 2024 at 05:44:21PM +0200, Maarten Lankhorst wrote:
> No users left outside of xe_ggtt.c, so we can make the struct private.
> 
> This prevents us from accidentally touching it before init.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

This is a good cleanup and honestly we likely should do across the Xe
driver for various public structs which no reason to be public (mostly
my fault). This enforces correct layering which is a very good thing.

With that:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/xe/xe_ggtt.c       | 37 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/xe/xe_ggtt_types.h | 39 +-----------------------------
>  2 files changed, 38 insertions(+), 38 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index 9c4baa22ebe49..0ff9d25ec0172 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -74,6 +74,43 @@ struct xe_ggtt_pt_ops {
>  	void (*ggtt_set_pte)(struct xe_ggtt *ggtt, u64 addr, u64 pte);
>  };
>  
> +/**
> + * struct xe_ggtt - Main GGTT struct
> + *
> + * In general, each tile can contains its own Global Graphics Translation Table
> + * (GGTT) instance.
> + */
> +struct xe_ggtt {
> +	/** @tile: Back pointer to tile where this GGTT belongs */
> +	struct xe_tile *tile;
> +	/** @size: Total size of this GGTT */
> +	u64 size;
> +
> +#define XE_GGTT_FLAGS_64K BIT(0)
> +	/**
> +	 * @flags: Flags for this GGTT
> +	 * Acceptable flags:
> +	 * - %XE_GGTT_FLAGS_64K - if PTE size is 64K. Otherwise, regular is 4K.
> +	 */
> +	unsigned int flags;
> +	/** @scratch: Internal object allocation used as a scratch page */
> +	struct xe_bo *scratch;
> +	/** @lock: Mutex lock to protect GGTT data */
> +	struct mutex lock;
> +	/**
> +	 *  @gsm: The iomem pointer to the actual location of the translation
> +	 * table located in the GSM for easy PTE manipulation
> +	 */
> +	u64 __iomem *gsm;
> +	/** @pt_ops: Page Table operations per platform */
> +	const struct xe_ggtt_pt_ops *pt_ops;
> +	/** @mm: The memory manager used to manage individual GGTT allocations */
> +	struct drm_mm mm;
> +	/** @access_count: counts GGTT writes */
> +	unsigned int access_count;
> +	/** @wq: Dedicated unordered work queue to process node removals */
> +	struct workqueue_struct *wq;
> +};
>  
>  static u64 xelp_ggtt_pte_encode_bo(struct xe_bo *bo, u64 bo_offset,
>  				   u16 pat_index)
> diff --git a/drivers/gpu/drm/xe/xe_ggtt_types.h b/drivers/gpu/drm/xe/xe_ggtt_types.h
> index c142ff59c4504..8b0fd528569d3 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt_types.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt_types.h
> @@ -12,47 +12,10 @@
>  
>  struct xe_bo;
>  struct xe_gt;
> +struct xe_ggtt;
>  
>  typedef u64 (*xe_ggtt_pte_encode_bo_fn)(struct xe_bo *bo, u64 bo_offset, u16 pat_index);
>  
> -/**
> - * struct xe_ggtt - Main GGTT struct
> - *
> - * In general, each tile can contains its own Global Graphics Translation Table
> - * (GGTT) instance.
> - */
> -struct xe_ggtt {
> -	/** @tile: Back pointer to tile where this GGTT belongs */
> -	struct xe_tile *tile;
> -	/** @size: Total size of this GGTT */
> -	u64 size;
> -
> -#define XE_GGTT_FLAGS_64K BIT(0)
> -	/**
> -	 * @flags: Flags for this GGTT
> -	 * Acceptable flags:
> -	 * - %XE_GGTT_FLAGS_64K - if PTE size is 64K. Otherwise, regular is 4K.
> -	 */
> -	unsigned int flags;
> -	/** @scratch: Internal object allocation used as a scratch page */
> -	struct xe_bo *scratch;
> -	/** @lock: Mutex lock to protect GGTT data */
> -	struct mutex lock;
> -	/**
> -	 *  @gsm: The iomem pointer to the actual location of the translation
> -	 * table located in the GSM for easy PTE manipulation
> -	 */
> -	u64 __iomem *gsm;
> -	/** @pt_ops: Page Table operations per platform */
> -	const struct xe_ggtt_pt_ops *pt_ops;
> -	/** @mm: The memory manager used to manage individual GGTT allocations */
> -	struct drm_mm mm;
> -	/** @access_count: counts GGTT writes */
> -	unsigned int access_count;
> -	/** @wq: Dedicated unordered work queue to process node removals */
> -	struct workqueue_struct *wq;
> -};
> -
>  /**
>   * struct xe_ggtt_node - A node in GGTT.
>   *
> -- 
> 2.45.2
> 
