Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF4C6588007
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:13:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7B4D91098;
	Tue,  2 Aug 2022 16:12:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B1249113A
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:12:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659456769; x=1690992769;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZtH4f5wnJ51VF3luJ7LC3AGwuuDewZ6DEEpnPOHzjXY=;
 b=Z1ANm6l/ILZ2PdVuLrF/ykHJD+e/6QptpX8+TuNEDoOELY+Fx13bDzPg
 upjVZwr2iYifOyY/R5/sr848lozeZbcu4TjN+QOmJE1aLX1PbL0BZtd1z
 E6ZzTuhzkP73JVigQSHQyEqoLGjUAjhuAU2vHpiC4U2n1LCWB6UOVB2+j
 wCBwO/+O6GSF4oap6hb2LjLrRbTXqVmWWTtZ7egd5NREKmbhlpiFL0lT8
 CsUAPUVRdbh3Uwtb/6xkZZa3B4h2UJ+Vc9F5sLoUBHvuxMpU+IPYGqkcf
 YHycCUgy+cJJ3M1S5a1/yjf9vxbT3ndFD5rc4oERrlMahbZRMWXSnbkBw w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="287012822"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="287012822"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 09:12:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="552968761"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga003.jf.intel.com with ESMTP; 02 Aug 2022 09:12:38 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 09:12:37 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 09:12:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 09:12:37 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 09:12:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iCowBXpm4K9CuuaT68fkSWJehLCKUpSGkgwCT9pvvPnpU08DPlDrU/wQgHWghg0wVmpMbPe3mMW1C1nznyWgPHpoXJ9QoV7LpPhial6q3XwZ1Je/yI+APClmZ4zPFeXsNYcYKPqsmN5n87cSwOYP5E36e/Q4pBgzKirly9bmuW9gzhAufxHlwcG5k6P5X4HhlPCmXYa2QWw7gbK5a/eZewbPJwU9WM2RIbCTH/WQg6BYWJXddmRnAYsvglAYauGYJrBYYTYdw/CFXc1YhhqrfyQH6TuvMtMNnkXZHTaWHduMY9++gY4I2MNCkvk3dMcx4+jNQDYD94nJtrSnJ4p+/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GBueCWoZTocuEvT5BBIX2EgNGQlJoNXObSFR2o0I2+k=;
 b=Xqe3lLJJUuuN730ylh7y0ZaEQ2pdDq9VWHPAmdfegtQrIN1p+D2j00cyXiTbBP5q/fcJiJUTfn+R3cMztfW0py4xK1mrJ/Xy2a95vr7AITcU8pSyQvkvMncWVqB8N0CivOLeyUbpRvdM2bsD9ecY4W/pb9b+QyEyN+kRAWpYnVmCzS2A9wM6C3rbj7QmUsoTwBdVK6GE2YlRz4OH535zUH5on2K164dhuqZ4mtupHalbsWF4a3sUruCXMUPRt2c7WONHcQfnNjZy1ZqKLWSvQv+H/U8dCrcVOUiFB3BSR+fJcVaxplZ/EP2xeIIKmxt/fFoSl/vFOO/noShgw3s8Vw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CH2PR11MB4406.namprd11.prod.outlook.com (2603:10b6:610:43::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 16:12:35 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 16:12:34 +0000
Date: Tue, 2 Aug 2022 09:12:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulM8L/G8ZJFQMYe@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-14-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20220728013420.3750388-14-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: BY5PR13CA0010.namprd13.prod.outlook.com
 (2603:10b6:a03:180::23) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a9161c1b-8dbc-4119-a235-08da74a1cf74
X-MS-TrafficTypeDiagnostic: CH2PR11MB4406:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s9R1KnFD3v4+gi61CbQDUrqg1Ho4C8a+SeHQog+54SelncTJLqyKfeXNiggwinTy40zvbLRsnwlxFzEOvLBjjLCxryNhQqP0Br9pC+mXuGbuyO8U8AxQ1ZXsFmpurjBpQ6t7nEhnFpn9ahpVBtDK4nvYDIfviX5LOpteoeg6rin6ZhasoYI69H07INVWwj8EOi1nKAvauajDpiKALyItOwNLfwCOcwZPui4lQeXucprduofD9NOm5GJvdvlU6KqI3Y5okiqj81Jzp/ej69xKnbQSrfTqEBtwEAirR353c2dDJYOgo/zKUsT8UMNTRZdVYWW/7+raaC40qC3ZU+aSZALEwgnMTrVU3wXEeCdBLe2EFMSOObonNuZvNw0bF0/ttdg2PWCpPw1pn4DIa/V0SLekNf9Z5fODUAWA+dvJX9PKizsv4COw0dqNEBZenwxvuEkmqTYkFTiP2ZNL7Y2tw8EpnFUrDw3giXApcCqihNLwlbtVz0J3kVEag9q1z375D1tZFfI07mI2Zv7Gmcm/+RPtjpmVbiVgxu9QLlHKOq4KozLmqVmQ05MOzVmek/53iqwtzAs0XkeTOpQDkcWAR6N4iduWNbzch66lQcd/Kzi8jukm479X5QehEuPKJvjmLQ8d359Co/yyGAgEhiIHp0zOgmGP4NmBGnNzLJd7yO0ABFRlweBDQAvOTwenZE4jw4Ryp6vTJ00Pyji1wFwlniMg1Hwe4v4SKlyB0RAu22w73VqV7GfFX3HvIHkiB6+A
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(366004)(346002)(39860400002)(136003)(376002)(186003)(38100700002)(66476007)(66556008)(66946007)(86362001)(6506007)(83380400001)(8676002)(6512007)(26005)(4326008)(82960400001)(6636002)(2906002)(41300700001)(478600001)(5660300002)(8936002)(6486002)(316002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o8Q1lw/OAzSxE1wsFQ9bweYJ1wDLo2EqW1erTQTbVZn9zUnUINaSY1fFRK8o?=
 =?us-ascii?Q?elYcoRNbyph3OLC+Fn29tlXxbCly/OV94nLIVV1bpgq/Ry127rchS4535ap2?=
 =?us-ascii?Q?1cH2O+YxLIZm+GdTjsfGVyMJc/rNd7r4Z6RbUzcnOM40O+/cIGnxoQfcOMKH?=
 =?us-ascii?Q?cHzxuekpxpVSWTKCkqv9V50ti2Qi4D0IKj36pZ8s7o45lwYIMnIE3qpmAdpz?=
 =?us-ascii?Q?I6ZN4dENbSZM+oMOH0GjE9+BPQdODpPwPAX32OtSEQxDja9UyofWwuvRzypw?=
 =?us-ascii?Q?bGMSGPD0sPYCOTqDrNDMnkKiElG4ITHZ9mcGxVyHZuPQZUp9Ks8OyXHOhRVx?=
 =?us-ascii?Q?o7vXYCI9kxLKZrqF6tgjoK8K1iJFfxi4r/oVev1b3o2QBjl3HLq9S0+oz7DS?=
 =?us-ascii?Q?+PZnddF7/4BLOVLCLtt4WK/lODcG/3IFULT/5NaREvtOfwAI9rluivQQzwtd?=
 =?us-ascii?Q?2mDXOAgJwIbN9pikbEN+Nr12wo5AEsO5fRf4sTYDPibCSFYf0Q+YAcDlxh9n?=
 =?us-ascii?Q?/19w4F8A/Tk7pCj1cbZxvZv7WDqzaNqJXc8Q1uz845+7f0FaAsr+ZWG1IXpi?=
 =?us-ascii?Q?1mtTQ4or39NBr/a7Mm4PxsakzhIp0QnUiQLz83zbH16nP1HmxqZEILDh4Fi0?=
 =?us-ascii?Q?p9Avc41eL+UTMu73dzheMvcp1RPVGbhF3I4GNvAfwMloLyHLYVYCS92D4tjS?=
 =?us-ascii?Q?XMrlQaGIP1Xb04x7JEIEE1Xu2ktmFuUan/EGSyEl8nF1eI9estv6tb6DnM/L?=
 =?us-ascii?Q?XAd0ud0CPCsbG4MLFETUeOTZI96uluWByMHL4LW8CjF8l/IJPkrXUuJa+OST?=
 =?us-ascii?Q?xeLEXIAyiD+YjpjBUQ8aVJ1OIPzJhKP3a1M5DgIWIstARnYK0sIZ4wFgm6sT?=
 =?us-ascii?Q?DzYPpS6sVuofPvFlA+BnrAx5ONle7PIszQWKlkBtayWXjZrQUezLOmApk+aW?=
 =?us-ascii?Q?WIoVUkR5i/I+994tXy56T1YOmBOlyu+PC7F1KN8GR0eoBJ2ii4eGT6U8SrUG?=
 =?us-ascii?Q?9g/FGCwpMGaaI62dcpiUpUE7dVtcBBW4JpsoDhvI5eH+KxMDoVcPL9QybEA9?=
 =?us-ascii?Q?Cf80BckHGoNYEibhRWVtL+0z+FVBXEuiaj/Q21eUjM2FWlEB7dUjjZh+kjYY?=
 =?us-ascii?Q?wUMlYh7An8KzmS6tLHhakIxXUHcneItCNiqgtbeh0CiaDVSQ0sTSsSjzqv4+?=
 =?us-ascii?Q?NH1/Cr26DatTb/ZcFppiuT6361eNRzLgVcz1hVqB9qSyT5x2Wota316I4+d3?=
 =?us-ascii?Q?82rKLcwLcN5YSBuzMt1BOLkMzFrm2CvDzOkJ3vaBOJACeTKJ/ShlTARJ5+PJ?=
 =?us-ascii?Q?SUA16WcdlBxQwLkFkRkxW7c5CT6Ni8GJOg2wbgS1FQGkHOfOXDTPBDtRzS8R?=
 =?us-ascii?Q?xOT/ve/a2L3y1clx2LE4JtjcxnVF0TQPs0eG9pWZGSGj16AUIIg5j2SkEtXc?=
 =?us-ascii?Q?LIQH2GinVlT/U2eH0o3epzG5mlNnQ2+jmEl8KEIbOGCfBlhDPr3hAFDCuNVY?=
 =?us-ascii?Q?6oSurdA37mu8eHb5ugbOUBABK2Qfi0c1nzMRkO4tg50bT6XWY8qXN5pZ2uQE?=
 =?us-ascii?Q?rxKyaBSDWTUclumJ+7ujG6h6Jvrw/gW5RGDvW7V1umheNwypHlr5C8foAjHn?=
 =?us-ascii?Q?dQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9161c1b-8dbc-4119-a235-08da74a1cf74
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 16:12:34.7617 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 8HBpUl5iOvolDfLLDF59OmOegAEpGj0KguUnNnMwVVjnohMV9J7BfCK/V9mRScRCyMTdOjIOKHny7xSw1w3rUh7idPYxEg+u8UI3M8Jic9Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4406
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 13/23] drm/i915/mtl: memory latency data
 from LATENCY_LPX_LPY for WM
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jul 27, 2022 at 06:34:10PM -0700, Radhakrishna Sripada wrote:
> Since Xe LPD+, Memory latency data are in LATENCY_LPX_LPY registers
> instead of GT driver mailbox.
> 
> Bspec: 64608
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Original Author: Caz Yokoyama
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_reg.h |   7 +++
>  drivers/gpu/drm/i915/intel_pm.c | 105 +++++++++++++++++++-------------
>  2 files changed, 71 insertions(+), 41 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 6087d40eed70..23b50d671550 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8754,4 +8754,11 @@ enum skl_power_gate {
>  #define GEN12_STATE_ACK_DEBUG		_MMIO(0x20BC)
>  
>  #define MTL_MEDIA_GSI_BASE		0x380000
> +
> +#define MTL_LATENCY_LP0_LP1		_MMIO(0x45780)
> +#define MTL_LATENCY_LP2_LP3		_MMIO(0x45784)
> +#define MTL_LATENCY_LP4_LP5		_MMIO(0x45788)
> +#define  MTL_LATENCY_LEVEL0_2_4_MASK	REG_GENMASK(12, 0)
> +#define  MTL_LATENCY_LEVEL1_3_5_MASK	REG_GENMASK(28, 16)
> +
>  #endif /* _I915_REG_H_ */
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index ef7553b494ea..fac565d23d57 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -2861,16 +2861,75 @@ static void ilk_compute_wm_level(const struct drm_i915_private *dev_priv,
>  	result->enable = true;
>  }
>  
> +static void
> +adjust_wm_latency(u16 wm[], int max_level, int read_latency,
> +		  bool wm_lv_0_adjust_needed)

The refactoring to separate the adjustment from the readout should
probably be a separate patch before you add the MTL-specific changes on
top.


Matt

> +{
> +	int i, level;
> +
> +	/*
> +	 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
> +	 * need to be disabled. We make sure to sanitize the values out
> +	 * of the punit to satisfy this requirement.
> +	 */
> +	for (level = 1; level <= max_level; level++) {
> +		if (wm[level] == 0) {
> +			for (i = level + 1; i <= max_level; i++)
> +				wm[i] = 0;
> +
> +			max_level = level - 1;
> +			break;
> +		}
> +	}
> +
> +	/*
> +	 * WaWmMemoryReadLatency
> +	 *
> +	 * punit doesn't take into account the read latency so we need
> +	 * to add proper adjustement to each valid level we retrieve
> +	 * from the punit when level 0 response data is 0us.
> +	 */
> +	if (wm[0] == 0) {
> +		for (level = 0; level <= max_level; level++)
> +			wm[level] += read_latency;
> +	}
> +
> +	/*
> +	 * WA Level-0 adjustment for 16GB DIMMs: SKL+
> +	 * If we could not get dimm info enable this WA to prevent from
> +	 * any underrun. If not able to get Dimm info assume 16GB dimm
> +	 * to avoid any underrun.
> +	 */
> +	if (wm_lv_0_adjust_needed)
> +		wm[0] += 1;
> +}
> +
>  static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
>  				  u16 wm[])
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> +	int max_level = ilk_wm_max_level(dev_priv);
>  
> -	if (DISPLAY_VER(dev_priv) >= 9) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
>  		u32 val;
> -		int ret, i;
> -		int level, max_level = ilk_wm_max_level(dev_priv);
> +
> +		val = intel_uncore_read(uncore, MTL_LATENCY_LP0_LP1);
> +		wm[0] = REG_FIELD_GET(MTL_LATENCY_LEVEL0_2_4_MASK, val);
> +		wm[1] = REG_FIELD_GET(MTL_LATENCY_LEVEL1_3_5_MASK, val);
> +		val = intel_uncore_read(uncore, MTL_LATENCY_LP2_LP3);
> +		wm[2] = REG_FIELD_GET(MTL_LATENCY_LEVEL0_2_4_MASK, val);
> +		wm[3] = REG_FIELD_GET(MTL_LATENCY_LEVEL1_3_5_MASK, val);
> +		val = intel_uncore_read(uncore, MTL_LATENCY_LP4_LP5);
> +		wm[4] = REG_FIELD_GET(MTL_LATENCY_LEVEL0_2_4_MASK, val);
> +		wm[5] = REG_FIELD_GET(MTL_LATENCY_LEVEL1_3_5_MASK, val);
> +
> +		adjust_wm_latency(wm, max_level, 6,
> +				  dev_priv->dram_info.wm_lv_0_adjust_needed);
> +	} else if (DISPLAY_VER(dev_priv) >= 9) {
> +		int read_latency = DISPLAY_VER(dev_priv) >= 12 ? 3 : 2;
>  		int mult = IS_DG2(dev_priv) ? 2 : 1;
> +		u32 val;
> +		int ret;
>  
>  		/* read the first set of memory latencies[0:3] */
>  		val = 0; /* data0 to be programmed to 0 for first set */
> @@ -2909,44 +2968,8 @@ static void intel_read_wm_latency(struct drm_i915_private *dev_priv,
>  		wm[7] = ((val >> GEN9_MEM_LATENCY_LEVEL_3_7_SHIFT) &
>  				GEN9_MEM_LATENCY_LEVEL_MASK) * mult;
>  
> -		/*
> -		 * If a level n (n > 1) has a 0us latency, all levels m (m >= n)
> -		 * need to be disabled. We make sure to sanitize the values out
> -		 * of the punit to satisfy this requirement.
> -		 */
> -		for (level = 1; level <= max_level; level++) {
> -			if (wm[level] == 0) {
> -				for (i = level + 1; i <= max_level; i++)
> -					wm[i] = 0;
> -
> -				max_level = level - 1;
> -
> -				break;
> -			}
> -		}
> -
> -		/*
> -		 * WaWmMemoryReadLatency
> -		 *
> -		 * punit doesn't take into account the read latency so we need
> -		 * to add proper adjustement to each valid level we retrieve
> -		 * from the punit when level 0 response data is 0us.
> -		 */
> -		if (wm[0] == 0) {
> -			u8 adjust = DISPLAY_VER(dev_priv) >= 12 ? 3 : 2;
> -
> -			for (level = 0; level <= max_level; level++)
> -				wm[level] += adjust;
> -		}
> -
> -		/*
> -		 * WA Level-0 adjustment for 16GB DIMMs: SKL+
> -		 * If we could not get dimm info enable this WA to prevent from
> -		 * any underrun. If not able to get Dimm info assume 16GB dimm
> -		 * to avoid any underrun.
> -		 */
> -		if (dev_priv->dram_info.wm_lv_0_adjust_needed)
> -			wm[0] += 1;
> +		adjust_wm_latency(wm, max_level, read_latency,
> +				  dev_priv->dram_info.wm_lv_0_adjust_needed);
>  	} else if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
>  		u64 sskpd = intel_uncore_read64(uncore, MCH_SSKPD);
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
