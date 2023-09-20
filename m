Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CF77A8DD5
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Sep 2023 22:36:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76F2610E082;
	Wed, 20 Sep 2023 20:35:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEE0E10E082;
 Wed, 20 Sep 2023 20:35:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695242156; x=1726778156;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4gb/sLtLe4lXXM1URtx9U5OLtystm2McJecAQxyEHjE=;
 b=TQj0XybseiaI8J/Z5PYTLuBYsEg+Ev5K7Lrcfpv9p12x3ZUDwZ4Voemg
 q+dJIIN8N3cgRu3ioLg/8oHjb1p/BlC5rFMn1h+huH5rg5BCGKCIdP2ZH
 SmszvRC71Yhdi4yJG5g9LrJRb29gObHA0YGL86WEixaDaDl2Kkq9KttGK
 QBcsOzrgGk5d5Vk2eda0iqaXJxiCMm50ek8RePEdZat5vBSHUamkGeKVc
 lCpNSYDU7y6uk6/TjJdidj8PfEVUs19RHNaz1W9J6/rlXXeioGjQVgLEt
 EzH++5jrh4pF2bSLPsyydw5+t6NXJOtXF6XoUMa622gtFGe7AZ4yWto9I g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="411276983"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="411276983"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2023 13:33:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10839"; a="750084111"
X-IronPort-AV: E=Sophos;i="6.03,162,1694761200"; d="scan'208";a="750084111"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2023 13:33:11 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 13:33:11 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 20 Sep 2023 13:33:11 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 20 Sep 2023 13:33:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 20 Sep 2023 13:33:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=knjDQ0+1Xd6CGYbZGDfmrXisZSYIV7dmb+EKvbmnCE1J5PW+UVCTe55KtcmtjUi1+O9yc/PNfvT4jTgFYPB4IBhsVzXj8qeZsX/96ZZW9CmhgdTtG/hVV51S9pV2dC0WdJrfoodpzO65CtUKK6H2NzjkFrRx2OT0v7Qn8qlbxC8CacfC9LHAWNEHosRvaDO4zYqiSlS1oCD5EHcv8d3kl5JPSH2QdFJr+L6Bg0Bz1WmWBKr8YMUGyu+BVAMe+h42ROXRq4JkWT5SZGTDKbmmDI/1/ovfsDDnits93S1X8jE9qVKThjsk0YlCLMCYJqL2802DdjZLsIqPPdXdlXXdHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hA9zukTkNybZ77/Mg0cIM+52r/kDpDN4mYqVtqF1WaA=;
 b=hl3YJbuJUBsYaJ/N3UqFPG6/oFcStNDE4ubmnL/n7oD0pZ94iPMje1HrD5x+QgQ+qCHauX2hf5PwAg7U56efncpV75+0s10TpcR+10ZdRrcH9AsBGTE0am6fulN3tnCdFbt8o3zyxP2qJnshZVKhMdgEREi4E/Mr7kD/kxT7jXeH5fPS+QxQ+pE3CfXY0/IPgqcFFV60VB1jj3ZPGUE/zxucTScv3not7Ve0ib5CFo/wHJfWXkxtPsGCw46dEko54Ui+5yeLPmyoVnrVtHplADdzQJct8qVOqDk3MO1W3PFEn6KfOHY2d8+tMGqLvL9SOfPOevvEqDNCToaKFvwc0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB4849.namprd11.prod.outlook.com (2603:10b6:303:90::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6792.28; Wed, 20 Sep
 2023 20:33:08 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%6]) with mapi id 15.20.6792.022; Wed, 20 Sep 2023
 20:33:08 +0000
Date: Wed, 20 Sep 2023 16:33:04 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
Message-ID: <ZQtXAJ3EwcrYBIA5@intel.com>
References: <20230918190259.2817143-1-vinay.belgaumkar@intel.com>
 <ZQr8lowFNiMGnrbn@intel.com>
 <4028e035-4b39-0c6d-a0dd-a9ec583ab07e@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4028e035-4b39-0c6d-a0dd-a9ec583ab07e@intel.com>
X-ClientProxiedBy: SJ0PR03CA0051.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB4849:EE_
X-MS-Office365-Filtering-Correlation-Id: ef3ad12e-cb2d-40ee-2c70-08dbba18ccc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Zd5R1Ix3sQT6GrrTJIPt+DyKBKrDeBm+dvrWYi2ZPRX9aZxWaXDEUqIZCgkxx+4yHxvrhDe7GNWw2ZyllluygVAvACZLi01NFPi2Le5degC5ZSwNHjQc4gz7nSHgMxB3dHBNuCwJLWXe5L1ysAa8cvcIrP81P2tQ8MK+DI3+lkjA+4WuR9abO4em+iwwpG19BLyBe7bFqACwBVYCbIWE3bic/0PZiOBobJrfKHGrfXzlQtzDLt+JvSnLtLSbmnsXXVAVhxlfG9gaoyaUmrtv/XsrgZeMZRhk2dGJL8vHpBwo+X2gnUvCRQ0+SXFt/peTTDKQE5BEONpyYIWyuy8rhaJ6QqoxbSN4zx3x0TgDFnGH9L3xarwYeuUfop3gjt+BregH/jPeRnb9kmcEkk/7r5ixWb2IW0rnmbm2LSpnopL+n5kjNRSc1Pb4yr76zA/THUE4TqocigvSdJpPKK20LCsKNjk1MPZuECFiXPOnDcKxLm3VGD3lTLcHabQYpT4QMANRvDp4owdm8vVVuf0DhDlxRwvHrwoIbP1U3QzMwn0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(376002)(346002)(451199024)(1800799009)(186009)(36756003)(4326008)(5660300002)(6506007)(83380400001)(6862004)(8936002)(8676002)(82960400001)(41300700001)(6486002)(53546011)(450100002)(26005)(2616005)(6512007)(6666004)(66946007)(44832011)(966005)(478600001)(86362001)(2906002)(38100700002)(6636002)(37006003)(316002)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uyir9yH90GRLuThggEWVt3Q/JpYqotjnE87PBenIayE27SL1Rdbqi/fExnOB?=
 =?us-ascii?Q?fyRViIKbb/QzbvBhRAvoclXdLYD2azMw7puOkClP2ZsPyrjVzeo/Wo/66uqo?=
 =?us-ascii?Q?rAmYDC05mWowhWhiyDWNGutIZuZtBG5z5pdF56ZfCqG909Y777lWnxEqYvCp?=
 =?us-ascii?Q?YRElbTR3mrtFqqUFqE+P15jdhAIL6Xdc+Zen7q80VGVcAuAwCKMVwLOpvlOK?=
 =?us-ascii?Q?gmyINJfon9dljb4X7iN8JoG559xDmtoYM+w8gQ8t8N+ezJcDPFC+l7OU6CX2?=
 =?us-ascii?Q?fshGVDt/5XZaEKJSFRBeIeGsf7ghBT/Cv76GNGRoj+vyUtqdJUV8TaORyMMf?=
 =?us-ascii?Q?XnlKTCqTGd1rYOuPqleGOKLBA5O+OfqrfHxIEB1kqO8+t4V08o4wig/kfeBS?=
 =?us-ascii?Q?1oHwTdoMw2CKCVmsmr4uFQQMgwDtglOYo3QF70gfLaLIbsTseMqlSyoZTdjX?=
 =?us-ascii?Q?y3Li9NmoYoTVSbu240Tq+6lcsA7/jbQgHwkIoPbLlJGutYad9AiNT3p8HALl?=
 =?us-ascii?Q?CIVz4N6+1fFgtMTlPtleUgKDdLDp6Q3FucduBWuTAWtBuCCU2ljWcrpMGbZW?=
 =?us-ascii?Q?FSH3F4mO5o70xX8ugFrsSWD6Ws1uewQh4o+C1dgVGS/UsVilwwzJGIJO+4St?=
 =?us-ascii?Q?c3hqj2o1GBr7QWruVEVzfHMZ8BxuuCsxbA8MFBUX9igvPTGXahxx60eNDmzD?=
 =?us-ascii?Q?DdqoFKNOStcHE5LZ8dlwsosqRhdSV8wSuGj9YDonNIgHBSZTbfzAp4V4YfG7?=
 =?us-ascii?Q?5YXr9jwQvx7VfZ7DwPnTZcDHF79aucFW+AcIQJVj8VdC/LcIelWO/Z2R+CpV?=
 =?us-ascii?Q?zOvDDpCbb0zHDREF5zeGdrNIW31iLWzzIZ4fsFNHYzvYM3J8XLYKCLPP8tqd?=
 =?us-ascii?Q?D78oUgy/Bd9/AIoaIPimAig3jBsZl4XZEG9Q2pE9DuwI+zG6XQtQ3BlNTpRq?=
 =?us-ascii?Q?lPYsFaKddffguPYweKF48It0tbUsH/uKCy59RGcAtv5Pda0PRzCQGl0toGOI?=
 =?us-ascii?Q?ryN90XHspmv6IcOy6NW2iFnQ0y9KEs5r7cew9L0UYk60Lxjrsa1pKY4OB4gt?=
 =?us-ascii?Q?u4Rgw5yWY4LbCM/wP30Q85h+aWpHfHUGTvoB0Vny9eUEusCAtaqMJKld1SMR?=
 =?us-ascii?Q?ugDYko9BPZk3Fm16WbC/LdoN/tdeNZ4tSxpE9XghgHMyAi84/8BCgUqUNpCV?=
 =?us-ascii?Q?5sUCoLnc2uDIdgj+jnRbShNzoFzKnx3e/gyiPccMdz4udaxcEHBaxQcCJl5N?=
 =?us-ascii?Q?LpmvTDPl041COeP6IMcdUvfyV7pQG9Ih8Me7WWYNnrSR6rJvM4sTT03cX6l/?=
 =?us-ascii?Q?rLlz7C7ElOs4FOZNcyiB5A34/h8UdF/VvlL0ZDcE+hjUnzs4pRDa6q7n98im?=
 =?us-ascii?Q?uqTPalcuLLw27Yl9fq6+s5uGmhkrSolGLHaOCsV3FOnTT9KTx2g3BpMVgmA8?=
 =?us-ascii?Q?Kw8TTvjW8Jp2QJqFYSgLjf1qC7xOtTmDJHPmf5m0lvo2PySP5KZtfbMTLYUC?=
 =?us-ascii?Q?9S3qQnjCw5uMctyfJw2gbmSkyWu/jqlZb4FW7ikvYQaCeNA2WG5nLJnEHAUK?=
 =?us-ascii?Q?FZWGwdeHI6CBSxEDGxw0BusAJlUQ5QfS1SJ3Ha9aJ4gNJDSFCcWhUo2KHY4e?=
 =?us-ascii?Q?dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ef3ad12e-cb2d-40ee-2c70-08dbba18ccc1
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2023 20:33:08.7945 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8DzhLWwXPuDijZJK5LM+gPJlaTHbZYz/JqknJY6ZhUW5aZyYIvPqUs5MOz7Ozi/2yCLIYkG5VFc5WLMHmpe8hA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4849
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH i-g-t] tests/i915_pm_freq_api: Set min/max
 to expected values
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
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 20, 2023 at 09:18:07AM -0700, Belgaumkar, Vinay wrote:
> 
> On 9/20/2023 7:07 AM, Rodrigo Vivi wrote:
> > On Mon, Sep 18, 2023 at 12:02:59PM -0700, Vinay Belgaumkar wrote:
> > > A prior(rps) test leaves the system in a bad state causing failures
> > > in the basic test.
> > Why?
> > 
> > What was the freq immediately before the failure that made the
> > machine to be busted and not accept the new freq request?
> > 
> > Maybe we should use this information to limit the freq requests
> > that we accept instead of workaround the test case. Otherwise
> > we are at risk of users selecting the bad freq that let " the
> > system in a bad state"...
> 
> i915_pm_rps (waitboost) test sets soft max_freq to some value less than RP0
> and then fails. The restore on failure does not work properly as the test is
> not multitile capable(it sets the root sysfs entry instead of using the per
> tile entry). Then, the current test (i915_pm_freq_api --r basic-api) tries
> to set min_freq to RP0 as part of normal testing. This fails as soft_max is
> < RP0.
> 
> There is some non-trivial effort needed to convert i915_pm_rps to multitile,
> and this is a BAT failure, hence adding the quick fix to ensure the test
> runs with a good pre-environment.

okay, right, regardless the issue on the other test, this one is working
with some assumptions that needs to be corrected.
We either correct the assumption and set the max while setting the min,
or we do like this patch and make the assumption true.

Let's go with your patch

Acked-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Thanks,
> 
> Vinay.
> 
> > 
> > > Set min/max to expected values before running it.
> > > Test will restore values at the end.
> > > 
> > > Link: https://gitlab.freedesktop.org/drm/intel/-/issues/8670
> > > 
> > > Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> > > ---
> > >   tests/intel/i915_pm_freq_api.c | 8 ++++++--
> > >   1 file changed, 6 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/tests/intel/i915_pm_freq_api.c b/tests/intel/i915_pm_freq_api.c
> > > index 03bd0d05b..6018692a2 100644
> > > --- a/tests/intel/i915_pm_freq_api.c
> > > +++ b/tests/intel/i915_pm_freq_api.c
> > > @@ -55,7 +55,11 @@ static void test_freq_basic_api(int dirfd, int gt)
> > >   	rpn = get_freq(dirfd, RPS_RPn_FREQ_MHZ);
> > >   	rp0 = get_freq(dirfd, RPS_RP0_FREQ_MHZ);
> > >   	rpe = get_freq(dirfd, RPS_RP1_FREQ_MHZ);
> > > -	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d", gt, rpn, rpe, rp0);
> > > +	igt_debug("GT: %d, RPn: %d, RPe: %d, RP0: %d\n", gt, rpn, rpe, rp0);
> > > +
> > > +	/* Set min/max to RPn, RP0 for baseline behavior */
> > > +	igt_assert(set_freq(dirfd, RPS_MIN_FREQ_MHZ, rpn) > 0);
> > > +	igt_assert(set_freq(dirfd, RPS_MAX_FREQ_MHZ, rp0) > 0);
> > >   	/*
> > >   	 * Negative bound tests
> > > @@ -170,7 +174,7 @@ igt_main
> > >   		for_each_sysfs_gt_dirfd(i915, dirfd, gt) {
> > >   			stash_min[gt] = get_freq(dirfd, RPS_MIN_FREQ_MHZ);
> > >   			stash_max[gt] = get_freq(dirfd, RPS_MAX_FREQ_MHZ);
> > > -			igt_debug("GT: %d, min: %d, max: %d", gt, stash_min[gt], stash_max[gt]);
> > > +			igt_debug("GT: %d, min: %d, max: %d\n", gt, stash_min[gt], stash_max[gt]);
> > >   			igt_pm_ignore_slpc_efficient_freq(i915, dirfd, true);
> > >   		}
> > >   		igt_install_exit_handler(restore_sysfs_freq);
> > > -- 
> > > 2.38.1
> > > 
