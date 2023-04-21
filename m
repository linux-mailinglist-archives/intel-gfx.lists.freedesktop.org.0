Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3F6A6EB5B9
	for <lists+intel-gfx@lfdr.de>; Sat, 22 Apr 2023 01:25:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 355FB10EF1E;
	Fri, 21 Apr 2023 23:25:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC9BF10EF1E
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 23:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682119529; x=1713655529;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=x5ARQC0QGEEx9einCO7ZKvumJQJsmXkKjvdfj7J5KbQ=;
 b=T5iKpwuScXgztht9UTL4+X8ZtCnBGo8fipLsQwCxc/pHmUj6exJ0bEY+
 TOz7qkEo87SHbF4g8VcC+92taPJoJ8SN60zGMnRI+CXlf+Hhu0vdhoDq2
 vBF0zhcaeGg4vT0D1y1G01INndd8IH0rRz8COQHfHOlJDr0jBRdjSHE93
 yVLsPvuip1XvAIF5kScX1SIfrJI1Wk0/eQbAcSHP51VXyhxPD8EyV/GB9
 8bxh0eVQ2aXmWRYb6E3NVgA6EYtuU+6M33yQ2WdQm5tnWXGv6ZhohUo2J
 ixklQw2M5qfYa8WJcx55FaEN2aEvWk17Tb0nnqqugyyCbfE8HrFe2w9kZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="326431322"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="326431322"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 16:25:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10687"; a="695099877"
X-IronPort-AV: E=Sophos;i="5.99,216,1677571200"; d="scan'208";a="695099877"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 21 Apr 2023 16:25:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 16:25:28 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 21 Apr 2023 16:25:28 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 21 Apr 2023 16:25:28 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 21 Apr 2023 16:25:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LknhwVklcv8ED3cT0SFPdK/UN+hj2RTdRUjOFcvRrvxeDKiEfLApFo8fm/rppyCVtfyP3jaGdnwRx5sqnW9OLrJ9p8qr0XZ1pVZYM8LoF5O8ml9AY+Zrqm/yAXp+29m98f/R/EQ9A7yF+Ef4b4lkaRARPXzGadmbSSQm5khERsNr1Uu3kz+5kM1SH+V0OxDf9Ep9nlOGH4wWGKtEP7or9eoibtmY02X5TLA8hj1Ls0nMtLQzuoJIroFYgrAFdmBB/tnNaHUPL8id0Ri/8vIqfXzMlKZRYMzHGkBTHxS9vActKbBFV8QB6zTNzcE7BvBenh0nKtkngK5k4ZczzPQTZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jmK7VbM5HVBTAUq0Bo/FsJdL9BrflWp+ZGnlA8UvHxs=;
 b=K2Wx1tsJrM+ZvrXSArXNhAlKcHswHZtCjDr3av9YvlGDer5IbOeAniaGq0+tMY9FjawjJNTgRaiXUR+OjKMGub+r8DroIprGZFSQG4g06rjxxrRCymUj3d1fUXicv1o92+g31MjhMFcmJoB45atFeVXtpLmBj+vjdO5Rd7aTigLo9q0/hBWbPrIwzIIVj1A3BgPxpl81QZDN1NNnDKXX4OmLa4R6yILbsRr4ChvdjwoiRlizuh/vYl3ziSdct7c+H7lOypS1o2o1S8ZKEuL2NdME5RzxpndNAaVtYh93Z7g6ZC2vMRjQXRqvSvTBXOVbf6GSyOH66+avM8F9NI8nLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH0PR11MB5126.namprd11.prod.outlook.com (2603:10b6:510:3a::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6319.22; Fri, 21 Apr 2023 23:25:25 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.022; Fri, 21 Apr 2023
 23:25:25 +0000
Date: Fri, 21 Apr 2023 16:24:19 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEMbI71K04wkymU7@invictus>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-2-mika.kahola@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230420124050.3617608-2-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR05CA0062.namprd05.prod.outlook.com
 (2603:10b6:a03:332::7) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|PH0PR11MB5126:EE_
X-MS-Office365-Filtering-Correlation-Id: 8d43dd9b-0342-47b6-ed8b-08db42bfaf41
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ZP0YlfmnDO/cKss3GRE18iYspuOf3+n3OnHLl0UowHW/IMHEksutA7Kx3M8GR6DjYSZrSI5oAGgmMQVKifqjIzpQ/k9vBK//JxDRWIpb55jA1s60nW4VECsjzdmO4MFVS5bx5cZwcs5d/pzwe5FOXB2CI/fpj+DR5UEdgpG5cUfHwup8/1v9xAL6PigMjFD0Fo8pspvWLMTei7J6MbEq+tA4puA3w80Wy0nBII/02tOZjf/ovgrKbFirGUI7fHG99e/BuDiQwz79e06L0ct+SIsx0QGCSj4WhqvOPQPhVZd5Qs2mKZqtrqU+rggqI+0zBl1K45hRd8lRTsc9xPpR560hyjN4Yu4G3EeYN92C8tQepvSUwVjIDuMoJEsPY8IoHdg8ZS8UaKAC26KvWFQKxNopY3oPBWHWI8BAo/loejcEtRc1DING8+GS95cR7uClJSHPZAEFM80oV2PS4/7GutSGujS0nJ7kmLXIMtTpasBJ9VG6J27ZsMnku3TxUZdLLBE5uLGBYmzRCBkWDe905tGvgLru5p0L+OvAaL5qA3YCqlTucB63UDJlXFQTDcjB
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(136003)(346002)(396003)(366004)(376002)(451199021)(478600001)(6636002)(38100700002)(44832011)(6862004)(5660300002)(8676002)(8936002)(66946007)(66556008)(66476007)(2906002)(30864003)(41300700001)(82960400001)(316002)(4326008)(6506007)(6512007)(26005)(9686003)(86362001)(186003)(33716001)(6486002)(83380400001)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?hTtdvrujDGIu2DQIy/RlTyK+c052LO1yx2LCMCOZ5Wm98r4/95A+jGAibj?=
 =?iso-8859-1?Q?BhpUBHO0n0WnSyhYkjga0CfNeuZ0Uv8yTuhb/WHbJfRrmqGKAnccUKRZT3?=
 =?iso-8859-1?Q?ETGJwbsqSwpk0FBM8mtpoNt/jnrga8l4Vpr6yhC2pgDg8uusA4ApXZMzma?=
 =?iso-8859-1?Q?18gTt9HTU4Q0tgtEhnKUaU3sTOqjudvhJ07GrY+o+Qdz7fK9ytig3dRQnh?=
 =?iso-8859-1?Q?lG2ttXNmt+Ab9dXVTcIxCQC/mKEdMfNxOfgTBVEGFmQd2MJ8BUFBWxpyVA?=
 =?iso-8859-1?Q?x0p11I1jw6OwklvxQZr8myr4c9h9CBntuSPSJxO2GkuBrqkyQlTl3TchW2?=
 =?iso-8859-1?Q?6yVxmlAJEAiMSKhAC+dwctN4Yv/uqtTcspXlZBYQxTNuwpKDYHnMsSuNx0?=
 =?iso-8859-1?Q?GbmOiu57G1vmDt9qby2iYfzL4auZHfox1MJqs8Guxiok3SF/xl6qp6GZe1?=
 =?iso-8859-1?Q?P6/K9tmyFdAUp9skWPE7owumXtDv/v0P5OcZ+VBNwJqc9aC0+EBwVi2ZAS?=
 =?iso-8859-1?Q?SG6uzevdV0QwYIv0IpD7zYNXer8PtbFPoa5rHcX2OFsppdlIs6oxD2gTAn?=
 =?iso-8859-1?Q?LzazbBHgZHt4ayGoA4d7/4/D9YRDta6/YQrc2GGmlWnjgICFOhLAu5CtN+?=
 =?iso-8859-1?Q?W1gHCK9hXPOQdPFN+hKH3LchKVQ3ouzT5FCm3VOt30JqinrjJegeQarAR5?=
 =?iso-8859-1?Q?Ujqw5T42IPmal5ghPwQIMGhKd2VkKCV3lmoesxz91maBgcl4MZN+eGqp8B?=
 =?iso-8859-1?Q?9JfmsnhK4WyUB2p2+GNRz/In9SaSHWdpjNdS2FgvsEmo3PR4t690gH78wz?=
 =?iso-8859-1?Q?Z78lOddhFhun+fupjp77JdTsXHBDMRAT9+y+cajfWovxxVfZHOMjMzaf6M?=
 =?iso-8859-1?Q?Sy0neSl9J2JUwEmSYZ8FrlWyeiivU5fpmLQSUeAcBplY42Y0+gMCpR6Z/0?=
 =?iso-8859-1?Q?OHEg3xGJwGOUubS5h5ttFXR+5LbNlk4hjwGj+DuMFO/48gMy8tw7QcjmiL?=
 =?iso-8859-1?Q?HeI26dQCqu2KyM4xMXlzQQfL6oUNgoa7KloZSQXFKTlC2bGJrlC3IaAqiZ?=
 =?iso-8859-1?Q?9e6O6ahHsgvGz9o5CyU7JmXgSONahEO490tiM4P9nWR86n8ccFWtw41nUq?=
 =?iso-8859-1?Q?D9dNQ1NdpzheC0GRwaU1TxBlHhegS53NDkVhjOI/HJBccS1fyda0oGzj3q?=
 =?iso-8859-1?Q?CweOMNu076G8q056Ezq7qIq4rIalbuyqCpgB2aKxN+cmYg7Hh0mNspYOqS?=
 =?iso-8859-1?Q?ChleOGGEsBlXx+ZU6qOfl1DTHIqhJu6ztwKys9s6qjQvqdTv/iTGmip9AL?=
 =?iso-8859-1?Q?XweUEplusaAsWUU38yX1O/I4rb1FNukhfLYjCsRNHLdhpfnfizR02iPwfu?=
 =?iso-8859-1?Q?TobF7TvhQ4WJhzS4oFr03K8CxlTbWksD0CxxsAnsYPnIgtJtr0KnU7wHIk?=
 =?iso-8859-1?Q?54OBEZ+4bPCT4Bxx7WX8GbjJ0RuuPJB52EA8X/h3tvdwNX9JUs+HeJLoEj?=
 =?iso-8859-1?Q?wG7THWMB1vQusQdVq6cobYVc5DR3xY7uS453Ha+QApqfA/nO/W3qyytHQx?=
 =?iso-8859-1?Q?Z/APeyiYI4dVf5tq/QRH/u/L24rWyZrgDouovlzS8BKGTOEd+Dnc38elYg?=
 =?iso-8859-1?Q?ogNmgy29VmZVcNQuXIUGonQyj6hO4dBQjLGJV7v9YC/b6Xi5XDogX/Zw1x?=
 =?iso-8859-1?Q?8U/hYvzejXemmcvDwGQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8d43dd9b-0342-47b6-ed8b-08db42bfaf41
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2023 23:25:25.1750 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xxmrMvuRbAgul/O/Gj4CUa/m0td//BelkyM3zlJ7ALHI0+mxjLujw1/nxR7AttGBbspI/x0cipUDA/22mgHGvkJH3QIcSogQandXUH4Yiio=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5126
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/i915/mtl: C20 PLL programming
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

Hi Mika,

On Thu, Apr 20, 2023 at 03:40:38PM +0300, Mika Kahola wrote:
> C20 phy PLL programming sequence for DP, DP2.0, HDMI2.x non-FRL and
> HDMI2.x FRL. This enables C20 MPLLA and MPLLB programming sequence. add
> 4 lane support for c20.
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 280 +++++++++++++++---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  32 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   3 +-
>  .../drm/i915/display/intel_display_types.h    |  15 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
>  5 files changed, 300 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 83180074b512..dd96bf5e179e 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -273,6 +273,18 @@ static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
>  		__intel_cx0_write(i915, port, lane, addr, data, committed);
>  }
>  
> +static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
> +				 int lane, u16 addr, u16 data)
> +{
> +	assert_dc_off(i915);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_H, addr >> 8, 0);
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_H, data >> 8, 0);
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
> +}
> +
>  static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
>  			    int lane, u16 addr, u8 clear, u8 set, bool committed)
>  {
> @@ -1415,6 +1427,207 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
> +static bool intel_c20_use_mplla(u32 clock)
> +{
> +	/* 10G and 20G rates use MPLLA */
> +	if (clock == 312500 || clock == 625000)
> +		return true;
> +
> +	return false;
> +}
> +
> +static u8 intel_c20_get_dp_rate(u32 clock)
> +{
> +	switch (clock) {
> +	case 162000: /* 1.62 Gbps DP1.4 */
> +		return 0;
> +	case 270000: /* 2.7 Gbps DP1.4 */
> +		return 1;
> +	case 540000: /* 5.4 Gbps DP 1.4 */
> +		return 2;
> +	case 810000: /* 8.1 Gbps DP1.4 */
> +		return 3;
> +	case 216000: /* 2.16 Gbps eDP */
> +		return 4;
> +	case 243000: /* 2.43 Gbps eDP */
> +		return 5;
> +	case 324000: /* 3.24 Gbps eDP */
> +		return 6;
> +	case 432000: /* 4.32 Gbps eDP */
> +		return 7;
> +	case 312500: /* 10 Gbps DP2.0 */
> +		return 8;
> +	case 421875: /* 13.5 Gbps DP2.0 */
> +		return 9;
> +	case 625000: /* 20 Gbps DP2.0*/
> +		return 10;
Worth adding the rate for 6.75 Gbps eDP.

> +	default:
> +		MISSING_CASE(clock);
> +		return 0;
> +	}
> +}
> +
> +static u8 intel_c20_get_hdmi_rate(u32 clock)
> +{
> +	switch (clock) {
> +	case 25175:
> +	case 27000:
> +	case 74250:
> +	case 148500:
> +	case 594000:
> +		return 0;
> +	case 166670: /* 3 Gbps */
> +	case 333330: /* 6 Gbps */
> +	case 666670: /* 12 Gbps */
> +		return 1;
> +	case 444440: /* 8 Gbps */
> +		return 2;
> +	case 555560: /* 10 Gbps */
> +		return 3;
> +	default:
> +		MISSING_CASE(clock);
> +		return 0;
> +	}
> +}
> +
> +static bool is_dp2(u32 clock)
> +{
> +	/* DP2.0 clock rates */
> +	if (clock == 312500 || clock == 421875 || clock  == 625000)
> +		return true;
> +
> +	return false;
> +}
> +
> +static bool is_hdmi_frl(u32 clock)
> +{
> +	switch (clock) {
> +	case 166670: /* 3 Gbps */
> +	case 333330: /* 6 Gbps */
> +	case 444440: /* 8 Gbps */
> +	case 555560: /* 10 Gbps */
> +	case 666670: /* 12 Gbps */
> +		return true;
> +	default:
> +		return false;
> +	}
> +}
> +
> +static bool intel_c20_protocol_switch_valid(struct intel_encoder *encoder)
> +{
> +	struct intel_digital_port *intel_dig_port = enc_to_dig_port(encoder);
> +
> +	/* banks should not be cleared for DPALT/USB4/TBT modes */
> +	/* TODO: optimize re-calibration in legacy mode */
> +	return intel_tc_port_in_legacy_mode(intel_dig_port);
> +}
> +
> +static void intel_c20_pll_program(struct drm_i915_private *i915,
> +				  const struct intel_crtc_state *crtc_state,
> +				  struct intel_encoder *encoder)
> +{
> +	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20;
> +	bool dp = false;
> +	int lane = crtc_state->lane_count == 4 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
The check here should be crtc_state->lane_count > 2 to accomodate 3 lanes for FRL.

> +	bool cntx;
> +	int i;
> +
> +	if (intel_crtc_has_dp_encoder(crtc_state))
> +		dp = true;
> +
> +	/* 1. Read current context selection */
> +	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) &
> +		PHY_C20_CONTEXT_TOGGLE;
> +
> +	/* 2. If there is a protocol switch from HDMI to DP or vice versa, clear
> +	 * the lane #0 MPLLB CAL_DONE_BANK DP2.0 10G and 20G rates enable MPLLA.
> +	 * Protocol switch is only applicable for MPLLA
> +	 */
> +	if (intel_c20_protocol_switch_valid(encoder)) {
> +		for (i = 0; i < 4; i++)
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);
> +		msleep(4);
> +	}
> +
> +	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
> +	/* 3.1 Tx configuration */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
> +		if (cntx)
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
> +		else
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
> +	}
> +
> +	/* 3.2 common configuration */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
> +		if (cntx)
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
> +		else
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
> +	}
> +
> +	/* 3.3 mpllb or mplla configuration */
> +	if (intel_c20_use_mplla(pll_state->clock)) {
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
> +			if (cntx)
> +				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
> +						     PHY_C20_A_MPLLA_CNTX_CFG(i),
> +						     pll_state->mplla[i]);
> +			else
> +				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
> +						     PHY_C20_B_MPLLA_CNTX_CFG(i),
> +						     pll_state->mplla[i]);
> +		}
> +	} else {
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
> +			if (cntx)
> +				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
> +						     PHY_C20_A_MPLLB_CNTX_CFG(i),
> +						     pll_state->mpllb[i]);
> +			else
> +				intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0,
> +						     PHY_C20_B_MPLLB_CNTX_CFG(i),
> +						     pll_state->mpllb[i]);
> +		}
> +	}
> +
> +	/* 4. Program custom width to match the link protocol */
> +	if (dp) {
> +		intel_cx0_write(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_WIDTH,
> +				is_dp2(pll_state->clock) ? 2 : 0,
> +				MB_WRITE_COMMITTED);
> +	} else if (is_hdmi_frl(pll_state->clock)) {
> +		intel_cx0_write(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_WIDTH,
> +				1, MB_WRITE_COMMITTED);
> +	} else
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_WIDTH,
> +				0, MB_WRITE_COMMITTED);
Can we use intel_cx0_rmw above to not disturb the reserved bits?
Also can we consolidate the logic into a static function that gives custom width value taking
pll_state->clock, dp as inputs. Below is sample code.

static int intel_get_c20_custom_width(u32 clock, bool dp) 
{
	if (dp && is_dp2(clock))
		return 2;
	else if (is_hdmi_frl(clock))
		return 1;
	else
		return 0

}

	intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_WIDTH,
		      C20_CUSTOM_WIDTH_MASK, intel_get_c20_custom_width(pll_state->clock, dp),
		      MB_WRITE_COMMITTED);
> +
> +	/* 5. For DP or 6. For HDMI */
> +	if (dp) {
> +		intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +			      BIT(6) | PHY_C20_CUSTOM_SERDES_MASK,
> +			      BIT(6) | PHY_C20_CUSTOM_SERDES(intel_c20_get_dp_rate(pll_state->clock)),
> +			      MB_WRITE_COMMITTED);
> +	} else {
> +		intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_SERDES_RATE,
Should be lane instead of INTEL_CX0_BOTH_LANES.
> +			      PHY_C20_IS_FRL,
We need to clear PHY_C20_IS_FRL | PHY_C20_CUSTOM_SERDES_MASK here.
> +			      is_hdmi_frl(pll_state->clock) ? 1 : 0,
This should be is_hdmi_frl(pll_state->clock) ? PHY_C20_IS_FRL : 0
While at it PHY_C20_IS_FRL might not be an approprate name. Either we
can use BIT(7) like dp case or have a saner name for both DP and HDMI cases.
> +			      MB_WRITE_COMMITTED);
> +
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
> +				intel_c20_get_hdmi_rate(pll_state->clock),
> +				MB_WRITE_COMMITTED);
> +	}
> +
> +	/*
> +	 * 7. Write Vendor specific registers to toggle context setting to load
> +	 * the updated programming toggle context bit
> +	 */
> +	intel_cx0_rmw(i915, encoder->port, lane, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +		      PHY_C20_CONTEXT_TOGGLE, cntx ? 0 : 1, MB_WRITE_COMMITTED);
> +}
> +
>  int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>  				 const struct intel_c10pll_state *pll_state)
>  {
> @@ -1456,7 +1669,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  		val |= XELPDP_LANE1_PHY_CLOCK_SELECT;
>  
>  	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> -	val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
> +
> +	if (is_hdmi_frl(crtc_state->port_clock))
> +		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_DIV18CLK);
> +	else
> +		val |= XELPDP_DDI_CLOCK_SELECT(XELPDP_DDI_CLOCK_SELECT_MAXPCLK);
>  
>  	/* TODO: HDMI FRL */
>  	/* TODO: DP2.0 10G and 20G rates enable MPLLA*/
Add check for DP2.0 10G and 20G and enable SSC if required
XELPDP_SSC_ENABLE_PLLA.

- Radhakrishna(RK) Sripada
> @@ -1612,7 +1829,7 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915, enum port po
>  			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
>  }
>  
> -static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
> +static void intel_cx0_program_phy_lane(struct drm_i915_private *i915,
>  				       struct intel_encoder *encoder, int lane_count,
>  				       bool lane_reversal)
>  {
> @@ -1620,9 +1837,11 @@ static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
>  	bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
>  	enum port port = encoder->port;
>  
> -	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> -		      0, C10_VDR_CTRL_MSGBUS_ACCESS,
> -		      MB_WRITE_COMMITTED);
> +	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
> +		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
> +			      PHY_C10_VDR_CONTROL(1), 0,
> +			      C10_VDR_CTRL_MSGBUS_ACCESS,
> +			      MB_WRITE_COMMITTED);
>  
>  	/* TODO: DP-alt MFD case where only one PHY lane should be programmed. */
>  	l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
> @@ -1685,9 +1904,11 @@ static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
>  	intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
>  			l1t2, MB_WRITE_COMMITTED);
>  
> -	intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> -		      0, C10_VDR_CTRL_UPDATE_CFG,
> -		      MB_WRITE_COMMITTED);
> +	if (intel_is_c10phy(i915, intel_port_to_phy(i915, port)))
> +		intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES,
> +			      PHY_C10_VDR_CONTROL(1), 0,
> +			      C10_VDR_CTRL_UPDATE_CFG,
> +			      MB_WRITE_COMMITTED);
>  }
>  
>  static u32 intel_cx0_get_pclk_pll_request(u8 lane_mask)
> @@ -1712,8 +1933,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane_mask)
>  	return val;
>  }
>  
> -static void intel_c10pll_enable(struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state)
> +void intel_cx0pll_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> @@ -1721,6 +1942,7 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>  	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
>  					  INTEL_CX0_LANE0;
> +	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	/*
>  	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
> @@ -1739,13 +1961,16 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
>  					    CX0_P2_STATE_READY);
>  
>  	/* 4. Program PHY internal PLL internal registers. */
> -	intel_c10_pll_program(i915, crtc_state, encoder);
> +	if (intel_is_c10phy(i915, phy))
> +		intel_c10_pll_program(i915, crtc_state, encoder);
> +	else
> +		intel_c20_pll_program(i915, crtc_state, encoder);
>  
>  	/*
>  	 * 5. Program the enabled and disabled owned PHY lane
>  	 * transmitters over message bus
>  	 */
> -	intel_c10_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
> +	intel_cx0_program_phy_lane(i915, encoder, crtc_state->lane_count, lane_reversal);
>  
>  	/*
>  	 * 6. Follow the Display Voltage Frequency Switching - Sequence
> @@ -1779,32 +2004,22 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
>  	 * 10. Follow the Display Voltage Frequency Switching Sequence After
>  	 * Frequency Change. We handle this step in bxt_set_cdclk().
>  	 */
> -}
> -
> -void intel_cx0pll_enable(struct intel_encoder *encoder,
> -			 const struct intel_crtc_state *crtc_state)
> -{
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> -	intel_wakeref_t wakeref;
> -
> -	wakeref = intel_cx0_phy_transaction_begin(encoder);
> -
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> -	intel_c10pll_enable(encoder, crtc_state);
>  
>  	/* TODO: enable TBT-ALT mode */
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> -static void intel_c10pll_disable(struct intel_encoder *encoder)
> +void intel_cx0pll_disable(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	bool is_c10 = intel_is_c10phy(i915, phy);
> +	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	/* 1. Change owned PHY lane power to Disable state. */
>  	intel_cx0_powerdown_change_sequence(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> -					    CX0_P2PG_STATE_DISABLE);
> +					    is_c10 ? CX0_P2PG_STATE_DISABLE :
> +					    CX0_P4PG_STATE_DISABLE);
>  
>  	/*
>  	 * 2. Follow the Display Voltage Frequency Switching Sequence Before
> @@ -1842,18 +2057,7 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
>  		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> -}
>  
> -void intel_cx0pll_disable(struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> -	intel_wakeref_t wakeref;
> -
> -	wakeref = intel_cx0_phy_transaction_begin(encoder);
> -
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> -	intel_c10pll_disable(encoder);
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 20024622d0eb..6fcb1680fb54 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -177,4 +177,36 @@
>  #define PHY_CX0_TX_CONTROL(tx, control)	(0x400 + ((tx) - 1) * 0x200 + (control))
>  #define   CONTROL2_DISABLE_SINGLE_TX	REG_BIT(6)
>  
> +/* C20 Registers */
> +#define PHY_C20_WR_ADDRESS_L		0xC02
> +#define PHY_C20_WR_ADDRESS_H		0xC03
> +#define PHY_C20_WR_DATA_L		0xC04
> +#define PHY_C20_WR_DATA_H		0xC05
> +#define PHY_C20_RD_ADDRESS_L		0xC06
> +#define PHY_C20_RD_ADDRESS_H		0xC07
> +#define PHY_C20_RD_DATA_L		0xC08
> +#define PHY_C20_RD_DATA_H		0xC09
> +#define PHY_C20_VDR_CUSTOM_SERDES_RATE	0xD00
> +#define PHY_C20_IS_FRL			REG_BIT8(7)
> +#define PHY_C20_VDR_HDMI_RATE		0xD01
> +#define   PHY_C20_CONTEXT_TOGGLE	REG_BIT8(0)
> +#define   PHY_C20_CUSTOM_SERDES_MASK	REG_GENMASK8(4, 1)
> +#define   PHY_C20_CUSTOM_SERDES(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_SERDES_MASK, val)
> +#define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
> +#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
> +#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
> +#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
> +#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
> +#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
> +#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
> +#define   C20_MPLLA_FRACEN		REG_BIT(14)
> +#define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
> +#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
> +#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
> +#define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
> +#define   C20_MPLLB_FRACEN		REG_BIT(13)
> +#define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
> +
> +#define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx) (0x303D + (idx))
> +
>  #endif /* __INTEL_CX0_REG_DEFS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 29e4bfab4635..f445f2613adb 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3359,7 +3359,8 @@ void intel_ddi_update_active_dpll(struct intel_atomic_state *state,
>  	struct intel_crtc *slave_crtc;
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> -	if (!intel_phy_is_tc(i915, phy))
> +	/* FIXME: Add MTL pll_mgr */
> +	if (DISPLAY_VER(i915) >= 14 || !intel_phy_is_tc(i915, phy))
>  		return;
>  
>  	intel_update_active_dpll(state, crtc, encoder);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 64b6a5ec4b81..c9927e12b95e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -996,8 +996,21 @@ struct intel_c10pll_state {
>  	u8 pll[20];
>  };
>  
> +struct intel_c20pll_state {
> +	u32 clock; /* in kHz */
> +	u16 tx[3];
> +	u16 cmn[4];
> +	union {
> +		u16 mplla[10];
> +		u16 mpllb[11];
> +	};
> +};
> +
>  struct intel_cx0pll_state {
> -	struct intel_c10pll_state c10;
> +	union {
> +		struct intel_c10pll_state c10;
> +		struct intel_c20pll_state c20;
> +	};
>  	bool ssc_enabled;
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1d28a2560ae0..4361c1ac65c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -53,6 +53,7 @@
>  #include "intel_combo_phy_regs.h"
>  #include "intel_connector.h"
>  #include "intel_crtc.h"
> +#include "intel_cx0_phy.h"
>  #include "intel_ddi.h"
>  #include "intel_de.h"
>  #include "intel_display_types.h"
> @@ -423,7 +424,14 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
>  
>  static int mtl_max_source_rate(struct intel_dp *intel_dp)
>  {
> -	return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
> +	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> +
> +	if (intel_is_c10phy(i915, phy))
> +		return intel_dp_is_edp(intel_dp) ? 675000 : 810000;
> +
> +	return 2000000;
>  }
>  
>  static int vbt_max_link_rate(struct intel_dp *intel_dp)
> @@ -452,7 +460,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
>  	/* The values must be in increasing order */
>  	static const int mtl_rates[] = {
>  		162000, 216000, 243000, 270000, 324000, 432000, 540000, 675000,
> -		810000,
> +		810000,	1000000, 1350000, 2000000,
>  	};
>  	static const int icl_rates[] = {
>  		162000, 216000, 270000, 324000, 432000, 540000, 648000, 810000,
> -- 
> 2.34.1
> 
