Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5C07599B9
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jul 2023 17:28:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B4A1410E4D1;
	Wed, 19 Jul 2023 15:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7E310E4CE
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 15:28:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689780505; x=1721316505;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lr8DGr0UnxujvNqP/8rdjDqD8JoJPl3Frbp3P2/WCsY=;
 b=IBu6BtZxRvwWL3xTuMdetbFi4YO9unj+EYJ3MrVtgaG+rx0Ef0JCVz5D
 +gnZ6zroZ8Tc6B8T/bv8ahoblsBTD1bZCePdW8MU6deqQcjlMRs2EuKSf
 hgKpfNrLnhGe71Q1KSKQV/r8LQQpNRyA+mATPZi9bYxJq+XqOPzHjhbB8
 3zRqxFU+QUMMYISzFJsrifCnL07/+QzsWp0n3nh3a2utE06bJSHfJ12rI
 kwQKCmEuvMoO0odHAnxpFd/RIE7wTz7MJBY+rvW4X7IbqN+PRM0hcs4VS
 75bo3XPiP40bAoj5ovDgPJDTwJN2CPSksgZ9g0/hLfuuuFKFTC/mNXwCB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="363956836"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="363956836"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 08:28:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="759231145"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="759231145"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 19 Jul 2023 08:28:21 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 08:28:20 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 08:28:20 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 08:28:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EhF+iRcajgiNnve/+SAwpuIhZp+heF3zFVNW3WGSC8GOuL8XEaE9Yg6gPcdNJYqmlRCqdgoQb9okvD3CgAO6gT5cZioJpXf8yIsE12FYotVJ4X3djqViy9MnbcAFf6GTfCKd/ltUaEKcNG2nlkowKajHmD5VAnmYkqdcU8SS5S0C1jYp8+Qsss4JQdaqjLlKVAuMQxNOqiybKXbYwjjaVswd920kG+S7EQJkA/fCc5IM0x46D4Fk2+iNMnDuh63DaUytFQuWeakZaDKk3Cap94RrFOrIj6aXcXAcXxLCm2D5/44OXkh+8HSh61qfboK030dnZ47xnSRdSH0EfL0Vcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fmlbqRk5yu7LAHsXAE6dUwmsUg8UkZ24rQXPlqRfZQI=;
 b=ZJTxFlXaSbqrT/uVvusTb3CV7DHmcDAKBrwYqZb+kRG0vJgSjtelgsVUSxiBAqFYZc4IRIK431sMWS620ObsGipWgkbXS4xveVO7JakFQBunTDLQRvBMsKpMJu8yDV6p3sMDz/8JFsMkoVwuipGsTT9sAJDhWpnkG0FmRtGtzQXIHMjiSVnXOwMtcp6vIiMbm4m9CwnUX2ikzffTyF0uU413Elp0oN2TgZeqCtd8w+f/Q0o5iBTbTSzWCV3WH4+bXFbu6jj5hK9s2utAcjcz8B9/iod70AFDhxJo6Hiye0hs5zemiutiAYq4ADkM5vmJmU9w0LF5e2rISoqp+GHXvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB7248.namprd11.prod.outlook.com (2603:10b6:208:42c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.33; Wed, 19 Jul
 2023 15:28:13 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.024; Wed, 19 Jul 2023
 15:28:13 +0000
Date: Wed, 19 Jul 2023 08:28:09 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230719152809.GO138014@mdroper-desk1.amr.corp.intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-13-matthew.d.roper@intel.com>
 <76ec5ac1-f297-0634-0ec8-11899151deec@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <76ec5ac1-f297-0634-0ec8-11899151deec@linux.intel.com>
X-ClientProxiedBy: BYAPR11CA0087.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::28) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB7248:EE_
X-MS-Office365-Filtering-Correlation-Id: d976d844-fc85-44ae-7fe5-08db886cc3a1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LEFAjdvh+je8lAIJy6M1jXNhjrXVUuYqAqdkk196JFtp+F10kfRAIl91hXJxQ3QZ3VwGt6x/F7vABkSbFOm/gqTmwkcWFOvXBH6ew01k7JGyH8WhVHUyfO382O9LIpw7Q52Wn/hc1tdKtTCSzdFyNVrMAvZfRZL/ezUo4ztNoAWY1N5Sh091nlsz9G2Fsx3uzI7EbUJWd7tyiyuYh5Lk4clcPOnt4gr16xju8xQRnYOGIKSmQ0KFD1XIffh2VwvOYLFZ2C2V6EDCQ6+424mGXjJRnbAzp3ACuIe0eu501AnRpzAcGPTyeweUd7Ds0i87ncjBABPI8Wp0/76T/C7Cq4/L5+ds31GivJTUP6coqWhQ2cU/yoZDmTiLaVC0LVIogpF9AtO7DspJBys+kUGzQ3ztxxJUNawAlhsp7PKGMhSOChrXTeP14wtnm8XSM/zYciNWEc5O2Xk0KcItBpqS05Ya32qaJZSDDMks6o/7pRTQHmmNcOUYa94Od3GzBet3FQHAIu/9mrgkyO3m300GZIfnRCUdt0jcWPEz0etzTGpZplOACp16nH9/MWkjqQnb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(366004)(136003)(39860400002)(376002)(396003)(451199021)(316002)(41300700001)(66476007)(4326008)(66946007)(6916009)(66556008)(5660300002)(8676002)(8936002)(33656002)(83380400001)(86362001)(38100700002)(82960400001)(186003)(26005)(6486002)(1076003)(53546011)(6512007)(6506007)(478600001)(6666004)(2906002)(30864003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SIf7NxMT3fmKN9vXsV1cbJBKUH8AXQBbAwT0zordRwlFlf/wdF4OjfifruTY?=
 =?us-ascii?Q?ZcByLTNGXs9UlwheM7SvfPzqL7DPWnLGTHWi0zzVG/L9aiSju35Y5mTsdOhK?=
 =?us-ascii?Q?XgcbkCZLgHFekAzN6erbwiOCRDCbVBvH0q9jwg0hxIk8dOTqkDvQ705N0sUj?=
 =?us-ascii?Q?FyKk87JJKcH9wWR9evhDtXsca3lvMMGxbxXCS7MUdoWJTvJEar9GYmq29C6w?=
 =?us-ascii?Q?ONrmvK+xGap1ETJlQ9yK88e3eZ4B5XihucoaJaUI6MYZcxeZ37l4tUvU0zEF?=
 =?us-ascii?Q?DxTSU6+qeem9Pjie2ODKblh49NuAeTM5FYez6nsQT9HJtZ0sbnlwQ+7esWqP?=
 =?us-ascii?Q?pdVQciZXCKoiy1ZRreyA/BXZquma1wMnUiPs0M116AsM459J7zjYgI/MQ3Ow?=
 =?us-ascii?Q?NZMwEKNHeiKXUg9N4RZLI8MpG5zp+1WD3FDTYHC8npg35oUtB91oyZLd5VEN?=
 =?us-ascii?Q?sJWxO6ddqHZU+rwqmHNLDZ49UAYLkEBWwPNz0JCA1xjr1rVP03u+SDskwRCB?=
 =?us-ascii?Q?1Z6r+hKEKKexGka+msZXWYO9hxR0cKfONgd0bLdd4BksYrAF7nKqjnA8eCVB?=
 =?us-ascii?Q?VbbEqSsQMnQQtd7T/DC+N34w8NkK8RM5NmLen9ljS9L2VXIz79WiKz4c8npM?=
 =?us-ascii?Q?zL+ZdYS+boFxg/+lp+VntsRANxxWulFD9wmhTFnVl71HyZRT+TzO2i+rTtwt?=
 =?us-ascii?Q?RKlUnbmaCcuJZ+JtPTvSKVcv2bKkmdvbzEfzqpO2NZjeRlaAAfgtSPZHHCqn?=
 =?us-ascii?Q?7Ry3mz5Jvy1+h+7IIDb4PRHENKXm1jhK3jr0OIlKo1uf53bslYlEIDScUatB?=
 =?us-ascii?Q?kTrqTVROxG+HlfO6THHKzZ5YJ9FejXRFALIXvrtppL/v7O751z7TOADJFNK2?=
 =?us-ascii?Q?nQgHWCikTr5cbTPMFno20e2IbWeG0AnMdw3w9/vNXv1EGxDUaEo4udr7y2C9?=
 =?us-ascii?Q?ob9YUpZEQA/q3AZoptjQGtvsA7YMWpt+H071b5YQdPDpe+01d6EJ/4xl8q2y?=
 =?us-ascii?Q?OHkd9RFYC5g4wEkacbD4uoAEuRhHAsymNgtf1HUn3C245/Xy1nCkTC68ooON?=
 =?us-ascii?Q?buHgFZAnFtgdJ8eid7Qo0qe0P6u6ActXLlE1tcJzg+FHrD9nfPJiGr8YOaee?=
 =?us-ascii?Q?4gbPnEzNs4Ka/40QuhL7fqlwCc0Clplro45Y6a27j2Tr/KQeOV0ANdZRTlBb?=
 =?us-ascii?Q?+ofnI8Dds8+L73zldJ3etucOR6LxsPLEy+SDIxdoPXIwOs591OvIy2kxjK+k?=
 =?us-ascii?Q?uKL2OfcHDtFFxEisjiK988Lhx/f2F+MBdzqdwzBDV1lVslu1VtkhrlrCT9y1?=
 =?us-ascii?Q?UWfnKPdHvewLRf/d35gM2ueYWQnK02MlhY8hkk/Kx2/AzVvUGgeXMCGPV179?=
 =?us-ascii?Q?aoA+iz6L11NJ2jTJK9j0AGVeiEoSZVXSufPZNuoMNkB7iJ8RjJnELuvd5QD9?=
 =?us-ascii?Q?DkKlHDkvlpSrQvDJoUV3gQjyE/wUJ506Vit5iKECidt2rmJ+WKrOrOF1aAYi?=
 =?us-ascii?Q?LM5lL0GGR9qVbfdD09ecsaLP6L0cjtMFbW+0kihE3DpqxwRJpVSmrXVcz7Vs?=
 =?us-ascii?Q?UM6ZBwtTHKefNGabkeV9ZavXttlyP93BKw1nrqHWbzsfJ/hTxaXPHvGioRAK?=
 =?us-ascii?Q?SA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d976d844-fc85-44ae-7fe5-08db886cc3a1
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 15:28:12.8097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XRLhRglXb8qVudbid2F63NbSRZkowoh8YjWGJRzneDkOdb/YOxyrMAUUd7+mQ5uID8AzXVx9PUaHWrOYfOs9dxaG/uXgocQkuyaBHf/wwcM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7248
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/8] drm/i915: Eliminate IS_MTL_GRAPHICS_STEP
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

On Wed, Jul 19, 2023 at 09:01:58AM +0100, Tvrtko Ursulin wrote:
> 
> On 18/07/2023 23:27, Matt Roper wrote:
> > Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
> > of these workarounds are actually tied to MTL as a platform; they only
> > relate to the Xe_LPG graphics IP, regardless of what platform it appears
> > in.  At the moment MTL is the only platform that uses Xe_LPG with IP
> > versions 12.70 and 12.71, but we can't count on this being true in the
> > future.  Switch these to use a new IS_GFX_IPVER_STEP() macro instead
> > that is purely based on IP version.  IS_GFX_IPVER_STEP() is also
> > GT-based rather than device-based, which will help prevent mistakes
> > where we accidentally try to apply Xe_LPG graphics workarounds to the
> > Xe_LPM+ media GT.
> > 
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >   .../drm/i915/display/skl_universal_plane.c    |  4 +-
> >   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  9 ++--
> >   drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
> >   drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
> >   drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
> >   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 ++++++++++---------
> >   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
> >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
> >   drivers/gpu/drm/i915/i915_drv.h               |  8 +--
> >   9 files changed, 46 insertions(+), 41 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 6b01a0b68b97..c13e64faaaad 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> >   				 enum pipe pipe, enum plane_id plane_id)
> >   {
> >   	/* Wa_14017240301 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_IPVER_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
> 
> Do we really need/want a combined/long macro like this and not split it out
> to something like a more readable IS_GFX_IPVER && IS_<...>_STEP?
> 
> Adding Jani since we were discussing this direction over the past few weeks.
> 
> Hm.. macro trickery for stepping ranges to make it more compact? Like making
> the STEP_ prefix be prepended by the macro. Don't know..

One other thing that we could consider if some of these things are
getting too long is eliminating IP_VER() and using the "versionx100"
scheme that Xe and Mesa use.  On one hand that makes me a bit nervous
since GMD_ID's release number is 8 bits and could go past 100 on future
platforms, which would break the scheme (and we're already up to .71 on
MTL).  But on the other hand it does make the code simpler and shorter
and we can always wait and see if we ever actually get a platform with
version X.100 or something before we really worry about what to do
there.

The other point in favor of switching to versionx100 is that we wouldn't
have an inconsistent mix of both IP_VER() and verx100 in the Xe driver
where the display code comes from i915 but the non-display code is
separate.


Matt

> 
> Regards,
> 
> Tvrtko
> 
> >   		return false;
> >   	/* Wa_22011186057 */
> > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > index 23857cc08eca..c1af91d908e5 100644
> > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
> >   static int mtl_dummy_pipe_control(struct i915_request *rq)
> >   {
> >   	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GFX_IPVER_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> >   		u32 *cs;
> >   		/* dummy PIPE_CONTROL + depth flush */
> > @@ -755,6 +755,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
> >   u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >   {
> >   	struct drm_i915_private *i915 = rq->engine->i915;
> > +	struct intel_gt *gt = rq->engine->gt;
> >   	u32 flags = (PIPE_CONTROL_CS_STALL |
> >   		     PIPE_CONTROL_TLB_INVALIDATE |
> >   		     PIPE_CONTROL_TILE_CACHE_FLUSH |
> > @@ -765,8 +766,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> >   		     PIPE_CONTROL_FLUSH_ENABLE);
> >   	/* Wa_14016712196 */
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> >   		/* dummy PIPE_CONTROL + depth flush */
> >   		cs = gen12_emit_pipe_control(cs, 0,
> >   					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > index 0b414eae1683..41140eb86051 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> >   		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
> >   	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> >   		/* Wa_14016747170 */
> > -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +		if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +		    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> >   			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> >   					     intel_uncore_read(gt->uncore,
> >   							       MTL_GT_ACTIVITY_FACTOR));
> > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > index 1b710102390b..4fefa67d285f 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > @@ -1377,8 +1377,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
> >   					      cs, GEN12_GFX_CCS_AUX_NV);
> >   	/* Wa_16014892111 */
> > -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_IPVER_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >   	    IS_DG2(ce->engine->i915))
> >   		cs = dg2_emit_draw_watermark_setting(cs);
> > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > index 1ff7b42521c9..403f0d9caadf 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > @@ -1641,7 +1641,7 @@ bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
> >   	if (GRAPHICS_VER(gt->i915) < 11)
> >   		return false;
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0))
> >   		return true;
> >   	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 2a5bf50962ad..785453b2e95e 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -808,24 +808,24 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> >   static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> >   				     struct i915_wa_list *wal)
> >   {
> > -	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> >   	dg2_ctx_gt_tuning_init(engine, wal);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
> >   		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
> >   }
> >   static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
> >   				       struct i915_wa_list *wal)
> >   {
> > -	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> >   	xelpg_ctx_gt_tuning_init(engine, wal);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> >   		/* Wa_14014947963 */
> >   		wa_masked_field_set(wal, VF_PREEMPTION,
> >   				    PREEMPTION_VERTEX_COUNT, 0x4000);
> > @@ -1746,8 +1746,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >   	/* Wa_22016670082 */
> >   	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> >   		/* Wa_14014830051 */
> >   		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> > @@ -2424,16 +2424,17 @@ static void
> >   rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> >   		/* Wa_22014600077 */
> >   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >   				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >   		/* Wa_1509727124 */
> > @@ -2443,7 +2444,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)) {
> >   		/* Wa_22012856258 */
> >   		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> >   				 GEN12_DISABLE_READ_SUPPRESSION);
> > @@ -3008,8 +3009,9 @@ static void
> >   general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >   {
> >   	struct drm_i915_private *i915 = engine->i915;
> > +	struct intel_gt *gt = engine->gt;
> > -	add_render_compute_tuning_settings(engine->gt, wal);
> > +	add_render_compute_tuning_settings(gt, wal);
> >   	if (GRAPHICS_VER(i915) >= 11) {
> >   		/* This is not a Wa (although referred to as
> > @@ -3030,13 +3032,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
> >   		/* Wa_14017856879 */
> >   		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> >   		/*
> >   		 * Wa_14017066071
> >   		 * Wa_14017654203
> > @@ -3044,13 +3046,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> >   				 MTL_DISABLE_SAMPLER_SC_OOO);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> >   		/* Wa_22015279794 */
> >   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> >   				 DISABLE_PREFETCH_INTO_IC);
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> >   		/* Wa_22013037850 */
> > @@ -3058,16 +3060,16 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >   				DISABLE_128B_EVICTION_COMMAND_UDW);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >   	    IS_PONTEVECCHIO(i915) ||
> >   	    IS_DG2(i915)) {
> >   		/* Wa_22014226127 */
> >   		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> >   	}
> > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> >   	    IS_DG2(i915)) {
> >   		/* Wa_18017747507 */
> >   		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > index 1e532981f74e..300b968e6de8 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> >   		flags |= GUC_WA_GAM_CREDITS;
> >   	/* Wa_14014475959 */
> > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> >   	    IS_DG2(gt->i915))
> >   		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
> > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > index 1bd5d8f7c40b..3b159069dbc4 100644
> > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > @@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> >   	/* Wa_14014475959:dg2 */
> >   	if (engine->class == COMPUTE_CLASS)
> > -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > +		if (IS_GFX_IPVER_STEP(engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> >   		    IS_DG2(engine->i915))
> >   			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index f38c93d82c56..d03710c923c8 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -692,9 +692,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >   #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
> >   	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
> > -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > -	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > +#define IS_GFX_IPVER_STEP(__gt, ipver, since, until) \
> > +	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
> > +	 (__gt->type != GT_MEDIA && \
> > +	  GRAPHICS_VER_FULL(__gt->i915) == ipver && \
> > +	  IS_GRAPHICS_STEP(__gt->i915, since, until)))
> >   #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> >   	(IS_METEORLAKE(__i915) && \

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
