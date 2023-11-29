Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A54647FE046
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Nov 2023 20:25:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06A8310E65B;
	Wed, 29 Nov 2023 19:25:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 397DC10E65B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Nov 2023 19:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701285933; x=1732821933;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZutB8AkOV0NgKu/4DFApzUSl0hfCBOK676QSzGeOfKg=;
 b=BcWaq7qWWMvMBdaIqVSZVHGrEqWSOc37Oh79WtiXrv7F3YUW6ZRibe2I
 uuvdsZMdc8CH54Mb6Se7mMO1T1SaniHWtvguB0NFo+xOscmCHSydf3aDZ
 E4mV6MPEipZ3HMOB4+LNmpbR00n9TxrGqFCKTofWKYfV5wG76Ac4Gz/nw
 I3MhzcRCneWdKtEhtB6+wQl7kTD5XKxYI0ufL1jPc8i16AcOBRQgjRGCK
 HZvlFrGx83CfjttPYvTYZgT6/lm4m7V99aaKJxhI+4TlNJfkNVcs/vVhj
 VfxZZDtZkSygSB0tbvHrTA4vgt5dayhSAMrsfXAxv9O7CQpG/PyVY/1Xh Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="373398840"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="373398840"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Nov 2023 11:25:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10909"; a="1016372238"
X-IronPort-AV: E=Sophos;i="6.04,237,1695711600"; d="scan'208";a="1016372238"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Nov 2023 11:25:32 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 29 Nov 2023 11:25:31 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 29 Nov 2023 11:25:31 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 29 Nov 2023 11:25:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PDa8aaPDYdZQf4b0/AuACtvuYEZJ5PEpcOO2BKoJPAcfDuiUiLFah+AwPbCO+vyT3eOxlFiLiPKrU69G4PIY5ztkRyjXDvNtXP7/88jEjw/YSjztNz8dW98JsJnZ7BzAbAM5dmFdsfBiIBHNdxXkowR32zexiQwSWsyradNyMNWmpjESKfbmnQ97k8AZngkjaLNJovYDVWy+iSFU4UM+RqkeC3VPoAA8+tVyzFlBTUzIcXpIxnf2jUez0hwBLMV/xzZNsLVh5qDkp5ebCke+z0yR50malN1Je/gwNDM3tKoxsweUQnQ8SnK53cHBKwwMr+jxJnTabVQ/dbUEbtvZ5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DNS1tyiv6l9Hpr6E75Lqjc0wtmGvsfXVE1dWTYxugeI=;
 b=TTsTmXl82NeZtZEiBvCoq7UNGCK0EeM4myEdZHLORhoU6X60Ncf4H5A5toXE068UBo2DhQ0NCA4ZyWRQ7axS8hU9tiWVmQ5whdhQ9H0FW+Nrs8LWCMXxkH1CAxXXM10sOQuXI2CkDkcJQIFJiW7ZdrfWkyQjs162xfeCynTofxWM/byhhwE2Niy1m+CLop8KN6SwMkk3s0bFKkXyCWbWfdb+rwSvILtogndpNZ/6UFX/MmC8lJJNXA6UlQpSpGX0gEeWkKzvN/zguysCUywfRpqI3sJEpwyz8CTEjJdxoLRm1jVJVwS3JgmpqFmHFJgYcVgAJWMqXYlTZrj5mDNNxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB5399.namprd11.prod.outlook.com (2603:10b6:208:318::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.22; Wed, 29 Nov
 2023 19:25:29 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::ada2:f954:a3a5:6179%5]) with mapi id 15.20.7046.023; Wed, 29 Nov 2023
 19:25:28 +0000
Date: Wed, 29 Nov 2023 14:25:25 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZWeQJR3IarIGJJEG@intel.com>
References: <20231129173317.1192269-1-jani.nikula@intel.com>
 <20231129173317.1192269-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231129173317.1192269-2-jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0007.namprd05.prod.outlook.com
 (2603:10b6:a03:254::12) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB5399:EE_
X-MS-Office365-Filtering-Correlation-Id: a2df780a-3e23-4fe6-aa11-08dbf110f1f5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H4RiysiZATr+LyJkHI9BljWEHIAJmhPF/G1H3sLXLVETOf0UPPRmX+2Ro1eNO//0/BI/C+xUgMPlIHLu8gJVEkK7otQHNs/Tjdit1gzbEumqLdbVb0rsZJV1arbyNyayDU9fzy0GFssbjigwbubALLEz1tQmXTth+u1Pv1rETHKRQ+Dj+QW/bnlJ01bCFq6kP43pUvkGQAW1P5c3fau4+rbt8UN4YKpOfXlxMfqTJ//Z7fGThj7hxGcxdAwpXY/8jMMYlIFKZ0X9CWkSpELt9w6BdDOgvkA2XfIdlXkxBLCYnZgajc50a84ml3W8JOK1D6EL3nHgOI5lBr+n/oTVWTu+j5hoPyQgoEy4gkdXHCBdkiJUO5dRghxW4di5T/EXo+ZOAuNiywO+H19rhutgJo4GAVK62gOxBBtRV/s/ghBC+P+OL6sXuUCYPovpCM2+AfYYUHvZIRUABWyvsjzCJU7rLd6fLnBC3EsF6kaqUXXMwu6so4phTOQSnR5ZVGWhjyzkwXEXdugXql2/L6IR6uN4+WJOwriGi4F7fETn993fqfLbJHjpteXdIXujdTU/SXsNbp5UKV9Ne3KQJlZltkEHNx3BIrwePJjxKLEqCIUp4Ic3CTRSAQuSYm78x+CE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(396003)(39860400002)(366004)(376002)(136003)(230922051799003)(186009)(451199024)(1800799012)(64100799003)(82960400001)(38100700002)(202311291699002)(2906002)(86362001)(5660300002)(44832011)(8936002)(8676002)(6862004)(4326008)(66556008)(66476007)(37006003)(66946007)(6486002)(478600001)(6666004)(41300700001)(6506007)(6636002)(316002)(36756003)(6512007)(26005)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9WbJDFzy1/1gkaur7q7A/tHwj/mtZi4kQRAzLd9flIbl7PjTbJB1WeDwul9D?=
 =?us-ascii?Q?ixbbNeEzTO9Z0UJKqRSMzpAkBSxtKHybbZ4CcxmuF7gtKJSD0fTQ/klSxItW?=
 =?us-ascii?Q?l/HYdV7TyPNiA906mUpiBycvHq5QeygVbloAQZ9SlQL6ptIWovPGdi02SEp+?=
 =?us-ascii?Q?F6ijeN++AstTlAHVEjBXAsmCNblehmD/Dqh4q7wqUL1670I64ufWro4ssoun?=
 =?us-ascii?Q?4tYlPHhpl6nrMedrRGW+Nz8fG2vIN6PNd0TZHlstCChQEJzaRpB2aC+8T/xu?=
 =?us-ascii?Q?bqPtvdTZcEadituDdA4WSx4AfkK5n1IVEn3tqB506EPm8iep/UsLhmJiAcu5?=
 =?us-ascii?Q?v73Y5ZWg+FKX+bfswoYHiSM+9RKxuXE5+I8q9iAqw+WqYCpVrAYx2vvlCxUO?=
 =?us-ascii?Q?W50zjASK0LyDuRlouPDSBvwdD64UDGadHRcoUXa3RAz4SIucO5xMdUtWiEiH?=
 =?us-ascii?Q?TSLsv8l7k/oMCLpTIaQoKVvSIAJZfX9atzb1yusiSBCfp2526DrNsIMySRzf?=
 =?us-ascii?Q?EwWSi9xwiIyyRdg8eRk5Juuhc0QyARBMSXuEdbDhdu2zlM+DbI/0N1tRoNoq?=
 =?us-ascii?Q?yT0jlh5QPO4MCf90/BvHumOSqCoOpd32sLLfW606czWJCEmdZ83TPv+hJ2h/?=
 =?us-ascii?Q?o0DAJ5xCjiB0Vz23r4UqhT8U0aXjwGudUY2TcE4CMeYCHSKw0uAe91VuhMkq?=
 =?us-ascii?Q?6r2kOg0blofe7FBXDGDIrSyu9e+nYTjzxHCpuft3eIf3kq/YO/sE8pEA/+MN?=
 =?us-ascii?Q?/fIZuvnvsVQG8WwtWDsf9bqMfifdjFeHBeNjWjri0TRd2px60/OUSld6LpnX?=
 =?us-ascii?Q?30Co+fR5tcJNE6ryZxGEvpIuni9f2y7LTI4HXDD1++yl5A1s0liTaHRH2PNH?=
 =?us-ascii?Q?7EE9zWvU1m042j1EcznJvgSKmcv05ivVbdrnG/Ras2eaROfignZ8gXWVpivS?=
 =?us-ascii?Q?aJjEp7iCfAzOgerj+zg803Yi16RDSBdlrOwZ39MrUkTY+NoBviZpoy4sGmpY?=
 =?us-ascii?Q?c2BtDmXSkxjfR1oAI8PK4D/69eHHy2ccdZY+nPsQnXTosyLuIT3iIZR265gi?=
 =?us-ascii?Q?nOFjtGiIFOUkOBudhu/k02rimtCLhafU//ybF2FeEZ6qf+6Ew3jcXwYEzb7F?=
 =?us-ascii?Q?RA07BuoPCctXXVIkA475lHX56y6ATmPTTqnv9BZETPmiF4f5Ds/PtQqj9/ke?=
 =?us-ascii?Q?Ow43GVyd2xBFunaPMgX+X2IKzb1FQGrLZDn133x99SxYiz47q8ZhCzwXPKbu?=
 =?us-ascii?Q?4iT4/UP9PF9ccu4N+yMGkaSdwu7NjFfuIA/xRAARZPuhXlBg6xMjLxR37pI8?=
 =?us-ascii?Q?V0iO9gc3sAuwvBTmWRS/Oz0usEPtFecINmVeRvHB1Te51CDyNlUKmrbRRhhm?=
 =?us-ascii?Q?uakMeHU1jf5ib0valwzlBravfXnUdN3bZhAK4f/LH7dnMHPH5qi9WLHl1w19?=
 =?us-ascii?Q?DW2pflO8u4z131sN8+sdsZWIOthSA9uGNAGbn7f2QY1umyqsOhQ2YDnlsYnw?=
 =?us-ascii?Q?YAmhYx9Ni0hXKEpxQOBH/oVhoYXCQhcMopPA5w6OgSnaadc3Dc3vPR3DH0x7?=
 =?us-ascii?Q?JZk8Rn1ggn2E2o3JrD0iblSBz/3oqDWBlsJOwxqfbrkSWn3cULuvAXe7ZhKK?=
 =?us-ascii?Q?dw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2df780a-3e23-4fe6-aa11-08dbf110f1f5
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Nov 2023 19:25:28.6212 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kdnoD2OnPjyRlB5OUcp5028GVh9PVy8ltAoLzijhCTM91+2EkQY9+e4cwjnfcYyp5Mqw+YRoFsNP9PCDJvEc4w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5399
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 2/2] drm/i915: add bool type checks in
 PIPE_CONF_CHECK_*
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

On Wed, Nov 29, 2023 at 07:33:17PM +0200, Jani Nikula wrote:
> Avoid bool/int mismatches in state checker macros.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index d62cdae7ab6b..7d48bcdd5797 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4923,6 +4923,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  #define PIPE_CONF_CHECK_X(name) do { \
>  	if (current_config->name != pipe_config->name) { \
> +		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
> +				 __stringify(name) " is bool");	\
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
>  				     "(expected 0x%08x, found 0x%08x)", \
>  				     current_config->name, \
> @@ -4933,6 +4935,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  #define PIPE_CONF_CHECK_X_WITH_MASK(name, mask) do { \
>  	if ((current_config->name & (mask)) != (pipe_config->name & (mask))) { \
> +		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
> +				 __stringify(name) " is bool");	\
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
>  				     "(expected 0x%08x, found 0x%08x)", \
>  				     current_config->name & (mask), \
> @@ -4943,6 +4947,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  #define PIPE_CONF_CHECK_I(name) do { \
>  	if (current_config->name != pipe_config->name) { \
> +		BUILD_BUG_ON_MSG(__same_type(current_config->name, bool), \
> +				 __stringify(name) " is bool");	\
>  		pipe_config_mismatch(fastset, crtc, __stringify(name), \
>  				     "(expected %i, found %i)", \
>  				     current_config->name, \
> @@ -4953,6 +4959,8 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  
>  #define PIPE_CONF_CHECK_BOOL(name) do { \
>  	if (current_config->name != pipe_config->name) { \
> +		BUILD_BUG_ON_MSG(!__same_type(current_config->name, bool), \
> +				 __stringify(name) " is not bool");	\
>  		pipe_config_mismatch(fastset, crtc,  __stringify(name), \
>  				     "(expected %s, found %s)", \
>  				     str_yes_no(current_config->name), \
> -- 
> 2.39.2
> 
