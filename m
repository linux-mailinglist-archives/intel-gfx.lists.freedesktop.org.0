Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4730F8FF0CE
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:37:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE45210E990;
	Thu,  6 Jun 2024 15:37:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GIXpRDhl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2547F10E16E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:37:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688267; x=1749224267;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=lqvhl9ldzWyma60UkGKQvqoW2fqYW+N4868w/UqckSY=;
 b=GIXpRDhlounDuuzDouqb3eBaYWH8hMMTmIscqkx79D0s+NeH80F3MzY1
 lqtAFNpC+mVTQ2D7D8J4PUHLH0L0DryQOepa1WvCv1RSXjFnc8lipd7De
 M+R9j/QeciHNWypSogP4MGPcL4AFFq5vB87J2zR8lhy6w+HluJY/kmTZi
 6teOLNt/zrh+yshKB2/1N3xradxtQTd7wwOkcd0mQriemyx2oDjCIuG70
 xEqT4lon0C9H9r+I+ViKNuKZpvLmLhwwSfzIMKPsukQD238kTytL0v+SM
 fA1AA1AMB7P/WzPA2d9WZsmE3nv2gZDnslfj71BF+QtVIS8pfCwCA0seR A==;
X-CSE-ConnectionGUID: k313jeeMRX6scmB736OLAQ==
X-CSE-MsgGUID: Lj64zJ9tRgehdcJk+jti2g==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="31862736"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="31862736"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:37:43 -0700
X-CSE-ConnectionGUID: VJb+HVk7RIyOzhn7+EXhgw==
X-CSE-MsgGUID: OaWz8329Ti29g5DcOosgeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="43104342"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:37:43 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:42 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:42 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:37:42 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:37:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EMfEhOJBaY5gIEn7/29QsWAn0WxEzbhHEHElYDnYdiTM4Yw+6oaiCAgzTT5BJaVgqaXFe5tNKueR7ocTmVEs3yQNKnd4q15hytWygOrd7KTGJtwinFyvcH2mWcxqkB4sZkk79gsdme+HRCfx1LKmBwLJZAC2i4wyMc6PVXyJz7JtsozwjEwYCrU5C1j705hw6Yk2xYZaLyasM8ct0o6irgkvVmT44W9Ygr858+Man/lv6PyIxiMLAoCC79zBirB15LkaVzasR44XesiTJ28+g4+pLlT+uCvAA9PDU2knRCBx91q0dwIvBlC3CXiytVsW+PEcMiTj+KkYZ8BU7rVRiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=m8G8QBBgvHyGJ1MW5p5UQPUm0G5hvWvHHcSsoPMvxaY=;
 b=WT8kxdxhfXxN4vpYhqsdiIw7lC3f5hl2hLuMvS2bNsEKwfti8kSnKKAAPpXrJt1/7koEdfdISjW7gljwPzG2QdaKgZFhTUc4QGshAGg0PwJDa28SK+pDH9GlplV87BDaBk8ihSwG/e6yG32W0HaYdF1MKr6RLrAVVj2rK5GWkLMO6VXdbpGs3Vq3EvbExGR5leZEx760uSW+EBU6eLpcEjJ8H8qaTjpluX7Ax+a2hH4bnBiP1TBJARo7sSoArOCXvROw/Gf6X4hFnuI5Bij3W5RFqujY6hJKyFWkXjjpDyfN+DIlAite+jtLuX6MkCZ77dMTK5CkgUJq6cUSb55wPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 15:37:38 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:37:38 +0000
Date: Thu, 6 Jun 2024 11:37:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 11/65] drm/i915: pass dev_priv explicitly to PIPESRC
Message-ID: <ZmHXv1wv2VQYIzAe@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <ac1959b7038d6fedb4777dcf2b961de901fb8880.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ac1959b7038d6fedb4777dcf2b961de901fb8880.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR05CA0049.namprd05.prod.outlook.com
 (2603:10b6:a03:33f::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: f62261f7-9c8c-4fbe-ea38-08dc863e9844
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?8xDQqWJROZbfBNbiCXsj6fq+oSn+XmUvqjRhPJR3uYymE1YQGBxNKgNYoUSz?=
 =?us-ascii?Q?l6diMgxUzPp81bkCuVkMNCZmf0n3UKf318tb5c6QSoIJFpKBEE0gc5cs4UxF?=
 =?us-ascii?Q?JYZd2BXCWUD3daeAgRM0ZCWrmIRuE3ms+UrmVFmR03hxFsMoynAPwtIsRmnz?=
 =?us-ascii?Q?gPAp3XXLptgApgTSQJur6ipji7/G0RYRQseq61Rh8GX0WEiZmbsPPFQCQdLx?=
 =?us-ascii?Q?L1cVi0TVnfGUPFflyu2jdKWWP9yQ7jWCurPX+eGYtg+ltWSTovyQmM7AxuNg?=
 =?us-ascii?Q?nwhlp3tWJpbaslkwq5IjmmuxEFlJ1P3+w7lNvtBKEFsXaEtmB2xehnoaAABe?=
 =?us-ascii?Q?wHlZVVOmwh4WH/V+6yKAM0jehDkS6G2L1cZMj9sTH1IH6NMf7uFxC1CNc6y2?=
 =?us-ascii?Q?6mgE6anIjs6gIB8Ld/kRROCyjSU+H8g6ALXujiYJR8XTZZDxS3vBYNhzDoc3?=
 =?us-ascii?Q?cX05//gzTKtiyCmdPEVKtp7kyBpGIsha3N+C99Pthf0+O6VPcBcbQTGP2a9k?=
 =?us-ascii?Q?hFfE9UZaqxq5FOXWmqMGb7prZwBdaX7MLT/nnow2H+72e/feMKzC+Zv24f78?=
 =?us-ascii?Q?gm/sS1OnXz1e+zhSJs8DZpclQ5lO7GUT4tn4abaCZzG1JuWCR1EuwM0fO0tb?=
 =?us-ascii?Q?not52/nq429ibyarYc0zuANvUqVmzbTH8lem5k6vjjXYp08dxkLmf3PzcD82?=
 =?us-ascii?Q?7NG4vAuDklqtFeBzPRbAKrpIVcSq04z5Y5xn+ojYiVMlzwj7MDO6SjRYZOPv?=
 =?us-ascii?Q?JqYYFRTj/rj11+kj29sIerUNzJ+8JGx6CgUjBHhGF/S/2GPNbwr3PVRsJel0?=
 =?us-ascii?Q?Ki7JJ7z1vitQe5/+nRTH/eZxwxaWVpaqEo/c55LJ4B6OYjvCuHnvYe0oexrV?=
 =?us-ascii?Q?Kixi+x0bbyMW614U0WQsL80Ol4acdCQ8ukfIWoeSQzAw9e68serXmgi+ek3L?=
 =?us-ascii?Q?bleZ4UOtBOfclil1d3hiWRD+3vQMprq29Xbcjg1UAbkGtRNTnqYqcuM1AYq+?=
 =?us-ascii?Q?3JLzC0bIwoDbFtqICxKpPvRU/k2J6PY0BLl+3ifrUz1FVXUfH2oQy0E1TWMq?=
 =?us-ascii?Q?ThZzvvtDtWx0hftazmVxe9IGGzfp2oTRFu9BdVzqJaa83+QbbZK0WiQ+M8vm?=
 =?us-ascii?Q?3HRDRWuYq8CUsx7OlSJyQYgb5uAkjSjIxjr1OFOyWLP7GF28K/pPJD+emqSB?=
 =?us-ascii?Q?HLjcPjZKig/JmmSiijKULnKIEVw0kkr3pclKamxB5EvxOt55um0Lo6FsDQbt?=
 =?us-ascii?Q?EJmP3EyCLwsBPnzo6Q4YvDNxz/u+bek+kEpqEc78zfikjM3nGdeLzAr+4ESV?=
 =?us-ascii?Q?04hSRa2FC+HeAhSIg5DFPg13?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2dMrytXguv31lYroEfyqtO64TGyX9d/gbwU5sijtIEIK6JwRjQQODNfS9XOR?=
 =?us-ascii?Q?H8H8D+uxaEMLerMLiB32vpBWHnRuld79pXp1z5aRISaK1tq7YL4EpaQBKYcU?=
 =?us-ascii?Q?gt/xsSuWvxSv6RWE2uF+3K5R2lHJYhQ7nx7yeNmYwoXqHRCN7H6U6lHwXUjM?=
 =?us-ascii?Q?PU3Ou95tXyYasH4HZsHMQ8k+ari9UBDveUlRwi5uraj6mmJY8tlfINHvp4xk?=
 =?us-ascii?Q?U0VkCVre+2W6Rvo3eupruxCnaMhd3irWmldml63wLgWcYGQibqbOXtKl2lq3?=
 =?us-ascii?Q?8vBHUt6hWWJ/3HqOs02Wh24eZT4ntboodRFxFDaBglzpIgL68aFq99AJhXvX?=
 =?us-ascii?Q?t8yFy7Ndk2aVEd5mhM4Zo5BRllfs1uNCH7jlGfCj1uZGl1MzFE/qAb9RhM+5?=
 =?us-ascii?Q?txpiEkAP0fa1TXMIhj8Q2oqJuYr+7/0u8fVdBwyNK5xkFSag2jrwp8BoXKSR?=
 =?us-ascii?Q?B1IvonZ7AAfdeBofmWWCzpwdkKoPqUXnrvaRA5vG/dBRzOCCJuALYSEHm9u5?=
 =?us-ascii?Q?MGZyy8TdUCFPoX98yrdgcJ/QGrf+IIZnPRZO0i5mZBQgrbpyXFbIJfra+rPg?=
 =?us-ascii?Q?RxgC/SqytV29GEEZ4Rkqg9Z1PcPE2OY+GgNo0ozwvjms/iuA3RnZPGydq4Ar?=
 =?us-ascii?Q?4LUrJIpiHrpPk2qpTyFPf1kleOq2eyZhw9wlcZ7C94io3Ods7To42xMYFFc9?=
 =?us-ascii?Q?nFjGFFEv85mAQeNJpWeF8+2VrmshS2uyWTXMd3pNBInhezn9ZKqv2NLLgrwY?=
 =?us-ascii?Q?VhJIpElHKHE3MepxU3ThIsqC/qwEZjEO5WC8hVk9T7Nznq9gaSCNuNLjzYwv?=
 =?us-ascii?Q?bl1NriaJ2hoQ9AL08ZDySARILPZmAmMCiXDnq+izUo1XoUiFyo7IHgFldUgL?=
 =?us-ascii?Q?2Q9vMLvf3w0O6ImTLsnWPURPbMa2wxMj9oUCLutCkVrgJ3oF6cI2FVCH/xOD?=
 =?us-ascii?Q?sMAigCuMOrjX4Ebdon5D9oaaxQXacKQ7iqvWk/pxAfpg+E9clRIS/2mY0IQk?=
 =?us-ascii?Q?wvG+VVluc2R1VKTZ70rUT21FqlUtEUdEXbz77XybDNLIVYKI3o1CLL0Xo27I?=
 =?us-ascii?Q?tBGVXy6p+m/p5TDQYpKCl7eHCAPJQ7lVJKMSocBfgx4hPdIcg8NZyVjmUiwG?=
 =?us-ascii?Q?qFqXT2eGXVJSNI3Kzec+D3puHWpaJRYCBguvN50pw6kFku+DcahaV4JSJUAE?=
 =?us-ascii?Q?pqHOyy3TLDGkJFelv2SNgTFUvGP/EfSVocWRole+E0hEObmX5oW66PxIS+IQ?=
 =?us-ascii?Q?vugAOVYuRdqlPCXIRV11Aus1429seuwZI0Qeuh+sMjzoIm8Cyd9ZUE3UV8Sq?=
 =?us-ascii?Q?a24aka4YR2AJ4XJ4wxf9K6xkg8/vN8T81i3y6xTuAMqllq63cQwEjdjadXc+?=
 =?us-ascii?Q?YdVQm+DMGwLj5ecdMT49+zzbsy2j7FrmqUSMNcGiEqY0c7UuLtrkwmUzE/3m?=
 =?us-ascii?Q?no+EO+l8y++qtnSAuyhjQp+lPc8iN7wiSgNE6V0zApTaPw4Krb3VkkZqirzJ?=
 =?us-ascii?Q?K3PxcwUXOwY3PDnDdidCZ9gRheNa900TdVZIg1UoeDkp5ncKY5HlvSWPq8Tw?=
 =?us-ascii?Q?xlNDp8sRJDF7mN60cF3/nyQbTzDRyuFDJc3cu3pW?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f62261f7-9c8c-4fbe-ea38-08dc863e9844
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:37:38.2594 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WMZA5xrvantkTkoMstWNIwj6ueZFpmTAu24UNWaKOipNFXSdosSWvcvPfd8hdkg5eaiaQaBiD3j2vL11lK5fHg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
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

On Tue, Jun 04, 2024 at 06:25:29PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PIPESRC register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/i9xx_plane.c    | 2 +-
>  drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
>  drivers/gpu/drm/i915/gvt/fb_decoder.c        | 6 +++---
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c  | 6 +++---
>  5 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i915/display/i9xx_plane.c
> index 5c8778865156..864d94406894 100644
> --- a/drivers/gpu/drm/i915/display/i9xx_plane.c
> +++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
> @@ -1053,7 +1053,7 @@ i9xx_get_initial_plane_config(struct intel_crtc *crtc,
>  
>  	drm_WARN_ON(&dev_priv->drm, offset != 0);
>  
> -	val = intel_de_read(dev_priv, PIPESRC(pipe));
> +	val = intel_de_read(dev_priv, PIPESRC(dev_priv, pipe));
>  	fb->width = REG_FIELD_GET(PIPESRC_WIDTH_MASK, val) + 1;
>  	fb->height = REG_FIELD_GET(PIPESRC_HEIGHT_MASK, val) + 1;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 993eb0935f6b..81ae72648e8e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2784,7 +2784,7 @@ static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
>  	/* pipesrc controls the size that is scaled from, which should
>  	 * always be the user's requested size.
>  	 */
> -	intel_de_write(dev_priv, PIPESRC(pipe),
> +	intel_de_write(dev_priv, PIPESRC(dev_priv, pipe),
>  		       PIPESRC_WIDTH(width - 1) | PIPESRC_HEIGHT(height - 1));
>  }
>  
> @@ -2878,7 +2878,7 @@ static void intel_get_pipe_src_size(struct intel_crtc *crtc,
>  	struct drm_i915_private *dev_priv = to_i915(dev);
>  	u32 tmp;
>  
> -	tmp = intel_de_read(dev_priv, PIPESRC(crtc->pipe));
> +	tmp = intel_de_read(dev_priv, PIPESRC(dev_priv, crtc->pipe));
>  
>  	drm_rect_init(&pipe_config->pipe_src, 0, 0,
>  		      REG_FIELD_GET(PIPESRC_WIDTH_MASK, tmp) + 1,
> @@ -8204,7 +8204,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
>  	intel_de_write(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder),
>  		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
> -	intel_de_write(dev_priv, PIPESRC(pipe),
> +	intel_de_write(dev_priv, PIPESRC(dev_priv, pipe),
>  		       PIPESRC_WIDTH(640 - 1) | PIPESRC_HEIGHT(480 - 1));
>  
>  	intel_de_write(dev_priv, FP0(pipe), fp);
> diff --git a/drivers/gpu/drm/i915/gvt/fb_decoder.c b/drivers/gpu/drm/i915/gvt/fb_decoder.c
> index 0afde865a7de..c454e25b2b0f 100644
> --- a/drivers/gpu/drm/i915/gvt/fb_decoder.c
> +++ b/drivers/gpu/drm/i915/gvt/fb_decoder.c
> @@ -267,11 +267,11 @@ int intel_vgpu_decode_primary_plane(struct intel_vgpu *vgpu,
>  		(_PRI_PLANE_STRIDE_MASK >> 6) :
>  		_PRI_PLANE_STRIDE_MASK, plane->bpp);
>  
> -	plane->width = (vgpu_vreg_t(vgpu, PIPESRC(pipe)) & _PIPE_H_SRCSZ_MASK) >>
> +	plane->width = (vgpu_vreg_t(vgpu, PIPESRC(dev_priv, pipe)) & _PIPE_H_SRCSZ_MASK) >>
>  		_PIPE_H_SRCSZ_SHIFT;
>  	plane->width += 1;
> -	plane->height = (vgpu_vreg_t(vgpu, PIPESRC(pipe)) &
> -			_PIPE_V_SRCSZ_MASK) >> _PIPE_V_SRCSZ_SHIFT;
> +	plane->height = (vgpu_vreg_t(vgpu, PIPESRC(dev_priv, pipe)) &
> +			 _PIPE_V_SRCSZ_MASK) >> _PIPE_V_SRCSZ_SHIFT;
>  	plane->height += 1;	/* raw height is one minus the real value */
>  
>  	val = vgpu_vreg_t(vgpu, DSPTILEOFF(dev_priv, pipe));
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index d961f3f70aaa..2e26464672f7 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1225,7 +1225,7 @@
>  #define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
>  #define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
>  #define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
> -#define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
> +#define PIPESRC(dev_priv, pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
>  #define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
>  
>  /* VRR registers */
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 5abae7df0bfe..ff561a1e0fd3 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -239,7 +239,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_A));
> -	MMIO_D(PIPESRC(TRANSCODER_A));
> +	MMIO_D(PIPESRC(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
> @@ -248,7 +248,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_B));
> -	MMIO_D(PIPESRC(TRANSCODER_B));
> +	MMIO_D(PIPESRC(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
> @@ -257,7 +257,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_C));
> -	MMIO_D(PIPESRC(TRANSCODER_C));
> +	MMIO_D(PIPESRC(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
> -- 
> 2.39.2
> 
