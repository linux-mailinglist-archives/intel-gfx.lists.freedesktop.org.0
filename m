Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A0CA76B08FA
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 14:29:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22EAF10E685;
	Wed,  8 Mar 2023 13:29:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7696B10E67F
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 13:29:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678282189; x=1709818189;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gL0T/aC46HY68YnSshoN6atQmCa6TDTaNPgOVv2TTvw=;
 b=D721kkEzfqrgdC8AgFVCcAItaNKtf9DLcpDYLgwHOJJvyvXjTCpf+whU
 LliQgnwwgvW2R157BAtTgqEot3JSLHX6H2houg7/IKWPYF4MnefxJrAi8
 VUHERs1gye6iFCbC/WIOSaDwXIOkWPWzLbhmy2t8IxcZ3ZmoanTIgW+/R
 owrAfqgNfYfICddY9euWAGS2dwiWqIdHUQCv6Z0PLBmdUgo7/BCFePnWQ
 hg9RR49BjD0sVMRcQ7dFSKZJsX/nWHLFkSG4ZwPC1OTdGsBkGxDPk1ab3
 yGaqNw3Y7iuX0NW1QzCuJJJMhc129KZm1xH04mhRWf6+H/gZpIP0fUro4 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="363786518"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="363786518"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 05:29:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="741123668"
X-IronPort-AV: E=Sophos;i="5.98,243,1673942400"; d="scan'208";a="741123668"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 08 Mar 2023 05:29:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 05:29:48 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 05:29:48 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 05:29:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iXvacxjuKavCl6/wU9z+vtOXvw34RGJtKX8RgL4fxDLlTeBn7Z6oiPuzdix6oFzG3NNfrRtFLSj6BUinQRzSRSaHjQ8Gi10Ap5VDsQ9i6q1KVPuYLDP635gLEAg9FwHXrAuJuowstkeNF1wOXEAZHITfUSspz+B+VXeKToxqwJ2y6LeSGM4rX9YV21O+Uz0MpSAEdETSbYRdRWuRfWblssLkmS/47DGNEabP5kweZodEIQXQJcDPkfcy71iqPpyr/90Icdx1KXbuCcnTCJEUzLeA2Uf+3pFzxYpeXiyuZhoFY8NaaL+noYcNe1gipMQsfib0DQ+dr4IfmTpP4T1AkA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+8Ekxw+rDuW3wcWlRHk3uONUzs4tYvegyHI/uBfP0a4=;
 b=aIJYGs53lYzSaOlHcLyzoZVkGZHUccTW03EGMblr3L/GAY9EBtf7z+3LLbLqhxlnaUUCU2PitGByUee6nouW3ZDpfO8z6125eU0Pa2SeQvG39zJCIhaFjQGo8g1TFITTtZblLO7i9i1BUq7R1igZf+314kkbVg1++58JNnGmlvJ0spAtgsut2LXvfO9dG2z3yZkuvcKaDMapgoNAtcNZn1b7CNqs9nB3hH4vy1fHQ6KLNUixHgtULk3a1n5KEPpilFFsznHKMCbXsz6E+t47NcI0sgTvue37hw9baBPkn6lwfKnC6RsvrnPb1g8x4HMTA4M4p4lVQPjaQxtXeNAjtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CO1PR11MB5106.namprd11.prod.outlook.com (2603:10b6:303:93::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.17; Wed, 8 Mar
 2023 13:29:45 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Wed, 8 Mar 2023
 13:29:46 +0000
Date: Wed, 8 Mar 2023 08:29:40 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Badal Nilawar <badal.nilawar@intel.com>
Message-ID: <ZAiNxOZ0Vhqou/1n@intel.com>
References: <20230308102109.2386712-1-badal.nilawar@intel.com>
 <20230308102109.2386712-3-badal.nilawar@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230308102109.2386712-3-badal.nilawar@intel.com>
X-ClientProxiedBy: SJ0PR03CA0060.namprd03.prod.outlook.com
 (2603:10b6:a03:33e::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CO1PR11MB5106:EE_
X-MS-Office365-Filtering-Correlation-Id: b42b6509-7c07-417c-f8ba-08db1fd92ee6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EpPoeEf+WhNbDVh6jJh89AqAcIuPkLu9JW9OzeXR8aQ7+H48mnCLZF6NvQ3q+cS828dQ76+k3HfXYmCJwao2UiR+tbbdlXlzQwkKbk9Ljx+2zYhPBZA+1gvoxgSQrxoaAqXgDhM9Q6dvZ33cMklm8wb5wg/CYgsP7zpqW7kTYI7M4Xrp07I5nQXMEfe55Zi011eoD4CRPTi45TV8qMJdtoLXg8v/xE1ksxlkwgd+QMleRm6aVPt+4YdzbUMTdpWfZqcSYm412nIo6oF+pIxM/ND+LtYZgLJRjmMc9U+mZYIeNCr5gqACTmuJsxBmL/LoO5vOXaL8bVSzJ+T1uuwzqxRj2jsucfnKYRIY7SBLXpCBSQYuy+ugOOug0PaUzTX1xRmWmFVBs9dv5TKgUgod/yLGDiA37U/J/XREcyCGKd+C8IN2uKCFvRYnPaL+ihDpNzgTTgidQnpskLICxkoqcUcQ5TNBt5DLLROdtdUaNFpcMZz0FJvae+6iy6II4OkFoSp3U9AQRQtBLWha3+ACTzUIxtHvnqRuNwDY0E36nqt1EWMq/pdnhtaW7aEMtXCz0DrxMSnUn0wGLwnlA7YL8Au7cbbGF53ICKV/PAgHvYA/J8Tetts22NuuLcictoJigbBrcu1LoZt1LtDT/ZxOig==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(346002)(39860400002)(396003)(376002)(136003)(451199018)(83380400001)(478600001)(36756003)(6636002)(38100700002)(82960400001)(186003)(2906002)(66476007)(66946007)(66556008)(4326008)(8676002)(6512007)(6506007)(44832011)(26005)(2616005)(107886003)(6666004)(5660300002)(37006003)(316002)(6486002)(41300700001)(8936002)(6862004)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?f2z4nBoQ3H+YJ8kq57v/zRN3RqNT4VnLbTtfL3BgCw+OgH/PBvsCuUyRMCVJ?=
 =?us-ascii?Q?lmMbYtgmlZr8greLP0DKcqYZRrBYVSaXqbVWYj0eG+cbpXdrqswTjzK+D4mM?=
 =?us-ascii?Q?W7jYTYAqyzjGaJm+FN0ov+aR6IiaT+UpxHqkT55Re9V3a0ycGQXo8NR1/732?=
 =?us-ascii?Q?06s8uiZCsHtzlwEbcMDRJODhF8JIclyBA3a3gH18NZnfcSI0zrzYMA8SugqO?=
 =?us-ascii?Q?P+UPZYkOVHYgnSawCqcT9H11dMwXWzSQo3kIUVW3JAUvYcj87sGv/wrx0k8c?=
 =?us-ascii?Q?rnDGDaEYLHBMKxlFM8K0CH84nnQ4+Rrxu6GtIitp1OQDG6D7cw2W5scxdwJX?=
 =?us-ascii?Q?y3WdiF1QoTYhdHCnUW8JuQlxcC3dGpXyIobJmsAxVDv+3kLhQDeKwskCRvJc?=
 =?us-ascii?Q?wOPKSo/0YhCCBx/cMLXcSpeqUDlYqLZm0uor+tAIMwr6sTYc1WxqN0v/ZOlC?=
 =?us-ascii?Q?JkGjZV82NUxIKMcwraZWF/stUoLc8DQRdFzIIcV4I6hiZVKyam4JLsUHr8hi?=
 =?us-ascii?Q?36ED0CviqX4ZnN2BWM9WdXCKR6B4GwUEMIqmlGydK0Yg79CQpTYsxLwr/G4D?=
 =?us-ascii?Q?YX0/t0IehyaNObcpCZbUbz/HszbTuNugLqaubywcse3ac+g+YQNRb7PU9h0l?=
 =?us-ascii?Q?xxrJ/Y9/4eYwhzXDblRpAl0BlutFBKlRwcU1usXMLh07soOpa1RadCcNTMKe?=
 =?us-ascii?Q?dt/5tIFh6USB/UmkuJcpqDBV3WIL7P1wwXjPuQ//Izo+URv4DHLgPCDQgeDB?=
 =?us-ascii?Q?tuQzq8yq/bdbIQ9pupi+VonyA2GDVWg07Y0siRmdO3fxmMpXqWTgtjYYGgJR?=
 =?us-ascii?Q?Up6WJdfSTjJgxEzrVwbezP8po1t78fmK9OGxugloR08zGkt9SzTvMF3MnMvL?=
 =?us-ascii?Q?8U1np+fgZG24ZimvGECNxovuXTETnKlg7aMxxtCRC5F2UtX1w2OgZ49iQRQf?=
 =?us-ascii?Q?NKkom74EUBDlW0xcScWN2K9HRlrCKHz3aIM7EmHkZi9ThyrjafDyNe1H03DH?=
 =?us-ascii?Q?F/LqojwhFv6NqM+SRiTSm6t98AqxHEK+RBQRLsZ1ql0cTrsdSz12UpEM2nTH?=
 =?us-ascii?Q?rkFO2G6Cg7PDD+J3FuTr+m1RgIBJllgzj0IUH9WgR7efSkPoYT0YRnFPWNFB?=
 =?us-ascii?Q?DEwms6f2PzPvoPMkiNeuMiyi0EW0XwGnDZHhmD/eejOtA3DJZmt8ONvHRrLp?=
 =?us-ascii?Q?Cy+9n4x8znJKVeHDNBbGlUR6XCHfGsuSV+zPWsCsIAWlYT6JJQ+FGc8fKOPO?=
 =?us-ascii?Q?mpTDRi1T/KsIoWyU3egle5uYInvPvrgq1VNeY8rb3TPsAgOMpOHUwDrSA71x?=
 =?us-ascii?Q?qWis5dfqNv/0EK/7dwOm9fcSP/qQKLn22SP2E5DcMUch6bixkifK6O0QJaVM?=
 =?us-ascii?Q?MJqnF0olLeoXmrJvkR0uE2AU8JkheR2Shn8I2oNWOyZOAMq7AUPU5Yyhu3dz?=
 =?us-ascii?Q?RZ3D0M4bkDRw0h4KxrnU4UCBK7FZYlXzNzD6trORJiWo/fKSmSA5RLNg4y7R?=
 =?us-ascii?Q?YGOMiFvVNz8KexDK7ABFb4aDJtnYohNzkQ7pZADBgjsKmx5ec+Md17Z15yXk?=
 =?us-ascii?Q?YaKe1tnRReYDOFgc33KrTw5lBhda0LfS49hMvgKertWH9b/8Ien2h3m7CbLT?=
 =?us-ascii?Q?cg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b42b6509-7c07-417c-f8ba-08db1fd92ee6
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 13:29:46.1113 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +z46f9b8xvx7pxF0wsvk0fu/nEPyp1MaqCeYACcleEaMhc0B4qmHhw0Xi3Qo7wkjKIcesJ8cC75qHZxU2935vg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5106
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/mtl: Disable MC6 for MTL A step
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
Cc: gregory.f.germano@intel.com, intel-gfx@lists.freedesktop.org,
 srikanth.nandamuri@intel.com, hima.b.chilmakuru@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 03:51:09PM +0530, Badal Nilawar wrote:
> The Wa_14017073508 require to send Media Busy/Idle mailbox while
> accessing Media tile. As of now it is getting handled while __gt_unpark,
> __gt_park. But there are various corner cases where forcewakes are taken
> without __gt_unpark i.e. without sending Busy Mailbox especially during
> register reads. Forcewakes are taken without busy mailbox leads to
> GPU HANG. So bringing mailbox calls under forcewake calls are no feasible
> option as forcewake calls are atomic and mailbox calls are blocking.
> The issue already fixed in B step so disabling MC6 on A step and
> reverting previous commits which handles Wa_14017073508
> 
> Fixes: 8f70f1ec587d ("drm/i915/mtl: Add Wa_14017073508 for SAMedia")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: Badal Nilawar <badal.nilawar@intel.com>

This patch should probably come before the revert itself.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/gt/intel_rc6.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 5c91622dfca4..f4150f61f39c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -486,6 +486,7 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
>  static bool rc6_supported(struct intel_rc6 *rc6)
>  {
>  	struct drm_i915_private *i915 = rc6_to_i915(rc6);
> +	struct intel_gt *gt = rc6_to_gt(rc6);
>  
>  	if (!HAS_RC6(i915))
>  		return false;
> @@ -502,6 +503,13 @@ static bool rc6_supported(struct intel_rc6 *rc6)
>  		return false;
>  	}
>  
> +	if (IS_MTL_MEDIA_STEP(gt->i915, STEP_A0, STEP_B0) &&
> +	    gt->type == GT_MEDIA) {
> +		drm_notice(&i915->drm,
> +			   "Media RC6 disabled on A step\n");
> +		return false;
> +	}
> +
>  	return true;
>  }
>  
> -- 
> 2.25.1
> 
