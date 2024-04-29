Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DFD18B5B31
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Apr 2024 16:25:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 645E910FEF0;
	Mon, 29 Apr 2024 14:25:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HEybQH05";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 466C410FF03
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Apr 2024 14:25:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714400727; x=1745936727;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ME2kdEi42+QvaXCF17+Cqh00G6g1gWOKMhSvxDZANNY=;
 b=HEybQH050jOFjTG9i7VBTD0sXCjjIYaWsRlpvr1sxxFhsfxszym0oetu
 zMAnc75QU5RRLel2EIFWMNOUY0CU2jOPd/OnVzakqRQGMxY9B/TM3XHBn
 83RoTD16/60VBRGpEXNNi/xSr6dd3R2pKRl1VOsidxID9VE5F/I0WQw8Z
 Ya1s0hqSYz50sVkXQULasX7myDli/tAp1Xp9Mj5p8iep1YenV3bbxY8kG
 N8uGliT90AStCSmeon1v7oQgoUhlrowUi39j75ekQViv8vZseETV3aCI1
 AN/113FFq3czW9uEGhm+3PIpoxbpCelEsEw6JbdnVUM4MwRi9nobQyRmJ A==;
X-CSE-ConnectionGUID: J+ZCBNxNS/SUAFcYiUklxA==
X-CSE-MsgGUID: PDAi2SQ2St2hsgUxK8awhQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11059"; a="10226953"
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="10226953"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2024 07:25:27 -0700
X-CSE-ConnectionGUID: AJHWYIgUQkCGiSaecXqKYQ==
X-CSE-MsgGUID: HSrKrEhUQtCPCSmF9i5Mdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,239,1708416000"; d="scan'208";a="57005963"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Apr 2024 07:25:27 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Apr 2024 07:25:26 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Apr 2024 07:25:26 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Apr 2024 07:25:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWkf5fV4JAj/OWhgus9Nb6K3SCvwJudH6ceoGRjTipP8sxzKbxFp+lzg9s27SwWo/i0fB02TgBaUla46+1zXs6Xz3A82RNhTlBmvApFPHgMSNuU2Q3lKzZgxND+6eCDpEtFQ61jkbQSLuhu+/WUGeVALw0UG2WFwwRJ+mUw4l2m5NLtZik0m1iVXavvWehvSRwCQcy0uLZUn4UH6eNW/hzTkbMSzq2uq5CNGs0441DsYZYP1d6wByk0/pgXVPgKnNLXrPkJdeof7Ddz7tJTDDVcHGc2y1glwQlm97aOm8tkGlXgbsb/7/eLuJ/uVFSGt+EuaqZnMvRC4GcFtJQkWnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4AtwykFDarxzjHCLNUltDKMQs3Dy93FSGald2TQ318g=;
 b=j1CFQFveImwwuoa57aLD6gaFQipySzOvUD5GmkHc81L/9XILoIkNF0Zhhmlm6YXNCBYdbnHFv4piFPo4zaVCsMdLqbhypA0vmTXc9D6MoLngTKNd+Fu0F1y01UV7DIdfY4msEJE2jpgVb1Oe9EJ9/hsRLVwTWxjpqPo86vaJdsRN9lTKrkW8EzhruhT17T5/muhXvnY5573RVd5/Tiy9pr/ql/UkD+ZuRWLwBaMp/QttjXKIsC+KAtanDU+kmQawUd1FcdsW9MRbtp538Wk+U1ItdLJlYFSsASio9Cgfi0YGCa+nK+TcIY2Pt1Jj0kVgA689ezjpBv84am4tD7DXAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB7052.namprd11.prod.outlook.com (2603:10b6:510:20f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.35; Mon, 29 Apr
 2024 14:25:23 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Mon, 29 Apr 2024
 14:25:23 +0000
Date: Mon, 29 Apr 2024 10:25:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 6/7] drm/i915: pass dev_priv explicitly to PIPE_WGC_C21_C20
Message-ID: <Zi-tz6o7Yb7N9dJA@intel.com>
References: <cover.1714399071.git.jani.nikula@intel.com>
 <af39047d304f8a5c3c7a643f702f66c06ea5d638.1714399071.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <af39047d304f8a5c3c7a643f702f66c06ea5d638.1714399071.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0173.namprd03.prod.outlook.com
 (2603:10b6:a03:338::28) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB7052:EE_
X-MS-Office365-Filtering-Correlation-Id: 33ab0d5f-79c4-451d-bd12-08dc6858346d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7pHeG7Lr+x4i67NNonsq/jZs+H/a3AzbSqrsxu+tU4PTzaiArHJOLCd52R1C?=
 =?us-ascii?Q?gHeikteZhM31Zx/HYsZ/uR9YB+IknoHACUNi2v2Y9GIfeIQBvDkvxJYCLfqW?=
 =?us-ascii?Q?3paHmr0dYnup1IoFh/K/z5NomACBE/cqHZwKKGuzGiI+cWTjotfpWt/p8wfo?=
 =?us-ascii?Q?DhU2mztTA+wSvGnOVpvfpDhfrG0xLheDfEpnYXxrEhOjuaZoaZuFabl+KOcf?=
 =?us-ascii?Q?DdrI98NGXkCbZn3iz8yiEWD0vUUDmQN/W470YiSQffuWikm/dBoX8H5+7ciV?=
 =?us-ascii?Q?O3bhyL/4w0QSAzPC+sVqsrIIccOyuGIFLXFJ23mNUsaXmR89YeM2TN9n3adp?=
 =?us-ascii?Q?SKq7XwapC3aLmWQ+XjYIdkhxR54hI0plofwCQjlSuLaoja6kuVJa7+qEqRmo?=
 =?us-ascii?Q?9GjhNrPuUXMRiz0iLrGe7u71acnH+WhsgKIXhfKQb81IffDf07Q1IF9EcT4M?=
 =?us-ascii?Q?7seJMarJ4q8fgOUveBgCHCQBJDfdzzacceuqjG+LaMJWxW6NHhPs+ePx2le8?=
 =?us-ascii?Q?/Ps7gcchT2JBxZcDRWULe76LKnQWEw1mtGR+a7rdvrNkr0hBJHz7KYVgw7JV?=
 =?us-ascii?Q?jaqbVmW3GgQuXrukeVo0Akhj7gpSuGilmkoWwgjzF/Op/IF9GnUsGA5N01ws?=
 =?us-ascii?Q?EEcMzusnSmCo2GXo+QBBhRmNVZizlJ2jdstEIjh1+swTTbit8b5TXwzgwQPz?=
 =?us-ascii?Q?lM+TIJm/xaZBLR8AnozSyvpnvA/G6uKZe1kgR7Zr9qIlc8xMNzZWRPMU4dEc?=
 =?us-ascii?Q?PqsA0FmqNAfC9oG0eqfvQyVAsoT7ZRjUtEvMa+witUbbD2sRQB6/098m61v2?=
 =?us-ascii?Q?tvDlp1cMjdeb6NOVu+iyEO+4KUofhzXIoAgg3Oh4P/VBalxCvPRIdnqU1gom?=
 =?us-ascii?Q?U8e0oTKCOs70POgcg0CH/jcpHKJ6TJe+5vH1aUYk2Mgsgmf9tCC7Wyo39KH4?=
 =?us-ascii?Q?JH+grV/pggfsY0psi7eUP0dax/+8yJhogCMgQXur0hWIvYRmL92+X2XiHsNK?=
 =?us-ascii?Q?rRIkmRMHa1pgmaR/APTTU+DSDS41Wf7j/VPMe+XbDuNIY7rAIeU49BQU5BZX?=
 =?us-ascii?Q?lxKEgZO3XA8Drhmlp8tTwN8lixA0Zuq8if36bDjrSlwOlVT9DsUN0kgYI8Lm?=
 =?us-ascii?Q?UZ4O1tplHGV3wUFbp12DGidWcHRdo+xhc7zmZvP13cyHQAzGwVEjqBpfj/XB?=
 =?us-ascii?Q?SORiJHDFq6gE5U7LtxPKeLZ/RZeJBFTKsMjoVhpwzQYBExqRhYXzlmWIDwmX?=
 =?us-ascii?Q?LQB807sX0H267ACu/zH4WQITG4t03GQvOwRKACkFHg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+qdzU4GkgaJQRPX6oeFqslBM9hdKhqPpQeJhHKRTltBdTweXkiRksFVkOa8d?=
 =?us-ascii?Q?xKI6Bqjz/vloQOdkAMYMUZPz5JAzh9SHV1UHvfXK4+bOWuNMBHu7JebGe23J?=
 =?us-ascii?Q?u0356NHINult5txXOuBNcnA/0L5HNunzN3Ths8pMToYguOqv3qW8XCAfIYBF?=
 =?us-ascii?Q?DD4ndpB9LPNnjAAwhMKNxhaDI5vxeCnqMkGIrJajrfJlHclZNl322ijeXb4b?=
 =?us-ascii?Q?egOaTez39Ys12nIkZ82rFkt3P+PxYHKChjiDoBQkEWWhLQyrDgQBW25szzhM?=
 =?us-ascii?Q?o77HD4HC1nA722THxZGHR5wpnK67PJRV8rlhOtUOylc0MgwlzQukBSFwMXtS?=
 =?us-ascii?Q?UOo+c4KuXktrquatX8p0zYRq9j8GRbbgNneSWRWSLsEHqS1TAv5iFmBefGcD?=
 =?us-ascii?Q?kc+EO/7C8XVrAoIAhTxP43b5PgK7V/pkGdMIC8bkxXBz620GeEIquprLmBSm?=
 =?us-ascii?Q?gCCG8TBdoEEGsuv2Gv72zdplMG2m7PKKTeCqYt/UCtPlvGQgJf5wd9uMrlRG?=
 =?us-ascii?Q?AIXRHgcXUuXV07wjeYJImecQAUCpcEy2+4dSB3CtaIb1I1H8sPa2+iuizQn/?=
 =?us-ascii?Q?9150Sh9dVVr0NCuVt+aZ0Me/A1Z6q35dYxt9XyZXTY6ofQ7hQlJ9iEhFnivi?=
 =?us-ascii?Q?rLZo1bdm2RP4o+KKNtQkaBC27LgEoGISD+HtSgLjRNZNvgzZVflsj1yEGatF?=
 =?us-ascii?Q?KN13aU5W/wNhq92Sx2sN9UqvSx9xqUP6zEwoYFeZn+gfZ8v+JLWUnkyGNge9?=
 =?us-ascii?Q?S15ZPMWIGjITfiS78yVSiy7AdZNIIDxK502Aj1YSR2vLNfALaxJAFt21THsg?=
 =?us-ascii?Q?H+V4R/yp2G48yUqYXR4AgzSwGnLbpBhrduE+6m3crSCtQvprPg0WWcRvUPqJ?=
 =?us-ascii?Q?VzgaZYe2JXo51WS+hdsQkbPUrwM5mA2W+GuCtw7rS8CoNIvkhuNy4tYGAiHI?=
 =?us-ascii?Q?eVbdWNLkoOaDV58druHT1snED1TyTP1Vcf2kWj56wH3Yfao3OveeBRx2xt2n?=
 =?us-ascii?Q?La5wdNdLJTIGxiQIVZbRBVYSgsKm4B9SyKNnMph6FltStNVk2MaFnic6hGXX?=
 =?us-ascii?Q?PorQAPbrQZ0zNFcXlSbs92bwzEY+6elPA6VemGvQLmvI8mZMQNhBn6q3v10o?=
 =?us-ascii?Q?pSem2omoUTY/4ycv5MNcGvoQmQ1dlyGOqSo9Bl4HNg/Gdyq2MUTRb4P3Hjf4?=
 =?us-ascii?Q?EOXIMA1hjIaJLtEDhTLXuODyRcx0Re3k+H0/hLAf/vf2ndJfEXbRAFAZa04P?=
 =?us-ascii?Q?HOlubRH5QtrpNC5/XPlZwmKdWQ6Krj1FPU8OMsAQXfX6U+6kCCFGzrjhiR37?=
 =?us-ascii?Q?h4ub9feC2DUK57E9V6lr2U1QzDKPNUeYt+CZsY7+Shp+3+BdQWjumlnTlB9V?=
 =?us-ascii?Q?B6FPp6spk6YLl5HbDnXLG5x6udueEQIobqeZ1Zz1uWELyzg/gn2wAnTCFi4E?=
 =?us-ascii?Q?aIn8ToaUs2S+WGwxQo2eeDk60SjAUsP4WV/1Un+pP2zVotqzbH/STvORfcyW?=
 =?us-ascii?Q?+LydOzodYbrZza0B+1SSxywapXs5w/fwOHsUJJ29MLv6ZByLQRZrd0CvEP/W?=
 =?us-ascii?Q?S5tMn5KepPZ95TVF/6FBrpNdcS4S56KuB8zPW+fGO8TwP8bJOHSazW6hm/2K?=
 =?us-ascii?Q?yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33ab0d5f-79c4-451d-bd12-08dc6858346d
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2024 14:25:23.2559 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hzJ+6Ype42oW5/EjRJUkRFJ3CNxbiHUAoDEtZZU0SSrgZZlW3Pnej2JBtvRTS/KLc/tjykwOCwHDWbDwQ7Xhwg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7052
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

On Mon, Apr 29, 2024 at 05:02:20PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPE_WGC_C21_C20 register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_color.c      | 4 ++--
>  drivers/gpu/drm/i915/display/intel_color_regs.h | 2 +-
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index a4935289729d..fc27c1bda676 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -626,7 +626,7 @@ static void vlv_load_wgc_csc(struct intel_crtc *crtc,
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe),
>  			  csc->coeff[5]);
>  
> -	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(pipe),
> +	intel_de_write_fw(dev_priv, PIPE_WGC_C21_C20(dev_priv, pipe),
>  			  csc->coeff[7] << 16 | csc->coeff[6]);
>  	intel_de_write_fw(dev_priv, PIPE_WGC_C22(pipe),
>  			  csc->coeff[8]);
> @@ -653,7 +653,7 @@ static void vlv_read_wgc_csc(struct intel_crtc *crtc,
>  	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C12(dev_priv, pipe));
>  	csc->coeff[5] = tmp & 0xffff;
>  
> -	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C21_C20(pipe));
> +	tmp = intel_de_read_fw(dev_priv, PIPE_WGC_C21_C20(dev_priv, pipe));
>  	csc->coeff[6] = tmp & 0xffff;
>  	csc->coeff[7] = tmp >> 16;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_color_regs.h b/drivers/gpu/drm/i915/display/intel_color_regs.h
> index 2dc876e10eda..c2e06ccf96c4 100644
> --- a/drivers/gpu/drm/i915/display/intel_color_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_color_regs.h
> @@ -260,7 +260,7 @@
>  #define PIPE_WGC_C02(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C02)
>  #define PIPE_WGC_C11_C10(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C11_C10)
>  #define PIPE_WGC_C12(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C12)
> -#define PIPE_WGC_C21_C20(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
> +#define PIPE_WGC_C21_C20(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C21_C20)
>  #define PIPE_WGC_C22(pipe)		_MMIO_TRANS2(dev_priv, pipe, _PIPE_A_WGC_C22)
>  
>  /* pipe CSC & degamma/gamma LUTs on CHV */
> -- 
> 2.39.2
> 
