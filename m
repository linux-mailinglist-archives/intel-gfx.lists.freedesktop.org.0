Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 808767D5C57
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 22:23:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 89EA010E4BE;
	Tue, 24 Oct 2023 20:23:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50B6510E4BE
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 20:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698178984; x=1729714984;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IbM6TWjIh0oMhH2DuUV4cfXjcZu6uF7pIbWjWQWtSn8=;
 b=KEaiZHW0cH5nt2s2ae2BXMBRSFnvYRuorE7jtxUHJCenUP2ZAWrKp6/Y
 mFKMiegnwPOpER8776ziC1pYlzCgKk/PwcDd+80oQCVVEHUojoU95KXSD
 SLG/3sx9zrC9X3nanyn7XhUTQAf8Jm9eTAI9xzFtOovwCrHwj4+eVEoe3
 MOcYa0uJbJSKaLSIh8MdZlO+SBlpjzmjrcX/KGrZ0Qy/sD146bUEn7jyY
 0sigt4ZxsStAmakRGODR5+lePmY14fyJrEgyLiteXFZhfFd9HwW9eybtF
 XeGFObJUFXd2QsHsU8NwcZoBS3apmBxSnncdBXdHjvpgwOp1d+DU0tLXj Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="391029716"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="391029716"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 13:23:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="752105206"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="752105206"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 13:23:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 13:23:02 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 13:23:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 13:23:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jTe29aVLHsDLYqC15VUlisBiDDFmOWS+aR9YfKL16Skhs8EBvlBw3BNUnNGCyNReD/alqdHAKjqcYCAXD1zg+4Ux28xmgjlY3hmVtQW1PR1mUW9qsi7/k2fV3h9qxvp+b81BNTGwj7x+tUG23wakiyri5PoQK4gssDzWh3mz1DZOGZvWXzNaDCCZWScoZ5acvX1R5+520+Qc6v3ysG3tZTYKQzwq2PteQu+iHPCFA1eRWERl3rx1vbMsAuVxVvOU91M4vNVXo8w8MfkW+YmHDpprA4cLm0h6Xt16LTrCaAz6GU04JwbbSXUUfgzeakYwMPOdwXSBB54LSH7wlaD/gQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EGgcAON0jFgou3SeESJJZw80HFrI4VohrL7S4MgE9Xg=;
 b=n6HHgTgo8DHRVMhowuY4FxZN0pDepgoRkxuPJusqG2zqA4yM5pjKdMtKu1fTuDtfYa7HR0fdDNib5zh0mVNkMQksIcY0cCzT+t4mFXvmOiV57kV2HsUWEb97r6JvFVeIvxMOwe4kjMzOjnUUKjbszcwNnclZD27QtsOzZSHXM3PS7sZ4B6wD94sIdxBInUC5KYelvpOKiUHuY3YhRYjkSDwXwnoV5gc1ppiTWm8HxqyRmqjsH9YHpT3WqcfI9rP9xAouUyaKM7QvlJeYeDFqUQ8gZerOcp6VwSPK5Okj17I9cJfi4zBDKwW5iNNdZpgBXm4sJ0WeKe/s5pZe/JEL2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM4PR11MB6431.namprd11.prod.outlook.com (2603:10b6:8:b8::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.21; Tue, 24 Oct 2023 20:22:59 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::f723:f4d9:c12a:5b62%4]) with mapi id 15.20.6907.028; Tue, 24 Oct 2023
 20:22:59 +0000
Date: Tue, 24 Oct 2023 13:22:57 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Message-ID: <20231024202257.GV5757@mdroper-desk1.amr.corp.intel.com>
References: <20231020085909.2959965-1-dnyaneshwar.bhadane@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231020085909.2959965-1-dnyaneshwar.bhadane@intel.com>
X-ClientProxiedBy: BYAPR04CA0008.namprd04.prod.outlook.com
 (2603:10b6:a03:40::21) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM4PR11MB6431:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ce4121c-bd5f-4e04-a8f3-08dbd4cf03fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gpuS3vo7/q0jMabysLjofMHCnJhxBW694wAqunOotqR0FtwL3c8dSH88p7FDZJeekO60m/IsOgPGPgC/wcTRneC0jn4l3IGd6NqfOeAz2JUBmcYs1PYmfcyF/Meup2Zjb7K35kaEF3JqNclZDu0IyX9NZEb0hcUTgWMyo+78P4hz7KlgMMYfii51NhghWx70O+zlAEvmZL9ez30hu3XN1ZpIbqiKUKzQoUO0f9rO71EdfEkrOMrZNJNXRooBZJY6Zi0UzO3zgWNq9KqKFI46Wy3OAIdJLRwDdsQ7cHVbcRHJNHSR5/4+z96XF2Qzv2R7jICuNroPkPP3SdPrfvFJp0/KOcpcM4Z4PIMiBUnEVZE9P5bvoPqmV+JSEEoDbqHRJE0gnzmuBtmLWeQ2tPm/0hVKiEl3cIRtqbG+qVLR69C+pjfjkqPzuAqt0G60hOZy0hNXHazdKpBWrTRyqTm/4yzT0O/eaRPHcpdYi4EFqPzAdmnYoPQdUDZSrq69h7rmmDIGqGnVm+7BPO5iTgan1Cr0vEMkzOd56VLpvqxA887wLcgQ86RIrnHSBkPWKB3G
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(366004)(376002)(136003)(39860400002)(230922051799003)(64100799003)(451199024)(186009)(1800799009)(6512007)(2906002)(6862004)(4326008)(5660300002)(8676002)(41300700001)(66556008)(66476007)(478600001)(66946007)(6486002)(6506007)(8936002)(83380400001)(6636002)(82960400001)(38100700002)(316002)(26005)(33656002)(86362001)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RK+wcgX4Pejcsb1BWzgIUVQduyT5zdMEJ00/f6exyAG6fOBpgADgE5dcoMj6?=
 =?us-ascii?Q?D0OuQ0NEk9H7KTjvJKubl9Ue/HOPPxWNjFXhxk6kvsnbj4eKc2d50T9R9wLh?=
 =?us-ascii?Q?icpMxZhDKEzZPdBfb1TQjovBowzXJfQnwgXz5xHOFEyNvjhj2ZVBEeOIzb27?=
 =?us-ascii?Q?SIaoU7r3gTjUQmzujrgnGjed2dw+dIhYduXjtJl83Tzhzoujh4PPewx2x9dm?=
 =?us-ascii?Q?oiuifAii/FuJbkptZ8vj94bM5gu/uT7/mRXuGuiVbtHqgVAaM70YOmPA1Rvl?=
 =?us-ascii?Q?6r5SEM2UKAIGJR5eZfAriCujdP9e8AKB9H4oEwz9xe5wwPreorPUslUUZ34T?=
 =?us-ascii?Q?giq7s23PvnP6zpaKo9sDoRAe1x2mUd8X7a6Vr9pWWHfBAYyZSVoSh+h5O+hB?=
 =?us-ascii?Q?7tZsynG/zMyjm815bcwsiM/1nLVUlOfWZNOSS1W3vboJSd6+WwsJw/OoXjZ2?=
 =?us-ascii?Q?W8QIGNw3nqNXtbDdbLxdpNMkGvjwYAd90CEKxoatEJENoA4wE8fd7DaspWdO?=
 =?us-ascii?Q?Z58XO5EN1yJYCoEkUP85/e5KFO3Wyuqhk8CiVxPE9PRWVM8r7iUn78IA4bhc?=
 =?us-ascii?Q?HIuLayVHsm5iQ8jvZlWYFdbFGTKP4NP/wgH0qrrU26+kQsJT3czbtIU9yfGp?=
 =?us-ascii?Q?m0F0Y8dVvtmx1+jYqPRkkffacWsyGuk4ztvV3P9QwnpN3bGVesvu98suZMQK?=
 =?us-ascii?Q?hbLwV8Q87/zsCQuPEfoEZgMhOk35NgUIn8PuYpQS/6uuCG7HcrROkyviwPrL?=
 =?us-ascii?Q?8lsk/PShsCoyzCOPFxDKVQpZ2QSoZXTUM1ohAhm5AF93T0YCMX5aUUWj9YTy?=
 =?us-ascii?Q?2/cbNF+GczLiCtBKaNkWic9OK2fkdvI4/u8oMFR+j2VKN+EQegD3c5uW5UDT?=
 =?us-ascii?Q?di6L8sn7k//NKJyQXCvYCgFSGbXTNYwKRrjnEGSvG7TlqoOdpTpyZ0uWqpij?=
 =?us-ascii?Q?2q4ywsZCK0zSMeCkygKjRK2dI7uhZRAiTGjJZJIsIUAFwrSkrvAFXTbDtqkJ?=
 =?us-ascii?Q?ZGtZ2z2EU2ZuqelY6Q5lrfAgTvlzdUeW+8XHRYEt9LageraMn4I/18bu6Og4?=
 =?us-ascii?Q?MNsJwzotmEpsH6YAJ7e89AXDmUXfCNeauOC313eDB5xadkP0LgJp8TaS5iBo?=
 =?us-ascii?Q?xsMuirF6JbFVjXKtJKhpFFoSzMi/bDrLMBoSQ6Q7N5CU24iEtVBTJFawxIoJ?=
 =?us-ascii?Q?T3dPcBHyh+sDOOZIqwZK18ArcmO4Rlwc9YFTJHmGPLjZu0bOFU1PfDbjo0QL?=
 =?us-ascii?Q?cIJQJizd/JKNvamVv+8kplUJluOXGSvDpydruoFszRGZhy5zPwdG6RT3Oimd?=
 =?us-ascii?Q?R1vA3+AqbP3QXlTR9XedKnRcF0PAjRm7YflELN6HLl1m/SNdK8bwUg4+zjwj?=
 =?us-ascii?Q?KMCS0pQmXZnVrh3NPdulZaJEgHSdlDrNNQ+4E4EU1BUZIgiik6wFWbpFPCqC?=
 =?us-ascii?Q?b7TdIK0F0mhdqKti6v1BzdG3xuR1wUpZ1yT9QQozRpDZSPBTjGYzEL0WiJtx?=
 =?us-ascii?Q?yuJ5lZm+q4WZmUDCedsgy9ClFa8TJiw8zV4cR/6znu6dF9hzXhxHl0zNknsn?=
 =?us-ascii?Q?XgtV+tvZ6iycUNdAC3a8WG3o4wUIqUVTcZe6Y9aV11f2Y0EG5CO/BG4my63l?=
 =?us-ascii?Q?jw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ce4121c-bd5f-4e04-a8f3-08dbd4cf03fe
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 20:22:59.5097 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ikWl+qkUAAiFgsSu/XN8WEXMVVflB+u7e6jwVWkrkfbGzFYy9QmjVg+R2M7Vs7d+G57vwO2FtEHk8z62n/YuJqyz012F0jixZX0/z8sI4Oo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6431
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mtl: Add Wa_14019821291
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

On Fri, Oct 20, 2023 at 02:29:09PM +0530, Dnyaneshwar Bhadane wrote:
> This workaround is primarily implemented by the BIOS.  However if the
> BIOS applies the workaround it will reserve a small piece of our DSM
> (which should be at the top, right below the WOPCM); we just need to
> keep that region reserved so that nothing else attempts to re-use it.
> 
> v2: Declare regs in gt/intel_gt_regs.h file
> 
> Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c | 17 +++++++++++++++++
>  drivers/gpu/drm/i915/gt/intel_gt_regs.h    |  3 +++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index 1a766d8e7cce..bb2639d1a824 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -409,6 +409,23 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
>  		*base -= *size;
>  	else
>  		*base = reg_val & GEN11_STOLEN_RESERVED_ADDR_MASK;
> +
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
> +		if (gscpsmi_base >= *base && gscpsmi_base < *base + *size)
> +			*size = gscpsmi_base - *base;
> +	}

Right now it looks like you re-calculate the size of the reserved region
to include the gscpsmi workaround space, but you don't update *base,
which is reserved_base in the caller.  That will cause the
i915->dsm.reserved resource to get initialized with the old base but the
new size (i.e., it will effectively grow in the wrong direction if you
don't change the base too).

I think the simplest thing to do is just move this workaround above the
if/else that comes right before it.  Since the affected platforms here
always take the 'if' branch, that will ensure that *base gets adjusted
downward to account for the larger *size value.


Matt

>  }
>  
>  /*
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
