Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49278799214
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 00:17:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD3BF10E002;
	Fri,  8 Sep 2023 22:17:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E16EB10E002;
 Fri,  8 Sep 2023 22:17:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694211455; x=1725747455;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/26tb1dvOyBxwuR8deEqD09tT5NhYJbzD40ZBFTvR9M=;
 b=PBalrWqwkX20xvMHHUeguS9n7V419eXa1UiTnxaYqRlecFYHTi+Xaf63
 5oc1OMwSrum6YmyHP01xl5R0jwuTgHgGy/AWmtxUuMr/ozX+UjGEiafPq
 qOvkBz/URYVQ+FsDz/cZ6WJ6LOeCo2KehMkCLbh6967amyo7ZbOLndpBI
 afd1K9tKgR6nqYj1HrD83sBjJB9/Mtis+5MuZKxdfb7loqb7N8McjIHHD
 8/iHZROlwAKLWKxd9YP5dhP050BW5MaiGZcq/SGUj1krXeFVO+/NrE9Kn
 deotDPlYRua99T4hGhuidFBZVUE1XaOEd8GQejo23jmE5ptdijHTchWwQ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="464128778"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="464128778"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 15:17:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="832804695"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="832804695"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 15:17:34 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 15:17:33 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 15:17:33 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.105)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 15:17:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HNlKSE62coqH5RxuHD7AbdDRvcEtpzbDZfI4KTnIR17bhq9vAGB6yvEPWk1eRlF+68lx1M+J5FBDjOGJfGj+E2Voh3UoeO7J8cT9TPmm4yTOF05VJg8O0wMCI+O+YTxgQY1QJDrRnYTO9fQU89ACkQCl8aUD5EgTuJuy8RHON3yOCmrYYtHarAIdpk2sRdPSYiA6n1dl8r9ubO/PvnnBg3xFmfgZzwZ4EW2we8kgiv8mHMRgxx++lYbmQtmaOCX67WLGxCjLw6YQHuhEuBC1vJp6qzv+mTmq6PJykJxXIucUaSPIJLqOkDmaUCzrPSrhyMBM2SvPij3L6e/QgymT7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lblj6nv5DtNSvO1pU+E1egHUrhnzkFi15oMJxKSWFqc=;
 b=fPBaQXSvWjKIx8STGzujyW1bGWXpoPOYeaXpWl6zSc4rpajayp6fs5KFcIrB1T9sJht6moOgRK1MNzUfyAjje/ItP65LuQ2FFan6R+u4OGQY88WDsCGI74KKOjVOTOtefEOmGng5u/tlfUm8ErchdviEjDxmqMskVqjI5hKMkqAuPNI7MfUa1gwW91cgv+jnIOqEgRqDBdVmRnGKEaRZRf+9WM3etQLARx+ZwpYZs6cRDoRuyUuXQ4l9f83Ol6thTb08rn0Zcts09LyNhHWkPO0i8S8Zv7IhF9Wgf9agwl6/ZWWlbi6J1FR3pTna0UQWJMknEqcdkzhxiLNl9TJpAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY8PR11MB6939.namprd11.prod.outlook.com (2603:10b6:930:59::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Fri, 8 Sep 2023 22:17:30 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 22:17:30 +0000
Date: Fri, 8 Sep 2023 15:17:27 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230908221727.GW2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-26-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-26-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY3PR05CA0038.namprd05.prod.outlook.com
 (2603:10b6:a03:39b::13) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY8PR11MB6939:EE_
X-MS-Office365-Filtering-Correlation-Id: 24c94000-c08c-4838-619a-08dbb0b96435
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: s8jWIFF8ac9KK8wipFWKAr5Pw6El8YcqcaZ3n7jW4e+44iN2Z/B/KEQZqG0a7tY+MOJiGrl6rAPko4WOkk7rC4bHlf2b0rkknAWTcQZ2ukPSB28/tJ5XlhCP4mcE58pfTRdOjh4ryFV6O4sfzbaUa9VmCnS5o+eznR7tPZTK7saLMPdRBXdcQ0/L8mzMm+HiZEIVep2zfBc2obnpW2hJRV/6SVNCaiHnvTJBYSzhk8r3TbWMJ5Y70ZiG35GmA7YC4ewXABmT8Db79LJ3ZughICDEC/XtjLRW9zRhh0nCi5R0a6ZhVOEtetgUBk4kefSNMkXv4IvGmv6ltDFowigfk0UdUQbwyxudk4RcXN0mMR4wsT856o/YK3UOuUsbNDZF8aJH+Hx+AmuG6fa0teIkUB6tAoAwx7W2z/LjVHfYmVJHFEEp2IQ0flalLDQGhyfkG0uBurqNEs73J/z9h9B1Ghg/eCEaA5BbnvVZ+YjC/1WHKj9waKMslQ1AyoKt4jH4dq5StwaD6R97xcd31G6vfv/9XqL9i7STw+PIDW+VL3fpBnCYU/IvWBLf/KfYPzpV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(376002)(396003)(136003)(39860400002)(1800799009)(186009)(451199024)(6666004)(6512007)(6506007)(6486002)(41300700001)(478600001)(83380400001)(1076003)(26005)(66946007)(2906002)(66476007)(66556008)(316002)(6636002)(4326008)(8936002)(5660300002)(6862004)(8676002)(82960400001)(33656002)(86362001)(38100700002)(450100002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hf6jOB/hRw/OjTahPSnZlUin0TSo5xcGnW6pe+hJ+0Sf492ev96VRz5fnnhP?=
 =?us-ascii?Q?3wB3b1QQvMiM4/D7BVzYBrERpVZP0sHnR11pXEG8jAwTx32cmAYwTGRlW8nI?=
 =?us-ascii?Q?I8ZlCxnm/+naf4o5TW8Z6WbhT8/4jZWHYS/qAqW46FTzN3SS/YieqCknywv1?=
 =?us-ascii?Q?6lKqbBcIvyvwlHJGPDEUFdlzr5BlcyuVN/fKpo/6vZFpMByrA6udZBXt4kTC?=
 =?us-ascii?Q?r+HSSPf7YXmOdjd353v8+jtvLSw+NtH4aPtjGxX1vRDeHVBYKrI1Vii/PHwI?=
 =?us-ascii?Q?Y/bu2j+n6/l6on5kjX/7qxA+NPeiSjsfReKr+fy4nfTGHy/nZrUtKmC1iL+c?=
 =?us-ascii?Q?KpclN3aBZRPBBS9feiXbjs02n1jvJ29zhJ52C6B2tNe1A68ued5F/ONGpP+I?=
 =?us-ascii?Q?K/Z71xw5XWVTHUgzzH0tbUPIBi0XqL17PbFJWrl3VPD7PAOTYNMu3oCzSY48?=
 =?us-ascii?Q?Y2FTkuqn1xXbY6NFf7NcEooeXpqspGq7h3DaKTv16dywbopb3q+t5XXYGnj8?=
 =?us-ascii?Q?DeinFmw/k+TMR49hFVEry1pnHytoyzpMQxyThsRWrK5adYoo4bKoHPPJNPtH?=
 =?us-ascii?Q?1ADGIc1EWFu2a0Tn5GymbPlA1IFSv8j6JTNEs5KzIv6gbXYPK4kBd/e/InOD?=
 =?us-ascii?Q?Gno/LhnwL8h0qu2G9b3mqWKzZExqixUHHS5fGow8XwcOGtHFMOXMeiORUPpJ?=
 =?us-ascii?Q?N02pJLd00U81d9wyg9Bj1TnEmf9/25tyzbx+VY+OAxpF1HZ88bNcTviXoIBe?=
 =?us-ascii?Q?WwjYkVSEbOUWzoIM4vrq4ZQATqra3vHapO0BQo3Zx3SakHlX+5+CgeTErSJG?=
 =?us-ascii?Q?WP6+8LQe1vDaRUjRo6RrvoInywyGbB1adI3mKPrAiFtBoNHXdCZqlOy4QlnO?=
 =?us-ascii?Q?FNtp6LOxbW6jFzd4XCMF8hcTYuwqioJ8c5KAkKiG2+TB3Q7hzg3SNzWarYgQ?=
 =?us-ascii?Q?tBTqZWlJIptNKB1QZGSMgWxtHnvpHyMToZjdcczoEBAaXtNvOIaLcK2YMovQ?=
 =?us-ascii?Q?KZQXIlT1MbyBIMawrzJ7TPXFqLkhEOBvTA6QukbQErjgNyvDI9eRv9uzeRbc?=
 =?us-ascii?Q?wjwuthim5vYh6xn97YOIzkkcAZpfOXLpMbEjXqnOoGu4F5a4oW8ODb5qjYgA?=
 =?us-ascii?Q?lYdzI6G9murxWP2aPmVvMV41/39ejlgildCBI9c/ev1Mihx8bPWK4EHoJued?=
 =?us-ascii?Q?TUZrgbUULTYL+oR2VindRMxNJTAO4jAiZCUxPD4j+bj7wqoHu8zWfsrOWG+l?=
 =?us-ascii?Q?VeG0TxY63Vru+mLPhZ8BN7ZkXqLJrnwNCrSLsJ7srb+J2k1rb9wyC0C1fhCZ?=
 =?us-ascii?Q?bIhTn454MnMPkQzHLZA4BmppjDq/aO8TUSigbZuhoklqX0k2bakguyS706KM?=
 =?us-ascii?Q?sVL2rnS43AaWIfCmrKw54aMjSJLFPtZKQVhjRF36FsIPPTroUA95KBTDTEyr?=
 =?us-ascii?Q?0WHSbA++rXSr7zsPHrDhXUXzVi6ZI5Gu+wtuQNzgdVnAoPc9Psg1fxehDvcL?=
 =?us-ascii?Q?AJSDK0N7tebjXNHrWw3Snc2VKz/XnFfboO8rnTPr73t1TjSJnULQLA45n3+0?=
 =?us-ascii?Q?8fAlmGmVoggAjNtuuzOg8z9R8vy7Cdgedjg5TW0KUMTdyhhi7lkwSS8pLW4B?=
 =?us-ascii?Q?wQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c94000-c08c-4838-619a-08dbb0b96435
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 22:17:30.1080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1gJ3vGkeCAJA+zI+3z4Pf0finCLwDYbVqzqedZE2UPAV0pHUDqyKcr0lbZl8ZRpa5AG967EDUW9iG/gFZdVTeez5KWS0yzPhl2ALINelNvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6939
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 25/27] drm/i915/lnl: Add support for
 CDCLK initialization sequence
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 07, 2023 at 08:37:55AM -0700, Lucas De Marchi wrote:
> From: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> 
> Add CDCLK initialization sequence changes and CDCLK set frequency

The title and first line of this commit message don't seem to really
match the patch anymore.  The changes here aren't about the
"initialization sequence" (which I assume refers to something that
happens suring driver init), but rather to the steps we take every time
we reprogram the cdclk.

> sequence for LNL platform. It's mostly the same as MTL, but with some
> additional programming for the squash and crawling steps when
> when a change in mdclk/cdclk ratio is observed.
> 
> v2: Remove wrong changes for bxt_cdclk_cd2x_pipe() (Matt Roper)
> 
> BSpec: 68846, 68864

Related to the above, I don't see anything on 68846 that relates to the
changes in this patch.


> Signed-off-by: Ravi Kumar Vodapalli <ravi.kumar.vodapalli@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 51 +++++++++++++++++++++-
>  1 file changed, 49 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 677a50c28dae..dfefc971b733 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -40,6 +40,7 @@
>  #include "intel_psr.h"
>  #include "intel_vdsc.h"
>  #include "skl_watermark.h"
> +#include "skl_watermark_regs.h"
>  #include "vlv_sideband.h"
>  
>  /**
> @@ -1811,6 +1812,47 @@ static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
>  	return 1;
>  }
>  
> +static void lnl_prog_mbus_dbuf_ctrl(struct drm_i915_private *i915,
> +				    const struct intel_cdclk_config *cdclk_config)
> +{
> +	int min_throttle_val;
> +	int min_tracker_state;
> +	enum dbuf_slice slice;
> +	int mdclk_cdclk_div_ratio;
> +	int mbus_join = intel_de_read(i915, MBUS_CTL) & MBUS_JOIN;
> +
> +	mdclk_cdclk_div_ratio = get_mdclk_cdclk_ratio(i915, cdclk_config);
> +
> +	min_throttle_val = MBUS_TRANS_THROTTLE_MIN_SELECT(mdclk_cdclk_div_ratio);
> +
> +	intel_de_rmw(i915, MBUS_CTL, MBUS_TRANS_THROTTLE_MIN_MASK, min_throttle_val);
> +
> +	if (mbus_join)
> +		mdclk_cdclk_div_ratio = (mdclk_cdclk_div_ratio << 1) + 1;
> +
> +	min_tracker_state = DBUF_MIN_TRACKER_STATE_SERVICE(mdclk_cdclk_div_ratio);
> +
> +	for_each_dbuf_slice(i915, slice)
> +		intel_de_rmw(i915, DBUF_CTL_S(slice),
> +			     DBUF_MIN_TRACKER_STATE_SERVICE_MASK,
> +			     min_tracker_state);
> +}
> +
> +static void lnl_cdclk_squash_program(struct drm_i915_private *i915,
> +				     const struct intel_cdclk_config *cdclk_config,
> +				     u16 waveform)
> +{
> +	if (cdclk_config->cdclk < i915->display.cdclk.hw.cdclk)
> +		/* Program mbus_ctrl and dbuf_ctrl registers as Pre hook */
> +		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
> +
> +	dg2_cdclk_squash_program(i915, waveform);
> +
> +	if (cdclk_config->cdclk > i915->display.cdclk.hw.cdclk)
> +		/* Program mbus_ctrl and dbuf_ctrl registers as Post hook */
> +		lnl_prog_mbus_dbuf_ctrl(i915, cdclk_config);
> +}
> +
>  static int cdclk_squash_divider(u16 waveform)
>  {
>  	return hweight16(waveform ?: 0xffff);
> @@ -1913,8 +1955,13 @@ static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	else
>  		clock = cdclk;
>  
> -	if (HAS_CDCLK_SQUASH(dev_priv))
> -		dg2_cdclk_squash_program(dev_priv, waveform);
> +	if (HAS_CDCLK_SQUASH(dev_priv)) {
> +		if (DISPLAY_VER(dev_priv) >= 20)

Since everything going forward is expected to support squashing, it may
be cleaner to flatten this into a single if/else ladder:

        if (DISPLAY_VER(dev_priv) >= 20)
                ...lnl_cdclk_squash_program...
        else if (HAS_CDCLK_SQUASH(dev_priv))
                ...dg2_cdclk_squash_program...

Aside from the commit message/title and the ladder flattening, the
actual logic of the patch looks correct, so

        Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

with those fixed.


Matt

> +			lnl_cdclk_squash_program(dev_priv, cdclk_config,
> +						 waveform);
> +		else
> +			dg2_cdclk_squash_program(dev_priv, waveform);
> +	}
>  
>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>  		bxt_cdclk_cd2x_pipe(dev_priv, pipe);
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
