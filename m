Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 16CF182C5F5
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 20:38:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91FA610EB62;
	Fri, 12 Jan 2024 19:38:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47FB810EB62
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 19:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705088280; x=1736624280;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OOXDsqbI1UKDYPrRgKpPc225WrLX1OTGHUt7S+l/3vE=;
 b=cRl+gN+wW8Mf8PaMjXbjCfqvG/EGxo29KtxLG1Fs7KonlGX8Ov5NA+Pp
 g6aE7KhubqHif2EX1WR271IegpMD3OjmTRC0PJpPk3Of7fZgCKDHPQPkz
 Fk4x6NfxGGthHeipyb+YdhgSTgnPjib+LkQhb7D73UsQt7773M10D1lce
 B41qnXt5cLdz6vgOmN1EQj8liSTyzNeUOTRCdOVoWxBbPcBbvPbgcWSrc
 8zoagKLIHqEa78dftnfANcT7B0QERf3vg6MBvUw6Kbqq9C4SQthubwS7k
 LBqhwKl+0D9LTnFY1RjfzSkwREndcbPfq9h01Dk43PYDwO6Gng5sHi+BG A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="6354526"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; 
   d="scan'208";a="6354526"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2024 11:37:59 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10951"; a="873477612"
X-IronPort-AV: E=Sophos;i="6.04,190,1695711600"; d="scan'208";a="873477612"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Jan 2024 11:37:59 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 12 Jan 2024 11:37:59 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 12 Jan 2024 11:37:59 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 12 Jan 2024 11:37:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pok5d117rq33VVmYWZoswejd1udyMNcCaMSqx+wDIfHG4s9R4wXnqXVgMQUQ1+sYvFEPTRUxxNKy8PCp8TivaoKvU+nw+rZ0gWQW4Qtd3LEfCkH4B1eGLAn59MRTO8MCtZA7/cHPMVAHZNyHF0xuxNVRuwNVmh5d6L45N3+gYOiHKA6J+0OIgqQmBpi/sPFwZyi7wEN5h8oJ9hC4P+fFEOMz2W/dToLSv+s5HJeUrHfys6NImkOIeP7vBhrOJLsIDHwmhIwppkO6xAy1zQLRELsTVa3nzVCORJgN4QHDCIsW2/WqcJB8FeiNzL4iDKjj6QW0l4InIE4unYOFhAW7GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+hH2uL5fQW39g/xN3IttwRrwJrkT5uBtCTn1ZrBsruk=;
 b=h3tf0uyFcQZFf5ckQrYI9diCgjyXRHKl7Ml9afyayHkJntcVpskyGtj4vo6Y+iaCJ6lev6s9cWiS/NRRpUhYeu4NmCeKeaE6bheXfZO0tANtF8GJEzqpyKbtFFum8pba/GqDTCM5u7vg2gv187unZxqqkEbLGpxJqa2Uhn1IDgtXtwqgrcC2+jVYvAy6H4Xzt8hE/2tbQoo3dmr/f/lXLSdiH3oHC3WSSbIiCFKlFB7dhHblMWccH435yz+6OdAHWSk0kt/FOjxCqXecB2tuhVoL/1RpPEO8oDz0AHtPUeuqqtAviSB9ZEBLTHhK2b4hD2DST6a9rl+OoOh+XsjCAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 BN9PR11MB5401.namprd11.prod.outlook.com (2603:10b6:408:11a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7181.18; Fri, 12 Jan
 2024 19:37:56 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7159.020; Fri, 12 Jan 2024
 19:37:56 +0000
Date: Fri, 12 Jan 2024 11:36:31 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/opregion: abstract ASLE presence check
Message-ID: <ZaGUv07GTyb24D+A@invictus>
References: <cover.1704992868.git.jani.nikula@intel.com>
 <1829415d3e7b29e78c46b20bca8175ef373bcd92.1704992868.git.jani.nikula@intel.com>
 <ZaCB4Ne7sXnZvwCw@invictus> <8734v2ua8a.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8734v2ua8a.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0305.namprd03.prod.outlook.com
 (2603:10b6:303:dd::10) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|BN9PR11MB5401:EE_
X-MS-Office365-Filtering-Correlation-Id: 57cc4e02-e493-4416-edae-08dc13a5f9e1
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CtYPFQVsaITKrIr1xBYmR1kO9P8j13HgvagEcFdBW5W84QEvaeCCcG4aPGgVM3Y+gyT0qNFyU87uCL6WrSfdyNwN8v/gbqyH0ENG/KUOy9fL8IpAB2xS20zCvxxYfO4P/BNvsDF+mG6UKneOF6V53EcpQ1mLxcjELV29W4gWaoTLmOvvG069abnfdrUdOgl1unx2yF6u6DzLUNsMyjMBtywdDEO7RU8N713f75Rj521KqE3rKxS401Kz2KFIpt7UJZThEKEI9XbKhjbYwk6ikPJO0vSvkBi/hsvwypnGZMQ+C59C/DtgNoHZm1DnyBx/WZRuxW/EELtIxoUI/l/+SGtOraqPzFwA+DcBkhQvL51NHCTBGRsz3TeLC0lQ7E9jCO24cuh31n6ULBJkwMYUhoDXfI98bN+Mt/rWLo+xuvTEhkZXnnHyXOCWwZrrg5/N4HoWr7E8/w+MQkVmXnaPnbB/qECIXaW2FtSIJ/4eoeG7yeljhHAP6UlOA0Ef5KU90H9ln5jN+W7dsqs0rkHA2jPePWMHAOtxy+E9jyUX87ULHhssS/ZLT5TjxPfyfq57G1+ryup3qL0gZ+SlIbh/e12MhNEMqbHpuM3GCJrTDgY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(39860400002)(366004)(136003)(346002)(396003)(376002)(230922051799003)(451199024)(1800799012)(64100799003)(186009)(6506007)(66946007)(82960400001)(478600001)(6486002)(6666004)(9686003)(66476007)(83380400001)(86362001)(26005)(316002)(66556008)(6636002)(5660300002)(44832011)(8676002)(33716001)(6512007)(41300700001)(38100700002)(2906002)(6862004)(8936002)(4326008)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jmg4JJ7d+Lytr1eLmdmGt+/107dnGtghJTswyf68cTH4fey3aFY5ODU2KWzS?=
 =?us-ascii?Q?6hvcnhsJmRfGhhmVPLqDjAwgJjBFpBK5zK0usIPorn8CeI5fshMK32Xdt6EC?=
 =?us-ascii?Q?fK/Xo0nB/VvAs7g6gpW9u3IAV8z++YtewnMJn0Bx6LkMcVIoo9/JJmR83uUW?=
 =?us-ascii?Q?is6oNNHSrDounLF/XnxgjFwlH9qJL1wPWx7FOiNOEwhe+95kd8w8d15noSPp?=
 =?us-ascii?Q?vDUxXXKcgABCGxCA7708nc7IbhGWjqQ+z3zAbJ/CD67T9k9izl6/ir0H5Fds?=
 =?us-ascii?Q?4S8tiG4ztovD18EQBF2Rfzb8c1VLCXPVr0yxze9oBEHVHmDprcrbQIzsPNHO?=
 =?us-ascii?Q?0T1/Vj5exlDSrMzmYQiS8gRv3vbh6asHEjU7iX8UlVNcq7R6HOB8DlKoYtbO?=
 =?us-ascii?Q?jG9sXGyDeN/IKLEa/rgeDvQ7KHEDTO2ZnEvDks0yhV2Btq8BR0G+d7f6uNkw?=
 =?us-ascii?Q?FC9JqMreJB6sj+4uFDWFeQwwmk0f7rd0nztrqetgsfLbxRk5zA5JHrRdXbcv?=
 =?us-ascii?Q?+7JKdPjYbDud9wrEpc1F5HAsNBccYc8Kesqg+HOJjp0BHeOGXrBvphQ6taqb?=
 =?us-ascii?Q?Fb+JZnbtBC9GfCGilc4wyhl7E1FkCNrumQwS3b6xqsHd4o7ZDes/wIOtjMg7?=
 =?us-ascii?Q?+acm8xRXRcV567ZX+DjKK/2IXQjJqQqKsQHr+xkfTj4wTA0vhXLToou4L9at?=
 =?us-ascii?Q?WSmUn7l4FHAyByCK4WPaMhPz+yn+1cieIh7tzpwXYACGH5P/+voHgBmCms4g?=
 =?us-ascii?Q?blS2VZ5IX2m4mc7pcu5xzzidgYQ6bSOAhji8rz2c/t0pRlvb/ylV9Aqig4nP?=
 =?us-ascii?Q?KT159BIhJeAewkGds8fYks7y1Gv2FCXdpWqLVI7w/mTGh2V11NPtxuCYnTeG?=
 =?us-ascii?Q?fOAy7mlZNssdVng12Htwo4rghBhTpGfB9YAIKDO90Oj+5a5gfKpeS+H8viA4?=
 =?us-ascii?Q?WemrJmsTMaMhiC0PNG8ZmIjpKpIquRtofxWsqmEYvPSY5pSbxA1JQxYs47WT?=
 =?us-ascii?Q?5875b9tdtbMXVSYL4n51mAOGC/sG7HyInkO9V5spdBqDjRcjoJLVidYM5pM2?=
 =?us-ascii?Q?hfTE/gJzamAAb2DTyb2QA15+qZPQLuok/De31i2sCSQt3fuQXwJqxX23nMHm?=
 =?us-ascii?Q?BfDwW6ayLEmI+vj9OmpAtq7EM+xaAs+OroE63808XVBCcc8otFzphOf5TX2x?=
 =?us-ascii?Q?2Y6KB0PegxSbVSePaVfIDSZdgkvFbjqRAJrekhY9MXiMtnghvGBslQ+PzXPF?=
 =?us-ascii?Q?P/D6QVfhA6mNv+VKGWBJDyjt0hcccJA30JxQz+koGgsba3fTUU2IjPajYr5T?=
 =?us-ascii?Q?l2/+qy0Nk1rXD8cb7mbPc93MKeKGBPdCEmH+IZooEwTAj1WtwCmYSiR0KnHz?=
 =?us-ascii?Q?srmEU/LT6hhRiQGjqt24ld4ZPgUwoMzEJ/iBZ3Frt6m3wCW0Q+gZJr5i4zt+?=
 =?us-ascii?Q?DSptOsTiQP1hSsPp/L5BZhjam8wtQlwCx5QUhV8TcCbVY/L6Fg4fW4Sp4F0o?=
 =?us-ascii?Q?Mh/uDJ/7x1NuWEggh3RDUup9kDjeT5o+35R/wkDsFvQ5pGW4iEuErxKLVJ12?=
 =?us-ascii?Q?CNoPFs4mRssq+Pf7uGFt/OQTARpp/XcadfQ4wmjp4j1sUk5cHaU7o4be+7zn?=
 =?us-ascii?Q?Ok5wObRmnjgdXH+0EUlu70E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 57cc4e02-e493-4416-edae-08dc13a5f9e1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2024 19:37:56.3765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xDhyPVFGjv9+j7NkLrZ6lSOPg/mnTQeagPkTWOa56nUlrNU1BCwBLyGyDjBIYWcfp6lKb79COrXOi96IxsQkIfjtGNukE7m7OWQFHa+rLkE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5401
X-OriginatorOrg: intel.com
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

On Fri, Jan 12, 2024 at 12:17:25PM +0200, Jani Nikula wrote:
> On Thu, 11 Jan 2024, Radhakrishna Sripada <radhakrishna.sripada@intel.com> wrote:
> > On Thu, Jan 11, 2024 at 07:21:17PM +0200, Jani Nikula wrote:
> >> Add a function to check the opregion ASLE presence instead of accessing
> >> the opregion structures directly.
> >> 
> >> Reorder the checks in i915_has_asle() to avoid the function call if
> >> possible.
> >> 
> >> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
> >>  drivers/gpu/drm/i915/display/intel_opregion.c    | 5 +++++
> >>  drivers/gpu/drm/i915/display/intel_opregion.h    | 6 ++++++
> >>  3 files changed, 14 insertions(+), 3 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> index 99843883cef7..f846c5b108b5 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> >> @@ -266,12 +266,12 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
> >>  	intel_uncore_posting_read(&dev_priv->uncore, reg);
> >>  }
> >>  
> >> -static bool i915_has_asle(struct drm_i915_private *dev_priv)
> >> +static bool i915_has_asle(struct drm_i915_private *i915)
> > Why not move this to intel_opregion.c and export it instead of
> > intel_opregion_asle_present ?
> 
> I'm trying to be conscious of the possible performance impact of making
> calls from the irq code just to find there's nothing to do.
Makes sense.

> 
> >>  {
> >> -	if (!dev_priv->display.opregion.asle)
> >> +	if (!IS_PINEVIEW(i915) && !IS_MOBILE(i915))
> > Can we extend this check to dgfx as well?
> 
> Extend how? This will return early for everything after IVB.
The name of the function is bit misleading as looking at Opregion code
and the spec beyond IVB, asle aka Mailbox 3 is present, just that it is
not used for reading pipestat. It is used to store rvda from where VBT is read.
Extension is not required for this purpose. Might want to clear that unless
I misunderstood the purpose, either way 

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> 
> BR,
> Jani.
> 
> >
> > -Radhakrishna(RK) Sripada
> >
> >>  		return false;
> >>  
> >> -	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
> >> +	return intel_opregion_asle_present(i915);
> >>  }
> >>  
> >>  /**
> >> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> >> index 8b9e820971cb..26aacb01f9ec 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> >> @@ -632,6 +632,11 @@ static void asle_work(struct work_struct *work)
> >>  	asle->aslc = aslc_stat;
> >>  }
> >>  
> >> +bool intel_opregion_asle_present(struct drm_i915_private *i915)
> >> +{
> >> +	return i915->display.opregion.asle;
> >> +}
> >> +
> >>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
> >>  {
> >>  	if (dev_priv->display.opregion.asle)
> >> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> >> index 9efadfb72584..d084b30e8703 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> >> @@ -69,6 +69,7 @@ void intel_opregion_resume(struct drm_i915_private *dev_priv);
> >>  void intel_opregion_suspend(struct drm_i915_private *dev_priv,
> >>  			    pci_power_t state);
> >>  
> >> +bool intel_opregion_asle_present(struct drm_i915_private *i915);
> >>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
> >>  int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
> >>  				  bool enable);
> >> @@ -111,6 +112,11 @@ static inline void intel_opregion_suspend(struct drm_i915_private *dev_priv,
> >>  {
> >>  }
> >>  
> >> +static inline bool intel_opregion_asle_present(struct drm_i915_private *i915)
> >> +{
> >> +	return false;
> >> +}
> >> +
> >>  static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
> >>  {
> >>  }
> >> -- 
> >> 2.39.2
> >> 
> 
> -- 
> Jani Nikula, Intel
