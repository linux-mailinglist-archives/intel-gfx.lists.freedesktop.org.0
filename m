Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 435958C1C34
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:48:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6B2C510E2A6;
	Fri, 10 May 2024 01:48:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rookz4pd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 250E410E2A6
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:48:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305736; x=1746841736;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DR0EipAmXKq59OOYdsYIrCWpgiLrrHoQliiiII/EKXs=;
 b=Rookz4pdRA5SDrRRRULF6/69RN+FYUnUDt7ZAi1W8zMbgeQaYWdjIWL5
 nU0Z6Es+qCxQThgpx7EsOq1xXtPJYp8ZqdhNHGgc3oB+oNYLzFBDfzZcI
 bwsKWhPKnuD9JPgQCmPzL9Sfc6gEMxEgfJ1U1s1TIaf+tmtE1oZbqYwk8
 4vcvIlQTRu1IuhmLkQeVpsXbLrASMudsw3Wq0gSRg02ax8ZufjXXi+1pZ
 gCfZ/bJI6ZcsuoSakjdpU5QgT4KBLR/QZ4/+nQBA95lkxzcsdTD+/iW+N
 yEBAuDnFbxbZJImGYNAX1l+mDmIM/96MZF/703Hi3b0NbDnmomx1WSJVG w==;
X-CSE-ConnectionGUID: +1M0hGJcTWGI/qOHIp2JOA==
X-CSE-MsgGUID: sHs4W89ISwK5ZZ0tnEgUjQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="21937344"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="21937344"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:48:55 -0700
X-CSE-ConnectionGUID: AbxBnTywQJ+ZNIEprADD9Q==
X-CSE-MsgGUID: fCqb0UNlQh2+4TQs8uIyow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="33965435"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:48:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:48:55 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:48:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:48:54 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:48:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J94ZRDzn7p66SCCamjsspQNBGXUjZLt8DaFG/3GFrXctkuqpd3+P9Zs0IGd83kWNfO09W03Y+aatlg5PpP1O4PpxmdQZWoje+vV+djj0zAwWY3cwPVQmYqqQ4SvuB8NnZ3n1HjDor66zN2npmvQkdVpUA4/vNbsuMR072tdqhl4yEajS4o3Ip+p2+Sydm6HAVMSAzF0AzOShjtJo9MJ5Q65ooTmRtbpfA4I2tOuABhigX3M1PUSlDJcjlm/6LJKSGYDFWP4WfZGaltXpWHmeBFM3Ja8KdpSwewbRbYviRcx6yDAuvCHENgigMNI/ewWK5zryeHhguWK7ISL1vY13QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zbqQ2kr0xfKKLQIVU1z76IKbVXXvCIihLWc7Ga4S7u8=;
 b=hwxDX3Ef80XbjPhZeGiyR7HdUueGJ0tfhXhg2SiQRUQ6/2hGlzdHVY1Bq1MIHSZI3hg4GOe5ZvGs1rxDoSjKXeLXKFrOuSKGcDEHI4zCddCuxgsfI4kq6TM8yCWLvyfEyFZj7kxJzAouB8psPkNydur+r0RgN30EbyhLaQopnsbGr1sLiBgYNNK0Q7QnVr32yT193STs+wXeOmM/vFfmmldI1P4NSXtqLL9jrL7GehgxD+KMP/lsGqAZsnG6ZYmwqIU81UnDrZhygeG0Eg9tNS1G2iKT5/kwNLb+1yblW0PiX5OaqI5M+/mMvNMSJgohOkTrLZV6BQqha7UoC+9wpg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:48:52 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:48:52 +0000
Date: Thu, 9 May 2024 21:48:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 03/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_VMIN
Message-ID: <Zj19AD61-mbLDMCz@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <ac1c6545a80e4cbdc98f54f8d67e69fd46cdcc91.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ac1c6545a80e4cbdc98f54f8d67e69fd46cdcc91.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0100.namprd04.prod.outlook.com
 (2603:10b6:303:83::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: 65f611f6-3142-48c7-0665-08dc7093581f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?LKvsOOXdo2t7HSwx249Qi5VNvQuXNEq96fajvHdNW+T8ZNW2o+uQ0SZwT1Uy?=
 =?us-ascii?Q?F9pfwGnvBKKhv7C7c4pEfIVSof2nKS7WuRbrmIrUDjx2LFCWph2iAaZOE4Bw?=
 =?us-ascii?Q?Qrf8AVYwyM0zHY1mAkyj/NwQE+rdNF5P+FPgCdqKIb5nvrV7KQfQsuTg/N/q?=
 =?us-ascii?Q?fRKFZ5RxAX6eONItAnEl0ZdU9149jWf14+hJG3AMTWxX41c3NBfkCUUzJOfu?=
 =?us-ascii?Q?qzXi5vU4T+vdB3R5jCRFLIv77T3FvdKc97GnUL7UmEru49tPqTBgw4A3ipYV?=
 =?us-ascii?Q?RkZxDtlNhGsQ0OH38bxOXQyXA25VcQuRoZbpC1DfI0VhBdeQwPmqfUyxJUbt?=
 =?us-ascii?Q?oHtZGwnBw9XnHnf5N3PsdrWo+scLqKjGxOqNCD9ANWD/Xw6XPjPZWtba/2aU?=
 =?us-ascii?Q?BQcJ1H58+laUDtl/dXwFtyvUcLg4tOm8ZQie2T4W/ChLrjLFDAaA1rBm8sH5?=
 =?us-ascii?Q?wsbxji+rMjYgWKH+6ihaVa2XpiYib5dACzHAxMVIHePy+2lssJ6EwyyV9xQZ?=
 =?us-ascii?Q?0AzALlhdZCAR1uoUZKzoLnFzrvqjQm7FWU9Qs27KQ6qUkszoWWSfVtQggxSz?=
 =?us-ascii?Q?mDUuhsQivGNeiVmA/SGpQhd3hw5jyI3xcXTZfgoxaoDcYUkz63nPWHX+cubd?=
 =?us-ascii?Q?/Jq+XyNs6yvxlHjSk+OPhMOJC/MYsnM7+v7/PHAQRDv64t4E4LsFHhnlR3LI?=
 =?us-ascii?Q?oz93RKBQNVqCmjmasD++5E7/WtZmqW4YMLaNdQvkiKEFfbzGOLT2maxWbrvf?=
 =?us-ascii?Q?GuI/3ZlyiR3YmFhX6Licf3ZPeigzLRxKZg7GnnGHrRyRejEFTlHa8KDIHcdQ?=
 =?us-ascii?Q?+RWYi/Z0duvARHwrVKQHoqg2ZB4SDZLNSuXWAInCcnJJO8/0zfaies66KjK1?=
 =?us-ascii?Q?Os1t54mzMpKM21DiSRk6oyRRr7RPmwFxUsTmz66TIQ/ls7eGVPlED1NFWN22?=
 =?us-ascii?Q?W5qSSzHfAj6Songv+ylY4TDwxQg1ZQH6qOyGGFhL/LKCINRnefTrHEz6S1YL?=
 =?us-ascii?Q?ZPauru77Wf0rPAGCFbIdiuuRSRWCT1bNibm0p7zSg1YJVLk5MLe3UN1/aNdF?=
 =?us-ascii?Q?TZmUqi3O9wYuGnwqw19hKYU3m5xRuzuu3WG+2fbbKlLdEC+NwEk7cw39uGOJ?=
 =?us-ascii?Q?trfZf1x57NNifPVf0k6RAKJ+dBwMh05GGrHqAUJ8ouIGuIh4Qs4oXOZPWJws?=
 =?us-ascii?Q?ndnNn6C1f26H6WUxniuQM9EYwYEqf8JOpkqfmp2hOxOTIiyGYxb4sOEuNxfM?=
 =?us-ascii?Q?O84HMEUVHQLHrsaKpjHZit0c24II0m6zYc5ltoK9ZA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MlTiEsumcJp7C8MwZ28WmOFzFkbc1MDol0kBCJiGPaxTNDBS7Mvhu19iveme?=
 =?us-ascii?Q?i1WZ4vQ4bUOIHtxwvCYX5DjN9d2B8XAqv/UWvUYGe6zIAR5Q3+E7neWoqdkI?=
 =?us-ascii?Q?Yz3g9S87/LrnHuWnJ7gl367p9jj2nqGr8dEOuIDPX6+snB11a8vk2sOjrG+t?=
 =?us-ascii?Q?ztJwiBpm3LFkOJEa5kgOdTtRU/bpsNMwCqIg1NhzHkEzFbqhVZIO5hXfZLmS?=
 =?us-ascii?Q?kUi703qT7e/iRoQsjeWX/gVPks+9k3aEoyXAQrJxTp5WRCTbIS+fVqoTUTc9?=
 =?us-ascii?Q?F+IxIr50w/CWUdxZN5Ifwy3KdPZcQkLppiW4Lv3m12ZvVkgft4B7nQcq4c68?=
 =?us-ascii?Q?jWrFfxGHe4gr4FMx2udM65dMsjwEy/icw/bXGQpa11wuHtMFuU1nXE8d1kvZ?=
 =?us-ascii?Q?emUCKvVOXfpZFHVwQ8r5bbOSA7epk/dfkTH3B2+/Xv4+gvBa6I6sRXTbz7Xv?=
 =?us-ascii?Q?LAYM+l8yritAMxsvxCnme6XYP9QjFhaPuic9PerRulKU6XEoMIjSwauvifAQ?=
 =?us-ascii?Q?sfvLROx4DZoPUgNW2PI20O+haJvnsAUY7PwkRj7AzD+zF21Ysel355ViSDjz?=
 =?us-ascii?Q?lGsAaLKB65/r+TM7PU9sZneQAiZanmSaGZQ2la2Tj1xw249NodNO3QpfNpN1?=
 =?us-ascii?Q?vRRTka77FlsadTbcyhaUuZQM4kgPx4d6j+3tmQaK63gT208vjfycpjBmQItP?=
 =?us-ascii?Q?6AqGwUFg+wpGiOfJGBsqj93Gv2DY+rgVCvFpldZGoHXeI7/S5ciw4vaLM2VW?=
 =?us-ascii?Q?yzmfEzGV+wFkmUtogze6G+O1RTM4jEwj0FKhNeC3tnX+l5yDqZCf8PoWDBkw?=
 =?us-ascii?Q?YR4lETSJXLP6XbUrZoKNHExMNs0y66RtRCavGkqPj72o1JVsDlGI3FnFW2Xv?=
 =?us-ascii?Q?+szG4h1bj2G35oWP/XBNTxCOnxvjRK144xTiIn7c6bGn3WvCGbMR+3UqDifn?=
 =?us-ascii?Q?20kARKmlYfV/+CIP4KMfnNBvTUa0EYKcgezYGlR2wvmciIrVSsrPZoD1+4gC?=
 =?us-ascii?Q?lkPQVzYwSrXXtJ3cZqdPQe0dDxTFInpqwq07EX7pm2p9/1iSflxKODLBss+U?=
 =?us-ascii?Q?t2K3EZQk1nIhwBPKF3Ph9JF39yZb+4n7SYhE2AcEwFGh1bM7d8SIesG/EEhn?=
 =?us-ascii?Q?H4ZsjzVND7/WbCTFwvB9eS3LG/puo2LkcCbVjMHSHgTmCRw/sxqUylyvyI6z?=
 =?us-ascii?Q?SxYXS3sGYUNTQOOm92XWmZqXbi0/gIefrJ37t6eE8xqwthRIB1SVpopxrhQ6?=
 =?us-ascii?Q?xR1nnM8u4BFLa0LRbswWBBquPTmhmmfs13Hl5DIElPaBI1ym6/0TpBwmVUBO?=
 =?us-ascii?Q?/ZkMqicY7P2eWFbt6KSfzKXi8yWeeyMayWj2uNKDdFNFwcaLZwRjRREYPc8q?=
 =?us-ascii?Q?dq6hf8bQo62KxXhIGm4QClka0s5O2rzsKxWKaI7PogMYh4sJaTU6gTCjw8C7?=
 =?us-ascii?Q?fe2Yq/jRW9B5RscJjFht/k/eqUmyI+lcD7y2Uj/Ujx/Bf2xTcqxDNgFWAO+/?=
 =?us-ascii?Q?8oT1IK/FA56xPo3g1u1H8cbxI5zjT2dL+5y5zOyNEnO50sHwVjlVmvjK3Xbw?=
 =?us-ascii?Q?LPu49EB3Lb53kIIUw5g2Z7/9wjEcwS6Ntp1fX59gWS3wUGKkOF8mMpMIAIRn?=
 =?us-ascii?Q?kA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 65f611f6-3142-48c7-0665-08dc7093581f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:48:52.2507 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZoEzjz2UpKLtU7nH5RAEe0nMg41VRdNKfso2u1NKzpMZRPBCwoipWQeVeBZN+ycDedQ0Ko4aM+j0swqKL1qQHg==
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

On Wed, May 08, 2024 at 06:47:49PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_VMIN register macro.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 6 ++++--
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index d9024ccf6098..fd0f0794f6dc 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -218,7 +218,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  		return;
>  	}
>  
> -	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
> +	intel_de_write(dev_priv, TRANS_VRR_VMIN(dev_priv, cpu_transcoder),
> +		       crtc_state->vrr.vmin - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_VMAX(dev_priv, cpu_transcoder),
>  		       crtc_state->vrr.vmax - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> @@ -312,7 +313,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  		crtc_state->vrr.flipline = intel_de_read(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder)) + 1;
>  		crtc_state->vrr.vmax = intel_de_read(dev_priv,
>  						     TRANS_VRR_VMAX(dev_priv, cpu_transcoder)) + 1;
> -		crtc_state->vrr.vmin = intel_de_read(dev_priv, TRANS_VRR_VMIN(cpu_transcoder)) + 1;
> +		crtc_state->vrr.vmin = intel_de_read(dev_priv,
> +						     TRANS_VRR_VMIN(dev_priv, cpu_transcoder)) + 1;
>  	}
>  
>  	if (crtc_state->vrr.enable) {
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 693b4e562d46..775c878ca72f 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1254,7 +1254,7 @@
>  #define _TRANS_VRR_VMIN_B		0x61434
>  #define _TRANS_VRR_VMIN_C		0x62434
>  #define _TRANS_VRR_VMIN_D		0x63434
> -#define TRANS_VRR_VMIN(trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
> +#define TRANS_VRR_VMIN(dev_priv, trans)		_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_VMIN_A)
>  #define   VRR_VMIN_MASK			REG_GENMASK(15, 0)
>  
>  #define _TRANS_VRR_VMAXSHIFT_A		0x60428
> -- 
> 2.39.2
> 
