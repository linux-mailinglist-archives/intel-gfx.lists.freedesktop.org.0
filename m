Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB018D6158
	for <lists+intel-gfx@lfdr.de>; Fri, 31 May 2024 14:08:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D38A10E790;
	Fri, 31 May 2024 12:08:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B4bYhFWY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BED6310E721;
 Fri, 31 May 2024 12:08:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717157320; x=1748693320;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hY0Z5ZdOVeTP0ZC+ERl5ObBEzdimRH3VCS5SSmDlmFk=;
 b=B4bYhFWYXvKU197JDgD7OinqwHavep8vE3SR3wByLT3uDhkULYpQkM4m
 TrohU1TD3tGzKWtPQMTlaHSafwKkvaFh5RYEd9LyVEhqdyjtXLM0O7145
 //b3fNhjsZQ9USJ/Kr2xZGRAuR6RETIPHsRi6sZUKbWlSUlYcNm4CNNvx
 W3om7QkAPyiT1HbEmUFE+b1W5kSNrAPX71GGQdMUpmzSVBLlyBRj4aroR
 ggHRr+UvliO9IislycoplJh64wO29DZIzE4Xh2ZeHVSbwJU2Wi5kvaBrm
 GkKay65PmAr402TeyrVm4+xOFh/WRB6KNnDGGvFh/L7PKIQwUcgwJg+n5 A==;
X-CSE-ConnectionGUID: aDCq9E9ZTS2fparrGHLriA==
X-CSE-MsgGUID: g/3Z1FQKRumLfpyKDNabuQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11088"; a="16644107"
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="16644107"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2024 05:08:39 -0700
X-CSE-ConnectionGUID: dO3Xihl2RH+MspySHRIbEg==
X-CSE-MsgGUID: MGRMQR31TFicQcs5CJ/TaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,204,1712646000"; d="scan'208";a="41070080"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 May 2024 05:08:39 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:08:38 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 31 May 2024 05:08:38 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 31 May 2024 05:08:38 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 31 May 2024 05:08:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JJ+Llf6CTAk7cXZn/bAq81kxaOceMvRrstn0Md2+HNHy+MDAXRnhxNWlRLPtoWuAeFXsJAkfknpVQm8p+eVvC0qJ140BDmbBHkkymhy0ggyOe+JntWmOBagsOGFOEU74MviN48NUCMLMxMuQ60ZOufyN/hhpB36pZ27dYh02maEgeVDJpfNXOborYtZpMySOsOtMeEMSxyo27sitc9LV5Sd3gTY4E4oUSceZz3thrbLUrSzagc8crTOO3h6aD84tPK8p9KF5Bb7DDAG4IogsFgWF1AdgSZqZHYiYJjxwwD/p27E5T/MNnLNChPoSsSJlX4IRNrMwfU9hbmuq0eJQ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NdATCGb8rXtHzN5x+mCfMdecbFkdXsjjMjVcRY+xN0A=;
 b=Pl/k2nSRjoAo4WLG+Vk0uMSVrpgFVb7vq8nVQ6iW4XJ8Bpn3KpicImW0o0rzJG1KQnsJAqzIGFYAipDAitSyfMNBAO8C4Kr1xvevRUFacwLG05Q45Vu3fIxeWxlOfgqF1ORYjMCSpQ8Rnts4FmIrNoy2KrMpW8uCDq2Ri7q1BEjvTKtE+ZcGY0X5PbR4lrDESbZLLCGgnJ0CXWu8UeEHQOdYj2dch7KYQipCkFJx+/R5YiZkBA/LK8wpl5m7Teh1LMeoI7PILfETLTLxgvTp1e3m5/fPHViyasvsOCMX4E2I+gNFEufut3JAKKc7tKqa0VZFcetyqger/D7PPj76pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB8501.namprd11.prod.outlook.com (2603:10b6:510:308::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.17; Fri, 31 May
 2024 12:08:36 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%4]) with mapi id 15.20.7633.018; Fri, 31 May 2024
 12:08:36 +0000
Date: Fri, 31 May 2024 08:08:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 07/10] drm/xe/display: move compat uncore stubs to the
 correct file
Message-ID: <Zlm9wMBd0p5zBQKS@intel.com>
References: <cover.1717004739.git.jani.nikula@intel.com>
 <3f3903c7c5e34aefac0f6d06e433710bc782c97e.1717004739.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3f3903c7c5e34aefac0f6d06e433710bc782c97e.1717004739.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0103.namprd05.prod.outlook.com
 (2603:10b6:a03:334::18) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB8501:EE_
X-MS-Office365-Filtering-Correlation-Id: d3bccda8-1834-4aaf-2184-08dc816a661e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|376005|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?cgSlwYHPWGJiX4qJubn91AXSu7rhu5k+XDAs/jL4JSxd17c0o4dp3h4ceSmF?=
 =?us-ascii?Q?F+rdnjevkb8ZponV3OGMGdODLV9l2J6vQ78gGwsZ+oFy2cHnwV+7HHLma3Q0?=
 =?us-ascii?Q?EYG5gQOuMDK8v331GtM41ejW+yn/KKcFeOHRIiubUPCs+dwB/FRZKQvb3cCI?=
 =?us-ascii?Q?Ydc2jK7KEQLIRQsjWsX7gLilPd0aDp0hRs2nnT+/Me+MszTuWDR2SeJzvMpZ?=
 =?us-ascii?Q?Z9Mr+WsyV33crT21gamZkl5c78krQ/X1lphxNmii2zd5pUW6e77BhrcLAWQW?=
 =?us-ascii?Q?9bRKbpxZCK4MFIh4xbZv10eqrO4v4ooZGwzewrDsH6F2V20JzdUJBR9M8a+E?=
 =?us-ascii?Q?99UBc1cvl1fvNusMW9Iakqwp+nQzK5Vm/80q6S6tTYw7aQOHbt5wnfkebWbF?=
 =?us-ascii?Q?gTZSmTBAaBDvzTmh8NLP7TibYLOH9sLyVvBKr/xSQXW6gFHkUykLH5/Wg6Cv?=
 =?us-ascii?Q?IWCXKGORzmnNxPElxlQac2CPEy94eR4myiVeaM43W6mWOuTr5pz7QLg9KIdu?=
 =?us-ascii?Q?MKzqSNh6Ys8AsTfolPY/GMBkPCc/iuHlEn5oSqZIQePqaeCdKl8ohsPahAAU?=
 =?us-ascii?Q?5+tsKNt3p9Q3cj/q1+vvXa2JdDWIfYvwN5STQ36uuDNgSZwUaz+Ape0xXZ3y?=
 =?us-ascii?Q?MKcaDBU8lQkYqKOJHcMj1zAY5aQuWJfOetke2XrmbubPNtL58z54Lfr+uaWG?=
 =?us-ascii?Q?QZ/jY9YP84OzIR3LdzQz/jMthBozHLwO34P5lNo402VpPaCctNjZmYlA+CVp?=
 =?us-ascii?Q?6gmConA3MVk7JHYjqQP2+WezaCZ77983KpJWLoxd/5+m0i4OOLidNDOhV04d?=
 =?us-ascii?Q?Nn8Yk1Jl82NPBZVvovi7b4VBFYI6te6Qfk8T8Og5VZ1M97CpoxKgTytacxDn?=
 =?us-ascii?Q?dthwAG7g4/F64GtoLP4BSBKaaoAFQvNpEgvyvTKa8NQglvWneNQbR65cSNfa?=
 =?us-ascii?Q?CrrJENy4T26QBP5wkaUoUMwRI/q2/0GIq3PdFgEHh/CoLy4PlwQNmXeiD7E1?=
 =?us-ascii?Q?D4yE3/T7GWl5HbYqU6kiLAm5/vE1qzoSbQT0dOptUoHmJeufpgTcsqqOKrIK?=
 =?us-ascii?Q?sX99rU7j0gYGXjGZHgLEdX6MJ+OR1uZ8HZzt2a0VLNNt2iITn0sw75BNRwMj?=
 =?us-ascii?Q?hgoDyzJ42EB7qg7kjaVP4OibnqZXjPhcWG74+ZZf/FCierpwcBVrUo49Ny9v?=
 =?us-ascii?Q?ISLAgbJX7NdEKzQAMyzvwfCuKyu7dReurLZ0dCxTs4n05oMoSvp1pXdQyDOQ?=
 =?us-ascii?Q?l9paHjd7cHpHIqYxjdTGQEjugu58vzM7xCDr4gVKeQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gwgAm6x940Wn4MjFaPOOrJjnReL4PIy4oKjdu1deWBPNNaPCNH1tYdr/6oo3?=
 =?us-ascii?Q?rvVBB7QtK7XW/BspVD8eCmFY1+WbwCGxTMaEYmohsgsMA+yRvPXntuDmHMGs?=
 =?us-ascii?Q?CCf4chmEYRsj4aBihw+Y10lneg7W20cPwrpb0fXRKSe40COuDKHVFQzMgr0V?=
 =?us-ascii?Q?MdUS2HTUaC52ZR8nnlkWDKRgmx96dmCnQy1Ss4t1mmQcH1mru2nFuGPmqW6Z?=
 =?us-ascii?Q?I0wWcdZ8lEfLbkJ1w8zhnZuQlYgzTMHajv2HgC07EZ6J6IL3FiXP2C69DcqV?=
 =?us-ascii?Q?99OHIsKdivPvDSjFB1Uh49/8k4Wk3dwloAme44lvsso+/03diJ0E18Zwr4Kw?=
 =?us-ascii?Q?WwRcffEjtrgGsEFvdR9GR8s2kRPCJlV3cEqBWxDiZrF9uMO9sR9qieIrIrCd?=
 =?us-ascii?Q?ZPNBpw7VT1MFhAw5ObFRECWudL8iwZLwWFuFs2Cg9yOa3d411pqkA9qUFTgi?=
 =?us-ascii?Q?zMQS4II5y2csWQ8yncpcLzWcdLSR81tbLuj1t/oORN16NcLtkplIp0ZcdE87?=
 =?us-ascii?Q?GDV/WdAMXtrjKXstjRnd5+leI2KXid7r45dW86v68hHpraucrKdvk/9ATo/W?=
 =?us-ascii?Q?XCyhaOCbv93IOIlhyG5ouOizEdQexxHZ2OhEwNcdl1y5sVGM8NWBdWH/jMlS?=
 =?us-ascii?Q?jSwnFl3wAu5LHbL3oEFZgw0f43O7zY4w6tcvkFeFI9BFI94QwUErBj0CrY3a?=
 =?us-ascii?Q?/ehqnisnHfhGl3hWfVo6/gzicM3lZGd80zRQPOxPZ/djCV/2bAYKhdq7GSNP?=
 =?us-ascii?Q?OD1Trmuttt6tUj+niGblq3nUcnYUhPK4UvyEZ88OpomnK7cO/wffA4dtfvTK?=
 =?us-ascii?Q?skn2HMjRo1TMzgLAMLdJdDhjxk8V2gs6qrP+NTBgVwUG3OUlK9QDNQqY2rhI?=
 =?us-ascii?Q?2NkuaKoSM46bKModCebW1v3N7xgQkd3adJu1Sq1FCB0kz+AhrgXvRJrJVrG9?=
 =?us-ascii?Q?URnt2Wvxd6tMAynTjiJ4DUsuivv1kPdLQwNUH32ey2vf6vISirPIZmZ2P5mW?=
 =?us-ascii?Q?445WD7zhiQPTrmps6H29VaNyCDjVmluLSTlrnNYkDUkDAZERJO6sQdXL8x+2?=
 =?us-ascii?Q?mLwMYhoQpml61Z9009LL7gZTuX8GU0hTCW8afLzntgyPbCwQbWyZmV7b6GNI?=
 =?us-ascii?Q?dmRNEg57Gxe+k0CHAE13X81/kIRxuEMAaw+cYkaJ0jwP1A2O3V806yixzNmD?=
 =?us-ascii?Q?UxskzCkyw5Hqllo/6qaNfMjnq/SH9NeLlU4tue9hB1eAbjCMHvkFKN+kZGp0?=
 =?us-ascii?Q?YMQ/lv9iuEP7JaQs8K/LzPy7v1MQUEhElUb/68s2MqaNLD8Fcz+ViZFFht3q?=
 =?us-ascii?Q?orP4jNMi08ANgS6kVUbE+5AHD0Tq5CJKis66SZIE75SRw7dzFIETFPDj+Fh/?=
 =?us-ascii?Q?bls2qigd34hkh4OF+stFI1ACVyv6QIT6FaDPOyjCAphyBs1cEpBU7+xckzV0?=
 =?us-ascii?Q?e8BHqPv6vuk/MwE52/n+eJEk8PT0KLdQewWRDPYSYXPoYgHVniYQ62Cuz10T?=
 =?us-ascii?Q?3EY8MRP7qe/5gggY6vEj+8USHcA+HA36u0Yt3oqRQTVYJCHZ/hnbkwMobJnU?=
 =?us-ascii?Q?oq2NaVit4J9+tB7VgDn8XGaDMmV9f1afVHO0yCdB?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d3bccda8-1834-4aaf-2184-08dc816a661e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2024 12:08:36.1267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z571vCZmVGXVQL9SuhC3/OFrdy6Y0BTsTS/6mJLetGIs5DHlgMFcmKup1vLhDeT1+dy4VVMvmRXvq9Y6/soqaw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8501
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

On Wed, May 29, 2024 at 08:48:11PM +0300, Jani Nikula wrote:
> Move things that belong to intel_uncore.h to the correct place.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h     | 5 -----
>  drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h | 5 +++++
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 7b3f53427b03..60544633ddf7 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -155,11 +155,6 @@ static inline void intel_runtime_pm_put(struct xe_runtime_pm *pm, intel_wakeref_
>  #define assert_rpm_wakelock_held(x) do { } while (0)
>  #define assert_rpm_raw_wakeref_held(x) do { } while (0)
>  
> -#define intel_uncore_forcewake_get(x, y) do { } while (0)
> -#define intel_uncore_forcewake_put(x, y) do { } while (0)
> -
> -#define intel_uncore_arm_unclaimed_mmio_detection(x) do { } while (0)
> -
>  #define I915_PRIORITY_DISPLAY 0
>  struct i915_sched_attr {
>  	int priority;
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> index ef79793caa72..083c4da2ea41 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_uncore.h
> @@ -172,4 +172,9 @@ static inline void __iomem *intel_uncore_regs(struct intel_uncore *uncore)
>  #define raw_reg_write(base, reg, value) \
>  	writel(value, base + i915_mmio_reg_offset(reg))
>  
> +#define intel_uncore_forcewake_get(x, y) do { } while (0)
> +#define intel_uncore_forcewake_put(x, y) do { } while (0)
> +
> +#define intel_uncore_arm_unclaimed_mmio_detection(x) do { } while (0)
> +
>  #endif /* __INTEL_UNCORE_H__ */
> -- 
> 2.39.2
> 
