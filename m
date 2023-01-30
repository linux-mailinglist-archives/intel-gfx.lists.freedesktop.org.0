Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0C8681773
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 18:19:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F5210E090;
	Mon, 30 Jan 2023 17:19:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5ADA10E090
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 17:19:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675099195; x=1706635195;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=PdXMyKaCtfE5tWF8WYYCyJzvEqipaDAvr42OrNfPfm4=;
 b=MB1ig6Hqf59aKhI2YvkJzS1IAZufXyVPuStBwTUiziEf4H+CMZzak3l6
 w2+TFGg38WTP2uxegDre/f6gkne92oQrdc95t/v9enpIAam4k8hdtToj5
 iXgOl7XgUJRe0VBJXbhL6hNdJWn+GDz8GoMdZlXMSLf++MH6ZobvScGVu
 VwhhxLSak+7hHK4PtmyUJ2B4wl8cXcI1k4ocWxPAiidsL9ATC/KLUEN4W
 MiW1o4qs79aHb0m47sW58rdnBj0k6IgN+OzgLTZN6ayTwBDgTsuptlQ/P
 jt3QmocK9smpy2HN8WEoXnhDUfWyhO8XTDdil4hjIOAlnnapfS+EsgwPc A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="311240759"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="311240759"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 09:19:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="664179765"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="664179765"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga002.jf.intel.com with ESMTP; 30 Jan 2023 09:19:55 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:19:54 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 09:19:54 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 09:19:54 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NbLFdW3rmuxFq/ayuPeK7boJJ++kMeEZya7U9c4JF1MTx66jk+M017ZY6xzdU62EK3wrufd03OTqKFFGhlf6ppgeDQKl22qJ7RjMMaHDgIqe+APWnXNeqOJfeFe52sqSAuqIdxqf9QcHe4W7AhwwTaB8A4l6witIFLjEDJEq9XLeIjE4dznpJnxxgBOxicxdw1/xBH+yQhW8pYrzgTO1m0YXXAOZAvqLbr2xGphOaAKjl59vv/NbJq0GiEtzufyG3FASUx49UDz7NOB95f7q34UexkwiI+x3wqiVCzLrxnQTOGvmpnrsSGTR35pp3Ht6MyPaCnAPaxpnfBTXkuT+Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MAin10X9gfqiGellmDSza/tzk7ZjkkbODAVofbPuyx8=;
 b=lj/7qHjY5xRzCV3ZuivOq7VlnYTFFQk7oNZbXhxj7AnTA5wKtONyPRliN7uc6/AuIJhCdBNXaAfsB9ROW2zDEfD4pmaoTzRV2ctoC6MZz6YJmk7w8M3tqcdAQYilp7RFs6eMc9FpBWUdUZ81Wch+g3d1d0aLo1Ej0r4a7wiVkSDWW1dKL8o9dpW6lPX2F9r901/2U5+fKyD/EKPzYiVZzOn2vf1tJpGXFa9qHVlUYSQUpMxWw03ZbuO/vo3YNegbNRV2lctESXptX7l4yHucJzNx1qoBQCVHUtxRF0mw5i/fGU+f7FW+xNZb1OFRp/5STSYpDRYg0UGHyx1cRfqpWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH0PR11MB7587.namprd11.prod.outlook.com (2603:10b6:510:26d::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 17:19:52 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 17:19:52 +0000
Date: Mon, 30 Jan 2023 12:19:48 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Y9f8NHy26q1Ga7SO@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-3-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230127224313.4042331-3-matthew.d.roper@intel.com>
X-ClientProxiedBy: BYAPR05CA0037.namprd05.prod.outlook.com
 (2603:10b6:a03:74::14) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH0PR11MB7587:EE_
X-MS-Office365-Filtering-Correlation-Id: 7180bc7c-6663-41ed-23e7-08db02e632a8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PoriyzuPI57BN/Un0HPXmr/nTSG5ETVku3iKiPg2vs0q4uN6H9d9UNDNymnyL9mDv6lmWvdRzjTP4rB6KqaIdW5RneRORsLhsLv1+DeK65r6Pha5SvsOQBud1ynuCv71kRhax8VGvoZKpkq1IZeHXZETkZ222F+btI4/WGHXixYnf3Pfy5WCKg7PJJs3SpYgbHWmfhfjNByDHe7/WasX49Qc3QQbrhgfydnupc7eO1Fwz5kNsuoe5ZpCmhSW+P5JSs9hfeETLzjFIeme1Bt7DCqBRp0BdfdNltpX4/EgWr84rLnrqlP7DZrQeXg+rQFwPP6N0jkWcikRb8/zQ0hdYWlvPPR77ld7i0tcH8Vmihv3xpU8luulEQvwn1rqfU5E2oxUcsE6PGnmbyDkia+9MTDA4pI3GB2HSeiyrAo/IOhYUMBLSx3C1xDCgvOi+fjZyXluIFjdtWAq0GfCzBS/Ls5uLBQ0a0x+BINZLYCRmScgkSUz1z/lB8/627x9ihZlVbq0MkBuudIn9Q0y1YS0FXIT11u2TEmBu+lQxUqbnrHzvK2SapBLCcIOr8M7iwDIl0Gj7LcWWpjGwgXgWIDYOr0PvzHeTvX514ARciN84JlC37W8rHU8kDUrj1ZhgLUyt/xnwrgO6AiO3UhL35HFdA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(396003)(346002)(366004)(39860400002)(376002)(451199018)(5660300002)(8936002)(6862004)(41300700001)(44832011)(38100700002)(36756003)(82960400001)(86362001)(2906002)(37006003)(6636002)(4326008)(2616005)(478600001)(186003)(26005)(6486002)(6512007)(6506007)(316002)(8676002)(66476007)(66946007)(66556008)(83380400001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XRNC4b6eW/X78v0TYbjgdt5677Ess/UvL19nb9xhwqHvsQl5ZRQFYCsS/6nt?=
 =?us-ascii?Q?uMTbNRwTDhRIKQlW/AlftWoWTeKdJ0OOZ4TlGlpnNCbnV0En5dNBr12RbbZT?=
 =?us-ascii?Q?PWA0kVMTKzwAeFaly/goWFbq1XeD2gT80qQnnbXX1pZR2Ijte00Y9hQnnFBo?=
 =?us-ascii?Q?NBvHbbFZMA5cWBgHf5uSNEiW/oANKH1DtncmeQ+08t6FrQg9Q8Z1ZTN6hqcq?=
 =?us-ascii?Q?VVxtbfPzPXam5LQ3RYQr2/lR2a10LfPsT8ZnJNw6/8iqC5XF/w/P4gZ4+MV/?=
 =?us-ascii?Q?n6N57cYBxbQmjkzR7sqmhw+rGIhSvwmmkAIT4hIdsaJqruavqFL6UgQNV/uD?=
 =?us-ascii?Q?JtReAh5dOrzbjoBhG0HcgXxkHv6ZJt9K2ypNfR8S0Kpv6dUQ8c1TKMmwaXE9?=
 =?us-ascii?Q?uwO35Xi1lRz5NWBrUwTWTF9pW2qi/Tb2zgPZ2c/JN987gVFE79yGGvw5PUSD?=
 =?us-ascii?Q?X8WKMcosZbbCLVJNgY+NhzSVNmte9gpBjp7/zUFadrgM4qQJmUz3fw8WHLt5?=
 =?us-ascii?Q?yWmWXJo+EpyNb/J4PmLTiwdxhvo9+GdnRMNUY0/wrmZzH92gQ2aMV6JbuHjh?=
 =?us-ascii?Q?M0Bt7FUmluVQjlpZ/LH6pD1hZ05v6IWj7Z5e9Nb/Gno2A2XBH7745qnRZCLu?=
 =?us-ascii?Q?B0jBEQPbhagfuwqofMk5Vvowjj5kFp6ayHkKjTsHSfDL7SQTW8jbqQsYYpzS?=
 =?us-ascii?Q?7LfCaHgYZgrcl3ucNez3n764KaAab2LRhxj6HZDeTCAingH4aWtid11SGB1Q?=
 =?us-ascii?Q?GEONDleEvxkfYs9lZkbMPVDZEa0gsIxrqorkMNXQeD5jikVDm1jcH0ry6Ix0?=
 =?us-ascii?Q?Fwu4wGMu4lM4jcj0BqZMc2TFedf6zdLpeqKEaABcRZNEpXvKHzseM0B3iB/r?=
 =?us-ascii?Q?GZ6EhctvW7Tu5vyuiJaYqPdKppHZL+Az3lGkWTZ2nLaqTUXC7V8d8g0zqfDQ?=
 =?us-ascii?Q?nURd3+FdFgsqHG3MSG0aeguXYk8VSnriQl00pGttMoAv4+tf/hvKLIgK8Ji+?=
 =?us-ascii?Q?WFwvbYU7KfL6kdMrm5vlJaeF2tcBHj19pwSMpEXDSjKfyMYmdFwiXIHDNMZ8?=
 =?us-ascii?Q?oQI7Vm7TYDO0J6oggoOc8nObv8kBuLsXW3DUOg36nyGymHjth14umPK9pae1?=
 =?us-ascii?Q?WQ8ZbnKcVRjRID5yijNH8Cb/ZKYRSc+lr2uhWLDLtAgPr1yjJr+0jF31weAM?=
 =?us-ascii?Q?AHrySk8HuVEgG3HEn/24sCvXa75oDUTOmYSENcxeCbYGBaOBaE/OE18hwOeq?=
 =?us-ascii?Q?vvi6AbgTyYi7XoMBdhsc9Uhl+48Adds0YCWTPMXBcf0kGtsuo19GEFo5pCb2?=
 =?us-ascii?Q?J88HbguHuSLLPgkdZOOByTsCsvsUFYvMEa339OE9WEkmkh0BHGGuXpkEQVHe?=
 =?us-ascii?Q?gtl+H6KvndZ2hBP2UEu1pnRMGPj2QB5rXzzEpFe+26BYozYhMLB9vqqM9jkM?=
 =?us-ascii?Q?7FIcDq36Ao41trWFuFOD89mIuKgaWXQt35A6vvoIElDHJqnOenN6/ORGQmxr?=
 =?us-ascii?Q?SHJCW0alNym5w/4vJ+IFQmZvHE5dn20Z6EX0QU4Kma8oq42rkPLj2IEqvuhv?=
 =?us-ascii?Q?7uBjFNOJ8j3q8i5AYbL53WRNUhp/evkuvUIvGxg1ghke1gafgu9+4conFb5f?=
 =?us-ascii?Q?+w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7180bc7c-6663-41ed-23e7-08db02e632a8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:19:52.3370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: M00lXEgfa5xwYLCr+wh6LXINkUdP45RB0mfvYIl6yaVvOcxrBjN6VEzntpOpwnUI20QfatAfbmkjeR1zPN6ZlA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7587
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/dg1: Drop support for
 pre-production steppings
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

On Fri, Jan 27, 2023 at 02:43:12PM -0800, Matt Roper wrote:
> Several post-DG1 platforms have been brought up now, so we're well past
> the point where we usually drop the workarounds that are only applicable
> to internal/pre-production hardware.
> 
> Production DG1 hardware always has a B0 stepping for both display and
> GT.
> 
> Bspec: 44463
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    |  1 -
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 48 ++-----------------
>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>  drivers/gpu/drm/i915/i915_drv.h               |  2 -
>  drivers/gpu/drm/i915/intel_pm.c               | 12 -----
>  5 files changed, 5 insertions(+), 59 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 1dc31f0f5e0a..7222502a760c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1580,7 +1580,6 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
>  		return;
>  
>  	if (IS_ALDERLAKE_S(dev_priv) ||
> -	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
>  	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
>  		/* Wa_1409767108 */
>  		table = wa_1409767108_buddy_page_masks;
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 82a8f372bde6..648fceba5bb6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1463,12 +1463,6 @@ dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  
>  	gen12_gt_workarounds_init(gt, wal);
>  
> -	/* Wa_1607087056:dg1 */
> -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> -		wa_write_or(wal,
> -			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
> -			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> -
>  	/* Wa_1409420604:dg1 */
>  	if (IS_DG1(i915))
>  		wa_mcr_write_or(wal,
> @@ -2103,20 +2097,6 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>  	}
>  }
>  
> -static void dg1_whitelist_build(struct intel_engine_cs *engine)
> -{
> -	struct i915_wa_list *w = &engine->whitelist;
> -
> -	tgl_whitelist_build(engine);
> -
> -	/* GEN:BUG:1409280441:dg1 */
> -	if (IS_DG1_GRAPHICS_STEP(engine->i915, STEP_A0, STEP_B0) &&
> -	    (engine->class == RENDER_CLASS ||
> -	     engine->class == COPY_ENGINE_CLASS))
> -		whitelist_reg_ext(w, RING_ID(engine->mmio_base),
> -				  RING_FORCE_TO_NONPRIV_ACCESS_RD);
> -}
> -
>  static void xehpsdv_whitelist_build(struct intel_engine_cs *engine)
>  {
>  	allow_read_ctx_timestamp(engine);
> @@ -2196,8 +2176,6 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>  		dg2_whitelist_build(engine);
>  	else if (IS_XEHPSDV(i915))
>  		xehpsdv_whitelist_build(engine);
> -	else if (IS_DG1(i915))
> -		dg1_whitelist_build(engine);
>  	else if (GRAPHICS_VER(i915) == 12)
>  		tgl_whitelist_build(engine);
>  	else if (GRAPHICS_VER(i915) == 11)
> @@ -2410,16 +2388,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			   true);
>  	}
>  
> -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> -		/*
> -		 * Wa_1607138336
> -		 * Wa_1607063988
> -		 */
> -		wa_write_or(wal,
> -			    GEN9_CTX_PREEMPT_REG,
> -			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> -	}
> -
>  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> @@ -2449,30 +2417,22 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  	}
>  
>  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) ||
> -	    IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> -		/* Wa_1409804808:tgl,rkl,dg1[a0],adl-s,adl-p */
> +		/* Wa_1409804808 */
>  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
>  				 GEN12_PUSH_CONST_DEREF_HOLD_DIS);
>  
> -		/*
> -		 * Wa_1409085225:tgl
> -		 * Wa_14010229206:tgl,rkl,dg1[a0],adl-s,adl-p
> -		 */
> +		/* Wa_14010229206 */
>  		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN4, GEN12_DISABLE_TDL_PUSH);
>  	}
>  
> -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> -	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
> +	if (IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915) || IS_ALDERLAKE_P(i915)) {
>  		/*
> -		 * Wa_1607030317:tgl
> -		 * Wa_1607186500:tgl
> -		 * Wa_1607297627:tgl,rkl,dg1[a0],adlp
> +		 * Wa_1607297627
>  		 *
>  		 * On TGL and RKL there are multiple entries for this WA in the
>  		 * BSpec; some indicate this is an A0-only WA, others indicate
>  		 * it applies to all steppings so we trust the "all steppings."
> -		 * For DG1 this only applies to A0.
>  		 */
>  		wa_masked_en(wal,
>  			     RING_PSMI_CTL(RENDER_RING_BASE),
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 879ab4ed42af..397a2159fe12 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -168,6 +168,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
>  	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
>  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
>  	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> +	pre |= IS_DG1(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
>  
>  	if (pre) {
>  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 62cc0f76c583..57b84dbca084 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -658,8 +658,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  
>  #define IS_DG1_GRAPHICS_STEP(p, since, until) \
>  	(IS_DG1(p) && IS_GRAPHICS_STEP(p, since, until))
> -#define IS_DG1_DISPLAY_STEP(p, since, until) \
> -	(IS_DG1(p) && IS_DISPLAY_STEP(p, since, until))
>  
>  #define IS_ADLS_DISPLAY_STEP(__i915, since, until) \
>  	(IS_ALDERLAKE_S(__i915) && \
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index c6676f1a9c6f..e0364c4141b8 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4353,15 +4353,6 @@ static void adlp_init_clock_gating(struct drm_i915_private *dev_priv)
>  	intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, DDI_CLOCK_REG_ACCESS, 0);
>  }
>  
> -static void dg1_init_clock_gating(struct drm_i915_private *dev_priv)
> -{
> -	gen12lp_init_clock_gating(dev_priv);
> -
> -	/* Wa_1409836686:dg1[a0] */
> -	if (IS_DG1_GRAPHICS_STEP(dev_priv, STEP_A0, STEP_B0))
> -		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, DPT_GATING_DIS);
> -}
> -
>  static void xehpsdv_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
>  	/* Wa_22010146351:xehpsdv */
> @@ -4781,7 +4772,6 @@ CG_FUNCS(pvc);
>  CG_FUNCS(dg2);
>  CG_FUNCS(xehpsdv);
>  CG_FUNCS(adlp);
> -CG_FUNCS(dg1);
>  CG_FUNCS(gen12lp);
>  CG_FUNCS(icl);
>  CG_FUNCS(cfl);
> @@ -4824,8 +4814,6 @@ void intel_init_clock_gating_hooks(struct drm_i915_private *dev_priv)
>  		dev_priv->clock_gating_funcs = &xehpsdv_clock_gating_funcs;
>  	else if (IS_ALDERLAKE_P(dev_priv))
>  		dev_priv->clock_gating_funcs = &adlp_clock_gating_funcs;
> -	else if (IS_DG1(dev_priv))
> -		dev_priv->clock_gating_funcs = &dg1_clock_gating_funcs;

This will create warnings:

MISSING_CASE down below...

>  	else if (GRAPHICS_VER(dev_priv) == 12)
>  		dev_priv->clock_gating_funcs = &gen12lp_clock_gating_funcs;
>  	else if (GRAPHICS_VER(dev_priv) == 11)
> -- 
> 2.39.1
> 
