Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7116C6A5FE8
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 20:46:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81DA10E076;
	Tue, 28 Feb 2023 19:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D4B10E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 19:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677613584; x=1709149584;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=2Q7exXADCywLY93Oor0MoiFHnehNDgBRjqGNMw05sHE=;
 b=j5Jj3bcat7nmCJGdYW9fTFN5hIeR6aY8ZGNM3TM2EgH4KgGdB6XhzAy3
 3oBtDgaqQytQ3QTshLjBVuSethRk0el2fhRVBeU6VXGQnxxMe12o/Iwhl
 YU3Iv4vv0W6UDC5zZHll1ztPMKaUlieQM8j8eXsGBBN5V/v1G86Q5PIVr
 ISlfkFKJuGV//oleeBCIJjfCSf0fT3kRKWXyDmxG1uaq2FgRgndNSl5Ma
 dRm4kfNmUuxoh4pznY3wfYW6ANQrRyU5LR/lHapTRagDGCc1n/2OfDHQp
 RjkTT7kWZ2uYFvbQNKxIHUT5KCxJKipqEsKHkg+06YvM44iGsIVYxYbfP Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="322490276"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="322490276"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 11:46:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="676428284"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="676428284"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga007.fm.intel.com with ESMTP; 28 Feb 2023 11:46:23 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 11:46:23 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 11:46:22 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 28 Feb 2023 11:46:22 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 11:46:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FXUy5brdzm4Ne2wMZqoYGNhitBwzyIinCqj/a0b3QJtc7MuDuuj4DwM8o+6cc1qrJI9BQVI3E1lzJsueJKOs7e1JMZEamJvaQoWTp0XrzUVsxq/Lm0BgY/ASei5C05HYTvbhLUNjjBjO5KpUd4A/QlQjj6LLaAbwYlFvQ+TKHI/imb0BEgdhWW1doIcqBcr8Wm1judAesqwA/TfVm6BTJONHG58FOJt5oLiAilp7DQjRaSI1NYgz6shf+zzW4iyXTES/q1NlPh9l3M8Lr038XgaFt9kl8JB+aywI3wWdH4mXmn76DHVWqoqDO+/4+o/F6H703YZpkcue3qDRdsns7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BS3h1OVmVXyvcJo0yCIrZCNVZhbGBcwdbqMacI99e14=;
 b=HMgeA+fjm1EEkfMCSpoU86zYtti7qcRxTAyHbT32NG4C3m9KJagEAVlklYRTQYuy91h+PtfZQ1DyqX2qrt5/tUXbuuVdx+GaWShaq9lu0dCKiCZBF8VQ+kP/JFMJBmvDeJg4QhZz4+8bRWciAB6GuDOiKGwc/bP+/RErT5jcPvnEBH81sd+HtiptM8zY2Ef/VHcAgxrVZhIljJOwAiOmHSFufoVHAa+QSbGdHKR2/Y5y7x81PygnY4O8U1Jb2dXjEHulNPVryYw5N5MukKDN1+PZKVY9nHFbZcK9JPDJKwUkvLijh0l0ARsxPYaabnGnTjmkhM426uGb1PxN3aILVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by MW3PR11MB4715.namprd11.prod.outlook.com (2603:10b6:303:57::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 19:46:19 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 19:46:19 +0000
Date: Tue, 28 Feb 2023 16:46:11 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230228194611.qeaotjvdarwqbtcn@gjsousa-mobl2>
References: <20230224002300.3578985-1-matthew.d.roper@intel.com>
 <20230228194243.5o2yweiqc4krqts4@gjsousa-mobl2>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230228194243.5o2yweiqc4krqts4@gjsousa-mobl2>
X-ClientProxiedBy: BYAPR05CA0039.namprd05.prod.outlook.com
 (2603:10b6:a03:74::16) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|MW3PR11MB4715:EE_
X-MS-Office365-Filtering-Correlation-Id: 3874eff5-dbad-42a8-41e1-08db19c47609
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 9Xi6Hlj5c5uL7zUAtNg1C6AWasGENH12BEZ4tppbUyhwvzLhhXuStJpC3F8iSdJkwFCLAb7I5uEgOmiwjikSvQdMGfSf6TUKTUyey05VrwyhXOwQ/Bxpdq8pfc8PsIfj3Yuxi1w5aFgaY/XeSJNe5TJOdLSDLRa9kIe0uSXrrff3FUh7FRODIuXO6K2TVHGIKQb6s69QK5c3tkIWhrTuQbv3RIor3MxGLifyL6pnKrP3qwX5y+oNtwgAsL4mILnQCxoJEG8WltBBubxEY+T0AtGTMHeOd03D9iLUGJTCvtyn7g7DjNwYMdEuD5LKzD/bqnWxTG1y23CqsGcewSgGwM4aGyGtuGTjdsTRCygrI20zMqjpjcDMq2Jls++V3oZO1sFd93eX8XjKh8SFiWNtNMv3cFq4Ix56OBc9NQRIbFvCF95WHvv/PO4mLxYXYbOmMGhantQk8fVP3hdyT4ZzJ1D6qb5kDaUrX5HxNQWUQxstoNxk0UCMnwIqL6hxZ9EGuPNN87nfUAYSV/bBrbl4SFvNoFVTNAbyJR9SscZWsPgkj4ck4XNfqxSykw8NU+o6ho4Xko3gCrlS4u1of3ReCrPN26i7XEVmEFWaJROSLYxPNIUt76lmsNVCuxqU58JUDsSRRkgEUt+dIbMEzVZPBw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(39860400002)(136003)(346002)(396003)(366004)(376002)(451199018)(82960400001)(38100700002)(5660300002)(86362001)(3716004)(44832011)(2906002)(41300700001)(8676002)(66556008)(66946007)(8936002)(66476007)(33716001)(1076003)(6512007)(6506007)(9686003)(83380400001)(186003)(26005)(316002)(478600001)(6666004)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/CBvPbqJU0gFdPf73Gk+6cD8NCdLbMMHRrUJjZKWwnPMF32NoqfSK7mjUWIv?=
 =?us-ascii?Q?NrburWvjuTJmqGEapjB6lw/hsmBrx+CUawo2N4q++a33BLzRpii5jdYfS6M+?=
 =?us-ascii?Q?Wv1QYHn3sk51tfOONkJrv9fMsZwfR8WO9l5Wy9y1TjNDwnc54EDOgIqH8a3B?=
 =?us-ascii?Q?immVYkq7oDu+jPE+9yLPRktQmTPdKCmUT+HMs9H6vpoKWtrP0RFRwO/hR95v?=
 =?us-ascii?Q?j2UUYpAqzXKZpcAWA0JFJEl07aOxGbIyV6kRGldTlw5qkNa/xV/erpUHfSaw?=
 =?us-ascii?Q?D2C4Ouc44d4x5eBjo7WFcEt2p2BygP4/dEGUM72RiuFa8zQ+N/OBZiijbbGe?=
 =?us-ascii?Q?mqV6wLDIZTs3ogfyIGlqxL5z9RnUVlB+FAAAMuUarsbKq9aWbcppQKZHwr5k?=
 =?us-ascii?Q?EI1Vn2nuvLSCTSpQVyHgRPDaFnCFf2OfEPfM+JQA2BMUCX5+EGLB0WqnigFH?=
 =?us-ascii?Q?eRse0SojtBeu5/dzTMusNpFhPCGTlveccR1cTLr2fWwJ4QbejktYB8Cn9OKV?=
 =?us-ascii?Q?yMYgMK4hNi2KSIBpHDd3QLRAreFhqP402s5C6nWb29MVcgZEXJluEcSjDLDD?=
 =?us-ascii?Q?/qrusYJsYhi3HwCwNC+VYg67K6Ww/sQScEpXoEN3MaWdyWh5Z8n2sLs6ndSQ?=
 =?us-ascii?Q?sF05bwg2KztW1JHqJj4CN5R4iJm1WcJWW2tBWyvLy7FMbmys6bF6DW9wTU4F?=
 =?us-ascii?Q?hAAb6FchYjyvqbucedhYNvrWNq6g7KlD6SZgxQWnBlW9fsAONBC9y+qQYMJA?=
 =?us-ascii?Q?C7OvwXVKAUW4p4nrzOLCan82ES5q/DEFfgXWYrdAUniuTlKuXVokmKZyS1gX?=
 =?us-ascii?Q?4RZekn3MuNp9NUc1S3nOYBzfSHUz4O0lwbGspLTnZf2s452E0XNvmHsskCo5?=
 =?us-ascii?Q?3Lh0lGdPMCsotGj8t1C9W4tsigNZIDGrku1xVOjD/8yXFT4RwkAFdSSjgGFO?=
 =?us-ascii?Q?1GD2Qx1R355/a0Any9QVNToGOOb9UYOZl3UPAeCrChox99JRkP5NEWWmRFJB?=
 =?us-ascii?Q?MuDXfHK9YxJ2hevM/zd5SmyQ5xv7sJnFN3HyYP+N53wBSDMV8UkR9meakIKd?=
 =?us-ascii?Q?WFSQxrLHdlK+c6f9EyEgxAmx0CQ8Kjf4ccJ3st6uNzZmMdGxBMFwgYXkvS2d?=
 =?us-ascii?Q?RVjkneeM3Hi39KuX1C9vdeMa2fi3gtrCPOtS69K0RQIWC9W/ILXQlVzlKjSm?=
 =?us-ascii?Q?hMFdw+hTi38Waa8SLf1bwhleJHk3FBu0BPHjVlkwIOsEwkPiCyXRK+uKRgPX?=
 =?us-ascii?Q?sVrZuUpPHI6Oy38GkRMBGYtVPiy0IcHs7WtMEp/E3NRHZ6Q4VnEdBbzGGh4N?=
 =?us-ascii?Q?/KGP/LVnUH72OyJolIa9B8l3Msrg/ICJ9lJ5H5HERrBt66ndTZG13ZbJQRL1?=
 =?us-ascii?Q?BtJZeGRjZAfjHDL8I5SCd9Hc0NTmhHkx9JIKXTZTJbkZvU0HjRbRmT97NSXb?=
 =?us-ascii?Q?CGQi5MvUKjW603Y+z0GplWf+BWNyyDMe1ewcC13YBJ0qBhg0a7wa7aNp3Ztq?=
 =?us-ascii?Q?5kmZtxFZ1kO/bopl96lWo9h6zZb/tgwySfpoDJfhBhZa2+7gowxWutKUmhcR?=
 =?us-ascii?Q?aa6HWXRmfGiqC4WR7szQbQCEl2NWpYsQk+JK4Q+r0gLJgqXjiIdHx1a+9kws?=
 =?us-ascii?Q?Lw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3874eff5-dbad-42a8-41e1-08db19c47609
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 19:46:18.9065 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mNYJX4lQp1vnZG0RRDJcLZ8kuNjInaXnGueEx4BqX/AxsMpTEfPFOFDkM9kY8utfdsIUdCXzUv3gAr6PzWSbtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4715
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Whitelist
 COMMON_SLICE_CHICKEN3 for UMD access
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 28, 2023 at 04:42:43PM -0300, Gustavo Sousa wrote:
> On Thu, Feb 23, 2023 at 04:22:59PM -0800, Matt Roper wrote:
> > A recommended tuning setting for both gen12 and Xe_HP platforms requires
> > that we grant userspace r/w access to the COMMON_SLICE_CHICKEN3
> > register.
> > 
> > Bspec: 73993, 73994, 31870, 68331
> > Cc: Dongwon Kim <dongwon.kim@intel.com>
> > Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> 
> Reviewed-by: Gustavo Sousa <gustavo.jo.sousa@gmail.com>

Oops! Wrong email address here. Please, consider the following as the correct
one:

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

> 
> > ---
> > The bspec update to add COMMON_SLICE_CHICKEN3 to the tuning guide pages
> > is still pending at the moment, but should be finalized shortly.
> > 
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 25 ++++++++++++++++++++-
> >  1 file changed, 24 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 1ef9c9fa2eff..0444c715998a 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2194,6 +2194,10 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
> >  
> >  		/* Wa_1806527549:tgl */
> >  		whitelist_reg(w, HIZ_CHICKEN);
> > +
> > +		/* Required by recommended tuning setting (not a workaround) */
> > +		whitelist_reg(w, GEN11_COMMON_SLICE_CHICKEN3);
> > +
> >  		break;
> >  	default:
> >  		break;
> > @@ -2227,6 +2231,9 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
> >  					  RING_FORCE_TO_NONPRIV_ACCESS_RD |
> >  					  RING_FORCE_TO_NONPRIV_RANGE_4);
> >  
> > +		/* Required by recommended tuning setting (not a workaround) */
> > +		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> > +
> >  		break;
> >  	case COMPUTE_CLASS:
> >  		/* Wa_16011157294:dg2_g10 */
> > @@ -2264,6 +2271,22 @@ static void pvc_whitelist_build(struct intel_engine_cs *engine)
> >  	blacklist_trtt(engine);
> >  }
> >  
> > +static void mtl_whitelist_build(struct intel_engine_cs *engine)
> > +{
> > +	struct i915_wa_list *w = &engine->whitelist;
> > +
> > +	switch (engine->class) {
> > +	case RENDER_CLASS:
> > +		/* Required by recommended tuning setting (not a workaround) */
> > +		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> > +
> > +		break;
> > +	default:
> > +		break;
> > +	}
> > +
> > +}
> > +
> >  void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> >  {
> >  	struct drm_i915_private *i915 = engine->i915;
> > @@ -2272,7 +2295,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
> >  	wa_init_start(w, engine->gt, "whitelist", engine->name);
> >  
> >  	if (IS_METEORLAKE(i915))
> > -		; /* noop; none at this time */
> > +		mtl_whitelist_build(engine);
> >  	else if (IS_PONTEVECCHIO(i915))
> >  		pvc_whitelist_build(engine);
> >  	else if (IS_DG2(i915))
> > -- 
> > 2.39.1
> > 
