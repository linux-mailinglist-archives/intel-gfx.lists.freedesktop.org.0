Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A10AA7A6CC2
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Sep 2023 23:10:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 352E510E19C;
	Tue, 19 Sep 2023 21:10:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 040F710E1BD
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Sep 2023 21:10:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695157851; x=1726693851;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=vzyMXtlgeGWtO5a5psqVa6e+g2g/MzzlCoA0+LKUvPQ=;
 b=eW28Fij2F6L4sun0OAA9vayRDf1InUIe+jynr6D4B/D20ioiCxzq9ZTb
 xFIhLkWjY0IwdSyE1gCFiubi5bCbtZfPqt0UfzEFfYnbeEc0mjghRDwKy
 AlZwD/f+m8z3CRlYFeTYdkkjLOJstagUQzzhloRpRReI9eSDU/+Z/TVMy
 EOyk2DOTH0BPIwxXmKdhcEHSQ6/cVHML6tt1XnI4DMdQ7Yi24DzI4xp2d
 r6uahVd7HbPUOjNU6LKQiA9SB9BrvwjtaO41UYsR4tA6QlUTJFz7SrJ7E
 7P0BO/jZVHp0AZN7N04++/n8pzqvHcN5kTE87QOeaWT4lGCF+wYKIHLTo g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="383894363"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="383894363"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2023 14:10:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10838"; a="870101348"
X-IronPort-AV: E=Sophos;i="6.02,160,1688454000"; d="scan'208";a="870101348"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Sep 2023 14:10:50 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 19 Sep 2023 14:10:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 19 Sep 2023 14:10:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 19 Sep 2023 14:10:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 19 Sep 2023 14:10:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LBXaHgesmarIOqBzLWdqfMUQWyGqJ3JCJwkfy55+QSrJ9vxDsAJ0fpL7MyG7ybwgC510J0Gg+SRTOLiJgniz6Y0AezX0vb/rdrIUKr7uAkYUufYy35i+ZH6fM+seT+CqlL3h2qY+dt9z7JbFoOszP9/lavMhMKtjqXRDmAKUfnrMlcS27h3urmeJjK8uuRtZk48oUQyfvcLUXdPqbQwBNI4uzuXHGI7lkD3TWzHW9X7PkmjXvR+gk6TG/0jTLxVwva6J/qtC43EK3BZG/Ay6Gu4flRF4XT4iM1Rr+ywyXBFgmvhirV3iS6QgwG7fsdC6AJtuPVRgHjfTLJvNuUBjUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XQyNkrhV8Z2/k/CBDz0IxCVD+7+jC/HeRM7NgGmheLM=;
 b=KtINp0kn7ZcrnxCPCQmVH3TsD5QeG22rNCK1St0LjaeMF65VuroTkGyrHhsFuqz+VX322wrE9uNb2Yq3MYPM6t9MTW0GqjCGZwwW+9Bf9PfmbbBjDVCwvgYlL4KVT5hm7dFD7JC1BZMucl227jv1PKbTyHSUfkP7tSC0eoQcnuC9QpnTKxM1LvLemIi9Uwzrtz0GrRqketmGL2BuUB+55mZhBRyP8lyOkxA3CMHWEzbIRU6vjyp5d+UyT7/YQdDXVg3M2rh71AeChw1tS4WzYoZJd+ZpFE1D7WlqKzBx036BeK0kr1mKBICXFSgENUZ5M2EgOT99mEHjff7gbpyE/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DM3PR11MB8715.namprd11.prod.outlook.com (2603:10b6:0:1e::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6792.27; Tue, 19 Sep 2023 21:10:46 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 19 Sep 2023
 21:10:44 +0000
Date: Tue, 19 Sep 2023 14:10:40 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230919211040.GG233750@mdroper-desk1.amr.corp.intel.com>
References: <20230919174953.51546-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230919174953.51546-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: BYAPR07CA0058.namprd07.prod.outlook.com
 (2603:10b6:a03:60::35) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DM3PR11MB8715:EE_
X-MS-Office365-Filtering-Correlation-Id: 2353ecd3-215b-43e2-a9c6-08dbb954e2e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +KQMnLMsnw74/FrMCkFqxqG23QVg5H3FpeM2Eko/HER794T7T0rbcRze24WFIKVZlNXAa47FmN91GQwF3oP04FBRfHWyzntwf9kYFQl6G26R9jTnW6qsCakIOJHuUYyx76XogERaEjDT5HvQTsK1d/C5irdDGTOynmmbdtrrZv04rdtD7SjPuEf83tvXzMlU0qlVyFRi9vaOsWbAO+qmE7rndPgum7bMkmYF7zfLBQro2ILUSByQhXVTe9E89lKus49OdXxpYFqpZEcs0lOAOsbJoDlzjKcyKgHH4oEXfjj7DiSBRSgPpTSr5deaibQpgolgPr11nkKE65xU/wv70Yo830lfK2lvFmUhNm6fcbV8FhNNehjo0HTC1BubPki+EfGVZR5a/ajvLP0///HO2HoklV42tLbUe1wGSrZqUlLafWyT5WVfNcAJ7hPlB8LeBbB5aa6k29mWxJTXGZDvGepIoiKwl0Xz3QTXjkGwY5SyujvrtqpeKTU39LBqR6ED5TpPu7Y0C4LdB4SQhmLCD+9SM2G8KkYY8iBsZkHC8ho68BgIcK7JSkIfS3rzNp+R
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(366004)(39860400002)(136003)(346002)(396003)(1800799009)(451199024)(186009)(38100700002)(82960400001)(33656002)(86362001)(8676002)(2906002)(6486002)(478600001)(66946007)(5660300002)(66476007)(8936002)(4326008)(66556008)(6506007)(6666004)(6862004)(6512007)(26005)(6636002)(41300700001)(316002)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RWLa3Dc1pfQDmvRZL/aH9ncbuLJE3Lhr6AL7NsTG5OShwvHF8amnpMPOyn5m?=
 =?us-ascii?Q?U1SZEl419SC1Dg/jQ4cUjeS5OZOq8TwY0alvuYC3ggBPdkEVzSAwYT3Oy79w?=
 =?us-ascii?Q?IF1LliRb57Mhc2cOuJJyHRfYBAmLyGKcnwSAO0mILq0r/skxlEUupnE3XTtl?=
 =?us-ascii?Q?+FVSuWGdYMYv4N0xkO750hTAyRnhIS3C0Hxy4vWYFCZiJfkf6pPH1Azw6dFG?=
 =?us-ascii?Q?CZ3MQCYFxVIJWfyWBx1izindZrnjNenRgkMAb7kL0sPTvvsWwEssyYPIc3rb?=
 =?us-ascii?Q?vixyEZ9DG6CHYrj213vaWNqnyev11DQjFqWqzQeQbL64fHQQCdTTbppR97PE?=
 =?us-ascii?Q?tTG1vVPOefZRS467d6E2r8/tudgN9Q+fuUK+fjLNqFyzL+GjkzKrDwa1qpvs?=
 =?us-ascii?Q?dyCKRCEuVZOJWpGZK1P92k5/dm+i/uLU5dn5A4QwhBL0m+SmPyMexx2MbUUq?=
 =?us-ascii?Q?6ef0uU7jHtw8axswNwzrKpS7Cxr1p+s2EmK30XYOsqSYv0DVXdibvkRaJ4gF?=
 =?us-ascii?Q?CNgWsxNDRXYy5kpu5j2pyBjoI/YvqiL8CVXobYVeNVwSQwRvWPi1h5Pj6yfT?=
 =?us-ascii?Q?WqdPftr+qYzC49dERQZ83e35LLYtkYlLYphdhao9fmg9fiFnxFX7I33Wu1eD?=
 =?us-ascii?Q?kW7D7tpdOD/8l+wT56MJKuuJtxkrX+QDgGHTLz03rDTGtMEZ2bJg24GEiYPV?=
 =?us-ascii?Q?cZSZIcfdAxsBDDUPvZ4mNMdXnmg9ze7NC8boZw1EesUYhv+hD+KFz2RmzGrc?=
 =?us-ascii?Q?QIPfNDTBYs2cbYF9mfYy0HlK2u9qpRxvZCHsawMwHy6Kiyze527zXtshnsZ7?=
 =?us-ascii?Q?PYMafXMtmQ8euyx3maT0cfHDvR8X9uzYgL/ttCWTTe2WJ0YxK/tphDnZ3/HJ?=
 =?us-ascii?Q?FauOZXTriTOYsRTc5iUGSsfJuHKnN7UYVlViyN5d0H4SHsw04+Ckdyz0dkkO?=
 =?us-ascii?Q?d+NYPuiYgQdYpdXaAUKUsJnNeSNtRR+WznE4yMtNmmgo+twNaKlom0B5chjg?=
 =?us-ascii?Q?Pol0KXXwG0hB4nrEDKXqlY60Mf6A8w0WDiCrpCpL9kZ2E6qL5ohXCPpF/4ej?=
 =?us-ascii?Q?h91nAZZ4SfdZUQ/pkMUbJIlzPHVvURXyi58+L6bYBlYs2fruw2OwcsNbneHE?=
 =?us-ascii?Q?SsuJTfeYC/jJ6Rm9cP0+CcYfZkDpfN7JnyVz7RI4uKlMvESwUodz7M6Apube?=
 =?us-ascii?Q?NrS2CAnultxmgPHwVAtfgzVMEW/wrhIUehF8WX47ofVVARz6OGzL+AHnFkTR?=
 =?us-ascii?Q?3l3uX+OKxOLfJMFEN2b8lZ+3NdzkxyGO3sNl7nJ0pgMkMTtxSzUcsE9NJK7p?=
 =?us-ascii?Q?2FArLh5SBt5gx2n/K1eb3O2MIKLrkcH2x1lrTlbBUmHF+nF096Cpw2rp6pQH?=
 =?us-ascii?Q?mAizESyoZ2I0ue+FldtbWUWh/yoERszhY/EEncmYwhLH+UPre+MVDZssG8TQ?=
 =?us-ascii?Q?Xjjl24oMP1g0mCNRB+FGWsV9H5aMp5+VxND5xgd7IMlzLx2fPNvrPKfRPMIm?=
 =?us-ascii?Q?Qh7/6kypAggeJAXUdztFALLUpkKjZxYrQV9DQiFJAm4jHb9ZW2jnpuNHbNoG?=
 =?us-ascii?Q?VmBef170/BMvQmW6IH9g69ZS/A2ZYDUM7ei68SwMCcBuIG0qwWv0VfwzD8td?=
 =?us-ascii?Q?GQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2353ecd3-215b-43e2-a9c6-08dbb954e2e8
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2023 21:10:44.1614 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oUb2cJWh0tjt9L+0Z+uaR9bopqu3neZZ0XgRCW4AdIE8l6SmgBNmgdBi1teqBdZtX6LP141EX4afmaxEpIHYzT9S7JUlnAQGdsQ6kR2uc4Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR11MB8715
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/irq: Clear GFX_MSTR_IRQ as part of
 IRQ reset
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

On Tue, Sep 19, 2023 at 02:49:53PM -0300, Gustavo Sousa wrote:
> Starting with Xe_LP+, GFX_MSTR_IRQ contains status bits that have W1C
> behavior. If we do not properly reset them, we would miss delivery of
> interrupts if a pending bit is set when enabling IRQs.
> 
> As an example, the display part of our probe routine contains paths
> where we wait for vblank interrupts. If a display interrupt was already
> pending when enabling IRQs, we would time out waiting for the vblank.
> 
> Avoid the potential issue by clearing GFX_MSTR_IRQ as part of the IRQ
> reset.
> 
> BSpec: 50875, 54028
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gt_irq.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_irq.c b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> index 77fb57223465..849dea61fc74 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_irq.c
> @@ -214,6 +214,9 @@ void gen11_gt_irq_reset(struct intel_gt *gt)
>  {
>  	struct intel_uncore *uncore = gt->uncore;
>  
> +	if (gt->type != GT_MEDIA && GRAPHICS_VER_FULL(gt->i915) >= IP_VER(12, 10))
> +		intel_uncore_write(uncore, GEN11_GFX_MSTR_IRQ, ~0);
> +

These bits are more tied to the tile than to the GT (even though i915
still conflates the two concepts a bit), so I'm not sure
gen11_gt_irq_reset is the best place to do this; gen11_gt_irq_reset
should generally be focused on things that are GT-centric in the
hardware sense rather than in the i915 sense.  Maybe taking care of this
in dg1_irq_reset() would be a better spot?


Matt

>  	/* Disable RCS, BCS, VCS and VECS class engines. */
>  	intel_uncore_write(uncore, GEN11_RENDER_COPY_INTR_ENABLE, 0);
>  	intel_uncore_write(uncore, GEN11_VCS_VECS_INTR_ENABLE,	  0);
> -- 
> 2.42.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
