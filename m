Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B009C8A8E47
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 23:44:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7242110F8CD;
	Wed, 17 Apr 2024 21:44:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGmacWqy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70E8610F8CD;
 Wed, 17 Apr 2024 21:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713390278; x=1744926278;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=4lg743sQrmnuDXGlV8NivDZvLsmx3bWr6EoZRj0xZaw=;
 b=kGmacWqyIWIENf+/cvBhXktLPLceTZVO4l4h3s8BlBDtc6prZ+qIDOEI
 4TVwM32mvoOvgDbbAIzANTGNAX+JYwjjTDPKblrnmRrDJYQ8Ezih9v6to
 4FrRdN6joW2WZq9nfte5Li8A+xNe/W5Yrr6VmA4ww5AwefCjPHcpnAx0M
 +WZ41Z74qpfW2FRc+Y8BAbomyXwNOYQueiZ88gPbokhXoY+ldsEucNT8N
 OPyIdm0vJmZdCj/E8eFig8xJSmrcjkXYhIsn++U1xgiWcHXctgXrLAr2c
 sJB+Lmr9q2682kRQAD2/7M7Ei/sxaG0WRGlqAp7Ii6lalOm8G7VBHyyt7 w==;
X-CSE-ConnectionGUID: xKzR+vcBSVOOQz3SmGcpAw==
X-CSE-MsgGUID: vPbFbgY5S8iuamJ4k2LRpA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="26415539"
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; d="scan'208";a="26415539"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2024 14:44:38 -0700
X-CSE-ConnectionGUID: YfmQ23h+QGi5YWqfKZTd8A==
X-CSE-MsgGUID: nJqtVk/DQ/+zLPQ9hHakUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,210,1708416000"; d="scan'208";a="27393397"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Apr 2024 14:44:37 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Apr 2024 14:44:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Apr 2024 14:44:37 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Apr 2024 14:44:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K4BmrnobR14RAKl8pGu1JRCNGIqeuf1iLiKQaAaKaAWR35+KAzp20YTIWOZYC/QJqIm2ItBsVTrOMSslyP6NmuqcRuZqftCi1dqVg1mD6iDUNDh5GOnyLvzMgqWqqU2Q9v8P1N4eVGYUWW56MAYO/8Uqg9Rvt1AmnC82Py5OwzcCHm9YBsfWbt7Met5FT/A1A7TEnrhysOi9kQSlYu63+22oq1lNaQqPh/t19/O7QYtJ6jasc6saPxlq7vRqs9qpfR15SzL6LWsikpoCGzsObgnRSzSWAvxbCrpNC/kuqa+8/+xp3ZrUvYy/OLKu6RaheZSrmeTZgFuidL/KM03QuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rx39NcevQMvBR5c0bQbZird4W7Q8t19O3HHMmjAqwd4=;
 b=LXjrK8/RIrwRD1IwZXT6WdjLMcXpjsLuW26nRNIhe/5bK0ROvgIdDYbHVlk9V4/RwGSpkZT4/Y3Islxb8VXeHpk2gNBcgV1cbfAH3G+K3dBJqP2sJHF18e4MR1zRqJiNn97Q+HZpnJuaiDULy46CeUp+GSkSvP18Ls3mHHTr8bJsW3JwFxjAdYAdgxlemNd564Ucd/i+v9+sr5KHaVxytiraCKuJYuhukF5eVBHHzPeDlloQBtdbKNW8jAIouy1YZq9ScqtYfhtUvguDtY9KRy/iY69QgW35AM7JepX2ZULc4vSaSSoAbbqhGv+ZUveR3X7C/529WMLfeopBGdG8pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH8PR11MB6756.namprd11.prod.outlook.com (2603:10b6:510:1cb::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.31; Wed, 17 Apr
 2024 21:44:28 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::e9dd:320:976f:e257%4]) with mapi id 15.20.7472.025; Wed, 17 Apr 2024
 21:44:28 +0000
Date: Wed, 17 Apr 2024 16:44:26 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/display: remove small micro-optimizations
 in irq handling
Message-ID: <lh5rutbeu54tjlp2o477nb4xuqyblgjh7nemgecizqrceidabc@hcuihs4fxh6n>
References: <20240408125445.3227678-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20240408125445.3227678-1-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0001.namprd08.prod.outlook.com
 (2603:10b6:a03:100::14) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH8PR11MB6756:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c89701f-83bc-4bbb-5273-08dc5f278e9c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: K4URwF/L528Wf9qP8mkh+uBUbNiVHLCaHhTldgbX4uzjRadu60dsPFn3ZgB2Us5ulC5PJZFAVfNBKYz1nTAhGz9/RcNFZIYdG7t/MnGy/vRCgqvvxvUQoTdUExdm6uKzBPZ4gw/jNEZL0FGFaL/pqqFq2b8sRfgiMTS7inG5YzgnTH85jEW4qyE8oIhYnupgaOOUWxytQnBJq7+qLuf0vAi9XPQPXBmnXSiLIXGru85PYUz90DOEjqTfF0f0StL1SVJUdIGkp5BL0Gzd0W9XfRJ+GjGSNmDvLMKAEfFRaUkjt5AZe9dskXHIu4ayVGPW26TJt3mwGz++cjuSDFkUrQ6LDjWz60G2ZUnh+l3ZJXDnrjH+fULKPl8o8kcw9u91lpwfIHhdpDDKFeC17pVd6UAzhBqmyK2a+WyjkM1IraRub44jUanHrW0j7J6yMT1vzAZNRcG6hWGhGd73DXUiWvW2ZQyKXhSG8bzJxt/zHpADGKWEpmLswD6q5R+LYKx/IoF4rWf4K5GHPG3XgGaTrR/7/B51Wg7zriNoelepyBcLWJ2+MP0f03aEkLsPMLfNJGSiFP+C53jAt1kPWWTyXz+bX1ra3S5VSn4oHVlTQGjhnTgvdDSVo8W17thp9m0XXnth+Tj48rWyZAAvjLcADigWQ9ESTo5aJ8+pR2A6BSc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3OXqH5ER6k3gkBJg6HSSoVwFbLkC4z8wljYRLhXXZgcsayMzmp4CtyL+Bz7Z?=
 =?us-ascii?Q?BwHxOMqEfHzUZJl4jmnEqoM+bDWzdRv/KHhycJjv0VKlwISmyfMiCX4jcyvY?=
 =?us-ascii?Q?IFFqHal/JTrBBlg0uSWMEQS674WTziFAhn64LD1HWNLQ8DC7c6yzlvnRyQ2o?=
 =?us-ascii?Q?yPsN0KhspGdOSeGe48eXqOED4vzkoqQqCwfAxdHUoFsLoaIVWHCiiS8rHw7a?=
 =?us-ascii?Q?g72t6fWefNWbDHiGqWHYGofni7AKUlGPpB1OvKuDKXmyps3eauJJ9xT9ZjlQ?=
 =?us-ascii?Q?CRiNnLuooJonfBv0/cGL4IlFgYRv+0YSEuD4xfwIUMUvx/uKKNRiPmRzl6bo?=
 =?us-ascii?Q?emjPOj7Yw90ngjsYNvgmR1eGgFuIb8Nx79/gPBLU7sklxF+STYhCc8NlZWRp?=
 =?us-ascii?Q?Sqo1wZJpgYBQA+X0w+qLSjiexrbXhWu33AHwimW6PJnI6MNtQhhANgGxZ+3z?=
 =?us-ascii?Q?kHuiKutuF++J+y/sNoSZTk8SgXKInBZHddeNUHFdrix3seis82Bb++MNtbTz?=
 =?us-ascii?Q?oUj8NiGGg3seVslSmoz5Uan3kdiBhUFil9yRxz36VgL0ZJyyLEvCTgL6p+OE?=
 =?us-ascii?Q?7H6QIdDCAOmw9YmKF/o4uYyHexiNZUHJMQ+ruIJzEf7ZXZUsNbLGX353msv1?=
 =?us-ascii?Q?jpr+lFcIpK4UragKZT9LqThcn9X21kpOlnO7x5UNe1/52xYR89jXswKzr+Br?=
 =?us-ascii?Q?TSHYdFbTupiZwZhLmdRwhCRaTMPg/WmR7YOETV58gM0dI2yK47mT6T2LfPpY?=
 =?us-ascii?Q?QcP5dTA2fUW1VVNovoJv5p3ULbVoptyFrw7QtXBqqOFm7zg+Tueqt8W+bNFN?=
 =?us-ascii?Q?YrB8PwzJkQjZf3AeMGxkITUiLS8VEpMiiFF6PXfNVDA/PvPbK3uVqiBTZoCT?=
 =?us-ascii?Q?2iC++HsbgHmthVQLe3Eby7J6Wix2EXeZFKdxHyNcz/JJlumSG/z0BkoFRnwL?=
 =?us-ascii?Q?h5Ffdxj8Fj5UtLnsINw3BYTKpCT3GE+Y5rEIL2TRU6UduT6Oeb+1FuXzGjGa?=
 =?us-ascii?Q?Y89gTu77QkYYW1rUbRV7RS1yBfcseOQ4NE6ZegVAfU1JhYCQmsCfsbkV7Q06?=
 =?us-ascii?Q?FLfgqxZj18MbZKmtZUuhp/8VFODC8qzNVDAPBAS2Rdv0JY90kHoU9GUykuEn?=
 =?us-ascii?Q?yDkqLXjGt0FMcwK5HRPdMeSoAAJ0ogFmJHZZL7D+NhQ76Y8ybK1ohHOqud3Y?=
 =?us-ascii?Q?4HjAgFBhu1GaJN9lW56qRrBmZJA/6XR9K4Cn5DzzDIzlwsX2vUOYfq8Hw8CE?=
 =?us-ascii?Q?Ur4A9IoVlEBOeAGDCi7AHTTd0c3AJcZU6mju6aK7LYvAnNfFH9XRo0X4dGRa?=
 =?us-ascii?Q?0z4Kds8kqEyJy+6FAiKW2N4sQdXjCdUfIn95r2AHwsn+YsLirUUvdGuUSd56?=
 =?us-ascii?Q?a62aOAbHmCXTi1oypTMvGgC2Xlk2Gs1zLNaEYyK+Uj4jPJgz/elBIe8cYm7+?=
 =?us-ascii?Q?+sShnn04MSAwl1JwfYbXwiJZu0eIE0c9VzjwdgiiASR/40ESBAE2kzFaSzEm?=
 =?us-ascii?Q?GdPIYtV8L2CFRyVq6q5wOdRGLkm/ebH4QO5g/uRzNj/db6bGVskBF/KOpIJv?=
 =?us-ascii?Q?Ax2xkuda/jZreCl/3BvMK8IwDuLQciOhA297p1fW5laGyJUlx8optDecOsAw?=
 =?us-ascii?Q?wQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c89701f-83bc-4bbb-5273-08dc5f278e9c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 21:44:28.2981 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I1KzgBQ9AFlOMfXlJ5r6ObGGO0Rq1OeAxRtSeeDviDmlAP9zmjFoSB2Uj8A7mdUJlxSg1E0thn/GDZt+0Y2jR4BWt5tif6c7xe29cbDUoU0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6756
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

On Mon, Apr 08, 2024 at 03:54:44PM GMT, Jani Nikula wrote:
>The raw register reads/writes are there as micro-optimizations to avoid
>multiple pointer indirections on uncore->regs. Presumably this is useful
>when there are plenty of register reads/writes in the same
>function. However, the display irq handling only has a few raw
>reads/writes. Remove them for simplification.

I think that comment didn't age well. Not to say there's something wrong
with this commit, but just to make sure we are aware of the additional
stuff going on and we if we are ok with that.

using intel_de_read() in place of raw_reg_read() will do (for newer
platforms):

	1) Read FPGA_DBG to detect unclaimed access before the actual read
	2) Find the relevant forcewake for that register, acquire and wait for ack
	3) readl(reg)
	4) Read FPGA_DBG to detect unclaimed access after the actual read
	5) Trace reg rw

That's much more than a pointer indirection. Are we ok with that in the
irq?  Also, I don't know why but we have variants to skip tracing (step
5 above), but on my books a disabled tracepoint is order of magnitudes
less overhead than 1, 2 and 4.

btw, if we drop the raw accesses, then we can probably drop (1) above.

Lucas De Marchi

>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_irq.c | 15 +++++++--------
> 1 file changed, 7 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
>index f846c5b108b5..d4ae9139be39 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -1148,15 +1148,14 @@ void gen8_de_irq_handler(struct drm_i915_private *dev_priv, u32 master_ctl)
>
> u32 gen11_gu_misc_irq_ack(struct drm_i915_private *i915, const u32 master_ctl)
> {
>-	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
> 	u32 iir;
>
> 	if (!(master_ctl & GEN11_GU_MISC_IRQ))
> 		return 0;
>
>-	iir = raw_reg_read(regs, GEN11_GU_MISC_IIR);
>+	iir = intel_de_read(i915, GEN11_GU_MISC_IIR);
> 	if (likely(iir))
>-		raw_reg_write(regs, GEN11_GU_MISC_IIR, iir);
>+		intel_de_write(i915, GEN11_GU_MISC_IIR, iir);
>
> 	return iir;
> }
>@@ -1169,18 +1168,18 @@ void gen11_gu_misc_irq_handler(struct drm_i915_private *i915, const u32 iir)
>
> void gen11_display_irq_handler(struct drm_i915_private *i915)
> {
>-	void __iomem * const regs = intel_uncore_regs(&i915->uncore);
>-	const u32 disp_ctl = raw_reg_read(regs, GEN11_DISPLAY_INT_CTL);
>+	u32 disp_ctl;
>
> 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
> 	/*
> 	 * GEN11_DISPLAY_INT_CTL has same format as GEN8_MASTER_IRQ
> 	 * for the display related bits.
> 	 */
>-	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL, 0x0);
>+	disp_ctl = intel_de_read(i915, GEN11_DISPLAY_INT_CTL);
>+
>+	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, 0);
> 	gen8_de_irq_handler(i915, disp_ctl);
>-	raw_reg_write(regs, GEN11_DISPLAY_INT_CTL,
>-		      GEN11_DISPLAY_IRQ_ENABLE);
>+	intel_de_write(i915, GEN11_DISPLAY_INT_CTL, GEN11_DISPLAY_IRQ_ENABLE);
>
> 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
> }
>-- 
>2.39.2
>
