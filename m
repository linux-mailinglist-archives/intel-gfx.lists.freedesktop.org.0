Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C078B8456
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:24:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41D61112FFC;
	Wed,  1 May 2024 02:24:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fuo8VrAg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FBE6112FFE
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714530293; x=1746066293;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=guyftgoArbmQmmnJFrRnZuSpVrGi8CWUmtE0HiYIFsk=;
 b=fuo8VrAg7imM/k+79s3HJGB07/zmuGvwdOJpB7gRry1wfDEYaGSur/9E
 ThzG1j/MXTrsoceE+u+XiQTmxP57bMw/8Tr4KvWGuOk9iagR5i7/aM13W
 714or9Hxgj0N7r3VIOIy0jnAe2A/qEunhlPiXACooH4BrtEgVlPOqgPth
 uPvffdSyfFg/jjPI90AJkl3mrxKQ0RzstWYsCfw33N/+e8E7G1ZWAtqd2
 spdkDdyeBVLlzibulKkV+4SzTiLWPw0qIkLTduUXSGQVRr3H/jJ6Yqf5U
 XY/1XQIQdrk2DSwwyYMQEP9MHK/E9WEd4LxOwW+A8VapwTtJBY7sdkZTJ w==;
X-CSE-ConnectionGUID: YG0gFJ3JTEeKygxk5Yablg==
X-CSE-MsgGUID: CV03YmchRPmgx5o29LY1gg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="10483947"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="10483947"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:24:53 -0700
X-CSE-ConnectionGUID: OWMEuQZRSji7cpmja5CtJw==
X-CSE-MsgGUID: eEucHMl0RWqQJWRSPXbRTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31486533"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:24:53 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:24:52 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:24:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:24:52 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:24:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h+H8Rjehj3feH7ufIWFo/8uoFVZr4i6CbkWWzZKvH5awhMkHRx36o3XjVdsoD/S/9x+4gtRrLq2hIyALJ93hVPWFI2wwTBmkSaM9RYQ529ZX3cPUKtmoVNRyiknKbt5jZD48098p0LG4eFpRBCxSIENUjCwDoCjjVEtXlfN8t2lvjubkqqYElTv4/cevVQMfl+YcCwsjIe7PL1K5lxeM7qdcC24DA5himXAhQi5+YFg+XzHRLyqP4VVyf8wcJaNXPC06G2ecyKs/oG4TDQsLZd2aL8aavpH8R779qJ+Eo2EwcK4J2pzxiy52LEg+6A+EGBlpjw3DCYjjlsjsGHpJaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y9tOeHJbfuFQ3PftaQxfl/6sgtwcgjttOzR/W/z51wU=;
 b=ObO3pnVmsrRJxa2VIBWM+d9oWF9aVqoBK32UN9d8Se5ubLicPfW7rlY9p/ZSBP9eoIYv1nx2IKy1dkCu0JfdDicXIKhrmvwQ3dV0wYq4tPmb2ZdjC8lu9cjXnxXHBuyzIZEjprDRIpUf7Y2giw7pxT4qjXXWtpI7KgPG7DCJhb0ta67jbHfbaNlzaeSf+rLbcIEfzLbQgfMZ1lnaMpXN8ztKibPPCWJVAFmgTURPjQcfiV+EXOi0DVxQK+7QDrdgyd59RM082J8QEWWvJ2204WySYWDNL3acMhKxcMl4kci387LpmW0UCN+Q9ytLe0WJ9sGGvePj2Zx5LKTYefQX2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:24:49 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:24:49 +0000
Date: Tue, 30 Apr 2024 22:24:44 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 16/19] drm/i915: pass dev_priv explicitly to ALPM_CTL
Message-ID: <ZjGn7A-HyfDNCgRp@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <96da9be36dc93fa9a7c329f25ff963e4998998c1.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <96da9be36dc93fa9a7c329f25ff963e4998998c1.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0188.namprd03.prod.outlook.com
 (2603:10b6:303:b8::13) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: 0a9babb6-a75c-4511-5f87-08dc6985dfe1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?j1dJ4JSWV1sYs4uTv4yaLl5vfpife28iAWgmaJo/mG2rt8rcewlUFCvxT1Qs?=
 =?us-ascii?Q?DNJw921dYozY5oCwxEA5GxgcNnLkm0HVrNxm/ECyP2mJF+9aw58hRZ1zBPLU?=
 =?us-ascii?Q?PiNQLkmJFXl7Qq79Apswro0FVpnpFb7New+8c/pgm+9GBCX8p46ymyZwKT/M?=
 =?us-ascii?Q?/nYG+7wS9+oYrb8jdOD+dV7oK9kT083Mbtuj2BgfgLRPWQCybN6fP8aL29OM?=
 =?us-ascii?Q?sUP+x7y9niv2A2YFM/BrnrhHSRwc65EfF80QgRl++3OwxzHECC8px7db1Q0G?=
 =?us-ascii?Q?mghb8eC5Moa0wsjJf6bvsbXusyzlzZ9g4ZUocUnxu/xIBhHkSzcLQ2yAV2NX?=
 =?us-ascii?Q?ny9BWivhbluPeixuoe7NdWm6YtFwCqhNEa/Z5N0gITbZyoDkfRbYQjfHxQgG?=
 =?us-ascii?Q?z2JmuA2bYSdHbB3WLY1msE52WnxPfE00HygvbafuUyKjswtwAeBJH5qBIKtK?=
 =?us-ascii?Q?MitsT8JRnw/gPU/b+lIF8K68KCoZF54zUJzxbNoeggAfny84EzAz5donqQpj?=
 =?us-ascii?Q?pNfaG3k/MfD7S6ob30oXvXWrKY6fJgeHlPqw/MGdhhBqDblkv0PJecTNhZEG?=
 =?us-ascii?Q?gsfTn6KGURZ5svIDfGUzc8Hc8PcbebqTPXkkTrsyek5PotEVgowh+rE2nw69?=
 =?us-ascii?Q?VX1YjBu44rUJXrt45Q7rDa9NqWco9LmNZy1RXFSNlmros+rlpHdIF0KJVCvB?=
 =?us-ascii?Q?kyRkNLwGNLntjU3owgVUYhOfjKn2ZUGmx+OoNRBsr3OY+ySXWA/CbyBlXTZh?=
 =?us-ascii?Q?ixPXUrrZPFZiqmnk+UNoXwxN06caciALAxHG33O/AZcZ8e2dy/ZeXpRrYXR6?=
 =?us-ascii?Q?1PKKlIWlQxxU78rD1QsNkXHTP0On7MGQ5RwiOwrZ/T4U1kFZSqHxMfq/1V35?=
 =?us-ascii?Q?0VPGBsH3K9LajLVqlTXWoSBZhhKTdYA6s+OKlv9We9v28Ryvxhcn7mKb4Uy/?=
 =?us-ascii?Q?xiAB/2ajj89p6Bta98DwzAlICfkEqlMtxHNGQSt9dzwQl93iviBlyroSSTuI?=
 =?us-ascii?Q?pMA51NIB2ZsvNnMQHCqa7Prmf/SC/U1N5kZcQeNjM2cTtpTmOwlAahZG/+bt?=
 =?us-ascii?Q?LEtA8eKBCzjFY8Xd6qHOzhrqz8I39pynImjusEREL1FSC7iFpcgV1sIIKM2Y?=
 =?us-ascii?Q?8NjIil6pMiv1nMiT1Ph3y2iBaR2kaGMnFcOc1roeCrJBsf2vRnhWgbdzXxqf?=
 =?us-ascii?Q?yERjBED3DbRaAYS66S3ARyx8eCoDbtuUAfrbkVIXXsWBnaRJbjdtiZugD++o?=
 =?us-ascii?Q?SGg9zCxKVC6i8b1+3YgxzS8ByJBpWI9j/9loTBkeGg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K6kYQrCWAkDXFNwQ/aBjvepkHKd67mriPwh+TVLeO9GxKqFDuV/CXAZoSpSY?=
 =?us-ascii?Q?4PDgHglm0fI6lmRzIlkxpL+zRbmdYua2rFw9oNVLWn+D8J4h/e8eNhEyMesD?=
 =?us-ascii?Q?+vFP2Sa+Alkl57CWzULndy3q4AKpNyCRhsXDZ1vuGtv1fFiZodSzchXA8E13?=
 =?us-ascii?Q?bde/qj4cv1FKTDPgleBGEZXJgiZ4lmvoIRHk0zmMM/gZgtHnVTzrZJCl7wTn?=
 =?us-ascii?Q?BiO6RArHCVOQ/yTiqLQ+Cixp26LuQBhEJj3qASqJJvyteQ2yqsbsUuCqDKGR?=
 =?us-ascii?Q?s1zAHVt7o/b+TTpiCxMQI54mNNXBuecxm6CLC0+YjQBbw8FH6i/4BMPF6NB0?=
 =?us-ascii?Q?VtCDiX3vecrS3ODUGggtjHG+bux+qd6D4p6q3uhvtE22vRxkz43UNy3F2OkI?=
 =?us-ascii?Q?/Hg5228HASsVgU2CGDhtBNCUCJx+PWjrDrHlRnxD6Cel0vd60Jj74gjQDMO/?=
 =?us-ascii?Q?NRnGfCi6dfloh1YCDH8m7FLCmlTqY7+a48thKrA2VwJiU+alufpmi2MONVoB?=
 =?us-ascii?Q?XfD/ptPiE5wORrIZCF5nmPobvjv5xF1ihI/3y58GWDO5MFgeThtqJI/epF2r?=
 =?us-ascii?Q?7dCpwqTZbTYHZ/+AlGtu6hJwPxq+YsEbPZg8zUPQI3LetX9rU015yqJrsWZd?=
 =?us-ascii?Q?W70Tsuy1vT2OVVGjANu9mxh+vEGXaBw6Nhq0FOWgcmSa0BgNXz/eI4xHZf6g?=
 =?us-ascii?Q?jqKhjSNK8kPnjondI6/wqunV7xG4gQGvoqptFqf6TxfnWAPvp1azKJ41BOCP?=
 =?us-ascii?Q?CW4t65sta6J7sKZMa0tyDHx44nfHMW/REy3WI1PvI0FeAtY8XA/hV3m7Zq2k?=
 =?us-ascii?Q?LxTfPYy0zJ3C+9T65ZmPmL7RijFlJpImDlv4/2+llXgN3lhFIJ597RUapL52?=
 =?us-ascii?Q?g/dQgH0L0eui1hQ4G7raCkuEHNjjkesK9r4Cme13G5mAVXkCjD7+snE+Sbzc?=
 =?us-ascii?Q?caqPWAuFWWHSopxdMNAs77mLKJVfWiGtTdiZTMI9+I8TBdGllPzCpfGcNkil?=
 =?us-ascii?Q?67nC/JRgeRHDB778SixSDsSWxvdV7LjT1feCPRJJ5OnCXm2Y0iTjbOnox2Z8?=
 =?us-ascii?Q?b7a+jYrBZi9znQu4DddH8lIKZ06qUkx5sXgXB7gNdCjRPsUKX0u7HPZexW3+?=
 =?us-ascii?Q?QqHFPrVV/Sqelh0olM9Cw19JiruG6lizojjZF2C38/O6ImjpWfScLM52cV1o?=
 =?us-ascii?Q?uJnQnW1MhpfcQlkDdwo0gN6tPLEofM9L5J8szoG5nWZ5WsXzCOtm20cWqdZB?=
 =?us-ascii?Q?df1vjMVaEgIlmZZ8URZkIRWx0+IvOjqJnLaf0ISSMbggza4x02GxWth6TUH2?=
 =?us-ascii?Q?hEaOOt/7tmZ/Gg1f7CugbdC5/skve8qugZ8nJD+/5a27RdCHCtioKq8k/byw?=
 =?us-ascii?Q?70hcD8RQlSKcgbuW8KSYJ9HKZGgugeq8njgUNArubbxxKDHK1XbhYumZgacv?=
 =?us-ascii?Q?r4Hlcv3874kZ2rgC8msiBLETKGiWYjfmX4tIbG22zgctogman0RqoGgnJ+8O?=
 =?us-ascii?Q?vYX7M+Gi6XEUNpNMyP94Iow8QPPBW6tXuvPMKDtUuM8vFaONigkQRBvWuV39?=
 =?us-ascii?Q?gVf20PEQnb8sgC2kspLLqhdlxkF6mqLAUhWcX3SF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a9babb6-a75c-4511-5f87-08dc6985dfe1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:24:48.9351 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ksQ6V9AzvbfyBvn4xiKgkYeVUq79fyAdQRean/VXoDeNbaj++E6rbOLGL1ck4/tWXdcXlYsE3bjAy22iaKNBmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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

On Tue, Apr 30, 2024 at 01:10:10PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the ALPM_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 37b85b721ddf..fad24b1e5ae2 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -1812,7 +1812,7 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
>  
>  	alpm_ctl |= ALPM_CTL_ALPM_ENTRY_CHECK(psr->alpm_parameters.check_entry_lines);
>  
> -	intel_de_write(dev_priv, ALPM_CTL(cpu_transcoder), alpm_ctl);
> +	intel_de_write(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder), alpm_ctl);
>  }
>  
>  static void intel_psr_enable_source(struct intel_dp *intel_dp,
> @@ -2112,7 +2112,7 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  
>  	/* Panel Replay on eDP is always using ALPM aux less. */
>  	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
> -		intel_de_rmw(dev_priv, ALPM_CTL(cpu_transcoder),
> +		intel_de_rmw(dev_priv, ALPM_CTL(dev_priv, cpu_transcoder),
>  			     ALPM_CTL_ALPM_ENABLE |
>  			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 4ccbb651016f..4d950b22d4f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -297,7 +297,7 @@
>  						  _SEL_FETCH_PLANE_BASE_1_A)
>  
>  #define _ALPM_CTL_A	0x60950
> -#define ALPM_CTL(tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL_A)
> +#define ALPM_CTL(dev_priv, tran)	_MMIO_TRANS2(dev_priv, tran, _ALPM_CTL_A)
>  #define  ALPM_CTL_ALPM_ENABLE				REG_BIT(31)
>  #define  ALPM_CTL_ALPM_AUX_LESS_ENABLE			REG_BIT(30)
>  #define  ALPM_CTL_LOBF_ENABLE				REG_BIT(29)
> -- 
> 2.39.2
> 
