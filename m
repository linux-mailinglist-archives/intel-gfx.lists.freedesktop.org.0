Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A01C8A5857
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 19:00:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16BE1112298;
	Mon, 15 Apr 2024 17:00:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YV0HlEfg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 21892112298;
 Mon, 15 Apr 2024 17:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713200456; x=1744736456;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jKfukCD6XGZD4G3RcDq5MweQiLgFl0A/NOhwSTUzc64=;
 b=YV0HlEfgs+iwNDjjm4hcLp8PnabRKuUWHFD5Cm8pRSsB6hzuPV4bmMdb
 nRTnPIYZq9i3ixUFiUCHYClffhR/W3ONqghexcb5lOVmpSC/HsFbdwdxo
 k2EFSoSCKs6UljUj1qQpH/PKgVHCdVqXywBQ4VqpcrVWOh/wsveEnEr/A
 s9LJWbRn09Nrbm6Kjh9isBIwII4UAsQD5U07u1SwhjNAsUhJGvHxNbrOu
 FfpX3xDlva4sK4H7xY5WptgIHCuIzgLd6z+WTJ8TbSESPud2CZo1qTOuk
 YWHZsrhBsPPV9PDRqFdfRgskbyOo0PDgFAsX1DPJs6JEdpZ8DD0dSLJqu Q==;
X-CSE-ConnectionGUID: NIXkSKM7Rz+n+vdMbxWaGg==
X-CSE-MsgGUID: bW/sfi0XQA+zSx/kcTcjlQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="33988814"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="33988814"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 10:00:55 -0700
X-CSE-ConnectionGUID: tkS+2nWBSNaukYEKXwanpg==
X-CSE-MsgGUID: +qZ5NdX3SdqD5qXrcJ70/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22398694"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Apr 2024 10:00:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 10:00:54 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 15 Apr 2024 10:00:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 15 Apr 2024 10:00:54 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 15 Apr 2024 10:00:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MmJ09wPOl8HZtwF/X+7+9u84qszzhvuFku9GvlFsqAiSMFvGo9y8KAGPWaW/eJCe6w9A9g5GfUn18ky5wY/OPDdNfbNbd9uU16wSyiqFDsW3yvJhdC2+dlzO+LZtfFsaPYDuXeujI2WrUpx2Q8FgLzChXOYoIqwF33JM4ckgPSyVxTvH5VaMqIhLCdIk8BJsrFpRDo0dSR2jI03YfeJR1Q8npNtF1pCd3ML8wK7Geemexv6YZGBBrUADBhc7UTk3rRYP0qPht4SxHndf+O0IlaKlqd0AI6cZLjpGUvz+T1DPGtc2PMGoREml+WtagviGm2CKHNvjH6VrCA8deZNYSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vguYQvx0m68XGrCmYIiBcauQWdYGgNdjQn8EsoQa17Q=;
 b=RxJrAVyhZ/bGOO/ntpti3KeZjVpF54ohgnqz4kWlw19iZPlW8nPlC4XRFFPMADwnhfKN8GceN2VQsOm0nIN2syc5A+YDKTgoB9v8KMwlX10tDKlUsiTCapYZ4yhfoE52b9jF6m6Hjfh1fyoCeiWfxB7fg69gJCsIIQam05CLJ5MGcd8a5oR47IRyMkjEevL5PsIP2XT38mwAKN52KgVJCqiUYcllY/ZTsJP9sQeT/RV25UXNyXl+UdQKykmoQ/0F6l6guh6LfuiXBLB1c43ZNj6G/g90x6Vq2E3SCRCFOQUgiDCb5jlJ+RebxRW0OKSQmzK7EccZal0XyeGKg6KawA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.50; Mon, 15 Apr
 2024 17:00:51 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%5]) with mapi id 15.20.7430.045; Mon, 15 Apr 2024
 17:00:51 +0000
Date: Mon, 15 Apr 2024 10:00:48 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, Lucas
 De Marchi <lucas.demarchi@intel.com>, Nirmoy Das <nirmoy.das@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: Re: [PATCH v3 19/21] drm/xe/device: implement transient flush
Message-ID: <20240415170048.GI6571@mdroper-desk1.amr.corp.intel.com>
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-20-balasubramani.vivekanandan@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240415081423.495834-20-balasubramani.vivekanandan@intel.com>
X-ClientProxiedBy: BYAPR05CA0102.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::43) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB4833:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d94f09c-c860-470c-1c0b-08dc5d6d9adc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: diuz2j3+psua9Pij1HbSHRwFt5bfDmd69lv63EQguogSo1tqW5QzNL0HYv9KmbRHugGWaxT2BiyT0PTzBCoGlZfyUUcvtx+gMC8pN85WGTlVMxC5i8zVJmb2bwivwAyVumqMrnOCluVuhGmcEa45Drk70P+te497YgxGJNBVgadJUc1WSOqUGPToKZwwGevHWn3TNC+B0Hd2GtYUFPvpORcUqKGb0zUDuHHZMWZB1JBb0A5N9oHpn0Weio5GsQT7KW175qkNsr7Ff9ofDRpGbCq1tkyngHEkOqD4uaDQGmuY02UN1gx+yWch8+VPjKUXZWL2HnBz/1nL+Gu3aVxFLd0XYKAvr6p9micTq/JqmGwfPV1K9luojQCdBKxQj7QbiLF3bFkzs5aquou53hiaWP7U4FsKFGTzXnuhCqjo9NqoeYuFi81QbVgvVycdfDIAt6ght+BJBzTKD2M/dW1tV1XOImQcusS/DKuT8lA7GzItfyrePKkW3vG/XxPc87r7hPNI2DvQ8fY/1Hvz/DvkoCqDSp1YGkf84ZRqOcil9fKZVLibkmySj4e0scqMcG8vxQ85nJiKsSuWa0i76h2g0BLlqRT+jgr3Zjj/6mCrUAPNZLJyfkzTsNJtVFGSF++xTaX49GD1F4tbaCsjLJ9NfvKQkuMMB8y+epv/4pq08Q8=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WFua6hjlTKg2xl5HBfGB3rJ2ANYFNTX3u0ubROqwD5zU+Zs/4nXQelaRVp2y?=
 =?us-ascii?Q?xr0klbMp33qLLUCjML60WSydQV71uaFI7iv2BPoRu96sdElOuPBFHAYvGS2I?=
 =?us-ascii?Q?X1VXYLOhlrvE8nSemeK4TyjmdL20pra/TVa9sGkE6TeqACP2vW+RnvTrsX5s?=
 =?us-ascii?Q?B6QS17hF/lKuW7Wkn+Ru3s9hXk3Y6sHpJwiuXX26fx8AB+W/RX8oy37iVcMp?=
 =?us-ascii?Q?R0YKj3k82UQvyZhvePqgl3toOcJhcVUNF9Y1oIAwof0skVNsb5QvJF1REAI1?=
 =?us-ascii?Q?cX5HN2z4RDFe/CsTmoTx19VuQVKuMFvuk0aziJA8CLiNtaM5l4dpUU+QwpKD?=
 =?us-ascii?Q?3D0daAw8F8tehF455f5TeSCcld+kNw+ZTJwOPddQLeFitKjEb6Ign+kN7jvh?=
 =?us-ascii?Q?8TLn+vqA3nIsZ52dgaqe1qIdqBaAAWNtem0jtl66p9gYwgDLA0KQgE9jZKgW?=
 =?us-ascii?Q?J3YVfPzuzHnEpQlu8SvVmsUCBhMbrVI9ukMfX0I2ZMI6C3TMNU/K7DdxLHC1?=
 =?us-ascii?Q?hsLU1e9bUEv4/iCjzg3EHRX2J9cmnlQCI6fL7RCzIF8pfqvxtDdoXMOvKxZz?=
 =?us-ascii?Q?yznMahiYvC9r3A1NzHVO2ZMOI1uh6EN9F+oPRWaNR758FvS2mPIqNtN0axMM?=
 =?us-ascii?Q?2P/L76DAoYzMARRNTCSNNckjlTrSb5y/JXBWAZSgWn9p2gI+GHhF6El8YY/9?=
 =?us-ascii?Q?a/Ji7yHIxcHYFP1Yu7BSF64vf0+HEZFn/KhobiQrL1EQG3z2apQkIboj004q?=
 =?us-ascii?Q?tfbqfxeGrd1zEpmoLBl++sSjvcuBSr19KtFrAjveVeJytPs0noTnFavW8i23?=
 =?us-ascii?Q?KWl7/JX2XtYYrpJacX7aG4Q8Oc61454SFpxXlrvtzH1a3QwDkF15JnJcjcSE?=
 =?us-ascii?Q?xav5No9t6ELrlv6AulrRgVq1v2xg5OnObJPa4EGA1IQkGMGUinZsiNOQGuwU?=
 =?us-ascii?Q?aDqFkoRG6y8rRSOKg4hFLuLx3QhnIeAYHxAgyWeQWWezgHNDb5wW6+hrHYeU?=
 =?us-ascii?Q?JWmgk1PNbmltEYlw9tN0KDAAyup7EEUawCzl+zgtL0Z4D/paEC2uwcejhX4x?=
 =?us-ascii?Q?hoMGlGKOurNCeand0VC0pox/SG3xWmcUvGTpeF2t1f5q5KL2JXGratt4nvH3?=
 =?us-ascii?Q?g2MZBw4nvHsiMI7LcY8MQr5esGBv2Wkc6poNmESgdW3zz01jN4Qv7g48qwB2?=
 =?us-ascii?Q?6xZ0l8fj3FZQHz7vul83T8NtviHKphNt+pgLRM/isOx7f73/4HonHuG3cnSO?=
 =?us-ascii?Q?zJ2VYmThIFeb07XhiDn5NiWxpOaiv6fZVsyFnAEXw/aC4kTOIGSLdQavdeyc?=
 =?us-ascii?Q?BSCIZQco6UwIKX2RFKACdf63WRJexS1zpVNdrO23X1lHw5iHJt0PC4GndN3U?=
 =?us-ascii?Q?SM37HfF6PwoM6T1ipkBzEFfe1YDI7cNZEMggZPUc0FJhrVFcCyuxREZ7Fww2?=
 =?us-ascii?Q?BJI08N0v9L7tlOnA5DH8sjMsT0Rwnf9VF/GQ8XGEW+ETEbgpvjdYMvPFI/3g?=
 =?us-ascii?Q?2rnjd8mE8Bm3sxvvyPxHJ1tJVjTB3F5EBDjqIYjFzUziQS/XRau7E5nsgfTe?=
 =?us-ascii?Q?PVJxHvZWz9ZK3iY8jLk6+5fJ9VC/uTooc6m3yIWxugpC9wmFc6eQyPN4NRjZ?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d94f09c-c860-470c-1c0b-08dc5d6d9adc
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2024 17:00:51.2489 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VDCNvt5BOYieGT1QJEoNEskVFms18eEWirojK6IhDiDID1ybmQwxyqcRoBEw4g70W9HFpKMoqg5xofNi6Rw8hr9GqpcYDaoB6vMxCzVxr6Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4833
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

On Mon, Apr 15, 2024 at 01:44:21PM +0530, Balasubramani Vivekanandan wrote:
> From: Nirmoy Das <nirmoy.das@intel.com>
> 
> Display surfaces can be tagged as transient by mapping it using one of
> the various L3:XD PAT index modes on Xe2. The expectation is that KMD
> needs to request transient data flush at the start of flip sequence to
> ensure all transient data in L3 cache is flushed to memory. Add a
> routine for this which we can then call from the display code.
> 
> CC: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> Co-developed-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Matthew Auld <matthew.auld@intel.com>
> Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> ---
>  drivers/gpu/drm/xe/regs/xe_gt_regs.h |  3 ++
>  drivers/gpu/drm/xe/xe_device.c       | 49 ++++++++++++++++++++++++++++
>  drivers/gpu/drm/xe/xe_device.h       |  2 ++
>  3 files changed, 54 insertions(+)
> 
> diff --git a/drivers/gpu/drm/xe/regs/xe_gt_regs.h b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> index 8fe811ea404a..65719a712807 100644
> --- a/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> +++ b/drivers/gpu/drm/xe/regs/xe_gt_regs.h
> @@ -318,6 +318,9 @@
>  
>  #define XE2LPM_L3SQCREG5			XE_REG_MCR(0xb658)
>  
> +#define XE2_TDF_CTRL				XE_REG(0xb418)
> +#define   TRANSIENT_FLUSH_REQUEST		REG_BIT(0)
> +
>  #define XEHP_MERT_MOD_CTRL			XE_REG_MCR(0xcf28)
>  #define RENDER_MOD_CTRL				XE_REG_MCR(0xcf2c)
>  #define COMP_MOD_CTRL				XE_REG_MCR(0xcf30)
> diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
> index d85a2ba0a057..22e6422c7b8e 100644
> --- a/drivers/gpu/drm/xe/xe_device.c
> +++ b/drivers/gpu/drm/xe/xe_device.c
> @@ -717,6 +717,55 @@ void xe_device_wmb(struct xe_device *xe)
>  		xe_mmio_write32(gt, SOFTWARE_FLAGS_SPR33, 0);
>  }
>  
> +/**
> + * xe_device_td_flush() - Flush transient L3 cache entries
> + * @xe: The device
> + *
> + * Display engine has direct access to memory and is never coherent with L3/L4
> + * caches (or CPU caches), however KMD is responsible for specifically flushing
> + * transient L3 GPU cache entries prior to the flip sequence to ensure scanout
> + * can happen from such a surface without seeing corruption.
> + *
> + * Display surfaces can be tagged as transient by mapping it using one of the
> + * various L3:XD PAT index modes on Xe2.
> + *
> + * Note: On non-discrete xe2 platforms, like LNL, the entire L3 cache is flushed
> + * at the end of each submission via PIPE_CONTROL for compute/render, since SA
> + * Media is not coherent with L3 and we want to support render-vs-media
> + * usescases. For other engines like copy/blt the HW internally forces uncached
> + * behaviour, hence why we can skip the TDF on such platforms.
> + */
> +void xe_device_td_flush(struct xe_device *xe)
> +{
> +	struct xe_gt *gt;
> +	u8 id;
> +
> +	if (!IS_DGFX(xe) || GRAPHICS_VER(xe) < 20)
> +		return;
> +
> +	for_each_gt(gt, xe, id) {
> +		if (xe_gt_is_media_type(gt))
> +			continue;
> +
> +		if (xe_force_wake_get(gt_to_fw(gt), XE_FW_GT))
> +			return;
> +
> +		xe_mmio_write32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST);
> +		/*
> +		 * FIXME: We can likely do better here with our choice of
> +		 * timeout. Currently we just assume the worst case, i.e. 64us,
> +		 * which is believed to be sufficient to cover the worst case
> +		 * scenario on current platforms if all cache entries are
> +		 * transient and need to be flushed..
> +		 */
> +		if (xe_mmio_wait32(gt, XE2_TDF_CTRL, TRANSIENT_FLUSH_REQUEST, 0,
> +				   150, NULL, false))

Comment (64us) doesn't seem to match code (150us).

Aside from that,

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> +			xe_gt_err_once(gt, "TD flush timeout\n");
> +
> +		xe_force_wake_put(gt_to_fw(gt), XE_FW_GT);
> +	}
> +}
> +
>  u32 xe_device_ccs_bytes(struct xe_device *xe, u64 size)
>  {
>  	return xe_device_has_flat_ccs(xe) ?
> diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
> index d413bc2c6be5..d3430f4b820a 100644
> --- a/drivers/gpu/drm/xe/xe_device.h
> +++ b/drivers/gpu/drm/xe/xe_device.h
> @@ -176,4 +176,6 @@ void xe_device_snapshot_print(struct xe_device *xe, struct drm_printer *p);
>  u64 xe_device_canonicalize_addr(struct xe_device *xe, u64 address);
>  u64 xe_device_uncanonicalize_addr(struct xe_device *xe, u64 address);
>  
> +void xe_device_td_flush(struct xe_device *xe);
> +
>  #endif
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
