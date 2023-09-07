Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCA8797AD6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 19:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4015110E084;
	Thu,  7 Sep 2023 17:52:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5672D10E084;
 Thu,  7 Sep 2023 17:52:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694109143; x=1725645143;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=fLq+gYco5Ltp/ho8DXKmImKwBPmF/pm/bNdJ12/CM5g=;
 b=h+5gcNtY7F2T/RE2D6jQmUyBOEmHAWFQGrE48TRZLmwrMs1qjYFukDa1
 F4TtN4QPizrOeg55IdolyaL+NuaQW00MsffTagdP25KbXcMjMJbJPAXBL
 4W7QkdmAm9s+IR4YEa3dywiAjjRC3N/m2nY0JJpKZkb5mdVnRAhRJ5NbZ
 ZgHr0lCIVktDxvDtHJhAqqXKzi9D50qINmwm7uvV56iWtGwhx+fUzdZoQ
 F5tmYkkVPWRlf+qgpS0mDpkw1fzWJPuhWxQzBWMa+v6jwVqaxdK2xeY3f
 Lrni8l/u+1Cpcogy5iBaMd6LgQZSYWn/fwM9Uz9H3uCx9bh44KaucF+DA A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="441452018"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="441452018"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 10:52:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="742110057"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="742110057"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Sep 2023 10:52:22 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Thu, 7 Sep 2023 10:52:21 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Thu, 7 Sep 2023 10:52:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 7 Sep 2023 10:52:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W6xPIOwyouunARwyHXSfH7WQUvS+z2AOfqTi/+r9JwkotAZk8IFqjEQMITfnDIwcx7c7rOU91DzCTBnBxXlIv7pfgZhth8LV8cNfyVYYXXgIPhZvLpNaDm6NvB5p103N8dKQk3GCVaYQ6SmO4ifSNBA4P9SbB2MGm5qBJfrFbLbNoKf97L5C4F2M5ct2PW6uhsxD4scq8A7Omm44ATiyTikfEnsWDl/aRxqZCUGs+2mlg1+9OTIM+UpFHLlgfzeQ7lfHIXLsA3UeM72sYnlphsKUiOYhftJMVjXrNkE+oCPkgUsaI9lvt0a0qR5uIiyX/qB2syXXeEJjCFN9i4JKpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2acL9LIOXBDEzdoG/LBvZMb/8+vPI1uLiXCiLfBQF5o=;
 b=UUw4I9PEA33Cw99w0AdVf/hSSgdRl262Qpjq5ynP8fplyAGyzdk9fB3GhcB3uWttJPvV65q9JgYE4M9FrFCLVcuj6hbdFujTfvcWxvtt4xKF8/f9E2NeMc2zkFdMJGgqBiVVgRxz/5EgDRlg1S3I9ry+FMSF76v8JkNMnb95u3adsy78wFJpIEIcx3sbMkFKgriAiMJaHDZycByHTp05c85kSZxFno8Su22a5mvNd5ZjKy3y+283t5WWV++ihDKZn8GxWEux6K2Xe9SRB1Yxz0d7/6Wg5rARQ8qYPIvVOiiCXAScker+3P8Ol81QhIxnqIhYMjhyD28P6HNMlYEJFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CH3PR11MB8708.namprd11.prod.outlook.com (2603:10b6:610:1be::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.36; Thu, 7 Sep 2023 17:52:19 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Thu, 7 Sep 2023
 17:52:19 +0000
Date: Thu, 7 Sep 2023 10:52:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230907175216.GL2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-10-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-10-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0364.namprd03.prod.outlook.com
 (2603:10b6:a03:3a1::9) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CH3PR11MB8708:EE_
X-MS-Office365-Filtering-Correlation-Id: eba8fe02-3da3-470a-5800-08dbafcb2e1f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OKdkbJNzWAXDnRrrXwzyBfz8b984PHrF1AWOaOzdi96IMWNhHlcR1wL5rcvXVBowHah22ZHxxWepBj2bkGP86lE15iH4o9oDVhXFwDuk453vRLBoN+ONb8SglNyfo2UjTvcFvH7xxYKZiAOf4hRwgO7Om/uHlLiTHh9aK3u5kHhFIvDUQZSUzGrPs6VAwkXN6wIQcIOIwW/llfvDzm9f5x9FykeiWyCwuy/0eCRF11EfJWkgSLcqLXmgyEjF7H1HGYIbrlEx8TBHLQS8PwRdURRXqSzRWwWEbVTXijj5x0mh049gxADFRridP2g9rXx7V65ss1G59SawFQCY2zMtz3SDHHokDy+dhclNZp1LiH8cPUpURB9xBFKwSg9z8LmShsLf/a9Q+871RN8xDfYO4xN4T+f9oapgHl358j5McD0NjH54ykF8Hq7RQtyuCuz639Bw65zun4EYTqBNM1GetSNrrKJc1HKKvdagb8avszXrA6WzwHy06wsR0yDUnxDyOsc/uQUYn2ThjK/s76vodWOgwHSqXnxPQ7+MGFicvn9kAjKv1Y+70luPGinQqrNr
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(376002)(136003)(366004)(1800799009)(186009)(451199024)(82960400001)(38100700002)(66899024)(86362001)(33656002)(478600001)(2906002)(6512007)(6666004)(6486002)(4326008)(6506007)(8936002)(8676002)(6862004)(450100002)(5660300002)(66946007)(66476007)(316002)(30864003)(6636002)(66556008)(41300700001)(83380400001)(26005)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ARh78x1rdx3YrkVMX94WaTqn1KEm+E0KPSXi0ca2uSDqQdLk0VaA+NeQjIdj?=
 =?us-ascii?Q?Qc2OjxLHs+0r3+90uRukTBDgd4cIR1mF9zY5ZF29LILtf32DBDmssxOYrSZM?=
 =?us-ascii?Q?qFzLsFCQjZ0/tBJz0OhM44EpVHgJyXL8O5+oztE1FqG04KiyWaB2I3zV9Ip8?=
 =?us-ascii?Q?r71Nv1OiV6sUGbDxw+w65T/dMGhuF053Uc2d31jzl0xeLLiG28jwsclDHbKP?=
 =?us-ascii?Q?tItDLLMI1WQ8XS4T/9nOiqeYju6eiCiYYpV+j3Pn/uguTGQ7R/ppnWCRl3is?=
 =?us-ascii?Q?2QkgYiEaNeW2XlO0qGqf9E4Hc9wyWxQC1pd28J0M7OzQhrpIctu62cU/6BBs?=
 =?us-ascii?Q?NltplKeWjNtAy0BatRPXc0mko6Y95myun3defVMUQD4BCxEYQIj4can+/rrn?=
 =?us-ascii?Q?vEYn1aSrsNMI1qslTzdWQM05u5QDBKxubj1znzASY5Dv+vj31Gv6oH9SbkLz?=
 =?us-ascii?Q?zoPMlfrOswcy7UgsgCBg6LYlT5+L3kob15HSUttSXQDLo5iQeQmVmg6OY0r5?=
 =?us-ascii?Q?Fk/xJ6bVvLz2F5QN7o+2kc6S7MYiCto1C9ch+R2KUHi+1HyPcI07C3H2JDFb?=
 =?us-ascii?Q?jyEFujwX/wdIIeWETne6TqYUuK/jl//qdetvNqMbPnFewIhb5ucWYEv8Gobq?=
 =?us-ascii?Q?zyEkaySjIpVZLgNUxA3wEsnLh79rKRM2wvsmjhFo9kIYCcJag1M0h9zq+3IP?=
 =?us-ascii?Q?u/ptH6bvkhWRGKGKIaSYl+VJh6u6nOmzdf4C2Jk5VxeQ9AUVfzHJ4gf+vwI1?=
 =?us-ascii?Q?uqfx/FbG2U1hYXKHVJvIHZmYlZVsuhD858IJpIld+egf/1WLHHLZBWi+ClRK?=
 =?us-ascii?Q?bbC0njcL3XCqgib5JkqyrxkqNpciquKOClsJjQ71SOyWxnj3DLazSZbP85MD?=
 =?us-ascii?Q?g20lULJNkD7sZG6z3R+P7Kb9CsejPa2QDfIuqSOa+cWfoB9tiI9Qu4ZUmKjl?=
 =?us-ascii?Q?O64cm+kt4UHlLoTpUufIGotwnOTPHm5iAXOpL7uhjIxPitlt+lOvP7zSYWQL?=
 =?us-ascii?Q?R+RjJwV5UENLeVHWpAcQM0zDG6VtAugBxSZdtgwLAtJ1rT36nsVCK++UkKit?=
 =?us-ascii?Q?rVXXpXdTz/GDrWd+sidGZfdTlHm0M0wttqMW7ot6rmyXkNy7CKPkNGoYNgVy?=
 =?us-ascii?Q?3Q+A3pSZf+BO4S/MGrftLaO210Rv90v/SJgO7rQbc2W3jHfVCKxsCve1yxpw?=
 =?us-ascii?Q?mBqWDIzDIokEnckCx2ts8QDbSrgsEkF9c/YhDaKIIxW8U8ETZ4Qn2q2NnM7m?=
 =?us-ascii?Q?TAdAAQZm37ZIq+vrSYzPOtNYtyWVcQokqWQ9LblhHFgC/V3d+mwwz9MDLY5M?=
 =?us-ascii?Q?M7TcsyqaqKUu40JhS8OPapsm20ZVqUcMiy1Y8x+ilmYuu/nU8PWm57JIAcOp?=
 =?us-ascii?Q?9OwrTA6THNCWCu5sa1sYk0BUlfjiMa7xRc0kpXzdFBsxeBKqZTb4LkEpea3E?=
 =?us-ascii?Q?Hf7dA/VkVpBXgQi7zHQyZuSYRBTY/AIXPmX1DDHILr48uP2izAPZrol+jGqi?=
 =?us-ascii?Q?YfkqFTu479oSVQ20uJbdKyKNie9GwJ9IP/reb5W6Qbo+XzUoP/qyO6+xBXnV?=
 =?us-ascii?Q?XafllWWjw+TJEnNH7TzpwyojbwLlsZilEbiOkmeo78IwHuSODSkXksENkqGe?=
 =?us-ascii?Q?0Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eba8fe02-3da3-470a-5800-08dbafcb2e1f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Sep 2023 17:52:19.1888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lecZsmQEZ7h3Ye0vSBqWZoVjyneLsrk933e6iS/XfgHWHrOGWYolvYRXkk5KL0qo1teHKfzWKP6S5/vvMeIcIHGlZ0wtXzgAORZoIK5fHA8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8708
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 09/27] drm/i915/xe2lpd: Move registers to
 PICA
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

On Thu, Sep 07, 2023 at 08:37:39AM -0700, Lucas De Marchi wrote:
> Some registers for DDI A/B moved to PICA and now follow the same format
> as the ones for the PORT_TC ports. The wrapper here deals with 2 issues:
> 
> 	- Share the implementation between xe2lpd and previous
> 	  platforms: there are minor layout changes, it's mostly the
> 	  register location that changed
> 	- Handle offsets after TC ports
> 
> v2:
>   - Explain better the trick to use just the second range (Matt Roper)
>   - Add missing conversions after rebase (Matt Roper)
>   - Use macro instead of inline function, avoiding includes in the
>     header (Jani)
>   - Prefix old macros with underscore so they don't get used by mistake,
>     and name the new ones using the previous names
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 83 ++++++++++---------
>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h | 57 +++++++++++--
>  drivers/gpu/drm/i915/display/intel_ddi.c      | 20 +++--
>  drivers/gpu/drm/i915/display/intel_tc.c       | 16 ++--
>  4 files changed, 114 insertions(+), 62 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index e6d3027c821d..0ea00feb1ace 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -100,7 +100,7 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
>  static void intel_clear_response_ready_flag(struct drm_i915_private *i915,
>  					    enum port port, int lane)
>  {
> -	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
> +	intel_de_rmw(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
>  		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
>  }
>  
> @@ -108,10 +108,10 @@ static void intel_cx0_bus_reset(struct drm_i915_private *i915, enum port port, i
>  {
>  	enum phy phy = intel_port_to_phy(i915, port);
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_RESET);
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_RESET,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  		drm_err_once(&i915->drm, "Failed to bring PHY %c to idle.\n", phy_name(phy));
> @@ -163,7 +163,7 @@ static int intel_cx0_wait_for_ack(struct drm_i915_private *i915, enum port port,
>  	enum phy phy = intel_port_to_phy(i915, port);
>  
>  	if (__intel_de_wait_for_register(i915,
> -					 XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane),
> +					 XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane),
>  					 XELPDP_PORT_P2M_RESPONSE_READY,
>  					 XELPDP_PORT_P2M_RESPONSE_READY,
>  					 XELPDP_MSGBUS_TIMEOUT_FAST_US,
> @@ -199,7 +199,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
>  	int ack;
>  	u32 val;
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -208,7 +208,7 @@ static int __intel_cx0_read_once(struct drm_i915_private *i915, enum port port,
>  		return -ETIMEDOUT;
>  	}
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       XELPDP_PORT_M2P_COMMAND_READ |
>  		       XELPDP_PORT_M2P_ADDRESS(addr));
> @@ -259,7 +259,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
>  	int ack;
>  	u32 val;
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -268,14 +268,14 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
>  		return -ETIMEDOUT;
>  	}
>  
> -	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	intel_de_write(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
>  		       XELPDP_PORT_M2P_TRANSACTION_PENDING |
>  		       (committed ? XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED :
>  				    XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED) |
>  		       XELPDP_PORT_M2P_DATA(data) |
>  		       XELPDP_PORT_M2P_ADDRESS(addr));
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
>  				    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  		drm_dbg_kms(&i915->drm,
> @@ -288,7 +288,7 @@ static int __intel_cx0_write_once(struct drm_i915_private *i915, enum port port,
>  		ack = intel_cx0_wait_for_ack(i915, port, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
>  		if (ack < 0)
>  			return ack;
> -	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)) &
> +	} else if ((intel_de_read(i915, XELPDP_PORT_P2M_MSGBUS_STATUS(i915, port, lane)) &
>  		    XELPDP_PORT_P2M_ERROR_SET)) {
>  		drm_dbg_kms(&i915->drm,
>  			    "PHY %c Error occurred during write command.\n", phy_name(phy));
> @@ -2470,7 +2470,8 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	u32 val = 0;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port), XELPDP_PORT_REVERSAL,
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
> +		     XELPDP_PORT_REVERSAL,
>  		     lane_reversal ? XELPDP_PORT_REVERSAL : 0);
>  
>  	if (lane_reversal)
> @@ -2490,7 +2491,7 @@ static void intel_program_port_clock_ctl(struct intel_encoder *encoder,
>  	else
>  		val |= crtc_state->cx0pll_state.ssc_enabled ? XELPDP_SSC_ENABLE_PLLB : 0;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  		     XELPDP_LANE1_PHY_CLOCK_SELECT | XELPDP_FORWARD_CLOCK_UNGATE |
>  		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_SSC_ENABLE_PLLA |
>  		     XELPDP_SSC_ENABLE_PLLB, val);
> @@ -2523,15 +2524,16 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
>  						u8 lane_mask, u8 state)
>  {
>  	enum phy phy = intel_port_to_phy(i915, port);
> +	i915_reg_t buf_ctl2_reg = XELPDP_PORT_BUF_CTL2(i915, port);
>  	int lane;
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +	intel_de_rmw(i915, buf_ctl2_reg,
>  		     intel_cx0_get_powerdown_state(INTEL_CX0_BOTH_LANES, XELPDP_LANE_POWERDOWN_NEW_STATE_MASK),
>  		     intel_cx0_get_powerdown_state(lane_mask, state));
>  
>  	/* Wait for pending transactions.*/
>  	for_each_cx0_lane_in_mask(lane_mask, lane)
> -		if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane),
> +		if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(i915, port, lane),
>  					    XELPDP_PORT_M2P_TRANSACTION_PENDING,
>  					    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
>  			drm_dbg_kms(&i915->drm,
> @@ -2540,12 +2542,12 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
>  			intel_cx0_bus_reset(i915, port, lane);
>  		}
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +	intel_de_rmw(i915, buf_ctl2_reg,
>  		     intel_cx0_get_powerdown_update(INTEL_CX0_BOTH_LANES),
>  		     intel_cx0_get_powerdown_update(lane_mask));
>  
>  	/* Update Timeout Value */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> +	if (__intel_de_wait_for_register(i915, buf_ctl2_reg,
>  					 intel_cx0_get_powerdown_update(lane_mask), 0,
>  					 XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> @@ -2554,10 +2556,10 @@ static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
>  
>  static void intel_cx0_setup_powerdown(struct drm_i915_private *i915, enum port port)
>  {
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
>  		     XELPDP_POWER_STATE_READY_MASK,
>  		     XELPDP_POWER_STATE_READY(CX0_P2_STATE_READY));
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(port),
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL3(i915, port),
>  		     XELPDP_POWER_STATE_ACTIVE_MASK |
>  		     XELPDP_PLL_LANE_STAGGERING_DELAY_MASK,
>  		     XELPDP_POWER_STATE_ACTIVE(CX0_P0_STATE_ACTIVE) |
> @@ -2602,28 +2604,28 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
>  					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
>  					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
>  
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(port),
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL1(i915, port),
>  					 XELPDP_PORT_BUF_SOC_PHY_READY,
>  					 XELPDP_PORT_BUF_SOC_PHY_READY,
>  					 XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US, 0, NULL))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of SOC reset after %dus.\n",
>  			 phy_name(phy), XELPDP_PORT_BUF_SOC_READY_TIMEOUT_US);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port),
>  		     XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1),
>  		     lane_pipe_reset);
>  
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(i915, port),
>  					 lane_phy_current_status, lane_phy_current_status,
>  					 XELPDP_PORT_RESET_START_TIMEOUT_US, 0, NULL))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
>  			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
>  		     intel_cx0_get_pclk_refclk_request(owned_lane_mask),
>  		     intel_cx0_get_pclk_refclk_request(lane_mask));
>  
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(port),
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, port),
>  					 intel_cx0_get_pclk_refclk_ack(owned_lane_mask),
>  					 intel_cx0_get_pclk_refclk_ack(lane_mask),
>  					 XELPDP_REFCLK_ENABLE_TIMEOUT_US, 0, NULL))
> @@ -2634,9 +2636,10 @@ static void intel_cx0_phy_lane_reset(struct drm_i915_private *i915,
>  					    CX0_P2_STATE_RESET);
>  	intel_cx0_setup_powerdown(i915, port);
>  
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port), lane_pipe_reset, 0);
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(i915, port), lane_pipe_reset, 0);
>  
> -	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(port), lane_phy_current_status,
> +	if (intel_de_wait_for_clear(i915, XELPDP_PORT_BUF_CTL2(i915, port),
> +				    lane_phy_current_status,
>  				    XELPDP_PORT_RESET_END_TIMEOUT))
>  		drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dms.\n",
>  			 phy_name(phy), XELPDP_PORT_RESET_END_TIMEOUT);
> @@ -2765,12 +2768,12 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	 * 8. Set PORT_CLOCK_CTL register PCLK PLL Request
>  	 * LN<Lane for maxPCLK> to "1" to enable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES),
>  		     intel_cx0_get_pclk_pll_request(maxpclk_lane));
>  
>  	/* 9. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK> == "1". */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES),
>  					 intel_cx0_get_pclk_pll_ack(maxpclk_lane),
>  					 XELPDP_PCLK_PLL_ENABLE_TIMEOUT_US, 0, NULL))
> @@ -2790,7 +2793,7 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	u32 clock;
> -	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
> +	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
>  
>  	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>  
> @@ -2843,11 +2846,11 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
>  	 */
>  	val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(i915, crtc_state->port_clock));
>  	val |= XELPDP_FORWARD_CLOCK_UNGATE;
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
>  
>  	/* 2. Read back PORT_CLOCK_CTL REGISTER */
> -	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
> +	val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
>  
>  	/*
>  	 * 3. Follow the Display Voltage Frequency Switching - Sequence
> @@ -2858,10 +2861,10 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
>  	 * 4. Set PORT_CLOCK_CTL register TBT CLOCK Request to "1" to enable PLL.
>  	 */
>  	val |= XELPDP_TBT_CLOCK_REQUEST;
> -	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(encoder->port), val);
> +	intel_de_write(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port), val);
>  
>  	/* 5. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "1". */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  					 XELPDP_TBT_CLOCK_ACK,
>  					 XELPDP_TBT_CLOCK_ACK,
>  					 100, 0, NULL))
> @@ -2913,7 +2916,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	 * 3. Set PORT_CLOCK_CTL register PCLK PLL Request LN<Lane for maxPCLK>
>  	 * to "0" to disable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  		     intel_cx0_get_pclk_pll_request(INTEL_CX0_BOTH_LANES) |
>  		     intel_cx0_get_pclk_refclk_request(INTEL_CX0_BOTH_LANES), 0);
>  
> @@ -2923,7 +2926,7 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	/*
>  	 * 5. Poll on PORT_CLOCK_CTL PCLK PLL Ack LN<Lane for maxPCLK**> == "0".
>  	 */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  					 intel_cx0_get_pclk_pll_ack(INTEL_CX0_BOTH_LANES) |
>  					 intel_cx0_get_pclk_refclk_ack(INTEL_CX0_BOTH_LANES), 0,
>  					 XELPDP_PCLK_PLL_DISABLE_TIMEOUT_US, 0, NULL))
> @@ -2936,9 +2939,9 @@ static void intel_cx0pll_disable(struct intel_encoder *encoder)
>  	 */
>  
>  	/* 7. Program PORT_CLOCK_CTL register to disable and gate clocks. */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK, 0);
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>  
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
> @@ -2957,11 +2960,11 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  	/*
>  	 * 2. Set PORT_CLOCK_CTL register TBT CLOCK Request to "0" to disable PLL.
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  		     XELPDP_TBT_CLOCK_REQUEST, 0);
>  
>  	/* 3. Poll on PORT_CLOCK_CTL TBT CLOCK Ack == "0". */
> -	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	if (__intel_de_wait_for_register(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  					 XELPDP_TBT_CLOCK_ACK, 0, 10, 0, NULL))
>  		drm_warn(&i915->drm, "[ENCODER:%d:%s][%c] PHY PLL not unlocked after 10us.\n",
>  			 encoder->base.base.id, encoder->base.name, phy_name(phy));
> @@ -2974,7 +2977,7 @@ static void intel_mtl_tbt_pll_disable(struct intel_encoder *encoder)
>  	/*
>  	 * 5. Program PORT CLOCK CTRL register to disable and gate clocks
>  	 */
> -	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port),
>  		     XELPDP_DDI_CLOCK_SELECT_MASK |
>  		     XELPDP_FORWARD_CLOCK_UNGATE, 0);
>  
> @@ -3001,7 +3004,7 @@ intel_mtl_port_pll_type(struct intel_encoder *encoder,
>  	 * TODO: Determine the PLL type from the SW state, once MTL PLL
>  	 * handling is done via the standard shared DPLL framework.
>  	 */
> -	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
> +	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(i915, encoder->port));
>  	u32 clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
>  
>  	if (clock == XELPDP_DDI_CLOCK_SELECT_MAXPCLK ||
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index b2db4cc366d6..faff81fa8438 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -7,16 +7,39 @@
>  #define __INTEL_CX0_PHY_REGS_H__
>  
>  #include "i915_reg_defs.h"
> +#include "intel_display_limits.h"
> +
> +/*
> + * Wrapper macro to convert from port number to the index used in some of the
> + * registers. For Display version 20 and above it converts the port number to a
> + * single range, starting with the TC offsets. When used together with
> + * _PICK_EVEN_2RANGES(idx, PORT_TC1, ...), this single range will be the second
> + * range. Example:
> + *
> + * PORT_TC1 -> PORT_TC1
> + * PORT_TC2 -> PORT_TC2
> + * PORT_TC3 -> PORT_TC3
> + * PORT_TC4 -> PORT_TC4
> + * PORT_A   -> PORT_TC4 + 1
> + * PORT_B   -> PORT_TC4 + 2
> + * ...
> + */
> +#define __xe2lpd_port_idx(port)						\
> +	(port >= PORT_TC1 ? port : PORT_TC4 + 1 + port - PORT_A)
>  
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A		0x64040
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B		0x64140
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1		0x16F240
>  #define _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2		0x16F440
> -#define XELPDP_PORT_M2P_MSGBUS_CTL(port, lane)		_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define _XELPDP_PORT_M2P_MSGBUS_CTL(idx, lane)		_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4)
> +#define XELPDP_PORT_M2P_MSGBUS_CTL(i915__, port, lane)				\
> +	(DISPLAY_VER(i915__) >= 20 ?						\
> +	 _XELPDP_PORT_M2P_MSGBUS_CTL(__xe2lpd_port_idx(port), lane) :		\
> +	 _XELPDP_PORT_M2P_MSGBUS_CTL(port, lane))
>  #define   XELPDP_PORT_M2P_TRANSACTION_PENDING		REG_BIT(31)
>  #define   XELPDP_PORT_M2P_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
>  #define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
> @@ -27,11 +50,16 @@
>  #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
>  #define   XELPDP_PORT_M2P_ADDRESS_MASK			REG_GENMASK(11, 0)
>  #define   XELPDP_PORT_M2P_ADDRESS(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_ADDRESS_MASK, val)
> -#define XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane)	_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +
> +#define _XELPDP_PORT_P2M_MSGBUS_STATUS(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
>  										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) + (lane) * 4 + 8)
> +#define XELPDP_PORT_P2M_MSGBUS_STATUS(i915__, port, lane)			\
> +	(DISPLAY_VER(i915__) >= 20 ?						\
> +	 _XELPDP_PORT_P2M_MSGBUS_STATUS(__xe2lpd_port_idx(port), lane) :	\
> +	 _XELPDP_PORT_P2M_MSGBUS_STATUS(port, lane))
>  #define   XELPDP_PORT_P2M_RESPONSE_READY		REG_BIT(31)
>  #define   XELPDP_PORT_P2M_COMMAND_TYPE_MASK		REG_GENMASK(30, 27)
>  #define   XELPDP_PORT_P2M_COMMAND_READ_ACK		0x4
> @@ -54,11 +82,15 @@
>  #define _XELPDP_PORT_BUF_CTL1_LN0_B			0x64104
>  #define _XELPDP_PORT_BUF_CTL1_LN0_USBC1			0x16F200
>  #define _XELPDP_PORT_BUF_CTL1_LN0_USBC2			0x16F400
> -#define XELPDP_PORT_BUF_CTL1(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define _XELPDP_PORT_BUF_CTL1(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2))
> +#define XELPDP_PORT_BUF_CTL1(i915__, port)					\
> +	(DISPLAY_VER(i915__) >= 20 ?						\
> +	 _XELPDP_PORT_BUF_CTL1(__xe2lpd_port_idx(port)) :			\
> +	 _XELPDP_PORT_BUF_CTL1(port))
>  #define   XELPDP_PORT_BUF_D2D_LINK_ENABLE		REG_BIT(29)
>  #define   XELPDP_PORT_BUF_D2D_LINK_STATE		REG_BIT(28)
>  #define   XELPDP_PORT_BUF_SOC_PHY_READY			REG_BIT(24)
> @@ -75,12 +107,15 @@
>  #define   XELPDP_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
>  #define   XELPDP_PORT_WIDTH(val)			REG_FIELD_PREP(XELPDP_PORT_WIDTH_MASK, val)
>  
> -#define XELPDP_PORT_BUF_CTL2(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define _XELPDP_PORT_BUF_CTL2(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 4)
> -
> +#define XELPDP_PORT_BUF_CTL2(i915__, port)					\
> +	(DISPLAY_VER(i915__) >= 20 ?						\
> +	 _XELPDP_PORT_BUF_CTL2(__xe2lpd_port_idx(port)) :			\
> +	 _XELPDP_PORT_BUF_CTL2(port))
>  #define   XELPDP_LANE_PIPE_RESET(lane)			_PICK(lane, REG_BIT(31), REG_BIT(30))
>  #define   XELPDP_LANE_PHY_CURRENT_STATUS(lane)		_PICK(lane, REG_BIT(29), REG_BIT(28))
>  #define   XELPDP_LANE_POWERDOWN_UPDATE(lane)		_PICK(lane, REG_BIT(25), REG_BIT(24))
> @@ -95,11 +130,15 @@
>  #define   XELPDP_POWER_STATE_READY_MASK			REG_GENMASK(7, 4)
>  #define   XELPDP_POWER_STATE_READY(val)			REG_FIELD_PREP(XELPDP_POWER_STATE_READY_MASK, val)
>  
> -#define XELPDP_PORT_BUF_CTL3(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define _XELPDP_PORT_BUF_CTL3(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_A, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_B, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
>  										 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) + 8)
> +#define XELPDP_PORT_BUF_CTL3(i915__, port)					\
> +	(DISPLAY_VER(i915__) >= 20 ?						\
> +	 _XELPDP_PORT_BUF_CTL3(__xe2lpd_port_idx(port)) :			\
> +	 _XELPDP_PORT_BUF_CTL3(port))
>  #define   XELPDP_PLL_LANE_STAGGERING_DELAY_MASK		REG_GENMASK(15, 8)
>  #define   XELPDP_PLL_LANE_STAGGERING_DELAY(val)		REG_FIELD_PREP(XELPDP_PLL_LANE_STAGGERING_DELAY_MASK, val)
>  #define   XELPDP_POWER_STATE_ACTIVE_MASK		REG_GENMASK(3, 0)
> @@ -127,11 +166,15 @@
>  #define _XELPDP_PORT_CLOCK_CTL_B			0x641E0
>  #define _XELPDP_PORT_CLOCK_CTL_USBC1			0x16F260
>  #define _XELPDP_PORT_CLOCK_CTL_USBC2			0x16F460
> -#define XELPDP_PORT_CLOCK_CTL(port)			_MMIO(_PICK_EVEN_2RANGES(port, PORT_TC1, \
> +#define _XELPDP_PORT_CLOCK_CTL(idx)			_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>  										 _XELPDP_PORT_CLOCK_CTL_A, \
>  										 _XELPDP_PORT_CLOCK_CTL_B, \
>  										 _XELPDP_PORT_CLOCK_CTL_USBC1, \
>  										 _XELPDP_PORT_CLOCK_CTL_USBC2))
> +#define XELPDP_PORT_CLOCK_CTL(i915__, port)					\
> +	(DISPLAY_VER(i915__) >= 20 ?					\
> +	 _XELPDP_PORT_CLOCK_CTL(__xe2lpd_port_idx(port)) :			\
> +	 _XELPDP_PORT_CLOCK_CTL(port))
>  #define   XELPDP_LANE_PCLK_PLL_REQUEST(lane)		REG_BIT(31 - ((lane) * 4))
>  #define   XELPDP_LANE_PCLK_PLL_ACK(lane)		REG_BIT(30 - ((lane) * 4))
>  #define   XELPDP_LANE_PCLK_REFCLK_REQUEST(lane)		REG_BIT(29 - ((lane) * 4))
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 53d8f13f8471..2509785daf7b 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -177,7 +177,7 @@ static void mtl_wait_ddi_buf_idle(struct drm_i915_private *i915, enum port port)
>  	int ret;
>  
>  	/* FIXME: find out why Bspec's 100us timeout is too short */
> -	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) &
> +	ret = wait_for_us((intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port)) &
>  			   XELPDP_PORT_BUF_PHY_IDLE), 10000);
>  	if (ret)
>  		drm_err(&i915->drm, "Timeout waiting for DDI BUF %c to get idle\n",
> @@ -225,7 +225,9 @@ static void intel_wait_ddi_buf_active(struct drm_i915_private *dev_priv,
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		ret = _wait_for(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_PORT_BUF_PHY_IDLE),
> +		ret = _wait_for(!(intel_de_read(dev_priv,
> +						XELPDP_PORT_BUF_CTL1(dev_priv, port)) &
> +				  XELPDP_PORT_BUF_PHY_IDLE),
>  				timeout_us, 10, 10);
>  	else
>  		ret = _wait_for(!(intel_de_read(dev_priv, DDI_BUF_CTL(port)) & DDI_BUF_IS_IDLE),
> @@ -2366,7 +2368,7 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
>  		dig_port->saved_port_bits |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>  	} else {
> -		reg = XELPDP_PORT_BUF_CTL1(port);
> +		reg = XELPDP_PORT_BUF_CTL1(dev_priv, port);
>  		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
>  	}
> @@ -2386,7 +2388,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	enum port port = encoder->port;
>  	u32 val;
>  
> -	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
> +	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(i915, port));
>  	val &= ~XELPDP_PORT_WIDTH_MASK;
>  	val |= XELPDP_PORT_WIDTH(mtl_get_port_width(crtc_state->lane_count));
>  
> @@ -2399,7 +2401,7 @@ static void mtl_port_buf_ctl_program(struct intel_encoder *encoder,
>  	if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>  		val |= XELPDP_PORT_REVERSAL;
>  
> -	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
> +	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(i915, port), val);
>  }
>  
>  static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
> @@ -2410,7 +2412,7 @@ static void mtl_port_buf_ctl_io_selection(struct intel_encoder *encoder)
>  
>  	val = intel_tc_port_in_tbt_alt_mode(dig_port) ?
>  	      XELPDP_PORT_BUF_IO_SELECT_TBT : 0;
> -	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(encoder->port),
> +	intel_de_rmw(i915, XELPDP_PORT_BUF_CTL1(i915, encoder->port),
>  		     XELPDP_PORT_BUF_IO_SELECT_TBT, val);
>  }
>  
> @@ -2830,7 +2832,7 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
>  		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
>  		dig_port->saved_port_bits &= ~XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>  	} else {
> -		reg = XELPDP_PORT_BUF_CTL1(port);
> +		reg = XELPDP_PORT_BUF_CTL1(dev_priv, port);
>  		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
>  		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
>  	}
> @@ -2968,7 +2970,7 @@ static void intel_ddi_post_disable_dp(struct intel_atomic_state *state,
>  
>  	/* De-select Thunderbolt */
>  	if (DISPLAY_VER(dev_priv) >= 14)
> -		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(encoder->port),
> +		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, encoder->port),
>  			     XELPDP_PORT_BUF_IO_SELECT_TBT, 0);
>  }
>  
> @@ -3241,7 +3243,7 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  		if (dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL)
>  			port_buf |= XELPDP_PORT_REVERSAL;
>  
> -		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
> +		intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(dev_priv, port),
>  			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
>  
>  		dig_port->saved_port_bits |= DDI_PORT_WIDTH(lane_count);
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 3c94bbcb5497..678693978892 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -958,10 +958,11 @@ xelpdp_tc_phy_tcss_power_is_enabled(struct intel_tc_port *tc)
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  	enum port port = tc->dig_port->base.port;
> +	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
>  
>  	assert_tc_cold_blocked(tc);
>  
> -	return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_TCSS_POWER_STATE;
> +	return intel_de_read(i915, reg) & XELPDP_TCSS_POWER_STATE;
>  }
>  
>  static bool
> @@ -984,16 +985,17 @@ static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool ena
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  	enum port port = tc->dig_port->base.port;
> +	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
>  	u32 val;
>  
>  	assert_tc_cold_blocked(tc);
>  
> -	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
> +	val = intel_de_read(i915, reg);
>  	if (enable)
>  		val |= XELPDP_TCSS_POWER_REQUEST;
>  	else
>  		val &= ~XELPDP_TCSS_POWER_REQUEST;
> -	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
> +	intel_de_write(i915, reg, val);
>  }
>  
>  static bool xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, bool enable)
> @@ -1020,26 +1022,28 @@ static void xelpdp_tc_phy_take_ownership(struct intel_tc_port *tc, bool take)
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  	enum port port = tc->dig_port->base.port;
> +	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
>  	u32 val;
>  
>  	assert_tc_cold_blocked(tc);
>  
> -	val = intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port));
> +	val = intel_de_read(i915, reg);
>  	if (take)
>  		val |= XELPDP_TC_PHY_OWNERSHIP;
>  	else
>  		val &= ~XELPDP_TC_PHY_OWNERSHIP;
> -	intel_de_write(i915, XELPDP_PORT_BUF_CTL1(port), val);
> +	intel_de_write(i915, reg, val);
>  }
>  
>  static bool xelpdp_tc_phy_is_owned(struct intel_tc_port *tc)
>  {
>  	struct drm_i915_private *i915 = tc_to_i915(tc);
>  	enum port port = tc->dig_port->base.port;
> +	i915_reg_t reg = XELPDP_PORT_BUF_CTL1(i915, port);
>  
>  	assert_tc_cold_blocked(tc);
>  
> -	return intel_de_read(i915, XELPDP_PORT_BUF_CTL1(port)) & XELPDP_TC_PHY_OWNERSHIP;
> +	return intel_de_read(i915, reg) & XELPDP_TC_PHY_OWNERSHIP;
>  }
>  
>  static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
