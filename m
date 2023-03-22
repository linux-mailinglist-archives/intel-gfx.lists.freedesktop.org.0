Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C77616C57C5
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 21:36:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25A8310E272;
	Wed, 22 Mar 2023 20:36:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC79410E272
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 20:36:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679517380; x=1711053380;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=aqZVoHCX1H2+Pf4HdOH2ZsSnMklvi4TF4nKyafc9ZzI=;
 b=awSpsV5Q4iGwWzI9r9eipMACHeu4ENDphjGRLmhEUd4RD6xRU5FJPLF8
 zeo9LImnxRk6AaYAhrparxuI3juto6zJUKZq+2zJKYsHppn18zNdfl/la
 xEJ1apym68ZLL4OQPQEZ/JbPfwKFwiJhq5lhcHj7z0d/qKKYjGyrMN5ux
 otWKA7HxhkEDDXFnhUTTtiwhx+Y4a0BoqHrsxMnMxu/wldQuoXBXSCwbT
 oU2/qU81IQYB14g5Rh8YnBjcCrfa43JPvqDx7CUE7Isz8/Y5n8equMGm1
 EPngBugtiOP3yDeII/0vuNZEUEzzH1woA6Q1SfctmIvL2EJraiL8mA7F8 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="401896077"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="401896077"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 13:36:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="746469446"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="746469446"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga008.fm.intel.com with ESMTP; 22 Mar 2023 13:36:17 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 13:36:17 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 22 Mar 2023 13:36:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 22 Mar 2023 13:36:17 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 22 Mar 2023 13:36:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y0yCBy7Ws4aPzZeMCaWEmt96ja4AocOM0cTLgRUlzbeP6BYSjREOtP6yTCjam/I6bLGKovOvc+/gEGuf9T6G9RRacE7VpHnFjw2tVeXq4qVbPGTkzre9yNFC5NyWHX4rsx7kIx9RZ2M/bEAm+qq7b4Lo9C1EWenGGNV4yjpV/k6yEFHGcRmWBtwFPDilOWo+SWt24CHrIQFqyhsCruBwd9q2jJVW/B5Dq0sTuNBGuhh/wh46W5RRhhWYlZ3WRqNuzhrNALkTQYWdzSWAekfMEwOu+PzLCGP03cYE4m6LppoHoqcCoGdxbRMtCgPF2c/I+pMASE8Yz39AuF2LbAnAJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bUXbGRvVYK5Fg5N14JO9WDrVGQJHEa9lFVNRsCL8c+c=;
 b=kRqOZdtR87oMPuDTcYKnCB4kAMRgeNuF94mmZi9l+1yvadhlcZSBqD1RYM42wHFsybA4bvUeYAX7z7tgBwA8nrk3zughDv9L2s2kEvU8RJOHvdAH/RrHUmj5T7jXQ++JYzTBcbvrOyXxEAl66KueHj8wEP8QpA+UseOPvNann+77StyGW8oW5ZUv+PaqiA5b1RQFFkSnDEbYrSqwRil1mOH/PJXhBv7d1TR7YqQ6S9B8KEA42xv8kXQhvAlXD1vSyiZ98IfjRrI2FtaNoNx8NtgWzQAFzU/OXxrwUBYBEy4MRR7YRC1zq+wkS1J4btTxUd39L6qetFMGL2sX80r7CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CY8PR11MB7034.namprd11.prod.outlook.com (2603:10b6:930:52::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.37; Wed, 22 Mar
 2023 20:36:14 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6178.037; Wed, 22 Mar 2023
 20:36:14 +0000
Date: Wed, 22 Mar 2023 16:36:09 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <ZBtmuYJ2re9NkvQX@intel.com>
References: <20230322181219.5511-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230322181219.5511-1-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CY8PR11MB7034:EE_
X-MS-Office365-Filtering-Correlation-Id: d41d724d-4bda-490b-1fdb-08db2b151442
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VAU0j9HF/H2dxTTDdhrYOMEeEcykCQyCt9OIWDZXSuVNjCyKk1PSoX8jy2VDF2oMNUSl3xVXks3bahSynk54TyLvDGkF5jgVHxqG4NUenKTSpwIVrtxPfKUUuPL1//aMZevzHwHTwfS8TlKonscYz/OOcA0cwEjyvosMGjLuEsVMTrjaDzjpiUocKZ7ETupI9kxC6fOYc3onYmBPVAaTOXIOI4DaFYznlpIeUbRVaNvfRspyjbiaiDMhuloAGuzFzUo2YHxqssVH5vN9R5zj5SN2+FYtJe+H+d3kQ9FuskSEdonzbMvvYirDSXrVnb5XqeKV8HEh/Z0aF5waHeshPWxN31GkAnfOHbtkg4CvMVzE0Vz6ryQ5iMzOeii3EUaELeQ0FcInQelXh1z5zVelSWk/7rCKO1wXw+tvmKVAY20TE3JMbrbv8bYQ6/U6OuOSs/o4N8BTzijJzOrTEu0nHKaHDZGWHnk9gSkqGA5fSG/YR2vlRB3WrAXZrqLCF77+SJF6vf/bjJxke4kglcYooUHvwa6VHl07h+l512+NPKEifeynkqDDFaV2FIKDPv0JLz/B8Cj8Kpw2C5h+/thcc/n5jn43kv6TjK47l8eMW0X0pJQreA9rxE1HdlaMi9oso/spOIx5NhHf5KYpDr6ZTw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(136003)(396003)(376002)(366004)(39860400002)(451199018)(2616005)(6512007)(41300700001)(66574015)(186003)(6486002)(4326008)(83380400001)(478600001)(6666004)(316002)(8676002)(6916009)(66476007)(66946007)(66556008)(6506007)(26005)(8936002)(44832011)(5660300002)(38100700002)(2906002)(82960400001)(36756003)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?WXlSx9T5mm0no+mULd4tA5q3sNIPQPq22hcGwBaE2IspCwsUSzqfOLe+YX?=
 =?iso-8859-1?Q?PskGlTBSwMt7v0v96Bty5QXNKygJbCHHDb/e3m3Y0QcRZ71CcnQOS79Yk2?=
 =?iso-8859-1?Q?rvpHWU3lSJO0HzZE8rAaVC0rRFhm1SkiybniEP/kLfuLrHo19tAtszSaIn?=
 =?iso-8859-1?Q?+K4G0mO1fZ5b1Ez2oV7YLquyZRnrYShDGqF+RaKcsKl5H9fmAR8oJQaOoa?=
 =?iso-8859-1?Q?56Wh28cupww91yA7CviEakEVI5KGrkttC1D6WfMrE9MUIWyThFYzZtZ3yS?=
 =?iso-8859-1?Q?yVK4fOjKiHoetAqL5kL3X56gu0r4MAZjDWFj2RIoBqbYVE7fiHhzGnWDDf?=
 =?iso-8859-1?Q?QRwODcKDU6ABt+5CBAHRHs+FDIDkHstOKG51I7GbIred1kv/IldVNVScY5?=
 =?iso-8859-1?Q?QycDLadCe4L404bVeybiicjptXibLxoT1zc4kOCx4WfKryWPTbpODuEokE?=
 =?iso-8859-1?Q?sqQkxkU3TxL8hbIUpsN5NcfcwfeL8HpggWoj0sffeiAm8xJ8zhZ0qoas4f?=
 =?iso-8859-1?Q?UoijGlDm1lJKlWzLy4JulQzpn/S1s2Dqw5MF4kHoQ0LpWcbMmEpXI+3OQT?=
 =?iso-8859-1?Q?eb8TJr66wfX+fkZzjZDQqJuoG7kBcAmk2j2G/AkZnmmmTeNxSGR6NU5szF?=
 =?iso-8859-1?Q?rfAJnVTq02fE1H2awI3FfgnMnghKR1u5Uj+Hh85i3sknn5j2GxExJJr+G0?=
 =?iso-8859-1?Q?fwbJcGCgiyKpGeEf3wq7kun1lUZ7wSIJpjS/VjP4gLAdkqWZ+o5ZVaJ2Wk?=
 =?iso-8859-1?Q?4VzoWBuBh4tf+/iihsmuU0Gkyz0aQJ9osQNntMHhFjXHAV9DPRlw3GRRza?=
 =?iso-8859-1?Q?oWXI6Yo1jYDxuc+g3D6lyzCa1FYY2/gR5PE/rqNkc5gezxy+OxKYe6HuhP?=
 =?iso-8859-1?Q?QWcKBR662mOvH2UNAuqpyx7APGgp6g1+koLH8Ll6vSR628Ql+vFgr98TQ7?=
 =?iso-8859-1?Q?f2/qsavPGe2kgToneLItUbGRNrDWUnzJMQ1xrqD+c5xVamIIcSTzjDQvfJ?=
 =?iso-8859-1?Q?hpPDeEh2jMSgPw32HE+1ZTIFJjtw2wnlL4tZV3U725iKVubmTBkCqv4BFZ?=
 =?iso-8859-1?Q?IZYP4nOOtfou7/fvUAroqvFWVdBYj2sKJOVyEKoMfwUEJLRPSQPSa65MbI?=
 =?iso-8859-1?Q?wjt+hYfVMTYTzqpIrIO2Ck5EyP8HEdWisKubzPbMeh2jJJPy46hHEloLxQ?=
 =?iso-8859-1?Q?ARSAK1UB/WzzFicTW95hZpmNue1HhvDPFAjvg/QMG3Out1RyJc1ONyZ5VP?=
 =?iso-8859-1?Q?dF7mx520Zlk5NRkSkEAT/yEfOKh/7LOnUqfmj1Jr9FCo5S6BtuLGG9JmbM?=
 =?iso-8859-1?Q?NMQCbt0yag1iy/MXd3X8qsfiANWEyQ68JP2kzFIStLEAMbCgRG1ShQo8Gs?=
 =?iso-8859-1?Q?0vd76E6LBHJoMtPkQ9tNUJD26o++MfwZjaJk+akVixVSN41L7hiLUGVOup?=
 =?iso-8859-1?Q?2YipmuPjjj44HTmTLg2mjMDC31zwJUf8Aeb9PgS2hPy9d5cHbW6Z6DpCZX?=
 =?iso-8859-1?Q?HMl0lxHbo5pKyFVfuNZhEJmlhooDbfcN6y0nLrtcV1a/7c91jInRT1aKZq?=
 =?iso-8859-1?Q?AIm77r3EoQ6J8ao0QhvcEvJLaojgNZEE0Mlaang8r98Ft3o+nMnkJ7/8U3?=
 =?iso-8859-1?Q?eb2Envk3uHZfrYzbsQ0TvbbtWPY0lmyQvluECrOj24JfaIjWe8l7ePBw?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d41d724d-4bda-490b-1fdb-08db2b151442
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Mar 2023 20:36:14.2254 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /fhfWt9755z/mIKlJMPxTm4R4uM3kSKyFnM06RAftSroCnN3WKDyGV9NdFgGZYZ46bNKMYytWycbeTnv9U+BVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7034
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add i915.enable_sagv modparam
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

On Wed, Mar 22, 2023 at 08:12:19PM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Currently we have no sane way to forcibly disable SAGV, which
> makes debugging things a PITA. Manually poking at the pcode
> mailbox with it's various SAGV/QGV/PSF formats is no fun,
> and likely to be clobbered by the driver anyway.
> 
> Let's add a modparam for this.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++++
>  drivers/gpu/drm/i915/i915_params.c           | 3 +++
>  drivers/gpu/drm/i915/i915_params.h           | 1 +
>  3 files changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 50a9a6adbe32..ff70225c0263 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -411,6 +411,9 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
>  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>  
> +	if (!i915->params.enable_sagv)
> +		return false;

would this be one more ifdef for xe?
should we hide this on a HAS_SAGV?

anyway, let's move on:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> +
>  	if (DISPLAY_VER(i915) >= 12)
>  		return tgl_crtc_can_enable_sagv(crtc_state);
>  	else
> @@ -3696,6 +3699,7 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
>  	};
>  
>  	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
> +	seq_printf(m, "SAGV modparam: %s\n", str_enabled_disabled(i915->params.enable_sagv));
>  	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
>  	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_time_us);
>  
> diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> index ade744cccfea..66141906ea05 100644
> --- a/drivers/gpu/drm/i915/i915_params.c
> +++ b/drivers/gpu/drm/i915/i915_params.c
> @@ -121,6 +121,9 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
>  	"(0=disabled, 1=enabled) "
>  	"Default: 0");
>  
> +i915_param_named_unsafe(enable_sagv, bool, 0600,
> +	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
> +
>  i915_param_named_unsafe(force_probe, charp, 0400,
>  	"Force probe options for specified supported devices. "
>  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> index 3f51f90145b6..6798b5c2363d 100644
> --- a/drivers/gpu/drm/i915/i915_params.h
> +++ b/drivers/gpu/drm/i915/i915_params.h
> @@ -56,6 +56,7 @@ struct drm_printer;
>  	param(int, enable_psr, -1, 0600) \
>  	param(bool, psr_safest_params, false, 0400) \
>  	param(bool, enable_psr2_sel_fetch, true, 0400) \
> +	param(bool, enable_sagv, true, 0600) \
>  	param(int, disable_power_well, -1, 0400) \
>  	param(int, enable_ips, 1, 0600) \
>  	param(int, invert_brightness, 0, 0600) \
> -- 
> 2.39.2
> 
