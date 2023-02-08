Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C567268F1EE
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Feb 2023 16:25:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2BB8D10E7A9;
	Wed,  8 Feb 2023 15:25:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E3110E7A9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Feb 2023 15:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675869916; x=1707405916;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=5WZHAcW2n1gZYSPAveFvHQYlS1AuRx3pGqk+bv0sh/g=;
 b=B/0xT3A5ncsrDKzm1KLX7GXF+s8weSiRH+PbkBEuUASpJCwEZeG7eG78
 bObn4/u0O/Ozd6gsjw7Iped9wdyGUc0xHXNwwLqGWH7PNxk4PHlbcp1eq
 RYik4YIw8gIwayknKP9TTRzokRuEIwHvGJefIP75GR0i7TQeFmm+WGC4d
 G76QK9U9/T+Khd8hSGnQwgVnVNl17pxfhqHIZJZ7NRTwkKqh7blBc6lWY
 DM81wcZEZSvcLbgDQJE1GB1fznuUQxeXDjItFa0VZN41XFlcZ3zkmqccQ
 dgbRqqvFeYAJlCb3iBqGvX4b9+2K53l+mLJIWmskClb4zfguujtI9doPi g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="309475777"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="309475777"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Feb 2023 07:24:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10615"; a="809975203"
X-IronPort-AV: E=Sophos;i="5.97,281,1669104000"; d="scan'208";a="809975203"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga001.fm.intel.com with ESMTP; 08 Feb 2023 07:24:07 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 8 Feb 2023 07:24:07 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 8 Feb 2023 07:24:07 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 8 Feb 2023 07:24:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cbupYCNKiejCXFGPnJEa55gaeK5RXhHQhY7WET0xre3AkdbpCDczlTRtsgQN220IuBds8tJBSsYXF214cdEdAnMBdeYo5ukSP5xCGm9YN0mbzPQwYHquQ7tFegrnhcwRoW41Su+f3DaglSAFCp1u52oLjkMp37PUo80kCCDI/pptr+2EJfTJVJdGXpdakQ4uCJHOEW0sjVluWJ0pCdyONKiuju+66iLFXGBjlSe023SmINBnfxyBWBOlWLYER40ZZDN6SryUD3mR9k+hmuWaFsN48cyqJ8TsWfkNfxDmMcqhIfzEDh+uYgEmbk98gPh9uhSN4Pw/8V5YPlQvUv1Z8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GeQkQE69kKy2THL4nF2KI5Hl/ih2s0F+KedRTHafZ9M=;
 b=MHxjGWbBX7nY08ae+vJd/xOWPqlKN6VPF+pCxSAuQD4NObJ/3WDiIsjWVe+Z/I4WSOGWX+Pn/Ll6a/MefaiHeVI1f15mykvH/lsafgC+HXX8VQHuvrN8jKnaCj1vkZCC6TEQAUG752X3ETIGdtZrT76YDZNyQj9QoKt8TdWfWa6tkZ/1uWa513LpVIO5q1kujFluPSHBt0UEnMgT1lNmkwsbaspw6K2VEmh+0L2HAvpcpmmmkAkxRTesyA6flE/u8Wx8Z+zDPNvPZyIQnrjw3a4iMDLNcu7GtVbWJy5zqnB29qfGx09pDVnDiwY9m/4Xs5CFqbOoifS1pMJB1oHz7Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4671.namprd11.prod.outlook.com (2603:10b6:806:9f::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.34; Wed, 8 Feb
 2023 15:24:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6064.031; Wed, 8 Feb 2023
 15:24:00 +0000
Date: Wed, 8 Feb 2023 10:23:55 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
Message-ID: <Y+O+i1fTxy3Ii0Tn@intel.com>
References: <20230207064337.18697-1-ville.syrjala@linux.intel.com>
 <20230207064337.18697-4-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230207064337.18697-4-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: SJ0PR05CA0185.namprd05.prod.outlook.com
 (2603:10b6:a03:330::10) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4671:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c6f0945-9365-4172-0809-08db09e880cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jb/v5tbaL8QRlUIEjfr6GhczC9/NYOW0A38kHwzgUoB1IxkCVMua1rwgz1IDaMxfFnIjCwtxnRc92Uy5veNAw9fe5NroEVxq45mWNKyRGO9b7KtQExoF8vEYNbUdm2ohtJhrt962SfMnSRRDeRJtvU6/yFUCMpqcGgE5GfoSqFADIDmMP4m0X/ZmZUqGdyZZwzYxWFZeqT0SdUWmasBBD7nDQ+zY84QddxjKPTkNbd3htmPdQaznji/QmStn0oYDKBqCLNFtgjNaYXeLaltL0ehNJyuXem6N4yqU94t64o+sfY0oJjHbnXU8Bqdrvc90KQfmUb8wnDYjUcgi6w1d2MNezXTxMheeOfTVPx1LpsgEqgSSm9gsyJhAbW2SXaRrY0r/PRkau5i5y1bqW+GQLBlPGLL2dOc11mWlGE8E0fS8mAUE6+F+CpooIFhJ0x7+wVo63yNwA9GFO9PfQfln5kXfuw4UwL0sBnHDkfmkawL4Rav7IOQbniG+1sv++bBxfKxguEi1G3LchLa4/qsRfFvwwrE05zU1J42Blmo9jQ313FUuBxlltoyLQfaYa3couvF6BE5XRrRfyjDuCfgZCg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(396003)(136003)(346002)(376002)(39860400002)(451199018)(41300700001)(66556008)(66946007)(6916009)(4326008)(8676002)(66476007)(2906002)(36756003)(86362001)(38100700002)(82960400001)(5660300002)(8936002)(44832011)(966005)(6486002)(6512007)(26005)(186003)(478600001)(6666004)(6506007)(2616005)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?qQ5sWxE4emNmlb7yYHsn+5wSSLkeUIBUFVi/L7KQnN7NZs9CYD4NuCXzAq?=
 =?iso-8859-1?Q?AjDfHTCFXvGRoWcDbVoytrfUDgNWyzViHOsz1hxdnXqeIwG0HSSIixPZ/9?=
 =?iso-8859-1?Q?sYGp/D/XNaqdcGnuPqVyflr94zoNmHP6ZonCBEU8PevDSWbqi5ZCcU/33p?=
 =?iso-8859-1?Q?mIOlB4dp+JrzU0l60Z/RTxVVo1lrxG7gl+DvcbG5dAtPqOTGq0pVoDZFz9?=
 =?iso-8859-1?Q?CTwC+wSyhwEQEgzygTcUnBg6JYEbs5JEk1ShKS3l4ULhlidn2mCAuRsBAL?=
 =?iso-8859-1?Q?AxTf69tMfN4QocKW4pHfdVlQzJ4xrJIKR6zYLCBWz03DNINL1UtTOU08ru?=
 =?iso-8859-1?Q?nlO+dQIxYlCc0SLVIex8BsHFb/FqFETaUYZEljWDlCMlhMQXW9NlVwjyfJ?=
 =?iso-8859-1?Q?1ZuA81a7Df7XPCWXup+McPPpajm6CgiR/ClmeZjtxZqC0UC2/LvjGVpnYm?=
 =?iso-8859-1?Q?kbGy9CclZbvo6d/jo4r6iP0TX+SG0sSxNAV5Ye4b7suW/y6o1/V0GoGGVf?=
 =?iso-8859-1?Q?7S4nfKlFWHE5ln0lMz4UIXFovtLbuIr5prFjHbjCOpB9IJsu4OMMzcyJQe?=
 =?iso-8859-1?Q?LE9i4cAVB7s3i9QEy1hh5ZRPXiesmnLgU/5BplTvu+/nDaqFFnjMIcSqfx?=
 =?iso-8859-1?Q?bJv3uwK/8H77n/kZW5LRNbLY93YFqA9DrkAmnEMP0WZH0soZlgk9KEvlD5?=
 =?iso-8859-1?Q?R66CXxeEAT5/FTwrdXmWH3vyajfCdQw8nYGjW6qvWmVMTSNxPjzN91SUib?=
 =?iso-8859-1?Q?U85m705QRgjLexFaPXk7OHcPvtn1rMkSUT4tZIDnbhzHx3Ayv9RoGwDwCB?=
 =?iso-8859-1?Q?6jib5frimBbE25CVe2bbyQrEP0S0KXfdVLwaszfO1mKSE3jVYhtzOhcD/Q?=
 =?iso-8859-1?Q?N+huaZZNye5hO3i+4yJWxUInqHAIMtj9LBlNE+ORTU3i9u/DEKOreGFzFi?=
 =?iso-8859-1?Q?H8ii8BtPAWFTDQmxJlkPZxIFscKRh9kx5A8JVp1ze3nsh8TDJUd0IoYbpt?=
 =?iso-8859-1?Q?iWja7UjqC4fUA5CJOoqFycZdRbahoA0bqvLO+PG85f89ZC28qEHczUncEr?=
 =?iso-8859-1?Q?DStCvp7hIZOanjQjJdO4SBrE1KNnqPjWG2EoZeLZfHMh6en+ToAlirBtng?=
 =?iso-8859-1?Q?DhZJWYlMAIZW6OmqgyMibCXUCgRspFaJV1O69UfNYki/3mKffRXTfQ837U?=
 =?iso-8859-1?Q?eM3F4cDwTrStmGw2VQjzunilcxXiEBgJD/NfAO2T7Qqvhadc00UN45ue73?=
 =?iso-8859-1?Q?tetP8YH3iyEfhKz4HuRCdzNrS7s/BdWmR3wGT1FIr8HO1ZRJUA2Xl/LxAB?=
 =?iso-8859-1?Q?yda/NCzs+JoGO/wq2ts+EJHbNET//5h/b0VQwnzNI78kPPpwDQu1gX1HBi?=
 =?iso-8859-1?Q?svhKuxCtcIdEgNPV6oDvpu7wGuMJwkbGSbL/LMBJq79INv6CqWZxMQdpl3?=
 =?iso-8859-1?Q?zx9NwpzALYorNSRvCE81kRsxoWBgcM1fQRAobE3Cs1sSKsZAYTQlfH04Yg?=
 =?iso-8859-1?Q?8eRMBEhe2x0BAYqBUBJ7qI7STZW3HMnCpg6Lsja/iNJ83pC/Ixk8Ht+DFF?=
 =?iso-8859-1?Q?CPtj+z6j+xWiZ8Papf5S9JUiTiVlfBEvit94KQm+i9IGcJiB8N4kXfBo4G?=
 =?iso-8859-1?Q?JVBak6Dh2SwKoISatl6Mxuyc3CRMOA1dHdQ3hZPvR9HUv2+dqFWbO+FQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c6f0945-9365-4172-0809-08db09e880cd
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Feb 2023 15:24:00.4789 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LFkmnrteHQzdO/DGwfotqImivqCrEN0SwolMO17X3hKXykGyoNc/k6pHM5u+DHkAnhcKAuhGpruM+U31mzBN1A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4671
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Pick the backlight controller
 based on VBT on ICP+
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

On Tue, Feb 07, 2023 at 08:43:37AM +0200, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Use the second backlight controller on ICP+ if the VBT asks
> us to do so.
> 
> On pre-MTP we also check the chicken bit to make sure the
> pins have been correctly muxed by the firmware.
> 

It looks like CC: stable was added while merging this patch.
But it doesn't go clean. build fails due to s/dev_priv/i915
and also due to the lack of ICP_SECOND_PPS_IO_SELECT that
was added by another patch.

So we need a backported version of this patch to be included
in the stable trees... how far we will go in the stable tree?

At this point of -rc7 I even wonder it will be better to stay
for 6.2 to get released and then send the backported version
to the stable ml directly...

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8016
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  .../gpu/drm/i915/display/intel_backlight.c    | 34 +++++++++++++++++--
>  1 file changed, 31 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 5b7da72c95b8..a4e4b7f79e4d 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1431,6 +1431,30 @@ bxt_setup_backlight(struct intel_connector *connector, enum pipe unused)
>  	return 0;
>  }
>  
> +static int cnp_num_backlight_controllers(struct drm_i915_private *i915)
> +{
> +	if (INTEL_PCH_TYPE(i915) >= PCH_DG1)
> +		return 1;
> +
> +	if (INTEL_PCH_TYPE(i915) >= PCH_ICP)
> +		return 2;
> +
> +	return 1;
> +}
> +
> +static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int controller)
> +{
> +	if (controller < 0 || controller >= cnp_num_backlight_controllers(i915))
> +		return false;
> +
> +	if (controller == 1 &&
> +	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> +	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> +		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
> +
> +	return true;
> +}
> +
>  static int
>  cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
>  {
> @@ -1440,10 +1464,14 @@ cnp_setup_backlight(struct intel_connector *connector, enum pipe unused)
>  
>  	/*
>  	 * CNP has the BXT implementation of backlight, but with only one
> -	 * controller. TODO: ICP has multiple controllers but we only use
> -	 * controller 0 for now.
> +	 * controller. ICP+ can have two controllers, depending on pin muxing.
>  	 */
> -	panel->backlight.controller = 0;
> +	panel->backlight.controller = connector->panel.vbt.backlight.controller;
> +	if (!cnp_backlight_controller_is_valid(i915, panel->backlight.controller)) {
> +		drm_dbg_kms(&i915->drm, "Invalid backlight controller %d, assuming 0\n",
> +			    panel->backlight.controller);
> +		panel->backlight.controller = 0;
> +	}
>  
>  	pwm_ctl = intel_de_read(i915,
>  				BXT_BLC_PWM_CTL(panel->backlight.controller));
> -- 
> 2.39.1
> 
