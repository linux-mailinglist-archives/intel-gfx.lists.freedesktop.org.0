Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B10256C86B3
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 21:21:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0490810E1D5;
	Fri, 24 Mar 2023 20:21:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2B5910E1D5
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 20:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679689280; x=1711225280;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=kZePWoRSqJAs86G3T7u5dUIaOyzBmBsPMt8GnrIInoA=;
 b=L7Uepu7M+wlrW4lFSFwrN2aEnQPfhx4mwKvhfh2mGkm3sI5AmEgvx7ad
 kDhLURjLFK1FS65XRAGPS4SrfbhDESbTKx31m59OIOs8kbZg+aPKF3lfc
 r0U3o2l+QScxl80UZbGtM7oKGprisrQZXEhspHReNeozvqAXhTrEzPPKG
 QpEVCOjeAOM2DVM/fJzB8K7qwy+FV/woaA/WKNkHWdO63oIpwTl04d01U
 zKT22CWj88Hp9w/106iXU5GVWIieJcUKTHSpYyET0WUSrxUMj0fMruHgc
 CSSSHuksqqfS7YB7lFWAcSKo59jV5nGRlOXaGviIJSgodv2zyGL+tpUSA Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="320279903"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="320279903"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 13:21:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="713193840"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="713193840"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga008.jf.intel.com with ESMTP; 24 Mar 2023 13:21:20 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 13:21:19 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 13:21:19 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 13:21:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P39ZwaccKEH+H2oAJ+PARxlPtlqSpQT+1hsPGlxcf8dtiCKYrDSvsqr7S1xwgu3pNFbTm0lA/lTmuDi5GHFNKzyJsHSSerRQpNpy3IafYHvcT1MtKJMX6ElSV2x4nDgZdaqpwAAYvq5dMOoFCa6Byoj7tu0tXWj3nKo6MFeOpXNx+m1ycCxD9HmlsfVoYNvEuR4CYfgamNIduN6SwAz9bKVL4LNBxP2puEJGcD570L3+Q53C4/MpfnRIlT3pCwd4PMKtp5htyiVr2OQHmEUhBRT7roFEWitKC9Yqm7Z7HYV1fWrqYdSu6L4qqjVXThx9XhaB9v39JtPm62nipB9FaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lB61DmGkqZV3iw+vlFBHJMGZdtkjYAT2aVk9jqyDvD8=;
 b=BboIc4W4l+9jK/X4F68u0Jl+ZdClQ8LAmcpHJs/ZQvYXVXTIBk6RaqWiGTmNUEKiHiWF06AuOsV3c4eC9NvVe17fkNKYtE7yRmX2ISMrmdhRqSpvNom/MpeP1I0yZwq+wzgZEhlHlmmJ65v9m4eg9UYpT86JFZ5VFO4blrvnmq9cWidXsDkG/ErOTN3Pm5DYDTAZtus5fiTvbwaToZlv2KMHqzjTeN5bicBz9V+V7dm3DRapPB9L+Gtons5nqAq2dzsH+x+otzPFHuGpC4DY4Bl36vCUdicfCc1bkdHKFIVVkUpkAP5V2By90BRfa7GuDnCviADaxmr1oBe7qo/fvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DS0PR11MB8231.namprd11.prod.outlook.com (2603:10b6:8:15c::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 20:21:17 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e%4]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 20:21:17 +0000
Date: Fri, 24 Mar 2023 17:21:11 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230324202111.caehraupeh2d74r3@gjsousa-mobl2>
References: <20230316111335.66915-1-mika.kahola@intel.com>
 <20230316111335.66915-10-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230316111335.66915-10-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR13CA0082.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::27) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DS0PR11MB8231:EE_
X-MS-Office365-Filtering-Correlation-Id: 207dcf55-eb7a-438e-2362-08db2ca55273
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6+FdGcPj8P0IbcONemUtUi/7SzUXCOyzDFjBJxXHgwjUFUShsKcBoBB/VbjEdLYV0G2uPkbW5BcVcDwyQmlFaUD07/1waybfqkSPTCIrMBgUdobTlKV+h79MqmJBczQBS3Tm+XDkZvfFfzi5eS2M/iQccb1iMBz6alKef0DTRxCm4+FvF2CrU/tZd4yr3z5auDPDedGVWjbiM6IbzjHJdB2XlkQRc4pYH9+t+r5tAbUpwMelCxDGPAaMH7GqZvOa1tubqKy7qM+fUEO5R9TV//BjBLNxE67uwuyvlEQ4TSYo/eW7s5TqXDYw94F4IGvhDz+tw5POlmJExogKzR53SIhqmahStkcES8AKbPuY1XHfS4vv9KrnbMXzIrWatXkhrH15rPEUgC3/pQF9+++5IvzqwmdrgprTuivLwK88UwiVn1ufRarpNpwWICfkEgoYE60s5U+rn6nIndeRFpzDb3vQCfirfVCoy6qsPLg9GUY+LTpuMtZv84lfW36pCJL2qdeejP4T6foTIzBVNXZ6U/qf8iaTFe7AYpKK5FAv32tcasT/tVCUGqMy4bFmYunz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(376002)(366004)(346002)(39860400002)(136003)(396003)(451199021)(6486002)(8676002)(83380400001)(6666004)(1076003)(30864003)(26005)(6512007)(6506007)(186003)(66476007)(478600001)(9686003)(33716001)(86362001)(38100700002)(66556008)(66946007)(2906002)(316002)(44832011)(41300700001)(5660300002)(8936002)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hejEn0aDXz8a6/ffiCbtvf9le8fAcYLellrjgAGjqj7oDz3WlzWMbzE/pTag?=
 =?us-ascii?Q?982K3pTSfD4olM1W9HVtdDJ40JaPr7ylhS1Hj1fcc7TpxVp7Lklf5e4IvV7n?=
 =?us-ascii?Q?nEqSV8b1xy2XldhA9n/hHx6fWZUfEtUw1wEBGSbOmRIZDZY/EzyhEed19KS6?=
 =?us-ascii?Q?vxfApOMxemorj1VJChKgLYxtgTk/uaOvfN/kslQ3a12sRvDZLYfRDRZ0BlAd?=
 =?us-ascii?Q?yVVi9ZQ0l3l++Qpxs7n8fYt5Rq5EJFuolDHdY/48TvHOFZepzF8HGr/IxygK?=
 =?us-ascii?Q?6iiHr4ODpfD0/x/F484svRLLHDXsW7/k4URLyhpH2Z0lBjMOPAfuSiH3DabS?=
 =?us-ascii?Q?TNFHfjE7nunKVetOcxDv0j1ykKqE3UL0xWAH8SzNxNy1H/Hbh9K4TyxW9TON?=
 =?us-ascii?Q?UtM8M2ZUy5z9bloexJjO3ZICBOPRLzXroU7p72JXjOnTBXMhq6aEgQar9CcB?=
 =?us-ascii?Q?uLQabAevMcPEOqdgBsHa68NOMnYTxB+TgWMuCCRCEDcJfLUuef0bAxCcDGpj?=
 =?us-ascii?Q?0wd/D0eIgxO1OH6l7i0BDXbVRLuBRuMC3BpI5GjTo3dxjhnd/IZzMJeHySun?=
 =?us-ascii?Q?9XCgSuDORZC+2PwQHSs6VC23xmSbSf34s9lkVdvdDhM5WB4hW5aA1fFjsTXa?=
 =?us-ascii?Q?whirxhRuFnKSy7UDF/Vo7M/01eRShWV7AROrWWZNe7yzjvaDNJxyCqvhj49y?=
 =?us-ascii?Q?AUeLE5F2Z9QT9CtAJJFd01OBwJEXTXlICc39iNCc1sVwK7/sQdjYseNRA/Yo?=
 =?us-ascii?Q?DUAVk6JxJ9mUVwLiaQ7UpRc7GgDoPpNKM4Xg+mAUVln4Y2TtmpDMXJ6tRNI9?=
 =?us-ascii?Q?foPK70DPtdTYqLZhhAlq1XSy3SbydPaw5GyFSbd3WMy+QWb/1dBSWZKh7E7W?=
 =?us-ascii?Q?sLp6TZjhqJNwuRL3FoCc136V9jaJ5O784ElTX3fnvn/FvNsXUwVzPrRelGvF?=
 =?us-ascii?Q?s66+he3YNTdAeAWYdn4YV1lh5KUtxmxP9D6y1MbkqeiJg1abC8Ifd044f66X?=
 =?us-ascii?Q?A1NNJf5xd4rAmh+Vi+PVuAgDuT8zsvh4Mb462u7MZytp7jiMACM99v8oA+Lm?=
 =?us-ascii?Q?ohrCMecdUn5/mLoP9PCPQsXeKfPZhzUfcZh6vMt0yOePBZGpRLY/LsCH/BHo?=
 =?us-ascii?Q?OGWCYsXrEfcBdjKDoRxWHwmzZuJyAGTQwridlim0luDZKm9iiTqGzaVuQ6Rx?=
 =?us-ascii?Q?BAzZz+ZBK2QvqwO2b1KkV/OqB8rt7DvA/ZbFGZ94pdvKWF4PpOaGy6g5MQzP?=
 =?us-ascii?Q?Ora0Wwls1EV0NTpOKbMJzMJj47JIttCNFKWJ0FH3TnNrw19pzbx+5/EHrAOl?=
 =?us-ascii?Q?PCoBBhuBQKdoAZPemEuTs2gzbv/LiKc+JI5G4d7+2F1mLRHVh2rleiq/Bimh?=
 =?us-ascii?Q?P9F2IuiXDC68cWJc9kxsW5lWuUmmLSsV7E7uli/T/zmSnBgTJ+67IV66UjEL?=
 =?us-ascii?Q?es0LraMkhn+9GfUbkaA+7BOHdLT1bP/QCoub7JTllaWbU3c8vdhs6ULPiJQZ?=
 =?us-ascii?Q?+gSujgnl2ox6J/GGQLnfKgZWXgg9kvFMlErV7J37wmpnrnVFhJLonFunA+Lb?=
 =?us-ascii?Q?MQ0j9AFU79MTZ1M9j/Iga2uebRfIUdWNUhsIhSHETXPUJLqK3YjtXNtZz9np?=
 =?us-ascii?Q?Aw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 207dcf55-eb7a-438e-2362-08db2ca55273
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 20:21:17.3653 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YxlfJxlGN0ykN3mxWWcGlvUkGmMTUGM5tGOflzB6RWsmdfXxyOWDJ7PRAGJU+BJyN8UMJzzFjaFpj4qFhRaPpw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8231
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 09/22] drm/i915/mtl: C20 HW readout
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

On Thu, Mar 16, 2023 at 01:13:22PM +0200, Mika Kahola wrote:
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
> v3: Rename intel_c20_read() to intel_c20_sram_read() (Gustavo)
>     Use context and correct MPLLA reg bit to select if MPLLA is in
>     use or not (Gustavo)
> 
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 553 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |   8 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     |   9 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    |   6 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.h    |   1 +
>  5 files changed, 569 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 730c70f82822..bfb264ea154a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -11,6 +11,7 @@
>  #include "intel_de.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_hdmi.h"
>  #include "intel_panel.h"
>  #include "intel_tc.h"
>  #include "intel_psr.h"
> @@ -248,6 +249,23 @@ static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
>  	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
>  }
>  
> +static u16 intel_c20_sram_read(struct drm_i915_private *i915, enum port port,
> +			        int lane, u16 addr)
> +{
> +	u16 val;
> +
> +	assert_dc_off(i915);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_H, (addr >> 8), 1);
> +	intel_cx0_write(i915, port, lane, PHY_C20_RD_ADDRESS_L, addr & 0xff, 0);

Now that we have swapped the order of these writes, we should also swap the 1
and 0 passed as arguments to the "committed" parameter.

--
Gustavo Sousa

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
> @@ -598,6 +616,192 @@ static const struct intel_c10mpllb_state * const mtl_c10_edp_tables[] = {
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
> @@ -1117,7 +1321,271 @@ static const struct intel_c10mpllb_state * const mtl_c10_hdmi_tables[] = {
>  	NULL,
>  };
>  
> -int intel_c10_phy_check_hdmi_link_rate(int clock)
> +static const struct intel_c20pll_state mtl_c20_hdmi_25_175 = {
> +	.clock = 25175,
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> +	.tx = {  0xbe88, /* tx cfg0 */
> +		 0x9800, /* tx cfg1 */
> +		 0x0000, /* tx cfg2 */
> +	      },
> +	.cmn = { 0x0500, /* cmn cfg0*/
> +		 0x0005, /* cmn cfg1 */
> +		 0x0000, /* cmn cfg2 */
> +		 0x0000, /* cmn cfg3 */
> +	       },
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
> @@ -1130,6 +1598,17 @@ int intel_c10_phy_check_hdmi_link_rate(int clock)
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
> @@ -1314,6 +1793,19 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
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
>  static bool intel_c20_use_mplla(u32 clock)
>  {
>  	/* 10G and 20G rates use MPLLA */
> @@ -1323,6 +1815,65 @@ static bool intel_c20_use_mplla(u32 clock)
>  	return false;
>  }
>  
> +void intel_c20pll_readout_hw_state(struct intel_encoder *encoder,
> +				   struct intel_c20pll_state *pll_state)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	bool cntx;
> +	u32 val;
> +	int i;
> +
> +        /* 1. Read current context selection */
> +        cntx = intel_cx0_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_VDR_CUSTOM_SERDES_RATE) & PHY_C20_CONTEXT_TOGGLE;
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
> +							        PHY_C20_B_CMN_CNTX_CFG(i));
> +		else
> +			pll_state->cmn[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +							        PHY_C20_A_CMN_CNTX_CFG(i));
> +	}
> +
> +	if (cntx)
> +		val = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_MPLLA_CNTX_CFG(6));
> +	else
> +		val = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_MPLLA_CNTX_CFG(6));
> +
> +	if (val & C20_MPLLA_FRACEN) {
> +		/* MPLLA configuration */
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mplla); i++) {
> +			if (cntx)
> +				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +								          PHY_C20_B_MPLLA_CNTX_CFG(i));
> +			else
> +				pll_state->mplla[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +								          PHY_C20_A_MPLLA_CNTX_CFG(i));
> +		}
> +	} else {
> +		/* MPLLB configuration */
> +		for (i = 0; i < ARRAY_SIZE(pll_state->mpllb); i++) {
> +			if (cntx)
> +				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +								          PHY_C20_B_MPLLB_CNTX_CFG(i));
> +			else
> +				pll_state->mpllb[i] = intel_c20_sram_read(i915, encoder->port, INTEL_CX0_LANE0,
> +								          PHY_C20_A_MPLLB_CNTX_CFG(i));
> +		}
> +	}
> +}
> +
>  static u8 intel_c20_get_dp_rate(u32 clock)
>  {
>  	switch (clock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 952c7deeffaa..cf603080ce3d 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -33,14 +33,20 @@ void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
>  				     struct intel_c10mpllb_state *pll_state);
>  int intel_cx0mpllb_calc_state(struct intel_crtc_state *crtc_state,
>  			      struct intel_encoder *encoder);
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
> index 6acac38fd045..14b8dcee1c0c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3516,10 +3516,13 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
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
> index baa9ef7568af..43d06d22bd48 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -59,7 +59,7 @@
>  #include "intel_panel.h"
>  #include "intel_snps_phy.h"
>  
> -static struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
> +inline struct drm_i915_private *intel_hdmi_to_i915(struct intel_hdmi *intel_hdmi)
>  {
>  	return to_i915(hdmi_to_dig_port(intel_hdmi)->base.base.dev);
>  }
> @@ -1866,8 +1866,8 @@ hdmi_port_clock_valid(struct intel_hdmi *hdmi,
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
