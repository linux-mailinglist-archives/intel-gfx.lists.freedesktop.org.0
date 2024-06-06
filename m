Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B9088FEDD4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:39:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C712010E97C;
	Thu,  6 Jun 2024 14:39:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EK6i4xVR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85CAB10E97C
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:39:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717684794; x=1749220794;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=b2Tk4r6hc2S/0ZSRLpe9CBn+HG4j8+T7W9mucTmrTZw=;
 b=EK6i4xVRPlJs4wlazXX5SZ8CiSPl37cOnzhdeUZxQSWWjb3ErpQCSPm9
 SZoWPOyqA8NoFa2uoJMThFSdTGfrljZD8sYcTA60CQ2A94Cdi30Cro2aA
 yMZ6mEdKCbyF5mVdulfY6vXROlbG20PxI8zGVOVWs+Myn4Mc7FPcJyxaQ
 65IWEYaxIN3IEXfvK0B6i6W7b6gcwZS+0nnVoftYE7p6vfxgY/2NEO3jD
 3/+dI/0YBjOnKF23gs42ifgX92dg826CbCzwnJg10CIsgHaBYa9cQlLZ5
 IAApKtou+eZtnvE/gBm5lX1aAA1ZLGsjky+pWL2rao6yK+rqDCQ2JTZH2 g==;
X-CSE-ConnectionGUID: 4kkRbqv5Tj+tHxdxIz14LA==
X-CSE-MsgGUID: Bj3YaYyRT8ORPX6+pBdUYQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14195071"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14195071"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:39:47 -0700
X-CSE-ConnectionGUID: B9/nT2C8Qnm6L1Ixk6gevw==
X-CSE-MsgGUID: WjbvBqwiSRmvSSHyebb95A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38548187"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:39:47 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:39:46 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:39:45 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:39:45 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:39:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N1pjOnL7PROaPJoj5oyeS0JyFie00Au3QMj3jiKaqXxg4APtlw5xJyQg8U49BkHgaS1nuL7gSK0i6i6uiOWM2Yol50HKxXLeE2YUdwMjobErZTGIlu3GAJ9RA+86GOFj/Jqz6u/5xv1KEMguj0cPHmV5ydManXNWr6NX0WGjplLNIFMorZjm2crtx8yWdpyRCMD1c+AUN1OwyARhZTFewlQ2lx817E2MqSN0Fz/Nwv5sX4tbdxOejIYc9qPweGuFepAYX3f1w5WqFJxlxozymfYLuJv9HKgUQ69WwgsL6jwyZP7S1/+gxdmu8OEn5shcUwlAw1pTn4Pamch+IFfdcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y3+a8QnUNnJk9rVzGIrUQ5IG53Fin236y6xLwiIWJFc=;
 b=DJz9hx0yEQe2NsV9JF/AcN1XKpyphtIHf48k1h70lWisBotACBlvgGlR8uHCIS747I+JVUra1AfIXHzz/K3pMlTrtpkJN0llBF+djaqrtgRI0WDB9wr60g7Ep5jqN+gYetFc6z5+n3p1/d4A6AHW0hNssrNR0N+YcMwEe0D3+GYQkbsM2/sBsQDgstMOD5jB18kKLQLiMorWWwsuCszvTCQ2VWhqEaTKEPB3pRyKJJA0XC1q950CdWXu5McW20TnD/RIfG3baR4y3TSn+DiN3DSTfiFucSl1j7oeiuQzbsNp4vWc2AmFkLRp2jBXNRcJWdnI+YAVT858pES7DCnsPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW4PR11MB6714.namprd11.prod.outlook.com (2603:10b6:303:20f::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 14:39:43 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:39:43 +0000
Date: Thu, 6 Jun 2024 10:39:41 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 02/65] drm/i915: pass dev_priv explicitly to DPLL_MD
Message-ID: <ZmHKLRxhaBOl-plT@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <98d24284d4ec435c3acae6445943204dfa96617d.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <98d24284d4ec435c3acae6445943204dfa96617d.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR21CA0025.namprd21.prod.outlook.com
 (2603:10b6:a03:114::35) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW4PR11MB6714:EE_
X-MS-Office365-Filtering-Correlation-Id: 7ff45097-9757-4055-8e16-08dc8636813a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?hIDM7zbG7rIBkmINuq3giHYBPq43FbJ5hHeDPk01MKPEsL+M8BKU6x8OmM0C?=
 =?us-ascii?Q?ryohEynBocUC2DbpSQjEDmBxm7RcVQOI/FMOW3QZylP0dieba42bPRVgMsg2?=
 =?us-ascii?Q?yk3WsXsptY7qn9V34KOUCPb0nsylPkNxzJCmCuEjQDrJmJ1RKbPr6WOLdkKn?=
 =?us-ascii?Q?J0X0ABWknSOOFgS+pN5rrnp+pQ+yFIdLv4KJlPDpFhLVjIo1bO2yOr0cRGmd?=
 =?us-ascii?Q?q2BuoJO/bKYFF2DcV+HVLKXUmONPUyO8ufEv9hhGfiwjRwexcFELtnovcndV?=
 =?us-ascii?Q?WGy8Jqz3jzUYqHJr8HKY8yMj2g3dHXE+5HSSKtiLnJcxA+FsGV2tdjY1Zejf?=
 =?us-ascii?Q?Ez3Th8sYg464tzcpcczg98W9MLpnEYbomog1bGeRhpX16RPv45LZkgUdS+ud?=
 =?us-ascii?Q?PqycyoQzM5aNuajC6t2Bomu7IGbfbkcyDLO0Aovfp7AVTDtoIzVtNITurPVD?=
 =?us-ascii?Q?EPztz8ieZeGOn383a4HLFjosYisKRev8L0V4GUe9eL8PzkzCv3eeVsazKDzS?=
 =?us-ascii?Q?FCmnY8DEBFBLcu/eL/KDmZ3GsVrirOIEU4rBhXguUVtThLOJtBRSypgFNlaz?=
 =?us-ascii?Q?nbuU6C4JXZ4vIpGg/gzinAVlxuJqzXNbHDct3BjfdGV8nG2qhj4iUlo1oTVm?=
 =?us-ascii?Q?4IX3ZoxAJt9h0wEQMxUKpMUQzyw/gwWJlY4ZQlLPqinRjq9G/nnKRAPe45VP?=
 =?us-ascii?Q?3SXFuzfI871+NA12WXclxiyci+uZFr6/2bANxudQHN+82054GIsMz1HcXH8a?=
 =?us-ascii?Q?Rg/zF24bG9xPM374UvJa1zLWt321Wo1Vb9HSa7Rn3x+IZ0L1LkC5iWgg1mjZ?=
 =?us-ascii?Q?E3IVQopFkkdLkOcXGXsno2Csbda5AbnVzPHbkvF6bbEEgGBjCDn7B5TP+NnG?=
 =?us-ascii?Q?D1v0nM4hLuNzcRsghgIDLyFB21UJgA0lILjX61r5QVtHmCgPcg2gwhvW+OEC?=
 =?us-ascii?Q?v7BsIOYY/qdAmmw0v1KrTFWeEEFwkgNN/eitpLnXXoqiX5aua/eZpSMkVYe9?=
 =?us-ascii?Q?SCljLhslRheUI9ZYR9iyc9GDb6PqGsCbVVJg3feB6OLdzV2KVj9Vd4Dap21V?=
 =?us-ascii?Q?wNqjgx6Uh9iSordXCVvQIuu1aj6plwD8jw1G5yZusUlyQZB6kRkJW9jEpMm6?=
 =?us-ascii?Q?SSgrAIWleE5Ir5YkTsX0tu6DOhesiU65QjzPK0gvEIN1wCAWBK2AoVsvhAgp?=
 =?us-ascii?Q?e5kxN/IuaKazXUBZyCSk1KeYmRggdbFnizIzwd6CdPrd9wQH0+GKaHae+DTT?=
 =?us-ascii?Q?z486X5B8vveh5/FSNsQ0KTRiIB+4LDvtEXJ/IavrUbLv7VMx9Ieps+Dtor7b?=
 =?us-ascii?Q?5CQmH3ms5fxQ72e3PmkyZ1t8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hHIyZOf7JVK/g2n0LrPcFxzFdNK9KrU8w1JK4aV64yWPqZRFrTDkGxbpE1aD?=
 =?us-ascii?Q?QJ71Vyd9O/0f2sMotPdjSZeaItyDH09o6IO5sUMUu3CQObkTOWj0u/F3EYe3?=
 =?us-ascii?Q?oTXzl4TI4hSJImQG0pYNG5Udgc63YyRPG9wrA1p1606ax2yDhWXB2iXcrXXm?=
 =?us-ascii?Q?lsCziRmct45SXSI7AiK7ZIbScnYFGucptksMy5ii9TRWsuVPX9RuO0Hde0Jr?=
 =?us-ascii?Q?p9DbZ72+2eVKHx/ApurctptOH//ec3GhZQ68kPJf+JZ1CAYHmq12oyng+JQa?=
 =?us-ascii?Q?LkzM4hrwAHbLa1jbn4RfIwXTuaZ5DY9H3V5m/0BxdGg1kqd2zV1nXAI0pGUW?=
 =?us-ascii?Q?yyzjWP2QQ/Pvs63jDp450al4xNt2RaEd01tRPDq0LoBqPeOhHI9BCEMaehSD?=
 =?us-ascii?Q?6cBmnyM1G/p3eBxHZ4K4Tcg/O9OdMvaIcIriRVKVzBLn24xi++B0rlh0F74w?=
 =?us-ascii?Q?XFc7ufsZwmDsG29EJviQ7B7B6MnB58QxrS7C3ZyvpehNdZs1GRT8cUDZ5maf?=
 =?us-ascii?Q?BBfhbsLl2AaEncGjZGoUpCK55+8/pcZCJqiFCM5MmV5FQvF4kPB0cHzEAOcx?=
 =?us-ascii?Q?tXUAlFk2fYadwM+bO1fEm2g9KCRFHVlK7eowoYXAx8Ar6hqUc5QnBMNTD6Xo?=
 =?us-ascii?Q?ZjaDWRd0fFgxBwZ+ppQDAtWEMIBsHIoQfz8oIy0tabQygTfdogS1zqawGNtG?=
 =?us-ascii?Q?zWBjh5wccEN6vlxQoGx88t8LkmkQvr/4HRwg1Mhc7jk2yGL9teGuDwiWjD2m?=
 =?us-ascii?Q?6H/mjYEgmMPZtXcZF1KEPAwNKs5deqYVnkOjfRARWZacvYqYBdHbMygIX2Ns?=
 =?us-ascii?Q?n3l1YN8Oe51XlbkCLfw2qvxTnVsWxeqIVKOcePMKaccamPXcFF1B+Rq2QNAJ?=
 =?us-ascii?Q?MhBlRLppxUqB+QVNFLnmMYIhXFmvoYMabG2nIjUZhY73MHj+9axZpRjsunFJ?=
 =?us-ascii?Q?53cWVeOlb520ar5I1+xCJZAeHvCQgh/OfezuwITjDYhFvVoL+TWEm4lpfuhs?=
 =?us-ascii?Q?eusLkOSsw2idpaZJFfZYJcBqyorGQXTZwmOjW0Cwvqf7ssxgECBfRQLwqbbD?=
 =?us-ascii?Q?yzDcqeC9ClQUuZVJPgEw765O/Kvl5laIMinpPx5UAvV1VnmFbfy5Tcns5D2p?=
 =?us-ascii?Q?1uDSZ+70mkEoWkmtgvDXhO3xA4rPPdyOp1HoRF0uvuKhGTSuVwaS++mvW8IJ?=
 =?us-ascii?Q?ERdJFIvpGy14QN7RVIC/XycusrQ2BpWezx4RDiVIt7XYDG6jdI6TS9TBZv+9?=
 =?us-ascii?Q?fL19KV7C3GWfpnv2nDWN8OC/38KSE6TpNIFD1HVle/2CP4WY2STkeQOBubx4?=
 =?us-ascii?Q?TwNUKj5XPpdwdgaMBtf799IOL+GefnvbGXF3cH9df6hvjeBlCK3iGlVx5VfL?=
 =?us-ascii?Q?A70JvqvosOaVqfiUohqLaJq0ER2be8rHCi1+bS8kjQzFLSLlZAKguBPHTK5I?=
 =?us-ascii?Q?j6nq70Nz5p0ZIjWUKO7cBVPYE0CDrX5ummWgEH9akH+iHpRSPcjcQF+8U7+1?=
 =?us-ascii?Q?1T/xFQn8feiQ3Yvk5fmjeX2NY9veg1h8sB7Ri3Q25a9rPIaIUMX8S9Z6B4Go?=
 =?us-ascii?Q?tIsiPW0PnxavKUlbMkjZK/73ws72yFa2ADJBZ6iG?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7ff45097-9757-4055-8e16-08dc8636813a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 14:39:43.5962 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WWV8GVm7ggr1+iRyF0e2zx+xn6oWg8JVpgPJd6RgPIsGZ1Xve2/JKdH42vCgP/Zxu26Z1ISNaMYi4l520zLCNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6714
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

On Tue, Jun 04, 2024 at 06:25:20PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the DPLL_MD register macro.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dpll.c | 18 +++++++++++-------
>  drivers/gpu/drm/i915/i915_reg.h           |  2 +-
>  2 files changed, 12 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
> index a007ca5208b8..d67d5e2fd570 100644
> --- a/drivers/gpu/drm/i915/display/intel_dpll.c
> +++ b/drivers/gpu/drm/i915/display/intel_dpll.c
> @@ -398,7 +398,8 @@ void i9xx_dpll_get_hw_state(struct intel_crtc *crtc,
>  		if (IS_CHERRYVIEW(dev_priv) && crtc->pipe != PIPE_A)
>  			tmp = dev_priv->display.state.chv_dpll_md[crtc->pipe];
>  		else
> -			tmp = intel_de_read(dev_priv, DPLL_MD(crtc->pipe));
> +			tmp = intel_de_read(dev_priv,
> +					    DPLL_MD(dev_priv, crtc->pipe));
>  
>  		hw_state->dpll_md = tmp;
>  	}
> @@ -1851,7 +1852,8 @@ void i9xx_enable_pll(const struct intel_crtc_state *crtc_state)
>  	udelay(150);
>  
>  	if (DISPLAY_VER(dev_priv) >= 4) {
> -		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
> +		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
> +			       hw_state->dpll_md);
>  	} else {
>  		/* The pixel multiplier can only be updated once the
>  		 * DPLL is enabled and the clocks are stable.
> @@ -2021,8 +2023,8 @@ void vlv_enable_pll(const struct intel_crtc_state *crtc_state)
>  		_vlv_enable_pll(crtc_state);
>  	}
>  
> -	intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
> -	intel_de_posting_read(dev_priv, DPLL_MD(pipe));
> +	intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe), hw_state->dpll_md);
> +	intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
>  }
>  
>  static void chv_prepare_pll(const struct intel_crtc_state *crtc_state)
> @@ -2175,7 +2177,8 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
>  		 * the value from DPLLBMD to either pipe B or C.
>  		 */
>  		intel_de_write(dev_priv, CBR4_VLV, CBR_DPLLBMD_PIPE(pipe));
> -		intel_de_write(dev_priv, DPLL_MD(PIPE_B), hw_state->dpll_md);
> +		intel_de_write(dev_priv, DPLL_MD(dev_priv, PIPE_B),
> +			       hw_state->dpll_md);
>  		intel_de_write(dev_priv, CBR4_VLV, 0);
>  		dev_priv->display.state.chv_dpll_md[pipe] = hw_state->dpll_md;
>  
> @@ -2187,8 +2190,9 @@ void chv_enable_pll(const struct intel_crtc_state *crtc_state)
>  			    (intel_de_read(dev_priv, DPLL(dev_priv, PIPE_B)) &
>  			     DPLL_VGA_MODE_DIS) == 0);
>  	} else {
> -		intel_de_write(dev_priv, DPLL_MD(pipe), hw_state->dpll_md);
> -		intel_de_posting_read(dev_priv, DPLL_MD(pipe));
> +		intel_de_write(dev_priv, DPLL_MD(dev_priv, pipe),
> +			       hw_state->dpll_md);
> +		intel_de_posting_read(dev_priv, DPLL_MD(dev_priv, pipe));
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8ff04bb19cbe..ea8181abf7fd 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -768,7 +768,7 @@
>  #define _DPLL_A_MD		0x601c
>  #define _DPLL_B_MD		0x6020
>  #define _CHV_DPLL_C_MD		0x603c
> -#define DPLL_MD(pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
> +#define DPLL_MD(dev_priv, pipe)		_MMIO_BASE_PIPE3(DISPLAY_MMIO_BASE(dev_priv), \
>  						 (pipe), _DPLL_A_MD, _DPLL_B_MD, _CHV_DPLL_C_MD)
>  
>  /*
> -- 
> 2.39.2
> 
