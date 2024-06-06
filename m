Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 872EB8FEDFF
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 16:41:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08CF910E97E;
	Thu,  6 Jun 2024 14:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VWTUFT5u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C741910E97E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 14:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717684861; x=1749220861;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=q2cdWJW05JNwkWik++dTuViwfUHqR3ayBP6zfB+rXoA=;
 b=VWTUFT5utK/MYWzeL+kFlJzP5KbBQL3sDge8urbEsQZp3F0wPmd/doOG
 QFfpTQCeFs0UqUPs6HPF2DG6I66zRp0eb7H8q/1kt1ubyVy3DVRGpwCon
 wGPHk8/EYHHjSJUMQ3pVMjSyQ1nHq0uZEWTtSjNW/9+OlpP4eGBKxjFkI
 M6pzNN4YHFDjq7DJTdDZzijlNJwuTnvvGy1dAOi2BcVf0xmwiw1QBiJTT
 wBwdaMddZzehpNNQ3SXxheJA5vFAzUrLK9Eghivt/FIeDP8D9mw7Ilhdu
 l5zjTeOLLDRDlRYolL3iBI+m7IjeufGjM+D8sYlG9/1n8u7/jCytMbkTW w==;
X-CSE-ConnectionGUID: g6gCH+LMQPWlV0MtaFRvcA==
X-CSE-MsgGUID: nzIfJYjCQc6YIoFk2UoTbg==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14195233"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14195233"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 07:41:00 -0700
X-CSE-ConnectionGUID: 1+GMdwyqQDit97SqUoXyQw==
X-CSE-MsgGUID: Yjq2frWaRKyoQLPlHHbIIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38548448"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 07:41:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:40:59 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 07:40:59 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 07:40:59 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 07:40:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ncazoOH+giInNWln2BXsEr60jn2WYiS1mzI9rSit8iVm6HGs0xJLiojQ4IBo+NsxBtP8G4FWWgW45KUbgb1D+01qvhQEJGs9hvQ2vC1LoQblA4P5ivJIOH0AYiBdJq5FPcE092MKa+6Ry76uVH7m8ZJ5lpBQEIens63w+HRX9eU6aHC9KWpcGJgtn9YDYn9GOrfneIMSJbyxM+xMY3Ytx4o/ozxjbTZRq8vbNzqv9C9YFknaN5CtqjqWotUSFmpe25pyFuOGSCbgxtLg8wmpslwy4cRh5zVwecMkqQx3FsxI3yPcqSHa9SfmlDjaKm/rU/SVbxD9LUthiqMl/Bepdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8iCrdm5Kv2PFx08m+C4vA+cPY3GgX3FA3ydCEh2A0Y0=;
 b=FwfuwfPI7Upp/bhEfqWh/0kZcwNud6DRP4JEDP8yL/UoH+mssKrB1BdZtSDKNrbCf9tcN5hJECkpg7WF/DVogtBOwyoObENgG3+S/3hexaYfFDF4jiyDrGhz+s9UEv+hAyJDA7j0YflcoQc+22XWyCRdnH7Wg1v2lgnMRX/xOgHp/gN6TbBb+X8+EHhyvWf9e3gzjKB3Yx/rW9L9P59WsKgt4uulSMlmAsoPwi4qVPWVVF4p9C96Dz/FfplN08aPherDvYhVCmRV8gb1RnN4uf4doJNH9UV3O9eB0MSRxerdOKMLGUY+CK+YEtOfBaIA1Vp/qpOzoIKiwggm4vtbWA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH7PR11MB6723.namprd11.prod.outlook.com (2603:10b6:510:1af::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.31; Thu, 6 Jun
 2024 14:40:51 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 14:40:51 +0000
Date: Thu, 6 Jun 2024 10:40:48 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 04/65] drm/i915: pass dev_priv explicitly to TRANS_HBLANK
Message-ID: <ZmHKcBx4zbavRki1@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <19d3d11d522be1787db89bdc254ae826ca4fb50a.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <19d3d11d522be1787db89bdc254ae826ca4fb50a.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR11CA0070.namprd11.prod.outlook.com
 (2603:10b6:a03:80::47) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH7PR11MB6723:EE_
X-MS-Office365-Filtering-Correlation-Id: 9731781f-c94c-42b0-16fc-08dc8636a9b5
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|1800799015|366007|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Han4Tlo40ZQDtbGGLwG77ESUIhgr7Dt0tMHdK86wtVsbYPkngDMbKm2WkEVn?=
 =?us-ascii?Q?c/vKz2ZwoTmv6f9Sl/oO65k7EvItIBD/BLDt52LWptEvk+oksblkGpSvGx0B?=
 =?us-ascii?Q?xdWHcelxUHLMIR7RKMN72TrkCMpHEoNAJRo5X0lYVNV7fd9xArPJz/AiBqC+?=
 =?us-ascii?Q?IcU3OdR0U8AIl2/eXhPd8lr+Z4hnOh7Je3nhjqvEtXNyVn6Sy1rEpngwvb9C?=
 =?us-ascii?Q?kaD9YiHMyAadBsUUyrHWNQHH59uxHAi3RIMiEr67LLX6jQUAhpwZLnkkRJ3n?=
 =?us-ascii?Q?FHY1A7fW12o48zjd/5duDL1KF+SEeEDKDjC/X2X4MJM4xsfla3OKMoKTlBFa?=
 =?us-ascii?Q?4bD/AmFK6QllpDxMbde10XknluRBR/65jzAMKuyGMCSNwKos6lwtWTbr2SUu?=
 =?us-ascii?Q?nZWWUN7ba5DKaYieh+LQI/KlNzlYUzkYl8eEX3kNER56cBZXPPRh6L8h7wR9?=
 =?us-ascii?Q?+rzCXFULyyiGsGQo7Ez8xxPAoJaRZ66lGaLyO4OoGlCDQKG669zTg4rW52Nt?=
 =?us-ascii?Q?fLDA2Mj4RbtVnCCMFFBqwTsY/QBo5VKQFEsa0wfeyK3FeUbd/Cth6C90uAvu?=
 =?us-ascii?Q?d/cx/e9T6SJoMooTpNWtPxYV5PHWSMwp7cT9yFBvRSbOk3tWpHYXVgAHbkIn?=
 =?us-ascii?Q?Ws9jB+bcslPvRXjAtZnRpQgtFGOEaTybCZCpx1dl7QoxRRYXMHVCZVfXgjXL?=
 =?us-ascii?Q?WuLw7W4/UJY0Vjf1lgtfKCyheXuJZoKUGfWmxbSdDj18i6xwVS9mWefyOKYj?=
 =?us-ascii?Q?SfsEHpAtTQTyUvn3sePC3nA3LVB8j96nYK8NGZPBNPKl5Nloy4V0+I2OT7Yn?=
 =?us-ascii?Q?hQoI581Fs0oHFJWTQNa1IPStrFT2Oo9kkkfa1b81IJBhA4UDYHW1HmjskHkq?=
 =?us-ascii?Q?g6OH3S3WpMLGy3bZ/ca++60MGrereEvvsmEdZinkBk1wPM3RVx8rLNuXTrgq?=
 =?us-ascii?Q?GW87DADiDNty4hA8NuuNVOkgB1su9vhI99q47Mmfs9s1/OXrEiUu2pJq5lNH?=
 =?us-ascii?Q?uPhwn1qUUKVcu1eyZTaEF4ck8y9R4wXMUdhgHCWORfjWp7lQTGj+fnhnjQpD?=
 =?us-ascii?Q?vU1NpYF+pIv741qyVmQb+2KYacwegkZJxPlGNGu7mUSGD8k7VWhrFuwPoOPm?=
 =?us-ascii?Q?GeKVBnWem5IU4aifbcnKZEcBAB+ZHah1GAdqHgALqFmJ2OO+8GDuIXSMgFfm?=
 =?us-ascii?Q?ywxlUmsCOkRubER0GfIuzI+UaCYrR57G8lhkzCuUBuzWLqwWPcSKlRqzf2SV?=
 =?us-ascii?Q?nMgn/0tuqohem37xUBffe3zSe9FMbiFNsamNOyB9Mz/myGtWwChxxZKEeCnH?=
 =?us-ascii?Q?BWCmFBG7vboBjycVBYiUCsMs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?xfWlU7b8ClQrCzgpn0TETjV1p2qpsvBTvnDBnrOgsV7A9357DELzfMOE61Tx?=
 =?us-ascii?Q?ufGpcl6vSstQ4RTl86f4oAx8yuBx0nyROyY05pB3igzxZMCJ5HdCIeDsucR5?=
 =?us-ascii?Q?8LjAolQA7Ra1GlHmA9HFjqG/bV0vAqPgs1znxQOueSSFVzPNAS769qI9tNyq?=
 =?us-ascii?Q?vL0U/KcgkM0I1kk5A5O968354hyqDlOXQtAZ3N1nCOhiQn6n1fnfNc8XlAqp?=
 =?us-ascii?Q?W35Jbkmauo7Ytw3lBaM4oGb2taOQLgUJgbqtNTOECuSDdUl8k13X0wP5eyd9?=
 =?us-ascii?Q?DqpRmQ9qshKNHjQTkQGS+ojBDNRNbN3zVa8oLGRP8M2A+w7gfU2egXJFnegt?=
 =?us-ascii?Q?KrRCJo9j1STQrmYbHMIjfqpeyPulO4s7DedkZDGkjeY7ri6gum2U8fX6t9al?=
 =?us-ascii?Q?HKf7Ijvn9vCFzD/7BLEN6C8cRZppHGNSGtW9C70YyN2BmrHbYICXXXIMdBdC?=
 =?us-ascii?Q?G2HR2XHsKVaK/aQBfuh8r14BJPJvTKsHiD5DZTJ3F5qt2WbtevwPBORxWWey?=
 =?us-ascii?Q?1SnQs9y3+UfBenSuy06Wif4aoBMT/tilWzYS1ug17yzLApJVBL4ifwpVMN2e?=
 =?us-ascii?Q?F7VzdUqAoXt7A2K07uncRKBfbgNa+DEMTSlU9U6YpZtNQKtMjYMY8YtmCgys?=
 =?us-ascii?Q?WyyI12ypYTgSK8L/IptLdEZp7raqXPqli8LkpwYB+88EmKuQnANWafrgV4Qb?=
 =?us-ascii?Q?Kc4lIHpIn+9MpQhcpaGgD9mHfnMOOGdcMP92NLYfwEj947vfvsqAKOu1zItm?=
 =?us-ascii?Q?ulYTOD4Z7zx6hSmpjkry2pukHwSLehu+mjbV8nxTj/L7L0SlO5MyCVHHrSL5?=
 =?us-ascii?Q?RtqiyWQFIIKKwjQI/mRziX61SzdRcyjQ2fW6K6Y4Rxq2JbZ2jEOTQGJmyDG6?=
 =?us-ascii?Q?HYoANHIVDoBcRdwtt1+BQ/q/aXIiANj2LVD6ROoRGxtD4LsH+GWbGjzIsET8?=
 =?us-ascii?Q?MmNZ9rxmefVeF5GcX1P2NbkFMSSwp7A+1xr03z8M5r8TGVTUxP05iCjCJ58n?=
 =?us-ascii?Q?oOJkque0SN5JRpUZ4hhbYTv5H2iEWH1wZGrfqtkGtFTyfGGD3jGvrp62XMVt?=
 =?us-ascii?Q?ZCevqKpuP4dWxBH/ZIJtfSi7cJagk5hFFEbGIEBQttnkkJ3RHJU4yvSWNnwW?=
 =?us-ascii?Q?lAEBMiDq3f9r+wr2dixT9ebSFTfp7aUVX3BmaqqKesWgbBUWzxz5WwKA9fvr?=
 =?us-ascii?Q?ClJ7NvYGLt8LyOBy4zmZv7KSj4gxBDVwIk206mtaCECkTIWG3eojWjQPcyoL?=
 =?us-ascii?Q?greDqeHl8Y6PYjvvmvheS5g8YKA5J2f2e+WSjtYI1a6lCI8bNsaPu85FX4Ma?=
 =?us-ascii?Q?ZUo46LEeA8TutrB+sWtmfjBo52Y6RqZMWMtGZYJ4xphSVMh/kWxH+1LR+0v8?=
 =?us-ascii?Q?Ueq3vc6gFId27TK9xx0uUHy0yj6ZooKKIKeyuWc3A2I78VvuAi/dyy8wl/mW?=
 =?us-ascii?Q?eUBCKz5fyT1yvblnge6lz4YIW4/0/8J2/s8ggExfQGawMeGAnvfnO8zFOkrP?=
 =?us-ascii?Q?o1HUTVM3MNQkQpOja3TIBX4hq7ge7oljLHoM6bXz5sdLbpclVkkfhsCsJa0x?=
 =?us-ascii?Q?A7lQdXMC9C0u3YRaLA43JlWFapT85Ed0TWjnpb7F?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9731781f-c94c-42b0-16fc-08dc8636a9b5
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 14:40:51.5412 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +vE2pcZFn826uXXMqWMrmBnDlQt0Cyfq/dJS0YONF40cJcfW6x9SqgDQzmpLM5VnhnTYDDV1Wp+3ukWN3l3KEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6723
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

On Tue, Jun 04, 2024 at 06:25:22PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_HBLANK register macro.
> 

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c     | 7 ++++---
>  drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
>  4 files changed, 10 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 481e076b17e6..997418fb7310 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2713,7 +2713,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
>  		       HACTIVE(adjusted_mode->crtc_hdisplay - 1) |
>  		       HTOTAL(adjusted_mode->crtc_htotal - 1));
> -	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
>  		       HBLANK_START(adjusted_mode->crtc_hblank_start - 1) |
>  		       HBLANK_END(adjusted_mode->crtc_hblank_end - 1));
>  	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
> @@ -2816,7 +2816,8 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  	adjusted_mode->crtc_htotal = REG_FIELD_GET(HTOTAL_MASK, tmp) + 1;
>  
>  	if (!transcoder_is_dsi(cpu_transcoder)) {
> -		tmp = intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder));
> +		tmp = intel_de_read(dev_priv,
> +				    TRANS_HBLANK(dev_priv, cpu_transcoder));
>  		adjusted_mode->crtc_hblank_start = REG_FIELD_GET(HBLANK_START_MASK, tmp) + 1;
>  		adjusted_mode->crtc_hblank_end = REG_FIELD_GET(HBLANK_END_MASK, tmp) + 1;
>  	}
> @@ -8191,7 +8192,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  
>  	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
>  		       HACTIVE(640 - 1) | HTOTAL(800 - 1));
> -	intel_de_write(dev_priv, TRANS_HBLANK(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder),
>  		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
>  	intel_de_write(dev_priv, TRANS_HSYNC(cpu_transcoder),
>  		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 2bf00d5336e3..625b1fedd54c 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -226,7 +226,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
>  	intel_de_write(dev_priv, PCH_TRANS_HTOTAL(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_HBLANK(pch_transcoder),
> -		       intel_de_read(dev_priv, TRANS_HBLANK(cpu_transcoder)));
> +		       intel_de_read(dev_priv, TRANS_HBLANK(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_HSYNC(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_HSYNC(cpu_transcoder)));
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 8398826e9c2d..66e652119a7e 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1218,7 +1218,7 @@
>  #define _TRANS_VSYNCSHIFT_DSI1	0x6b828
>  
>  #define TRANS_HTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HTOTAL_A)
> -#define TRANS_HBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
> +#define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
>  #define TRANS_HSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
>  #define TRANS_VTOTAL(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
>  #define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 2bc90909d980..47681fa69020 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -232,7 +232,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(SPRSURFLIVE(PIPE_C));
>  	MMIO_D(REG_50080(PIPE_C, PLANE_SPRITE0));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_A));
> -	MMIO_D(TRANS_HBLANK(TRANSCODER_A));
> +	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_HSYNC(TRANSCODER_A));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_A));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
> @@ -241,7 +241,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
>  	MMIO_D(PIPESRC(TRANSCODER_A));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
> -	MMIO_D(TRANS_HBLANK(TRANSCODER_B));
> +	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HSYNC(TRANSCODER_B));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_B));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
> @@ -250,7 +250,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
>  	MMIO_D(PIPESRC(TRANSCODER_B));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
> -	MMIO_D(TRANS_HBLANK(TRANSCODER_C));
> +	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HSYNC(TRANSCODER_C));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_C));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
> @@ -259,7 +259,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
>  	MMIO_D(PIPESRC(TRANSCODER_C));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(TRANS_HBLANK(TRANSCODER_EDP));
> +	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HSYNC(TRANSCODER_EDP));
>  	MMIO_D(TRANS_VTOTAL(TRANSCODER_EDP));
>  	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
