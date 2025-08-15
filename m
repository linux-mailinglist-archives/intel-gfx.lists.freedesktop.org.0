Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C523B2831F
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Aug 2025 17:43:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A72B10E122;
	Fri, 15 Aug 2025 15:43:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IxOk7za2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5674A10E068;
 Fri, 15 Aug 2025 15:43:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755272599; x=1786808599;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Hb72BAv5K1jERJ5AT4ZsUT6otmxOEmib5E6K/tbLxvw=;
 b=IxOk7za2nBp/XB7DhDnEJbY/AiktMvD7zBjarLzPmCocTdn0JeU6pNpn
 qBBPyPmOW6SYJ0j1vfQyDxrEHyWYxBUhuDP4sKrA4aqdedeIdqKkQMKZC
 sBgD2NjQIZlLtPi/OYiG9mfE6ON+Tw43hJbhBvhIOFelKFG3K2ind3/zT
 HPA4C2W8ALbm79MT/INUxTRNJ+lEsiDq3zxz8qwLuTSsKGPu3EsFbj++Q
 z5YREsKye7mxfWk9d9IkeCWKOOgXrh5+RwnipyCzb39k6QKgUFCJL4qgD
 BPGmj6nnsRIS+Reg1RVk5GMDjUH9/Ov+wf6fWkokV9H8OSrk5qC8a1bq6 Q==;
X-CSE-ConnectionGUID: lB5EyxhGRnKKIncN8RU5gA==
X-CSE-MsgGUID: 5OUlNhcsRnqk8jjVBiM42A==
X-IronPort-AV: E=McAfee;i="6800,10657,11523"; a="45167279"
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="45167279"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 08:43:10 -0700
X-CSE-ConnectionGUID: wiPy+ipUQ1W2xUa9XaS32Q==
X-CSE-MsgGUID: m/XCRerIR5GMcqvab5yWZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,290,1747724400"; d="scan'208";a="171166524"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Aug 2025 08:43:10 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 15 Aug 2025 08:43:10 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Fri, 15 Aug 2025 08:43:10 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.64) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Fri, 15 Aug 2025 08:43:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W1NO5cWbnFlrOeKbPSwatcsxiOTV2+v7JrssNuAK5k+6CaSjmnrwqe2CySI1UunWbp7ukOB8acezsJ/3CRruGovWgmu6zlx2G5x7Uki8tCIolZXZPVV0uKZmv2rT30gtBONUNnZZEdCotLRf2G7PoYak3ra3Z1Gt8IWGi9oGxSc5eYLEB9Wah4FGTkKmw3dP7KsW/TPdH5jyyTWsRx+pJcDklxvAM3Z5g+nF9zrSc15697EFhE4GfPoBnl7PozttJyojzvmWYrTgI72MrCwqb+ZdacuhewHV4jGux2zAdEu+K7lGZnynpqqC4u0t5PNYSjGbpuklLZIV4+IE0T7qeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y+jqWruJoFfa4w32KAVQE+rZrS0so9khbJsNQJt1O2c=;
 b=dh29nqOtu1mJN24afGxU0ISLLBujc++1pOqH78b3eQ1WMMlzyZPx05CqbzeATyeFv/ZJ0ryJfVFxeVPAKDH4J1/1itFDhfDXXqDGLPdD9DuJ58wnhsfeTMzDflPicxD1GXj8evsrpEmHJGLSrRcf6BfV1mLkFihPKtEcLtBQbOZIlcA50yjvuIL7AoFE+IVnqRJENg1BUUGjB9Sl2YubtDyOzDWsTPleMx2brrmZTgeA7MkkVKO9AOlIzCHzZvf+5MTZ8tAtdJwA5wW54Jm50G/OLyRZsDuMAZ4Jq6uIEnAmEq5nz08HwuTMTNUXiln0zPvlHd7sdLMD0trKalBdwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8427.namprd11.prod.outlook.com (2603:10b6:806:373::19)
 by CO1PR11MB4915.namprd11.prod.outlook.com (2603:10b6:303:93::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.19; Fri, 15 Aug
 2025 15:43:07 +0000
Received: from SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::b156:b61b:d462:b781]) by SA1PR11MB8427.namprd11.prod.outlook.com
 ([fe80::b156:b61b:d462:b781%6]) with mapi id 15.20.9031.014; Fri, 15 Aug 2025
 15:43:07 +0000
Date: Fri, 15 Aug 2025 11:43:03 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 4/5] drm/i915/dram: bypass fsb/mem freq detection on dg2
 and no display
Message-ID: <aJ9Vh-HF-vz2vU1e@intel.com>
References: <cover.1753971617.git.jani.nikula@intel.com>
 <aa7b14eff92750fa1ddf878ac0f4e90c87b8d3d2.1753971617.git.jani.nikula@intel.com>
 <aJKEoYy1qiyaHa16@intel.com>
 <d18558149f62c87be70d183b6f41d11e0092cf4a@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d18558149f62c87be70d183b6f41d11e0092cf4a@intel.com>
X-ClientProxiedBy: BYAPR21CA0009.namprd21.prod.outlook.com
 (2603:10b6:a03:114::19) To SA1PR11MB8427.namprd11.prod.outlook.com
 (2603:10b6:806:373::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8427:EE_|CO1PR11MB4915:EE_
X-MS-Office365-Filtering-Correlation-Id: 80942079-b9ec-46ed-54a5-08dddc126dda
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mOC0jTgwNDnpPoRaCjQi/r2+ujaUrxiACwc61gFSrYtIanf6g5PuoqATo31+?=
 =?us-ascii?Q?+aJlUbmdp/qd/Ke2Hp/fnv0HThRoEXmJnGc+Ugr4S/Xl/cYzTwH+dNMuszL5?=
 =?us-ascii?Q?eb+myDfhaG9HVMCfuQdaEyqBcDOQMOJ+ekzRFyRyd1YP7q9sksHrTGv4Gp1y?=
 =?us-ascii?Q?cSBat1rfNvc17KA0wWATrkbEAJhRoCSMecUaCAJ/aNCvX6N5rKCEBRhDnOSO?=
 =?us-ascii?Q?fPHUR3C5WO59HGzo9s6zzw6sGgiINQniajOjou6Q8n8NOQXlyeFc+b/S62Ab?=
 =?us-ascii?Q?afzEPkqeXhkMBEaB79LtnA/dbZQRpkGOLlRToICjENKeMLjT6aNWMZL/A2uA?=
 =?us-ascii?Q?6MWxpHPfqyNkEHBDBKd56x9spSbEsmGKZr+xMpwAC64+nUC2frcQcnGO9Bhi?=
 =?us-ascii?Q?SepPn1ClvPR/nusP2gyapzhnJrSbQ/N6MsfupPc6IxFXyduD+rDajVj/c1LM?=
 =?us-ascii?Q?EihwnpGYBlpV8HfrwpbfQgcdWY04RX82awJh9pE9IXn38gKeIgm86vhSfQdU?=
 =?us-ascii?Q?y3TO8AwHYJNKzNDTCVpRN3Krq7wVnX31tKK+JL0Hr5cb/PHBD67JCrZjd2X5?=
 =?us-ascii?Q?pg2ybYv300rhPa5VpR1HKgyCf05/UbuCO4TKzZVjMxFXQWKZZ/w0fhrAQTHw?=
 =?us-ascii?Q?mmZmGWXiYVmveV1PPgNEfzqryP/gqEh4HdufB64XQ1wLKihcjdw0TvX4uf5x?=
 =?us-ascii?Q?6sfQxA/nc7Rfhg8SXBRG/N45av+MrkH1+ojQ0ea19KPJIEGEnVxg/YRuPW+E?=
 =?us-ascii?Q?PCV2jOuxBWvJb2GQPLqJpPHiQT/X0S00JYmfqsUPfUAMNkZOS37y1SMYBWa4?=
 =?us-ascii?Q?lcXQ7E1TVoJ1CnxP+VfFkPiA+2Bbj1wB78rPGCQU+87dvVV+CY52e5OH6gXt?=
 =?us-ascii?Q?LkO3q25iheyfdRldUes1M9tg0lccDjF0uycecJomYlw223G6MP8VZPkc+LT0?=
 =?us-ascii?Q?rGVWwjBHEnodc4+WN60ShHxc1PcLEJ0ysQPJ0OPn5p+3LoZLXiYhTeiwIBfq?=
 =?us-ascii?Q?xaai2x9po0GvX47criF4L1YVBSwJG5dZKLzpZPhAMCx62kOXkEwljczZmF19?=
 =?us-ascii?Q?vuXk/L0IJm81fu03KMmt6DZjA1oQgPnkvW6ZQLKZER6t4JGJogGPLuRfzs+b?=
 =?us-ascii?Q?HK+ObLRgNGiLdjIIhEakkOPm8aok1jQhBx1pWWphy8PDZXpt7cV1tTo8ZO69?=
 =?us-ascii?Q?w9DVb4lXxiux2dalrBgFvFzxaOE0ry3s+RSEX9DhWfURlXETJGXhvpWgWQph?=
 =?us-ascii?Q?dFW9eibaPofxHPCChSU5LH9zd4DNfWj9RO4z+tDbFN1r6q7CuebtjsBUE6HI?=
 =?us-ascii?Q?By9xktSVDvD+F20BCZuVw0S4YRt3vNucQ/8r7oPOxk8ar3Wmmx55i1XcxLPz?=
 =?us-ascii?Q?Xcbq0jfwT/MHRnasLOTg7wxVcbZC0Alyypy2p6DWQX5Tfh93ZQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8427.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?6G2VAwyCHCH2lTEZxkPUw/wlwc2og7CGgtA/43tPJbjqZjggQuxb2+oqqPdn?=
 =?us-ascii?Q?BbuG8m4Ypub8UTumtIipNKlhqajw+AzDBBqi8wyUqD1EnnLcJUmCYEbFz7Gh?=
 =?us-ascii?Q?WwckEHLcB3Y//EzzCZiHTO+IpTvnJMzRwFmhRxYvjv2zGabK3qs1nX0dqyZn?=
 =?us-ascii?Q?qmTOODgy4xNRi54Ans7ENTZhBZo6oWaxCp09E9TqE8fO/Lg6Lxtr0sHCPch4?=
 =?us-ascii?Q?3NwIBonjzn5JKBImxIWkxog7XAsKQJJh/iSgjo/a7etoksHQqyoLIrFiANTE?=
 =?us-ascii?Q?BufNH0Uux1brBvdUqJjSx16rLx+lx+Ojtj1BJHPgL23HYyGSfteu3QxrSpf2?=
 =?us-ascii?Q?oerII/Z2aCWIYPGWsFa9ijLuMZAaJtYdVWXiSGKYz7oEDw3DhtvECat+REaB?=
 =?us-ascii?Q?TsC4nu7dIJuxgqduuUiEr+57NVNmABk+ZSD61eP1HEXXdDa4vgSBlTvgaVLK?=
 =?us-ascii?Q?DiKnK72SmstQf0OmZ05NFJFp9rGXuMN/Xb/ffGLsQ+H/cwksnFScebP3Psuj?=
 =?us-ascii?Q?hHvAC9RKrFQFzLVIYGBMClsL8eDqUkL+Lul+pB9a2nW8V/a2TM8mxr0XxdME?=
 =?us-ascii?Q?Ee+IpD7r0AV/V7kO3JQjfP0KJnwy3y8XDHZsGZ2g9ZOmcn5GBfe11OS2NCKe?=
 =?us-ascii?Q?xHvqayctEVeIKuBDSoQvOxzuTwpCm0BwO7JIkOwqs8AAlrJiAD1erh+zI0Hv?=
 =?us-ascii?Q?iGgh3ln9+lxcFcYequzyohhsz7n3Aark7avKO5RvoPa0UYGwqlU+UFjne1dU?=
 =?us-ascii?Q?GRZqvnE+jNnbuqIXneevBPqvgdV6vSxvK5Tb/seFrr3QefdI/40AceAI0j9q?=
 =?us-ascii?Q?IgdTZJnzVTxZWWcO0X2p6QcbpzHE14adFPI9hXQzt/WyXDqJP7Qormowe5Sx?=
 =?us-ascii?Q?UZDeDEEgGgkyblw5YKDLj+yS2RoXsDfevWRPlqMLtj4DqyC0QDDTpRWeAhOT?=
 =?us-ascii?Q?NdAbUgR1nHKjabzlolyUE5VLMEG5i0TZ6D3SuzummZ0iyFFQ3atNr2zJWCxK?=
 =?us-ascii?Q?7ItWi4jwRpumBJsl6yBvXOC2p4N5rObUpGc/Ko01nYl7KYBacdgcXsw76OUl?=
 =?us-ascii?Q?FjF9Yo6019kNLXmUk/TjyJ02zYaCxeNJ1RTPzcFgY4DhhoiyOlwtrgo6Hz17?=
 =?us-ascii?Q?LeKKslBwYXpobUDR1AA2kOnbgVZHYLvKETkRgY8E8Ur4JjvCQZZKSuXhnQ2M?=
 =?us-ascii?Q?0pKIFZ4hue0S/9DQGFe3K5/bsZI1b5nJ+KV9lcjCBdRJYWosSFWeRhAsVWI9?=
 =?us-ascii?Q?wFMGdx81QfJpZKQusRr2yjBsDqOiyKx26TMari+VEgwqCPjY32qYjV2eeHS9?=
 =?us-ascii?Q?MNinlMsNzRcZycFTa+M+McsF0YWYykZk41u8dgAyD3goGnrldvrFhTvU0O7f?=
 =?us-ascii?Q?PRPgiP2iqk8hWeXNmJ+hfbzuCpYhGt4SQfOJ3LgAd/YhhPdVeWphXyWG6kiX?=
 =?us-ascii?Q?BHqMZq4dyC7T/aLejcYWAlSr+XJMMNnQ773+AskPk5sfcBDU8IKkymohNq3g?=
 =?us-ascii?Q?CpwQYobOJWiFFdSCGhfLVpLVvwXZz46mhX80plajSItty/7wb26PjyJ/STD5?=
 =?us-ascii?Q?xO8Mw4NwnpwFRm/Fyjef9VzOfqGK4e/VXF6Np2sW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 80942079-b9ec-46ed-54a5-08dddc126dda
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8427.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Aug 2025 15:43:06.9695 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GSeXlQ+xLKq0zUe56C059fcYO8rXDVC+P2vqk6D2tRRAxrcki1ZYOdo8y/HuGbEnQAFIrdwvGyr/V48GGesSyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4915
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

On Wed, Aug 06, 2025 at 04:52:06PM +0300, Jani Nikula wrote:
> On Tue, 05 Aug 2025, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > On Thu, Jul 31, 2025 at 05:21:24PM +0300, Jani Nikula wrote:
> >> Non-display now calls the intel_fsb_freq() and intel_mem_freq()
> >> functions, so we don't have to have the frequencies initialized for dg2
> >> or non-display cases.
> 
> Is this enough amendmend for the commit message:
> 
> """
> This is in preparation for unifying the pre-gen9 handling in dram info.
> 
> DG2 remains a special case as described in commit 5eb6bf0b44e7
> ("drm/i915/dg2: Don't read DRAM info").
> """
> 
> Or do you want more?

this is great, with that

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> BR,
> Jani.
> 
> >> 
> >> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/soc/intel_dram.c | 5 ++++-
> >>  1 file changed, 4 insertions(+), 1 deletion(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> >> index 193e7f71a356..d896fb67270f 100644
> >> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> >> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> >> @@ -725,10 +725,13 @@ int intel_dram_detect(struct drm_i915_private *i915)
> >>  	struct dram_info *dram_info;
> >>  	int ret;
> >>  
> >> +	if (IS_DG2(i915) || !HAS_DISPLAY(i915))
> >> +		return 0;
> >> +
> >>  	detect_fsb_freq(i915);
> >>  	detect_mem_freq(i915);
> >
> > but they will only be set to zero no? do we really need to avoid it?
> > if so, perhaps make this change earlier?
> >
> > Also I wonder what's special in DG2, but not in BMG...
> >
> >>  
> >> -	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
> >> +	if (GRAPHICS_VER(i915) < 9)
> >
> > what about the old gen remaining here? at least deserves a comment on why
> > it needs the upper calls, but not the call bellow? or should the upper
> > calls be in another function/flow?
> >
> >>  		return 0;
> >>  
> >>  	dram_info = drmm_kzalloc(&i915->drm, sizeof(*dram_info), GFP_KERNEL);
> >> -- 
> >> 2.39.5
> >> 
> 
> -- 
> Jani Nikula, Intel
