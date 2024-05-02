Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B15718B9B23
	for <lists+intel-gfx@lfdr.de>; Thu,  2 May 2024 14:54:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2875C10F2C7;
	Thu,  2 May 2024 12:54:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gHD+RB0f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5AB10F2C7
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 May 2024 12:54:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714654469; x=1746190469;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=mhcO5VgQlzT8jm/yTkq7xzJj3UmntlaPk/vC5fsyAl8=;
 b=gHD+RB0fYDU3t/Ni80vgKchi+ncFVjjiSmtHPaCr9Ih5Dc9t09JITHPc
 Q9lwDLrPhsRvWJIFi5RS9BwVq6AB5inJyRzAgmCY1Ayrv8gjT1/DLq1Sa
 WR5q1wPsia56LghFgbPUYgbGUoyZZFHFOdBwrTYo5CabhduRww1o1Y1gC
 16Bgi1cSr1J57VbO8FF7A8BTWq2XY51zBRsEs3vADpL7Mtxw/Fesxy53g
 79fLGzty4fZd88Lf7ZqvLVwxSSMZ9Td1VK8s5g25mUDZTH4MsfizrTeAQ
 T6tgVuHzVTzn7QIy7ULKb67J8ExKhHU8s0xery7hTyfMMm2j39vPhtoCX g==;
X-CSE-ConnectionGUID: ij9vzt49S2yWqCUEQ5fK0A==
X-CSE-MsgGUID: MT1Kt9W/TzeXZ9ubMEl7gw==
X-IronPort-AV: E=McAfee;i="6600,9927,11061"; a="10957827"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="10957827"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2024 05:54:28 -0700
X-CSE-ConnectionGUID: nt/8meHBRVud/2lTQxrh7A==
X-CSE-MsgGUID: cpe4A6/9QdeY7IzyS5H2qw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27164088"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 May 2024 05:54:28 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:54:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 2 May 2024 05:54:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 2 May 2024 05:54:27 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 2 May 2024 05:54:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FH0ISOGBNHclb5QoNYLirQighpe5TcCtpjC0inAurpoEvOVhd/7Pb4OT/Pob88uu4c9n243JIIeLMA1GzETG9kX9gjY+fbei4mqicDpF/8JsQ31Zio+FQT22rYZICns40z8d4krgEStKnguR6gWqZAYTAMF+NHcapF6C5lu/mqQLg/aIHJu3UJNhWbth39LRm9Z410Af3whnFSquSZW8GZoFSkj5V8YXa/BViAN2n3D7LBfyOFsNJpm226olGTPGj8NJch5y/+SCypB6JQWvcFT4Z9U8+175UaugBBPaswjgsyBUG/3tKpJNLK6/M2n0Tj7rcCJ39VDOX7PYvHIpEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WrGI3G0vsEMN6ril/EHtK2eVjZBWA3LPMnEHGAkseO8=;
 b=EynoJ5n1iPttySuCeMSxYYMRWmKfbfrjRx0PWByfFm2KWLlOfHZy/av4TqVgLFdklX87xVaCydSMIMECZe3Awgc3zRwl7zTuZIqrB2hwCIZxDCLrMkIJXU74R0x7JGRlaL3C7TkPiQeNKqXstnAv8AOtWe1x5KKzjg/KNP2dJPj7fMaQLb0n56KGu+wcj4yjMQZt2EpPh/SIH88WNEWr8lHJNAKbWA8rmSWXSiMYrfDnACYz4sYmmdojAG+b2yWu5FHeBEfZqVQ9HigGpPHD0sAjfAsYu2VxbDJ072XOE6HHslQTGXYwfM//6aIZvFM5lo7ePxRo2+sQ9jmJcgkVow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH3PR11MB8382.namprd11.prod.outlook.com (2603:10b6:610:173::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.28; Thu, 2 May
 2024 12:54:25 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Thu, 2 May 2024
 12:54:25 +0000
Date: Thu, 2 May 2024 08:54:22 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 3/3] drm/i915: Remove counter productive REGION_* wrappers
Message-ID: <ZjOM_qrzgWv_GqHQ@intel.com>
References: <20240502121423.1002-1-ville.syrjala@linux.intel.com>
 <20240502121423.1002-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240502121423.1002-3-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR05CA0083.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::24) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH3PR11MB8382:EE_
X-MS-Office365-Filtering-Correlation-Id: 1df07adf-99d3-4e3b-888b-08dc6aa6feac
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?0p8TNmxJSl4WUNzVgqoyfZbWPihWtVaOCgcl6Qnm2HcHtwpXE+zDZg/G8Y?=
 =?iso-8859-1?Q?ti7WSR8jCrhUX9irDrigjKEcigy+B+i55t5KDB9nPlpGxJ9PM2nOJBaDlP?=
 =?iso-8859-1?Q?Yq5SlTn3gZ4pq8h0uZVMCZhuNEYTX41CnwFg7lV3GcWE30wn27snrI89kH?=
 =?iso-8859-1?Q?UKgnb4ll7ADHha0DAL4rE/cgYcNh2A+oODJvQPIe0oxsMIJw//ov9JOl/I?=
 =?iso-8859-1?Q?TUpbiPd/tA2CDTc9/j4e8hAzF75Meu2gbK6zvI/cVeFw0WPh3scyWDDAnR?=
 =?iso-8859-1?Q?0PgYwFnlunQmbnfI/Fbbh1nQGiM+A9oLpOkrMBsg94M3yzDeRSr6K8rUBO?=
 =?iso-8859-1?Q?zwNQso8m2FDljku7hi/QeFR3mr3Z5TzhxlSPx0PbEOFUL/xhc5IdpRQoyW?=
 =?iso-8859-1?Q?ixmPwBvepN1/ZmkkVsXN3yCE+IG+0cJ8LMk/sEE2cbjuivymIIygK2KCmK?=
 =?iso-8859-1?Q?9lM7i4xId7iB8mIgj27mo3SEQMhRcooXO+azlq4kkMRprao9j7XcaquFIv?=
 =?iso-8859-1?Q?zlPGd9x2vIIEsQGVazd3R7n9Cbv2B+FoDXDRnQ6lRyY/6YIfk4V1tC6RNg?=
 =?iso-8859-1?Q?DYEZ2eEqNAHnXD2qjPV//GsrcyrVMjs+p9mRAa7Nfp1oB52vVxjkv6R1vS?=
 =?iso-8859-1?Q?YW/EaUzEneB+YwdUPFcXsKyFo+wJa9BPdWm5D0trwaezpAlUHsRIGAkhBA?=
 =?iso-8859-1?Q?7TnCX1GE8FdcoNijo54MlP8K2XWspT3FP5534LJLclFabPAi4/HOncL0FA?=
 =?iso-8859-1?Q?d6nqzKf6RKfya9sBMgC80rFB6kGnp9KZANrTDhIWmm/p7qLW45pYr+Toak?=
 =?iso-8859-1?Q?BqPcUN0/kdmV5BtXu//0q7QmplAdYjTEaLvsH0Ki148vDMIFDHkIQC9t87?=
 =?iso-8859-1?Q?9Q024V8Zvun75sGlff0PY/qT5pHhuN3HBt2RVgI/Y0DSE5JEUA1NjuC1Z8?=
 =?iso-8859-1?Q?9O3E7XlxrJ5P+WRzbcjeyHgGNjFcJSGawJRjnYqmenuU+11votjhHcREq9?=
 =?iso-8859-1?Q?dYnoVPwMVJ9O12hPoLYHfMLTF2nLf/YGXhtGk0MH8sddpj3/1pHTn8qTFc?=
 =?iso-8859-1?Q?3sn7p6V8BZh/27/4SnnBdjvLcLDYuAtljnqmNezQoT5Cbml60sEaf1IrmO?=
 =?iso-8859-1?Q?9MVArM/ij07VmtVB/xhQMBmwWuTUnpI28XnVoTCSHmvuUvxgDzSSkrHQXe?=
 =?iso-8859-1?Q?wcOutNiqtPJ2N3WCIjtoaeBbLwtjGcZeMIuxjWzwZKZUla1eVzNQA2aDyQ?=
 =?iso-8859-1?Q?Wf4zNE9Ht+8+ElKJwHDqIIVVjYotCvd4I/1BbzRDsfqR7zTloI6MFYQesR?=
 =?iso-8859-1?Q?1eY1bz3tIf7Hls62yIqjyECP4A=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?VwJLqTM8Ks9QmGCxFvKUbT9yRLSp76TrfPMezkX6abJEUUI8P3rg+ZMXPZ?=
 =?iso-8859-1?Q?yO9+EIT8rYycYksjdS18tOEqba6VDHVqqtL2+Z5D3qqUPY9Z5oBotUCqeT?=
 =?iso-8859-1?Q?HhPifDPXq2ZlITAiaV06kRkAbGsJPG11wRR6Ce0GXOMtTNFcEL4mPSCwoV?=
 =?iso-8859-1?Q?UYgPJEaNMlOXJCtEaYOmGhJ4tZdlDUgT5Xtu9MUXyUALfx7QAA5sIblF4I?=
 =?iso-8859-1?Q?cYXO5715mOnWIGWjDu0DTwGAJxdut2pAImidaAY0GhOfQ4uMPAvgxVNOvQ?=
 =?iso-8859-1?Q?yg9Ko5dJS7bcKEGHusqIEskIUcwTQLWsH7A16UsDUcM5wNQk2IVg+KeXa0?=
 =?iso-8859-1?Q?4knfDBpDTTr3PS/d73bEvVIZPGcpn7xlBIlR6H/GftrADhY4zYMlAdTij/?=
 =?iso-8859-1?Q?vVsyFLuSHyGesGOTln3ubZA1B7092TwYxJXLcuZu2jbh6FCc5NAAZLq6SQ?=
 =?iso-8859-1?Q?BIij4UzGOB1BV3y0X/VqWRfVCbELtufcqYFvsNZzCxEHlrO20FVDO7deqz?=
 =?iso-8859-1?Q?d8HMFtWD+5nD3rbzSsRKnpqSLoz7JP1iniHDEZx9pHqEOJJmnOTcateia4?=
 =?iso-8859-1?Q?i+8kNloHrbLPXO1pXvzxPz1LiEHuQ4ex5QWTcaKOx28pDdCxSBJ1rOZ3Bm?=
 =?iso-8859-1?Q?9oLA/vYAqpYNmdEhxkt1AQQRR/OTStAk08+WO+sh7bPvDJXK8zwqUCjWI0?=
 =?iso-8859-1?Q?udCZ6udgFgO2laQxX3icosNAZKNDv8+oSIi1MPXm0X7J004rjzi3YEdDHl?=
 =?iso-8859-1?Q?U4ATLoBjCCKgiAwDXHd/n5gaa7QNsY6QBc3Xd7bD8mq1g0+OXHgES+S5i1?=
 =?iso-8859-1?Q?NxDqz54FiXoKcf7iiVmpuuszDzkOs3Xo3e2BPemQeYAJu/QjdSCkPlgGJ4?=
 =?iso-8859-1?Q?vc29vBk/d/g9RXQj7JBIXHOS4zR5Zp4ruwQgYCT/wMNyWwgdVRJkVMdS1u?=
 =?iso-8859-1?Q?6MpBRSeJh1cnRB9gWACRQGip/K6DDtVw+eZ23bSPGEz73iwVgwswPWhZ5H?=
 =?iso-8859-1?Q?w5Evjo7i7s1Qa9Bub5JeBdHVKdlhFTtkQQ7HPpUyKbVI8CAi8MGv8K0hdZ?=
 =?iso-8859-1?Q?HWSA4PaysuOa0e1JaAblFNTeF1+M7FWZW6qc29l5xcMpCcflzBQKSHA3/B?=
 =?iso-8859-1?Q?Tgt1rFYt2chT32B8CITMzzjUb834FaGsP5lod9Bk4adqgwQuja1XPREqiK?=
 =?iso-8859-1?Q?U+oqLBzbM9Qz6LWkduP39V2b/Hk6cQKhFRxOA6VhWnyH/tPY2Wteuj8i9r?=
 =?iso-8859-1?Q?fvzhxHXb53Uqw/lAxtXDywsuL5abiQ3AjHGmk5kMfXN4eY7VSCx9+wzptG?=
 =?iso-8859-1?Q?RLwuqR3GKlateqIBdXiJ/mMfpy5WAMFR8Xb9nHOfdIRagM3OHoD5mA5C8m?=
 =?iso-8859-1?Q?nYTy6Fk+BdVeifWBg8NPv6gkfL5Hl7BezK+7SGnah7ZglVHzMu1LLO0g6Z?=
 =?iso-8859-1?Q?ctDaJ3b/sbSCQIWawmWiiiALHzxT5D5k1zKn0SaTYP1IbWS//fBlSRZCGd?=
 =?iso-8859-1?Q?lR7zSfujGmtsbqF8YP1zdcC9K9oqNfTw1OpUq0ZwCYLQt9iPzG47ovQBB8?=
 =?iso-8859-1?Q?yE+bfYgq0GFWBA8lTBwLmIrCzw482WNN7sGkc7dBuveVI8WCCyyn7DFBY8?=
 =?iso-8859-1?Q?05Iu6qnOkO6ghwuInuyLhyDGxU02jT2Pe/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1df07adf-99d3-4e3b-888b-08dc6aa6feac
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2024 12:54:25.1261 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fXJoH5uPojBGUaAtHgCzWseCyWNEdRN525yR2AEO84DCUrcpmPzXRvvFzbiewDAnK49UjT+AVqJFmVLP4S5+yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8382
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

On Thu, May 02, 2024 at 03:14:23PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> This extra macro level between the region IDs and their bitmasks
> just makes it harder to see what is used where. Get rid of the
> wrappers.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/i915_pci.c                  | 6 +++---
>  drivers/gpu/drm/i915/intel_memory_region.h       | 5 -----
>  drivers/gpu/drm/i915/selftests/mock_gem_device.c | 2 +-
>  3 files changed, 4 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 405ca17a990b..b5a056c9cb79 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -76,7 +76,7 @@ __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for d
>  	.__runtime.page_sizes = I915_GTT_PAGE_SIZE_4K
>  
>  #define GEN_DEFAULT_REGIONS \
> -	.memory_regions = REGION_SMEM | REGION_STOLEN_SMEM
> +	.memory_regions = BIT(INTEL_REGION_SMEM) | BIT(INTEL_REGION_STOLEN_SMEM)
>  
>  #define I830_FEATURES \
>  	GEN(2), \
> @@ -655,7 +655,7 @@ static const struct intel_device_info rkl_info = {
>  };
>  
>  #define DGFX_FEATURES \
> -	.memory_regions = REGION_SMEM | REGION_LMEM | REGION_STOLEN_LMEM, \
> +	.memory_regions = BIT(INTEL_REGION_SMEM) | BIT(INTEL_REGION_LMEM_0) | BIT(INTEL_REGION_STOLEN_LMEM), \
>  	.has_llc = 0, \
>  	.has_pxp = 0, \
>  	.has_snoop = 1, \
> @@ -781,7 +781,7 @@ static const struct intel_device_info mtl_info = {
>  	.has_snoop = 1,
>  	.max_pat_index = 4,
>  	.has_pxp = 1,
> -	.memory_regions = REGION_SMEM | REGION_STOLEN_LMEM,
> +	.memory_regions = BIT(INTEL_REGION_SMEM) | BIT(INTEL_REGION_STOLEN_LMEM),
>  	.platform_engine_mask = BIT(RCS0) | BIT(BCS0) | BIT(CCS0),
>  	MTL_CACHELEVEL,
>  };
> diff --git a/drivers/gpu/drm/i915/intel_memory_region.h b/drivers/gpu/drm/i915/intel_memory_region.h
> index 8c927e303c4a..5973b6fe13cf 100644
> --- a/drivers/gpu/drm/i915/intel_memory_region.h
> +++ b/drivers/gpu/drm/i915/intel_memory_region.h
> @@ -38,11 +38,6 @@ enum intel_region_id {
>  	INTEL_REGION_UNKNOWN, /* Should be last */
>  };
>  
> -#define REGION_SMEM     BIT(INTEL_REGION_SMEM)
> -#define REGION_LMEM     BIT(INTEL_REGION_LMEM_0)
> -#define REGION_STOLEN_SMEM   BIT(INTEL_REGION_STOLEN_SMEM)
> -#define REGION_STOLEN_LMEM   BIT(INTEL_REGION_STOLEN_LMEM)
> -
>  #define I915_ALLOC_CONTIGUOUS     BIT(0)
>  
>  #define for_each_memory_region(mr, i915, id) \
> diff --git a/drivers/gpu/drm/i915/selftests/mock_gem_device.c b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> index af349fd9abc2..0bd29846873b 100644
> --- a/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> +++ b/drivers/gpu/drm/i915/selftests/mock_gem_device.c
> @@ -122,7 +122,7 @@ static const struct intel_device_info mock_info = {
>  	.__runtime.page_sizes = (I915_GTT_PAGE_SIZE_4K |
>  				 I915_GTT_PAGE_SIZE_64K |
>  				 I915_GTT_PAGE_SIZE_2M),
> -	.memory_regions = REGION_SMEM,
> +	.memory_regions = BIT(INTEL_REGION_SMEM),
>  	.platform_engine_mask = BIT(0),
>  
>  	/* simply use legacy cache level for mock device */
> -- 
> 2.43.2
> 
