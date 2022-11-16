Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 927BB62C7EB
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Nov 2022 19:43:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0D5910E0A2;
	Wed, 16 Nov 2022 18:43:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45F5610E17E
 for <intel-gfx@lists.freedesktop.org>; Wed, 16 Nov 2022 18:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668624227; x=1700160227;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=HluFqxy5ZsxukCkMb/KW2M4JUDuxcs1NF05y6IkBPZc=;
 b=hco3fpyAVccojRkJVe1LXGriGySyh6ylMv/HCb8K2MhXKOb/Y/+T9Avs
 9d86bnamGyhfV+1blt/3PbQMFRZurNoNkkdxsYcrOGjHGLZriXYcbnTQY
 e2kngx8TsxxGtO+a8BbC7Oq5hoMIbpsCAdCU7OKzwvvdngh5R/Hd9EjA9
 znSg8HdInRkHD9P6RUCQNQsHxFv9D7a2cu/lCijB+knJVwb56dr6v6CEl
 D/wyGbW4gGGfWHt2fGmrillnuqIZmxFpMGg0fZDGYk4dpIdLrs71kmHGw
 3XjVGHzKLsSOUzmQlcdmvFo7xgQXGbHKbgJ87xAqv6plaMfYU3Vp+ID9h w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="339447546"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="339447546"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2022 10:43:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10533"; a="728481568"
X-IronPort-AV: E=Sophos;i="5.96,169,1665471600"; d="scan'208";a="728481568"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Nov 2022 10:43:46 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 16 Nov 2022 10:43:46 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 16 Nov 2022 10:43:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 16 Nov 2022 10:43:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IIiU5kF+tebYqf4kKa7sxPXMeATRkaNqZtfar7uDRcY3zrSP4ZD+03/MZbB9+GGk01EZNPDp9/B4BdtYY9dK87zDnaiovW7ac8T++rOYvN+eWxqe4k9hPOxeztDGjsGG5qs6fZWcbuPriBHVo1KOO6Wwmv5d62Ldzn+wmtS98mvNwd+8xLu6DlGvsCfn0GFWf38XlvpfhdrVcN/DRnaxm6zu6S5hEH4eCigb/EE9UC8/yk9hFTkYt9jH4tShv8309+SSup0IYBMqRQ9dUDS0YViyP3NpcL2dRx56AH3xzsUvbiYKOZGX8DU36oZjDpo5DSbP4HHxn5xej0y4ytF6aQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRCuBL/gSoy5J23YASpPDfZP8wh7Kwxsb5WEs/f0u4M=;
 b=Milu10Khlq64qWzH+KSA5N4GosWmbTeGgM/5eA2sJCxeUo29cS903TOFgTr+3kMNUj4Emgl+WpFNNSN6RrHTtLU2KWrbJ2saB0JPm/oQl9J40LAeaqeS8MotnhmCVuTJWQC1NrYKetlbFjKUuyqqBOJTIGdsSoJ5Kjn6Z1a2bT9wv39yFu53UAfKOEfFrXt/H4cUQEUrjy2bdmdLPYtp087MNQKwrgaajR627zz2+xI7nZ+rhbXIL9xX++uPnYnzI3Sj3j8CTkj9YNNiEKw4Cyr7VhDC35dTmWEX7aJ0QQb3bR+FtW+Cr00S5n9gFyNi0++OGz9XD79jfufpqaKhKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SN7PR11MB7565.namprd11.prod.outlook.com (2603:10b6:806:344::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.18; Wed, 16 Nov
 2022 18:43:43 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.018; Wed, 16 Nov 2022
 18:43:43 +0000
Date: Wed, 16 Nov 2022 10:43:39 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Y3UvW2BVXiY+W9Kg@mdroper-desk1.amr.corp.intel.com>
References: <20221116145008.556381-1-anusha.srivatsa@intel.com>
 <20221116145008.556381-2-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221116145008.556381-2-anusha.srivatsa@intel.com>
X-ClientProxiedBy: BYAPR08CA0057.namprd08.prod.outlook.com
 (2603:10b6:a03:117::34) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SN7PR11MB7565:EE_
X-MS-Office365-Filtering-Correlation-Id: 32e48151-f1a5-4bc5-080b-08dac8027bc6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ywitXMu8aOy2EkljjcLkNdAS6uwIVM2qAroT8LzPTbaX5MI1FwlBDDqeougde2t5Gzb1HA2RykRKVJ9I90j0WENXpv+zhkFazK9cy9UiAZ/IubNMQUvmwSVikTUVcCxsO1bTzphEBdOSMy9WMG2hsFRzw5a5HjfxnS1lV67EogmqPqv5cmrcjieNQ7UgjdBTHrQh2bBLmL5YUfzLnnuB/6z5lZm2jJpnfRCbhHswJyoNf2vrMSCnpBkOPOJNr2txc1aFp97MR3SkpVEHiVtCOnOp8js6EegMkdKiK5imdOrxti+O6CWNjC0UVxDIXlC/WeRtMDEHCU4VHmHt2Ozbx7iVgUIkP4LLXYzUjlkl1L1ulP37GjjQlfO3CKIyY4DvEtDzbDpw64Mn8P0mkvl4Q5y4kaR8W9jDzZbXXrYAQLPIw4tRdTm1jYlt5zGmIvG5VnI7nWm/1qJlb180wOgR1zszoGQXTU4NRqM/79AwgEwrNRHgWyjCTq7zCWe+tzp/HyoREjrDrG9sGgP3Lni/6ut2WFApTMgJUkhW0n16CWw+CMqddaD4RrtD+i1BB0p8zCbR25ri0jnUOw7qSiU+YZKlmYXHbCIq0qPFCRoPvVjHWR37aHhItBrqFlnxkELraBjy5M+yENTh+GltTuGTtGmhnMZwZ4ChStPg4chieqBfWPv9ruSsxCP8FFrn31rrG5PiTJfgN9MY5sWydOb9bSMoSjHLAH5xxBPyZW86dlQmr78XfmCgF63DAVcuCe3ih+TgNjt78eR7Htb+/dSJ9A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(346002)(396003)(376002)(39860400002)(136003)(451199015)(5660300002)(41300700001)(2906002)(4326008)(66476007)(66556008)(316002)(66946007)(6486002)(6636002)(8676002)(6506007)(6666004)(86362001)(26005)(186003)(107886003)(83380400001)(478600001)(6512007)(6862004)(8936002)(66574015)(38100700002)(82960400001)(17423001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?lV0eS7OH218T0hB7XhF+H50VvS6eHheO/gg696jfgZSV15xlxAN9Hm8eSo?=
 =?iso-8859-1?Q?4qmocK4AhhiwPrDvkkkRfWrJILmAe3JiPyCneXaZMS+9hEkeVKS3JCpo23?=
 =?iso-8859-1?Q?ryNttK53gV48b+u8uBMlqOELzEPIm7Xt44grLVzDqpqHA8P9SpLOQS3G1q?=
 =?iso-8859-1?Q?NOMG4+892EwFt6eVPMorQzdMijPZuC/yVyXqRsnGyJkrsUV84+9Zl01XJi?=
 =?iso-8859-1?Q?ZC2rQw2xiAtC7BMEAd3+LKec/IES3Nnnx56arxgH40tovW0gXsEcgx6SPz?=
 =?iso-8859-1?Q?xPDwLt5KxX2anN9PRwU4m8fMsYlAhQVfrO6axTdMUCVssCZ6rZ4oUCYFHp?=
 =?iso-8859-1?Q?d+tz5pgaP66GSjxbc73pXGL6KW4Goruzko96ywLp5UVY/jguhq/f0qHqPp?=
 =?iso-8859-1?Q?4/sn4K6DyS614O6B6OrVLRQVMWiwAPeweuxiyQqbO7iPRYuCszfVrylRM1?=
 =?iso-8859-1?Q?FnpDZvE0ho1ug9x7mYQgJ2zXZ2BllJfq8sBKChJAENnYBwVe2sGLMChwdG?=
 =?iso-8859-1?Q?6xDdoDhkPp2aUl4pehX9DW7bUb7KVxfah7i6iZtzUliWQqZfR58Cr98Agf?=
 =?iso-8859-1?Q?rB6CcGZqHtXsx7Z+ovrqn3Dtvc1xzwu0+xTZzP4BVTSv23xzy2eDrv8UMV?=
 =?iso-8859-1?Q?gevkmtYnJMKMKSdlAgJlWueI3CjgIrNQ5JbIQjcFOuh6mL1KkeVfZzFlWU?=
 =?iso-8859-1?Q?d8KHyBVRqYZiPf/CEJaN7OUVTfEzZTh3vK5tvgXWUY3xJbpsyp4iqV8y8M?=
 =?iso-8859-1?Q?x8AW0GgMQplMmW6oPbMmUtKtqOawNi5Xq96hZblLnzn7Y/FyyrZ/ch7/cx?=
 =?iso-8859-1?Q?B4tA850P9GMMp7OZfL3CpoiC/AvZ/nFc2ACRjt0nDuAwrcLnHg8fgNSZyq?=
 =?iso-8859-1?Q?PM/86DPjNjZcdcT/wigLjXZAuVTisxYZVLjIfOGeSoMkWuy1c5K/3LVYCn?=
 =?iso-8859-1?Q?6T1m/uKl+8yEYG+dH8EWn12zim2Hf1DK6E5+yRX7450hRy/jNeY9WhqcFy?=
 =?iso-8859-1?Q?9RwZUhj5mS91UG+DtgXo5vCbrKlp1JGUsspkUThQWe5yp4gUcRTWWtMCI7?=
 =?iso-8859-1?Q?ySOQgGfpbq9yDYRA3/4pHNkJTg5bq6rT5xx81yPzj2RJR3KLMD7JlHyhF3?=
 =?iso-8859-1?Q?IKG4YxFZsHJU2PdxEo30WCsoAbyJGB0Wc88vvbJ36AQuQYLhooWIt2EKrM?=
 =?iso-8859-1?Q?GjesKZEn+605RNkpFRnnpaqvd5s1jYg/cKERlePcPiEfduDN6gY6Bydp2x?=
 =?iso-8859-1?Q?JRyudrzeiryvVur0fY9gaZr9Ss/wQTio7ikJlzHi4l6BTatza/y6mOG6Tk?=
 =?iso-8859-1?Q?1jHwPYq6C/79/avpg3AZtrIEsG35xanxmggPOl7bArMKiIQo3wH719qkH9?=
 =?iso-8859-1?Q?fPnPx5xQi3EKkVNvIZWhjIkXgz+/Ro3wgkK2KQmF533MVGpZeEl7zRlmg6?=
 =?iso-8859-1?Q?5WjqusJHP/+VKTVxXLaZkYvd9b515TK9fzpNetyHY/xLV5S7axYEdpthh7?=
 =?iso-8859-1?Q?WN45lLBYfquRliJG/hvh+NrwaQB4umwLSabBwsxlPx56OAmmA5btQFlSoj?=
 =?iso-8859-1?Q?CJlGEU56dz6tQm0rvpiyZcjp+yUorN40V9XfTrUBOV8K0rgvq4kJpdoH7A?=
 =?iso-8859-1?Q?rx6rqFphjunu2nhBaj0eQx9Zkkt1bV7z1safTxR3SoASKSwVy586bj6w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 32e48151-f1a5-4bc5-080b-08dac8027bc6
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Nov 2022 18:43:43.4816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7tqHcEB/TMTRIfYlq0vBV+NNvES8Dn9HMr94NznYMUikifMgRPMxTcF+ezXzJ8G/79TT0ulwu0NS76KaBcRi/EkYTQCiMYobZLuqDgR+ZSM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7565
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: intel-gfx@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 16, 2022 at 06:50:07AM -0800, Anusha Srivatsa wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For MTL, changing cdclk from between certain frequencies has
> both squash and crawl. Use the current cdclk config and
> the new(desired) cdclk config to construtc a mid cdclk config.
> Set the cdclk twice:
> - Current cdclk -> mid cdclk
> - mid cdclk -> desired cdclk
> 
> Driver should not take some Pcode mailbox communication
> in the cdclk path for platforms that are  Display 14 and later.

Nit:  display _version_ 14 and later.

> 
> v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> change via modeset for platforms that support squash_crawl sequences(Ville)
> 
> v3: Add checks for:
> - scenario where only slow clock is used and
> cdclk is actually 0 (bringing up display).
> - PLLs are on before looking up the waveform.
> - Squash and crawl capability checks.(Ville)
> 
> v4: Rebase
> - Move checks to be more consistent (Ville)
> - Add comments (Bala)
> v5:
> - Further small changes. Move checks around.
> - Make if-else better looking (Ville)
> 
> v6: MTl should not follow PUnit mailbox communication as the rest of
> gen11+ platforms.(Anusha)
> 
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 175 +++++++++++++++++----
>  1 file changed, 144 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 25d01271dc09..6e122d56428c 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1727,37 +1727,75 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>  	return vco == ~0;
>  }
>  
> -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe)
> +static int cdclk_squash_divider(u16 waveform)
> +{
> +	return hweight16(waveform ?: 0xffff);
> +}
> +
> +static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
> +						    const struct intel_cdclk_config *old_cdclk_config,
> +						    const struct intel_cdclk_config *new_cdclk_config,
> +						    struct intel_cdclk_config *mid_cdclk_config)
> +{
> +	u16 old_waveform, new_waveform, mid_waveform;
> +	int size = 16;
> +	int div = 2;
> +
> +	/* Return if both Squash and Crawl are not present */
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> +
> +	/* Return if Squash only or Crawl only is the desired action */
> +	if (old_cdclk_config->vco <= 0 || new_cdclk_config->vco <= 0 ||

We still have "<= 0" checks here.  As noted before, the < part can never
evaluate to true since vco is an unsigned value.  I think you meant to
update this to include a check with your new cdclk_pll_is_unknown()
helper?

Also, the comment above this check says "if squash only or crawl only is
the desired action" which is what the "==" conditions below cover.  But
the vco 0/unknown checks are technically to ensure we bail out if the
desired action is to do neither of the two (traditional modeset).

> +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> +	    old_waveform == new_waveform)
> +		return false;
> +
> +	*mid_cdclk_config = *new_cdclk_config;
> +
> +	/*
> +	 * Populate the mid_cdclk_config accordingly.
> +	 * - If moving to a higher cdclk, the desired action is squashing.
> +	 * The mid cdclk config should have the new (squash) waveform.
> +	 * - If moving to a lower cdclk, the desired action is crawling.
> +	 * The mid cdclk config should have the new vco.
> +	 */
> +
> +	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
> +		mid_cdclk_config->vco = old_cdclk_config->vco;
> +		mid_waveform = new_waveform;
> +	} else {
> +		mid_cdclk_config->vco = new_cdclk_config->vco;
> +		mid_waveform = old_waveform;
> +	}
> +
> +	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> +						    mid_cdclk_config->vco, size * div);
> +
> +	/* make sure the mid clock came out sane */
> +
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> +		    i915->display.cdclk.max_cdclk_freq);
> +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
> +		    mid_waveform);
> +
> +	return true;
> +}
> +
> +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			   const struct intel_cdclk_config *cdclk_config,
> +			   enum pipe pipe)
>  {
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
>  	u32 val;
>  	u16 waveform;
>  	int clock;
> -	int ret;
> -
> -	/* Inform power controller of upcoming frequency change. */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> -	else
> -		/*
> -		 * BSpec requires us to wait up to 150usec, but that leads to
> -		 * timeouts; the 2ms used here is based on experiment.
> -		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> -	if (ret) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> -			ret, cdclk);
> -		return;
> -	}
>  
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
>  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> @@ -1793,11 +1831,62 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	if (pipe != INVALID_PIPE)
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> +}
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe)
> +{
> +	struct intel_cdclk_config mid_cdclk_config;
> +	int cdclk = cdclk_config->cdclk;
> +	int ret = 0;
> +
> +	/*
> +	 * Inform power controller of upcoming frequency change.
> +	 * Display versions 14 and beyond do not follow the PUnit
> +	 * mailbox communication, skip
> +	 * this step.
> +	 */
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		/* NOOP */;
> +	else if (DISPLAY_VER(dev_priv) >= 11)
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> +	else
> +		/*
> +		 * BSpec requires us to wait up to 150usec, but that leads to
> +		 * timeouts; the 2ms used here is based on experiment.
> +		 */
> +		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> +					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> +					      0x80000000, 150, 2);
> +
> +	if (ret) {
> +		drm_err(&dev_priv->drm,
> +			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> +			ret, cdclk);
> +		return;
> +	}
> +
> +	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv, &dev_priv->display.cdclk.hw,
> +						    cdclk_config, &mid_cdclk_config)) {
> +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	} else {
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	}
> +
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		/*
> +		 * NOOP - No Pcode communication needed for
> +		 * Display versions 14 and beyond
> +		 */;
> +	else if (DISPLAY_VER(dev_priv) >= 11)
>  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  				      cdclk_config->voltage_level);
> -	} else {
> +	else
>  		/*
>  		 * The timeout isn't specified, the 2ms used here is based on
>  		 * experiment.
> @@ -1808,7 +1897,6 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>  					      cdclk_config->voltage_level,
>  					      150, 2);
> -	}
>  
>  	if (ret) {
>  		drm_err(&dev_priv->drm,
> @@ -1965,6 +2053,26 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  		skl_cdclk_uninit_hw(i915);
>  }
>  
> +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
> +					     const struct intel_cdclk_config *a,
> +					     const struct intel_cdclk_config *b)

Do we need a check for PLL unknown here?  We don't want to decide that
we can skip a modeset if the PLL is unknown, right?


Matt

> +{
> +	u16 old_waveform;
> +	u16 new_waveform;
> +
> +	if (a->vco == 0 || b->vco == 0)
> +		return false;
> +
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> +
> +	return a->vco != b->vco &&
> +	       old_waveform != new_waveform;
> +}
> +
>  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
>  				  const struct intel_cdclk_config *b)
> @@ -2771,9 +2879,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			pipe = INVALID_PIPE;
>  	}
>  
> -	if (intel_cdclk_can_squash(dev_priv,
> -				   &old_cdclk_state->actual,
> -				   &new_cdclk_state->actual)) {
> +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> +					     &old_cdclk_state->actual,
> +					     &new_cdclk_state->actual)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Can change cdclk via crawling and squashing\n");
> +	} else if (intel_cdclk_can_squash(dev_priv,
> +					&old_cdclk_state->actual,
> +					&new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk via squashing\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
