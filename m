Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 72C9066035D
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Jan 2023 16:35:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20EDB10E874;
	Fri,  6 Jan 2023 15:35:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E42810E874
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Jan 2023 15:35:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673019346; x=1704555346;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=3pNPqwNrByZkbeEaRSx80jrVFw8ADAyiqLGNmsnpNxI=;
 b=GPW2UlrJ/uxQQSrcnxX8F5cnT33jN42H9jID9yds+EWPjNPYJ3KkZn3C
 Y4elkuqAKiz7CL3SwtIZd9CuPHkXL2ponuTHuVahL30mNkkpDJ1qiRBch
 iYHK8dtdnzLPcyaxVbNtM7DGjZ/XClFCCHCRQDTZHcGgMQCDgdm0SiKOK
 3GqXHa72zYfaeiS0TevDu9dgoNjF+J9U8KuDz2QHHMlFpCJI/nnA2G2kx
 OVqprqTv1qPsHt2qfQrC5RMoT4sVqKAA5t+r1bafKzU5STLZrq66fJhr3
 1imrP6pm6VLaV7XEKsTNA6y0zPHU2yCU3w5bZQjmfSxA81As26CSabqus g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="321199909"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="321199909"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jan 2023 07:35:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10582"; a="719220011"
X-IronPort-AV: E=Sophos;i="5.96,305,1665471600"; d="scan'208";a="719220011"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jan 2023 07:35:42 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 07:35:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 6 Jan 2023 07:35:39 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 6 Jan 2023 07:35:39 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 6 Jan 2023 07:35:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fo92mEeMP7H4fzriodpbBh4NsqGYQzKH/vd0xUb2vqaxw1ku3gkoBVOmWw70XcnFrOXPfuoekc9hVOdgq1q9G3E2nF0rYLSSeFBYepoeQhh1/W0qqGrPlQfhLOQnCFJ+2sAjANVcOaRR7nD5shPZyfbDNWE9AQ4gJLb3tRhCNojzsPcYi5kLzDf5B8P9yKEchZ8N+o9141jSwTlkiWKMZpJtiKQEVU9r+9fj0Z5HZtxP4Xrx9Egtsz8W0TRTMkyObGuVLz2Card4OQLS8C/qNqVDIVI+2D2W6p88XktZNyWfilhPep6GQOMWlbB1nviRCfcKrKQkQJeZJo2pee4aDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UN5yJWU40SfCp8WszHnEBd7r7NIEF7tLGRvcCz7WCOs=;
 b=ZMxV8SeEXdMDi28LDgCMARNu+3tXgR8h0n2Jp0/4ZrywK2eiwOA70m4/nqM6Bb9XuQd+QODsc+2Z6uuLs/XZOVVfWJpml2EF/iAZE9LU3ISSeNWhEQ4wmbjaEdPtdSVeAktXHbaSenp3SSg9coo37bv242cIFtpWIx/KNPYKNKUz4j43uXdoiJL2OhaJU+jPNLQi+6iqmR2Lqnce+N6uLxzTE/bb96Ud7StiqoWGvWH3Zt7eioUHPAN+vOOPt3ddTm9itPqQeEj8bC9vwdtS6/AQndcXbRPtHfpVFgGsjSkrcyh/u6EA58ARMelZ4SFHdwTqgiOvLrCYyYO7cThD7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by BL1PR11MB6051.namprd11.prod.outlook.com (2603:10b6:208:393::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5944.19; Fri, 6 Jan
 2023 15:35:38 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::499c:efe3:4397:808%8]) with mapi id 15.20.5944.019; Fri, 6 Jan 2023
 15:35:37 +0000
Date: Fri, 6 Jan 2023 10:35:31 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y7g/w/DVMOqKRg7H@intel.com>
References: <20230105131046.2173431-1-andrzej.hajda@intel.com>
 <20230105131046.2173431-6-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105131046.2173431-6-andrzej.hajda@intel.com>
X-ClientProxiedBy: BYAPR11CA0057.namprd11.prod.outlook.com
 (2603:10b6:a03:80::34) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|BL1PR11MB6051:EE_
X-MS-Office365-Filtering-Correlation-Id: d025e464-2afa-4de8-7191-08daeffba8d8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IjW6lznFLX6ZXTkoJHoENBKzysOfYuI5mhgWLga0PmbZDoHNOqPRARorjvqVpRj3FVHp2zJwtvmfWK31zPkhIqVJ9Qw4X7VjpHlYex2IywV1uJJ76rT1kCchRbY6/aZamzdfL/8/E5uOB7Bw7C5qu+RKkScq3NvBVaakLrK27RVKcvJJxb1x2HR8AlR2o7kmLr0jEpWno2hEXGtCir0FI6MpZf5PzZPXD2Ug04Pa/QCRRr6rq3sMQVgKlcHPUJkIzCG+5ijis5DgHuvPQifIgo9lXAAruU/htwhbvw929CPpfrXb19KAga0Ltk+KWK7x9ZiIFMO6p9QPZzQWmOo7c5fxk9ZC4J8cR24rUOYrXv1SwAFLqQ1A9zKvp7v4Ac5zMSFGM7fracW02EHwTy2wfWnDnAKfg9oazmHhU/x3d/SraRoxau5Vjs1dcpPkfgcQU7BTgxdgze3HgYd9kOE2NH+FbehRd10EdPF5b3H6fUMrr9guwEzmJzsyEUVqQQsFrAp7YYNvNTL6Py0EnqN18i4Cm6jzzl9nPn/tWbE8D30h1B+0HkLShnUEYyIuM8kHPeYdCI9hjn4NwaYZgRXhdg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(136003)(396003)(346002)(366004)(39860400002)(451199015)(2906002)(6862004)(5660300002)(44832011)(8676002)(41300700001)(4326008)(8936002)(6636002)(66476007)(66946007)(37006003)(66556008)(966005)(316002)(6486002)(478600001)(26005)(186003)(6512007)(6666004)(6506007)(83380400001)(2616005)(82960400001)(38100700002)(86362001)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?w8hsjxIDmEaFJyMHDVxxP773f2qSGnYhayMm/VMCuQJNaGkLQ0dHc1fPn68J?=
 =?us-ascii?Q?bSE7usNKENuzFZFjw7IFaCVFVK/KLggUTVDDE8uKqVHR/92gIDoborpp0lqA?=
 =?us-ascii?Q?X2deqn5Z0sTfIambZ56QwXksgEtVFkpu0AxJgoSIwYN/snhXbMztGmqtmyUh?=
 =?us-ascii?Q?YXhoUxx+JttiUcjxcQ6JXICII889gaqOxk2Gzp80gt41AVFXxI0CFv6h9KTC?=
 =?us-ascii?Q?jqf3Z1YsjGvjUTx02KcWTDbI38yF4/ONGeJ/P/ne9RsZJw41aOO/Al2hNhzq?=
 =?us-ascii?Q?QZhEvhR2vq6R2HJvWFju8BQq7v8p9eeWMDfogFHfJZQ1vDQQz9LFL91+bMLb?=
 =?us-ascii?Q?AoW4o2jJIMVf4IFBH2DMsYEtXyk5++y8qKopyMvNIACbpnhRe5lXmVMLJezk?=
 =?us-ascii?Q?s13OZakTbjMHO06FtduQByF1q9vCvZKxeOr/ELFzo5wHj+dwrOMUko+GAwpB?=
 =?us-ascii?Q?2Dx1svG9bnLrKLnyApIWnc1FU1ZdB0HrXXBtdN+1h7ZoD0zd1VfK4pakN/bD?=
 =?us-ascii?Q?HqVKw1dNibvK4diON8/JxtRdX1zd2yOINzhYAY/uWEHQ1qRF4vNTqmd8eJ4Z?=
 =?us-ascii?Q?5jq/VeKm9T6uUE42qAkvQZSvHCgcvT04TFGyNBdKtJVUGM1E/aAjMtAFZ8Sb?=
 =?us-ascii?Q?eTK1fJ8dWb9CJ+X9wmY7ELo8pJ1dWPowcEKcz4qa479JdQXdte2L8OoEJsBH?=
 =?us-ascii?Q?74kJcIL1mLXnuzxGhSsuUSaa8fn0WtEob9IQdeVYooVrkZ9EvfJ9/YxkjJ7P?=
 =?us-ascii?Q?hhSpxsjuXhoktKuoTQ4IEzE+udQPsD8aiTGpeQYCJA73tA9S42+edmeXCUqe?=
 =?us-ascii?Q?BCNMxLP5JQ3LpbQAJSIsCkOJSMwmCZqWRAAyfW3WJvghj3pwYd8ob5QMFJRs?=
 =?us-ascii?Q?C9F/M/AsdcdFOTSa1SUpaAcfGd2D1DRLs6ljmV58fbppLcMgLTzt/Lzar33b?=
 =?us-ascii?Q?8hPMpnwWvk6KNpr9prDwFPOr7x/Q8kIIjj4u3I1nfj4FYLBR+MDTREAcrH2z?=
 =?us-ascii?Q?A7jSZVdpOlNZUk/4ZNZa2NWWjLXv3P4Jhg9x9bxyL4wQu2kJlAEXzyYNmguf?=
 =?us-ascii?Q?UU97C4OILi6aRLxhEXlfwc+0QOTV4xPRC9oG7eNWzjOKf1sTvVnQpyc4RYfU?=
 =?us-ascii?Q?+tAfpV2lOo0fIWTiTC5IRXj7hv7FDF7zEY+hK9DExP+qBwsK0M1EZosRIUcA?=
 =?us-ascii?Q?JMlcQc9qZHkUEMwqXim70gcWye4dnxipa+eAe4WC1QGgDHhfWlxmmBw845Pc?=
 =?us-ascii?Q?XTRX0/4erFyf3veLz3pVkxxnWSX/M1ZXVD+dGHWFzth+TW1OKMc8GGOCzIe5?=
 =?us-ascii?Q?bGQTG6EBTTOdbqSiSNUkyqEZIVdgZBP8ibuhQyTw+XyLDt1DaPFpdawWbukG?=
 =?us-ascii?Q?gRk4DT5vsT8ZXwZPaAjf+mGbeKzdmd5UUm6gNwDe3djKRUqBG2BRCWaUSexj?=
 =?us-ascii?Q?b7oBZocfh3NCmVqqQ6v6O9Q/yRuUq+GCaQHcg1dvOrunVHydlYdFU7xC4GUM?=
 =?us-ascii?Q?O6DSMPi7ak6Yfz0OXutyOh5wRHEku5hklx26Eluea9BsEHO9eQ+ALUEYg0PC?=
 =?us-ascii?Q?tOkjgsw/E16XvutT90HnOufglwJEXIt0UdJ55bW1h2xFjXu6yMYQ/FGQqNmU?=
 =?us-ascii?Q?5Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d025e464-2afa-4de8-7191-08daeffba8d8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jan 2023 15:35:37.7745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eOUB9zn2QbTaSLF8c4W51uNFuWWYtQcVCsuE57QTS1CYz0QGFvEKaw8/OF64A6PD/oLaE2Tx+iOCSSzyKAI/EA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6051
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 6/9] drm/i915/display/hdmi: use
 intel_de_rmw if possible
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

On Thu, Jan 05, 2023 at 02:10:43PM +0100, Andrzej Hajda wrote:
> The helper makes the code more compact and readable.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>  drivers/gpu/drm/i915/display/g4x_hdmi.c   |  8 ++---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 15 ++++-----
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 40 +++++++----------------
>  3 files changed, 22 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index c3580d96765c6c..f58849b416ea89 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -271,8 +271,8 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
>  	 */
>  
>  	if (pipe_config->pipe_bpp > 24) {
> -		intel_de_write(dev_priv, TRANS_CHICKEN1(pipe),
> -			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) | TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
> +		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
> +			     0, TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
>  
>  		temp &= ~SDVO_COLOR_FORMAT_MASK;
>  		temp |= SDVO_COLOR_FORMAT_8bpc;
> @@ -288,8 +288,8 @@ static void cpt_enable_hdmi(struct intel_atomic_state *state,
>  		intel_de_write(dev_priv, intel_hdmi->hdmi_reg, temp);
>  		intel_de_posting_read(dev_priv, intel_hdmi->hdmi_reg);
>  
> -		intel_de_write(dev_priv, TRANS_CHICKEN1(pipe),
> -			       intel_de_read(dev_priv, TRANS_CHICKEN1(pipe)) & ~TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE);
> +		intel_de_rmw(dev_priv, TRANS_CHICKEN1(pipe),
> +			     TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE, 0);
>  	}
>  
>  	drm_WARN_ON(&dev_priv->drm, pipe_config->has_audio &&
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 6406fd487ee524..2984d2810e42cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -943,8 +943,7 @@ static int _intel_hdcp_disable(struct intel_connector *connector)
>  
>  	repeater_ctl = intel_hdcp_get_repeater_ctl(dev_priv, cpu_transcoder,
>  						   port);
> -	intel_de_write(dev_priv, HDCP_REP_CTL,
> -		       intel_de_read(dev_priv, HDCP_REP_CTL) & ~repeater_ctl);
> +	intel_de_rmw(dev_priv, HDCP_REP_CTL, repeater_ctl, 0);
>  
>  	ret = hdcp->shim->toggle_signalling(dig_port, cpu_transcoder, false);
>  	if (ret) {
> @@ -1819,12 +1818,10 @@ static int hdcp2_enable_encryption(struct intel_connector *connector)
>  	}
>  
>  	if (intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
> -	    LINK_AUTH_STATUS) {
> +	    LINK_AUTH_STATUS)
>  		/* Link is Authenticated. Now set for Encryption */
> -		intel_de_write(dev_priv,
> -			       HDCP2_CTL(dev_priv, cpu_transcoder, port),
> -			       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) | CTL_LINK_ENCRYPTION_REQ);
> -	}
> +		intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
> +			     0, CTL_LINK_ENCRYPTION_REQ);
>  
>  	ret = intel_de_wait_for_set(dev_priv,
>  				    HDCP2_STATUS(dev_priv, cpu_transcoder,
> @@ -1848,8 +1845,8 @@ static int hdcp2_disable_encryption(struct intel_connector *connector)
>  	drm_WARN_ON(&dev_priv->drm, !(intel_de_read(dev_priv, HDCP2_STATUS(dev_priv, cpu_transcoder, port)) &
>  				      LINK_ENCRYPTION_STATUS));
>  
> -	intel_de_write(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
> -		       intel_de_read(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port)) & ~CTL_LINK_ENCRYPTION_REQ);
> +	intel_de_rmw(dev_priv, HDCP2_CTL(dev_priv, cpu_transcoder, port),
> +		     CTL_LINK_ENCRYPTION_REQ, 0);
>  
>  	ret = intel_de_wait_for_clear(dev_priv,
>  				      HDCP2_STATUS(dev_priv, cpu_transcoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index efa2da080f62d4..4b09f17aa4b23b 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -237,15 +237,11 @@ static void g4x_read_infoframe(struct intel_encoder *encoder,
>  			       void *frame, ssize_t len)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> -	u32 val, *data = frame;
> +	u32 *data = frame;
>  	int i;
>  
> -	val = intel_de_read(dev_priv, VIDEO_DIP_CTL);
> -
> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */

A probably good follow-up clean up would be to define the missing masks
and remove the hardcoded things like this 0xf.

And also something that I had noticed on the previous patches but I forgot
to mention: it would be good as a followup to replace the local value << shift
per FIELD_PREP() helpers and remove the shift definitions...

But really nothing related directly with this patch. For this:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Oh, and I also noticed that CI didn't return yet for these patches...
https://patchwork.freedesktop.org/series/112438/

a strange delay... I will probably hit the retest if we don't get
anything by the end of the day today.

> -	val |= g4x_infoframe_index(type);
> -
> -	intel_de_write(dev_priv, VIDEO_DIP_CTL, val);
> +	intel_de_rmw(dev_priv, VIDEO_DIP_CTL,
> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>  
>  	for (i = 0; i < len; i += 4)
>  		*data++ = intel_de_read(dev_priv, VIDEO_DIP_DATA);
> @@ -313,15 +309,11 @@ static void ibx_read_infoframe(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	u32 val, *data = frame;
> +	u32 *data = frame;
>  	int i;
>  
> -	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
> -
> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
> -	val |= g4x_infoframe_index(type);
> -
> -	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
> +	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>  
>  	for (i = 0; i < len; i += 4)
>  		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
> @@ -395,15 +387,11 @@ static void cpt_read_infoframe(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	u32 val, *data = frame;
> +	u32 *data = frame;
>  	int i;
>  
> -	val = intel_de_read(dev_priv, TVIDEO_DIP_CTL(crtc->pipe));
> -
> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
> -	val |= g4x_infoframe_index(type);
> -
> -	intel_de_write(dev_priv, TVIDEO_DIP_CTL(crtc->pipe), val);
> +	intel_de_rmw(dev_priv, TVIDEO_DIP_CTL(crtc->pipe),
> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>  
>  	for (i = 0; i < len; i += 4)
>  		*data++ = intel_de_read(dev_priv, TVIDEO_DIP_DATA(crtc->pipe));
> @@ -471,15 +459,11 @@ static void vlv_read_infoframe(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	u32 val, *data = frame;
> +	u32 *data = frame;
>  	int i;
>  
> -	val = intel_de_read(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe));
> -
> -	val &= ~(VIDEO_DIP_SELECT_MASK | 0xf); /* clear DIP data offset */
> -	val |= g4x_infoframe_index(type);
> -
> -	intel_de_write(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe), val);
> +	intel_de_rmw(dev_priv, VLV_TVIDEO_DIP_CTL(crtc->pipe),
> +		     VIDEO_DIP_SELECT_MASK | 0xf, g4x_infoframe_index(type));
>  
>  	for (i = 0; i < len; i += 4)
>  		*data++ = intel_de_read(dev_priv,
> -- 
> 2.34.1
> 
