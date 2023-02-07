Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A92E568DE49
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Feb 2023 17:54:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C15910E573;
	Tue,  7 Feb 2023 16:54:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9282B10E570
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Feb 2023 16:54:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675788888; x=1707324888;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7P33AP1uwJfrz/32P1/nY472Ow5zH5ybYDoJyWAXXJg=;
 b=OxIwht3fpg5S1o0dr4RpMlMhNzfERAX/dcj7778pcQoSbji8Tqh1Fjaw
 UHspFeFMzwZQXjVGr9bandDkb3v1cSPVWl6uxmO4BxwEbUf0wYEZcIjvd
 eGaG3wj15YWWTUUe6libMbzt93rUXPAivrU59C0FPBmFhRfKdbdyzoWH8
 +iuNcwwyrmjODCRk/qqvCzSebQ7RHYpNXcI/ZIguH/q2Ue9WATJYp9y0z
 zZ6qk1H0CnfhRW7osE456VfxryCp2KvSvR9E2EaaB1K2/DBuq2MgXhVe3
 6ffMegBmILRv8+T/n8UMumupwhm10Kl1wM29nVQr3fUB2cg/TUXjs+pma A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="327250850"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="327250850"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 08:54:31 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="730510417"
X-IronPort-AV: E=Sophos;i="5.97,278,1669104000"; d="scan'208";a="730510417"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 07 Feb 2023 08:54:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 7 Feb 2023 08:54:30 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 7 Feb 2023 08:54:30 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 7 Feb 2023 08:54:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pae5eobfUOFPk9nS9el5t9hC2ascWgkn3b4xg2xT5m0RH9tRG/u9itZsKNiF6teoL/ankXMdMF+Yak+Nz85eMk+xRYWyAS9uIVDGY4GNytnqiD88eDPj9lNb/Tx/7T1P0FgDh5+Lh2mhHvdNtvlyhAMC/NeToBG07xvfSiSRfijreIMGHL8vWiU2ZDYFPOocSYJPPOTO+V/RoqdT5WsnbabvlRvym0bC7SCPAdrrX9t7fKWuZajhIMGo6RnY8Uf633so+3o0dGszkmvWfjnYDS25wRSLX0eFV4SOOLyW4xsqCGMyckbKJSqUQpXJMqy4OzQGI/Yv186rviWRkss1hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pk4ibKoG1gSp0FhDR6M2mv38ja5QFIwitykIRf/vsUw=;
 b=b1p81qP4N+fgenrA485GDYYZAOn/SLLsu+WZDZH285aiwdbeavaVcHU/ZHp2VKWQYHO4Q6vMJB4b7qnkELbFApgVfPw3OCmQeiYRj0Ps4mp21D6Fe/dDF1IH97K5O8+a0tBYEQqeY/QtWwSIHRn0dxS0kM+2M1wTRc+W72qgxC0hj/i7r3o6OP47i2C6IlqTCLUQlbul/i1leoJfS/pSDCzZnHFcyC0hsZ4LG0RhZqs2PZIlaY6q3Vq+egXTIPWFOz8RMEdqGzPvJUzQN22Ljx1PzG0cxxowPcBCgd96LiiqchQRvEOd4F3SjgU/paWWoeZw3TmEvz77uTT18Gx8ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH7PR11MB7499.namprd11.prod.outlook.com (2603:10b6:510:278::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Tue, 7 Feb
 2023 16:54:27 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6064.036; Tue, 7 Feb 2023
 16:54:27 +0000
Date: Tue, 7 Feb 2023 13:54:19 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230207165419.iwlh3dktguorr3lj@gjsousa-mobl2>
References: <20230105125446.960504-1-mika.kahola@intel.com>
 <20230105125446.960504-10-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230105125446.960504-10-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR05CA0026.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::31) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH7PR11MB7499:EE_
X-MS-Office365-Filtering-Correlation-Id: 67ebd7f2-d108-4472-5831-08db092bf91a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fOzWNEtxkaUMPmsn5v4pIbABiVbEwATxMUbbyE7is8GS84kJyKa+QMiW8v5a2kNKWJts4DR9GhKPf0h2fwQrIZtGg8p1XGnc78DQcQUIdd1sLbjEk+TdGekqr6+JiyeQqeorTG7H1upO8Ub/tHrsqG0qtVFb4moL62TWfzCLJdPTfpsIdUcz2SLviLjiwOZOEXhUnCxoxrK4ITDkRgi23JutIBfe6dm1ouok+4p55zPmzNKk74848SsTODU5oBQHF6meZz60cWF0fH1l9X/4BlT9+T2ipO2HeVcZ7ZDBHRrOLeWXXG9RnjdkXN1JwDzPshxwG1DyDDF4sn4+sei7XTPA08+HfyZF26hAjyldSft7m3yqM12jPPHa2VaYadMH+NuA9PzUagMYx9fld9D1hxsyKJ7qmy/W3+JZC9So1Xy0WvPN6DJUZGzuVhHGYeFhi1GR1aFV+PNJLaigTAZJjksC0iOxxwNo7hSFC0Luy58YLFqQaWYpRH7GyxJ0Hlo+6fZt6aihkvoQfsdBLDLkwrbm43GTkDVTbLfdORr8cUKZ2AgwpjbqHkRe77udNlKVEZrb5+YYvUTxn2uzbnCn+A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(376002)(136003)(346002)(366004)(396003)(39860400002)(451199018)(4326008)(41300700001)(66476007)(66556008)(66946007)(8676002)(8936002)(86362001)(33716001)(82960400001)(38100700002)(186003)(9686003)(6506007)(966005)(26005)(1076003)(107886003)(6512007)(316002)(6666004)(44832011)(30864003)(5660300002)(2906002)(478600001)(83380400001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7F61SC4JGVIvoATkxT1EEVcMkKJ5IKYEP/bs8QmeXVEMVGVU9ys2aj9r/BBV?=
 =?us-ascii?Q?zad6VN4gu23MIhcCz+HOfnTMARgZEThLKKN80i442gQlzgHz7t3z/cXEgnlm?=
 =?us-ascii?Q?G6TZz9FKyhp1QqAyDyp6q+NGzr4pDtnvF3p53aFoGJpGmN6xxuhmEJxX7/pq?=
 =?us-ascii?Q?eYl2rwKwk2j+/a7ZaqLlHpsUk30VC4lCWCsq9Dr4O/rdbAGyuYD+0yJohEY3?=
 =?us-ascii?Q?m8Mqn2Rrym0DVTyg1C386I/j7IW9/Db0OpwNd0aWBhsuy49Y/pTNIvRbGRfw?=
 =?us-ascii?Q?dhOYUfMqdXR5nMC3JwGHvBHKbfi1sUXijUbryy/GRnvI5yGP4Y6VMDxiAADA?=
 =?us-ascii?Q?RUMgJ5NW4IqRbtXcQ2TaqUNc966ihXRyzsXzFntVt8h/0pYsgrFaG+Z3vr/m?=
 =?us-ascii?Q?oSOVlmP8fcysoezT1c2OR0pcm3n7s52UP60ORX2+mzTWBSfld6z0C6JtPtjm?=
 =?us-ascii?Q?Tyau314XjUZXcLNLV8shaiVudKlCQXFzWjqxt9wkVvwT2xeBdWPkjcpOZBLF?=
 =?us-ascii?Q?77HgHKum6SUNhkaD4bFkAlSJrXQ/OhAta04ZtvG90yc+bUYBO6IqR8AEwL8Y?=
 =?us-ascii?Q?sHbVyeFrL/ftjGdezetpb9WUJsx1TJYBMVoZ+/UzOf3jf9bFs1oIfc/FxqEd?=
 =?us-ascii?Q?UJpkV/3kCFgivx9Wr/3bM1SZMhpVZqPGQ/+FhEWE88hR6ZyAPoTHfl8+OXGH?=
 =?us-ascii?Q?PujNSb38FOsJym551ciF9iZSYBeOh4rAG6kUfNDOrUWdDgFauOII6SbLP0xw?=
 =?us-ascii?Q?j5zZoI8gZweK/KH5Ts70JBbhI+tII5Z+Yxgt/rSlVuCJyxyKDkMxXA8fxn15?=
 =?us-ascii?Q?IRSCezCsjbdwy5Bxj3f2Lx9SqOfyIAFdvtkGH9TBiFcSR0gRg45TtoNStkRd?=
 =?us-ascii?Q?wVZH8RtMIiVR5K2p6kdOQO/P4fhP0ppSSIIH/QrAn88XroV1yGOya61/FDzc?=
 =?us-ascii?Q?XxeBQU02r3RxzA8GRytQGoq+w8o3wiNBRwMm8XdIO8GavNwkUJOz5ODq6SgZ?=
 =?us-ascii?Q?18tXKcz7XDDiztASZ20vtFDgNpnlVAVEVZcVfQMm9WBnf99tB6mpqbvLEu5R?=
 =?us-ascii?Q?V4ABa1RCbVYJXigofd/d/v4X9HqePpaTHKw73AL8tTXN5heCIvqrAkTFSGAg?=
 =?us-ascii?Q?08JLsEbCQ7Ze2gqimf9uw919WxQtz8Znt9amcemTcrE/w3xymCrFO1caP2RG?=
 =?us-ascii?Q?o2Umk9JvXkH5J2mFoTAQBFUH1QV8ywiD+UiU0DpHUbdAfJQiakGknFUoigYh?=
 =?us-ascii?Q?C0gdKg5/3i90AnAZigGgGCajChnpxM4lAVg0Dap8KZdz5k5Y0o6f/rmsNP2D?=
 =?us-ascii?Q?FQiWldTVasjrHzLuG+pq4aJAaj/TZzF0FXCtnNdMFFNmNXeH8odPNp6Ra77y?=
 =?us-ascii?Q?3HZXtq6P9qY8oYyJE8i3K3AQCN4oAVvAej5dxSbeC6IeagxvADVKfthHjmjG?=
 =?us-ascii?Q?WEVBT2WUDbxXVRCCrxBhZILpgFITd1kTbQXUA86thtkppCIvH3P0pxD75QHA?=
 =?us-ascii?Q?kyFJ3inzH/EumHcI8MGCLMtZ2kkrJK6upTrFEIziY5AqWoYHv/dv4r0WTT6q?=
 =?us-ascii?Q?2rsCuxirIJakOnFsP3pYlW1srbR1CtZFJSAf95Lawwl2B6pMY0C7evGQIC1M?=
 =?us-ascii?Q?kA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 67ebd7f2-d108-4472-5831-08db092bf91a
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Feb 2023 16:54:27.2741 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p0R3VqNgSVKRtq/aqua7/S1CP4luTizxanTwtt9L2d7Rod3/WaXbJ0QIy0PGVUevG3rbEwyoKkoO3DTGr1aAPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7499
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 09/21] drm/i915/mtl: C20 HW readout
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 05, 2023 at 02:54:34PM +0200, Mika Kahola wrote:
> Create a table for C20 DP1.4, DP2.0 and HDMI2.1 rates.
> The PLL settings are based on table, not for algorithmic alternative.
> For DP 1.4 only MPLLB is in use.
> 
> Once register settings are done, we read back C20 HW state.
> 
> BSpec: 64568
> 
> v2: Update rbr, hbr1, hbr2, and hbr3 pll configurations 4 and 5
>     based on changes in BSpec consolidated table
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Link: https://patchwork.freedesktop.org/patch/msgid/20221014124740.774835-10-mika.kahola@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 495 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |  10 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     |   9 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    |   6 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.h    |   1 +
>  5 files changed, 513 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 022888050a68..285e4cdd23eb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -11,6 +11,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_hdmi.h"
>  #include "intel_panel.h"
>  #include "intel_psr.h"
>  #include "intel_uncore.h"
> @@ -247,6 +248,23 @@ static void intel_c20_write(struct drm_i915_private *i915, enum port port,
>  	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
>  }
>  
> +static u16 intel_c20_read(struct drm_i915_private *i915, enum port port,
> +                          int lane, u16 addr)

Similar to my comment for intel_c20_write(), I think it would be better to name
this function intel_c20_sram_read().

Also, this function is indented with spaces instead of tabs.

> +{
> +       u16 val;
> +
> +       assert_dc_off(i915);
> +
> +       intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 0);
> +       intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, (addr >> 8) & 0xff, 1);

Looks like the 0xff maks is unnecessary here.

Also, does the byte order matter here? The diagram for the read operation in the
BSpec suggests writing the higher part of the address first and then the lower
part.

> +
> +       val = intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_H);
> +       val <<= 8;
> +       val |= intel_cx0_read(i915, port, lane, PHY_C20_RD_DATA_L);
> +
> +        return val;
> +}
> +
>  static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
>  			    int lane, u16 addr, u8 clear, u8 set, bool committed)
>  {
> @@ -588,6 +606,192 @@ static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
>  	NULL,
>  };
>  
> +/* C20 basic DP 1.4 tables */
> +static const struct intel_c20pll_state mtl_c20_dp_rbr = {
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
> +		0x8c00,		/* mplla cfg5 */
> +		0x4000,		/* mplla cfg6 */
> +		0x0003,		/* mplla cfg7 */
> +		0x3555,		/* mplla cfg8 */
> +		0x0001,		/* mplla cfg9 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state mtl_c20_dp_uhbr13_5 = {
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
> +		0x0001,		/* mplla cfg9 */
> +		},
> +};
> +
> +static const struct intel_c20pll_state * const mtl_c20_dp_tables[] = {
> +        &mtl_c20_dp_rbr,
> +        &mtl_c20_dp_hbr1,
> +        &mtl_c20_dp_hbr2,
> +        &mtl_c20_dp_hbr3,
> +	&mtl_c20_dp_uhbr10,
> +	&mtl_c20_dp_uhbr13_5,
> +	&mtl_c20_dp_uhbr20,
> +        NULL,
> +};
> +
>  /*
>   * HDMI link rates with 38.4 MHz reference clock.
>   */
> @@ -1115,7 +1319,181 @@ static const struct intel_c10mpllb_state * const mtl_c10_hdmi_tables[] = {
>  	NULL,
>  };
>  
> -int intel_c10_phy_check_hdmi_link_rate(int clock)
> +static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
> +	.clock = 25175,
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
> +	.clock = 27000,
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
> +	.clock = 74250,
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
> +	.clock = 148500,
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
> +	.clock = 594000,
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
> +	.clock = 166670,
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
> +	.clock = 333330,
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
> +	.clock = 444440,
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
> +	.clock = 555560,
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
> +	.clock = 666670,
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
>  	const struct intel_c10mpllb_state * const *tables = mtl_c10_hdmi_tables;
>  	int i;
> @@ -1128,6 +1506,17 @@ int intel_c10_phy_check_hdmi_link_rate(int clock)
>  	return MODE_CLOCK_RANGE;
>  }
>  
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
>  static const struct intel_c10mpllb_state * const *
>  intel_c10_mpllb_tables_get(struct intel_crtc_state *crtc_state,
>  			   struct intel_encoder *encoder)
> @@ -1312,6 +1701,53 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
>  			    i + 2, hw_state->pll[i + 2], i + 3, hw_state->pll[i + 3]);
>  }
>  
> +int intel_c20_phy_check_hdmi_link_rate(int clock)
> +{
> +        const struct intel_c20pll_state * const *tables = mtl_c20_hdmi_tables;
> +        int i;
> +
> +        for (i = 0; tables[i]; i++) {
> +                if (clock == tables[i]->clock)
> +                        return MODE_OK;
> +        }
> +
> +        return MODE_CLOCK_RANGE;
> +}
> +
> +static const struct intel_c20pll_state * const *
> +intel_c20_pll_tables_get(struct intel_crtc_state *crtc_state,
> +			 struct intel_encoder *encoder)
> +{
> +	if (intel_crtc_has_dp_encoder(crtc_state)) {
> +		return mtl_c20_dp_tables;
> +	} else if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI)) {
> +		return mtl_c20_hdmi_tables;
> +	}
> +
> +	MISSING_CASE(encoder->type);
> +	return NULL;
> +}
> +
> +int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> +	                    struct intel_encoder *encoder)

Looks like this function should be static: the only user is intel_cx0_phy.c.

> +{
> +	const struct intel_c20pll_state * const *tables;
> +	int i;
> +
> +	tables = intel_c20_pll_tables_get(crtc_state, encoder);
> +	if (!tables)
> +		return -EINVAL;
> +
> +	for (i = 0; tables[i]; i++) {
> +		if (crtc_state->port_clock <= tables[i]->clock) {
> +			crtc_state->cx0pll_state.c20pll_state = *tables[i];
> +			return 0;
> +		}
> +	}
> +
> +	return -EINVAL;
> +}
> +
>  static bool intel_c20_use_mplla(u32 clock)
>  {
>  	/* 10G and 20G rates use MPLLA */
> @@ -1321,6 +1757,63 @@ static bool intel_c20_use_mplla(u32 clock)
>  	return false;
>  }
>  
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_c20pll_state *pll_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	bool cntx, use_mplla;
> +	u32 val;
> +	int i;
> +
> +        /* 1. Read current context selection */
> +        cntx = intel_cx0_read(i915, encoder->port, 0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
> +
> +	/* Read Tx configuration */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->tx); i++) {
> +		if (cntx)
> +			pll_state->tx[i] = intel_c20_read(i915, encoder->port, 0,
> +							  PHY_C20_B_TX_CNTX_CFG(i));
> +		else
> +			pll_state->tx[i] = intel_c20_read(i915, encoder->port, 0,
> +							  PHY_C20_A_TX_CNTX_CFG(i));
> +	}
> +
> +	/* Read common configuration */
> +	for (i = 0; i < ARRAY_SIZE(pll_state->cmn); i++) {
> +		if (cntx)
> +			pll_state->cmn[i] = intel_c20_read(i915, encoder->port, 0,
> +							   PHY_C20_B_CMN_CNTX_CFG(i));
> +		else
> +			pll_state->cmn[i] = intel_c20_read(i915, encoder->port, 0,
> +							   PHY_C20_A_CMN_CNTX_CFG(i));
> +	}
> +
> +	val = intel_c20_read(i915, encoder->port, 0, PHY_C20_A_MPLLA_CNTX_CFG(6));
> +	use_mplla = val & C20_MPLLB_FRACEN;

Some questions about this:

  1. This is hardcoded to read from context A. Shouldn't we read from the
     current context?

  2. s/C20_MPLLB_FRACEN/C20_MPLLA_FRACEN/ ?

  3. When we are programming PLL for MPLLB, we are not clearing
     PHY_C20_A_MPLLA_CNTX_CFG(6). Wouldn't this be problematic if MPLLB is the
     current one in use MPLLB but MPLLA was already used in a previous
     configuration?

> +
> +	if (use_mplla) {
> +		/* MPLLA configuration */
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
> +			if (cntx)
> +				pll_state->mplla[i] = intel_c20_read(i915, encoder->port, 0,
> +								     PHY_C20_B_MPLLA_CNTX_CFG(i));
> +			else
> +				pll_state->mplla[i] = intel_c20_read(i915, encoder->port, 0,
> +								     PHY_C20_A_MPLLA_CNTX_CFG(i));
> +		}
> +	} else {
> +		/* MPLLB configuration */
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
> +			if (cntx)
> +				pll_state->mpllb[i] = intel_c20_read(i915, encoder->port, 0,
> +								     PHY_C20_B_MPLLB_CNTX_CFG(i));
> +			else
> +				pll_state->mpllb[i] = intel_c20_read(i915, encoder->port, 0,
> +								     PHY_C20_A_MPLLB_CNTX_CFG(i));
> +		}
> +	}
> +}
> +
>  static u8 intel_c20_get_dp_rate(u32 clock)
>  {
>  	switch (clock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 952c7deeffaa..86edbc4b1718 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -33,14 +33,22 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
>  				     struct intel_c10mpllb_state *pll_state);
>  int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
>  			      struct intel_encoder *encoder);
> +int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
> +			    struct intel_encoder *encoder);
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +                                   struct intel_c20pll_state *pll_state);
>  void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
>  				  const struct intel_c10mpllb_state *hw_state);
>  int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
>  				   const struct intel_c10mpllb_state *pll_state);
>  void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
>  				 struct intel_crtc_state *new_crtc_state);
> -int intel_c10_phy_check_hdmi_link_rate(int clock);
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>  void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>  				     const struct intel_crtc_state *crtc_state);
>  
> +int intel_c20_phy_check_hdmi_link_rate(int clock);
> +void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
> +				       const struct intel_crtc_state *crtc_state,
> +				       u32 level);
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index a5fbc4fed28d..c37f7f7d84cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3532,10 +3532,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
>  
> -	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
> +	if (intel_is_c10phy(i915, phy)) {
> +		intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
> +		intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
> +	} else {
> +		intel_c20pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c20pll_state);
> +	}
>  
> -	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
> -	intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
>  	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
>  
>  	intel_ddi_get_config(encoder, crtc_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 7b81781a64b6..e60fcd477091 100644
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
> @@ -1883,8 +1883,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
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
