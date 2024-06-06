Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F338FF121
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C2E1F10E9CA;
	Thu,  6 Jun 2024 15:48:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZHh8M7l4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 83ED010E9CA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688908; x=1749224908;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sOMj+Uw06lx8LNZdC/xqj4Yj0jcjHchhol2Hj3TRecQ=;
 b=ZHh8M7l4xa7nz46NiY/Mv6zyUoJr7owKT+gEWqhOmauTwhd7mQmInfKk
 yYCeU7fPIAP2jHuWwR2UVcaAteNs+p9sXaBNRHm3d8Tk2gxVmCppLBnU4
 ueKHMpSH3kjlAn2c6vx6ouuKyUiJDWWAywcii7vaqA5MFRxkm1m6qmfUs
 Nupv+gQDsTjLUYvRHFpWfOOJiY6U5hxaODRsfCv3tVyDtCKK+EjPaRDmB
 C06dFTICsSAWujQu3QkUZyhxIpOtNtFQzqZ+Kp4UjWtWTgmpmviOnrlOJ
 w731dYais/wQgFMgOstoxWxdZDphC7SZOwdUQU9pXmsTudoumbXzTvBZZ g==;
X-CSE-ConnectionGUID: iiT5hKQLQK6n9ZIOMlDszA==
X-CSE-MsgGUID: 2aj+ltPKSv2zYH+t1T29+Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18160264"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18160264"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:48:28 -0700
X-CSE-ConnectionGUID: dC68J98/SpaT+iVDrSttZA==
X-CSE-MsgGUID: x+d0/B6qREWx0oanhtFDtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="37940050"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:48:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:48:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:48:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:48:26 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:48:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ixOjT80W8/VSnib3f74ViysUYIDlIsBjhXWLZ42Ps9L36fp5yLf9O7Efzgl0RKES5jGaXkCEMPggjAJsf7tfO3++knRCScpmy0PvXicQiJmxaD6pkm3rkLDwrH+gJllx8wxKIfez5gPTKMLtXqFft837KH8rEQNyTUbgYMfKj/GKdZ9+8JETlIwgcdt5neRQzDXFdfCkkAohU9hD/t2m7Ae5vW7uPcaqrHQQkuu0Onjm6NPrk2hBY6JBXgVvpS64NiQ46jGV0dT+txRJCN2pT5t0MOTJ8QW/XB7DSU20ryeQthZhqcCba92//TsGrf7GGDcxCqUzjlT9JMCZkVC3CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q51rwOn5uwEabL+qDN+46ShSZrcHbFutHG/hRMp/GzQ=;
 b=WnIPqLZHiYkcknG2hGDDe0RFtzKQeiNOEb+MeDWNZXCfE6QoxEaxusbe+Mc04dt/Mk3wMt6VeEAfa0kckPIQ0lMFfJs4gKOHUlNjN+9kJa8pVhhBbXjQJ63Y1i3FC+yCITo6TJTuClMzTrLwvUbI7iyC7NgVVrFSYnAYLFOqKGs8Ydly6DNUJIZb3KoRXNIggFFnacmpmrIEkTfN5nxemw40qc2pOvFRh+P+qjcG4fmaP9n8DyjXxFC9gd5SygLN3PbtrehrBrzd+ylzdFcEJmTB5VSpJFXNQTYZMuViEwF6meWXq1wCnL6uu8F3qGRF+smOqFC5dZyv46T+uGR7Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DM4PR11MB5229.namprd11.prod.outlook.com (2603:10b6:5:39f::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.33; Thu, 6 Jun
 2024 15:48:24 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:48:24 +0000
Date: Thu, 6 Jun 2024 11:48:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 26/65] drm/i915: pass dev_priv explicitly to DSPFW1
Message-ID: <ZmHaRqtaheGN0k28@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <4843726dff7d95e4127fb948073c9e4addc1e683.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <4843726dff7d95e4127fb948073c9e4addc1e683.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0116.namprd03.prod.outlook.com
 (2603:10b6:a03:333::31) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DM4PR11MB5229:EE_
X-MS-Office365-Filtering-Correlation-Id: eb6e5445-a1a4-456c-9601-08dc8640198e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bfZQG5owLJYF5zflI/0TXEIAICcvjspa0dCmuvcI2mVODuJ2emlYd6h+omiH?=
 =?us-ascii?Q?oohduuXodZDQQI+p5k63zr+9rJib0j128OxPhcKU+h8c9XBevHbV0mwfV0o7?=
 =?us-ascii?Q?p5KlTFR5ZJiOvJ1cl/haC7qGWd9hQIugE4XobiqdX1a4hjOW5AFdiRQpZrvu?=
 =?us-ascii?Q?4EEFFcO5+EdD4V41cD5oqkiAc/2wQz03ZgrtZ7ErbUmeXEn/sHJFCe04QuCF?=
 =?us-ascii?Q?g3weXIPLDEFnYQpnLpC17C/4CgpVahfKtp8ctyxjP7MFlIeNi9em3h2jWVdV?=
 =?us-ascii?Q?H/wY/iE4YsL3aM9uQyYc6gk89SMtdQgOPri3MqkCu1HMW4BG6qBMQa1jZLO2?=
 =?us-ascii?Q?4IslxQ9HOiCfNOrg/gNU50nzR3UObfJEWXnmHSjRM497LfeFg/ZrC/WHEx+S?=
 =?us-ascii?Q?9YQjhAWc4J3poOvdgtOxxEueW+pGuvgSEgPmk64h8RcjS96yYhIZqUmMNlG6?=
 =?us-ascii?Q?FKAjfBBjZpJ78YY3/GVPK80WrOCmsida3wNIMLz3fAAA/MQLCI+ObCat8B65?=
 =?us-ascii?Q?icVgIwFimO7d+/pk9/xnNgA4nGdExIfkjA8vjc7wQutUXlXD2Pm/8d2YNzXA?=
 =?us-ascii?Q?ZyT38Z9hOEq/bWlzYW3bLOdCh8UlQSUdc2gVY8EufFSafhQ+YyklY8BOQox+?=
 =?us-ascii?Q?Ge7fD1ge3pxj+eQEkXwFYGE0L8UQCHHUBsn+vYaYSw8XrY0QVxsdix0CniFE?=
 =?us-ascii?Q?DYmKW10yZ7R79cWcRyBhRqfIB+O0DzaBqabSK/9b8X7LUCSsLb5F1L+X2BUR?=
 =?us-ascii?Q?QYLdL1+x0b4yXnJHGJ8jo04/9hL96eBgJwXjDk2dd/DpJrv81FLHBiRqROoC?=
 =?us-ascii?Q?KAIAdCmNBtFkM+PUZoezxlMQCF7/UxyzRBcyTngW/t9kD3Cfs1J72QUH4WjN?=
 =?us-ascii?Q?1UbJ7sCImqFIPrVcqOLNjBTX45ZVPRPtSObZ6qNYDYlp8qC2J4mMqOAKDuWS?=
 =?us-ascii?Q?D1PU0TY4oxbnTGAAxBFdDySgL+7cE87Kp2p+OwcJTZoFR77LrlAhPvICOqE8?=
 =?us-ascii?Q?EdsVtPebQs2p6JaY/T0zIbOgHJUru8LKgnvfOwiAcyQHNY7awKAnySc1g7AH?=
 =?us-ascii?Q?43nf6WXUq0zU0kMbtL8Llv/h6WfF1S5ByPs73iWFWYjHUDegsIVC2TWBWv2G?=
 =?us-ascii?Q?kkjUG2y2H4IUnNXEx0xcDWun7hMEMg9HBPR04ZR4DG6MEe2rV9izIKAQbuRE?=
 =?us-ascii?Q?FClEX3Dpytg6J00A8RZkBn3XTAZqFqbbbXUr19yK9xHzf6HbXaA2ZJLhBiSa?=
 =?us-ascii?Q?yz5npNCqHmPVse9FnXY/xTFnkoTZNic0dBxZkS1L+wuh+/RFg/e9GBnkoFNt?=
 =?us-ascii?Q?qR+un95R15IXO0sp1j3bwjw0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BG9aMe282CSbRIImmCM3RFTdqw+1IMiKqZNis9pdZFnYoHv1/6a66OohZzGp?=
 =?us-ascii?Q?Z9v/teNdui4AaFliHBvA2Tavvn1m94wkkrx7AK7FeE+YDHRSzf8oJAB5ZYlu?=
 =?us-ascii?Q?lkwD+z3HgUFG+l3DKMngLqzHl76uYZPaYKaXN+J4Yi2JNIw9lkzjR8xZPs42?=
 =?us-ascii?Q?H7XxC1AkHA2YYk68zDxnAWUxe4+pnfvO7b7KZCqddgMrhuKChkV90ATHWkwb?=
 =?us-ascii?Q?qJm979YdphN3U34+jn/fR9gFyxzBZTfViLQxrWn4a+B2q8Fazwgurr2X2MbI?=
 =?us-ascii?Q?BQks2zBxooOEZ5qBKqjrnZLZ+mKRcgsyMNgKc0OQoropHoJ/MtNk/Mzk5muZ?=
 =?us-ascii?Q?FGFOo3UW04Y5l+QGj+Kcs30ubc++5mAHkpu0CXfMtWfsMTUpHbE+k2y30+yl?=
 =?us-ascii?Q?iwb1+dNYD2b+Uv2KI+NmExNlW2+t5jDRKK9rl4KbeH2RIL92XLrnK5nngJyg?=
 =?us-ascii?Q?cYg7tz71+sE2N93i95b5Ajjd8/aH+U46DF9vf6H9xVGRo5pU4AWELlYdfhWn?=
 =?us-ascii?Q?Quihs1t3tbDxoYzhexbk3vrFyECzbMdvcFIhoEb71rebdply7udo+BNA7auG?=
 =?us-ascii?Q?tu7v2z+rfVDnOUhlwl+fK3BFFCfGJJr5a0cuv5jYGGDmgNBm8HUThZErCxgq?=
 =?us-ascii?Q?81JoWToceiIMr18d57k/0tqFFGEqyyoj1JqmF/MtdfyS+98LHZJs/9/0qS4t?=
 =?us-ascii?Q?pmIFDJbChtAQhDnub+zL2BgYrs4ZWaqIU3hkQ9sIIVIqyg9rw68nyM9wMdGZ?=
 =?us-ascii?Q?roeyImQHH8korvsTozNtJ03zK0TgKmqKmCux5HONqRjk5LrhEsZaBE9E0Fi6?=
 =?us-ascii?Q?0ubTrjLxKTC/5fOEafp/U4Upq5OE0qAFAeE/AYqPQjirlVkp2zobj6UJTFO2?=
 =?us-ascii?Q?ufEJ5Obts9VVmuDF+qlpNQkoNFr9p8YOy8hjgK0LafeDKmrwLzk79BBoeInA?=
 =?us-ascii?Q?Jdx/zCW6W/TmirjFalpNnMHOWroKHrqW81ugmgJobJqRmfbssBh8IXsDj+6G?=
 =?us-ascii?Q?JASj1Smx20c178QVzOx63IRvCoZfi682IUN0fvwZL+rkkc4W7jd8KtezsIi9?=
 =?us-ascii?Q?+BI/UC1GNwh152KqIde34Qbc0MIOqxRbQUrXEqtZ0Pyt2f8Psw0IvC3gt9eu?=
 =?us-ascii?Q?IgNZehkBSGn+znyoY4ApwX5Wk2waIesU0YxXeodgoMIuXluQWO9L83lt3ONm?=
 =?us-ascii?Q?nphUowuMBE5J8868vnNL12OfhbRijldZzhpJYfmOjXTC1r8EfkNPdZv8QMmw?=
 =?us-ascii?Q?cz9hBxPN3uWkyEyc4Yx+jpSeYtVDa2SDd9/585r0EIlF+geBKkBcPG5WtVdt?=
 =?us-ascii?Q?ADh9fr8u/LrDlDyH0KxXVER7Ga/iP1n7qSXu/GcweYLl0IwGr0Tl0bqRlEZ3?=
 =?us-ascii?Q?ik81UpzI1UDUz57DHXzk3RTItT8na1AaVhAMZWAaPuUZvZM3qIDuCjCVQenQ?=
 =?us-ascii?Q?ODn2UwXJYeWN8wyLsaBETeG5tNEw9zaWGmm9kP5DjE0W5tkezxmRP6Ov0JEK?=
 =?us-ascii?Q?jtsUuE+8nkEDO1+/Nco5dBuRzDddqAUfbVZ0+y5gXqoRj+S/WTWMHP9CLhuB?=
 =?us-ascii?Q?QbCFgNzV/IAOzNBjgll5jBRlhNDN8Pq68T7oyfaM?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb6e5445-a1a4-456c-9601-08dc8640198e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:48:24.6181 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EPZmooYVur2veTQ8wVyhgAnej2O/bwI8yZxiF2buxtVxQhvBYOLBfljyevKgYjhNgJyEmxibeJt2UJezttUf1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5229
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jun 04, 2024 at 06:25:44PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the DSPFW1 register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_wm.c | 25 +++++++++++++------------
>  drivers/gpu/drm/i915/i915_reg.h        |  2 +-
>  2 files changed, 14 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> index fd14010b4cc3..e39415fb1c19 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> @@ -657,10 +657,10 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>  					&pnv_display_wm,
>  					pnv_display_wm.fifo_size,
>  					cpp, latency->display_sr);
> -		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1);
> +		reg = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
>  		reg &= ~DSPFW_SR_MASK;
>  		reg |= FW_WM(wm, SR);
> -		intel_uncore_write(&dev_priv->uncore, DSPFW1, reg);
> +		intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv), reg);
>  		drm_dbg_kms(&dev_priv->drm, "DSPFW1 register is %x\n", reg);
>  
>  		/* cursor SR */
> @@ -720,7 +720,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
>  	for_each_pipe(dev_priv, pipe)
>  		trace_g4x_wm(intel_crtc_for_pipe(dev_priv, pipe), wm);
>  
> -	intel_uncore_write(&dev_priv->uncore, DSPFW1,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
>  			   FW_WM(wm->sr.plane, SR) |
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
> @@ -738,7 +738,7 @@ static void g4x_write_wm_values(struct drm_i915_private *dev_priv,
>  			   FW_WM(wm->hpll.cursor, HPLL_CURSOR) |
>  			   FW_WM(wm->hpll.plane, HPLL_SR));
>  
> -	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
> +	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1(dev_priv));
>  }
>  
>  #define FW_WM_VLV(value, plane) \
> @@ -770,7 +770,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
>  	intel_uncore_write(&dev_priv->uncore, DSPFW5, 0);
>  	intel_uncore_write(&dev_priv->uncore, DSPFW6, 0);
>  
> -	intel_uncore_write(&dev_priv->uncore, DSPFW1,
> +	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
>  			   FW_WM(wm->sr.plane, SR) |
>  			   FW_WM(wm->pipe[PIPE_B].plane[PLANE_CURSOR], CURSORB) |
>  			   FW_WM_VLV(wm->pipe[PIPE_B].plane[PLANE_PRIMARY], PLANEB) |
> @@ -817,7 +817,7 @@ static void vlv_write_wm_values(struct drm_i915_private *dev_priv,
>  				   FW_WM(wm->pipe[PIPE_A].plane[PLANE_PRIMARY] >> 8, PLANEA_HI));
>  	}
>  
> -	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1);
> +	intel_uncore_posting_read(&dev_priv->uncore, DSPFW1(dev_priv));
>  }
>  
>  #undef FW_WM_VLV
> @@ -2067,10 +2067,11 @@ static void i965_update_wm(struct drm_i915_private *dev_priv)
>  		    srwm);
>  
>  	/* 965 has limitations... */
> -	intel_uncore_write(&dev_priv->uncore, DSPFW1, FW_WM(srwm, SR) |
> -		   FW_WM(8, CURSORB) |
> -		   FW_WM(8, PLANEB) |
> -		   FW_WM(8, PLANEA));
> +	intel_uncore_write(&dev_priv->uncore, DSPFW1(dev_priv),
> +		           FW_WM(srwm, SR) |
> +		           FW_WM(8, CURSORB) |
> +		           FW_WM(8, PLANEB) |
> +		           FW_WM(8, PLANEA));
>  	intel_uncore_write(&dev_priv->uncore, DSPFW2, FW_WM(8, CURSORA) |
>  		   FW_WM(8, PLANEC_OLD));
>  	/* update cursor SR watermark */
> @@ -3521,7 +3522,7 @@ static void g4x_read_wm_values(struct drm_i915_private *dev_priv,
>  {
>  	u32 tmp;
>  
> -	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
>  	wm->sr.plane = _FW_WM(tmp, SR);
>  	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
>  	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM(tmp, PLANEB);
> @@ -3561,7 +3562,7 @@ static void vlv_read_wm_values(struct drm_i915_private *dev_priv,
>  			(tmp >> DDL_SPRITE_SHIFT(1)) & (DDL_PRECISION_HIGH | DRAIN_LATENCY_MASK);
>  	}
>  
> -	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1);
> +	tmp = intel_uncore_read(&dev_priv->uncore, DSPFW1(dev_priv));
>  	wm->sr.plane = _FW_WM(tmp, SR);
>  	wm->pipe[PIPE_B].plane[PLANE_CURSOR] = _FW_WM(tmp, CURSORB);
>  	wm->pipe[PIPE_B].plane[PLANE_PRIMARY] = _FW_WM_VLV(tmp, PLANEB);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 75223b8cb575..5f1db52ee773 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2019,7 +2019,7 @@
>  #define   DSPARB_SPRITEF_MASK_VLV	(0xff << 8)
>  
>  /* pnv/gen4/g4x/vlv/chv */
> -#define DSPFW1		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70034)
> +#define DSPFW1(dev_priv)		_MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x70034)
>  #define   DSPFW_SR_SHIFT		23
>  #define   DSPFW_SR_MASK			(0x1ff << 23)
>  #define   DSPFW_CURSORB_SHIFT		16
> -- 
> 2.39.2
> 
