Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3914A8C1C35
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A10F910E321;
	Fri, 10 May 2024 01:49:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d8doTlqB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3149810E321
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305790; x=1746841790;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=e3nL2Hk0eDoTdMEKGSAsU7vASOzjPF6PSM5ksjmDads=;
 b=d8doTlqBhMiIBfgs0KsMrbSf55apawOhyC7neT/aqeDtBf04lh3jHaJy
 yexmjhkJiFEbuC1a9lOHKLV4Pei9s31Lp9wXPV/ABNgnu9HfHIYOBsbc6
 k5xke+AyLrkMiaf0BGilYGzxxFOq1INSbtU0EEqXSprl6yg3ciqMal+7V
 XqLVJdxInInV7SIKVtJzxr4Wb09UGvGFL7OZxZJ/ZJQsIRhP2hBZbUwln
 vinrrOXMLCGGd9bj4Bghcln6LeBQcNZhCL1SHhghlRtB34/5Cxysb7UYQ
 eVkhxhFrS8Z42OkZOhu536MjD1anY2G54NcA8Oml34aOiey/mQafAqlc4 Q==;
X-CSE-ConnectionGUID: J+YJUP7/Sty0tKgi+0VMyw==
X-CSE-MsgGUID: S+OxFRxyQBS/9LvpzhglQA==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11105938"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11105938"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:49:50 -0700
X-CSE-ConnectionGUID: TPDOrcl0Q3KJfUJeGmr+Iw==
X-CSE-MsgGUID: 0mdng4TBSIWVoHCqEGUGkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="29391614"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:49:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:49:49 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:49:49 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:49:49 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:49:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A8qzs8brugPb5TaiYURmf1Z4J/Tj7ew9HuCykH589rEBrlswOgRXd08dr5LiYIRmcD/AOVqTU3mG7zhzG1YfJ/HlNZu4wre+McAYO6s4X9I/ILxaf+3i1TWHbeE5TiHrtza3/6vs8eglWNg8OJMS9D4NnZuAhj7J+AdpIIOJDYBDIOrOKPEWsleBXdIcTA0LXElUEHvzMQKZdk14SwqsAw2knjA/+Wk5qGkshe/s+Su5OSNQXYtHgRbC0fT33oLmSfXzICMbWoPHihArUwaGTKkFVZTiKujfUVVZb/FE9b7yKPrYy6nMuzVdp89b4EDE05B07l0V4McYA5oeR+gDAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SknRDBWWpleZtY/Y/GLDBDlOWtfO0sKDuolmZ07LJj4=;
 b=dlldpraYiLAfSBlIx408M7oQUjXmUia640PlIyOSucNQsj0WVrFkKYkynXixr+AlkvyGO6IYfwcet8n79CDnChiSe8MOBF8jvbDqfqbltnrOGkzPLUJMLUpSEaMIQ5MtRHo+gwsKOdK63Cjlebu7gDwVk8IWCGQMP17WxRsuriAS5pYuaOccIkhEuxTV9z6y5eNuNdIiNSoaWNYLUIHSjo4LdDyTMp6zYTKvQp103oKzguuhYb3FxzWw3l5QKBaeVJCVIfnlvCfyQvxylxpW3upQyLZE7RagJjS0fW/9s6PWSGb/YuFO0hMCKzBuSu905EBmon79zaTYsh5PRWWwPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:49:46 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:49:46 +0000
Date: Thu, 9 May 2024 21:49:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 04/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_VMAXSHIFT
Message-ID: <Zj19NlUA2bm0bTdW@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <6117aa8936a8e91c58a7a0bada21f266c79a0e5f.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <6117aa8936a8e91c58a7a0bada21f266c79a0e5f.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0274.namprd03.prod.outlook.com
 (2603:10b6:303:b5::9) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: 185a4864-8a26-4a1b-c354-08dc7093785a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?n8Ln2Cf1T7P+19F/HmN++EyvbcpeS5RNMa/GOuGQd5fCf6vHzdhnNTAFtG0/?=
 =?us-ascii?Q?+RVJKR/uaFxLC9/xxF+zPvLS6KQYXzK6TgvUqhz8e4bGeXeVX3cJu57rf9oD?=
 =?us-ascii?Q?RoOLKXdixZwboalFRzpK4vnrfX5IJ67XBK7zq4Cq5vGaKHNNb7Ri23hdjMNt?=
 =?us-ascii?Q?fyYNGYtV6yPNF9rhudYBUoQtHX686fDZDZHIlPGHZj/Gps8XO8aV/eRY/JaM?=
 =?us-ascii?Q?0AyD968yppVrAn9JyzRa5bYmjOjz/8uuRTlG5o+iV7wnXrAuGxu1EL7wB9cm?=
 =?us-ascii?Q?2qOeAfoblJeGAyOtJ7pYNGDUjRAGLWWRLiYzAoRU/CU55hmu39qWWK8jrLYb?=
 =?us-ascii?Q?enEp4TgDojedFvUFPo9X0VYOvVRi/ctE+NuLeOQh0Y6xYJ58vNxM97kJicNq?=
 =?us-ascii?Q?ZQwqpW137ddTUPf3gO3mElIjcdExdEYAtyIOwIc+vOdKAsPbDiYE8/BZKmI5?=
 =?us-ascii?Q?/uMqk3FE0TrZsTcPd9y2Z4/0H5pDcZfQzrm1RtFIIuSRZMZEsZ7QnLsnhVep?=
 =?us-ascii?Q?Qdgrc6YkkCDl5eq2hNQiwIG8U/Wxv4BmvpfKotHv077gj8UnuFhWP4LI/Obq?=
 =?us-ascii?Q?LsmQDwhvZd5eRwNcRdUIrv6k6Nw1Hl4aGjAjnC7ARYOTrRx2fyyZHzjHKIUB?=
 =?us-ascii?Q?LjJtmmSTA260JlXY6gajgW5oLJr66TZew+YPF/AcAjiQtOJjmA3udkl6wBic?=
 =?us-ascii?Q?zYJLKOTXL5rwy/SzH9fCdWFw771/diRosmlsmYXlqvhfwtY3uOGWQ2uUcEMS?=
 =?us-ascii?Q?N44TpxX/X+qOasOIrTsXorLT+0VGLR94k7M6KZ2YmjOiLbbqxTIbdrQhm2QF?=
 =?us-ascii?Q?d5QyTktccUQRaBTYE+ikDyUMvKfE5ZZWuKWyB7/AKa0rt8dl+TOecB2nbAps?=
 =?us-ascii?Q?HJoIXwPzzQcVQ5J97lPbbmQqzxCwVg+KmHWG2jBWLmHmksjXcPwSsAh2DEcd?=
 =?us-ascii?Q?n2oYjEewmYxYpTkFlqrmf/m9F0RUqtT6vz+cQSUi46HhnMcucdLJCHkFfECF?=
 =?us-ascii?Q?xPkvephIX60XaUlLNfedDqYT9pcCjACI95gfSsm0VSfsLjyUsLtWfQYGT97x?=
 =?us-ascii?Q?Glwp9Tt+rPzEz8Jr38QAg1ZLleaB2338YqzE05xMXEVVYIeT1XmHaVCYvFgH?=
 =?us-ascii?Q?0HLbtuulMb0j5lJzwKBYk0e7nYHBGiKQZ7+30EXG3EvWyCtb5wqXs5dlxCM5?=
 =?us-ascii?Q?7AIQYKkLU1b0QpDwbTXveXSRLkT7D9Us/Xe464oDxZrkB+2juAOyCszDir4U?=
 =?us-ascii?Q?wQpCq4SPoelBM597F4adBxbHX5I/rZqL4ckr84PFbg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RtfZkpAPZKnbygkm9Bd7+j6NGhFu0bC8P7vm+98D56mgyQgEWOXHk+7MyE/e?=
 =?us-ascii?Q?zxQS+eBnZhAIcV3cjvo6ivzohsxk/G+u7hby3+A6HNDw4pAFBT6ltEL5/vqT?=
 =?us-ascii?Q?Zc0tM4zUFR5ucU2Tuk5E2Fh3mwO05Zocm2QxaAuS4mr50UI+fXRP4kn6998T?=
 =?us-ascii?Q?m0zt44G+GEQUpV4RI0ajcvaj/FVIR+ngU4ta1zfK00cFOMDSWii8gyK+5wDu?=
 =?us-ascii?Q?YeU+pizdWHIbsKIOhizuTS5f6K3rLtlnQH6h0KMRll+VV0Z7d9GpXvlz4HIC?=
 =?us-ascii?Q?a8+N0lwCbSEqSqi7wJXaqM8RrV43XWTLxZncUSOLLfyCSuTqGQ7cIEy/PgoI?=
 =?us-ascii?Q?4rKZC9QQa4NKCUYnB9o5yGpPse1/+AIBdEmAqX1P4rdD5XzKEQeWwKTekePK?=
 =?us-ascii?Q?1+x7mdxTd6dPlhooykaB47hfAsYxIE0qms/H5MKO6I9jGwIVgvXRue1/BjxJ?=
 =?us-ascii?Q?3ywkZd2hS08DR7cEQMupDfN/h19vYtREPmX6+zTQXKANnKfXhzjlmSjk85Fh?=
 =?us-ascii?Q?kxKDVzjRz1QoNl/8MEukC/2ngO92dbjB2de7eDtTFFicCK/DbmbwtWnXHLEH?=
 =?us-ascii?Q?YXrSaj2O9eXU0AggTIuTDFb2ENQeu70iplvW88Me76YokoO971Vi5VIqADhe?=
 =?us-ascii?Q?W5VhJTsk8387QGV8HGZIbEilYGZ6ElXNbPfzZPFWsV/Zm5cG0yq9m2f/N9jT?=
 =?us-ascii?Q?zTjc96Zo0gT9p5UjFCywX2C0C8TcBS0Swom4Vk2D0AWw1igse/gCfaID/8ZH?=
 =?us-ascii?Q?7KU99LswS/JAbbPBGddtO4DaB4BNLQbwhnLwQuNROUJtVJen+4Kq6aCfDTZX?=
 =?us-ascii?Q?CT5nhp8JWwByyZT4aFWpJqJSHyJTURBVpNNRt2Ca1Sl685gIcBqioD0KKZMZ?=
 =?us-ascii?Q?GNvlt3EjVJTNg2wFDSYRiC13vYOXgwFgzOuNuNv8eVLs1FTFf6qundojJQdQ?=
 =?us-ascii?Q?JqE07gfRCHeHpOOVWeFvzuffX3bcoykhkMs8TouUNrMu7jcx10cnfjodn8Yz?=
 =?us-ascii?Q?EKKw9hOHdF9dXRYJr/Xzc8tdCdx+WZeCNEhnEvqnvTFK3+Bp+3vYxQCrEBW2?=
 =?us-ascii?Q?BOecQY25Qkhzctbz8cK0WH6h++XVnE2qorRvHWKKZyM2FaZzC5PCChFJA0Gc?=
 =?us-ascii?Q?7KMLUeuKyHzn1OX5udpuhh4DEq60tCH7NbHw8jmJJw7JHBhEhcsDDZ24SO/8?=
 =?us-ascii?Q?iGIG10eWF45jMiX2/KR2NgGEr3CYKF08eW9o4LFv+rZQTMyO26GTGMvhR1wO?=
 =?us-ascii?Q?fyGD6m6a6j3h6gHqsjmap6QCmF8jL5bci5152ilXa9NCphttbNmeHtg+VYCi?=
 =?us-ascii?Q?CPsogRcddcT3O7sT/iaXkztUOtPzQc8hST8TX+ihKq2d6hzHXjv32w6kYQNI?=
 =?us-ascii?Q?Y/pN3IBTuKRGUaxJJWJ178qWCLAML8lZhYC5lMmgXSnfK6JOCs22ak1l27e9?=
 =?us-ascii?Q?602i9ZBcAFqDlgSZ79lGtPuRxNTd8IRTH8TCAWqKsNFiu/dJkntXIzQe05IJ?=
 =?us-ascii?Q?k8sKIPVWBu5X2zEnd+UYIK37pPDWAyWT/IumhN1W8mAROvmHVxdI9Jwy/gKq?=
 =?us-ascii?Q?6vXSOLO6FhC2WnRAx2HHCPnMsiwl7Vt8p9SWrHLw+oryH8xq44wy6i0Z7hEx?=
 =?us-ascii?Q?fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 185a4864-8a26-4a1b-c354-08dc7093785a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:49:46.3284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ntaZQDQjdakmjG22XOpL4p4daQtxVhIu+q4CY0mVUpd9510MRBDnjhZvleN77ZxExLhc86zPxY2TuIQOsumRVA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6947
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

On Wed, May 08, 2024 at 06:47:50PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_VMAXSHIFT register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 775c878ca72f..9739ef525e13 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1261,7 +1261,7 @@
>  #define _TRANS_VRR_VMAXSHIFT_B		0x61428
>  #define _TRANS_VRR_VMAXSHIFT_C		0x62428
>  #define _TRANS_VRR_VMAXSHIFT_D		0x63428
> -#define TRANS_VRR_VMAXSHIFT(trans)	_MMIO_TRANS2(dev_priv, trans, \
> +#define TRANS_VRR_VMAXSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \

unused? should we remove?
or one of those with wip around that is going to get used soon?
if so,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  					_TRANS_VRR_VMAXSHIFT_A)
>  #define   VRR_VMAXSHIFT_DEC_MASK	REG_GENMASK(29, 16)
>  #define   VRR_VMAXSHIFT_DEC		REG_BIT(16)
> -- 
> 2.39.2
> 
