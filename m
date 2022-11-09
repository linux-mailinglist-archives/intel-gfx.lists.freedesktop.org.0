Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 69F166231E0
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Nov 2022 18:50:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC52110E02C;
	Wed,  9 Nov 2022 17:50:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78C4810E02C
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Nov 2022 17:49:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668016197; x=1699552197;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=a3UdAV7gKwWQQgKUg+tpxXGSxICY32vwhIQQyrpkEKU=;
 b=fBTQrWqBSEiXA74kbyQ6MpJRMiBC9gg8XAZ7MIPnkud9VUB8WzRamh3g
 RZmg30I8KLhMIvRfFPJ3n5LUKHjlMbPiv3saWOP5xAlXb5geglRWfskTg
 oJDFH1kZvqZqJ9mGJviL5kdk5OroZ7QaKDWeMOFpf+5SqT71DYiU4aSVx
 O4XJlvwknW48p/LIH30DNUmE1NUqBkbqj/VDYP3c+edAQUy5E1ggFzUu9
 /6KKTPgJ89IJ9YQX8W7oVsqs4E4FWaWMXw2SvqLDv9ozyWUcF9//01fD7
 NL/BCWvNkO7wbbW4DTH+pg6ufN/D/0vvf4PovwMXf1Ee2nX6aSO7ESHq7 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="312852605"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="312852605"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Nov 2022 09:49:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="966080889"
X-IronPort-AV: E=Sophos;i="5.96,151,1665471600"; d="scan'208";a="966080889"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga005.fm.intel.com with ESMTP; 09 Nov 2022 09:49:34 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 09:49:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 9 Nov 2022 09:49:33 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 9 Nov 2022 09:49:33 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 9 Nov 2022 09:49:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cK4XyXGDh7lliO9i/Ptak9Ag4yUcbXLk2s3U6u2K1gX3DPoOsbb97ERtbCHHcwj5aka5ZMKpA0rABzGwc1qq4b7nt0nF3Xa5BGfK9EmMCWnloqQlkUMBJtBCgidZgOUj6CLvunKJILK02/CbnC7LnXexA8dZEa3aafwmqF/8LGjC7+R1EHtr8kWrXrOZuVeISsHqHiP5NxY4/091jHnMvVNcaj1L4bbBz14YWbNaMaooU17opQ4pceXHrHVBqGNdiwXpzQSN5dgQqq2O/joYRfVhDbyegkdgWBzyKtY+PaMrMlatEh844Qrf1dhKVmIPduakMHSgy2P9nTILRj2ZTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h3fQAnMT3++D46Pl6dBWeM40Fg4V4FywzVW0s/4BcQQ=;
 b=L1sgDmn9TeToX+wZlVfR9uNgoasPWMAPpHOyWSzjNQjF12DM80b3mCnY7YOBePwoeJ4PNQeWZLY5CJeGF13xwxHdkaHmMXV9oJS3UG102TN6xmSQayqc+MGtwW6dPopxYIcxW5f2wA6ozQ1xbLJ+pOeUSPjPvWJa0CgabthQ2hz+/RTHZMJ+4f7VvZ/PvT6psZ9aPuBt85ndLkW6yJ12a6WKEwbO5PIMakAYstKGLt5NX1875W0htWBKOmB8m2CLicyDNO1WcKfKeQiaeaTjvE3iZeTj7LaCrlAC9GDOtc3Clhlhw7g8nSTVtmvu6Q8zm9viyjTL+SdzWsLB39+wZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MW3PR11MB4748.namprd11.prod.outlook.com (2603:10b6:303:2e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.27; Wed, 9 Nov
 2022 17:49:31 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::22:fdef:cea5:e8f3%3]) with mapi id 15.20.5791.025; Wed, 9 Nov 2022
 17:49:31 +0000
Date: Wed, 9 Nov 2022 09:49:28 -0800
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20221109174928.d73bus3khugxwclp@ldmartin-desk2.lan>
References: <cover.1668008071.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <cover.1668008071.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0002.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::7) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|MW3PR11MB4748:EE_
X-MS-Office365-Filtering-Correlation-Id: 0850194b-9bbc-4c3f-55ca-08dac27ac119
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R192Dn0lqDH+qKogepFae6wBYF2dy6FgZtA7PdZNSlmpiUBE2pmUzR+xD/DJtl/do2qjAQigVmaHhYUIiEI7uvfwIrHeGAdxmYBziU2kurXy6JsJTcEoQ+Dz2EA7L8+lLkIbRlimYcAzePlMfxd1TdWzzTDE9g09TUTSXB1adK9Law4aSIks4aq59AIrkC2R+o3m2vfNpcTTt0lRRGqjjIOF7HMKkUpYKx66da0es6qI0En20vgu9hznh928Ev5DQqHglrkCFVFxNgyCGjj5utlDwmNHHfMO0YDA8xIIT9zi2y2UELGgLV8c1nlUobqfbs/zZ5b6GXjgieMqj314Lv8Pig/BdGjESjqIm0YYMZToovJkVij7xnvDvAM6eADdC438RpYRwjJOnQnKQo19pCza5q/PSrXh1A8zDAHWkZBMns0eyjIMEpM+mCvJ3IAJOk2pTIV7EcHYrFoWLLST6nWckYFTaTBGS9otpCLDcpuNJ84qno9SLFtsQ52HphQojgeJBcHB862B46cf+ZCJlaBvKUK+DczuaDC+o+iRzBd3apcCFHxvr7Yp7F58jJWj31oTzGQb1PdTJb4coNglIuwi+HEBU8kJHF7qj7xBbcTPHbSk/b0DB/PI3LKT1Bukdv1h72RQe3aKrt7ffqUtdw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(396003)(39860400002)(366004)(376002)(346002)(451199015)(6636002)(316002)(6666004)(26005)(6512007)(5660300002)(9686003)(41300700001)(6862004)(2906002)(1076003)(186003)(86362001)(6506007)(8676002)(66946007)(66556008)(8936002)(36756003)(4326008)(66476007)(83380400001)(38100700002)(82960400001)(6486002)(966005)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CHSbap/AoFoxpg3A5YKolVsWGIH9tzTl3n5mY8RvdIirL0oQPlA0lXpZwCGy?=
 =?us-ascii?Q?b4RxbuMf3WKszquOTaYE5SbIV3t3dW8K8zXigCT1Ko4tlemX6hk9M4GLiosN?=
 =?us-ascii?Q?+krM+CXyf82k/0OL6vPabuReN/HivRBW8XWClkUr+Pxe8pL5B7fHiRpxNO/W?=
 =?us-ascii?Q?s5pOhXF3lNKWLStqKIIZufwB3UMxXPOiMPg2C7veAP7X3JVCl5+mA737sZde?=
 =?us-ascii?Q?WWcVGOKlh6GcsbwtMPNtsyRS1JcyGqpYAaOyd4nnpuxE8PZGUhQr/hZbyu8E?=
 =?us-ascii?Q?kNWN62EWk8VY5wJaOByHemS7KKz/Ha1QUGnSXsbMJllDdUL1ZVrtxJ4/gqWu?=
 =?us-ascii?Q?27TZAbyEKla8ZpaWLQM6PVwhO10f+gg7Zl60e9E8QP9WoM7nwGMUh9gAFUc+?=
 =?us-ascii?Q?Fdm7rqCNAHkpFmKaxLuiAO3ovLzzYo4tqYBqAANXGYLsw/e9A9KrDKnEAQsk?=
 =?us-ascii?Q?9ooKbEh2vNA+jIYPtLq6PfJGSuJaTZjH9gWzRG0N+SMTOMo1s7j+Fk6Br3UI?=
 =?us-ascii?Q?rPnXuSHvLOHRD+7EJutrQPUYp3fxv6p831bnwlq8geqvUv+mWIVyYF2+13I3?=
 =?us-ascii?Q?95SYBlYRuQkQ6/6er/DVE7FdMib1rqhEiisnc1kK7bvrYc9vUMLsLN6PVaSB?=
 =?us-ascii?Q?H5yrLgsZVGlwH43oguqGOauOJ5t9FH/Kasb9wJQNoBMok88C8UO/D4HW7tdp?=
 =?us-ascii?Q?aHGtzPXXiLkREJy7Op522a6Vx4a3J0R9lygPDZzdLvyA6BYWFFbIDkN7oL6w?=
 =?us-ascii?Q?M06ryQbqabHgWq7K7a0NcizpRAvJxIXuHuUqWjZSx+m65RS4PN0Ez6PzPrbU?=
 =?us-ascii?Q?AcCIOgJyvATyePuoNb2i1mrIUr/T7jbC2I3F9JHrGBd56zRKi33jQiOjYchz?=
 =?us-ascii?Q?yaOobi7y0PWZmSzY9ZIkASoO1hU5XxB/sJpmuzMRi7qZAPT+m0r2GlpZLYNZ?=
 =?us-ascii?Q?wsIqO8DFvFFhM6rlgk2lqmYnsppeiSCvEkgItgpKZBffaLz+jJPYvB1Owjsf?=
 =?us-ascii?Q?L2VdTXR8Jv7PP570jZkyqQqvBJjMB/aYt8ZvKLv+LSo21DaT+pNj+2wa0uUl?=
 =?us-ascii?Q?G8Jt/J4NXFGmjyYwE+tNz3IQfhFAStPeHooL/JTQtOxHFS9ylRHmfZOMkj/4?=
 =?us-ascii?Q?lfiyKV4nIvSnxFvcsbUSCmqrz891mT/vN5tSmaxMsR/4N0nGcA11kt+Oah4/?=
 =?us-ascii?Q?bVxBzWwRgaW6bM2WnhJOZ9vhrCh4B43SbqdzExMGU+HDQ2PqhZjDNoj7T3kt?=
 =?us-ascii?Q?up/AvPrAzr49AnAzMrudJtXeTOaF85gZuiEtw3kq3E1gvubFMC3M8pkAO2fk?=
 =?us-ascii?Q?5c2I0fOqNMmfn6yF2d9bn2fGjOE+vmS8EvikI4pdMZNtnZ3H1I2MSrsbgo02?=
 =?us-ascii?Q?pS3s+ZRUY/oacKBQQwUw0xtKCnmAcwQItgq/xvbuepiuWgKBEV3bl43Q7hYv?=
 =?us-ascii?Q?vFa2+H9Ej63vseqSBTR7yRwpAVUZzrdSLCR+6Gb1f+Ghb5GsUp3H0/0H28ml?=
 =?us-ascii?Q?hW77npjQwc3LiOrg5bPT9I2msEUtxHVdm2005yMjAC82Jmtlr2rST0daKEnB?=
 =?us-ascii?Q?FcA9GeELoyAuBx3JFXOgnvK6DdoaIuwEHr/NVfRaOcbO0WnxkIC9rJeWy35Q?=
 =?us-ascii?Q?KQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0850194b-9bbc-4c3f-55ca-08dac27ac119
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Nov 2022 17:49:31.0978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CHgZLqO4xxdPDy4bAVeG8AFTKCY38kcN6KD4Te5RXjaWofu7UwJb0/+W/+Wa2MMXAuEsU0R7nW9frDH1a3n4YY+J66+ahlM2p+gFkTUW594=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4748
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 0/4] drm/i915: header cleanups, cont'd
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

On Wed, Nov 09, 2022 at 05:35:18PM +0200, Jani Nikula wrote:
>The remaining patches from [1], rebased.
>
>I also realized this conflicts with what Lucas is doing so I'd like to
>get feedback.

if you are talking about
https://patchwork.freedesktop.org/series/109606/,  then that series
pretty much stalled on my request for comments on the suggestions I
gave.

I do think what we have in that patch series could be viewed as a small
improvement and the redesign, if at all, could be done regardless. If we are
redesigning it, I will need feedback on possible paths forward.

My main motivation for that series, besides the space reduction was to
make it easier to cover cases where register addresses moved from the
traditional A, B, TC1, TC2, .. to TC1, TC2, A, B. The fact that it saves
code and replaces most of the _PICK() uses come as a bonus. That PICK()
macro creating an array and accessing it by index is very easy to blow
up with out of bounds accesses AFAICS.

I don't mind rebasing it on top of this series that is moving the
definitions around.

Lucas De Marchi

>
>[1] https://patchwork.freedesktop.org/series/110404/
>
>Jani Nikula (4):
>  drm/i915/reg: move masked field helpers to i915_reg_defs.h
>  drm/i915/reg: move pick even and pick to reg defs
>  drm/i915: split out intel_display_reg_defs.h
>  drm/i915: stop including i915_irq.h from i915_trace.h
>
> drivers/gpu/drm/i915/display/g4x_dp.c         |  1 +
> drivers/gpu/drm/i915/display/g4x_hdmi.c       |  1 +
> drivers/gpu/drm/i915/display/i9xx_plane.c     |  4 +-
> drivers/gpu/drm/i915/display/icl_dsi.c        |  1 +
> drivers/gpu/drm/i915/display/icl_dsi_regs.h   |  2 +-
> .../gpu/drm/i915/display/intel_audio_regs.h   |  2 +-
> .../gpu/drm/i915/display/intel_backlight.c    |  1 +
> .../drm/i915/display/intel_backlight_regs.h   |  2 +-
> drivers/gpu/drm/i915/display/intel_cdclk.c    |  1 +
> drivers/gpu/drm/i915/display/intel_color.c    |  1 +
> .../gpu/drm/i915/display/intel_combo_phy.c    |  1 +
> drivers/gpu/drm/i915/display/intel_crt.c      |  2 +
> drivers/gpu/drm/i915/display/intel_cursor.c   |  3 +-
> drivers/gpu/drm/i915/display/intel_ddi.c      |  1 +
> drivers/gpu/drm/i915/display/intel_display.c  |  1 +
> .../drm/i915/display/intel_display_debugfs.c  |  2 +
> .../drm/i915/display/intel_display_reg_defs.h | 53 ++++++++++++++
> drivers/gpu/drm/i915/display/intel_dp.c       |  1 +
> drivers/gpu/drm/i915/display/intel_dp_aux.c   |  1 +
> drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  1 +
> drivers/gpu/drm/i915/display/intel_dp_mst.c   |  1 +
> drivers/gpu/drm/i915/display/intel_dpio_phy.c |  1 +
> drivers/gpu/drm/i915/display/intel_dpll.c     |  1 +
> drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  1 +
> drivers/gpu/drm/i915/display/intel_drrs.c     |  1 +
> drivers/gpu/drm/i915/display/intel_dsb.c      |  1 +
> drivers/gpu/drm/i915/display/intel_dvo.c      |  1 +
> drivers/gpu/drm/i915/display/intel_fdi.c      |  1 +
> drivers/gpu/drm/i915/display/intel_gmbus.c    |  2 +
> .../gpu/drm/i915/display/intel_hdcp_regs.h    |  2 +-
> drivers/gpu/drm/i915/display/intel_hdmi.c     |  1 +
> .../gpu/drm/i915/display/intel_lpe_audio.c    |  2 +
> drivers/gpu/drm/i915/display/intel_lspcon.c   |  1 +
> drivers/gpu/drm/i915/display/intel_lvds.c     |  1 +
> .../gpu/drm/i915/display/intel_mg_phy_regs.h  |  2 +-
> .../drm/i915/display/intel_modeset_setup.c    |  1 +
> drivers/gpu/drm/i915/display/intel_panel.c    |  1 +
> .../gpu/drm/i915/display/intel_pch_display.c  |  1 +
> .../gpu/drm/i915/display/intel_pch_refclk.c   |  1 +
> drivers/gpu/drm/i915/display/intel_pipe_crc.c |  2 +
> drivers/gpu/drm/i915/display/intel_pps.c      |  1 +
> drivers/gpu/drm/i915/display/intel_psr.c      |  1 +
> drivers/gpu/drm/i915/display/intel_sdvo.c     |  1 +
> drivers/gpu/drm/i915/display/intel_snps_phy.c |  1 +
> .../drm/i915/display/intel_snps_phy_regs.h    |  2 +-
> drivers/gpu/drm/i915/display/intel_sprite.c   |  1 +
> drivers/gpu/drm/i915/display/intel_tv.c       |  2 +
> drivers/gpu/drm/i915/display/intel_vdsc.c     |  1 +
> drivers/gpu/drm/i915/display/intel_vga.c      |  1 +
> drivers/gpu/drm/i915/display/intel_vrr.c      |  1 +
> drivers/gpu/drm/i915/display/skl_scaler.c     |  2 +
> .../drm/i915/display/skl_universal_plane.c    |  2 +
> drivers/gpu/drm/i915/display/vlv_dsi.c        |  1 +
> drivers/gpu/drm/i915/display/vlv_dsi_regs.h   |  2 +-
> .../gpu/drm/i915/gem/i915_gem_execbuffer.c    |  1 +
> .../drm/i915/gem/selftests/i915_gem_mman.c    |  1 +
> drivers/gpu/drm/i915/gt/intel_engine_cs.c     |  2 +
> .../drm/i915/gt/intel_execlists_submission.c  |  1 +
> drivers/gpu/drm/i915/gt/intel_gt.c            |  1 +
> drivers/gpu/drm/i915/gt/intel_gt_pm.c         |  1 +
> drivers/gpu/drm/i915/gt/intel_gt_regs.h       |  1 +
> drivers/gpu/drm/i915/gt/intel_gtt.c           |  1 +
> .../gpu/drm/i915/gt/intel_ring_submission.c   |  2 +
> drivers/gpu/drm/i915/gt/intel_workarounds.c   |  1 +
> .../gpu/drm/i915/gt/uc/intel_guc_submission.c |  1 +
> drivers/gpu/drm/i915/gvt/cmd_parser.c         |  1 +
> drivers/gpu/drm/i915/gvt/mmio_context.c       |  1 +
> drivers/gpu/drm/i915/i915_gpu_error.c         |  1 +
> drivers/gpu/drm/i915/i915_perf.c              |  1 +
> drivers/gpu/drm/i915/i915_reg.h               | 70 +------------------
> drivers/gpu/drm/i915/i915_reg_defs.h          | 30 +++++++-
> drivers/gpu/drm/i915/i915_trace.h             |  1 -
> drivers/gpu/drm/i915/intel_device_info.c      |  3 +-
> drivers/gpu/drm/i915/intel_uncore.c           |  1 +
> 74 files changed, 166 insertions(+), 82 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_display_reg_defs.h
>
>-- 
>2.34.1
>
