Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 75880786123
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 22:02:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28A9210E0DF;
	Wed, 23 Aug 2023 20:02:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B96710E0DA;
 Wed, 23 Aug 2023 20:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692820919; x=1724356919;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KswU7oE+k0E6wmELV8DjA0KhUUMd3CZbTSZ6yZzJBwE=;
 b=bHqCIcbIVyhMPdvmwp43dzCY5v0iz+kNOtWwyQzg/WHJ61UiVqEc3ECC
 V3Uh9cdhhGYdmlXPmZOILIV6+YxNNfihs+QUoiGD7IGlctW8xv4VAsyX9
 YqF1t7LtdqXOSru6Qx4VSwPw5+oQHNOux0pim8HlWExgTO+uYZdiyjYgJ
 sYwJZd8xQq3NJNMLLvrfuFGEsdV4X/Zoy8vo2KyhAgr1UYtVUa2Qav6bq
 hXEEHHuxcRU6H3uTKlzY/3KyxW5oGgKct+3FkehDf0LuUx6Q1QtfC68GG
 7QCGTcpy5zQ7a4EZQFc+erKGvqFdueQDL4T9K6w5qrI0DPpsQ3qYLaZsG Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="364436220"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="364436220"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:01:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="686583719"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="686583719"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 23 Aug 2023 13:01:50 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:01:50 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:01:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:01:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:01:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VgmF0AhQ/WuOKJoGaRyPCnxb4mvmXsc+29PoE1c5thiSXbcli/PQ8dzHuU7CzQWzKAN4jjENwQeohiq0La7fLddxSXFw6lcbAM4oVNYajGdfn6vpiPHPXfITP6WAf6Uf6YTGDLfgoN3QfYO2cI0lkBs4lc2kRh4YC7c8S2rapxUwdkjOzuaRv/LqyRU8V5+OpfxxM1QEEGu0SDldRohkDnqrrrmJXZRboV4J1FukmpjzE1QmQZYCgTlIbkkfWIGZkmKjlDnk6ZCHn6mVGDgp9jx240BABBwbxi+e7U3eD91fGFnnPQ/GQsDQ4u7c3PDc0xsWnwpYlgXB5FUvdX6LHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=n5O/TQHtldmRrsDZE6ir4JKv9uLEtGX5bTJwSzRz+/I=;
 b=dqKSljJwRg7e4Sfsv3M5WfRJZDT8S0XeqMwuiqLKo4dVpeRJhhSM8A/k4zzyEkJcSVErQJGMUD3A1g4aXrK41Sx8wo5wvz/YUDj9BFiJamY2Iw8ta8ubwgIcT4NNtB3fLm0EMSqSVo5xDdoLUKGB890P5QitICpUdX7xtV4oEPfSjh1Js0+SSwKOnDfqbYbWgW+e7sUG9oBMAxAW4YsCejK4xjGiBtXKTgsfpYxVJwV3BgXocSr4BKlufqT3a5Y522OZuFLdwefAgclFzEWtjPM2AdLwq311ZStMecH4KyKSchWRScJhn4047Jv8dM1VPvfmtE0hn/praqdE0ReN9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA0PR11MB4624.namprd11.prod.outlook.com (2603:10b6:806:98::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.25; Wed, 23 Aug 2023 20:01:48 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 20:01:48 +0000
Date: Wed, 23 Aug 2023 13:01:44 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823200144.GG1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-26-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-26-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR05CA0099.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::40) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA0PR11MB4624:EE_
X-MS-Office365-Filtering-Correlation-Id: 0c0f65b9-9007-4332-a372-08dba413c872
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fpqkTgY5HGIGPHFhcA8lvYoy4gUtAvATeJTgPfBNRBwGgdnMSovGEz9jQWY/H0Pv7UMFaSVAsIIMwhkeevaRN2LvqtjwWunTAQ/C5etar/rGWs7jw/1L2Pd1E36h9veY7x+qz0XREuyHF3WBMjCCFgHwn6+9Lh7Mba1Re1Pp5jKx98lQ/QG29Azg/X2v54+FkKu0/WXukWRwRqcqxLs6e2Mfd8uFVdDEYdc959J63A35aFj+cNgH7mmf9pKwyrsUuHXop6dK0KSCFIfQ/jqX6YLaH39YTgpLKbm9BNu2BreGuTCZ065cQEninhbVf3D+9R2AchxfHAgT6QJXTWV9OFg2KDraIIkfIsNb/t1zfxS3pcJExfM4Dp74M+PJ0tm+N02dTtAQpoWHmLRFPlGUvUdUAEXMQwRqDuL8IhrGC5DtnqShXxOFTEr8tx6utw1JOf5LM6jlrvlyiLiPHXyhjFGRl8vAmNENdhgENrDWSRossVJ/Q1rsiX0/plTb6c4ZWeGXtMiIX08LFMmkli6jYKNcVmKJ19MZeFEqX+4h9/sdBRc02thuegwbqabRrTT7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(136003)(396003)(346002)(1800799009)(186009)(451199024)(6666004)(6486002)(6506007)(1076003)(6512007)(86362001)(66556008)(33656002)(5660300002)(4326008)(2906002)(38100700002)(82960400001)(450100002)(6636002)(8676002)(66946007)(8936002)(66476007)(41300700001)(6862004)(316002)(478600001)(83380400001)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lhmPx9gpIaBeqUMYIWTXG7n6PZEN48byMcMPZzZLeATAR1/jeMeuU2d7nA+V?=
 =?us-ascii?Q?RkSFAaq/kuIkmg2lrBzIlz/Ue0Chys9CRSftkaaeg2zMuL1nPLQQPBTTnZgn?=
 =?us-ascii?Q?J9d1JgZSnxuz6+DmK7DSYFrrrhOVQe6UyVnyCBKkV7VhQ0vUjTCWydnYEyUy?=
 =?us-ascii?Q?1rnbsSkO6IINmu16ccK187v6hPA5imiKpCLl+IC7j/uEsVbAvXQRcL9KHlg2?=
 =?us-ascii?Q?XufSEaxuiUyl5TJVBda9f9GJbrKgPAIImMEhjBrD7XYQWWRRRbvh2GWIzT4e?=
 =?us-ascii?Q?RxMvLtg770dx9EJgYMb/qcTqcIUOLk4i/80qWmER23xy9P2Iykw0gzGU+ne4?=
 =?us-ascii?Q?jFexHPjmoLltZFqy5C+TrZlKbTcD/u2tifZi7flXnp+yJQWxH9IeqZmi2x3K?=
 =?us-ascii?Q?FXyR5JmmAYZhgF7y+ZC6YHYgSWsQj52by+2KPfwvE0PKtTCOmKtanLR/j0JJ?=
 =?us-ascii?Q?Jdehl3xFdyfjr/3gtIIN+sbYplJPY/BjTMzQzukzpnUXFUzvvl3qKDsWfg2r?=
 =?us-ascii?Q?9beX+sFVqPAKdxIopAkBhpguiKDAcwVqBV7lbYJj7aiw0TYNLFS1gEnb+MkS?=
 =?us-ascii?Q?AI0O8YXkZG0nYEdBpRDjYz3+I3hXcaNcrPkl1aqD6UGeD1Z4arEoZfjcNwt6?=
 =?us-ascii?Q?iooapLgfT/IhaUf1p8DtkC3fDSlob+kgG7gxRCKXJqGthv7r5CQwZWeSQzsf?=
 =?us-ascii?Q?RVo3IUmwRkOKnBL15jU+Sn1aSCJ3gjWtJxYqhfhx2NJcmdRSvjSt8/iaotXh?=
 =?us-ascii?Q?p0lWQJ0klFGMF6cxAu3J7Lb7crzWZTVdWf+rn/7ekoGwSXgVePE/yVMpv+xN?=
 =?us-ascii?Q?/koVR5bzIhFg+mIu04Iz80xjUNsOUNcVmz5CXj5RfNb6Jo2/LCwhPaRI7IHM?=
 =?us-ascii?Q?FGVvzVxYohfn1p7fe73uB3onNlTIJc55OTUv1DWBX8p25TjlJZ1eQViRKCOp?=
 =?us-ascii?Q?2nfABr7pgln23lxtWZ8pwJFnOyoOA+nIkxm/UvXTLD8pd9K7cZl/ze2xgCci?=
 =?us-ascii?Q?0dEuQpPnQgX/x+ZuA9b9DBkDhIlYeht7IkwW8SpJ9QtHkwgpw++kjB+2nqx8?=
 =?us-ascii?Q?diMVuFSu580yx40EMtJFCqAdNlr8OaATJVY7IGfE8KuxbM1n8Ny/BOF28+v6?=
 =?us-ascii?Q?D+/FwPkx0Swxm3pyLCjtbZJ0uDLQMrYeYqXxTFyf9bC1+AMdMlqI8gHo9Adj?=
 =?us-ascii?Q?tk8kbfPYN3OHRLZ2Suk3+05ZeTPpLtHg0Q4+vUENCnVzC0qKP8kDuP6zmwlM?=
 =?us-ascii?Q?vyINkQd9szx0B1wXjqW7cyrVYVFOKqPUHrwG62pQpQdT3pcBkWZlvoIzD4N0?=
 =?us-ascii?Q?/Y8sq4GIXmJK6Nrz0NBRl1/gScWlExUpjgu15OiRlQ/OfGgbJECmyAzGsyRD?=
 =?us-ascii?Q?KVXtf5GhtRsf+2xuLZMiwde6xcDxGefiPG+etrFJ0inAooCAkBDf9P7MB2Fc?=
 =?us-ascii?Q?RPrZ566YqPTTWW+WP/SA8purkl9ovOngAK/+FcFzqtKfcS4c6vcBq1WP8CUu?=
 =?us-ascii?Q?uFswalIp6m5biJoOIykP5SQ14dSUnMjySqsasLnXJf72YsReqF0ttyOS+aFS?=
 =?us-ascii?Q?3i8/n7rg7x9gFkUVzEj5iGKS8GBxyoZppkxjMJKWCgQPEPsPy6wt83CSAMea?=
 =?us-ascii?Q?6Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c0f65b9-9007-4332-a372-08dba413c872
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:01:47.8978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ldRfRgt+JuCJS0oN1X2xyFyq2fI7q7UXX/fOTxzYGZFRu6++C2zz7CUzW8W1dPKtZu8qrG4vR+n6jCdj6kCZR+VuZw6s3qjqHU8H25p7ITA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4624
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 25/42] drm/i915/xe2lpd: Add
 support for DP aux channels
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

On Wed, Aug 23, 2023 at 10:07:23AM -0700, Lucas De Marchi wrote:
> From: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> The location of aux channels registers for Xe2 display changed w.r.t.
> the previous version.

This is another case of "PICA register ordering where 'A' comes after
'TC4.'"  We should probably consolidate on the same design used in
"drm/i915/xe2lpd: Move registers to PICA."


Matt

> 
> BSpec: 69010
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 43 ++++++++++++++++++++-
>  1 file changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 3fcf609a1444..1ab6964ee1c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -714,6 +714,44 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
>  	}
>  }
>  
> +static i915_reg_t xe2lpd_aux_ctl_reg(struct intel_dp *intel_dp)
> +{
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch = dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_A:
> +	case AUX_CH_B:
> +	case AUX_CH_USBC1:
> +	case AUX_CH_USBC2:
> +	case AUX_CH_USBC3:
> +	case AUX_CH_USBC4:
> +		return XE2LPD_DP_AUX_CH_CTL(aux_ch);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return XE2LPD_DP_AUX_CH_CTL(AUX_CH_A);
> +	}
> +}
> +
> +static i915_reg_t xe2lpd_aux_data_reg(struct intel_dp *intel_dp, int index)
> +{
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	enum aux_ch aux_ch = dig_port->aux_ch;
> +
> +	switch (aux_ch) {
> +	case AUX_CH_A:
> +	case AUX_CH_B:
> +	case AUX_CH_USBC1:
> +	case AUX_CH_USBC2:
> +	case AUX_CH_USBC3:
> +	case AUX_CH_USBC4:
> +		return XE2LPD_DP_AUX_CH_DATA(aux_ch, index);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return XE2LPD_DP_AUX_CH_DATA(AUX_CH_A, index);
> +	}
> +}
> +
>  void intel_dp_aux_fini(struct intel_dp *intel_dp)
>  {
>  	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
> @@ -731,7 +769,10 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>  	struct intel_encoder *encoder = &dig_port->base;
>  	enum aux_ch aux_ch = dig_port->aux_ch;
>  
> -	if (DISPLAY_VER(dev_priv) >= 14) {
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		intel_dp->aux_ch_ctl_reg = xe2lpd_aux_ctl_reg;
> +		intel_dp->aux_ch_data_reg = xe2lpd_aux_data_reg;
> +	} else if (DISPLAY_VER(dev_priv) >= 14) {
>  		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
>  		intel_dp->aux_ch_data_reg = xelpdp_aux_data_reg;
>  	} else if (DISPLAY_VER(dev_priv) >= 12) {
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
