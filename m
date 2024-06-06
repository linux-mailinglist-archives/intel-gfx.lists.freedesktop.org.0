Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F468FF1B8
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:10:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0EB6A10E9F6;
	Thu,  6 Jun 2024 16:10:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AnszATkg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 947C210E9F6
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690219; x=1749226219;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZjdqUCIbH9w/Se1xTI4UGEnuujD8SzLXmU9lGzrULWY=;
 b=AnszATkgy142tD3PRgoL1sH/Mi4tHrwZ2MdOSQmkRSIc4lYSz4TEu7Q5
 aZ96HzQy+sjX4BP9QW2J6GS/CrD9AhJk5YuB8Dij0UO21rJQlHo/8HL5Q
 nfZHt0lXWRYI1MEC6FuFhKFaSBw+GhfIDgFrrqMt6hDgx+puNFL8hBdQJ
 f5/vD9zVusYLc8V4jTKzyFH9Io7gU/6BLhA1LKms0rQ0eOilhjnO2u2Z4
 d/NpwLqiq4xMxX8XjkxN1usxNK1iLWslartb8KmAsTTX8Tl8GDNcCW1pB
 x6tP1xF5veyQjTTQq67rFPwb8vEokBGCjKrEK7evguzHeH6CO80eKqxLY A==;
X-CSE-ConnectionGUID: uhWxxLO3QA+eg2rDHRyNBg==
X-CSE-MsgGUID: ruZ9uvxMR/iHEY9VGsK1TQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18164124"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18164124"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:10:13 -0700
X-CSE-ConnectionGUID: A0yX7uKBQOWqfEMxVuxwYg==
X-CSE-MsgGUID: h6FdTovlQ2uydzxMDvVIqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38466690"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:10:12 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:12 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:10:11 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:10:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z5zQwB2vsY8+hFwC+dBBCxCbRLo8v5kc+enAeaeAly7DzfQ6/n5SYzGacQaXCMN6ZaF3meWhe+EUTi8OTFwwUrHsoOplLB2s17HGtgOj6eqmnNr4K+bpMbSEvfKz2EhGQLFTOv1fKVY7zYn81aydW9ykNOVtOpXePm0F5tFHUsO02vo8UC6UTcAjHbC3HJzpvTlUUBNeF7yozJIZmNVM5BLdFccietRZb0SWrNk9x8MczD+LK/mvMoee4ZB3vVCr2TEXiQGUS7d5UqmadDKSB0kWjm/kIFw1eZoC3gxUAr0ClxYtH/VCj9bodGmOuBKhBrM8VzoPZeao6e1sLTTt1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jwfpvbOrJSfd5MzEA1h3wo3yxGePKcypfhKwgz+tNfc=;
 b=DarYTy7DYlC11QMX8KKZIKcKHR3Dwdw4TjAeIYcUmTZqJ07bMy4AgzqNKS7zSdQ/XhkT3jeTp8P/eYKcw9UAsCcJTOoKFf4wljjmXYM87J28TnvPuk/ToNBlyBEUxjy2V8x1KQ+FE21AbsPR58Gho2Ys8iwuRn5TTU5TF+2LNUVJcE6lPrA0ThMKz1ob8ZiX6sb0GiQoEa+yB5buyjUyEJHShw2JUEHl6yqFFPMT7faVwbdA5NKRBv8z85tlnYuYyGDaX88gp2OiQ136lpo5eY/HLwCLvzLOycXOaPS9QAzNvT5d7uawRdQsNQn2wx2w46Yy8Nwo1r+wZcgq/4eeDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 16:10:10 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:10:10 +0000
Date: Thu, 6 Jun 2024 12:10:06 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 46/65] drm/i915: pass dev_priv explicitly to _DSPBSURF
Message-ID: <ZmHfXtRMkyGrd1Qd@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <614e35baab65117ce7d5a64526b69b44e68116fe.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <614e35baab65117ce7d5a64526b69b44e68116fe.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0126.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: 91520155-2fde-4549-bbcb-08dc86432321
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7cn3YW1XAsiLU5mALenABgCqssC6p4E+GQiRApfktDgU7EX4qQI41PGvqe0I?=
 =?us-ascii?Q?9602DuvDELKp2xz3yuYaXMPdMee5FeBeFjVvoXswejOyUrBs9zccaaVZAVVS?=
 =?us-ascii?Q?uVtXlq8YN4pJAzlyp+/N7clhyc4LRNve6DiDjGnO7Y/wTy8qs9FF1Wd3F2kB?=
 =?us-ascii?Q?7uyXB8R9jQn6jskmxVRj5L6gekwuqQIcy9VlYOuoFWo1gV8AG1xfGkF5woYM?=
 =?us-ascii?Q?ckUZwQcm5ZEf0t1RvqwDTT6tj0l4pILBoA6ox3QqWx8CD0ftEX31u3k8np9a?=
 =?us-ascii?Q?/6RdpaEfYNeh8eUt0MGWjyebE+p+vdjAWOES5Dre7Se9DzL7Mpea86cka8rj?=
 =?us-ascii?Q?xDztGkNSlZq1iosr2R0GW0LWfTF1nKRItCSrY7bCtxnCNmGMgTxNe2npu+C+?=
 =?us-ascii?Q?Shyd+gYWzvILLS0K5rTQy/SBS6W4MEqbNzZ/aYtzhK7HyYQDXqI6aWxySIHO?=
 =?us-ascii?Q?NHmgPQnoaqleR9LXzlOSiOXIX/z3l6ka9RCjVkqSK1yIsCqx1oRq3hsnp/zM?=
 =?us-ascii?Q?7WavkExv0K93Bfvj1NM9nRDxhoPi3Nz8/WMaFbYnnOHJSOo5+ggbCm0ddPdN?=
 =?us-ascii?Q?HWfu3yreogJY4Mbj12J2qkjwOe6Gcw/ZuUMP/pD3yHIt0vmkKwr5zFjifxrX?=
 =?us-ascii?Q?LnwiTRSGNLN13bmOSJJ+CpX8p52GKtMByuiqPcmuJHBSy1I2NuhG1nLNFAT1?=
 =?us-ascii?Q?I2ty5/m1j6Iaz8kdXf+yjw0nlzJQn6gbIl/6+epDLVlrp+xxllbk+k7WO85g?=
 =?us-ascii?Q?hR55ikJA8iWoxxaIhPsNYKtobEH6wONpmA5BPq70sJUnmPuWWKa1LMLj2U3z?=
 =?us-ascii?Q?q+WDpdckMNLb5coQrTbL7rnIesUwVRnC6wLMJ1h0cqBG2vZjuy9EY3ToNeGj?=
 =?us-ascii?Q?7q+Qg78RVbxcREEuOOTkFP1/9tTCd2WEQaHzKDWkqx5dQ7Ux5dldWTVDw8An?=
 =?us-ascii?Q?uZh5FNLpYQQ9/SJicYvsUs44BXrH4WDBgpOgMbgAibsMqwMbp6kOcJF9xvsh?=
 =?us-ascii?Q?wIuHwurdlHNrZ7PCzHhd6WsK/Ljd634INf2llTMQvq+y9Xcyt8NaGtz9Igg/?=
 =?us-ascii?Q?FuOspA5W1KuGd1K1DbaEa5w1ImO7f+ZZsl61q6Ghrpno5SOpcbF5fsyfrfi7?=
 =?us-ascii?Q?lr1Oxpj3ej/Dwvqtzif3zLkjnxG/d2ZBj10LdEcFqQXA9YNE4UKG9GwstUjH?=
 =?us-ascii?Q?EjDXGhY3HH+Eq3n4T+zlxEa9REheFLM/DcjPDgTQ1UQVsZ70RwbuBd8zJ7++?=
 =?us-ascii?Q?4WLzj525EUo6DpTqG3KQ3Z6+VSNa0Mias7NgZw0SZl/URm0EhApLKkAYNqry?=
 =?us-ascii?Q?atN8baBqOE0JcXrQXlKbNIGQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VMxHcGycmYfNWBGjKu45RWSsbHEZ57dVgnq95aTn1JIKc9tFXmezJ38yo4Mo?=
 =?us-ascii?Q?B8azgTPoFUf1eb70ltcG3pE4HaUw53FfCkcA1ltc3eYSKNoKzTKbxVqObzAn?=
 =?us-ascii?Q?jc9K0zZF/OfcFmEV13YGHwYXXpSs0EitoPIjqjcUafx2ihH5QKufx/QGYn7H?=
 =?us-ascii?Q?MvyPxPmKfuYV78+x5w1bx4HFqSu9xkzCwfaRUUJni4j339m6wz1dioM+bac6?=
 =?us-ascii?Q?SOM81omtdHVz2imzOuLz1wB3VCcDRn7TmskSYbZfqlw93rAqFkdaMOrufj29?=
 =?us-ascii?Q?+iP+0tlBeXElQCOIPcjU74V3Z/qWU6ZtS7E9KX2Cqe6ezs4TkNDWUUefsCD9?=
 =?us-ascii?Q?fGAJYTphkBIO1e4EFgxXr/OZq68qJuPtwWO4kaaC5nYzSe/KRPhjzU2qPq4e?=
 =?us-ascii?Q?7RBnHAyuasosf0B013R5f54ICiDQG/3zYJVYRiJD+LJOANBCITTYA2X/z12J?=
 =?us-ascii?Q?C0FREtVN/3GGHQzIgv6bYLMSbXHTXV/Hir2ZdohPz5pXy+WWJbKLv/qb1CBx?=
 =?us-ascii?Q?eCunMUJwW/mZkisf1ueDBIeacE/xw4TPnJxt8kQivd/6WNcEY/kgXcdotYt5?=
 =?us-ascii?Q?HT7o6M7paxQoHtz9qVLho3EcTcB4ev4tyDT5PpZTodLRJu0XMK1HQKYr66nG?=
 =?us-ascii?Q?d1eFPupIELqQihbiPcXU6/MQRevwlgVlWIauN9sRExU0DAKYh4/gt0610UHH?=
 =?us-ascii?Q?Ers+q+sMNK01loqkQ6Fy0Wo1aIAP/GtAjWy3oxE6oWVgIHquF7QpTShhwd+7?=
 =?us-ascii?Q?7iDkd1fclkdaDLdMbJyhV69n/zT3RCev1PQvSKf8gW+sk8zGuPRrs6tUCnfe?=
 =?us-ascii?Q?3TozZVals8ESgPQ9vnCSl8YYgBGawyTOZcgCubXt9V8H3c4Tgbh+UQd9prXp?=
 =?us-ascii?Q?EWL8QK4HQuof5mtb/JAUIShIlUDD4gNxKLXs6pI1C9ldD49jtuUXWrD4gff3?=
 =?us-ascii?Q?WXZb+TrNSoBvlaHwGTU8oEBPXDNm1Lkmklm518wz2KzoeeWCDc8ovfgD6sSm?=
 =?us-ascii?Q?BoVn82onTN5oz3rln5C51NFVa+/cITwmMq4Fzo7hABIen5CdA+aufQciRLwn?=
 =?us-ascii?Q?JbDvOeAZinS20KVkOQJn44pnIBYcpzHNpzwSn/hdbP8SB0S556s+35WW5yl7?=
 =?us-ascii?Q?Ju20zqO8vXdafGlAcDnhCpl/ODi7ctjbEuBlsTlodBfwhGronr2JY30xXhGd?=
 =?us-ascii?Q?g+B5tPESE0jgTPIXzq0OetEY6TRfvwQxgvAku07RRQzKI7a2AcxtGOj9ojzg?=
 =?us-ascii?Q?15G/FFvonyIIYN3snLWJdAbVj4QmR0AzD6tgaUsB3QDyArzPCRXj8uI0K9ll?=
 =?us-ascii?Q?up+HGTB8LFyhdp1TP5FdqypH5oLfwzfGKvJ7T4HA0WUtHVYDvmRO7mPjE9CJ?=
 =?us-ascii?Q?wIWh9hn9Wfbw6SeIcuplNk2uJSNqIaz3hV0Fv++jCYl85mxAiCgbi2hUQpz2?=
 =?us-ascii?Q?wVuerLT2DFnv5CEDj74f5FHDtI0oCmQO2jmeirHnptjhQ3ef8Ik1oyX/UgiB?=
 =?us-ascii?Q?+38pIuTTB7Rj6MmkUrB8mOQTpZece4pyCbfD43zd8LEVtngObPELLIWcViur?=
 =?us-ascii?Q?JBTkaMwVTGzzaNxOgjFc3azZzWC2uBGoWROwEmAi?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 91520155-2fde-4549-bbcb-08dc86432321
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:10:10.2396 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0u8eqoLj2hd6jN4Sl24l2bAD0a9gz9evXcTFG3kuprn9nVd6gdOYTCA0aWVxCcP+cLW8t1pfP9zzo1gi1Vy0aQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
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

On Tue, Jun 04, 2024 at 06:26:04PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _DSPBSURF register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/gvt/handlers.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h     | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
> index bb904266c3cd..88ef8b7b9ab4 100644
> --- a/drivers/gpu/drm/i915/gvt/handlers.c
> +++ b/drivers/gpu/drm/i915/gvt/handlers.c
> @@ -1009,7 +1009,7 @@ static int south_chicken2_mmio_write(struct intel_vgpu *vgpu,
>  }
>  
>  #define DSPSURF_TO_PIPE(offset) \
> -	calc_index(offset, _DSPASURF, _DSPBSURF, 0, DSPSURF(dev_priv, PIPE_C))
> +	calc_index(offset, _DSPASURF, _DSPBSURF(dev_priv), 0, DSPSURF(dev_priv, PIPE_C))
>  
>  static int pri_surf_mmio_write(struct intel_vgpu *vgpu, unsigned int offset,
>  		void *p_data, unsigned int bytes)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 36ed23b93475..9bb840895baa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2313,7 +2313,7 @@
>  #define _DSPBSTRIDE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71188)
>  #define _DSPBPOS(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7118C)
>  #define _DSPBSIZE(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71190)
> -#define _DSPBSURF		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
> +#define _DSPBSURF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x7119C)
>  #define _DSPBTILEOFF		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
>  #define _DSPBOFFSET		(DISPLAY_MMIO_BASE(dev_priv) + 0x711A4)
>  #define _DSPBSURFLIVE		(DISPLAY_MMIO_BASE(dev_priv) + 0x711AC)
> -- 
> 2.39.2
> 
