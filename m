Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 762938977C6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 20:06:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0438D112E00;
	Wed,  3 Apr 2024 18:06:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xw7rdh8c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 88836112E00;
 Wed,  3 Apr 2024 18:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712167559; x=1743703559;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=rfVhQEfEhdsd9VvA0A/gWSZv8/FTLS1D7/7g+XEcIfU=;
 b=Xw7rdh8c8pj71+ieqHQ4jQfMV0op3fm/65iHuQTtgx0ZkarbmcGM4KBG
 mHjjyDUTbv5T2+v/RgeGU5DA74rxs+8kHZcDNOv3/n2ZmWl0F9yX7fYY0
 VgdpLuljGthuEnH7rrEcdJ0Q671KfG3TAHFDlG+gxt8y8JkVWh8C9Azaj
 tpdvebqHYmoCEVAeijUA89MIh3hflbOvsZf1obEPBKW0Y7+YcIKEvGKjq
 JSrXyyFQWzxEtI7QIhuOT7f59SUzTiJe+AZlMSdn5mMmiiMzw8zNROvWR
 7tUKHBJXq4hOBDoAsaev2ZdL4V/njYSY++JGzCu9wduNF7fHoCJgRZQ62 g==;
X-CSE-ConnectionGUID: 9IyLHEq2SQWhGD7ErdoKQw==
X-CSE-MsgGUID: /4Pz6sJOTUqe50YiPtTBpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="18150760"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18150760"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 11:05:59 -0700
X-CSE-ConnectionGUID: +hqpwDMoQx2bTU0Lr6Tbpg==
X-CSE-MsgGUID: LydTMY2QSrSW/97fMydxYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="18968978"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Apr 2024 11:05:58 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:05:58 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 3 Apr 2024 11:05:57 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 3 Apr 2024 11:05:57 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 3 Apr 2024 11:05:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TVQcTWLnqXnqkO/j00yEsc2Jwl3mMnYf7LNmdtmDTco/gIVYEOz5gBwdpWON9r87l+Z8f1ZU50tBXj5Sqm7J6bsmtsAtLHZO1pFD9lgmQEdjDkpkwhD3WJ/zPp7kwbROcAICEqvMsZIdbY4iRhO/WyQncbseUScITHiZibTSQ7tRf8MLuCPSA7dc89pkHk1SEw4EEo8Y8rtA4wZ3gERLR+w3Hz1s58ewdx5Ct4myNR5HjOZTby4k01qx9KIKGC39nq8HrhtL7nQIuIT1+Ekkv4d2YOMgqz/NPgUzdP6AaPat5HzUFPPWXevKi/OmfeQJQb5wZ7ok3l6kq9zH151l0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=123Cf7ivR3fs7i7UM0t/K/Xa1Ktt3WWdJS3J5axuSh0=;
 b=oNEryJSO4ICVOT8QoPft00V8qzDNIpu/v2eFP0K0Evzuv2HoFBJ0YAoVPl2xMjfcVn9s38XTr5dQ/K7KzMDjkpEKwhzV4hPTfNb3dEC8cmbTiF0FvHcFz22BiGwR6e0yYVTUWvoG/oYoryOJ/n0Db107OAyltn5MLgquAMZQcFZQXH5xluJsmR4061iQpP7xOJaJgKI0ZLSoBB+9PCNY47s9ooDTjZ9RggjFfe1agKGiIUXgvtIZMEvDLaa9kLIRvsITmWDd2IzOtCciYJ6A7AQA7GdhOvit1WRTlDG5sZltqwM7Un5gJOCHctQSZ5vrpDhu2YLF5ouwQTH166TIoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB8776.namprd11.prod.outlook.com (2603:10b6:610:1c1::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.26; Wed, 3 Apr
 2024 18:05:55 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::45cf:261e:c084:9493%6]) with mapi id 15.20.7452.019; Wed, 3 Apr 2024
 18:05:55 +0000
Date: Wed, 3 Apr 2024 11:05:52 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH v2 03/25] drm/xe/bmg: Define IS_BATTLEMAGE macro
Message-ID: <20240403180552.GG6571@mdroper-desk1.amr.corp.intel.com>
References: <20240403112253.1432390-1-balasubramani.vivekanandan@intel.com>
 <20240403112253.1432390-4-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240403112253.1432390-4-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BYAPR07CA0078.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::19) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB8776:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0CcqQANCPtDL92oPJ2dbr5bfHXrwpYfSCUA5QKtpWwD0t5gBjt/xZtdJMgHGtwnpdD5KnTl9jUu3zX72m7LU6dMIpXeyigDGl6df6CJNUAR9+/As7dDC2jIVVfjWNdeLa+3umA5AUC3G7qKYcxgI5kEpKP19wPxVo0wyoehfNBC6wTCxVeFqOjIdYz2VkkbYvfD7voPRl8fSOsHiZcYMa5IUlHzDfMXTsbkfbw4dGd/WLZzkoV9/p1vCizubg74LNSBdLipGgTVzw6hGCVH+XMjUwqcWWDCIwnvBkSjC8MWaTr2fhx7XTyHYmUJIqNcyeuiDgFcqsvWYcABbDRurGVNdi59jHn+D/hgmBySZhinyMMayTYquc0wkYbhnj4wvWlxYqKkGNIco6EOVWmMtZsUD6vQ6lfvPLmkt0CLoF7hmy6IpUDufa5d7L3vhBGsWENt5Beo3MA2S9usLQ6Kr6AyTVbttSh6Fj346uL63AoJZHV8GxUvyErO+cgln6RIw8fMN/ghneNcAx6rgQMDeP+RE1DubewycFY+BcKM1vaEeezrHbaQhxtGtfIkGqSue1E2rgO859IfosL8OenWb6rHOBiKKPytWCxPhlMcUV8aHkef/g9l3qBT9KarQPwasCh1CEDAoj/PNr91zD7TPpZ4T8QQExLFlCZsIonkoB5k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HvHdYG4HiPm7pJynEJ90dnuxHYsg7KmCpHbiV09iPIaA+iTqze2alx61YhfH?=
 =?us-ascii?Q?FWRfOKu63f1Fte9Ks47F8rfe6Jyh2ZRSgZipeiIcnPdn5xr9NWBWoDdxgGC1?=
 =?us-ascii?Q?M19Xu+DK0pVee7/6XtBXPBMY9EPGwKcbIRXL707UDDsAAfuEbLHtEZY3soob?=
 =?us-ascii?Q?HQXkKzg52XDSkNpux3RaW01aX5M8Bt9CSZkoXFO/IT1pp4/Xw4/PR49C0Qxd?=
 =?us-ascii?Q?VvLdYVz9Gr5jVkjEjgnZCYPPtPpcCbwqWXAY+1+s8heWBjz+q8TymlJblIR0?=
 =?us-ascii?Q?Z9kBFAF3/NxePog5zeoAvpz8giVdaXUDDQdciWJAkp9qZTy87d2s8xN4Y+kS?=
 =?us-ascii?Q?A5jFykNctvgJqNfT+mfCRBegcr0MSZwnEV9rWeb8F8m/yczZBCFS37mT9/l1?=
 =?us-ascii?Q?KED6kYNbAw/3mlwMOwqre/rF0zaXHvCuDH5iGwN/4fPT2Jnq4npBybE3/H5z?=
 =?us-ascii?Q?N179Unl2fTD6UKY1/oRo2L0Ev8abfgAwBLRv1hvcy25RcBlVhqwA64srJvwU?=
 =?us-ascii?Q?GsVow51IrLlth3NpZ1bokmcWmDFuDRZs2kFKDrg1IiRm0r6+QnaqrZH/3YIK?=
 =?us-ascii?Q?8+do1E/zUzs2mGOhPjMQ6X5PH7bGjeGRgldqwEERWi6/mwxp8HCwVK8NIBH3?=
 =?us-ascii?Q?53dTzVMtSCC6jpachs5RIT2W130oT21WcUWswq/kZncjBxYcejRKvQw5MP9C?=
 =?us-ascii?Q?BvcOf3PQaz08CeJIkqMEQwCFu8F6MHKkR97dkG2tEuKuvhmNs+3e4pEIoUiL?=
 =?us-ascii?Q?Y6OlVC0lZy2S+cJ09z6+GqTdacVm8d6+FjnpnL/YDirliZKk+CwER1NCtui1?=
 =?us-ascii?Q?P9r7wvPrYT4/p/3n6elps98fHddd04wu05gxCjnCT+1XgWABRYHmYPq/oQ5r?=
 =?us-ascii?Q?HbFLn8ozpaz4ur6kEcwOVCK/s/pFn3QYKplWwxZvJGE76tDm1ln9NcSmih5K?=
 =?us-ascii?Q?VKBCZfr0o83ks4X9m9vkDmffR57tVTj7Z/O5maLLhI+7WiwQC1RD4K46N/z+?=
 =?us-ascii?Q?tl6GJFzPIUzOoe42aSqe5ZU7QR3rD1GrpNzJiiVUHmh4Q4DHF7NjldspIDyE?=
 =?us-ascii?Q?/EEkzGM113eariacQNaE6vHFH8tCCzAH+fEVten7Dc4ZMzKiJZhK2aUbTcKe?=
 =?us-ascii?Q?kYCHFky8QLhoLBQba5rUSPF5amHmAxjVCTO8Bncej7aSylH4ZUWHMyB0GGdC?=
 =?us-ascii?Q?m3ZdVEC8IIp/d6mJ9i6cI1hjZnggPQLm3wJpZS9RtEliQNpSAfd+YjRZ4atS?=
 =?us-ascii?Q?ve6oAZ+6bbN2fkkZyRA7XQS+R+MHaJYtBE5VB0VqGWCgcoo44LgO3MMy/yt3?=
 =?us-ascii?Q?Sh8TqyDAJhUvB6qrlDSBPLhrmYEuzvPJM4M61hevaK0Ecbm31rj2GR7uW2aa?=
 =?us-ascii?Q?VXzmMIlBScmx9Z0Qgv8IVSBkUHUA0Z/AJbM8T6kt7lWSKG64IpiEIgdIBvNz?=
 =?us-ascii?Q?4bdgPYs1ye4l0lEY95DY+MOm55r4ZtZdYoeGLbc1aqZos4vOcUGNjANeQff4?=
 =?us-ascii?Q?DQVh8qonCVRUPjYqRVg2xn3/20YYp95RtKG7JhSOh/OP7sxFV1IVDL69YNOs?=
 =?us-ascii?Q?JobjdE2xCxk3CFUj22hPxiAeK8gMJY06BOVKVFjIctfmyUmIc8R1xKFgkoFq?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0180cc8b-3a59-4374-8c3f-08dc5408b4d2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2024 18:05:55.1355 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iLZBJcMuO4GnVHL6vZJfc/HagEpLul3qo/vZrA3Wvd1G9FUXHEU3XB62C89ks/I4qUK3oRL4bjyvL1L8j5vw+y9H7QbbFzECNNK2vt7h2kM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8776
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

On Wed, Apr 03, 2024 at 04:52:31PM +0530, Balasubramani Vivekanandan wrote:
> Common display code requires IS_BATTLEMAGE macro. Defined the macro.
> 
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index a01d1b869c2d..9161d1fdf239 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -88,6 +88,7 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>  #define IS_DG2(dev_priv)	IS_PLATFORM(dev_priv, XE_DG2)
>  #define IS_METEORLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_METEORLAKE)
>  #define IS_LUNARLAKE(dev_priv) IS_PLATFORM(dev_priv, XE_LUNARLAKE)
> +#define IS_BATTLEMAGE(dev_priv)  IS_PLATFORM(dev_priv, XE_BATTLEMAGE)
>  
>  #define IS_HASWELL_ULT(dev_priv) (dev_priv && 0)
>  #define IS_BROADWELL_ULT(dev_priv) (dev_priv && 0)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
