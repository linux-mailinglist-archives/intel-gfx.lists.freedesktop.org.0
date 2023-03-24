Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B0CE6C866A
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Mar 2023 20:56:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A8B410ECA8;
	Fri, 24 Mar 2023 19:56:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC3EF10ECA6
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Mar 2023 19:56:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679687805; x=1711223805;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=d0rM+fTJz3IlwrxyrLuRFc0nG7Hu8f0QLiu448RK4G4=;
 b=asOQXPOqVwhlvoQOF+yf/1fB9qrwwROnko+WPfltZfo1RQ6zv0nmQhD2
 u/OMdTZiEDdu7AqQR6szga20bEoG4kXdVhon6Xs3iDmqg5+QsnGyt5RC0
 2zzU6dh6KdG8ELxTlLOWCVmOMfbD9rnbPByzYgKkTd+jvAc6k1Puuqh9k
 KVk3stIzhYMDCoyom9UBNtC2OLViaUsHn0sJisWY1VFgyBqDt51EihdSJ
 quJ6z017m1mnPDmCzhC59aU/j/FKXN0mO9hmtAsnIAMYbjf5HUEWQzwxa
 I2OTEmrvQEtqApvFF6Z7c8tO3+sy0xsZVNZiFREKmFJQ9FvClt2bZnM1M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="328298514"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="328298514"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2023 12:56:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10659"; a="772005746"
X-IronPort-AV: E=Sophos;i="5.98,288,1673942400"; d="scan'208";a="772005746"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Mar 2023 12:56:44 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Fri, 24 Mar 2023 12:56:44 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Fri, 24 Mar 2023 12:56:44 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Fri, 24 Mar 2023 12:56:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fW2vmwshheZzjafGudNefGm6irq9xRnYXZ6lZLYnsdWnieZYgdHF2Y8gEyUzHKM4H488UAfhXcAN5VDkVazV66pfB9+dL9SEiPlbdmwXT2nBS2IEtJB47nSoN1asDVXc6cJh8qwGOVakO+tENFgd10ZGNQS+UVt7nRE14YaBIja0o4Yb2hpVbx2wSFYPwgpMQozfCQTYyM9CSn+ctf/QuiqPr3mDgZHKOnw+ZHm0Em9UUqcaQYQaum2/BOjXycr66LetWmkYF89KfOx8yEleBE71wiRvrlaq1VTS8oO083eZidwHf8B6niCyX46Kgp6mMpBImPOcToCesJ2DKgWZHg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2oSSMiVh64fk1OYOXaTVYXln3pFIgyTQsR7xVV1PV/o=;
 b=d1QdlEczNqvslzAItMOl0CBXAsbCSrBn0bUmSdCzjS2PVR7lXyYO1nBwFnxvxJc2GyQHWkEr8SeFju72N0ObPjQSgWIXMRAaLjbdbzY7fhrGJ9u3LHqFsxF7scad32aWGaEoGcLj2lLiQs6uapzLkvcCN/2mLVSTfvBxJXSX8HM19JsQJN5rOarkRK46/ymbCof2h7tNJb0M7ASaPygYr4d/i7FlcgwZpVbHnCxvkqz4XaCuKC/pbiERPdcnex8/BqTlameKUC/yJO2yM00hmRRGBSaRimTRnwZzfjhKYFJNDkqw0egaLnPjs6Td0s5JKB2W0YTG32k7O0/4NRIhGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by DM4PR11MB5454.namprd11.prod.outlook.com (2603:10b6:5:399::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.38; Fri, 24 Mar
 2023 19:56:41 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::d12:1f2d:d921:2c4e%4]) with mapi id 15.20.6178.038; Fri, 24 Mar 2023
 19:56:41 +0000
Date: Fri, 24 Mar 2023 16:56:35 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230324195635.eaz2bdvyual4yiez@gjsousa-mobl2>
References: <20230316111335.66915-1-mika.kahola@intel.com>
 <20230316111335.66915-9-mika.kahola@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230316111335.66915-9-mika.kahola@intel.com>
X-ClientProxiedBy: BYAPR11CA0089.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::30) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|DM4PR11MB5454:EE_
X-MS-Office365-Filtering-Correlation-Id: 046855a1-4210-4789-2037-08db2ca1e2b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: CEuKA8kPZJ9jZ8c/2z0VzuEupyVOb7v9RGU0ScqoAcRjbl4HrBc0HY99h06nxYCgORVc85joD4GplcovI7nLMtJhE62wA0oMPPaWcZbMsY3edEvEupNmqD3IxAhjBPIw+5qrnLhUw8QUp4mMMCv7L4BxBveaWXDG1vMFGYf4o83pV2DdLFhvMgBCky0g8Iy2uUOGJ63gXjR6QKDuDu0NQdaJXEJHAZk6wV9Oq8LcZh0tsVRStf2G5qqn9WKHbP9kBUXp8fve9PkvDXF9rBxIXmRf1T18qiPZzR22abPRP0D9VM5H5ng0b9IgNNpHGDhULzwnZ1lKnpMtXMTReMZ7lBuiUKEyHz5n/Hkv/yyAWqN7phQk8/tcKR2yHNeYtu4H3DvLHFJPPwdA38bGm7M9FIsCt/RmlyaK/ahjj7btl6smGThOoVtOVv3rGcMKYlrNAPZjRu8zqU6PSnHoyryISrrXVtlyn6JURlkwFDklPXu6UuYd0VNrWz3mYtLxJf5dZ7tYnhdgRzJRdk53Ayd6rA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(136003)(396003)(376002)(366004)(346002)(451199021)(6512007)(316002)(26005)(1076003)(6666004)(6506007)(41300700001)(38100700002)(966005)(8936002)(5660300002)(44832011)(186003)(82960400001)(86362001)(6486002)(478600001)(9686003)(8676002)(2906002)(30864003)(66476007)(66946007)(66556008)(33716001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qHVbDjwFkDs+gQX9ofdBQbs1dwjjT4hIt2YkAlJEjlu16Ox9F8oBCmBVxE?=
 =?iso-8859-1?Q?RzoJRPLzsreqe7NaddvHMeVg4ufarr74si5r+7/kqPxWQnlIKVb/trKRj+?=
 =?iso-8859-1?Q?qhG2i2ZciLxEk6Qh6fH9rWaaNpUec2L2cow3Txrtes209kH6QGRetaHZ5W?=
 =?iso-8859-1?Q?xuBVxOljv7oedCjeQMpOQqvBRSKHg2llB4TySfcM2UpKkC/+HsXOj+hkgq?=
 =?iso-8859-1?Q?kzBPtsUfY9X6wYFDXzlHiCbL8dF5msMfCs1WFexs/MPpiA9lqBKK9k1i60?=
 =?iso-8859-1?Q?LlccsY1CROyFJ1DLzyDvqVovmWCmpXbZ+Sw3x8a+MVSDjTovLDHH44kmhG?=
 =?iso-8859-1?Q?aDv2Y/kZ7mcPx2p2Ynp8TuwKWXty6CgpAAg5NgMGLuW4cUGwTq9nQ8zo6w?=
 =?iso-8859-1?Q?G02xk7MwzKLn8tyi9KC8uCXUs21NlYN8Q3lTp+TRKtvi8WsBR6r5PvwkkO?=
 =?iso-8859-1?Q?xgZLWVEZt1rKUAnqCwH0yQXXhR8/sIkHlO1f3rXdoDhygF9En1XevDoCLA?=
 =?iso-8859-1?Q?hXoHYgBqHhvN8Eacj06YlsIM3NcEIcRFqAq6VLrqGpvBP7wYY0RSr3yEl2?=
 =?iso-8859-1?Q?zw9+f+fsVU5DNqbvbRlUZyN8FtCLzKE20ZBG2dy/k/4ttXJe6zru2ZRhjh?=
 =?iso-8859-1?Q?MvTV/YVG0wXsbjOtyHSlgujbRmDhwcNHunoBRWCYc2CxH01x0EG6XyTe1c?=
 =?iso-8859-1?Q?045K8PpXA3LZc26fzmxiveFOZ9evEUA7sZibALmXZVMYBbxBi9BDjunzdz?=
 =?iso-8859-1?Q?xZ3fbWyJ7sdv8qMo4mPfb/cQwd7CpUdk8HLMu4j3E9n6w4dlqDCFjE7FWW?=
 =?iso-8859-1?Q?LP1RmHXGkBACh0kXUxIdOcGsULj4GpsJBa2Ne9Y5qMjG7ueOibCtTt7eHb?=
 =?iso-8859-1?Q?hfDoVqqRXp+12oIsI9DxtyjXNaroAQbFWGwnc1UVFySfkFH/CTvMqsx/fz?=
 =?iso-8859-1?Q?PNYEKG/MmIHRnFT+KEqE5wi+FjeTTatcBSdmbAY4DAHuNVciLTcvvceKMf?=
 =?iso-8859-1?Q?gwD+4Qnqt2PnNkUgxOB2ftF+DbP5iroWABrzXIo5xiFGu4h8N6VFsEKvJD?=
 =?iso-8859-1?Q?G09giJeHLbzlL/TK0D2DpLq1WXhiKXQ+lXGKcba4NnCtU84Qm8gUv0V29P?=
 =?iso-8859-1?Q?CeZyrY7+9T2F37Wx8YK2jD/XqsCkQG5/MMBFdz2zgx8Cn+L98HCOF1hJ64?=
 =?iso-8859-1?Q?b8BJt6hFbTdARxCuIQjUrDoGTM7vdfZQ4RV/eKWbVQq9CTcdjfW4F0jGmy?=
 =?iso-8859-1?Q?QLUzODspV5JtVHgvkBgbShk2gXAoEtA2+2jtfJ9+5rx03Wcfnz/eVdNBu4?=
 =?iso-8859-1?Q?u3vspWr0pc5zzLbN9tjw2Cc5aPc0Zlnqqdg5trE96Wa7yMqR4MbBDI23ch?=
 =?iso-8859-1?Q?rTMeSDol4iy52oJFk7k5yukxEyJP8nX89RUD0I22N/xvYiowCmpmqK6rDV?=
 =?iso-8859-1?Q?PEINg2pRe4pi0ooWG433IEzMF7mlfdI3/WOP37kEgFLY45K84P/pMavSsZ?=
 =?iso-8859-1?Q?EVyK4BlKZQhc6PFBVxjb1bjJOoHNHhmfnL6P5lpfG7CuNo/KKS1gVvPgHM?=
 =?iso-8859-1?Q?5QnldpiA+OlghduFJO3IV557iOMSO1l9eFjl19FpkSrpDst1c5es6B0p64?=
 =?iso-8859-1?Q?wgdZrL56ucxF8qr37RatGyKFyZEuxjDALEp04bRYyoYckhcn+11Rz92w?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 046855a1-4210-4789-2037-08db2ca1e2b7
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2023 19:56:41.0409 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XkRVkwZVCe031OVJ7R7t7pw+v82tOwHdGiZMQC8FGnzJLnsvfM/q+JIb6kffeCYIrgIUWq2AnA56yahsMVxBCQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5454
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 08/22] drm/i915/mtl: C20 PLL programming
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

On Thu, Mar 16, 2023 at 01:13:21PM +0200, Mika Kahola wrote:
> C20 phy PLL programming sequence for DP, DP2.0, HDMI2.x non-FRL and
> HDMI2.x FRL. This enables C20 MPLLA and MPLLB programming sequence. add
> 4 lane support for c20.
> 
> v2: Rename intel_c20_write() to intel_c20_sram_write() (Gustavo)
>     Remove unnecessary bit masks (Gustavo)
>     Fix comments on C20 pll programming (Gustavo)
>     Clear calibration banks for both lanes (Gustavo)
> 
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 266 +++++++++++++++---
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  30 ++
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  11 +-
>  .../drm/i915/display/intel_display_types.h    |  19 +-
>  drivers/gpu/drm/i915/display/intel_dp.c       |  12 +-
>  5 files changed, 298 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 3d61afbe7bdb..730c70f82822 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -15,6 +15,7 @@
>  #include "intel_tc.h"
>  #include "intel_psr.h"
>  #include "intel_uncore.h"
> +#include "intel_tc.h"
>  
>  bool intel_is_c10phy(struct drm_i915_private *dev_priv, enum phy phy)
>  {
> @@ -235,6 +236,18 @@ static void intel_cx0_write(struct drm_i915_private *i915, enum port port,
>  	}
>  }
>  
> +static void intel_c20_sram_write(struct drm_i915_private *i915, enum port port,
> +				 int lane, u16 addr, u16 data)
> +{
> +	assert_dc_off(i915);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_H, (addr >> 8), 0);
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_ADDRESS_L, addr & 0xff, 0);
> +
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_H, (data >> 8), 0);
> +	intel_cx0_write(i915, port, lane, PHY_C20_WR_DATA_L, data & 0xff, 1);
> +}
> +
>  static void __intel_cx0_rmw(struct drm_i915_private *i915, enum port port,
>  			    int lane, u16 addr, u8 clear, u8 set, bool committed)
>  {
> @@ -1157,7 +1170,7 @@ static int intel_c10mpllb_calc_state(struct intel_crtc_state *crtc_state,
>  
>  	for (i = 0; tables[i]; i++) {
>  		if (crtc_state->port_clock <= tables[i]->clock) {
> -			crtc_state->c10mpllb_state = *tables[i];
> +			crtc_state->cx0pll_state.c10mpllb_state = *tables[i];
>  			return 0;
>  		}
>  	}
> @@ -1217,7 +1230,7 @@ static void intel_c10_pll_program(struct drm_i915_private *i915,
>  				  const struct intel_crtc_state *crtc_state,
>  				  struct intel_encoder *encoder)
>  {
> -	const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
> +	const struct intel_c10mpllb_state *pll_state = &crtc_state->cx0pll_state.c10mpllb_state;
>  	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>  	u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
> @@ -1301,6 +1314,205 @@ void intel_c10mpllb_dump_hw_state(struct drm_i915_private *dev_priv,
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
> +	const struct intel_c20pll_state *pll_state = &crtc_state->cx0pll_state.c20pll_state;
> +	bool dp = false;
> +	int lane_count = crtc_state->lane_count;
> +	int lanes = lane_count == 4 ? INTEL_CX0_BOTH_LANES : INTEL_CX0_LANE0;
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
> +	 * the lane #0 MPLLB CAL_DONE_BANK.
> +	 * Protocol switch is only applicable for MPLLB
> +	 */
> +	if (intel_c20_protocol_switch_valid(encoder)) {
> +		for (i = 0; i < 4; i++)
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(i), 0);

I see that it is changed from v2 in that it uses INTEL_CX0_BOTH_LANES instead of
INTEL_CX0_LANE0. I believe this change is to address my comment about
clearing calibration banks for all owned lanes[1], right?

In that case, I'm afraid that is still not the correct approach. In fact, the
spec says that only one lane message bus must be used for clearing those
registers (BSpec 67610).

Quoting the BSpec (64568, now with the correct number :-)):

    "(...) use lane 0 message bus to write all 0s data to PHY CREGs
    RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK_<0..3> for each of the owned PHY
    lanes"

I think what it actually means is that we must program using INTEL_CX0_LANE0,
but we need to go through through ranges for both lanes 0 and 1. In other words,
I think we need to clear registers 0x303D through 0x3040 (inclusive) for lane 0
and 0x323D through 0x3240 (inclusive) for lane 1. Something like below:

    for (i = 0; i < 4; i++) {
        intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(0, i), 0);
        intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(1, i), 0);
    }

    , where RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK() is modified to have the
    lane as the first parameter and the register index as the second one.

[1]: https://patchwork.freedesktop.org/patch/517052/?series=109714&rev=4#comment_943153

--
Gustavo Sousa

> +	}
> +
> +	/* 3. Write SRAM configuration context. If A in use, write configuration to B context */
> +	/* 3.1 Tx configuration */
> +	for (i = 0; i < 3; i++) {
> +		if (cntx)
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_TX_CNTX_CFG(i), pll_state->tx[i]);
> +		else
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_TX_CNTX_CFG(i), pll_state->tx[i]);
> +	}
> +
> +	/* 3.2 common configuration */
> +	for (i = 0; i < 4; i++) {
> +		if (cntx)
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_A_CMN_CNTX_CFG(i), pll_state->cmn[i]);
> +		else
> +			intel_c20_sram_write(i915, encoder->port, INTEL_CX0_LANE0, PHY_C20_B_CMN_CNTX_CFG(i), pll_state->cmn[i]);
> +	}
> +
> +	/* 3.3 mpllb or mplla configuration */
> +	if (intel_c20_use_mplla(pll_state->clock)) {
> +		for (i = 0; i < 10; i++) {
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
> +		for (i = 0; i < 11; i++) {
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
> +		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_WIDTH,
> +				is_dp2(pll_state->clock) ? 2 : 0,
> +				MB_WRITE_COMMITTED);
> +	} else if (is_hdmi_frl(pll_state->clock)) {
> +		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_WIDTH,
> +				1, MB_WRITE_COMMITTED);
> +	} else
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_WIDTH,
> +				0, MB_WRITE_COMMITTED);
> +
> +	/* 5. For DP or 6. For HDMI */
> +	if (dp) {
> +		intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +				BIT(6) | (intel_c20_get_dp_rate(pll_state->clock) << 1),
> +				MB_WRITE_COMMITTED);
> +	} else {
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +				((is_hdmi_frl(pll_state->clock) ? 1 : 0) << 7),
> +				MB_WRITE_COMMITTED);
> +
> +		intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C20_VDR_HDMI_RATE,
> +				(intel_c20_get_hdmi_rate(pll_state->clock) << 0),
> +				MB_WRITE_COMMITTED);
> +	}
> +
> +	/*
> +	 * 7. Write Vendor specific registers to toggle context setting to load
> +	 * the updated programming toggle context bit
> +	 */
> +	intel_cx0_write(i915, encoder->port, lanes, PHY_C20_VDR_CUSTOM_SERDES_RATE,
> +			cntx ? 0 : 1, MB_WRITE_COMMITTED);
> +}
> +
>  int intel_c10mpllb_calc_port_clock(struct intel_encoder *encoder,
>  				   const struct intel_c10mpllb_state *pll_state)
>  {
> @@ -1344,7 +1556,11 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
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
>  	if (intel_crtc_has_dp_encoder(crtc_state)) {
>  		intel_dp = enc_to_intel_dp(encoder);
> @@ -1599,8 +1815,8 @@ static u32 intel_cx0_get_pclk_pll_ack(u8 lane)
>  		       XELPDP_LANE1_PCLK_PLL_ACK;
>  }
>  
> -static void intel_c10pll_enable(struct intel_encoder *encoder,
> -				const struct intel_crtc_state *crtc_state)
> +void intel_cx0pll_enable(struct intel_encoder *encoder,
> +			 const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> @@ -1608,6 +1824,7 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
>  	bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
>  	u8 maxpclk_lane = lane_reversal ? INTEL_CX0_LANE1 :
>  					  INTEL_CX0_LANE0;
> +	intel_wakeref_t wakeref = intel_cx0_phy_transaction_begin(encoder);
>  
>  	/*
>  	 * 1. Program PORT_CLOCK_CTL REGISTER to configure
> @@ -1626,7 +1843,10 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
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
> @@ -1665,31 +1885,21 @@ static void intel_c10pll_enable(struct intel_encoder *encoder,
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
> @@ -1727,18 +1937,6 @@ static void intel_c10pll_disable(struct intel_encoder *encoder)
>  		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
>  	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
> -}
> -
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
>  
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
> @@ -1748,7 +1946,7 @@ void intel_c10mpllb_state_verify(struct intel_atomic_state *state,
>  {
>  	struct drm_i915_private *i915 = to_i915(state->base.dev);
>  	struct intel_c10mpllb_state mpllb_hw_state = { 0 };
> -	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->c10mpllb_state;
> +	struct intel_c10mpllb_state *mpllb_sw_state = &new_crtc_state->cx0pll_state.c10mpllb_state;
>  	struct intel_crtc *crtc = to_intel_crtc(new_crtc_state->uapi.crtc);
>  	struct intel_encoder *encoder;
>  	struct intel_dp *intel_dp;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index db67debb22e9..baadaaf3e39a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -186,4 +186,34 @@
>  #define C10_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(1, 0)
>  #define C10_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C10_PHY_VSWING_PREEMPH_MASK, val)
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
> +#define PHY_C20_VDR_HDMI_RATE		0xD01
> +#define  PHY_C20_CONTEXT_TOGGLE		REG_BIT8(0)
> +#define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
> +#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
> +#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))
> +#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
> +#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
> +#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
> +#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
> +#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
> +#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
> +
> +#define C20_MPLLB_FRACEN		REG_BIT(13)
> +#define C20_MPLLA_FRACEN		REG_BIT(14)
> +#define C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
> +#define C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
> +#define C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
> +
> +#define RAWLANEAONX_DIG_TX_MPLLB_CAL_DONE_BANK(idx)	(0x303D + (idx))
> +
>  #endif /* __INTEL_CX0_PHY_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 8e2a2bad9d31..6acac38fd045 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3064,6 +3064,11 @@ intel_ddi_update_prepare(struct intel_atomic_state *state,
>  
>  	intel_tc_port_get_link(enc_to_dig_port(encoder),
>  		               required_lanes);
> +
> +	/* FIXME: Add MTL pll_mgr */
> +	if (DISPLAY_VER(i915) >= 14)
> +		return;
> +
>  	if (crtc_state && crtc_state->hw.active) {
>  		struct intel_crtc *slave_crtc;
>  
> @@ -3513,9 +3518,9 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
>  
>  	drm_WARN_ON(&i915->drm, !intel_is_c10phy(i915, phy));
>  
> -	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->c10mpllb_state);
> -	intel_c10mpllb_dump_hw_state(i915, &crtc_state->c10mpllb_state);
> -	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->c10mpllb_state);
> +	intel_c10mpllb_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
> +	intel_c10mpllb_dump_hw_state(i915, &crtc_state->cx0pll_state.c10mpllb_state);
> +	crtc_state->port_clock = intel_c10mpllb_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10mpllb_state);
>  
>  	intel_ddi_get_config(encoder, crtc_state);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 2723bdc7bf7e..6c1981d73c9c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -985,6 +985,23 @@ struct intel_c10mpllb_state {
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
> +struct intel_cx0pll_state {
> +	union {
> +		struct intel_c10mpllb_state c10mpllb_state;
> +		struct intel_c20pll_state c20pll_state;
> +	};
> +};
> +
>  struct intel_crtc_state {
>  	/*
>  	 * uapi (drm) state. This is the software state shown to userspace.
> @@ -1128,7 +1145,7 @@ struct intel_crtc_state {
>  	union {
>  		struct intel_dpll_hw_state dpll_hw_state;
>  		struct intel_mpllb_state mpllb_state;
> -		struct intel_c10mpllb_state c10mpllb_state;
> +		struct intel_cx0pll_state cx0pll_state;
>  	};
>  
>  	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4927aeb64f23..c77d06bde68f 100644
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
> @@ -422,7 +423,14 @@ static int ehl_max_source_rate(struct intel_dp *intel_dp)
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
> @@ -451,7 +459,7 @@ intel_dp_set_source_rates(struct intel_dp *intel_dp)
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
