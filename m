Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3462BCB1D6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 00:38:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB5FA10EB32;
	Thu,  9 Oct 2025 22:38:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uo+MAbGR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE89C10EB32;
 Thu,  9 Oct 2025 22:38:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760049506; x=1791585506;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=LjmQ0RZ8ibZbryIHZR73MJV5iwPP4d/dUMBS2Y9wIcg=;
 b=Uo+MAbGRWn30gxs37SiAAEXtd1R7YTMtGHgEY+tFMGclxkir1xyvLuSY
 HNMV6osk9O3Mcc6TlzKOXIASbLlfaRhEQdYHCFysaBYsqgyqswCeiDw1+
 A7/f44pvV2Mzg6+mNjFDgK1IDz4avM6J8LfefpJ1TTxoD2eHa83/F419/
 uqASH7YAiDeOTRkOM0rdrQaZgdPsdvpGIQWl1e8kaTjvPsyeGXissdAwZ
 PXIjX7HMD9iIYFV4XkPMdQDWWVFYPH0xL/HPdZxsIAtu2FwVUv2aKN58G
 SK2R0nJIaA2QVN60YO2XRJTc9ouUg8p6czwHbsBLiRSGZz66+b+YCQNYh g==;
X-CSE-ConnectionGUID: HKXFNXpLQy+J94co6h9GRg==
X-CSE-MsgGUID: CmkWwXKtTBW+PI6pdW+11Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62190415"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62190415"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 15:38:25 -0700
X-CSE-ConnectionGUID: ecFwID9oShOwMUPHAzBWzA==
X-CSE-MsgGUID: AD+TCUEAQMG+SJ/4IyPmvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,217,1754982000"; d="scan'208";a="211473978"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 15:38:27 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 15:38:24 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 9 Oct 2025 15:38:24 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 9 Oct 2025 15:38:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PDSImDZp9gFJlazlMX42V9ThNfLv+bpH89bINCndAvhDrz1t3fjdffKVZ2b7xEzzQXpqFepRa5RsNcF90XIhm3SbNstrLY2RUK5xz/FU30q+3nUtZPbNiI/F46MDCKFV7Typh5+5O2LCIBmWlyVrOVvvtz4JApDbQWNJk0LGB75UrbF5IehjdwoUYLc17kxCvn3ETnkTi8NYNYfGUgl2tdC9mmAX3vgyHDQYHc/b3/SvmGTdTBP9V1ViTJvthWnNP6lobHeg+G8X9GtKGpLZsEVuDwQ/KLjXhMixC9URlkIpN9NqjeaHLzJAq9V0uB/jH+ilNz4C+i/n3GCHXF87qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=64adEeSgUP5ieJJCySkwtXr+QepmPCtuzSADcqhJ/60=;
 b=FpG6Pd02VWp0l2CUAbDH0sBAY48A7/TczRlA+G3v0G8QD5Nd2+KUdCMkXl2OIYS5+OyPyyQSK2sd983Xs7IIwDhiJEnvGx4NgmQILQabNUdyC1Hz3ftr/LLd5kFKh9NIrES3mAzDIsR84Qj2RHBvVmRmBl2uL1aTk4EeQ1YgCi40fQj0QsSDZbS6RvMjzpGOEbTsG62J9WnNqwgXUDdoYsbs1DsWSGfJ6/JisNXGql+LvTiEByK0+YtmQjtD0L6T01N1wHmH579X8xOL/iCnrrsMcUqj+us2ncgKL89zFnzwQBMcPH4wI+LFR+Zk2IOsHOfa9Jv8zs91DGzvzpz9aQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SJ5PPF263E38237.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::81a) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Thu, 9 Oct
 2025 22:38:22 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.20.9203.009; Thu, 9 Oct 2025
 22:38:22 +0000
Date: Thu, 9 Oct 2025 15:38:19 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/8] drm/i915: Drop the min plane width w/a adl+
Message-ID: <20251009223819.GD1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251009211313.30234-1-ville.syrjala@linux.intel.com>
 <20251009211313.30234-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251009211313.30234-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR07CA0088.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SJ5PPF263E38237:EE_
X-MS-Office365-Filtering-Correlation-Id: d0b3e2e8-0f6a-4130-a23a-08de07848d38
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?akznVBi7wpAuaTQx34hSjv+FdP5b5QYsFF7lRf7bMY91z1PBG1EnaseFkQ?=
 =?iso-8859-1?Q?nEJnIFw6sTroEBufi8d3w2ROSalT1N00AP2yc6zW5K6UhY7d+7fX8HqkPL?=
 =?iso-8859-1?Q?A2gHkJIKt4omPWhdBJyT5wHj53PlZeRg2aworMRXoJTP2Yk3KfRpjuMa72?=
 =?iso-8859-1?Q?KYJGiBVK23oweIhkABN8jOUrWtrV8M0Hl8KlUauTSyU4yfmJsU9ZWYt40e?=
 =?iso-8859-1?Q?bODyDRxm76vkOJuseVnxnuNA8ulXhQ7/d26VOp7GERquzrwFLkXNofzhrV?=
 =?iso-8859-1?Q?prEPKW79dkqxWTSOsYB+hD6aC4obN2e0rFnwUspKoTY6ehu7ZVQIWjz4aS?=
 =?iso-8859-1?Q?mGj/u8bvnCuW+ZFWvrvMJHOPljY2SOfEGDCWXO408BaWvn2plNFUbFGraB?=
 =?iso-8859-1?Q?CCt8nrTAlzka101jD5/4iSRd0SivonC+bd+NfvpbgIVPRk6+At5waaqYHX?=
 =?iso-8859-1?Q?GO7cnTue/CUmqnZL0aTjYU/kiStAjLpL4tnnaO6RHDKk87TmZwsA8iOvmr?=
 =?iso-8859-1?Q?jR6v2rhO+hs/nhIDWuXcO1HvzfB62wB4pdv4xC1xULyAsWLlI2jPfQzGJG?=
 =?iso-8859-1?Q?IvGlv4WpCFMj89b7IUEDYTq7Fm4c2hMshphNccHJ9HLkTjpFADzPIssD3v?=
 =?iso-8859-1?Q?dB7NNjrX6HbjXEQUH4SUrFbYYW8odl2v9CoHacDkdujzg5hLcUQdsEEQ9H?=
 =?iso-8859-1?Q?sVIgB207f/TScGjEhoUoH6bLQBU1bmIRzyVghTVNbFpiFnB9X2WRI1hWRb?=
 =?iso-8859-1?Q?heiUUejUb1k1Uz7vedVFWO8A6nKL3eTYBO5th3Vow6nSKcFLvCq+A9TRMu?=
 =?iso-8859-1?Q?U39Vwe94aA+PV1FmdGkTJDNzR1VlZ5CJIt9EUmZkgfEnch6WBsA5OCwVn8?=
 =?iso-8859-1?Q?ZHnjvNIcj1VeoZl08Ew7tMgtQsf9GQ38cWV52i5WIbLleDk3tCGuP0Skt2?=
 =?iso-8859-1?Q?/oV0L2utuIFcIIZU3eiY5oYo0/aj00aH6urPqmu0kuEzC7i12kydtlrOcM?=
 =?iso-8859-1?Q?zgJXFw1OQ02uIo+4FIUXvveRD8hG/LFl8qt0H8gRNS0sEE0REdfT3h4LSo?=
 =?iso-8859-1?Q?F67wChTqAn+mTPGsL+3sgNCy+X+ICwgMG2c2oP6sfyqf9nxPPw8gOjf2vb?=
 =?iso-8859-1?Q?HP4+W/EmIo3Y3Vk/XAeSBRjq4a2X3fIeCdcC8TCoFR01SL49I7pEFxbra4?=
 =?iso-8859-1?Q?9eFvRmFWT15fDSsUF7pxqfC5wLslNxshZfQmStWroFYM3MnlC2REWoZdUu?=
 =?iso-8859-1?Q?/tbWW7Ae1RjsCg0U2BOj+M9npiW4rssv9i6oyEHm2kJvjWGGtbuIMpRF9L?=
 =?iso-8859-1?Q?5pipQfUlUXdaHnGORI/kN1N2oAMwwOH7oWmB8H0/gBZGPTjyqGR5GFmG/j?=
 =?iso-8859-1?Q?QUsU6hrOdlkzlRyae7O4Z7xZaUD8V+4dYtuDzdHQhW/Mh2yfrHSN3YpaMk?=
 =?iso-8859-1?Q?NhTEy/QRAP5d/iKP0JlkEmn8WOWvYUWt5eT6uDv9Sn0AKaEQ8hFfjEoQS/?=
 =?iso-8859-1?Q?BeidlupggPpfyxkviiDUFj?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?8oWmhoi9ADtQxEp9tYYxOoQSpyRMV8C8vN9zyLYdaNTLsT26wbvqa0yE1k?=
 =?iso-8859-1?Q?/sUdO96XEHs2XffFstbXef1dM18EgvMwwKvWSLv61j5cwCzmQYCQK8UBrw?=
 =?iso-8859-1?Q?S2tG/bHTWhJINj91qLPvTtMbqHuhFHVK6Xu2uPs+IdbU9B7j1ddR21fHOk?=
 =?iso-8859-1?Q?VzrN8ruiR9RARB5j7y3uLVocOiW+4MMYbN4w0c+aOrouEOsPU//m128GXN?=
 =?iso-8859-1?Q?kfTzbkGIziAf4RswkCpKSNXJ5p9id7LrUR8PJfMEySgEhTcA8gtZVr61eC?=
 =?iso-8859-1?Q?5FX9o7jYXY3ceCJQPvOBnozPUHji9lTiwqFRzwekAjGB1Mbv6xdxaZPsG6?=
 =?iso-8859-1?Q?AjB5n3tefPOqj7uJz+/l0VaoY3dv8YuvHEcbJHcB3yDvc5EI//qAw0gpvr?=
 =?iso-8859-1?Q?i781GbGPUo7bI7VH9ZGcEFa126A9fzQB00/uVPBEYrJ1+xPBdXa6gl9Q7q?=
 =?iso-8859-1?Q?LAcEyMUfbvplvHjr1mGNRiUrTNtr7UPPjUlhHLJgl5y1aPylX/CSBL8gBA?=
 =?iso-8859-1?Q?s28nQA2Y2FGJFzokbkQjDhUbGcHoh4ec0I806zhCa1x3PzA2wJALkicFFU?=
 =?iso-8859-1?Q?/2XHsJvTvPj2QC94CiXxV996664snRZKU/jaHV5CE8dS+BBaZFTDOQb9Pw?=
 =?iso-8859-1?Q?vOF0EKh04MGhwQJDYIytPvMfmNQfvhTfXLqV2JK0oeeAVPlwFTp1fUXiyx?=
 =?iso-8859-1?Q?ko08hISFnbkrLR99ObXalySJTOscglvmguPrrpFK6tr5xC1PU3ZczsNQ9J?=
 =?iso-8859-1?Q?q1WRxkl2JZUFPh5rgrxE/vGwOTawt8Hlkg0YvJ0I8+blSawl8RSPJWwHTu?=
 =?iso-8859-1?Q?uMdXrfcfPfBr5iCGtM0qED2chhE1wPCojtCaQEHb9ry0JMSPS9TG5CADey?=
 =?iso-8859-1?Q?yqxT9fyDl8QxzD95SSwUboXaW+Jpef+OI7q+VU0PY2C60Kpe9nGpn4QuIO?=
 =?iso-8859-1?Q?2LR8ojKTMcNpgCeQtwvVxYx7xBPVuPlNVUa2L5+DXjR3yvklTclrdUh+OG?=
 =?iso-8859-1?Q?OjIb5SbyfhQAydELGlP259LYnPyAkncdGA5oYHAGiLoMZSWpeNmCpyaJ3L?=
 =?iso-8859-1?Q?JLhE+pHw0vQSGganYrakGQh9dS2EMbWQ/CHkQTCi91//xpgTKXwhtA1AYb?=
 =?iso-8859-1?Q?Z/NgNvjpMdGRg5TDl2Fx5EHS1LclX68vsoN4/iwpuevTS/39c1VgUVRAek?=
 =?iso-8859-1?Q?gohixfutZrnH2jemzMJkBKsHn6kdBIMTGvKubGeP3K5bLTw2mz4D2t0pf4?=
 =?iso-8859-1?Q?SEWhJQlTUNwFDZUTvmAFLxq6hW0XXGq3axl/2lBBP0PqtCJ1wLjld7f/eJ?=
 =?iso-8859-1?Q?d4W9GseWgxdxAvZSbHjO2CZprkQLDpO9+USDlEEugQOsSz/Yt0nTKw3B5Z?=
 =?iso-8859-1?Q?UwgJd5gcrPI2cyUCOLiGgbWvZWm4RDwFvB19a32j1M6aSqkrnhkWyrxLrE?=
 =?iso-8859-1?Q?sO+xJB1fKD+lPW1vOGVNSkYTHdrOMvLJ3X1oqCEukn8qmnzb8InkNsf5iC?=
 =?iso-8859-1?Q?wrrXOVoXgEqesPrXi9peUYmtFJQucSB01R5H4Hc4dZJvdF1s6bep1s5kBn?=
 =?iso-8859-1?Q?KjsEnc2+SWV9Vd1aWkKiLFE6wcd+MRoPihVZ/uRBnrRFGgC9UOPTWQuN8H?=
 =?iso-8859-1?Q?bzDtbLiAjpmf3hucoDSbOYPr9eQ0IFY/kmithmKJ4FbL4Uw9pRPRdXuQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0b3e2e8-0f6a-4130-a23a-08de07848d38
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Oct 2025 22:38:22.1369 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: pPztq/cCRG0zAt0nKJh3yekDiHv3Vvl/Z2Wsb07pKQ97vTLjaYySujISfgzoilFm6LB4hLo+wRg2tyaFWJSmF0Wvfll47+50gjYzLdNaeuE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF263E38237
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

On Fri, Oct 10, 2025 at 12:13:06AM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> ADL+ no longer need the plane min width w/a (Wa_14011264657 or

Nitpick:  For clarity you might want to write this as "ADL-P and beyond"
since ADL-S (which uses display version 12) actually does still need
Wa_14011264657.


Matt

> Wa_14011050563). Don't apply it there. DG2 still needs it.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 12 +++++++++++-
>  1 file changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 153c76d00977..504871065e09 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -389,6 +389,13 @@ static int glk_plane_max_width(const struct drm_framebuffer *fb,
>  	}
>  }
>  
> +static int adl_plane_min_width(const struct drm_framebuffer *fb,
> +			       int color_plane,
> +			       unsigned int rotation)
> +{
> +	return 16 / fb->format->cpp[color_plane];
> +}
> +
>  static int icl_plane_min_width(const struct drm_framebuffer *fb,
>  			       int color_plane,
>  			       unsigned int rotation)
> @@ -2815,7 +2822,10 @@ skl_universal_plane_create(struct intel_display *display,
>  		plane->max_height = icl_plane_max_height;
>  		plane->min_cdclk = icl_plane_min_cdclk;
>  	} else if (DISPLAY_VER(display) >= 11) {
> -		plane->min_width = icl_plane_min_width;
> +		if (DISPLAY_VER(display) >= 14 || display->platform.alderlake_p)
> +			plane->min_width = adl_plane_min_width;
> +		else
> +			plane->min_width = icl_plane_min_width;
>  		if (icl_is_hdr_plane(display, plane_id))
>  			plane->max_width = icl_hdr_plane_max_width;
>  		else
> -- 
> 2.49.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
