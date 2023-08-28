Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E766D78BBC9
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Aug 2023 01:58:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF75C10E370;
	Mon, 28 Aug 2023 23:58:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A8AF210E086;
 Mon, 28 Aug 2023 23:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693267089; x=1724803089;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=EYcEj0QzRtcbOK+cvlnPgncSb0l3ArzVNSxTyZChCkg=;
 b=V8lbg6eXOQ7Mc3niHyJSPd/IXUTxCodd/oBkrLy2uLD8JB/qb3eMSHCh
 wQBl3+a+z13VWAqb+ut5/AtCfU4AepK7hch+Xb99+k8AtmrengFQbTWV+
 kaQ1CwIXn6xgwahIAjh0AF1bsziGt67HOwiPyl8ut052yrdFG72t0sfYN
 BLi1Tf2B6FiHBKO6PTsg8weF5xz8A49414AAvvY8AIwyRETxMeEzroUO3
 2p1ztLQSnHwUc/M/QN7m6c7Km9WZZKQZJd5e7ii6melWMrOK3Rf8HbpyO
 LSfNocmfAT1d8kqc09XgmoanY+FcV4TGDlUnacKxsGS09DDzIjTMuer3v g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="374128845"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="374128845"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Aug 2023 16:58:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10816"; a="773442649"
X-IronPort-AV: E=Sophos;i="6.02,208,1688454000"; d="scan'208";a="773442649"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 28 Aug 2023 16:58:07 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 16:58:07 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 28 Aug 2023 16:58:07 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 28 Aug 2023 16:58:07 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 28 Aug 2023 16:58:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GeVajczaY2EFbrZ9XLC5evvC598f7v869qH0wB+WolHrD5xSPSqLo+tUddMG/SZZEwptKi230IRaav3PZJuKsqn2F3EdmgFhS0I4IP9Ro8B5clrJPVeJ3/L2hAB++pm2Rzxfz1gMTB6g9eDrtfsVoXcQdtgi6QBaW/jOUoN83IEe8kx2ohhLjav7tRKJ9ZetyqF1RO37L1xX/3wiT1GQZPO7aIsTM0xeOWhoRw0a/fKRKvY2Mj05lGrs15zZrtmNnmcxFwLx3CRaxpR5YjHCuZKXSAZBtEevXafgmPxRmNABy7N1fDmycDUTBYhOsvL6yPnDchOp6uKz01rf18XlcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=S1o+losW/daBu6oMXQHo3V8MGG/x4+yOTfPHIFt3/b4=;
 b=mgNX6pbinBXI5McEznAyqBbR8qviZEJEMgwKRjUvQ8gbHQ3B5zx9v4XqKHfaNK7V+9iVCf7VNMb1lwpL0QJGvTnPx7SSW7Q8CmjG5j1qirVHc3aPqTHC0G6e9hGjEV+LJALFuWMk499+94iYfBonmf2RzkcDJCuBWKW4S+d1gkXZLNEAO1YfdYeFV1EJcePvGTNNBJvzMSdNmciE1RVcitsynghPPUXJ3ypezCaZvTCRRnXrN1Etr6hpeSqw10tSS6rtOPX6gXStAdtXMGNB1xlCKXVW/CjyUcjToS368Ohmome2ff3WhxUEVDZT/O+bTL8kSqYgYUxetE8p346uqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB7907.namprd11.prod.outlook.com (2603:10b6:8:db::13) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.34; Mon, 28 Aug 2023 23:58:04 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.034; Mon, 28 Aug 2023
 23:58:04 +0000
Date: Mon, 28 Aug 2023 16:58:01 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
Message-ID: <20230828235801.GO6080@mdroper-desk1.amr.corp.intel.com>
References: <20230828062035.6906-1-vinod.govindapillai@intel.com>
 <20230828062035.6906-2-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230828062035.6906-2-vinod.govindapillai@intel.com>
X-ClientProxiedBy: BY3PR05CA0028.namprd05.prod.outlook.com
 (2603:10b6:a03:254::33) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB7907:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d9b9382-de13-490b-5b0a-08dba8229e37
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: th5HLhhEXRnsuOEi7NvupZ/LYHynGg2GryDLGZj2/NvuN/eMzIDkSQ6ql9Lh/7iqPmrK2+2DkpX8lFyZ6ZNRNajJdcMOuN/KUD+WF3/EmdBs9HJ636xiw1XhkSigyWcE3jNYeGOY/ROs6L4JauACQJSVp7/GRzeKSDX9Vpg4MR5TVQ/jxTFxRxzNZ/YAQJB7iO73FKt2bkP1brdXGdoh/Tgrf9S9M47nzoHahjR82zqTfmagnlyUJLQOBzL4S9XX1Rs4xRufCi8h65zL7v955JMj5GQWp/HcuMnKDlAZmv9iHh1byvzG9qhdzIu0tsgcG/RGHZ9CR1j9tDpj8Ia4fAu7CaSAu/UTKGWRK964VSF6T5HTjRYGmNmTvrLBGqwBxvcowXsvLbDRZXTAm4Sf7crR65IAdIEipQ+aKWceJD5AUyTas9Q2544EhO/xzyAtCH09k+xxDbvdGs2wDFsTXHK7gQIZnSSrIJhVr/he159j5dq78wegNQN/WaAcXCxsI4iwlXzO3y3X+LWbZBYbIc4c72Rpft04oukss3NNuhFd5/KIDVmuhV4WHA2cxIZb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(396003)(136003)(39860400002)(346002)(186009)(1800799009)(451199024)(41300700001)(26005)(107886003)(38100700002)(6666004)(86362001)(478600001)(83380400001)(82960400001)(1076003)(6512007)(6506007)(6486002)(6636002)(2906002)(316002)(66476007)(33656002)(66556008)(66946007)(5660300002)(450100002)(8676002)(6862004)(4326008)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jClH90xywpORKpMmZYwN2KxsBSC8QsgZVhQ3U9Ej0OwHHubPvIEtkbLTo3Rl?=
 =?us-ascii?Q?uJVMDV/AyPYMb4UOxU+zDFeknhIIO3PTFkR6FGz45h9QuEnpwEstb88Of2/Q?=
 =?us-ascii?Q?B5jWHSXZyFPfWVfa83tmieYGeWar0XzEfCEn3xvVt2VRVXFdJjfHMLqUUr2U?=
 =?us-ascii?Q?CremiKjhQPigBjUkKV+ovu7+0FG+eRcoTTmu7tFazma8QNq4Jnrfkv5GYtwO?=
 =?us-ascii?Q?qKDuEdMCDVB1bqq/WWpuuSTybtIcWMVExmjNxm3FlQ00Exw8boUGr6t5F2CC?=
 =?us-ascii?Q?iz6d/hSTxScigT3ebIoqjMo1jnMLO0Bh5on0PhfmyMStPP6ocjOMu2b35gJk?=
 =?us-ascii?Q?11fdiFHw+mFYH/WcqTtJ1xknsRL/Z8mWldTHKuTWOMw9HUUwlxISs/8xzQ1E?=
 =?us-ascii?Q?LgKWMHCjkF2ebmndnpL2eTGEBD4kfoyBwhT8XCULA11KZkZrfSy/1gJktYhw?=
 =?us-ascii?Q?OwHejq4jq6Eb0oSrmyEHVq/Ait8sp39IRIRGk4Hv5tMMXV54l1EcG8jexq3Z?=
 =?us-ascii?Q?elDJsT3NnMzl03orvQrjqztMPzPIYMmJweJTq0CWPchx0iJr8XVM7c+nFYU0?=
 =?us-ascii?Q?yEJKC/dnnK+5k6+w5PmnC14HiA4WbH/ErywJ0vaWfoYqkRgIZt/BoUaOX7RQ?=
 =?us-ascii?Q?0exey1DGGfAsM2qPAMCLpf2SgzB9EdODUddfGt79zNv80PNlmjgcP8Xp72Rs?=
 =?us-ascii?Q?fCiXtEyJ9uQ40ZsBWI21o1mp5zEE2OAYzzrBP7+ND0c2vL0Erh9p/Kj58D0I?=
 =?us-ascii?Q?P/O1Mk3OsJJzRiYxnb6eQZ+rUAhW/SX1Uteev0Zk0i3RrHSLPFf1BSSVmm48?=
 =?us-ascii?Q?yVnghf8Kjj8BpDSh0Wd5C9nhV6lxo96Cf5/8otJD4MdpPG7QiFV1u6r1bk6f?=
 =?us-ascii?Q?+nO1blYmx7ggzlstkD6P3D3nJfX78MQPGMV1MqcYK7svDLM/n7BdkyIg57yL?=
 =?us-ascii?Q?GW4FHDkNrP+xrtLQ9/lZcoRYgJH/UdOIHspwEMkaZ2SLY7xSzYobefQLa5wm?=
 =?us-ascii?Q?DsR+LMEMiZR+h/nPdezvycQyuBKOkN2qSME3tFauslhTeJoQNvj9P61aD4gJ?=
 =?us-ascii?Q?wMdTc68cvSJejCz+QFRtUsMjlq8+59zpR87OssRSjNOVOFhGwhowPXGDFilb?=
 =?us-ascii?Q?dczrFd2ZlyOtZ+bTCX1Fc18ziGP/fIKYlvzA63E/O8Xl+tyBKyh2wa5p5+VQ?=
 =?us-ascii?Q?x6dcjNAVOyfhDQgPMjlSG037V8MdvoX+YkXqF2gnJw3oAXr06GMaV+xTH+3S?=
 =?us-ascii?Q?DpcnZ6x8k1lXWENlsKmUIAtQGP9cskkCveQpDRCdmC1nFXxAH9qSlrH4I2cU?=
 =?us-ascii?Q?uN7rS1TdhGi1hpxpeWhmooCmiKy0ofj1UAUA6sLpgRPFkpmJ3tXFLK4qNOL0?=
 =?us-ascii?Q?MIbdapKP7iPxPmbo+sCC/0JwIzE+l7ac+XMnXwQ+Ml2KjtTvlNcv2oJy/xyd?=
 =?us-ascii?Q?PgQOpdgjhUIvYf4f+GlPVuafkQluYQkf+g6QZiIWz6UEu34Is1wrgIHxkT/Q?=
 =?us-ascii?Q?TA5zYKXIC8Bix087mm5kLDwCylUfbLYRuY2FxREuIpyp2IsYVK7NI0HNh6uJ?=
 =?us-ascii?Q?Gf3PBYvZzMdFHLFGbO5k0jDTXu2LotaIpIy4t+X/PDZ2TBQD2wU9ytja39Y8?=
 =?us-ascii?Q?Fg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d9b9382-de13-490b-5b0a-08dba8229e37
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Aug 2023 23:58:04.1972 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0RRNMb9fhZaVqu5rlT00hZQxCdQUx/Z/se2bUy9VgHdJ0Qcrx82iXj10KKWPIjVKSnpoUcMERn672w/9VmTSr7NmpZ36qXTEXVMNEy0ODuA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7907
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 1/4] drm/i915/lnl: FBC can be
 enabled with PSR2
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
Cc: intel-gfx@lists.freedesktop.org, ville.syrjala@intel.com,
 intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Aug 28, 2023 at 09:20:32AM +0300, Vinod Govindapillai wrote:
> FBC restriction with PSR2 can be removed from LNL onwards
> 
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 66c8aed07bbc..d36499d7e0be 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1169,11 +1169,11 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	}
>  
>  	/*
> -	 * Display 12+ is not supporting FBC with PSR2.
> +	 * Display 12 to 14 is not supporting FBC with PSR2.
>  	 * Recommendation is to keep this combination disabled
>  	 * Bspec: 50422 HSD: 14010260002
>  	 */
> -	if (DISPLAY_VER(i915) >= 12 && crtc_state->has_psr2) {
> +	if (IS_DISPLAY_VER(i915, 12, 14) && crtc_state->has_psr2) {

According to bspec 68881, the situation is more complicated than just
flipping this back on.  FBC + PSR2 should only be enabled together if a
bunch of other conditions are met (multiple planes enabled, selective
fetch is not enabled, etc.).  Otherwise we may be hurting power usage
rather than helping it by turning these two on together.


Matt

>  		plane_state->no_fbc_reason = "PSR2 enabled";
>  		return 0;
>  	}
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
