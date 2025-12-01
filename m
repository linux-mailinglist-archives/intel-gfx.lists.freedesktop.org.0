Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A16E6C96CB4
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Dec 2025 12:03:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 136A210E381;
	Mon,  1 Dec 2025 11:03:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cjYsbcWa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1165D10E381;
 Mon,  1 Dec 2025 11:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764587032; x=1796123032;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=G6mJEjQ3F6f+igzrksVQqyQD/RLW3hkqVTKsh2Et440=;
 b=cjYsbcWaknI7FmCfVqF9KZXr0Ix9IhOj/AwO5k4KFVT6taSOvmb68FfT
 GTT1U5gVUyZEC75miTbwvMqRCi7GMw2ge0LkqQmqggetxhqmaeopWGtJH
 DDXPqEya568wSoaB3iB7o1wsnvbDMjCH3FrA7/a6H6JdmNWMCeFZguzv9
 Bi92Q+g0mRuypKAxLWhvE3nEF1uZMLnFBH5SpL+I7ZfW627/DO8Tts5/F
 neEgcYLR3EIMdS/bcTtrJHVY2hU4/qheaTtuhj8LauRO/zICHpQIbVXHv
 O2J1ua8d9PlW/+rZIF2//57RwplbUHZdEreuGRXAgFg9P2+mjJ5/w1+GA g==;
X-CSE-ConnectionGUID: 5Ql1odJeTCCcWjozIKTWAA==
X-CSE-MsgGUID: kledEhOhTbSADnNYnxmFDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11629"; a="77988642"
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="77988642"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:03:52 -0800
X-CSE-ConnectionGUID: EshRzrHaQzW3jlH/MSguWQ==
X-CSE-MsgGUID: phhT+oeAT6e4mhvTksHJgA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,240,1758610800"; d="scan'208";a="193305469"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 03:03:51 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 03:03:51 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 1 Dec 2025 03:03:51 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.65) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 1 Dec 2025 03:03:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KdrSrXhlsoTJrojUmddd+rla0hrDBHRP8XwRmeuyn5k2xtDAb/uW34t0dfZGf/EKqI96op3n5mrDm1XanudlM/wRjoseoULVGwfs3dY55gO234hKQKnIqQuFjoi0yjFbOqQ3IPvVfr4fmJLUHTQRLTExCa8/gEO8luZkEUKZmxzdu/vYWx06MbdrxThUoR1Tt52+87xlHWoerp3JOU4qS+uA1XxKPcZfg7Dwc3UFcBPm1jMcG4BV9Zb26SQyYeHwniMU4W3xK31t3gNEkCCoWDGbuVQZyRe71SlnO7b9K+W4iOwxdQLsFC/5puHOMPIJf8N+TpxEduUbvxZBwU38PA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GIR/EtPzI4RGtf3JOvSWDh6i5vicMqln4Tzesycv6o4=;
 b=bk0JEpSBhfjwnbPokEsODdL4ivdDDgDqDbPEsLYYko2/RnqOQgUOVhfLwysHrIoeguRyjj5C+cKRRJ1+PrdEXpKHNnovJlHHUDu2i3NgGAO38mqxLNcyKDdMP40Zsl8293V6CfPfBX1Cd+qqO2X9VL6lqYgEVplpjwlMiLioXHK9JRxjTEcBtvJr1vAWf43XAqWYpodkLgr4vw4sTBNSI63Me+WFxaDY86lnC+uknUhK9cuZXcNd7OhF/SJfR/9CZ3i1tMXnCu/UVQMdOi1K6zac9Yv+XaAfB8nVWea0jvdCmvFzBwwrOUDz15e4xr8Ve2wuo5pRLqXGPGNNh4CCBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CO1PR11MB4900.namprd11.prod.outlook.com (2603:10b6:303:9e::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Mon, 1 Dec
 2025 11:03:49 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Mon, 1 Dec 2025
 11:03:49 +0000
Date: Mon, 1 Dec 2025 13:03:44 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jouni =?iso-8859-1?Q?H=F6gander?= <jouni.hogander@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 8/8] drm/i915/psr: Move sink_sync_latency to
 intel_connector
Message-ID: <aS12EH9j12HER6Xr@ideak-desk>
References: <20251121111655.164830-1-jouni.hogander@intel.com>
 <20251121111655.164830-9-jouni.hogander@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251121111655.164830-9-jouni.hogander@intel.com>
X-ClientProxiedBy: LO4P123CA0141.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:193::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CO1PR11MB4900:EE_
X-MS-Office365-Filtering-Correlation-Id: 3932c8ef-44b3-4ea4-5336-08de30c94dfb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?kugrgbDru4PK8QwTIIGpXgOq0Vv5SvSVjorRYZLXz1Forgg2HTLSaTGcJu?=
 =?iso-8859-1?Q?7W5pyJAwUHUhIh+6dPVen9O/Zj2zLOgSSwa5F5K58B0vtEEdbH6DmgSZXs?=
 =?iso-8859-1?Q?SbQRlZ5aMK6/yc5ARcNDB/NpV280pTBJC1ZOCLDtRj279cb9muWkv2KH4d?=
 =?iso-8859-1?Q?qxHYs8j2+NvXkhUfIWSJThViOyJ9q3me1+fliSdqmPaEUWZAYeFC7HuXz9?=
 =?iso-8859-1?Q?wJ3mTD8kwLoqgARejM0iHHvA2Vm+/yi60zbTosi35lmgjsCKxlsRITJyGI?=
 =?iso-8859-1?Q?5i2CnEJooZ8Asy+Ms1rsaEOcsVpQ02QhvoX+6oyT8bJZPBPdOQ4W4Pqc4o?=
 =?iso-8859-1?Q?d7z08aEVR3pjqiFCSAMeeST9+y+cAeVH3GME8uCX9fyn65t0sVW8wolHgo?=
 =?iso-8859-1?Q?DZkOc5Csob1sXlGiS5vR3qF/N9TQyhTe0RQugV2DxIt1cA+1C1G1TbpZQs?=
 =?iso-8859-1?Q?J9qq8+yEdY5v0y69i4tMxsDkObaxEjwCTB9JJzEOJBhBL7cz4RXAO4IuBg?=
 =?iso-8859-1?Q?Vy92wMsuqaf/4uGHH0RnhaIRNoZ8KvZZnKIgUhrL/SvJ5cKDEuMqKiivCn?=
 =?iso-8859-1?Q?W8/vmdYlJ+uHsZ6+cLTG7KyW+8+FmcBghcOUii1hmpY81Gtag2FFKo0bFE?=
 =?iso-8859-1?Q?41Rpk0nk+futhHdRl2WvYFO/fYRGEByQYOKzRhjIdqHsYjMA1Hd7DDG4nV?=
 =?iso-8859-1?Q?DKhn6C9lelrIg4nayI9GiT4mLsZZHVWKaLboZvnNUDnt8ZrOiG9DTVGvSY?=
 =?iso-8859-1?Q?xb33D6+wym0NP6zhwVO99h7uqbY4XGX1n8tT+8KlrB0911pi1Lfspeqenx?=
 =?iso-8859-1?Q?KXXn72aabmdovkWfCmwf29CgoM5RkMrSmwK//hSlzH4ySVggasKaePWu/t?=
 =?iso-8859-1?Q?wmU7AGm0uqw9FGKgYtImLDdsnjGQTyFaYfSeTulsdk/2eMymohGNpre/oj?=
 =?iso-8859-1?Q?6TCooGyICDf2TM5cWSnea/SV2Vj/awiqTXdPwiVqX13quM69aMdq9l4ZmZ?=
 =?iso-8859-1?Q?2MSqeISnqIpb9W+9Ige+KFltBpYZwqOLH//KEfpvniVBxwjRp1QI7iXXB4?=
 =?iso-8859-1?Q?1MxvObcH74MLmo07FFQqZDYTPK4mGRYAcPkHMsFs+Od4u3U3Li1n/9zsMN?=
 =?iso-8859-1?Q?qQZgooYh4qAUtin3XefgRUKqOZ2TQQyozoEKYsHU3fnoHHxDEZledsRPxx?=
 =?iso-8859-1?Q?c36sm9N5XZ4xK6DPdEa6Aa2oFfSK7eNQzogpZilSoAhWlgDvXibPTxSODh?=
 =?iso-8859-1?Q?ZeRbHM66K1g6IrkziG0hPz1t0kZn1FK1nUdM8GhPi/uuKBvWrXAUshFv4r?=
 =?iso-8859-1?Q?ojJszssYHzFJVNnvKh1CsgeEHCajt3qwobl7MlEGjvD1ZiMu3q0Fke+UtD?=
 =?iso-8859-1?Q?U+V7TxuCHhXmoE2lQRaxpCNLW3bBD7x4NZkrzIYmGabQ/3c+yOQLvTbyIn?=
 =?iso-8859-1?Q?EF/wJ2zYqcw+fDl2wHHOwJSb+qSAMtVY3WRT1QsY6gPXF7dfbQvLpAAUDU?=
 =?iso-8859-1?Q?p/JCkVRljuJ4jNHGSOw8sa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?ImJtkkmLjrau+CAQ5DRrgvR1HEvO3NFRredsb11Dth3XSVBY42iROLLMjP?=
 =?iso-8859-1?Q?bJH9knyuGl+R9/gCn2x+4HXMeHRp/lDUujX/G1+Hi3wbP7ibKyusDl+Q1A?=
 =?iso-8859-1?Q?8s1NbKxpbp9bNsZscqZwk/twWBs/sW9lLrc87SZp6YtwLcMaRroBWMZnno?=
 =?iso-8859-1?Q?cRs4gskHsm07aihloUxffMk8dPlEHeQCmY18CwLFmcdi+pBNB/zrSTiDNl?=
 =?iso-8859-1?Q?/Jm04pDUpJxCPHzV3IGPuAqCy5SO6NiW04YbMpCnvooYRFyu2olykwynCY?=
 =?iso-8859-1?Q?7trMESGAanRmDBYvTHXvYyeqE60VNu0QpOa4L41ImYI86f7iZEfAsWpuVA?=
 =?iso-8859-1?Q?VJfi/R5bP0O+feSm6O/w3aGhILj00ndumd7/UwicBwQWY6oZloyxhmFzQ4?=
 =?iso-8859-1?Q?5p567Oy+FU8zvAIu65EBhPU6V9ZQfVTbgbBA2qLMJtcUfG0snyYa83ujed?=
 =?iso-8859-1?Q?mRn/jAygId8D96syI30ITB8vuaUV74JiXIw4++hwlinxfBpPBEcu0yxm54?=
 =?iso-8859-1?Q?jwjoN0mCM7NinrZYSI4taiHTaU3bCYFHKab2DsigusRO9hQaFXaXeh2lyb?=
 =?iso-8859-1?Q?l0F7kwfsSYt7Yy0AP/LTLKElBpdt3cMCwiovWVtPLS5aPrCuPer0doiNRA?=
 =?iso-8859-1?Q?Ctl3H62/Os1EPhuWsb5D3C3soynxwL5EyDi6Svzbf+VvvikOzO2A1r/k90?=
 =?iso-8859-1?Q?6ulafVS25yeqsiqhHsOrhnCla64w9t8BBMKZKBT6XzQnHeEp6WUi0kuM6V?=
 =?iso-8859-1?Q?x3vCH6LkMju0kw7w02j6znxlxKRmT8zR3cVr7WcKbvlWKyEFhNPlwOq7Vz?=
 =?iso-8859-1?Q?jMLbaFsw9is+UPC3MGA5u7BG7O3ppzyWeN4uZKWtpdvE9pO5H/jHpM/0ht?=
 =?iso-8859-1?Q?t8e2++DC3V033UNQzsmkzYrEhG03GR9HuVYMJHtZyOJgzv7FPPpBLYEDE0?=
 =?iso-8859-1?Q?+rv+vubJdJPifXL4sPZVqZoqcrUXC0tE/fKEIFpJJ5SpD/HiH6Q8pyU72B?=
 =?iso-8859-1?Q?57e8Vk8aD9wu6PpeR8rR8BPszR0NYaYYRxezTjTeYXh5pxGKvPxsGcV4rL?=
 =?iso-8859-1?Q?T7ff8Js8+Mxzo1B3tTjJZfsMOmJeaeL9H8r7lw6OPlRhHF+w97LKTGxBQx?=
 =?iso-8859-1?Q?clmd8YzGI/hggIj6eAaUia2GJLWS67YX0lMc6DJGbtn0bWIrcfb5es1Gt8?=
 =?iso-8859-1?Q?kFvd1SGFA0LQWKsIR4q3LzUC+qTGnPrjKeX3qFqILt0SYMKBmRswbhyMHj?=
 =?iso-8859-1?Q?DpWcrugI3lPfDBSSZcvh7ZMVN62GNgo/haORJmniIq8uut6K8BA+wfP0rl?=
 =?iso-8859-1?Q?NI8zB908o+GQvaT5sNvIvoWafz4eXioSaDwxcG3sYckWVqgBNWf5wtW/3X?=
 =?iso-8859-1?Q?EowDnOCX+EeFzj0+MHoOH1A8P/mjfy4MMxn+CqA1BMyyQlOG2LcrTy2m/t?=
 =?iso-8859-1?Q?KNWugAA/viFYIT7N8XqmkH28h/yTwKlKsfsCM/iEEjjJvCMwfCe2OoU8fu?=
 =?iso-8859-1?Q?vxtxSB0i+4pMmLjKR8Bc7ZTj+yHUxMIZntY7vrQx+C6ZMQhUzUeTX/l6up?=
 =?iso-8859-1?Q?2QZV416dJh+rrX9iMkpeh9TCTIlfmVth8eKsbquxFk+jOZPpVWIEbysVL3?=
 =?iso-8859-1?Q?t488ufqOxkKJrIm9mtvigp/aA5Bj+e1xgO37bxtclVFsqoo4evJ4MNxtXH?=
 =?iso-8859-1?Q?g9lhEIvPM5uXdR1eKJevtb9OkTj/ghJs1wyETUIt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3932c8ef-44b3-4ea4-5336-08de30c94dfb
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2025 11:03:48.9678 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Gv3c5LDvGV9kk87KtKEo07ogboFOh4h8EUSbN6qNgyzFer44Ajqf6yKYriyY4WfStfHI87OebohZIwrlbnYWRg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4900
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Nov 21, 2025 at 01:16:55PM +0200, Jouni Högander wrote:
> As everything else related to PSR and Panel Replay capabilities are moved
> into intel_connector move sink_sync_latency as well.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_types.h | 3 ++-
>  drivers/gpu/drm/i915/display/intel_psr.c           | 8 ++++----
>  2 files changed, 6 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 04d21333130f9..77e1948aef2ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -586,6 +586,8 @@ struct intel_connector {
>  
>  			u16 su_w_granularity;
>  			u16 su_y_granularity;
> +
> +			u8 sync_latency;
>  		} psr_caps;
>  	} dp;
>  
> @@ -1740,7 +1742,6 @@ struct intel_psr {
>  	bool psr2_sel_fetch_cff_enabled;
>  	bool su_region_et_enabled;
>  	bool req_psr2_sdp_prior_scanline;
> -	u8 sink_sync_latency;
>  	ktime_t last_entry_attempt;
>  	ktime_t last_exit;
>  	bool sink_not_reliable;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index e6268d692f89d..bbd1b0e8beecb 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -685,8 +685,7 @@ static void _psr_init_dpcd(struct intel_dp *intel_dp, struct intel_connector *co
>  	connector->dp.psr_caps.support = true;
>  	intel_dp->psr.sink_support = true;
>  
> -	intel_dp->psr.sink_sync_latency =
> -		intel_dp_get_sink_sync_latency(intel_dp);
> +	connector->dp.psr_caps.sync_latency = intel_dp_get_sink_sync_latency(intel_dp);
>  
>  	if (DISPLAY_VER(display) >= 9 &&
>  	    connector->dp.psr_dpcd[0] >= DP_PSR2_WITH_Y_COORD_IS_SUPPORTED) {
> @@ -911,7 +910,7 @@ static u8 psr_compute_idle_frames(struct intel_dp *intel_dp)
>  	 * off-by-one issue that HW has in some cases.
>  	 */
>  	idle_frames = max(6, connector->panel.vbt.psr.idle_frames);
> -	idle_frames = max(idle_frames, intel_dp->psr.sink_sync_latency + 1);
> +	idle_frames = max(idle_frames, connector->dp.psr_caps.sync_latency + 1);
>  
>  	if (drm_WARN_ON(display->drm, idle_frames > 0xf))
>  		idle_frames = 0xf;
> @@ -1006,10 +1005,11 @@ static int psr2_block_count(struct intel_dp *intel_dp)
>  
>  static u8 frames_before_su_entry(struct intel_dp *intel_dp)
>  {
> +	struct intel_connector *connector = intel_dp->attached_connector;
>  	u8 frames_before_su_entry;
>  
>  	frames_before_su_entry = max_t(u8,
> -				       intel_dp->psr.sink_sync_latency + 1,
> +				       connector->dp.psr_caps.sync_latency + 1,
>  				       2);
>  
>  	/* Entry setup frames must be at least 1 less than frames before SU entry */
> -- 
> 2.43.0
> 
