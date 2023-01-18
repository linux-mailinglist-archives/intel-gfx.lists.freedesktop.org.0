Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52964672582
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jan 2023 18:51:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12BC610E7BC;
	Wed, 18 Jan 2023 17:51:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 58BE710E7BC
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jan 2023 17:51:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674064277; x=1705600277;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ObSdufRLYuzcUxxAymiCD1VPZYKV7jV6kFkAsuaB+Ps=;
 b=W4ro5KM79HW3M5e07O7H7FpjQonHuzpSbF6uI1u1UUGUk4zFrDxFU32j
 jgkg4WYUgu85tsu0TKCbwIefqptkStZt642sk2Ug+hbIP8OhQRzvcednO
 Vvv2TnRI92QbiikIwVJkAbQvvMWsqn0Uq5Gttm9GFwkvKP+OyUSIYetZM
 vtsJuSfqavDzDk/1vdp3wBSeMAyfb5E8CkdShaatAtjkkMwBUKK/2Pjyu
 W6R+qkpgZnpSqQYnyiUMfCIEO+vV5QrdCErtrcND7MSa5sVc5KcphUJ30
 LKlhmp59z4leOVNUMP2M3x3e45Z7Ngh5gXgkJNHdpFvKS1DPFp2F014KO Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="305427242"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="305427242"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 09:51:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="728304869"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="728304869"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 18 Jan 2023 09:51:16 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 18 Jan 2023 09:51:16 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 18 Jan 2023 09:51:16 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 18 Jan 2023 09:51:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hypFFyZrr+LssIKWJT1ZlT3lH5n6xi0nWQ+PRpUG1O/o4TVXGyiH0C+CGtljrXk2qb4RFILn7+oEdqs4l0/MH9dHNaPMJCNXnnFdSQeTxxjSpnfZc5ESAORU39Y0Eaaa4AbwfvvGomUpwTmMPLsr4As8FAA2/JkhvR4VaMuNRB5rawOPfSZ03IYWDXw9BtI7FaD1mlObZnbK+Y1EyjTQSZPJUXigQpE0YhGEWPEudEvMTMq1gO9CwNhMqCalOQIW2a1bOfeyBRJrQKIhnfU1n/AJqNEAW185Z5ZfqLNpxL6p7fYNtaOSBD/D9yZAwu93ZFvBXILx5A41johOIfaAYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QkwBfIHSEjcUsvWrGdhRkfsN4XEaL5MYjY8p6LM9hbc=;
 b=Esm02bMBRW7EyvjsLy5tNomARlrvVjZK2j0vWvIbjrzjr9pAfc5YeFtrJllClofYXVYcTsQHsO0MF4wO+EhC5XKSiXcfXPVx2HVcsgQveaXkNtmvLKRkeV5lldA7XuPfJk3099/1CSOcqxHrRij7pZh6XWMKEQIvyrrWlQILV92Dv8u9xOWxwyMBrocAJsq8s2SVlo7L85OoHe3FYqVse6nvmznRHgErWlQ5Q6o39LiCElJBYXJCEuwsn3YSUtmON/IGN+jzJdHRsyCqAFRcZUkZNUCyknigONLPQUnqBD7WykfZEMmXj5AnLnoCbYI2ygkDfMTwetDmhNZ1xRSvwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by CY8PR11MB6868.namprd11.prod.outlook.com (2603:10b6:930:5c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Wed, 18 Jan
 2023 17:51:12 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::993c:13fc:ebc9:7168%4]) with mapi id 15.20.6002.013; Wed, 18 Jan 2023
 17:51:12 +0000
Date: Wed, 18 Jan 2023 14:51:14 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <20230118175114.6gdy45dpo37nhvzn@gjsousa-mobl2>
References: <20230113011947.9631-1-gustavo.sousa@intel.com>
 <Y8bjmTlRuEqtVH3p@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <Y8bjmTlRuEqtVH3p@intel.com>
X-ClientProxiedBy: SJ0PR03CA0357.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::32) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|CY8PR11MB6868:EE_
X-MS-Office365-Filtering-Correlation-Id: d4d7654d-f780-454c-4ace-08daf97c9625
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QK2xEtMhchAJsI+XLV54Wx5m36PdKXL4wdnSDhXtIqqn4DHM89pzJR2fku0j6hsdQ9JCu1aJCoHEFvKUpLuNxFbszqxc9iyEHlnOlkD7b9ACSQN2Dvqqf9AMJ86CRv0nH9Z7lhpGI+V6WO5p5k/IZhS9KXrl2umM4ZZxtxfFkhvMq38mpI4kKZ7VrVdjbd0L+7gr55O/HpTM2VZc4YMWGYUGPP1fcjfJPCV2M6i5EvIYxpamT99GtG+AgLvyC/kCbWwcGTi30H6FdY7ZAc3X8i0qn5Fl1JnbcKQJ4I/tq83BqfQqJvQZ32YDh2Sw15FTVr08obIm7j3mx8zAGtaWg0x388vP7Lxl0fAN4u5rCnGEqAWrhgQwlMCIj5c55J4UST+iqqzKqFRjRGnrQIub5JeJfzRa8xA+egl+vW8XbTEoKjdj1vtUq/MoHfCRc7vfZnRDhLjuB6si3HtWZYPzGNIHzFPldWbSdyJo10FPuyzOdWOMShNrnQ9rzxDVF1hi9wNKatPmQi0b7eV6k6NMtOGvmSY74qjevhkwu4zf2Ozy1jOOuouMP55/4oAEhsgsT8DgkVLzani0Pgn86Rv26w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(39860400002)(376002)(366004)(346002)(396003)(136003)(451199015)(83380400001)(6862004)(8936002)(5660300002)(41300700001)(44832011)(4326008)(8676002)(66556008)(66476007)(86362001)(33716001)(2906002)(66946007)(82960400001)(38100700002)(966005)(6486002)(107886003)(6506007)(1076003)(6512007)(26005)(186003)(478600001)(9686003)(316002)(6636002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0j8FvqNs4ymbfyfTPoNxVp9sAcDIPTyznSP6Q5ehOJaQX3NZcCLkdZO46blT?=
 =?us-ascii?Q?TDDOjP3JSKeHfaRKs6VK2q6eMEFiSNarY6An2c4AUvILSpvX4GZ57GWtRsKN?=
 =?us-ascii?Q?VzJmB7SvLRYqYh6eZ0si0zpF+Qhh4Wxi6de2liiS60hKQWXxdazxvbbneJT4?=
 =?us-ascii?Q?qv73uERfx7tHiwatWNToy4Snqxw45pKMRAnGO1a38OjdXcPl2Gu1AH75Lcva?=
 =?us-ascii?Q?nu3fJscYrFHI/hhLHHCdSTZTZbZoWNUbrK69FXdQcSEqS7r73xRSpDEyooJ5?=
 =?us-ascii?Q?lTO93vcTb+XZaBJmsyDR8w1mBSL5rosJ1eUp81R8zh0jZfyab3nUmzhS1d6d?=
 =?us-ascii?Q?y9m+s7N0JKFktX5MCDVeSeARXj5aLGAXu0y5tHxxBCyvyL9X1jyfPgio4d1n?=
 =?us-ascii?Q?QzIyg6y+lB0UQZRmo/S5YeJwxWkF7qhHXJ/AG5a7SRyq5TdKjRjbrmXoZp/B?=
 =?us-ascii?Q?FG0kVTRfYLED8ELf73ZKsP7n26N3j0SXfSduQo/6BLsoD/LFR3yU/AXDvy+X?=
 =?us-ascii?Q?fW052roYmgacmIgtOEFOWos7cjR7XiAXL5rtNhzItHkuJB3/+gLbqqKxnV+q?=
 =?us-ascii?Q?zTXZlldzbb1iZnGgD/DQC1ftP/W2MPJgTHmUKU1TwmkCyLCqVwYeG1//CsDH?=
 =?us-ascii?Q?I+8ZCNo0GtD4n/ZFp6PVi4YsaeCsSVdbbL/mbPnNFFPu6k20dG4D+Zid8bTd?=
 =?us-ascii?Q?fng+sqzuQ3fvvw6xj6L9HpqymJi5PgV467PC2Epe3g+5SPQd8ixnY8AynK0Z?=
 =?us-ascii?Q?PgPOc0MSfhQMtNeG1IwN2pO4/DvVZ7KCg3jkljLOIZmY7W1jF59OXF5YfZY6?=
 =?us-ascii?Q?7vWeOkvyvpQNBgfeC2SdxUQPNIzM/vRFrr5wHvXswqt8zM9hXK9wrPOho6ql?=
 =?us-ascii?Q?au+ttBGBmAZBqvdTXHQGPNAO0dtVEQW6pl/KXlBiTCSNyh7i92kRbiH0MQG9?=
 =?us-ascii?Q?XHTmSjcSSjpBljO5OkOZN8k8t6BudSy9oorRRkVqk7AkMLjWSE8YqRmqlsMQ?=
 =?us-ascii?Q?uHRt9elpjPXf4uldX7FbamwHIyMQQLVYSmD6KItHXTJB1z9VY3XQfJmQ6cFR?=
 =?us-ascii?Q?FdKtKDsAmoPSMu4NyI+/cG4To4W3mjABC2JTTpfFFEic6xr+9RP6IHhPixHW?=
 =?us-ascii?Q?kj1anj1eZh1brN/plWJBdEy7YF8352OZGyMmVU803LBJdM9DbAa2GcG+JEvB?=
 =?us-ascii?Q?K6ZUAP6OUCokJJeaU781eNs9aVjKho6lS9OhxwOdUFBzDPws70kuEyJ+lQnY?=
 =?us-ascii?Q?7i7Uigh6LF88VLcly3rFbKfzupofVZ5S9dVycqXlHvSKzG1tZEL4hxjH7c3X?=
 =?us-ascii?Q?noBghQMLQZrhfN3Zz7tH3dk1SofsFXvpzRT5knlj3lyu9M73uctvOJoVXvRB?=
 =?us-ascii?Q?N9gFyrcrA68Sb2A+Jc9h3K9Ohvm8Ti49k540omxI0NCnmw+jZxUABdWj0gZi?=
 =?us-ascii?Q?xbLz/VL0Wtaqcn4YT99d/FYCXdOHIMRzUsbMxBnUBUll9Rc5c5jNextM9bcJ?=
 =?us-ascii?Q?7rmcs9J4HbOWfKfklCgsLIzqLlIv9cFY4/s8bwRq+F7pvdWFpMlrtSYlT2VR?=
 =?us-ascii?Q?+HaNVWkE6pMk2xnZGrrt09J5cUgjv7LrTEy2AOgVHscUJZDwIIq8rdzz1nrz?=
 =?us-ascii?Q?2g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4d7654d-f780-454c-4ace-08daf97c9625
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jan 2023 17:51:12.0696 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uFqwUFI3n2TRy6n4E95G8n0ftnq+eC6kpA/L7VFhh3Ya0w4eP2ncXc7sV0b9fVSRZweMUTt8Z8G4k28gQB0qAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6868
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Move LSC_CHICKEN_BIT*
 workarounds to correct function
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

On Tue, Jan 17, 2023 at 01:06:17PM -0500, Rodrigo Vivi wrote:
> On Thu, Jan 12, 2023 at 10:19:47PM -0300, Gustavo Sousa wrote:
> > That register doesn't belong to a specific engine, so the proper
> > placement for workarounds programming it should be
> > general_render_compute_wa_init().
> 
> 
> Looking to the surrounds it seems like we have more registers
> that are not per engine specific being touched there.
> 
> So, a few questions came to my mind:
> - do we need to a bigger clean up and move other cases as well?

I think so. I just happens that I was already working on a workaround
for that register and realized the inconsistency.

> - do we need to review one by one and see if the bug is really
> for all the engines or affect one specific engine hence the
> function was initially placed here?

As far as I know, the general_render_compute_wa_init() is actually
applied for a single engine and is for registers that are not tied to a
specific engine but share the common render/compute reset domain. I'm
including Matt Roper here, in case I'm missing something.

> - do we have any clean documentation on how to split things
> around and when or where to place things here or there?

I have sent a v2 with an additional patch extending our existing
documentation to make it clear where workarounds should be implemented
according to their classification:

https://patchwork.freedesktop.org/series/113036/

--
Gustavo Sousa

> 
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c | 65 ++++++++++++---------
> >  1 file changed, 36 insertions(+), 29 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 6dacd0dc5c2c..bd40b8c93d24 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -2325,10 +2325,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  		/* Wa_1509727124 */
> >  		wa_mcr_masked_en(wal, GEN10_SAMPLER_MODE,
> >  				 SC_DISABLE_POWER_OPTIMIZATION_EBB);
> > -
> > -		/* Wa_22013037850 */
> > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > -				DISABLE_128B_EVICTION_COMMAND_UDW);
> >  	}
> >  
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > @@ -2357,21 +2353,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  				 GEN12_DISABLE_HDR_PAST_PAYLOAD_HOLD_FIX);
> >  	}
> >  
> > -	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> > -	    IS_DG2_G11(i915)) {
> > -		/*
> > -		 * Wa_22012826095:dg2
> > -		 * Wa_22013059131:dg2
> > -		 */
> > -		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> > -				     MAXREQS_PER_BANK,
> > -				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> > -
> > -		/* Wa_22013059131:dg2 */
> > -		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> > -				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> > -	}
> > -
> >  	/* Wa_1308578152:dg2_g10 when first gslice is fused off */
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) &&
> >  	    needs_wa_1308578152(engine)) {
> > @@ -2396,16 +2377,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
> >  		 */
> >  		wa_mcr_masked_en(wal, GEN8_ROW_CHICKEN,
> >  				 MDQ_ARBITRATION_MODE | UGM_BACKUP_MODE);
> > -
> > -		/*
> > -		 * Wa_14010918519:dg2_g10
> > -		 *
> > -		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> > -		 * so ignoring verification.
> > -		 */
> > -		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> > -			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> > -			   0, false);
> >  	}
> >  
> >  	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> > @@ -2990,6 +2961,15 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  
> >  	add_render_compute_tuning_settings(i915, wal);
> >  
> > +	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> > +	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> > +	    IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_FOREVER) ||
> > +	    IS_DG2_G11(i915) || IS_DG2_G12(i915)) {
> > +		/* Wa_22013037850 */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0_UDW,
> > +				DISABLE_128B_EVICTION_COMMAND_UDW);
> > +	}
> > +
> >  	if (IS_MTL_GRAPHICS_STEP(i915, M, STEP_A0, STEP_B0) ||
> >  	    IS_MTL_GRAPHICS_STEP(i915, P, STEP_A0, STEP_B0) ||
> >  	    IS_PONTEVECCHIO(i915) ||
> > @@ -3011,6 +2991,33 @@ general_render_compute_wa_init(struct intel_engine_cs *engine, struct i915_wa_li
> >  		wa_masked_en(wal, VFG_PREEMPTION_CHICKEN, POLYGON_TRIFAN_LINELOOP_DISABLE);
> >  	}
> >  
> > +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_B0, STEP_C0) ||
> > +	    IS_DG2_G11(i915)) {
> > +		/*
> > +		 * Wa_22012826095:dg2
> > +		 * Wa_22013059131:dg2
> > +		 */
> > +		wa_mcr_write_clr_set(wal, LSC_CHICKEN_BIT_0_UDW,
> > +				     MAXREQS_PER_BANK,
> > +				     REG_FIELD_PREP(MAXREQS_PER_BANK, 2));
> > +
> > +		/* Wa_22013059131:dg2 */
> > +		wa_mcr_write_or(wal, LSC_CHICKEN_BIT_0,
> > +				FORCE_1_SUB_MESSAGE_PER_FRAGMENT);
> > +	}
> > +
> > +	if (IS_DG2_GRAPHICS_STEP(i915, G10, STEP_A0, STEP_B0)) {
> > +		/*
> > +		 * Wa_14010918519:dg2_g10
> > +		 *
> > +		 * LSC_CHICKEN_BIT_0 always reads back as 0 is this stepping,
> > +		 * so ignoring verification.
> > +		 */
> > +		wa_mcr_add(wal, LSC_CHICKEN_BIT_0_UDW, 0,
> > +			   FORCE_SLM_FENCE_SCOPE_TO_TILE | FORCE_UGM_FENCE_SCOPE_TO_TILE,
> > +			   0, false);
> > +	}
> > +
> >  	if (IS_PONTEVECCHIO(i915)) {
> >  		/* Wa_16016694945 */
> >  		wa_masked_en(wal, XEHPC_LNCFMISCCFGREG0, XEHPC_OVRLSCCC);
> > -- 
> > 2.39.0
> > 
