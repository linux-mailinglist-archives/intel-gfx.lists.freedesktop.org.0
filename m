Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A35662FE3F
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 20:47:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7891510E7A9;
	Fri, 18 Nov 2022 19:42:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBA0210E7A9
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 19:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668800540; x=1700336540;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=31nMVAsqXi+I2OMpDjCHDwMyNZnCNoLrQDtBoMKIVUY=;
 b=HnXTafLbjshMPV4gkohR34cBnqr5YRrnEdosg/gtitjK+OX6RSnmyVEw
 UL2CD8mwcFOX60ypcBXDbmFcL83vfGRxWKKh/QzZVsSU1THAwtxivSYdt
 DYZIkTPV8K/qEk7FWDwbFiPO/NtiZVdzSyOcvZmdtqAFeI/EyOns2e0bu
 i3WQuLYAGbTsDObLc6xJTl0/WZjBlvu0E/AlIBdrf3sWKApok974TXudH
 oWr2acr25u1Y7dtMorU6j5x4ijS8foruRsKYkc3pjO5Te9SuJlSwR8t9v
 0KV0V//KGIkZzhEn/6cDT1+FG4ec0YTcOk3UblFSpudQ2rBEr1nOgLkHc Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="313237644"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="313237644"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 11:42:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="673303931"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="673303931"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga001.jf.intel.com with ESMTP; 18 Nov 2022 11:42:20 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 11:42:19 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 11:42:19 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 11:42:19 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 11:42:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Aj1M2YC5pruTueogPLnCkqFvIYZh4d7u9ci0iCi8kUgy9RBWP7txaFgULD5Wl8livpUUpTf0Z0Q20ahmYdM05Lpr9XrtBs8R/uvW+jtD1mGiX42ualCyYEXIlI2IC8NWnIqf5bmsHDo9TW6XfU49NXLeFcyJEUKexYuwjzr3zfmwBrP/6SoTs30Kjq8qnxu8c+F+3Hvo9snWsgqp6mijguBrIQRsUnz8uiASf236U/UiXwMxYyNArEEL4dzOyhD4JGaFcGMwR0lZHMhJ8hUgTOHiObpUSMlkYqw3BYGDNnv1JFVCsRXR/k6XlcONYMnNqqQDfgjpLfRoa1z8k54kow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6XJTxMyD0mrHQOqDBhXGrYA8BagpN3UuIZMm/g/T3/Q=;
 b=aySw12TEspPm8l22PdR0TARksBWYaT3QPdnlHKErbxIPY7Yrmmhof3YuBYF6MJXgPhSMcFaU8nozzPW+v/Hkv5HI4OwH+qN9FuvjtrtTDFIlbyb3U9m4B0yEE7fNGHN9bOjP2qx9Zs5Mmwq+qg2EF85MStYnND6KrzDhFvwMkhhhuMEsrsys4wmsBOXq1D4bBg7XX77+eJlzXd+BcdJMSeK0JSA2fqPeJ93Ic6VFjpbl6j1hi24dODpUIId39eYOUyfJgglEzt4+iL7jy3x36erMZnuKaENjhzWmOkRdoKB7ah+3fkMi/nPxXlGhYxb+0QWEToLX8+4cyy5lhZdxSw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH0PR11MB5346.namprd11.prod.outlook.com (2603:10b6:610:b9::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.19; Fri, 18 Nov
 2022 19:42:17 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5813.017; Fri, 18 Nov 2022
 19:42:16 +0000
Date: Fri, 18 Nov 2022 11:42:14 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20221118194214.4qtyzh24xhphlrjo@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221118190008.824412-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221118190008.824412-1-anusha.srivatsa@intel.com>
X-ClientProxiedBy: BYAPR08CA0024.namprd08.prod.outlook.com
 (2603:10b6:a03:100::37) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH0PR11MB5346:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c8127bb-7e5a-45fc-dbb3-08dac99cff86
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iD05gWG6hm40fG9FuEf++fbztYTW13ZqJQeZbKcBGKMYYwDRMzd+YDuHuv9MhoX87X5tFdbC+9xdhe15VvB85u7wybwFaRMhEvY4TtT+MfGf1Yg4qRbYpeOz7tngoq0PB5onL6bcWepSMOX9IGjchE7vZl1BIqFg7UwpOX16YdEdHjnpz3GJxP8yC2shBQrgeURfZNs1zqt1tY8F50NGLz76cgXXqHzhb/fWGOWp/WEXS683Dfg4kPi23aiEcNWI/DP4pM2b7bOykPdhgLnZRmVZI2Sz1lLZh+GGfSRXI4WhIgsYycW/iRzVofsMp6Fsk/6oeQqFLHi+ULmQn+s5AeErKnF2HGHPNATmB5Oqjt6BvjfRGWTbdafzNPQQHqROGGRxJling9QpROdU2IvXwi3SBvu4aU/zZLJc4JDLQZrc2gHCpYWUSs3GYY1jY1NtT+6ynNgo8cO9E7f0knbMzAmKJX+jrgFksSF/gffBNAV4nLDnLqlB/34ngBvQv3BNITF+F1VbkyEy64OsRpGV5dRKWRP4T2YQtGqTuvapM7mXXXMnqylGByn1l7g+LdESRK6X8SzDUIoxZ+s4nxpnxnIeDeRARzwfjKlt9gX/P42fHUp2LQZ/Sru7hKh4AOXXGTwu8tzj2xxMktGUBkT5MQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(396003)(366004)(376002)(346002)(451199015)(86362001)(83380400001)(478600001)(82960400001)(38100700002)(4326008)(6506007)(6862004)(107886003)(66556008)(8676002)(66946007)(66476007)(186003)(6512007)(316002)(6636002)(41300700001)(26005)(9686003)(1076003)(8936002)(5660300002)(36756003)(2906002)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?izj3WLeBeTzYjy+uFQL07iUltYtGWyviDeEzPaJoRi1Pbx3tufK39lQVdimh?=
 =?us-ascii?Q?EbdzFQtLCgNNX9D5afKyZnXEGb0iGYVPN787+jeXQGNr3mWB8pQpm31dYx23?=
 =?us-ascii?Q?0G5874EAEPN1/FEvcd70nPAmgM+5fwi52Euv1uTj5fJZsO2PBSCmzy5kzE9b?=
 =?us-ascii?Q?SjQoPp7Wo4ug6y61ypmPOowGeHf3b6Bxymzaac2AyACT5MCfYCHL22vcq/3a?=
 =?us-ascii?Q?yYBLfBNsOVdiJJIffS8OxJK/DESvwPiUfu30B1X3H+BF/Brh3NQfE+df0YsE?=
 =?us-ascii?Q?TH8CeXFn3kFAm9h3Tb0wCvf1UhOORdIMdDgRE7PdoeIVJ+af+GBuvdDIsfRT?=
 =?us-ascii?Q?tF+aVrNxW9uUFht/b5o9COWXpleu/yC7XbFn06etMaSyC9CGm1+7CaYkgXrm?=
 =?us-ascii?Q?/Ttu0eAPL7iTQbr4wWxvtNX7KysexGCOlYpv95cQ10MNvz2E0wfaw31onYaO?=
 =?us-ascii?Q?kLwDIyiQfut1LBfhFnZAjCjMbd+ZI2VRZsIssJnNOReVzcyJTA4oWJjxig8O?=
 =?us-ascii?Q?2mLqx/XTaZC7imuOyA8vjj4ixkFqCqgYlfu19JmoXk5kk/+/RX+XD8+B0kLy?=
 =?us-ascii?Q?P4GDCOv32lkWzKJ7q462YFOy5vWP6Xs6wRPCbbJ9YUlNuUbo5MvlovWDFBX+?=
 =?us-ascii?Q?9SdQC0sMqrIOICnNVA6RyrhuVRM8a9/3cl/t16t0K4xXL+owvVXTnAMv+d+e?=
 =?us-ascii?Q?/yuq4LHZihfc5DTraYDHgUY2ZyBVVhivqjUGOil///PX+V1tNE6LXIVjsOaW?=
 =?us-ascii?Q?PlEef7TKIuOhjn7HX4GmcxmhPMyIk7U3nralMY1hsCjNN/nD8zzUzbBtQTQF?=
 =?us-ascii?Q?0UWPsZI2K+9PnDj0e2CeXl2x9pS4et3TuawoOtXTqJv5p0LtDE+iipENWSr6?=
 =?us-ascii?Q?ueRlAJNoHS9Av5FAEG8V//mumP9AIvIcXFt7G946YkNkyDa0LLnr9T4Nsrcb?=
 =?us-ascii?Q?sU5FsS25zcEuW4NQ6zaCu/4PQKWlG0Ty/Ql8na1BHw+zTvbo+5V/OgSzYPvy?=
 =?us-ascii?Q?KZAXwukuf/gNe5++6wnBOHBQ6yVRGFTQrGNTZQkhINmIPiDwVZ1x7s4rQGiR?=
 =?us-ascii?Q?cojRHscGsjGVnNeemBrKN+0bMojN8FHPqgxY03/XmJZvb+koSES/QLb9HuTF?=
 =?us-ascii?Q?9oEkDsLRGXMMYgeM+4UWoEPI19NbM+GqAqa85EpjorHlURTYi3Rli3dBmR85?=
 =?us-ascii?Q?Vg9v7kHqU8i6vv2F1GcWD4D7r6/HW6/QD8/r1CZd579la7fCVSrucJCcXrIq?=
 =?us-ascii?Q?04M3DC82yRygW+DMNfFYqo9awhJLWvHQwnEL43OnrfvuzHIoQQnRpiRIcr8V?=
 =?us-ascii?Q?pAB1krhoAvCGdgteYEDCZoPJIfXGLA5cwkC+Nhvi6k5Wy7QpXPtMAv4ZM9Rm?=
 =?us-ascii?Q?ZXvUN+7mCRdbR0q07HZRlICswAcTPbXtiNs3KZqMItfhEglMuozdb8arWcaJ?=
 =?us-ascii?Q?+h6FcqvfkJpzMrJnvYaWUCkv7P9edp+apAFuSNYTXaCygx85t3B/yEjF+IlU?=
 =?us-ascii?Q?pKBeC8hiDKkyxGybittRTr+ocp+Eo11F7Fzbe1wFjoL8BjkrNfC93W0xy6aN?=
 =?us-ascii?Q?xx5QtcvPRNHkpkmeU0+sMIYgXlWI22lswgV8Hk11AjqPrQd8Of11D9+9xT3f?=
 =?us-ascii?Q?rA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c8127bb-7e5a-45fc-dbb3-08dac99cff86
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 19:42:16.6393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4CJuqlnmJDDEVc7TgS+G3WJRY9gtU/TFBzETL0M5jm5Xa0twv+USHcMlw7cbCfDM2L+QXF7KOrnVOK9JY/2INFJPpFMC4LzDUHAZEjUV/Vw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5346
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add missing CDCLK Squash
 support for MTL
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

On Fri, Nov 18, 2022 at 11:00:08AM -0800, Anusha Srivatsa wrote:
>MTL supports both squash and crawl.
>
>Cc: Clint Taylor <clinton.a.taylor@intel.com>
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
>---
> drivers/gpu/drm/i915/i915_pci.c | 1 +
> 1 file changed, 1 insertion(+)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index cf3b28d71d2b..d82f118809e9 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -1118,6 +1118,7 @@ static const struct intel_device_info pvc_info = {
> 	XE_LPD_FEATURES,	\
> 	.__runtime.display.ip.ver = 14,	\
> 	.display.has_cdclk_crawl = 1, \
>+	.display.has_cdclk_squash = 1, \

warning about inconsistent cdclk is now gone,


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>


thanks,
Lucas De Marchi

> 	.__runtime.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
>
> static const struct intel_gt_definition xelpmp_extra_gt[] = {
>-- 
>2.25.1
>
