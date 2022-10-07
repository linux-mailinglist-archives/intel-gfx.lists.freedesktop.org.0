Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B53215F7F75
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Oct 2022 23:08:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5323210E231;
	Fri,  7 Oct 2022 21:08:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DCBE10E231
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Oct 2022 21:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665176893; x=1696712893;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=6eAsUo3F8z7S5sjUKo0c8mLs40CFt4LeH/uQeOgZbHM=;
 b=gO/QICzF/hgu1A8113MNDmhvt2cJbhnINwoWvPSaV6/KH0tWPPPXPZTz
 WuunDEA3sTZ0kWejIIH94hGGklSf/q84M6k6NV4+B1UI8Z1I3WrpGBnNe
 FWBF3ZuM4qZOHObEC+qfGG4Sf9utvcEQDDrY+FqezQW2JdXJocZsXGnVo
 UtXSjvrx770TflnbPTT19ZmYTvbZF7zBALFYEcxOWca4hvbIi8UWjevM8
 15RsWCtXM4CHa0Y3YibY+r95snOM8AQ4YQDBzmgHXsfftLATcVNC/wxZx
 HCoJXTredLPvxOem9Ow7npYFzX980K+OTJg526czpL6Ujfv9YjRZcHl57 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="302560065"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="302560065"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2022 14:08:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10493"; a="954207325"
X-IronPort-AV: E=Sophos;i="5.95,167,1661842800"; d="scan'208";a="954207325"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga005.fm.intel.com with ESMTP; 07 Oct 2022 14:08:12 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 14:08:12 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 7 Oct 2022 14:08:11 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 7 Oct 2022 14:08:11 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 7 Oct 2022 14:08:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d0nEXFvqQpnlZved66hlsIrGoW44BBT3EUtWsUL0LxDnG7JAHAd4cIGwuFpFli6dnFk1Mq771iMX/uTB6QkOXX0Kbp94qIeWhoVUioc2t95u9oKQ/gAq0vTSCzxIq+R7lb8svo9mxg1Kp5/GhoP1gDta2qvjTQJlOclhPlCgV8ju1qFmoJsgR9dyYdXLwc/51TJZDfbzOJYIWJomSsONf59P+mIarVoHhcslccCZl4cszTMbL4+ui865tmtIczHWbZE4ygH1n8E63dMLbVrrcyT8RqOOyqcJoKjV67YZnLHx3ne80GgMj0U+h4petvi+ieWVeOAWUj7RhoAZ3QfMMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nRqU1B0xReGIjFbbqkpjVlNCc8520w7wcGNd/MkAzm8=;
 b=kKjOxTFUBakFwIolMwpxvkd8ZKh0wTDkSsxIgeOG/YN5SkyGXOytV7v5P13xVWHnBm8qOmtFSQnrLNRwcJvzVAw1igHpaedVXqBG9iIX4PiKyKoqYYXH3s6Tr7p0Gb+1EVlErbZI+ig4NcCDIuv0lB4faRIvyaJK9Tr8CRpj0DiHd1ff3+LCTkqZ7nmXr9u4m+RZYKUMeaF/XiwFoE2VIcawh/Z4tdHMiMmyzIj5J8tsXjsfm6JxWKUya/1kn2wtTcF19OV5fU02np2X5YFLh4jb98SU4HS2oynv3QjCHrU49FJ0G81zrgu82UL5MqwB6rsBG5VM4gy0A1JXQsk1Nw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MN2PR11MB4727.namprd11.prod.outlook.com (2603:10b6:208:26f::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.24; Fri, 7 Oct
 2022 21:08:08 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7246:dc8c:c81f:5a10%4]) with mapi id 15.20.5676.031; Fri, 7 Oct 2022
 21:08:08 +0000
Date: Fri, 7 Oct 2022 14:08:06 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <20221007210806.zcn6snaktdqeakfg@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20221007194203.154772-1-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20221007194203.154772-1-anusha.srivatsa@intel.com>
X-ClientProxiedBy: MW2PR2101CA0029.namprd21.prod.outlook.com
 (2603:10b6:302:1::42) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MN2PR11MB4727:EE_
X-MS-Office365-Filtering-Correlation-Id: 905c3f24-b564-490b-cade-08daa8a808b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: eIXK/5l+T+xfMzmkjCqwKnC80i5WzM4gFn0nZKL3NsvlS1IlSAko3uHZP85xNe5uZu3xBWN4oGXn4wUlDI9QsARk09YLtkNdTYLCvkYzHcYs892+BIIM+oImUUvdTiKVA5R31ajbRKE7GwRJ0LmT0ds9GMMd3sVax5mSo6bLuxb0lLt8/CsHP4YWBsq6xbYDYViMS3+/Cgvq75gv2d6M5qASqeyLgQkH9OxtXS08Z2NtRzguB1rzMZf7hW1It9ipMDWWNOzI3NkLOMjM2xBY2FE9ItDZhNxXlZFvJbHtsy1Y1TP9RfnFNXWnC/BVNXw3HluqmQIUYxCnlArWbU3rWKVDv4+9fLRtJRrqUMr96TB2PkqXz37L5bo9Jj6N/9ZL8HnOZ5my6JeES+D4nStixlY9mNanLkx9jz7ixyGd/Mb5hS3qaspnoEffCj63Mr/3QWnanRzmS4B3H8kn04RCBGF8ctUAzcbqVnWIrYvD+fBJpzyN5i9Uc87xgp9dQK/WmVbeGtSld4LGM7tBKIaLo2eDHf3X6Fuk6lvBT4ukc3LLHntZ1QX917U/+rZsIx5ewh6TwPVdxi6gqizXAPI6spTKUxcuhHhowMBixOlkaCVrJgzYfKL5Blr+sbzRVZjvNUKuxZG9owbFD8TamhtpG5yCTK68vGeALiKUDzqltXVAJ12i+lE6wNFMnWs7jmyPLEgG+OG6aO2BKzjafSkSpg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(396003)(366004)(346002)(136003)(451199015)(478600001)(83380400001)(6636002)(6486002)(186003)(9686003)(6506007)(41300700001)(4326008)(107886003)(66476007)(8936002)(66556008)(66946007)(6862004)(5660300002)(6512007)(26005)(8676002)(36756003)(1076003)(2906002)(86362001)(82960400001)(316002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2Bx7tQgc9r6Pi2/y++UHu2YnsTRnYtb58X5LtgtZqXisA8BhMrMRwp99F1em?=
 =?us-ascii?Q?I7EoFDDZfF+Q2e193iSj8hzfkvQqevbKh7QeqtAXHUYWvSh+VcOHF3VvF8eT?=
 =?us-ascii?Q?lMcAPnAf3yi4pyZ3Ji+XB+lWgB8/aDbxIhzeVpuIH3N4fZBCI6yLNeXe3ePP?=
 =?us-ascii?Q?hJBzCDFc27qrBsZmw7wpqG17Sr8BHqvyJYD5lmuE/t3Sqvub1rTnfzp/Q9/i?=
 =?us-ascii?Q?bC7PF3aCCzleEt/mO6DZPnHUSAWTw8kNuNSxJqca5M60HXu+gsAd5jfIKQxv?=
 =?us-ascii?Q?Yc6CksOan1vbb9ImJg9G4htAMtK4vSFJv2tlPtASO+y3UiCImMgH2qraOoYL?=
 =?us-ascii?Q?YU4Swv84iGIEg3bGECMFZLQfGKro6Y0ZTYwXG5Wp/AR3AOVSg6GiVdNzucOJ?=
 =?us-ascii?Q?Squ35JXdxfIyW4RaKQ/Ds9Te6mp3r+D945xtTHvlX7avtKP0N0ksP7A51cT/?=
 =?us-ascii?Q?Ez79fVa4khDHjJBS2qJQdZT1FjPcKxWexWbZnw/1TU6geyHhlB/8OijC6r4p?=
 =?us-ascii?Q?YUFzr3YjOpTxP2V5NwkHB2hf2AswN6wXeV/Eh7N2R3gKMQJFULvo3SgjCzXT?=
 =?us-ascii?Q?tpdE1EYLAAETm223gZla4/RyTHhdMfHLhrbM/gde9dXXMwvY64N8JHuuLlb7?=
 =?us-ascii?Q?8ZISGgNZ9iI8QdOAyERF4OnUUDoHeeplh+hGqjc0RpkyOH9+7iXaSUdgZ4k2?=
 =?us-ascii?Q?RCg2wQWT6cxbZDci6U8A938QkZJfQWtboGLUPUIE15D6OHhSYNhhQf9iQiIl?=
 =?us-ascii?Q?Y/x0ZoYiGd3ZXbKPTNlfS/nT8Nk9VRMqtrwKYeTvKV//T+T2sRZzW7oeBVD+?=
 =?us-ascii?Q?767XWS5YX7flcEyKBs+qdiULCPakhwjUWqbxKvVe0PnV1XcoS/ueJhp+79yQ?=
 =?us-ascii?Q?YcgS5cLvkfmtx5WThGQ/JBXEvcjrlBU9WTtJwxtoZw5B5zS1Ap6lgiglXMGE?=
 =?us-ascii?Q?kgcrbMhoCSehvY6o94AxAiV5mJTEfVAL4FwdpUDYWKAcZitIQSJL48SlWGRf?=
 =?us-ascii?Q?V0KH3zyVcQj/sZrHwrzs5//iBUnju9WSGPQNwCvGJP3ybwyJqLiSBXPrQ41t?=
 =?us-ascii?Q?rORJvhwVoHBIdshrFApD3t0E9k96lgADM024ifGwDsC1tLLLcMOny0p5IH6W?=
 =?us-ascii?Q?7TEhoTehKAIVchbeKZbwoeYMTe9pLWrBP5pQAM+QM0wt2P9i+1ovXexGX/Xc?=
 =?us-ascii?Q?WkLPHLOQ8tc8zeHs2F6AkfXzT2urfuY+d2OJnjKZuuPNCo4pdNKUvnaLZK8m?=
 =?us-ascii?Q?7TqobJv1B714Uak7d4RotBvlrczf6yxjWVGw+8DI7t2FNldBUlVcT90d31EK?=
 =?us-ascii?Q?huV53qGfpshYgjcPyva/UV/10Ca0E6MT48yCOcoFiAoySUK8aXRdBE+bBlSx?=
 =?us-ascii?Q?q2I8lrJBDU3hhJABRYvFga0ym1qoZ/8+avbBi0D73Pun+Oml09iLJzFvX6RA?=
 =?us-ascii?Q?CuSSopfu5Hsb0hiXlcQa1SyyFcHa5mT61DOc/HaMkd7QEBiNCs1UK4crm/WZ?=
 =?us-ascii?Q?yRw9OyhppHVtTwAN4Y3AyHkCB1fddZ4Abt5+XfYi1Mx9Z9B8hSwScXGNk90y?=
 =?us-ascii?Q?/rXlE0V2V4hyV/ITebgPmTv5hZ1I4RuCEtHes1sZNKPs1s2p7W0eIjuD2p4q?=
 =?us-ascii?Q?WA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 905c3f24-b564-490b-cade-08daa8a808b3
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2022 21:08:08.2038 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +xLT6tARj7DkqHQO+omkESP0oNrhbxof/XqXhR34w4ko8Mzvpt0gkBTQ3KlHUlOH25lnd01yhuhJur1+YT8WacXYF/43BtF3X0/xb98cswc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4727
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add DC5 counter and DMC
 debugfs entries for MTL
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

On Fri, Oct 07, 2022 at 12:42:03PM -0700, Anusha Srivatsa wrote:
>MTL and dgfx use the same DC5 counter.
>
>While at it, this patch also adds the corresponding
>debugfs entries. Some cleanup wrt dc3co register
>which makes the code more readable.
>
>Driver loads all firmware that it finds in the firmware
>binary but platform doesn't *need* all of them. Cleaning the
>previous debugs entries to reflect which firmware is needed
>and if the needed firmware is loaded or not.
>
>MTL needs both Pipe A and Pipe B DMC to be loaded
>along with Main DMC.
>
>BSpec: 49788
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

thanks
Lucas De Marchi

>---
> drivers/gpu/drm/i915/display/intel_dmc.c | 22 ++++++++++------------
> 1 file changed, 10 insertions(+), 12 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
>index e52ecc0738a6..081a4d0083b1 100644
>--- a/drivers/gpu/drm/i915/display/intel_dmc.c
>+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
>@@ -1065,12 +1065,13 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> 	seq_printf(m, "fw loaded: %s\n",
> 		   str_yes_no(intel_dmc_has_payload(i915)));
> 	seq_printf(m, "path: %s\n", dmc->fw_path);
>-	seq_printf(m, "Pipe A fw support: %s\n",
>+	seq_printf(m, "Pipe A fw needed: %s\n",
> 		   str_yes_no(GRAPHICS_VER(i915) >= 12));
> 	seq_printf(m, "Pipe A fw loaded: %s\n",
> 		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEA].payload));
>-	seq_printf(m, "Pipe B fw support: %s\n",
>-		   str_yes_no(IS_ALDERLAKE_P(i915)));
>+	seq_printf(m, "Pipe B fw needed: %s\n",
>+		   str_yes_no(IS_ALDERLAKE_P(i915) ||
>+			      DISPLAY_VER(i915) >= 14));
> 	seq_printf(m, "Pipe B fw loaded: %s\n",
> 		   str_yes_no(dmc->dmc_info[DMC_FW_PIPEB].payload));
>
>@@ -1081,22 +1082,19 @@ static int intel_dmc_debugfs_status_show(struct seq_file *m, void *unused)
> 		   DMC_VERSION_MINOR(dmc->version));
>
> 	if (DISPLAY_VER(i915) >= 12) {
>-		if (IS_DGFX(i915)) {
>+		i915_reg_t dc3co_reg;
>+
>+		if (IS_DGFX(i915) || DISPLAY_VER(i915) >= 14) {
>+			dc3co_reg = DG1_DMC_DEBUG3;
> 			dc5_reg = DG1_DMC_DEBUG_DC5_COUNT;
> 		} else {
>+			dc3co_reg = TGL_DMC_DEBUG3;
> 			dc5_reg = TGL_DMC_DEBUG_DC5_COUNT;
> 			dc6_reg = TGL_DMC_DEBUG_DC6_COUNT;
> 		}
>
>-		/*
>-		 * NOTE: DMC_DEBUG3 is a general purpose reg.
>-		 * According to B.Specs:49196 DMC f/w reuses DC5/6 counter
>-		 * reg for DC3CO debugging and validation,
>-		 * but TGL DMC f/w is using DMC_DEBUG3 reg for DC3CO counter.
>-		 */
> 		seq_printf(m, "DC3CO count: %d\n",
>-			   intel_de_read(i915, IS_DGFX(i915) ?
>-					 DG1_DMC_DEBUG3 : TGL_DMC_DEBUG3));
>+			   intel_de_read(i915, dc3co_reg));
> 	} else {
> 		dc5_reg = IS_BROXTON(i915) ? BXT_DMC_DC3_DC5_COUNT :
> 			SKL_DMC_DC3_DC5_COUNT;
>-- 
>2.25.1
>
