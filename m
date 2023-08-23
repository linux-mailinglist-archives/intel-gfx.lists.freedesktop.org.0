Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A3478634E
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 00:22:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02C2210E475;
	Wed, 23 Aug 2023 22:22:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E954910E475
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 22:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692829337; x=1724365337;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gZOkf3FoggoDIw4qUYcFb9Oz0gKHryt5pq51GDNkD+A=;
 b=T3XnBm7ggS5WnVrVcKHkf1OmFc7C0N5GYUjiFIS2QtN1GWokF+0PEixr
 4P8aOAh5Ab+k72g9yhEOVXsAIlkPMKDYkKnBoXjKTRc3ExHsYWQsutH9G
 OFUs/0tj6RsxW39zB3fKW7gLB2fxaLnN0S6VfK/p39Cd8aUyhYWDAbv9P
 gNNwujbCxLNSuIb/E5cjfNKMNxmWu6yovU1bYIOWdnGHxy0NREQHXl3B/
 u7SS6KpxGRWxvNLAyuw6ENXS/ZmrViF33QgcTBiL5Ee635NCeP6Arn7T9
 3DcypMrjW9DXWRVJA4Yyy1Uf/y785ZE9qba9SARI+m00aIqDY+ibmZtKc Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="371697148"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="371697148"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 15:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="826894039"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="826894039"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Aug 2023 15:22:15 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 15:22:14 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 15:22:13 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 15:22:13 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 15:22:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a3fNbRv4FIlMUDN7GGapOB+yuQHulIP9koWCW1BzlLDMOxdysUtp0aQsmLum2VaIqi/s5bris9BToQfK5Qza2AWPiN+9ghKi+Yrd2IIdMCMWeYcTFNdDrl6O3qTn1h1MM+FluPqdHuBK/u96ZRkoBMdhFqAR3btcZuTQ7+j6GKyWrbaqJvdMi8JP7Ai25NwloWtyZNJJb5P3nX/DVBdWR1MwNs7nUhY9AqOyDdgCl9sx17i6fwEqHynSjKM34C6sDV7eY8nKNnZq5SUyJtdPC4pykLvRGeGjlE6OrtDlvNED41FpTXqlDihVKhuA31+IPKl6JKeTdM56WZuM9NrlIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q2mWc4jaIchBiOnLgzguF5Yz0yqN2noQXlgGAc5C3tY=;
 b=YbpuE0mvk8WkAkJCnqhJgGRDr5Gii9HCmgpMToN01vcomFK337C6puQPSdxfM6L6s9N6hzFldqwewHv+ciSMfkYR2X/FoxWhY7pXlVy1DWyTJROdl4TX+XyJ0ZzpHO19mHi7KZigRPfLKWDrpRqfX6IZkVYpIL0zPaLwBuKuES3PHsqUc9Dvkwq2aFcOC8tJX1xAlaxCszMecm8NFayBFFZ9wfNH7Nhd4OzS9TVu9uYCzbdZvERw9VCCdAqBgtRToN+SwzQ446TK1AAi1YbbTyLIynr0k/1L3fYGT6yEnLrmjFMnSNVdgAkmpF88b7OwY+SDGCcUZ682VcIjgVnI5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB7548.namprd11.prod.outlook.com (2603:10b6:a03:4cb::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.25; Wed, 23 Aug
 2023 22:22:12 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 22:22:11 +0000
Date: Wed, 23 Aug 2023 15:22:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20230823222203.GP1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823213901.335696-1-rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823213901.335696-1-rodrigo.vivi@intel.com>
X-ClientProxiedBy: BYAPR05CA0057.namprd05.prod.outlook.com
 (2603:10b6:a03:74::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB7548:EE_
X-MS-Office365-Filtering-Correlation-Id: 295fb997-8e67-4a36-6e4f-08dba42764df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DJVTbNWtNiQTglsDM+7LwiRc/bALNWOejP51+1jN9ur3IKQbxctLyKt1djV20LvLfNmQ2I0NsuZM6kmb37SeRuyRj29OUE+cFyIJLnXUHITagTzclMy2y5gcVW6nb1wfbc8LNt369gxLQES5eIuAfCIEUYchsEtY4HSsANsOnU9NeTw2t77mu0NfTT1ZBhu1FcQNq7BMIycNhSv1w3omEAbJdPjOogzL90asjzxfq5QCL3xbkjtq0WdwFCkiUO3Xi4XEPCXsNRLaWuaxPZq7NNlrzhNo0W2vt3nZKPrmJsY+JVFAIytJDUOg6zFE7tWrM/hBljn+P20L8DY9Mzg+5uLxE/C6ySUGwHJTXigiA+3PobDn/JOBRWHmmHbawwC6rgMDeF5Er4k1MgD5aDWXTsVQfpId2Tw2zEXc87r9Chv+64latrEeRvWQKrotbHUGBlvOvUZaDttR7yLEwRZGLNmNSr9OxgIIHrORTPeQmBZTqKkQA9iXwisWcoV7AhmDa4BPPFASgZjCojf1mV3SeAVKSs1HkEHRbeuy0MTeD6sy6Yti42ZSghGiySxHpp/a
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(136003)(396003)(346002)(1800799009)(186009)(451199024)(6666004)(6486002)(6506007)(1076003)(6512007)(86362001)(66556008)(33656002)(5660300002)(4326008)(2906002)(38100700002)(82960400001)(54906003)(6636002)(8676002)(66946007)(8936002)(66476007)(41300700001)(6862004)(316002)(478600001)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FShJKYvgk3IWMdEampel8lDDJLWpNj+8SqQM/s437OCOn8CwlYU+bOGfEiu+?=
 =?us-ascii?Q?/LfxL4ctm07E3ppRZMEfF0/8Hzg7LZA2UzOl1iIJkhp99H32rUPxJt7wird3?=
 =?us-ascii?Q?Un2/1+cOLrAcIvL3TtVlBvRuCahLX7vT1pJzy53cWSuNQToOtNw1Q4xIaCSi?=
 =?us-ascii?Q?ZVxlltc3T4oYUfmO6xb89awhLsdJh0CG1HsUkAulVszgiZzAoQLOrF3SerfF?=
 =?us-ascii?Q?uBgwJa6UZz2qvyM4LgI44iNzXERY1iCNVRiGGPeSfD04OB1He/aPGqTWfeHF?=
 =?us-ascii?Q?pJj/dQR5+25BK3GkG+PzlNGzU56YDrNcS2tL+sawwRyDm+EgN9600ZYfBitp?=
 =?us-ascii?Q?6BbQnR1+ScVgqlz4ucfvJfJpGYTCfq0Yc+bufftKVewNmaERG+XGG5Ec+UE6?=
 =?us-ascii?Q?4fuC40bpCxl5+eoo71mUBpJN1Lu6rXibrFh6bKRZOfdSsts8r1KIAhPVLwzi?=
 =?us-ascii?Q?Y4bbE4zhScW1amUtzFv4PT/fGaRKPSOcZAkUM3+tuwysrOlUOT/qI2MSuTgw?=
 =?us-ascii?Q?bvwO8HJ/c+UDSSrTJ5Q7QWs6h5/J6mW7/i3IjkGspvrD9eYDxSrnXS7euofc?=
 =?us-ascii?Q?GDdlUIjIANuByvWdDLA3Y4DsWq/Q4caCvKqHHc8NZ5iw2E6tMpXVHLS8gxA8?=
 =?us-ascii?Q?eEtguWAYCvdBgIiVRtIZx4ook67EqaBtUM4a2NWAyzw/OMcW+Qh4CQvov07v?=
 =?us-ascii?Q?mwEnb3o8HKQLHxvKTYFezas2MTh1VFsLz0CjWwUxkNXzduN4deM/d2AnTiIu?=
 =?us-ascii?Q?kq3lNc099+Wnmgo75HnBa1c9qCaAsoMwwjveFUmaspHyJbGPyNvVaexFE9Rg?=
 =?us-ascii?Q?AgdXgMLWx3aAiMUOxAdfS2cDt1R99AKOZGm0ChSKWAkAnea6HPuRLkScYmvl?=
 =?us-ascii?Q?JrlIksGzcgWJcO6hB6Gy48hRVxn2tiPmiyuwtWPQ630n+TYmIAwuzL1rlSua?=
 =?us-ascii?Q?0T11SeqWaHdTftOZxJHNKz8toxPZzMTsfM2NQO33OZzYfFu8jXB4Ognd5joI?=
 =?us-ascii?Q?VtVCj1kVunz0lmRKPFN5Q21OYpyiV1WoaPF9nW8au3Zy3rjDcfzm7zi15qAd?=
 =?us-ascii?Q?RtGJj3oJqYn8o3YfgI1wPRgkdqpRNQFJQLgOl+C+F/TqFzsV7ewi91EKSFkB?=
 =?us-ascii?Q?jlpdB1W5HFB7SIn4E6nGOX2iFgwTZhorR4egIQ87GidJXmX6Ct6NgFXGhIsB?=
 =?us-ascii?Q?o59PZRBhlsZbyGx6dRBb9bmLZxigwuE5j4/IQIiwd3nfBw7MBRlHAA3DiRmp?=
 =?us-ascii?Q?jk9ifJ2gbr5ov+wZfFLs1VtkvQezJ5hazmkvkavjNyKlpoc60vnd7zXsHlny?=
 =?us-ascii?Q?1s4IIIviFKfqAp1v3wThrWvB8eyfh5FrbXazCx6sV8P+yVNX7/evWOiXX7n2?=
 =?us-ascii?Q?XMySAsHW+Z0n/yzFlpk8mY/r/VLc60m/wLZJKzQU3NRJNcK1RG+o7A07z+Vt?=
 =?us-ascii?Q?Uwu3iPvFjsEpti5FiYxFpy6AquBl9I2GfdZUMaZQzWho709j7mdlsFeIIKkQ?=
 =?us-ascii?Q?b/Ho2yzmtNCGtB2+lfWGlFRy+EqDN0h0iRxYJ5wTS98KIsIGyo4tJtvsHsSD?=
 =?us-ascii?Q?d2RkLrpIQM5sJ6J1ff1LmkOxAbCIMQ6wX9Z8TygIIGbqT/YpJY5gfrtEH7bI?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 295fb997-8e67-4a36-6e4f-08dba42764df
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 22:22:11.0445 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HLXpp8afsjYEBPfuhQNz7d3rsg6oxWq7UqQ444VyUXEwfPPBpU7sgF2DKaTCgkniaa/nn3Ec/GvXRsMAbKx1V2KzOFrhJEiIXE+cRRHHg6Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7548
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add missing CCS documentation.
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
Cc: intel-gfx@lists.freedesktop.org,
 Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 05:39:01PM -0400, Rodrigo Vivi wrote:
> Let's introduce the basic documentation about CCS.
> While doing that, also removed the legacy execution flag name. That flag
> simply doesn't exist for CCS and it is not needed on current context
> submission. Those flag names are only needed on legacy context,
> while on new ones we only need to pass the engine ID.
> 
> It is worth mention that this documentation should probably live with
> the engine definitions rather than in the i915.rst file directly and
> that more updates are likely need in this section. But this should
> come later.

It may be better to just delete this completely and instead provide a
reference to the better engine documentation we already have in
include/uapi/drm/i915_drm.h?

> 
> Fixes: 944823c94639 ("drm/i915/xehp: Define compute class and engine")
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Sushma Venkatesh Reddy <sushma.venkatesh.reddy@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  Documentation/gpu/i915.rst | 24 +++++++++++-------------
>  1 file changed, 11 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/gpu/i915.rst b/Documentation/gpu/i915.rst
> index 60ea21734902..87bdcd616944 100644
> --- a/Documentation/gpu/i915.rst
> +++ b/Documentation/gpu/i915.rst
> @@ -267,19 +267,17 @@ i915 driver.
>  Intel GPU Basics
>  ----------------
>  
> -An Intel GPU has multiple engines. There are several engine types.
> -
> -- RCS engine is for rendering 3D and performing compute, this is named
> -  `I915_EXEC_RENDER` in user space.
> -- BCS is a blitting (copy) engine, this is named `I915_EXEC_BLT` in user
> -  space.
> -- VCS is a video encode and decode engine, this is named `I915_EXEC_BSD`
> -  in user space
> -- VECS is video enhancement engine, this is named `I915_EXEC_VEBOX` in user
> -  space.
> -- The enumeration `I915_EXEC_DEFAULT` does not refer to specific engine;
> -  instead it is to be used by user space to specify a default rendering
> -  engine (for 3D) that may or may not be the same as RCS.
> +An Intel GPU has multiple engines. There are several engine types:
> +
> +- Render Command Streamer (RCS). An engine for rendering 3D and
> +  performing compute on platforms without CCS.

I don't think the "without CCS" here is accurate; even platforms with
CCS engines can still access the GPGPU pipeline via the RCS.

> +- Blitting Command Streamer (BCS). An engine for performing blitting and/or
> +  copying operations.
> +- Video Command Streamer. An engine used for video decoding. For historical
> +  reasons this engine was alsso called 'BCS'.

I don't think this is true?  As far as I recall, BCS has always referred
to the blitter/copy engines, not the VCS.


Matt

> +- Video Enhancement Command Streamer (VECS). The engine used only by media.
> +- Compute Command Streamer (CCS). An engine that has access to the media and
> +  GPGPU pipelines, but not the 3D pipeline.
>  
>  The Intel GPU family is a family of integrated GPU's using Unified
>  Memory Access. For having the GPU "do work", user space will feed the
> -- 
> 2.41.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
