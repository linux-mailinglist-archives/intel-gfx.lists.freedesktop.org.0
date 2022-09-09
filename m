Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 034555B34F5
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Sep 2022 12:16:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C1BD10EC5C;
	Fri,  9 Sep 2022 10:16:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D83E010EC5C
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Sep 2022 10:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662718609; x=1694254609;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=xWR1/UIr/GcqapnhEgFVz9Tl0gJiS4IeUdtdIE0YTk4=;
 b=VLerjaGSyfQg9KI9Z0ngj2jpILCURkKc8WyxXAJXHTDrcacREgqbdBzR
 ALij1OmMOXtpH40KfYo0f3YW0DbRPlC+nYyFSCHW58+shV00O1zLYOiuR
 rfhmOL8jnq+nlgxBB2af0lUHwfgjWBEjoLWbyWK0kX+x4zHMuHD1sxG9X
 OlQVW0hQEFE/+ET/AbASGeu7KRskQWBfayN8ZRtIjaZwgZhgG+7jrWHop
 hD9Rkwh+IAaPcAx6mgMxV/Hwjm2dunDcLoKL5DSU5Ei7glaOOfs0PhzKj
 2M5iRp0eEvroz67QKbbXw30yCJ3ehaMnMEUoEjV9NKbArxd/pLl2RgJel g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10464"; a="323652257"
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="323652257"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2022 03:16:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,302,1654585200"; d="scan'208";a="592559497"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 09 Sep 2022 03:16:49 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 03:16:48 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 9 Sep 2022 03:16:48 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 9 Sep 2022 03:16:48 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 9 Sep 2022 03:16:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BpaurGqNhlPf5pNhJ4MzXOpO/Q2JsPZirLD4waQZSBK3t6w4ckhNxiU90QB6ITvQQ8Ea2b9Gulu5WQDgE+k84kcSThuPHXc5tJKGW2eLWsi/M5niUD6Xg+BxMjXiuNoblWjrAoBLUPTr4ehLDHx/YPu1j+QgWFDmOQSLGRfaYbyQlUDtzYANCy5p+6F5yG9V2CDYmoi5GF+M+gWk65SI0/4wC7aGL5CyrbU3BugFILk+WD/vWSLBdumtE7NVHzLHVOdJ2QRNU7LvuiqlHKxgyFtTR9YqGIvJ8/qsPHd58vunSV6/7nCBC1gKakJxkykxyOipVWELwXWIykTS5IglPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dAnR9oDvKj1O4GiCj4NVOXaVu5lKDSJroU1ZaTHDdqQ=;
 b=Y2OltDGGn+Uw9SJ/hwuLjA7d+oE1AXf/+idbjSvDoBHrFWAxrBlhsqO1Mwr7jI6jO+vBwNyLCmDqzxV4AlajWx4Ay9dxEgj5cF/LJM1D2XndBABOTU9MhREvXJNh2DXY+oESVi9kjhqDu8DxZnXdcLTqb8OT68CwInAis7ZuJocivalKoCdVWvGa0rOuwfdSxQbwtcKiMfg8AF9krEPUzCMhwbnTaemlDuJtdsuj3O9pucrVj/CGBXyI76+NXvKGKgkqQy3aE/ZGWP5b7EBZUc76PJ3Ss4CtGt7TN65qJGRpKdzUeanZs7CNCWZTR2HUJ7ulsn7CEMMs1CdjXypmpw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB7301.namprd11.prod.outlook.com (2603:10b6:8:10a::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.18; Fri, 9 Sep
 2022 10:16:40 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7ce8:1e4e:20d4:6bd4%9]) with mapi id 15.20.5588.016; Fri, 9 Sep 2022
 10:16:40 +0000
Date: Fri, 9 Sep 2022 06:16:36 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>
Message-ID: <YxsShGarZEEe7JaG@intel.com>
References: <cover.1662613377.git.ashutosh.dixit@intel.com>
 <ec1aee8c7c0c8bce3e9d056fb90cc16135dd3be6.1662613377.git.ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ec1aee8c7c0c8bce3e9d056fb90cc16135dd3be6.1662613377.git.ashutosh.dixit@intel.com>
X-ClientProxiedBy: BYAPR06CA0039.namprd06.prod.outlook.com
 (2603:10b6:a03:14b::16) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b319c635-953a-44bc-dab4-08da924c6301
X-MS-TrafficTypeDiagnostic: DM4PR11MB7301:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: B5C3Rcr7oN/jeo9esLqktWjyOhW+3ROy/lijH36Jr9g34pMpvqkWJskfepOt9ZHCdtmJ+i3Q+2k/kqUnyU8ScieoAaabhLawYTlHwY97zkHVUWMaY7DQ7jlKO5cYto/8rg/jhdai0u8yJXTSe5AaG65k7kaFM/nxCP40pQffsJeb05um6U5SMrHvN+7DXQA9OvDD1NbENTS9k9ZownlSYP3VJcHGNNkHN5V2zitAEVBeHovt5EsKPnt9cEUznQEBD15AskdWoIRZYwsXCs1TbaN536RnbTfIdceMQPgvtIcOSF6r6ecg8Rb58dhYF+GIBcmAHiq78DiXSb/YmYb5bOIpjOY74G87Gfo/+iHoZlBHRCLwBdQXvyhCrklScHqH+8LGyIVJ7NksfdvQvwqGgcXXVxdhF/W/hNRZ+n56AJ/zrMxm1oMuxA8ooRxRqpGKgQoqBmtry8bnKM7wMLBhLebA34lZN+wyw2pE9XOorcShWkRfUSIJxI39O+u8H1Rv36iRvWn2UxiGnod6R1HVVeQuRc3Mn923dWEr88YMRQ5Rh40lm+6jyE66hW68upgxLVfKzBWjHuH48rX/U6I60cIlN0hlKhB6/KhJydpbLTW/0FiDnArPvtd+URoFmacbXIYB7EEmZLxBHjUJiOAGg51dObNEFL2t0ntQ1UEk+XEmnBh428jbnryRcBTWiXazx5UMuySP3Axtn0xrmbsuNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(136003)(346002)(39860400002)(396003)(366004)(38100700002)(26005)(6666004)(6862004)(66476007)(6506007)(8936002)(4326008)(66946007)(8676002)(66556008)(6512007)(2906002)(5660300002)(36756003)(44832011)(82960400001)(478600001)(6486002)(316002)(41300700001)(6636002)(86362001)(83380400001)(186003)(37006003)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?INhQgldrUbHOTTQ01GZ/QOFJUvLDhJnqS1ubKomo0i7pDxkmPPIFws8awyXm?=
 =?us-ascii?Q?+UvYZN44YgXjgBEjeS+XhyV6FpAZBK2qqp0keuuvUG7wW4NxtOo853DD7XkP?=
 =?us-ascii?Q?gyTJ9R2ITjUJ3xKxL5G4BlA6Ly65p4K388GeyQYUGY7mZYw2hwOWJxG64Eu3?=
 =?us-ascii?Q?eduAVjYNTWaikDFnISs1wKzWBpxFBgyeXnoJhGWxp1e3VSk3qIN+4Etix604?=
 =?us-ascii?Q?oPjfCl8RyGqyVNEVT/g3Pi0E6MLQPTKqD9vZ0rEGfyDrMIMaqFHGtrOFMeVo?=
 =?us-ascii?Q?flBjOV4ptsV8taU2SrStMWazFwXKCbioZAeb10kALZDHnMJlPwj+TxBeCAGH?=
 =?us-ascii?Q?QyptDWNbzxMfTnd8LLHKHOpRdpsAcV9zrKgE6wE1Rk8Y0NYL2xTNgyyhwHs8?=
 =?us-ascii?Q?Y0OyPt/oO8ZOnFOiea8zJRIJTADRTVtgVDyCIIlGZ/z7BbunLMyEjj/7jqJK?=
 =?us-ascii?Q?JfGy0iwF3aXdb8EfC2qFGJ43kbsIwH1VCVq+qQRZjT6oAFKS0kNOQoS5Xl/A?=
 =?us-ascii?Q?sGyIQ6TIk5BQvE/+d9Zb3VXGTJq0BNX8q8so2V9UDNBGk3dnBNv5RhYyn1XH?=
 =?us-ascii?Q?QQCpnV9+MqjODFkhAKJlIKX3o8NQzeVmGT5mq/fu41h1oeZymkFzNI4y+bL7?=
 =?us-ascii?Q?qNe6UqfgN1+tIWxNB4fGvSPFLUR3IVfpjjPk7knv55BM6FS2TkdBrXltrFxG?=
 =?us-ascii?Q?WBlY5UEfgOwrIuWeO5QrjhRclJSIVivP2CA3Zce/2jSFxIwnB2Dct08iX/rF?=
 =?us-ascii?Q?Xr3POMovqt2ml0uOU3aVSo3xuVDGvqc9akMtkMb72Fk4kSjRWwDL7h6/GUhV?=
 =?us-ascii?Q?YQLVdDAYlX84hLK8FC+rkzc35VpWFcrYpn/DeuZGdLOFe6ES9+9hmzazyl7G?=
 =?us-ascii?Q?WsRcuI6XSMHmmn2l+l3aKvr4t2Rxd/9tXZZp4LiAhl/flN3P1XbL/hiXXL+v?=
 =?us-ascii?Q?yqYggE8ynIKHJeeXgIamRAke3PlYtI2SAFsYFhrsad4StdEDihV7pPnBMN38?=
 =?us-ascii?Q?SFuC4oDqLWfeDv/06JK9iZ6OlOEf618UfNVaRrfhr5yIdS9nsF/jbEybFZmK?=
 =?us-ascii?Q?J3+KBkSqlowMifYuRjUXeBn779L0OHnzLFy4LCC4GOHKMEpT9Mkl4GnwYUrj?=
 =?us-ascii?Q?cmxrCi5hCq8iBORIEE0Qluc9J7U//gs6BaQ3a7xY5o943N36iNK9navufGiB?=
 =?us-ascii?Q?DvyFqiwBq87o4xGfIeG3Mz/bH32+I1XqTwnOWomy36QxWYem/sB427HAFpVp?=
 =?us-ascii?Q?KMd8YrgD3dUVnpIYEmxA5Oa+TKpNGVcemJvSP2LaTZaKc6nuR5I8CHll20nw?=
 =?us-ascii?Q?h4W7v3Vjbx4P/U8PE023+4SjFZHkVO58ZDt8DEJD4SPXdq2RFE+DDxbrvMnG?=
 =?us-ascii?Q?TwrN1p9rtLAsbwgiWe/DKWKVQSqOzTAYOvwNro0JTCYzwC6tPW/RZ9qE2Nun?=
 =?us-ascii?Q?LZomdWBjfxkaoFlrtUS9zYkHZ1A9JzwnxUQFbJEspNBVPPDXhZjP9ldZ41Qa?=
 =?us-ascii?Q?fXzhRB5tEY6+EIAenN3oUA+gslaRAx07slko7ibzS7hG0pYqptkVyNWPwvnh?=
 =?us-ascii?Q?G0wN8EsigpsXgcX97+sqAelbSCQwu60kOYi0YZQBhoGyjCUVwNIY/UIP9i99?=
 =?us-ascii?Q?QQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b319c635-953a-44bc-dab4-08da924c6301
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2022 10:16:40.6019 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: qu5NiOIaa2/5xuTvL0dTTx6En/ycAlg2gj3eqc3VZI2ffCYTnu4df7UXgqYyBUdm/+ErWTiMAYDMsW6dPNrGFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7301
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 8/8] drm/i915/rps: Freq caps for MTL
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

On Wed, Sep 07, 2022 at 10:23:57PM -0700, Ashutosh Dixit wrote:
> For MTL, when reading from HW, RP0, RP1 (actuall RPe) and RPn freq use an
> entirely different set of registers with different fields, bitwidths and
> units.
> 
> v2: Move MTL check into a separate function (Jani)
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Badal Nilawar <badal.nilawar@intel.com>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c | 46 +++++++++++++++++++++++------
>  drivers/gpu/drm/i915/i915_reg.h     |  9 ++++++
>  2 files changed, 46 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 6fadde4ee7bf..234c69e2ca03 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -1085,15 +1085,25 @@ static u32 intel_rps_read_state_cap(struct intel_rps *rps)
>  		return intel_uncore_read(uncore, GEN6_RP_STATE_CAP);
>  }
>  
> -/**
> - * gen6_rps_get_freq_caps - Get freq caps exposed by HW
> - * @rps: the intel_rps structure
> - * @caps: returned freq caps
> - *
> - * Returned "caps" frequencies should be converted to MHz using
> - * intel_gpu_freq()
> - */
> -void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
> +static void
> +mtl_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
> +{
> +	struct intel_uncore *uncore = rps_to_uncore(rps);
> +	u32 rp_state_cap = rps_to_gt(rps)->type == GT_MEDIA ?
> +				intel_uncore_read(uncore, MTL_MEDIAP_STATE_CAP) :
> +				intel_uncore_read(uncore, MTL_RP_STATE_CAP);
> +	u32 rpe = rps_to_gt(rps)->type == GT_MEDIA ?
> +			intel_uncore_read(uncore, MTL_MPE_FREQUENCY) :
> +			intel_uncore_read(uncore, MTL_GT_RPE_FREQUENCY);
> +
> +	/* MTL values are in units of 16.67 MHz */
> +	caps->rp0_freq = REG_FIELD_GET(MTL_RP0_CAP_MASK, rp_state_cap);
> +	caps->min_freq = REG_FIELD_GET(MTL_RPN_CAP_MASK, rp_state_cap);
> +	caps->rp1_freq = REG_FIELD_GET(MTL_RPE_MASK, rpe);
> +}
> +
> +static void
> +__gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
>  {
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
>  	u32 rp_state_cap;
> @@ -1128,6 +1138,24 @@ void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *c
>  	}
>  }
>  
> +/**
> + * gen6_rps_get_freq_caps - Get freq caps exposed by HW
> + * @rps: the intel_rps structure
> + * @caps: returned freq caps
> + *
> + * Returned "caps" frequencies should be converted to MHz using
> + * intel_gpu_freq()
> + */
> +void gen6_rps_get_freq_caps(struct intel_rps *rps, struct intel_rps_freq_caps *caps)
> +{
> +	struct drm_i915_private *i915 = rps_to_i915(rps);
> +
> +	if (IS_METEORLAKE(i915))
> +		return mtl_get_freq_caps(rps, caps);
> +	else
> +		return __gen6_rps_get_freq_caps(rps, caps);
> +}
> +
>  static void gen6_rps_init(struct intel_rps *rps)
>  {
>  	struct drm_i915_private *i915 = rps_to_i915(rps);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 10a89d869b00..f008367a3433 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1792,6 +1792,15 @@
>  #define XEHPSDV_RP_STATE_CAP	_MMIO(0x250014)
>  #define PVC_RP_STATE_CAP	_MMIO(0x281014)
>  
> +#define MTL_RP_STATE_CAP	_MMIO(0x138000)
> +#define MTL_MEDIAP_STATE_CAP	_MMIO(0x138020)
> +#define   MTL_RP0_CAP_MASK	REG_GENMASK(8, 0)
> +#define   MTL_RPN_CAP_MASK	REG_GENMASK(24, 16)
> +
> +#define MTL_GT_RPE_FREQUENCY	_MMIO(0x13800c)
> +#define MTL_MPE_FREQUENCY	_MMIO(0x13802c)
> +#define   MTL_RPE_MASK		REG_GENMASK(8, 0)
> +
>  #define GT0_PERF_LIMIT_REASONS		_MMIO(0x1381a8)
>  #define   GT0_PERF_LIMIT_REASONS_MASK	0xde3
>  #define   PROCHOT_MASK			REG_BIT(0)
> -- 
> 2.34.1
> 
