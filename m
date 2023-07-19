Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A38C875A28D
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jul 2023 00:55:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4A110E525;
	Wed, 19 Jul 2023 22:55:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A39E10E130
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jul 2023 22:55:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689807345; x=1721343345;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QpSNQ4HtlUr5Z+t+QVt2T89XI+MwgcMV0iFYENdhX7I=;
 b=btoy1Ph7UL11iH9l08xUhezJ5yXP4LkWxUwQq3qFnhRIhGYYVt1+ohNl
 witiaEenSOHi9qVmLfn5A79tZNAcmY3xW0WxkOmk+ugDJ2rTz79VGxHrU
 RKGYRfhG7LBHOxRbkGvrwRfu2bMcAbz/sVMxcANCymnBsrmXQePBB7ae7
 ISJ4m85Xw8S0r03QGWhytP9Dfhq7keX3a3TwIrxN8wWDKDeN2VdmfmVdP
 pqtcRFi1At6UF+g7z4QhwGwzECxgUkxXq7z2rlWSm1mxEQS4YQdpCV921
 OwbpIIpj4ZkPMyGOWFZn5TMuhXac1hB4POnpFEjb4nJo+mTin1+DlAmEA w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="397451739"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="397451739"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 15:54:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="867638254"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 19 Jul 2023 15:54:37 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 15:54:36 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 15:54:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 15:54:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 15:54:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=exKFBxCCXAJEFrjj4oHJyFA4L1TJo4SJwWMwZvOHJWMrUXT6QGlVpj1oOuog0J+0KZAPkrHhl5IGSt6H+2MW2cniYzEu4upn+t5lznAQoYAyiNf4mDnOmYlAqmYsyManEyf/Scme86DAPO6Ir1IbHSA/IuVeLKZHSxtpkqkrMuxzShdybhgtA8y2DFaxmPwO2R4SLAE7BNp3tYvSG/GjcNokMNaynoOV46sDNd0Zp8cCkwIXcEd7EYQ6eD4QHsLK+AyWWcUkjo3H3XGiiAFycG7XEwGkTt0o+gO8GV0SjsKe6ylZiwLKbsRCa44scRrqBI21TJ4Z4DJ/ULhB8gCQfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MjXOczGjyr1STlg4TQFIfb3Sa81CkhWT2JChlYQDDSE=;
 b=c5oMCx2R3f07QtaMypSDEGOjhTtJ+sWftgW92FPVUXqtOFURZN8OL8RsoFaisXOSlGtuLdklrPM5wUFhDwGEg3MxfcvCZIZlAx7CiJ0NkGnlRBMVjMD7slrVBhiH+zyhy/0rI9sd9WCQ0bmlc0wMqC1XECj3pT22gPSsvaFtU3Hpu4CvNTSeNZ6wWAPFCvc2jJ+ufs/PFUJwYJxZ4AN0upFltGD9nSPHsySqzBDbB83snw/g8bjJn6t4V0jmvQSeIdl/BaPziiBYgffl2JgV+nEACsKXRbpaIqL0ryr33n0Gc24jcMzjAGCPy3yalydPtQ7Sc2E7aYWfSfZsLP0qRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB6237.namprd11.prod.outlook.com (2603:10b6:8:a9::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6588.31; Wed, 19 Jul 2023 22:54:27 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6609.024; Wed, 19 Jul 2023
 22:54:27 +0000
Date: Wed, 19 Jul 2023 15:54:24 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Message-ID: <20230719225424.GS138014@mdroper-desk1.amr.corp.intel.com>
References: <20230718222753.1075713-10-matthew.d.roper@intel.com>
 <20230718222753.1075713-13-matthew.d.roper@intel.com>
 <76ec5ac1-f297-0634-0ec8-11899151deec@linux.intel.com>
 <20230719152809.GO138014@mdroper-desk1.amr.corp.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230719152809.GO138014@mdroper-desk1.amr.corp.intel.com>
X-ClientProxiedBy: SJ0PR05CA0152.namprd05.prod.outlook.com
 (2603:10b6:a03:339::7) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB6237:EE_
X-MS-Office365-Filtering-Correlation-Id: e5c4d944-0d70-4d1f-6502-08db88ab1aa5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6jFWexCp/vzxldKallvTtlnzL8G3J1Q663JtsUWUiTG2f1AIZH5UzUFTBAwG95zmOnI/GO3DpjJfW11fBk1bjQrLftmngljIFxmY+cfu8wW3OX24FGcFZaVM/32a/4XHhXdPbl85par4sdXtPG8Dvg2x59I91rBU3SP56vCBpdKfnI0JY2yRE2nHN19YRb5jHxHqgvMRqIY9OkF1O4chUgSJyQQlIPa2Z9euMd1Z61s4A4otlj0B6xkCEJhsLFuLIhx2ozrCMqLT+WLYz4saLNGvtjClHq+ObxHjr9RQm24rxrLyNuzqHi6dlWcHHK3hhiHu11BmVbWEjCYL8FF9WrD2HpGuO9g0J44xIYXYszOSxPEufA+pKRAU5L4/HKVmOgHbkQLYpmeXp+VIMOum9cOC5Z/B8ozxvYD1LzFZVHn/l+bZrpz30sihMnq8XmfFZRwtPsourfdBEoWRu4aIiblyptq6KPfAc4JJE7r/2EEV+yv27iKP8bHRP6geHMJLWN3YaNn4bc0dy5ZBmfYbsxlakefexSeV0DfmYuzyVS5TAP9K2zEkI4o/5svzkJ+8
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(366004)(396003)(346002)(376002)(39860400002)(451199021)(5660300002)(316002)(2906002)(478600001)(66556008)(66946007)(66476007)(6916009)(4326008)(8936002)(30864003)(8676002)(6666004)(41300700001)(6486002)(6512007)(1076003)(6506007)(53546011)(26005)(38100700002)(186003)(82960400001)(33656002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qkV7dDugmrYx7SNbyMWRdUBscp9Tj+/uobphsJAB9AcIuL2NCinVj2S29Ey0?=
 =?us-ascii?Q?m8tYC5AY5LRPy0+ZJw4Vf9V0kpKLsayYSiSNzuYssT1SINhgv2w6+n04erbZ?=
 =?us-ascii?Q?7aR4NvKBF3qpkQEEPeV+TYzIKMOvuX7CAzgAjRcx1dNEFpMfF3yvi9ytSgTJ?=
 =?us-ascii?Q?2dZKuU/nL0DvGqFZ34TvfQyta3w3Bpz03fsYe5px5VHpAoMoRmCTy3hsUC67?=
 =?us-ascii?Q?uS2ujR1xlsTEbvYWA4CYvgjZv3SJu2EmSdSP2/JG91xcvuzOGp450SJLN/PO?=
 =?us-ascii?Q?ZeRwvFwndCjj3uAbXgoRvX8K9JhpsPop6UPpxSRSHJE7ZM+Nk3oWNakTG4Fl?=
 =?us-ascii?Q?UDuWiXYMdcXtOyWGQWhN3SPzc25RDPtJkygrzxwK2KD6a7IlerN/VXeExZbY?=
 =?us-ascii?Q?mVKJl3NHo44VnRFC1aunzX0sWZhorcTYSbXtNw8yPFtQoiL8VFW249uob4TH?=
 =?us-ascii?Q?tYmNC/cbbmQU+u6H5YWWtAkUp6fen+PrI5cWVdqw0UHK8tQtuG6VcCflL7h6?=
 =?us-ascii?Q?vXNC71Yu18xK+Fy/m2it8p0LtxlU1WDYw94/5nH2156r+cU08hGMQD7Fv0pw?=
 =?us-ascii?Q?69V6kBh8WF/NVKpRoIAUmprOKHDaEi+1wJnlvbwALmTei6/NJ24o2ezra/qu?=
 =?us-ascii?Q?SZ8jW7d+lgLieqf/TMN8expnU7jP05wexhWiGwX459xxg/240OJI5BDM/vue?=
 =?us-ascii?Q?Yn2XRM2HxfdXmBvQfXbiIl9n47ojXW38VdXuw+57h6a56fowFlp+AFWrtXGg?=
 =?us-ascii?Q?/4yvp3kbqrNoFU8X022pryuYJ5Dn1U//6DRB8PF/VY5vSf/1YEH0XiVPn0jq?=
 =?us-ascii?Q?Od9SwGvT2fsayM+pIYgoW0mmNoQXKa+wqvYcozLkcWGFMRsCTKLe+8N4joou?=
 =?us-ascii?Q?pnC8VS7RXS+IWIU7T+mhw2d2PVuqI5NerUKxTKxKgeK76+qK4mlxma7BAAbw?=
 =?us-ascii?Q?XqCs5pVNyjn+m29gzYvfM2fwBR5zYUQt8L2TZDrZOvn54OMOROtsBADnFx2f?=
 =?us-ascii?Q?wuWAsJOf+w6pu2635ojp8tjcp3vn4xWklpQPJLqVSYt30vBOB9Q7y+0xvCDa?=
 =?us-ascii?Q?FsAqCrqPVBCe7faHE7ITak4p5ll4RTv5ac4m1mx+6Jfg7M7gN38NaC7l3NcE?=
 =?us-ascii?Q?S4hIsL9z/RhsoZHPK82MUstsATkIywAxYw83kx+ZLMs/8wupzd741+yJkDdJ?=
 =?us-ascii?Q?KJ/eI8MZPmuch/AYO7SfgGAwhbs7ikt5KO6VAqO5bM40pzNXQLvLkSZsNp8m?=
 =?us-ascii?Q?ae5l8aXobj2UwkFH1B9h1y6q3oWo4Vg6K+j0FIGIXzGr2xBvmIuUtD+Bwnwm?=
 =?us-ascii?Q?i1Oqkrbr7FOszWcfLZGoBYa8ezEvbN3VnSsdr532bI7h+mpqNr2JlBi23Ffg?=
 =?us-ascii?Q?lO6XeE0WSznaDWOofKshONBa/jC2/jCggf2n4I4nPXWgr0Ei20gY+w01jFeb?=
 =?us-ascii?Q?XMpzfXXOYLOD+jFY7gJw0PX4uSi7Ovus3KYID4sXEMUl0SeaHA+mt0G+eJLv?=
 =?us-ascii?Q?T6sBaH9HLAg531KA7r2kp6ozSJ2Pokqs8DxVO3jvWdfeJkS7tWMgxx+lk952?=
 =?us-ascii?Q?Y82SZZnJ5wZ2IDIX6EZ7tzOmhGwA4SZofkQNI7ALh5lgY6/ITf1lP9Z06V4o?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e5c4d944-0d70-4d1f-6502-08db88ab1aa5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jul 2023 22:54:27.3190 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ovUe6WN+2GznRDqkLoQ6rbUkgBFqxj3t1QD55j8Kdu+W5EGIZA5QOQo0fxmzfux23A2gzIkvDn2wSRvNuZ22ALDV/ScQpS4w3Rp8mB5ci+g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6237
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

On Wed, Jul 19, 2023 at 08:28:12AM -0700, Matt Roper wrote:
> On Wed, Jul 19, 2023 at 09:01:58AM +0100, Tvrtko Ursulin wrote:
> > 
> > On 18/07/2023 23:27, Matt Roper wrote:
> > > Several workarounds are guarded by IS_MTL_GRAPHICS_STEP.  However none
> > > of these workarounds are actually tied to MTL as a platform; they only
> > > relate to the Xe_LPG graphics IP, regardless of what platform it appears
> > > in.  At the moment MTL is the only platform that uses Xe_LPG with IP
> > > versions 12.70 and 12.71, but we can't count on this being true in the
> > > future.  Switch these to use a new IS_GFX_IPVER_STEP() macro instead
> > > that is purely based on IP version.  IS_GFX_IPVER_STEP() is also
> > > GT-based rather than device-based, which will help prevent mistakes
> > > where we accidentally try to apply Xe_LPG graphics workarounds to the
> > > Xe_LPM+ media GT.
> > > 
> > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > ---
> > >   .../drm/i915/display/skl_universal_plane.c    |  4 +-
> > >   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  9 ++--
> > >   drivers/gpu/drm/i915/gt/intel_gt_mcr.c        |  4 +-
> > >   drivers/gpu/drm/i915/gt/intel_lrc.c           |  4 +-
> > >   drivers/gpu/drm/i915/gt/intel_reset.c         |  2 +-
> > >   drivers/gpu/drm/i915/gt/intel_workarounds.c   | 52 ++++++++++---------
> > >   drivers/gpu/drm/i915/gt/uc/intel_guc.c        |  2 +-
> > >   .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
> > >   drivers/gpu/drm/i915/i915_drv.h               |  8 +--
> > >   9 files changed, 46 insertions(+), 41 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > index 6b01a0b68b97..c13e64faaaad 100644
> > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > @@ -2169,8 +2169,8 @@ static bool skl_plane_has_rc_ccs(struct drm_i915_private *i915,
> > >   				 enum pipe pipe, enum plane_id plane_id)
> > >   {
> > >   	/* Wa_14017240301 */
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > > +	if (IS_GFX_IPVER_STEP(to_gt(i915), IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(to_gt(i915), IP_VER(12, 71), STEP_A0, STEP_B0))
> > 
> > Do we really need/want a combined/long macro like this and not split it out
> > to something like a more readable IS_GFX_IPVER && IS_<...>_STEP?

On this part, wouldn't that make it less readable?  Right now these
conditions are an ||'d list of cases for which the workaround should
apply (relating to various entries in the workaround database).  If we
split the version, stepping, and GT checks out into separate macros
we'll get more complex conditions that are a mix of && and ||.  We can
try that, but my gut feeling is that it's going to be more error-prone
since we'll have to be really careful to always get the parenentheses in
the right places.  Also many people (myself included) are already having
some trouble adjusting to the new idea of GT (primary vs media) being an
important factor that needs to be considered in the workaround
condition; one of the goals with these new macros was to make sure that
got included in the macro so that it couldn't be omitted by accident.


Matt

> > 
> > Adding Jani since we were discussing this direction over the past few weeks.
> > 
> > Hm.. macro trickery for stepping ranges to make it more compact? Like making
> > the STEP_ prefix be prepended by the macro. Don't know..
> 
> One other thing that we could consider if some of these things are
> getting too long is eliminating IP_VER() and using the "versionx100"
> scheme that Xe and Mesa use.  On one hand that makes me a bit nervous
> since GMD_ID's release number is 8 bits and could go past 100 on future
> platforms, which would break the scheme (and we're already up to .71 on
> MTL).  But on the other hand it does make the code simpler and shorter
> and we can always wait and see if we ever actually get a platform with
> version X.100 or something before we really worry about what to do
> there.
> 
> The other point in favor of switching to versionx100 is that we wouldn't
> have an inconsistent mix of both IP_VER() and verx100 in the Xe driver
> where the display code comes from i915 but the non-display code is
> separate.
> 
> 
> Matt
> 
> > 
> > Regards,
> > 
> > Tvrtko
> > 
> > >   		return false;
> > >   	/* Wa_22011186057 */
> > > diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > > index 23857cc08eca..c1af91d908e5 100644
> > > --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > > +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> > > @@ -180,8 +180,8 @@ u32 *gen12_emit_aux_table_inv(struct intel_gt *gt, u32 *cs, const i915_reg_t inv
> > >   static int mtl_dummy_pipe_control(struct i915_request *rq)
> > >   {
> > >   	/* Wa_14016712196 */
> > > -	if (IS_MTL_GRAPHICS_STEP(rq->engine->i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(rq->engine->i915, P, STEP_A0, STEP_B0)) {
> > > +	if (IS_GFX_IPVER_STEP(rq->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(rq->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> > >   		u32 *cs;
> > >   		/* dummy PIPE_CONTROL + depth flush */
> > > @@ -755,6 +755,7 @@ u32 *gen12_emit_fini_breadcrumb_xcs(struct i915_request *rq, u32 *cs)
> > >   u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> > >   {
> > >   	struct drm_i915_private *i915 = rq->engine->i915;
> > > +	struct intel_gt *gt = rq->engine->gt;
> > >   	u32 flags = (PIPE_CONTROL_CS_STALL |
> > >   		     PIPE_CONTROL_TLB_INVALIDATE |
> > >   		     PIPE_CONTROL_TILE_CACHE_FLUSH |
> > > @@ -765,8 +766,8 @@ u32 *gen12_emit_fini_breadcrumb_rcs(struct i915_request *rq, u32 *cs)
> > >   		     PIPE_CONTROL_FLUSH_ENABLE);
> > >   	/* Wa_14016712196 */
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> > >   		/* dummy PIPE_CONTROL + depth flush */
> > >   		cs = gen12_emit_pipe_control(cs, 0,
> > >   					     PIPE_CONTROL_DEPTH_CACHE_FLUSH, 0);
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > > index 0b414eae1683..41140eb86051 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_gt_mcr.c
> > > @@ -166,8 +166,8 @@ void intel_gt_mcr_init(struct intel_gt *gt)
> > >   		gt->steering_table[OADDRM] = xelpmp_oaddrm_steering_table;
> > >   	} else if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 70)) {
> > >   		/* Wa_14016747170 */
> > > -		if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -		    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > > +		if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +		    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> > >   			fuse = REG_FIELD_GET(MTL_GT_L3_EXC_MASK,
> > >   					     intel_uncore_read(gt->uncore,
> > >   							       MTL_GT_ACTIVITY_FACTOR));
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > index 1b710102390b..4fefa67d285f 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> > > @@ -1377,8 +1377,8 @@ gen12_emit_indirect_ctx_rcs(const struct intel_context *ce, u32 *cs)
> > >   					      cs, GEN12_GFX_CCS_AUX_NV);
> > >   	/* Wa_16014892111 */
> > > -	if (IS_MTL_GRAPHICS_STEP(ce->engine->i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(ce->engine->i915, P, STEP_A0, STEP_B0) ||
> > > +	if (IS_GFX_IPVER_STEP(ce->engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(ce->engine->gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> > >   	    IS_DG2(ce->engine->i915))
> > >   		cs = dg2_emit_draw_watermark_setting(cs);
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> > > index 1ff7b42521c9..403f0d9caadf 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> > > @@ -1641,7 +1641,7 @@ bool intel_engine_reset_needs_wa_22011802037(struct intel_gt *gt)
> > >   	if (GRAPHICS_VER(gt->i915) < 11)
> > >   		return false;
> > > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0))
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0))
> > >   		return true;
> > >   	if (GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 70))
> > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > index 2a5bf50962ad..785453b2e95e 100644
> > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > @@ -808,24 +808,24 @@ static void dg2_ctx_workarounds_init(struct intel_engine_cs *engine,
> > >   static void xelpg_ctx_gt_tuning_init(struct intel_engine_cs *engine,
> > >   				     struct i915_wa_list *wal)
> > >   {
> > > -	struct drm_i915_private *i915 = engine->i915;
> > > +	struct intel_gt *gt = engine->gt;
> > >   	dg2_ctx_gt_tuning_init(engine, wal);
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
> > >   		wa_add(wal, DRAW_WATERMARK, VERT_WM_VAL, 0x3FF, 0, false);
> > >   }
> > >   static void xelpg_ctx_workarounds_init(struct intel_engine_cs *engine,
> > >   				       struct i915_wa_list *wal)
> > >   {
> > > -	struct drm_i915_private *i915 = engine->i915;
> > > +	struct intel_gt *gt = engine->gt;
> > >   	xelpg_ctx_gt_tuning_init(engine, wal);
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> > >   		/* Wa_14014947963 */
> > >   		wa_masked_field_set(wal, VF_PREEMPTION,
> > >   				    PREEMPTION_VERTEX_COUNT, 0x4000);
> > > @@ -1746,8 +1746,8 @@ xelpg_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > >   	/* Wa_22016670082 */
> > >   	wa_write_or(wal, GEN12_SQCNT1, GEN12_STRICT_RAR_ENABLE);
> > > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(gt->i915, P, STEP_A0, STEP_B0)) {
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> > >   		/* Wa_14014830051 */
> > >   		wa_mcr_write_clr(wal, SARB_CHICKEN1, COMP_CKN_IN);
> > > @@ -2424,16 +2424,17 @@ static void
> > >   rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >   {
> > >   	struct drm_i915_private *i915 = engine->i915;
> > > +	struct intel_gt *gt = engine->gt;
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0)) {
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0)) {
> > >   		/* Wa_22014600077 */
> > >   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> > >   				 ENABLE_EU_COUNT_FOR_TDL_FLUSH);
> > >   	}
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> > >   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > >   		/* Wa_1509727124 */
> > > @@ -2443,7 +2444,7 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >   	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0)) {
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0)) {
> > >   		/* Wa_22012856258 */
> > >   		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN2,
> > >   				 GEN12_DISABLE_READ_SUPPRESSION);
> > > @@ -3008,8 +3009,9 @@ static void
> > >   general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > >   {
> > >   	struct drm_i915_private *i915 = engine->i915;
> > > +	struct intel_gt *gt = engine->gt;
> > > -	add_render_compute_tuning_settings(engine->gt, wal);
> > > +	add_render_compute_tuning_settings(gt, wal);
> > >   	if (GRAPHICS_VER(i915) >= 11) {
> > >   		/* This is not a Wa (although referred to as
> > > @@ -3030,13 +3032,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> > >   				 GEN11_INDIRECT_STATE_BASE_ADDR_OVERRIDE);
> > >   	}
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_B0, STEP_FOREVER) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_B0, STEP_FOREVER))
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_B0, STEP_FOREVER) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_B0, STEP_FOREVER))
> > >   		/* Wa_14017856879 */
> > >   		wa_mcr_masked_en(wal, GEN9_ROW_CHICKEN3, MTL_DISABLE_FIX_FOR_EOT_FLUSH);
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> > >   		/*
> > >   		 * Wa_14017066071
> > >   		 * Wa_14017654203
> > > @@ -3044,13 +3046,13 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> > >   		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> > >   				 MTL_DISABLE_SAMPLER_SC_OOO);
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0))
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0))
> > >   		/* Wa_22015279794 */
> > >   		wa_mcr_masked_en(wal, GEN10_CACHE_MODE_SS,
> > >   				 DISABLE_PREFETCH_INTO_IC);
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> > >   	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > >   	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > >   		/* Wa_22013037850 */
> > > @@ -3058,16 +3060,16 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> > >   				DISABLE_128B_EVICTION_COMMAND_UDW);
> > >   	}
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> > >   	    IS_PONTEVECCHIO(i915) ||
> > >   	    IS_DG2(i915)) {
> > >   		/* Wa_22014226127 */
> > >   		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0, DISABLE_D8_D16_COASLESCE);
> > >   	}
> > > -	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > > -	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > > +	    IS_GFX_IPVER_STEP(gt, IP_VER(12, 71), STEP_A0, STEP_B0) ||
> > >   	    IS_DG2(i915)) {
> > >   		/* Wa_18017747507 */
> > >   		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > index 1e532981f74e..300b968e6de8 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc.c
> > > @@ -277,7 +277,7 @@ static u32 guc_ctl_wa_flags(struct intel_guc *guc)
> > >   		flags |= GUC_WA_GAM_CREDITS;
> > >   	/* Wa_14014475959 */
> > > -	if (IS_MTL_GRAPHICS_STEP(gt->i915, M, STEP_A0, STEP_B0) ||
> > > +	if (IS_GFX_IPVER_STEP(gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > >   	    IS_DG2(gt->i915))
> > >   		flags |= GUC_WA_HOLD_CCS_SWITCHOUT;
> > > diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > index 1bd5d8f7c40b..3b159069dbc4 100644
> > > --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> > > @@ -4265,7 +4265,7 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
> > >   	/* Wa_14014475959:dg2 */
> > >   	if (engine->class == COMPUTE_CLASS)
> > > -		if (IS_MTL_GRAPHICS_STEP(engine->i915, M, STEP_A0, STEP_B0) ||
> > > +		if (IS_GFX_IPVER_STEP(engine->gt, IP_VER(12, 70), STEP_A0, STEP_B0) ||
> > >   		    IS_DG2(engine->i915))
> > >   			engine->flags |= I915_ENGINE_USES_WA_HOLD_CCS_SWITCHOUT;
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index f38c93d82c56..d03710c923c8 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -692,9 +692,11 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > >   #define IS_XEHPSDV_GRAPHICS_STEP(__i915, since, until) \
> > >   	(IS_XEHPSDV(__i915) && IS_GRAPHICS_STEP(__i915, since, until))
> > > -#define IS_MTL_GRAPHICS_STEP(__i915, variant, since, until) \
> > > -	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > > +#define IS_GFX_IPVER_STEP(__gt, ipver, since, until) \
> > > +	(BUILD_BUG_ON_ZERO(ipver < IP_VER(2, 0)) + \
> > > +	 (__gt->type != GT_MEDIA && \
> > > +	  GRAPHICS_VER_FULL(__gt->i915) == ipver && \
> > > +	  IS_GRAPHICS_STEP(__gt->i915, since, until)))
> > >   #define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> > >   	(IS_METEORLAKE(__i915) && \
> 
> -- 
> Matt Roper
> Graphics Software Engineer
> Linux GPU Platform Enablement
> Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
