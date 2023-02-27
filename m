Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB2EF6A4796
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Feb 2023 18:11:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1E4310E43E;
	Mon, 27 Feb 2023 17:11:06 +0000 (UTC)
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 717BC10E192
 for <intel-gfx@freedesktop.org>; Mon, 27 Feb 2023 17:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677517860; x=1709053860;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OhbHMpqWSB/8deTU76tjpX3lQfrBtDJzlBQOlkmfxBA=;
 b=OLkFT2eRoS05PRu4t9TYM8V2pAIITvELXsKzElatxzPCmb/PqDOu4uAv
 McJczuiffEU9tBkr2KPGb1QVQRJ6Sa2T/gSo8chMa2MyqZSsdX6TJIKev
 qvb1zAv6N84VWX7oOibFO9amG3z5gL3zfBrnDlRADOC0aj1qZjK35icYd
 TerFnk3bsRmVKbyoszk5cnHN6pPCQITOr77l39EiROia6eFOPTBb+PzAw
 r2qi3luD01Xla47Z0yQfwaGOJo3RRoKHk2r2gP1BiNCZU/sFsEOqki3z3
 hD7HMY5xvqYkrtREhHiZG92UQ+2jHNZAlVQr3YKR22ik1eYTgH7YZ4DmA A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="331386177"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="331386177"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2023 09:07:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10634"; a="673797443"
X-IronPort-AV: E=Sophos;i="5.98,219,1673942400"; d="scan'208";a="673797443"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 27 Feb 2023 09:07:08 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 27 Feb 2023 09:07:08 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 27 Feb 2023 09:07:08 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.103)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 27 Feb 2023 09:07:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VN0MvSUROda5x0ijVzQ/RRPq24iUGqTzv9UL1nKYhklULA2buB3XmV9EKMGECQH1G3wejpCpT6I1hmynhA0T8d7LsmZYDN1Bz9NX6vUHvO2dO2mmr3ZO0ayZGWDuemDY2dfmdVjSihNNfR7jACaE6fylp8KSrvo29gwpGD4WatFN+7QUbXoawos+0HJRBhQmOtlUZ/aAYkDKGGTBMtzYCtZagxHCpl0IiIHS+E9n3+Cpn5FmYFJFjihQgszTuphiZaHO5qwnJ76YZ9i5fE67UoMDOvB9N88VkcHW5URT5qqKIO3S0iZJY5Uu3ppnsCpEDawTaFgqTE0m1o9LgbyEzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ch2CbsAbo+P+/UHnY2fxcQvlYoVsBaq6XpCela1DInc=;
 b=Jdn23anWUOEG/sgNciec7A7VSfdkecsbyPLiDQ/1+Ae56ALJPnQrAptNROPf2ETK0nzHWh5oTDTK8SniiptxxKbVbUbBcQuD7FQahMzjnTkonD5ijOIA2Iyio68woQEZKwGl65UctnJHmOznN4jCnQWFGJPXYcUiJa1V1c2mJv2Ukgy05QDp4CblNli9PKEyqigCIgmcRrbKXLPlTTmzuJAALFkI3PpELJe3UAoeP2kiZ7katy1dsSCBqA7OT7Oi4QSmPFRbkiJDKjVrqpuMkUBuDSSWl4QfkTUkWGWL1A3/6EXLIuWUS2ZvfugHxGxUToiJ8AgOC/qZKiUh7DFKKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN2PR11MB4239.namprd11.prod.outlook.com (2603:10b6:208:192::20)
 by DM8PR11MB5574.namprd11.prod.outlook.com (2603:10b6:8:39::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.29; Mon, 27 Feb
 2023 17:07:07 +0000
Received: from MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::e6e2:4a7f:2128:672]) by MN2PR11MB4239.namprd11.prod.outlook.com
 ([fe80::e6e2:4a7f:2128:672%4]) with mapi id 15.20.6134.029; Mon, 27 Feb 2023
 17:07:07 +0000
Date: Mon, 27 Feb 2023 09:06:57 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@freedesktop.org>
Message-ID: <Y/zjMf7yrQDdsSFR@msatwood-mobl>
References: <20230221193038.2876693-1-matthew.d.roper@intel.com>
 <20230221201836.2886794-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20230221201836.2886794-1-matthew.d.roper@intel.com>
X-ClientProxiedBy: BYAPR02CA0019.namprd02.prod.outlook.com
 (2603:10b6:a02:ee::32) To MN2PR11MB4239.namprd11.prod.outlook.com
 (2603:10b6:208:192::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN2PR11MB4239:EE_|DM8PR11MB5574:EE_
X-MS-Office365-Filtering-Correlation-Id: 267d5226-9091-4cf4-4ffa-08db18e50e11
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RT3ECwBjbGTnLKyUH5u4axVJPfn6x5NbYl/1+ellTWKCe7WS3man5CV0nvBCesf7l3FaH4Oj2ZmMCemh9Jja0bWOtuViQfe7PVivOlzYgh30z2wid5IihSsGFnw8GHOeKEhYxLYdgL/acTCyTRs1+civiTtqzbC++TffqfhYCtIuvU1N9+ZVIPsLcW7ldr5PEd5nHM8kALh5f8sgARy4ZC60SpHKaJRinPPVKEyPDudQOau7DekiqFDSalppvG65DmN84rKb7OFYlEnrJ2BO+DV16ejcTSOmYOQQBiEgfCSJtln+yW9rsDFsl0/zL967EG7JtTE8XeVNAxTcUdfNIklxAH/enZANFE7PnBRcWdV3NSnJa9jpcu4Jw9E8XWjDCC8UkFLYu2n1vhtQriXNWPjdkghhIxkpPq1DCvUbJqV8ih1MpI3RW3W+NKStq63SMXZrC4N2FTGu134KWn1zXIMNrEQr7+N19YMIcUvDSn+pVHUT63wITy66Wmbzfyr65Yi+hUPes5qbBKI9l5jiBdwt6JRw7lrWWagW/7nDdj3STc7zx9PwQ21Z6TZLb5QD2khaIfGMZ6na2XA2yvc2A4BOSZwJgWRRh5AfI5hNrwfUUyT4t0SWqclOhqKlynwk6PxRukIq7L5hDqkz+6vyuQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4239.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(136003)(366004)(376002)(39860400002)(396003)(346002)(451199018)(316002)(82960400001)(2906002)(15650500001)(5660300002)(8936002)(86362001)(66946007)(6506007)(6512007)(9686003)(186003)(4326008)(8676002)(66476007)(38100700002)(66556008)(41300700001)(83380400001)(478600001)(6486002)(6666004)(33716001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RG1GRTZFd3hENEhHdmVUNXpiREZjSXJVa0NVK3JOSHVGbG84MjFPTXNjWDFr?=
 =?utf-8?B?RXRmR0k4dnhtSWc3aG1oTHc2dWpqOUlCeVhHd1JFbFpwb3BLUmVCWEVnRVB0?=
 =?utf-8?B?VDExaUJ3d3lzalZ1M2pwRHJyb3F3VnFnV0l6dHpFWXJjMy9DT0xNUHNGVWdE?=
 =?utf-8?B?VUFxUXlQV1lvWU1HdzRjSjNwbFV1bDM3SFdNL0svYm9wTHA0UTVIK04zc3Ir?=
 =?utf-8?B?anQrM0lnOEpRY0lIUm9vM1Vld1BqQW5Xb2U2UG1BWG82T3ViK3RMbUY3MEZI?=
 =?utf-8?B?RFVzKzArWWk4U2FwSHFCSDhZY1liZld5V3kzRzI4cmJmaXgyKzNscktWNG82?=
 =?utf-8?B?MjVjb2t6L01ac0h5cXRXQ3BFb1F5V2VFaW1WNzMyOC9JZGZsL01sWUxrbmtU?=
 =?utf-8?B?UDUzc21EUlNNQ3pIZ3ZLRUdNdkZMd2diMnpWMk8xUVp3WW1LZUw0YndtUTFn?=
 =?utf-8?B?UDNiK0QzV0s5MTUvR3BvMExJaGJDcnJHZjI2Z2J3MGlORTgvcWlFeXJ3M0pE?=
 =?utf-8?B?MjhxWjUrc3lMTS9YbDdDd0dMelJ6QVhoZWE3K1kwcjVlUktpamNsTFlxZDJ6?=
 =?utf-8?B?SXFKTkc2cDFEeDROQ0lJTUVCaW9uejV0YmhwYlRaTHd0R01vcmtXS0kzaFB0?=
 =?utf-8?B?WmtTQVpBT3RwVWM5VEpWWFd1aFRseDJWMXp2OWN1Nm0rMlVvL1JHemxNUjJ3?=
 =?utf-8?B?ZUdqK1A1S1BIOWU3clk4ZVdGZWhCUXRiWFVXSllwc1BRZmF1ZUhmYWxpZ0FS?=
 =?utf-8?B?TE9KcHRGZFUvSTkzS3pFLzRacEtrZDRZNlBoUDRtRkt1cHVaSmFZUk8vSzV1?=
 =?utf-8?B?TjFyRnlOMXREL01Pa1c1REhNVUw3MWdnY2hBSE1qL2d5bHNOdHRDa2tyanZs?=
 =?utf-8?B?c245L2xGSE1kajliQm8rajJnd1NBNm9vdEVGVS9STzdGYjBtbkprWVRrbmZw?=
 =?utf-8?B?c1dsMUh5dHNwUDZwOVlUZFp5Tm8zZ0hhdWpZSTc2TTl4NG5XVE1sRWNrYkts?=
 =?utf-8?B?MCtwbENPbVd0a3J1LzUvazRCZmRnK0d5WUkzcVAzWjZ1OVRBOXV4bzYvSWFn?=
 =?utf-8?B?SnQzU01Ed3ZueENrR0o1UUtwVGE5VXQ4LzJhVjAyUFJnL2MrSmlQYXR3RkFu?=
 =?utf-8?B?bnlLcTk5SW5helVBVFd4cVNXemZCVzJpRDVUQnRkMWlPQ3lQdHZ0d0J1aDc5?=
 =?utf-8?B?dVovUm5pR3B2RXV4Ums4ek9Gek9VNTdpWXhyVVlaVnZ6N0U4ZlQ3UXBVLzh3?=
 =?utf-8?B?K2NsWHBaRFBmN09WRVF2bzRycjAvV2V6MkFjUEZkTi9kelh3aWpPMWRreUxq?=
 =?utf-8?B?ZE8xYXJwMUJRdUlCS1A1ZnFvQkZuR0tmcDk2QndBNEVtMmNIMDJYMUUrVDVi?=
 =?utf-8?B?UzAybjhDNFUrYmF3ME1kc3g5TUY4MEhhTUllOUE2MmgwWDVydDZUa08yV2pi?=
 =?utf-8?B?Mm02YURTOHBzODVUQVFGSjNYRys1ZnhEMk1haURWc2wxRURHQ0Rsa1V6V0di?=
 =?utf-8?B?MGtzbnV1QkM4N284QW5weEhiTzBlOU1lT1EwUXp6MHpkdEJpSE50ZmRybmZC?=
 =?utf-8?B?dERrOGJyWlhRdkZjS0FEcDJNSC8vYW1PVjdhajVFZnlIWkZOWEQwTVZuN1Uy?=
 =?utf-8?B?Z3RGdlR6dXJ1RjlZYTNvdm5DTXNMcFBpVXlEWTFWU2VWaUUrWlJHd2NGT253?=
 =?utf-8?B?MlN6VmduN1FzYXVKR3FFTkZUYWRBSnFBcTJUR1MydGI4UWRqUE9hcmZCNE1J?=
 =?utf-8?B?K3ZtVWdIUVVMNndoSTlFTDQ0S1k1a0tqZWFOd2I5YXJMdW14aFFMVXFTUURx?=
 =?utf-8?B?WTh2QUc0dUJYYWxMdVFBZTFNc3lBWXJEaks1WmFob0JHNWhZY3JKU1lwZGxW?=
 =?utf-8?B?aXM5THVFZHVRSE41d2hud3QyM1Y0NUFkQ3MrR1ZJbVlQRzBxUGd0S04zeHJF?=
 =?utf-8?B?WWJWZ21Qd1RJd0xMWG44QldsT1VMVit1T2EybUhKK2w1WmRiWUQ4VjBRbzlN?=
 =?utf-8?B?Q0J5VWNGSHAySVZMZGpDSEtmTDhxTE5HQmRqSnNXUnRCQ1ViMkxtd1JQa2d4?=
 =?utf-8?B?VUgzNVZUVTlQamJhVDhRaGFYS1JLOW82Y3hrTEFqSUlkaUNtT24vTm9mMy9C?=
 =?utf-8?B?TVFGM2dRWDBwbWRNU0RIbEV6cjZKYks4M082SXhkUGROTXljQWxsckp6UnVC?=
 =?utf-8?Q?/oG8zs0rk2N16lXrhZc90I7iEeXVLqLs1PIAApwA0mL3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 267d5226-9091-4cf4-4ffa-08db18e50e11
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4239.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2023 17:07:06.8462 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: R3oTgKu8YNqoIVCcBVI4ECDlu7qVHI7oejjtzgqyMk7ygU8yoUobZk5G29ZgaQPkrUY4KmHEmH3gnpHU8Q+1s+uOjMUcPQY6qjH8vdCeDuI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5574
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gen12: Update combo PHY init
 sequence
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

On Tue, Feb 21, 2023 at 12:18:36PM -0800, Matt Roper wrote:
> The bspec was updated with a minor change to the 'DCC mode select'
> setting to be programmed during combo PHY initialization.
> 
> v2:
>  - Keep the opencoded rmw behavior instead of switching to
>    intel_de_rmw().  We need to read from a _LN register, but write to
>    the _GRP register to update all lanes.
> 
> Bspec: 49291
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_combo_phy.c      | 5 ++---
>  drivers/gpu/drm/i915/display/intel_combo_phy_regs.h | 4 ++--
>  2 files changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy.c b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> index 27e98eabb006..922a6d87b553 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy.c
> @@ -233,8 +233,7 @@ static bool icl_combo_phy_verify_state(struct drm_i915_private *dev_priv,
>  				     ICL_PORT_TX_DW8_ODCC_CLK_DIV_SEL_DIV2);
>  
>  		ret &= check_phy_reg(dev_priv, phy, ICL_PORT_PCS_DW1_LN(0, phy),
> -				     DCC_MODE_SELECT_MASK,
> -				     DCC_MODE_SELECT_CONTINUOSLY);
> +				     DCC_MODE_SELECT_MASK, RUN_DCC_ONCE);
>  	}
>  
>  	ret &= icl_verify_procmon_ref_values(dev_priv, phy);
> @@ -354,7 +353,7 @@ static void icl_combo_phys_init(struct drm_i915_private *dev_priv)
>  
>  			val = intel_de_read(dev_priv, ICL_PORT_PCS_DW1_LN(0, phy));
>  			val &= ~DCC_MODE_SELECT_MASK;
> -			val |= DCC_MODE_SELECT_CONTINUOSLY;
> +			val |= RUN_DCC_ONCE;
>  			intel_de_write(dev_priv, ICL_PORT_PCS_DW1_GRP(phy), val);
>  		}
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> index 2ed65193ca19..b0983edccf3f 100644
> --- a/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_combo_phy_regs.h
> @@ -90,8 +90,8 @@
>  #define ICL_PORT_PCS_DW1_AUX(phy)		_MMIO(_ICL_PORT_PCS_DW_AUX(1, phy))
>  #define ICL_PORT_PCS_DW1_GRP(phy)		_MMIO(_ICL_PORT_PCS_DW_GRP(1, phy))
>  #define ICL_PORT_PCS_DW1_LN(ln, phy)		_MMIO(_ICL_PORT_PCS_DW_LN(1, ln, phy))
> -#define   DCC_MODE_SELECT_MASK			(0x3 << 20)
> -#define   DCC_MODE_SELECT_CONTINUOSLY		(0x3 << 20)
> +#define   DCC_MODE_SELECT_MASK			REG_GENMASK(21, 20)
> +#define   RUN_DCC_ONCE				REG_FIELD_PREP(DCC_MODE_SELECT_MASK, 0)
>  #define   COMMON_KEEPER_EN			(1 << 26)
>  #define   LATENCY_OPTIM_MASK			(0x3 << 2)
>  #define   LATENCY_OPTIM_VAL(x)			((x) << 2)
> -- 
> 2.39.1
> 
