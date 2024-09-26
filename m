Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0603A987A29
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 22:46:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DAD910EBD3;
	Thu, 26 Sep 2024 20:46:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lYQXCTNH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A581110E130;
 Thu, 26 Sep 2024 20:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727383560; x=1758919560;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eo8XW3qIoVry0/rJvrNbmKBeTjOVGFRPKcsN8h1oulE=;
 b=lYQXCTNHf9jnY+8xWSOyth8mpe+Sw+gUB0luZTSYmmBSUzbEANQnObhu
 ZZcKhVI0XuY5uD1c6CjU7g05CADz/eqRn8/T+oyelOFds/jcOXB41aehx
 jBayHGs4UH3nOyxDJ+ZwczDWzLdHVEU5Tt6fplwQSgpRtlrTDynYunyX/
 FfTByaZQv00DvqP091G5uWY1aeCA89MLP/z0Uj4CvGuyNalHu8RZi9mA5
 46BV1bM7pyMBpDBKaUu1WyzBLuLLwplERlIs4ZcNRQJqHLsR/qKZJj2LX
 5KjAjDWgwFCKTU/In66z4+qf6xs0bOFZyQ0XG3UE/I0couw5h+KZaeXws A==;
X-CSE-ConnectionGUID: LQyJAJ6+ReKS+fzscd+ffQ==
X-CSE-MsgGUID: N3GX2tQ7S722/NR3k0pWgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26678827"
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="26678827"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 13:45:56 -0700
X-CSE-ConnectionGUID: 4ohDQawxSveCGuUttZCvAg==
X-CSE-MsgGUID: 6SMmD9xbQJWi/b88HI50Eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,156,1725346800"; d="scan'208";a="73083651"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Sep 2024 13:45:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 13:45:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 26 Sep 2024 13:45:53 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 26 Sep 2024 13:45:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 26 Sep 2024 13:45:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wzF1FsHSFDgEo/McNdHeuNeqM21mj73MotnhptRH8IIq5rDzydCEXB3p4DR2lmqR7UcyDLaF4WHwL4CFL5vNqkarcMPKRpAKQH7i1w1Zm8qFFbl6KsPvRwGykjBFmx6Agi5TprUc2+/lT10ZdTnFzTw97nML+qcfJV4hzOSPYgL1/FkgN1Da1jPeYRQs/jvruQXwDEoy9NOAEBd+qZdckWhulDGZ4DO7mnDEa6Z1aWUiWs89SFS9V94dheTou68sT2WuRKpuJsMz+wueHEHm6tij7CuBZxpFrzvNJzCTc/hATzOvhFjB3O/RhkSby7oEXfOrDfNFTTpGrbfDzOk/KQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RAsZqTt9b6oUWY+h3kW5IfG5LIrV3wBqpfkEAT6cYU4=;
 b=yiHZVihrUYw3ShJ/G0ClGy+siDnlEiDpC5Qjk4y0TIslZWB7kl2asMdReFSsyCyXrp6DIUyMhBodhkQrn4hybQ8nl8J7F2cJJJgp/v4tFAlp3XHB+o5Q2BGJQvsP3OtqtpHx9VZEnSc5S6HqjrMT2cVFSIgdPN9vUUiEvAsVKspkI1ptLYwPB+Kdyzh1EP21VNEYHn+eXJ99aTvTcRKg4nWQmMU08BBNUmnawMjNttSIyRP2vcRPk+ikH3YAktIEDL/O+ck82n2oebPN3/Gnq4M1+0VrqSkprRaNnqiaXj1SJJu7IscFCa6g2F0/0xtCkd5DglmjHnCcDuHQY1zuew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SA3PR11MB8002.namprd11.prod.outlook.com (2603:10b6:806:2f6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Thu, 26 Sep
 2024 20:45:51 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Thu, 26 Sep 2024
 20:45:51 +0000
Date: Thu, 26 Sep 2024 16:45:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v2 2/6] drm/i915: use INTEL_WAKEREF_DEF instead of magic
 -1 for intel_wakeref_t
Message-ID: <ZvXH-4IMJxUBooi3@intel.com>
References: <cover.1726680898.git.jani.nikula@intel.com>
 <57e5f1989113be4d63386478d9438cfc35a2a1f7.1726680898.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <57e5f1989113be4d63386478d9438cfc35a2a1f7.1726680898.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0141.namprd04.prod.outlook.com
 (2603:10b6:303:84::26) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SA3PR11MB8002:EE_
X-MS-Office365-Filtering-Correlation-Id: 799dcd8a-ab3f-4e37-1dec-08dcde6c34f6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?epzJ9j6ELsbEy0hCMbd6/rLCfFfB9OBC34aiB7b/Dqka7pKtxXmry3g5IPUI?=
 =?us-ascii?Q?RzfbBD/CQduym29S3BZ4wDRx0FsaBYsSh+cSmr8ayfS0i5zj03pwttVk7jXQ?=
 =?us-ascii?Q?zKpxlMxHQN2bd9PkQlESgl/fg5kEDW0SWdQgKviCl647wPqbV3tGcQViK2nF?=
 =?us-ascii?Q?AcTDDeM5icxbolqkkMD8KUeRu3Z+ySFMZWw/XL8W0rHWIEdBhlc5kWhBgSnS?=
 =?us-ascii?Q?TNc6q+iNTq3VlNlX+vXir8ebg43nmxuKvUrpcwZDdngPvfeqPilnL8i8a4xM?=
 =?us-ascii?Q?dP0mm4ScEv/RbLIiBzT7ReiHcFi2t902DYmJ6cA9Xow3pAThele4X7k5r63J?=
 =?us-ascii?Q?l3oEokzx2yb8GXYxXQT1s4PrlzJ75tA9MNtQ1cxUYDw9Us1XI4zPRP6wCtOi?=
 =?us-ascii?Q?OZf29Pu9FkFEtUT67rQhtzwX3E3DfyKVMOKUfu/b1RFLvWk66+t+J0OYOntd?=
 =?us-ascii?Q?trgYuPaEawfb6/lrBU6/5KbN1kLpsiJZpbNT7P/MbAc/oWW9BXY6l349imtf?=
 =?us-ascii?Q?Qboz7TQ6SOfOB2ItBoqApqY6XgBH6ZWUm4STT5jnrCD/A8AhEXJVGQfOyUGq?=
 =?us-ascii?Q?BxBczw3ST1pUbZoShRT4zesWp2U4/FcvRRvrDIOgVzYxAL+GoIZKnbdKAQZy?=
 =?us-ascii?Q?s0UPxyWm617uzjK1JQz+AWdaU1xuRwYO+bjVGBELtNFnfSgR2l4CJWy6wjZp?=
 =?us-ascii?Q?8wHMSldyxcU049SdOOnPgOkFt2bIaOU2+n29n2BEJU74xvTIbrpGdHd9VlPF?=
 =?us-ascii?Q?YPGUNF7Z99a+6VZj093EEVKix8T7MNxY41EarNLRB3sTBoMVkP1O4KKRz+4j?=
 =?us-ascii?Q?S3GR4l/XDevurRKrkOOFJJ/axk8BL+ETsUC8zUzzkD4WOQetAgqX4gdaZlyX?=
 =?us-ascii?Q?aq2KWiut9VgCQtwRgPL99/eTZLdTD2cphmexcs3Sst1zO8cOPm/7p1Rjlc1C?=
 =?us-ascii?Q?BpCESfr1+5jwILofq/vOAQaUr28Q5tPbF9i4yC9rRdzz/mrBQtmETY4Gi4UI?=
 =?us-ascii?Q?CRyYJ02GXQSJIWLypiJeU3LOV+wrxtAqh8wfGBPu5UCbptXjfbBjMDNV1yfu?=
 =?us-ascii?Q?xq3h97wkimf31c2092DLFJEGJDQDDRkiYKZPZ+8urimvMMIirfZ1TDmALK5g?=
 =?us-ascii?Q?r8Wj+Kn184FO/oeI7nUmJWX3ubwNsiMelDvasRzzq41lAD3/++SXhGNCFkFq?=
 =?us-ascii?Q?EtxR/++B6H65dVkvdvgtn72mjLKltktCuuCOlV9HwBq2M2qwZ/evCbU5ve6G?=
 =?us-ascii?Q?RcEfA87xyNn9cWpAsl37bmpm5cNcM1Fwed4jmIXMAg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OF+YobV6G+4AHUDlRtwvaEK+IY0hP2RHqtXYp+n4zeYYeHH1nkLk+yUFRArA?=
 =?us-ascii?Q?GD/DkDsqi1ZgGwy8lDtKTAVWPer3YR0ClBHjmXldO7g1Q5QOc9qjYdLacHTr?=
 =?us-ascii?Q?yYwd6HmDt7BqLDtAZ5wknlPjHxnIz8m7uc7+L4ljUL+8M4lWtMxLfewNLgPJ?=
 =?us-ascii?Q?t8WsFdvcUyqh5uvI1JvVo0nxOBulFKarV6R5t00s71RGCbzGOYda6U7QTZlA?=
 =?us-ascii?Q?ddW4BF/Cm+iu/LWMnawS1Ik0AZ5MR90qwD4O9wiHKIzLoFHJvNO+7J/szoQu?=
 =?us-ascii?Q?NT1OTN7kufWE0YxFIcw9MPAVLFrHSM4VzjtSkzF0CwQInfvDCzVJQqr1UB+k?=
 =?us-ascii?Q?IuWjCk3C88PomBXwKIWBmfojmcL7krjkVweK1KhfDTV6Hk91TOzcdSIJNIM3?=
 =?us-ascii?Q?vBm0sAA8Ne2bI9ClI52gMfINp40Sgz6FFohQRgxduQaeDFOCYO7EAc8I8vFb?=
 =?us-ascii?Q?PQVjGGczTzm3G5Ujml5BHTv1cr8z77BsSZ9rItuVYL9N6YsJdysSpdfaZzDR?=
 =?us-ascii?Q?sAC0u7HeGPVM0gv09bpmzDVuDMAkP0VYjUQZVGfq3gRXVTABSNO6xQJ2eMUt?=
 =?us-ascii?Q?zZGwgjFzK/gnWC1TiSL9ErB6QekRdheLYrrAzOaLsru68YojJZfMS5ivezvs?=
 =?us-ascii?Q?oCl1yzGFU/Vw6wUNSTP4PNXvJSSmTgNwaX6aGW5h5+W8P7tktKXipOiGFHMk?=
 =?us-ascii?Q?93xEZ27gy5lu+24KIXfE4CYQJe0Qi7kjN8PLKx3wOqAI9ESpirHBTJo/gXUO?=
 =?us-ascii?Q?rj5xlL3/LcG+wPBqucqd9EJ2vGxYnQUdSVlr48e3fbeSKotSbjkyxnmN+oW3?=
 =?us-ascii?Q?voG0R3UG1BIUGTQjxBYC6/J5cSWhTK2ficm2ymfXKVmmjZiHFYuMrUTeP8Ua?=
 =?us-ascii?Q?noSQjtD/ZQAOf0OAO1j0+z7LwV1eCwnSIrePnSluKT2NWJ/o8ETWY0ofSCyg?=
 =?us-ascii?Q?+xpEN7QwVGQHZGGeaEQ+EcOUNArWx5FQyLb9hX4WWOUwuTZpRZNKj13xpak/?=
 =?us-ascii?Q?tQpjP4qYrrie3PRnzw2LqoXg44gOYgzz4GnFkhBpXa9cs1mUjW95Dbjw6z7g?=
 =?us-ascii?Q?6oxZTa2xSMYhpgyRTPc8+eD1NFKFl5QJLIIsCQK8ZXwq9gUsvcIckgSQfPAQ?=
 =?us-ascii?Q?t4VCkaVjfRZT4np2sZm/8p8FypsLD3dsbvZJH6T+IRdvlnef+pFSeZT88Zs7?=
 =?us-ascii?Q?+/1B9DWs1hPx9W4Er8P+Xsj3ZzFlVJknCNmhR1Wp8uy3kg7WPrb2Ro07aDpY?=
 =?us-ascii?Q?ifIaZy35I2ZQauKy4wUhhABySi7IS6nb9OEWMR62etk70My05FrKRpDt1Axw?=
 =?us-ascii?Q?o40fCNhLvyQ6ibEXdBDzWU/IlSy5dALByH0kJ21pXG5Ifm4Z/hcVdJ1VTp8g?=
 =?us-ascii?Q?AabI2mOpnuM40ROQO6PU/V9lPPwmWgIBqB1tItXuxOiRk0E6IySZH6Z+fWT+?=
 =?us-ascii?Q?jaw67pGnkVKfGUQBAg3eNABtR7QrOpg2Ihq/eeMoIA3lcUqXx19EkCnHgO2/?=
 =?us-ascii?Q?Y9Sqli0Dl9xBMLoHzPvh1ycc2F9pX/BsQCkevpbEwoP3M4edIptLdimpaL9j?=
 =?us-ascii?Q?z+tE+R1cGAQO75HOzklY1FDAoHOpLEtt/A19KVIi5jJyrFxPMRsc+PFCr4l7?=
 =?us-ascii?Q?zQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 799dcd8a-ab3f-4e37-1dec-08dcde6c34f6
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Sep 2024 20:45:51.3245 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t1hyZUfsfM0OH12zvOG1Z+VlScBeYcLN2Bg14HnGPIO0nCSx4NNMOTB4sYzXtpIuaSVUf+LAa2RdmnYMecBePA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8002
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

On Wed, Sep 18, 2024 at 08:35:44PM +0300, Jani Nikula wrote:
> A number of places rely on the magic -1 to denote
> INTEL_WAKEREF_DEF. Switch to the macro. Define it for xe as well.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c        | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_power.h        | 4 ++--
>  drivers/gpu/drm/i915/intel_runtime_pm.c                   | 6 +++---
>  drivers/gpu/drm/i915/intel_wakeref.h                      | 2 +-
>  drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h | 7 ++++---
>  drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h    | 2 ++
>  6 files changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index ecabb674644b..40727a22f18b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -895,7 +895,7 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
>  		    !bitmap_subset(mask->bits, power_domain_set->mask.bits, POWER_DOMAIN_NUM));
>  
>  	for_each_power_domain(domain, mask) {
> -		intel_wakeref_t __maybe_unused wf = -1;
> +		intel_wakeref_t __maybe_unused wf = INTEL_WAKEREF_DEF;
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
>  		wf = fetch_and_zero(&power_domain_set->wakerefs[domain]);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index 425452c5a469..3b7c1a0bb1de 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -232,7 +232,7 @@ intel_display_power_put_async(struct drm_i915_private *i915,
>  			      enum intel_display_power_domain domain,
>  			      intel_wakeref_t wakeref)
>  {
> -	__intel_display_power_put_async(i915, domain, -1, -1);
> +	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, -1);
>  }
>  
>  static inline void
> @@ -241,7 +241,7 @@ intel_display_power_put_async_delay(struct drm_i915_private *i915,
>  				    intel_wakeref_t wakeref,
>  				    int delay_ms)
>  {
> -	__intel_display_power_put_async(i915, domain, -1, delay_ms);
> +	__intel_display_power_put_async(i915, domain, INTEL_WAKEREF_DEF, delay_ms);
>  }
>  #endif
>  
> diff --git a/drivers/gpu/drm/i915/intel_runtime_pm.c b/drivers/gpu/drm/i915/intel_runtime_pm.c
> index 2d0647aca964..a21f5a1c89bc 100644
> --- a/drivers/gpu/drm/i915/intel_runtime_pm.c
> +++ b/drivers/gpu/drm/i915/intel_runtime_pm.c
> @@ -66,7 +66,7 @@ static intel_wakeref_t
>  track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
>  {
>  	if (!rpm->available || rpm->no_wakeref_tracking)
> -		return -1;
> +		return INTEL_WAKEREF_DEF;
>  
>  	return intel_ref_tracker_alloc(&rpm->debug);
>  }
> @@ -114,7 +114,7 @@ static void init_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
>  static intel_wakeref_t
>  track_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm)
>  {
> -	return -1;
> +	return INTEL_WAKEREF_DEF;
>  }
>  
>  static void untrack_intel_runtime_pm_wakeref(struct intel_runtime_pm *rpm,
> @@ -336,7 +336,7 @@ intel_runtime_pm_put_raw(struct intel_runtime_pm *rpm, intel_wakeref_t wref)
>   */
>  void intel_runtime_pm_put_unchecked(struct intel_runtime_pm *rpm)
>  {
> -	__intel_runtime_pm_put(rpm, -1, true);
> +	__intel_runtime_pm_put(rpm, INTEL_WAKEREF_DEF, true);
>  }
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> diff --git a/drivers/gpu/drm/i915/intel_wakeref.h b/drivers/gpu/drm/i915/intel_wakeref.h
> index 68aa3be48251..3944587a5e78 100644
> --- a/drivers/gpu/drm/i915/intel_wakeref.h
> +++ b/drivers/gpu/drm/i915/intel_wakeref.h
> @@ -314,7 +314,7 @@ static inline void intel_wakeref_untrack(struct intel_wakeref *wf,
>  
>  static inline intel_wakeref_t intel_wakeref_track(struct intel_wakeref *wf)
>  {
> -	return -1;
> +	return INTEL_WAKEREF_DEF;
>  }
>  
>  static inline void intel_wakeref_untrack(struct intel_wakeref *wf,
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> index 8c7b315aa8ac..380d25428bdb 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_runtime_pm.h
> @@ -24,14 +24,14 @@ static inline intel_wakeref_t intel_runtime_pm_get(struct xe_runtime_pm *pm)
>  {
>  	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
>  
> -	return xe_pm_runtime_resume_and_get(xe);
> +	return xe_pm_runtime_resume_and_get(xe) ? INTEL_WAKEREF_DEF : 0;
>  }
>  
>  static inline intel_wakeref_t intel_runtime_pm_get_if_in_use(struct xe_runtime_pm *pm)
>  {
>  	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
>  
> -	return xe_pm_runtime_get_if_in_use(xe);
> +	return xe_pm_runtime_get_if_in_use(xe) ? INTEL_WAKEREF_DEF : 0;
>  }
>  
>  static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm *pm)
> @@ -39,7 +39,8 @@ static inline intel_wakeref_t intel_runtime_pm_get_noresume(struct xe_runtime_pm
>  	struct xe_device *xe = container_of(pm, struct xe_device, runtime_pm);
>  
>  	xe_pm_runtime_get_noresume(xe);
> -	return true;
> +
> +	return INTEL_WAKEREF_DEF;

oh! for some reason I thought we were redefining the intel_wakeref_t to bool
here in Xe...

>  }
>  
>  static inline void intel_runtime_pm_put_unchecked(struct xe_runtime_pm *pm)
> diff --git a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> index ecb1c0707706..5c139ba144a6 100644
> --- a/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> +++ b/drivers/gpu/drm/xe/compat-i915-headers/intel_wakeref.h
> @@ -6,3 +6,5 @@
>  #include <linux/types.h>
>  
>  typedef unsigned long intel_wakeref_t;

but apparently not, but we were lucky!

this definition brings more clarity indeed.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> +
> +#define INTEL_WAKEREF_DEF ((intel_wakeref_t)(-1))
> -- 
> 2.39.2
> 
