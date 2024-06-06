Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 597958FF0D4
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFFDD10E16E;
	Thu,  6 Jun 2024 15:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X+sroiyW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A6A10E16E
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688287; x=1749224287;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CdmLuog+vCsfI4LqzO39TzSxvO8e75Y0qRE5HvAjNuc=;
 b=X+sroiyW8qkllg4hdQPHZMhtZtL9nrRP1ESNrT/birE1w+nAdRH7w3Hv
 3vN2pV+stotRsdVjjvdbZVEATSfEq4c5l3XC9P4CunrAfAJ7+4ngD+MPX
 JsXdcmdyPWYE0cjFQwvuPjz0n5UMk0TqW59CK3fh07I3y1MBrbKoquOK+
 nVO0+6Zd4Ad1d407IpoKgIhYliwDAiN0Pi8IJXqQGNSBGftw3gXnhw4JJ
 P/84gvnvqZredycIsrSIpo700sXxe2T2WuhrYhUqhYLHI39AYiC5e2/Xi
 T602A1dwap4c5xpIe0AfgG6I5BvA3O7/kNIxTLpuHv+q2x87waoZ+DKof Q==;
X-CSE-ConnectionGUID: ka0Vj3b9SjG9Rz/eDTI/DQ==
X-CSE-MsgGUID: 8Wb94OV9TG+p4PfQ13Gb8g==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="25474839"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="25474839"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:38:07 -0700
X-CSE-ConnectionGUID: MQcUfFkpRfqS1Fbn1V8adw==
X-CSE-MsgGUID: unBcsPfFSL+MxNZPF3GfkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38458542"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:38:07 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:38:05 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:38:05 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:38:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MIxs3Ud7vePfCVThTFXbf0h69pfN26ZeBlvJeflZpqdtPn7dAnATgKInfIMvd4YCprkH9TmoTRfkTJsZ4GoMNL8oFE2GymH3cjSkmqTEswCwOU8vkXkcHibb28xT2FeFxw5wl5PWNvDyNRWqZPjAxpi6ZpQ5T/nvCGi/f+3npA+xqNrtt7YNlFkXdtC+r+RFg3mYu3fnX8jcJcQKMycogNMd6LliE2Jg164ks3x6oPt+/tjC1rCLqLC3zAINKpg8bvZKy70v9Jf15RWwhSVxLJH0n/SYE5kAsjakUuIDxBen8CuAeuBYm4bP+XMZ0bJ577B7TXbHIhWdZ9fwaPtNqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wpCQ7DbglMZGvfXTALfu+kXOJMhO1TbxEO0cLy4yzpw=;
 b=hdz7TFmmZ9rtAyhVV1Bz9rDcxVKaaJORmmibSiD+dkmDAZXB/L83IAlC46+2hzhP3qKCeRNW5qAcUsZ1V6GBVrwq+2v1BqVINbd5Dzda6onBp0Uk6Kvpozxv/nRKiElVeiwN6PoiNQvVbDSwQ1QiXSW3m2skXrvhWkhQ2qxNmcWqyNCxDt59VM8bnhnkwSSMc4oZ/Dtr5NHk6kPHWlcOouiwC3uf+fa3fGD7AizaMwDPNr/EMFL5b2rfpvWT5RGBgRHC3nHe0hlAkqzRNh10C9BPJ2ngnTIs7k1spaqqQt7xmAUA8x9hkf06wspWOdAQ9VeHcevkLz0ykQ0g27KR9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 15:38:03 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:38:03 +0000
Date: Thu, 6 Jun 2024 11:38:01 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/65] drm/i915: pass dev_priv explicitly to
 TRANS_VSYNCSHIFT
Message-ID: <ZmHX2RpS3SKc8gTf@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <8103a31fbf6da725e6aed3bb86c15bbd581164fb.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <8103a31fbf6da725e6aed3bb86c15bbd581164fb.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0265.namprd03.prod.outlook.com
 (2603:10b6:a03:3a0::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: 0bedd584-8ef6-4822-b2e7-08dc863ea74a
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?mh02rPtD3n/Bsg9YIk4t3zt6dhWR6bsEIxGldoJKIuhOwLoi37kSK1PTi1Ly?=
 =?us-ascii?Q?MjFd2/WAt6XCiUl6n/a0bP6aS3VbrmICMkubFB7VOeTqrGhLQapQ04ga8NQb?=
 =?us-ascii?Q?vH4xmvPMJZFaWQZtTTDNe+Xr9zFulIoGyFYx8cQNYctN6Qc2z9Z1utUtCIHd?=
 =?us-ascii?Q?0bkWkNvx6dzv7gK9hnpbs3gxv9b520imyeAsbrQWm+e2gjmyioNU4ExSZmrh?=
 =?us-ascii?Q?Ax4KS7Ezyc4/afn5LBNp6Q9znm6JSPd7Eo/hHfuWccJ8lnhMvXHci1/9Sad4?=
 =?us-ascii?Q?hV+fE2w41pNmEbzjihIxF+TqUETND7L5cnfGJdfh9WCfnNjqq24gNQDl/knt?=
 =?us-ascii?Q?4es5YBvFFYyGBxO1a0gGxQgABkiNfb3Eh3ZIKb3fgqtemRLHL1g6k/dSbsCs?=
 =?us-ascii?Q?/yAA3CFwVUORy2svOh/+FFXCHE+/vbbIWDL9+68smumT+N6tglTc84tkVLer?=
 =?us-ascii?Q?/DfwPSW3CYN0A1xhWAai3ajTeFYr9wi1xXY7LA7Hx9sfGq5n/DxyEa+5C9ix?=
 =?us-ascii?Q?Imwjt/tKEZgu1v/2ZEGONvJuW/a5TAAvIXP+E94tFKEkWmADUKM0uS1oV5MS?=
 =?us-ascii?Q?1E4hS1xU59Py5frOycrEkVY7pRKcmxyf7WNtt2k7rgaUeujadioU21j1MbFP?=
 =?us-ascii?Q?StFaeTSlBX9bIYHvVQzadAiBgm2uTkT4QJY5eZPyhnPvgxIh4Rympi+57/CJ?=
 =?us-ascii?Q?2cdKQRwA1Z1txwPOVhtPIPk6cexz25/xxw0W4aFXjl/xOi9H0jkYZcwavaEe?=
 =?us-ascii?Q?xmDPYg5enx3qGaCF67cFW85OlFQWY6CNC7LNwxlA7XozrNSXDF6XIOs6xyTw?=
 =?us-ascii?Q?Nx/Gyub8EOdfrX+oisAH7JVINeymX7m2MIxygtsabyaD5ycHWXghxU5+Pgi9?=
 =?us-ascii?Q?CKhBqcBGj14H3ewpRuBHglaIGUhFHVp2Iu2+gGuInBqGqO82ymOjevtHqgO0?=
 =?us-ascii?Q?NlQdMiE9Jfn8uSXvOd9CE7Au70nI30uV12VhZeyMTzD8g/Ur6pK7LTgK8EHS?=
 =?us-ascii?Q?QLW2VtEyUkKPNrN2foyWsWfZD0kEoFsi8GM1PcuczH9VOOhit6so8JUfEPJb?=
 =?us-ascii?Q?SiVLOM45QxUk4v3oVWRVeFkDpjkB63v7ZmM4unsV8XeiMCMry+sBEak9gXiW?=
 =?us-ascii?Q?U1DceNxTFbIcvtvgEdkmEM0TGGqSZTF9RrzwP02vUCKAsLxy9Npl6o6nsEB/?=
 =?us-ascii?Q?nQRZBdWN64shXo6uAG1WXQYlOktL9eCSM8J33ZEAYZHZXV1tef34GoyRZ0ok?=
 =?us-ascii?Q?cubmtScEKHZm4Ui69rLzTAxTy+iSWpGBzj2cUD0c1Md32Dl9vjxAzFGbNtGq?=
 =?us-ascii?Q?w1IFkmV7fMHSrjYUIasFhxlM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?o+B8KD/trN+cxPEmG7YdkwKEuwX2rgD0UfdmAYvbT5fvFF+lR6gPT1JZXNIX?=
 =?us-ascii?Q?Ue16afAm8QuARdUZUerqI1vGVsebg6OvCosPVWmb+7YgQBiTHsaqLt0CRsBc?=
 =?us-ascii?Q?8fTTRaG+jjusf9e5LG/g7H/5LgPDJkOjJfcmcrNkiji2ws5pLVxA1ez2WgAe?=
 =?us-ascii?Q?Ja3ABg2DnazeMYSzTvpO4w919tnH7TPAVf1JZb3ude2R06PDmdWB6MYJ1rm0?=
 =?us-ascii?Q?mMkBaQqgq5IBAaaba/zBQ5u2wmSzyNjZqb3iPJTSTkFyi4gUXzboN2bbtCUs?=
 =?us-ascii?Q?y8HdDbbddJ61xP+SfmZ7msT0dtMpak2dSFSsEEnbsm2Vk446W4BjTh+AYTWm?=
 =?us-ascii?Q?B3TdmyqJU2rWhqBSciCFn1ns7V4qHRGLRKiTBWfWVbK5DQmzQ3lG+r/E3ZLK?=
 =?us-ascii?Q?SpyK9tW5o1wJRRTiDxD9Q4DqGweoTaPpw5Oji/uepJEO53FdNMy1J2/AmLkC?=
 =?us-ascii?Q?7aK+KlvIeAMb7OS35FPJs76KU2noiCOVlMOrjjcw3JjXdoz94JisfrUpF1Gr?=
 =?us-ascii?Q?dIUNAkBya93cj0iiSNmQ5s5XSu9jJ3T5nmgRUNu7+TmjmFEEy37OjQ3k7pRn?=
 =?us-ascii?Q?L7N2pNOTWPQG1wwE7ozuDF1tgMdD/LkjIB2UHfCX6LVkah24ONrUSN9z3qEr?=
 =?us-ascii?Q?/Ef2aEthYf4c+CDMbYwIDPDa/MEpNumTDLL3ZRhAiovZP4+ZO+dD3jhdDu03?=
 =?us-ascii?Q?5o2vtUK5ZgZLXrcKq9EcNPZLlJevD0hsqFT8bLZXaBjopZp4AiZ9nplj9clg?=
 =?us-ascii?Q?9g4DsB0EZzqFRVyjl1R1OSNC7kRnhVlwQSyIng5GyulDhMsyDWmd2ggUsTFU?=
 =?us-ascii?Q?Z3wTHiu+QJ39ZGXGkws5VMteXsPLjWL0zIH2bnpvzOkMugp6kWloJTnopwcv?=
 =?us-ascii?Q?HFjZ6W+lOp3UlZNJsRKF8h0slsVaTZ4pQkKR4gAcBQ/wIMbQiwVjhrV0CR8U?=
 =?us-ascii?Q?KZFmhC2Sf8/NyDCt3x89+GBehJkwcxGVRUi96T6/uII4qPbVrpLKBZepGOA1?=
 =?us-ascii?Q?bFjdXJrPjwIlU/+I67Yu43rmQjaa0zP1X0qEG7Ep2xrIWwVscpUIY71g0T7x?=
 =?us-ascii?Q?unbaoeR5oSDxAEmJToLUXgCL28rjhL2el9T9YbnCDXweo5tE8JewzUDJ52Kk?=
 =?us-ascii?Q?znx6+DMJokFbrD+q3Iue9t4C4A1VfSY34j6tDHkay4h3hfq6QSZm8Z7Ub6Dw?=
 =?us-ascii?Q?U39edbneWGbredAlAgsnefMAOBsyy6m6oLGZIjv+9JbAyEw8UiNzTxwnfgrN?=
 =?us-ascii?Q?1ma4t0FAyYk2GOY4wteLhXHNAMLRW8K/ysSzp4m7gjoLrdk01H3CcPfZstYp?=
 =?us-ascii?Q?s5DRF5FXisS5BhhYPYhph7Rjbh72p+pWecVxAGnSZQkcViowr6TiWk4qaTt4?=
 =?us-ascii?Q?5evjjBxXWEcST32fPEcHf4sA6pwegpApoI5R7aXy3/qP3rf0Q0LfUrtwuFfk?=
 =?us-ascii?Q?n6Yutt8QvRgZ7hd4CMNo3LGpDuqqkt/pwWdu5Ud2zQUEOIxzb1IJ2pNchlfQ?=
 =?us-ascii?Q?3Sc537fseqJ6DhzZwR0+EOFAwOByGbDt5dIex4tFFclo4AOBQb+YM0zsnCfG?=
 =?us-ascii?Q?X010VWmS1hOHkfuDN5tY7Jrvc1BVBMyNtg6HcJs3?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bedd584-8ef6-4822-b2e7-08dc863ea74a
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:38:03.5074 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RXK8hYbLn15CpQ8U2/O2b6SG8A2ZrXJDdIxsc55uUb0ucJUz97zHhm6ok0ETYT4SvtHg3XHDV1EV1JtfiCUPdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7459
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

On Tue, Jun 04, 2024 at 06:25:28PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VSYNCSHIFT register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c           | 3 ++-
>  drivers/gpu/drm/i915/display/intel_display.c     | 3 ++-
>  drivers/gpu/drm/i915/display/intel_pch_display.c | 2 +-
>  drivers/gpu/drm/i915/i915_reg.h                  | 2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c      | 8 ++++----
>  5 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index b267099fde8a..0625c4d5ee0b 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -982,7 +982,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  	if (is_vid_mode(intel_dsi)) {
>  		for_each_dsi_port(port, intel_dsi->ports) {
>  			dsi_trans = dsi_port_to_transcoder(port);
> -			intel_de_write(dev_priv, TRANS_VSYNCSHIFT(dsi_trans),
> +			intel_de_write(dev_priv,
> +				       TRANS_VSYNCSHIFT(dev_priv, dsi_trans),
>  				       vsync_shift);
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 49f7ac0f7997..993eb0935f6b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2707,7 +2707,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	}
>  
>  	if (DISPLAY_VER(dev_priv) >= 4)
> -		intel_de_write(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder),
> +		intel_de_write(dev_priv,
> +			       TRANS_VSYNCSHIFT(dev_priv, cpu_transcoder),
>  			       vsyncshift);
>  
>  	intel_de_write(dev_priv, TRANS_HTOTAL(dev_priv, cpu_transcoder),
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 9f8269705171..6a45bc1651c3 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -237,7 +237,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
>  	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_VSYNC(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
> -		       intel_de_read(dev_priv, TRANS_VSYNCSHIFT(cpu_transcoder)));
> +		       intel_de_read(dev_priv, TRANS_VSYNCSHIFT(dev_priv, cpu_transcoder)));
>  }
>  
>  static void ilk_enable_pch_transcoder(const struct intel_crtc_state *crtc_state)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 92d9e8cdf782..d961f3f70aaa 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1224,7 +1224,7 @@
>  #define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
>  #define TRANS_VSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
>  #define BCLRPAT(dev_priv, trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
> -#define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
> +#define TRANS_VSYNCSHIFT(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
>  #define PIPESRC(pipe)		_MMIO_TRANS2(dev_priv, (pipe), _PIPEASRC)
>  #define TRANS_MULT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_MULT_A)
>  
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 5e1ef52922cc..5abae7df0bfe 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -238,7 +238,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_A));
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_A));
> -	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
> +	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_A));
>  	MMIO_D(PIPESRC(TRANSCODER_A));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
> @@ -247,7 +247,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_B));
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_B));
> -	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
> +	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_B));
>  	MMIO_D(PIPESRC(TRANSCODER_B));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
> @@ -256,7 +256,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_C));
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_C));
> -	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
> +	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_C));
>  	MMIO_D(PIPESRC(TRANSCODER_C));
>  	MMIO_D(TRANS_HTOTAL(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
> @@ -265,7 +265,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNC(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(BCLRPAT(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
> +	MMIO_D(TRANS_VSYNCSHIFT(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(PIPE_DATA_M1(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_N1(TRANSCODER_A));
>  	MMIO_D(PIPE_DATA_M2(TRANSCODER_A));
> -- 
> 2.39.2
> 
