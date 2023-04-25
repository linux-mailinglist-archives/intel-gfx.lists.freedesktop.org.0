Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 189EB6EE8E5
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Apr 2023 22:12:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DE9E10E7E9;
	Tue, 25 Apr 2023 20:12:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D4D1A10E59F
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Apr 2023 20:12:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682453547; x=1713989547;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nDlqOyhCy/39BvscI1uwyBdjyGZf5s5TmQHHmTSZ3w0=;
 b=TkxxJ4f93RYHNeZK9oAH5Xqk0rUTHh8JXzmDWHS1lRPCJd+6T5kBvdNK
 5j95f5w8A0RoSoreDnugc/DqOPpzITM+aNnqbYtXAcNCpp22UkH583k1o
 zC5Yg6RKHAoW3GL4KJULthrxn1iEynNKkSVExVUrcvFcdmjePJvNbjLA5
 44kXYSBAPOhev0LEcuHF8mQYLELLh+6EcxWnswor0wQXtcz4oHS+CZX/h
 1m+PHnCyjyIqe5r+D5HNbVjJL9dQGXk/t3rSXAhWDwz7jiipT1WwO9DaP
 KFvntsZ3nuBp78mVJ+LvYo9Scwh/UekQYZ7LUfaAcvJ+bMVwXHFCuH4df Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="346911280"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="346911280"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Apr 2023 13:12:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10691"; a="783003143"
X-IronPort-AV: E=Sophos;i="5.99,226,1677571200"; d="scan'208";a="783003143"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 25 Apr 2023 13:12:25 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 25 Apr 2023 13:12:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 25 Apr 2023 13:12:25 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 25 Apr 2023 13:12:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CSCl4Fg3phtWH3Y9L+yfunRXG//VNG2O6+kEd1kYDdskQpiIP7F0I0J8QTIKc6IDQt5kqyjEWLJ8vOcONL98VqpdhANZtijwOWrAWhG9vina3lQvOY9YaQhvjnHHAD/woHl2B+oA2nRb9P4GhnY4cXhu9CYGgRkWdaFZm5dMcqPk3kr+aaRLXDN3gD1kl7gXT0myDHEjQH74Svpsd1YJdy4eG6dRabI1m818onCpzUMpi+IyUHeDacJO28J3EGPZZxry8Q5la01PgR8ZolBhS0R2u5v3Rw+EZAYVvVC3Z9irg12GiNQyC8LocH1WhDWu3L7G2Rp704G/mfTus+F/uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lswzv6xjG2OMBI1iU3FcvoH+rAGakdJBFI7wUyXZBQA=;
 b=njp3WKW6sCrEIWG40gzlwFnYp5bi3HyQaDt0ipOffKFOrMIGste77JFOe/QGDDwCC+pF72xKe1s4Up97IM9Rh5IcoVTzUJhv2bXOK7y2sdBCCAL8M2rGxYXD+Tzs82H1FMEUfjCMCVol6WZbLUMyZygOWLyNtHu0JDPAqn9f4SGWHxU4feyB+VCbsIVXczSv8reHl2egZMoKEss1CZWjRVGk85mnMTUAWwpDCdQOYgRJl4AR1Wr71Kn03cNAf3JR58r3A8HZ9g6OE8fx6vq/ATp0iez7UhSheLYZl9GI9wRkDlts6zcg20tKdtSw49pm+MAD+EkcFHYDQjaft6phxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 SJ2PR11MB7646.namprd11.prod.outlook.com (2603:10b6:a03:4c3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6319.31; Tue, 25 Apr
 2023 20:12:22 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::df8c:4a33:f53a:9a2e%8]) with mapi id 15.20.6319.033; Tue, 25 Apr 2023
 20:12:21 +0000
Date: Tue, 25 Apr 2023 13:11:16 -0700
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Mika Kahola <mika.kahola@intel.com>
Message-ID: <ZEgz5BieBXI8B6hU@invictus>
References: <20230420124050.3617608-1-mika.kahola@intel.com>
 <20230420124050.3617608-9-mika.kahola@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230420124050.3617608-9-mika.kahola@intel.com>
X-ClientProxiedBy: SJ0PR05CA0136.namprd05.prod.outlook.com
 (2603:10b6:a03:33d::21) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|SJ2PR11MB7646:EE_
X-MS-Office365-Filtering-Correlation-Id: 9884a161-1654-4128-d77a-08db45c9607d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: nOjox8F+9lJvZG6iia/Aiq0qWshdRwPEqug3hZv8RONQ02mM0jOjJTR11ITzSO1VzuQou8ifjAlbSbWs/1m4KZsEFIJp2zRHcjmkH0SzQ+gm3/JrSzO+mRTVyMEAI0pXFwBKzKBVl+6Y3frIgDi+3vMbwF4UhsC3RCh0DRiAHCewluNjkvw7iLQeOQXWhi6FU4YF8yVabHdfABdyRxwCpLdp7TZOVZnkGFJVEGler31GsV/RXrt/cvGwY6t5B9JoECQjbtXI2ARFfjbR1H4fdJ62Ljg3UZ5gokDaVt4JkvyfcvPPkR2QayosJ9Pbk+Blu2Am8RFWLmiR0FHKyMQNKIueXBxUAmx04Auw0hDfdc/A3uJmHDiqwFU0sJaGYlJVPLmxUzejkMtOeq4veTKso18poT+wH+bpZyidXHrZjZQWCg8sS8av6FWalqkg5KOxYm7K4v0UMzO/5SI5nVP5WL98wJLMDurim4lLDYUDybvJGi1bJCM2WjCloeX9hK2+XOXI81S466FfmkVYDz5bqk0gQTsNdGZ/WMnIk0MLwgXF2VqnXQVrgTfo66nZqJVK
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(39860400002)(376002)(396003)(366004)(136003)(346002)(451199021)(44832011)(5660300002)(6862004)(478600001)(86362001)(8676002)(8936002)(6636002)(38100700002)(2906002)(316002)(6666004)(66946007)(6486002)(66476007)(41300700001)(4326008)(66556008)(6512007)(26005)(9686003)(6506007)(186003)(33716001)(82960400001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PHCcBklISd+n+xSzGXMyK9QuV2q2AnpPnHAxFMAXs5xp4q0SC7bdNYuiun/Y?=
 =?us-ascii?Q?MLl2+pVeMf4kdeQvvR5VF9gtH8Bc1dGcmH5SO+TEM2Y6HHCQ3DteGLC6v55Z?=
 =?us-ascii?Q?pT6NX9ZOBIjfe8bI6ccewDxDpA6VLm1MU6hnl6s0n4O84X8JXC6/WseJSr/6?=
 =?us-ascii?Q?5hgPYGDDufyDAjszzO+h6MKXnYNFS5WBqkFieDfnFL9EJmUtB0+Fm/UaKpP5?=
 =?us-ascii?Q?0zOQCpMgN2LzdHG2jfK+6e6RJZSn4QddWpj15cbUpJop2XGW9YzezT3wPmYi?=
 =?us-ascii?Q?4vjrvsAd4uY7bSP6zcA0CpqHtRsxLsqxKy4995pbbwVaDqYDNYKocMsZmMFc?=
 =?us-ascii?Q?QiCumNgf7FciyYMkDoYOVSLkJDw8u+VT2PDncwbq9SAQFrpoLZEMhsKLTLeM?=
 =?us-ascii?Q?wd6QNqOPqbFEopg+7/oQ3/tFoRIblYnknEsuHs97gYmFyzEHijTE/WauRqur?=
 =?us-ascii?Q?C7OYuRTNK7s0fPqM2nSTufkpmroQuNtP7RCttNuh6yUYdG8b+Zs4BLUnX+DQ?=
 =?us-ascii?Q?P/sTL5zj9iRHenCNzWxvn3r5Vk1uHcLiS9O7cNqWrOX3CzDrxOumJk7wcInI?=
 =?us-ascii?Q?ztb+y7Hoq+NylBFVdueZGExJ3nxrtMWN+rLadNCK8GcXgbUCw9KN0TlpA5ha?=
 =?us-ascii?Q?cksFicGPIJHggiWLO1X6dsIcBtWL1MH8hVTLrYeDLvkMOhwiwIxydHJc9Qlc?=
 =?us-ascii?Q?jag7WI1JxHgYEanqDGjtzq6ZIjSqGTKBPCnTw9s/+yCmJ2xdrU94/LxTdSlX?=
 =?us-ascii?Q?Qg3G37M2iL4plhYlC5WtiFhXJR/MRIDjVZlT+ycMx8QDX8usmm4UyHWZ1xhI?=
 =?us-ascii?Q?+9YVSvDLNQY42r7Brvkz6oQAEDFlFQGMICa9JNfyzqzoBTN5a3z0yoef/xuR?=
 =?us-ascii?Q?LB4/IM4bMf6f7e2PPIEwhvi1+26Z6B07B/y/BRPc+kmK/KkzBWMgYQEYlK07?=
 =?us-ascii?Q?qPjjphSgLrDJQg6PWitPyNbqw4MkOGQ7g7aj4MVS63Rl7h8qS3xaYi+RVCeX?=
 =?us-ascii?Q?zTL8gcKhN+JYRa+Q4PGBVXNAbjWgmIptdjNAfhVx6c6HIJ7lsXy1uXyzvzXO?=
 =?us-ascii?Q?kuR4FmKBg9W1vOFkGcMzBv72AmE/P7lkyYM/i6CEpBYglbqSCUwYs8L1hBuk?=
 =?us-ascii?Q?ZNPqKGuHs9vJglqPCvpBdQKQLlpCZUaEjc9eBsYyKE371GKTQf5gvqjAe8F/?=
 =?us-ascii?Q?G0nHzH3TGntwh49FY3r05cDorBe2FHWBk/vi794R9i3QxoSjWZzAD2d+PWPU?=
 =?us-ascii?Q?30ElBK85BvSrCknNjph6WJ7UJiyXiNMvLKIkOoiZrv9WdLuzclNqI2XqQ2Bg?=
 =?us-ascii?Q?J9CRpv6I7LsdTG3d3cpXtwJQkwWMBx2v+wsr0pWv+H9lQD7nfsFZjEUexvAN?=
 =?us-ascii?Q?FqGv/Mn/LY89x3rslvztRhwo0OIXuEz+AGledkW23EnrhcKF1KPuf8QQpPP1?=
 =?us-ascii?Q?OzhQmOWww0VGr1nLdO2jwt8vtb9iMfqxeKOuCNV+zvH2W0AmTvz06/Qo0tfV?=
 =?us-ascii?Q?rPiRgv9ECnDd7VeHEZijaMP7nnoOS26I5w9kW8L2FKn3enU/OYfQfnn37pJX?=
 =?us-ascii?Q?GRG3wufZ0O4mpxXUrrcLQOe7tV0/g81Z0eWcVSk3dPzkDNhJ6iCL1TU2ZVBt?=
 =?us-ascii?Q?Y8Jcd1Duji4v25vxPUAllWQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9884a161-1654-4128-d77a-08db45c9607d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2023 20:12:21.4562 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LVCK5G8+LpsgxstKYRG9/kLhBh4VQU/xIbbPxned7DB4tcthLKgPVJ7MVSnvOJK/oN6AVsa6TkX3zZtTA7V8xF6/bYJMIO+oyb0ajFTU+Kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7646
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/mtl: Readout Thunderbolt HW
 state
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

On Thu, Apr 20, 2023 at 03:40:45PM +0300, Mika Kahola wrote:
> Readout hw state for Thunderbolt.
> 

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c | 27 ++++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.h |  2 +-
>  drivers/gpu/drm/i915/display/intel_ddi.c     |  5 +++-
>  3 files changed, 32 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 9722d3f1b926..dc0555505e61 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2676,6 +2676,33 @@ static void intel_cx0pll_enable(struct intel_encoder *encoder,
>  	intel_cx0_phy_transaction_end(encoder, wakeref);
>  }
>  
> +int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
> +{
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> +	u32 clock;
> +	u32 val = intel_de_read(i915, XELPDP_PORT_CLOCK_CTL(encoder->port));
> +
> +	clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
> +
> +	drm_WARN_ON(&i915->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
> +	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
> +	drm_WARN_ON(&i915->drm, !(val & XELPDP_TBT_CLOCK_ACK));
> +
> +	switch (clock) {
> +	case XELPDP_DDI_CLOCK_SELECT_TBT_162:
> +		return 162000;
> +	case XELPDP_DDI_CLOCK_SELECT_TBT_270:
> +		return 270000;
> +	case XELPDP_DDI_CLOCK_SELECT_TBT_540:
> +		return 540000;
> +	case XELPDP_DDI_CLOCK_SELECT_TBT_810:
> +		return 810000;
> +	default:
> +		MISSING_CASE(clock);
> +		return 162000;
> +	}
> +}
> +
>  static int intel_mtl_tbt_clock_select(struct drm_i915_private *i915, int clock)
>  {
>  	switch (clock) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 9ea6310b6d79..c1b8f7980f69 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -42,5 +42,5 @@ int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
>  void intel_cx0_phy_ddi_vswing_sequence(struct intel_encoder *encoder,
>  				       const struct intel_crtc_state *crtc_state,
>  				       u32 level);
> -int intel_mtl_tbt_readout_hw_state(struct intel_encoder *encoder);
> +int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>  #endif /* __INTEL_CX0_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index c18226edacac..8f0f858cde31 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -3852,8 +3852,11 @@ static void mtl_ddi_get_config(struct intel_encoder *encoder,
>  {
>  	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	enum phy phy = intel_port_to_phy(i915, encoder->port);
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
>  
> -	if (intel_is_c10phy(i915, phy)) {
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
> +		crtc_state->port_clock = intel_mtl_tbt_calc_port_clock(encoder);
> +	} else if (intel_is_c10phy(i915, phy)) {
>  		intel_c10pll_readout_hw_state(encoder, &crtc_state->cx0pll_state.c10);
>  		intel_c10pll_dump_hw_state(i915, &crtc_state->cx0pll_state.c10);
>  		crtc_state->port_clock = intel_c10pll_calc_port_clock(encoder, &crtc_state->cx0pll_state.c10);
> -- 
> 2.34.1
> 
