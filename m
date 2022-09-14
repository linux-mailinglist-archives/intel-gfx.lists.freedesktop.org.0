Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B5AE5B8A98
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Sep 2022 16:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E048310E93D;
	Wed, 14 Sep 2022 14:33:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99DF410E93D
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Sep 2022 14:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663166004; x=1694702004;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9hCF7b3pCSVNsPnFwb64w3lGdpjzQoUjkkd6vhgtl7c=;
 b=eJXEvQLASUSKVVZ1bQwGx4cdOn/QVfwDX4cRg00bgz4ATOKfKbZxDvqg
 aBsMuJC23XzAHO/ULZQXDdgCANpaOCBys2n95xcknP5CEkk3kjao1S4W7
 mfUMNWJffPbcDE3//BhkdCdADMyfb4djF7FrdwPDz7co/ieJnwJKJhFiI
 RGxdeNfwNQ0qtyK/mSfpej/bBgU7txn7NVXm7XdJTkViwJaQXEHdZoc5b
 uxJx1dL6fDCy44zyM/eb7HNYpNVRFDw0fsk8PBj5rKt8l84WX23Vi2oH6
 wofNXX54GKW/7b+01ReyL8SuHDbGWw85NN3xwwRMsBTIZxJ0kpCmqaDiW g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="298442940"
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="298442940"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2022 07:33:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,315,1654585200"; d="scan'208";a="616883546"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 14 Sep 2022 07:33:23 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 07:33:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 14 Sep 2022 07:33:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 14 Sep 2022 07:33:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.107)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 14 Sep 2022 07:33:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RL3QBdxRlObZgk9sP5wD5R5ZTwzqSDx+Niv/f/C6Rlrblazmz6nihvCTb93omlkJmsNq70NcrgrY1JEGO5anpOibv3O2bCp4eOOENxYmPVPr6n/DBEQrWlr6OeWZOsUhvtCElyrMGWwG3RhMNRvETDQ4J76w1mMH4wiEi+OEjAPkTLyih6gYfu2pOOM0X0GAlPipq4/rf/PgGz/mFWD0+DTyp0ycZgU3OUiglyTvyhY88engOlwTiPSHW9eVnl6U1S2cVogfd1qmamVLCGYdjzChm49eGi5BiA6YRvmZTQZjimheFsXYipARWlCaQYWUjWglKEDMBV7h1MpMEi6LaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EdyFWBc675LUGB0gFk9w3eLCZki+pS2ZntvGROHu5Ak=;
 b=L4RO3G5N0YuFvIlmzavHW04lM4rtmb1FeMOqTdRnVrL2jdlewtXA3uEkcQBcbMbTMCD8oYlR8d4KOfn1aAHy2wmlc4aRnVUNfFnVG5xFnW28WgqaPcPb8+RrgCs1+wZ2bEHG02D2Li0BOosx9M6gnl1s4dxJWoUTebBDaETvlIZCmhK7sp2YfxydokFmP5kXI+k9BlAEABT0gOIp75invqjdCE9jN1LFYhzNrMbHuuh7kKiwx2G2xv0uk8XD39uMAI/MU5p5NasQtQhfgJAVg4CVcZJ0ZfAOgK9pG6aR49TNYx3QCkk1SuUCxXnsgDUWqZjR6UsQRwmD0+mRrE4UxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by IA1PR11MB6193.namprd11.prod.outlook.com (2603:10b6:208:3eb::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Wed, 14 Sep
 2022 14:33:22 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Wed, 14 Sep 2022
 14:33:21 +0000
Date: Wed, 14 Sep 2022 10:33:15 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Anshuman Gupta <anshuman.gupta@intel.com>
Message-ID: <YyHmK0sc2r1G7x5i@intel.com>
References: <20220914141553.16864-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220914141553.16864-1-anshuman.gupta@intel.com>
X-ClientProxiedBy: SJ0PR03CA0106.namprd03.prod.outlook.com
 (2603:10b6:a03:333::21) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8335de19-e0cc-402d-268a-08da965e12fc
X-MS-TrafficTypeDiagnostic: IA1PR11MB6193:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ML12/Hh/5DURCgUGF8OCD8LZEQFWDN88Lkd8CRJ624CAN3QvmRXnG6kwB850ygJx0cTAI2TYufXwvExG3jfsIcLJFYQAP1ujmgbC9icKeXMJRSOhZaPtz+lIPhBPFhqj4wen0RE/SkYtWgTfSKYhTuWUQx9bWi0JNYPRm0z9gIQ0L0hmOuPdspRRFEi+8A3z4DZJjYFCP9L7O/C9D7sc4P5cLYhKPUptrNfQHSRy+d/2f5uYMuPn4+f0l+NqXjyYa0jyt6qggxTJPN+JAdjE3nx1cVBSO6QeOwNlHvl0JFpjJdoAYvjI9Rj/13WGuvIqWP+sy+XFlXoe8bmOcvweMPMF9xKh8wQDaybHa/fBxJBYObyCZLpQibeyqIpkWSe6ISRDQigI7ylcxp66laDz0/i/YkK2VdQNSPq93RYzJKiU/9HxmkADhUgnBkpt2/ZM5wMc2VpylrBEaucz4Q2ZcrSHxZq380QMfi0OTOWW6yvbddnrkjMNlQFt7SLJsCdU++VLATi5XvMqXhfmwYbXR8plYzi4BD3U1ZlWUVUEAWRmjpTEeOCDq9F8npJlED98uG8Rsz2KTd98ECUKJFli/OvQr4/nAPnl1JNZMIYSz480RdG2y2vcy6BbmWisBECiJQY+Nn+RRFtKc0ypV0zHaQCDARqX1VyI9cfgIjez3Z+CC+5kev72qzziTR7yeHgnuN9468E+A0kmwSloFJ1APw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(346002)(366004)(136003)(39860400002)(451199015)(6506007)(6512007)(2906002)(44832011)(8936002)(6666004)(26005)(186003)(38100700002)(82960400001)(6862004)(5660300002)(2616005)(66946007)(478600001)(6636002)(66556008)(37006003)(86362001)(41300700001)(66476007)(83380400001)(6486002)(36756003)(316002)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fu97gb8PdLYvPjZxGXv7lyopVM2FFHmu8osfdXpQkOxyPKqiL40dLQVWMMAV?=
 =?us-ascii?Q?1bIOTqU/Z5rQQ9zZMskjR6Y3ZWwicN+qLQ8FRcui5FrTUHu5QS44YyQYROWw?=
 =?us-ascii?Q?jQsg/RCix/oTYDi4FrMD0UzrTf+Y9HHL5PuyZbTRFoGRxkpQTsd9gvz0dnVP?=
 =?us-ascii?Q?J8BQMi/ODrSiejaGdCXX+yc3IPy95ZfHPbqD1rR27yKMl06pc19RMvAlnW1z?=
 =?us-ascii?Q?Zn9I6FqR612bVxxwtFBDoC92/6mqRuYZQhEwYWDhRbl64II8tka6puSzGxZU?=
 =?us-ascii?Q?HKPSjBRCBmTMSj5FJlejK+eL8aIfidPDT1FoFTxU9bWBFl/Pqm3czg2Rzien?=
 =?us-ascii?Q?yCcUDR5waqRB8KSASiEXYqmI0COD+TfnH8SKk8+tAC9FqFRlRwt7UJS3+2x3?=
 =?us-ascii?Q?xCzXbB5gre48LHn5ECOogN6bIT7gDkvNAFnzyNjniheaOz8PBWWeYkhxgEoy?=
 =?us-ascii?Q?jQsAUvgFfhG14x+8GEGU/E+cwuQwxrJH5kXcU6arjBKEq6qolXShkXzHPkx1?=
 =?us-ascii?Q?qlbWkppi1SGGfz9WOcG2FXXyf7cqfEwv/qnNOnbk934cfk/yJjhjO+9Eg1hT?=
 =?us-ascii?Q?YJ+Q1x1OgHU52c7aiEiVvZNR/bcbRhcXe9pxSfKgTXnAZ+p1DGeDC9Q43VpS?=
 =?us-ascii?Q?hvYEasJ1fMxVVfIX+h2f2dUs2Huab6jMz+h5VuQ1zZTuF0pNUbJ77jglmh15?=
 =?us-ascii?Q?nfVV72rSlHJ/sKpgp1yTlIDGNRi4DcdVPz3vutiTW0wVukKiOVmFpCi8qchV?=
 =?us-ascii?Q?Eg8g/wrxGH4bfLeody2gKH6NOOstrtEKbFlp2Cmkkniy175pzHP2gkPLuGdJ?=
 =?us-ascii?Q?ZUtgXJ1h3mKi4NWWIoYrGnd0mvfmIqTmgP0Ur27jJluktiD16nOAL/DJaOoZ?=
 =?us-ascii?Q?HMbsvknERqJrdBDLZ9SMm5txG5GjJyylTzOlNUDg5ct/r6kG7PtNJvUGzE7m?=
 =?us-ascii?Q?uW28075cyvLLdjA4FlQzoNkeDjeuBfCmLxygcK/5iZbTkZzuGLEUT5Yqueoe?=
 =?us-ascii?Q?o4X+hBiod+ZzoIMB0VL3lU0P9UAevHJHpEUXZpye3+kPULF6JFCwWrgS9ym6?=
 =?us-ascii?Q?tbkE05Y+ftC0q5nOJntt08Iqk4aRJZLJLfQOxN5JcxM7dVGNgzaSs8MIlU9i?=
 =?us-ascii?Q?Uif6LUqakYV876szO3+yFVxGC4uhliIjZiNaxATwwn4JgwGjvEazr8ToDguY?=
 =?us-ascii?Q?WHZsP3bdKj6cRflIZNXDm3pTPmtJqMb+RHwxycJ5F3g9d/nv7inGVOjI4wtY?=
 =?us-ascii?Q?urInhIGMpbTnbXrGwS42ikhxjJT4hlW1hJ7L113NZmN/1p1h5pSTMVQDTMMN?=
 =?us-ascii?Q?Yh1tFFCtkFMbi0W1ukFiDR1xgCvbqtvMqj4DzaZ55hNPZCfYx3IT/vQBvd2e?=
 =?us-ascii?Q?HRXd6EK5slaoalO5s5/P5BPi1mXa2XDAiORr93YtLdnS/Z9cQgN6azWrBYTR?=
 =?us-ascii?Q?ep97EdifZhKIrt7ALfycvHTgiBf3NAkiQPp3xMo4/0Oev7EBsUihZj+EFHMC?=
 =?us-ascii?Q?mLuucmxOSCBqlIw+y5Va0sPiVGAucmeeSU0fTTl6FWFXOowvfwoftZeBJQt4?=
 =?us-ascii?Q?uUABKCX069BLGr0JJ7fagmH3yzQWNDh1Sk1XErsgpkPLSPCkrFK0lossSB6v?=
 =?us-ascii?Q?3g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8335de19-e0cc-402d-268a-08da965e12fc
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2022 14:33:21.8609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mQl5fLxTm8vwm4TBtaPUtgECNuVWOjUIl0FcJU4ZzujkypevQVQOhyOgCk5RBH2BbdvByE4uw0xg1TWmtR+9cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6193
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/DG{1,
 2}: FIXME Temporary hammer to disable rpm
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Sep 14, 2022 at 07:45:53PM +0530, Anshuman Gupta wrote:
> DG1 and DG2 has lmem, and cpu can access the lmem objects
> via mmap and i915 internal i915_gem_object_pin_map() for
> i915 own usages. Both of these methods has pre-requisite
> requirement to keep GFX PCI endpoint in D0 for a supported
> iomem transaction over PCI link. (Refer PCIe specs 5.3.1.4.1)
> 
> TODO:
> With respect to i915_gem_object_pin_map(), every caller
> has to grab a wakeref if gem object lies in lmem.
> 
> Till we fix all issues related to runtime PM, we need
> to keep runtime PM disable on both DG1 and DG2.
> 
> Cc: Matthew Auld <matthew.auld@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pci.c | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 77e7df21f539..f31d7f5399cc 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -931,6 +931,26 @@ static const struct intel_device_info dg1_info = {
>  		BIT(VCS0) | BIT(VCS2),
>  	/* Wa_16011227922 */
>  	.__runtime.ppgtt_size = 47,
> +
> +	/*
> +	 *  FIXME: Temporary hammer to disable rpm.
> +	 *  As per PCIe specs 5.3.1.4.1, all iomem read write request over a PCIe
> +	 *  function will be unsupported in case PCIe endpoint function is in D3.
> +	 *  But both DG1/DG2 has a hardware bug that violates the PCIe specs
> +	 *  and supports the iomem read write transaction over PCIe bus despite
> +	 *  endpoint is D3 state.
> +	 *  Due to above H/W bug, we had never observed any issue with i915 runtime
> +	 *  PM versus lmem access.
> +	 *  But this issue gets discover when PCIe gfx endpoint's upstream
> +	 *  bridge enters to D3, at this point any lmem read/write access will be
> +	 *  returned as unsupported request. But again this issue is not observed
> +	 *  on every platform because it has been observed on few host machines
> +	 *  DG1/DG2 endpoint's upstream bridge does not binds with pcieport driver.
> +	 *  which really disables the PCIe power savings and leaves the bridge to D0
> +	 *  state.
> +	 *  Let's disable i915 rpm till we fix all known issue with lmem access in D3.
> +	 */
> +	.has_runtime_pm = 0,
>  };
>  
>  static const struct intel_device_info adl_s_info = {
> @@ -1076,6 +1096,7 @@ static const struct intel_device_info dg2_info = {
>  	XE_LPD_FEATURES,
>  	.__runtime.cpu_transcoder_mask = BIT(TRANSCODER_A) | BIT(TRANSCODER_B) |
>  			       BIT(TRANSCODER_C) | BIT(TRANSCODER_D),
> +	.has_runtime_pm = 0,

The FIXME msg can be smaller, but it also needs to be here.

With this in place fell free to use:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Since the proper solution might take a while let's protect from this case,
regardless of any other on going discussion about the force_probe protection.


>  	.require_force_probe = 1,
>  };
>  
> -- 
> 2.26.2
> 
