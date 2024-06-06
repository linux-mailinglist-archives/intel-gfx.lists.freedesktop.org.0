Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C668FF18A
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:05:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F87910E9EA;
	Thu,  6 Jun 2024 16:05:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lkYnEBkM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 63FF610E9EA
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:05:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717689935; x=1749225935;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=UktAqrHpNqbbiioFRkuVDn6/MgoK6hsGIdsku+VTlLU=;
 b=lkYnEBkM+bBa6B0AL6l6flrpm3w4dBfy6+XOoq6RDH5Cl0NUcwB98DoI
 s/nVb0mYLpCOyPv3ZJMzoznRWdUxSWKkL3HioBj+28usvMZKUVbBf1wO0
 kuVeeI/dLphqL6F0M0OJ88k3kL0n8ogtUm56gcw8eEP0+h6e0ThWFbSvp
 cWgwTYq5vvFWycqrydGnm6dI+/Dp3b6uYROuysxl7WI+NL1/wD8z1jWSp
 3+CxIW/SRZP5iAT1FMKJ5rNF/wFxcjaXjobj6xGHZcfYasvtSI1twQUne
 VD5i0HzIIj6rZpSPJsrfs0E+QZuiGBsI5cKr7+oKYFwl6ZRrgenZ8c7Dr Q==;
X-CSE-ConnectionGUID: HTTZ16M7SYiSK6RRtn5RfQ==
X-CSE-MsgGUID: Twp44JAQStOqzt9a81bR6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18199160"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18199160"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:05:35 -0700
X-CSE-ConnectionGUID: BsTw07BrRkyRNbZiwehghw==
X-CSE-MsgGUID: HOqbi4l3SEa2yUKIPX2tlQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38138566"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:05:34 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:34 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:05:34 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:05:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hvvZo9LwEVPFbrZ92ldwYLcZnacmB3HTK/jm4hi+OPDTTRJ0aXUc7A2gDZH5DQ/1fJC1blHo9RU8/17spm0KHJm5xutpyTgYW3hTF83V4UtjQvYB5N/XFysMrq0YGxyJEqVKqFDISsg+u2tTcc8k+VtoUn48RoZxkBu0GTjwEDx5JVRTVSEI0K09STk+xlTv07xx7pGscWF+OFA8Lwv2XFOIbcckVI+U6C7BK6E6rpU4mUkI26MkNsUvIofRiZ4Yj317dzRe4WKzsEwuvVs9+vxIzsTG2FG3upWYx5tF6ZPVQ1jhvB8yR3gWxQ7n3eIvhT0w+lATw+k5u1jkz9FIYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ij4nktcR4Vxvjb438h+WzFV3+C8VF+KcffmaoMDTBok=;
 b=TaqVULMcuFJLh7EwECVaa1X32ofAiBMt7OFHEFODsi6aRqkd5ct/woFRqyL+nXRRVYbqNv1XESCJkvMiasgwVx5PU02pelTVvnQshGFlrvFYQDdfBy6LlBU1DFEnBEz+qERjGYBkUSAfN1ClbNw260B6GHoVfCe+0qRdwVaj8B3f9LbZklM+bfHwAxHUqISqcr0X0xRPhpTCJTmoUI8fA8pnARNdhYcen7IrAvr8LpkpUzz54Biheme8jAzWzErFsAHOInJPUpsZTAfEF+qXr7XrUE23lsgycVs6qWDs/6ZKW0YDiDUBpoiuw2SZGBzBXNcHeQKytWIgVSlYGl7AYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CO1PR11MB5172.namprd11.prod.outlook.com (2603:10b6:303:6c::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 16:05:31 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:05:31 +0000
Date: Thu, 6 Jun 2024 12:05:29 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 38/65] drm/i915: pass dev_priv explicitly to _PIPEBSTAT
Message-ID: <ZmHeSXrFAS6j1RGu@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <ede50c639f247f2b1bf9673b5bf2997d1999d8e3.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ede50c639f247f2b1bf9673b5bf2997d1999d8e3.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0162.namprd03.prod.outlook.com
 (2603:10b6:a03:338::17) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CO1PR11MB5172:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d269e04-e1ba-4867-6e8c-08dc86427d97
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CpCJWpXPrrRyKUaQqmWuooHGOieYI7VeU9WoNBW02OjjkQZkp0fwiJysw7Ch?=
 =?us-ascii?Q?ay4Xc4FEqvzmTQU2+a2WFjbi5sBGFoHEo/61klSzdIBYqG5Hg/44YGKNtlIA?=
 =?us-ascii?Q?jPxYvOXRScvkuDNuQdfd8tENlHLGH3yUoqN3WcFyhZ7JWz3o/azFN4Hynvvk?=
 =?us-ascii?Q?Tp+NZxO0dFKcOQ9+3vBOsoKA3xCxjIT/FibObuUqNSOJaSqAeiQzsd0nxm+D?=
 =?us-ascii?Q?3c5zADDZDMrwJifol3h4/+HyoC2A88JajVQcsfX5y3JhTIWA2YV46bzHEVcb?=
 =?us-ascii?Q?dF4oxXOMLnq8Ih3dz8F8eQm16ec5NbYmHwTQIFsq1srq/TdwCHcbPfNFRRPg?=
 =?us-ascii?Q?FomdGhxFkVFLtFLuSWuKyU6Z4rhVkjTAgWDCWxR3IrL7xlvF+rvVkKlkjHMM?=
 =?us-ascii?Q?Avz4Iil9ZmO6/DXEHt+vYvDJp5Qb4nGdEwQqLsPQ0gMcexqLgZh5SK8cHQ8q?=
 =?us-ascii?Q?1onnPYK1UiX1+hazbuTtpFsRL7uMxifziGV0rsLidfU+ZYnv+vl2S8JRzqke?=
 =?us-ascii?Q?THsWQVx1BXUJdj0x0vw7zTR01CKp5T41oM2gLE40OifKyOvqHx3CGRfh2A6W?=
 =?us-ascii?Q?9PuPUTmevLmSDmS9xlF/EWD5RUasUzdb8gg8s8tHP6Q0Wuk8hQJyL7iHyPZg?=
 =?us-ascii?Q?kw8TxNJKX1GxSK22qhxLO5YqO2RVg+qsZKBiYcpi4LCqbChEUrcTAJBbm8Wx?=
 =?us-ascii?Q?gaZ6raJIUSqme9/6F0AiTPP9K897L77Aq1jNbY9wblZDu1gXmf5TKbX+3n5L?=
 =?us-ascii?Q?7quFe3ygOwo6T4V9tvixKUdzZVpV1KwMgehmwI/VGmTLEIzImHlFUkkYwwII?=
 =?us-ascii?Q?FJmbHb//vN9Lynk26Z8Xa11IJk+SDNOe8ZpUSy0uGz/AcoN3pYEjb7KDvNCA?=
 =?us-ascii?Q?fNZzsrO5SC26IYXRao/6xglcqsRHqqoLPyRECvotfVD4WA4L/afVkWs4u5s+?=
 =?us-ascii?Q?LHBL1HwfYmToaWFY7ki/pdPhujY1w1BmVU0e02vPO0j2ofFsFZR7hk+6lRsV?=
 =?us-ascii?Q?0aYIjrbyUWtVtOT8p4QBRhERliYGIlVPGd6MBVkHppPYZxMHbnO30EAX8YH2?=
 =?us-ascii?Q?6XrtZh28Vq3Zo+f7xM2ZNviiCRLCWvxeLExQpkfk4P0/HuOw6/UxIv8kRTf2?=
 =?us-ascii?Q?GIuiHUR8v4AyBjpD7kSE2J8X/NRjuiMuepqCTgnncIrbDwky/AntCSKoXDsh?=
 =?us-ascii?Q?gyNmIJOGfiz8cB+WblGWVuu9xxqrdYOGPgIVAbVIw1w+rTx7828AvGsbg4K+?=
 =?us-ascii?Q?lDaQe7z8IJIl4ctBBHvJ0QghZdHDFG7yq1sXylm3g48iydxVqBCtKyLWZ7It?=
 =?us-ascii?Q?NhrlNAsYF5tBqSqx23PNFRNR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ioeqRq6aNecWUTkpMMxuMmLyLwl2bwXtNwMqhbQ7rp4C5vcosu9zuiWHGsPY?=
 =?us-ascii?Q?TtcgKmjQA+Rxdb8s72K/VOhCuccM9QRbQgBk+879xvTg1wj1FeaSVkMIgsgP?=
 =?us-ascii?Q?2VLonjhs1njApwUe9oQU7g+Gjw/fuc1OMhp1eGe3J23OV19ZBmLSaedx82S/?=
 =?us-ascii?Q?tP66PsqxBFJIpisH9ZvZ81yygJwEHWCrYnQcezfzpZN6IIr0GqVCXeu9W4oX?=
 =?us-ascii?Q?44vIp7wGUT1Ij2budULUgPR3Wq+Vjqf/TxDbMG4M/Y5vJiHev9Plpd6B7Iw8?=
 =?us-ascii?Q?tcJRQsG6iZXH246bo74dU00lvst0p2QLn6BI1r+rJhf7eQnZlDkszJAFcfLO?=
 =?us-ascii?Q?4/iUefGyvmtoa7WfPm8OAXatknY+ZUkd6ORDrtu4GAk39i4iHAAPTdy3r337?=
 =?us-ascii?Q?ci23S+qFSqbN5OTOr5GDWr75X+66/SpScUECQc+P9BClE2aY/kWiEkVz1EPP?=
 =?us-ascii?Q?51JEgsDZBTzaTOjDe+0mG/LWrb6zgr1sKTP0NmroymZkqiof4EpzcHJC1ETC?=
 =?us-ascii?Q?/YUq9rxImOVvcTaR+QWC/uth36WNf5wxY+cE5Q8yWtNDVRCl7iL/TqKt41Gt?=
 =?us-ascii?Q?kYmONWu4Tx0b86V2N2QA6n/7NyB0rkvQQmBVUP03gdZmjYKO1Fb37W9lyWQP?=
 =?us-ascii?Q?aYWwWvdzy25om684uUMrsv3JchK4j3GyHWATuPSuehEiz5IWn9HQ+tvoPGiC?=
 =?us-ascii?Q?b2g1XqGuHXwft6Hsr/AoI4t1D8LDLLXYZVKWbeWFvYWfYjrebNL9QsK8dqSk?=
 =?us-ascii?Q?CAo7FFVtzm4EcXrm4VJZBHpCyasmINKT8aDzhKoeDmsSzGbMpl3EPhktTeeg?=
 =?us-ascii?Q?omq3CLv3bsU4cb8R6ZV2JryrHYqeZbcsbn0r0xKMbqAakmootyWUf5VpgZ3q?=
 =?us-ascii?Q?6mBD42TnauJJDwCNhOkbISQ2dmMizNPuG3fjNaztgj2/pjo9Nbg+uRkahMjm?=
 =?us-ascii?Q?UtlNO7IvXvKCnllGoValwd9rayQVUUch9YlfECzArhflKBaYOpwtBZFIp9xd?=
 =?us-ascii?Q?ghYeBPdbZJhlMlFXhB3cAUr4GBqCSSV1OSLJ1jaSMwkCm2RfBgtzvETe5lBZ?=
 =?us-ascii?Q?G4DtcP49/h7oPXHmmOn9gU+fKRefQ7RexQRIWS/esZKHxVPgoQafm91v7hFX?=
 =?us-ascii?Q?ZZ8a0QFkLKlgU1dNZN3uXt+9mwLTD5thE5qjo90hDxlcPampRBXm4H47z5q3?=
 =?us-ascii?Q?gN83Ap/j+UOUsWs40Iy+Mc4RcKO680XC97ykK8gU47FP1aw2pT7cb8FFEE97?=
 =?us-ascii?Q?W+YyyuaPCe1u3+sNT+7hK0GFzlEhpo0aBhNQWrUr70YSgH7c4XMfq+oKAuU1?=
 =?us-ascii?Q?e5yDHG0ktm5eSOTkvzhKkFHB+qGC+lqhHAMZWAILfZbfuw+DTsUNW5Xgm6XQ?=
 =?us-ascii?Q?lKzlzr9KWHBdeNi/jkTinYdF25AkaAWDiIUM++1xns6N1rE5abDQPkHsFCOo?=
 =?us-ascii?Q?zlAY0prNeOqWJWnPJosj5K65GLSKtyApGBjVwgVcyWcEseodC3ZKKnDvGyg7?=
 =?us-ascii?Q?xz8yfNtBixXfL52p/Px2nwPrwj9vs3EtIlOTTmfi/aXvnJzyBlegQ2uvFLBL?=
 =?us-ascii?Q?DebL7sGFKIr5E10O/xd5zelUC8/2E8KrHv0QjngF?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d269e04-e1ba-4867-6e8c-08dc86427d97
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:05:31.4449 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: snpogLUuSHamsBV7zLh33jgmbQFQ8z+4/azuiiEy7ge1fvv4MLng6KZgJp7zJjmBai9IQ27CZDrNnfn1s8DE9g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5172
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

On Tue, Jun 04, 2024 at 06:25:56PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the _PIPEBSTAT register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8dd4b5a72b22..0bbe2f8aff4b 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -2298,7 +2298,7 @@
>  /* Pipe B */
>  #define _PIPEBDSL(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71000)
>  #define _TRANSBCONF(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71008)
> -#define _PIPEBSTAT		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)
> +#define _PIPEBSTAT(dev_priv)		(DISPLAY_MMIO_BASE(dev_priv) + 0x71024)

ditto

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


>  #define _PIPEBFRAMEHIGH		0x71040
>  #define _PIPEBFRAMEPIXEL	0x71044
>  #define _PIPEB_FRMCOUNT_G4X	(DISPLAY_MMIO_BASE(dev_priv) + 0x71040)
> -- 
> 2.39.2
> 
