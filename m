Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 24A397084AC
	for <lists+intel-gfx@lfdr.de>; Thu, 18 May 2023 17:09:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA9410E05B;
	Thu, 18 May 2023 15:09:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4CACE10E05B
 for <intel-gfx@lists.freedesktop.org>; Thu, 18 May 2023 15:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684422592; x=1715958592;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wiammunk9ROznVo/OQ81lKlibDh6bG5loPY9sNgFctY=;
 b=VjXufjTIBnl2rE5EneA7xqq/cwx4fz77DOmc5QTFpVoOEb+JqTkPwDT3
 2VzB80Zyh7P4bfGbS3bhMjP7Z3yYhBDrENRs+o7NmGnnNVrj0fDiQVLhK
 h585nAcFvFy8u62I37KxVJyF85DA0KzwHuzablfxJGdrPVhtOAi9O9+3+
 4fQiCyg4s5P40AqDMmz5fvGEuaDw766zl9dCgwrPS9D2yn5x8Lj/3ivnI
 jnTLeDrJVJ6ihG/1640v9pPUT2thsouSmVrjneRpDL0/JPyTKWaQr6eom
 KsqJOhrG/2mQZIzHgMtmoVMelHoeszIW7cBNS5IyUOsxB/mzRGuaPBF9x A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="352108572"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="352108572"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2023 08:09:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10714"; a="792004658"
X-IronPort-AV: E=Sophos;i="5.99,285,1677571200"; d="scan'208";a="792004658"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 18 May 2023 08:09:41 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 18 May 2023 08:09:40 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 18 May 2023 08:09:40 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 18 May 2023 08:09:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V5361ZsYQtcU3c+qBl73lpMPpasyKd6PWtD1r60gd9Z+v6sVrBAq40gbC/jbABovh9X5JccfuAZxhFezwvoRd08TtGYo+pv8w7tGl1rIm4ehUdBqD4Q9httH9yP1vfEWZShnWiGzMmjbfXuJav16UR2VhbCOfZ4E/zH3EoJE0EofAKYWK4dWjema7XHHeng4n1ttHs/JmA1ySYogw9qLUmwW6Pjg7etKxB1UUNeqrdX23FyuLc45gsTafJx39lKn/Y+idUyq740IMlmRoPUt+oTsKqCYrxXmaeHtNc7UAl0ApSRQx0ndrzNVcLk09kIlsXgeZuFz4Ua/Arow6zB34g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T9+tunu3wOEnGsm3HdrPRMxIRPU7Oo0KmPojSN2B2MY=;
 b=CjO6RiyMl8RJoGR0NNdA79QOP97LYbiAsmlveQI3gGvtydsaeu+KNps2SqkNez9HtpXTLMQYYFi/Rq+w4dFLTa6xVPkn0CJKDdLc8FnSRxRsiaCR2E9eEU5Q2WX26K29VXcoEaU7jAd1wy8I2t8mtj5Qx8DKJvYpeVuvH8aNBo5NVa/ZZY8U14OIxXh12dyPvsu60WwmMQ6vu+HXHDdRiQ84TfCYzzGxgTTx1PKKMtNKK2B2Zdgs6mddAzc4ndy3TkLKWxIX+d+L0XLEa1Xb8w8fxvotHvzmFqWOf6gaQp0/VXAVIE3Dm4+c0IZj1Nw/hujB1gqO/t62Y6lsFxRL2g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7989.namprd11.prod.outlook.com (2603:10b6:510:258::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6411.19; Thu, 18 May
 2023 15:09:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::f7ec:aae9:1e7b:e004%6]) with mapi id 15.20.6411.017; Thu, 18 May 2023
 15:09:38 +0000
Date: Thu, 18 May 2023 11:09:33 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZGY/reT72DmOPog0@intel.com>
References: <ZGYwebI0Ji6dgkRD@ashyti-mobl2.lan>
 <20230517-mtl_disable_render_pg-v2-1-0b51180a43f0@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230517-mtl_disable_render_pg-v2-1-0b51180a43f0@intel.com>
X-ClientProxiedBy: SJ0PR05CA0141.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7989:EE_
X-MS-Office365-Filtering-Correlation-Id: 2b783988-5ed1-419c-5a20-08db57b1e5c8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8bK+VVfQYrnwsbvC9dp0F07sJGJbesW/CB6bEr986c+eEdYx8oNIzdEc2D+5PLZ1MSFqNIo/byuzC3+N6+jiRZayIX0puyri/qhIRUZnCluJJDLHvTYhCbD83V/UaDtTebQHCptPwL31RAteZ2JbCg4OQJpR/xVLDtqeMhfZOxYB9dFKqjF3o98gftrsl7Zv4kTS5I7rW9lvVWaSBLjIGiYfT8w9kY4OuRXp027YwMAnhFd0VI6PyWhhfoSZPZfhFYAsCbStQhZa4VC5nC/tHZ9UMJ3HIvaBUiDcqUD3qf0mGMU1Auta9GHrckF4uRqCYw2t8avJC8ZUuEd1PYyL6bu0c0u9xgLkYiftIksuKFBmbeJmbQR+/t/sUvVFKxDdq48bOSACJNCMTX6dNPnARAbXs09u9WYc+64AFV7vRc6k/4eF6Tz2aWHeO53iFCovxlB4nzc1Cb8H5tQmhxHZTkVfUHe6LFk6f+naCUx3kIU2UkiMx0D4I8PyeR4PoAqQz7aNqQcaZazr3GOk/LWKU/iYjsgvdX7dB2BQOzjnZGw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(39860400002)(346002)(366004)(396003)(136003)(376002)(451199021)(6506007)(26005)(44832011)(6512007)(186003)(966005)(2616005)(66476007)(83380400001)(66556008)(6636002)(5660300002)(316002)(66946007)(41300700001)(4326008)(8936002)(8676002)(6862004)(6666004)(54906003)(6486002)(37006003)(2906002)(86362001)(36756003)(478600001)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PBraxEicqh5UQ+fhEIXJ8ePcvEmQsAaL16PLLJoTWwsDJdi98SD6mRVNMEW8?=
 =?us-ascii?Q?MnDg+shcntGnebGKWdDDMs38UUNpa4uZZhbLYFcuWQQh96YTOGRtaBW1aEbt?=
 =?us-ascii?Q?us3Nu8ZWlOJND2IkbBUFON5ifLdIXAsS7NyyBJhn6P21Z4BhtJ8f28OIaG/x?=
 =?us-ascii?Q?q2rZW113gt+/wpkD0fzuKMs7cWKhtukW+Na5IS1LI2tOvQbsYhPIlfZTSHuL?=
 =?us-ascii?Q?ORy7kYgAfGnMS+yw8hHBDX64oNzUMx+AmkZbD0jSn0gQw2NG4BbnWC/jxxYi?=
 =?us-ascii?Q?SD7h0FMZU8up8qBbvlJuxuZ5qKDkwIi/LCI1N1n9xSCOEVrvYs0n/6ngoqFh?=
 =?us-ascii?Q?g8Vzz0UwOqdghCm419nlxRUOViWAJyeDoY2uQqiMRh8nQinLcrz9dHUw+jGu?=
 =?us-ascii?Q?GvkV9FNrnd9lcrjz2elvEluCxdtgE4J2M6NmSfkMVPaDN1cYvOc8faREeJQG?=
 =?us-ascii?Q?SgYQziFnhBefhwMbEH7XEXM3d6mk3lXTzLbD/8f3p2YKGfblsGWmmlTFkOgM?=
 =?us-ascii?Q?HyZBnJ7rY72ptlktN8LWCWuWv13uCBFr8lnSnomSjTP3O6vsQaQpbII2JjOX?=
 =?us-ascii?Q?b19pBPPUPMDVQvde+Ovt9KhhubPN1qSbk27qnroxo2GyD6S/RLjVCnSYi7OO?=
 =?us-ascii?Q?DWawBvSY5FclZaYP4NsrKcTPLo6ukrHvLRecL6bb3HNwC+0EZCnNB0kWqyK4?=
 =?us-ascii?Q?JrCgLp0kbcF84HBSGcQF1I8VZ57gaaH6IL9JvMt8hrWB8Q43Q/viKOtO8oGM?=
 =?us-ascii?Q?f40zEXRYIIgi8rxgVAVZHjLm3hpzEcDWK6rYxngwd8FwIO7ksX6way/liiS/?=
 =?us-ascii?Q?goAw6p+EsbUl7vJr2KVLjV1NCT4JOEVIWeVu+l+QhifXxKkuAgkA4rgIozEo?=
 =?us-ascii?Q?QlFh8IAMR9aBWftIOF9D5Zs1w3AdEyJH8ZvaxNpPI/O0PKc2zEt8UPk7MqBY?=
 =?us-ascii?Q?jPLIWvXAa2Iv3l7nk31atD7OVe8Q5bOlXnWXzm8Hyde83it3VK4cNnOVGcs+?=
 =?us-ascii?Q?ho+aFdTNjXZbRFG3dkX8xBidbgrA/cujFHjKItOAYQ/CLQbMUIOCI3uGg7g4?=
 =?us-ascii?Q?cMj2peRfsX1D6ZSxIY2XY9ZtC80ymF2Yq1IwVXUHgfeUgXHjMvWIPGP718nD?=
 =?us-ascii?Q?VRDKVfi1SeKUXwFmJlaekGAPsx7CCSz2SoecSVsjfYCgv5Dwx0BQCl3loxzk?=
 =?us-ascii?Q?fVf2nCewYeE5f4/kf40iLFV0MmP7InS/Ko/hHEDmvcZcDJ73ixqrKEvpAveQ?=
 =?us-ascii?Q?kZMvWcQT4rs9XvrCzolmkTV4ulIVjphuELACI3cbd0a8UMIbS+r8JkQkiA+0?=
 =?us-ascii?Q?yV823FzyWaK9XE60Om5IgywikO36oudPddZWL+luZxfDci+B4hXbFH9qQYlp?=
 =?us-ascii?Q?h/I6W0yQsztfaOvMLiXs+WaZm8UDxBi767ciC7bOcrvw0ZUrb6XhybB7eunX?=
 =?us-ascii?Q?b7q0FVbLQYOzaEQ0ehgL85HbcrlAVC04LDYC9NPi7JAHCT21UuxTw3ajTGzG?=
 =?us-ascii?Q?Ox6CRcSKV94Y4uI7i+gSbUv+TNM2C0bJCCwn7StC2gA3JRJ5ptmIHf+nhzGr?=
 =?us-ascii?Q?c5JVPjlg481UFpQHvB6/DR6xtGhrmkA7p/l7UzHj?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2b783988-5ed1-419c-5a20-08db57b1e5c8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2023 15:09:38.2275 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nfroSjELVgYN/eQrgAa8hf7lXCUsWbvFbBhzbxDWT3fxNOiYS/ohfdIfduarn0ez0BmRBUTZctHkoy6xXkMzYQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7989
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: do not enable render
 power-gating on MTL
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
Cc: intel-gfx@lists.freedesktop.org, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, May 18, 2023 at 04:50:52PM +0200, Andrzej Hajda wrote:
> Multiple CI tests fails with forcewake ack timeouts if render
> power gating is enabled.
> BSpec 52698 states it should be 0 for MTL, but apparently
> this info is outdated. Anyway since the patch makes MTL pass basic
> tests added FIXME tag informing this is temporary workaround.
> 
> v2: added FIXME tag
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/4983

No change in the patch is needed, but do we have another
(can be internal) ticket with the work to get this properly
fix without wasting power?

> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
> Changes in v2:
> - added FIXME tag
> - Link to v1: https://lore.kernel.org/r/20230517-mtl_disable_render_pg-v1-1-6495eebbfb24@intel.com
> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 908a3d0f2343f4..58bb1c55294c93 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -117,8 +117,14 @@ static void gen11_rc6_enable(struct intel_rc6 *rc6)
>  			GEN6_RC_CTL_RC6_ENABLE |
>  			GEN6_RC_CTL_EI_MODE(1);
>  
> -	/* Wa_16011777198 - Render powergating must remain disabled */
> -	if (IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
> +	/*
> +	 * Wa_16011777198 and BSpec 52698 - Render powergating must be off.
> +	 * FIXME BSpec is outdated, disabling powergating for MTL is just
> +	 * temporary wa and should be removed after fixing real cause
> +	 * of forcewake timeouts.
> +	 */
> +	if (IS_METEORLAKE(gt->i915) ||
> +	    IS_DG2_GRAPHICS_STEP(gt->i915, G10, STEP_A0, STEP_C0) ||
>  	    IS_DG2_GRAPHICS_STEP(gt->i915, G11, STEP_A0, STEP_B0))
>  		pg_enable =
>  			GEN9_MEDIA_PG_ENABLE |
> 
> ---
> base-commit: 641646b29337c97681e0edb67ad2e08aef3fb850
> change-id: 20230517-mtl_disable_render_pg-b9f9f1567f9e
> 
> Best regards,
> -- 
> Andrzej Hajda <andrzej.hajda@intel.com>
> 
