Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DB5A560D2B3
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Oct 2022 19:45:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F83410E40C;
	Tue, 25 Oct 2022 17:45:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F19A310E3E4
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Oct 2022 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666719894; x=1698255894;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=fD0m/+MZVZD+pNGf+8fUeF9O1qNZLWSR/lhrupeGlyI=;
 b=gAFjm0LTdDRAd0QqgKGE8t85llVhwpl+tNgRvFstJolzYTXMk1AKUL/M
 uBZkIYAMa3jQynZrA1HcGAeinDLH+NTSjEp1PgGlCONTwvVJn/nvEMkGS
 obOWXSyLgzvv1wpffgXlU0+kodRncXMnWE7/HRa7JHom4jOUFDRHhzFZ0
 g8TuGIiE4E+T2O7Zi0CPghu/3rhLYoPRZrXbC4jTQ9Irq1n+sg7beznKF
 FuWAxVdr+iiMDD9+hNJGnSNx6lTn0uQFnrH67ePr4jY5YkenmpkLpsAnD
 EzMeb9CKphTqCgryKL+ekln28hXNu5FXSGfhGr4lqgYKQ42O9uUELwjLs w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="291049305"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="291049305"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2022 10:44:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10511"; a="634189364"
X-IronPort-AV: E=Sophos;i="5.95,212,1661842800"; d="scan'208";a="634189364"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga007.fm.intel.com with ESMTP; 25 Oct 2022 10:44:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 10:44:52 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 25 Oct 2022 10:44:52 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 25 Oct 2022 10:44:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 25 Oct 2022 10:44:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oui6J834zpzpiiuEu50Dm194+QIQicG6O4HhsXTsTBEkmEnjP7cbKx6RaOgqKIsU7P37l6ZDoy7D+wNQjmuJRwrbjFsk333R9/nNr4UnS1NQmHP6GprUBlolYEUZS0lBpTgN2LHb9eAwoeHEVfwvpNuXcuL4iTowASGWYwY/ax+JfPxDLZ8MTvpmB1Y2YXQCVDgegp0DG1vNOEMRhNiJQlldXLFvhlA2GEJRDp5J8McCXR/+FGU7K8yh9OirR5ngSqqTXFThIJrWFSuhaGzX1SMLe697LWQYpw0k5Y7RkVz4LuXV+40yTRE2xxnx13sel6kyp0O4xqPQfRY0R6sj9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4MHkJjHB9SWW41nZmZHwyou6uCcv2BaqXgZBqFPqG9k=;
 b=aUdksOc4KgrfIN5cIqLKxS9m9LWLyDigL4JT23ntUkabpBuHpxgfaW9E6Iq4P6K527q5HfLfIQnXDDYd7/CZCFaSuiEN1rN3lIS0PGDNWxnGN/263IdDT+l64ub2UwGWS39zsqNuInKmKdTcdJN3YZ6W8tdB+KS0jDS+gjyn2uY3IS9eBAZCuAjHqJjoUky6J3xci8stp2q+Kq4ck5MJ/cnpV9yDAHSPz0l3ygE6ccJTIV0a6CIY6o4aBRLDYCYpIhvP1kFIOpWbIvRJ3Aw4EdrLqf7wRhCnYOVjyGPaKFMdtZ2+kg0cIVwU9fBG9T/wm5wtsw8KCnsczKHR0cqzEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM5PR11MB1897.namprd11.prod.outlook.com (2603:10b6:3:112::9) by
 PH8PR11MB6611.namprd11.prod.outlook.com (2603:10b6:510:1ce::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5746.26; Tue, 25 Oct 2022 17:44:50 +0000
Received: from DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67]) by DM5PR11MB1897.namprd11.prod.outlook.com
 ([fe80::c0e8:f5ad:37d:ee67%3]) with mapi id 15.20.5746.021; Tue, 25 Oct 2022
 17:44:50 +0000
Date: Tue, 25 Oct 2022 23:14:41 +0530
From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Message-ID: <Y1ggiRohS4JnbZNA@bala-ubuntu>
References: <20221021213948.516041-1-anusha.srivatsa@intel.com>
 <20221021213948.516041-5-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221021213948.516041-5-anusha.srivatsa@intel.com>
X-ClientProxiedBy: PN3PR01CA0119.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:96::9) To DM5PR11MB1897.namprd11.prod.outlook.com
 (2603:10b6:3:112::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM5PR11MB1897:EE_|PH8PR11MB6611:EE_
X-MS-Office365-Filtering-Correlation-Id: d16ef05a-6a12-4658-9a33-08dab6b09d98
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: NYIcKzsuremH9wQmTFq6IBankR/6GcvyfIf4ELHxHW6amujccU7mSniir9w/Msm/1OkQvTbXtJg5GKhWFXN2yKqPa4UXuLWY6XBgT0FoPYuawo1cdweDHaFCWTYuTG+tLqm3fPjLuhYVLJorLuy1Vh5k2kE/CYrjINJFFJgpsSKiNcqsxnJbVHH5NIu5d9I3mploqqhHeRlQfnQLKDhPQgXKD+3BDSzf+1BRVMQbHvFqfXolqMymSv5RUUtsYsS2F+Jfy2cpSQezQTQsvHDJn/CGh48aQVuEh3oXe+AJDstjH31mZXQaSZ4V/e6/BGuTWq50KaWM2rnBxOmlA5EjkQ3fZQvHyGfC7i5PZ5OAb2kG470xe8GCFSSVeveXunhEbfp9z/Jkc62qVIoInxx1LVmSUrtwERfKFtpUaV9SF8/xsYlDV3fT+TVbrwZyQWcqEAejDmgCeVbloIgL+U679Jd6VF1OT7deJ+VnkAJ3aE0bOxSIkemCDcxx+VEekbIRPAliuGL33n/utm5S9WY69gMp7hDixb5D/Rv7Clg0uf7Rj+GAeB6/HG7Jtx9E/LBx5CY2//rMEHNWRm8gwPgaDC5blA5LfUpGCHWOY22kErgbHX2Affh1UKJoQuf/jI3cmpxXlV5d8ViO4eduw66ZyzU/K0VDbD9bKG243WKezlLD9PPruEHSBNpWfOD97ivf2vaTk/Y6auJl4JL/naitfQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM5PR11MB1897.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(396003)(366004)(346002)(136003)(376002)(39860400002)(451199015)(53546011)(316002)(44832011)(6512007)(66476007)(9686003)(54906003)(4326008)(41300700001)(8676002)(66556008)(66946007)(26005)(86362001)(5660300002)(2906002)(8936002)(6666004)(478600001)(6486002)(66574015)(82960400001)(6506007)(33716001)(186003)(83380400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OWl5ZTd0Zk5aNEhqZnR3MUxWQ2lFOTA1Y2JtQmx6S3QwYVFENG9QSU01UTJE?=
 =?utf-8?B?QkNRb2Y0VGIweDc4eFRmWjRZRC9kRnlSMStvdjJkOTdEL2tweUNLeUJSOGJi?=
 =?utf-8?B?aXp3OUdMbGpNQ1lqR09PTVlwUERySitKOHEyN2hQK2gvM3BIM2hxOVZZOUpG?=
 =?utf-8?B?ZHcwZnlpeEFSUWdPV0FnYzEwaDlFblUvcWw3YXRTM1pjaHNEY2tSYUQwZzNW?=
 =?utf-8?B?ZzlwY0VybzlIN3ZiTjNQYzdScTRyYmFNSHIrQnE0d05uSGlhMDJLUzNhN3Zs?=
 =?utf-8?B?ZXhZL09lU3V6RzFud0txd1kydDlzNndpb1h0Y3MxVkZDV3VtbjFzOHNLN1BR?=
 =?utf-8?B?TXpwZnYyZmpyTTMyRVBCTnB0U0duMkVVRDBhNXQ5a0ZFS1E1STVTOEMvdU01?=
 =?utf-8?B?SXplb0FOZGo3TmF3MU1neTJ6ZEF6U2IwakhZd2FsSDZseFNkK1kxVENyeDJK?=
 =?utf-8?B?QmtsVXZyWFh3eU9wMDJSVWNXWUNpaFBybnpVREFwWnJCQVVib0RIdk5ma1lV?=
 =?utf-8?B?WG9Zcm5vQXE1MGY1UWJrNWVJRHVINC9ZZUdmU1h2YVRqM2FSNkVHSm96Mmk2?=
 =?utf-8?B?VGxlTXA0blBrYWFLMEtDVStNcE54R0huUTdqOVA3WVluRW9paFA4UGNJSDd4?=
 =?utf-8?B?cFI0V3BHZXFDSjI5OE9vOVlsbFJ5bEtMaEJZd0hsTVh2QlN0UTZTYW02bkVw?=
 =?utf-8?B?ZGNPWGpxNkR0V0t3UGRCSkw3YzB2ZitWTjBPNjhtZ3Btck5PSGF4N3RXaVd3?=
 =?utf-8?B?bWZIU1g2cmhtVFFtRGY5ZGV3bFFMSUFnUmx5WU1EYU42QzlNeE1NVDhqK3Zi?=
 =?utf-8?B?Ulplb2VnbDRjS1BHeXUxVWIvTENpWUVBcXpFMVhPV2lZa3hrOUdadmpOYU1P?=
 =?utf-8?B?QW9rS0NHYS9nTDcxV3cxclNwMStmVlpFcUl5RGtzSnI1ZHBTT1pPU3JGbXk2?=
 =?utf-8?B?U1hoSHNDN2VKd1o3bTZvM3dETEUvRFB2OTZjRTdXSGRUTm9xclI5d0NZbEFn?=
 =?utf-8?B?NGxPYU01enJZWUFYK01haXBwWGpvc1UxaGU2eW9jdXFRV1ZzNkFSRWhsK3Rt?=
 =?utf-8?B?S3o0KzVVbDVhTEpEamRRakZQeXM1WTVJSHUvdmxTeHdZakdqVHRHRGkzWm1y?=
 =?utf-8?B?SzhoMW1wa25aay9JSis1UGpOVVVDMElXYXFTSGNOM202TjM5b0R6Y3Z0T0xJ?=
 =?utf-8?B?bmxRWk1EQ1pvK00rVkl2WStNbUluQmJZWkhKSXFEOU9Db3puTDdtRmtRRUNB?=
 =?utf-8?B?VjVUTm5nWURCNmRJUUdtSlBRcmNsL0VxcTFmQitHU29qTUR6UGZHTmNONCsy?=
 =?utf-8?B?N3lBbjVCNmtjOUNwVzBUOCtpUGt2Uy9rekVjRWVBQ1JqeWRQdUhmdXhDeEtI?=
 =?utf-8?B?UEJQOEFDNkh6dTE3L0xPMGVqUW1JUTZsS256dHNEUjA1dDd2WERIWkNROFFo?=
 =?utf-8?B?eFhzcHZ5YmF1S1dPL0hOM2o4alhzaC9vblNvQXFIMnM0QS9KZjVieW1vY2l0?=
 =?utf-8?B?bjE2M0RoRERFbU9uMjl6aEpVaXZTcTZHRWcwOS9ITlVaYzhiSEI0YWpOS1RT?=
 =?utf-8?B?a3puUml6MVZ3ZXUxU3AyOTFzOUtNRytkU0YyQWVYYnYxeEZWeGpSWFVTNS9a?=
 =?utf-8?B?QW1hWG1hT256RjBGOHVqTlNVQ3k5endKbGZOckRMS2xOUUs1MVN4YTlza2xZ?=
 =?utf-8?B?c0lCdi83T0s0UVJyaVVHbCtWU0N3dEhzLy8yTjdwKy9ab0gvVHRIWkRsTmY1?=
 =?utf-8?B?RGx4d0h4NFErVlhUT0lvdGVkb0RraGdUODhMSmV2UThubVNRQnU4WEhwTXVJ?=
 =?utf-8?B?ZEw0QXk5M2lvNVEyT0YrcWpDQTFzZkkza3RSNFhXM0VIU3VKNXZaQzJQS0RF?=
 =?utf-8?B?MnMwY3dyRzJ3L0xxeFZLTTg0RTdXMkNjV0EvOXJrODhLNDdtZXlDdjRkZTFy?=
 =?utf-8?B?aUovcVVmem8wYnROQ1NJanVEUE5EdXJxalpidGMxUWlLbXU3TUFnQi9SbWF6?=
 =?utf-8?B?MTlnU3JRQWRKM01DOW9nYlJ0RWVmQ3M2ZGhRdytBZVlmR29acm9aMi8rdFVm?=
 =?utf-8?B?QTZxcG11NGIzSjRRWkRoSkw5YVJTQjMyYm9ncytLMVd2aUQvUkhqTzFSK3JS?=
 =?utf-8?B?NGtoNUU0VzkzL2FNTm1aajVkQkhaU1lGL1FVVG9YcDBJNEY0NUtjYUd4K2lU?=
 =?utf-8?Q?2G9uRE1WhS5X5P9cTo5pROM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d16ef05a-6a12-4658-9a33-08dab6b09d98
X-MS-Exchange-CrossTenant-AuthSource: DM5PR11MB1897.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2022 17:44:50.2119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: lql2xOC1g3V8Op7uzx1qS+52xeQ4uaAD5USzBTjrJnkUeTp7ZlqC//nBOzAxUoyFc25HHztBqs8MHh/Oz3vNrpCxoNonfz2QbDxjVSQJWd1UPCV9iFt0dFavT9NADsrr
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6611
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/display: Move squash_ctl
 register programming to its own function
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

On 21.10.2022 14:39, Anusha Srivatsa wrote:
> No functional change. Introduce dg2_cdclk_squash_program and
> move squash_ctl register programming bits to this.
> 
> v2: s/dg2_cdclk_squash_programming/dg2_cdclk_squash_program (Jani)
> 
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 23 +++++++++++++---------
>  1 file changed, 14 insertions(+), 9 deletions(-)

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 3893779e0c23..e21cd0fbe29a 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1705,6 +1705,18 @@ static void bxt_cdclk_pll_update(struct drm_i915_private *i915, int vco)
>  
>  }
>  
> +static void dg2_cdclk_squash_program(struct drm_i915_private *i915,
> +					 u16 waveform)
> +{
> +	u32 squash_ctl = 0;
> +
> +	if (waveform)
> +		squash_ctl = CDCLK_SQUASH_ENABLE |
> +			     CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> +
> +	intel_de_write(i915, CDCLK_SQUASH_CTL, squash_ctl);
> +}
> +
>  static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  			  const struct intel_cdclk_config *cdclk_config,
>  			  enum pipe pipe)
> @@ -1752,15 +1764,8 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  	else
>  		clock = cdclk;
>  
> -	if (HAS_CDCLK_SQUASH(dev_priv)) {
> -		u32 squash_ctl = 0;
> -
> -		if (waveform)
> -			squash_ctl = CDCLK_SQUASH_ENABLE |
> -				CDCLK_SQUASH_WINDOW_SIZE(0xf) | waveform;
> -
> -		intel_de_write(dev_priv, CDCLK_SQUASH_CTL, squash_ctl);
> -	}
> +	if (HAS_CDCLK_SQUASH(dev_priv))
> +		dg2_cdclk_squash_program(dev_priv, waveform);
>  
>  	val = bxt_cdclk_cd2x_div_sel(dev_priv, clock, vco) |
>  		bxt_cdclk_cd2x_pipe(dev_priv, pipe) |
> -- 
> 2.25.1
> 
