Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5A9C94351D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jul 2024 19:45:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C5B10E6A8;
	Wed, 31 Jul 2024 17:45:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CDnM/THK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2A1010E4A7
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jul 2024 17:45:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722447911; x=1753983911;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ptUzapilyB08BNshkBpoIrPR08zFSnRZCwO5vjnTvAU=;
 b=CDnM/THKt3n5p7WU9OHa6XP1gh908ru8DlZY5btArIvxc7+LE2DDMJvo
 KbpIDxO8qVITh8hFyEdW1zZoKMQf5Web34Edz+vdNi41FfY4ZPBjOLmhW
 rc1SaurCArLy54klVx1wUdvrSPMBxSx/LER5K0lmnDJRVWedSuL8HDbzF
 /oyV2G0q4XAGsQ4HkZrPNEAA9Y9dYEcIDhkPyDZHeCFR3UVworE2L0Pg5
 8phW20oecshI6KpmZvlqQdlrgIsO2IY8/fSOk9CoX2ti1lzZPaG3cmDGQ
 a1TgALJrz+NSwHx2DPXOQjSur7yT5wc3AB0WLTDm1H1OyyTt1VtQDJoQS Q==;
X-CSE-ConnectionGUID: yOnF0mn5Sli621NUGQI7OQ==
X-CSE-MsgGUID: Us+YMkcdSU6kvv13CtZR9A==
X-IronPort-AV: E=McAfee;i="6700,10204,11150"; a="31738070"
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="31738070"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2024 10:45:11 -0700
X-CSE-ConnectionGUID: nluVCbAETlCU9VBRqtuu4A==
X-CSE-MsgGUID: ZyH6pRZARUaA7HNHuPX/aw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,251,1716274800"; d="scan'208";a="59593493"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Jul 2024 10:45:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 31 Jul 2024 10:45:10 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 31 Jul 2024 10:45:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 31 Jul 2024 10:45:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SY/Jj9N7Jz2pvm9BrbUgooQ8EaiyUzBy12gg8DXLSNNzBT2T9obhoC2IzaIWEipVkDVg54D9srA/0jmCJdWX+Ybr55VeizHyGPtzd9YrfvjJSnPOTwuflZiMDpwOYSakWt8lKuYQpHer452No5XDyFX07hJ/Ys2t4r3HUB6eBW7EyyMxmMs6f3c2gxqdeXNdzU1UFc92GzN1eewu9XUo88gcDDAt43DZC4xQEpcMDnbbbnFlVs62cMUeChr7tE7SayhlaXdE4SO2pIEhTUduBnwgFU1CUmQPs5G6KrBe66pkn7nMagFfol5GmvYem7cPdPIhuMQgj6nsl89n6i+rHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wwTfdieFfz1CicaSPGw97VIpFUzXFw8DzzEHj33KqYc=;
 b=f7eEBGYEsDCiNRz9j3nYui1dkkVd0+xxg3ps8cWJpSOJq+mRPIO6IPx95bq4TFIYW/lL9JTfAbrczYq7uCi+ZuoalNVibOJaK5PbWc6XO6lmQo8z7BwjVbQarR4VmimsbS2Hzub5d71JTVSoqsmSO1jJYoSGcCMXm/BMxzVy+NwaLYSc+GZ5lGS/fqlIcgwSU8QfB3regCmxr8yznpuMZNvaYkomaFm6YZpgq67ONPQQ8OjlbDyhIQiIQZDiMUjAAWR5gPav1Q50rWBjgz26s7L3MRpx8lxNiTRh+pqxXVg9CQp05GRcF8sVtfr+pRPuPlsJGQ48i7mO9gksBXN0mQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CY8PR11MB7898.namprd11.prod.outlook.com (2603:10b6:930:7b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Wed, 31 Jul
 2024 17:45:08 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7828.016; Wed, 31 Jul 2024
 17:45:07 +0000
Date: Wed, 31 Jul 2024 10:45:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <tejas.upadhyay@intel.com>,
 <andi.shyti@intel.com>, <chris.p.wilson@intel.com>
Subject: Re: [PATCH v4] drm/i915: Add Wa_14019789679
Message-ID: <20240731174503.GI2906448@mdroper-desk1.amr.corp.intel.com>
References: <20240731155614.3460645-1-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240731155614.3460645-1-nitin.r.gote@intel.com>
X-ClientProxiedBy: BYAPR01CA0039.prod.exchangelabs.com (2603:10b6:a03:94::16)
 To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CY8PR11MB7898:EE_
X-MS-Office365-Filtering-Correlation-Id: 26765b0d-8cdb-4a99-a064-08dcb1888480
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SRCR23jB8GTavnRJXzV6UYDTp3RvTOJiur/zaAq7m2plIRTEuaXVwH/k94Mg?=
 =?us-ascii?Q?qADllOlZTl65BtQrxREgfAbnRAyaQRky9X+TvN89NRPNR6M4pRLPT2u+cbuJ?=
 =?us-ascii?Q?ERwDanElnUBVN45osMTY03tXICazlks0zVnrOD41GVRYOx+V+NCcia3eCkvM?=
 =?us-ascii?Q?O9kGipEYtaqj8c2oZr0s0xfu4D2LjDeBXLdUZ6s4GPc2d3irP69XValqoOj+?=
 =?us-ascii?Q?tY9z6jXz+h0s24miSrQ62aRlzQDD8y1XY48oc9mqRV6DwkElrjhNh85mJMgZ?=
 =?us-ascii?Q?hUVnTyxZtyayEgstK0UHaWza+dkitAM2o7vg698LGweOM1OKe+5RTLtlc6zq?=
 =?us-ascii?Q?0BFU0W88mkVXtUTkJL33C1o+D0RX5V9auK7smFAvf49AIAiT0NV5Kftz9lvi?=
 =?us-ascii?Q?oKIs1U4zZcU4EUGhRmAoz+sXKQr3Fq56rkUqsG0pe33PyaC+r8C0V3SAv+RZ?=
 =?us-ascii?Q?63nnrCNrpfse/UiQ31/bUE2QNCVewmxEkACgIUQ9tSD8RVAEa2cKqa5nW8vO?=
 =?us-ascii?Q?K7F76TbRNaROn7Wp5I8wOR4L94E6hmz7ASPstNc/qfYX5EZti5dZPUSMPZ2g?=
 =?us-ascii?Q?p5itsRIJWX89o2gHh02u3gzbQfpyKc2UYkxM7NKxSoya1+VOP+gkFUDy8abR?=
 =?us-ascii?Q?mwAgXt1JM5B0tClhy+UbU2NuQfId35HYopXBfNlK1bbUL1XTXnksfdFaz+qG?=
 =?us-ascii?Q?NeJEksyz+DVXC5Ty8PPGrpgF7TY4V7AEwsJaWvg1g7EE8GHo7cP7IxSfAD/L?=
 =?us-ascii?Q?jtDRV2IMI8IrDAFzfIzvGs4jYUWN/yo4negWZ5R3PswntCnxZWLtj1o1Lkiz?=
 =?us-ascii?Q?Q0A6hC8i+Rah9kmnAwM0lKc6EHmcZogOMIcm7dXcaThwU7FRKMuwldHBeI0M?=
 =?us-ascii?Q?0iD2qKx1LLloFRcKrkZ+ALYhGnzfNJCIlcuPLvU+u5loek8A8zxv50heamSG?=
 =?us-ascii?Q?bOWXmyF1z8AN8vIVei17Kmkf5OYPtKZTdiXXQqZguTbpvEWV2mB6kejo7Ir4?=
 =?us-ascii?Q?aLIjqeGW3f9FN7zF/a2lPsJWmNiUAEUKCF9Airr/2T+m41ZmvEUgYgFoinr0?=
 =?us-ascii?Q?CEJTdyr6WAIJ7xTsyqreFcJ9mPuAyK3Oww8ihtu3KuWaGB/qvv2TAAeQs5xO?=
 =?us-ascii?Q?zctyCMYyJ/qfxoX8KJT8uAdCPm4l32vBpNx1GbOMqBeIV4j0zIWlmfyLmGUq?=
 =?us-ascii?Q?Lln0Dl8nJ403gds9PpB+WzQ6sQT0E7JKYsFISVApxlIIxxwY2JtzsW1SBsf3?=
 =?us-ascii?Q?C56Jq+/fA2n6PZzoSii7xThsCjEhl6piqW95/Ks1jDx5eO/QTgcazx+M+gxg?=
 =?us-ascii?Q?kQQe2UhORTYh/wwaUAD31CFVbCsH9WUmFrcwP/5QOx/1qA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oUWbK2BIVzkQm9KUgCuwUmAEV7HX5Ene/s7QqP1ZmNl/yE17WnMavEH/O/E9?=
 =?us-ascii?Q?WkEZNsCa3mP8rUrzTt5CTgKwpUMfmBV1wZ46OmIQ1LncfN/TdeYag6c8e0hp?=
 =?us-ascii?Q?0J72V/kc/5GX2XB58XBlKqe0QUIC3th2uqC/GQgwGfJPcqsAt5IuS1hlVU0u?=
 =?us-ascii?Q?JpDc4tDIPNw6lcxXyoeuw8uTau0gqSmAphFURfI691zIODArrhadordIhgLa?=
 =?us-ascii?Q?JP+2IVRD79xuYf9eKCzlf59IUXB3hCBNf5uSD5N0w8uBBQInRPUM3BmDK2Lw?=
 =?us-ascii?Q?kUp261mTE+hPBtyNt4Nw/D1uO9cn3f/NNSDutNDtn57ixBVAzcbh69rSzGvR?=
 =?us-ascii?Q?uou1NWxj9qDRrcKxsTv5vqe9WHkZ/tSNYjcN8WB2LWYE43KFx3XKUW9GYbAT?=
 =?us-ascii?Q?fSR7jqyU1+/xXMNfCxw99mAxx8BwiaLNcVxWJvxNk5BGN9skV3/RkUJXPlzZ?=
 =?us-ascii?Q?gQf5BANSnXl4JuBZIMZguGBCaOuZ5GQDK1eIAOUs2T/+mUZvi0D2iFIJ/cWF?=
 =?us-ascii?Q?oTTMb48O1oR9Kqsk+dJ6QGlaIbCpiSx58YFiO6Bv41vk6lvE52jra80dIvzg?=
 =?us-ascii?Q?oUYChSfoQCy/29fhF4zwMJbPT+fkHgEq5fbYiZhwmw29EyM3ThlsnDkhUvtD?=
 =?us-ascii?Q?s329aF/6HVTtOCFNYkUYXhqyPDONOPZwrt3loAWBswWeY4m02/pIVbWsItKF?=
 =?us-ascii?Q?mAupt38VC8QaUbt9iAWlpjr3hU3fVczEydTLkMb4oOJ3SrYabPygYKdcXlSm?=
 =?us-ascii?Q?UxpOpgZtEd2TVU5yWpGQ4/v+PoYaun4McfvTiUarYgY6XSFMr6DGahhT5Kij?=
 =?us-ascii?Q?c0uDzZ/be1NvxB8pcO1XO30g3d5cpU4y1uYXod4IGQipjRiZ86ICY5Fi3w48?=
 =?us-ascii?Q?u8OOx/h6pEcpiILC/BBjvZq68wAdkYrCsWpMPaL7c5UBBQ5J5VIb6dnCnDlc?=
 =?us-ascii?Q?1mm+/yemub+R33wrwYJljx5+QwxAEq2PYjojSqpRiK5MIIMTi0mckq3TAfyK?=
 =?us-ascii?Q?mMDXATU269Z7KJ4/yljzuJX1hVUzVtSxUZAylj3aIVLWrr5nad8b9k5dGDLf?=
 =?us-ascii?Q?o1fZMpnNuoC8iP6BlvKxOp+kXOuVsXF3ZMtxSwRal6qobureuXh0B6QbkSYk?=
 =?us-ascii?Q?irjsAtIJwtu32y2t7VkbhVNPwiCCgqHZKKb4C46QUK/vdwBbfqhGyW8DNitL?=
 =?us-ascii?Q?QSDGk1XZxVp+H5JIi2lTDPLkcNXCUA952McQgs33Z3gV1k+4StSvdZMF5d80?=
 =?us-ascii?Q?s9wAK3cqAlU2W+xellsZpMWiCiH7TqxUcAhpt9yR+KnAq0i0YB3eHjrOuW7I?=
 =?us-ascii?Q?Anxw+R6S4oAE5cpHFF/m71tQQZ5pZ8ZETaZSa2DK44x5of55XQ+exlk8NIGu?=
 =?us-ascii?Q?z3nUAApkoU6Cr8vt3yWZjGcXxlqNysFb/HeBs9QNJgNEid5Aa7apZQYFCIza?=
 =?us-ascii?Q?DtauxvsBtd4sw0q1HgcRnrPFigCJ1rdUAqIMC2IGX2vY8FdGmSNB0EdLbEuk?=
 =?us-ascii?Q?LnwbYCKGgtKnvwGCT2esp+uD08BT6PRT5nUx/JrdekDrpMcmC4qondZ1+9a6?=
 =?us-ascii?Q?j4YR8c4p93kUDz9gFTiqz8NQuU7VIy3Cbxdf1VPeOY8JXCIDQBW+tSxksgUq?=
 =?us-ascii?Q?5Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26765b0d-8cdb-4a99-a064-08dcb1888480
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2024 17:45:07.7936 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +yPqvPu/xUv82X1D9sWPAFLRfkYek9tP0h43gX/xRE3BJ9wWK1E1Mz/rZuixsq+GeUNMSL0yZoPfSXl+vTO9Qh8ie+u1TX2ptEpGEO3CxJw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7898
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

On Wed, Jul 31, 2024 at 09:26:14PM +0530, Nitin Gote wrote:
> Wa_14019789679 implementation for MTL, ARL and DG2.
> 
> v2: Corrected condition
> 
> v3:
>    - Fix indentation (Jani Nikula)
>    - dword size should be 0x1 and
>      initialize dword to 0 instead of MI_NOOP (Tejas)
>    - Use IS_GFX_GT_IP_RANGE() (Tejas)
> 
> v4:
>    - 3DSTATE_MESH_CONTROL instruction is 3 dwords long
>      Align with dword size. (Roper, Matthew D)
>    - Add RCS engine check. (Tejas)
> 
> Bspec: 47083
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

If the condition on this workaround gets any more complicated (e.g.,
extending to other platforms in the future), we may want to pull the
condition out to a dedicated function so it can be managed in a single
place.  But this is fine for now.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> ---
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c  | 16 +++++++++++++++-
>  2 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2bd8d98d2110..5394bc7d4daf 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -220,6 +220,7 @@
>  #define GFX_OP_DESTBUFFER_INFO	 ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
>  #define GFX_OP_DRAWRECT_INFO     ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
>  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> +#define CMD_3DSTATE_MESH_CONTROL ((0x3 << 29) | (0x3 << 27) | (0x0 << 24) | (0x77 << 16) | (0x3))
>  
>  #define XY_CTRL_SURF_INSTR_SIZE		5
>  #define MI_FLUSH_DW_SIZE		3
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 09a287c1aedd..bfe6d8fc820f 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
>  	if (ret)
>  		return ret;
>  
> -	cs = intel_ring_begin(rq, (wal->count * 2 + 2));
> +	if ((IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
> +	     IS_DG2(rq->i915)) && rq->engine->class == RENDER_CLASS)
> +		cs = intel_ring_begin(rq, (wal->count * 2 + 6));
> +	else
> +		cs = intel_ring_begin(rq, (wal->count * 2 + 2));
> +
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> @@ -1004,6 +1009,15 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
>  	}
>  	*cs++ = MI_NOOP;
>  
> +	/* Wa_14019789679 */
> +	if ((IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
> +	     IS_DG2(rq->i915)) && rq->engine->class == RENDER_CLASS) {
> +		*cs++ = CMD_3DSTATE_MESH_CONTROL;
> +		*cs++ = 0;
> +		*cs++ = 0;
> +		*cs++ = MI_NOOP;
> +	}
> +
>  	intel_uncore_forcewake_put__locked(uncore, fw);
>  	spin_unlock(&uncore->lock);
>  	intel_gt_mcr_unlock(wal->gt, flags);
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
