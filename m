Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5235BEB8D
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 19:04:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0D910E277;
	Tue, 20 Sep 2022 17:04:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6225D10E277
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 17:04:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663693449; x=1695229449;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=TkMuP8RfATCW+ine5Ov2t2SEM/xhvNchn6238d1KdQU=;
 b=lZJ2JqGc6QWDg4AnNcrr6qnZCUsvrKaHvMV4/YOPXPyrFEN5nu2PE2O9
 MR8Xqj3QEGLtPx7rGjPwWnhbvZ7Gn2Fi5cD7A9b/UjRrR0YKPZUmLz28H
 e8DKF0tSis3cEKIoSvWs/Wn2EAGBWj0zBp2lSIeMvynCytNKQvC1uLhZ9
 4C1rFvSH9nL853UTuP4L+CFSNvCxx+UOfiBRj6keNSnofZAIxow4R5zQy
 X0PI/dHsWV6GpuhLd5k6orhyMaF6sqFYeD218s73QKKpfm4WJ/38cqYKW
 KrScDVxTxhIN9OZ8nuKNUWXnBejI6aUbozUEbg3gzpVkhwa/RnKO/bPmB g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10476"; a="301135005"
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="301135005"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 10:03:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,331,1654585200"; d="scan'208";a="652173152"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga001.jf.intel.com with ESMTP; 20 Sep 2022 10:03:59 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 10:03:58 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 10:03:58 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 10:03:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=j7OJ18ENZRMjU8E8yC1bmJje+W2ypB93BP7aEy5VZ0kiAYt+46JWnjblrHrMiD7FJS5O8bxo5bTb/S6OMXe1a9ZPn5NVzZfKFidzwnOg8bUn8SbpAvShYxcUewr2JSDU+PU/2tTRBFHvIrj2M2a/YJ0UtAC8fXHfJA7TOSF/ZQhrBtuITiRWIZmHgKTiTAjVqZa97dqUBz0qFPt8Yv1tuYrt1ci7mzaJQA4ra6/VSPWl1TD1Ijv39gDDDx3NPXcVgmCsOtQ3Kcn5MXaj61qDE7UgN3zb0+v4N4Dr/j9f2Y992PbMzDTUem8g96Y7gMLogC/gLzzH70AwIgg3bBKA8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z0wTvqwMRJyYEL8ijLSwW0Mb5w9voNTwRzl4fnyKIgk=;
 b=lnNUNdQprbqUfrvQXc3hFiQSrutxVGvcPjyOiauXu8WD4h8k3t7gdJOLYHtSLoeuRCphBgeBwfuyN29KS6/pBdRKMysRXpeFuXVEDBiZbITBz5Y5jJVX966GUYblWr2meSjIK25kAny1KC8BI/BZY9weEG4dzqoVIrPUYidMuHEiTUtJCxFQDxBYdEfQ91a68/HYqRrXQwo0Y8jJpn2I8GvpmioHUrlTrKkRevqxu+TOW36uFWXTXBMnfcNo16XKJxFTh2yLZblZLyUzv412jd1JcbFK32pA/Ov8tflIq9akVVLNjasPPTH8iQv6UmawfiOzRrkZOQvkqK6WXqsNUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by SJ0PR11MB5677.namprd11.prod.outlook.com (2603:10b6:a03:37e::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Tue, 20 Sep
 2022 17:03:44 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::151c:5cbe:6974:a94d%5]) with mapi id 15.20.5654.014; Tue, 20 Sep 2022
 17:03:44 +0000
Date: Tue, 20 Sep 2022 14:04:33 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <20220920170433.yacfjnsrtz32ggim@gjsousa-mobl2>
References: <20220919145659.293492-1-gustavo.sousa@intel.com>
 <87v8pio6li.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87v8pio6li.fsf@intel.com>
X-ClientProxiedBy: SJ0PR03CA0086.namprd03.prod.outlook.com
 (2603:10b6:a03:331::31) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|SJ0PR11MB5677:EE_
X-MS-Office365-Filtering-Correlation-Id: 6d9f7a5b-a3d8-4e5e-41e8-08da9b2a1336
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /L4eyzhBKrefvm1GJfE3uxpL4ZjrCVGB9V6UpqOhnNTbNfwp4uq0Vyosayg1fLN4ir7Pc9gARsesslYDLreSZ9y9xgEHQJosomKhMc/4uwFn98aZxomb956VWN7rAvSfJ/lDXt4mp1VmAzZI/RPl8EzBqNn51UGW595ArFN76dPAszalfIZc3VHA+hmwm7+hXNGwJQgnrECOAIFemiFdJgmg6/lfFOGe/YtmjPqA7ZSGtmq4CQuqtD9kbreH5bgX9U5nWWFt6O9dDRq1vstV8ZqRo1DSLtjDrWAx/njihRb5IIUsSCBpCjDejBv2DdCh952nlEyDScDtCVeRMd6VLLPfd7J0FoyAV2gDkLIVavetkqdRl2aRaJlsvGlUeDMDAQEEcHk3DxCoMhEI52VmiYKIF8YFdDd0aSSQd+wrrjYC7zFuWxx1mB0cxUBCvdWyn0s6y8/J9xd1cmQIks5wTy8caxVyIdnUaw90Rh5A13YZDRoTas8sUmt1YjDydWOLPx/3N4CYPBPtxbcX3d/UrD7vVl68/9ttMLg98Yts6SGcnhG4iuo0xIOZFhqFALnOn3pfBtMjxeyGndP6P10dI6s5RvCIlnJEg2Oq/FqHT9EYawH1m5mah4gdzCFKmgX695lXna/V7WYd32Fxc7O/9Wol2eDXk6RppDK0gwvCCv0oTuI+lw6i8QJ+RHDKYos7K6qZMbtb7DC4mySYr9q6RQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(396003)(136003)(376002)(346002)(366004)(451199015)(8676002)(6666004)(478600001)(41300700001)(66476007)(66556008)(66946007)(5660300002)(4326008)(44832011)(8936002)(316002)(2906002)(38100700002)(86362001)(1076003)(6486002)(186003)(82960400001)(9686003)(26005)(33716001)(6512007)(83380400001)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?R5zu0zb26lRS7t16p//KcSLxQKgdCyk3TPcw7wyBgL9dyIOm3rRe6v6tilI+?=
 =?us-ascii?Q?cgDEJ9DUla7/SbQwqOiwvH9o2avwcQUUSpIEin2KDLvIjhFVqL4dMET6lZSS?=
 =?us-ascii?Q?dHNDmV5zxy+nJqQ8kqzJVzmvTNFGcSSFnDlihGeNwxDlZTbE48dEnZGrK3GG?=
 =?us-ascii?Q?rObby6YvVKoaHGSLrbkZmSz5iDZhpC5h1QMypTXORX1GXZ4ogV046h91+z41?=
 =?us-ascii?Q?qxRZtIofxE75WBpTJ8ZHfZEWCxwOZQJHGdRFS5aD+okpfKUXGyX6JsykTRJy?=
 =?us-ascii?Q?eQ1hTGjA5mSt2/MXPbmiC+3cPtmNVEwvtbYVu76gSLYR+7qvDrz1rVWaf+s1?=
 =?us-ascii?Q?C3NPa0fxKXwp6vwNofveYfbQ2alztLPh1n+j8BrKxNhKnUPWuYK7EZ8Mhv2y?=
 =?us-ascii?Q?AaX5iA67yk8lQXIQi8Y4QjhNS4sBBBgISMIfCD4QIrssoqi9ZFQRQ5r09/qz?=
 =?us-ascii?Q?B8E7mbBwZlG+JPIjOZg3pJKq4SKmildk7Ys81sI8j6/qORU/IQsZDMgS3r7o?=
 =?us-ascii?Q?yq49fd5teGPyLUqGyYJAyXw6fIT2BXNnvVs6m6Hjm881BzZbvDFgRpwIj0GK?=
 =?us-ascii?Q?DdW5vom/hRrjsiP7X918hPn8M2RMtmK1BupxT8niJSq4EAuizQm1dKly6ESO?=
 =?us-ascii?Q?6VnTcmH0+XFKdfCfLP68AQZCMwxPlvl/lQcAdqF2/qODVocd3L0ZjU1Cc6AQ?=
 =?us-ascii?Q?ng8xa3IAgzqAsn1wgsCT2iJ1d9kKU2AkrGF5qfLrpqr3B/Njg3KoOMVaIMmM?=
 =?us-ascii?Q?nnpLSuBvD+TNi0FlES6MvmMOg4KuYChDSU3a/EWTQN/qQw4fE8su7YiL31Gu?=
 =?us-ascii?Q?l3FX0ULYANugUZBLx3P1h/kaVR6Li6n+7YclyG9CEWGFYUY+MxOq97IWLtfF?=
 =?us-ascii?Q?js/K3C8yl2q8ZsWx2gNMOzZmhwRNz3VSDV8bQWPwF0lAVvEb26d2U0oABaSC?=
 =?us-ascii?Q?PKgqEOnbLiK1/B993K8/7uEziH930khL4W0qKPJwZlFGcLYbiJJf/VJ8G73A?=
 =?us-ascii?Q?nTvhXFYQxjM/mRHoo2SXQW7EOC4VHWG5iM1WWkq3Z+30xporNHh1lBV/Yd3/?=
 =?us-ascii?Q?CQAfEJ2DUMeV7XNSp7PTiMeUj+F7/fkqRTn0l73IyHbJ69giemzKoNHpw51u?=
 =?us-ascii?Q?1cw1mF8IAOPHyGzzWp70bvVZfFep4H2Tp+2oI557Lx8JyR6j8uRKFelvCyAt?=
 =?us-ascii?Q?A7CQEzNg4oeOfqgzL8y6y43qwuLr2pSJIKawBtv1TBjjJGblFIwjEvH6opeg?=
 =?us-ascii?Q?my4S31Ui4OX69UbDpiaM8JIhhYK95F8Rnkdlb3z8tG3hQ8FCjjbAXz0oPJbj?=
 =?us-ascii?Q?SGvMXqbbM4gE/9wmUBA79I9Djnu+bV8JGo68EMlbAiaGbLzUhQHOqAK4/LU6?=
 =?us-ascii?Q?XDgQ3f1VB4xI2Fp7i/23KUwlAu9m2YHWbcnzMT0Kc1wZmMTWqSPKhg893brh?=
 =?us-ascii?Q?jrtbnSEGhnkDlDaWjttmbeZ/JmsdR2wxujJ/IGkV9V0kbr6X6w3ghY5yXs2Z?=
 =?us-ascii?Q?gSJ1S7PwlBvy/169sA3jVMg9W2z/qhSxI+mCcEa84/aeRX3WbEnhY7mwF/cJ?=
 =?us-ascii?Q?KEiJNPXf0aeWMIp8KWeduf+FAsHA+hhhvv9rnQjEnbTy4jSqOXby9VA7GxBJ?=
 =?us-ascii?Q?nQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6d9f7a5b-a3d8-4e5e-41e8-08da9b2a1336
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2022 17:03:44.1163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DT8zNBXQv/zb+XwfHxRZl8xMCAuUcVcUWcKWSn1Sg0s1Ij+kbJ1CfNurMEmMLVR2msA8kmf33VUbu625w8BKyw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5677
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Move hotplug inversion logic into
 separate helper
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Jani.

On Tue, Sep 20, 2022 at 10:19:53AM +0300, Jani Nikula wrote:
> On Mon, 19 Sep 2022, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
> > Make the code more readable, which will be more apparent as new
> > platforms with different hotplug inversion needs are added.
> >
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_irq.c | 25 ++++++++++++++++---------
> >  1 file changed, 16 insertions(+), 9 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> > index de06f293e173..c53d21ae197f 100644
> > --- a/drivers/gpu/drm/i915/i915_irq.c
> > +++ b/drivers/gpu/drm/i915/i915_irq.c
> > @@ -3263,6 +3263,21 @@ static void cherryview_irq_reset(struct drm_i915_private *dev_priv)
> >  	spin_unlock_irq(&dev_priv->irq_lock);
> >  }
> >  
> > +static void setup_hotplug_inversion(struct drm_i915_private *dev_priv)
> > +{
> > +	u32 invert_bits;
> > +
> > +	if (HAS_PCH_DG1(dev_priv))
> > +		invert_bits = INVERT_DDIA_HPD |
> > +			      INVERT_DDIB_HPD |
> > +			      INVERT_DDIC_HPD |
> > +			      INVERT_DDID_HPD;
> 
> Nitpick, the indentation will be off compared to automated indentation.

What do you mean by automated indentation?

> 
> > +	else
> > +		return;
> > +
> > +	intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, 0, invert_bits);
> > +}
> > +
> >  static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
> >  			       enum hpd_pin pin)
> >  {
> > @@ -3413,15 +3428,7 @@ static u32 gen11_hotplug_enables(struct drm_i915_private *i915,
> >  
> >  static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
> >  {
> > -	u32 val;
> > -
> > -	val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
> > -	val |= (INVERT_DDIA_HPD |
> > -		INVERT_DDIB_HPD |
> > -		INVERT_DDIC_HPD |
> > -		INVERT_DDID_HPD);
> > -	intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
> > -
> > +	setup_hotplug_inversion(dev_priv);
> 
> Since you're already in a platform specific function here, seems a bit
> odd to call a new generic function that needs to have another if ladder
> platform check. What are we gaining here? The end result is
> de-duplicating just one line of intel_uncore_rmw(). I'm not convinced.

It is true that the proposed refactor repeats a platform check, but the proposed
refactor has its benefits. As more platforms with hotplug inversion needs are
added (e.g. MTL), we will have a common place for the logic of hotplug
inversion. That arguably makes the code more readable and makes future refactors
easier when we need split a function that has become too complex due to platform
checks.

To make that last point clearer, I am quoting Lucas' (copied here as well)
comment (which was what convinced me) from a discussion regarding the advantage
of using such a helper:

    that is what helpers are for, so you don't have to open code it in every
    platform-fork of the function that needs it. See how the various
    "Sequences to initialize display" are done in the driver... When we are
    extending it to a future platform, if the change is small enough we just
    add e few if/else in the same function. But it doesn't take too long for
    those functions to become unreadable if there are several branches the
    code path may take.  So then we "fork" the function for a new platform,
    but reuse the helpers doing the individual steps.

--
Gustavo Sousa
