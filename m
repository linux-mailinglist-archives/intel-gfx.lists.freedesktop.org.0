Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 084FB78610A
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 21:53:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8069B10E0DF;
	Wed, 23 Aug 2023 19:53:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E0FB510E0DF;
 Wed, 23 Aug 2023 19:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692820410; x=1724356410;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gJfVaaIDoY4IpE7UPMYRTAcvzqLHeDECJXizd5LN0gU=;
 b=a58XERhS64meEk/C+/ofOThZMURwoDXE4daRs3yLoRjucxwBMdlNgnBl
 feHN/Ba9XkRwMRhmFPzLDdGflld4JE8CUC6AJgdiYI1H6h+iotxR32mf2
 NVk0OKJk6svPnvtVcaA31uaFvfnfuI/llhEAauNefhrYz87lwPrG2Ffdh
 gUXiTeLB9cNxzQZtcKETVklmmxJX5w1STnPsKz7NpqihQCVFDVgEDuw7n
 YGurFWcnE94SpMxxandZCxXQlhrVy7eImiFFQDSnTAcYIAZxgkGVZpyGs
 jAHqQFTC7JCmEQuLdfiKpcSlal37VDPrgDLyF7A1nBAOWP7z5/yxW/7oS A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364433504"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364433504"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:53:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="686579491"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686579491"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 23 Aug 2023 12:53:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:53:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:53:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:53:29 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:53:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dGFoxQvrRp0Oe17Cz2FPsSyrB0pdCTPjpzw4iodhLmwkwR3kszEmJ0OdEFPFo/BREKyevZExM7YqsN9zIdMt7CDVpkD13TYHcM5aW3qvQpPM3hgbKYJyblhN3wnYbkIVx+qtyxCOp72xQHvYWiCYIIWV1cunnI1JYwOKJLP0LL0z8Nvik/YqUl+JM3tI7dde7A8drI2eriF46IqRgS5tybDz9b4nSKGZ6Xecbm17B8JIftFayDwBLokzMZDNJ5MTBNmGgtF0F4sIy5fIVPzdYiMBupQEAqSCQUr3yR19NrVKc3tPHjGCjNBl7j7ftM/FZ35vnxdFRlDr21Z/7fwtAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WfXL4o6lySoKSJNl3CC/uYbliV/bYbnEt8NZ2DLVG04=;
 b=frsE4knHabWoiepHhcPX1RCclnOUJdnGuRXduquvzniQsQfvhQjgaMOhfuqO21ugBHdgoVjA9+HLTNO8yRZNLobd2wR3sHJOvoCm40czbAUjp1bZdy5q1y+CPqaBaGBcfXymlYCjjfPwVMJsnUXSjlfisAYe4RmoIZnJDI0CWBJYtbamswuVcm/+wsWiPWOaESBXpOc4afV6mtPe4IoMnTSpmyjF/M6bjn5eoq3WD0lZ8M+79Ai/IXZMKZO/62WmEejmoSK/av5b7Ho/I2u1qXwoMlYJCUSN/aOpBLyNiDUA8sjc/hAHCFS4FXSXimAKRR/0LUUNGqyeOmcUCzfs0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH0PR11MB5331.namprd11.prod.outlook.com (2603:10b6:610:be::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.25; Wed, 23 Aug 2023 19:53:22 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 19:53:22 +0000
Date: Wed, 23 Aug 2023 12:53:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823195319.GF1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-25-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-25-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR07CA0043.namprd07.prod.outlook.com
 (2603:10b6:a03:60::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH0PR11MB5331:EE_
X-MS-Office365-Filtering-Correlation-Id: d0a455a3-e0a1-4113-f878-08dba4129b2d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: kwX5/OlZpaG7MxMBbDPjnZuLy0Anl34FEQ279A2KEuFZY9I/mXoUNGBbN7I6CiokfywG2z2CXrzrw59/9w3NknpYX7A0Yn25iElQoNjQ81RPMRnF7/QxbjnE6hhtcPykBZ1TqCv8boe6SuCy17nRKqZSvIZtekfEkHzy7k5gkRIq8oOCTxr3lOUeITBoGtvJdOPw4plvEYbS630aJb2wIwi2EqfB1UB0jVTFwpAvybPynnjIJGt6Ci5FhXwkwAQMP3LybcIMqNKGmZm9wMn+FCzMdavvPJOjua4zWtLIYBiRUUtAi1r8L1Pexrpx4qF746HYT7zrr0uF+GSaFpej1MN3dZXRCMUpsoX/R5akEXvQsOeck4PJ16UtooHm4Qwrw3dnCvXWh2wGFpWTq+FyFEwyz/+R+eQKc+7u4zmx48fTSGmMrxpt4XCVQM4DpMmXWZDwS6uQS4xLjntMg+NU836anfq382IIOP38S0rqwnk9qp+we+CtkJbJuxmP63VTKLTBzkTynO+KDQOIVaWo0ZEHxdfj/y4AY+197S3/Ik6UcWenbExKRMEWFI6tmUxS
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(396003)(136003)(346002)(366004)(39860400002)(1800799009)(186009)(451199024)(66556008)(6636002)(54906003)(66476007)(6512007)(316002)(82960400001)(8676002)(450100002)(8936002)(4326008)(107886003)(6862004)(41300700001)(1076003)(478600001)(6666004)(66946007)(38100700002)(6486002)(6506007)(83380400001)(2906002)(5660300002)(86362001)(33656002)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZY1wt+Za5uD/NGNNFRjIAYWrQUh3O9DNyhKNavOmBEDuGeuTPY81RjNw1ph7?=
 =?us-ascii?Q?gTs1WQxULXMZJ6HIPALlBxIMUidjJpktbLkbcaXnZCw1Hp2UrBRMAlFiLLBX?=
 =?us-ascii?Q?KPJrVLMKm604UlSb255RWOUdKxxfnQN/HLaDYUPZ4BGvRvjLYvmchIj4mVNr?=
 =?us-ascii?Q?Y0+/zaTaXu7uOzOoVm+7k1epiaE8IF9O+mdpMJsjS2XLFDpaOU0+5HHVpo2I?=
 =?us-ascii?Q?WBsiVbAzh7Bt8zb6rdyMfilfhfXFRo7Ix853QrzCEUrkLeDXpzVkaqROiRBV?=
 =?us-ascii?Q?vWHclOzmN6cAXTgPnvt2smQ9jRVM3CocZSD5EEVCoaE5q60fXgoj2jYXCReQ?=
 =?us-ascii?Q?O077NvJxurFhLeD2gYOghnBnptzngAV8H/+UMgSba3v60Me5kNP0vNna8xwz?=
 =?us-ascii?Q?9/yAxJdVdthEGSzO7dIwCREEGOBIGmFg6bavnb32zyfvy9qJEAjN9/K6yiMs?=
 =?us-ascii?Q?e/jOVqQMYReLAoB0wso7Ul6JuCuAUoo0/JwwSHJFnYUV427nPZuG/8dI+3TO?=
 =?us-ascii?Q?o289ssKBAaAPdvBSYEe2d5HcTZAE3LxCufkyNWTCroMFMgo3pMvYSc9xPMsU?=
 =?us-ascii?Q?RBXM+dbLqXTViZrS28COA0jRFraw5fy1f3KPu18/H8jkWs+XYaWaJdqIrAIP?=
 =?us-ascii?Q?d8+u7cCW24YLpmJKACRASnYCN1Kl9tk/gIl/XyzRUztOkB9V57Njep1Nx7CL?=
 =?us-ascii?Q?5X29cW1Zs9LhIYO+PnODdHjiK2Th+u2abV3yIebD8E0ecAVfXya2z9VUgMOW?=
 =?us-ascii?Q?aZLg9S0bGzmNAO0nlQyh57VRJwTkNfsTeqChS94pjJyk9c49CEA3iTBEbLUh?=
 =?us-ascii?Q?EeQ4CXLQ5eMJS+L4tJ7balCYSUh692VzryuHPd6VEaPX6ZpxFIzxRz+I5Q6y?=
 =?us-ascii?Q?R8i8tJ9X7ScSz5aERJLmbRsp6FATL3I1RP3cvF+l75JINK1Hgyd7Ws43fWbk?=
 =?us-ascii?Q?ptVcPqYnrIE9DhNnILMu+vu735GuA1uwz55iQG4ETUuVVmfeD2w25gZHzf4K?=
 =?us-ascii?Q?79RkO6W0C/29mRk6QnP3/koIhnIb4LUw78dqgC30AIgMNVRXbNpgSUguFZup?=
 =?us-ascii?Q?NJTi2PdMXk1AKZPDI0hQkfdciMD+C2K6Go2QOVIB34/RGyoNsle3DnQpQokv?=
 =?us-ascii?Q?qL3iHvCYj1VwPn0VnUPKTpLQWttGyklH3+mFAxL4Rg6cZAppCSXGL8AQEiI/?=
 =?us-ascii?Q?Ry54DZgy15Pgj+Ds64peub+IdgRX+okuoR6ifPHxvLKSQgReT1uTxOHyqK5C?=
 =?us-ascii?Q?DO/qGqPgDIVKTHoTnHognnDVfutkIAYMb9Be3Y7mEI9jwYftpPAK4xsRXIeL?=
 =?us-ascii?Q?WBWBsEajpyPmuag0ncTAaJXfcLJrmvTxLWONqe+RCGxyuxrtwUonhRYJ6ZN+?=
 =?us-ascii?Q?1DmZAEM4kE9BrZWJY5ir4L0gAnLeCTCIH1QYmR/S/Vtmz3SRtGSRV1m+QlXB?=
 =?us-ascii?Q?Z4jilwMWaknJ298ZwLJvFsN8pqPnf4LHY+8huGnJW0cIXSCXIS/6ByvZhGfs?=
 =?us-ascii?Q?cjrSnHQTSoHD/GzZBcGvUdPmZewrm1mv18RDlbJL5KISpK7B9uSNAULLHksh?=
 =?us-ascii?Q?AI3Bx392Wd4mF6OpKVtzgUljIUsbKpiWU6Q+RpXHqZdcAxnoqIiiTsRnYcJ9?=
 =?us-ascii?Q?wQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0a455a3-e0a1-4113-f878-08dba4129b2d
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:53:22.4655 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ETElbAfDC07cQR/WbDMwvubtpVKwJY6gCBrOXsS5RwrKhcsJBzThsFfJuR1rysQZVZ0F3WKn1HSPVGaH07SEOJuC2pVq+oQ6JC6kdjaO55s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5331
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 24/42] drm/i915/display: Remove
 FBC capability from fused off pipes
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

On Wed, Aug 23, 2023 at 10:07:22AM -0700, Lucas De Marchi wrote:
> From: Clint Taylor <clinton.a.taylor@intel.com>
> 
> If a particular pipe is disabled by fuse also remove the FBC for that
> pipe.
> 
> Bspec: 69464
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Cc: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index b853cd0c704a..c4ff5a08c269 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -962,16 +962,19 @@ void intel_display_device_info_runtime_init(struct drm_i915_private *i915)
>  		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
>  			display_runtime->pipe_mask &= ~BIT(PIPE_B);
>  			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
> +			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_B);
>  		}
>  		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
>  			display_runtime->pipe_mask &= ~BIT(PIPE_C);
>  			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_C);
> +			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_C);
>  		}
>  
>  		if (DISPLAY_VER(i915) >= 12 &&
>  		    (dfsm & TGL_DFSM_PIPE_D_DISABLE)) {
>  			display_runtime->pipe_mask &= ~BIT(PIPE_D);
>  			display_runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_D);
> +			display_runtime->fbc_mask &= ~BIT(INTEL_FBC_D);
>  		}
>  
>  		if (!display_runtime->pipe_mask)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
