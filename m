Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6221C97DA44
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Sep 2024 23:26:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F099310E135;
	Fri, 20 Sep 2024 21:26:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AtXmEEp6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30EB610E135
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Sep 2024 21:26:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726867573; x=1758403573;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=InPXShoeGd710PDE03vamGQs/ZkMAS3wMbqjgIC3bBg=;
 b=AtXmEEp6kZZuS2Up97CWLFr59ZwSE9gemJX1FSAODCCkYdYfa7yvYqVU
 ThZg7Pp172iLWEe7yo/NTSF5me36X9QB0m5egQIn54OajAoRA1jqoSRsY
 z4kBLdb/XFhKacZT1y1hVWfFTV3ni2KqopPeShg55dNwMI8ktv/P85HTq
 WBzgYV/VDyuv0TQrG/ZbnYG4be/C99rQEiJXapnrDYAtImZsI8yOnIQrZ
 n486D3kFFYAYd+Bfzim/3EGKixQaMA9IffNDeGUHj6YmWw72cNwqClZ3q
 pLAQwN8roChqpBJ4hLr08lFAYg89SoOSOmXOgbDiKdc4cVLPQ3zJg2g/A w==;
X-CSE-ConnectionGUID: KAFnf6e0TN6h56zmSP/ZMQ==
X-CSE-MsgGUID: ZiQjqdC5QRiiUpVS2/7X7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11201"; a="28787509"
X-IronPort-AV: E=Sophos;i="6.10,245,1719903600"; d="scan'208";a="28787509"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2024 14:26:13 -0700
X-CSE-ConnectionGUID: VYMzPl8cTz+tKdFiM8YIcA==
X-CSE-MsgGUID: dlde1vEKQQeUK4S0fD5ojw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,245,1719903600"; d="scan'208";a="75382044"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Sep 2024 14:26:13 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 20 Sep 2024 14:26:12 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 20 Sep 2024 14:26:12 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 20 Sep 2024 14:26:12 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=MGK1acImN4q3/6Zq7hpG1HQmXgXPsn3y3EMFnHi0lJV8BD48qUhWyDFM3yu4hZ/WnUBqRI27sernoQmxKFR131CjTCwwBSHyEXJu3dZOZutDvQl9rGuQkGRtOm0UJZvJAXHFN/EoJOdKW2TwKe2dDpury0hi5b84n+3clBtbkvTU1zHMHG8EoYXCURAopYYQc3ISqpgXzwnVo08F0eOanqFvC9cCHlbeozUzag/3PXXLWzhubGliPk+yklUhwqPpuvfHK3ZnhmrpR4+Vsekw21V15n2atcxQ7NWsm0i3y9XMrre3GFWazx87JvhnzGSgXgHUfVVlzSBcAYu8NeDqlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5TlPTNwcH7oKzd+1muY/CLCz7m4iE2/0VFE1PaE+Zeo=;
 b=sNz5tsl2SiiCMlIoUEd9vJnFi4MJqniukHtqEM2DBDswFZh0c44+MVEU9aZzQEQvvDYS8UDguqa0mcMmNf0WUvKpxoxwj9/ZV9aj01Rf9Nt+NvQlBwHACuPQm2UDaiXakXN6mQfTYu5IZmmMwr/FgGx+GpiL79YJJrt9Ni/KnrRbbO2H409EF7s+xQglmlWbdiVJEI1cETuxSaDqdJ7BfiEf/h0q1e2FpID9x19O96f10z8+l69f7UrfoPFSN5SexfIo9zTcWt8grRVRzgf65OCknvXgvFGGfsNnLc0rUm7KPUYPTKSf+C5fWjhCZbplx+5K6Qwo++bPYREZC+pf9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8185.namprd11.prod.outlook.com (2603:10b6:610:159::12)
 by DM4PR11MB5261.namprd11.prod.outlook.com (2603:10b6:5:388::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.22; Fri, 20 Sep
 2024 21:26:10 +0000
Received: from CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb]) by CH3PR11MB8185.namprd11.prod.outlook.com
 ([fe80::1be5:55ed:3261:fefb%5]) with mapi id 15.20.7982.022; Fri, 20 Sep 2024
 21:26:09 +0000
Date: Fri, 20 Sep 2024 14:26:07 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <uma.shankar@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for Display12
Message-ID: <20240920212607.GU5774@mdroper-desk1.amr.corp.intel.com>
References: <20240917052307.760662-1-suraj.kandpal@intel.com>
 <20240917052307.760662-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240917052307.760662-2-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR03CA0147.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::32) To CH3PR11MB8185.namprd11.prod.outlook.com
 (2603:10b6:610:159::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8185:EE_|DM4PR11MB5261:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a2034f1-3832-418f-cd44-08dcd9bad864
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?PdYLMseWdLSY+z6mI/Mh9P1LADkL5jnoD0ZPZqxg8Up+Uz5jmOs+5kPOyDge?=
 =?us-ascii?Q?24X3Dl0Rje5J/IKuGUHV8kRjfQaYBpUjjG/d8F8qcLKVdGvYxG7+FFVd09Dq?=
 =?us-ascii?Q?AIkO5lKm2yFQiIkBY7VNOjCYs2Qfs2WPlvFX700tnCaT6jgWOmNK8yL/pi0t?=
 =?us-ascii?Q?4z9zd1y+pztS4y6Iv/0sFVBTAHxlVmzgmO1duwFFQQnEYFQRFRxodP4G8Gew?=
 =?us-ascii?Q?d1TQH6/0iPr2qapxpTPqnIgRDcCiJu4IcEghhSa75Cocm6/EbVUjgZYDYbYj?=
 =?us-ascii?Q?zqkCHzvYJ+rStSNoQUQMcLYFLKa5tecfV8v4zMVPO0xDmtGYWdqjgrxuqxBa?=
 =?us-ascii?Q?uLpWE1UFINetIkP1FJ9fWm8IM2z9k9bUGrmm8PuC23iQyhyieeRwIu1vw5rS?=
 =?us-ascii?Q?SBynLoMk/6eKL5Tz2TbaGk7A1t8JAemyDmwxCvW3Hzq1V0K3nb1PsyyyEAer?=
 =?us-ascii?Q?j6bmLNwWdgh4T13oJgfm6hZG+Y0ysBUCu5YwfNzK6ybfR4lwsWYli7kRkDnO?=
 =?us-ascii?Q?xDogkkLZ9ZDAbIZ3QJtIe/y8hhWaNlueB3hKNAeuboHRJqW8UNzzQFauvQzO?=
 =?us-ascii?Q?TSuwJ76K9FJvebGvvEXi4L2XtPz1qDDcnUuoBbxwtgxrtOowfQSgox0Cx5ya?=
 =?us-ascii?Q?0xo+l5TpdyxS4/MrsuAJ33hNnX5R0gZZbO5ddASNc4ixO7x9vI/YG7KY2+ny?=
 =?us-ascii?Q?VgMw6VWEqnwAUb7lEToEFAGgkAwJ3MCRSvEZacuLt6nN1CIUsbp8h6agWkt8?=
 =?us-ascii?Q?Rnzxnc3yw5HIyhvzGj8cObsy1eM/EO2ShQ7JyvB5DkFKn1Hg+K0V8UIQ6J3/?=
 =?us-ascii?Q?1t0nWdKOLFJXh1ahWD630CFGl6NLNvWpsFE7XeemwYNA8e7kvRhzb2wt66H6?=
 =?us-ascii?Q?rxWmU48snrBZshc/a1fSDrxSpiDJtfZmAsxllMJuupahl/wOsNjLmMUm1dgc?=
 =?us-ascii?Q?v3Za7u69pdvQAxREg+It6YRn4f9YYsG6N/PdWkPwbuFQIRKfjWGpc2SJpmZm?=
 =?us-ascii?Q?fidMVJKAWqMbFQiKHqcd7WBjg6Y68n37fxa18/qrlMOZ4H9LTrmEljxD0AfN?=
 =?us-ascii?Q?In8GJIY88ddTLoI2UY9feUETyVT+PDvwzLGtoHCUUWIuGftZtaIbnp4nu7G7?=
 =?us-ascii?Q?46Xt9gkj+wONhcb1vhO3T5kLpuGrXBgicRnIAYxNVOIFPMiOOgqovKqe9cbj?=
 =?us-ascii?Q?MhedLgN5ES7LeBDySFnn2btGfef0beKq8HepmYByOf+ZdsDXenQRll5Bium9?=
 =?us-ascii?Q?+0V0R5KmtvRsuFS5Iu//JGZSraOvwlLIJB9jrNXwTg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8185.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?boXwgsl2MAKUkc+7ZNZ/9pzaRVBam7ulKNLHgU8eG9sTvNQRHSF9PxRHxEgI?=
 =?us-ascii?Q?lC+ofscuQMBNYxEuNWeoH/5PbdpPyBegDkRRP2c49AxbBdKDhbB72yKulDsa?=
 =?us-ascii?Q?z75/YOehthEDxTiYlLfuvcM776m27PogyaPCSMZz7wtN+BEdl5FJTxkRe7tn?=
 =?us-ascii?Q?HuASxWqRSBucCX/aMvCkf/NIqcoqv7U4zo9O6cxSUza9C1u7MndJFmUoqSgN?=
 =?us-ascii?Q?GRyq2Y3tnYIe8dIjRl7XNN0fcpzVkCWu1uteJ7+x7dme1WPXcPOZqepTjQEr?=
 =?us-ascii?Q?wY/v+caTk0FCwtI6cezkjJdbakG+Ccm+iXcNfl037CEdyLobm0g6ejUNfHh5?=
 =?us-ascii?Q?UKF/oRTCUUSkCQ+XyQm4BPbwNfT3zOGW0Zknj50jzqHMYUsjoTBaAemc9zrM?=
 =?us-ascii?Q?1K2cfYr8mJr6OVtSIIu+KLVF1LqVAOhpO93VfpAcaS3lEawScoyifvuulZQm?=
 =?us-ascii?Q?88tANqjxI5475jRSw1Gdjvz9P5CdephzXCRW+tEMRGooHnwrhwakm0M/PpL9?=
 =?us-ascii?Q?8kJFqOh7jml/UiCslTfxroRTvw7raiGtyCv8REyL0yXlxTTJg72CN/c84uM7?=
 =?us-ascii?Q?y3HZCFMONgQs4s1jJHlHrd5pkLy8WuzgyEOX8M+6HMJdx+1t8z/YuPZLyV1P?=
 =?us-ascii?Q?hjZxY/+YQz5am7Q15tDGDuK54c42GblM2XmL0zDJWAn/5TYHLYbmKSNkNJ48?=
 =?us-ascii?Q?VLjfAKXL4SYTIKybLNSvg5wWW5ZtQFOLuMG48CfYwaIrm1qxXy49TieSil86?=
 =?us-ascii?Q?nEz8RXuYwgrw9Fga8N0p1bu/7oJ7ykZdVdFuycXCXWdD3IFU3QeJhx5I1mXX?=
 =?us-ascii?Q?x8tFt24B6Gy5GnGirobn6zQ2oTPbdminQKWvoUO6xcGy9q/JrS05cHyWeexe?=
 =?us-ascii?Q?8zx2dsyPvnfJLa83sngtXdYvSCebqJ0Ioa1PS++D+fB2nbTN9UPQvNbmvoy7?=
 =?us-ascii?Q?eDhx1ljAxXtapwuG2fogvS02cmiuiCxIjMUD1a/upSzQ5DN9tZSDIKBZNDSL?=
 =?us-ascii?Q?IyWFke4ozoQPPipVAA8mIPY9FegP/xtJ41l4IsI6PKjq8SJiVu1HmBAc2s/8?=
 =?us-ascii?Q?H6FPBuePVJoAIFuHtj6EP9ycufGSsEyGxuGhr1N5gRhHPBVAooabSp5wjj4r?=
 =?us-ascii?Q?fEWmRaqZ0fCSTsefMrWpVbZ1MJ31nOuXsVPbf3WoHaL+A644Ggiu69ycVoKK?=
 =?us-ascii?Q?lCPyE54CQIjlb6lylfOcAmivqfnnecUyeD9Mn1cspaP/AMSeCwyTy91XKs2Z?=
 =?us-ascii?Q?wpw+ZFi47VyMGVh9PK+0+xH1eI7yUpQGbJUep/3TIxjRQf/KXoy1gfypD6dA?=
 =?us-ascii?Q?tFO9FTLzDDD00HlF7Qgaofw5utAImmHkzWotWK9g3pe4WgnJW+j7ip6/mJgT?=
 =?us-ascii?Q?gFO99sh03z/vGf+1DhkaDCBftgleDifYg5tNjuUW9vEa4H7ftqKv33RnLSKF?=
 =?us-ascii?Q?rsCzy7fSdDx/nBprYVkDlVorgYb4Qch+7d9q70ShPFwzvEPjo6BBIBMr7W/G?=
 =?us-ascii?Q?5sbj44NcsOoySE3zFP9OaEHoUzIVCpwiJh21ANLUDobMhTDSgsBI2OT5xfg/?=
 =?us-ascii?Q?iwFidDRuS2xrGebTEvxMemMJy0+/hhml6O/MrGF+axiqPYraXlj1ofDJFzRW?=
 =?us-ascii?Q?dg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a2034f1-3832-418f-cd44-08dcd9bad864
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8185.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Sep 2024 21:26:09.8885 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KpT5443UCbX36VRUQ7eR3PGXRlc8EhUAX84pqL6ro6i7cXQbp+hwW1I7ZjoE4pzt+wEtppJF588vuPDZBvLZj2pWo+uC0qjw6Z/KvVw0gOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5261
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

On Tue, Sep 17, 2024 at 10:53:06AM +0530, Suraj Kandpal wrote:
> Reduce SHPD_CNT to 250us for Display12 to implement WA 14013120569
> in a alternative way. Its not what the Wa asks to do but has the same
> effect which would be detecting shpd when it is less than 250us and
> this would be okay as it lines up with DP1.4a(Table3-4) spec.
> 
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 2c4e946d5575..05a9e82cac75 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -849,7 +849,12 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>  	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
>  
> -	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
> +	/*
> +	 * As an alternative to WA_14013120569 we reduce the value to 250us to be able to

If I remember correctly, when the SHPD_FILTER_CNT programming was first
added in commit 4948738e296c ("drm/i915/hotplug: Reduce SHPD_FILTER to
250us") the justification was that we thought it could serve as a
cleaner alternative to the steps recommended by Wa_14013120569.  However
when it was later discussed with the hardware teams in July 2023, they
said that this was _not_ a valid replacement for Wa_14013120569; the
steps given on the workaround are necessary due to the specific nature
of the clock signals on some of these platforms.  However changing the
SHPD_FILTER_CNT value to 250us is good/desirable for different reasons
(to align with the DP source requirements in the DP spec).

So as far as the workaround is concerned, I think we need to either:
 - Go back and actually implement the workaround using the original
   steps the hardware team settled on.
 - Decide that we just won't implement the workaround because the
   recommended implementation is too ugly and Linux use cases aren't
   suffering any adverse effects by not implementing it.

Either way, I think we should avoid mentioning that workaround in the
comments here (and in the commit message) because it turns out that this
is not actually a valid alternative.  The justification given for
switching to use a 250us on platforms with a TGL PCH should be focused
specifically on alignment with the DP spec to avoid any confusion.


Matt

> +	 * detect SHPD when an external display is connected. This is also expected of
> +	 * us as stated in DP1.4a Table 3-4.
> +	 */
> +	if (INTEL_PCH_TYPE(dev_priv) < PCH_TGP)
>  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
>  	else
>  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
> -- 
> 2.43.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
