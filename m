Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1AC8C1C32
	for <lists+intel-gfx@lfdr.de>; Fri, 10 May 2024 03:48:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACA7210E28C;
	Fri, 10 May 2024 01:47:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OMxmmUUC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1053810E28C
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 May 2024 01:47:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715305679; x=1746841679;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ucnZzS1qQi7dkxQzMEDRnAUM1SknhG90AIcstwSeLqg=;
 b=OMxmmUUCHrvxJSVGppKm1rUAb9/YpahHWnDcarvqWxgZwdmogiwMNZIJ
 aTvXbuBpk0yuOw6oK3OY/VGXHzRq36GTIZcOY7G16Oj8gczJXzvKv2bX+
 Bu/0y37rpyRpfK7lpKBDbWrTTHrrDiv6dTxi5JKMV5SsfSniw67y/3D2+
 Z/ae5uXv3EpZJ9qo7VUn1HG02xDchGmelhTMEIqJ4g4vCG6UGYA7Of1aZ
 zvQqir8hsr0JBaGOxdVhPJy7191olB7BDgIfRQK7x55ZtJ/eVGqRHQlQh
 MDlZ9b1khTgvLnwraK+u4+nrJ1sPC+uJAoGlF15tJWbJSvvDJ952rsEDP A==;
X-CSE-ConnectionGUID: KajlBK0/RBqLBc/xQINC0Q==
X-CSE-MsgGUID: 8ZL5Y+T3SMOcWUXOoKuFXw==
X-IronPort-AV: E=McAfee;i="6600,9927,11068"; a="11394745"
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="11394745"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 May 2024 18:47:59 -0700
X-CSE-ConnectionGUID: Ro42OVUGTr23w6GzvKg8yw==
X-CSE-MsgGUID: lYkIUgqXSlCVuQx3ABGFcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,149,1712646000"; d="scan'208";a="60302487"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 May 2024 18:47:59 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 9 May 2024 18:47:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 9 May 2024 18:47:58 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 9 May 2024 18:47:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gDzQPEfYnpz4w4JV9+ufAyaOgUhqgJKHq5LeJAx2fEbeM4u/hqcpTX/UwTBI8/xoBinEOn9WB5k0mWzrut6/OsNDGR+5aX6qcC4YD/ZgJIH1/k7KfosCRTJ0czrmH9KfEs8hR9nM3IO2A7a9DATPxy4vSgi80Ht1tRqOtJL8ThJk+7AFhuCyl43DVONvpKn1+yRoa8ocv/f7oYeQFJoK752HLUKQiAd/tkropoJTqM2jA7lXC92NrR3BMgPWcHKtftOez/I+1rXHbXWY6p/jTJYwyBo/itp4VVHDHIMBCHrT18Bj/GYhKriJSxUjXtHqr8JO6Gkbt9a1heu2N4N8Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mtQl7R0dgEq+F+eJBuG5x8cRgcoMJi0XBrY4RmQgfHE=;
 b=ldHiIcIXeJCnWbnBxvvl5jqBn0huCIGAMWpFpCv7s/iWSeSaiNwx+DjwA44XCCXqLBw7mcojwRmBJeopt/9DNtRomo9syx3H5SV2Z7oY8JM0rjzfttTJ9dZsFDDsz4xkWBNAShAx1hM2wZ4odIiWTRXssNXI7fUy9ETjfg/IEj+hc+WazAyGNcCPIkjDQYADgtiSprutYu8sHdYMwCEIvFXtuG+uZByvldSdsEXYNITjAV5ql2faTzFXWXFCnVa15tYvvuqoEOZ8OBx/Xc6Hg6+H8L/MjiUrC6r6IimkJt0mvobbNzUmJVRu0BWhaXcs0arkZKU9gNrswUpJWk1fyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SN7PR11MB6947.namprd11.prod.outlook.com (2603:10b6:806:2aa::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7544.47; Fri, 10 May
 2024 01:47:55 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7544.047; Fri, 10 May 2024
 01:47:54 +0000
Date: Thu, 9 May 2024 21:47:50 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 01/10] drm/i915: pass dev_priv explicitly to TRANS_VRR_CTL
Message-ID: <Zj18xoecevYXx03m@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
 <d86be64197d547085e857b09dacd21f4ee6b1517.1715183162.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <d86be64197d547085e857b09dacd21f4ee6b1517.1715183162.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0235.namprd04.prod.outlook.com
 (2603:10b6:303:87::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SN7PR11MB6947:EE_
X-MS-Office365-Filtering-Correlation-Id: 265eba74-d3f6-4350-ddea-08dc709335ed
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?S02kUUFZJE4j6Ai5mG8/MgXRNbJBUktNkxWcZu/yQxLrLLAaYDnI6DV56mxa?=
 =?us-ascii?Q?x3IJqCyFd6I6fPcaZSMiWB4AdQaVB6GxojraiKTHl1aBrOuxsTJ0uI7bptop?=
 =?us-ascii?Q?SFB2dmbY61v+E8s/31aqOgr5nFDO1TCUzk0iSmCY/32l4c1d0c1IIuBdhNrF?=
 =?us-ascii?Q?NmhcVx6blBGu1cQD3tVi/E8qOqsDF7cWHyja960e3BU06aGX+1HxTq22WZQ1?=
 =?us-ascii?Q?Qe3k31fQWnwpncElyu/oO9Ww3OevYQY8QYeibCHTu7J2QYrITCnNLZspdfyt?=
 =?us-ascii?Q?ZP4iBZbetsgT0YqELdgjiEMfS+EU6P3b+72m24ym2HeR0o6t139yapGEs4tN?=
 =?us-ascii?Q?08jpxKuzgFKfmOUnOukiQavSHQu5UKL0T11cG8dHpBqBOUquCuE9BbFZO5ex?=
 =?us-ascii?Q?wM2lALzMr34+ofcHcYjCr0TRqFcfKINyKmwnlZDgj0rmlA9sMDmfALFltLN7?=
 =?us-ascii?Q?6OZaKvgl/Cl+ainUcLK0lZAfAe0qWU7hL9MEQ5yV+xuOjoqEOFB4LErdINQA?=
 =?us-ascii?Q?U6D0lGj8NhbQ/MH0+DeYmxx7gHinow6FTC2v6pl6N12uJmoPAJc3TXHtiOPf?=
 =?us-ascii?Q?5zpa1YN5wpXJ+39LWSiF+Fc4GIiehbBcraZZArB+2C2GxZBKcchK59vxTFra?=
 =?us-ascii?Q?p0EhmVquHAM5Idf78f8N/bmALcyEduCKPAATLT8TbiFwkfJhUKR7RIUHYFA1?=
 =?us-ascii?Q?dZEIxGYbUVEhSsTHeCg7kzE6Kel6YqerE9IzHrQJSNBlkToxTef80R9TQJcD?=
 =?us-ascii?Q?t/8O2GgoTQtbdLWEoMvXXIwzAFLvxHczFB+CbiUAvQXQLR9uYirbCsFfoHFv?=
 =?us-ascii?Q?wirxnZ5NwfOen4t843F58Hkls/zDbLEtzBLyBx9x02KjLJHonWr7mz29Ca0k?=
 =?us-ascii?Q?lBL4UDC11ZvLlgpANx3XDv77o67/pRfXsS9dQJ2LIHaOdUBYINrU2KUSkonK?=
 =?us-ascii?Q?D8S1W85KhtXN+sc70YxhmgRdgLblMFZ/+tHC2Ldsp9ks1I1B/hTpYslnI/z5?=
 =?us-ascii?Q?YIeEIy7bYHkWpBUkEe44TkbyUV1YuXmvSOMqoLug7062cpjLoQo26S3aMuiD?=
 =?us-ascii?Q?fUERE+XaWFsrEv7O+94xCtLr7DwiMgKwlJEnCC54B6Jz/93QZDHxDFpXQVto?=
 =?us-ascii?Q?zwM4Z6ADf/fYhvkA+noZeEJLQiBddf+mhLzH2Rnm+BPG2xCygZdo+BNsqRnv?=
 =?us-ascii?Q?MvNUbcceuxnkP7NfZUF7kDABSdoIuqJg3OWiz4CRgzD4lCh6QkuIFkOHFnRK?=
 =?us-ascii?Q?bdW+6L3W+IrDG1/fGPtoPcYoI1yT1mjUEJOv5cdd5w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WBTiSK2lclWzj7AwmVZu8sredg0C1B/nOvsAn6hudSp60sPDgC9vLW/BlJwq?=
 =?us-ascii?Q?xR/YjCzAy+xcsjiHnNnVXTXPmQFRbpkFoatF6TJBlBoeixaAJSx5FLhayt1d?=
 =?us-ascii?Q?LewPLUXKNbJ2B53wYbQO7T9vvN5C9DORAL5Qe44in5nVlorIXOMIoJBdChko?=
 =?us-ascii?Q?Zl3SZ3xiGxU5rPYF4Gno1xoazTlzhmL98fMQScxlMkC1y1AXEoVJb9uonFyg?=
 =?us-ascii?Q?HPM5sis26iAJkIk20RjFBGbk5qRVqHJXMgRPUH4FlRTH60ailz2Uo8bF43Gp?=
 =?us-ascii?Q?+Wj/93UrXm21mm+xz6e8s0Y+MxhmdQzgRhBGZuQ4f8J89dmBHpSedfi/oR6k?=
 =?us-ascii?Q?eMDLEUjk/95cEn9smJ4XYdzh3bE91e4tN90AoEuDSLuFaVtDgBAKLl5BIeay?=
 =?us-ascii?Q?DqaJK3X3XrPxO13GfTHMxnt0dBdZEgs+LOeNN8MrX6ReUqrlG4KZx73WNkoy?=
 =?us-ascii?Q?GpApZJTZZNK3CufbDERXj5ayQReXUhvl7J9sfkWfyazGLUfK/WwtoG2jVc7Y?=
 =?us-ascii?Q?z0RB5aqNWUvCI+fLXaRQ0ucSf8Ww5OjS9gfAezKAGbYFrAHK+vnhAK96wWdL?=
 =?us-ascii?Q?N/J6R1e+8o9FS/Efs1TTSdk5TMhR6RGHzb8Vj/WOOh9xYgkVx29rJwqpMVHM?=
 =?us-ascii?Q?D2ehENBBznMjQBqF8vIvDx/LcjX2pYbG8jSK9NrH3hEoxzs56icV2FPmWOTA?=
 =?us-ascii?Q?c+Qoz8U+ZBTDDedvp3kryJqUKuXI5774TxUEH4ZcswAVD3EeETese/i0Y/uY?=
 =?us-ascii?Q?D5M4vX151aO/XkaGtn+kKzNIRjvUn73Cbvr/I4L71luXLFyTHBP8yIB5d1kF?=
 =?us-ascii?Q?SLkT0Qrj7fjTtikbDk1VS0pozJAJr9sXTtXkTNG9MyO6EW2+av3Pj7+MEpg7?=
 =?us-ascii?Q?ry0BjQs2mRJf75qvPHi5f1cTNHpKiN31VLGgdV+nR4/YWSiETrDiwDIVWDMs?=
 =?us-ascii?Q?owhLR7ZxoAQyJ57jKCKaTuKuOMtJqRF4FGz0xReruVvMiRgQOMKPBXgvXCWj?=
 =?us-ascii?Q?RocXM8ice7kPZe92p3aylVnSmvwWfDosZtQDxG0xOVh1rUCe/HWR3XX706wD?=
 =?us-ascii?Q?LVM0wcid5D1lzLX4f4Ij68vtDeMAMKkE/LN6hFU6k+UYKVdf17htORkYDYeb?=
 =?us-ascii?Q?t1mGoyFLsHae5qxb8l9C+9888Tp7LWeBVp8Ywjfzx1Jm95MeP2Mq5dLOGMCr?=
 =?us-ascii?Q?OkByuFe/Xd6CH8Phu6nqINzT5WhwcxM/Xv5i/SFgqlgSFaiey1YR/xt7WrcK?=
 =?us-ascii?Q?Nom/pAscTT2fTA0Kg/+pgBfAy9vOuhgpj1uThcrMgxuviQYU08mcpEHhlUBz?=
 =?us-ascii?Q?RllJdYOHLgv6in9zqpZBI4DtF0cRzCyWBzIHFbyCUnYWqQQ7UhKzVFjBi4sV?=
 =?us-ascii?Q?Y75rIP4jKbggg8KEa8KqoUsngjWa6Xh3Vr5st51lES7Wy+mwXjOSV4JPvRUm?=
 =?us-ascii?Q?nIwA4KiDOcWg4soMRZ32L+xDw7kQLfxtd2+lqTuIVM1Xc2E2YaWimVu+JToK?=
 =?us-ascii?Q?2D++Qm0M0I4AL5bnEaykQWtIWxDSxPw5CRNFFQPdco3x28o6BrDBdATxFLOT?=
 =?us-ascii?Q?VRqytOAoDkOVt36aRz9wQU/X8WaZ1QCkns1Rrkfb24bJG5Iuk4kKq+tZu7Ak?=
 =?us-ascii?Q?Yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 265eba74-d3f6-4350-ddea-08dc709335ed
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 May 2024 01:47:54.8611 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sMDmjKM4frmQUboprwMGvz7ierNXjUql2axyi1UCDKgkGG8zFsUKljJ/uZm1VWqmy5zHsGsjmZX68tkg0C8rKw==
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

On Wed, May 08, 2024 at 06:47:47PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VRR_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 13 ++++++++-----
>  drivers/gpu/drm/i915/i915_reg.h          |  2 +-
>  2 files changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 894ee97b3e1b..b1136aee775f 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -213,13 +213,15 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  			     0, PIPE_VBLANK_WITH_DELAY);
>  
>  	if (!crtc_state->vrr.flipline) {
> -		intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), 0);
> +		intel_de_write(dev_priv,
> +			       TRANS_VRR_CTL(dev_priv, cpu_transcoder), 0);
>  		return;
>  	}
>  
>  	intel_de_write(dev_priv, TRANS_VRR_VMIN(cpu_transcoder), crtc_state->vrr.vmin - 1);
>  	intel_de_write(dev_priv, TRANS_VRR_VMAX(cpu_transcoder), crtc_state->vrr.vmax - 1);
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder), trans_vrr_ctl(crtc_state));
> +	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
> +		       trans_vrr_ctl(crtc_state));
>  	intel_de_write(dev_priv, TRANS_VRR_FLIPLINE(cpu_transcoder), crtc_state->vrr.flipline - 1);
>  }
>  
> @@ -263,7 +265,7 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  			       VRR_VSYNC_END(crtc_state->vrr.vsync_end) |
>  			       VRR_VSYNC_START(crtc_state->vrr.vsync_start));
>  
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
>  		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>  }
>  
> @@ -276,7 +278,7 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (!old_crtc_state->vrr.enable)
>  		return;
>  
> -	intel_de_write(dev_priv, TRANS_VRR_CTL(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VRR_CTL(dev_priv, cpu_transcoder),
>  		       trans_vrr_ctl(old_crtc_state));
>  	intel_de_wait_for_clear(dev_priv, TRANS_VRR_STATUS(cpu_transcoder),
>  				VRR_STATUS_VRR_EN_LIVE, 1000);
> @@ -292,7 +294,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 trans_vrr_ctl, trans_vrr_vsync;
>  
> -	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
> +	trans_vrr_ctl = intel_de_read(dev_priv,
> +				      TRANS_VRR_CTL(dev_priv, cpu_transcoder));
>  
>  	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 5670eee4a498..a178e9f6804c 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1233,7 +1233,7 @@
>  #define _TRANS_VRR_CTL_B		0x61420
>  #define _TRANS_VRR_CTL_C		0x62420
>  #define _TRANS_VRR_CTL_D		0x63420
> -#define TRANS_VRR_CTL(trans)			_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
> +#define TRANS_VRR_CTL(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _TRANS_VRR_CTL_A)
>  #define   VRR_CTL_VRR_ENABLE			REG_BIT(31)
>  #define   VRR_CTL_IGN_MAX_SHIFT			REG_BIT(30)
>  #define   VRR_CTL_FLIP_LINE_EN			REG_BIT(29)
> -- 
> 2.39.2
> 
