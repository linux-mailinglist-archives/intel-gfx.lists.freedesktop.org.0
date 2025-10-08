Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C3DBC33FD
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 05:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42E3510E743;
	Wed,  8 Oct 2025 03:47:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ioxkyRXs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155C210E08F;
 Wed,  8 Oct 2025 03:47:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759895259; x=1791431259;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=cjypZVg3lJTQevXLUY3eVlK5UwUoKV7chSKbnAnvdDI=;
 b=ioxkyRXs1Iu/4BKeuF596wTS4rsrphXTjaIytvDYrduPi+F4mZYCUEeF
 /CKyHUbA51INrkvWlLHYCNFbLI/UcoKiX1FH2JltCmVp/ocOOHVSVKHTu
 G/dyW91tzqLRcWH7OjbIAJNkEVrxoYsfsg6N0KSywc1LBVuinJvG+7f3A
 cZR5qljRuDANJePbUWl2jGbuqgsILJJ+oQ9UttjcCP5r/rYD0RfTnGKOx
 RqmH+TBLdV5lqhCOqB4Na331Mhn1jmpkPLH6Zzne/OVwT3fvNHYRt8Qj8
 VdkGVVQ/rDJ867j8ZSnwpgeC6deeNSxVAEVynBeDDVwCFuSyKdvUTEUBB Q==;
X-CSE-ConnectionGUID: YCvnBqppTsG8hGBxVR+YMA==
X-CSE-MsgGUID: qfjCQ+D7Rp2v1U7dCXKzVQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="62245828"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="62245828"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 20:47:38 -0700
X-CSE-ConnectionGUID: 9G8b7JRmQqOUzhfNEPlyOQ==
X-CSE-MsgGUID: 2AufA/GGT/OzvWURFI8zUg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="184606313"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 20:47:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 20:47:37 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 20:47:37 -0700
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.22) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 20:47:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vTBdt7I5lE78YcbOODzlWZyd7cKbNE7H+AEfY28MUQ1nylsUAzQ+8JiY2CeaWgHvKdmSBsqaH19N8ZudJFEjXYDVLnXDD8CoYd3TeZPG3aPN0+lOqtQJq8gLnvw+VwMQHjcRZcbNlXD3+rz5d6SBVySPLkgkpfa6KuOEFVnf4UDPViGCUzqFYpk0fdwL9RX/jG3RGMSW2xMt78aui/YhdBbZN3fyBxFcgtQqqcsvgwG5f/iS4H8ubGTtYGIaa99h+nwhuTR2ODwRCcAdm/3ze1EFB7tcxMM7Z/BfMItk/THwFNPSxqAuy+pYKMJNMDgxm+GLoWvBoJOOGwF20/rjbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qdJGD3ezfTyFABynNku7SscOgLOl4y4b5ol6Tvhub6c=;
 b=GI+L+F3XHDzrtN0wdzZ6Y3jGMNJujWSjLjchXfHPJYGp7YgmJU80m3pq7He75U8pWXp3I3uA36pLA2wju7LrVXpdKelrPbeOXIF8N2Q7MfxlC4DGjBnk5JwzJPlQvNosnO/QIpO/CkRvQakVq6+QRgZ5a6idkjd5zpLuGouliu9JGBFv+QWTLWCV95Fd+jXbo5Cb1cS7gnczdeNabZEJyJbdsBACPFgQlAw+1xyX7Y51BlUZwTMqrthDlizmTJq00HI0OQYMDnL7KqcjGHnjO8oENJ70uWs4VZCDTK2elhPg274wffPsmcFc9lrZkb3RzweG2aMZhWs+2XFda4oZlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DS0PR11MB7190.namprd11.prod.outlook.com (2603:10b6:8:132::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 03:47:26 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.9182.017; Wed, 8 Oct 2025
 03:47:26 +0000
Date: Tue, 7 Oct 2025 22:47:23 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <kunal1.joshi@intel.com>, <jani.saarinen@intel.com>, <jani.nikula@intel.com>, 
 <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3] drm/i915/fbc: update the impacted platforms in
 wa_22014263786
Message-ID: <ghn5ilu25sfqdqkvialbk5czflejx365nb2kqp4lohrjxm77az@ob6jocamv4ji>
References: <20251007214317.875781-1-vinod.govindapillai@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <20251007214317.875781-1-vinod.govindapillai@intel.com>
X-ClientProxiedBy: SJ0PR13CA0226.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::21) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|DS0PR11MB7190:EE_
X-MS-Office365-Filtering-Correlation-Id: 475d3b6f-f473-4224-31c1-08de061d6567
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YGxBey6Zlr3eOi+yMdcQV4pVg9OYuucXzbXDFMXNqSaB8Dekb5wJL7J+64c8?=
 =?us-ascii?Q?mpcoYIdXcOCRJkfG7IXwvPh3L7h0c6lvlPO1T+vjJUc9xFiOAGCcUGCq+atN?=
 =?us-ascii?Q?4oWyEWA6ysf0GDxEe4u914e66srfXmf5+lBkuVGxXC5ZkJhhcQF7xbePj774?=
 =?us-ascii?Q?jQveMWCzUvcsc+EHH9U2wgli+IFFEqOn0JrfbKB0iHsf2qx5IeOrMz0bf83M?=
 =?us-ascii?Q?kJHJJZjT630QawkNLQYbsh7hv0bctkb7PcStihaXPpWcTyjfxPjmDIHrsfsO?=
 =?us-ascii?Q?Qzj9Obn6Wurgzi4gIiWMqZyYHQU7JDkKvNzZFiLysRNkcs1ZGvQKVlnG8R02?=
 =?us-ascii?Q?0X9kdKwoCve0Wvk7a+Jnbz0miFjEsjCs+I+hHPTOGpdcjyehz6fdW9Mram0+?=
 =?us-ascii?Q?493Jv7dmTZ5nPyJ4cRQD+E+t+QRkUB7If0M+o+0LKrbtEBQ5bmIR94upof+q?=
 =?us-ascii?Q?K443sxVTUWvNg3KEyg3xX2AU6CoznSYLxJ8RlZug9n1gk6qOcbzVs9FauS7Z?=
 =?us-ascii?Q?5TjnbOMrYCgv1SXCkM/YIQMgh9Zt3VfUyDWSJQSCkH5HR8eR/E6FlBO19QmO?=
 =?us-ascii?Q?sFFsKylDVbEUnyMGTwC5XD5Cc3ejPKtpR9dwRwq8UmTYoFL+U0yMGdjocYRA?=
 =?us-ascii?Q?k1yPTuCDnDbzPCEx2Px2h4mHNG5vz6G8LRYjEpk5J08pCMBjpdZfB/Zb+mz/?=
 =?us-ascii?Q?jLtqV84XOTFx9SBmfgU0ZWs8+DbCJbY6P6A2WqHLtCSdRMfwNLxtwZ1Q6nbb?=
 =?us-ascii?Q?2Pu64oDLuqfZPkHjeKiE+BAerMzKgjpyBbHPIUeKuBPR8zTyB85BStHNmlq9?=
 =?us-ascii?Q?aJjtG35kqnEiLxpx1mAHKo8zFXzUpAIJfvRTxL6tGwkKPXhWcsI1u6wNZ2dN?=
 =?us-ascii?Q?BWrq+BQKyWJab8xiw7NRjtaN4uAcxi1RlcqindhMkczTVE/4Kj3tarHQAdim?=
 =?us-ascii?Q?mX+2M1wZNSSYuoIbNNrnGu2vnYLdv2A2b0vmwpM0u7arXKXUsUgpBb3MzDTE?=
 =?us-ascii?Q?hbWr8aEwLEYDf4kdmux+eBPicXSDlHB8mdijVbf7UqehguifKPN2yPTy1UoS?=
 =?us-ascii?Q?F1m5tR2by335L3Y0Okii88pvayN8YGV8tPaT3MyQDwXrUVyIKixIDS6G60Hz?=
 =?us-ascii?Q?BNSROCnYMLEgFSrB14d0kTq1U12UuUKOxnogTvf/kkJFwirCiLh7H3HIcXTJ?=
 =?us-ascii?Q?pYyiyyYkrc6Cg+6Apu+tuY8XC72BjY10kU2Nq2jtY2xAuy+96ePAi6LA0xgr?=
 =?us-ascii?Q?vLlVyB1DD1hyEyScku9ifPX2HC9XlgsGXXa0mu2f9shIYxEpYuWnj6kz7dls?=
 =?us-ascii?Q?l9tG7LqkPMBmNKGP/IrGhHnPMeaw+fS7BXg1wWh6KzsVADzq+gxLH4BWU5cs?=
 =?us-ascii?Q?xaS6i6aLh4IUN20JK3jNwL4YFjTCv20VKGqCjAwCojGCH526yk3WKWRWN0Yq?=
 =?us-ascii?Q?X8khCKrxEWKj/ZhnVpDP35N2TXnkPzcQ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Upq/x4SsoXOmHLxG+lmrwliYsPDoMSaQX3UE3MPG9yAvDQB3Mz1t6ppZosGT?=
 =?us-ascii?Q?pcc+dEaIW+RQ3BrkMN6lK0BplslWsqpNtx6bMiE280j6sLtKiTIRaW3tMj/8?=
 =?us-ascii?Q?dkX2wQInVLdF927k0csQYfJUfcT9eqwvAe17q/I5GQE1ej94byVcnaXReTLF?=
 =?us-ascii?Q?ODTpiaZrtyBRnM6PA013IAoR1mfZTnBmZFA9ENqN15CTZQeZuHYj5XG1CwRc?=
 =?us-ascii?Q?J2i4YsP/wWZVZix+7cM6/7DDC0kiHDwbDdhEESSeoL40Wt5Cm6xzoVikETGn?=
 =?us-ascii?Q?nVNmW0Qig80gIWyYbvmGWx2reRh1bJsQnCQR3bgeoipjhcMfA3vd+cOdy0R2?=
 =?us-ascii?Q?IxeY4By8uN8u7QYN7SLpvR+G9c3e8RoZQTMupq1sUKQOt5htNihAazqMs51y?=
 =?us-ascii?Q?auNbvpJdnIZaQCptCbVh8Me9rE6wRhokrdpCYTgyGSfXAFcbJGgHsfFxFHUo?=
 =?us-ascii?Q?GSCCy/R0RzyDWBCyVIY/yZiEaybBA8y9OtNpBRrqw9v22/Cm1a7BBiWakCNx?=
 =?us-ascii?Q?Y0yg79SONYovMUY4qTNFLZq4eGwDumqMAlzEYYnNnN4mTbBGWYPmn50ZGXZL?=
 =?us-ascii?Q?Fb7xU1l4fPCrLSlLxQyHHydj41wWt83YoyCP+4gtuA3xzeEOJrilSEDaUJHl?=
 =?us-ascii?Q?KQJ3QFOdWD1f7UmdUpfKAHOVdbZLrVe3k5Y3HjCv7ywrXCoIqEWG+OHkMXhR?=
 =?us-ascii?Q?BVwuOpBhoH+L0qkrwM4bwSZCfTD9+18iKjhP+eQnpOsyR61AC5ddTyfk2iN4?=
 =?us-ascii?Q?sIniSnvXPM4mODUJgHglfQy7QbjSIJ68s2RNJ91FUaBvmIehNQ7hVYcCWYKn?=
 =?us-ascii?Q?WTEgfY/MjTol38nNlfOMltA5fzQQkcfbOTVu4UTg4z3klGFuq20hmdqadfM+?=
 =?us-ascii?Q?2HNTP7DNiMGkDMjCZtr5is5wntTfc4vMuq5FZQnuT1m2pBDhabkLJSism8aX?=
 =?us-ascii?Q?bWpNlLd6jcqJcfn+HnoK5vpiXSyCc+pXmebdmZtAT8hByn4veYhnYFdlxq75?=
 =?us-ascii?Q?+C0l80GehC2UyaQxXThEgE3sGiJk+0AIajBW8autlv5ehDJRj2I/GS6FjLhy?=
 =?us-ascii?Q?EiC+mKj3ssrYIew0TSPV+LBiEMSP4NCHjPcAqzv/Ot+oEwO8qFJQ0g5qt8KJ?=
 =?us-ascii?Q?mxOYnZlEaAGaMs9FcB0LmNtWGATGwjDBtSk5cJl3BsCWo1uvDilIrZs939aJ?=
 =?us-ascii?Q?tvgUEJm1H+TFiRUt8bpM9lzoJlpGtFeW9ZrVqkA3bs53WELBHODfaZK7QPc1?=
 =?us-ascii?Q?NSPqcCcCW7Vcl8CqdCFQrHpxBm8+YrQmVCsdX0a0HfVIIT8zT73I9iPyO4Pa?=
 =?us-ascii?Q?C/zdAIg9aX/XpD0tFVKI1SQcH7DCG6ExYiDhpt1gL97+36ff83Co2h3lGfw8?=
 =?us-ascii?Q?NNlbkzIoynGTclEfIuf0dtOIpnvajGweAeGqcOHQlnNpmjCtjx6PcRPLZRMM?=
 =?us-ascii?Q?0stB/tapnf9Cpruq7Gpr8WjQfDtquipPfpFStPej+jZkF/IHOhT3mb1AmD1Z?=
 =?us-ascii?Q?s/736CAjsfm81b3lP61Di8I/rl/odm7ahc6azyBFq65Rcae9l2tqy5Bwh0XR?=
 =?us-ascii?Q?Td2qqv4PiPTubffSABUOjUhLAJqICd2MGNrW6da3beWG6u9gdsfDkgbuLaXH?=
 =?us-ascii?Q?CQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 475d3b6f-f473-4224-31c1-08de061d6567
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 03:47:25.9770 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q6NeTVzQ8F8k9v6uK4uibyH5AXU9S3mdGWbxnW3fN8HWFHRmD6LhugYukAq0T/KrBB1gDklmaDRRAaSE7gtYnBKCGoCHMDLsN3xbyS+3hsQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7190
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

On Wed, Oct 08, 2025 at 12:43:17AM +0300, Vinod Govindapillai wrote:
>wa_22014263786 is not applicable to the BMG and hence exclude it
>from the wa.
>
>v2: Limit this wa to display verion 11 to 14, drop DG2 from the
>    exclusion list, use intel_display_wa (Lucas)
>
>v3: simplify the wa handling loop (Jani)
>    Description of wa moved to place where wa is applied (Ville)
>
>Bspec: 74212, 66624
>Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_wa.c | 2 ++
> drivers/gpu/drm/i915/display/intel_display_wa.h | 1 +
> drivers/gpu/drm/i915/display/intel_fbc.c        | 9 ++++++---
> 3 files changed, 9 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.c b/drivers/gpu/drm/i915/display/intel_display_wa.c
>index 31cd2c9cd488..c528aaa679ca 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.c
>@@ -67,6 +67,8 @@ bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa,
> 		return intel_display_needs_wa_16025573575(display);
> 	case INTEL_DISPLAY_WA_14011503117:
> 		return DISPLAY_VER(display) == 13;
>+	case INTEL_DISPLAY_WA_22014263786:
>+		return IS_DISPLAY_VERx100(display, 1100, 1400);
> 	default:
> 		drm_WARN(display->drm, 1, "Missing Wa number: %s\n", name);
> 		break;
>diff --git a/drivers/gpu/drm/i915/display/intel_display_wa.h b/drivers/gpu/drm/i915/display/intel_display_wa.h
>index abc1df83f066..3644e8e2b724 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_wa.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_wa.h
>@@ -25,6 +25,7 @@ enum intel_display_wa {
> 	INTEL_DISPLAY_WA_16023588340,
> 	INTEL_DISPLAY_WA_16025573575,
> 	INTEL_DISPLAY_WA_14011503117,
>+	INTEL_DISPLAY_WA_22014263786,
> };
>
> bool __intel_display_wa(struct intel_display *display, enum intel_display_wa wa, const char *name);
>diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
>index 4edb4342833e..24473e6b10de 100644
>--- a/drivers/gpu/drm/i915/display/intel_fbc.c
>+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
>@@ -928,9 +928,12 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
> 	if (IS_DISPLAY_VER(display, 11, 12))
> 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
> 			     0, DPFC_CHICKEN_COMP_DUMMY_PIXEL);
>-
>-	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
>-	if (DISPLAY_VER(display) >= 11 && !display->platform.dg2)
>+	/*
>+	 * Wa_22014263786: icl,jsl,tgl,dg1,rkl,adls,adlp,mtl

please drop this platform line. It's not going to be updated and will
just be wrong info. With that,  Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

>+	 * Fixes: Screen flicker with FBC and Package C state enabled
>+	 * Workaround: Forced SLB invalidation before start of new frame.
>+	 */
>+	if (intel_display_wa(display, 22014263786))
> 		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
> 			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
>
>-- 
>2.43.0
>
