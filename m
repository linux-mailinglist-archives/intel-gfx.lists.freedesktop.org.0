Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C7D8FF1FD
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:15:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C67EA10EA06;
	Thu,  6 Jun 2024 16:15:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CktIxVdF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9BCEB10EA06
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:15:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690538; x=1749226538;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=IHxNPmFFRM/GnluLylJCgOklDLwFRAr2tlDG93dHyvM=;
 b=CktIxVdFabEq57lFybSafn1wijfL97rWCh7pBzQJrE3gslg7Q1oZfph7
 ogw0DJp6MBSj2WPS+NjZ1JzwvQ/ZQgZu5C5Ye95JHvUCADcWIUWJRVXnd
 3FR71ZQsLe8a2kOfhVodwUfoFmmZ5TywB+sD+zEjg63I8Qr3kF8Ogu15T
 rMq0quScIEswDzrryTOgkjtZL5GB0sB3Dza3L2YDHCU3g+rb7BRpYHOoR
 WQ9ZLMOCCcbIXN7QaMeSrW/vQv1WjtLKiQCE5a2F6fiHquGjdSiPGcNdw
 4fTJn9kxNgom1nM2HMiqSJhGQ9bTVTHXQzDotTBo0JlFBV1fD0dcsfFIF g==;
X-CSE-ConnectionGUID: VuK/1YzPRWyADTnG3AoKvg==
X-CSE-MsgGUID: Rpm31JHBS0W94Ky2aNDGeg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14508209"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14508209"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:15:38 -0700
X-CSE-ConnectionGUID: EPD3V5RMSN+hSpxNyy1GSA==
X-CSE-MsgGUID: xWh1QeF7Rk6/bS9/GFqh3Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42961043"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:15:39 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:15:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:15:37 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:15:37 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:15:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cjaCB4XXXL/6CEVOYsfzL+TNgMNy5ou3Ac00hIGAo1CSKy7Iz839qi0Qi7O+yceVOOWwgRDOg0xOMmuj8PDFOaH3ItzA5l1ghk/lu2tqF6TSXsax1v5AimjhG+9tMLb7c30Fzsft4iNzKkLid3JNqKEUoXc7J8RmADbIs1ot3QYgqPvHUpIP18Nw8rh/A7A+FHLllAQ8Qzzn+gEAbY2x0W5JM1gjSnLm5yft5+tA7411AwwI/jZ6/8MGJW3NS6HRpMUSWaX6CaXeV+b6QrzxYt45rUMhC++i9g+z1dn2x1b7ZIeF5cNTpO7KKHpNqm5dzL4DH8atRGYqBLhACkvvMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JMhWx7K5/YUTGD37ahioVvpMDUp+rpNvojOAYGecGAQ=;
 b=OPzgUBz4fLRLLNo76mmuHjMHWPy3AVr4hTnSzdVGOLOLsByvteBn9X43FQVC+dSMqp37ddQ7kgodNKFdgq3RocHodeVWYY9v3OWKIN5eZ7Eztg09w6ydn334xZ8P4xW0DlZ+vL55rnFGyU1c+fWmZ2u7/4kRre99IS1amRA2okEZNXZoAWhFltBkg5Bi6XXyLW7hK0Jh3GrOxUQNDGaQIHWT1fXWhgB/o/ZK2eCRS2cIfGlpxtn7EOEeWDeqD5NDKk6MdpSV+FyifG2b4TeAXYPJEvXqSOeFcL0csgoBvX5IQeb7eWwHaTzQP+tFFT+dZ6AW14g7Aw9lRxEHvM5gQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB7500.namprd11.prod.outlook.com (2603:10b6:510:275::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.24; Thu, 6 Jun
 2024 16:15:35 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:15:34 +0000
Date: Thu, 6 Jun 2024 12:15:32 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 62/65] drm/i915: pass dev_priv explicitly to
 TGL_DP_TP_STATUS
Message-ID: <ZmHgpCHHqPn-SjFD@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <c7aaf0e981324bfc5b3aec31f30a7b1a158ba568.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c7aaf0e981324bfc5b3aec31f30a7b1a158ba568.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0071.namprd11.prod.outlook.com
 (2603:10b6:a03:80::48) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB7500:EE_
X-MS-Office365-Filtering-Correlation-Id: 04d73e17-13d3-4aca-6d0b-08dc8643e51c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Razp/gTQ6JGO2JcPSFnbK48KXXk+uFljC9tQ38VOJ/Mb0BDMyKrRQ7C6E/On?=
 =?us-ascii?Q?1qyD4UUDLmNZdno6hX6RKIvQwxoHsGoJm0wmpSiOTfAHbmYY0sLsBE96qtL/?=
 =?us-ascii?Q?9KJkVmi1/h/XstTjaYC1QbqAOOYuPlaMwiu7BRX/NItF9cOBC/z3y7w1rH/C?=
 =?us-ascii?Q?EN6xakOMzEtGJiQgEFQnPcySUJxtpWkgZgnk0vMg9vDwcp7hHbKYeVCWJp9u?=
 =?us-ascii?Q?/rQjqoowkCD1iZS+XS9bkbpaH3KHOhv3M0uLe7hQahd+rNq/d9aAIkUgaFoT?=
 =?us-ascii?Q?cXHprcj11sGbatdW2EjKkp7t/T91CzpMD2f5fZpsvPuZnqzbg79+67aInFxE?=
 =?us-ascii?Q?EPMz3597EMlm1s3Rv9XMLuWuORzQYdhMZkfZVA5A6IHd3+1tQqJhPUqhZ4/z?=
 =?us-ascii?Q?Tfh+/06K2eUk2woDyJrtxSXrO36qSnYwMn8ozD1MgQlseU1afVP9Aqy7jpSg?=
 =?us-ascii?Q?o3QHMONw8XgmbC0YdIaDLMxWMIG6ne2DP76g5x7WeTHlFQbQjr74XN7afsYC?=
 =?us-ascii?Q?E6/ST44VkSQdmPJbqICa224jf87cacsqRXsBR3WbDOHZImmYGJEDJPGilbW5?=
 =?us-ascii?Q?YZ19iD+gSFO/ZvofHO3PJq0VtyqpmhqHigA5iuKDaGOfe3SCpABSSPHQvFCD?=
 =?us-ascii?Q?RXz2h5/kL9oAJaDVS1+0t2siLU/9PPDmjF0Q2ZMd4jstll5vNeyNdhIXRwVP?=
 =?us-ascii?Q?QvctOD6Sdr13xaLITynXNTG0p7H0MTQz1Uv0Ri/gEcDxwdiQBRqNdnnZjCkB?=
 =?us-ascii?Q?DUYNE1yAo0+gMF2i863Uo4IkXEsVI1Y64YPoT5zwu4L9qrijxP+jw2kLUOAY?=
 =?us-ascii?Q?B4vtK1w27bTXMM/CW4yDHB0DcnmiawW0xojQeadFh9ULvEdAtmPzf1IiZKol?=
 =?us-ascii?Q?Lt8X+ZxpX551r0rLjvRpyljM05VhZgiKdFZMKa74vKIbkXCgkpTDZ2dTUEOp?=
 =?us-ascii?Q?NLHKRtBIWHpmUITzoaaqfGse7EHUxKzPMbWudugQKLYrxH5SeeISQXOuCKcS?=
 =?us-ascii?Q?pWOzd0iXOhbTZwU1PgavrpBjT1Nl9OjTgyczSLTmkAAOW+rXhrYdbv4Z+Ws7?=
 =?us-ascii?Q?UWeWTwKEo16+bPy/0ywAr6DRP/gsiX7KOKS/WSENc8t4tCabgYlU1v5JpDut?=
 =?us-ascii?Q?1CjHYAVridaodw/8kf1AdfaMaEKMi9Ay7srrkwl+L4/wI5ySWqRKxXoi+MnV?=
 =?us-ascii?Q?6+F58Zc9M25aMBLEUxD5Hmj4qHKHvuDYye4efLmos/u7i1m8G0kyn8XX7vgp?=
 =?us-ascii?Q?WXA5m+JHFUQzbpi00ujp3LHiVPxQkI9xGhB9vo10WYdX21JfnJr23PEJGMGt?=
 =?us-ascii?Q?7xf2ViklhBR1k7tiStST/b0g?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?lXgXVAvW4Vu36tNnEdRfAN+trlcgiqqjSv+8pIPtdeWCOg8tizDBaNtg3vi1?=
 =?us-ascii?Q?XF2p7ued1iS41lHJEZtWUNBcMPg4oQaXB6oSMrJfpMqyxuB3ZU3slnFk/SvR?=
 =?us-ascii?Q?/bBJMYt66sYexT0K89KjouGDiytrbjg7CCwqSOR1Ym43zx0QlMH1j5uCKHh7?=
 =?us-ascii?Q?FEQNQ/dmQ5EeZoLIHhV6uMcMcPCfFvdx3h6AldE7n9RKn6JdMnlkg+Tc8U6+?=
 =?us-ascii?Q?iU78TCFPSelTDwm9MqqL9rYjbRbFQvcsIldLe40csJtir7unFlSb1uTl6NUo?=
 =?us-ascii?Q?+xGqM7Exc4Ng3GeYuRCdHBC9aVIuJ3cF+qyNo+Aq7Xes2OeYSuiF63qkSzr5?=
 =?us-ascii?Q?m1iEzhyS5EgoKtbsfaEfeLd0hA9563qb04LDfJw00uhCgdqsXNIbPHOxguZk?=
 =?us-ascii?Q?Zj6v6P5kLU5az7CVnJAOHGTpsKEyUueQFAbskWeAvC6bbDMEurHVUJpD5ZKY?=
 =?us-ascii?Q?VhioLR5uGuR0BbsLn9pY4gnDddrdyoGwbcmBtRSAygMstaEelNzSkolX0BFw?=
 =?us-ascii?Q?cJLcwMi9vHC6yKCAVe4nkj26UDj0or7jMImOQl5lRInk2alVU2skbEVzsz8w?=
 =?us-ascii?Q?Gjf1xbNW7pYXytmBD3fftMXnVcCtMEwxBqT7jg7Xyawy8c6Zu3xm8vD022eC?=
 =?us-ascii?Q?lGHriyZ77B7Yok0Ez/TgnbthGk36saQES7X6mQ3dyoE1/YNt6XOEbXisryop?=
 =?us-ascii?Q?CQYyQdXMv3wz/UhlahGF9AErKTIO3LFr4+IrcvSW7DpvE4t5bCwAh9rJxk3r?=
 =?us-ascii?Q?lPHZUrXq4/9+9kAnY+RPKDLwJsFR3me8L/Yd1GDUnEqIkp7yREJAJgJgzaff?=
 =?us-ascii?Q?prBKTFHH2Tds+jiqnguHFhf+aay1yi4/lHw879PwuXoajM5SkBQZm08FIjBf?=
 =?us-ascii?Q?pBQpbFLYCWKXNcdhmmbEI8lFpX5wsEWqlhSb9DY4UBXpxQ19JnD3SpqWnoKW?=
 =?us-ascii?Q?/bun88h0JgndGHw4FmZXkEs+Du4FZLtPwj5a/zFE7HXtmv2pCAvPne0p23qh?=
 =?us-ascii?Q?0df5daEglzLuiahQrwwLKpjqkxx7ZHodRK5a3QoqNY3/5fxm+TvSnAEEIkA2?=
 =?us-ascii?Q?Xt22IMZaRu8PbH/9k9banYDaXgkdwI3NHCG0wFPbXeDyQxwrKS4cEXjk+fCU?=
 =?us-ascii?Q?eesvwS3xPiBk3jMzFY50zDqxJsBYca1f2rip+djW1QxN63CyLFkQJWDikBJl?=
 =?us-ascii?Q?2fw+VDay1WNSqSPaufqZR1MyJogZY3AfSZXE3a+8z95d3KUNZopduJnC6vA/?=
 =?us-ascii?Q?yA9EOZRbq5k0C+btoxI1j+R3CaX7/aRxf9/QFzFVBS15eAt5w1HBr9lNmnSk?=
 =?us-ascii?Q?b8abRQ0xmLtxRdhxyFUE4wCrhsOmcf8oS6SJQ1GIcvVgxeXzjRf8teLljZ4N?=
 =?us-ascii?Q?cMan9BvRfJ6CDw3lzYW8mZ7DXjmCcmqBsSTuebbcY5xrGi9rUQS0u9rouu/7?=
 =?us-ascii?Q?UwFIFnflpRcyhdNp/tABTnyb1mst8Xip+e9kwicHFrw3a9m3mMv8tiyv8Ltt?=
 =?us-ascii?Q?dGY1rMRXcxb+ZkQzb+KXo2z4o7W2j8ZluBf3Nm+AxA9FAYm3RCcrzr96R4bT?=
 =?us-ascii?Q?KNrzpapCDf8liJ88uoheg4WAQC6/xNHZh9iNerFK?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 04d73e17-13d3-4aca-6d0b-08dc8643e51c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:15:34.7818 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 37MfJA9SsLHlDx4lKOR9LrRqASYa33d3H2HGopNTssl+JsOicLP3X5K9VWTDfbIxr5fJNdY6hzlaGAzFdHLwqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7500
X-OriginatorOrg: intel.com
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

On Tue, Jun 04, 2024 at 06:26:20PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TGL_DP_TP_STATUS register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 135c2e7964fc..368cd1312d8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2196,7 +2196,8 @@ i915_reg_t dp_tp_status_reg(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12)
> -		return TGL_DP_TP_STATUS(tgl_dp_tp_transcoder(crtc_state));
> +		return TGL_DP_TP_STATUS(dev_priv,
> +				        tgl_dp_tp_transcoder(crtc_state));
>  	else
>  		return DP_TP_STATUS(encoder->port);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index c1547ecdc352..3de6e4f54bc0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4048,7 +4048,7 @@ enum skl_power_gate {
>  #define _DP_TP_STATUS_B			0x64144
>  #define _TGL_DP_TP_STATUS_A		0x60544
>  #define DP_TP_STATUS(port) _MMIO_PORT(port, _DP_TP_STATUS_A, _DP_TP_STATUS_B)
> -#define TGL_DP_TP_STATUS(tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
> +#define TGL_DP_TP_STATUS(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_STATUS_A)
>  #define  DP_TP_STATUS_FEC_ENABLE_LIVE		(1 << 28)
>  #define  DP_TP_STATUS_IDLE_DONE			(1 << 25)
>  #define  DP_TP_STATUS_ACT_SENT			(1 << 24)
> -- 
> 2.39.2
> 
