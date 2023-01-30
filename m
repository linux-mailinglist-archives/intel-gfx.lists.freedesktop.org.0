Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2FF868157A
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 16:47:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E40E810E0F8;
	Mon, 30 Jan 2023 15:47:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4727310E033
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 15:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675093643; x=1706629643;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=8RiIpFyWXpWt8s/jZF7q0x1MYscAsAUNQM1CU6FAUyw=;
 b=dZN2AN1w6ZYqY2Gt1NsYPOn4b6EiE9o2tqiDLZmbalFyEOzVTEmIrX/S
 T99EXI4pij9YwhKWcVOciLwjE1+Ir8aKexLNpr+CNZEbG+2vKVjmTLF7p
 SIfszEXKSHUBP/fASi8KoSatN4HFnXc+cTN5CMQ6odoZUsWR7sQcl6vd+
 wcsPgDn2zQ7aezUpFEtwnken+w7bRmPx9d2ycdrV0nDON/VBTxHDvC9ma
 Zb+fWiHwQpB83b2vOCrAuBeawWcXZvEbX8wmyJyMjkF6DecMjGbP8NN42
 PsSFH7+sI+HFutq/ANughzeJSj0pkDk88ZL9evDWzTo2gbOzXP+3VaPnM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="326254110"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="326254110"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 07:46:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="641589148"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="641589148"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP; 30 Jan 2023 07:46:39 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 07:46:38 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 07:46:38 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 07:46:38 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 07:46:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WjEdS+mR8B2Ts6P2qwC92owYFgYbqVrZecnIZVjKIoPbRUVaari3PXDPmhMijSEo8kJi6A4YUQHU4PBjXfHZUUufNg8sdIuXa7Xe9IF6kuBWjPdaStDRvWXtrPZjU397hdVVvWYCwL+8CrTeFHroD0CK1wBxBN1zs4zfzxpBsZUifryVnFmPKFJ5wLPy+wPAOb8wfPSd7L92CGVwZ641TE9Z/lPCnK7lvGxJbivPkegU0R14JPztUfmtd7h+5anuXAZ5HC4ozffVeXWix5Hrb1zZKnate1Kdf84csfgQ3E3e66sGSbKAM8TfSP9ZriVwnNU2/Q+fuI06/+GqUr+T6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EfOxrvOTpgs+O5pz4jGFzmhvUzu7ORBd5byccbNGzbM=;
 b=FznGZDz8NhQ5clvv+L9/1U+TaPcvBfXqb9gjPDPWfIoPg0cci7AC+n4N4yH6podAbkjKJU8NF+ozbXeeiY6XYPQh7clcCmUZ7PLN7Mm9eU/9Zm4cFXgVeZimUpbzGlMr6XG+WiJWPZjz+aSaCUohfkhSIpf7FDhUhukpBO50sHqr06p5BDF/hR5yCoV3DrojCBdVrVVpRmdnvML/TS3TlyeBYrz4u8DYiTTL530SjpWO7y0qTuxBOiOARWDO7zp6urr4IAYeASvc3M0lqS6jVQ6wW/iCG4yLYOnNbuL8bisb4nhCTe2VfUDbI7iwt4ahxPyBo9elU/SDB3ijbP5Tlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA1PR11MB6709.namprd11.prod.outlook.com (2603:10b6:806:259::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.28; Mon, 30 Jan
 2023 15:46:20 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 15:46:20 +0000
Date: Mon, 30 Jan 2023 10:46:16 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Y9fmSL8b4+fzRGiJ@intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-2-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230127224313.4042331-2-matthew.d.roper@intel.com>
X-ClientProxiedBy: BY3PR05CA0002.namprd05.prod.outlook.com
 (2603:10b6:a03:254::7) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA1PR11MB6709:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bb09df2-bdb7-4fc9-b811-08db02d921e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: u8yKJfdpDwPFXS0F+/u4lIyc8kJU1QGs6Ij107xJLxK2i4CE2nJtOe80/mdu33vf4uge2TJxwqRnvT/cGYjM5c3yKW2/nuGLrXASlsKbXJyzxOZSQmUfrCNfEkmSLmXM9+wyGXSk7rZK2lTEDweJjviVEFTrMq1ckZY1s/XMoW2Fvn2SYdvhm1y1VVZ6XPCdHsAlmyIO2iychavGyTYkYpH+WHcus60ki/iq0lVWu/CZ5+PaM7jFpRRNcmOFx6WTC6iGoVrmCOsakXU8kqtBpWJVKaiEimeEi4yVVDeOclgcdmPL+LtPLwkVBtOzVxuVp620z+Lr6BhpAfOeOulQzidp6qIA/t+TRnzkHzxEElOJQWVVTee1P0W/oLJzBDM9BpcClMm7KCLO9KWK9xa7tLd9BdX99UDUtZIKeR+fpU3xd03IXqAlwfWn3bJCV4XXzgs0VD9gzwtykOaFKnJzHdMU7eKNzRODt7qrWijs41MSkvLeqLNHcH9/qFSPLMXTS3Z/H43onQ2Sg2yIQW3/oD0SzFxKNdntNZKXiKnPkcQlziXeMt2ABDcR9RDkJTYTuIE4THOkkIRPw5fkW3CKMKzix8FQO8pV7tEd9cw7wTWzgIm5c/8fMK27ZQUdYH7j1vDZUSt+V+I6APCgVrNN3ige3j5thfcUCu0/cJQDR/z1Dc51poBLNJpI7rGrATdz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(396003)(366004)(136003)(39860400002)(376002)(451199018)(37006003)(316002)(6862004)(6506007)(478600001)(86362001)(6666004)(8936002)(38100700002)(2616005)(82960400001)(26005)(6486002)(186003)(6512007)(36756003)(44832011)(5660300002)(2906002)(6636002)(83380400001)(66946007)(66556008)(8676002)(41300700001)(66476007)(4326008)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WNOHdDN8FPs4mJIXlBiOwJHUNO1/aGttAi18cCRJgoJWvWIZcWHC/mbBVhjg?=
 =?us-ascii?Q?FV5kzl+5UQK1j23VyPazLsQqhez/cnsCwfgvHOJFYsl2T5tCxyYTcjGJgAnm?=
 =?us-ascii?Q?Vw7fMVloct0ed+66Q0jx/Y3QNGcEllg7cq3xB8hxMH1WOL4T9vO6o34qtARF?=
 =?us-ascii?Q?Ocm5qcwCO438ceDoIJfW2+3Xgux96IKJfNonxfFcP+KhkQ5hzotl7sz8kIkE?=
 =?us-ascii?Q?yG4UbGtk4lT2BlgHAfc3m/nP8y6INiu0hguQoeowr9eyQqkj5IBekH5JXkbc?=
 =?us-ascii?Q?K3xji3PXLALh3ZnzR3+c432T3PQnqE8MS5bSG7mAvXtlXDKvonwAD9+wH97l?=
 =?us-ascii?Q?BDw3uazWVz51FAaWtNagwUefrrsgoh6rL0Id9VAt2Pv0A8fPiMoJjBQDQgnT?=
 =?us-ascii?Q?dRxNI/F2qg5sfRGwTTr0VVWUU30CHR2lG4PY9PS10jb1uGJ3HXbp0mMpWRxN?=
 =?us-ascii?Q?pU5d7PhU06QX08R5A/9jjO9c/Js1px1QEy1H56jkCNlaTKz5xeliG2+av+Xi?=
 =?us-ascii?Q?v8PjbFXtuQ0S7WIA6iuS6YAIZ1qRVTavK4x7XUvzLUUnas1soJahxbXzRxGP?=
 =?us-ascii?Q?HgYYjqm2ghwEOoirqvn5QJaAAj1GWkHiynOSxZP7xYnxwK+LYnyXZZbrELJk?=
 =?us-ascii?Q?ET/uyqbc2bvBcsEYv8q0ZWL71iAWSdpZhm0rX+DtXkYdoRWM4b9gx5F0ifW1?=
 =?us-ascii?Q?MYmYKReJMoEkqnMgzqcPVMX31US1I72ESa3oX015LMECKnpLLwUWv2TC47Rz?=
 =?us-ascii?Q?yL5FM/8+/CQCPAxN1KcGE2QAXNPBojxB3cjeGKgCeWPurfxZcS72PqOvsnJi?=
 =?us-ascii?Q?BWKmkrhmcr4jmuJNEHPJRTjgw+J+65DFNZmX5ImRsVGSnDasX60ZUuzaL3Xb?=
 =?us-ascii?Q?AYyxSK1rUEqCZR21DvncCO9pQJEnfVxGxuobZ1lYtpJMSkFgfKMNrD72XaQs?=
 =?us-ascii?Q?OOaxKZir1eI4KNyMKHhFX/RVtGOe/YcexDgkSEz42Ct02vusYFWkCkm7rNcW?=
 =?us-ascii?Q?MqJaVcu4w662MxAa/t8aHwDa1gG9fU1Z9/BeqUjS1pOGOf+zvdhlvRSLcUKJ?=
 =?us-ascii?Q?rJAEdEa0D7RKvGGi2RaUurwV58f4sNP1QxKpO9ZdgMxj1dscvmBgNLMgWv4I?=
 =?us-ascii?Q?Jwn3yNM+LgzXBfqap0d/K5HTDM7aGPpWluFe9mXVLnHagUMXGXwDgiqzgW2C?=
 =?us-ascii?Q?yaI33uDfirXfuan9WRn5O6/6QNaTzjOc74Wo/51mIZnmdvkcJfropllii5hd?=
 =?us-ascii?Q?fpLew4qeQHkd9JJP46eiagXTS/vUlf2KZ+Jod0P2BrjX3rB9GF970M9I9Nnz?=
 =?us-ascii?Q?cjjBxWIgJJMZLqPMemh9qZC0BeII6KrTlQo4uRx7m6zwkMPw1RVfgBrTL8kw?=
 =?us-ascii?Q?90Tz0xiQpnDMnDud4p0Sg1VIFgapwwHErxzdozgMVxPht5K1yObTffIGtpum?=
 =?us-ascii?Q?YroERR6Su/ncD3XidBb9cJMObEUPKOxnGpe3cvauB1etWVRPcTL80DeEZdCE?=
 =?us-ascii?Q?3Iuo5FRp+htYZxlOqGKHKSAkI6BiE4zPqd31zOUocWpBjXv/JKHWA3Z7guwf?=
 =?us-ascii?Q?e+p1rG5MbGiDG243DeZTrpge624hSaHM/kkEWFDOh/ta42071pGPi+rjTiHv?=
 =?us-ascii?Q?FQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bb09df2-bdb7-4fc9-b811-08db02d921e0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 15:46:20.5715 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ap2H+BmABFF/zARMW7R7g+KgYIYXxQP6ty7+tJGaxSujU7omYKSMzvnXj4KYBUcCwNXk15d8RvDLUMvfbljPUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6709
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/3] drm/i915/tgl: Drop support for
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

On Fri, Jan 27, 2023 at 02:43:11PM -0800, Matt Roper wrote:
> Several post-TGL platforms have been brought up now, so we're well past
> the point where we usually drop the workarounds that are only applicable
> to internal/pre-production hardware.
> 
> Production TGL hardware always has display stepping C0 or later and GT
> stepping B0 or later (this is true for both the original TGL and the U/Y
> subplatform).
> 
> Bspec 44455
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  .../drm/i915/display/intel_display_power.c    |  5 +--
>  drivers/gpu/drm/i915/display/intel_psr.c      | 26 -----------
>  .../drm/i915/display/skl_universal_plane.c    |  2 +-
>  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 ++-----------------
>  drivers/gpu/drm/i915/i915_driver.c            |  1 +
>  drivers/gpu/drm/i915/i915_drv.h               |  8 ----
>  drivers/gpu/drm/i915/intel_pm.c               |  4 --
>  7 files changed, 7 insertions(+), 83 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 1a23ecd4623a..1dc31f0f5e0a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1581,9 +1581,8 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
>  
>  	if (IS_ALDERLAKE_S(dev_priv) ||
>  	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> -	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> -		/* Wa_1409767108:tgl,dg1,adl-s */
> +	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))

I believe we should go ahead and also remove the RKL ones like this.
After all we have ADL and MTL and none needed this for instance.

> +		/* Wa_1409767108 */
>  		table = wa_1409767108_buddy_page_masks;
>  	else
>  		table = tgl_buddy_page_masks;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 7d4a15a283a0..5dca58dd97a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -591,12 +591,6 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
>  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
>  		u32 tmp;
>  
> -		/* Wa_1408330847 */
> -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> -			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
> -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
> -
>  		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
>  		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
>  	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> @@ -765,13 +759,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
>  		return false;
>  	}
>  
> -	/* Wa_14010254185 Wa_14010103792 */
> -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> -		drm_dbg_kms(&dev_priv->drm,
> -			    "PSR2 sel fetch not enabled, missing the implementation of WAs\n");
> -		return false;
> -	}
> -
>  	return crtc_state->enable_psr2_sel_fetch = true;
>  }
>  
> @@ -945,13 +932,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
>  		}
>  	}
>  
> -	/* Wa_2209313811 */
> -	if (!crtc_state->enable_psr2_sel_fetch &&
> -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> -		drm_dbg_kms(&dev_priv->drm, "PSR2 HW tracking is not supported this Display stepping\n");
> -		goto unsupported;
> -	}
> -
>  	if (!psr2_granularity_check(intel_dp, crtc_state)) {
>  		drm_dbg_kms(&dev_priv->drm, "PSR2 not enabled, SU granularity not compatible\n");
>  		goto unsupported;
> @@ -1360,12 +1340,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  	intel_psr_exit(intel_dp);
>  	intel_psr_wait_exit_locked(intel_dp);
>  
> -	/* Wa_1408330847 */
> -	if (intel_dp->psr.psr2_sel_fetch_enabled &&
> -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> -		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> -			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
> -
>  	/*
>  	 * Wa_16013835468
>  	 * Wa_14015648006
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9b172a1e90de..e956edb87398 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -2180,7 +2180,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
>  	if (DISPLAY_VER(i915) < 12)
>  		return false;
>  
> -	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> +	/* Wa_14010477008 */
>  	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
>  	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
>  		return false;
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 4efc1a532982..82a8f372bde6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1456,31 +1456,6 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
>  }
>  
> -static void
> -tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> -{
> -	struct drm_i915_private *i915 = gt->i915;
> -
> -	gen12_gt_workarounds_init(gt, wal);
> -
> -	/* Wa_1409420604:tgl */
> -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> -		wa_mcr_write_or(wal,
> -				SUBSLICE_UNIT_LEVEL_CLKGATE2,
> -				CPSSUNIT_CLKGATE_DIS);
> -
> -	/* Wa_1607087056:tgl also know as BUG:1409180338 */
> -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> -		wa_write_or(wal,
> -			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
> -			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> -
> -	/* Wa_1408615072:tgl[a0] */
> -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> -			    VSUNIT_CLKGATE_DIS_TGL);
> -}
> -
>  static void
>  dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>  {
> @@ -1716,8 +1691,6 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
>  		xehpsdv_gt_workarounds_init(gt, wal);
>  	else if (IS_DG1(i915))
>  		dg1_gt_workarounds_init(gt, wal);
> -	else if (IS_TIGERLAKE(i915))
> -		tgl_gt_workarounds_init(gt, wal);
>  	else if (GRAPHICS_VER(i915) == 12)
>  		gen12_gt_workarounds_init(gt, wal);
>  	else if (GRAPHICS_VER(i915) == 11)
> @@ -2437,27 +2410,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>  			   true);
>  	}
>  
> -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> -	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> +	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
>  		/*
> -		 * Wa_1607138336:tgl[a0],dg1[a0]
> -		 * Wa_1607063988:tgl[a0],dg1[a0]
> +		 * Wa_1607138336
> +		 * Wa_1607063988
>  		 */
>  		wa_write_or(wal,
>  			    GEN9_CTX_PREEMPT_REG,
>  			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
>  	}
>  
> -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> -		/*
> -		 * Wa_1606679103:tgl
> -		 * (see also Wa_1606682166:icl)
> -		 */
> -		wa_write_or(wal,
> -			    GEN7_SARCHKMD,
> -			    GEN7_DISABLE_SAMPLER_PREFETCH);
> -	}
> -
>  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
>  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
>  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index cf1c0970ecb4..879ab4ed42af 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -167,6 +167,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
>  	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
>  	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
>  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
> +	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
>  
>  	if (pre) {
>  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 48c838b4ea62..62cc0f76c583 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -653,14 +653,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_TIGERLAKE(__i915) && \
>  	 IS_DISPLAY_STEP(__i915, since, until))
>  
> -#define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
> -	(IS_TGL_UY(__i915) && \
> -	 IS_GRAPHICS_STEP(__i915, since, until))
> -
> -#define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
> -	(IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
> -	 IS_GRAPHICS_STEP(__i915, since, until))
> -
>  #define IS_RKL_DISPLAY_STEP(p, since, until) \
>  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 3fc65bd12cc1..c6676f1a9c6f 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -4336,10 +4336,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
>  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
>  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>  
> -	/* Wa_1409825376:tgl (pre-prod)*/
> -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> -		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, TGL_VRH_GATING_DIS);
> -
>  	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
>  	if (DISPLAY_VER(dev_priv) == 12)
>  		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
> -- 
> 2.39.1
> 
