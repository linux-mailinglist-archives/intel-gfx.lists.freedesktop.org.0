Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B0CE173A914
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jun 2023 21:41:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4284510E028;
	Thu, 22 Jun 2023 19:41:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03FEE10E028
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 19:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1687462884; x=1718998884;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=0FmeQdB6Wv1gd70fsADxJNHw7QNhpCWvwe11VaK8ots=;
 b=kpBUkrpNnboWU6uguAiHGv7PGjQCiDOiJJaXnVh7PojC7LBYerEtCLt0
 1frny+7BmtZeM9Z+uD7lW0F+QzghucEmbHWl7ibJFa8Y9LjgQAtH/OT1X
 C5sBTL9H0Ci8ST/3mZAHPFJ5q/FgBQJtYPMwIPVpBuqTeOC2RFb5SX6dL
 FDECcyGkeo/kpVhRn18jIl0muBPmimGOh2V7fxfc/DTL3AHRT4iJzn6Ie
 Nu0Qg20CiHqY67kBTg5AnQngVhaqyBVnwQfT2DKzBlCFCW/0pvV5i2fID
 ArWog5sDuCxH7jUercJWd6AYYjz14HMjdWFJETltUQFXtp8XMq41Yq0l/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="446967426"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="446967426"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2023 12:41:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10749"; a="665189235"
X-IronPort-AV: E=Sophos;i="6.01,149,1684825200"; d="scan'208";a="665189235"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 22 Jun 2023 12:41:23 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 12:41:23 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 22 Jun 2023 12:41:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 22 Jun 2023 12:41:22 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 22 Jun 2023 12:41:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QMz69hLLocB2kMDAjqfBFILymoCIPAokDx3JuNE/iCy5RW0PWclFHkRJpNzaw21fYFjjp8FeqX9gIWnUWS4eU/jpHE3+X58JWgOQfghSY2wqIKOM2AYAa2GE0S0QAhaV8fHohDddfU2POF+WR2HzcClhjTyM8Qfbfpc88ECO01sPqR2y3xYj7sLn7hX+P4UIGL9d0AlLLIgw5ctE10+Uhhql64a/4rrgBCQg51NCQA6ZCIs6v8yxgaSSmt/CEvr7HGVysNk9Rw2rXGjDbwEHkBKBMa56PK0OmRWVwOb4OgNZrQQFzpTfq/WCnzyA5/VGrmkXqPEBL2Bw/ly56+owwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dSHBIS6jHengNycvSl+Oe1xqBqihGP8qXyiuMvl+c6c=;
 b=AUsabxce32iAwy1x7Ylgn06AXZp0hGRhyRdu1fjoHJXK7gKY03XEcFbzb+lYF86diE+UM1MQOlyll1h0e26Wa1msGnH5BQj0yJw5M7y5mCGdzXwlmFsbGrEAtOkaHcJWQ+3NfC8pv6va8izOZo8WEJZM6x28Gum9z5flCVrZzyXz8R227NW2Oawwb1b/YpmDOmD1XwLWEXQSTC4xrshgxN16nw+4vO+99U2WWotu85roOwGxHX1R//8Gq/TvcG/5YV0yKzC8/TNLku0aK9qRPtvZZNLG1jwRMd7vWr20frKxcpAg4S2AZSnE/X+/NwW2V07en7DSf5FYQxUnoHsJag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by IA1PR11MB6217.namprd11.prod.outlook.com (2603:10b6:208:3eb::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 22 Jun
 2023 19:41:19 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4%7]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 19:41:19 +0000
Date: Thu, 22 Jun 2023 12:41:16 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <2ptiei3lil5peekrmbw7gkp4diwr4nw4g36yhp675yuekrdpd4@at2yysa6dgrb>
References: <20230613215245.1551145-1-radhakrishna.sripada@intel.com>
 <20230613215245.1551145-4-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20230613215245.1551145-4-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: MW4PR04CA0348.namprd04.prod.outlook.com
 (2603:10b6:303:8a::23) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|IA1PR11MB6217:EE_
X-MS-Office365-Filtering-Correlation-Id: ec28f1b6-470b-4850-f2e3-08db7358a680
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dwr0Au28Tel8wfRLXLAtQ02d1SqG8rTxge6HLGDjsVHNzesm0l7C+CUzXwozm2h357yiJIQvX85powtesgyEWARo7R2hiw3ulPilG87VFd3c/FgLOyichNJYMIjF2+8JcW7FC+I8EZ6HFVdzEbWRH/unFU2GLgQLV3IquMybxpvZpXYZnNXrcfza0BSs32TG/LP3X2V9mgg+tZNCCSvb8exEuhhVrPhmnRZBikoG5IcJPxR402pBNk7jWMQDOC2dUco8Z9I4uuNwDShB2MEJxQOeqo/I1ApGJFqjIvy8Qycyq8Te4u614ZUvELyCTHGNP/Al+hAcUqSsuzwcSNLBnVQD6Je5VXiEdi2qFit0pjfErvw+LZJuM8+i1KCfmrBcX01bbF44fQy/j5uljhk23N5i07+8t+Vcis53fTzzoqaNnNQHGarTgaqmw6to0XvWSV7foZ87lrdB8dyhdOhc1KYN5RKQhYOhcxI3/Ri0Pb/TyKYlyY6XJkEJLrcOOAo/Mb2NZhtt72ZpoFgqQpRtA4Wyys1ZoNs2QgNxEdbWOF/GU27GLbzLWQbQQJxSJoGr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(366004)(376002)(396003)(39860400002)(346002)(136003)(451199021)(66946007)(66556008)(4326008)(316002)(6636002)(66476007)(8936002)(6506007)(6512007)(8676002)(9686003)(41300700001)(186003)(26005)(6666004)(6486002)(33716001)(2906002)(5660300002)(6862004)(478600001)(82960400001)(38100700002)(83380400001)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lCPdhnNoyhlWpAH5ev60urlHxF2WUPVHpfBa4e7hNL/Hw9BTtqs6Kp1bNV6w?=
 =?us-ascii?Q?fgY0wh76bj1AYTA55CQ3tXzhKE25wb3uzjCQNid7uwcW1VpAJ9hKKeYEVNM1?=
 =?us-ascii?Q?phO8Pkbyx1iDkhs5raEsyLcwByuIhXs0nJ1Xkv36jwVcXECK84hV9ElDXgtJ?=
 =?us-ascii?Q?gEmyoqxamgCPsf5brLXlYTf/AXLVqIknn0lsWnAQn76vkHKjzivUWrBjiC0Y?=
 =?us-ascii?Q?zR20IabIQo7cpCm+kKCj3kvpuoe6sXxwkvvdiyfgP62a+xMkmQgwFoLtX8Xz?=
 =?us-ascii?Q?4kSrL99MkX7nXiW7LY+utI/pWiJI9VhlvSJX9bWY16zgWzk0sNmGsbqLlZ5s?=
 =?us-ascii?Q?3BQ4WyTY4HqbFwhNwGy8dINnKvIy6T7EWW0RzUvY9LSif8RhlO8DT13Hcx4b?=
 =?us-ascii?Q?R8KgMXSpwW5SYiFlM7be3VLZsEulh3Ayzump8F44wzE99SGELteqvcO+ViGu?=
 =?us-ascii?Q?w0TEUnb3nEsQWrUcNRpuyGOyEuXElH/6RWdzYIbL3b7BNseN6hi+P6xZBKUI?=
 =?us-ascii?Q?wjiNpfTPATY9EE/zdsWC2UbWJ+Mnd91gxGyLEZtT6+V5zUBI9ohtWMAYzdtq?=
 =?us-ascii?Q?eLNEKTdydq3+cRkQ/5sHJuTEoe2q2A5ermLfK4hyZay/3/kd8KUmgTdcfnIn?=
 =?us-ascii?Q?pmNZEXccTRvye+XyVFVfpdNYDjxmEd2f83NHpcKZIAXuki++EXSAn3WDA89X?=
 =?us-ascii?Q?J473Shv6bbcC/UTtQGJudgn8nRMqjlEmAjCX8K4U4z4IIyS1ythBC68nW9X8?=
 =?us-ascii?Q?s7L8V1G9JLU2v9MgUuIVEvGyeEwYahW83QGJjpmiQITU6hhH47ZaATBQ8bh8?=
 =?us-ascii?Q?JhMV9JfyxcMN+iO3aOoQBHJS6e0MKv3ylun4RVSz6xgIUkvdyg3SnCh29PpR?=
 =?us-ascii?Q?IaZ+0yqrX5dFT8NiCQ1970ZoRY/i0cGelXRuWu6uON9zCu4xrL/PvMP6dYh4?=
 =?us-ascii?Q?v6Bchk4xt9IwYWCwxQ/Ded+pHzRZynWlRnMau/nTOPv5j+cw5nn1NsjiCDG/?=
 =?us-ascii?Q?6+5uUSrhHHUx8E1y2w6pyQTUWEb0aEsYLNuGlHkNs7wz8YOd1UqK2dwyz2Pz?=
 =?us-ascii?Q?Sl7Vpo+cPslU92kItckM+ur8tsPH6BjDqDFmgmwfGEdMya7AUjn7ddYVa9pq?=
 =?us-ascii?Q?5pOB8rFQpS1lrdMyJKS2ypwznN2Q1WMt3eaQbmBAJB3J9YssYMUdMjNcg85U?=
 =?us-ascii?Q?zbWZaUU3WfwhdaF5NXWX2eB6PHwOqf9C3RbdacfSv8Z0nHcYVM/oBGmtVVtS?=
 =?us-ascii?Q?eQ/G/AKsZ6b0N7obYZiyMaoXYziicdXS4tEHtYjtIBxegOCwCBGk3X0IQ7Ss?=
 =?us-ascii?Q?z+VBTE0g7ev5EyShtMuWYrpENiUQVWCMyF91xTogjzA3J856ZuOa9zFDcXfw?=
 =?us-ascii?Q?RV8BtuIKRDdvsM6p7k7ohaQ0zUBUC3VXw649DFxuFbUv7G3EFEqk1UhWu4tB?=
 =?us-ascii?Q?jxzPwmCEskvtw2jecUvwTkxTEVV7l/Nr5AUmZ903jaG1nUvF2qv+ZCbwLp0P?=
 =?us-ascii?Q?BLgPK7swg5IdXfAiyU3cRhPfL2RXHMUhGVB88f3JySyp56pZluBgdaxnbUHu?=
 =?us-ascii?Q?qOR/Nxkf2+D42le4VF0Ohi9JHeZ403SaOhsEqL/bghde4p5ciImM/ztg1fI3?=
 =?us-ascii?Q?tw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ec28f1b6-470b-4850-f2e3-08db7358a680
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2023 19:41:19.2761 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0c/ZVpH4APtqYuc+iZRfUnzLvZv1CiJPMBDVCopwW/uOauK/nXPE2GBXPNr4nwEMOKdyfQaoZTGiRxnxcgYhCgd8uTdu6D1Qkqoct6GcFAg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6217
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915: Make
 intel_crtc_get_vblank_counter use no trace hw reads
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

On Tue, Jun 13, 2023 at 02:52:44PM -0700, Radhakrishna Sripada wrote:
>intel_crtc_get_vblank_counter is used in many places in the display
>tracing infrastructure. For a clean execution of the tracing assignment,
>ensure that any necessary HW reads would not further trigger another trace,
>to prevent nesting of trace events.


it's not clear what "nesting" means in this patch series. For me
"nesting" would be if in the middle of a trace event it triggered
another trace event. Given our current infra, I don't see how that
would be possible.

Do you mean that certain register accesses are being reported twice
since they are being recorded in 2 different layers like intel_de and
intel_uncore? If so, can you add in the commit message what is the call
chain you're seeing? The indirections in intel_de_read_fw() are not so
easy to follow, but from a quick look I don't see that happening here.

intel_de_read_fw()
   intel_uncore_read_fw()
     __raw_uncore_read32() <-- no trace here
   trace_i915_reg_rw()

What makes intel_de_read_fw() call special in this intel_vblank.c that
is not the case in all the hundred other places this function is called?

The trace_i915_reg_rw() in intel_de_read_fw() was added exactly because
__raw_uncore_read32() doesn't trace.

In xe, we should probably override the intel_de_read_fw() with a
xe-specific function that just leaves the trace out, delegated to
xe_mmio().


Btw, see the comment on top of intel_uncore_read_fw() that nobody reads
and calls to those "raw" accessors are added, making the i915_reg_rw
trace almost useless.

	$ git grep intel_uncore_read_fw | wc -l
	65

The _fw() suffix was meant as: you first take the forcewake, then
you access a bunch of registers, then release the forcewake. The
non-trace is a bad side effect with no clue on the name of the function,
just a comment on top of it.

Lucas De Marchi


>
>Suggested-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_vblank.c | 7 ++++---
> 1 file changed, 4 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
>index f5659ebd08eb..55f3389fa220 100644
>--- a/drivers/gpu/drm/i915/display/intel_vblank.c
>+++ b/drivers/gpu/drm/i915/display/intel_vblank.c
>@@ -103,7 +103,7 @@ u32 i915_get_vblank_counter(struct drm_crtc *crtc)
> 	 * we get a low value that's stable across two reads of the high
> 	 * register.
> 	 */
>-	frame = intel_de_read64_2x32(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
>+	frame = intel_de_read64_2x32_notrace(dev_priv, PIPEFRAMEPIXEL(pipe), PIPEFRAME(pipe));
>
> 	pixel = frame & PIPE_PIXEL_MASK;
> 	frame = (frame >> PIPE_FRAME_LOW_SHIFT) & 0xffffff;
>@@ -125,7 +125,7 @@ u32 g4x_get_vblank_counter(struct drm_crtc *crtc)
> 	if (!vblank->max_vblank_count)
> 		return 0;
>
>-	return intel_de_read(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
>+	return intel_de_read_notrace(dev_priv, PIPE_FRMCOUNT_G4X(pipe));
> }
>
> static u32 intel_crtc_scanlines_since_frame_timestamp(struct intel_crtc *crtc)
>@@ -324,7 +324,8 @@ static bool i915_get_crtc_scanoutpos(struct drm_crtc *_crtc,
> 		 * We can split this into vertical and horizontal
> 		 * scanout position.
> 		 */
>-		position = (intel_de_read_fw(dev_priv, PIPEFRAMEPIXEL(pipe)) & PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
>+		position = (intel_de_read_fw_notrace(dev_priv, PIPEFRAMEPIXEL(pipe)) &
>+			    PIPE_PIXEL_MASK) >> PIPE_PIXEL_SHIFT;
>
> 		/* convert to pixel counts */
> 		vbl_start *= htotal;
>-- 
>2.34.1
>
