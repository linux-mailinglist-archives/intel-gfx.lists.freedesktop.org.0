Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22BC596A45
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 09:21:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4F5A010FED9;
	Wed, 17 Aug 2022 07:20:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 552F810FEED
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 07:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660720829; x=1692256829;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=+1XqEslSZthJtC9YABl6EXImU715ZIcb5kMRMJ9L+sw=;
 b=nw6jouhLoqNGWaex2v7kqxBl7PPXGJngNelWHVkHYzLGBg8CuDjqdbLZ
 IN0IkyKBzhcJexc+Eef/Qq46P/HMqXm2wkyG2Ru6A5sfA+yXE2JypOOgo
 vdvKfS/0FatDBpe82ji9L4rSbu/RX9a/6ANOKgfdQi6yoK0n1NBd/Ee7w
 pKnu3J4SwVDbtQ6ITsnQ/0zFNnk7wxCVFDGjRJiRpaOHi1rObUW4VA6l6
 mxKALKP9+JndPWeOvSqFKvwSW3lfqi190LnOzrv4IKsPbuazqU3wSG4dq
 G844xnW1cQm6Z/nParxU0X9uJ7EfY9UgSd+xWNIrML7k/LJqA1PQkOAxl w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="293218953"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="293218953"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 00:20:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="558013094"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga003.jf.intel.com with ESMTP; 17 Aug 2022 00:20:28 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Wed, 17 Aug 2022 00:20:28 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Wed, 17 Aug 2022 00:20:28 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.173)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Wed, 17 Aug 2022 00:20:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N/6HEoU4XKuoc/F+WM7/kZPXIu1Z6gt8xeORSltYNKN0rjGLtPmYJjf6VH5Hv7fCvnte9VYJfmVANWBo4d89EiRGcLS+6Nzvh+DIhHCRM4x3XPRCbbM/BCHuZRokh+P9AlqV/d73h+WWRodDgCXphRqKo7q8i0tYLr+KLebSVW8/8gTNEfIGpdk3hcQjMPKQzLbHhp4JoWpANRST2ejftTT8bICX8BCJ0F4tfjYoi8seOuTIzWsL1HiG/oQZEyydDfB+11q4FPIZOsBFZ4fJoTv7h6Z4xHesPI77ub3P3duAd+bZ9s2tqdcx95irSppDHdeB7e8AnFPV0NecwapvdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c9SshHx4J+ORku26yTETf3HlJosFSrjTdyBDPtyVVcc=;
 b=EXmhCNMt545iZNTQ1MTh/ysCc+YQh5qGA1artLdmAgxfNeLGxaUJ+H4hf38PUk2bT3OVl0A328u8OibKIDBaFVLyi877FBuE7QgK9MPVXzQZttb9u+F8J28LBO+2U1rFfwoWL/0rntInh1Jqm+2p+h1lnv9JtfYmjb4w1Zo/5ThRZkGybTfBpp6vgi7hNdhUVtOjcxEGY4cNwGkrGRPSNlEVnwraGRqVa32auNaPU8ADhQANJ0JuBtrGPRQpjOUJWMwifSurGPTnrl7eD1kOuzj3V3VHxwdIjegrmORoZiIm/h2GhuCp0gckB4ENnYneoWn2I4TJKSXQ131O/Zm2Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by BYAPR11MB2920.namprd11.prod.outlook.com (2603:10b6:a03:82::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.18; Wed, 17 Aug
 2022 07:20:25 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 07:20:25 +0000
Date: Wed, 17 Aug 2022 00:20:23 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817072023.ca6ikspxpjtal3dk@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <ee8405fc39f5c4c0f439590d98a107adfd1bf6d1.1660230121.git.jani.nikula@intel.com>
 <20220817013813.gnh2nnyd7ma2me7g@ldmartin-desk2.lan>
 <871qtfqs6r.fsf@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <871qtfqs6r.fsf@intel.com>
X-ClientProxiedBy: MW4PR03CA0130.namprd03.prod.outlook.com
 (2603:10b6:303:8c::15) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 45f03413-b704-4118-c4ab-08da8020f460
X-MS-TrafficTypeDiagnostic: BYAPR11MB2920:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LwOslmDziGgFnk9pbpP3AzSwydNZk2w4TZDAI4rSCB0iTxGs1Dpks0ONCZXiQj2+zkY+j4eomIC+fOk+lTIz3+HwqZqhMTnE9TKIQjKBTwHAfgvEPswyTb2R259QHZEifCaV7C58+QaSk3PPhL8fIRtV7mW436vG5KmdEqQExAxNJ0JfFqNJxeZZPHaMLp/65pt44kNyExgdExGew022UfkpgHfpAPwUDkyY52SjCGIK14JmhKBBFu23qt/NjVTB9cFArqbzqHIOclIYfbIKbS9CIvHOBGHYOPkVGYCvh3s1jjHNmgCZBTyrXddsyiMazS0x7ZwaOuRwtuQ2hO7Hie2bbnVT6eqi+P65+nkglbiLABK+aDs5XaHjd1gbZD45artLwl/kz06rbloPaS9UEN2ZxjiP1HdfX0N0fIhWT9nqbLoSURn93DI7NbFhrgJlXr+lVQbYCUL23xrIUPSb15LeiqnLiItD9Xz+oZqm2OCjXlBH7mTURhcWNrb3izGh2Z7j+FJrIH1qjTWtGz0dnCbDKp/OMTpFlFYMIsGBufV+cx4iCv4UPkZ5w1RbsMo+6mnuBEbfWwV1TgCJxEysCOpNQC4MseTysgoN2VkP81i2Uq9/2+UWgI/1As5Ipb0T/Jt7aKLnue3TA6nIW08UUtzCBbvxBKTvL8KokXV2T/9J2mPLNrYHxRXnCSpzc3/Lupxq0Rtf7JEvLQ/2bfkM7MaGazr3DSUWAC1i2sphFUSN6nb5siLrDp+Sdw4xGWlU
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(136003)(366004)(39860400002)(346002)(376002)(186003)(1076003)(5660300002)(2906002)(36756003)(38100700002)(83380400001)(82960400001)(66946007)(66556008)(86362001)(478600001)(6486002)(316002)(8676002)(8936002)(6512007)(26005)(9686003)(6506007)(41300700001)(66476007)(4326008)(6636002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nEnkxhlN9txBDCnmucF0IpsQcN7vuuz6mjzsy6neg7dvDRNZZJP891wz0BYg?=
 =?us-ascii?Q?kOHGNOwn6A8GzSARrjjh05GHImDFD8yV/Hpkx1304StRD3fJMWxfJa+L5oBG?=
 =?us-ascii?Q?G/AEnuP6eFOKZWcOEAY+wdziea+MZ510WgE1zCGdm6IHrFCQqzrI9RTbY4C8?=
 =?us-ascii?Q?ybP6/WEkD8dHQw15IwdLnjsQ18jW2NDQLKPCHoaeAzx2EwvRfcbMPJ/wkg3F?=
 =?us-ascii?Q?k7z0gVZikrmD77krVI2PIjZUBI5Ff69DQ5//Nlv6W9pCcdTPBWfzws6Hxh6c?=
 =?us-ascii?Q?1RsAikFKx5AH+WsCEbpzp+wFbtDFgGzRjRB2oLF5FvE5gT0xqjYZj95wlxmE?=
 =?us-ascii?Q?a8+Sa1lbYgb0qZfwP19cyMzMMqzgVkQgD0wqbQs1QPIh4R5E8Ttke2nJov9n?=
 =?us-ascii?Q?hjzbXQUIypGXvzRuxxEteroKi6ovrIUFqRAZLbvS0fI5USgalMDZrRDFm/Rb?=
 =?us-ascii?Q?/V4ZM9JbIMOMprCIUvnKetwp8rlFMWvkUPNAQJFLKepSOu9rlMA4vznmVtwL?=
 =?us-ascii?Q?zZ+FbP9PihAh1TnAFyDS0S9FPB2v9OG1Ym2mDbyWsD5lU5d06ogHjoWX6etl?=
 =?us-ascii?Q?E5fZ2C30oJSVk+opuqDHJxIQlJkEV4pkpvPtOkO6dWrS8ytRw43FEkGpAXE9?=
 =?us-ascii?Q?i1lxBJGFGH48gK0djhEvjgADJk+B0bC29M+mOcOlVto8sM0++eNHSHE9H6nl?=
 =?us-ascii?Q?nFDf4y+iMGiHIvlIAIL6ocCYV3arBZwmDil4AMajPvT8agpuhNcLX2jIJ92K?=
 =?us-ascii?Q?cnkqvu4CPcy6Ma1bVzfhe2ZR2KDGQeEBcHY8c9d+CNFUvQtK/f/2kYVVX+Bi?=
 =?us-ascii?Q?gfTOhYZj/5wzndphN+6N8icjzAQjTWrVlmW0oOCCuyAxixP4ahknUhvMayG4?=
 =?us-ascii?Q?uSkt+klC6Hqy7wy5zCpu4WxbOYVtF3hOc+TUSgVpj/Z19pPjIqfP22+gJgVF?=
 =?us-ascii?Q?w7CfaHDxJIsRr1EkpvQJZ8YwzyvLitBX0GjUf6tIsm0O/LgKkdFsYkWMnjUD?=
 =?us-ascii?Q?apP4eURx3iM8NsZwHoRHiMX49/4FDaf7E65XaeqMiczw6kn1xObOiqWlgxmT?=
 =?us-ascii?Q?Msk96Gv6UxcOQ/gHU1Xpe+kZzFqyrmHgnnXXghKTVpksw0pKRdqZccP9rgud?=
 =?us-ascii?Q?iee8VymC+aLc9U1potBrFf7FTkFgVi8lZBIoszbfZ60clnU+eMsyBPekabNt?=
 =?us-ascii?Q?smN38VLLScfRvk2N9mUyWh1PesKDO07aXbZPyu4r17stY9nHWYznJuLK9gWR?=
 =?us-ascii?Q?2hq0BnEiHre8CetygD8vGk/WD1kdqTuxgf/ywAfIfgNV6XA8ip38Wmeh8U7f?=
 =?us-ascii?Q?YHWVpn+Coy3CBmtE1zlZDaZzf84jiO5H8k33c1P5+mM0RXDN1kIqq/eB+EsM?=
 =?us-ascii?Q?cze8L9WLwe76HRzsAK/jT1rGh9IaXPgzQidEWnh8tvf9On/9JLun4jsZHOht?=
 =?us-ascii?Q?Qt2sWzYRs+rARTNQ9YWbrIhOJhi7Y4fmbp495wNElcaIo0l7hl/1iOCHrio5?=
 =?us-ascii?Q?Oe7xxTiv433wmfRFV7ZLOFWnflPecBEJh6DXQfr3a88McSGpzKLbzyI/SIbs?=
 =?us-ascii?Q?C2g7OjDkpli3hbDMJ4phiIEBboJ5v816zHzUDmULZUKYE2XPxQUHqr+nnFkG?=
 =?us-ascii?Q?fA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45f03413-b704-4118-c4ab-08da8020f460
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 07:20:25.4731 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hI0LDLttcXRnQjvvMGDA6t1a6wZ8Et8K4CrAmk9Z/ZDZa0aquwJ7LdOsCf/CeyhLkNJBda6cAWYK3p5wN38j5xslbIA8xZfNxrbPTIFjCks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2920
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 05/39] drm/i915: move clock_gating_funcs to
 display.funcs
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

On Wed, Aug 17, 2022 at 09:50:52AM +0300, Jani Nikula wrote:
>On Tue, 16 Aug 2022, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>> On Thu, Aug 11, 2022 at 06:07:16PM +0300, Jani Nikula wrote:
>>>Move display related members under drm_i915_private display sub-struct.
>>>
>>>Rename struct i915_clock_gating_funcs to intel_clock_gating_funcs while
>>>at it.
>>>
>>>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>>---
>>> .../gpu/drm/i915/display/intel_display_core.h |  4 ++
>>> drivers/gpu/drm/i915/i915_drv.h               |  4 --
>>> drivers/gpu/drm/i915/intel_pm.c               | 58 +++++++++----------
>>> 3 files changed, 33 insertions(+), 33 deletions(-)
>>>
>>>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>index ff76bd4079e4..98c6ccdc9100 100644
>>>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>>>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>>>@@ -10,6 +10,7 @@
>>>
>>> struct intel_atomic_state;
>>> struct intel_cdclk_funcs;
>>>+struct intel_clock_gating_funcs;
>>> struct intel_crtc;
>>> struct intel_crtc_state;
>>> struct intel_dpll_funcs;
>>>@@ -44,6 +45,9 @@ struct intel_display {
>>>
>>> 		/* irq display functions */
>>> 		const struct intel_hotplug_funcs *hotplug;
>>>+
>>>+		/* pm private clock gating functions */
>>>+		const struct intel_clock_gating_funcs *clock_gating;
>>
>> did we get this correct moving clock_gating to display? The question I'd
>> ask is: if a platform doesn't have display, would it need to do
>> anything clock-gating related? Looking at the current functions e.g.
>> gen9_init_clock_gating setting some chicken bits, I'd say yes.
>>
>> Another reasoning I'd have is regarding the registers it touches.
>> And here they are not from display.
>>
>> So, I don't really understand the reason for moving clock_gating here,
>> except that there are indeed several functions doing display-related
>> things. Should we rather split one for i915 and one for i915-display?
>
>Mmmh, maybe. It's hard to split the driver nicely when the hardware
>isn't!

oh, maybe one alternative is to move most of those register settings
(that appear to be WAs) somewhere else. And then declare the
clock_gating stuff as "this is display stuff".

I don't mind if you move them inside display first just to get
the ball rolling and we move them to a better place later.

Lucas De Marchi

>
>BR,
>Jani.
>
>-- 
>Jani Nikula, Intel Open Source Graphics Center
