Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF6A959086
	for <lists+intel-gfx@lfdr.de>; Wed, 21 Aug 2024 00:34:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90AA510E519;
	Tue, 20 Aug 2024 22:34:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZYLywoRU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF8A510E519;
 Tue, 20 Aug 2024 22:34:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724193249; x=1755729249;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AUkYNbPEzG/X1+/2Djro+/q0muiAolq7EtadCNEYAWk=;
 b=ZYLywoRUlKOGt/bGq7RYW0L5a/n6Z5Nu6+onPnGr3Fvdbr0AsvaC2fC/
 6P9qEo641YhBPclXqFK1nSkPzH4WfCROLN8LEN+CLo7KFMOSoCaUj/n1I
 NwWV1V++eysBMjD4BKbaEhwRCFjqpTGdyxV14MZ1brNUJD+XUvuAOQcah
 9fGQWSmza+hlUbBJQtsLnC6pyzvfM2H/Mvs6mIrqbT3oLuTWgsLiIPRHV
 ATbqwd12BI0cKu/ZRA3hoxxFNsqHRBmrAnuvii7MZI4JBLOgv2RwqY+96
 xe+Gf/slO+vmSmKopYqI9EDCxx8KYVe8Vof5U3C5aNADEYPAI479xiZXi A==;
X-CSE-ConnectionGUID: 0lQ+l9FTQm64hCgoxFN3qw==
X-CSE-MsgGUID: GVdx1lQlQUWXAckoIKQo2Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11170"; a="45053786"
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="45053786"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Aug 2024 15:32:46 -0700
X-CSE-ConnectionGUID: q5Pkq0kqTpKE1jOdU0negA==
X-CSE-MsgGUID: KwYHJLelQ7GxQQuvgq8C6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,163,1719903600"; d="scan'208";a="60833821"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Aug 2024 15:32:45 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 20 Aug 2024 15:32:44 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 20 Aug 2024 15:32:44 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 20 Aug 2024 15:32:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iJz764xKxM1wpz78CVEc6CrQnuBQdvuHN3AELarbvLH3+oQCGboU4HPu/3FBpYaNMRZ1BAQkg6Rri7fMZH933nr1Wr0oUWLIQ2o43hWNKF4g7yHHYlXhSMfmdBZOC/NriJUigMbGY9JqwmNdOFWvBvXtca4G9dH9qm2NgZBHO7j7ZLcGH90jl9iEwyVD8AH6jAUSUwhAGesinZT1k6PNh8IKJXEgCYe6IZ9dB6rjlR+kGHnVSYfcD3BIitjAaVzwK5gTtQIbVXde4hBLcEwxtZkV10RSXHHjsX9AWlmlD3bQv8BrmCvxropn4s1uqf0LxEZ1/F1CRaqR+MEggc/3Vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QAITVAkCau2xDPW8D+W4jJjxo5siJbVUY8zPH/egZQw=;
 b=BRRc2VSU7lj3lX+7zYKkxiwqtU6viJ9BRFAOmJ7ckdHJ/Wg4H1JS+bQGv7ZWhA5PNJXoFVR7nvjimBkKartSDblIzxfvnyhPsHlLoQU6T5ZJmVzi/hPHoocTjz85VAFXHjYDWYcXc6eLCUGIK3tDtg7xgbyQyRsHOQ3OLBZR31ceqvL4SYNesL4PpgkzxptGmNtE1y5Z7Yi/p9XZVw/pAOKgfXKkUk8uKEGx4irmqV7FUTAgzEP8Im/KgZPPViF8WBRoDTWWiDqJOMqcBi2MY5cjwwN77CNrCUOquSgy3TO7ci/84mRELHDMSccsJI5bAwgIi2cabIs4oj9SphGHoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA2PR11MB5001.namprd11.prod.outlook.com (2603:10b6:806:118::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Tue, 20 Aug
 2024 22:32:42 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7875.019; Tue, 20 Aug 2024
 22:32:42 +0000
Date: Tue, 20 Aug 2024 15:32:39 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <rodrigo.vivi@intel.com>
Subject: Re: [PATCH 02/10] drm/xe/display: remove intel_display_step_name()
 to simplify
Message-ID: <20240820223239.GN5091@mdroper-desk1.amr.corp.intel.com>
References: <cover.1724180287.git.jani.nikula@intel.com>
 <cbea7def331cc9d2438da49ae344b9987f27cd12.1724180287.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cbea7def331cc9d2438da49ae344b9987f27cd12.1724180287.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0044.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::21) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA2PR11MB5001:EE_
X-MS-Office365-Filtering-Correlation-Id: 89430961-dc23-4499-337d-08dcc1680158
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?jrCNJabFYhT3eAwetGM8HXZ1oXGSXhxozpYhj0OTTkdX/nRbsulaMz9VQAbG?=
 =?us-ascii?Q?+87XAE/8h2zAieg15kSaJSmjJQzbFfKZPwDAjhzwWJbaaCwyIKK6tX+I3uDf?=
 =?us-ascii?Q?zfyHnxGad+xzqEIFr99femf3edK+kxUC4SSGTXgFBsPf53FC2uekUXCeLWOu?=
 =?us-ascii?Q?OUOZg0VhA7rQ6lsjVbRIPt2FBaMJ9jylqcJQ8XMS59PWZXaS9EH+9ZUcyS4L?=
 =?us-ascii?Q?S90sJwUqLaUkr/TfJcXLoI6MV1PICDv0GwZZvmizo4G4/4KTEnNVuPvWrot6?=
 =?us-ascii?Q?TZgvan+qdlGRddMfF0Pr/jQNxEyFQs/cLH9rGL4JhpnquCswz3aXt4gYDFX9?=
 =?us-ascii?Q?AfA+KdZKmPSfIEE24biMm7Z3gYKA7qR42MxHzWivp6nkdlAg3F9pAFVkYFVZ?=
 =?us-ascii?Q?ERt5bI/w/gTh53Y+TJ444sPAa2RJAVriMAxB5S09uWtoF2OjcRGxgKcmHC04?=
 =?us-ascii?Q?SwpBsNjhM2H31oUml0GoTR4EDjpX7Co5FAraFnVB8xdizWP8KgvqxIR6lCt3?=
 =?us-ascii?Q?2/NQ0HHfpoXvgR5XyAloOeT1HoTWqVVhXfPCtTO1qDEpTgRyAIRejpUPOmzK?=
 =?us-ascii?Q?/m2i9RVI7YV21FeI0k0BhZ6gWxQQg4RQqRLhujlT4kQkU0rP+piJ+cgaetzh?=
 =?us-ascii?Q?/+mcpX1nua5APmC2/tAeqRpvQkPkiOcGD+lrH5PMQcxo5XohvNKZGj9Jg95F?=
 =?us-ascii?Q?ekvOi957qd8pPq6DRjNN1aIJHkTyxFnwgSAr9n7All8jPoVVTf5vDjuaAN6d?=
 =?us-ascii?Q?0NholLCYRL5tFevoUUEkMhTR9HJ1wbsKIwxpR4ksQMsLmNjQPBxppiXYLgvp?=
 =?us-ascii?Q?tV52Epn9i8HZRvHC9+pfK2MiLC1/IK5Y1QJ+x4VnKdTa4331fD5utEuI49Ex?=
 =?us-ascii?Q?7SgJh/Z2P5ED9S5UVY5yuE/JGqEXnIZ9v3e3UIYHKmcAZjs0zpHOfhbAgvcJ?=
 =?us-ascii?Q?sQEoO9+ug+oz7MC8SufWrKDEkuqG4nnJEGIL1NqAWg3Spush+qhIi17m942d?=
 =?us-ascii?Q?RBwWZH+qPL5J7cu0pzPDSWKH4jr2EeXCQuM1aE9+Bif3J0tY2uzmN4cfuKhF?=
 =?us-ascii?Q?69L2tBqZbVq801rSO3jk4QzyLyncV7IgaKT+F62TUbWLqsgUb4QF0tQM6mAb?=
 =?us-ascii?Q?t18tDHmzhd2oFx6QNSg2mOmZF9wYIGaRGwTFLLYFJbRQT/RQUG6EqhHXTGCA?=
 =?us-ascii?Q?ZYmf4186JOeLXxSUThwoWnWc+CNsEFsQloy+awFHN4OqqRwMCcn689QHIs1Y?=
 =?us-ascii?Q?93ml+a1Mk6VHTUmk+0zOJHlV7cnBqwtgqzxdUDNQ4Wq9P3jTVxuTUJRsaONQ?=
 =?us-ascii?Q?6K88M3flAhfUVk3fpCc8hhQ9fZlrD7eZ9T3rr4sA64aV/A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?t3W08LhuOO5sLb/vpxJypbAg8btSNWRFdqvQ+xj3WK17V59WU1WEETCeuUez?=
 =?us-ascii?Q?y89dp5yDV6fEd1pvJEgBZ8aVHCkdRKoYfGdX5rXIR+9FpI4X8wBm2RRyxyt2?=
 =?us-ascii?Q?a1JCFBvUU9294rPHt2CqCeTW0Jel5TT7trnLCmwarlpI5cvBP+Gah2N+JAw+?=
 =?us-ascii?Q?tuy0D8EfnN8L4zx42WTixYYuetCwev4t56hRu6+c8uGfynlni4mH4e06ypv0?=
 =?us-ascii?Q?gXGa2MetnUn5haaS6zMNCblE3dSychf9Tn/xsrZM/fcxdyvHxWvARyDnSdvK?=
 =?us-ascii?Q?nvbLx/ziL7n4RRNsEiqycd9VFybmnqiZ8g1SVQubnBFamM1PoekBxFmHycXD?=
 =?us-ascii?Q?C6X9ABD4zL8Bwb5mAVBH3nggt+5bqIzKNtxFCB/dSa/+Ss1XOh1B1rsxzsW5?=
 =?us-ascii?Q?CzCHWAZ6RIe4aJW2dcNDzPC079ZpT/vmFL+UI4vVHfLwYvD3dV4aXP/bzDQ7?=
 =?us-ascii?Q?qhp6/miX9Fd5IO8k0Zg2e9G0bzEhbERBSRUl6i9Wp4UgAD+Px6HzFMBDIJ9K?=
 =?us-ascii?Q?Q29P+JnMtJTX62QKWHntkyLbC31teoE0iRhplOm/cU5lDJ6WMtgEFpZXSOLu?=
 =?us-ascii?Q?Dj87wNIdxggOlmdl8xEGwEjeLtPfSEnOKyx//tO5e1buQNMlUqrYNf0BT1qQ?=
 =?us-ascii?Q?M7M8AxCRJQbgjVoOlAdhBe/dS19kHapIavPl+vz2PVKA/iRlmHabDIVPAF6G?=
 =?us-ascii?Q?6RhP4PBCpI42lodZGt3UvBnq9Ea3vXttBhXwBuhkLGup55HCdOMuis9MWM9a?=
 =?us-ascii?Q?kl2/o5E123A7sidb8cZRen6Bre/GwkoX7Wf/cvO6n2+wfEKHkdNWfuut60F7?=
 =?us-ascii?Q?qbpm/ONEZNdxk8Pm/e8d1NwXJnj/ASiZqZIj5Toh5o9exr/IHytddY8TKbST?=
 =?us-ascii?Q?VHfYc5xcqyr+9DaR9cdOH6BSf/vqD44CYssSTN3++k4Qcev4VxvcrdcsY1z+?=
 =?us-ascii?Q?837dQkdnDUQ0+X/j2Pb99drClw/vXyR9cpJ6vcKRwpgE2+uWD0fitZcFnMg6?=
 =?us-ascii?Q?Pip7XWtwAD7Q9o33AP9/Z+zD0ESQaLRTpDYGwdvqgTa4nzaTw1YMNiK3yLmD?=
 =?us-ascii?Q?Ah4Tf9z1Z/UistoAQqOl3PQstT25XZSPLSRWC6qd94zp7FA/D3rEJZyyhAjc?=
 =?us-ascii?Q?Zbd6Ru+GyfW/xxdYw6oF2tIHWCoe32BJoi5GsAxg8jY4xNGaUseAZoarbRKe?=
 =?us-ascii?Q?FUWY+JMxSOkASRCWX8wiDcvgT/8F2V+QNF4PLnXB1x0bG5jpRxZyT5mlz4jL?=
 =?us-ascii?Q?vldX+eLyGTks4NX+xT1VyaQJYfyHoKQJAtkSKhowM1ck3yBO+oCrfYFWPw8h?=
 =?us-ascii?Q?uztFxjxwB47MK2ecZ5GoYASzCwjWp2nFcDnYVDeucjtw9KvkscMcw+/RPrxb?=
 =?us-ascii?Q?7a9Ubo3GYhgkZTyFMchkVnTnl/wsvdQztuOAT++pFw0U/QBbpwrr0gma9gUV?=
 =?us-ascii?Q?RgsmmQOEA7MffCxq5o3Lda8AKwim3oEuFN0VksAahbHhMALM1UqvGuWH/icN?=
 =?us-ascii?Q?jc1EkjnnfjqYOBXWJi3TzSKmJrEONzF3Vmcj+LdJ+B9uCa0Et8esE8iHPthf?=
 =?us-ascii?Q?yee8jx4xU+Gz2RZ53cqrZfBCb2CWMr7+AmevqvixDFDUhngr61EPjtpu3bj+?=
 =?us-ascii?Q?zQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 89430961-dc23-4499-337d-08dcc1680158
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Aug 2024 22:32:42.4287 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: asgt2wERbD7gQNOFOR0HgANG31+p+dgb46fwV5ZWSn8ZRGGOngNEpOFTYcEGKh7sHOhxq0C3tmwIi166wV5ol4rK13XDSn9atcZKJ4TnDzE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5001
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

On Tue, Aug 20, 2024 at 10:00:35PM +0300, Jani Nikula wrote:
> The intel_display_step_name() is an unnecessary extra
> indirection. Simplify by just adding a macro to map intel_step_name() to
> xe_step_name().
> 
> We'll need to temporarily add a compat INTEL_DISPLAY_STEP() for this.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c            | 2 +-
>  drivers/gpu/drm/i915/intel_step.c                   | 5 -----
>  drivers/gpu/drm/i915/intel_step.h                   | 1 -
>  drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h   | 2 ++
>  drivers/gpu/drm/xe/compat-i915-headers/intel_step.h | 9 +--------
>  5 files changed, 4 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 73977b173898..7c756d5ba2a2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -391,7 +391,7 @@ static const struct stepping_info *
>  intel_get_stepping_info(struct drm_i915_private *i915,
>  			struct stepping_info *si)
>  {
> -	const char *step_name = intel_display_step_name(i915);
> +	const char *step_name = intel_step_name(INTEL_DISPLAY_STEP(i915));
>  
>  	si->stepping = step_name[0];
>  	si->substepping = step_name[1];
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index a5adfb5d8fd2..80464e4edcce 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -275,8 +275,3 @@ const char *intel_step_name(enum intel_step step)
>  		return "**";
>  	}
>  }
> -
> -const char *intel_display_step_name(struct drm_i915_private *i915)
> -{
> -	return intel_step_name(RUNTIME_INFO(i915)->step.display_step);
> -}
> diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
> index b6f43b624774..96dfca4cba73 100644
> --- a/drivers/gpu/drm/i915/intel_step.h
> +++ b/drivers/gpu/drm/i915/intel_step.h
> @@ -78,6 +78,5 @@ enum intel_step {
>  
>  void intel_step_init(struct drm_i915_private *i915);
>  const char *intel_step_name(enum intel_step step);
> -const char *intel_display_step_name(struct drm_i915_private *i915);
>  
>  #endif /* __INTEL_STEP_H__ */
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> index 1f1ad4d3ef51..82b934fe230a 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
> @@ -82,6 +82,8 @@ static inline struct drm_i915_private *kdev_to_i915(struct device *kdev)
>  
>  #define HAS_GMD_ID(xe) GRAPHICS_VERx100(xe) >= 1270
>  
> +#define INTEL_DISPLAY_STEP(xe) ((xe)->info.step.display)
> +
>  /* Workarounds not handled yet */
>  #define IS_DISPLAY_STEP(xe, first, last) ({u8 __step = (xe)->info.step.display; first <= __step && __step < last; })
>  
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> index 0006ef812346..ee3f45b668b9 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
> @@ -6,15 +6,8 @@
>  #ifndef __INTEL_STEP_H__
>  #define __INTEL_STEP_H__
>  
> -#include "xe_device_types.h"
>  #include "xe_step.h"
>  
> -#define intel_display_step_name xe_display_step_name
> -
> -static inline
> -const char *xe_display_step_name(struct xe_device *xe)
> -{
> -	return xe_step_name(xe->info.step.display);
> -}
> +#define intel_step_name xe_step_name
>  
>  #endif /* __INTEL_STEP_H__ */
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
