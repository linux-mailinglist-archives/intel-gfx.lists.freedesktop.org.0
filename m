Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2710720AF0
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 23:23:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC20510E0F0;
	Fri,  2 Jun 2023 21:23:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 567AC10E0F0
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 21:23:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685740991; x=1717276991;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZMhl8EXoiev/A0DhfHLvVZUB1ZQoCxFhYOj5pOTaiFI=;
 b=muKOuUUPPVrXmDh6TVsXvrID3LR32MmO3u/SzaZYGMpqdI7Lfk+7uGH7
 mGv4EXz5uHK5Q8ll/4aXOvizsiukZHRKGW3Q9cHrpE8sYGNoIuVBj3AK9
 DfF1h3UN5VSoGG//2tqPK784JiVu+ZHFO3LrGXL4HSEJaBFlbRWaq3OdN
 rEr5Vxk4i5Sy05kWHotgoX0K1/tN9EC+O66FqSmkmmK932YfGMYa+G+AJ
 x5gf2kHvDeMQBVuqkpR0Un4rV9S8JyGP7V+Ti9mQ0ayO1lgKkobCoQPxm
 NTmP7Z6TC3xah3e514izz2MBOiZJviRBC3I2VXGnPMCRrxC9Gs76aLaEV A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="335589741"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="335589741"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 14:23:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10729"; a="882205658"
X-IronPort-AV: E=Sophos;i="6.00,214,1681196400"; d="scan'208";a="882205658"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP; 02 Jun 2023 14:23:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 14:23:06 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 2 Jun 2023 14:23:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 2 Jun 2023 14:23:06 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 2 Jun 2023 14:23:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XL5uhCEZY5auU8pA25dzWFSJm9k7OK7Oi4GcmoJ9tGuHu6dPkePXwkm/evcXY7XHya0igVibz2j/2Jt1JeNCCqHZziewUpF0rmw/GqAdEmEPAu5VBcCmLT1LKa36MmyOqvYFlY6n5bf5+kY9iELQ/i03WwrG02TbdRjPYfo968I5H0A5uAuYBv4cgE9GA9hF+gDWBdmLbKuLAhXqBuf4yzSCJs7eNCIbLcCogcJ/7bU/YMbeJZD7MPK2vcAqr1LMyRhYwrVXh34sX0xhdaR9y+4t45bPaomloH/e1cjlwCk2wW+1VfSGeURF4+rWhvXzmbRIaN38KWU0aOzjWX0FqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZYudiTrm/FLQ2K848FakdAqwH6ImsbpkbEO8ri7v294=;
 b=PTrVHaMtzOVNEd82m/GazlwS53B8yjA0Gu0ZtLX9raP7ZCE6egduCc0C/bJDCN0wxCnbAMWJY2g3qw6zbzPf0/RVxHM+Sl4mDCNgRoChWsb8LFO+dFhN0k4skwybNjDj4OLL2mS4q34Uqz5bwEA52eXJ/RDjp2TJLWG4oOVp2j599CR2Mt2um6DmNKb+a5hYiFNuPBgRTXuduG3YlS3Pn4Lknium8VPudYnRKDbq9buPd23xsrW0+3zrpLjtkvC0kgL70fzIhSqxxlZuC05KIr8yu9kDchYY5Zc9frjQoHBEP9EcTfxj9r9Qfd1KGwkATcB0SnLPwYjF5j/EdsL5UQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MN0PR11MB6033.namprd11.prod.outlook.com (2603:10b6:208:374::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.26; Fri, 2 Jun
 2023 21:23:04 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::9f98:8f3c:a608:8396%3]) with mapi id 15.20.6455.027; Fri, 2 Jun 2023
 21:23:04 +0000
Date: Fri, 2 Jun 2023 14:22:59 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tejas Upadhyay <tejas.upadhyay@intel.com>
Message-ID: <20230602212259.GP6953@mdroper-desk1.amr.corp.intel.com>
References: <20230601091518.1698066-1-tejas.upadhyay@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230601091518.1698066-1-tejas.upadhyay@intel.com>
X-ClientProxiedBy: BYAPR06CA0021.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MN0PR11MB6033:EE_
X-MS-Office365-Filtering-Correlation-Id: 9a6cf4cf-fad4-47a1-6c59-08db63af8c66
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VItIE7JSFGffRWfq7/AEFTfPxvdRB9rJxIhngPFv3aYAUNDvXBZpPl++xEhfvMDaWshB6+iQNOYobwhulV+lNnBvh2c4P2wmkki+Zz9sj3GCXrxdXwkYRYd5g9G+fPGykO7vLk7ZocgcWmz+TPy/dpRxR29JA6tRW9OQFoyPNUnEEgqjyFUIM0SJQb9yR9eCrsiNbdjMxO3x1xmJ3X+OUA7GMS09IvRV6OsUlaREMKf1nOEZbfKM8RgIP52jD8S93ygmj4YmnEZHqbG8Bzd5sevZSsF9o/xsFo7Z04QG7tcvEdQ+TRE2YbHJhHSbrtV0MMzH2Wtcw/GgUxkB9HW3treh64V1hoCMoIYoPaa0b1VY98is+GbhXm+cnj6KJ18URSel1b22JOIIlYxILThMxJJXWvBGW4Gl/XAN9yBWi9AfXOXgyXEY1XZvwzWteYzu3aVWLrfU1bQgKUsELhP9SxTQQCwPEU13jOWlAOjlx+kigkw/O0mPYbhyfyThQeCYZcyIVaXOrSUxjO0NyLry2a7hmG2xtZKu8nj43po9vYA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(376002)(366004)(136003)(39860400002)(451199021)(83380400001)(2906002)(33656002)(86362001)(38100700002)(82960400001)(966005)(6486002)(41300700001)(316002)(6666004)(5660300002)(8676002)(8936002)(6862004)(478600001)(66476007)(6636002)(66556008)(4326008)(66946007)(6506007)(6512007)(1076003)(26005)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ERnOp2yXI8ftXKNJH0TTSvY0U2P8vmFHFoaAiu1/az5n9zBKdB3COFOoe3el?=
 =?us-ascii?Q?jYG3YyQt4Fkro+WTQSptGDyaT6OTBa7ovIZtt0nLJYAVdKzYznNFHMZM1Yq0?=
 =?us-ascii?Q?ImtIYMuk7tLEvW7/Z5IqYMLivZRW5gJsf59WeQl6ZYCoi8yNkV58jo3aLiew?=
 =?us-ascii?Q?DaVLyFu+0vcnilq30YkZMZU9UaaEysZ816TsP3hQLT3xMAuY87gGwKMgNXzC?=
 =?us-ascii?Q?3vUhjHFynOwpdy0IQ+I1nCba8teYaOIQlDLb/bvqCUP97L+ctVV39jDNecWz?=
 =?us-ascii?Q?Yy5NWXlKU/D2hB9ZU63fLLGojoVIJXtH63AATMp7WWl5AkZmK8HoIPJukOVa?=
 =?us-ascii?Q?23cvD5qWHUS51P223/2RKbCYznqxKDJETRY5VJeSrVV9x0lJhc7BnyxnRdEZ?=
 =?us-ascii?Q?Xk89iDn/Xkw8JI1B5ohvFxKrOggpUe2B8zoVZjy7+Y0luILRQVKKRfVk2kbX?=
 =?us-ascii?Q?e4K1QF+AA3srd3Y8XFaGXLk85JhDvZ/85FndO7tLE1xoby3b56jP7zMmMaon?=
 =?us-ascii?Q?aPrdtiKNSIewmXrdjal4PzSln1Y5/QewuJ+0mwbvcS8+Z+dVDLfnRkTU86wf?=
 =?us-ascii?Q?ovmoP5e1HBa1aw+lYbEyelhC5pw2/2Vw9i0OcoBpHIm0TrXljY+hn+hPx+Mz?=
 =?us-ascii?Q?MVrRvQm2LSHoWY/sqsXakROsSeLtIXJgvgATXEO3YyUcsplGZT08fvreru8N?=
 =?us-ascii?Q?v4/Tzhe03VfHRGY3hOCcQo2IV7yQWbqEnfELEnsLVOfzEGzMjUdJXOQmZoPE?=
 =?us-ascii?Q?cHlxKWyQ4D6u0QYXR47Um4BY4/L+cW930AXb9YAsqNp0KqgS7q5yrzB5llcN?=
 =?us-ascii?Q?oHHASZItHCNw2pJdtyA4Fhcy9Zrj7en1r+Sos/Xmho1Y7iXBlvc0UJEBxomf?=
 =?us-ascii?Q?RKrLr0qoAvDZ6crVjL9lVg3rKydiLClAK+ae10ozKuLwdI1q4JNbU/OvShfx?=
 =?us-ascii?Q?sjiZSXnCKz7XVQaQGIc93222frvZQEPd6M2ZjdDRhUXMSkD4xQvwbFrjgiGc?=
 =?us-ascii?Q?MqJ1kUpfjs+q8L70NjSOZ26jVX0wN0ut6ZWqZbRU9LQjx1Wq52e2aZXCdoC1?=
 =?us-ascii?Q?eBK9b15PvVPuPqj113YrEUaef7YVzLX1/VTEcvFz7oZkost2A2nybkcMFZ+K?=
 =?us-ascii?Q?AuX2enCSTzKrcc3Cc9qkfMsUZ98TtK72QNVg0E4vb3PXGTUmpyXTWPOd6Jr4?=
 =?us-ascii?Q?bHrtsV+9aWdq7SItgwAhn3Fy7PN4UKoKZXfAotyT3nYI2eAgxYs6WT+xS+cc?=
 =?us-ascii?Q?Tz3MoR+TBXn1UAqao8FUaIvf0CD4Srroj2NIKTmtowvzTCUwajfIQ8+hG7MY?=
 =?us-ascii?Q?mGXVeqfvsOpy1bYuk/336lER1/yFlOvghhydMWMrmFvnFB6c2SC5+ksBIEUT?=
 =?us-ascii?Q?Tlv8Ex+Qegsh18Wmt7LrSHU1gfTcMHWKvVMFuvGvI2tAuYcjpBF5a5El7gl/?=
 =?us-ascii?Q?82lD9Ly6MCXa7zLES8kwM5hxtTpBR31M27CHCgIGKfiONw/AHfavOeibXPXR?=
 =?us-ascii?Q?jvpRkpxA2ALJBiCAJU7Hk4YshH603CmzGLqXohpKZgYMmOS9g7ENKaIfpjeA?=
 =?us-ascii?Q?zbrwT7FLpNyuSlIipobNdN9Krw6AGrJMn9cZxH2IGYjOLL6BO1IqXXG/0rnh?=
 =?us-ascii?Q?fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9a6cf4cf-fad4-47a1-6c59-08db63af8c66
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jun 2023 21:23:03.4868 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v5eHoAMISpgK6Ff9+c6yP02im+rqyOK/ZywHjjqgnh0WsqR+A7A3D/sBd3sgMXRseQ56ViR2LKj5vuoleB9oUg87BHv8u63b2bTa+WzAkGk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6033
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V4] drm/i915/gt: Add workaround 14016712196
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

On Thu, Jun 01, 2023 at 02:45:18PM +0530, Tejas Upadhyay wrote:
> For mtl, workaround suggests that, SW insert a
> dummy PIPE_CONTROL prior to PIPE_CONTROL which
> contains a post sync: Timestamp or Write Immediate.
> 
> Bspec: 72197
> 
> V4:
>   - Update commit message, avoid returing cs - Andi/Matt
> V3:
>   - Wrap dummy pipe control stuff in API - Andi
> V2:
>   - Fix  kernel test robot warnings
> 
> Closes: https://lore.kernel.org/oe-kbuild-all/202305121525.3EWdGoBY-lkp@intel.com/

This looks like an LKP report against a previous version of this patch,
not a pre-existing issue that's being fixed by this patch.  So I don't
think this 'Closes:' line is appropriate.  If you'd already landed the
previous version of the patch and then needed to come back and write a
follow-up patch specifically focused on fixing those issues, then this
would have been more appropriate.


Matt

> Signed-off-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 40 ++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index e1c76e5bfa82..9e3d4323f36f 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -177,14 +177,42 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
>  	return cs;
>  }
>  
> +static int mtl_dummy_pipe_control(struct i915_request *rq)
> +{
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> +		int ret = 0;
> +		u32 *cs;
> +
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = intel_ring_begin(rq, 6);
> +		ret = IS_ERR(cs);
> +		if (ret)
> +			return PTR_ERR(cs);
> +		cs = gen12_emit_pipe_control(cs,
> +					     0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH,
> +					     LRC_PPHWSP_SCRATCH_ADDR);
> +		intel_ring_advance(rq, cs);
> +	}
> +
> +	return 0;
> +}
> +
>  int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  {
>  	struct intel_engine_cs *engine = rq->engine;
>  
>  	if (mode & EMIT_FLUSH) {
>  		u32 flags = 0;
> +		int err;
>  		u32 *cs;
>  
> +		err = mtl_dummy_pipe_control(rq);
> +		if (err)
> +			return err;
> +
>  		flags |= PIPE_CONTROL_TILE_CACHE_FLUSH;
>  		flags |= PIPE_CONTROL_FLUSH_L3;
>  		flags |= PIPE_CONTROL_RENDER_TARGET_CACHE_FLUSH;
> @@ -217,6 +245,11 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>  	if (mode & EMIT_INVALIDATE) {
>  		u32 flags = 0;
>  		u32 *cs, count;
> +		int err;
> +
> +		err = mtl_dummy_pipe_control(rq);
> +		if (err)
> +			return err;
>  
>  		flags |= PIPE_CONTROL_COMMAND_CACHE_INVALIDATE;
>  		flags |= PIPE_CONTROL_TLB_INVALIDATE;
> @@ -733,6 +766,13 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
>  		     PIPE_CONTROL_DC_FLUSH_ENABLE |
>  		     PIPE_CONTROL_FLUSH_ENABLE);
>  
> +	/* Wa_14016712196 */
> +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> +		/* dummy PIPE_CONTROL + depth flush */
> +		cs = gen12_emit_pipe_control(cs, 0,
> +					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> +
>  	if (GRAPHICS_VER(i915) == 12 && GRAPHICS_VER_FULL(i915) < IP_VER(12, 50))
>  		/* Wa_1409600907 */
>  		flags |= PIPE_CONTROL_DEPTH_STALL;
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
