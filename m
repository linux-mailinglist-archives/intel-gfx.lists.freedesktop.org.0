Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67AEBAC5A7F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 May 2025 21:15:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6285C10E515;
	Tue, 27 May 2025 19:15:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="apZFfPex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15A0E10E00C;
 Tue, 27 May 2025 19:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748373303; x=1779909303;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=SdwmzhVUtO88gG4VW54Fxy5mScJujZas0x/VZSdh8gA=;
 b=apZFfPexwGxr1nq/gtQqUYi+Wc/eVcgD8yW5mFjOlCvR/SgkMlj3Rrvq
 oPR0FhPsSXMqPm2brMrjxleyf8R6+nSIe70P56oMfbGo5wRSxaUrUUb5Y
 eHjfxCYq0IkvVJ0cW3qSianad26kiJbjBDpSG3pLk3/v++QHJkVQEVofI
 9AlNGLBGZgEfpe0OUtQ4niSlxetVNbw26fTXYWq0y1jcKIpuvg5s9nQf9
 RkAX/+gpkFUA9m5XAvU24yQlbG3e413i1NOuI9FBNuFULcaTI58kMPZVA
 MKP9bkxJ3M1eaGNAkjtoICY3Ar0Aux0tnX0eGDtfc/RhfaFnxUM4v12CY w==;
X-CSE-ConnectionGUID: 1rd4UO7IR86kxC3KGlu+KA==
X-CSE-MsgGUID: a37CPG/tTvK3xDGSj+nhFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11446"; a="50540767"
X-IronPort-AV: E=Sophos;i="6.15,319,1739865600"; d="scan'208";a="50540767"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 12:15:02 -0700
X-CSE-ConnectionGUID: 6+1rhNM1Q1WLekaKZokxqA==
X-CSE-MsgGUID: uKrICCGAS5Kn7EbMMxQ0nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,319,1739865600"; d="scan'208";a="147702595"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2025 12:15:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 27 May 2025 12:15:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 27 May 2025 12:15:01 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (40.107.223.79)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Tue, 27 May 2025 12:15:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rqSOXQ5Q+auQqhc602HmY1jh7gHxHh42evdtFofO7mpmYKmBC35VGA0nkpUzqk/LrcO+Rvm8fy8/cbRCSzN3xW35GyOZ+lj1OTgx98IvsTUoZGsHL6QXi8v6EG81k5JkiyViNrxzPPnha4rtQ1ptm+UA3uU1vIcdi1/LZTm8pcsqOHkUnOgUBkcDow9bT70XvpTNZcBkepPoGEJPe7TxHWEjn2a2x9DUwLdOCpMbRZIv1tSDgXTGgBbPP07DvKfIBKaun6ay0oRtGo/keTr6O232EnsMnRjw6zQSatAy0fMFtzZOuqik0qJu+R2jM8mNpbX/URSBQC3cA0zt3CWm1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b3AUn1RuK7/77fqbO+KRhOq/NvijURra4r5Iz3pfois=;
 b=ZoU3aK9wGmhdIW14F2et04Vm5a9JI/zVN/wun/ldeEIkRgxPLNROh7q5TO2PIL5TqvYVb5uNPBHMtJX2b9+uH/lyB2jazfqM1W8iufYWrZaRJ9MN1g6msNiWHEDgKoRJwB+CmVdMoQpI23g8/OcoqcKdEtpOD/CqX6xAsPtT8L2zyNVEb1hISyAsmB0qzPkCDrvTBd8Ps8jiKbZknchVEMMtqxPBFhYiRZOG5nvjT+6b79HmsZVbTfZAYMDDbqDA/1j8YHb4VrQgN6h5Rd1SXCW5kbTp8qfkVeBDid0R9QTlCdSZHbdjiovH/aO/rQGYgfmPgP2VSbdJ9cTtZjtaNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by PH7PR11MB8011.namprd11.prod.outlook.com (2603:10b6:510:24a::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.27; Tue, 27 May
 2025 19:14:45 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%7]) with mapi id 15.20.8769.022; Tue, 27 May 2025
 19:14:45 +0000
Date: Tue, 27 May 2025 15:14:42 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: add intel_display_device_present()
Message-ID: <aDYPImZiZ7hpDWeG@intel.com>
References: <20250527114645.3683025-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250527114645.3683025-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0228.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::23) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|PH7PR11MB8011:EE_
X-MS-Office365-Filtering-Correlation-Id: 48effb1d-40c9-4f6a-bcbc-08dd9d52bdc1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?5TbQ8OdWbpOW/akWBfKX4x81UYMR7r/slaoWBcbKZtwHETLTzVIcDhfXyYTV?=
 =?us-ascii?Q?hVne6WsSlV4HXpfnDJa3C6RAaHMu6UMG57ONwegR3AQCbTppPoRh7bzDGcwQ?=
 =?us-ascii?Q?XH13D0VschAvmkPyaJPHO79jBddiZnUWOuJEIM8MmvEo+6CDYqBcewaCIpsF?=
 =?us-ascii?Q?C4ThwoeQUAL8hjfYRZx72b1+/ie09/eXK7NmXBIa1uulDWzhH5OBNmXhh36k?=
 =?us-ascii?Q?d6/tAbYsOpFXsz0IHdmJ+DnRSpHbJqtp2ONErrIPpi7fk6VlNNc2DlED+shh?=
 =?us-ascii?Q?nsWdfbyZwcNJGCsL0V4FZVLhphLTzDKDBRz6x9kMCp6Rc+XPAStT8Nzwm6k0?=
 =?us-ascii?Q?pwXbUSZQ60VkHrh7l9zIFtNUwNjaG/TnOopE4EHSD/UaM44AzC+RO5tcv0X/?=
 =?us-ascii?Q?1zB6HFemisRDCi9AFAwPICbojL8EdkivSx90MaiM/csW5gFDAM2+9d+I5/v8?=
 =?us-ascii?Q?mKgVj1lVhhqtRVPU5URgcy+jw5c4wzP+GzmANfM71PU/X0qE8wIZlG8a4aZC?=
 =?us-ascii?Q?yF4VIt1hYMO1Oou7BZ00EQtLXf/IKdeafSipXydD6mPLTBtwW8zbaIStvohj?=
 =?us-ascii?Q?3GZ3kX9T99fUitNCKBH0D6Y5+smjdGorfeK+Wh5+XfqyD4s0UHdS5NNNni1A?=
 =?us-ascii?Q?LUAIjpglB66rQ6/XwDg7uQA27j8gPn1uOAa8RVxxX9xvqaXdXTmmY/2VASTY?=
 =?us-ascii?Q?NC02iA2p0L8hbMkF6xLhELg0LjG5WeZ74KCE2ojZUnhmgd1DulU1otJIRONY?=
 =?us-ascii?Q?5atqLMbm5ajyfR/Scs8DZGggUfcsHQXt7LteBX+S84hdMcfGTmRBE2ZQt4D/?=
 =?us-ascii?Q?NrM1qnlb2+yfFlhA3S1C5dKfyZqDcHvyISNbl01hUkGyHV0juwJFy90qI14X?=
 =?us-ascii?Q?fq9uIO79kN+SH6S1nAToM1Ao2ZFskQurq/gwO/bW0Lnge0tetrITqsciPr0G?=
 =?us-ascii?Q?m2JlaVrGjKM8QP0vBCQRPFoN3Sxp3qEMBUqFE3J5YIaSPajq+CYEhIi5Sgbf?=
 =?us-ascii?Q?BfmULsF31Tt8T2IFtSs6K+BxcgHXzPVxJvKXs7+KidNMqwg3BE2qt6tH5bF4?=
 =?us-ascii?Q?FHj86oONCYHWhkk+QnoSZfWZdb5PUGdCKV5G8H2OtdyIZdGiY6d2/XWuB0ip?=
 =?us-ascii?Q?4PtvqzXP2ZuGy26QkjZy07lOT/GBU7N5uzrlRW+vYzZ4e8U7IMKSHi4QQHpM?=
 =?us-ascii?Q?qJnywEdWa5aTs0fQG4eQ+KLSJLALe8tY/7TzPy3FsXKH7m68TlqAZbMc79qe?=
 =?us-ascii?Q?Or15NQWb21uejh/TQGIVZ/ZizmpeP9kQdkWFkw1T7km0FGih24gyhzODz0C6?=
 =?us-ascii?Q?LNhr3vJ2EAPH7Kdy9B0hcklNnHQ2ZXk+Cw7oAAVlDdJUyQEVlAlBh1tPrkh5?=
 =?us-ascii?Q?L2ky7Sooy7UIbdlXBpfdRyigddoxovSQ8Fyq119ExQyR/Xu0sgSOvzUVpSzZ?=
 =?us-ascii?Q?TImkhRnAS1Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DSP4nyLqq0nW/BWxsyWZ4Ab66WGeW6yeAGNPQLclxCij7E2iCyF2JeiZs5fW?=
 =?us-ascii?Q?36JWA0WHGQn5T85xEWLbB584Ft1P8O6JVeN2EH0odFANFpK9bbQTQfdYvuQC?=
 =?us-ascii?Q?ByLrHOjFjyg4aovdy5tlWc/tqKKlNu55ZPJfHEHKhBXNpSXKmBQ6+ltsbvuq?=
 =?us-ascii?Q?d+xPuTp3bnyfem2UAFrJrj62iXn3wMYe1oOAcXlsjSTwSxCcB7jPalAQtZio?=
 =?us-ascii?Q?Or9UZ+3qL9ddeD3zh69iob5f3FTwweVCVQOZjSejQZmgRUoRu0kEhnI3mILq?=
 =?us-ascii?Q?YN+/CdjfZR630htsjvAJvNHH5zCjHxcdsSON7d2BB79T1nnzHF1n9Ac1LIzw?=
 =?us-ascii?Q?sNMmd3U5mj3XhbId5wBp8UDnmsyU0kKN0UytABvjqJZ9JFPXu9mIVCZg1j5A?=
 =?us-ascii?Q?cN7EhIp6QVAdOj31DxYfh6+Sj5jGwZroCa90Ab5HrdBf6eqjsdL2OaIhokFb?=
 =?us-ascii?Q?A19qc6J4uhbpGMaZdZh50/uuyJ3FsBzGiS6Av7bhnUMmZZ5W+9FeZaGQVXJr?=
 =?us-ascii?Q?zoO4JOD7/C7S+7tYzGmRSy7zrtSX2TxnKEsKC0QnKn7qNVrGFjXXEIZciN/Z?=
 =?us-ascii?Q?8QOCTJ+iWTI64m14TEhpqSyXog5JKzoVLuSoYJZAt2jze9uWLithOR5zWili?=
 =?us-ascii?Q?MfS5fH2QwhdR8W+/Mbnissxz+nBe1Bmn5MNAzxqO4cbZYvA33xJLkxttG1lJ?=
 =?us-ascii?Q?k1AuC4zgHo5fANKjkzSM6XFi+AYjVVBEpILlF/AdnDrf2lqRIIfPR1Uuw1Fo?=
 =?us-ascii?Q?TSGZIt4PKqLSeK39N5jwkmQ0pH1oFVhQ4h1wXrhtBEzO+5TlrGxRqQE2jkDV?=
 =?us-ascii?Q?4hNANpDTxlcm0xD8CnY8KrgjuHzij7MKG3B4QsobLIwxabYLQfxPkQ25pW5P?=
 =?us-ascii?Q?9vALc9zStfCetV23w7xKEXpBTIk6AKJKy+M5CuBwSB8G0SHtY8kfr26qVF7A?=
 =?us-ascii?Q?HorhlFk4aJ5RUhVrbmPOXxdVk+RfXozzLCiGNG5sPTPVRMzfupijS0qV1y1R?=
 =?us-ascii?Q?jBGb+dEUeFQ3yji73LBrzoKXz87yuPWkj9R7PowIgu3sA4iCZtbgK9JED+Qn?=
 =?us-ascii?Q?Kjly2fQYMtGIw2snMyCGa9I99WWspYF7ba4i+5DIEdl3xx/RI5YJKsqHRP5N?=
 =?us-ascii?Q?MxBjtikZs424UmrWlB3blQMbHprkTLT0jTwCmiPyC3eDj7vgVaYdb+Mksqvp?=
 =?us-ascii?Q?H4qqFO04cHn8Y1e7G64ZEmehDgBJxK1DlldlQGnAECsY2d54K3TEcITTEM5M?=
 =?us-ascii?Q?KLmUcDGZICJpxbbJ8OjHV5gIegRIpfbPPitmhu/bL48fkime4MfthO6YTuDk?=
 =?us-ascii?Q?3KCpb2T/ACu50TvRgxgPhZ4M8BLPygOzXzIS28cmohApJp/wbxnhMI/8u/ty?=
 =?us-ascii?Q?HDeYf/m5yG9CRiZkQM8m2t5c1fyLbSJYMekaWQi0Z3PZXrFeOx5tVePb8ZRu?=
 =?us-ascii?Q?kjjXRKVwcRBJJ5wmlUK6/XBdXL+QbTFQMCLi19z+fvHCst3hmmjY5AblyVy3?=
 =?us-ascii?Q?ZuX8k2XYrUdMD2iGoUp1ggfzTSmdzP8al+hYE8IQyMY8IYEG/bUgK4LMaoyW?=
 =?us-ascii?Q?r4TgoKd1X0mfk/AhcD6tnb3V1Pdcn+r8Ch9Adb/+?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48effb1d-40c9-4f6a-bcbc-08dd9d52bdc1
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2025 19:14:45.5660 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kSUubs9UtjWYfDIRT6u5gOCH450nz5+Lwi053YGnj4nZ6x/I23nGvcjRC6/8VHUqMDX/bcQhJ8KSxEyT/Y2nsw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8011
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

On Tue, May 27, 2025 at 02:46:45PM +0300, Jani Nikula wrote:
> Add a proper function for display && HAS_DISPLAY(display) to hide direct
> struct intel_display access from a number of places outside of display.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_device.c   |  5 +++
>  .../drm/i915/display/intel_display_device.h   |  1 +
>  .../i915/gem/selftests/i915_gem_client_blt.c  |  4 +--
>  drivers/gpu/drm/i915/i915_driver.c            | 17 +++++-----
>  drivers/gpu/drm/i915/i915_switcheroo.c        |  7 ++--
>  drivers/gpu/drm/i915/soc/intel_dram.c         |  3 +-
>  drivers/gpu/drm/xe/display/xe_display.c       | 33 ++++++++-----------
>  7 files changed, 36 insertions(+), 34 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 1d8c2036d967..765243e3e22d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -1929,6 +1929,11 @@ void intel_display_device_info_print(const struct intel_display_device_info *inf
>  	drm_printf(p, "rawclk rate: %u kHz\n", runtime->rawclk_freq);
>  }
>  
> +bool intel_display_device_present(struct intel_display *display)
> +{
> +	return display && HAS_DISPLAY(display);
> +}
> +
>  /*
>   * Assuming the device has display hardware, should it be enabled?
>   *
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 0ac5484c0043..f676aa9ecdf8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -308,6 +308,7 @@ struct intel_display_device_info {
>  	} color;
>  };
>  
> +bool intel_display_device_present(struct intel_display *display);
>  bool intel_display_device_enabled(struct intel_display *display);
>  struct intel_display *intel_display_device_probe(struct pci_dev *pdev);
>  void intel_display_device_remove(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> index 86d9d2fcb6a6..4fa5caa1ec6d 100644
> --- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> +++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_client_blt.c
> @@ -5,7 +5,7 @@
>  
>  #include "i915_selftest.h"
>  
> -#include "display/intel_display_core.h"
> +#include "display/intel_display_device.h"
>  #include "gt/intel_context.h"
>  #include "gt/intel_engine_regs.h"
>  #include "gt/intel_engine_user.h"
> @@ -121,7 +121,7 @@ static bool fastblit_supports_x_tiling(const struct drm_i915_private *i915)
>  	if (GRAPHICS_VER_FULL(i915) < IP_VER(12, 55))
>  		return false;
>  
> -	return HAS_DISPLAY(i915);
> +	return intel_display_device_present(i915->display);
>  }
>  
>  static bool fast_blit_ok(const struct blit_buffer *buf)
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 3b0bda74697d..937495eb5690 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -51,13 +51,14 @@
>  #include "display/intel_bw.h"
>  #include "display/intel_cdclk.h"
>  #include "display/intel_crtc.h"
> -#include "display/intel_display_core.h"
> +#include "display/intel_display_device.h"
>  #include "display/intel_display_driver.h"
>  #include "display/intel_dmc.h"
>  #include "display/intel_dp.h"
>  #include "display/intel_dpt.h"
>  #include "display/intel_encoder.h"
>  #include "display/intel_fbdev.h"
> +#include "display/intel_gmbus.h"
>  #include "display/intel_hotplug.h"
>  #include "display/intel_opregion.h"
>  #include "display/intel_overlay.h"
> @@ -975,7 +976,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	intel_power_domains_disable(display);
>  
>  	drm_client_dev_suspend(&i915->drm, false);
> -	if (HAS_DISPLAY(i915)) {
> +	if (intel_display_device_present(i915->display)) {
>  		drm_kms_helper_poll_disable(&i915->drm);
>  		intel_display_driver_disable_user_access(display);
>  
> @@ -987,7 +988,7 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
>  	intel_irq_suspend(i915);
>  	intel_hpd_cancel_work(display);
>  
> -	if (HAS_DISPLAY(i915))
> +	if (intel_display_device_present(i915->display))
>  		intel_display_driver_suspend_access(display);
>  
>  	intel_encoder_suspend_all(display);
> @@ -1058,7 +1059,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	 * properly. */
>  	intel_power_domains_disable(display);
>  	drm_client_dev_suspend(dev, false);
> -	if (HAS_DISPLAY(dev_priv)) {
> +	if (intel_display_device_present(dev_priv->display)) {
>  		drm_kms_helper_poll_disable(dev);
>  		intel_display_driver_disable_user_access(display);
>  	}
> @@ -1070,7 +1071,7 @@ static int i915_drm_suspend(struct drm_device *dev)
>  	intel_irq_suspend(dev_priv);
>  	intel_hpd_cancel_work(display);
>  
> -	if (HAS_DISPLAY(dev_priv))
> +	if (intel_display_device_present(dev_priv->display))
>  		intel_display_driver_suspend_access(display);
>  
>  	intel_encoder_suspend_all(display);
> @@ -1217,7 +1218,7 @@ static int i915_drm_resume(struct drm_device *dev)
>  	 */
>  	intel_irq_resume(dev_priv);
>  
> -	if (HAS_DISPLAY(dev_priv))
> +	if (intel_display_device_present(dev_priv->display))
>  		drm_mode_config_reset(dev);
>  
>  	i915_gem_resume(dev_priv);
> @@ -1226,14 +1227,14 @@ static int i915_drm_resume(struct drm_device *dev)
>  
>  	intel_clock_gating_init(dev_priv);
>  
> -	if (HAS_DISPLAY(dev_priv))
> +	if (intel_display_device_present(dev_priv->display))
>  		intel_display_driver_resume_access(display);
>  
>  	intel_hpd_init(display);
>  
>  	intel_display_driver_resume(display);
>  
> -	if (HAS_DISPLAY(dev_priv)) {
> +	if (intel_display_device_present(dev_priv->display)) {
>  		intel_display_driver_enable_user_access(display);
>  		drm_kms_helper_poll_enable(dev);
>  	}
> diff --git a/drivers/gpu/drm/i915/i915_switcheroo.c b/drivers/gpu/drm/i915/i915_switcheroo.c
> index 4c02a04be681..431a8559e489 100644
> --- a/drivers/gpu/drm/i915/i915_switcheroo.c
> +++ b/drivers/gpu/drm/i915/i915_switcheroo.c
> @@ -5,7 +5,7 @@
>  
>  #include <linux/vga_switcheroo.h>
>  
> -#include "display/intel_display_core.h"
> +#include "display/intel_display_device.h"
>  
>  #include "i915_driver.h"
>  #include "i915_drv.h"
> @@ -21,7 +21,7 @@ static void i915_switcheroo_set_state(struct pci_dev *pdev,
>  		dev_err(&pdev->dev, "DRM not initialized, aborting switch.\n");
>  		return;
>  	}
> -	if (!HAS_DISPLAY(i915)) {
> +	if (!intel_display_device_present(i915->display)) {
>  		dev_err(&pdev->dev, "Device state not initialized, aborting switch.\n");
>  		return;
>  	}
> @@ -50,7 +50,8 @@ static bool i915_switcheroo_can_switch(struct pci_dev *pdev)
>  	 * locking inversion with the driver load path. And the access here is
>  	 * completely racy anyway. So don't bother with locking for now.
>  	 */
> -	return i915 && HAS_DISPLAY(i915) && atomic_read(&i915->drm.open_count) == 0;
> +	return i915 && intel_display_device_present(i915->display) &&
> +		atomic_read(&i915->drm.open_count) == 0;
>  }
>  
>  static const struct vga_switcheroo_client_ops i915_switcheroo_ops = {
> diff --git a/drivers/gpu/drm/i915/soc/intel_dram.c b/drivers/gpu/drm/i915/soc/intel_dram.c
> index 9f806ce0eb9e..ecfa5347ffd6 100644
> --- a/drivers/gpu/drm/i915/soc/intel_dram.c
> +++ b/drivers/gpu/drm/i915/soc/intel_dram.c
> @@ -716,7 +716,8 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  	detect_fsb_freq(i915);
>  	detect_mem_freq(i915);
>  
> -	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) || !HAS_DISPLAY(i915))
> +	if (GRAPHICS_VER(i915) < 9 || IS_DG2(i915) ||
> +	    !intel_display_device_present(i915->display))
>  		return;
>  
>  	/*
> diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
> index 3f92bf51813e..142e2065fce8 100644
> --- a/drivers/gpu/drm/xe/display/xe_display.c
> +++ b/drivers/gpu/drm/xe/display/xe_display.c
> @@ -20,7 +20,7 @@
>  #include "intel_audio.h"
>  #include "intel_bw.h"
>  #include "intel_display.h"
> -#include "intel_display_core.h"
> +#include "intel_display_device.h"
>  #include "intel_display_driver.h"
>  #include "intel_display_irq.h"
>  #include "intel_display_types.h"
> @@ -37,13 +37,6 @@
>  
>  /* Xe device functions */
>  
> -static bool has_display(struct xe_device *xe)
> -{
> -	struct intel_display *display = xe->display;
> -
> -	return HAS_DISPLAY(display);
> -}
> -
>  /**
>   * xe_display_driver_probe_defer - Detect if we need to wait for other drivers
>   *				   early on
> @@ -287,7 +280,7 @@ static void xe_display_enable_d3cold(struct xe_device *xe)
>  
>  	intel_dmc_suspend(display);
>  
> -	if (has_display(xe))
> +	if (intel_display_device_present(display))
>  		intel_hpd_poll_enable(display);
>  }
>  
> @@ -300,14 +293,14 @@ static void xe_display_disable_d3cold(struct xe_device *xe)
>  
>  	intel_dmc_resume(display);
>  
> -	if (has_display(xe))
> +	if (intel_display_device_present(display))
>  		drm_mode_config_reset(&xe->drm);
>  
>  	intel_display_driver_init_hw(display);
>  
>  	intel_hpd_init(display);
>  
> -	if (has_display(xe))
> +	if (intel_display_device_present(display))
>  		intel_hpd_poll_disable(display);
>  
>  	intel_opregion_resume(display);
> @@ -330,7 +323,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  	intel_power_domains_disable(display);
>  	drm_client_dev_suspend(&xe->drm, false);
>  
> -	if (has_display(xe)) {
> +	if (intel_display_device_present(display)) {
>  		drm_kms_helper_poll_disable(&xe->drm);
>  		intel_display_driver_disable_user_access(display);
>  		intel_display_driver_suspend(display);
> @@ -340,7 +333,7 @@ void xe_display_pm_suspend(struct xe_device *xe)
>  
>  	intel_hpd_cancel_work(display);
>  
> -	if (has_display(xe)) {
> +	if (intel_display_device_present(display)) {
>  		intel_display_driver_suspend_access(display);
>  		intel_encoder_suspend_all(display);
>  	}
> @@ -360,7 +353,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>  	intel_power_domains_disable(display);
>  	drm_client_dev_suspend(&xe->drm, false);
>  
> -	if (has_display(xe)) {
> +	if (intel_display_device_present(display)) {
>  		drm_kms_helper_poll_disable(&xe->drm);
>  		intel_display_driver_disable_user_access(display);
>  		intel_display_driver_suspend(display);
> @@ -370,7 +363,7 @@ void xe_display_pm_shutdown(struct xe_device *xe)
>  	intel_dp_mst_suspend(display);
>  	intel_hpd_cancel_work(display);
>  
> -	if (has_display(xe))
> +	if (intel_display_device_present(display))
>  		intel_display_driver_suspend_access(display);
>  
>  	intel_encoder_suspend_all(display);
> @@ -459,23 +452,23 @@ void xe_display_pm_resume(struct xe_device *xe)
>  
>  	intel_dmc_resume(display);
>  
> -	if (has_display(xe))
> +	if (intel_display_device_present(display))
>  		drm_mode_config_reset(&xe->drm);

It doesn't matter how we call it, has_display, display_device_present,
I still have a concern:

why would we runt intel_display_driver_init_hw like below if we don't
have display or if display_device is not present?
Where is the line traced between what to call and what to not call?

Any way to move decisions upper level or more generalized?

Anyway, the helper function itself is better than the double usage
that we currently have, so

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

>  
>  	intel_display_driver_init_hw(display);
>  
> -	if (has_display(xe))
> +	if (intel_display_device_present(display))
>  		intel_display_driver_resume_access(display);
>  
>  	intel_hpd_init(display);
>  
> -	if (has_display(xe)) {
> +	if (intel_display_device_present(display)) {
>  		intel_display_driver_resume(display);
>  		drm_kms_helper_poll_enable(&xe->drm);
>  		intel_display_driver_enable_user_access(display);
>  	}
>  
> -	if (has_display(xe))
> +	if (intel_display_device_present(display))
>  		intel_hpd_poll_disable(display);
>  
>  	intel_opregion_resume(display);
> @@ -540,7 +533,7 @@ int xe_display_probe(struct xe_device *xe)
>  
>  	xe->display = display;
>  
> -	if (has_display(xe))
> +	if (intel_display_device_present(display))
>  		return 0;
>  
>  no_display:
> -- 
> 2.39.5
> 
