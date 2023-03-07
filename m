Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6196AF635
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Mar 2023 20:57:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B305610E53D;
	Tue,  7 Mar 2023 19:57:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0001C10E53D
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Mar 2023 19:57:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678219024; x=1709755024;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CH1QwzApF8Ipx9W3UQKGHfriDW+u1dHkDB/NVjvZlhk=;
 b=JfNwTWlO/S6EUN4rqQ36NAAD8pTNJCAbKFYKEsDEfuKV+TdO/N1Kh7yB
 inM63VuuFOUj9c48qtGesDFJGONzI7p3NfzALuCGagsp1Yi2nqfWc0YxQ
 /kfd9leCYJemAa6sWwygTsMA5aYApdR1BIiKEPA8Kr6489ooxX9w6aFr3
 OlNTvxXEGA/NlnehtFv5nBx4+3b+KhSGE0+Gi/uQKYIHKZy9J5lglav3M
 Y2NbKtrHWi8ytbvqUi4J/Y54cSpi0qilBln/lS1qw7YDAjFI9R2WJ8m0i
 tQVZRU0YQmiEYJ3LhEvLNzsY+E9ZvXXuhdTGmnjinUHv9B02RtzHSiNS5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="334670925"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="334670925"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2023 11:56:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="654091715"
X-IronPort-AV: E=Sophos;i="5.98,241,1673942400"; d="scan'208";a="654091715"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga006.jf.intel.com with ESMTP; 07 Mar 2023 11:56:47 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 11:56:47 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 7 Mar 2023 11:56:47 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 7 Mar 2023 11:56:47 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 7 Mar 2023 11:56:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R+Rpuinb1a9MUOb1ssgBfO+b2haDh9IVf1z0eoCPZ0vncTw4vsXd9YSp6hVwYAQYyoSDfs543iX75GLGkWSHzSQ9xs+w3mVCSq4plLq/qwnnyDr+vemP1suVLrLL0OFRvLvgk4U42UzvxjLZOTgDD5LYu6+5hQ+LBl/to8VBIehR5MQZ9Mn1fL8ngZOqqVedNmBU6VuOdilMzy+mrkzsJzGlbLX67YRuAU+2tlvgsy4BMMxvGUQ8KJIhDHfSK+qPeubzBf49UfYid9jwwWUaOwASS7pLXOQJo7IYyqc5qcqs1FtbuYyToA9kNAr+YWsHVksX9DS83sBQzOl+eciXpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kp5xDlQPtLBA4EWEFhfNr5x7xUXE6+Fiu8jvvLR/nis=;
 b=Wc4NVCWlFsBZ9jgL/6xwVzBLx/ARj20Bg2cOddlGGhiPwhwuMBaS3IQDGEekQTVGfV7ftK09O9bXm/cUBn8NJkJIeSYxI9ULqe+tciVq2o296YEq6SGBiTfF/KT5WiWFsoYummPZzCKgrwiLLbex3eV9NKUB4SIJxgzduDborip6WLoyQgq5wvzYb+7pAZ5cF2KxuK3S1eISuDeHYgCGHsfGe0CBzY2zakilMpc7eS7nmW/ykQtuKN54dUF47YlcTkygOL9KFC9zlhnZar+WDDX54w/maT6FW47oZbhKZTiHGoTgXWAIxNkB/JNdamCCP+e7DYsZTNosCeJGrbgtEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW4PR11MB7055.namprd11.prod.outlook.com (2603:10b6:303:22b::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Tue, 7 Mar
 2023 19:56:45 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%6]) with mapi id 15.20.6156.028; Tue, 7 Mar 2023
 19:56:44 +0000
Date: Tue, 7 Mar 2023 11:56:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230307195641.GN1175070@mdroper-desk1.amr.corp.intel.com>
References: <20230307195111.90767-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230307195111.90767-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0122.namprd13.prod.outlook.com
 (2603:10b6:a03:2c6::7) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW4PR11MB7055:EE_
X-MS-Office365-Filtering-Correlation-Id: a2b7a7e1-0576-4573-809f-08db1f4613a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5VZkBVrZ+4C2vSgHLvQWaw/8fGkhjVlvL4w1GnsKYk2mlRbDjqTgV9DmiJ6e7sSFVrXPQgzDbFRt79oGhObbaPhby2KRtYqTcbVX2WPoLozPTNcuGfuiQ/jvWvK5mjKG+DT8Sql0MGUN8PNJ7Pu7iabG50yP5v6qCpkA0U2ML0rvnBXo9HxHeGgn8hRNfBrNjIEPVCCopB0QimU7RJZlD1MXZFahCqmxiQYRxkvRp7fqcTyjN1NgFIewd7V2DDqIdo7MB5JFS3Gf7e5OBvR/0nJYmkTYvrmqUV+3u+1HORUHtSWm1x81q4XGcAFOP7CUScbDjZ1yvORIaZUq2Z/qKzxav0aX71ysK8J1x16We/BFQKFfkSl4lGMqbfN8VNNw+WkzKx/Y9Bq9xu9upAUzyM2tPEy/HL2BAfJLELiYoNYAz4GufSwTyC5WbJISEkCkEps6DpF390CBjQzDVOrojZ1dgo+OOlM+LF3D4j3z2wFFpxUQ+5pqXRvH5lm7FOFGsBRbwnbGWDH89PPAYUEWVLAViAST5nAjssodPeQpY61SIfC4yAivLdobfJMe8d8Zp39aeRPIHIj4ELtSeIHEAy/L8ckER2684/FzyMTiJoDG2hFUzw1cieVEAUErwtmLxUVCIF80JMrr+/i5godMNw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199018)(83380400001)(33656002)(6666004)(6506007)(186003)(1076003)(6486002)(26005)(6512007)(107886003)(4326008)(8676002)(316002)(478600001)(66556008)(38100700002)(66476007)(54906003)(41300700001)(5660300002)(66946007)(6636002)(82960400001)(86362001)(2906002)(6862004)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HEARWnc+C4ImLMJS8oMKwXO7dfFeKlE93N9yL/14X0GViodp+tW3JwstsOkm?=
 =?us-ascii?Q?TfWxyAHGReWu3VGU5r3tmk9gJaIdrLKuBx8WjL01VrLX6UreyruI4Nh/9Tyn?=
 =?us-ascii?Q?tw/bEy897SDWgtIOIOnpDBzl+aml+yVIo2RIoi8b4/saxPhb9Nf0FSxPIclk?=
 =?us-ascii?Q?pwSRSYmR85QvV3IQdQW3qvpVXit/Ny3fq3ENr7V/AEztnardotNnLHjTd4ff?=
 =?us-ascii?Q?jStQGFMmD6d8IQjJLgMzZf+U2HdyI6My34PDabxqmbY6PjKm7Wj+RXejyj2E?=
 =?us-ascii?Q?MbgN4tyy7vD0XVBKGa0e3Rv1Qhgi0ETxxIrx1SXllGX0o3SAdj7fXHO6a3w0?=
 =?us-ascii?Q?hc4ivpXepnk7g2sB6kPMbGVoxud0RRXnoBaQxgvKzLEtwm5wlvlsIxlro4Ci?=
 =?us-ascii?Q?WT7cPHNPECTlwPx7VHYM7G/iyrDU28Cw9beJUJwLlJZnH3KYdhpZ+e77DufH?=
 =?us-ascii?Q?MeE+HtemesBbn/qST1l+brziLelTzDMyl0ebB7CVXLq+6MJqL8y9FpQ8OC8v?=
 =?us-ascii?Q?N0nGSPOvzBLsRSMWCGNTgL5KaUT2RaxVFRzUmWT1dADrA/7WFCZPX+8bUjv7?=
 =?us-ascii?Q?p0x7sloy/aMhDVQRqzC58f32GBR3htm6ETACwPe/BBV0R5JppLvUFMSZzgfQ?=
 =?us-ascii?Q?fAwSCL3amtUvZp0rOMHH+mKxpOb8KL1Oouwpff87mU8ch5tpkICGE7mPrbdu?=
 =?us-ascii?Q?iWKy0eQfN1g6ryZox0zcnYfhx7aH+qjU98nb47H/jC4hzY54jJ3Oui6RHRxI?=
 =?us-ascii?Q?QoJ347tluwInV+ndKZX9SSRQvtzleMFaCQpTDBZ8WyBTN/vxqwXBHM1jBEdZ?=
 =?us-ascii?Q?gK16erMgRE8f8C+Mhj+5wJ71kbgvroFl5xq3eWyu/UmPCxNcdSbvfwClogGO?=
 =?us-ascii?Q?H4uFGIyCUbnNpJB5huurd1nYT/LATmHQEpd91J5vSz52kdUwyW9OLT8bizGo?=
 =?us-ascii?Q?Gu5zxcwIo5SjR/mf5hNDxBsmr33nOh5Ls+QWvK7E0PUZBeyqMxPKp5PGxmfX?=
 =?us-ascii?Q?Yocj+xMdxLM5pKcdQ7+jhi1LF0wBgOcqtQUcQLkqQ0KiNAdGaAgNrQUbxksB?=
 =?us-ascii?Q?th6+wtlITIdgkyT0cJ82sccJH3V0nhEsd8atQinNV1uy9zZZ2DsyH4eq+Y2F?=
 =?us-ascii?Q?7WT1ww7ki1+QcOXjbskm/KKGyEHDJ7ib9ZMSVYR8oNiR7lfquytGi3kA3WRV?=
 =?us-ascii?Q?zMoY3eM8jOuKLA2FoGq17WXZxY1yHOzpdCvR5tqIjK3eZ6VWWg/7wrzi/uZy?=
 =?us-ascii?Q?zrEr07rQHl4XZosXgR9mYLBGLkdrVDJ3QwG0NB2wHrQFMOD2FvN07UJxm4v1?=
 =?us-ascii?Q?un9HEcLjovBbsmuty6HOWQSe97RJE/ALwz5Aj4sxEH5PHYvmLWq/j1OAeDrB?=
 =?us-ascii?Q?zlP1bHp7El48bDIflk4gPpATR9zWe26ClNO+fXIL7lh4DzK1Zea+45WfPvBj?=
 =?us-ascii?Q?67sSFzR5ygEVUCeuyCBlK4QO2/5CTP1gB7LyAtM2E+lClQm1zMNVheZsx3OM?=
 =?us-ascii?Q?/Platwfda1oivO4NrrNh7Zt4qOvsr+8lKijpEY7CotQII1SfFpAaCg5hMxQM?=
 =?us-ascii?Q?9tIhn4qo4UNO1bunqByHVD/zXKkOLB8qB6YXWflmGZxAP6/0OukzDDNbaJvy?=
 =?us-ascii?Q?Gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2b7a7e1-0576-4573-809f-08db1f4613a5
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2023 19:56:44.2405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9IeGcwhp+fjWfTt9eZycY9NUl8oVADNwEhM0gvLFsomHE1uqx/eViK8vSBmrtIbPoNY/qVUE+GbTcv1L4pYrvrUJSnbiXNYn4i0Fjdm0iXM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7055
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/dmc: Load DMC on MTL
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
Cc: intel-gfx@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Mar 07, 2023 at 04:51:11PM -0300, Gustavo Sousa wrote:
> From: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> 
> Add support to load DMC on MTL.
> 
> According to the spec and based on tests done on real hardware, 0x7000
> is a reasonable size limit that covers each possible payload.
> 
> v2:
>   - Tighten payload size limit. (Matt, Rodrigo)
>   - Use a better name for the defined payload limit. (Rodrigo)
> 
> Signed-off-by: Madhumitha Tolakanahalli Pradeep <madhumitha.tolakanahalli.pradeep@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 6b162f77340e..d84cf9237b9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -89,10 +89,13 @@ static struct intel_dmc *i915_to_dmc(struct drm_i915_private *i915)
>  	__stringify(major) "_"			\
>  	__stringify(minor) ".bin"
>  
> +#define XELPDP_DMC_MAX_FW_SIZE		0x7000
>  #define DISPLAY_VER13_DMC_MAX_FW_SIZE	0x20000
> -
>  #define DISPLAY_VER12_DMC_MAX_FW_SIZE	ICL_DMC_MAX_FW_SIZE
>  
> +#define MTL_DMC_PATH			DMC_PATH(mtl)
> +MODULE_FIRMWARE(MTL_DMC_PATH);
> +
>  #define DG2_DMC_PATH			DMC_LEGACY_PATH(dg2, 2, 08)
>  MODULE_FIRMWARE(DG2_DMC_PATH);
>  
> @@ -979,7 +982,10 @@ void intel_dmc_init(struct drm_i915_private *i915)
>  
>  	INIT_WORK(&dmc->work, dmc_load_work_fn);
>  
> -	if (IS_DG2(i915)) {
> +	if (IS_METEORLAKE(i915)) {
> +		dmc->fw_path = MTL_DMC_PATH;
> +		dmc->max_fw_size = XELPDP_DMC_MAX_FW_SIZE;
> +	} else if (IS_DG2(i915)) {
>  		dmc->fw_path = DG2_DMC_PATH;
>  		dmc->max_fw_size = DISPLAY_VER13_DMC_MAX_FW_SIZE;
>  	} else if (IS_ALDERLAKE_P(i915)) {
> -- 
> 2.39.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
