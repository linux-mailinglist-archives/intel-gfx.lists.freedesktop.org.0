Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 75E767B5B84
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Oct 2023 21:46:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7987810E08D;
	Mon,  2 Oct 2023 19:46:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA08110E080;
 Mon,  2 Oct 2023 19:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696275982; x=1727811982;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Bl6tF0WacmmmyWe4wB/nZDfFRSJ4lmw4tmKIeIiS2bA=;
 b=fKlMPCZkp8Y104f08XBQgfarg6Qj7KVGGIzGZf9ISapMq7JjRZcC2XNC
 Yim8Pbb3yh9EbLJH0TZTEX9RuKWcAQaDYLeljwhzImkA6YxlpN4GhIjlb
 1FrmL2Iuay9PV9f/VV7w3yNZwHBJHmg0t9eccGgNcC8+mb3aXl/wddhiP
 RWg2fet/0Nj7yW9vyBc6i5Uxj/vKnK50tZqdAfvO6AbC7nTzXSHAM4bfG
 Xjj3N9a6IiWxelK+6xRB0GsTZ3kRSPFJiyE+AvZmGiLCDQOXD0B+Uj6JG
 1YOX+5DS+Ks357Xcw3soyyMlR3QgmEuAVFKtqClcR1iTK0avuGru0Cm/8 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="446880345"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="446880345"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Oct 2023 12:46:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10851"; a="780048869"
X-IronPort-AV: E=Sophos;i="6.03,194,1694761200"; d="scan'208";a="780048869"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Oct 2023 12:46:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 12:46:16 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 2 Oct 2023 12:46:16 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 2 Oct 2023 12:46:16 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 2 Oct 2023 12:46:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eeyPcQ4KxMVtyZApKcIxrmPQEr6NFSCGSpwld8KZbhSkQEowk4yx1iNeuwgfO7JNGIqcvn6r3wCpOX1qnE+Isk/QT3Ek8PO72SGc1bT55EcOUIvvJ50SeayuYPIsVc5AhlPr21IO6NkHdDNIQJcFImRovnPzus/j6YPPsDuliibGDw3l3+BlFuPXpYyUafXlXLLmVOGhtDGyTMXWva/osho2kthv//OrKYT+k9yFM6/FjJyEf+2AgMIl5By0JBpouOvao2AHef7RyagHHqRSqohzmXT1f/Wr6LG30HmzqE88FggExDfj3Dg9/ZYs6gT5QYGQ/cm3HYT4fb/f+dVmtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=51QLAO63XHhjeZVSzcbgXu/yR2t7UJojnzKkwXsclyo=;
 b=VDHFk0IgXjBOrreVTlglNDxY3An4veOkoGTprDyWWX1k90L7DH2j7kPyMHY3mA23P3sGPblKKLnheo/3h55iKKRjzf++0P37fP3fPDu1LqaKdqlrWzFcaBe+j+T+oydIA3C7Um4FoexSAbUd1jMMCss1QETHxPplmrScCBLJJ2HJOBsyhBHZ3mOmHKCe2MiDtlZuoLNwXd8x0Xwj15cM/nseXa/sKMeDkj21ogf0fnO/MjD/bM6gqYVd1MwhviR/H351M9N6rIEIXyXhEMDeaiGwcI9Jvk7mL114vCgo4R6K8Bev7wQTzbrFKpgDynAJGBG2GSO94inVJ/FtNSQdYg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5326.namprd11.prod.outlook.com (2603:10b6:5:391::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6838.28; Mon, 2 Oct
 2023 19:46:14 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::6d0b:5bc6:8723:593%7]) with mapi id 15.20.6838.029; Mon, 2 Oct 2023
 19:46:14 +0000
Date: Mon, 2 Oct 2023 15:46:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZRseAWK0mm0qpfRl@intel.com>
References: <20230929205023.1202735-1-rodrigo.vivi@intel.com>
 <871qedii91.fsf@intel.com> <ZRrsHSzer2hNO9Ua@intel.com>
 <87il7pgdvt.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <87il7pgdvt.fsf@intel.com>
X-ClientProxiedBy: BYAPR07CA0049.namprd07.prod.outlook.com
 (2603:10b6:a03:60::26) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5326:EE_
X-MS-Office365-Filtering-Correlation-Id: f8d6e0d6-df0d-4ba9-af96-08dbc3803c5b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vtTpk5Gf2zffKHzPviVHo0tmCORB9lKWuM0RR1nhoXtHQQqlQ5f3iBIQFR3MTW8nBzt86zbJBMK8lQyas1K3VbZ5L0Rj68VTDMiLaNDyqNP3sSBev3k4tAVK0BZ6EsedrEzmYLWreKNRyXURkCuGWSuZB/k78zPICQ9QqgHtImrwxqjQf/NJQMADyx0ijf+fPKimt/J1C7V1HrlgrKvOUVAhCltgPQylXcM/sp8roxcQ7DMu+YzY1r80FTcZPWqk8sRYYkOzjnoQ4ahSII5xpe4U3ySXJ1YS+CFBRsLfo98MjNqG3SQE5+DIi3FrJaFzChLVgRvkIhbVMaIUuijBRWrBIPIA0RX/hJo61T+OrU0rMTDWjXRrl1FzkkXimGcvqWhLykPYq32+6UKUzkZt0f+C95vQtBs+uIugdmvI1mezWHFoxPHTyQNZayfAkkxG+nCKBhG1f/QUwGzzxl3ORybymFPlx4RizCLvJ3LlNug5G4f+R0w2xfRRdF34mUuWpL6bbwc50a0mn/7IrErW0frw/O5gxl4NTLVyqwIHKbBFFsDQKc+NY66wkdcJuazL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(396003)(366004)(376002)(230922051799003)(186009)(1800799009)(64100799003)(451199024)(6512007)(6506007)(6666004)(83380400001)(86362001)(82960400001)(38100700002)(36756003)(26005)(2616005)(316002)(66946007)(6636002)(37006003)(41300700001)(66556008)(66476007)(2906002)(44832011)(5660300002)(450100002)(8936002)(8676002)(6486002)(478600001)(4326008)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qIo7/BihGIImBCB0jSXjRniPu9L/xEk2djxwJmkAedoV6j5RGqoFZKxf4GEr?=
 =?us-ascii?Q?rRGx60dw43mPKcjEME40HbwVOuaQ7Oo+9BuW+YVKLOU0S1+DjSLXqODBc3Q0?=
 =?us-ascii?Q?nJlKE1x1jcYJXE+6szyEHS8NG5RTPUCqWT4DSKD9PR4JUu3ZrPxkJTUq96d/?=
 =?us-ascii?Q?AfneJLzD4t+7gTj5WQ41Hep1ZTwpZ87P90U42cDJQeaC/6lvVwny2wWnQWc3?=
 =?us-ascii?Q?ldykynU6YWLlD4CJOSKHrkt/I1uaCSnC1yQZKjFZTjGokuaqWL/PTBoxL2ju?=
 =?us-ascii?Q?XBPkXo88awFtlmYvHvisEygLy6zHkLjlGzlsPMet1lOP8JgxyylRJpxT63/m?=
 =?us-ascii?Q?knJKfmYwZnByA64ByabJg+OQsx61LOjoTznm6lkV8KGh70eMCHDz9tU0TVbV?=
 =?us-ascii?Q?NczWn4JbGdXDR2VInKNIXDPq4Q0LQG2YkhX0wRw4pPRZ08vm796152slLKfc?=
 =?us-ascii?Q?Cs1po7d8Uv+p6eIFatovZvImXxNfszmygIX6MM8plNW2BC09jx7HsfSK7SyQ?=
 =?us-ascii?Q?FBw4kh97yVG7FMiLHypVsZ5XhMaVxPNXLF8oKBgY2qb/LsGvO+CWqK12Aw5y?=
 =?us-ascii?Q?CKQUaWqwTzlfUBVm7tly/1wmclxnEtjoK69gOJ3EcR9VSzG74682kPi/l1RQ?=
 =?us-ascii?Q?4dB2HFU3ET8APcxa6iIi47x67cDNHshrhauj4blxFFdr0VHUr8p2hW4efVVC?=
 =?us-ascii?Q?mCp9NrNsW5igRR6KTg2rDRXi/cmROOsYdHQCpu6k8SGaQhsn5v2IPaMEYt0f?=
 =?us-ascii?Q?61AvI/xJj2zTDgelAaIR+5wtR8CzwIdzJtDAiSYmx/BHeJ24OrUKSvh9x44r?=
 =?us-ascii?Q?RkOoLCvuM8pPMJApf5GYGclBGEL2IeuiNhhAMvhaGy1QiEomes6YVRnBLxuq?=
 =?us-ascii?Q?k0j/yOUfXLmc/ZQY3olb1z4u0SZC4eZe/jx9Byn2Y9A36UeqXcDwoy8rhGAW?=
 =?us-ascii?Q?bw+tcqBfZShG89JzzF8lAmk+De/E/ro9kypAFsXP8m6kHJX4iMIK0vhef1yA?=
 =?us-ascii?Q?htstGvOVCnhyfue7i5k5OlWmkw3FqnebhK1V7QKHPbWjPOiG8OJEaDnxoRa7?=
 =?us-ascii?Q?0CPXBqsJ/xgEN81JNTN1HIJiTeCTMKNxkd2Yk/6eNDkY4rzcBIdd0dtqzFD1?=
 =?us-ascii?Q?Rz7DqjV/2k6p2kwyQj7kNI3x7nNlX5uKBerXq65cbsz6Vk2+MyE78n+0oN9P?=
 =?us-ascii?Q?9Z/O2LHkt2rENCBZtpuHRSkQ9iAEkNnat8K5W2wtiGAoaZgMAFByjcLQjcu3?=
 =?us-ascii?Q?LafqdfniNsmOSzSq22KSBqIYoVI2i800gzcjSirKN1PdSeywoqvzgEEPq1yk?=
 =?us-ascii?Q?+7muHOhLuZea5LWowg7SCtHG2f/t9NpZdmeFvMcYkhwDyF1rHdnA54DXQHiS?=
 =?us-ascii?Q?tDd0FJfaK/CVZVA1gUCpHAn9mMQWf0Hcj4zBH5TG5K23+z4PcvUIUuMCk0af?=
 =?us-ascii?Q?Nu46M3HFlHq7yD0a/qD8kXvNBUxyyKh4LGG6bsdo0bM984oyLXBHYJt2A06h?=
 =?us-ascii?Q?EapTko3bSvmDxBMI7/2fQoErVCRPXJ16zUPWhGg46bPWYmh/Gu3xOz4ykC/z?=
 =?us-ascii?Q?oy4RhyDcf13v/Gitx2+NyUjGHrLNjSac5SYHNj1J?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f8d6e0d6-df0d-4ba9-af96-08dbc3803c5b
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Oct 2023 19:46:14.2464 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OGVlso92v7Rf/cwMfDPkmRp6w/HtprqMgl8n74Cdzh+oroPIdLPSKhXnchdgL5sRV2dZaUtsBs4X1wPQMfxq+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5326
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Abstract display info away during
 probe
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Oct 02, 2023 at 07:58:30PM +0300, Jani Nikula wrote:
> On Mon, 02 Oct 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Mon, Oct 02, 2023 at 10:41:14AM +0300, Jani Nikula wrote:
> >> On Fri, 29 Sep 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> >> > The goal is to have this function ready for Xe to use
> >> > directly. So, let's use the available macro.
> >> 
> >> Seesm wrong to use DISPLAY_INFO() as an lvalue
> >
> > to be really honestly I don't like that either.
> > I barely like macros, specially used like this.
> >
> >> and I'm not sure why
> >> this wouldn't work as-is.
> >
> > I should probably had collected some logs and added to the
> > commit message. But the thing was that without this assignment,
> > (xe)->info.display was NULL and the memcpy below was exploding
> > with NULL dereference.
> 
> Aww crap. That's because both DISPLAY_INFO() and DISPLAY_RUNTIME_INFO()
> in xe are completely bogus.
> 
> They should be
> 
> #define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
> #define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
> 
> instead of
> 
> #define DISPLAY_INFO(xe)		((xe)->info.display)
> #define DISPLAY_RUNTIME_INFO(xe)	(&(xe)->info.display_runtime)
> 
> and these should be removed from struct xe_device info member:
> 
> 		const struct intel_display_device_info *display;
> 		struct intel_display_runtime_info display_runtime;

but in this case we would need the macros in Xe to resolve the access
to these items anyway right?!

or how should we handle cases like  'if (xe->info.display_runtime.pipe_mask)' ?



> 
> BR,
> Jani.
> 
> 
> >
> >> 
> >> But *shrug*.
> >> 
> >> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> >
> > thanks, pushed as is.
> >
> >> 
> >> for merging to i915. (xe should come as a backport with cherry-pick -x.)
> >
> > and sent the proper backported cherry-pick to intel-xe ml.
> >
> >> 
> >> BR,
> >> Jani
> >> 
> >> 
> >> >
> >> > Cc: Jani Nikula <jani.nikula@intel.com>
> >> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> > ---
> >> >  drivers/gpu/drm/i915/display/intel_display_device.c | 2 +-
> >> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >> >
> >> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> > index a6a18eae7ae8..ce55b968e658 100644
> >> > --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> >> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> >> > @@ -926,7 +926,7 @@ void intel_display_device_probe(struct drm_i915_private *i915)
> >> >  	else
> >> >  		info = probe_display(i915);
> >> >  
> >> > -	i915->display.info.__device_info = info;
> >> > +	DISPLAY_INFO(i915) = info;
> >> >  
> >> >  	memcpy(DISPLAY_RUNTIME_INFO(i915),
> >> >  	       &DISPLAY_INFO(i915)->__runtime_defaults,
> >> 
> >> -- 
> >> Jani Nikula, Intel
> 
> -- 
> Jani Nikula, Intel
