Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BB338FF233
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:18:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 790E510EA0E;
	Thu,  6 Jun 2024 16:18:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="b2Fvi7L6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9B1A10EA0E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690730; x=1749226730;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uqfDT6xj8SAsxSukviRm7A8iXnPNN7XOgoZzqpALexI=;
 b=b2Fvi7L6blW6lr8KVWZDhTPLVupfx61GgG+UyrTwxfWAvR++/JwHWdnv
 o42GlBulOybRmul+IH3AFOfkvy16TDki8BMZCzoibA/K6lNuU0otxbqJk
 lCfrMqP03A6WrR8tvxmKdlPW7nV1UR6hX6dONSktYuDXXIRhHNsVJmA/r
 4diHOeRtD/6bx5w/DCwv/BH2j51vWrLdEjtNg06R3FVm1FjcAcsdrV3ta
 gXHOJHNFz8kqmidb1Mcl1yNiJQWlmm2skitJSsBBzmaqiAiIgh75PduYo
 CfzViqr6vnrENhO2nFTG17CKPzc9JoXpfileXX4Y9UGOklsAR4BSmOsD3 A==;
X-CSE-ConnectionGUID: vNxlbfgqR4agAMTRGP59xg==
X-CSE-MsgGUID: tsRvqlFbQlmgl3W4pfZMWg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14526731"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14526731"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:18:50 -0700
X-CSE-ConnectionGUID: GOJz6lyQSbOcYCTfWNsdWA==
X-CSE-MsgGUID: NYWRlBu9R5GUGBGTj1SaAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38698999"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:18:49 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:18:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:18:49 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:18:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hF9bEhgkHVwR07RJEoOL07AEUFBBrZrO8rPDW4WTgAKU+eNUAWKRw3c3vw3C0pV+ufSO77VRUAgwQhbxfcYGsg2MeikQz83mgmZlrHoOKZg3McXIiHNqtvOvaTQIf974rQiB9W+U+52kWs3UNSFZXplE3znVPvrCidkcJgO7IJM7Cn1xlAtNwwNXS0p1eQKaPHg4IS+Fj+722pFflH1oVYyd3qrT5+kHkSGRF9MuFwd/OwMvpG6MdGCl24TbUkomZSJGQcr5EIyDfhYNQA4kNBFHLA49R2+D9npAQchdvgoOUY97Fru5gZMULNem3mijIKgo8zJgfTbwLr2Lx+FP2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vc7owFNWBpX+mtR5tNJRh0hqac56HyXiyHlT9rUTdGw=;
 b=DEL7jk9zRvfvLVM/VJh7OEgcvVEweygzxqcTSEiaG98/UQQ7C7PndERfTVtCgjPH7Nd4vcv0lXaiMOiytgD/ukJMAv35NHy1TXC4QSlhr96zoR0BitSBJ8FiIPX9rHhaCERXL2tZMQGJmruZYcbaQTtgAL4BtOSQaBfKmswi1mreq/BXfwfjZJJjP9mdNsV9lOMw/Ajh1798XcwtUXhEG3hi3Fx40TsS7xW+JWvOF3pqmRQRPYiLn1GP0xruUu2kDvr4bm68RD9JI30b7DQLNaGnUXhcdNtdRjOh8cyWwKg4o6fg6+LLzvL6R5wX/0dbxw+JLwLGUn/k3O6yh8xdng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7500.namprd11.prod.outlook.com (2603:10b6:510:275::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 16:18:44 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:18:44 +0000
Date: Thu, 6 Jun 2024 12:18:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 64/65] drm/i915: pass dev_priv explicitly to
 TRANS_SET_CONTEXT_LATENCY
Message-ID: <ZmHhYkM7fRAuWS8d@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <989f89994edae0829e3b6d5d6e3d8a521f0eda00.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <989f89994edae0829e3b6d5d6e3d8a521f0eda00.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0054.namprd11.prod.outlook.com
 (2603:10b6:a03:80::31) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7500:EE_
X-MS-Office365-Filtering-Correlation-Id: 45e4a012-2697-461f-0f87-08dc86445652
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|376005|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ug44b5OhEh/cDgYygHTxw41BDQ9io1OfcAWUB3BypwZc2jbopyn2bNlGECPr?=
 =?us-ascii?Q?nReXUlOCnxbtxAK2Gb4w9y17IH2gxvd+0MFUzrELVu7iIlMZczjZ4yoIfrsT?=
 =?us-ascii?Q?X7HxV+jUA/PP0XFaYAXBN1LKVNq9D5zsUEcMK9PzS19DWpPHMWqGqWIZ4LSf?=
 =?us-ascii?Q?SdmpZxwgdsruTFPPKTb9qovHc5aqpFm7hD4K1DEVi45bccsLghTzmbKssYTV?=
 =?us-ascii?Q?v+dKmIo3RBvsayUpGOgE00bL290C1Liy9mLDG7FYr9f4/OGxjbjsiefGmIVD?=
 =?us-ascii?Q?pAxxufrXAtYToZuhgA0kLR6PS6A22qJx4l0l/ThOtxq5ysM8tyo/hJ8ZtyA6?=
 =?us-ascii?Q?kMUFKLLmccndsK72abNYxkZ57FWl7D1088zXvaeRQsA+g3HJs5+dem/CyPOS?=
 =?us-ascii?Q?DrkurZiAc/cXdsu3Dr3p67wc7yQJhjPdb/+C2RJFoOO26cjs0oKhiSdrUsHx?=
 =?us-ascii?Q?Qh8XHiGUZ5bq/kSe9oxZZwIzg/xpVew4hEX3OPXU5r494GZs0i8FhaMfp82K?=
 =?us-ascii?Q?99B0NvldSlDz3sX8z4irMgJWjhvvJ6PNzT9smfnj+EjLq148dKqlL19dbjsw?=
 =?us-ascii?Q?N7xL/8N18mn3/B636daGO8Hk7P4nj7f1K6OiIoMA/Jj4A5w260mVBf2Z+UP8?=
 =?us-ascii?Q?CzDHMuqGgT8NAxgLV7aHDpJC5Wl79K5el0AGACbhX8YkrdH1xEx5X/j3cvun?=
 =?us-ascii?Q?YaM4bEMKgyZ0HihDM1fBMYDo3B7ncbV1GP2ImRZNigAWKrrjC9hE2VZBRt/l?=
 =?us-ascii?Q?IhZ5H6SxlIDzhv3x3tFvmJC+15U1oFMRnxZNYSGQ7/YiD0yVHXA1R35gplO7?=
 =?us-ascii?Q?S659+iNvSxkZUzdcQPebeRRBKrteXTltQib1I/rNPTlzXqpM5WLbepMRYm97?=
 =?us-ascii?Q?45TJmj4YD4LgEeTJXFVfJ9Pz01trKcUZAei4XHq+HmgK/UQk8ptHDO38SQz3?=
 =?us-ascii?Q?zHGPBFJX7NF5GV3bHEQmwVLdTZqiyPdV4D9050DlKumCQAjNxpVlrn7Ulp9G?=
 =?us-ascii?Q?h60B4rlvlVDzn9ijsrtJSHY1xr7IGXbvAlb8+ObxkbF9pcf2lFrdLB6cgVFg?=
 =?us-ascii?Q?XrMHwz+axAG9qQKe6nolAgiGtzSh3LVCQD7tdjPGwn5N0r3AbaWwv8aCsHHp?=
 =?us-ascii?Q?Hk1b6No14ClPRZr+cwT+YngG6pWH79NiMDU8TgTMnY/mdxfkczT3H+74Qh7q?=
 =?us-ascii?Q?K8VNP7pc5zCrpu1bKyRcYgu1GfGdTVRsfqDYwLBeHpsW4GFprScSiOJAHIO3?=
 =?us-ascii?Q?kDgYH+c6g0Og6nRi4pVYCN08fgGpK93jSkGD1ilHqf3DOhgua2aYtD+7kuR+?=
 =?us-ascii?Q?R/qwdcHr0/Z1l18pRNp5p/uf?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZrXjHSumGDWK4BGlkT83dbLKAQqh1q/+gWrooo4DP+2fgCJOlyRPhKubYP4f?=
 =?us-ascii?Q?qFjkuIuYB8oEXXJOW+6sDTovqmdMxq6lsGIhWo4rKDjfUONwOBA7Hyp87jQ6?=
 =?us-ascii?Q?W5HSuok0XUv8S9lYdiPxG+W9FDbs96CYK5HNeG7nhGTCPyG2RN2GC49IXj4g?=
 =?us-ascii?Q?mg2Qnlvir4petVww+s5vgsbsEH/S8AYxfQu1oxbIO98LW/J7plnzWredwxZs?=
 =?us-ascii?Q?5LUL8GDpWByYXF8pAwzNp7FMRk78pfrKMTcP+JGvSMe3nHBwdG+mklxJAS18?=
 =?us-ascii?Q?b22ZK4PH2xuNILXHHNvd1ISX37me0fql/dh95MQN1kREeuMr7Mklrs9vMCRf?=
 =?us-ascii?Q?IZW8ey0IkE+q1TUl4Zd/gLoF0gkwS30DhfLC/4/WgedQqBjIogUBCRRwygoQ?=
 =?us-ascii?Q?+ohJcUwlen61SoZbaHZqZcNfynQtSNaIgOT5KyrjKnMPx4ryqRUdqmUH6x0Z?=
 =?us-ascii?Q?KXbJDhco08nRxkS3Z1Zh3BYUevtmlCfmvk2wA8S3CSDrAhDPwZ2pOjKOKjAX?=
 =?us-ascii?Q?2IJ3FkXnOjvBdaoUFr+MnyDuzic1Klbuzf1cNz6yv8Cn0clm0/FBmXUi3JKx?=
 =?us-ascii?Q?xOtkM13nxNBUNkAAUMbVPmb+YLhNU+PAwvKvAV70Mk47voUHdsBivzdGgVY8?=
 =?us-ascii?Q?tQRVu4D9D7GXVNLJfact8nNbHuGnJIDd9TT/xjSM/JseEXb7Tep4NWWIs/RM?=
 =?us-ascii?Q?1TODOBmMy934f2XlRFLK1J7cXhOjcTGa2KS1mIKlvg4kpm4STh3G14YCOdFp?=
 =?us-ascii?Q?wtGRXwyOADX3lGKJGhto3HhIAv5RPMNb+wZGRTzTixMAvEEgbRkuRD9200v1?=
 =?us-ascii?Q?EG7fjaM7ClJzRzFbaeUIhHIqPkUxAc7BZq5w0uPJKtTWdFbhVtA8hi2LovLC?=
 =?us-ascii?Q?2JFE55ELXEehVCFJCD4Ra5wI8BK+0rN4ih4rBqi6i/duecQvEpPInssEKpyd?=
 =?us-ascii?Q?BavHzZOsFudE3+BPvXQqJec2dlyAUQ5sZ94Uat6N/3PQEpTAHo1urSWtvnsE?=
 =?us-ascii?Q?snHcEKQxqjXDtzCDhco7FSlpQ8AQlp8V0ZTyImCm7hPuuYh7CPdTf7rfRzYx?=
 =?us-ascii?Q?4fZ7Ymn1in+Jiq18gD1fsAPIOH8ZMCXKd2wUSCBrDk3BALFSOkFQo78PP9y8?=
 =?us-ascii?Q?ZNdwSciiWB0rGucgFjnEz/RbjLILR3gLb+o4Mdo66PkZlcqlAJu66ECwqUdh?=
 =?us-ascii?Q?nTWZ8Pf1IDBr01SkXxAqcK2jP0nucqxatPFflfcPM+hxCAIug2dEstYUHjg9?=
 =?us-ascii?Q?kheNDNc3DFwqXuJ1A0er9NI5+cehvEPuoj9mVIcjwN2aj0l2zZCG7dwewvgS?=
 =?us-ascii?Q?t8cqvTn9h+EhZZkbI8I9idWNq4mHrp4PKza19QFPWcSrZbRTbgGqjACdKer+?=
 =?us-ascii?Q?Jaf8b1cWzzyw83qq9LturwY2CUECGjvJshapJ/YbFxjetJzKr22MyboDt2lj?=
 =?us-ascii?Q?Kk37+4U+ZNdAdTOWnWt9btRBu8znIohOHpE5Vg/4MEUcDtPRdI6x6vDFqFTY?=
 =?us-ascii?Q?uvnQznqKYScyuxd62gzsbu2m16T/8N0CkHD9fwqXzH67D/PvgOGPoRdLdwGs?=
 =?us-ascii?Q?QyEnui64gnh0ZKny8+t5FViglE/05pd82xkLmM+b?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45e4a012-2697-461f-0f87-08dc86445652
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:18:44.5623 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XPGseVB02L3dpBSg8u7+AVTwnYE4EhU54ioZVch7FJroKoGvP7SFaZOF9RPHQLCF3oINCZahEPDVmcrkOXnGZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7500
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

On Tue, Jun 04, 2024 at 06:26:22PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_SET_CONTEXT_LATENCY register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 6 ++++--
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  2 files changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 62f8300c73a5..c608329dac42 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2703,7 +2703,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
>  	 */
>  	if (DISPLAY_VER(dev_priv) >= 13) {
> -		intel_de_write(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder),
> +		intel_de_write(dev_priv,
> +			       TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder),
>  			       crtc_vblank_start - crtc_vdisplay);
>  
>  		/*
> @@ -2860,7 +2861,8 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  	if (DISPLAY_VER(dev_priv) >= 13 && !transcoder_is_dsi(cpu_transcoder))
>  		adjusted_mode->crtc_vblank_start =
>  			adjusted_mode->crtc_vdisplay +
> -			intel_de_read(dev_priv, TRANS_SET_CONTEXT_LATENCY(cpu_transcoder));
> +			intel_de_read(dev_priv,
> +				      TRANS_SET_CONTEXT_LATENCY(dev_priv, cpu_transcoder));
>  }
>  
>  static void intel_bigjoiner_adjust_pipe_src(struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3fcebccb9f3c..8a1414ae72cb 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4236,7 +4236,7 @@ enum skl_power_gate {
>  #define _TRANS_B_SET_CONTEXT_LATENCY		0x6107C
>  #define _TRANS_C_SET_CONTEXT_LATENCY		0x6207C
>  #define _TRANS_D_SET_CONTEXT_LATENCY		0x6307C
> -#define TRANS_SET_CONTEXT_LATENCY(tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
> +#define TRANS_SET_CONTEXT_LATENCY(dev_priv, tran)		_MMIO_TRANS2(dev_priv, tran, _TRANS_A_SET_CONTEXT_LATENCY)
>  #define  TRANS_SET_CONTEXT_LATENCY_MASK		REG_GENMASK(15, 0)
>  #define  TRANS_SET_CONTEXT_LATENCY_VALUE(x)	REG_FIELD_PREP(TRANS_SET_CONTEXT_LATENCY_MASK, (x))
>  
> -- 
> 2.39.2
> 
