Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACB27588072
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Aug 2022 18:44:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A50A691A5B;
	Tue,  2 Aug 2022 16:44:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA20118BA23
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Aug 2022 16:43:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659458631; x=1690994631;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=DJisnkkHZdlAX3WduTMShfswtKzNyhIWCmbFRmosAHY=;
 b=jd0xO0PtLl4QlqtsIuVBqXES/zr8Vn0NjfdJvzgatiltOxWk3lkn6pTa
 xkkkcHo9UtHLlwwY0aDtLrc6/FcKwo8hy1MRPKAZaoDnsZ7umN8olOKTw
 L/FtJAYVDuNp2N2NU7a7Y9L0gQb/HSSHuIWtWrrWdSaE2FH6zj5BhWwue
 SyUD7BoQH50XS8G/e1Mknf96hyYwJcJM+PSiMxIqIvEIgFKeuqx3LqdWN
 NW+KbPJDkLC4DNjbP7Xd1ts8jm9Gsyge4ZW9CdjXo7EY+7wPVo/t6euIt
 yQNJjabWVhhuHfOeIVRdo9Q46k304idDNg+Itw9XXI2DYe9mlyv8RVFzX w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10427"; a="272508240"
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="272508240"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Aug 2022 09:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,211,1654585200"; d="scan'208";a="599356755"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga007.jf.intel.com with ESMTP; 02 Aug 2022 09:43:50 -0700
Received: from orsmsx606.amr.corp.intel.com (10.22.229.19) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 2 Aug 2022 09:43:50 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 2 Aug 2022 09:43:50 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 2 Aug 2022 09:43:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nVq4jznaFY/44YjU/TH8U8kZbEi/LTSZHxjyUf0OZOAwKBIJ8tU3cicwCwZ+tkErqx86YJM99ipRCDRTzof9hQ5lUPNVWd/OlcsGbmF0II+e6A/H8yZK0FAtbguSjJvrzk1dTg7fXKTFjTQ+x4TKDAYpyPuWu4mQOO58s+r8Zp03luL3HzPc40X5g1DZzT9nA7MyVahbyV967BNLiL2qXesIFp7U7GSsrqP1cW6XfCltSHn50LLJ8/4jo0ahTQ7RH5QBdEpejDlstVon7qcnd/8kwKMbqBxg7bGJgeVSgPqDIrKL6xRQcp4UiK2GdvbulcJuTBE5IHozSdY6Zn7Pvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=z70hE5lmai9w/VvANaHExjxdwz4SLEmQrYRTjDLpeeU=;
 b=XvuO5Qj8rV1xGcUUT7YOijrvm8e4C/xnGEytKc5iUcPe5SmOhn/pMh/kPhE8I43IkrfomWMAUTnQbeyWBeFJUNEr3/e84MhK32h9RAdgAOAj0yppO1wpZU1sVwmtFySJqUQikvLz6SsbPHIlyDYNMjglEUowiGEmDAfwhz7UCcsts+uEmHUZigjUohCtGj7mXUBeW6JjkjLRs4bz9frCduHittDRV5wo7G3m+5hGYO/LT5VCYZxXdGbCfOPudCu2x558qnUgZ6pkgPhbMyhbPr/AmM6Nr01NIGvUztkxXKUdxEdUYAdyH54OqAnJ9YaMT2aMi6+kn4DuJon7hDNS3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by MWHPR11MB1503.namprd11.prod.outlook.com (2603:10b6:301:f::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5482.11; Tue, 2 Aug
 2022 16:43:48 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::4fe:1ef3:4c6c:4b68%10]) with mapi id 15.20.5482.016; Tue, 2 Aug 2022
 16:43:48 +0000
Date: Tue, 2 Aug 2022 09:43:45 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
Message-ID: <YulUQSGSDjSPkMA9@mdroper-desk1.amr.corp.intel.com>
References: <20220728013420.3750388-1-radhakrishna.sripada@intel.com>
 <20220728013420.3750388-16-radhakrishna.sripada@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220728013420.3750388-16-radhakrishna.sripada@intel.com>
X-ClientProxiedBy: SJ0PR05CA0101.namprd05.prod.outlook.com
 (2603:10b6:a03:334::16) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7105941f-e148-41f2-f022-08da74a62bfb
X-MS-TrafficTypeDiagnostic: MWHPR11MB1503:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VAuHkaDf48mGO8aiA0ja+s/UKyNtfrgtKmMjKNuPDeVb3ZvOGSMcv9DtLkwNIAb2Cp4S+omIw9HcxOweXY8ZzB+3S7Vjpuwu9XRc1w0fZsBf2cKJs6Roi1WfZM0vhaKnQZe6sAAQ4nV8e+4IMaLuMA+xbeL2bOc4Jnly94+pNlDiOYy0F2wqn5jc850e2rDGzX005tv6pfg/T1R3ls/mD1w3a3b+TOYNRng1Lhb7/HhoUOTmCbwMPzFA2rSz3XtcA/5imMsO2t03Kljzi6zsoZo6BEnnZHJ9q72ofUp8w/NnBGqxeUfscmPcGzLGTMLml30Unj0XMNCqNJ7IsrdvUKhWTBaoC4a/nRt0xe1UoG9vMvl+aj4vMt9AL3d+rTg0Wf1+3cUhzc5Ndl1E03PQBEqh21IvKzpk5xiYMdva5f+zg+iDky/PBFhpxSFRcdf7jJbuyPneakVkBubVNcm5ZWAU8z5HimlWUmL/zVkFdrGuHpUfjFwHmJI37Jzwtu8KimWVje2IeWMO5jVW26uEOQVgplTTmu2iIYNuPLY71udFjrtTXrYwloAbJSpwBMtkrvb+RYlQgi+hgjATbAGcM4nfVjOfsgK1kj2jn2fV4j0u8OlVSG96SZnB4O+qsy2jwFeIkc4NBzVPhdBFrO82PRaiaEBIOB7CVo5nHSd+NvqthzEMyJnoPEgZq9g1jR4DY97Cmszq0dmeyQg6fYmc784U8i12SQ93BaTKBmFpFsFieAbzFBTuZc79L16n9bQm
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(39860400002)(136003)(396003)(346002)(376002)(366004)(83380400001)(82960400001)(66946007)(6506007)(4326008)(5660300002)(15650500001)(8676002)(6862004)(38100700002)(66556008)(26005)(2906002)(6512007)(316002)(6486002)(186003)(66476007)(6666004)(478600001)(6636002)(86362001)(41300700001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?sDqhKmxnkOxvIPfoTH6agf9af4TwAMX0GxKZ5sBxpr6KqyEGiUUes2eBzE?=
 =?iso-8859-1?Q?6+6zq80mCJfRZAozVnW21C0TT81FdBfDyrSEp3VqLrOLyveNyl+ZlVAScJ?=
 =?iso-8859-1?Q?Hr9WPIV4ZML/2QTOqpzyTfdareiQwhV53Eqp55p/wejoVtYKsgiT99DWEH?=
 =?iso-8859-1?Q?NHAyh7ShdLmLaDYiJ8jKrxK6p/0rnwQxFD5mfcJPx9t5Ep2C+/yp2uukf+?=
 =?iso-8859-1?Q?92Ztt09PV4xsCk+oVhVWO3i0Eya2skcbzx3xc7pwXrIGMOcA8wwxffJCt+?=
 =?iso-8859-1?Q?0zllmcLakCHY1pG4Xy94zUP9qg3+2fTgQvGO4C1uE0la6op8/aJxDsZN/R?=
 =?iso-8859-1?Q?LOaZCfYAT7rfXHBIZgva4FZEENXWtb62v56mQXqXU1zrEUBuLen1JO9uVk?=
 =?iso-8859-1?Q?MeJxwoH/Ukg1fWDggeBt4pa6dRAYVbwX2GAG5QgI/297H/1DFvQTAqTF2Q?=
 =?iso-8859-1?Q?B9Ag3gSoRPJ/umjOnlFCeHoCSxmUEOktdHg94G0DntBKpJ36+Gwq66Y4GS?=
 =?iso-8859-1?Q?ewQI9C27/2penOMoWA7M9y271pcF7YgvW+gMgx7F6C47v2/4U4OCWfG/u1?=
 =?iso-8859-1?Q?o2cyX3gTyGSK6z/WEFU7cXWPpOmJWBFV3drxyVBOMiBjIQLIUHrF7sOUb4?=
 =?iso-8859-1?Q?0cAi7W3gkUeEIr/LYMBZ6mMr6bUBhJx2SFRY84JfQgheCE73KC6saZeMLR?=
 =?iso-8859-1?Q?9suLQIyzuX8YyRwKHdkmj8hzBIj2ccsFQYhiqv0h1017JXJjMsCZqlUJu7?=
 =?iso-8859-1?Q?DFJcwJw2A3y0EWNx1FgtL7sdC/rZy+LKetprfT+CwMwRQTQOi4+24OBduw?=
 =?iso-8859-1?Q?lTRHsLzPu0Ek7ZxAPqbDcgiiEzLAVrG+o5la/Bqa/JXpX0HMMMZ/GYBh+A?=
 =?iso-8859-1?Q?caXjelN3PxZ5fMlvNcwRL5R7VQa/hX8/SbRA1dVCPbU4Lf9kyhZ8UgqrwN?=
 =?iso-8859-1?Q?hlD02KzZeihcRG1FQf5ZHzlJeFulP0h8df0Tl450vWyvk2aL84zB/i4y5E?=
 =?iso-8859-1?Q?JMhIS1+2T6/RDZ0iv4sGZ3Mx3T6P1l3z/fq5rS0Omfa39WYOkKcV4YomXn?=
 =?iso-8859-1?Q?Mvmve5qkMCZV2r4ubXQp6iQFQQ0tuxZvUG06gp303LVHhpMx3vYGikJe9s?=
 =?iso-8859-1?Q?VuILiCzxrHe7yS+3q2/bcEk3BjaK2yLQVeozM3t15sN7w8zX7wdwsoxwka?=
 =?iso-8859-1?Q?MgslPrq9EehgWAih2bXs55WIUHk8f7bEQzUia085JB6ytU748vDQSOt4xh?=
 =?iso-8859-1?Q?6BQc/CXIFDHpcDuaNbm9JrI8VhzR1xKw07rWq6nXc0BPls1w/vX6LdjFve?=
 =?iso-8859-1?Q?wxO76Fn3raAD+JOWULZmb1Qu1BXkJujA8pcuic513cN9pDaJm35NDZBepr?=
 =?iso-8859-1?Q?Owtf3vh0/1xelkOlRVzE8JJx6zgXILi2bJ7Y7UfhQqhTvwUDPwNrlS8vcy?=
 =?iso-8859-1?Q?JePwzB0ExQI4zsgD5im8btbJ4eXXh+Jnqfrb9LO4Tq6lCF4v8N/5aZiXWe?=
 =?iso-8859-1?Q?qn2ISobfLomIcny8xn55myj5omaS9MISX6gvrXdaQLlv6czg9zsTOP78VJ?=
 =?iso-8859-1?Q?Y1bt6SVUX7JdLjY0P54lNhAdeCJUQms4SyZUpq7GipwSq8N+z72sRWsM9I?=
 =?iso-8859-1?Q?G8HGcki+AzEX9x/YxtbV/CLpFpD2XA45s7+0iBEW3LJ/b7YyB0ihcvrA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7105941f-e148-41f2-f022-08da74a62bfb
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2022 16:43:47.9389 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: guJRs7YcGtfEcC8Z85JGr2zz3OEEiwKxm/79s0xtk5z+uQK3MhvKLnwrQDQDXddwfFdIf6IN3ThyyT2h7cCchEBjb8zJOTULyyytzqdndc4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1503
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 15/23] drm/i915/mtl: Obtain SAGV values from
 MMIO instead of GT pcode mailbox
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

On Wed, Jul 27, 2022 at 06:34:12PM -0700, Radhakrishna Sripada wrote:
> From Meteorlake, Latency Level, SAGV bloack time are read from
> LATENCY_SAGV register instead of the GT driver pcode mailbox. DDR type
> and QGV information are also tob read from Mem SS registers.

There seems to be a typo here.  I'm not sure what it's trying to say.

> 
> Bspec: 49324, 64636

49324 doesn't look correct.  Did you mean 64608?

> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Original Author: Caz Yokoyama
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_bw.c | 49 +++++++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_bw.h |  9 +++++
>  drivers/gpu/drm/i915/i915_reg.h         | 16 ++++++++
>  drivers/gpu/drm/i915/intel_dram.c       | 41 ++++++++++++++++++++-
>  drivers/gpu/drm/i915/intel_pm.c         |  8 +++-
>  5 files changed, 110 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i915/display/intel_bw.c
> index 79269d2c476b..8bbf47da1716 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.c
> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
> @@ -15,11 +15,6 @@
>  #include "intel_pcode.h"
>  #include "intel_pm.h"
>  
> -/* Parameters for Qclk Geyserville (QGV) */
> -struct intel_qgv_point {
> -	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
> -};
> -
>  struct intel_psf_gv_point {
>  	u8 clk; /* clock in multiples of 16.6666 MHz */
>  };
> @@ -137,6 +132,42 @@ int icl_pcode_restrict_qgv_points(struct drm_i915_private *dev_priv,
>  	return 0;
>  }
>  
> +static int mtl_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +				   struct intel_qgv_point *sp, int point)
> +{
> +	u32 val, val2;
> +	u16 dclk;
> +
> +	val = intel_uncore_read(&dev_priv->uncore,
> +				MTL_MEM_SS_INFO_QGV_POINT(point, 0));
> +	val2 = intel_uncore_read(&dev_priv->uncore,
> +				 MTL_MEM_SS_INFO_QGV_POINT(point, 1));
> +	dclk = REG_FIELD_GET(MTL_DCLK_MASK, val);
> +	sp->dclk = DIV_ROUND_UP((16667 * dclk) +  500, 1000);

What is the "+ 500" for here?  You're already doing a DIV_ROUND_UP, so
this doesn't seem right.


> +	sp->t_rp = REG_FIELD_GET(MTL_TRP_MASK, val);
> +	sp->t_rcd = REG_FIELD_GET(MTL_TRCD_MASK, val);
> +
> +	sp->t_rdpre = REG_FIELD_GET(MTL_TRDPRE_MASK, val2);
> +	sp->t_ras = REG_FIELD_GET(MTL_TRAS_MASK, val2);
> +
> +	sp->t_rc = sp->t_rp + sp->t_ras;
> +
> +	return 0;
> +}
> +
> +int
> +intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +			  struct intel_qgv_point *sp,
> +			  int point)
> +{
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		return mtl_read_qgv_point_info(dev_priv, sp, point);
> +	else if (IS_DG1(dev_priv))
> +		return dg1_mchbar_read_qgv_point_info(dev_priv, sp, point);
> +	else
> +		return icl_pcode_read_qgv_point_info(dev_priv, sp, point);
> +}
> +
>  static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  			      struct intel_qgv_info *qi,
>  			      bool is_y_tile)
> @@ -193,11 +224,7 @@ static int icl_get_qgv_points(struct drm_i915_private *dev_priv,
>  	for (i = 0; i < qi->num_points; i++) {
>  		struct intel_qgv_point *sp = &qi->points[i];
>  
> -		if (IS_DG1(dev_priv))
> -			ret = dg1_mchbar_read_qgv_point_info(dev_priv, sp, i);
> -		else
> -			ret = icl_pcode_read_qgv_point_info(dev_priv, sp, i);
> -
> +		ret = intel_read_qgv_point_info(dev_priv, sp, i);
>  		if (ret)
>  			return ret;
>  
> @@ -560,7 +587,7 @@ void intel_bw_init_hw(struct drm_i915_private *dev_priv)
>  
>  	if (IS_DG2(dev_priv))
>  		dg2_get_bw_info(dev_priv);
> -	else if (IS_ALDERLAKE_P(dev_priv))
> +	else if (DISPLAY_VER(dev_priv) >= 13 || IS_ALDERLAKE_P(dev_priv))

ADL-P is display version 13, so it's already covered by the first half
of the condition here.

But this doesn't look right in general.  At the very least MTL has a
deburst value of 32, so we don't want to re-use ADL-P's 16.  I didn't
check all the others, but there may or may not be other differences.

>  		tgl_get_bw_info(dev_priv, &adlp_sa_info);
>  	else if (IS_ALDERLAKE_S(dev_priv))
>  		tgl_get_bw_info(dev_priv, &adls_sa_info);
> diff --git a/drivers/gpu/drm/i915/display/intel_bw.h b/drivers/gpu/drm/i915/display/intel_bw.h
> index cb7ee3a24a58..b4c6665b0cf0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bw.h
> +++ b/drivers/gpu/drm/i915/display/intel_bw.h
> @@ -46,6 +46,11 @@ struct intel_bw_state {
>  	u8 num_active_planes[I915_MAX_PIPES];
>  };
>  
> +/* Parameters for Qclk Geyserville (QGV) */
> +struct intel_qgv_point {
> +	u16 dclk, t_rp, t_rdpre, t_rc, t_ras, t_rcd;
> +};
> +
>  #define to_intel_bw_state(x) container_of((x), struct intel_bw_state, base)
>  
>  struct intel_bw_state *
> @@ -69,4 +74,8 @@ int intel_bw_calc_min_cdclk(struct intel_atomic_state *state,
>  int intel_bw_min_cdclk(struct drm_i915_private *i915,
>  		       const struct intel_bw_state *bw_state);
>  
> +int intel_read_qgv_point_info(struct drm_i915_private *dev_priv,
> +			      struct intel_qgv_point *sp,
> +			      int point);
> +
>  #endif /* __INTEL_BW_H__ */
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 23b50d671550..d37607109398 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -8761,4 +8761,20 @@ enum skl_power_gate {
>  #define  MTL_LATENCY_LEVEL0_2_4_MASK	REG_GENMASK(12, 0)
>  #define  MTL_LATENCY_LEVEL1_3_5_MASK	REG_GENMASK(28, 16)
>  
> +#define MTL_LATENCY_SAGV		_MMIO(0x4578c)
> +#define  MTL_LATENCY_QCLK_SAGV		REG_GENMASK(12, 0)
> +
> +#define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
> +#define  MTL_DDR_TYPE_MASK			REG_GENMASK(3, 0)
> +#define  MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)
> +#define  MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
> +
> +#define MTL_MEM_SS_INFO_QGV_POINT(point, bitgroup) \
> +	 _MMIO(0x45710 + ((point) * 2 + (bitgroup)) * sizeof(u32))

Why not just use two registers, MTL_MEM_SS_INFO_QGV_POINT and
MTL_MEM_SS_INFO_QGV_POINT_UDW like we do for other things?  That would
also make it more obvious which of the bitmasks below apply to which
dword.

> +#define  MTL_TRDPRE_MASK		REG_GENMASK(7, 0)
> +#define  MTL_TRAS_MASK			REG_GENMASK(16, 8)
> +#define  MTL_DCLK_MASK			REG_GENMASK(15, 0)
> +#define  MTL_TRP_MASK			REG_GENMASK(23, 16)
> +#define  MTL_TRCD_MASK			REG_GENMASK(31, 24)

Minor nitpick:  we prefer high to low ordering for bitfield definitions.
Also, we prefer to two extra spaces (three total) between the "#define"
and the field name in the register definition files.


Matt

> +
>  #endif /* _I915_REG_H_ */
> diff --git a/drivers/gpu/drm/i915/intel_dram.c b/drivers/gpu/drm/i915/intel_dram.c
> index 437447119770..2403ccd52c74 100644
> --- a/drivers/gpu/drm/i915/intel_dram.c
> +++ b/drivers/gpu/drm/i915/intel_dram.c
> @@ -466,6 +466,43 @@ static int gen12_get_dram_info(struct drm_i915_private *i915)
>  	return icl_pcode_read_mem_global_info(i915);
>  }
>  
> +static int xelpdp_get_dram_info(struct drm_i915_private *i915)
> +{
> +	u32 val = intel_uncore_read(&i915->uncore, MTL_MEM_SS_INFO_GLOBAL);
> +	struct dram_info *dram_info = &i915->dram_info;
> +
> +	val = REG_FIELD_GET(MTL_DDR_TYPE_MASK, val);
> +	switch (val) {
> +	case 0:
> +		dram_info->type = INTEL_DRAM_DDR4;
> +		break;
> +	case 1:
> +		dram_info->type = INTEL_DRAM_DDR5;
> +		break;
> +	case 2:
> +		dram_info->type = INTEL_DRAM_LPDDR5;
> +		break;
> +	case 3:
> +		dram_info->type = INTEL_DRAM_LPDDR4;
> +		break;
> +	case 4:
> +		dram_info->type = INTEL_DRAM_DDR3;
> +		break;
> +	case 5:
> +		dram_info->type = INTEL_DRAM_LPDDR3;
> +		break;
> +	default:
> +		MISSING_CASE(val);
> +		return -EINVAL;
> +	}
> +
> +	dram_info->num_channels = REG_FIELD_GET(MTL_N_OF_POPULATED_CH_MASK, val);
> +	dram_info->num_qgv_points = REG_FIELD_GET(MTL_N_OF_ENABLED_QGV_POINTS_MASK, val);
> +	/* PSF GV points not supported in D14+ */
> +
> +	return 0;
> +}
> +
>  void intel_dram_detect(struct drm_i915_private *i915)
>  {
>  	struct dram_info *dram_info = &i915->dram_info;
> @@ -480,7 +517,9 @@ void intel_dram_detect(struct drm_i915_private *i915)
>  	 */
>  	dram_info->wm_lv_0_adjust_needed = !IS_GEN9_LP(i915);
>  
> -	if (GRAPHICS_VER(i915) >= 12)
> +	if (DISPLAY_VER(i915) >= 14)
> +		ret = xelpdp_get_dram_info(i915);
> +	else if (GRAPHICS_VER(i915) >= 12)
>  		ret = gen12_get_dram_info(i915);
>  	else if (GRAPHICS_VER(i915) >= 11)
>  		ret = gen11_get_dram_info(i915);
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index fac565d23d57..f71b3b8b590c 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -3698,7 +3698,13 @@ intel_has_sagv(struct drm_i915_private *dev_priv)
>  static u32
>  intel_sagv_block_time(struct drm_i915_private *dev_priv)
>  {
> -	if (DISPLAY_VER(dev_priv) >= 12) {
> +	if (DISPLAY_VER(dev_priv) >= 14) {
> +		u32 val;
> +
> +		val = intel_uncore_read(&dev_priv->uncore, MTL_LATENCY_SAGV);
> +
> +		return REG_FIELD_GET(MTL_LATENCY_QCLK_SAGV, val);
> +	} else if (DISPLAY_VER(dev_priv) >= 12) {
>  		u32 val = 0;
>  		int ret;
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
