Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7784587F2E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 17:41:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 713368FF52;
	Tue,  2 Aug 2022 15:41:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 32A608FF73
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 15:41:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659454895; x=1690990895;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4DXxkLqZg5GDzLl4NJc1JpvgtxRa/cK4tgKdQFEtGPI=;
 b=KlgpbboylUQrepzCtEDLY0bVAJoV2wo4ifkQj7nsdgbO8ECk4ffUIVam
 ErPMCgczk8itMByZisSOuUwp2KmKZlYh/7EY4DgjzdJA6aaS5eUFnqQVz
 nqZ7MrV9GELMXsvavYTv2JarqZVvRdV1vh22EphpItRMmZ5n2Rua35OAX
 XH4BdQZoCksvtxsY+gel3hY6epmSHfOegkfiRhvCXxMHuIZaFPGR5vOtx
 0kbnFyOhjcSvvlNTusr2+/I8X4yKIeHjZFWZcaNsJm2h9dWU/bqEPz2jE
 +f1kM4g8jRup8htegMK6E9uDQyN6LGftKj9VXc4zk5sHaZZvyUGCBHO+t A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="269822390"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="269822390"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 08:41:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="552958816"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 02 Aug 2022 08:41:33 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 08:41:33 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 08:41:32 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 08:41:32 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.48) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 08:41:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GE5N6NRHBQI184azjffDNsaZCJUCTYzc7mhl9PkOYGQ95rI2fy78Jll/YNo5kPZuakGNm4PNDvi75+6uzEnYplHGdonpgjXhAGE+Da1479fH7lSscsbK9WXm5fdi8i8FaD84+xddvisAWXZ6yUiR0amK2SBIVW+aC+xGpQKmP3pUUwThWol4wTj4WxSxeuhrMDLnGf5A1zT2FA01Fja54kHnRHEAaHzEF1v1JE4NhmEODH6YBMYgMgX4Mui9DgMKAy1PZOHpzqdhW+hhE5o+UMV0xnSZjt9E5UaXyNtjgSrE8pPRY0ZGwMD/DBkF8Q3OTw4qI9UWFfirw4+MyO7IXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dKdvbY6I+Uz29yIU/jAdssbYDRpB4OYAvdk1gSQcyXc=;
 b=BasCSGA+DvULgPMoowTYCbfbh/TbUt3uFr7S1b0J2Zpo7V/pS1tSp5D2LSAaNn6kVH/cP8J65CKke9ERmhcqyPEdoKv0S/ls6mgxu34/uGYGpVMDwrwNnhLV83Qe1ycevP8wk+H2aQD+vlNemMD7v/2lZTk2WZI5hk2Liuck3sXMFnZhBH8Q0YlwMQnanFFZMNNlgrF6vJGepgNOpkNiTc0Onz9WV1pW74CBFJDo/7YZ5Wfxm6RHsOvqP1K46XjaysyPPJExSJUZ4HEa9Bx0PWO4vEN0XVlor5g7FWhO4GPc6IOXaTvvGRHV2SfBifHdmP5vI4qXFGx5/w4mS7mxVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SN6PR11MB2896.namprd11.prod.outlook.com (2603:10b6:805:d9::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.14; Tue, 2 Aug
 2022 15:41:30 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 15:41:30 +0000
Date: Tue, 2 Aug 2022 08:41:28 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulFqJjAah51v+j9@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-12-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-12-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR13CA0198.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::23) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8408cebb-2894-45b5-0d3b-08da749d785b
X-MS-TrafficTypeDiagnostic: SN6PR11MB2896:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 99jTNgL0XtlGMFaBlO3PLV+ILoc7dpiQz90glb0/eblIKooJ5oSRT+pgk9RUzzMuENbKgqjdNC4vpZnFI7Rqxp1K5KfBvNZzmj8qMu944HouqgjO19j0rFdFQ2GgZxjtMCLjqpcU4IZv04xQmZf/+Q+Il/k1jjH+1jSjNKIF4iJnaaiR7haZljpOUGn/WofpMr8hcvoe3YylH4s8q6tiOCAQKA0DXuZir8UmBiNOWZleZBX8Edv4/S/nZ1qnDllEEY0/b/b+/+fdw2hd/J9c/6zzhc/C5PYzaZ/S+9aUREuMCCFhGHl6VsvgaoSu6h8Kas98eDw2Nb5IBPMMaYndu/ecvHhLKp3WFvuwJ4WGEoKo/wCpo+B1uHFg4VZb8D2fgGOHV+wWG5CjPL6+ngiDFbWR8cRAV4Vgb8XUK2LBUUP9ovL//HB0qbqGeFH7YXRy4rn6m6pGUhFAlYX5TMYOZRF8LuLAuJkKJqkld0cCjaXTceWU5ZgZp+m2ok0jUKe57MGGcW6adKOITAfA4PHtYPW1ojQPSC8Seeu9jJ/9uEEPQzDeqKYXU8pb+HYW3KGQtIbCJmeCEmtuvGzgdnsUnN3ZZwI99sizN1uF2jtuwyhKgbQ4WDxefwNW7E0EZi0foB4TMSJtqTG5qImaclv2HmG6se9RjbWsN3UznH6jXy9Nmiza9atHEM3ceVYhPVaE2NJ34Z3d9EUgQ4hXZsrItvZzjV10ZvUJJ6K7MtBdN2uZWg7dq27bizFJpxoftIx7vkx8IJeVbu0+h+nAuASPlDFu8+urbpiof+8xeq8PV0c=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(136003)(39860400002)(346002)(366004)(316002)(38100700002)(6636002)(86362001)(82960400001)(41300700001)(6506007)(2906002)(66946007)(8676002)(66556008)(4326008)(66476007)(6486002)(83380400001)(186003)(5660300002)(8936002)(6862004)(6512007)(26005)(478600001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?NzKyttArNSWyf5a/BQqz/cvAFHVoKyAWs6bfsw7i+I8JaAt3elip0LS5jGVU?=
 =?us-ascii?Q?voll8r2O3gjVdcqbod87QV7rXqRyulY8F9x2sv4rbpzWNeoHfUIAeo9V4tFG?=
 =?us-ascii?Q?z+Ke++KDD96sBafdxjOJdKtlPG/u4RselZ+fXS6RYYt3Aed45h7ygc0snzvk?=
 =?us-ascii?Q?Yx9rd0Z8Nh2Rw25P65/QI8SZMYRdfv1SvD+9vi2KmrwADEM8vavxiDO9IH7L?=
 =?us-ascii?Q?WALNE29KXEBwvJbPRSYy82lp/a37Wq6OlPsor16eAVpPACCyl2/sFgEvju5R?=
 =?us-ascii?Q?iM1sdjgZOdTjSSioNmZCL7z/wrTF8PAf654gHxPrHBcWIwW4LSoP8B2pBqvO?=
 =?us-ascii?Q?SzgxC9jJDOMyysQdOtMTLIYU9px171zwXyogqVsKudx1agSmfASOZ7m820FS?=
 =?us-ascii?Q?hqvLeAaq1bTW+fO4m8uqycj4Kb7fgJnX+kRLCUDm+oJK4swXOBQ66J9jdQo5?=
 =?us-ascii?Q?SM7TXIrv8XPlWccbNjtjb0SC7OBoCMd6O9ErKPYFGZe0Kq0cRydn5jzOBYn9?=
 =?us-ascii?Q?VUtZp6AqSxdQC3Qb/XPUTBrbiYLk7kXSf7huBTVOq/P7rLW290kHcHIMfHNU?=
 =?us-ascii?Q?zx9hh5QYMCUg5nRqxjp8qlcyFFw86yv4DKs7hkMUNuT8R4pZ/XVGsf59WG5L?=
 =?us-ascii?Q?CkNCbE0ZsoKN6X82KFbeOSkxFAAT7A6jZzfzg8ZoxyRkl1QQXz+IjgqvZLjX?=
 =?us-ascii?Q?i6A4u3ahGpFIKdDsZESnotEPvlWhNp0yXMIEOWRbdDR28znJkhRJBKgGOO3R?=
 =?us-ascii?Q?+lS3cD1GsbMii4Ace3cOciwuorPvWA3J1FCkkMeOnpkp9nIMBjbFJFAlpN/T?=
 =?us-ascii?Q?slKqh4xzrjjZK1VF5gXp9AxdfZ51n+rO8ch5SVY8QL6lc6N/nQPHALRQNhD9?=
 =?us-ascii?Q?Qn4+XTTu1kPdoBWTFgzNQjRnpuyhcb8mc/3BUhywM3kWLIsKmHhRFeUTHnge?=
 =?us-ascii?Q?lPpEM/mZKGYzf/idwt3wk5XgNorvmW1TRC7CWmUVHiYXAG3E84hOm/lFNJPy?=
 =?us-ascii?Q?39rzrMgZW3SGKZboSwRieSO9cinEF88CLJ/qSD05nuOEx+bX5GDGswZZLDee?=
 =?us-ascii?Q?fQIZEX5Kh+l4vLAgGV5A3JvLRpgvjgv8BJIg8uEXYbN1RA1NF2RxSigaM9+O?=
 =?us-ascii?Q?/sbS4n1JbYr+QFF73KNyTEzWP0g4c24DRz82J9WFHCERlA/HLRDeituz4cbN?=
 =?us-ascii?Q?3iYPoJaakXXt1Jd8kPG7BkH+TONvEmHdWE1JWKz3B/QCndllixJ85TaqV1ub?=
 =?us-ascii?Q?vGALGJ8fy/1lornYj9A6wa7VrCD+hul3P6CeAHCIlhaDsDHxAi/Xeiu+qSOZ?=
 =?us-ascii?Q?kFJoPmKAi3AisSip7YHsNL3CEvl4uho8wx+odl+Bz3BFVnkyg8Nj1C4sZGfw?=
 =?us-ascii?Q?xiBjaeGKE+lmyPHZ9Mhchck9tzS3yMawxlzFo+xwm/E9Wb+HhIpoy4pE7a/+?=
 =?us-ascii?Q?9SQZ+DQbSBusgEJ+qnx9OvQGbG+h31sNg63ulbGS+VxHmz5eT/ixtSFbKhEl?=
 =?us-ascii?Q?6WC3H/nel2geHo4GMki182qSlahv4iy6WJrjU0ehxglTDaKrUiru0d2iSn08?=
 =?us-ascii?Q?OvVeAoPi3s5XiR9rfX9oH0IiHhNxMEuZwLUfdMz/QMmYKmupqN8icwYGkNjq?=
 =?us-ascii?Q?kw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8408cebb-2894-45b5-0d3b-08da749d785b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 15:41:30.5673 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IJvim3KntQy9EY1NGE/EUrhWpgRP/fE8FblRZY8spHcibk9OBpPIVo+5gwnm+zYXKK54AXhyKv/G2Jy2cKp2C7sRf6Q+HsRMps18+JOM+Ak=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2896
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 11/23] drm/i915/mtl: Add DP AUX support on
 TypeC ports
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

On Wed, Jul 27, 2022 at 06:34:08PM -0700, Radhakrishna Sripada wrote:
> From: Imre Deak <imre.deak@intel.com>
> 
> On MTL TypeC ports the AUX_CH_CTL and AUX_CH_DATA addresses have
> changed wrt. previous platforms, adjust the code accordingly.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c | 45 ++++++++++++++++++++-
>  1 file changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 40c4bdd9cb26..10616e18dc18 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -637,6 +637,46 @@ static i915_reg_t tgl_aux_data_reg(struct intel_dp *intel_dp, int index)
>  	}
>  }
>  
> +static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
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
> +		return XELPDP_DP_AUX_CH_CTL(aux_ch);
> +	default:
> +		MISSING_CASE(aux_ch);
> +		return XELPDP_DP_AUX_CH_CTL(AUX_CH_A);
> +	}
> +}
> +
> +static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
> +{
> +	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
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
> +		return XELPDP_DP_AUX_CH_DATA(aux_ch, index);

The definition of XELPDP_DP_AUX_CH_DATA was in the previous patch but
wasn't actually used there; it should probably be moved to this one.


Matt

> +	default:
> +		MISSING_CASE(aux_ch);
> +		return XELPDP_DP_AUX_CH_DATA(AUX_CH_A, index);
> +	}
> +}
> +
>  void intel_dp_aux_fini(struct intel_dp *intel_dp)
>  {
>  	if (cpu_latency_qos_request_active(&intel_dp->pm_qos))
> @@ -652,7 +692,10 @@ void intel_dp_aux_init(struct intel_dp *intel_dp)
>  	struct intel_encoder *encoder = &dig_port->base;
>  	enum aux_ch aux_ch = dig_port->aux_ch;
>  
> -	if (DISPLAY_VER(dev_priv) >= 12) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		intel_dp->aux_ch_ctl_reg = xelpdp_aux_ctl_reg;
> +		intel_dp->aux_ch_data_reg = xelpdp_aux_data_reg;
> +	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		intel_dp->aux_ch_ctl_reg = tgl_aux_ctl_reg;
>  		intel_dp->aux_ch_data_reg = tgl_aux_data_reg;
>  	} else if (DISPLAY_VER(dev_priv) >= 9) {
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
