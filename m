Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2467A98798B
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 21:12:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E1210E068;
	Thu, 26 Sep 2024 19:12:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jVNBA9Ek";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 729E710E068;
 Thu, 26 Sep 2024 19:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727377959; x=1758913959;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=V4YqzgWkVTz2UwpddvhxNRgZ4t/BIN9Byv2cfyem4Pk=;
 b=jVNBA9EkWHf5LW73ARXSSxDPnZhmn48TLSuU/JghEhGof5ddVdbDc1KF
 od00Ccd4xGGOayWlWPViSZ97tuPLh4L1OUibWUlOd+yxAkwn+kB9Cb4Bl
 mpYHIMbj7Dz0+shfz91etGr01ffD0zPp0H/ov1SOWcbdfXrtpZGgPA7Rd
 e6wDshPzlc5XGc1HOkzrRloZX3XMDqlIxxNXnMmgQ71KUFX9PNYDnBMVi
 NlUnlXhJ5Zf2IMBBf34Y+qCQfwMIs4WAJtp/bpdQUxT2p3RdXndza/5LM
 yUmaSr9ale/mfLsYMUW4+0OzB47xPgi1nQCCaZk0rywUsc2N3YqNr1dHT w==;
X-CSE-ConnectionGUID: uGlFZPFgQ9ejI7OJLwor9A==
X-CSE-MsgGUID: cs9FlAinR62bb75+AYwDzw==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26450936"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="26450936"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 12:12:39 -0700
X-CSE-ConnectionGUID: jDfrobJPTmiWvo+V/ZdzkQ==
X-CSE-MsgGUID: LBU93aKPRu+U74k6RS86tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="71869386"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 12:12:37 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 12:12:37 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 12:12:36 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 12:12:36 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 12:12:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m7ayvdcvXoaijzGFAUvuvA4RP2+XW7VgtuYHX/ozJQHJd4wWBDRkfD4K2J2X89Su7tFB/hUxQ1pY0QVG3yN+7j0Ki+BuiWQ/7Mi1IZRdiU8d5KMZ29ivjIT6G2y9l1NoBRjpBOqKHhADRbdAlRTanmgmK0bPRNL+PkNqhuYKkcTQMcxraQWEBbkIjgrRvM2zF50XTIn+OM1sVvxxa3/rotMU9FB0nMyM6TOu9+bA6f3HUyHgztgYNlz2cgpePIKGWauKMEj1dFPcqjCY6UhRmtDnpQ3rQcwKNk8nxqczhRBzlP+hRXZQGFDoZIMpLZ7eLvzzJHAVsFAo+10JdpPbeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q89a31wjMjwtsoEvZxcflPOmR5pynq12yxUmdR4n1gI=;
 b=dGZXGGsY0mqZ7NCEklm5OS0EvkgxIen7344ofrmvf1xDsV4z3+kz7MlO8MWwMLvqLBfL9YsDjgd8glBZNIpnEYoKjBiZQCWOfG025u1SXCKoarrJ/53mHu7E6Vml1nad8PEdYyZDfcdKppyU2UoBSdAxZnqiDD/fT7SPHC8v922xTL0nJnhO4JE9/ej3Z6Xzcoi3Kd7RBeSh/Z72J6DNoqhQ6jEaQgKx4JiqIXnVROQJOFPx0FLM6W+XUAyMKnhwQRXznmYFQBLW0EbG/PUg8niXB9S4cPc+GC0rl8gV+j22pDkxDB2hLxPXr8On4ECdhk4OW4rgtN+IM+pOhfilVw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB8075.namprd11.prod.outlook.com (2603:10b6:806:303::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.28; Thu, 26 Sep
 2024 19:12:28 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 19:12:28 +0000
Date: Thu, 26 Sep 2024 15:12:23 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 1/3] drm/i915/irq: add struct i915_irq_regs triplet
Message-ID: <ZvWyF0RORVLoXMVP@intel.com>
References: <cover.1727369787.git.jani.nikula@intel.com>
 <a51dac3cb572e58654fa705b011d357671c17413.1727369787.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <a51dac3cb572e58654fa705b011d357671c17413.1727369787.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR03CA0277.namprd03.prod.outlook.com
 (2603:10b6:303:b5::12) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB8075:EE_
X-MS-Office365-Filtering-Correlation-Id: 87384825-cd82-4347-51a6-08dcde5f2933
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uFS9H0yVR0YSVYw8sKGycEJRjVzpIYhTXTwhgZpVIHn/T1QGq35THjo4hWgQ?=
 =?us-ascii?Q?hf0fQVNqcdNcXUU9RxeAgn476IcQDKfjUtvVRDoKgLmphja6sO3LNI8EFCNa?=
 =?us-ascii?Q?G15UiUA+GXvlp9UcAdOv4gPho1B5ooViEJVgRJuHvGcPlsXLWTdEe8UasvzB?=
 =?us-ascii?Q?nBixBkNc4L3R369DttWP7dt3LJYhIn7s8nIPu4o3atR5ca410VpIGSj8886d?=
 =?us-ascii?Q?fMpWhTaZh51nFBkrpzkNrFzvAk2tPBPdzQBHRFqTp5iW3FSGN/Zsm11cCvyH?=
 =?us-ascii?Q?bVB/Px5ixgDiK0GWsZ6DMsUVgPvt/LRsy40qA0qmbra3hSr262VFmjpRymmu?=
 =?us-ascii?Q?j32Le2gRzhj8Q92kxMlJjrWef94BbUMUblmZjyUMRy5zSvFCA1YoKOnnPSsA?=
 =?us-ascii?Q?Jl3z2dkueBBPl2qfeWPw942SrHu9dmW8Yyl7/fwVSbM9kAaI4YKbY/gFcZJW?=
 =?us-ascii?Q?tNiwhtosdKtydkQujJU/DkaG0jNEtuMbR0lYrQRiUrZFlUaIFUVaM4MArLa7?=
 =?us-ascii?Q?xpUqCG3hb4biCxHcnjWbo128V0L7CZlEkK4ujglwKN+tL0HWG5AhAImbBPfH?=
 =?us-ascii?Q?mu92wO/AVc1XNMp0N0x4A/HdT6hDCcoUmM0TdFcaWenX+bC4PWWWSwMbNGxR?=
 =?us-ascii?Q?dJNXeaPiCB3reyf53PYBZ5dlXChYq6kAN2TQMKZ3rUG46QJDccZG+prLt9wY?=
 =?us-ascii?Q?CRHJCeMkQNdQXpOYNO0qhds+C6eNHxVXwFYPVAD5BPATxrZ3FY+mSCj77Ve8?=
 =?us-ascii?Q?W5JjrJEyPGtQHEq2HSQUUOFgsYRQQ16KFefmyTeWKlN+RjK8xn0B8faeHF1L?=
 =?us-ascii?Q?DXmr5C6XRb2IMW8/9XNnic8SbkOW1NO/72+YV2kcxcjIQo5ygaMn+uWWa4Dc?=
 =?us-ascii?Q?ejox8sH9tHeNVzT7kV/w3etEwJxNya2yG+Mdo0uqJkkFzubY/EYhvzv4i8QF?=
 =?us-ascii?Q?BD9kRDnHdleTfDvUD13lZcI7FC4bwqCp2XVYPb6INN0q0lBXs2BmVr9qFNfk?=
 =?us-ascii?Q?1BSCIVrzRF+sG5xgM28h5zOXNBBN0GgXM5xdAFJjrVsmFXQFQLKs3niQkeL+?=
 =?us-ascii?Q?4agaUA5zPk/XbF/XbIjHhxIFRKXV7xC724B8QH4d0k0ZIQPCrJd4wpf71YX3?=
 =?us-ascii?Q?ztqXc6xi3MeJbJw1KKE8LyPjHPNpeAqjhz6LGkM84kUJSth6OApqOCpcDRUP?=
 =?us-ascii?Q?iK87S3/NZ6WKfj+BHRJGbRQpiQ5m8EO8yWlfBJhtNzvAps2ceMcuSB3L8G8c?=
 =?us-ascii?Q?JeMYW1X1P9V28VM6qo4sRO0qnFHLsZQVTWiANVLL8w=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DTYR+gRKkoluwT3NhDdEBQvPCgYjE1VIYE/K0jhTxP1b+6VZcrmB//1sOhpv?=
 =?us-ascii?Q?mmRbd3OU8HomlEzSenGzKsUd4QuFFd2/S2C64Zh5CH5l2atPx27VRPvvVeoz?=
 =?us-ascii?Q?gRIlhV7VwQCteHWnHlWJJxiP+nqAem61HqkL4XOztSkAi34kYmIMOzZEGW+h?=
 =?us-ascii?Q?Y6v5zwO/r6yRygp+6s2xKkcrFEthGePSauQMW+tTqqSupKD0vBaIQD/stMwf?=
 =?us-ascii?Q?vTzVDWiyEzcjbzwsgm5cljpvY5qLhFKAcR4TtRBps5AMjcEdLtbLmfUVPPaN?=
 =?us-ascii?Q?bXtwVQjqJGgCMZesNjG6mpn5Tv9/0pVVHP8AhwG3Q07PdnV0E5vpa24KNGcs?=
 =?us-ascii?Q?mpTxc7N4Vzm4HC7A7YyRubpABYme7Lv4VFDIBQPaBzzGIZiE7Wd5iFPDr20q?=
 =?us-ascii?Q?Qr7jaj3e8XOVInGqyYR1SoVnHKlBN8Z6bA0a9R8dncdIcAw566zW4J/hQc2e?=
 =?us-ascii?Q?3HNK5kSkvfgnLwyW8dwe1Qs8wvUtq6EVFaAyNDSEfb9HRFEPN/pfDnEfoVuO?=
 =?us-ascii?Q?NPKOAcLjIsReFllEXbl4rZztiJKbzHhbt/eR6TFu3nEI+Wfi7inLMK0n25X/?=
 =?us-ascii?Q?ticHpaw3GO1PBQxj5t4ggvGd+dx7zfHzfhxEGzpI3sbnoTYtHDXiqhu4KhPK?=
 =?us-ascii?Q?KhzQabYhv7T9eQ2G9isHdccHNXN4iu5/GC/+slHBkQf1hNcYIf9PEyxDmpaE?=
 =?us-ascii?Q?aA85nHCj0qh+YSs9r5Kqtop4thw40+ud1J+NdnRgGrAwAavbgGFvOB/fjNL7?=
 =?us-ascii?Q?E3bTApt8cLZlllyuuW+M0mqutcnFZLzrMyTVzOmGsSN+i4T5G4opoyprsB18?=
 =?us-ascii?Q?iRnE26VhU4SHIhjpKIoYmR4AzAs4sLQnIhwuYofbGYx+UISHuD7rbFFuYOYW?=
 =?us-ascii?Q?zUJzAke6rq3Net1PvSfxnjyVoUVmBDI4zgsFEPAkuy5gc/o4orsfuPiTnwCP?=
 =?us-ascii?Q?iCmArjb0gYXCP1SqPeN8ZA6iP5xedVo7pF8hFsy87FtRMZUc0zo75WjpaJw2?=
 =?us-ascii?Q?VMqwG8dRmm6rayuoyw3bAiAIpTxI8SIkur/SKyxhVt+iajHt5gqo6lawqxAH?=
 =?us-ascii?Q?ElI68/xzjqlSvTeSSaioAtEI5xd7S/Zfart0wjmdvVcGunxttEtPYj9Bf6tE?=
 =?us-ascii?Q?OzhjboKbohhQoFxOPY8yXBHz/boplCubpvOpSajGKNpcJJns4HicYLpSZ3DO?=
 =?us-ascii?Q?1lp0CsM/NUIZQ0nqCW4QzMbrl6fXRTQ9+lpKJJK125pkM7oqz16+KpxxeB0c?=
 =?us-ascii?Q?5qilqDIkSLg0+kS/4fFF40l2nkm9H2d3MZvwSZdmCXVfGUralXCsFxBDw5xO?=
 =?us-ascii?Q?hWLIMwXhMbldvHNfTJ+KHlfk456frVJ8bclrsbOGONmwkOPF29sKPrTLpCiW?=
 =?us-ascii?Q?f+FJxkFf2xQ2gsfdlAgL9kadZR1qg53T5wTCnAe41wAE9uURMaokDkLgDcmS?=
 =?us-ascii?Q?XNim196EmalLz9lL5CWfOntefZ/1yqtTeKfqQkud38y24G6QTCy5pbORW8xW?=
 =?us-ascii?Q?xRJRG0mvspLZgkKSCblSOP5ikuUg0eVpw2ChmqK8CtW/EKlrJNgnpxhUioO3?=
 =?us-ascii?Q?YsuVOf+EWGhA2Gg6JNXvt6330bjy6wprSHJe5HiBiNVpWyozIqO1uSpvDmVJ?=
 =?us-ascii?Q?6w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87384825-cd82-4347-51a6-08dcde5f2933
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 19:12:28.7405 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TedZnTAthmqZjp8SD8fWjmlFZ8fUFYz8DiWivDQsP5U+i55O59MAFcXLNT810TKV4j2/ep59cBIhk4JDE9x3uQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8075
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

On Thu, Sep 26, 2024 at 07:57:46PM +0300, Jani Nikula wrote:
> Add struct i915_irq_regs to hold IMR/IER/IIR register offsets to pass to
> gen3_irq_reset() and gen3_irq_init(). This helps in grouping the
> registers and further cleanup.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_irq.c           | 31 ++++++++++-------------
>  drivers/gpu/drm/i915/i915_irq.h           | 30 ++++++++++------------
>  drivers/gpu/drm/i915/i915_reg_defs.h      | 10 ++++++++
>  drivers/gpu/drm/xe/display/ext/i915_irq.c | 31 ++++++++++-------------
>  4 files changed, 51 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index a784803f709a..7938a44b5681 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -77,19 +77,18 @@ static inline void pmu_irq_stats(struct drm_i915_private *i915,
>  	WRITE_ONCE(i915->pmu.irq_count, i915->pmu.irq_count + 1);
>  }
>  
> -void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
> -		    i915_reg_t iir, i915_reg_t ier)
> +void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
>  {
> -	intel_uncore_write(uncore, imr, 0xffffffff);
> -	intel_uncore_posting_read(uncore, imr);
> +	intel_uncore_write(uncore, regs.imr, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.imr);
>  
> -	intel_uncore_write(uncore, ier, 0);
> +	intel_uncore_write(uncore, regs.ier, 0);
>  
>  	/* IIR can theoretically queue up two events. Be paranoid. */
> -	intel_uncore_write(uncore, iir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, iir);
> -	intel_uncore_write(uncore, iir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, iir);
> +	intel_uncore_write(uncore, regs.iir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.iir);
> +	intel_uncore_write(uncore, regs.iir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.iir);
>  }
>  
>  static void gen2_irq_reset(struct intel_uncore *uncore)
> @@ -141,16 +140,14 @@ static void gen2_assert_iir_is_zero(struct intel_uncore *uncore)
>  	intel_uncore_posting_read16(uncore, GEN2_IIR);
>  }
>  
> -void gen3_irq_init(struct intel_uncore *uncore,
> -		   i915_reg_t imr, u32 imr_val,
> -		   i915_reg_t ier, u32 ier_val,
> -		   i915_reg_t iir)
> +void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
> +		   u32 imr_val, u32 ier_val)
>  {
> -	gen3_assert_iir_is_zero(uncore, iir);
> +	gen3_assert_iir_is_zero(uncore, regs.iir);
>  
> -	intel_uncore_write(uncore, ier, ier_val);
> -	intel_uncore_write(uncore, imr, imr_val);
> -	intel_uncore_posting_read(uncore, imr);
> +	intel_uncore_write(uncore, regs.ier, ier_val);
> +	intel_uncore_write(uncore, regs.imr, imr_val);
> +	intel_uncore_posting_read(uncore, regs.imr);
>  }
>  
>  static void gen2_irq_init(struct intel_uncore *uncore,
> diff --git a/drivers/gpu/drm/i915/i915_irq.h b/drivers/gpu/drm/i915/i915_irq.h
> index cde4cac5eca2..361ba46eed76 100644
> --- a/drivers/gpu/drm/i915/i915_irq.h
> +++ b/drivers/gpu/drm/i915/i915_irq.h
> @@ -42,37 +42,33 @@ void intel_synchronize_hardirq(struct drm_i915_private *i915);
>  
>  void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg);
>  
> -void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
> -		    i915_reg_t iir, i915_reg_t ier);
> +void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs);
>  
> -void gen3_irq_init(struct intel_uncore *uncore,
> -		   i915_reg_t imr, u32 imr_val,
> -		   i915_reg_t ier, u32 ier_val,
> -		   i915_reg_t iir);
> +void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
> +		   u32 imr_val, u32 ier_val);
>  
>  #define GEN8_IRQ_RESET_NDX(uncore, type, which) \
>  ({ \
>  	unsigned int which_ = which; \
> -	gen3_irq_reset((uncore), GEN8_##type##_IMR(which_), \
> -		       GEN8_##type##_IIR(which_), GEN8_##type##_IER(which_)); \
> +	gen3_irq_reset((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
> +					       GEN8_##type##_IER(which_), \
> +					       GEN8_##type##_IIR(which_))); \

after checking other patches and seeing that this is really going away,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  })
>  
>  #define GEN3_IRQ_RESET(uncore, type) \
> -	gen3_irq_reset((uncore), type##IMR, type##IIR, type##IER)
> +	gen3_irq_reset((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR))
>  
>  #define GEN8_IRQ_INIT_NDX(uncore, type, which, imr_val, ier_val) \
>  ({ \
>  	unsigned int which_ = which; \
> -	gen3_irq_init((uncore), \
> -		      GEN8_##type##_IMR(which_), imr_val, \
> -		      GEN8_##type##_IER(which_), ier_val, \
> -		      GEN8_##type##_IIR(which_)); \
> +	gen3_irq_init((uncore), I915_IRQ_REGS(GEN8_##type##_IMR(which_), \
> +					      GEN8_##type##_IER(which_), \
> +					      GEN8_##type##_IIR(which_)), \
> +		      imr_val, ier_val); \
>  })
>  
>  #define GEN3_IRQ_INIT(uncore, type, imr_val, ier_val) \
> -	gen3_irq_init((uncore), \
> -		      type##IMR, imr_val, \
> -		      type##IER, ier_val, \
> -		      type##IIR)
> +	gen3_irq_init((uncore), I915_IRQ_REGS(type##IMR, type##IER, type##IIR), \
> +		      imr_val, ier_val)
>  
>  #endif /* __I915_IRQ_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg_defs.h b/drivers/gpu/drm/i915/i915_reg_defs.h
> index a685db1e815d..e251bcc0c89f 100644
> --- a/drivers/gpu/drm/i915/i915_reg_defs.h
> +++ b/drivers/gpu/drm/i915/i915_reg_defs.h
> @@ -284,4 +284,14 @@ typedef struct {
>  #define i915_mmio_reg_equal(a, b) (i915_mmio_reg_offset(a) == i915_mmio_reg_offset(b))
>  #define i915_mmio_reg_valid(r) (!i915_mmio_reg_equal(r, INVALID_MMIO_REG))
>  
> +/* A triplet for IMR/IER/IIR registers. */
> +struct i915_irq_regs {
> +	i915_reg_t imr;
> +	i915_reg_t ier;
> +	i915_reg_t iir;
> +};
> +
> +#define I915_IRQ_REGS(_imr, _ier, _iir) \
> +	((const struct i915_irq_regs){ .imr = (_imr), .ier = (_ier), .iir = (_iir) })
> +
>  #endif /* __I915_REG_DEFS__ */
> diff --git a/drivers/gpu/drm/xe/display/ext/i915_irq.c b/drivers/gpu/drm/xe/display/ext/i915_irq.c
> index eb40f1cb44f6..977ef47ea1f9 100644
> --- a/drivers/gpu/drm/xe/display/ext/i915_irq.c
> +++ b/drivers/gpu/drm/xe/display/ext/i915_irq.c
> @@ -7,19 +7,18 @@
>  #include "i915_reg.h"
>  #include "intel_uncore.h"
>  
> -void gen3_irq_reset(struct intel_uncore *uncore, i915_reg_t imr,
> -		    i915_reg_t iir, i915_reg_t ier)
> +void gen3_irq_reset(struct intel_uncore *uncore, struct i915_irq_regs regs)
>  {
> -	intel_uncore_write(uncore, imr, 0xffffffff);
> -	intel_uncore_posting_read(uncore, imr);
> +	intel_uncore_write(uncore, regs.imr, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.imr);
>  
> -	intel_uncore_write(uncore, ier, 0);
> +	intel_uncore_write(uncore, regs.ier, 0);
>  
>  	/* IIR can theoretically queue up two events. Be paranoid. */
> -	intel_uncore_write(uncore, iir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, iir);
> -	intel_uncore_write(uncore, iir, 0xffffffff);
> -	intel_uncore_posting_read(uncore, iir);
> +	intel_uncore_write(uncore, regs.iir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.iir);
> +	intel_uncore_write(uncore, regs.iir, 0xffffffff);
> +	intel_uncore_posting_read(uncore, regs.iir);
>  }
>  
>  /*
> @@ -42,16 +41,14 @@ void gen3_assert_iir_is_zero(struct intel_uncore *uncore, i915_reg_t reg)
>  	intel_uncore_posting_read(uncore, reg);
>  }
>  
> -void gen3_irq_init(struct intel_uncore *uncore,
> -		   i915_reg_t imr, u32 imr_val,
> -		   i915_reg_t ier, u32 ier_val,
> -		   i915_reg_t iir)
> +void gen3_irq_init(struct intel_uncore *uncore, struct i915_irq_regs regs,
> +		   u32 imr_val, u32 ier_val)
>  {
> -	gen3_assert_iir_is_zero(uncore, iir);
> +	gen3_assert_iir_is_zero(uncore, regs.iir);
>  
> -	intel_uncore_write(uncore, ier, ier_val);
> -	intel_uncore_write(uncore, imr, imr_val);
> -	intel_uncore_posting_read(uncore, imr);
> +	intel_uncore_write(uncore, regs.ier, ier_val);
> +	intel_uncore_write(uncore, regs.imr, imr_val);
> +	intel_uncore_posting_read(uncore, regs.imr);
>  }
>  
>  bool intel_irqs_enabled(struct xe_device *xe)
> -- 
> 2.39.2
> 
