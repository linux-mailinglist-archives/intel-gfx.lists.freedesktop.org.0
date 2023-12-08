Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B56EB80AD5C
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Dec 2023 20:53:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20F3410EB15;
	Fri,  8 Dec 2023 19:53:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FDE710EB15
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Dec 2023 19:53:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702065215; x=1733601215;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=BbL5UoUlDEhfY+bkloOMWLalNBC1Xro1RcKhOZlTVOE=;
 b=gcFplGq2Alc/1fQNF5yn+iqic67kjwsLoIMwlaTcdGlx7EIxaNoGvQB3
 MzvJMOePK54IpsSpQ0pqc7kJdpBKsITa2J6ZBjF6y2HFEdbOBn2vR3H1P
 abYcMKnntXOgVHKrJ9Lbeu20xkWcWfZx5ja7A+zZDwpKU1z/fYCKGWhqg
 t2aZH2Q4+sGAHmsr3DzYt6dV1r0KwucJXY3nYEkuKGd0KFfmVkf7bCS9M
 PNmZZiBay1AfzmRH5UDsUDP3sQHBOaAdPHvj7dt+0qJFqRBJGJDJ5nkZP
 D5PNRvYtrFTKQMpNrJporntalUVarnxIx6j9SNbRmt05mCe4aLlIztL4j g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10918"; a="480649823"
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="480649823"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Dec 2023 11:53:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.04,261,1695711600"; d="scan'208";a="20206869"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Dec 2023 11:53:34 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Dec 2023 11:53:33 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Dec 2023 11:53:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Dec 2023 11:53:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d/DAyIUhfg/Oiw50N0vaTw2s2FaULnY56WCXjX4i5Isb7+nuo9EpYHIOFv3b6I6p+PSyyLJxdKGFGTdAxBnpOYd8tOaTmPCmOSFfOgV4KDcpK9LZGtwiOcFa6h6VbTNmf5JEpDQhL7VWz2F1DlLD3pXMgb6xsVHcWHuYRx/pvPhvzdQqIRF2lY+EJsdQjVN+B6TbKzFyHCUmfuJgXYcc2+dzGMlBOhDaIrDb7m3U3xHUy5Ja9PZBGzFnS6UBdWEQ8yZQXZFdkx9Ei3DMPbhiPI/XQoWkzb9QxLHs6Gy/wgxB7L3aEkHBcp6EqPV1shLKxxdqnmnN09FqUBF/vVXSqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yD5HdaYs8hlxWW+7Hf8V1t82Rm5VkSc9R/5WJryVZ+c=;
 b=MqwbHyEx1kO8jO8oUttdNHnjz75KPdV6E7qWqBf3pMb03CrvheJ0fFO2HFOsaEnW2+9t7ETxN1IDnUVz18VPqIqGg4f6+UpCiG0QS0qEhI6BVScOEvdYLb2aFrfmC6ILk1C7dFJAkDq9FD2uKVTz38uJjdYpPfTnNvyj12lqmYEl1u7vdGOCH1VQdLn7rrvPQtQt1TrxpkhFAFHbV0HlF9cYRPcxAZAW87RUvJgj17ZqwTDq3B5s7YU63p5ozoG4VMMEg2UctDPBe24MYT2AJG61mpO4B1ETXcgEmednD94vU9wakiSCttuxoNIqgVOnQBOGqa/Wut7BYkWf7COuGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CYXPR11MB8730.namprd11.prod.outlook.com (2603:10b6:930:e3::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7068.28; Fri, 8 Dec
 2023 19:53:31 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7068.028; Fri, 8 Dec 2023
 19:53:31 +0000
Date: Fri, 8 Dec 2023 11:53:28 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/display: Print PICA version
Message-ID: <20231208195328.GC5757@mdroper-desk1.amr.corp.intel.com>
References: <20231208143137.2402239-1-lucas.demarchi@intel.com>
 <20231208143137.2402239-2-lucas.demarchi@intel.com>
 <20231208180250.GY1327160@mdroper-desk1.amr.corp.intel.com>
 <35wpnbz362eaqvjzerjpe6xnnc6xxiu45qsxszibefprj3kuzk@fal6gvwq4kvh>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <35wpnbz362eaqvjzerjpe6xnnc6xxiu45qsxszibefprj3kuzk@fal6gvwq4kvh>
X-ClientProxiedBy: BYAPR08CA0059.namprd08.prod.outlook.com
 (2603:10b6:a03:117::36) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CYXPR11MB8730:EE_
X-MS-Office365-Filtering-Correlation-Id: d96aebaf-704a-419c-3dba-08dbf8275a35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /zLeUAOYkXIK+e5VLLd6b+7OCGN4haYGNrP1RiRACgD/vmbHN5Rws2TBvLnTILvM/1pJR0HwjPZhG802hZmw4BcQkcFXpwtQv8VwD2C4U7omkwkzuww0G5w7vxJJv6VLPCrMlIsrjmFyZmgybiW7WleNNYe/BNJ6NQpG2xdgzwTuHkg57mw8wYRaCy4y3kgAiqqARs1zS5f+p6LViCGPxXFhC27fLXKJU0wo1F6Cy3H/jAgeiwukj59k+AKkQ7QU7VAzmfsQVJ9n0q8BaJ9zGvGV+xBfKRhAfRH9Ef+jIebVE0VUKzhTWeWHxdUBMucSxvzmkT13GcQjAQd0pTlybaFUvsJTIIdxSu1CNwh/A8/eUZVAsIc2aBItZaTXzGNVX17PGaoCwgij8Yp/89nqJO1t1/rIv4LxHESwcsJAg97lQETaPaOhAbq/hP6okbzngwWiIhMlKmuGVJtFkTFwafEMsUeBbpWOcjbYBFaKmlD0FZ+SubIY05g6yx6d6XzCMf78I/OfL/OGFGybw/yP0dGESOGxKOO8w14kNq15bRsY8nPjXmBHKTD7nHk9rZMZ
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(376002)(366004)(396003)(346002)(230922051799003)(451199024)(1800799012)(186009)(64100799003)(83380400001)(6512007)(26005)(1076003)(38100700002)(6862004)(4326008)(8676002)(8936002)(2906002)(5660300002)(6486002)(478600001)(66556008)(41300700001)(6666004)(6636002)(66946007)(66476007)(316002)(6506007)(82960400001)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?56uNkTeZfkTo1gTqN08w7o4awS6UaZVrryiU72g6pj8ArQocNE+Eo8JfultB?=
 =?us-ascii?Q?Aa77Aw4dhZ9Rsm80VoEaAa9qWN9XOvjelSDOE1fCrSfBuXGOmTKrUWlu//DN?=
 =?us-ascii?Q?v9JgkzdjtS9zOKatDCcAbt+3UKyYTvr8Hnw4Th1UO6iOLjy+ioT4U62aZalo?=
 =?us-ascii?Q?2tb/PsdtodUtcUEFXQ9O4Hm5uFc1GiOX/anQfyTDWfEFAIYlk9+uMFlu+Paf?=
 =?us-ascii?Q?wcbQzUKswdNAECJH6Xuqb5MybpScZX97Vr3Jv5JlgMfeQ98gQkIoh0Mp5+Vm?=
 =?us-ascii?Q?M/lOiMnKY/SQaAH92NA4OVKF0CYcmjoEYTaQZERo27k3/SVqJfYCcPGthy45?=
 =?us-ascii?Q?pqogVSk9Mn8ySYn3EtLMWnAN5apnNcxD+0lUYjonTn1iG0SGsmdtMs2ZhcFN?=
 =?us-ascii?Q?Xk2bLLaXsK6x5t53rKJ76hKH7hZDzDqNIOWSWAzoaG8/JqO8k/+kSTlPsoDa?=
 =?us-ascii?Q?LLdFdKYTzTU9c7k0AtT1dCYbiNItDD4TUsfbNFcIKrWfwJ6CkcWZ9oAJ+gvZ?=
 =?us-ascii?Q?0veRU2G+9icDNi3N4a4hKHLs18g3qUpRGZ/It4SBeLrRw9FfQ6ZwWM/Eo8d9?=
 =?us-ascii?Q?q4PYKXHohQ+aYnvtqqTy2QQ+FcETxL/IxQzSyEIdRPAJ3i+HH+KtcgUCA6ey?=
 =?us-ascii?Q?KGDQKQ4qOOyuxeZ2aO1s6qBTmNGDOzhhpu4OZCSRXj8Tsj3DNKIJRSLdogfj?=
 =?us-ascii?Q?LrXnfM2jC4ebd03kzIzVOf54/yN/iwJ6lO4qD+3idFDifr6oodbYnJpNDrug?=
 =?us-ascii?Q?dhuRbklc9keFEpahTJ4gkENmBa+EPmIsQENcoKVAacZ1bdsndu2N/djE2svk?=
 =?us-ascii?Q?9K1nFkt8JgpCVfD22S/9TbkPMoF1rkuvpUluhDR3nCMqVU3AQgWVIpWdZ0wQ?=
 =?us-ascii?Q?lUjaS+Ejm8wZ9Yi3PVJIdxIVvIzqAuOrfWL76qkw7/okRUKxVvOqnLYJAS4k?=
 =?us-ascii?Q?dBHtd4Q61YDYoPlRLpNj//tMGTgvXh5g7YYehoNZZpc9xvUvC8cec4KrW6eq?=
 =?us-ascii?Q?6X4rglwGHqNdESM4+GaDt05ZiBJm/GkI03EyDtvQBTNA/jKQZhV08K6xlaZj?=
 =?us-ascii?Q?vVuZqucXHlqRM8s/ejL+z3dmERxdO2vL6uwJmQ5q2mFhIRdwJP/C9LSCfumh?=
 =?us-ascii?Q?ULN1AkcfgJgMi1Nd6KyDMccmWRu/kYUEFO4Lq0oYKV9E4WMlJG0KpfTsLhPS?=
 =?us-ascii?Q?cPp+U8WHk047Mp1QU1mcOy3Zra9RtCCwFMs5S7ZGKy9c3Kqne+eIl5WXi8nB?=
 =?us-ascii?Q?xjSmtVhr0Na9PZzZkQuIgUd+vYFuB9aTegUYIMcuWcKFXT13XS1UCeYMWCLF?=
 =?us-ascii?Q?Kpj/HVX89Qx1gcNayq+hmvFMJcwWFDFR9Pf7Xjjf6liu2o48i8Fbt2EfLXNi?=
 =?us-ascii?Q?yyJYT2w96jnNShzsw6AshxokKyw3gXa97AiiNeBsrPKElAVTny2r2nhUan4y?=
 =?us-ascii?Q?RxcnYySnWbuIBZ4+IlJC+4cpwmTvaXQ/lii80VBMqPCRin6b6E389jiCqbVc?=
 =?us-ascii?Q?FJi7eyKKUMW9piO5my+3VZ/+hcmj5CHiU74LsIQtDQWXgr8l09dyja95olJj?=
 =?us-ascii?Q?xOo8V9FqJODtBVq3X9mAqiJUslR41hma5w9W1QDZ8SaAkUtRZfoQ+hxyQ20F?=
 =?us-ascii?Q?bg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d96aebaf-704a-419c-3dba-08dbf8275a35
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2023 19:53:30.5366 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SHdJJLhr6iwRfafQUcrZay6ZZw3rcuz4QaQejQgC71Ph7t2Ej2OozbS4So3gYzJExtFUcLgetiwJJ6lRobjx+uP4ZSww2XmlABAwEPRxeDc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CYXPR11MB8730
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

On Fri, Dec 08, 2023 at 01:46:09PM -0600, Lucas De Marchi wrote:
> On Fri, Dec 08, 2023 at 10:02:53AM -0800, Matt Roper wrote:
> > On Fri, Dec 08, 2023 at 06:31:37AM -0800, Lucas De Marchi wrote:
> > > The PICA_DEVICE_ID follows the same format as other GMD_ID registers
> > > (graphics, display and media). Currently the only use for it is
> > > informational for developers while checking the differences between
> > > machines with the same platform. Print the raw number as there's no need
> > > for the driver to check any of the fields.
> > > 
> > > In future this may change, but then the IP version in
> > > struct intel_display_runtime_info will need some refactor to allow
> > > keeping both the display engine and PICA versions.
> > > 
> > > Lastly, keeping the PICA version around in the display runtime info
> > > matches its current use. If that changes in future, then it may need
> > > to be moved to the device info.
> > > 
> > > Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
> > >  drivers/gpu/drm/i915/display/intel_display_device.h | 2 ++
> > >  drivers/gpu/drm/i915/i915_reg.h                     | 2 ++
> > >  3 files changed, 9 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> > > index 5d1084a98b93..d9d1be008e4c 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> > > @@ -956,6 +956,9 @@ static void __intel_display_device_info_runtime_init(struct drm_i915_private *i9
> > >  	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->cpu_transcoder_mask) < I915_MAX_TRANSCODERS);
> > >  	BUILD_BUG_ON(BITS_PER_TYPE(display_runtime->port_mask) < I915_MAX_PORTS);
> > > 
> > > +	if (HAS_GMD_ID(i915))
> > > +		display_runtime->pica_id = intel_de_read(i915, PICA_DEVICE_ID);
> > > +
> > >  	/* This covers both ULT and ULX */
> > >  	if (IS_HASWELL_ULT(i915) || IS_BROADWELL_ULT(i915))
> > >  		display_runtime->port_mask &= ~BIT(PORT_D);
> > > @@ -1124,6 +1127,8 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
> > >  {
> > >  	drm_printf(p, "display version: %u.%02u.%02u\n",
> > >  		   runtime->ip.ver, runtime->ip.rel, runtime->ip.step);
> > > +	if (runtime->pica_id)
> > > +		drm_printf(p, "PICA version: %#08x\n", runtime->pica_id);
> > 
> > The actual, expected PICA version number on most (all?) MTL devices will
> > be 0.0.  Should we make the condition here HAS_GMD_ID(i915) instead so
> > that we print the value whenever we read it?  That will also help us
> > notice if the PICA register is incorrectly 0 on LNL or later platforms
> > where it should have been non-zero.
> 
> it seems intel_display_device_info_print() was specially crafted so we
> don't have the i915/xe pointer and instead only operate on the info.
> Yeah, we can get back to i915/xe, but I'm not sure about doing that.
> 
> What if we initialize it with U32_MAX and check for it here. I think it
> would take a long time before that becomes invalid.
> 
> Another option is not to bother with the additional message in platforms
> without it, and just print it unconditionally, like patch 1 does for the
> rel/step.
> 
> Thoughts?

Hmm.  Maybe just printing it unconditionally would be fine.  Or just
leaving it as you have here and only printing non-zero values is
probably fine too.  Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


> 
> Lucas De Marchi
> 
> > 
> > 
> > Matt
> > 
> > > 
> > >  #define PRINT_FLAG(name) drm_printf(p, "%s: %s\n", #name, str_yes_no(info->name))
> > >  	DEV_INFO_DISPLAY_FOR_EACH_FLAG(PRINT_FLAG);
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > > index 79e9f1c3e241..f8a2ada1a4ec 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > > @@ -123,6 +123,8 @@ struct intel_display_runtime_info {
> > > 
> > >  	u8 fbc_mask;
> > > 
> > > +	u32 pica_id;
> > > +
> > >  	bool has_hdcp;
> > >  	bool has_dmc;
> > >  	bool has_dsc;
> > > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > > index 27dc903f0553..9d70635508ae 100644
> > > --- a/drivers/gpu/drm/i915/i915_reg.h
> > > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > > @@ -6362,6 +6362,8 @@ enum skl_power_gate {
> > >  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
> > >  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
> > > 
> > > +#define PICA_DEVICE_ID				_MMIO(0x16fe00)
> > > +
> > >  #define PRIMARY_SPI_TRIGGER			_MMIO(0x102040)
> > >  #define PRIMARY_SPI_ADDRESS			_MMIO(0x102080)
> > >  #define PRIMARY_SPI_REGIONID			_MMIO(0x102084)
> > > --
> > > 2.40.1
> > > 
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
