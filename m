Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2AFAE853C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jun 2025 15:53:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 396F910E72C;
	Wed, 25 Jun 2025 13:53:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nM8NrUw0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2C02710E72C;
 Wed, 25 Jun 2025 13:53:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750859612; x=1782395612;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=dtAkogCxw/bbzz0njv35tWIEw1GfAKJypSLaU9NiCQw=;
 b=nM8NrUw0Ps8zMRmmutFCGMUvhuyNLvh7CDYL6WVAAqF01758Qi78OpnM
 sEJyxvUt2X4NpZd0cb5BkAlPaVxUfkUbpEFcUoqYb7xbXP2my3jDA/JpC
 +lYjBBR9NEPqzZ7EZzsfBfD2osyuk41Dw8ZcAUXMUykfZtKq8oP0BpNn+
 faK/g2zzIwFdQ/JrOwxw0azG3C1ET9pXG/L1VmwHjLry2pXIgMs1IzC0o
 4g3wIJgl3mRsyPy7aH+aEfKUl2Rz7hZw/vzfvdsZtjf32tRCS4meJ/dT/
 kqV46apQsXuIR8+BFQ0BZUldgxr32jqiC4WdwY7Dj9l46IM68vjYxirb6 Q==;
X-CSE-ConnectionGUID: pyt42k8+SDCTVSZ7FzSv5w==
X-CSE-MsgGUID: b6/glA/+S3ytHr5LX4t7rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11474"; a="56933296"
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="56933296"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:52:37 -0700
X-CSE-ConnectionGUID: yA4Y4BX3RL2q90sBK2av7A==
X-CSE-MsgGUID: Yr0XUjwGRimuazlPdHLxTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,264,1744095600"; d="scan'208";a="152713139"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2025 06:52:37 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 06:52:36 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 25 Jun 2025 06:52:36 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.55)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 25 Jun 2025 06:52:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kBs9rZ7h4xlmmH4//Yo7/AokGcWxnTsorDx8DlOI+gGIJpgbgCUqAdUzmIKAk8sGNk7npoY3pyMIbNqMb0ZuAPGkAKlZIukqEY27QI2nGH+jN/Bq2WP5YfMACBKPMC4NaRZjmbHbdguCznDxEXx/WXcRp2gB6sgYxFR9IAlN4cWeiKQv1x6WQzOw14fgCVy3oTf4YfbpoB9LXfOmVtbRStDWcuIoKrJIMQYOx9oDNMYgTcEIylMpdLIDTxcDU/RnqTN463br8ts3Dd4EPRxGU/KEOu492NQzUu9pcOPScQKohOUnKl3R0BH8iRi8PraMXOQk5SQj2CO/wF91DPpH4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5dxA3k8e4vIL5Mpytia6UqPzzCFGnkyEmPyptfFOH30=;
 b=fMMfzONF8DJcr6RM9mGoLGPaLG5hHI4H/C9WaCVxh+BpOFQbT7D/ccLz7QjnPz/kBTiMT7b9kIcEPjxw8dcf0gccm8UJ/0VAOVLrJtOnBeQ47H6nGhPziWasib9s1a+Sn+ATlL8tIR//eiMgQpFxjcr3OK/P3boNH1enNTOSLkybeRpjAIqMolD4HgNXTLySsOnZ35RpNfEwqWVSk90TjacBmCip7/rYey5nE/TQNAw73uuospSbS45OHAlqyva4VrK59/D5STaJrCxw4DW7jpCfTVlC1211aFoYMzVIJvjVRnStsROWO/m3oArr/4nWkVXhZ5hq/OItPSNf75ZmOw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH8PR11MB8038.namprd11.prod.outlook.com (2603:10b6:510:25e::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Wed, 25 Jun
 2025 13:52:33 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8880.015; Wed, 25 Jun 2025
 13:52:33 +0000
Date: Wed, 25 Jun 2025 09:52:30 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <imre.deak@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/power: relocate {SKL, ICL}_PW_CTL_IDX_TO_PG()
Message-ID: <aFv_HkvflHpZbtwX@intel.com>
References: <cover.1750855147.git.jani.nikula@intel.com>
 <18e40b77eeb3517a056f1e567672163ec568ec55.1750855148.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <18e40b77eeb3517a056f1e567672163ec568ec55.1750855148.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0171.namprd05.prod.outlook.com
 (2603:10b6:a03:339::26) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH8PR11MB8038:EE_
X-MS-Office365-Filtering-Correlation-Id: a9d8b6ec-6db5-4eea-b63a-08ddb3ef88e2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?G8jH3exuVlrbNFYN9PqFFI44qvdcTcGn0kkIt/ZqWola8mzAUdove/PyHsA6?=
 =?us-ascii?Q?/yL+/lv06TrnAhaBfLc1hAyP6e44+BtG1BjeBJnX7TSObxzjhZ+Y/r3ortRz?=
 =?us-ascii?Q?ls1XqcwF1rBLKDgOIiTwJKBt0C61IW09GkIgh8sW5LMwB1VJGdwVCs+HENER?=
 =?us-ascii?Q?soHOGbepiqwUGW++MW0kcYenU/sg4qpattcTCR94nnsKDQ93/uGlNtbfdzFr?=
 =?us-ascii?Q?z0QIaOCFgM0qPtdxwtBvOkfVeqwCgdPRJuJDTERCmZagPx8LO1T7RMS82xfi?=
 =?us-ascii?Q?VTjF5e6nhbpsrr/svtEua/mvlFYHi+ySEkOFUNvCC6mvFQHQNTPO1lctjBl6?=
 =?us-ascii?Q?CiL7fr5w9dBXIPsjAB52QjoK8uXxuPJgHj1GbCsVMSnHJmxjBOQDuvxxnL9U?=
 =?us-ascii?Q?MgH3TtloydRStBXQfE8FFeBituouoXY+VCYi22kxSe0vDNcmIjMfvPx0rv5/?=
 =?us-ascii?Q?l+1JJPKsYF+IVZiT0AnQguLQ0eVvIFynMZtPG8HLAvE1W9vzHCtj8Hk1/Lpg?=
 =?us-ascii?Q?HpJ9p+vDsxNTLxVUG1HuRiwEv+J+se+kiIsLZeMLm+b2cWqNp73dLZeKTgKa?=
 =?us-ascii?Q?d3DXHkR7RKnCdpcHjGIt8N6LWQjWveMHxKj3WdMF928zeESZZi8sXEO3M6DL?=
 =?us-ascii?Q?rN/7VhvmpJnBrKuhoVBEkU9GNeAQEqOGLLSKq2pPjFlPuTKiuz2ox92jrupx?=
 =?us-ascii?Q?0Wq4tUOsgynnHlaW2YbeLkLj3JmUNnmD95z8fhYzpTZwlw4S2t+z63Tx41xs?=
 =?us-ascii?Q?Zp/w7uYdiCeP9Qo0Ee6OD+ytxXTvtkgk9eJ6mbu/OVxsaAgnJnpWhnzU8WIu?=
 =?us-ascii?Q?0qPJDdpt1/vF8QWcltSF3++WbnIusmS2jbzDWYiSlb82S4WboLfXwFa145IR?=
 =?us-ascii?Q?BB3W/+npzZtsJXQEOvcsLzSC6YXmo6lmQg+2IkLNhGDiOQaHY2cPpa1Ns9I4?=
 =?us-ascii?Q?ElCx+qZKSTYHh38M6VQ82jC0XrP57naTuyzVL/hkOVTrhEZqBna4phfVTRei?=
 =?us-ascii?Q?y35AmqSUFSZq9lu3uWC3RXiSEw9ackx4LztIwMdJUjPDilcvQPsvCp2/e/lu?=
 =?us-ascii?Q?nS7tMn7XOEtg4v40hoQQVzKaW3DRhXo+UT2ZOOQznnpXqK5jJfxc0BB8E2sy?=
 =?us-ascii?Q?r0Emq0kMDVqAAD2wTO9efoTYTs8mhA8O8VtOz/buwd7INeimiQIrtfZ7ikLZ?=
 =?us-ascii?Q?t9K/l2uVS3IhcjfkJMiqMMO3xQExnDkQ2ZqEy+wt6ftG5+sRKiPcsy21yvbI?=
 =?us-ascii?Q?rCd7BV7Bc0y3plD6CkyOzjhB1cfgRGfwasa6A0zi0QZ0oRubYiWIlpFk/8VF?=
 =?us-ascii?Q?EtJCso7XI4xSfn/NR3bTv6kb/XBpTT9izsUVlImJatFACp0PjytP4WraVxnj?=
 =?us-ascii?Q?HnRemSMH2+8LZ6y8I0eYDG6tej9xIQdvaVG6dB3C1t+2bSogelOvIBzw5X6j?=
 =?us-ascii?Q?FdB5rH8KxWU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fE3LEggg7nFQuZzGg7nged0iXff4SQETL5GTqFLAqst3O1b/PFqPZ3Jq/v3I?=
 =?us-ascii?Q?JJlwyht9dc8wMD156mmByKysDjUi3F5Bzhmqlh6AYD5jjjutVgeWKxCgiCY0?=
 =?us-ascii?Q?TD9PuIezpv7DFcYe4TRfcOb+SpsQ7npPdMyB3TeDqBbxK57FHLyZctxdMz96?=
 =?us-ascii?Q?f9cFvbccI0XtWVflJym6kHsMpqHqP+ELPq+vqtXIrk20eA4JmfelwMhqQ6/q?=
 =?us-ascii?Q?jQowRbEjmBODN2sMXHTHI72I5fRYzXMQYHHlS4r8vYBSlveSNd12ZjUMo0mD?=
 =?us-ascii?Q?yVzDVxg47p+IwU6Twkq4ZhhdFgReo3Q3VNamNFJmWT/5XQ4JPzSeaJDyknrB?=
 =?us-ascii?Q?vWsvnpEmDVcD6ZKng7W9Xb8QuOaQlcXHQCWVoR9OJeKgvi/06dUt0E/MktEF?=
 =?us-ascii?Q?NI/QjU1RXXQlduHdNo1HbisRiae3EdEnIeIR2/fbPTcXsp7d8jbGzyb4pIKa?=
 =?us-ascii?Q?Ufbj02YNhT0gHCXHtIyvpOFdJyfEYx6UoTSDxhOJUMxMl9NLOj7ATxVp9bMS?=
 =?us-ascii?Q?o+AsGSs6j0gGuDB42HTb90iInpFB147AUvfCZIu3xOYgk99op/z152MfC25q?=
 =?us-ascii?Q?9MBLwvPdLrOVzaFXjMSYLs7/bgDInDMfGKMSl4twzi3+hp0VInHxmLPd5n54?=
 =?us-ascii?Q?i8mPZVBRLyaMp1HgrXMVnrRtqvgzQyvh63sGBc26oPZ9wdtAuhG1NMzw15Yg?=
 =?us-ascii?Q?F0orR5/eMsgfxbr0Plh6lSjp5pnae3Cflht65UjssL2lFOmEO6skzXLNLUXz?=
 =?us-ascii?Q?P2yR6n499ZVc6fBiD4ekyD6iErklu2nP3Ff/aLC9+q2sXLJZoC1F+j2AJILh?=
 =?us-ascii?Q?zHckWRFz1lhzEnUGpjOA7I0pDN1NgSK/7x7jjVmfKO8n4yhMoCRp1u0DyHC8?=
 =?us-ascii?Q?5+U0cJWbYcxvYAm2uG/NMHjrqRcMfc6KLneguqzt9Mb8s1RzniFQmj1gEZSA?=
 =?us-ascii?Q?w3kMy+WfLQ2SK9t7oecDWUlJEbIUn7FR2C7iflzraXjJUylesCXaC6MHIieH?=
 =?us-ascii?Q?/7xqzMkG4X/aPKXRVbDfb2yXevaPztZrS04CZ/oj73Dy9P7q2SVKtB5y5e5k?=
 =?us-ascii?Q?z+jEEdNzZV0ejv19L9cUYh3OonMsVX161pgls9CHop4PHFGSpO7GlUvvgjJT?=
 =?us-ascii?Q?omq4IETvG8Ug2YILMxquIAOIWL3iIr6UygX1kBGKLbhwX+gEnXLdiWYGa1cJ?=
 =?us-ascii?Q?OCYcRcFJtD/20HCqUFcvTEh9Fp+hokUsebg4pOJ8BN1Y5ycmZ5eQ5QYjRrgu?=
 =?us-ascii?Q?CPWjBp/9EAHwZbeK6SUNNE13JLalOBFqvs9agHUIMv4qbJ9hMk39VZ6N/p8O?=
 =?us-ascii?Q?6c0igpLy80txN/DXHz7DzWALJnECg6l2J+uwc2VbcigxXGQlKMHevcp+rnbc?=
 =?us-ascii?Q?5mifTZMlei63daPG7SNLBLsAycQKGTVhF9CJXS6s7qBgElafGzEpl7bPTLBk?=
 =?us-ascii?Q?mrHFsznTTCAOjRz3VJLdRwL5rDvBdYXqhRoCeqzD/zlzy7KKmunUlR9MVkIZ?=
 =?us-ascii?Q?W2EuL7JFITyE0wQfrslaRgQytCXAoTFyeBg8ltcG4NirgG+1eDwUgBByep8V?=
 =?us-ascii?Q?K5+837vm3Ln+T0VhWuqSvoLSG/Ly4YYWq4b0bsmKlrDT0OE/E5cWCelFNnic?=
 =?us-ascii?Q?qw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9d8b6ec-6db5-4eea-b63a-08ddb3ef88e2
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2025 13:52:33.3894 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uqhOtuKcIsuAzR92GK2IyM8hKDW95a7/RZfaKDmXe5ZFIuTuwu7ohglCwtIorqzuN/e+mfbvRDNeCQmiMABsbw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8038
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

On Wed, Jun 25, 2025 at 03:39:37PM +0300, Jani Nikula wrote:
> Move the {SKL,ICL}_PW_CTL_IDX_TO_PG() macros from intel_display_regs.h
> to intel_display_power_well.c. The mapping from index to PG can be
> hidden there.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../gpu/drm/i915/display/intel_display_power_well.c | 13 +++++++++++++
>  drivers/gpu/drm/i915/display/intel_display_regs.h   | 12 ------------
>  2 files changed, 13 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 5c9ca8141fcc..9d60dfc4939d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -34,6 +34,19 @@
>  #include "vlv_iosf_sb_reg.h"
>  #include "vlv_sideband.h"
>  
> +/*
> + * PG0 is HW controlled, so doesn't have a corresponding power well control knob
> + * SKL_DISP_PW1_IDX..SKL_DISP_PW2_IDX -> PG1..PG2
> + */
> +#define  SKL_PW_CTL_IDX_TO_PG(pw_idx)		\
> +	((pw_idx) - SKL_PW_CTL_IDX_PW_1 + SKL_PG1)
> +/*
> + * PG0 is HW controlled, so doesn't have a corresponding power well control knob
> + * ICL_DISP_PW1_IDX..ICL_DISP_PW4_IDX -> PG1..PG4
> + */
> +#define  ICL_PW_CTL_IDX_TO_PG(pw_idx)		\
> +	((pw_idx) - ICL_PW_CTL_IDX_PW_1 + SKL_PG1)
> +
>  struct i915_power_well_regs {
>  	i915_reg_t bios;
>  	i915_reg_t driver;
> diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h b/drivers/gpu/drm/i915/display/intel_display_regs.h
> index fdac72fcebee..7bd09d981cd2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> @@ -2206,18 +2206,6 @@ enum skl_power_gate {
>  
>  #define SKL_FUSE_STATUS				_MMIO(0x42000)
>  #define  SKL_FUSE_DOWNLOAD_STATUS		(1 << 31)
> -/*
> - * PG0 is HW controlled, so doesn't have a corresponding power well control knob
> - * SKL_DISP_PW1_IDX..SKL_DISP_PW2_IDX -> PG1..PG2
> - */
> -#define  SKL_PW_CTL_IDX_TO_PG(pw_idx)		\
> -	((pw_idx) - SKL_PW_CTL_IDX_PW_1 + SKL_PG1)
> -/*
> - * PG0 is HW controlled, so doesn't have a corresponding power well control knob
> - * ICL_DISP_PW1_IDX..ICL_DISP_PW4_IDX -> PG1..PG4
> - */
> -#define  ICL_PW_CTL_IDX_TO_PG(pw_idx)		\
> -	((pw_idx) - ICL_PW_CTL_IDX_PW_1 + SKL_PG1)
>  #define  SKL_FUSE_PG_DIST_STATUS(pg)		(1 << (27 - (pg)))
>  
>  /* Per-pipe DDI Function Control */
> -- 
> 2.39.5
> 
