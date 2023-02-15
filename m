Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD006988A9
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Feb 2023 00:14:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 05FDC10EC92;
	Wed, 15 Feb 2023 23:14:23 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 495EF10EC92
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Feb 2023 23:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1676502860; x=1708038860;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=edYOqVGqOjr7wIPN/lhHjqrXoOMaXVvePLh/tc9o7Ds=;
 b=EUOOg7gH/zD9PXJWFkEOo/KcuTt9+8tbqBF+o/ho6EVeEercNUztDXS/
 sVuJvXN2oT8wHfkdyq0SDbecMEJ2+dvfHxBpBxc1YvN82ZTOOg0cKwmSO
 Ho2g/uuDNk5rEj5xsXVs8930wcjhP80FV/7zJaG/VBqP/3VMJ3j3UjJ7E
 IpKGU3DdIbd3da+E5Sor9DqwvnivnlYohy9a2FZRMoTgND6CD12DIKiHL
 qvzSeoSYeMFw0X8tZ/R+2bksfnwR6clYIwhbjqeJEqR6cSSyWXNIh4A0h
 vBL7ghQhPvCsl4/XmoLSWLeLpLRdxuuorLu1B6H+BjEu5nsIKX89Ww/Kf w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="393979931"
X-IronPort-AV: E=Sophos;i="5.97,301,1669104000"; d="scan'208";a="393979931"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Feb 2023 15:14:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10622"; a="915438300"
X-IronPort-AV: E=Sophos;i="5.97,300,1669104000"; d="scan'208";a="915438300"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 15 Feb 2023 15:14:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 15:14:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 15 Feb 2023 15:14:18 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 15 Feb 2023 15:14:18 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 15 Feb 2023 15:14:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZpvGM4JV8HdHJPXmxDwijil6EWnXhtVoKYdR+jv+82B3/U8Bc+FS1zO1Iz5oHZ32mWyzFt1dmpdWnS8Sg6MlYKUVwrwFMynsUshA2yy3JS7N7eDHYZ1SjH3xiRDJ6Yqfe1oUCpdssnbQ11V1wY6Nk3oryLQAHETPpzvNqvSz8PT5PoRvqEitDFI+pEBeA/WVeRv83o8DV3Ump9L/ww0+GOZzFrKQ0OfwmxlYXJX9W+/90RxegYkyZWLYLCnXbgOwY2igjG+DSeV0v0kdnNk0LFx0Xo6UJaH9P7iXO1dFXtBTxO3xeh4pySoV929dU6BLpjyX0gnrHXDx7no5DAYmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=AApUHsGNCtWg8skqVZ7/RIbv8AsRamQIjGEju87XSx4=;
 b=YkOOmmzMjy+80wTAYJ99qW9ujVhZJ7kid41gcfngZlskYL3dGGrJFEPVA10ESR0igyAW2RS5qNrMy8TKkYqxUMz5mwKafjQpl/hUWY4E8ETkk0DguaxPN/23K9C/+ELP5EbnjJF3Qz26xZkBL36FRnLq/3LM1q2EqgZDfjlHNi68SBa6LlO5rn+C9D/ib0SwQb47Zih8HfLferJ5tJaiYL2+YVonIQ48IT+cvDnHRoU7htyLSaw+A9vsRsllNjn0XoaxK4IHQn7QwVEn6pkxulkYGSb/w9Y6mpGMB+tc6PeTvsSNN+5aCQUEJ4LbM22fVULYoQCOnSB+mAjCiGYbrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 DS7PR11MB6077.namprd11.prod.outlook.com (2603:10b6:8:87::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6086.26; Wed, 15 Feb 2023 23:14:16 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::7333:f4b:7dbb:36b%7]) with mapi id 15.20.6086.026; Wed, 15 Feb 2023
 23:14:16 +0000
Date: Wed, 15 Feb 2023 15:14:13 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Y+1nReODffxGcJXK@mdroper-desk1.amr.corp.intel.com>
References: <20230215222426.26085-1-ville.syrjala@linux.intel.com>
 <20230215222426.26085-2-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230215222426.26085-2-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0107.namprd05.prod.outlook.com
 (2603:10b6:a03:334::22) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|DS7PR11MB6077:EE_
X-MS-Office365-Filtering-Correlation-Id: 5074b3b1-302d-4ab0-0a0a-08db0faa5bcf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: PlQgjkzwTXSIj6zcA6isUuMMQyM0dm0XSW2LlJW+SCkpCwpnTqSOcJriZxQ99rVHG4h5ACX1FJ769ly2PRlqNrC6zlqxYiNL/BtX5QkE/JSqg74TnzvdO2yVPuk3ecXCzzFYGxZVljvYpk3pEkEZD8GShU/6hn9FtQ4UTWvm/PtIigY7WbKo4KMOZ5bfPNZtKrlPCHbgQg+BvIwygxO0zDDyZ4dIuGL5L+8i8cdz2EDNFGM3wyewyfVy02IpmvXOl4JYlOWjHc7UKT8t2LY/4fg7nVU1VeWLHg+nbLb1byDHA5XNPeR1pw9s9Anj5lJQPNAnHThm+yEmQvyj9SPURYV5A2jq9AzEKYK5ZblJVgrAJpBk4o2SP7cYCQousbmP5nUt6S2FRwBjln9hG1I3RwifH2Zuk/WEk/N1GJjQ89Z6KpE5VTzehTks+WY0czd+8yPYlhCRxRu4fdKjciCE+e3DLTMhXqkhMiWOVSTjfFbP/tLA61sv418sZ7puLMOc98CXhomTI7E7wvgdaCicCLLI5qDmM3M4PELJKS+bAe+x6DAVQ4OTDvt0OdGd3B2glEaXpZHz8McgumhXZLl7WBWtwBfaNr5tWU9HaSG7MLDlBanVHkzr+AV/lT5tsO/R0k36xN4ppELv9U56S/CBLxyNsWAbejJ0GUy/urK7hy6wZo68v8op+sHJiI87i4iV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(376002)(136003)(39860400002)(396003)(451199018)(2906002)(82960400001)(38100700002)(66574015)(83380400001)(41300700001)(5660300002)(6916009)(8676002)(66556008)(316002)(66476007)(4326008)(66946007)(8936002)(6666004)(186003)(6506007)(26005)(6512007)(86362001)(6486002)(478600001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?QA5ctO/7BzwRbRYuFO5rzfi1rBx7ep1H+a1QjDwXnf14fq3Zhaj6rACYSZ?=
 =?iso-8859-1?Q?vttv+jc4tftm2395+dJ/uFc0D2tka4x2A6y76b8fyFkmh4GUuvYN6nA6wN?=
 =?iso-8859-1?Q?BnqL0Vgvd3F1RPsBc4bEck+DjabWHW7ABenWKhTwCudBTrKoHFhiO6my5p?=
 =?iso-8859-1?Q?IMdcH7jgh6W7BzIBN8NH4QeudTjSLY3IFmqFCxPiUsZxrMb60DXuKyc1A0?=
 =?iso-8859-1?Q?r89r+qMBmjgMVTTuFrw5D5StT5MS8oNk/fFiIWBzZgo+xpCiOUSKwZZfd+?=
 =?iso-8859-1?Q?BNENaQ93l4ZMgr0u17hCtL0XeflIiFbo9MF0j4fRjkwL4K2osFub0hoqc9?=
 =?iso-8859-1?Q?s/BEsmJJ+0MbRenHugxTuDNt1aFO/QlZuvJFoG1jFXvbqW79uznOTPjTyI?=
 =?iso-8859-1?Q?x9u9zXgCTcFxdAcx26NGAYyyapkQn4N5dej9blaDvxO6RqwiXb2mvNZEaJ?=
 =?iso-8859-1?Q?+Ityh/xbclj5MCu3975tFDioUrS7kxc0R40iafWoJNV4Opi3n/spMVZ3ux?=
 =?iso-8859-1?Q?hMk/xZu5daRX6Swbi7Up0k7XVE7wi6UTnUwRvs/Fb5yCLN1p+Y3kYf4ylL?=
 =?iso-8859-1?Q?7AP548JizCZV/6lW0NmAP9snO9nVTlbcb6YCMpWnUlIrCKQmqTLuKaUSno?=
 =?iso-8859-1?Q?FSR6MxcGTPyr/5wzg8fIDLxPGhnVJjE0WeJm5bUVF+hrYTpqL2QorPGaNK?=
 =?iso-8859-1?Q?H5MPvuU/VccmkS+CEd63jZ3oniijZK+E2HBEdbp6bKGISQoQFwFd15Ezdm?=
 =?iso-8859-1?Q?lw1rDbr9EUF5+cnBYYV1sjLdNGSjMR+xINmmz/y1JZcXXik2bnEVj7cgos?=
 =?iso-8859-1?Q?Yy7lYlPU2vAmU0ez+d5B242ClrQ0QjId7NtY2z5eQ8JP9HHa58UR9k6yFL?=
 =?iso-8859-1?Q?8hniEYDDEfvX4UUolqmbK46IUrxSc71hzzaME0KWAMDYc+s1TGn6+tufxU?=
 =?iso-8859-1?Q?J4cpgzfgitv8jiMbAKui1pv+eiTvKCEuk1UJrdqGUNppAflt1rMtmDtqNc?=
 =?iso-8859-1?Q?4OT1DEsEzNydpl++J2OgbnNXeGzWF0AUDBEyHLNZx4F98tyWPl4NLLyRzj?=
 =?iso-8859-1?Q?X/ZnHIcXoBTMNOatnoP8+T0+Pbf2XPyiQdXGQMuULdVu62gHKnCzFP7iBZ?=
 =?iso-8859-1?Q?gP9UjY3Z6fnlbsQzke17DCzqSIEZHG1yMv2wX1nJBIsIpSc8cHl/7gRq94?=
 =?iso-8859-1?Q?diR01BkOkEkmuCQX3GDqsQKBX7WWsaIZXMUPTOMmda/bd1xiO5JQYnf0+3?=
 =?iso-8859-1?Q?1CEkcdpSBpuxMg8xe8NxAzKUnrCTWS67Ji9I3Cx1WAQGYwtxEiNYkFv3ap?=
 =?iso-8859-1?Q?uiZv/rd99ynWT7aeunuLl7m7nGMe+dhND6kaW0Qv5XZpJ+CGKtdORsaoLm?=
 =?iso-8859-1?Q?avy+ihtJPTJTMHTPurmuflYumAz29YfUScpbEohrJbz4cJCWBJOzJLk0GQ?=
 =?iso-8859-1?Q?n3UNsGlkb/JsDNzS6ry6SposCZrTEThZcfgstmMibLzLHQk7/ydgOVSQI7?=
 =?iso-8859-1?Q?mCnmIZDpVzYFUqZ590nLa/Rc3+7NCcfRwFyWgDuRRZwaFpO3DBiDD5tY54?=
 =?iso-8859-1?Q?kZGUXXk3cWEEposCQMwssQLYFnfFqTjoNzoPTpQiAeMxFhCMDQLPGLMZpu?=
 =?iso-8859-1?Q?F20GCPj4VnOU5PIoDI+IMdh9D1hwMz0V5reKXAY1ZgjnroTMnSEjUPTA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5074b3b1-302d-4ab0-0a0a-08db0faa5bcf
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Feb 2023 23:14:16.3771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N6V7geF8q7LAt2MK3J4TUmNoVKgT7EOuM4nOApQ/yrJrhZrVK9P4L3JVGGJPpiUo9X0EF+ZbKLagccAnqMj2HHXLDSaHsk5HbQgbXrfZcNU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6077
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Add a few more debugs for
 failed framebuffer creation
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

On Thu, Feb 16, 2023 at 12:24:26AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Most of the .fb_create() failure paths are annotated but there
> are a few that seem capable of failing silently (well, higher
> level code should print something, just not anything actually
> useful). Drop a few more hints into the log to aid in debugging.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_fb.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index 1ba052a127b9..799bdc81a6a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -2007,6 +2007,7 @@ int intel_framebuffer_init(struct intel_framebuffer *intel_fb,
>  
>  		vm = intel_dpt_create(intel_fb);
>  		if (IS_ERR(vm)) {
> +			drm_dbg_kms(&dev_priv->drm, "failed to create DPT\n");
>  			ret = PTR_ERR(vm);
>  			goto err;
>  		}
> @@ -2049,6 +2050,7 @@ intel_user_framebuffer_create(struct drm_device *dev,
>  	if (HAS_LMEM(i915) && !i915_gem_object_can_migrate(obj, INTEL_REGION_LMEM_0)) {
>  		/* object is "remote", not in local memory */
>  		i915_gem_object_put(obj);
> +		drm_dbg_kms(&i915->drm, "framebuffer must reside in local memory\n");
>  		return ERR_PTR(-EREMOTE);
>  	}
>  
> -- 
> 2.39.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
