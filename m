Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D6F8FF1ED
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 18:14:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C197610EA00;
	Thu,  6 Jun 2024 16:14:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fDpiRAKY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 42F8F10EA00
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 16:14:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717690454; x=1749226454;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OaoBFlXMjRAJ/EXd6sVsKIleP8ZKtveUqQrrm3U9V8o=;
 b=fDpiRAKYjJNqZ5zKJ97BWnhT6C4TS6iHDWQ407zo2PKjzIc4lJG/hUpS
 CSuEUboIha512bCfXOZUTV7y30wGF5x9QQQ4YLkQmSEjaaI8AydO47Uc/
 od/hGADR4T6LyWMZoK9a4cVxdEmLu47AcC+Q2tzlpI3KSSp/Rmt5HYIYG
 5TQS1etmWxDkERl4n9UDp08Lsu6z4GO14h8MsQd6epKXTzZH/zJ9awtS4
 UU1oK4aL+t8PO64nZbQTMXEw3NXV3VIHuPck4SAcTT9lzzt8u7zXeQ/Ey
 eN71NhPrqgj0Kjx2Hvg/wRZ3sxdrNt7PGwl80jH+vUhdmyE+vFSMzolU3 w==;
X-CSE-ConnectionGUID: 4D+QRuR9RPePmLRp3SrWlA==
X-CSE-MsgGUID: q8Dxb8cXQxWWVKaqrexZSQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="18200935"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18200935"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 09:14:14 -0700
X-CSE-ConnectionGUID: +/2eUENETBeQ3ig1580e1Q==
X-CSE-MsgGUID: fo2UOGzwQQCwRwf4pTtLbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42960880"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 09:14:14 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 09:14:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 09:14:13 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 09:14:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZJbQih7snrPP/ukOUHMG/qsOLN58fSFiOJNIumc6G23UMhRIzGg7Hgnn5YBWHLFhyx+U1UEK8pjDuOdEt6iap4lkdczg0++/ft5DFZYmpTYMfrdEpiZAKDhHNvLTXji0qMg5z8jBSnG9/AyyZWSSwa8GGVvS4Vcgoxhn6aWS+ZNJ6GUeMnaFnMTZhrO2eTu/yrrkvNlSAK5yP5wQTj5l0xNv1Tpv4ZiOqfPApkEKFlQREp593dqJwp1UJ4TZ9XeDTmWI4oxR4CXrm+Qg8LV5GuWbsiFc6AzA8Z5vD3IU7kyJuDwCoW79nKU0voiSRZz54UhGXpvB0EaaO8ersKkaWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yD9RwAlRmozlqM6PEv9cxzTgerlz9LERKKIcc5AWefw=;
 b=RWLhLo+NsBHD6T38DsMqPUruZhqaLyxYsQGBpvU0hdW6JyGeCOFscqOyhTY1f/rPmfkmiyxFmfhYTk7zM3145x4J0x1/yCnBtnS+GVw4uv1J2rFHvBJVzfHcx4XpgYgR8+IbNM2E8sE/PxY8FpRyHFS2HtzuoynPwjQrP8mu2d7KXQyyttVC7AmNsijU4Kh5e76q06U0jxHkyo43sSLOxqNDQEXqFPy8+e3GH4maMyuoa8fsCHxQYZr1ifDioUV9EUSJUcG8lpqgEtQRi0hk9MQvQ8XoeeFvIPRkconp3ww8xSy3xmdWhNBFfVI2/svW7tmXBEEZIn//SQiTwN7w/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB6514.namprd11.prod.outlook.com (2603:10b6:208:3a2::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.21; Thu, 6 Jun
 2024 16:14:11 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 16:14:11 +0000
Date: Thu, 6 Jun 2024 12:14:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 61/65] drm/i915: pass dev_priv explicitly to TGL_DP_TP_CTL
Message-ID: <ZmHgULG73io4J7B9@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <3d3e2b732ec9372cf6b1ae44b25342179b028b1a.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <3d3e2b732ec9372cf6b1ae44b25342179b028b1a.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0059.namprd11.prod.outlook.com
 (2603:10b6:a03:80::36) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB6514:EE_
X-MS-Office365-Filtering-Correlation-Id: b7931519-82af-4dbf-c821-08dc8643b352
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?M4DFHadLvsjWTVKjnWydRTYte3CypsoCUOunXwiFbbsHKwhMLnm1ECsWB4LD?=
 =?us-ascii?Q?ZgMgsWOmJcQJflxrtdCXJvZey1BZaqV8EsmCrw/Y7RCwo0pdwIa8DWIU2TGe?=
 =?us-ascii?Q?aD5uT2b/lx42gZFLkzOTfaCyYH1nbgO2+Ev4gnY108Jojm3HBNPjYwWYlTZC?=
 =?us-ascii?Q?FHAbgq4T4/LZtSDMBjXe3wHAlhiv0V2CinjOXE4bOkG9hrh/WoZ0ahGETz72?=
 =?us-ascii?Q?bgwOAn1jSqUoG6H4gqThUvQ+97NzKfksQVG68MwQxyNhePuVQHJQGK7ArSKk?=
 =?us-ascii?Q?Kf3+Z80L7TDx9BnetCjJ/gg7YyV+1WEAw/wnSdDbM6QVVgkMTBn+2bjJFkBM?=
 =?us-ascii?Q?XOMR5c/csRQjQXyFagZE4HZEy4sV0OZ0fXWqYEyfMCSqdIJQIZUn1K0qAWv6?=
 =?us-ascii?Q?jZDyr5vJ5JOkmD2PsUGO9Ckw1X9gw1nyAoUQeQaIg5tt6FTB9ntJjIq9y0Ec?=
 =?us-ascii?Q?DISt7AZvpCGNzzimBEhwmaONiBxRc4UAd5RWBSMQLT5Pl+XeAW/5SYnOZw+b?=
 =?us-ascii?Q?KzlRmP1jpOr3mhl42DIN/nzL3pTuEcZ10T60lHSJFXYJh1r6GQPDilzp2QXX?=
 =?us-ascii?Q?LsN2FSPFJ6yHbW7pBFeIU0xXrbE/m0JBBFU1fQDX7mzaVH48pOHk7BKrmGVd?=
 =?us-ascii?Q?DWc9RqbaQgxYzDwJ7YhakHbik1i9xEoe2pYRySsks0C7AtJv8Xi0HuJPay1z?=
 =?us-ascii?Q?Vyp6p5xDOThuaV46BAaIYeOlLno2iFHcN6/Y4RhirAw5eLzLVAYdlZnKe3tM?=
 =?us-ascii?Q?qEvpvU5PaaBofW/wUzlpfwbCDIfnooEOdf31i220OWSf/TjBCbs2WcNPeyfO?=
 =?us-ascii?Q?wDuPz6FMSojHT4Z0IqepoXqh4GRypWUZB8MuOIzdyWmJuGJsPkQQH3faKIHX?=
 =?us-ascii?Q?LwSw0FtQjLSgzGyZnhZkMsUW3P+u8uKdJ5cSOhW7zkwYIO1Q/LbFpGwB1Ova?=
 =?us-ascii?Q?wvdVYek4zJ0KkZPUfHX9RHWDzn/5whIlVIWwINqnE+k7kDL8JeEwikIN5uyU?=
 =?us-ascii?Q?lkRLpn69PBVPw4p8ivFrZJcvvbJFkXmnUTSBVNah1NZ2QKLdP2Kb5Iy1ZfR4?=
 =?us-ascii?Q?brrv3+P3VtpHLjxVHcLL11NbVLHw/UGIPmiTm64X6QFylwtDJNOn4Eru4HmG?=
 =?us-ascii?Q?Yy+VcMRc2uyDl/btQbYjbJFYz35FGDxZv7oaqHjAQ68iTZxZDRejPuaOyv9Y?=
 =?us-ascii?Q?+rUGRD+VESToxFiVwXNP9ouNjxIy9KFfs08vFAnu7ibpcXgJM8+glBHPghmj?=
 =?us-ascii?Q?wy6fqo2sstE1V7llwmghXfQ+5CTEo8amYI5xtVk1MMieGc8KM6MjXoJaQUaW?=
 =?us-ascii?Q?4yCu75hvSmYxz+K/BRuiAVOw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gFtEwGmFstB5AM+tACJBZVmlQxQbuB9zAydpt3fqkjiscnyAwcaCBMv9A2AX?=
 =?us-ascii?Q?ydVcIFIG69HjPxO19D1dI03LBoYOUl7iXMlf/fY/KPzH3prWJdU501ryzJKB?=
 =?us-ascii?Q?R/HpiprJxYELtC2SLsKdbveSgW45mOYdpjYSwbDAdNNxqyyODiM41mYLoeGe?=
 =?us-ascii?Q?C5p0wJSK36Q9TljdFGp6MpxOOi1kBSKAc74uoSdkzpmIEnNVRr5Mgg5oOqwP?=
 =?us-ascii?Q?yvKUPKUnXwtAGrx1qItOJqdVhKrCCc2AKraIuIIq17ufoqifA7MdTgxRLqUE?=
 =?us-ascii?Q?lFqpxwmY4C7CHVkh9+3EeFqQmctbSaeOlejj7NXaafAau29dUTTq2j0H9XFy?=
 =?us-ascii?Q?NwSRhzxYyptmdkoe4529JFw1CQeAsAAq5UEeCkeZTgllm4oWV0TrSBmOlzHj?=
 =?us-ascii?Q?eISZXkrD3EM4LrPJA73S4lyBE0xloBi++YdmYXoEie3CPTnXJp6UfGhyHaDV?=
 =?us-ascii?Q?wlfsvZMUKlceXbHda2j00+9rN5Y7/OS04SWTIzbDEl9etLYKAqz/4Tb+rhkQ?=
 =?us-ascii?Q?DJ5e4VCTw7Gc++g0ezWhIB1pZMokvm6IBRQmRSUd1O+h8h5wSfk29T4ho8/2?=
 =?us-ascii?Q?69msWm6+IXVvirSTkG88zpraO8VN/uK4RUVi9juA7AHP1vDjxg8+uWhJuOI1?=
 =?us-ascii?Q?20LMplhFT3FReKMFm7nK81Ukqv1U7WYgYbAhUG1RGVRTazgEXb82Hn6FK503?=
 =?us-ascii?Q?Jz1x8QQd/ucKQ0V1EjmnQUclbGpNecMI8zsJy4l0qNluRB9UgequtmxzV36o?=
 =?us-ascii?Q?jpIOIWHtz7p/nVmNUk/KOwNpuW7ahu7/SHIXIYCMT4dufQDlgHhhGCcVZpuD?=
 =?us-ascii?Q?1etc05XGT4xg0sVrYNlRw1yvMU7Dyuh/wd2Oim5c6ZTemZKEPW86MT5fqsTC?=
 =?us-ascii?Q?Fc/L4qsdot5YuOS2yAW4zv1AdJ6reC14yyjGIKHJWnepjdF4ppEOHEz1I8I8?=
 =?us-ascii?Q?uXPEaaAMwd62WNOM030Ll1T0hS3uh1S+6iDhSy+CvNgxHbzDQRM+AHdACD1d?=
 =?us-ascii?Q?KLO/uMw9UcHeWCRCc/xOJZSi69UYI1Dntj04szchchey/rfVJ7TGEG5fPuQV?=
 =?us-ascii?Q?lTvaSmPrx6AbWdePAdMEzbK2M6olVf/LIJ1d+8T66EaCyxnbvgpm5wbexLZ4?=
 =?us-ascii?Q?Id+ZqqeP0nBA/iIJPpgJB3msO1SdAzQTfvQ6RY9zTCyHzHFdo1J8aRoFhKMh?=
 =?us-ascii?Q?BytCvLbTZBpCOet5q/WJdrclYIyLPIGiG8ijuVI3xR86TmPDE59GkFs/+CG3?=
 =?us-ascii?Q?4AHNEL4Ki7NJKvvm7eWQvW19qExkQiiDNA/64ZgkU0xw1r+8l+rV7h4BrYPL?=
 =?us-ascii?Q?aozrUfGcndYnMjxI8dgwy5p/yifwmaii/8dBLycA0id4VfzR0Til4ijjQMLB?=
 =?us-ascii?Q?iaK3y1j6bhSAULbXluutnXshNI6YkVrRiCznzVX8HW+ByvFiXXuOlVmrFvHT?=
 =?us-ascii?Q?65i11QcKF7grSfTrLXQIkkvIOUciiTJsAmT9oGPPi5nF2B4MQS05ti1iPh7y?=
 =?us-ascii?Q?EbHsoQsbPse/sEdI4B06+FAQHNthKzaJWQDOFAGtshyHmGJpIdFvat/Mako6?=
 =?us-ascii?Q?rS89PsPMZrQLmeSIv3+i0L7XtuUDbcr892MQyQE4?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b7931519-82af-4dbf-c821-08dc8643b352
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 16:14:11.1193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 29ZEwDS80NUP/V8QBrQmf2oLF+X0FOUBFJ73L50YPWpkNfAyW7AzwzKHIvjqVc8Tgq3CmCd/2QlMUNGSTzQpeA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6514
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

On Tue, Jun 04, 2024 at 06:26:19PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TGL_DP_TP_CTL register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h          | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 515996c49f5a..135c2e7964fc 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2184,7 +2184,8 @@ i915_reg_t dp_tp_ctl_reg(struct intel_encoder *encoder,
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  
>  	if (DISPLAY_VER(dev_priv) >= 12)
> -		return TGL_DP_TP_CTL(tgl_dp_tp_transcoder(crtc_state));
> +		return TGL_DP_TP_CTL(dev_priv,
> +				     tgl_dp_tp_transcoder(crtc_state));
>  	else
>  		return DP_TP_CTL(encoder->port);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index f330953e71cf..c1547ecdc352 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4022,7 +4022,7 @@ enum skl_power_gate {
>  #define _DP_TP_CTL_B			0x64140
>  #define _TGL_DP_TP_CTL_A		0x60540
>  #define DP_TP_CTL(port) _MMIO_PORT(port, _DP_TP_CTL_A, _DP_TP_CTL_B)
> -#define TGL_DP_TP_CTL(tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
> +#define TGL_DP_TP_CTL(dev_priv, tran) _MMIO_TRANS2(dev_priv, (tran), _TGL_DP_TP_CTL_A)
>  #define  DP_TP_CTL_ENABLE			(1 << 31)
>  #define  DP_TP_CTL_FEC_ENABLE			(1 << 30)
>  #define  DP_TP_CTL_MODE_SST			(0 << 27)
> -- 
> 2.39.2
> 
