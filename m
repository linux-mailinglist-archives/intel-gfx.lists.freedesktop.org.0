Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A476B3D62
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Mar 2023 12:13:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 707AA10E9CD;
	Fri, 10 Mar 2023 11:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 288C810E03B
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Mar 2023 11:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678446778; x=1709982778;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=J2fLqQMKJbjnDs/+r+mhpsJfRWBuQ9L7MxP1K94l66c=;
 b=T7OoIpulVvVCnsdsoq0x9nnJ6iM6gvMAXMD6WlEj+FNygtg8rpYoV/uF
 FeiDL6AVw8uMJZoK+MxYIMmgtGDXGBbJro1jJQ+SOKstQk44ibP7wiSt0
 sJQ/o87mIQle9PcsVIos87HFcwne0kxQPeQj8p2jYbrLGmM/EsazS5ARb
 EiQZgBQF51a+0p5U3AdhVa5fUA0FrnSgYX2FMZDMgFYXhv1Uz9mGxb8LR
 6z+8nLTUyNAgrWp+2TBSSAw1pEoWOn1e7Kt9DnutGspG6Qx83s5BJFSgr
 osUCmbj54zqNoI9c5grDVAvfvy7g/vgkW5ryNPkP/tVg27mCLl2gqoaag Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="334181815"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="334181815"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2023 03:12:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="766799388"
X-IronPort-AV: E=Sophos;i="5.98,249,1673942400"; d="scan'208";a="766799388"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 10 Mar 2023 03:12:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 03:12:57 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 10 Mar 2023 03:12:57 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 10 Mar 2023 03:12:57 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 10 Mar 2023 03:12:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zr67CddW43ZFU3EvG+UCn7h4YRDzMny3Fa3QhGEEiL2duZUJiIj8628HUtqvtfxh8KQMvBGh9OBzHMRtB+bxnwl43YlHymCxkmO0c1yqlbZ+TDai1LN8omc+5L1I4dPL+8rfg7gaB0EwQAA9+M7qxEJEyaWjRRVtTIU/of6vg/F6fkPOoH9aLgeTDEe4drk7jR5boBya5DTTQMjr6JUnWe4XxNPvQSmapYbM29coAsCEusdvZQzOGm+mn86eS3DY2GFZl6FzSSiy37nPGn/UwTVjIsJZkZddcNFvL6YjYgAGhUadLhFbt90kPMDeLhZPTfhjuDipK/oLYRNfQgC0Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qDBD4aKfnokJY163kOGtXthkbzfdXog2RVaCK/i6KPU=;
 b=KM1eajHUThNIbH25xfchK6mBznwn6f6rmQZ6IwjXzKgR7bwxp6SO9Iru6ke//54v5hehuxMo3cKdnKrsUPDVEek/Xglc8BcUbZSuQ0VBRqvsB1eA7hCzNLkxfeC/zpOm+Fh8qwXSNbMEoW0z+68P7QbnJZjneypotqufy1MRJQ2UavjEev4ycNzA1r2LZjm3vFalm+bsLrsNQuAYCq+H5NYja79qxMWERtcVhleeYLY/dYZtfGU+3Yg01AenO8N4+bcXtL4iMuzkfaD3bikIGVMeNQCOgQz+sTsTJFw8GLb/pIo+6hMXmIyOFvQxe79pBVcEAJODA0+zkgRDjJSApA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MN2PR11MB4647.namprd11.prod.outlook.com (2603:10b6:208:262::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.19; Fri, 10 Mar
 2023 11:12:55 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6178.019; Fri, 10 Mar 2023
 11:12:55 +0000
Date: Fri, 10 Mar 2023 06:12:48 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>
Message-ID: <ZAsQsLMCsL4XAOTt@intel.com>
References: <20230310061339.2495416-1-badal.nilawar@intel.com>
 <20230310061339.2495416-2-badal.nilawar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230310061339.2495416-2-badal.nilawar@intel.com>
X-ClientProxiedBy: BY5PR03CA0013.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MN2PR11MB4647:EE_
X-MS-Office365-Filtering-Correlation-Id: 167a2f67-f1d8-42ce-04f1-08db215864f7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2ILYlQ2B+VtVIU9123oPdkZnxMmQSmZ1O2YijF87mYBSQ39WS6+7JnnTwVIHnhaumsvjE+k18GMYOqX9EDSlPzpz7XLWXhZjhTBkRkSJSjxaJFTyIkRGpvvAnXdhHwfI/lU5ZOzHDsm4JwyDllyxuOvUWbt1y79eMsxeFMDVstMZfv4XgDsRxkAxqL69UJWE42aXYJWs0lRQtpihVjp3Jt1D+PPqF1+6mGoBn7xv8L5jSnjBL1oQ9JzeBr//HJcmMZ3OpnNQT6VFXBR+UBRg7GHYKc8P6pKFlo0zrlOKHqbvDbM5qZMNFFRo30FiBvavTeAIJ0DnSsTT8rEV4vB/daJp14u231vSHhhRLb+H/yusIuALT3SdsFpTBx98hcqF/o9Vg2HWc8Ab/uqTNFQZO9acQzLsVlrdJ9C7yYWOV/v3cUINnjpAqiwTqRY2CGCUZSD+LxA4FMsTkeUmURCX5K1D/kiAzZ7UzhOKaxAcGFzKi3ufV2dAfXEUhW5bNCym549NeLQFobZh+Df+qDCkiGApE8cAjtc/d4QxcizqFiPjKGQz7r2mpMy/2GPKLe/ix3D/QMh97AK5sggxUnawLnnskhzoB+6cRPV7a2dgoyxt/W9g5hBz7blJeva+OhIxsGL1DEer+H5nISDwTLxo1w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(376002)(39860400002)(346002)(136003)(451199018)(36756003)(86362001)(82960400001)(38100700002)(83380400001)(8936002)(6862004)(478600001)(4326008)(2906002)(5660300002)(44832011)(6636002)(66946007)(8676002)(316002)(66556008)(37006003)(66476007)(41300700001)(6486002)(2616005)(186003)(6666004)(6512007)(107886003)(6506007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RvE2XUPAW6JehF5v5SsCtgg/qyoXoQ1Hy//3ngvRZv9M2f8kwpl4qiVrs07o?=
 =?us-ascii?Q?swd5GSumSIEMNjjRKYMA98WIPyzejdekp8DT0uulqKcI2TZvNGoJPNzKzKfD?=
 =?us-ascii?Q?ZdzyosXeJwdqneCgK6c4t84UgxeE/vBINd4Dj6mgip/Zy0S/Z9ON2VcYvkpQ?=
 =?us-ascii?Q?VCln11dn4iEE78bm2Z3F+tsiQB+NnUK8u7+t4GGv8GjYzZDOw02Ds9a/LDUt?=
 =?us-ascii?Q?IebY7jhl6TkaWsaCzkuPI7kTPOaHNyElKOHertCTcONY3PwVTC3i17shknDM?=
 =?us-ascii?Q?Sepm24zP5xs6ePQleEaIFFeb0/C0p28YHagIsuqiTIbj/yo0XBSQPbmUNXi3?=
 =?us-ascii?Q?D+7zWG9LTO7GwTQ6Ewg9+9ChBYUXbApPdOHNxjlPHozGJemtMnYTcRo2hF2t?=
 =?us-ascii?Q?QdWxgNGqgnVTQAfGMHSmLf9WO2HDwZa8Wa2iJtvFM04BphLNqd+zfBt2gqiO?=
 =?us-ascii?Q?xiBTRkxEHJI4oRZUVudcvnY0D+wEcxGhAHum57DbwUF9xDXYMHv6I9k/Vv/5?=
 =?us-ascii?Q?G5QyqFs5dy648MF6ifOF49OBKM2O5AupRqKq6WHfMG0QEOV9zoPIyYBSeGRb?=
 =?us-ascii?Q?ckBojR14UvGYZ9lt7+Tx37BBnFh4pjNd+ravsdejS0chq0cRghUWrGMbuQNj?=
 =?us-ascii?Q?vovEQtiU2+9fLTgb1IJgsCzYeIs8H80E7Q+OBPpKCXz39oQtAsvYzRCnZNB5?=
 =?us-ascii?Q?hDV5W6msS8oXqooPJrjZ1MfqU1HyPlur+hX2AzAkdK4WyGEu6IUI4/2g04qU?=
 =?us-ascii?Q?ck8ieCkTHKpoM5S2J9RzJZW3rGOH8cw2KtijdDc9Ih3drg6KMH9n6VSNXTo5?=
 =?us-ascii?Q?m5qL74n9AuOkRh0ox1XF50HB6t872Bd7cALvDFbmN/UO/ghPFF86i+glFoBJ?=
 =?us-ascii?Q?Ld+b9+vzHBMBH79cgMNuEtro1zznpEssnoBWnrYpAHHKpgWSbEkBeAizqX+8?=
 =?us-ascii?Q?rDoTfbeDg8P4mK7OqkTYFE+Y1SR1Yp1MRVvTDWfLloZ1mjRWLd2AVTEv3gc/?=
 =?us-ascii?Q?Fi04M26PHo2XIZjxioIyYwFuab5S3RCfsPnpVuF1dnO8rpBYTbqU2+cKqwyp?=
 =?us-ascii?Q?q+kU9GMWW1mrywNzTzD1GwIDYnGdlmeuMzoyfH6NUO3OC1NZpgcj3uk8RgCY?=
 =?us-ascii?Q?uzR4mqT9C3LF3E7q8oZyPboFmkgZxwlu945maZ8nTvNSkxMrG4Eyy0cmXun0?=
 =?us-ascii?Q?8MmZupI/zfaQyi8y+iIiDRm2bQfpt0FlfknfdS7iPHMMEyoSyDxyFKr+b+w9?=
 =?us-ascii?Q?fEHhoyh4/w7TtLk4QaRLa2XFo6Z+SPKI5aqo/z0GJAWcryhorcS57WTU/Q8Q?=
 =?us-ascii?Q?Ek/6UtGUhEvow5+dxN+BXKUNV7BXHWkhFHERAW2UhjNkE+NxUi+AL0F0/PeR?=
 =?us-ascii?Q?7nevUuk6bRpGAsqPrk+qyKEPmvsN1xwK2kfp/fVIGgPe75T51DRicBfZ5xj3?=
 =?us-ascii?Q?Bwflo8g7tCxA10uAGSeXEHCebf3GMTmbrnA36r0zFYCJPVE1oIHAJFXhHmJx?=
 =?us-ascii?Q?P1ipT9m4JoOJjYO73p78v99Ue7LvZ49Oo9tHHJnN/CViasVCMxsIyAVieoGr?=
 =?us-ascii?Q?4a0XYVGYLB/DwzQ8r3c9PMWtxxgz/p5HwFc30dWy3kId6NYZAS2EwFM8u9Nk?=
 =?us-ascii?Q?mQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 167a2f67-f1d8-42ce-04f1-08db215864f7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2023 11:12:54.0774 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0UZgIXdgChWyz65EzqTP33L4xWenYqIi15qd+YnrSwe6GkQFR9ytiFEO45eaNjPH48/nJdtpScm6PJSc2W3DBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4647
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 1/1] drm/i915/mtl: Disable MC6 for MTL A
 step
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
Cc: gregory.f.germano@intel.com, intel-gfx@lists.freedesktop.org,
 srikanth.nandamuri@intel.com, hima.b.chilmakuru@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 10, 2023 at 11:43:39AM +0530, Badal Nilawar wrote:
> The Wa_14017073508 require to send Media Busy/Idle mailbox while
> accessing Media tile. As of now it is getting handled while __gt_unpark,
> __gt_park. But there are various corner cases where forcewakes are taken
> without __gt_unpark i.e. without sending Busy Mailbox especially during
> register reads. Forcewakes are taken without busy mailbox leads to
> GPU HANG. So bringing mailbox calls under forcewake calls are no feasible
> option as forcewake calls are atomic and mailbox calls are blocking.
> The issue already fixed in B step so disabling MC6 on A step and
> reverting previous commit which handles Wa_14017073508
> 
> Fixes: 8f70f1ec587d ("drm/i915/mtl: Add Wa_14017073508 for SAMedia")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

I confirm my rv-b here although this came from a combination of 2 patches
and has a different msg.

However, depending on when we got the CI results back I won't be
available for pushing it and I will be out next week. I hope another
committer can push this to drm-intel-gt-next.

BTW, no need for cover letter in single patches.

Thanks for the patch,
Rodrigo.

> ---
>  drivers/gpu/drm/i915/gt/intel_gt_pm.c     | 27 -----------------------
>  drivers/gpu/drm/i915/gt/intel_rc6.c       |  8 +++++++
>  drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c | 13 +----------
>  drivers/gpu/drm/i915/i915_reg.h           |  9 --------
>  4 files changed, 9 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> index 85ae7dc079f2..e02cb90723ae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> @@ -20,31 +20,10 @@
>  #include "intel_rc6.h"
>  #include "intel_rps.h"
>  #include "intel_wakeref.h"
> -#include "intel_pcode.h"
>  #include "pxp/intel_pxp_pm.h"
>  
>  #define I915_GT_SUSPEND_IDLE_TIMEOUT (HZ / 2)
>  
> -static void mtl_media_busy(struct intel_gt *gt)
> -{
> -	/* Wa_14017073508: mtl */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> -	    gt->type == GT_MEDIA)
> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> -				  PCODE_MBOX_GT_STATE_MEDIA_BUSY,
> -				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> -}
> -
> -static void mtl_media_idle(struct intel_gt *gt)
> -{
> -	/* Wa_14017073508: mtl */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> -	    gt->type == GT_MEDIA)
> -		snb_pcode_write_p(gt->uncore, PCODE_MBOX_GT_STATE,
> -				  PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY,
> -				  PCODE_MBOX_GT_STATE_DOMAIN_MEDIA, 0);
> -}
> -
>  static void user_forcewake(struct intel_gt *gt, bool suspend)
>  {
>  	int count = atomic_read(&gt->user_wakeref);
> @@ -92,9 +71,6 @@ static int __gt_unpark(struct intel_wakeref *wf)
>  
>  	GT_TRACE(gt, "\n");
>  
> -	/* Wa_14017073508: mtl */
> -	mtl_media_busy(gt);
> -
>  	/*
>  	 * It seems that the DMC likes to transition between the DC states a lot
>  	 * when there are no connected displays (no active power domains) during
> @@ -144,9 +120,6 @@ static int __gt_park(struct intel_wakeref *wf)
>  	GEM_BUG_ON(!wakeref);
>  	intel_display_power_put_async(i915, POWER_DOMAIN_GT_IRQ, wakeref);
>  
> -	/* Wa_14017073508: mtl */
> -	mtl_media_idle(gt);
> -
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 5c91622dfca4..f4150f61f39c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -486,6 +486,7 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
>  static bool rc6_supported(struct intel_rc6 *rc6)
>  {
>  	struct drm_i915_private *i915 = rc6_to_i915(rc6);
> +	struct intel_gt *gt = rc6_to_gt(rc6);
>  
>  	if (!HAS_RC6(i915))
>  		return false;
> @@ -502,6 +503,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>  		return false;
>  	}
>  
> +	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> +	    gt->type == GT_MEDIA) {
> +		drm_notice(&i915->drm,
> +			   "Media RC6 disabled on A step\n");
> +		return false;
> +	}
> +
>  	return true;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> index fcf51614f9a4..1adec6de223c 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_rc.c
> @@ -12,20 +12,9 @@
>  
>  static bool __guc_rc_supported(struct intel_guc *guc)
>  {
> -	struct intel_gt *gt = guc_to_gt(guc);
> -
> -	/*
> -	 * Wa_14017073508: mtl
> -	 * Do not enable gucrc to avoid additional interrupts which
> -	 * may disrupt pcode wa.
> -	 */
> -	if (IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0) &&
> -	    gt->type == GT_MEDIA)
> -		return false;
> -
>  	/* GuC RC is unavailable for pre-Gen12 */
>  	return guc->submission_supported &&
> -		GRAPHICS_VER(gt->i915) >= 12;
> +		GRAPHICS_VER(guc_to_gt(guc)->i915) >= 12;
>  }
>  
>  static bool __guc_rc_selected(struct intel_guc *guc)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index b9b6d46dfe1b..9db6b3f06a74 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6460,15 +6460,6 @@
>  /*   XEHP_PCODE_FREQUENCY_CONFIG param2 */
>  #define     PCODE_MBOX_DOMAIN_NONE		0x0
>  #define     PCODE_MBOX_DOMAIN_MEDIAFF		0x3
> -
> -/* Wa_14017210380: mtl */
> -#define   PCODE_MBOX_GT_STATE			0x50
> -/* sub-commands (param1) */
> -#define     PCODE_MBOX_GT_STATE_MEDIA_BUSY	0x1
> -#define     PCODE_MBOX_GT_STATE_MEDIA_NOT_BUSY	0x2
> -/* param2 */
> -#define     PCODE_MBOX_GT_STATE_DOMAIN_MEDIA	0x1
> -
>  #define GEN6_PCODE_DATA				_MMIO(0x138128)
>  #define   GEN6_PCODE_FREQ_IA_RATIO_SHIFT	8
>  #define   GEN6_PCODE_FREQ_RING_RATIO_SHIFT	16
> -- 
> 2.25.1
> 
