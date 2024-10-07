Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F4099342D
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Oct 2024 18:58:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869B110E03C;
	Mon,  7 Oct 2024 16:58:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BDlM5LrJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D8AA10E03C;
 Mon,  7 Oct 2024 16:58:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728320337; x=1759856337;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WcabFo6jG+pkDQ8x4PWaO3yE8imBDXTf9yor0D4c4EU=;
 b=BDlM5LrJkt59QmXaig3YWMT7l14QGOiiuiKKWMyoR7aaKV/NvCXjEVon
 +hEnmDz6UizrNr/Loui52k075A2Li7BxaRqt+AmtLhZzKgcgZ4CvMbA3p
 afsAX94vBC+P0gMn39qnfNzaf3+8KrtxtkzmgrL0MvqQ+CtcfLYkoI366
 rUPaDt8wGg0fOk4YlwhW8AZSmHuXNYUabpSOWG9BUmE5m4IgjNljIu3Jg
 k+sZ2OJaGyfO8+5zxAxvNIh4gIR0ULc4vEf8TK1uXakmeWWdcNvjXug4f
 VUbQskPJZuHDFT5PS4NXmHNc2id/FnxhNRA0YXNckx6XV60Jse22sP2uE Q==;
X-CSE-ConnectionGUID: nsMlwLe/RdGbvP83L7eT9A==
X-CSE-MsgGUID: wr7InlVBTf6ingfVEUGMzA==
X-IronPort-AV: E=McAfee;i="6700,10204,11218"; a="30362926"
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="30362926"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2024 09:58:56 -0700
X-CSE-ConnectionGUID: ZRDLlfvPT0y9Z89GJAp5Lw==
X-CSE-MsgGUID: 01/hS+WBQzyPfGsNcrjYKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,184,1725346800"; d="scan'208";a="113004920"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Oct 2024 09:58:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 7 Oct 2024 09:58:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 7 Oct 2024 09:58:55 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 7 Oct 2024 09:58:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KT90heQ1Iypd23HG69682uw2NLFdpD1L+Rr1G/SgH0gA9Q80u9oH4KLOK4z55wUjfKeUeqKmKYmxOoGkloyNwLn7BnqcTKFhXU0/QwjEdRPR8+VK9Co3mznVtCg2Ujkz8p0/+Qu4lBaatx8Et3k7LKlZkJ7bUQPca+lKuBF3gFlRSkUeOgRj9IQsp2P6ibMXtpVxSM45J1VMDogDMeR0GSud9BaQs5MF/zWG4qWqp1lpc41Qow4/AgYUjtucU6K/PuUl0wC5DOk/pZcEtBYX83ncYrw+noFCZRJgnAMVH9zBrIEB+57NTv9mZ2F8WWSm2qbur1ODYxJLlRtpFJZSPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GcBMJENknsF9atmtUmckNzjnoAJBdTokKHpdbSasDDs=;
 b=EpipkRTkM+DJCbXNoVEktwKwtLeCvGG5s23pQuEhtfDDcWD+MhRrR8MYTj0lCNbJddCQfelKre2iQN5BN52soa80Tomwbnpi+rQcBQIYD6gjnKSO/WMltx0PRjmXSUA4R2ez7Zi4GrkpN/R5TbEw/ROPHDNd7DX+vtQdmEeAy28yJOXzZ98/fEOc5mJ6ev3AuOa5S/i/fHBPCcn1Qiv5ary2B3g1xqcW4QVNDE9EJvbNUej7uBFCyUJGzVe3TddJ9hJMTB3P3Fxp/d0P8WN9FB4u7btMjZeYoPqSBnH+5PEp5Q9J5CChXof2z9oR4W1WAlG2EQp7xvjqJ/ZLixO2aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by LV8PR11MB8512.namprd11.prod.outlook.com (2603:10b6:408:1e7::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8026.22; Mon, 7 Oct
 2024 16:58:51 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.8005.024; Mon, 7 Oct 2024
 16:58:51 +0000
Date: Mon, 7 Oct 2024 16:58:27 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 11/12] drm/xe/display: Stop dereferencing ggtt in
 xe_fb_pin
Message-ID: <ZwQTM9e/bDaJYpL4@DUT025-TGLU.fm.intel.com>
References: <20241003154421.33805-1-maarten.lankhorst@linux.intel.com>
 <20241003154421.33805-12-maarten.lankhorst@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241003154421.33805-12-maarten.lankhorst@linux.intel.com>
X-ClientProxiedBy: BY5PR17CA0051.namprd17.prod.outlook.com
 (2603:10b6:a03:167::28) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|LV8PR11MB8512:EE_
X-MS-Office365-Filtering-Correlation-Id: 0cdc2426-8432-4b00-1f19-08dce6f151d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?a0wjv+RTygJvGEtNU7ywx2TJmRb58ke+stCk/VL7pPtJYe9MIhuJyBQ+lTMp?=
 =?us-ascii?Q?Jj8lVZcfpuxYZGn6+FeyzSfRV7XXSe+vOKEjNelApdWYoByluK0oO2kORqFi?=
 =?us-ascii?Q?K2i3B88eBN2I65+yT+Gbw5pHMVy9NaUclPBMIsEHW2dovpq8vDRNp5EVWsnr?=
 =?us-ascii?Q?kgHhV112DwT4XZcZjoFF0f++KmcYVBIWHCpAKUCYv866M0dWA4RdR3s7vfTo?=
 =?us-ascii?Q?w7n5EmoJmWPIZ9n+rWER/HfoyjXBDL3+oqoU+k/lGQQwiBOxfWXe/eDdngY0?=
 =?us-ascii?Q?1e2thaKQT+c6GuGzsgTaZIC+oip/gtw1jDzYKJWUnU+KCDnwCA1H4XjMIq4d?=
 =?us-ascii?Q?3PuhYd/w5MA9E0a55C5Dre3Y3p7k/aG22Vc4MHGRfcKKjx9wb7Tp8zjGBJx/?=
 =?us-ascii?Q?O1Ggaqh1QooctLVD0XvQWtv2/5QltnkLLATGshGwM7Yy1u5PapeEb7AFeO06?=
 =?us-ascii?Q?lCn4TIPrbP1cB0lMvG9DJGQ8ECR+gVDQgz0nDpCN4nKNf3HvUJ82IpoP845A?=
 =?us-ascii?Q?vpz4ewS9Zx1+8qa3atrIXvgozLa2tCOUIs5yvK/hhcldnk0kgeEFwJNyGZba?=
 =?us-ascii?Q?O9xixoFJWWVf5v7Y80TO2zOEdDJCABcPtgvjQWDAX28RAPmzIoI8eG2dQ2d8?=
 =?us-ascii?Q?13wHWKbrw/hQ8dCMzzLJBEmjGXQh5YeUloT2oGK4iuvyp07KEyol8eKLPzxu?=
 =?us-ascii?Q?qMi9BTYZalQfQU/sByPtqSnrME8aGHQEvL9lCAyNNNAch56/qAscwNmK7iJ0?=
 =?us-ascii?Q?GgVAybOIjg3XwbtS69UZqMIwoHXtzGm/oxpBjfy+xkjINPfQc78TZRLbxPj6?=
 =?us-ascii?Q?+wkN4aXMp8ZrVuAjEnEoiJv8GywMLrr4DVpSgoBLFI3H8zPPm7xEQkJ3QA3S?=
 =?us-ascii?Q?rUI3wTHzQP+gB6tRI9Yvy4zml/hbJYoxuOkGXPdjUcK4thlht6LGYP/DyRPK?=
 =?us-ascii?Q?OmYuOABaHi8oYJVgpwIlDjbK/SarZsuQ9bKC+r7UmO51VJQihK/kuwcSrTeL?=
 =?us-ascii?Q?SQ1FpO+kOJsU8DqRYyFhQuh1BsCspNJaOsMxmTDkKqGs6zpXApiXN960OhS5?=
 =?us-ascii?Q?w8NknDrNODx/Do952nym/oi+yRpggNXn0aszONAqN24KT4EFFYAAk/E5QYq5?=
 =?us-ascii?Q?PdNkl6HEvJ852OMw0mwIpC9no6KDaXqfCQdcoqT32yxB2OGZIegdw+ZMYWO4?=
 =?us-ascii?Q?uZwLHJ+Z+ZI5DbvztuonjD2rrVLuIp6MvpI5qIS+GNOZBbH3x2nT7DKrdBRn?=
 =?us-ascii?Q?N2bznHpWgMj4rTg6ZaLv0mLm7fo2rPc9UutlnrgDwg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jeT7kKtA0ovfXRvFdRJMWg5IXn0ACoPIwZbYdUV9fA2LrVdgqj6LgJQ8Usp6?=
 =?us-ascii?Q?8Ze99fSCl0VTPA+PNTgsNWg7v4BxuhdWt4XKNkrGYehXt+wCzCS68QUhx5Il?=
 =?us-ascii?Q?k2CxUddRkZL7CIaiB/gUxoYN99A0pPZPJjVA9szftpPnQ99UeNEQ5URth9j7?=
 =?us-ascii?Q?kup72FbkH9og33gyKikI3wHb+/pdlPBEljVxlSkzKpX3CkNpOTRiPS3lX+4v?=
 =?us-ascii?Q?S8XXyaL2VV0k3kxIq/B9aJPl/6b4RgOsej7KMe23AAZicM49RQLrFG0OZebW?=
 =?us-ascii?Q?peZReEIHttqmDUDYac/MEchs6IPs/VyYAEsoSlW+LrzzTSRxiduFZ8m5VARW?=
 =?us-ascii?Q?10OR/KvfP+D5yKdTgw0XxlBHVeqB7tZuOOkwpiw8hy+s3Kgve3aQjggj9SJw?=
 =?us-ascii?Q?n3pgcqJBD1fF+mYOdgDO9DoB0aJFNehRsO2uF9cnlW8ai1lg6Wk+W8UsNWKl?=
 =?us-ascii?Q?XCxHp4jNvYik1O0KKobwEyb/91UIhZbPzsgC3krof+nqUR2brHZsYG37sReK?=
 =?us-ascii?Q?OjVGmIs0gc62htowFzjt0bnsVlEm5yUJqzXhIJ6yj3gB1P2HaTZAaXx7/yVz?=
 =?us-ascii?Q?AP6BggeTbTMzc3/uJRhtdX5JuwJ0cXNA3kcnVRPyP5PEqYkiu/xxQ3Kevfkd?=
 =?us-ascii?Q?C9r6Vx8hs0WmJCYSejpV8tEqsFIiIn6A4qzldQosEhtEqC7Ta2NHEq8+To1v?=
 =?us-ascii?Q?WM/HslODqernMku/m8C138uz5hilu7ex6Kd014wqSnDQvyUY6nBEuTdHKJNN?=
 =?us-ascii?Q?S852nsIxuaY8qsWov3s7T7ijqvMFrrZ1E2bjmHfsiTiZE/k4lY0xiVqcXgkw?=
 =?us-ascii?Q?Y37rDiHw6dqocRLtYENMn/ANPDhkbYWk91/wvEocIpzPoSP+Zm6p0kJihy2O?=
 =?us-ascii?Q?JJcWjIhdQlppfqtap5ijWWCiH/cK7yh7tSBRNNl5M/GOWs94qRzGTEyYJM7E?=
 =?us-ascii?Q?4gwAtwJA2M/ES1Y+dWRnBBkTysR2gs9JZtQUxgLzDErgnlDH38xLf9jwyHNe?=
 =?us-ascii?Q?4tI35vg1ztrjnXdu0b+TmUhudwwXT39Plg+newo8oogRBGN5lwu+2THHjqWA?=
 =?us-ascii?Q?OB9UoDAGuhSXLpRgo0SMBYkslLRBaTfws3lylWEK6ZRprPJ++YF2RLl5Nc64?=
 =?us-ascii?Q?wZCgWYKAhMS06Eyo4iScUK7MJh3P9voFU+OVw0GC1qneGE0lwqNy7Fdn1VN6?=
 =?us-ascii?Q?COgZYXq6EdEez69+EBh3CzRos5P/+Dx6z9+ugaWHWWN4lxxA3Xw/EJ/a1KBs?=
 =?us-ascii?Q?Eg4Uzx9IiBAkOWOGWwbwhEsbWRmO0Sda04V2kgZ82wk+52+vFPmMWaLMNzV6?=
 =?us-ascii?Q?xWLsrG2E5OMHxQ4ZndP/f4Nq2EIuv/iKKKjk7ZO9xi6N0OKc/UpWzfGqEKuW?=
 =?us-ascii?Q?D6xbFMGU7yCwuyY59QHJ0mE1zcu2Yv0N/hgpIALRLrMnOHhYRw6MlYBtUBla?=
 =?us-ascii?Q?WkQBIhzbv1A/Sq1kp3SgKvdF84O2BQ0YK5O1A4IOXUac4LlDsxpFilD4CzkY?=
 =?us-ascii?Q?yKFQ8dYN2/54GWyxLHjdbB9tKXESCkQVJA/8G0dEGQgBcNJ+wTcqWT/4d1Et?=
 =?us-ascii?Q?J8BK8MPNmX0MnK1f35W17984N9T7u9AszXBcKKJ0A/pAxl7EURZSYen+rvab?=
 =?us-ascii?Q?UQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0cdc2426-8432-4b00-1f19-08dce6f151d2
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2024 16:58:51.5265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HNbRUHQFAWflYCr/uEaikX9yi799kG+MS7dN99kgMK5cXYMBuP+q/Th67aKcQo2GQzcSiHHlPhmHercM6gBH3g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8512
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

On Thu, Oct 03, 2024 at 05:44:20PM +0200, Maarten Lankhorst wrote:
> This is the only user of the ggtt struct still there, add
> some calls to lock/unlock ggtt and remove other dereferencing.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> ---
>  drivers/gpu/drm/xe/display/xe_fb_pin.c | 10 +++++-----
>  drivers/gpu/drm/xe/xe_ggtt.c           | 24 ++++++++++++++++++++++++
>  drivers/gpu/drm/xe/xe_ggtt.h           | 10 ++++++----
>  3 files changed, 35 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> index 0ae5d917f20fe..fcd9a519183b5 100644
> --- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
> +++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
> @@ -198,13 +198,13 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  	/* TODO: Consider sharing framebuffer mapping?
>  	 * embed i915_vma inside intel_framebuffer
>  	 */
> -	xe_pm_runtime_get_noresume(tile_to_xe(ggtt->tile));
> -	ret = mutex_lock_interruptible(&ggtt->lock);
> +	xe_pm_runtime_get_noresume(xe);
> +	ret = xe_ggtt_lock_interruptible(ggtt);
>  	if (ret)
>  		goto out;
>  
>  	align = XE_PAGE_SIZE;
> -	if (xe_bo_is_vram(bo) && ggtt->flags & XE_GGTT_FLAGS_64K)
> +	if (xe_bo_is_vram(bo) && xe->info.vram_flags & XE_VRAM_FLAGS_NEED64K)
>  		align = max_t(u32, align, SZ_64K);
>  
>  	if (bo->ggtt_node && view->type == I915_GTT_VIEW_NORMAL) {
> @@ -261,9 +261,9 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
>  	}
>  
>  out_unlock:
> -	mutex_unlock(&ggtt->lock);
> +	xe_ggtt_unlock(ggtt);
>  out:
> -	xe_pm_runtime_put(tile_to_xe(ggtt->tile));
> +	xe_pm_runtime_put(xe);
>  	return ret;
>  }
>  
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.c b/drivers/gpu/drm/xe/xe_ggtt.c
> index db6a761398064..9c4baa22ebe49 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.c
> +++ b/drivers/gpu/drm/xe/xe_ggtt.c
> @@ -868,6 +868,30 @@ u64 xe_ggtt_print_holes(struct xe_ggtt *ggtt, u64 alignment, struct drm_printer
>  	return total;
>  }
>  
> +/**
> + * xe_ggtt_lock_interruptible - Lock GGTT for display updates
> + * @ggtt: &xe_ggtt
> + *
> + * There's no reason to want this outside of display, and that is only
> + * there because moving to here would be a layering violation.
> + */
> +int xe_ggtt_lock_interruptible(struct xe_ggtt *ggtt)
> +{
> +	return mutex_lock_interruptible(&ggtt->lock);
> +}
> +
> +/**
> + * xe_ggtt_unlock - Unlock GGTT after display updates
> + * @ggtt: &xe_ggtt
> + *
> + * There's no reason to want this outside of display, and that is only
> + * there because moving to here would be a layering violation.
> + */
> +void xe_ggtt_unlock(struct xe_ggtt *ggtt)
> +{
> +	mutex_unlock(&ggtt->lock);
> +}
> +
>  /**
>   * xe_ggtt_read_pte - Read a PTE from the GGTT
>   * @ggtt: &xe_ggtt
> diff --git a/drivers/gpu/drm/xe/xe_ggtt.h b/drivers/gpu/drm/xe/xe_ggtt.h
> index 0c63cfa083c03..09bb1c9c0a743 100644
> --- a/drivers/gpu/drm/xe/xe_ggtt.h
> +++ b/drivers/gpu/drm/xe/xe_ggtt.h
> @@ -22,8 +22,6 @@ int xe_ggtt_node_insert_balloon(struct xe_ggtt_node *node,
>  void xe_ggtt_node_remove_balloon(struct xe_ggtt_node *node);
>  
>  int xe_ggtt_node_insert(struct xe_ggtt_node *node, u32 size, u32 align);
> -int xe_ggtt_node_insert_locked(struct xe_ggtt_node *node,
> -			       u32 size, u32 align, u32 mm_flags);
>  void xe_ggtt_node_remove(struct xe_ggtt_node *node, bool invalidate);
>  bool xe_ggtt_node_allocated(const struct xe_ggtt_node *node);
>  void xe_ggtt_map_bo_unlocked(struct xe_ggtt *ggtt, struct xe_bo *bo);
> @@ -47,9 +45,13 @@ static inline void xe_ggtt_might_lock(struct xe_ggtt *ggtt)
>  void xe_ggtt_might_lock(struct xe_ggtt *ggtt);
>  #endif
>  
> -u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset);
> -
> +/* Display specific function calls, don't use outside of xe/display */
> +int xe_ggtt_lock_interruptible(struct xe_ggtt *ggtt);
> +void xe_ggtt_unlock(struct xe_ggtt *ggtt);
> +int xe_ggtt_node_insert_locked(struct xe_ggtt_node *node,
> +			       u32 size, u32 align, u32 mm_flags);
>  xe_ggtt_pte_encode_bo_fn xe_ggtt_get_encode_pte_bo_fn(struct xe_ggtt *ggtt);
> +u64 xe_ggtt_read_pte(struct xe_ggtt *ggtt, u64 offset);
>  void xe_ggtt_write_pte(struct xe_ggtt *ggtt, u64 offset, u64 pte);
>  
>  #endif
> -- 
> 2.45.2
> 
