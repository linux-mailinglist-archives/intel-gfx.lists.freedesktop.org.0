Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A80078618C
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 22:28:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B832810E0E3;
	Wed, 23 Aug 2023 20:28:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BAA6710E0E0;
 Wed, 23 Aug 2023 20:28:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692822520; x=1724358520;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZPGUzZt2PZdTpWdRna19bNXMSeoxZ44DGYU52bu3+Yc=;
 b=T3qRCSjB3y0bEVPkwoHvV0Mj61WYsD9csOpykkJ5ZjlFYfGHopwc4sL1
 9Q14enaHrRIWnT5SRwt0UT9G+L9Kv6GrZmD+Y+iOFPLM441P/cSdYUGjK
 0DTpnUHqElRnY77WAqohvIuKyd4QV4gbwTfv+Tobg2GfoXM++sSw8r1XN
 2eaHvxLOab8Ue/LOH09A8kPRiGpbyjFRCm5VhSmIrtexyzPAysaNBbjdi
 sz05kmkrbj8hI6Wlchq09nEr43DkGkXQCT/6M95LmqEJKv3N/9Wh4Uvm4
 SzznZB0VM8bTN/qqJ5yxGl7VnQl9abaSVEqwRbboWgbjKmzsBdWviAflL w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="405267151"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="405267151"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 13:28:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="1067581476"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="1067581476"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP; 23 Aug 2023 13:28:39 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:28:39 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 13:28:39 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 13:28:39 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 13:28:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ed6jTmG5cZ5JMlD5CT7UWvJF8oWouMwKIcoqkDf7M0yJE7DZubpD93aMjCeFXni+BBz1t/9FQoNIlK0K4f1ZvQxXNpKP0Z3/fKEof907RZpSMeCm3n0tI6iFp/Z9HpIZiiVNbv6l1b4+W9K6JXSiGx5DSOjDUqs2kiIqvk30RUmy9eHtYR6xexNX8/uz2qT/0VsbMeDR6XLuAlrNsMjiAdCvSjEKKVDWXcgU7BvE38CGg6l+4dA045CPLkTW4qgMcHlge61OnLJvuf54LLGptmelC6xvSedPHkDnnvqthp+r6w90RZSpXllh8ueFiF3sVCGTDktgvI4BZtipZn6ucA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LbuCJ6E2oiJym8Y7Khj/cexY56+ymIzJOwDmtth/q2Y=;
 b=YjanlJEgd60JqmczQu2jiy8PR7YPlFL0qcDeGzMruR3ByD778sRT9WmVPHyaz4N7XipoZW/2M7fYJpzdQ5uCILZT7vtX+DJI4rQlF4Ugg0YzxbFxkHWUIIncqkOOXpKkIEeFREzZqs8s1Rux86HvSGroipxJyjL21MDT4VYDzkKjGMWTzUA1WMjS1KP+C1NlIIEhW6KSqrvfE0xrDhFTg9Zn4M8L/y7jY0QN0cuWA+MLO/tfS4p2oNT2/diuM2WVuhgOg4ZEcry3SEtcNknnqM8XH3sr0CshyqdReOEfcKojor/5xoxWaNHD16FW7ZOXowRYaafAnEPkmVvbSWOozQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 IA1PR11MB7753.namprd11.prod.outlook.com (2603:10b6:208:421::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Wed, 23 Aug
 2023 20:28:36 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 20:28:36 +0000
Date: Wed, 23 Aug 2023 13:28:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823202833.GI1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-28-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-28-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0PR03CA0085.namprd03.prod.outlook.com
 (2603:10b6:a03:331::30) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|IA1PR11MB7753:EE_
X-MS-Office365-Filtering-Correlation-Id: 7af601b9-853c-4968-9154-08dba417873f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +3Eh5h613YkwtrvyVdxxMgERDtqVdaRXnkFMvnQO2n5cR7bX1E9SgvoQvJJxZ/lP+FQvbRFzkMbIbrhzYWiDGGLxL3iKxpJdpD2W/7LAXhibpVPnVAf312VlXjTln7WoJpl8zjHCOu/H7Vi0tisuRepGVrxMPuy42rumiVgx3gYm7o5Usrr/Bo2Np7icpBpD1QqTPQXJZ2MH/7ocuYVV5/mk7OVnvcYnArA12puTmdgZVmQujZRG+0dagsaJqGPo7/dlJib5XF2BjtcVp1CH1TJohroThOHpnIS6el27dVNYnOMG5IgH81fhnfQAUwWtN2ZFV9AqtINfaMj1I+UiD7uMvZv8xFZuEN0obr1EoGzYHPHMMRfUTp2ukfFdhDYR7rEv7fGpJe+2PSf0QJTl4lYn38LOxkPjtD+mWWRRF+p7JPcVrM80nECb0OMJsSX15lkzf0k342iUD/Eno1aiaO8A347GgncEpuKI8safEge6FVmskkX10LgIr/utfpSOIXPw/eJFVVupI1Ilrdg5jmOh854bJm/cNA8mEV55pzhD7wLmF3ONnuDCG6OuAww7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(346002)(376002)(366004)(136003)(39860400002)(186009)(451199024)(1800799009)(6506007)(6486002)(316002)(6636002)(450100002)(6862004)(8936002)(8676002)(4326008)(54906003)(66556008)(66946007)(66476007)(6512007)(41300700001)(26005)(1076003)(107886003)(5660300002)(6666004)(478600001)(83380400001)(86362001)(82960400001)(2906002)(33656002)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?frojulM0pR0xHTMh8yIK89wydN/uZRZ+LtZYQJubrXb8tqJch3Zh1cNkuzHV?=
 =?us-ascii?Q?tJLYjBCEA/SUO+avT44G8FQQT6DXn5cQl0oC4+UBO585NtD5GCcvFZdldip7?=
 =?us-ascii?Q?kPbuXZR0ruOZEkD93aex4G3rbgm6gaJxSBTmooAh1i7bXohhsw9OlnxkmJec?=
 =?us-ascii?Q?XpIbA1zUEOlwuBkkDMKnQ7f544aMXKPGPRYOn8m7elWjakj4rr2f9uJTugLf?=
 =?us-ascii?Q?ZMlF7Vm9wsUObUQbhSMnnsBIk6Eu12aFhrzZVFY9jUQjNh3u0U2ARlIcCnJb?=
 =?us-ascii?Q?Lk2CfpRViYfv/RV95PkheaYcMtioCvMVnjGv6Xz8vg287HbpUpzt3Vl2us5d?=
 =?us-ascii?Q?N437xt1H0fGJu2TloFLe45kLjItsRqJzZA7VUVGPsdrPIW4ZSjFm7z0EY1dc?=
 =?us-ascii?Q?oTlTMRUBVVEPfRj1t1ZwD1o5dv0MHbfJc+8V5527HeuYNO/zE5Wq7rqc/0vA?=
 =?us-ascii?Q?VmCU1eFTAzrTXgDmrj5ShHvxOYeod75KZ926OOJEwUZHEmABYxZXpva/ky9c?=
 =?us-ascii?Q?zmqaOsTDzgP9XzxA/0+ZJxO10RoxfJUf/asQXFDHyI1WZf4nXSTJssxrGViq?=
 =?us-ascii?Q?7eDfpcVJ+ZrhxKp2RSQT0adINo+T+zE4pEjk4rqwmlThtIvTtzZ90NeYRizG?=
 =?us-ascii?Q?15Tq8+VtBdD1nUH82MSEr9LrE3MQsSzA/0D0zhQfVba/8j0l6hCBnHDviMVN?=
 =?us-ascii?Q?BfL8wnnvxVinuVLfdJzOBJ4Rqi3TkXXjW2vRSA0ztdUU2cFKH31NOxQ3dBs6?=
 =?us-ascii?Q?+CjILDc07orP7mz+xCFNmTuCGfiJs+GlunUaY5b0Vz2DgfUPy140eBuOa0+v?=
 =?us-ascii?Q?CFwtcelB9y3/JA55COBViRKPN88yufZnxBDtlkC/yXS4NxJWkVptOmzCoI9r?=
 =?us-ascii?Q?SAJEly3NirgXXExzt8BAy6X98uZqCza2QJLpyB2gXujqXuwOZIBeGu6c5UYk?=
 =?us-ascii?Q?5ker74nLqXtbnOpkoNVcrNMeoR0yB3DKJli4FxUN0dL5CNCX2RGDeAqxYUPR?=
 =?us-ascii?Q?iHX9Q3syE2p55uKCLqFt//2gZv219NVfTDf+SP0d1CK2XuhE7yMUj3JI95Qm?=
 =?us-ascii?Q?AazNjAUf6+l6uTyiC9qXPZqU0ZrB9dUNoN+5sNYSdE9CNwER2Dp+EysWvcNc?=
 =?us-ascii?Q?keC/XSVPp5xXdd7UNI7AXJAztx9MFVl1uK4OLh3NAAaLZm++gbpCUAYxM+Kn?=
 =?us-ascii?Q?7iaGGAcmGic42m7pRoLeLnEOW76AoFC/YBwX6XWPWPVOANDC9KoaGbUc6F4Y?=
 =?us-ascii?Q?mT1B7O0IAc18hluCGPn2E0qGlWJOjynqPGNiEoWiFWTBLDPK5aazaX6quAO9?=
 =?us-ascii?Q?JZz87KtB64zsfxUduErTd3f31RsifJZkAKWA4FurgM12VHg1q+oixuemehXo?=
 =?us-ascii?Q?bJxLCf/8VV2EAtEPikA/uPMIen7JoaWEllAMmThrV71FK2GvymSrvm+mTIuS?=
 =?us-ascii?Q?1Zh0iiRnj4hPt9+8KCHtdUlgrJkE3OzkqaLCZ4z9Bbn+qhCntpOluPmjBZ69?=
 =?us-ascii?Q?1VYtg6bAkyWpWq0I7P4I6fvT1IBdacAjkZ4mvRPRMvaMiRAwWxv6OdqrqNNd?=
 =?us-ascii?Q?JMABd5OWmChDShSHvVdM31LemO10IljDAkVdkiVCxjd2LOzGL0sZSgTqrOO6?=
 =?us-ascii?Q?iA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7af601b9-853c-4968-9154-08dba417873f
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 20:28:36.5762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H25HghzQN4w6s/3OtmNJHstwuEcpjI7nZE/55aqYbrnLcPCu19C9ZQjsbW1jZFPVD0rwNh+T9ota5RHpp7KdOVCwQvMSG5ZcUkB/rr6qwIo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB7753
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 27/42] drm/i915/xe2lpd: Read pin
 assignment from IOM
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
Cc: intel-gfx@lists.freedesktop.org, Luca
 Coelho <luciano.coelho@intel.com>, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 23, 2023 at 10:07:25AM -0700, Lucas De Marchi wrote:
> From: Luca Coelho <luciano.coelho@intel.com>
> 
> Starting from display version 20, we need to read the pin assignment
> from the IOM TCSS_DDI_STATUS register instead of reading it from the
> FIA.
> 
> We use the pin assignment to decide the maximum lane count.  So, to
> support this change, add a new lnl_tc_port_get_max_lane_count() function
> that reads from the TCSS_DDI_STATUS register and decides the maximum
> lane count based on that.
> 
> BSpec: 69594
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c | 28 +++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h         |  1 +
>  2 files changed, 29 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index 3c94bbcb5497..37b0f8529b4f 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -290,6 +290,31 @@ u32 intel_tc_port_get_pin_assignment_mask(struct intel_digital_port *dig_port)
>  	       DP_PIN_ASSIGNMENT_SHIFT(tc->phy_fia_idx);
>  }
>  
> +static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
> +{
> +	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> +	enum tc_port tc_port = intel_port_to_tc(i915, dig_port->base.port);
> +	intel_wakeref_t wakeref;
> +	u32 val, pin_assignment;
> +
> +	with_intel_display_power(i915, POWER_DOMAIN_DISPLAY_CORE, wakeref)

Do we need this?  I don't think POWER_DOMAIN_DISPLAY_CORE has been tied
to any power wells since VLV/CHV.

Hmm, it looks like we actually grab it (and even assert it) in a bunch of
places on modern platforms that don't make sense to me since it isn't
tied to anything.

I guess leaving this here doesn't hurt anything, although we might want
to go back and take another look at this in the future.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +		val = intel_de_read(i915, TCSS_DDI_STATUS(tc_port));
> +
> +	pin_assignment =
> +		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
> +
> +	switch (pin_assignment) {
> +	default:
> +		MISSING_CASE(pin_assignment);
> +		fallthrough;
> +	case DP_PIN_ASSIGNMENT_D:
> +		return 2;
> +	case DP_PIN_ASSIGNMENT_C:
> +	case DP_PIN_ASSIGNMENT_E:
> +		return 4;
> +	}
> +}
> +
>  static int mtl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
>  {
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
> @@ -348,6 +373,9 @@ int intel_tc_port_max_lane_count(struct intel_digital_port *dig_port)
>  
>  	assert_tc_cold_blocked(tc);
>  
> +	if (DISPLAY_VER(i915) >= 20)
> +		return lnl_tc_port_get_max_lane_count(dig_port);
> +
>  	if (DISPLAY_VER(i915) >= 14)
>  		return mtl_tc_port_get_max_lane_count(dig_port);
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index e31a985b02d5..fa85530afac3 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -6628,6 +6628,7 @@ enum skl_power_gate {
>  #define TCSS_DDI_STATUS(tc)			_MMIO(_PICK_EVEN(tc, \
>  								 _TCSS_DDI_STATUS_1, \
>  								 _TCSS_DDI_STATUS_2))
> +#define  TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK	REG_GENMASK(28, 25)
>  #define  TCSS_DDI_STATUS_READY			REG_BIT(2)
>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT	REG_BIT(1)
>  #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT	REG_BIT(0)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
