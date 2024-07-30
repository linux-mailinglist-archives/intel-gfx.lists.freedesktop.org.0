Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A5BC941B7F
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jul 2024 18:55:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 797C810E05F;
	Tue, 30 Jul 2024 16:55:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fg3EKPCr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5E7910E2BC
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 Jul 2024 16:55:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722358544; x=1753894544;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L5XudvnZw0db7vp/Y1Y98ytT/tHlhhUIXa9tgIxT21w=;
 b=fg3EKPCr+0HG5JI5Dg6UVy1KnXUBmvBAsmJS+djOJFlJzK8Q2pcHb9vd
 /GFDa9L2CfOP5dICShNDPSn4IMgSf9ltgNNqOAVJR0k+G1npvcFl7HCfA
 SUoU48/DDCzENwsIJFqNNhgsXblF1wAVLq2c2IXBqPDrYnMxrdk//tlk0
 pyZUgYqPo0jv6nxWAisRACvfdbU3dl5aLzohYdn3+Bw2zBql7IFXUUvz8
 5ULI6SgDJQZ7YRoscYesIDLKldfKn+Qd0WErcuOnq37JJL4KfywnPtro2
 Kx2gXESWdIdSex70MM1ywbQq1W/yJBnxRpi863H19MDY1cd0apFFk5xez g==;
X-CSE-ConnectionGUID: NrAvG5JoRceQXgPKnyx4XA==
X-CSE-MsgGUID: NzifFkIZR6G64XWe7v2xMg==
X-IronPort-AV: E=McAfee;i="6700,10204,11149"; a="20328609"
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="20328609"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2024 09:55:43 -0700
X-CSE-ConnectionGUID: 9+Vw6CtCSle4hod3Y4Cd8A==
X-CSE-MsgGUID: 8qW735OZRFerz5jnlWXoBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,248,1716274800"; d="scan'208";a="54988438"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jul 2024 09:55:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 30 Jul 2024 09:55:42 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 30 Jul 2024 09:55:42 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 30 Jul 2024 09:55:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tMe7rvv8UUNrK/tn2CXH8Cktvh28NVdUh06tQxbtfS/ofEMiYn7JefE7jsDIPB7m1DEA0TELdmtDCyUSXV1fmPug0Ao4L7ri8LAfywwRysA31zjxiomxfvrt1ORUbaT7QV17AbMF7YWiRB+iAdBVLR0CrFHCx6tOlO1NhdNhyCPybX+nBWpQ4/p5ovUMavaP/MGp/Ksopi2bdGaIQHnawFOIxf+ToZlVYtVbnW79XmrH+tKbqjpqgHFFrF2SJ7NxENeHwZX173Qupx38l3C3EkAZyXPSDlUath2qQVlnL/LHk/5TO7NzPq/wHfQTuCNCogr/8hamYVFXa1BM/Eh2LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hHscuKk1PotmuaFawBBCs23shNTcE1bhyGUBpTGcisk=;
 b=tMuwikd90drvu2I2HU54JBWbdWwpc8aPys97rPuJYPk9OMTUxqpWiTLfEGyoTZPrFKvt8WtIn4sOmgEdYEl0RTFsjdSK4gSTjYx7rMRbkLUSa9Z+GXd832MMUE0ERBnfwuZ9bvmLUdGIcx5kpQqhjplXvi5wn9RPzQdLyKrCB6gH49eD+DI8CH8g/UyOWHHAePHz2enTd4yk2ZAL8pPcZDtxMmvNqVfD4a+r8jJKf2R2TOHnemD4cRkvy11lcJGSOw+pMxhUC2oSDxHj8isNhLYVbhgYlonR7BGv1DPUCz1wZhYCDmwkAboTigF6bjbKwrmq1Oq8E/neTpcws/2XJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by DM4PR11MB6525.namprd11.prod.outlook.com (2603:10b6:8:8c::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.27; Tue, 30 Jul
 2024 16:55:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7828.016; Tue, 30 Jul 2024
 16:55:34 +0000
Date: Tue, 30 Jul 2024 09:55:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <tejas.upadhyay@intel.com>,
 <jani.nikula@linux.intel.com>, <andi.shyti@intel.com>,
 <chris.p.wilson@intel.com>
Subject: Re: [PATCH v3] drm/i915: Add Wa_14019789679
Message-ID: <20240730165531.GE2685051@mdroper-desk1.amr.corp.intel.com>
References: <20240730150313.3227948-1-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240730150313.3227948-1-nitin.r.gote@intel.com>
X-ClientProxiedBy: SJ0PR05CA0030.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::35) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|DM4PR11MB6525:EE_
X-MS-Office365-Filtering-Correlation-Id: 14937a5e-8bc7-4806-90b2-08dcb0b86e0d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3CMA5lt4Tq+HlYruSfaORb0hM9h50tYtlc8g5M48zHSF8m2epP1x0/jBAIBX?=
 =?us-ascii?Q?8iEkg7G0OsfR/yE5bt7I4PORQ5PBj4CX/I4lliyAzpuvf/MQVo7/UtgpDd7G?=
 =?us-ascii?Q?5ElwUhtxPmNibXcQuh5ekuhLjk8hd9MjuY+w4NhNr5z2VYRQbe2dB67ohqI8?=
 =?us-ascii?Q?2NrRQmsk7iBpqWtOX1veOJYwlDfP4jCRP2DgSAm0+G6kKXaO02BEoMgeCM3H?=
 =?us-ascii?Q?///2EqyHPyFgEFhKcCB4FFNBMp8/Wdw9oL+i4/SB4ZK5jnaPs4rtfq0P1VSr?=
 =?us-ascii?Q?Q/Lzov7o/mMkj0Ldc6pYYX4DI/V/GXo6fSUw8BsCO/LjWzUH9hvIRjBA/DAi?=
 =?us-ascii?Q?H8G0v/ka4rvsnImdu9PqJaJSghR2npcSVSbSIAyyBUBvc0mzeS7aUPQxPNzr?=
 =?us-ascii?Q?T5JNHG9Hgc4ZChuKRU6WyAYE7HdB1mhYSAoubK7tD1Xete2xrT3bdnWdpwcN?=
 =?us-ascii?Q?odVdJq3J/ukx6PbHfOhNOjmSjpimJcYofJAtPtsUvd6YTNMqX8AnSoZsuGN6?=
 =?us-ascii?Q?K3jpO4FmrOZZyvqpXy+krCdzqOln9ea1UE4ZJdG7kkR2t2eMjf42bgmc2pc7?=
 =?us-ascii?Q?pqKDv5lMe9oIOUOahHtwliaNP6WKbzFr05o6try0q/kKv0i2ewE9BkG7AYv8?=
 =?us-ascii?Q?myoI9ih+dbQM2H1FBiq3yjb96Ro+7O7xkJAySgWKepC/VeHeUBSq1eoA3azi?=
 =?us-ascii?Q?W036UkIqzFub6tqBHwQG20hYnnGs0rqQYgGPPj9RPc0xfADpTSmih+19y8Hv?=
 =?us-ascii?Q?kmrbxAcEpa/ZEO60kQV68oIhcYqnJD1Z9GG2fLQ1U0nZPUjcJjyZ3NOsMQPI?=
 =?us-ascii?Q?mAHzQRKvDRHnCO8dDxtW4sPOVuwEyTPsxCMTLOlAwejd+ccFA1m6VPNehzRt?=
 =?us-ascii?Q?lBu6WHEFMMlA4xnbIKMjWqYftXcZ1SsDeDk9dD/vNNWDqbmWiDJOmGunwAny?=
 =?us-ascii?Q?0VIEwsW/YVN4YfwNnaAVlE5iJLAoHlqy7usaaPDn30FcWdNYKIVxIsvTT9b9?=
 =?us-ascii?Q?z33656JP738butgYhmImAnK+6pMRZxG0fYL84HXOPQDkmpTHQN1OKZG37xIQ?=
 =?us-ascii?Q?74L8XDMS7QfFmnGzVf9iICc5UnhmCMQHNx59YPdsoArz8l/doRngOJ1pFW6p?=
 =?us-ascii?Q?5SRfTvRm95lMoh8e9OBAN+ndbRazPP24PMBW6gzY0H9bo4K95tuxXQ8Jn/RS?=
 =?us-ascii?Q?OLjnxNG1F1IYDsclU3ICJnA/tKafvLIIkvGcdxP4jHpa4JHOFSlJCMzRWbsq?=
 =?us-ascii?Q?2Ono0UPBiS0pX+yLn0J9YrU2YGxo1MUd3/0leGBYt0C58I53t43KHClnXEXL?=
 =?us-ascii?Q?FO1pLRlpoevw6xtN+K/Qx/jY/DCH75aixYO3p0iHPJXy3w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?epZfGDM5XtqQNZyKAlkFFDBUp5MBdgnbWEfYGHsndnob2+ihXdOO9d5P6brR?=
 =?us-ascii?Q?3/BjHJa3atgE2Fdwr/h1FrBBGJ6PfoDYasgxwi3JCWVdlmjuEqIN/ntOCGlH?=
 =?us-ascii?Q?i0ni4hdNoFeuuJZlxtQjlT+ZaHPksiCnDK8+BQLPAtfRFNrt/ulp9ILo4bXf?=
 =?us-ascii?Q?acjeeov1IKgiyYsVeXmDsxi/UCU11tc5ngn57WYuuocoZu0Hd6uxNWpd0260?=
 =?us-ascii?Q?z1BzgVvvi1wP1w/fNjgp62rLVTPpIQh+ZCc8HVVQCV+yotqa8esvDVME/99c?=
 =?us-ascii?Q?9I5et05G+X9flfOtpbgZMFZ/VXqJBR3D6gI8X+HY3oo0CUo2XcEOblyas19W?=
 =?us-ascii?Q?I4/EmrjNK8zSVQ75ucyAvDgdPwjnGC87kgLw7DxgcE26k9kp0IsHaN1lH3Sw?=
 =?us-ascii?Q?lwBYn5kFthqjYWzVvkrUgM7oveNKPonuueDtYaOAj6vPY2cCUYYsG8wzU8op?=
 =?us-ascii?Q?nKJx2BXXamJp0BKYsg8OYkC0HyWnRAmh6CxVB4n2fhpgt8DDO3+P9izEk/HR?=
 =?us-ascii?Q?iL+ZKdA2z1CFMMUhC9iUFVSGBNCnn/gCIv7GvYi9aKAACPUWX3QjiBJp3xdt?=
 =?us-ascii?Q?zY+l81i4DLmFsyaMkOhsbMzl62Nskg7NaZbrbq4rW4iJvmvubX4DcrGWl9bs?=
 =?us-ascii?Q?OlrKE25FswLqbcdzdKyjDzIcKSJA7syb+w/12ZaLbT+roJKU1SFktrokPqLE?=
 =?us-ascii?Q?rlo6ybYB9M7eYn+emxAoNT6kJJKNZjUlg+BVsHwS3QNYzzJNV+VExM16tIcY?=
 =?us-ascii?Q?VLJoYG/qe8o5eBK5sOA6hdDVAA0NhBqsMGE0HUSZCHPO7dMO7oTU9glqR+qj?=
 =?us-ascii?Q?Q7XeFCHXi3HuCLWLT2d+/ZpWU+YR5xs4rG/PjsQ25rmPE7j969X2cwYT6dky?=
 =?us-ascii?Q?JjSc9zhKHd31PC4ikzra7CBF1nSxro7qRS8sI1kPdgkouxVBPa4Jer9odo8o?=
 =?us-ascii?Q?IxIvGgZxu0M+y3lchbSET8Wv4wVLDIcteexuU1xsNfYIqk0cFAKxyVnzZGvz?=
 =?us-ascii?Q?ZqDZZ4IKvZC6vyqCNnbBbFo2AW+QAl2vXeeGxzUrLhg3D218IzkgjMrB0QLT?=
 =?us-ascii?Q?3yu0zXUN1L0eKkyEJRNBolxJfo5/IES4Ggr+Q4z/zc6/CrDXwwWBe4kUblqS?=
 =?us-ascii?Q?CnVQonLszOM9dUvWpHbfMvtwZw6uItXREvdN7OZdeQLQygw2EAOoqgKWPgwe?=
 =?us-ascii?Q?dCsEsmsZF56GYDIoAgz645rpQoxMwUtxav6ykEVicZhtmFA5S5EZ5ppshk40?=
 =?us-ascii?Q?vIdJ0ht+FbX823cRURa20w/mBzre6l+VkPHJeU7+xQdOgaHK9p2hENcAZ31Q?=
 =?us-ascii?Q?uMJYtsTrS91+8SvhiIj3UE0a1m1yxKWJMhczim8mcy6k8yIzgo1JybG7Ezrs?=
 =?us-ascii?Q?C68mEYyQKLmnOzudXzIOejAwwc49YydQB6vtaMg+DM+1BfySM+Z4nHr/RXea?=
 =?us-ascii?Q?NsdZMgbY4gBjeKbJnGgMtZF2e6qTJjhReELRPVJtV/kjitClNzaB4O0lxjde?=
 =?us-ascii?Q?Sk8xnlSS7NhJrpAEPHjPXm170kINsiNq8yAdzpUm3d8UMQeNY6b0veDKTDrK?=
 =?us-ascii?Q?yoxyBZYbCEx7YzJ1uFT4FgUiQr+jamXAM/rn4fFHcpJj2+kwSRolDUyM5xiG?=
 =?us-ascii?Q?Jg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 14937a5e-8bc7-4806-90b2-08dcb0b86e0d
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jul 2024 16:55:34.7806 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZW1BznHX8lzKH9BPdf4fCZkhb/dUWCt0LUZSuw84sm5nbJMJ0IzwObk9pf59lcgMSN4/NJXZHIu19l9yYw7YUCWjWt6fi3tfblS+f557CRE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6525
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

On Tue, Jul 30, 2024 at 08:33:13PM +0530, Nitin Gote wrote:
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
> Bspec: 47083
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_gpu_commands.h |  1 +
>  drivers/gpu/drm/i915/gt/intel_workarounds.c  | 14 +++++++++++++-
>  2 files changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> index 2bd8d98d2110..7eaf7eddd25b 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gpu_commands.h
> @@ -220,6 +220,7 @@
>  #define GFX_OP_DESTBUFFER_INFO	 ((0x3<<29)|(0x1d<<24)|(0x8e<<16)|1)
>  #define GFX_OP_DRAWRECT_INFO     ((0x3<<29)|(0x1d<<24)|(0x80<<16)|(0x3))
>  #define GFX_OP_DRAWRECT_INFO_I965  ((0x7900<<16)|0x2)
> +#define CMD_3DSTATE_MESH_CONTROL ((0x3 << 29) | (0x3 << 27) | (0x0 << 24) | (0x77 << 16) | (0x1))
>  
>  #define XY_CTRL_SURF_INSTR_SIZE		5
>  #define MI_FLUSH_DW_SIZE		3
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 09a287c1aedd..d942707381be 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -974,7 +974,12 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
>  	if (ret)
>  		return ret;
>  
> -	cs = intel_ring_begin(rq, (wal->count * 2 + 2));
> +	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
> +	    IS_DG2(rq->i915))
> +		cs = intel_ring_begin(rq, (wal->count * 2 + 4));

The 3DSTATE_MESH_CONTROL instruction is 3 dwords long (one header dword,
two body dwords) so going from +2 up to +4 doesn't cover it completely.
You'd need +5 to cover the entire instruction, but I think we want the
output here to remain qword-aligned, so you probably actually want +6.

> +	else
> +		cs = intel_ring_begin(rq, (wal->count * 2 + 2));
> +
>  	if (IS_ERR(cs))
>  		return PTR_ERR(cs);
>  
> @@ -1004,6 +1009,13 @@ int intel_engine_emit_ctx_wa(struct i915_request *rq)
>  	}
>  	*cs++ = MI_NOOP;
>  
> +	/* Wa_14019789679 */
> +	if (IS_GFX_GT_IP_RANGE(rq->engine->gt, IP_VER(12, 70), IP_VER(12, 74)) ||
> +	    IS_DG2(rq->i915)) {
> +		*cs++ = CMD_3DSTATE_MESH_CONTROL;
> +		*cs++ = 0;

As noted above, the body is two dwords (64-bits), so we want to emit one
more empty dword here to finish the mesh control command, and then an
MI_NOOP after it to preserve qword alignment.


Matt

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
