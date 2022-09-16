Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3155BB02A
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 17:26:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 21D4110ED6E;
	Fri, 16 Sep 2022 15:26:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7841210ED6E
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 15:26:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663342004; x=1694878004;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZPSUKLCJoQ4HaX9NrBc2Gmc9PIqLv432FINl8++4tKM=;
 b=ileGlDIfmDP53tI/A7JfKSFMZg8SKHFnnRvConIDc/Wl++TYEhPQHNhV
 0ulIxTVnzDz80HCkYISBjU4zTWMH6V0A2r5qFPzKut1rLw2R444lZ25XJ
 b8Owe6/vlkpIFrwsj0o42b0f7qi6ggYOZCG1S2ZyWyjM98WvEJvlMzLNo
 J+jGHhsTIYEmffYJeeBKxFyimvTUfDBhYSlwwBWjCtjeQj1CLJDbdp5cQ
 UApvDK9/ivzCgSDGgUO5mw2ynw39IlIr3wah7ufzxD6SdmBDSr3qlp36G
 8RyKZjDQLtGZ9IE5vhFlpBNO8oPddeMLLzxeVrci0P4fHuRG9sTOe1O9u w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="286053696"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="286053696"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 08:26:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="648296372"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 16 Sep 2022 08:26:43 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 08:26:43 -0700
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 16 Sep 2022 08:26:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 16 Sep 2022 08:26:42 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 16 Sep 2022 08:26:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cB4GT2BlbcWwR8Lud13Wp8rCF/tPOk4L4uVx3emMoX6BX5jM5m1UXdukBbaAGDpm7dUJpwBigG1ZRDK7Gk2XmCiDv+DixYKeGTmU/22PlfJsPBZV2vmiChgQpyc5AgP2hu+Iyag33GkQYNPtaMrHon3nymOjfU9DKoJ+I5mxhXbPF0kqSFuHzAuQL6rXdZoDTDrgqRqXrp2sLkJM/zVLtxdTlMaNEnP51chE90MS10HTzR+0Zd5djPyGT1XfyHSQPRJRhY92EC/yoIopjeLXzTw+rSjGWL0Z7wO7FLdPU2VWEsbp6MJdRJYoBRa76oydjcb33xvhmsLO8jPj/QPFXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q4I7nE5DLgzO5ocW82k1phTPcNszgQpyNMQ1a2+gLPE=;
 b=adO3FnN+mAV8pC9RLdu0IpAbDV6taAGHWzl80AGuil1fBpyUdryCsqOFALa86kmqc3lOm/y3nJOaZQoby3oyxcP75rQ8SXK11krVsz0l+Se2hoBrZkRaokjV4os9d9IL35lnHINixy3DD3LUbiIjy7Px/KEsTknntwW6EMFddm876fpknHBNDKzpRgd+Rvb/9ad5ZiB+c5LQPawPcmIYbWTQ4tasddWKW0Ks6lVF7rZKVLeWiv7jCFFS2eELJIRJlKOMf3mJI8udbtBqgE8ClKdGriNla7SryqisuWah2Xr7oPcYDCkDwkMCCQkuESmNfza2xE1fRtgTqXsPygN7rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5612.22; Fri, 16 Sep
 2022 15:26:40 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::b80a:cf49:9118:24e7%6]) with mapi id 15.20.5612.022; Fri, 16 Sep 2022
 15:26:40 +0000
Date: Fri, 16 Sep 2022 08:26:38 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220916152638.u3rnatqrq52x5d32@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <20220916082642.3451961-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20220916082642.3451961-1-jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR16CA0017.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::30) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: 1307b092-e228-4bc9-c05d-08da97f7da39
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CF+o9aoC9rQoMQKHWfgU3pMkVSdXaYih2GQVcwuzTPZnsiOv4Q/Iq5ZQizMbhs7uby70NEjZl1tGUyS6xgVzJcNhxM4eiTZd8HpaXPun8ifD04rawE8KpiDtHDRgGrUIhwkCtH0bARlIlDjtbFcg65ZP0AavrKGTWqIUaWhFFGCe4WhXGMwQiSiaBMhsYCdPEtngVyvys4bP4v4Myuw4ve5+D2TOu4cKGNYJMpSctoIuWJb0IqbJB+vt3u5vp0cx3halus5JFNcG+jpVFeP6LkOenX2mtuEOCL72UvZMn9RV1HnNCAizqWf+lLCDoNOybtW3ILlucnGew67JuAw/G9eB6wsOYC0RHcVUMGgq0v+iphrYsXEXeKPFvIUIHYzkx/SeA4JKAd97A7hL/H8lGXT4P8jJSCxEHXdOJpAgIs7Bs5GihLl+ZpgUzMEGghyN4a0oOPjyefsDo9oUoHVtgEkd9NaFRpBtsAEAT1Iuz2e/OrzzL+K3PlNCjKQ+qutckkoj7WkGM+2CF9af6CIfCO0/Vn6zIlKERzlSX2XDGTUtBLl2UNCYFqCeGex+aL3oR6BBeExOLKSeHky7c2dyJ/JbBQ2C92B1/tb0k5ciZyQXc5tRUJAjkS53+wa4poSF0OpnWuhs/trmxcwz6mfMOCdNcaGXepO89R/wk1UZS0RDaowTKIvD7FJxFgzUrTgpNqUtFO59Yq9BlmEjUe61Z4A2qqnzhdG5jN4MYjHfJaU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(366004)(39860400002)(396003)(376002)(136003)(451199015)(6506007)(6636002)(6862004)(4326008)(66946007)(8676002)(26005)(83380400001)(66556008)(186003)(66476007)(316002)(2906002)(6486002)(478600001)(41300700001)(5660300002)(36756003)(966005)(86362001)(1076003)(8936002)(38100700002)(6512007)(9686003)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gCT1Rsq9ZR1vX0t9yQHHXMC/FNBlk5v3r2BVnV0seKy5muOrxpqTP6sLaFO4?=
 =?us-ascii?Q?Gc2W2H0HgdBqHwRLRIuZDCYnsm1zFirm28X8sAMQremMP0s4gxgxH1UrSkQf?=
 =?us-ascii?Q?ZRm0mnA4JGtegS1X5FX3zJFjsdLdkMHBm6KFuqdeYZVQ38b4i9c7FESWTXYd?=
 =?us-ascii?Q?WOffZSblrqIwhrY7fVhlA8AR3/JlLBk6VI4sOqfPL37+5rZOWDq+h2iuKwAI?=
 =?us-ascii?Q?3iLlLjAdRqnu9WtbO21fQYdHxIFHBV2h85wL97CR2BJqcECD5Vjcb4ONbKsZ?=
 =?us-ascii?Q?m3GXFr0YrbsHBDmsaC+yzXGV5nePbdw73RA9XEJQfS7Go/Uk5PI1lDRl9Ack?=
 =?us-ascii?Q?U73iY16EUJ+wtvoSogP+E1diL3oMMl2FOzZ487Ml//hpZS2f4n7otm7llpcr?=
 =?us-ascii?Q?5bB8pOZsNYaacTnjmjcj2pP9NmvAYRigdySlvnBMwHu+VM49bWXaDQPC7eKC?=
 =?us-ascii?Q?cjNKoSDfYut4sB75OLNj1mGzIhVtxWQ8xPsqrlfLJ6Nl6M1bW8XmZVshCT+z?=
 =?us-ascii?Q?IzRtCEshTPKVcD3xQiU7YA5qeKqXs6RS6Vwadvci77PMiW11N2/Q2OhgSJAl?=
 =?us-ascii?Q?o2OxUc2GMJr7SP6EM/HQg0h1VhBnBZULx1AXSdSfKl9CgZsopCJDxWKPP7fJ?=
 =?us-ascii?Q?K8dkv+jQkJwsc80vjX994mjmO1WY4/zASL0W5zBJqosSfVuKDj5MAbfymXPa?=
 =?us-ascii?Q?KVuADX7TZOv18mOe3eieFW5C7vun7r0QiXzqb3K6AW/WjSaZFEw4ENyW5+rM?=
 =?us-ascii?Q?N3kPOdULcuAlMWoAQSbM3BtBhu2K4YtOcKY8vGau6wIkRgSD/LjZjyRCJ7mL?=
 =?us-ascii?Q?bdVu8t2Te6BVs6fjFaWgYpRhYcEt+AcUiu6se4kxNrlmKYXK+0Du95YaCVP0?=
 =?us-ascii?Q?C01dW5XdMXZZ/m30D60EhEsT9JcpxUIBqhZFPx/HCXVHcvaGzYmXinPz/HJR?=
 =?us-ascii?Q?i5FbYCvknjxvPc1QUB3kqc5zQinWZNUEThlQnFOqRJgHRCu9gjfM7w+KU5Lu?=
 =?us-ascii?Q?m0IOh9mt93u7Pn5MVoqMLdH24ELH2NrV5Uygcw/1Bn9RVa+A6W+gIbNfLDcH?=
 =?us-ascii?Q?DRtsp/0633zu5OYyc3KhZxFqNZEpIa7LxxEWYGd5uSUWH01M7i8W39uaCrYt?=
 =?us-ascii?Q?tKp3/aysUUloZpHjnUFTvUpUv+VqVXabm5O7ObpdIKUCFXZvDDeNfgSIWxWS?=
 =?us-ascii?Q?v1BTaVXLESCHi/LSGPP4j6B4ime00F9Rfe/z9bqvpZU94dNstB7R7lVO+HQR?=
 =?us-ascii?Q?zTj6eS9ZL9G4yBSoZkkV8FU5jHv7IL1/5dEQNqxRWyEh9x54utH4M29ZfmRh?=
 =?us-ascii?Q?L0aGOIyHE5RsjcRBlncPI6+TpGYZvcZpsAfj0svjbwJbIMjCki/ddC2qYQOu?=
 =?us-ascii?Q?S3Ui3hhD6ov/JcS0zAsc2LnHkKUvl5n8e8QMK8CGmMFwnSlbtuwOVKeMvtgk?=
 =?us-ascii?Q?xoRGPTbmahkXgDn1iPL5rwJykNfjCCsQE1/X1xz53wZnmT3j+S9aX5Sf7MAa?=
 =?us-ascii?Q?IPmPsZpg6CcTn2qj4jsV9tfqRUuMfN1GcNmc4YJXzqKPXRUQw7qy4GsR3u1n?=
 =?us-ascii?Q?mGsWNXP6EOfVFWCIbWlkBGKb9f35Vid8rLLiB57YL+/rhuTAOFUWE5tXpmkb?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1307b092-e228-4bc9-c05d-08da97f7da39
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2022 15:26:40.1543 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: orEnmUoy49W5IdzHY310ZvPpmz7l77RvyAcRb7G06xyAw7ptRoVTqsbNnxCZhMeKQFvzcNFyzj+NRWFQqYFa3DFiTz/OzNo41jEOqqPekDE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: fix device info for devices
 without display
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

On Fri, Sep 16, 2022 at 11:26:42AM +0300, Jani Nikula wrote:
>Commit 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask
>to runtime info") moved the pipe_mask member from struct
>intel_device_info to intel_runtime_info, but overlooked some of our
>platforms initializing device info .display = {}. This is significant,
>as pipe_mask is the single point of truth for a device having a display
>or not; the platforms in question left pipe_mask to whatever was set for
>the platforms they "inherit" from in the complex macro scheme we have.
>
>Add new NO_DISPLAY macro initializing .__runtime.pipe_mask = 0, which
>will cause the device info .display sub-struct to be zeroed in
>intel_device_info_runtime_init(). A better solution (or simply audit of
>proper use of HAS_DISPLAY() checks) is required before moving forward
>with [1].
>
>Also clear all the display related members in runtime info if there's no
>display. The latter is a bit tedious, but it's for completeness at this
>time, to ensure similar functionality as before.
>
>[1] https://lore.kernel.org/r/dfda1bf67f02ceb07c280b7a13216405fd1f7a34.1660137416.git.jani.nikula@intel.com
>
>Fixes: 00c6cbfd4e8a ("drm/i915: move pipe_mask and cpu_transcoder_mask to runtime info")
>Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/i915_pci.c          | 11 ++++++-----
> drivers/gpu/drm/i915/intel_device_info.c |  6 ++++++
> 2 files changed, 12 insertions(+), 5 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
>index 77e7df21f539..cd4487a1d3be 100644
>--- a/drivers/gpu/drm/i915/i915_pci.c
>+++ b/drivers/gpu/drm/i915/i915_pci.c
>@@ -41,6 +41,8 @@
> 	.__runtime.media.ip.ver = (x), \
> 	.__runtime.display.ip.ver = (x)
>
>+#define NO_DISPLAY .__runtime.pipe_mask = 0
>+
> #define I845_PIPE_OFFSETS \
> 	.display.pipe_offsets = { \
> 		[TRANSCODER_A] = PIPE_A_OFFSET,	\
>@@ -519,9 +521,8 @@ static const struct intel_device_info ivb_m_gt2_info = {
> static const struct intel_device_info ivb_q_info = {
> 	GEN7_FEATURES,
> 	PLATFORM(INTEL_IVYBRIDGE),
>+	NO_DISPLAY,
> 	.gt = 2,
>-	.__runtime.pipe_mask = 0, /* legal, last one wins */
>-	.__runtime.cpu_transcoder_mask = 0,
> 	.has_l3_dpf = 1,
> };
>
>@@ -1039,7 +1040,7 @@ static const struct intel_device_info xehpsdv_info = {
> 	XE_HPM_FEATURES,
> 	DGFX_FEATURES,
> 	PLATFORM(INTEL_XEHPSDV),
>-	.display = { },
>+	NO_DISPLAY,
> 	.has_64k_pages = 1,
> 	.needs_compact_pt = 1,
> 	.has_media_ratio_mode = 1,
>@@ -1081,7 +1082,7 @@ static const struct intel_device_info dg2_info = {
>
> static const struct intel_device_info ats_m_info = {
> 	DG2_FEATURES,
>-	.display = { 0 },
>+	NO_DISPLAY,
> 	.require_force_probe = 1,
> 	.tuning_thread_rr_after_dep = 1,
> };
>@@ -1103,7 +1104,7 @@ static const struct intel_device_info pvc_info = {
> 	.__runtime.graphics.ip.rel = 60,
> 	.__runtime.media.ip.rel = 60,
> 	PLATFORM(INTEL_PONTEVECCHIO),
>-	.display = { 0 },
>+	NO_DISPLAY,
> 	.has_flat_ccs = 0,
> 	.__runtime.platform_engine_mask =
> 		BIT(BCS0) |
>diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>index 1434dc33cf49..20575eb77ea7 100644
>--- a/drivers/gpu/drm/i915/intel_device_info.c
>+++ b/drivers/gpu/drm/i915/intel_device_info.c
>@@ -433,8 +433,14 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
> 		dev_priv->drm.driver_features &= ~(DRIVER_MODESET |
> 						   DRIVER_ATOMIC);
> 		memset(&info->display, 0, sizeof(info->display));
>+
>+		runtime->cpu_transcoder_mask = 0;
> 		memset(runtime->num_sprites, 0, sizeof(runtime->num_sprites));
> 		memset(runtime->num_scalers, 0, sizeof(runtime->num_scalers));
>+		runtime->fbc_mask = 0;
>+		runtime->has_hdcp = false;
>+		runtime->has_dmc = false;
>+		runtime->has_dsc = false;

why are these not inside __runtime.display?

Lucas De Marchi
