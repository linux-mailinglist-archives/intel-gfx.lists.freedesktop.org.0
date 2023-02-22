Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3665A69FB84
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Feb 2023 19:54:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 168AF10E3BC;
	Wed, 22 Feb 2023 18:54:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA3B710E3BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Feb 2023 18:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677092039; x=1708628039;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9HgEVksr7/3aoBT8b1KDo1Yj/sLJkR3Awd6F0s5pbH0=;
 b=ioiW+rw9iNXNXj5MzpPbtPngjfrsbnwuvp3VUy8GgRCgAV3XbrEzMoOD
 aX3KNwPeOcX+yDk7e0dinWtfeRf6Evfu2RemuoRlKZDHRJ1aIAE5fm1nr
 UIk4BbaLxt3sB+bVTLFfQtIAZkc/qel9x+TbhZyVZ03prlUVrlRlkIe2c
 TDAomo9Dn8dmb3bZI421FoKh1xzBrxPVs8F8UpDEQeNBWU4mxdJuk1Au2
 moehtGPZppO28xzkQ3ilFkh792jBiwe+iXgsPToOe3p1BQoLrM0vfdn8g
 PSLFchuagT/IhESYCK1HqRAb0elHSy63ekHacnqfBUWF/+jTVIrIO8vrt w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="330741575"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="330741575"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 10:53:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="665449552"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="665449552"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga007.jf.intel.com with ESMTP; 22 Feb 2023 10:53:17 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 10:53:17 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 22 Feb 2023 10:53:17 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 22 Feb 2023 10:53:17 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 22 Feb 2023 10:53:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6EmU3VvGEv/zbIbnmvCo5rCy71uUxMohQMlvOyToEfwZS4ncVerzvsCz5TDX5yWDuFKcGfTrcVIdUHHfAZoI3xbxk7H/NW6ldkxV05dyjeQcHt/9fmaxRzkTO8sFhXSKqYNCM82PH2uSynnrDd5Ia4n7sogMXQmo3bfdIIPtr833pi7fsCFB9+09//ydmRisRkooDtYJywcvRETQi+pKFvabXpH38E8H+XwJVZrLhGXLkNVVzd+8L6BuZtFj8cD1U2HO5xFvrLhaB3niZij7kJ1npzIopA4RgnU13yKuMLP+C7vHEpn0XCnYquWM79H1JzwlroRWrIjLNPXt9eyiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MwdUyGt+9RbSSxZuZ0SOwmY39phSDtwVuZJa937WmGk=;
 b=GGx0zDTXwZieghUkJ0O6qcPGeFKeBX2qJ93y3aAGFktfOixyXb52TMO23xMJxTTA/uxvI3FFjip/g6OqlWv/bkz2+a53bETfiIffznWqQgX7+CfdW8IvI65pueN3GDUwgVgjDZuY3/Yc54k1duofzBdsRHFLNof/PIcuvLpUGkhJN48/c6a5YubLg0otOqyFWBHQdkFW0ZZBVmE1PbFbCbGvQ0tPo4ecRxV+o+Od65gZ8h/YdsoivT5HEoni0hlnwmU85HcLKRbJaFVeEHRZlAIklX76+TbKgXGNE7MCyha62rSl2W2+2R0Kp6e37WMKuiMyappGiEvOJOwl32mf1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SN7PR11MB6948.namprd11.prod.outlook.com (2603:10b6:806:2ab::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6111.19; Wed, 22 Feb
 2023 18:53:14 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%5]) with mapi id 15.20.6111.021; Wed, 22 Feb 2023
 18:53:13 +0000
Date: Wed, 22 Feb 2023 10:53:04 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <Y/ZkkBgCZbeyZWWb@mdroper-desk1.amr.corp.intel.com>
References: <20230222073507.788705-1-radhakrishna.sripada@intel.com>
 <20230222073507.788705-2-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230222073507.788705-2-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: CPYP284CA0058.BRAP284.PROD.OUTLOOK.COM
 (2603:10d6:103:80::9) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SN7PR11MB6948:EE_
X-MS-Office365-Filtering-Correlation-Id: fe75b9ef-e1c7-4d8c-9370-08db15060d0f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9bTiCZJT1sW6NUAflGzUdW2LSBvXsIJBV0t3AZW6st7I1M7iuqjz5NeVb90meKP7N6uyhiJOQPhIq9YBAkY8dsdkkF+4tmUhsltAUzuvNFiYCOyk7klh/iIBCOnQMDh5fuNlOQ/53Yfg1PxGW7O225gWp7t+h8J4Ds/9niv/OM34erjMu+tBpIckKfbvbAkom4c5n8B4vbO5QlyclXocq0V/heu8eaXzIlYjGKib4/bHb73Nnx866X/zHHzwiJHLUEvKkNIaJAY7uR24rvLE0CllUW14MIS8jUBSaFKPp3jEoQ6Sr5of6U9th/nRr94H6wZQinfLolbHuUTFuLlcFHO3xCWJTjTcbaGQOACRG+LAxislGFpPD8lZia72MKhr0ZKTHhwOtJAcDN7p4NdpbHZLp7p5sSdGTd9a1TD9mJFba2pOr58gYUR6h6kubyVHjolm2gpLMvnLxDfFEbknf2Nueh+ZttSa5PaXXMYX26THJ3j01rw+ZXhhR3WadUL1oMhgKYguFFJHP2nlfen9vVIq0nxBopRAIatQxbVkU/2YXODTHGAIsL9k8a7wE+42LBN3C81kvOWZGD7C4qgC1HshK1F5UzYmS4txePJtYw46u+q/Po3jhLKIC3tJ/NsQw1wOfpTItu+B6CFqxZcW+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(39860400002)(366004)(396003)(376002)(136003)(451199018)(8936002)(2906002)(316002)(6862004)(66476007)(41300700001)(5660300002)(66946007)(66556008)(8676002)(4326008)(83380400001)(6636002)(6506007)(26005)(6512007)(478600001)(6486002)(6666004)(186003)(86362001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yd2F/aeZuceygsUaaGoiq2y8knUXFtw78GrUh7pUxP176sKtT4WR1TVAEq6+?=
 =?us-ascii?Q?nVtk/n5mcNcYp+jLQ/1cmXctfSq0NX0rf9CV7KNDJRffcD4ar3Npgk6VDd49?=
 =?us-ascii?Q?MnCAIYkUqTWFdBcgMnQJE+F8oMbyHPmgViYSbfhEijFjAYnypLAJ+KX2KvwN?=
 =?us-ascii?Q?4CPPQwmq/S7KkwYExJh4XKMuf4qJFE/qzyh/5qklwvliUl1Swgq9cGv2MnKz?=
 =?us-ascii?Q?QqxzKEz0QvkRJ86K01gtnKWBVxM6KOiaJIx+lBFkXQbwlhrZSrDP7Zp0hpJl?=
 =?us-ascii?Q?O+zDKWt3gNurWIu7RJ/eCp47fudjL2NlAd4WGkuoMxzaVAx0mzEEQ6qmHgSo?=
 =?us-ascii?Q?fJ8hkH0qNHZHh7lMjeK+BK21bfXKSWBBGINJjg4hCnu58V6Ao2nnVJvCnx1l?=
 =?us-ascii?Q?g0L5OOHqEEZKUP12A3dTZrWUAC3WIGJJlGSBHxjV5Pg0Rje0P8lInbLDQbA+?=
 =?us-ascii?Q?J3jC+juFcJQE18hB+DOrWAm3Mej8z2aOc+U9/msL80ZgV7nmKAv2+UPlwLWg?=
 =?us-ascii?Q?9HDyBApNA/EGXQPt9MKYlN63pwawlYYA0Rf1PCceeN5edkA5YtmPq0nV1hLB?=
 =?us-ascii?Q?9iy/VZZx+y7b/PRaZIg+vfXoLzVDqR/rfh9EG7gEfJkKYaDFHMW6RifmwlDR?=
 =?us-ascii?Q?5IWcnPMPHIVCQRw7neB1aFkjcCjMgMZrtHk24PYcFqEAhqSI3KG2J0pA+NB+?=
 =?us-ascii?Q?FW5gKQyFhk3uWt5lJLB1hxAZAZwZA8xAa/11jw5zJw+rIpqRyKWmvllNLIBd?=
 =?us-ascii?Q?MDOk5pFRa1gZe5TFGLmwvKdGwEXpudYYsiF+PR14bi6yIGA3+zpKfmf+OVKb?=
 =?us-ascii?Q?nwYo2+XflG/h5tWGNc7vdJEKNQ1awvzehE+q8g6qnhmJDYKQp/+I+Yo9qOgP?=
 =?us-ascii?Q?OvD4vSOM1x170Iu3fygxjCn4o4cwLFPagphg3Gq9BNniYhmNHezO3JKOuH37?=
 =?us-ascii?Q?DthFnF5M22/eG8iiMto+JHtbgSzWakes4iGSIPbyXPN8se2ukLz6XtnrTXHy?=
 =?us-ascii?Q?kZGj45RUDcljf+0EJ5VQqASxBhMio47UENVTHko+Ja+T2qLJBlnTs+IBdVsz?=
 =?us-ascii?Q?mEWNGnhd3iuwMDdB3bBEWtltBZOsgtveCV8JJrlT0Paa7YAzNNq9xLs2Cf9P?=
 =?us-ascii?Q?W54ZqiIBKVBpQ2RqljjFP1H2xf+9ESywrHjSGQqCtKXAjSEKG9TCaeOscPbs?=
 =?us-ascii?Q?z26bhBSagXGnA9QfOU5OCXWrBpxYzhHJcOQjcOHk8fHJt+aGsusPmwkclLJ0?=
 =?us-ascii?Q?Oof4fUUG29Od0fwrqqPQDDFQ4rmeNIQtODlQu6gR556cQHBjDuZaLNXnpcHr?=
 =?us-ascii?Q?uTpzu/RBRUUwEoq6JymflgZRXokf2XqwbC4o+X44/xB9htufWSCBgzjc52jw?=
 =?us-ascii?Q?eac9GGuPCiW4U7bpd5YXjlqP1GLnLGWyHQGhGdu4OGS8EP5YdZbjWiVBAP6I?=
 =?us-ascii?Q?BSqmMIqBLBMTN32AmleeSmIlbKaNMhDXnzOwXeDq9eDhUMA49FCJ7pKIv1pD?=
 =?us-ascii?Q?FWJJbrAwUKCgIvJCxvTon2r2wyrbroTD68E7DyhzgTUxAD2Vb8AABpbMFDY5?=
 =?us-ascii?Q?An0/E8v7ORT/fZYgO57LjeUpKqL6v8fEdtX18S03MZ2KZvnxCpQTG1nbkavF?=
 =?us-ascii?Q?Ug=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fe75b9ef-e1c7-4d8c-9370-08db15060d0f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Feb 2023 18:53:13.7731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CEfOOXG8weMgn1N7X8Gv8MPylK4tUJsIkNK4FIOMF6rnoPEvZWX7jITi0TaKqYVCt+TOLQUAaeVq/nlNfYxz8hDM72idwlKncNKblUrqhWo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6948
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/9] drm/i915/mtl: Fix Wa_14015855405
 implementation
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 21, 2023 at 11:34:59PM -0800, Radhakrishna Sripada wrote:
> The commit 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> extended the workaround Wa_16015201720 to MTL. However the registers
> that the original WA implemented moved for MTL.
> 
> Implement the workaround with the correct register.

The title is still incorrect.  14015855405 is not a workaround lineage
number; you want Wa_16015201720 as you have in the commit message.

> 
> Fixes: 2357f2b271ad ("drm/i915/mtl: Initial display workarounds")
> Cc: Matt Atwood <matthew.s.atwood@intel.com>
> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 35 ++++++++++++++++++++----
>  drivers/gpu/drm/i915/i915_reg.h          | 10 +++++--
>  2 files changed, 37 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index f70ada2357dc..0e478ede66e0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -389,15 +389,12 @@ static void disable_all_event_handlers(struct drm_i915_private *i915)
>  	}
>  }
>  
> -static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +static void adlp_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  {
>  	enum pipe pipe;
>  
> -	if (DISPLAY_VER(i915) < 13)
> -		return;
> -
>  	/*
> -	 * Wa_16015201720:adl-p,dg2, mtl
> +	 * Wa_16015201720:adl-p,dg2
>  	 * The WA requires clock gating to be disabled all the time
>  	 * for pipe A and B.
>  	 * For pipe C and D clock gating needs to be disabled only
> @@ -413,6 +410,34 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  				     PIPEDMC_GATING_DIS, 0);
>  }
>  
> +static void mtl_pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +{
> +	/*
> +	 * Wa_14015855405

This number is incorrect as well.

> +	 * The WA requires clock gating to be disabled all the time
> +	 * for pipe A and B.
> +	 * For pipe C and D clock gating needs to be disabled only
> +	 * during initializing the firmware.
> +	 * TODO/FIXME: WA deviates wrt. enable/disable for Pipes C, D. Needs recheck.
> +	 * For now carry-forward the implementation for dg2.

Why are we deviating from the documented workaround?  As far as I can
see, there's nothing asking us to do this (on any platform).  And why
would we handle enable/disable in a different manner?  For that matter,
there's nothing specifically asking us to re-enable clock-gating during
suspend/unload either.  We should probably clarify the expectations with
the hardware people before landing this patch.


Matt

> +	 */
> +	if (enable)
> +		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0, 0,
> +			     MTL_PIPEDMC_GATING_DIS_A | MTL_PIPEDMC_GATING_DIS_B |
> +			     MTL_PIPEDMC_GATING_DIS_C | MTL_PIPEDMC_GATING_DIS_D);
> +	else
> +		intel_de_rmw(i915, GEN9_CLKGATE_DIS_0,
> +			     MTL_PIPEDMC_GATING_DIS_C | MTL_PIPEDMC_GATING_DIS_D, 0);
> +}
> +
> +static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
> +{
> +	if (DISPLAY_VER(i915) >= 14)
> +		return mtl_pipedmc_clock_gating_wa(i915, enable);
> +	else if (DISPLAY_VER(i915) == 13)
> +		return adlp_pipedmc_clock_gating_wa(i915, enable);
> +}
> +
>  void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
>  {
>  	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c1efa655fb68..7c9ac5b43831 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1794,9 +1794,13 @@
>   * GEN9 clock gating regs
>   */
>  #define GEN9_CLKGATE_DIS_0		_MMIO(0x46530)
> -#define   DARBF_GATING_DIS		(1 << 27)
> -#define   PWM2_GATING_DIS		(1 << 14)
> -#define   PWM1_GATING_DIS		(1 << 13)
> +#define   DARBF_GATING_DIS		REG_BIT(27)
> +#define   MTL_PIPEDMC_GATING_DIS_A	REG_BIT(15)
> +#define   MTL_PIPEDMC_GATING_DIS_B	REG_BIT(14)
> +#define   PWM2_GATING_DIS		REG_BIT(14)
> +#define   MTL_PIPEDMC_GATING_DIS_C	REG_BIT(13)
> +#define   PWM1_GATING_DIS		REG_BIT(13)
> +#define   MTL_PIPEDMC_GATING_DIS_D	REG_BIT(12)
>  
>  #define GEN9_CLKGATE_DIS_3		_MMIO(0x46538)
>  #define   TGL_VRH_GATING_DIS		REG_BIT(31)
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
