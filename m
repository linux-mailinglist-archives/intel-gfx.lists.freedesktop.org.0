Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB167C79EF
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 00:48:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9013210E575;
	Thu, 12 Oct 2023 22:48:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 177EA10E575
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Oct 2023 22:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697150883; x=1728686883;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wp/Sm+t8cAxFPrNYr/CYbpgMTyv0o4vOs3eppTUBFyw=;
 b=QDoGHw1Gf7N1rXX3R55TwzkmUp1QGZmhV7EswFnBmYpbJAL6roY4SIdm
 lCYjcmvChMVjNDhyv9S4OzYzCV3zfUobPaO8eBMxtOmLlmaEcmzYcaQFH
 IBtOxizXGvXP86CYeRxCFBKvgS4zost4IMGHYn6E5N2wjipHEI9PCe8D/
 GsiRcQn8DzHtr7NTTj+tNsSDp23hXWksOMI0pfB4ASAX29AnW8jJ0LtqZ
 kfJCptf2JICgkd1+4I+tjy9F/DRq0uSDMc1QUnXH0mOnEfSUa3AVdgtu2
 0TayVow8oqs1ZCZHsWhJ/r37ibqq0gsTRzlRoUFsHTqV299BgcGu07t7h g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="6613815"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; 
   d="scan'208";a="6613815"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Oct 2023 15:48:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="754463283"
X-IronPort-AV: E=Sophos;i="6.03,219,1694761200"; d="scan'208";a="754463283"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Oct 2023 15:48:02 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 12 Oct 2023 15:48:01 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 12 Oct 2023 15:48:01 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Thu, 12 Oct 2023 15:48:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RmmRiSy/HQn/H5cwyDdLPu3xdXwdbfWtfE3OOnDvxf84uPReA+OpypL404sANYwY+83Sm8mL/5YOWKKH9dXErPJecIZOXcCCwmCjvzldLArGOEL8A6Mo3UHAwfmviScc6+oHSQuBCq5P8nXh2yspOf8KHCMhErdbC4PMzqf0oyMJ5Pd4ua1dc9OrDCHvp5Wh34CZrOQj6/P9kOxq5l8QcID+1e0s0TLiJxb1CF1RVXQ/OxEp0witW5ehvABGyyoEyxqRIl9gNPXbOrmG7xAK+Pip8TGCvFA08YrLfiIMr1dD2wxTnz/ql2r2LoNRg/yKpyulHUG+pzrM4bn+jqjGdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i7R6mN6DbOMt4j8Vdl/k9NllDg+Tol7mB/e4sI7hhvY=;
 b=REHIBdoqbw+O10C91/nBAFuULBx4jstzfK7R7R69QaVP0FM8R/SC6/YX+ngnmVKisWtKLN6y2pbfyemcmKPW/k1ERCsI5qLcDHzwS9v8O8hpgnw7BgBM6gOOTlhEndIUNgOv3ETN8SBAsg59NCk9BJTngpE1s2OQpnx4gLhb0Yzf9l23+FUF1Q4oW4MuNE0re4MbKLTZaWGfXjNrxPGmGmgCPf/HDNhugH5qZiGb0wfhHSAj2traMWmrtuudPTAOYKyIENmpEzDF7rm+AS1iaan/2J8L0WQju9q2+ocLX+/pQAy7uSEXVFawIf6zwjoOXm/t2SKRGz/zWKCUzN4SNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH7PR11MB7146.namprd11.prod.outlook.com (2603:10b6:510:1ed::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6863.38; Thu, 12 Oct 2023 22:47:59 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f957:c15a:9c34:71db%3]) with mapi id 15.20.6863.043; Thu, 12 Oct 2023
 22:47:58 +0000
Date: Thu, 12 Oct 2023 15:47:54 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20231012224754.GM5757@mdroper-desk1.amr.corp.intel.com>
References: <20231011142704.985867-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231011142704.985867-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR06CA0018.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::31) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH7PR11MB7146:EE_
X-MS-Office365-Filtering-Correlation-Id: 35c6bc7c-5a92-471f-6945-08dbcb7547ae
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Vxz2drbt3ym+exL+eRxSVVVFqn7If68E5OPGLOYLGbWjWjmDVOuIMzQLVk9Up4O5jVxrzl3gSj4hKW0wANaBDnEVKbUIgP+J6iW55PhkC5ANgEvWEYW028nJ/mckuiUUkXEtUiZJGtMHFywmf9sCQU0FCiclJTP/7BdAMtaYJrwVkgWPRMumiBDAQU4wXQJ5XqoJV1ubUGSF4MWzj2EZPiAXbFBzVrzbjpFfUIBS/+LS3OQrsdmLy8Gs4g0zl9GFHhEkawO9m3CT0ouHkNw6rDgz51FzVahmoKyJMXJSJ0IrKKa1BRLTWn4zmfwzXcBxyOgjnDb/G4QMFuu8LF1xUz/J6UPuVKF6HAdth2jnfJBYi984qgM6fD9p/b+oQvE3HZ1W7fbeT6eKddziqRPfcdKWOKxZbKdgOlysxtjV/Ap8y4fXqfW/XAnR0xffNKha/mojQxZ//0Up+z+fv3b+VRodSz4TwOxqPltwcaIOdMW15KoBODtp7JdZ7o2pwuLFLao62tkAIS2ut2jsEWwhmTwL7pTv9djJy7Vdj+6HFuXdLdUgnKlbWWNIeUROEMVk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(376002)(39860400002)(396003)(346002)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(6486002)(6512007)(6506007)(26005)(1076003)(478600001)(6666004)(83380400001)(316002)(6636002)(38100700002)(66946007)(66476007)(66556008)(8936002)(41300700001)(4326008)(8676002)(6862004)(5660300002)(82960400001)(33656002)(2906002)(4744005)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CdPTVX0axKE3icWe8+o8AceCIicz/Q+i6e6+fnJlgBCC+8xz9FilFT1B+Tct?=
 =?us-ascii?Q?L60DMl2fV+5L7t87Ezw9Ndxo3CHUuj3Qa3jHaLrqiGruq3EDALtDJPWZroll?=
 =?us-ascii?Q?GbHPAOH0ORIWa6LK6PC8dXq4A9mEtGPKyQGFpA7/r+h8ELUQqMmcPVxXlc5d?=
 =?us-ascii?Q?aqeln0R+G6llyk4kZDMTM+Zuf6Evlv/W4ZAB130ewBINSSyee74XT9bY/Zop?=
 =?us-ascii?Q?QZOSed8CbI9eQfJADQEzUrvvoWp3/fxiwrdMhsxtc56f+2cEX/ezpvZd0WCq?=
 =?us-ascii?Q?p4VNzQdRkG+2z36xTId7QxqYuuiWLg+gYOQs4YXaxbofzMB0ABwbi8qi60Ho?=
 =?us-ascii?Q?SbIFbralitQQ4rgPOVQYBPj18u/L6ud5r01I/IEGSXIPlG/LYij2rCmHq8h7?=
 =?us-ascii?Q?xrPRAsqJ753DKL87NLMt2GzAvfHkViJQI4xlaiwM7CJCV3q1rSeWALl9b1HE?=
 =?us-ascii?Q?PePf8G74ES3ntR1rbVHiONof8hDe00IcKW4c2wyeJXiaXnZLE2T/9VtyLPQQ?=
 =?us-ascii?Q?bK5yq2u5cO70BO7qx5VRuyJJbpc4EpcGfhNCXUZ4tkaGLkPdhZnX6CEigtMz?=
 =?us-ascii?Q?a7EAWKYid4lR180fPD8k/AWIakg7nIUmXAbMR2vgdKVsgplhxkzGfREHrvUz?=
 =?us-ascii?Q?lnyMJiu83Ve/Fja/7D1PlystllQ3dzZynfbKIPjzhthckABFd877VrhHCL0j?=
 =?us-ascii?Q?R5eRmUPzXrXI4UB8etm0C3xI61c87fVm7eTKKyhpvfDHvL+JoI2znNdWflPR?=
 =?us-ascii?Q?oNVWR+bdYvATJPBmSwZLkicJdI/2kGYHxCc7TB94SGx0Zvc807f3hdJWG+Ee?=
 =?us-ascii?Q?23emwONDwkCILRIm8JHJ+4uUqCP6X6tdVOGSHXqbhdE61AdOQPnBTj2UqJ/2?=
 =?us-ascii?Q?T2+5WQ0HPJX8CCSeys+Oh6dplS6bWBdoxZ6AvJ0Sws6onHSRfpvZzCff8pkZ?=
 =?us-ascii?Q?Yi3vm3MH0LC3N0Ul57WMTyuwpkX+0L7TlCKYwC9we3XvIq+pqhqBOtlWFyI2?=
 =?us-ascii?Q?Sm0KTnzUbJOuCbcn3oobnlxvDtvJPcljKBtvo3wno7lLB7riUIWJWElTcF9F?=
 =?us-ascii?Q?3vPGi7proWYw6+rKYf7h8LgvoPNfDb0L3UlSzFCf4ly2/eLQ+4H8tyyalttJ?=
 =?us-ascii?Q?GzRCEnGr+E1FRFMsSZJYRsapTlOpH95yNYv7RImLtcqC4zLKWhINLJubOcS1?=
 =?us-ascii?Q?0FCZdQciHjk2txkJlCf//gkp8VCRz/9xrAjwaiK37vMtPXBG8su0kBoeNgf9?=
 =?us-ascii?Q?avdg5/f8D8mHxm0CDppLeK8+F79dcRSFEIImv0PfBSrcrE7AsodqxH0e3y0J?=
 =?us-ascii?Q?LHHgOSC47hQVcdvtU7BPWAXL6Ax9rmUkH6+gRg+UfrVXYXlhPJigohS/zmq5?=
 =?us-ascii?Q?g6FpiBbzFa4VjoRRj+vUcFLgQeuzQOPO2PHZT5uyI1TXuIb8+DMZj+L6EoWB?=
 =?us-ascii?Q?39k+QjKU2/a7KZwFjsMpuraHKnnSTHehZ7HGZcC1tqfydixQdx2n2mT5rqTY?=
 =?us-ascii?Q?toGnxFjGn0++UcEOa2FY38Ad5QK+eWgxed2lCLtWoTsuBBCWiaBYEcJ6QjKc?=
 =?us-ascii?Q?nEPdygUPk/YjsRFWVyCeN99LW6p/aB69BQQRbTvLbCAhQP4jPqa/jfGX0/V3?=
 =?us-ascii?Q?0A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 35c6bc7c-5a92-471f-6945-08dbcb7547ae
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Oct 2023 22:47:57.8979 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tM/2WxrDV5sgAkqlYP88pQ98GVBH5PeTq1P91tZBRHiyL44m78u/EuvKQ2AL//ecpwzZi3BcEwAwldzTdFIB4MHAPyq7Q4rFAh9CgHCW3hk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7146
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: drop gt/intel_gt.h include from
 skl_universal_plane.c
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

On Wed, Oct 11, 2023 at 05:27:04PM +0300, Jani Nikula wrote:
> No longer needed after commit 94bcf876cb6a ("drm/i915/mtl: Drop
> Wa_14017240301").
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 245a64332cc7..49e9d40d5e67 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -21,7 +21,6 @@
>  #include "skl_scaler.h"
>  #include "skl_universal_plane.h"
>  #include "skl_watermark.h"
> -#include "gt/intel_gt.h"
>  #include "pxp/intel_pxp.h"
>  
>  static const u32 skl_plane_formats[] = {
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
