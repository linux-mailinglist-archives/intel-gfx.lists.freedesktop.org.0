Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DF371681729
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 18:03:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8936410E013;
	Mon, 30 Jan 2023 17:03:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 33EF810E013
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 17:03:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675098205; x=1706634205;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ShVaa17Vcodl+mVw9ZUlVH27ZX0tDyQbgUxIBPmuXEg=;
 b=EiLEYfzvJ8KDfjQS4JUFsAoLOwetFdtdGKwk2PsBqyjf5KZbohkweDZ6
 AnRnZaxFVZ5Vx/4PpieK2YYrPjuyN7Xf1KPJdGwuyH/uBjEvX0Of5s8Vo
 G7SSb1l6IuzpdJc94TE4J86hu4Z5l7edbau/sgPRRu2HLeYYvPz+wbIpz
 OUZN0vVT3IBD84oQPW75ANZyaM5m9lJ/xEUwD6GNuwmzuO/PEmm/P4zB/
 gLHw7pS4esHO5sdzL44I15dwsdW0nHjCMEdPQfiEGAPPAUy9z+NNBdtZW
 /VcRLFBIUamSnGXLT9Mectd7X2qjX6arXdRS6CgR7JU1YefJErF8Nexxg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="311235972"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="311235972"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 09:03:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="664167125"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="664167125"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 30 Jan 2023 09:03:24 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:03:23 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 09:03:23 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 09:03:23 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 09:03:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hq0YcELV6GRKCDquAFCfhCC3OvqXljihsJVCEUXQhAVcmMG4xApsrJ7e2j8ZY4mcETXsiHstbBGo2v1gUXNXAQvlKVfqV9o+KWoKT/vR8J8Laj6KuHTPcIm//Pvgp9LHf0vifcQb01Gutf2u3VuMXGW1lj07OVzpJJe69Cp1KgzhmvPbqO6VFZqVE0kAIhyRNCR+FD99MTofX+FnCMRvqEzmSZY9gKmH5HLrRuj6Wsdp2+twoBAq1mLpezMQLRH/j5ihGGRph+Zel3KCkmbHSbZlV8WD74wdD3ksXHcZNsCd3w3OxZ2PsxxZCzcYxNUlfr1jbGGekSjNHqjRkLx40g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0OuM4ek97rGaV411N0W4ek+DflTl/5++0vzG2et4b/4=;
 b=EsdV1BkEWNda3X0P8f3mVS2qj9qehl/Bbrw9a7n8RKUvZdC16u6FEHa8GHZTgYS90sKkVNVsM1UtJ6uESBULIZfLoUu0VBWi/4soFrArGhaAqtdN5E1I7/R3mq2ONkpVr49GgzjvrrI5eD8MGnJvZ4/6sFM/yFXwJVTi4nkubOJdUaODRf989N0BV8hZy+6CMDaG4yav3M9Yvu2gA54mnEc97iC9eQx/wNL1kJadeZcupm1fxvMWosRmzwGoq5UlrBL4B37VhnHT3JaZShKATwdsYWd8e3f52HGLXqWVELS5cyRYB4CtTyBRHie00c7K3G5xZprSb9O62jENpZJlMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB5296.namprd11.prod.outlook.com (2603:10b6:5:393::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6043.36; Mon, 30 Jan 2023 17:03:21 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%5]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 17:03:21 +0000
Date: Mon, 30 Jan 2023 09:03:17 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y9f4VdvS1wwZ3if5@mdroper-desk1.amr.corp.intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-2-matthew.d.roper@intel.com>
 <Y9fmSL8b4+fzRGiJ@intel.com>
 <Y9fnl5Q845+QTFjm@mdroper-desk1.amr.corp.intel.com>
 <Y9fzgUmW3aWA36iX@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y9fzgUmW3aWA36iX@intel.com>
X-ClientProxiedBy: BYAPR06CA0023.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::36) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB5296:EE_
X-MS-Office365-Filtering-Correlation-Id: 672b06f9-0c03-4eec-2fac-08db02e3e39a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: unb1ugoiyy/MgxSGYSq9Zxq1MJvBMTx3iJhmCo27GwjkqI35Cvx7kQxJ9xwKPPZD4NjcimL8mjA7F1KtQiqIvoS6Hvw51cF6zUTkE1RWYrMS51uXXcSGfv2Nr0ick4lStbXXT/KkBU3xwl8J8nYUT9iH7GKqZba6Q8Donm034SSSbKVuNKBE//4M6+RjtAOlQ8MWBHbxjOnXPMUcw9lCXVt7B786Du8N+8J/1x3XPvYwQHOqH+KiZn3qKgjHKBzeHgaLHrOC0HAWOZOntrNSkTsZwAVI7ZWRGzoDoegK4PSaADNvGhU6ospFGbArCW9QN3qvZp5JZWAoeV5QIuCcEC2wQd1NzwJFyIwD81q9mEUe8AUSoN07F2V/JyUJEcGUAtoVXlKXmfvyBJ7idadkhu1U2AtBHGSy3B7Dm/bVjzxsMm9Feu6u+lVun7++qlSqvYnOphULG9tWdKGoxAeENRXhwyUd/QMtSOamBJih2L5NjbBDW62ZqLh7Ib5yVxl1+8JXWO5MMFe7zDGx/buF1A786YrQzZnCTq2mDoq8B8E8wFtCToQE7eLnoxy9KSZY6R71iJdbb3/jUmwIdZ616ajoyVqDG29jxL8njoVLt14qZ1v3hz+S2UAMRryNtXKLbVTy1tGyuBtrgSBUBoac2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(136003)(346002)(39860400002)(376002)(451199018)(30864003)(83380400001)(86362001)(38100700002)(82960400001)(2906002)(6506007)(26005)(6512007)(186003)(478600001)(6666004)(66476007)(66556008)(8676002)(6862004)(8936002)(4326008)(41300700001)(66946007)(6486002)(5660300002)(6636002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1Y/Ofo6UU8GuP00INTdBRtzedXdhCQhznRMup7xOfKcF7hPTb8wYX00fsEEL?=
 =?us-ascii?Q?NZdWMxKET9fv5hkeVNNG5Mdo+zhYbsnhjVdNz0nMsFjOmg4AM7iXWN5ZtPfb?=
 =?us-ascii?Q?t76Hw3LTiBVV1fuoNJRQoGp8cEe+rXto4vUgIg2O70BuAUp9+0iF2DpKLNWR?=
 =?us-ascii?Q?Mf7CAPNx2s40fnoW8JzNZv6Sczf5yKvsn7K+Khfu/GiueviRY0JpiG2uljTz?=
 =?us-ascii?Q?OodGzsMI3MLB3xaq1ioOaMhjDLZqwyRCcrXa4iFX7kVTrsBS8QeFn+vz3KWp?=
 =?us-ascii?Q?OqQQZVBwv+ZiF7mSrw1X59KTA1jGqJkTTrFDbRYok4tq0ZxGW7SERABn54gT?=
 =?us-ascii?Q?jf3aczbACEi/PeLKn+CUCNFtOicWzVJBXnSceoJzREgqwOKlzZgO5O8ala4E?=
 =?us-ascii?Q?AmnHd6dPJbdSFdTljeLzhvViwdCy2FDrGZiWj6rAn21YYGo1+nIEG9YOHJN/?=
 =?us-ascii?Q?uipgdkbGH4/8qyTW/sfOrmEv0eccHygjHtAdoPw5+4h86UE584bc4ERI3muF?=
 =?us-ascii?Q?lZ+31FAm/jTt1pVBWE+mX6nrzM/Oj4WFJTQ5sQ5QZ1EsXCHyNyw859mC63Op?=
 =?us-ascii?Q?S+Kx3cFBDc/49jQjEmrYp58x+cjUAqGrIWNBUTjNUQv6gRxpD9Idk9ftm4mi?=
 =?us-ascii?Q?3v03RggeuopNkymPe0NhmKAMExX+E1Tyt4F//yP+9ZQrzui+mPB3uTKThEx+?=
 =?us-ascii?Q?5OEewTfaEJu80i5DYEYMFWgX2ckcFCZklg9TNScaMV8uDPMEEG5YcvYvU78z?=
 =?us-ascii?Q?D6X8XGLpmfW1VzaZRyF94ZhY9YR1N+9U7MKkei4jszhUMPBKkcOHfZTNq+IA?=
 =?us-ascii?Q?ilN5sIXgzXvjxCbZRrpm5FAD7sBbwEV/32BQE5IhHQK0xzqzj1AiPRtS5He5?=
 =?us-ascii?Q?XFFSyjiY5SRJ55P2e1k4vGz9JQxOR9ksNTH0aaLeT1MDch6UPgNnx98Ashya?=
 =?us-ascii?Q?7OTgR4oTH8kyBFGU2D4sfustxqjGZVCbWntK8hQDAWJ5rQOdUCvZEgnHtjgp?=
 =?us-ascii?Q?eocT7alqEx+0bMLSGeP6S6xwCnzsGDPLzXb/N1hSrEYx35EtFOO7AQVVkpLA?=
 =?us-ascii?Q?S1rR/gxBcGyH4To9V+qolV0xmUwhSMOM0E2DLKqGegvN1PTQFaAEdahNXOIX?=
 =?us-ascii?Q?aajj6N5yOueJTh5DEJOxKtg9oKKaBBZFqYRiqIMhJhvcMK+wVrdMT+BXYkXL?=
 =?us-ascii?Q?NdhQthnLy3zHombS8nrv2i7dxeVxvw6eaVz10FmSoeKBnEbf7Z9m4/+MaXyL?=
 =?us-ascii?Q?t7LHOEPFev/DLsG4APE7KCEtc/X8OLyR+xxs7JuUkdJcXrAT6BXYvXa6bd7k?=
 =?us-ascii?Q?2P6zJ3WJPy2p8bfsa6Ei9k/Oau4qMPp/jZPM9b19k6a9X2ZicrQzBcCsk2+E?=
 =?us-ascii?Q?VUlkqvv2Xz97baGiDCIMESOOyyFAVTE6NlZDA5FedDTapqWtvJ7L9bRQKaNx?=
 =?us-ascii?Q?eIYNbbWiB5qewZ1XVRVmfPa/07lHGXsO6cN9LszZOx/T49DnoPR8qyaQQgtB?=
 =?us-ascii?Q?ksGlDJh6SAS7dCCPuqIpeTyTCADgB/7t6Jo0VrA992kpirb9ihQzHqB2E0jU?=
 =?us-ascii?Q?jbByRxo6692LOSjP/ybxiFizf6VivVbszcmN5DpJp+xrc7hl2mVElQCEfRV5?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 672b06f9-0c03-4eec-2fac-08db02e3e39a
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 17:03:20.4140 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MnTLYrJoiXX7M5PRSWnKkHcFPGi40WSXUyg8vnvRbrEAKfCQ0sDtfxooPaWb1RHUWHlzf9D6XmtmsXLO4df6SOEzT58PDYwAmkrWyr4z0WY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5296
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

On Mon, Jan 30, 2023 at 11:42:41AM -0500, Rodrigo Vivi wrote:
> On Mon, Jan 30, 2023 at 07:51:51AM -0800, Matt Roper wrote:
> > On Mon, Jan 30, 2023 at 10:46:16AM -0500, Rodrigo Vivi wrote:
> > > On Fri, Jan 27, 2023 at 02:43:11PM -0800, Matt Roper wrote:
> > > > Several post-TGL platforms have been brought up now, so we're well past
> > > > the point where we usually drop the workarounds that are only applicable
> > > > to internal/pre-production hardware.
> > > > 
> > > > Production TGL hardware always has display stepping C0 or later and GT
> > > > stepping B0 or later (this is true for both the original TGL and the U/Y
> > > > subplatform).
> > > > 
> > > > Bspec 44455
> > > > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > > > ---
> > > >  .../drm/i915/display/intel_display_power.c    |  5 +--
> > > >  drivers/gpu/drm/i915/display/intel_psr.c      | 26 -----------
> > > >  .../drm/i915/display/skl_universal_plane.c    |  2 +-
> > > >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 ++-----------------
> > > >  drivers/gpu/drm/i915/i915_driver.c            |  1 +
> > > >  drivers/gpu/drm/i915/i915_drv.h               |  8 ----
> > > >  drivers/gpu/drm/i915/intel_pm.c               |  4 --
> > > >  7 files changed, 7 insertions(+), 83 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > index 1a23ecd4623a..1dc31f0f5e0a 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > > > @@ -1581,9 +1581,8 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> > > >  
> > > >  	if (IS_ALDERLAKE_S(dev_priv) ||
> > > >  	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > > -	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> > > > -		/* Wa_1409767108:tgl,dg1,adl-s */
> > > > +	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > 
> > > I believe we should go ahead and also remove the RKL ones like this.
> > > After all we have ADL and MTL and none needed this for instance.
> > 
> > Do we know for sure that A0 RKL wasn't productized?  I can't find the
> > details about which stepping(s) were pre-prod-only in the bspec, so I've
> > left RKL and ADL workarounds alone for the time being.
> 
> Very good point. However this point may be against this patch,
> or at least part of it, since there are some TGL GT2 B0
> not marked as pre-production.

The CPU, GT, and display stepping are all independent of each other.
According to bspec 44455, all production steppings of TGL have either
display stepping C0 or D0.


Matt

> 
> > 
> > 
> > Matt
> > 
> > > 
> > > > +		/* Wa_1409767108 */
> > > >  		table = wa_1409767108_buddy_page_masks;
> > > >  	else
> > > >  		table = tgl_buddy_page_masks;
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > index 7d4a15a283a0..5dca58dd97a9 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > > @@ -591,12 +591,6 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
> > > >  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
> > > >  		u32 tmp;
> > > >  
> > > > -		/* Wa_1408330847 */
> > > > -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > > -			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > > > -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
> > > > -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
> > > > -
> > > >  		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
> > > >  		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
> > > >  	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> > > > @@ -765,13 +759,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> > > >  		return false;
> > > >  	}
> > > >  
> > > > -	/* Wa_14010254185 Wa_14010103792 */
> > > > -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > > > -		drm_dbg_kms(&dev_priv->drm,
> > > > -			    "PSR2 sel fetch not enabled, missing the implementation of WAs\n");
> > > > -		return false;
> > > > -	}
> > > > -
> > > >  	return crtc_state->enable_psr2_sel_fetch = true;
> > > >  }
> > > >  
> > > > @@ -945,13 +932,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
> > > >  		}
> > > >  	}
> > > >  
> > > > -	/* Wa_2209313811 */
> > > > -	if (!crtc_state->enable_psr2_sel_fetch &&
> > > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > > > -		drm_dbg_kms(&dev_priv->drm, "PSR2 HW tracking is not supported this Display stepping\n");
> > > > -		goto unsupported;
> > > > -	}
> > > > -
> > > >  	if (!psr2_granularity_check(intel_dp, crtc_state)) {
> > > >  		drm_dbg_kms(&dev_priv->drm, "PSR2 not enabled, SU granularity not compatible\n");
> > > >  		goto unsupported;
> > > > @@ -1360,12 +1340,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> > > >  	intel_psr_exit(intel_dp);
> > > >  	intel_psr_wait_exit_locked(intel_dp);
> > > >  
> > > > -	/* Wa_1408330847 */
> > > > -	if (intel_dp->psr.psr2_sel_fetch_enabled &&
> > > > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > > -		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > > > -			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
> > > > -
> > > >  	/*
> > > >  	 * Wa_16013835468
> > > >  	 * Wa_14015648006
> > > > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > index 9b172a1e90de..e956edb87398 100644
> > > > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > > > @@ -2180,7 +2180,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> > > >  	if (DISPLAY_VER(i915) < 12)
> > > >  		return false;
> > > >  
> > > > -	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> > > > +	/* Wa_14010477008 */
> > > >  	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> > > >  	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
> > > >  		return false;
> > > > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > index 4efc1a532982..82a8f372bde6 100644
> > > > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > > > @@ -1456,31 +1456,6 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > >  	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
> > > >  }
> > > >  
> > > > -static void
> > > > -tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > > -{
> > > > -	struct drm_i915_private *i915 = gt->i915;
> > > > -
> > > > -	gen12_gt_workarounds_init(gt, wal);
> > > > -
> > > > -	/* Wa_1409420604:tgl */
> > > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > > -		wa_mcr_write_or(wal,
> > > > -				SUBSLICE_UNIT_LEVEL_CLKGATE2,
> > > > -				CPSSUNIT_CLKGATE_DIS);
> > > > -
> > > > -	/* Wa_1607087056:tgl also know as BUG:1409180338 */
> > > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > > -		wa_write_or(wal,
> > > > -			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
> > > > -			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> > > > -
> > > > -	/* Wa_1408615072:tgl[a0] */
> > > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > > > -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> > > > -			    VSUNIT_CLKGATE_DIS_TGL);
> > > > -}
> > > > -
> > > >  static void
> > > >  dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > > >  {
> > > > @@ -1716,8 +1691,6 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
> > > >  		xehpsdv_gt_workarounds_init(gt, wal);
> > > >  	else if (IS_DG1(i915))
> > > >  		dg1_gt_workarounds_init(gt, wal);
> > > > -	else if (IS_TIGERLAKE(i915))
> > > > -		tgl_gt_workarounds_init(gt, wal);
> > > >  	else if (GRAPHICS_VER(i915) == 12)
> > > >  		gen12_gt_workarounds_init(gt, wal);
> > > >  	else if (GRAPHICS_VER(i915) == 11)
> > > > @@ -2437,27 +2410,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> > > >  			   true);
> > > >  	}
> > > >  
> > > > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > > > -	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > > +	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > >  		/*
> > > > -		 * Wa_1607138336:tgl[a0],dg1[a0]
> > > > -		 * Wa_1607063988:tgl[a0],dg1[a0]
> > > > +		 * Wa_1607138336
> > > > +		 * Wa_1607063988
> > > >  		 */
> > > >  		wa_write_or(wal,
> > > >  			    GEN9_CTX_PREEMPT_REG,
> > > >  			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> > > >  	}
> > > >  
> > > > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > > > -		/*
> > > > -		 * Wa_1606679103:tgl
> > > > -		 * (see also Wa_1606682166:icl)
> > > > -		 */
> > > > -		wa_write_or(wal,
> > > > -			    GEN7_SARCHKMD,
> > > > -			    GEN7_DISABLE_SAMPLER_PREFETCH);
> > > > -	}
> > > > -
> > > >  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> > > >  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> > > >  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> > > > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > > > index cf1c0970ecb4..879ab4ed42af 100644
> > > > --- a/drivers/gpu/drm/i915/i915_driver.c
> > > > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > > > @@ -167,6 +167,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
> > > >  	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > > >  	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
> > > >  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
> > > > +	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> > > >  
> > > >  	if (pre) {
> > > >  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> > > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > > index 48c838b4ea62..62cc0f76c583 100644
> > > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > > @@ -653,14 +653,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > > >  	(IS_TIGERLAKE(__i915) && \
> > > >  	 IS_DISPLAY_STEP(__i915, since, until))
> > > >  
> > > > -#define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
> > > > -	(IS_TGL_UY(__i915) && \
> > > > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > > > -
> > > > -#define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
> > > > -	(IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
> > > > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > > > -
> > > >  #define IS_RKL_DISPLAY_STEP(p, since, until) \
> > > >  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
> > > >  
> > > > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > > > index 3fc65bd12cc1..c6676f1a9c6f 100644
> > > > --- a/drivers/gpu/drm/i915/intel_pm.c
> > > > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > > > @@ -4336,10 +4336,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
> > > >  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> > > >  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> > > >  
> > > > -	/* Wa_1409825376:tgl (pre-prod)*/
> > > > -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> > > > -		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, TGL_VRH_GATING_DIS);
> > > > -
> > > >  	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
> > > >  	if (DISPLAY_VER(dev_priv) == 12)
> > > >  		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
> > > > -- 
> > > > 2.39.1
> > > > 
> > 
> > -- 
> > Matt Roper
> > Graphics Software Engineer
> > Linux GPU Platform Enablement
> > Intel Corporation

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
