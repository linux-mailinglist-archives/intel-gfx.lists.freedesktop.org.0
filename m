Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BF2B7D72FF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 20:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A61C310E5ED;
	Wed, 25 Oct 2023 18:10:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C87DF10E5ED
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 18:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698257454; x=1729793454;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=mpl1tXAoiqLtFGAzHD44muW3duH2gEI9FnGm6BjLkPU=;
 b=XTvYjI3VUyxMQj5CuEDn7+Qw4SgVEoqAdEvAHmffgtUuMm563WaY1Es9
 UuxheEvreP0OhUyXJNiyZomcF+WPVgv9KssJqcOPydN3txOSevnRFbS4D
 Aa5V6a81Sr+BGrkQjyfg4dtkCA62SsiReamzMYzFtOsyJAvcmwgnpHVmE
 8TCMScWIxCht9OtVu9lxjZDxqMUBiD8YDUQBypcoW5Ap6Abd8bI6anhDU
 0gxAKbhYUlskC5YdVz3HZrREu6eNVRht8rFFm5xmT/IXJmGyUM7vFCIZ5
 6c9GWhKcrodV8rfyGF0xGdyiXCLC8dSGCrk09mBkQq+8UF6GILbRmsXjO g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="384578902"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="384578902"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2023 11:10:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10874"; a="1006096941"
X-IronPort-AV: E=Sophos;i="6.03,250,1694761200"; d="scan'208";a="1006096941"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2023 11:10:40 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 11:10:39 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 25 Oct 2023 11:10:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 25 Oct 2023 11:10:39 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 25 Oct 2023 11:10:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dCvPBv97HWfmo5adQa8VGsI8nxcC4XrawIhjfUyiN4Jj91D+AZLzFXPT0xQCXnDJ4UqsHk107uWnSdyPg2gFKkDHLh+3QP92hZMlgvljmTNGQCeLnC7iKa4LPA2XhHdFWAp4yHKaQ7ziIB/Falf5NsS+EeqsHf9lSloziFDIpJ+EzZnNAkvbwannrAfO+3yzUw1FgMl+bXONlRA2UkOI482Fi0dotNBe7hkpVX3Y+GkvAa9/NLBC33bbIpxP4KrIVlfhBH6Wytz8XoL5IFoOo7OyyFR6+mvPVytYm6hr/4JqxVh0ShphRm4eFfiIMSxdLT4s7SumqRns6FlHN2sJfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PTG1AXn/dXWhr2dQeR47NN7Fd8HhPRCQ3yRwFWALChY=;
 b=WHnNvNqHvSnTG5XgJYEHnPpafhi3Ivv/eadmtQX9rDISxRGTFQwytHU0UpFB5CRUV6AF53bL2M5lkl9agJ7+X4lp70BPvsO0EaVMxP1cbP4eDZ5jStr98gwhM7D7FDFpYjS+dbWXvw7sIkk8L02Dj66qw75EHMsN5kE1orN+B2OMr3ZojxipF3QTAFF1XbAt0Dxyr9uHLugTN4jYgizZO9Mh+ig+BTf3ZNa5B7fjxMSrHXhi35sUJOpbiGoEymm5PO9dTbnmETry73HpW2ypN4trV7vxuNp0CwyLOQgAIz4wlKh168Z/3L2Bh3rWkMEZ237Fkym+6n/PMWhmjOqqaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.19; Wed, 25 Oct
 2023 18:10:35 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62%4]) with mapi id 15.20.6907.028; Wed, 25 Oct 2023
 18:10:35 +0000
Date: Wed, 25 Oct 2023 11:10:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20231025181033.GJ1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231025103646.3315818-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231025103646.3315818-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: SJ0PR05CA0101.namprd05.prod.outlook.com
 (2603:10b6:a03:334::16) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: c2fc5c0e-d7d4-42fc-3171-08dbd585af37
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: GpxXdghqCRtC0QqRfXNUrfNQV0RsxqIRdhoklGylPg5RKdnCnkMujbBNHQm5ToO2xYioNBgjXbnRhppb1S5L6LNgpvCgeep9z/Rv+xbSSPaWwZVPC99AeeH7z3Yi61vol22yawBs9M72V2fWcSkabUaShSo5AcDiYyJ2KMve9dioE+dPSErU4M7SBmA6gPLJmHU+lktuwd6wMZOOlS4xMfRhbpkAd8BDrc4v8Qw614nQ6rX3OafEzjTW6KFY6JKgMzONTj7CNN/5/NjPMVA5GjYwFhB2LsHA/gG2ogeU0guLpGxh5w9TQFBx5oWIEfEOP2d6bvq/R/tH91jukbLCBCjAtiRbo6j8IKv8/hAzs00NvzeZLyEvf2Uts4pwtNdFQtXCNFDffrAStmvhgX8kZ7JyeRclIe0MYAOil6mBlLgn6gbNCMSAkoiQH1HsND0RoU4m1eK9gE/BqjEGZxJcgafcsFEUTu3dGdwlq/IsbD0n6iuzcTbiBlUAMLiBGterJTsMqx/Err9SSpCsRFeS7r2V2pB9wuAghgXsrc9lrwjNHe8FW1O68vnRQ0stithU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(39860400002)(136003)(346002)(396003)(366004)(230922051799003)(186009)(1800799009)(451199024)(64100799003)(6506007)(478600001)(66476007)(66556008)(6512007)(66946007)(1076003)(316002)(6636002)(86362001)(6486002)(33656002)(26005)(82960400001)(83380400001)(38100700002)(8676002)(8936002)(6862004)(4326008)(41300700001)(5660300002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?tYolQhGqrRH5qSvCd4jhe41WUiFqS5JK0HoIMKSVsaLUSr5fxSWbjEZ3rhXg?=
 =?us-ascii?Q?c9T0LYGcRUe5k1Cu+WCAyDnMtO4ti5awH/VMdRx5/L3HtaOyvHVEccyMHfza?=
 =?us-ascii?Q?BKQWngbLV7dozR18tbyvikDtI8f6lDfpBmXVINXp5qSVKWTX6zKNWciRFz4s?=
 =?us-ascii?Q?1fuWhToh7t18o2aRrUeLRfzVFsVPhbLTx69K5ZhwAoXL3spu0WQkHZVEBESy?=
 =?us-ascii?Q?bqtxJ8CeWgDxKzuTFfRzC9hnNBhPQIHpCqOs38MwYUuK5mlffcz2CVEhWhZL?=
 =?us-ascii?Q?20jHRPwj/CiiXvUMueR5jWNRoLgF0/JE1axw0M2GGgR5E0Lfjw4pquBt14yg?=
 =?us-ascii?Q?NXVyGj+jSme4vGCTyhqGUefF9rxxYcRu9M2f0qstJKa7Gz6z8ScFhGOPHQq3?=
 =?us-ascii?Q?aXC+12akEYW2MZPjHG4jlWARAYoFeLWnCGGO1k98YinmQbXXWnw5d4UC5Nn6?=
 =?us-ascii?Q?jpz+QzHlOChumZlS4zS1Oq7W4TYTzXXAehlRCeyKyzwFq/iy+dzkVFtpd1Jm?=
 =?us-ascii?Q?qdfml/sB4TYuMC2UIqJx269fhoF3yRVPjFlwQiKHdcSlFiOQC7RW5j701/In?=
 =?us-ascii?Q?iyhADxs/sQEOxvX1bsZCkp7RmNbu58F4CZqizIA3XUx9iVXky/Z8MaELFVEz?=
 =?us-ascii?Q?S5Oqrv10ua9wVK8tZa2arNIUPR1MSEtvBf5Z5ll95ztnboYOQaauKrkfzRG9?=
 =?us-ascii?Q?c/wQNG3Wh3EgAiFff9jkLlzEkyrxGpW/7+dsnTvSgQFnHj2UUR5cBVzxlm6c?=
 =?us-ascii?Q?PMe75e0R278mEU9NLQLWZOVWKnIikJRYmHEbaS7Bw5v968be6AwWG3Ie6+S/?=
 =?us-ascii?Q?eBCV7k41aJgNw9Zzymq/VU5qAIq6i2Nr/qvPF1lwg0ct+LQTUo0KgknSOrB9?=
 =?us-ascii?Q?zyS4yLbZGyUSuI1YoZllVyv9w/n3ONqfLaWwT2D8PFkmMLuiDj4Hj3QB31zk?=
 =?us-ascii?Q?8xN4TgboT4yq19WWRjEjilLZKsmaNpSkDN49YYFGSqnI9b2ie7UEUNh0F+FN?=
 =?us-ascii?Q?5e06ASc4+lQ20qy2qxLDFk/a8iuZVRLvyvm6uEZwV8CXAG3yLw2RO4CjBNq9?=
 =?us-ascii?Q?P7T0UeZmoPK7AfhuBkg8K5fiwDeC+CQGOzO9QyJNdyu4JorJy6FC+OF0Dwzy?=
 =?us-ascii?Q?LzQSyFZnHFnaDhUNNnmBZ9t4kfQ7XLyIGKMHUQVgDnqyKfpjrhG7Obfnf/YY?=
 =?us-ascii?Q?15akvjVgbTM7FryxRvyIL5p7Yka/f2YYYEDVAm6E7PRBczHHZsHMEQIAnP2L?=
 =?us-ascii?Q?br2ideB+BHrNGOxjRDYol0ddIduos4fLzmoGmp9Y5dxND/7S/wkdSZVsi+ac?=
 =?us-ascii?Q?DFewGKx/Tezhfpn6mZVnM10AV015wBBhcGkqxw7Lc8XSRYOOs9qYvaOtgT1Y?=
 =?us-ascii?Q?NXpZ5fCB2+1d70bO30jYfLFw6fszGBBNj9N144Q8EVRhJruMWravD3L1eJSQ?=
 =?us-ascii?Q?KWtNbTbCL/7l++XOy3u+TBlrjLJxtcHl4NyGXMnxNP0eNAB3OiePJZwATmGI?=
 =?us-ascii?Q?qkN5wTr0IJhQclSi3SxlyOcUwJLgTPsPpUqIxdaNxPSAFUAC0Cx3gc2G0eM8?=
 =?us-ascii?Q?gs6mKBIMHBGnmm7KQpp59Oa00wAjP8EmyfyxReSp/KhhiWHFg95Kq0CDfW5p?=
 =?us-ascii?Q?5Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c2fc5c0e-d7d4-42fc-3171-08dbd585af37
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2023 18:10:35.1761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sLaU7YYsjz1r/2HY8ywii5R0RcU1M0awxbuaHHi5f/+vGu8irwJhZs1XoZvbkvi1bUVI9ZEAnrEPJsD6AZaAn1yn1Cjxgd+5A2wimcvHmQ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Add Wa_14019821291
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

On Wed, Oct 25, 2023 at 04:06:46PM +0530, Dnyaneshwar Bhadane wrote:
> This workaround is primarily implemented by the BIOS.  However if the
> BIOS applies the workaround it will reserve a small piece of our DSM
> (which should be at the top, right below the WOPCM); we just need to
> keep that region reserved so that nothing else attempts to re-use it.
> 
> v2: Declare regs in intel_gt_regs.h (Matt Roper)
> 
> v3: Shift WA implementation before calculation of *base (Matt Roper)
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h    |  3 +++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 1a766d8e7cce..192c9a333c0a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -404,6 +404,23 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
>  		MISSING_CASE(reg_val & GEN8_STOLEN_RESERVED_SIZE_MASK);
>  	}
>  
> +	/* Wa_14019821291 */
> +	if (MEDIA_VER_FULL(i915) == IP_VER(13, 0)) {
> +		/*
> +		 * This workaround is primarily implemented by the BIOS.  We
> +		 * just need to figure out whether the BIOS has applied the
> +		 * workaround (meaning the programmed address falls within
> +		 * the DSM) and, if so, reserve that part of the DSM to
> +		 * prevent accidental reuse.  The DSM location should be just
> +		 * below the WOPCM.
> +		 */
> +		u64 gscpsmi_base = intel_uncore_read64_2x32(uncore,
> +							    MTL_GSCPSMI_BASEADDR_LSB,
> +							    MTL_GSCPSMI_BASEADDR_MSB);

I overlooked it while reviewing the previous revisions, but I think
we're mixing up which regions size/base refer to.  Basically the layout
of the overall DSM stolen memory area is:

 [[  usable DSM area  ][ GSCPSMI WA area ][ WOPCM ]]
 ^                                                 ^
 |                                                 |
 DSM base                                    DSM end

In i915 we have a resource tracking the DSM as a whole, and then also
another resource tracking the "reserved" subregion of the DSM.  Your
patch is trying to incorporate the gscpsmi workaround area into the
reserved subregion:

 [  usable DSM area  ][[ GSCPSMI WA area ][ WOPCM ]]
                      ^                            ^
                      |                            |
                      reserved base     reserved end

So regarding the first condition here:

> +		if (gscpsmi_base >= *base && gscpsmi_base < *base + *size)

I don't think this is checking the right thing.  You want to see whether
the gscpsmi base address falls somewhere within within the DSM as a
whole, whereas the base/size you're comparing against above are the
preliminary bounds for the reserved area.  Assuming the gscpsmi address
does fall somewhere within the DSM area, then we can pretty much assume
that the BIOS set things up properly and the GSCPSMI workaround area is
immediately before the WOPCM.  I.e., the gscpsmi_base should become the
new start of the reserved region.

So what you really want is a condition like:

        if (gscpsmi_base >= i915->dsm.stolen.start &&
            gscpsmi_base < i915->dsm.stolen.end)

to see if it falls somewhere within the entire DSM area.  If it does,
then everything from gscpsmi_base to the end of the DSM can be
considered to be the reserved area, and we don't even need to look at
the value in GEN6_STOLEN_RESERVED to find the WOPCM size.

So maybe the best thing to do is move this condition to the very top of
the function before we do anything else:

        if (gscpsmi_base >= i915->dsm.stolen.start &&
            gscpsmi_base < i915->dsm.stolen.end) {
                *base = gscpsmi_base;
                *size = i915->dsm.stolen.end - gscpsmi_base;
                return;
        }

Then if the GSCPSMI workaround is not in effect we fall back to reading
the WOPCM size from the register and use that to calculate the reserved
region base.

This is a bit different from how things work in my Xe patch because Xe
isn't tracking the reserved region of the DSM, but rather the usable
region, so the logic is somewhat the inverse of what this i915 function
needs.


Matt

> +			*size = gscpsmi_base - *base;
> +	}
> +
>  	if (HAS_LMEMBAR_SMEM_STOLEN(i915))
>  		/* the base is initialized to stolen top so subtract size to get base */
>  		*base -= *size;
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> index eecd0a87a647..9de41703fae5 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
> @@ -537,6 +537,9 @@
>  #define XEHP_SQCM				MCR_REG(0x8724)
>  #define   EN_32B_ACCESS				REG_BIT(30)
>  
> +#define MTL_GSCPSMI_BASEADDR_LSB		_MMIO(0x880c)
> +#define MTL_GSCPSMI_BASEADDR_MSB		_MMIO(0x8810)
> +
>  #define HSW_IDICR				_MMIO(0x9008)
>  #define   IDIHASHMSK(x)				(((x) & 0x3f) << 16)
>  
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
