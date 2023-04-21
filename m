Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 193086EA05F
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 02:00:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8EEA810ED60;
	Fri, 21 Apr 2023 00:00:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5940310ED60
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 00:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682035219; x=1713571219;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Z2kwognHqN0m/KOuxNLxwAVOoO69iQINMgKoNjpne1E=;
 b=Vwvzm9ZAbkVEFavJxElpYV5tOEhrcXJV1AZN31jp5mFc7sGmdPJ0RjOz
 t9/vXOfWpG1FG9lTt+AD+ipu+QkNPJVk9xYfMOco6An0jKHoSrqCkwS9W
 rdSTR44ETWw76itrsE/EfvXHOf287CCkQfoA/E4KbiJhgOwC+2NrrEauZ
 MU9XOliDKkGu7Dp0hoTswBtp8YNuEWuKD9F2Puq6HKVxpwuDqEwBV4+Pu
 UbUzvDjJ0spTIrx3fu5bCiMMnbepU9k1vl4GpVaDZS/Q/FF/0+ywpfCGi
 RQovXwQuXHTl42oAUX7RHm+epaRrcxc49zd/UJ+nINOjInOvKI+iXg29X Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="373799460"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="373799460"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2023 17:00:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="866521501"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="866521501"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 20 Apr 2023 17:00:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 20 Apr 2023 17:00:17 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 20 Apr 2023 17:00:17 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 20 Apr 2023 17:00:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dKYw6c2oab5sR3/SgG6KuQtC0qfmSJaFjA2JU2gWynDpHUV8UZhepufJwJQ7m+v19GcjgcsehE5Ar7aaENP9u+fbqo8hcOyuBUBLJXquHY3zwyCavKVHH6hbXkSaq2QkHwh2DUW8smEFIz8BzKaUIT8Ac0zriAZylmPnRFbUcdTzAH+2hk4p1j781F210jpUutvdXnwRONGKvvVEhsUFPax52PCmOvX8J8XYfC13wyrIuoht02poy66G9xe6IeSwLQknZzzZkI4wn4xroptp9rPtWEUB4ncJc08r37bqH9JCMIn7Ie7AXrWteuw9hd5Sm/4DNIJ76YfhzWIO8wDJIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaeDcfTyr/zu/PRNZq1fVPFxQN//7NZfdA4mvvPEXlc=;
 b=dESfc7bsHUTUsOM6oqU2ddek/Ct6R/zXf4LUVeqJ4uSrHfOCf9SCGK9Wl6xMoNIXEp//9lJ1uCA+N2CaOlrVhXTKP6PQa56oL8lQUyYKc4aUEcV5Hlqn3W5nm0BgLKnGI/S2Ao6yb5e3TNF+LkIQz0jvJdpSp6ErVbu7J6gWy6KhqnxdCCHznq7D/6VLSGLmLTrEa/YF6WIbZxUXmZFNGx2OWlgEm2MotEMek+m7bEERIgqWdWn3gP7+ojNj2DsDtVoavediEgphRm8QSfFopj60L5a48ehSmhCpOkvCiPmGFasDwx4cjhdMWXmaoK9A79iOe8BJ7QaVG/+pxo1vNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 BN9PR11MB5483.namprd11.prod.outlook.com (2603:10b6:408:104::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.22; Fri, 21 Apr
 2023 00:00:15 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::1c61:b69d:4ca:10d0%8]) with mapi id 15.20.6298.030; Fri, 21 Apr 2023
 00:00:15 +0000
Date: Thu, 20 Apr 2023 17:00:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <20230421000012.GI4085390@mdroper-desk1.amr.corp.intel.com>
References: <20230420112123.3486469-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230420112123.3486469-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: BYAPR11CA0083.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::24) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|BN9PR11MB5483:EE_
X-MS-Office365-Filtering-Correlation-Id: 2cfc32aa-2f42-4cf7-fa40-08db41fb6268
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Oh6a2ptsB3l7Yx/zILGAEHyI2jUyVHOD/FOx3zQmQeKo5Cm6wICFCt3R9k39zY+2OomqKuOj33/qsFglTGhWte0L4hDsufdR4ZVD9tE3DLKfj1Hh4dzTB397FpwjDeD7tKlCx7puz3JqGI5HU9oSHgJm+P7r7Jr+lIfgKDutxRT7d3DEFWI1/5aM2Z9E0O3iKWiFZVoZWVlkno2XkkP14yD64mr/3g6r9VLYBSTLLHLsl8rGPLqsFW1vlbJrvC92MYCuRNNkD08tCAlufQrzz/4D42LNY7acUCkWnbNbPQAtFVuSEgECg5mVTNEpp6vnyQJlLO+SCs+bD3lzeXiavfY0D5Tf0+nZIxja5p+sMS2W88KgwMfJdOtozGCE4q5ZgaVCzwtUwMkttQf4hcHwdoKL6pO5nPNog0q0+tmqw2llih7L5wa8++Rg9G0Oxys6kog9Ht7WrLyhz8oB20SGFNaANu6h//fNG8GiBWWuZUyZ0t+Ena+V4ydDaPTj2Bha4P5g8QtbAg0O0gMwRhqgBMdHkUDpHszXZLF2naMNlIHj82LsUidzTUd7aCxEpNGw
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(376002)(396003)(39860400002)(366004)(451199021)(4326008)(316002)(66946007)(66476007)(66556008)(478600001)(6636002)(8676002)(8936002)(5660300002)(6862004)(38100700002)(41300700001)(82960400001)(186003)(83380400001)(6486002)(6666004)(6512007)(1076003)(6506007)(26005)(33656002)(86362001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CoD76fzEFcgg+A8poDLWVAvd4P1Zd8mBZHsNZsfbR3j6BbCVzpXAbe2E78+O?=
 =?us-ascii?Q?RvI5Qjf04/mQiCovDXFY06IF4TW+jqZ+HhInYKbFr1X0asKjCbCjXXrbmACH?=
 =?us-ascii?Q?2VBFA5vVb01WCEb7wNFd4aG2yNg1aONTtPQWh5Y30RUO9sWFNSqI5xkTtWGO?=
 =?us-ascii?Q?dLiqAV+Z/3qp9A9A103g62JAskcbEdDebL3qqLwuFV0K1jbStVpGQjiE/ISj?=
 =?us-ascii?Q?yXDNzUDHhwLWhvcCB/h5LxZh2CL/jeGtwojpuo2awUuu7bRMxWalhDkYSYOq?=
 =?us-ascii?Q?nbD3dRaFI9LcGMLseG4yreivMVg26IPV7tZ18iJdPwgr1NKlzmR1Sl2uKIv0?=
 =?us-ascii?Q?B0tnlO0s0EMS16Sd5UqH7QclBxqZKSbLIGO1fvX71ywmFo+zS4Rre1nq1pNK?=
 =?us-ascii?Q?7MVeol5gqa8MmSWGFBs2GTti3wcP/iStH/na4xzRk88hh4Cc19rGhzmku/sH?=
 =?us-ascii?Q?66COy5bxWULJRlzCKweBKUq7Lsk7Qfs01kgQCFatKamU2e63rm1eZ8237NEw?=
 =?us-ascii?Q?NBuVOartmsnlcBjfhImInS+tZhzmGOybmsv2PrRhyZQCPidjij5xclF7ZskT?=
 =?us-ascii?Q?jlntOrPhWJYFFToyCbEuILAOV0vARGYftZ786kXyPlhJirccg/aGiZYM+21i?=
 =?us-ascii?Q?AwwtmfhXp77N45DFcM80DkbFQqK/dlAmgC9vLM6zNPsj/DzaDU1UvAEc+QLt?=
 =?us-ascii?Q?/Fz+QzmQuqcsG8e5HEi6+4AFQwQzZt5ldgws1UrDYb0/vNAkzvUnRwObtw4V?=
 =?us-ascii?Q?HCP7T8uRxxBcCeHk37+Voz1lIYEbmpwyARrZwI2TjBOZyGmKCUp4RWD0HcXB?=
 =?us-ascii?Q?enfw+u0Sqb4atUi7UlQcxhdWPk0XOOSKz2NAEC3OrrZywEj7Ksm7d/WXn9n/?=
 =?us-ascii?Q?iCplE8Yj9TkikfJUOepLsWw08oWvcunCBobntUCyxbwat4jhxtJSIaEJhrmH?=
 =?us-ascii?Q?QBwviOX6hS8YGAWyDUhME7pTYEmvfNDgEHPzyCk+E+DlJDMcCzI0kmbG1Bt0?=
 =?us-ascii?Q?J8/Hks3uzpBbOKC44T60IjTAqc/gitj4RWZiTpWiYQ1Y4JY0wWxQrQU9grMz?=
 =?us-ascii?Q?hbR+yparYCNwXEFZAKCCQOxpsoX+2+LkuUaP05JL4tZ8Pfm0h7vgPIjPKqez?=
 =?us-ascii?Q?C9D4Cq3AQ4ourwoXmpJvNo3AmyFkjLRhISXLBcRrLbrQClQmJIb2Kpi1efrf?=
 =?us-ascii?Q?i3YyAth3kcx6roB+Qd66J1m15mzpPrLeC27p0bkX72qCUn5gcCIsuoJRA6CL?=
 =?us-ascii?Q?KKbfc+89wA0zNDKg1oubwi06LsJaeEmWt2uXyZp9suhQGFmknrHWPGoTUTxu?=
 =?us-ascii?Q?VzZQ9FoIoQlx+qsRqKxhQQqbSZfPG/wWLI7Vhknp1pn/VtNx1WQ8F8dg+sJM?=
 =?us-ascii?Q?NyI4aWqPSTurLv6Aec+ln78Di2DN3i4V1SXn2ARi58VqnmBCoh1UI4zgIo1h?=
 =?us-ascii?Q?MAwqnhQjKCNBkiCRj3FxkP+Zugjbqb6cYtd4YEAyD/wf0XN8Rq0pcgOgjhau?=
 =?us-ascii?Q?z0kET+DDnQtiJx3lFs0qfQxDB1nJ2s4kPhSx4qS57tEIU4r4uMSA6QqoAVX7?=
 =?us-ascii?Q?9eWaoo/ESTTDZgMcuVa2QRn5g430cwPvZLoBk0zSHiu4wtZNDiD3lDJfqFKk?=
 =?us-ascii?Q?8g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2cfc32aa-2f42-4cf7-fa40-08db41fb6268
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 00:00:15.0217 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: V3mn+JtV+2mLtOmtroRgm1KSDCXxvztHJuqEP4T57sNTwd+4yQsRCFMczKYOFRZjD7MqO+gTBilFvgtLExmgeQfjegx5QgvvBT2uSs+Zqbw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5483
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/mtl: Add workaround 14018778641
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

On Thu, Apr 20, 2023 at 04:51:23PM +0530, Tejas Upadhyay wrote:
> WA 18018781329 is applicable now across all MTL
> steppings.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 20 +++++++++++++-------
>  1 file changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 312eb8b5f949..c73d2b5410d8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1695,17 +1695,22 @@ pvc_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> -		/* Wa_14014830051 */
> -		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> +	/* Wa_14018778641: MTL */
> +	if (IS_METEORLAKE(gt->i915)) {

It's already MTL if we're inside this function.  No need for the
condition.  Same for the one in xelpmp_gt_workarounds_init farther down.

In the future it's possible that other platforms could re-use the Xe_LPG
and/or Xe_LPM+ chips in a different platform.  If that happens, we'd
also want these workarounds to apply on those other non-MTL platforms as
well since the workaround is tied to the IP rather than the platform.


Matt

>  
>  		/* Wa_18018781329 */
>  		wa_mcr_write_or(wal, RENDER_MOD_CTRL, FORCE_MISS_FTLB);
>  		wa_mcr_write_or(wal, COMP_MOD_CTRL, FORCE_MISS_FTLB);
>  
> -		/* Wa_14015795083 */
> -		wa_write_clr(wal, GEN7_MISCCPCTL, GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> +		if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> +		    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> +			/* Wa_14014830051 */
> +			wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> +
> +			/* Wa_14015795083 */
> +			wa_write_clr(wal, GEN7_MISCCPCTL,
> +				     GEN12_DOP_CLOCK_GATE_RENDER_ENABLE);
> +		}
>  	}
>  
>  	/*
> @@ -1718,7 +1723,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  static void
>  xelpmp_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> -	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0)) {
> +	/* Wa_14018778641: MTL */
> +	if (IS_METEORLAKE(gt->i915)) {
>  		/*
>  		 * Wa_18018781329
>  		 *
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
