Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF6C2681592
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 16:52:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0470F10E033;
	Mon, 30 Jan 2023 15:52:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C06FA10E033
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 15:51:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675093918; x=1706629918;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=crt0Ye9QtwszK0kSIDRui0U5SwijtJYEoCqf7QEcuvk=;
 b=hfpvbqWxkNMWvmaePZXzk9XrU9+/C2DNoaSGcd4oENoAdD5inVxkBSck
 oyce90g7V1Hvr7mhdPGOVK2MPHh8S2UdLpuBpxnhoA3yoVlpIrXGzVSD5
 BKvGu0Pwh4R4sHHJqLBv5HB2wKGI9ImaRIUeD2ktpId9xpCHEgBxiDeIk
 /noJhZjmXfPrVq4A7lfqhK/xcpQN7G4TfRv0RiYqZ7PZKxtjv4/RcYJm5
 PJ4eDYLHRksinasJjw3OqXTT/MMg+BKl7AHPeujK8s5XV+/VFV+Y34fVB
 ceyJGkzQp+RRFia+SJxhGs/bR4SxR2/+7G9PIXD3WfkzaNSnojd0lNeEb A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="413810007"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="413810007"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 07:51:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="666128647"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="666128647"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga007.fm.intel.com with ESMTP; 30 Jan 2023 07:51:57 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 07:51:56 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 07:51:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 07:51:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cHj2XE+RspF+n2+5QRWzk+9GsUo82t+E28yWtvUF8bHXy7niDPSr0EkCQgZfcgBMpe932HgFUqrLH+0ogz9iR95FQdLUU4ZDvzH7OB+RwrwfX27Lq0XWOHsK8iXcvp6fj44RirT5+BbKuyfgyxM4wWi1xen3FOp/reXX3ntfVxbRaDXNJjIV8Yqso6BAov1OytWID5Iz4c/Y5qBVBNhISpQZXqrlWpNfvRD5lWJW5sFej0CwY/0u6Qrfhvb4cJQTV1DLSnR/n0usDUQVBWtGG4e/JvKgUoJV2KxqUc7QH7+xBbaexk0ghEZHz3RHxe6sB8w0gRzGfoubOa/a9tMwtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QTTCoFd1vk0XjlbzdblQpA51SaaFJPIYR0p+Cglekjc=;
 b=W3h/9zmfSnRnRdhH/Q6DpvItsJvX3MfaAjBfjf2/CUp37XSV4g5KK9qihnbrD+kvqtMsuC4c/vYK4b34efPQOd4zMukUjm+LGNrbt4JKmHEusXF91gk/JV+ZtyocIFwq/RmfuqhPF82Sx4lX8nOuknEx/zycqH6WDEapR9KQTDdKQirHoV9Ww+L6ETtMckP1hx3sXJxkqSolYRHvu1FUnCAHKtEvFTb6Q391TFUM8s05U+W/RmtGsjyWkg7mjt+JFBH/4WGRtpM0UGJPXPlaTM3x+GYT+aV6t8hPRTZltln00+5VjE/qWrzLrcFaHcyM12OgzTnNJxmsqXtZTY5Trw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.36; Mon, 30 Jan
 2023 15:51:54 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%5]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 15:51:54 +0000
Date: Mon, 30 Jan 2023 07:51:51 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <Y9fnl5Q845+QTFjm@mdroper-desk1.amr.corp.intel.com>
References: <20230127224313.4042331-1-matthew.d.roper@intel.com>
 <20230127224313.4042331-2-matthew.d.roper@intel.com>
 <Y9fmSL8b4+fzRGiJ@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y9fmSL8b4+fzRGiJ@intel.com>
X-ClientProxiedBy: BY5PR16CA0027.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::40) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA0PR11MB7307:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d61b943-2231-4059-644c-08db02d9e8ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yrWKFHOwN8fFd+KEoI93ZpeHzW3X8UGZWeJmJrjVJHtJ7SHeL0w71HxyqeitpFeULPTct1hAkK2cmixKfwWKi26f/5EtrTNEsU9e7XNcQeQMeatVITW3i9PrUMpebTban7FIIbMsf62JHS5zyPlxlNZpfC1nrjXtqPK40/LqJia8vBha+sueCQ8ADU3X1evYprI2Z8Oz4EvV7P5/G1seJLJr3NQnBDCIuiG0Rs3CqV9OURjpoXFe38r0LkQtZf9J5VHar/Aq10R6RqQCiyJlunFe8TkmrDzSsLnJd1kJU9E3XLB9MJeqnh7wIPgKulARksXQax8TDMuzuhTxt6J7YuA5Z+k4yUjSZQes/Ninxxv+fVQM9J3cxvgHSb2iqPCLAHMCaC7V1PCTC9mNtZd2HhqYZe/TvYM726ke5QYPGGSGl6ZSZT4VAopEceqG6HrbJLIo8yKjZwEouYLulbv72XrPwtI2Zl6+zOqocIsXDtCscDedQEQZD/kNRbJKNY760bHHwlTp4np1S3AoaTlHO/B6PoWUxLRtYCOsheP0qrjeDqqqZhVULqEW3PL+FDL25nMLSoifBpLHhpGQGdrpD06m3iCc5ZBxBgOM0EePvwXoSNaMduXWybYhHPq1yTAwSmcsuCsJ0KKAFWAw2SHX3NI2FyrPzIgqouyBrdv7e58nlqtucmQApkk8VcIc1fML
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199018)(8936002)(41300700001)(4326008)(66946007)(66556008)(66476007)(8676002)(5660300002)(6862004)(83380400001)(6506007)(6666004)(6486002)(478600001)(316002)(26005)(6512007)(6636002)(186003)(38100700002)(86362001)(2906002)(82960400001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?8JIQDwaAp/apBwU1B1elDxOu0YJwyh0inS3V01zzmKeDUaY6qPnitywRNwSr?=
 =?us-ascii?Q?P7btn/ZBq/liMg+04lS0gD6uPIZJfKGLAiJuZBQ2SDD9SJ3akHqVCBqIM2zz?=
 =?us-ascii?Q?vTC0jBnBVXqebF09oQgxyJ1LJAc2AUC3JMect/qqddTcjqf0Rj6/mHuSM8Zl?=
 =?us-ascii?Q?O059BDJo46F9pwTeyy22PpKTqkWTi4eoyA2VS7MDPsuSBeVfLDG46O9tqTim?=
 =?us-ascii?Q?Ru1x1G9kMsX33RlOnmoVSjK3gbJE8xB+VE3RwUyG2Cyw8kofhT4nVoEYllBS?=
 =?us-ascii?Q?r1my1ztqcLSL6UYW4ItUQK20jrkppEIffouGUDvzx3AjtFxjdDs1IzNQ6RKD?=
 =?us-ascii?Q?ToK24/ylAh1h1ZT0SzCoMFRIk9qpWPrQKIrHECP425U6ROOwhRXFGEKbXaaG?=
 =?us-ascii?Q?2tzK6VzfM+bpNy0HdF1QTq7jC+j4L+OdqPrRcIX12dMOwprW7Lo6IRtf/7mq?=
 =?us-ascii?Q?79rQYDUbDw0CXPHb3wNxP1XOzh+cuCBThUzLyMWbOmiX9q0wV5g5KcAo4tVL?=
 =?us-ascii?Q?FU2cUMgfAt0u98otesUQxrnqiBMUnAXQEZVUQ6baIj2U4E1ykmv5H+Nv08pi?=
 =?us-ascii?Q?t38t+Iz4z1qw0Wgzv4xyFkFmg9FjTbxG4offpSpZ/TBYVvCRWN4ysjoXtBdw?=
 =?us-ascii?Q?dSduHubRkGQVjH1Zq4+AMmxrn/TXqfYLUU5l553TL18UdIHtbbkSW3l6t9DB?=
 =?us-ascii?Q?qDJ0A9ggb884CunCFTPTFmV6l6os2sa35NeZlpT/sHN2j6ph5mdnP4+OPtcD?=
 =?us-ascii?Q?CP3RhqBA2UDcSpppR+Egl9i+Emrtrg1guTl9Zax1rcimkdGDntUVWwuIhN0U?=
 =?us-ascii?Q?XZIHDBdm2f76kAX5sRqS0fKHoHdDqHYL88rFs6k5BTMx1qFsombYcy6/m/jm?=
 =?us-ascii?Q?kM3KMi4BKY0y3VrUdQyxLli9iku5SUQwq4PkwEDqCMIRsORDBqTbdjfeROdI?=
 =?us-ascii?Q?kaRv94jZ1eGtLp7uEuR4GyK+Hj/+qb+cK9d4fNcGMFSQRP+vM+aKjImoJdsW?=
 =?us-ascii?Q?RBPYh3dTTzoixA2fHIxDPn+dY5Ea9soA8QsigxxZyuFoClkJC//IXxmCXcDR?=
 =?us-ascii?Q?U1tkYt04rNg8rVPhqjWWMkfkGfBxFu0ZsuRcvMxpEKzvQBTTxlj2axEumvAb?=
 =?us-ascii?Q?kroKgRqmDGMDFygFgxawlO7qaP5jpHRh6l+WeO20nwDqhY6DqwLfsC0Hajqm?=
 =?us-ascii?Q?YkDCy3KxPO1fepEEMzIndPYJMN6XCEKclHHJmZf0Pd5l7bkNPjrYytvQk2BW?=
 =?us-ascii?Q?oMWLhuAckRRhCxIxT2mcsVFHTPGTjmgFd10Il29yYRq0kpt+bOFg0gsmyfxb?=
 =?us-ascii?Q?bEP8ig9GEvWT+CcTvGNHBUFggGPr+O5BTQ4yZH1kZfgWrFSEk811d+lglbxg?=
 =?us-ascii?Q?U5uUt4hZjqQ321rha3JRmNylfq7cwXY8KiC1xvlkbLQRPFfNdlwso6oFnr2r?=
 =?us-ascii?Q?iusSnYzBnKUgp6plbQI5tnbDXWwYR4MIqH68R9BfA3nbRVGPZuzE7thG62An?=
 =?us-ascii?Q?ZtZUuObgwtqyOe6XKkKjxUtVjigummcSFBtT2qe7bmKoj2PQo3mVO6YkFIy5?=
 =?us-ascii?Q?Du11HZaQkV5KOaZcFXOr5BButgvIWhoYnL5Na8muHZoP3hf/tPokYoOkpPir?=
 =?us-ascii?Q?yg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d61b943-2231-4059-644c-08db02d9e8ce
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2023 15:51:54.1786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XvY8aueqTPckME4OsehBRtu8Qq+OIx+4d6y52ML9IpxrlfE0A5ijdkho/iaPbIO51DVPDoooFNBvzxkDPFGW6hjhMhipzGJBf4EsTEdruKA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7307
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

On Mon, Jan 30, 2023 at 10:46:16AM -0500, Rodrigo Vivi wrote:
> On Fri, Jan 27, 2023 at 02:43:11PM -0800, Matt Roper wrote:
> > Several post-TGL platforms have been brought up now, so we're well past
> > the point where we usually drop the workarounds that are only applicable
> > to internal/pre-production hardware.
> > 
> > Production TGL hardware always has display stepping C0 or later and GT
> > stepping B0 or later (this is true for both the original TGL and the U/Y
> > subplatform).
> > 
> > Bspec 44455
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    |  5 +--
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 26 -----------
> >  .../drm/i915/display/skl_universal_plane.c    |  2 +-
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   | 44 ++-----------------
> >  drivers/gpu/drm/i915/i915_driver.c            |  1 +
> >  drivers/gpu/drm/i915/i915_drv.h               |  8 ----
> >  drivers/gpu/drm/i915/intel_pm.c               |  4 --
> >  7 files changed, 7 insertions(+), 83 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 1a23ecd4623a..1dc31f0f5e0a 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -1581,9 +1581,8 @@ static void tgl_bw_buddy_init(struct drm_i915_private *dev_priv)
> >  
> >  	if (IS_ALDERLAKE_S(dev_priv) ||
> >  	    IS_DG1_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > -	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0) ||
> > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> > -		/* Wa_1409767108:tgl,dg1,adl-s */
> > +	    IS_RKL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> 
> I believe we should go ahead and also remove the RKL ones like this.
> After all we have ADL and MTL and none needed this for instance.

Do we know for sure that A0 RKL wasn't productized?  I can't find the
details about which stepping(s) were pre-prod-only in the bspec, so I've
left RKL and ADL workarounds alone for the time being.


Matt

> 
> > +		/* Wa_1409767108 */
> >  		table = wa_1409767108_buddy_page_masks;
> >  	else
> >  		table = tgl_buddy_page_masks;
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 7d4a15a283a0..5dca58dd97a9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -591,12 +591,6 @@ static void hsw_activate_psr2(struct intel_dp *intel_dp)
> >  	if (intel_dp->psr.psr2_sel_fetch_enabled) {
> >  		u32 tmp;
> >  
> > -		/* Wa_1408330847 */
> > -		if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > -			intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK,
> > -				     DIS_RAM_BYPASS_PSR2_MAN_TRACK);
> > -
> >  		tmp = intel_de_read(dev_priv, PSR2_MAN_TRK_CTL(intel_dp->psr.transcoder));
> >  		drm_WARN_ON(&dev_priv->drm, !(tmp & PSR2_MAN_TRK_CTL_ENABLE));
> >  	} else if (HAS_PSR2_SEL_FETCH(dev_priv)) {
> > @@ -765,13 +759,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> >  		return false;
> >  	}
> >  
> > -	/* Wa_14010254185 Wa_14010103792 */
> > -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > -		drm_dbg_kms(&dev_priv->drm,
> > -			    "PSR2 sel fetch not enabled, missing the implementation of WAs\n");
> > -		return false;
> > -	}
> > -
> >  	return crtc_state->enable_psr2_sel_fetch = true;
> >  }
> >  
> > @@ -945,13 +932,6 @@ static bool intel_psr2_config_valid(struct intel_dp *intel_dp,
> >  		}
> >  	}
> >  
> > -	/* Wa_2209313811 */
> > -	if (!crtc_state->enable_psr2_sel_fetch &&
> > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> > -		drm_dbg_kms(&dev_priv->drm, "PSR2 HW tracking is not supported this Display stepping\n");
> > -		goto unsupported;
> > -	}
> > -
> >  	if (!psr2_granularity_check(intel_dp, crtc_state)) {
> >  		drm_dbg_kms(&dev_priv->drm, "PSR2 not enabled, SU granularity not compatible\n");
> >  		goto unsupported;
> > @@ -1360,12 +1340,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> >  	intel_psr_exit(intel_dp);
> >  	intel_psr_wait_exit_locked(intel_dp);
> >  
> > -	/* Wa_1408330847 */
> > -	if (intel_dp->psr.psr2_sel_fetch_enabled &&
> > -	    IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > -		intel_de_rmw(dev_priv, CHICKEN_PAR1_1,
> > -			     DIS_RAM_BYPASS_PSR2_MAN_TRACK, 0);
> > -
> >  	/*
> >  	 * Wa_16013835468
> >  	 * Wa_14015648006
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > index 9b172a1e90de..e956edb87398 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> > @@ -2180,7 +2180,7 @@ static bool gen12_plane_has_mc_ccs(struct drm_i915_private *i915,
> >  	if (DISPLAY_VER(i915) < 12)
> >  		return false;
> >  
> > -	/* Wa_14010477008:tgl[a0..c0],rkl[all],dg1[all] */
> > +	/* Wa_14010477008 */
> >  	if (IS_DG1(i915) || IS_ROCKETLAKE(i915) ||
> >  	    IS_TGL_DISPLAY_STEP(i915, STEP_A0, STEP_D0))
> >  		return false;
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 4efc1a532982..82a8f372bde6 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -1456,31 +1456,6 @@ gen12_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >  	wa_mcr_write_or(wal, GEN10_DFR_RATIO_EN_AND_CHICKEN, DFR_DISABLE);
> >  }
> >  
> > -static void
> > -tgl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> > -{
> > -	struct drm_i915_private *i915 = gt->i915;
> > -
> > -	gen12_gt_workarounds_init(gt, wal);
> > -
> > -	/* Wa_1409420604:tgl */
> > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > -		wa_mcr_write_or(wal,
> > -				SUBSLICE_UNIT_LEVEL_CLKGATE2,
> > -				CPSSUNIT_CLKGATE_DIS);
> > -
> > -	/* Wa_1607087056:tgl also know as BUG:1409180338 */
> > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > -		wa_write_or(wal,
> > -			    GEN11_SLICE_UNIT_LEVEL_CLKGATE,
> > -			    L3_CLKGATE_DIS | L3_CR2X_CLKGATE_DIS);
> > -
> > -	/* Wa_1408615072:tgl[a0] */
> > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> > -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> > -			    VSUNIT_CLKGATE_DIS_TGL);
> > -}
> > -
> >  static void
> >  dg1_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
> >  {
> > @@ -1716,8 +1691,6 @@ gt_init_workarounds(struct intel_gt *gt, struct i915_wa_list *wal)
> >  		xehpsdv_gt_workarounds_init(gt, wal);
> >  	else if (IS_DG1(i915))
> >  		dg1_gt_workarounds_init(gt, wal);
> > -	else if (IS_TIGERLAKE(i915))
> > -		tgl_gt_workarounds_init(gt, wal);
> >  	else if (GRAPHICS_VER(i915) == 12)
> >  		gen12_gt_workarounds_init(gt, wal);
> >  	else if (GRAPHICS_VER(i915) == 11)
> > @@ -2437,27 +2410,16 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  			   true);
> >  	}
> >  
> > -	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0) ||
> > -	    IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > +	if (IS_DG1_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> >  		/*
> > -		 * Wa_1607138336:tgl[a0],dg1[a0]
> > -		 * Wa_1607063988:tgl[a0],dg1[a0]
> > +		 * Wa_1607138336
> > +		 * Wa_1607063988
> >  		 */
> >  		wa_write_or(wal,
> >  			    GEN9_CTX_PREEMPT_REG,
> >  			    GEN12_DISABLE_POSH_BUSY_FF_DOP_CG);
> >  	}
> >  
> > -	if (IS_TGL_UY_GRAPHICS_STEP(i915, STEP_A0, STEP_B0)) {
> > -		/*
> > -		 * Wa_1606679103:tgl
> > -		 * (see also Wa_1606682166:icl)
> > -		 */
> > -		wa_write_or(wal,
> > -			    GEN7_SARCHKMD,
> > -			    GEN7_DISABLE_SAMPLER_PREFETCH);
> > -	}
> > -
> >  	if (IS_ALDERLAKE_P(i915) || IS_ALDERLAKE_S(i915) || IS_DG1(i915) ||
> >  	    IS_ROCKETLAKE(i915) || IS_TIGERLAKE(i915)) {
> >  		/* Wa_1606931601:tgl,rkl,dg1,adl-s,adl-p */
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index cf1c0970ecb4..879ab4ed42af 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -167,6 +167,7 @@ static void intel_detect_preproduction_hw(struct drm_i915_private *dev_priv)
> >  	pre |= IS_KABYLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> >  	pre |= IS_GEMINILAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x3;
> >  	pre |= IS_ICELAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x7;
> > +	pre |= IS_TIGERLAKE(dev_priv) && INTEL_REVID(dev_priv) < 0x1;
> >  
> >  	if (pre) {
> >  		drm_err(&dev_priv->drm, "This is a pre-production stepping. "
> > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > index 48c838b4ea62..62cc0f76c583 100644
> > --- a/drivers/gpu/drm/i915/i915_drv.h
> > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > @@ -653,14 +653,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> >  	(IS_TIGERLAKE(__i915) && \
> >  	 IS_DISPLAY_STEP(__i915, since, until))
> >  
> > -#define IS_TGL_UY_GRAPHICS_STEP(__i915, since, until) \
> > -	(IS_TGL_UY(__i915) && \
> > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > -
> > -#define IS_TGL_GRAPHICS_STEP(__i915, since, until) \
> > -	(IS_TIGERLAKE(__i915) && !IS_TGL_UY(__i915)) && \
> > -	 IS_GRAPHICS_STEP(__i915, since, until))
> > -
> >  #define IS_RKL_DISPLAY_STEP(p, since, until) \
> >  	(IS_ROCKETLAKE(p) && IS_DISPLAY_STEP(p, since, until))
> >  
> > diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> > index 3fc65bd12cc1..c6676f1a9c6f 100644
> > --- a/drivers/gpu/drm/i915/intel_pm.c
> > +++ b/drivers/gpu/drm/i915/intel_pm.c
> > @@ -4336,10 +4336,6 @@ static void gen12lp_init_clock_gating(struct drm_i915_private *dev_priv)
> >  		intel_uncore_write(&dev_priv->uncore, ILK_DPFC_CHICKEN(INTEL_FBC_A),
> >  				   DPFC_CHICKEN_COMP_DUMMY_PIXEL);
> >  
> > -	/* Wa_1409825376:tgl (pre-prod)*/
> > -	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0))
> > -		intel_uncore_rmw(&dev_priv->uncore, GEN9_CLKGATE_DIS_3, 0, TGL_VRH_GATING_DIS);
> > -
> >  	/* Wa_14013723622:tgl,rkl,dg1,adl-s */
> >  	if (DISPLAY_VER(dev_priv) == 12)
> >  		intel_uncore_rmw(&dev_priv->uncore, CLKREQ_POLICY,
> > -- 
> > 2.39.1
> > 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
