Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 679856ED664
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 22:57:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DA9210E608;
	Mon, 24 Apr 2023 20:57:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2FC110E608
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 20:57:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682369832; x=1713905832;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=60Xscm60EYm4Jup2dK+eSac8fAFFms2r4WPWLzoqecw=;
 b=Cx5kqgOZm2WZ6k3Wn+WGJrgbnR43dsLGHX+/qi79slGFTRAbSnnwl+Z1
 msgjlSE5R6wGDWAiYj4b2QQdLWGwaeg6J9YaFR/JHAVGAOovHBFuOpQpR
 h7ZNaCTjWe1pErqpbC/2WC8ujpO1/TpR/VN4ymIlOmSwC7sactnCBN0Mk
 DcVN263kbNnGMZ2KJnXxEzDYpwgzBTG/cE6WH+p7Z5RP0dR/DU/w2vE+n
 bhWZhApwle7jJpO8nENTOjuzKjy8Ulm70YNIJpBCaAqZB05pLWEBYsAwy
 gSc+GRRDIsjXoxHmBKiNaeDCsisO6a6ihCXB+jyfRcaSGbxfPQNgPd6dQ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="345312135"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="345312135"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 13:57:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="670635345"
X-IronPort-AV: E=Sophos;i="5.99,223,1677571200"; d="scan'208";a="670635345"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 24 Apr 2023 13:57:11 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 13:57:11 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 24 Apr 2023 13:57:10 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 24 Apr 2023 13:57:10 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 24 Apr 2023 13:57:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nB4RVfPT9Atg322RraI+V/1yKbhXMue/XYfKNVlHm5boM4wUrRrK1bDK65zz9jdENnJGeEuFKKZgobJ+4VBIKLWSC37r1yHD0VJgqpVmddO+FXiRTpERPDxxf5aE6nFrXzGYzEbSb/0FPD7GHMG8Oj8cK8TlUoz2QDFuD+MaML3a5ur5e0rfQHx6C5hy8fz0dqI8GvkHvCF+s+y9UwQv5+lH6feCvrUAM0gyuevoLoWlIRwSXI9HLGBB9ZcxIXbvxh3oDQV6onor0eGOuXbXcpCeA2/qye+0kOTf3XM509xDk6bWDfWq5iU25AuWgx5XMYQ0IdhCZ60EuTOGSX5RXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YuKjt0MmK1MK9E0nuAJtJN637AgH6Dzv0TCt83k1X0I=;
 b=FKjAQ17qXycQGXrOfX5QkAVtbMzqFH86oJreN4UovH91qPQY3vIcCzulVnDTsiJyTwW6RM6JIBlhzHj3zz5/wQ/RnkaFXxjLIlyXqfecjT/zkyp+4TlP0bHSkEXV3QhcgI4plH2xXlvnS39QLVJMVbshTk/pjp8uKdPxjer3uku+Rhv5+LdBwYxnHt68WVq/Eaq814SJR+f5+uGnuE1FAtoZ7Pb7pOiV5J6BdykGSWvPEo6bib1fwoJN4jUmvjKf56EsNNTtFLJfLg0VDw6WllEYdy+Jx3V4MSsdwIaBkQ2isjsKThUIYk7JlUDqzNib88BBpRGrjPkNMvoCsE35+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SA1PR11MB5802.namprd11.prod.outlook.com (2603:10b6:806:235::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.33; Mon, 24 Apr
 2023 20:57:08 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.033; Mon, 24 Apr 2023
 20:57:08 +0000
Date: Mon, 24 Apr 2023 13:56:02 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEbs4hf9kj/VKEMr@invictus>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-3-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-3-mika.kahola@intel.com>
X-ClientProxiedBy: SJ2PR07CA0005.namprd07.prod.outlook.com
 (2603:10b6:a03:505::29) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|SA1PR11MB5802:EE_
X-MS-Office365-Filtering-Correlation-Id: 58d50dc5-83cf-4a0b-ecab-08db4506773d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8S8BfOwphdtlTyIdvLS8XF3kgVpQ1rcDpdANKeKpAkzKJBWBjqu7XeJwZfddllwRqmd1m8eU6m49RZxer58/HmhcORv0+RjLbbCwYvzI1IkVc+os+X4maJnW3S72HqejQ+rFOotQ5Q+u/HbXOdbCJ05iWSuue4G9BTdtp9i9sfvZYhIVOMQ2tJhT50E6jBIb/4wQk1iXp5Df2V/EWZo5CvM5ISHNLJGqyL0OAC/1n4t6T41K9WLGwRlCAnT+/fsHzhB3AHPh4hCqe2YHh7KxGpXGm33LghfDtzwlAeuof74dWrTwns11sf/wr9FcSGhfADPsQ4EoUbUOeLf7PYq5y3PXDgmuZ0MkZyhefx2M2F9xxpbV0xwgEo8WHpKtJzzUUKtpv4vVv5zsH/QJ6LdTDKbZgLgRzvK2bgULixSKsqTk93LvC9y4xCMPKcxeoa4N3Xtvm4HFJAhEkPfe6ztjofEkRDIe9Ewy4UON6FF3UFGTjFjr/wO7plVOEFxo5wLCv58NhGFZZwKVz1MJHioK+5lmlRGeO3Ukfo4zCRKM68oa//eS2AeEFYtXWDZIudFD
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(136003)(346002)(39860400002)(376002)(396003)(366004)(451199021)(478600001)(82960400001)(316002)(4326008)(6636002)(66476007)(66556008)(66946007)(44832011)(41300700001)(6862004)(2906002)(30864003)(8936002)(8676002)(5660300002)(38100700002)(9686003)(6512007)(6506007)(26005)(33716001)(86362001)(186003)(6666004)(83380400001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VoOqZe9uhd984wZJIS/KAcAIdGl15iUmoxRWgVFpZU4MlbIHLQjq4jBde3Fc?=
 =?us-ascii?Q?Qwg0TiH9//lwwfz9kKvxJyoECr6p5VbxHVyEq4nlrpypu9l/BJl7wy86j6N4?=
 =?us-ascii?Q?eYrHYKVzXK8TMnNhTiMrBMhsuDh1oZx5Cn/knUaTuU+g9UT9Cu5FbNfUpHVE?=
 =?us-ascii?Q?qF/jqV48G/8DTJ1KWRq5PLVGSh7M7PEv+8QJi4wZxlUa9HNO7ex2u9h4x0Ro?=
 =?us-ascii?Q?+k9gKZpeK06ryoZphkWNgXSNK+Oy8gM2pPICGjDvfWgyXLthP1aZoIFJT6/I?=
 =?us-ascii?Q?qZw1TZhence4YZOb27zpLpM2NQiGFHQuqEadR+bZu/QNn4RX2l7OV8FgnzEU?=
 =?us-ascii?Q?DCK6uxue+DJK8dfJGK98ES1eMvJKhUFulLQ8k+4Hg/LHq20/FgvC2QpWc4HI?=
 =?us-ascii?Q?PQ25LE6z5g1zBOeESxr43gGHOUdYzhaOw+N6J9R/BLFz0QTWmtE3BQDwy7Be?=
 =?us-ascii?Q?bOHrKreCvn8QF7XQcoRWID0bvk0GCMO2loG+9zY1cqV+4eivh2asiHkbMmQF?=
 =?us-ascii?Q?0zYsaCTfHuRnpKZvPN5TZWFM/hktA+QvoBsQPV2EOEdSSkexIFgizPaPkrWf?=
 =?us-ascii?Q?fW4RQKEbXkXV2wFiYNrvNR5rgGK3FMWdxjdw5DWwE3G7NH7rti2sn4BMBhtk?=
 =?us-ascii?Q?lQSA4h9wQf7FSHxNc3BvleGKFpHX1bajTh9WMPthCUA/cykSVy+u1vgAcGj6?=
 =?us-ascii?Q?93pvgJhEVNVWIJiXXJbRd6DgZTe5/HEk9DwBeeSeK1LjPMyJbhMI2W6uoP+P?=
 =?us-ascii?Q?iAbIQn9qIn6O/71DzVX4qWZCSc2meVARLFryuwHJcjwP3bIji6YIsH3LFTeg?=
 =?us-ascii?Q?p2GNz+SxSPDyEQq/1FzKIZ5OQcXdyoMnl0eRMkh6QrbLerCyGViNFwlX96D2?=
 =?us-ascii?Q?NlNsJdyYl/9RxomBmHIuVA/tkPC8KCjC484RfCSZ7Av9XSjTFBFhnZrYj6fK?=
 =?us-ascii?Q?/R5UgHsnfrioTBwxiE7aSRiMyePGVnVtyuz4yEcHBCATgaWsBN9xEVIVTvK5?=
 =?us-ascii?Q?Pnor5y58e6Nr5yuclyZdmmCjIEFO8ZiLCfkBUAufhW9RcFEjfbBVGSroG4sZ?=
 =?us-ascii?Q?Rll4KITUVPVlkkUUlazXl3HI911HRhZsOUL0brAgI8VG7GgKCYrAiThQP9hm?=
 =?us-ascii?Q?1Ky5pmplLxEX5rnSwig9qHoFbKSGwoF47FYrvutMFSm1KLbIZw/yj8r6Sijs?=
 =?us-ascii?Q?X/dJ/+Wflg+HlShTT+zbGPPDHojVmLW4xJzXC9bGhpGA7B/wywrINUSw3rMP?=
 =?us-ascii?Q?QXvzpOo3pzYLGNxHnBltAHkDHxRjjOK3oc6n067Bu6H8HUxNEM4d493AfPl8?=
 =?us-ascii?Q?SgnDZQ8vxHmSobK6452fI1dKkjkaAlpQhwRPUJgtiwGfZ4waZIznDRpmCL5K?=
 =?us-ascii?Q?X1/jTHIpPkIzQ73V7w4+R7p+7FfDs3qvFxYQOWrxZpbgUcZ8e0BzB5iu2Ipe?=
 =?us-ascii?Q?BtEUvbf3NQ1yV2TUcq5eNwPBVcwJwtT+sJr5jeC5sa2FKhZ5OnfbNnx3x8Oz?=
 =?us-ascii?Q?I8toRe4RYqqFJIkv1F7vFcDCGLZ+jNHth2vmYfN6Z6WzxB+dUJLi/P3WJMFJ?=
 =?us-ascii?Q?zX0uW22NOiP7f2H955CHHHn3EPRayjZDNrqmz/zoHVjwhicPSRWTyEBijMnz?=
 =?us-ascii?Q?lvKXIMrcVCJmKRo4Fruy+bo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58d50dc5-83cf-4a0b-ecab-08db4506773d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Apr 2023 20:57:07.8284 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LFUn0oqKZ4K4y1XSRPRYBQaGRwE/eRdZyL8l2XdHkYoz6O57UqVGDVgLChua571CXXKSp2CNs6i1X2hZLu+ZUTatp9t0wAszLu3UgyVe4BU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5802
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 02/13] drm/i915/mtl: C20 HW readout
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

On Thu, Apr 20, 2023 at 03:40:39PM +0300, Mika Kahola wrote:
> Create a table for C20 DP1.4, DP2.0 and HDMI2.1 rates.
> The PLL settings are based on table, not for algorithmic alternative.
> For DP 1.4 only MPLLB is in use.
> 
> Once register settings are done, we read back C20 HW state.
> 
> BSpec: 64568
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 623 +++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   8 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c      |   9 +-
>  .../drm/i915/display/intel_display_types.h    |   1 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |   6 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.h     |   1 +
>  6 files changed, 628 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index dd96bf5e179e..61428c5145e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -11,6 +11,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_hdmi.h"
>  #include "intel_panel.h"
>  #include "intel_psr.h"
>  #include "intel_tc.h"
> @@ -285,6 +286,23 @@ static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
>  	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
>  }
>  
> +static u16 intel_c20_sram_read(struct drm_i915_private *i915, enum port port,
> +			       int lane, u16 addr)
> +{
> +	u16 val;
> +
> +	assert_dc_off(i915);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, addr >> 8, 0);
> +	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 1);
> +
> +	val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
> +	val <<= 8;
> +	val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
> +
> +	return val;
> +}
> +
>  static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
>  			    int lane, u16 addr, u8 clear, u8 set, bool committed)
>  {
> @@ -659,6 +677,199 @@ static const struct intel_c10pll_state * const mtl_c10_edp_tables[] = {
>  	NULL,
>  };
>  
> +/* C20 basic DP 1.4 tables */
> +static const struct intel_c20pll_state mtl_c20_dp_rbr = {
> +	.link_bit_rate = 162000,
> +	.clock = 162000,
> +	.tx = {	0xbe88, /* tx cfg0 */
> +		0x5800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x50a8,	/* mpllb cfg0 */
> +		0x2120,		/* mpllb cfg1 */
> +		0xcd9a,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x5ab8,         /* mpllb cfg4 */
> +		0x4c34,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x6000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr1 = {
> +	.link_bit_rate = 270000,
> +	.clock = 270000,
> +	.tx = {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x308c,	/* mpllb cfg0 */
> +		0x2110,		/* mpllb cfg1 */
> +		0xcc9c,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x489a,         /* mpllb cfg4 */
This should be 0x4b9a ^ for mpllb cfg4 according to the consolidated table.

> +		0x3f81,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x5000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr2 = {
> +	.link_bit_rate = 540000,
> +	.clock = 540000,
> +	.tx = {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x108c,	/* mpllb cfg0 */
> +		0x2108,		/* mpllb cfg1 */
> +		0xcc9c,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x489a,         /* mpllb cfg4 */
This should be 0x4b9a ^ for mpllb cfg4 according to the consolidated table.

> +		0x3f81,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x5000,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_hbr3 = {
> +	.link_bit_rate = 810000,
> +	.clock = 810000,
> +	.tx = {	0xbe88, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x10d2,	/* mpllb cfg0 */
> +		0x2108,		/* mpllb cfg1 */
> +		0x8d98,		/* mpllb cfg2 */
> +		0xbfc1,		/* mpllb cfg3 */
> +		0x7166,         /* mpllb cfg4 */
> +		0x5f42,         /* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x7800,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +/* C20 basic DP 2.0 tables */
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr10 = {
> +	.link_bit_rate = 1000000, /* 10 Gbps */
> +	.clock = 312500,
> +	.tx = {	0xbe21, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mplla = { 0x3104,	/* mplla cfg0 */
> +		0xd105,		/* mplla cfg1 */
> +		0xc025,		/* mplla cfg2 */
> +		0xc025,		/* mplla cfg3 */
> +		0xa6ab,		/* mplla cfg4 */
This should be 0x8c00 ^ for mplla cfg4 according to the consolidated table.

> +		0x8c00,		/* mplla cfg5 */
This should be 0x759a ^ for mplla cfg5 according to the consolidated table.

> +		0x4000,		/* mplla cfg6 */
> +		0x0003,		/* mplla cfg7 */
> +		0x3555,		/* mplla cfg8 */
> +		0x0000,		/* mplla cfg9 */
This should be 0x0001 ^ for mplla cfg9 according to the consolidated table.

> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
> +	.link_bit_rate = 1350000, /* 13.5 Gbps */
> +	.clock = 421875,
> +	.tx = {	0xbea0, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x015f,	/* mpllb cfg0 */
> +		0x2205,		/* mpllb cfg1 */
> +		0x1b17,		/* mpllb cfg2 */
> +		0xffc1,		/* mpllb cfg3 */
> +		0xe100,		/* mpllb cfg4 */
> +		0xbd00,		/* mpllb cfg5 */
> +		0x2000,		/* mpllb cfg6 */
> +		0x0001,		/* mpllb cfg7 */
> +		0x4800,		/* mpllb cfg8 */
> +		0x0000,		/* mpllb cfg9 */
> +		0x0000,		/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr20 = {
> +	.link_bit_rate = 2000000, /* 20 Gbps */
> +	.clock = 625000,
> +	.tx = {	0xbe20, /* tx cfg0 */
> +		0x4800, /* tx cfg1 */
> +		0x0000, /* tx cfg2 */
> +		},
> +	.cmn = {0x0500, /* cmn cfg0*/
> +		0x0005, /* cmn cfg1 */
> +		0x0000, /* cmn cfg2 */
> +		0x0000, /* cmn cfg3 */
> +		},
> +	.mplla = { 0x3104,	/* mplla cfg0 */
> +		0xd105,		/* mplla cfg1 */
> +		0xc025,		/* mplla cfg2 */
> +		0xc025,		/* mplla cfg3 */
> +		0xa6ab,		/* mplla cfg4 */
> +		0x8c00,		/* mplla cfg5 */
> +		0x4000,		/* mplla cfg6 */
> +		0x0003,		/* mplla cfg7 */
> +		0x3555,		/* mplla cfg8 */
> +		0x0002,		/* mplla cfg9 */
This should be 0x0001 ^ for mplla cfg9 according to the consolidated table.

These are the suggested changes for now. I would need to check the HDMI tables.

- Radhakrishna(RK) Sripada
> +		},
> +};
> +
> +static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
> +	&mtl_c20_dp_rbr,
> +	&mtl_c20_dp_hbr1,
> +	&mtl_c20_dp_hbr2,
> +	&mtl_c20_dp_hbr3,
> +	&mtl_c20_dp_uhbr10,
> +	&mtl_c20_dp_uhbr13_5,
> +	&mtl_c20_dp_uhbr20,
> +	NULL,
> +};
> +
>  /*
>   * HDMI link rates with 38.4 MHz reference clock.
>   */
> @@ -1243,7 +1454,281 @@ static const struct intel_c10pll_state * const mtl_c10_hdmi_tables[] = {
>  	NULL,
>  };
>  
> -int intel_c10_phy_check_hdmi_link_rate(int clock)
> +static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
> +	.link_bit_rate = 25175,
> +	.clock = 25175,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0xa0d2,	/* mpllb cfg0 */
> +		   0x7d80,	/* mpllb cfg1 */
> +		   0x0906,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x0200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x0000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_27_0 = {
> +	.link_bit_rate = 27000,
> +	.clock = 27000,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0xa0e0,	/* mpllb cfg0 */
> +		   0x7d80,	/* mpllb cfg1 */
> +		   0x0906,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x8000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_74_25 = {
> +	.link_bit_rate = 74250,
> +	.clock = 74250,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x609a,	/* mpllb cfg0 */
> +		   0x7d40,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_148_5 = {
> +	.link_bit_rate = 148500,
> +	.clock = 148500,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x409a,	/* mpllb cfg0 */
> +		   0x7d20,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_594 = {
> +	.link_bit_rate = 594000,
> +	.clock = 594000,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x009a,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x5800,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0001,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_300 = {
> +	.link_bit_rate = 3000000,
> +	.clock = 166670,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x209c,	/* mpllb cfg0 */
> +		   0x7d10,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x2000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_600 = {
> +	.link_bit_rate = 6000000,
> +	.clock = 333330,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x009c,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0xca06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x2000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_800 = {
> +	.link_bit_rate = 8000000,
> +	.clock = 444440,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x00d0,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x4a06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0003,	/* mpllb cfg7 */
> +		   0x2aaa,	/* mpllb cfg8 */
> +		   0x0002,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_1000 = {
> +	.link_bit_rate = 10000000,
> +	.clock = 555560,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x1104,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x0a06,	/* mpllb cfg2 */
> +		   0xbe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0003,	/* mpllb cfg7 */
> +		   0x3555,	/* mpllb cfg8 */
> +		   0x0001,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_hdmi_1200 = {
> +	.link_bit_rate = 12000000,
> +	.clock = 666670,
> +	.tx = {  0xbe98, /* tx cfg0 */
> +		  0x9800, /* tx cfg1 */
> +		  0x0000, /* tx cfg2 */
> +		},
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		  0x0005, /* cmn cfg1 */
> +		  0x0000, /* cmn cfg2 */
> +		  0x0000, /* cmn cfg3 */
> +		},
> +	.mpllb = { 0x0138,	/* mpllb cfg0 */
> +		   0x7d08,	/* mpllb cfg1 */
> +		   0x5486,	/* mpllb cfg2 */
> +		   0xfe40,	/* mpllb cfg3 */
> +		   0x0000,	/* mpllb cfg4 */
> +		   0x0000,	/* mpllb cfg5 */
> +		   0x2200,	/* mpllb cfg6 */
> +		   0x0001,	/* mpllb cfg7 */
> +		   0x4000,	/* mpllb cfg8 */
> +		   0x0000,	/* mpllb cfg9 */
> +		   0x0004,	/* mpllb cfg10 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state * const mtl_c20_hdmi_tables[] = {
> +	&mtl_c20_hdmi_25_175,
> +	&mtl_c20_hdmi_27_0,
> +	&mtl_c20_hdmi_74_25,
> +	&mtl_c20_hdmi_148_5,
> +	&mtl_c20_hdmi_594,
> +	&mtl_c20_hdmi_300,
> +	&mtl_c20_hdmi_600,
> +	&mtl_c20_hdmi_800,
> +	&mtl_c20_hdmi_1000,
> +	&mtl_c20_hdmi_1200,
> +	NULL,
> +};
> +
> +static int intel_c10_phy_check_hdmi_link_rate(int clock)
>  {
>  	const struct intel_c10pll_state * const *tables = mtl_c10_hdmi_tables;
>  	int i;
> @@ -1319,17 +1804,6 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
>  	return -EINVAL;
>  }
>  
> -int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> -			    struct intel_encoder *encoder)
> -{
> -	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> -	enum phy phy = intel_port_to_phy(i915, encoder->port);
> -
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> -
> -	return intel_c10pll_calc_state(crtc_state, encoder);
> -}
> -
>  void intel_c10pll_readout_hw_state(struct intel_encoder *encoder,
>  				   struct intel_c10pll_state *pll_state)
>  {
> @@ -1427,6 +1901,74 @@ void intel_c10pll_dump_hw_state(struct drm_i915_private *i915,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
> +static int intel_c20_phy_check_hdmi_link_rate(int clock)
> +{
> +	const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
> +	int i;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (clock == tables[i]->link_bit_rate)
> +			return MODE_OK;
> +	}
> +
> +	return MODE_CLOCK_RANGE;
> +}
> +
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock)
> +{
> +	struct intel_digital_port *dig_port = hdmi_to_dig_port(hdmi);
> +	struct drm_i915_private *i915 = intel_hdmi_to_i915(hdmi);
> +	enum phy phy = intel_port_to_phy(i915, dig_port->base.port);
> +
> +	if (intel_is_c10phy(i915, phy))
> +		return intel_c10_phy_check_hdmi_link_rate(clock);
> +	return intel_c20_phy_check_hdmi_link_rate(clock);
> +}
> +
> +static const struct intel_c20pll_state * const *
> +intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
> +			 struct intel_encoder *encoder)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state))
> +		return mtl_c20_dp_tables;
> +	else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
> +		return mtl_c20_hdmi_tables;
> +
> +	MISSING_CASE(encoder->type);
> +	return NULL;
> +}
> +
> +static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> +				   struct intel_encoder *encoder)
> +{
> +	const struct intel_c20pll_state * const *tables;
> +	int i;
> +
> +	tables = intel_c20_pll_tables_get(crtc_state, encoder);
> +	if (!tables)
> +		return -EINVAL;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (crtc_state->port_clock == tables[i]->link_bit_rate) {
> +			crtc_state->cx0pll_state.c20 = *tables[i];
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
> +int intel_cx0pll_calc_state(struct intel_crtc_state *crtc_state,
> +			 struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +
> +	if (intel_is_c10phy(i915, phy))
> +		return intel_c10pll_calc_state(crtc_state, encoder);
> +	return intel_c20pll_calc_state(crtc_state, encoder);
> +}
> +
>  static bool intel_c20_use_mplla(u32 clock)
>  {
>  	/* 10G and 20G rates use MPLLA */
> @@ -1436,6 +1978,63 @@ static bool intel_c20_use_mplla(u32 clock)
>  	return false;
>  }
>  
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_c20pll_state *pll_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	bool cntx, use_mpllb;
> +	u32 val;
> +	int i;
> +
> +	/* 1. Read current context selection */
> +	cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> +
> +	/* Read Tx configuration */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
> +		if (cntx)
> +			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +							       PHY_C20_B_TX_CNTX_CFG(i));
> +		else
> +			pll_state->tx[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +							       PHY_C20_A_TX_CNTX_CFG(i));
> +	}
> +
> +	/* Read common configuration */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
> +		if (cntx)
> +			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +								PHY_C20_B_CMN_CNTX_CFG(i));
> +		else
> +			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +								PHY_C20_A_CMN_CNTX_CFG(i));
> +	}
> +
> +	val = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_MPLLA_CNTX_CFG(6));
> +	use_mpllb = val & C20_MPLLB_FRACEN;
> +
> +	if (use_mpllb) {
> +		/* MPLLA configuration */
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
> +			if (cntx)
> +				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +									  PHY_C20_B_MPLLA_CNTX_CFG(i));
> +			else
> +				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +									  PHY_C20_A_MPLLA_CNTX_CFG(i));
> +		}
> +	} else {
> +		/* MPLLB configuration */
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
> +			if (cntx)
> +				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +									  PHY_C20_B_MPLLB_CNTX_CFG(i));
> +			else
> +				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +									  PHY_C20_A_MPLLB_CNTX_CFG(i));
> +		}
> +	}
> +}
> +
>  static u8 intel_c20_get_dp_rate(u32 clock)
>  {
>  	switch (clock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 509d1d12776e..9760c6292c81 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -30,8 +30,12 @@ int intel_c10pll_calc_port_clock(struct intel_encoder *encoder,
>  				 const struct intel_c10pll_state *pll_state);
>  void intel_c10pll_state_verify(struct intel_atomic_state *state,
>  			       struct intel_crtc_state *new_crtc_state);
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_c20pll_state *pll_state);
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
> -int intel_c10_phy_check_hdmi_link_rate(int clock);
> -
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
> +void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
> +				       const struct intel_crtc_state *crtc_state,
> +				       u32 level);
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index f445f2613adb..44f07011245b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3853,10 +3853,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +	if (intel_is_c10phy(i915, phy)) {
> +		intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10);
> +		intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
> +	} else {
> +		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20);
> +	}
>  
> -	intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10);
> -	intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
>  	crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
>  
>  	intel_ddi_get_config(encoder, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index c9927e12b95e..4eadf45c0a43 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -997,6 +997,7 @@ struct intel_c10pll_state {
>  };
>  
>  struct intel_c20pll_state {
> +	u32 link_bit_rate;
>  	u32 clock; /* in kHz */
>  	u16 tx[3];
>  	u16 cmn[4];
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 8141d5184856..65a258507d62 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -58,7 +58,7 @@
>  #include "intel_panel.h"
>  #include "intel_snps_phy.h"
>  
> -static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
> +inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
>  {
>  	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
>  }
> @@ -1865,8 +1865,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
>  	 * FIXME: We will hopefully get an algorithmic way of programming
>  	 * the MPLLB for HDMI in the future.
>  	 */
> -	if (IS_METEORLAKE(dev_priv))
> -		return intel_c10_phy_check_hdmi_link_rate(clock);
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		return intel_cx0_phy_check_hdmi_link_rate(hdmi, clock);
>  	else if (IS_DG2(dev_priv))
>  		return intel_snps_phy_check_hdmi_link_rate(clock);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.h b/drivers/gpu/drm/i915/display/intel_hdmi.h
> index 774dda2376ed..492bd3921385 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.h
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.h
> @@ -54,5 +54,6 @@ int intel_hdmi_dsc_get_num_slices(const struct intel_crtc_state *crtc_state,
>  				  int src_max_slices, int src_max_slice_width,
>  				  int hdmi_max_slices, int hdmi_throughput);
>  int intel_hdmi_dsc_get_slice_height(int vactive);
> +struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi);
>  
>  #endif /* __INTEL_HDMI_H__ */
> -- 
> 2.34.1
> 
