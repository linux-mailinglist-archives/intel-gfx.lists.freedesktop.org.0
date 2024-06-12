Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE70904A06
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jun 2024 06:32:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CA8610E77A;
	Wed, 12 Jun 2024 04:32:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mdQdcOIj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECE8010E779;
 Wed, 12 Jun 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718166743; x=1749702743;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lYR+p8w13n67aaAEAUdVQQ5eefsp8oAC2DEu3ZaNk3s=;
 b=mdQdcOIjmJKPR8bFnKNWwPjyummJQKoLBZZhz0fd3PmnF/mA71nQgNnm
 DwVMhxOgEE8pXvMhO2VYJ6OrPjPjOq6/d51j1f4jBtTyJ/WqwS1uNfM3Y
 G3ejQR/1CC1QuV48z92sh6EGWxJH9mGT3K2XpmazNtFWD5saI+cbPUvcx
 UL9vi7Mw/GK/7pLFtTYbWhHSVdDLviAkju5VJYPUx/1R0TK2m3hHV6Fs7
 OC6yaCxeXz0SqHuSVH/BfDroCQIGhVU+MMUW1DkF+2ZEO+JtodKx8y9+x
 hpk1Bm3lHFKPFcrP6juhd0gBfL9vqQuWZmXYl++IcSp7yQ556D37GKCVq w==;
X-CSE-ConnectionGUID: s4TxnmiPTICG5uaopKSMjg==
X-CSE-MsgGUID: 2LZuS+8wTbu0urtzw4tt2w==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="25486885"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="25486885"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 21:32:23 -0700
X-CSE-ConnectionGUID: 1/C+pQDcQwmWkZBAOiyrOg==
X-CSE-MsgGUID: 6UBwR009QO2ixFjxEAF0CQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="44058476"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 21:32:22 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 21:32:22 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 21:32:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 21:32:21 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 21:32:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GP5iNIZFwrjcTvbggCPo6/QrV8dILtGkOkvxSvn8mqHXsH+IHdUwzHTOsQHIwnHSPVu5RSn61WoOfBIbwjDGELIMt7j2NaGMt/toaivfaag8ZxexpT5IdeUfOF1wlcrcLeZfDRGiK0iyuNbag2L06uPF405IAmaovtlsKVUuYIs+XANUbgfy95m99tHCdPRSnFiqUaBJLLriB/Bdu+mcpOJ5duxxUsp9KeeMw9XYu7wK6RmcPQCAJJPFa+6j4/csTupKxPG3tHef9iQf1rydffCmsv/EQu8hontmsSApDYUh+U2o7Hb7ejuUbrQIq3Qf+4Tdi7kmiZqottmKQY+A6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gbVdUk3PZej3T/sLMv3q/IG3Odw5bENosrOG69VoHqQ=;
 b=FLV0DcbUbt/C3wqgYyQW+6U7uv+nwni1UMF8RaComgyAFDxvSPUGlH5CFbg2pz3iqRMQzRlxhRpjAtr1Tu5KJBZSMbqVns2ocvtnX5mgZ8zNZWtGzTYCKSyJlTo/Bc6tTrQ1FAA+/u4L8uAF2B/37l/gxkNCMgtY3yPEupWGDwg6PDQLw3kFyJNPh1DbbP4SlbQUWNPtEXvr+fTsA/qwofqxS8b+PZFyZxkfnGFc1K5Oi45DXc1Bdh9fhRnzQpPZpHa2sDkY0puqqCueas+jb2eWf7my/jheYUBXA09v7m6f6+VhqMUxCPLC9u33LpGb6vI6CHOXqy8p8+G0d2fEMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 04:32:19 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%7]) with mapi id 15.20.7633.037; Wed, 12 Jun 2024
 04:32:18 +0000
Date: Tue, 11 Jun 2024 23:32:17 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [RFC] drm/i915/display: Update vtotal math to address 32b build
Message-ID: <bjw7ui5vcqt7dgpuqguhfaykts4bg44bchwuoqppzhahwjz7r2@vf5kdxxmzaqt>
References: <20240611183208.159878-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240611183208.159878-1-mitulkumar.ajitkumar.golani@intel.com>
X-ClientProxiedBy: MW4PR03CA0002.namprd03.prod.outlook.com
 (2603:10b6:303:8f::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: 1e23d57b-846d-4f5e-55ac-08dc8a98a4ef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2j6EDHcRKJ/yJbHyHT08XmLosWR/uGAwJcRxGn27vUhUnTIqQs3wkcyzTvRd?=
 =?us-ascii?Q?eAnh+tIvpAwfYM4MMFnoXB//YtSivfOicV2G5dddezfZQu0PW+0A/BqP5ETm?=
 =?us-ascii?Q?XHjoSTYKB1s8/xny9rRc96LZjz8p6hyGzqkbxDQNImpJu9lZO0mgogoSfEbk?=
 =?us-ascii?Q?A+BZuZ7n9I5LMr2QDVHjuam8tsC7Ggv8llHU7iBeC0J/JuaBvnbd2fH4QdXh?=
 =?us-ascii?Q?R8oKMcPagynjmmc5EAh6UYGoQUhUtYOyYDE6Y7m/rf/JkZLRzNxZdSgXMY6z?=
 =?us-ascii?Q?Uf3eiWE8/zUx2FFJ1UOpawbDTRPts3fTD8KzQJW4XcmiBz45IUX23qCOuiw7?=
 =?us-ascii?Q?h7IHr7fB3Sgrok2U5GaUbqAxr0xT60p3kxHHhrWmvXeM94wBD41+vhkCgs87?=
 =?us-ascii?Q?9JGUKCSA+8XqEwY4BtgAAYHdRyflunAk0jaTBafix5Fe8BjbKL+WR4+/890Y?=
 =?us-ascii?Q?6sMJjikdZOPdznol2L12jzzsdDdalFfjKGqwzgLI+4yAa6Subga2DnxGfLTl?=
 =?us-ascii?Q?vtZ3+WsY5lR0yLbPQ74ftcblPpa6/5m9LWOO1o+nP9CeGS6pDTNZKKXDNNIW?=
 =?us-ascii?Q?MK6soYTT4Ko8KjG4uO+5EpcyLQ6/IhzsBjuxJKOq15EoOBxq6Ndo58M2AaC4?=
 =?us-ascii?Q?BGbkfGgWA5vmg4Nlfy88eWiA6VhE8ikDxOrP9ZEvRD4dfJ3dd65pkUR6DlCq?=
 =?us-ascii?Q?uDHb6/FTT3wLaPG9HP+jyC4PNtamrCbfwq6Z+HGFD0C8vZ5qUmuCt0xfM/cZ?=
 =?us-ascii?Q?fo2bl6EO9FGY26FjDgV0304ECyfkWU2P1Ql/TuNrBpwJeHrFEhnmJlMkZMVr?=
 =?us-ascii?Q?foJ0+j90Q8ll1J7lWCs08TZGPATQB0zLgPCZFln9saGiHeB02IMbOfLUZA/i?=
 =?us-ascii?Q?fGQKug8C/5n8+itaTt+8PSGOozuaR1Vhsigy0PQpBbDhImv73dFWs+t8is38?=
 =?us-ascii?Q?WGW71GcaWxfyKVGFHm2667mbR5tdY3ZMTetiVNJ1MLZcjEuLM4ebktifthq6?=
 =?us-ascii?Q?Oghu44DUoM08LrUzNQ5n+NG+tNvHknN7qDDYIX8qXLwUn4EmCjzrRNDPx0iv?=
 =?us-ascii?Q?vL9ZP/HJ2VHLfaoF36I3LsYk6K1TMHAu9azMg8MtExF68tuC5y5gvcXYmWCU?=
 =?us-ascii?Q?quwm5B8eqT65cwlQiZOPyvHqKsjnT2USH1SwPs72kFSlqsh2uubfLDCtgcdi?=
 =?us-ascii?Q?EjGgMkI2li5FPiHBMHqV1I4QD8Z672sfbe4HH7M0jdrZQJzHZOgPPOxurXtg?=
 =?us-ascii?Q?oAlqiT/i76alncSGt2/hJr9+CYTlrblsDKQ/Ahw0JOWYj/SXhXupEZ1aWhBQ?=
 =?us-ascii?Q?ANiOc/bqKALoGRkbWrt5Qk7k?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+WvqDkSPsBb+jHv5ShizDIRNbK7xMEhCHwrCJouH0QPceBHhQmybLN1A/Xdr?=
 =?us-ascii?Q?lfVubiB/JZAWVjmhOY6QitypOE2w48yiD9gZ87cNBKcC+SCDZqABjik0HKxZ?=
 =?us-ascii?Q?iTscEdfefteoyk/WrGD4YMHlYMyM94WCk6YjzvyU3TWrQQAkniwBXMR3OXeM?=
 =?us-ascii?Q?QNBp0faczyOMfYdRr1t77K38rlFyvq4JK1DRYoqPeVJdoDaufpyBcH060U5F?=
 =?us-ascii?Q?Pd2F5rJM3GQj1jtwXT+MB910+UwVCjDP/z2ns3LmP2Zx4aohcG2h6ZP0OQpt?=
 =?us-ascii?Q?lZiSS2q6KDtJkbqRZCXLFpO6M9kPQL9bTCuB4EI4YHdtbmxyeIJx3CQh3OJU?=
 =?us-ascii?Q?X2nL8fy4d+W7P+G5IQwr8Ei7OQ+gLvYqcXnW8QG27npcLq8XwRsrMOzOKUbJ?=
 =?us-ascii?Q?Nec1cQRK00YsUWVKFIxMFZ6ikP+oE5i3Kftc341JzlbUlnMdDB5A+6/lSLaI?=
 =?us-ascii?Q?1eo/fS6qGAppvNKrfI2lRHnPpycmzcpd33JRnWsKMCEQgDpuUA64nFgdn8PU?=
 =?us-ascii?Q?CqCGVBIRmnvuK++5Lx1PoxZSAjP5u8XvT502rmDlu8I0Ne4dkQcMFz5de8el?=
 =?us-ascii?Q?4Nrxyu4e8ytFrXFGkpIAO/ypjKLIZ6kTsZXDvJNHs27TW20rhswhIejLhlfV?=
 =?us-ascii?Q?iz50dCVR4yH70wKqOPIKEz4l7qZS0QbpiHZBzbqEx97RZtWqGw5Tcy2WmhDa?=
 =?us-ascii?Q?u6sblfTL6ILPqpuwUigvCDoGPKSKii/UU0qO2Mqz1aVzFXFtiMESsnpcK4Ex?=
 =?us-ascii?Q?hilpYm0TUX6R2FKgxvctd4aWbjnJK/T22BS2NVARDdOopAbLRx2yJ/IWBqQT?=
 =?us-ascii?Q?qmqDjBZvOhpAHJDfiS2cjbIrOh8Ey2Dck/DzQryK3X6fvNxjDCLYMU2KWbgX?=
 =?us-ascii?Q?4OKCkyCRBV+1qusfbaGcEvE4NaLVtcIKBM8OTH/cEEtWHlw5ScUiicX6j/4e?=
 =?us-ascii?Q?A87lqKjw8oB6PBwTD590OBWkH/eFbkIqH+bNVDXDVe50rd5zWONz4/SdclNo?=
 =?us-ascii?Q?lubb1BbzxFyY2ZUn5G/mu7gs6tbOQKTcVgYBltE5tNte7uyQLzfsuakLfdOi?=
 =?us-ascii?Q?ys0QFZoDb8C6PYqPegqYB4tENmeEddalXPKdEmAgcaUbvnGMqma1vV/ltVXZ?=
 =?us-ascii?Q?RDcpo0kf+xePNwYz7PDT67mePCJxNEEk7GHI9SfK+jDgO6IqundqD+kGmcll?=
 =?us-ascii?Q?DtmlPhk9NADxOXGGpnGwP5SSWnN0wqIEcPbGHB/qczc2soj8ijAdWgppzQSR?=
 =?us-ascii?Q?vujNHOKOMrjg7CfnR4FIj+y+dReiYiTKjW65ZJ34Q4byBc2BL2qllzgrtSs0?=
 =?us-ascii?Q?vydqi5RuUu8+MV2DPv3xcTaxDBFJb3YYU94dnWkMm9rOIHrnjb+vOMNQxdzS?=
 =?us-ascii?Q?+zBx1OtH1L0eAz4nu9YsrEXqnpwJz8NY2/YBf86EJtMPmFSBgIxb4a2JSSPt?=
 =?us-ascii?Q?Z0QJHVcYxfMRufbgQjM8ZfTVoCp71rwV6TUGJjws0TfMDxcfT7symXLugNmy?=
 =?us-ascii?Q?aiOePfBqeuBDmNwRVLaNnFcg0urxRC0NGEDbWzSDhjk4yM73zjZEnOy2Joh/?=
 =?us-ascii?Q?Tgc68Ac80jaitXyHqCZMqLNgVRTzy60IhBgMadEpvW57h8xIpJ5hXojX+sa0?=
 =?us-ascii?Q?Vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1e23d57b-846d-4f5e-55ac-08dc8a98a4ef
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 04:32:18.8011 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sLymvlc3t92+c0U2QqFNE1bOdY+p77aWiYT4Gsr+zFNMzTljB63TIozxzBXYZp+4OR4Gk3LL9UYYeipr/Z9vpaP4kM1Bvif+/q9xDljy8tg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
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

On Wed, Jun 12, 2024 at 12:02:08AM GMT, Mitul Golani wrote:
>Fix few divisions which may not work on 32b builds.
>
>Use DIV_ROUND_UP, with that expecting deviate params
>from +/- 1 accuracy in value.
>
>Fixes: 1676ecd303ac ("drm/i915: Compute CMRR and calculate vtotal")
>Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_vrr.c | 10 ++++++----
> 1 file changed, 6 insertions(+), 4 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>index 05f67dc9d98d..5112961f6964 100644
>--- a/drivers/gpu/drm/i915/display/intel_vrr.c
>+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>@@ -122,10 +122,11 @@ is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
>
> 	actual_refresh_k =
> 		drm_mode_vrefresh(adjusted_mode) * FIXED_POINT_PRECISION;
>-	pixel_clock_per_line =
>-		adjusted_mode->crtc_clock * 1000 / adjusted_mode->crtc_htotal;
>+	pixel_clock_per_line = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
>+					    adjusted_mode->crtc_htotal);
> 	calculated_refresh_k =
>-		pixel_clock_per_line * FIXED_POINT_PRECISION / adjusted_mode->crtc_vtotal;
>+		DIV_ROUND_UP(pixel_clock_per_line * FIXED_POINT_PRECISION,
>+			     adjusted_mode->crtc_vtotal);
>
> 	if ((actual_refresh_k - calculated_refresh_k) < CMRR_PRECISION_TOLERANCE)
> 		return false;
>@@ -149,7 +150,8 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>
> 	crtc_state->cmrr.cmrr_n =
> 		desired_refresh_rate * adjusted_mode->crtc_htotal * multiplier_n;
>-	vtotal = (adjusted_mode->crtc_clock * 1000 * multiplier_n) / crtc_state->cmrr.cmrr_n;
>+	vtotal = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000 * multiplier_n,
>+			      crtc_state->cmrr.cmrr_n);

to fix the 32b build you need to build with DIV_ROUND_UP_ULL().

Lucas De Marchi

> 	adjusted_pixel_rate = adjusted_mode->crtc_clock * 1000 * multiplier_m;
> 	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
>
>-- 
>2.45.2
>
