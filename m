Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 01D0F8FF0E9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:41:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51EFA10E9CC;
	Thu,  6 Jun 2024 15:41:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KFlrr1tk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9EB10E9C5
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688471; x=1749224471;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Tc+KJYn8ObpbELvLv2A6hsDyucSmDmn8B5sB9xCw8oQ=;
 b=KFlrr1tkYSFmnPJmGgDxThIZny3QRTPh1uAarEAIeJRmwFb6MeD2v72x
 jMrqOdalTzvkDz+sO1e6IXHO/tEsgz76MiaAb0dXAUIALXQoAE8fQbluI
 vMwOfKKztLz2wBZX5zW5xgfgagPsncS7vMUYRG3PrmcnfL9veDNuzgHOR
 +3JuyltflxCc2I9QaobCCkL6tnhKA1nDOgH9QEJ+6S2pC7ev/vm9+tEmC
 syR9cRRcLKBt6yCl9kl8ZxIHYVK0N26KVGvi044mXVTDw8ZWpipSImhPX
 SFL0cJz5i4Fq0bCs/bQOzBYwug4vkiAfaMEhClJdxrvhLCkwq2NvgZpHZ A==;
X-CSE-ConnectionGUID: CPQR+elxTcuvAhTU+V3w7w==
X-CSE-MsgGUID: dIqRwc4CRcaFMyqec+irig==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="14250529"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="14250529"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:40:56 -0700
X-CSE-ConnectionGUID: 1m83c9oLT/KTJWXdpHyAnQ==
X-CSE-MsgGUID: +OOql8CoTJ+/xswjh2SqfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="38077181"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:40:56 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:40:55 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:40:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:40:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T5p/e/RR/FdVfiSuKHMlB5VSl61UVfW/M9OagcnL+j+bPd8/8T80+mHOsRP8drM0oA5xx1kaNnVbG9xP312z0tpGHjfv75JiAcPQS0m9Iy/7YmcrYRrOfhf7VfkjcaGXEV4zi1i6X5KxpeMJYL7BIUia/5QBq3O0+7ld+KPT4chXhp5muqVpoa/UZlczQxolvSUEZHqgI0osuP2TbCIzDu9c1eHdXAWMDBPwg0A5NusZLDa8FxQqG3rSh2RCAwU3tT+kc1trU1of/v6YfJ4UUt+rViJ37bG8p2W6zBoGS53FEQal0JCCipgQTzMKYORydOPeemePwzaxWxbbyai28Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MONIIQZW7i9pa1MdT3NRLt2KoKgmPE1300s7IA2bLhM=;
 b=XZJz5h5+CPeFtQ+UkgO7NmaTNpOcC7nj16y82/HmdB1YsBhHDoccPOaaiZlVuvHahHs5qKY6S0Vivfbc+9fae6m05NNW4z7mImW4Nwc1rmocaFtv7GQvBpDaql7hsDEnn+UCTa50FyO13CQb3lVD+0wyc2Z4tRX6PbQQww9k96kRux4uxJSMtR70yRTov0E8/39lDpAoAJuhAKt8A8R6X3UdUxMZfhBZDKd6ql/Qm7/yfI7LeopMrZ/RUpA92CNOP8mwcdsyt+NIT9LwYH3soKuxGHZmO+g+a9YH0CoqRyf7b+K+8ktHZxXJGLW8///taJwTn0i9aXRSH9sDOjS4HQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB8404.namprd11.prod.outlook.com (2603:10b6:a03:53f::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 15:40:54 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:40:54 +0000
Date: Thu, 6 Jun 2024 11:40:51 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 17/65] drm/i915: pass dev_priv explicitly to
 PFIT_AUTO_RATIOS
Message-ID: <ZmHYgyYrCvYpo3Oj@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <148e8c66d37b5eb3077eef44018591d8b6a57937.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <148e8c66d37b5eb3077eef44018591d8b6a57937.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0354.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::29) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB8404:EE_
X-MS-Office365-Filtering-Correlation-Id: 061bdc7f-013b-4cee-c0a6-08dc863f0cf3
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|1800799015|366007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?DVy9nAS3JpR4ECi6rlPYuAXL7TLppHWsiKSp1/5XK638hiHoCRzzQ+ZN53r1?=
 =?us-ascii?Q?nN6j7lIyujJD0NH0FmusTVr4obhi/beFU+AAcMRf4G/FRsnYPgwNG7j35fA0?=
 =?us-ascii?Q?BCgBmuo7akj52Z+CAWTrroBGxiEQ6oJS01JcW7mPnBYmh4icrz1RJLaYsJUP?=
 =?us-ascii?Q?LpdWbiAQSaxJnxEo6fo9h/o+66uUACBBTu2xAgfybmdwCAm/u+GZyY3wH3Pv?=
 =?us-ascii?Q?exOfxQxZV8jItC7um9rOqiGHXo2NL09oluCNsWz4Vd20nQWiBEOodZ1FpPc5?=
 =?us-ascii?Q?fIxvMCKcGHhCmaifUCezp9p4dtodTu1RSygVlmwijMp+lvHxlEo0SvZHIvbI?=
 =?us-ascii?Q?DPUnkIJYslqxqvM3bt58XksImbT1qBXIsf3AN+6putwcAtBTjkGleUUzV0BE?=
 =?us-ascii?Q?4MWyndQIj50jQ6t4WXLYV5HwH5Lfbh8SalUUGrTjR8RiRenlDLodYb5eyFB0?=
 =?us-ascii?Q?XUsQW8QUpfyrSS/43krhsqyGSLaZDJVteVSvFI/VMtZvKoLjLYeLS//jKDAP?=
 =?us-ascii?Q?D59hVaX+SICpCjs/NiqlBUycdZE7R6OJb2t5ALqK4Lwv3GQ3ErR5oe1M28l0?=
 =?us-ascii?Q?LG2whyhqV96jF9lRwnNU53OGg27AQ/Z+Grp9Fo9JND80oHyY/hsTHRmo4o/u?=
 =?us-ascii?Q?OxLeebAZR8xL7pCgF4DckMhniWc6vhSP/LCifzlhwOtr0als0iU4Sia8K1Un?=
 =?us-ascii?Q?4PQG2J3/jobfa4F82tOHC/V2KbJrVbVRDbpZwsxwQOkOyrGKpyYHVYIEJh7X?=
 =?us-ascii?Q?y+gFrpKRqN5yT3ipYWSlJ4a9uOgt/RU0FTb73aQTMH3ajgHirj1iLAs5tnJ5?=
 =?us-ascii?Q?IZOpeLHrWW1MY2kvCBNBlCB8orwJdFcsROQx22ChQC/e4MuxWZKEN/gjFt9p?=
 =?us-ascii?Q?y/90IlNOcVbeueVEfkTYd2xl33JGq8F1Ladu6p4tvtzFGg35rYnyevsfEeXN?=
 =?us-ascii?Q?VCv1rasXyYTvOEBnxagYqDEWL9Y6IzPxnEgH7f+PwY6VEtsBdIbRgdTa59aK?=
 =?us-ascii?Q?BNCML78g9NzGTuLRXU94IgJ+dDQ4QO52JTN9ovRh7q0mlO1szL2uEOfajooB?=
 =?us-ascii?Q?ZhXTrAAHA6svCF/H0JeNfaiUbIvUB6MHxUMD8tZBR8dkUfTT3sHNAIDfklTr?=
 =?us-ascii?Q?VCcBvc+8F+7uEmdxI+oZnlqES6tMkd+ljjGW6Wuo43Pkvt1vlwnzyDEj/o2L?=
 =?us-ascii?Q?3eW5FLjWNNmBRPGq47MNH0RE3wjytOD2J89aD4FghGqxtTmaLs0yhAd8UQPw?=
 =?us-ascii?Q?u7yEVI+GAXWJ3rgLslJn49x+XRMHJ0UUtzvDsDcetdVzWSXub/B8W3ziouI+?=
 =?us-ascii?Q?4t6r2i4fVa9jw++zD2VXg7W7?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Mw4cByE6Evy+Xb1KXCufwQXJMjFd5VtCygfCTmpWqnjcBBGDPRUvoUr6DXzT?=
 =?us-ascii?Q?UerzVuVIxmjlDYZJVOPkcltnJDTfmogsJuMm3mbzRzjGqgscWI5dPD9ahTQN?=
 =?us-ascii?Q?PTgfmA+tZY5QXljKpEcvbifm6BuWmHw8YoiA5CYZP46jf3bj+WqVb2dC6CQ8?=
 =?us-ascii?Q?oIxYJMPJDwClv3a7ZJkv997Ie0AWSIDsbX9bIm6YMJFkaW15hBfDwc2Cx4mC?=
 =?us-ascii?Q?b9lyQRxxk8G9wKNCWsmS0HWEARIJ1Efh44eakNrHIxDcrco/1/AMwt7cBPCb?=
 =?us-ascii?Q?VwS5Xr03Y5YXunUXMpuh55PFL7vgMxnXCsD5KgM1rhIPRtP2acp/GGMDHAGU?=
 =?us-ascii?Q?aZzChI567lXDbTfEnPdMY7Gup2l29BRZC42yv+/eP1pKukxIMNmePD5+Gvrk?=
 =?us-ascii?Q?ourePmiyvLPi8cNG1WikWkapSoBsQx16iWc88OSH3MY15XMfzoHQJGN93Vm3?=
 =?us-ascii?Q?FkrpKsP/fwrlpAlxf80C7p8qJBvivJ+L4txAAkzCUSLh/Y9jjuzuX4GM4lQu?=
 =?us-ascii?Q?FBEMaopgFkHtUiQfV9Cmpn42csUmgZ/4Ip88g3OHpQQpfwxgtbmIvtr10XgB?=
 =?us-ascii?Q?5Zx4I1sq+kcKwGwzlV4F+j/VDhTHGZd3M2RJpAxjxWhhxZxoduJnFScoKk84?=
 =?us-ascii?Q?o/HywaEF4voMl+w4KjxtXQAB1YUOPFHBcmlnddtnyxazjlbfJDGHINSimLm6?=
 =?us-ascii?Q?C27nvW2xKy21ApEpnXB7KqrbviiVvOXXaJwqvd09anZWePciMi9zXZ2gVhUF?=
 =?us-ascii?Q?c+5JBF0lCVAjcKsub0uwVfnk21BNxOnVzhu7l9hggIiRqkVLmEyEbldLxR99?=
 =?us-ascii?Q?l5EhjvMc/CYsXFJ9x1TehkgVEkZmBmlRmxh9Fz1sCnjYqs4JwswD9ZwzXwCX?=
 =?us-ascii?Q?FKrisLHKXtoG0znPIyhzjwuc+x1Z5atMfiSDwWYaAsc8o4ASNpsA7AHveQlK?=
 =?us-ascii?Q?/05Xxvwv7R8FdhJM2If4oskODH2+qi0hD/rkJfjvvfxaZY9heJ+aqLIvaxa2?=
 =?us-ascii?Q?wtBpMEflzbom3U68tu9SyL1v0yc9jN6b0TEnhkf6s8leoXt7qehtRSsG5wbU?=
 =?us-ascii?Q?YraVp1CQ/iqvMOa7yUc8Uq5fjEGrl8lq9gotncMif4I+DzACHq+n1pQwCttp?=
 =?us-ascii?Q?pQG3+98ndzTWMrTZ/lya4AO/47N0WVIJTHbSnyNWd/3uQHPL1bMu6+fs/uS7?=
 =?us-ascii?Q?EsHytnPIuMwlRJjpGdU6x1+bpjvvFJKDFmHuvs6P1iV5AwKdheh1tNYIRHf6?=
 =?us-ascii?Q?5nyHrUmhFYRn2NTAnkBKXUCGHzNTJ4sCxzPatEzCCojfC7+ESH1a/oRBqmzC?=
 =?us-ascii?Q?hF6XbHMYjNjtc/QUZpKoJ9Ka0seR2DZSI8nvZfhsKJm2AwpLqZGBY4POiXmI?=
 =?us-ascii?Q?/bPbq2xnpkHvVpCy1yfFLVF4u6oviLe7880ny6NeWqvpWImGXNdmMqZ45BtW?=
 =?us-ascii?Q?STQSS9T1UMdCDwAQDP1pTYRUuEC6yLFm06I5BCVDqt9niYAfgn+FMJ78/pRe?=
 =?us-ascii?Q?/fyLv/cvbyy2N6DZ6EiHmPPtd5gi11go7EcTiY9lS3ktIMHUxjDlwjOFemCX?=
 =?us-ascii?Q?0nW9Ga2SRsnBxCU8Vg2nlsekkGRfAI1j7l/uvQrt?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 061bdc7f-013b-4cee-c0a6-08dc863f0cf3
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:40:53.9831 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TbE+ty3UP7ylIeqa/RyPdGihG2+1MXDdVonM3eswHLf6JRcD1UL5xWNNPj2Od9+YACKSXIDl93ngqZAcWOWuCw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8404
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

On Tue, Jun 04, 2024 at 06:25:35PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the PFIT_AUTO_RATIOS register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_overlay.c | 3 ++-
>  drivers/gpu/drm/i915/i915_reg.h              | 2 +-
>  2 files changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_overlay.c b/drivers/gpu/drm/i915/display/intel_overlay.c
> index 117120ce5a1d..d3d0e22cdd34 100644
> --- a/drivers/gpu/drm/i915/display/intel_overlay.c
> +++ b/drivers/gpu/drm/i915/display/intel_overlay.c
> @@ -951,7 +951,8 @@ static void update_pfit_vscale_ratio(struct intel_overlay *overlay)
>  		u32 tmp;
>  
>  		if (intel_de_read(dev_priv, PFIT_CONTROL(dev_priv)) & PFIT_VERT_AUTO_SCALE)
> -			tmp = intel_de_read(dev_priv, PFIT_AUTO_RATIOS);
> +			tmp = intel_de_read(dev_priv,
> +					    PFIT_AUTO_RATIOS(dev_priv));
>  		else
>  			tmp = intel_de_read(dev_priv,
>  					    PFIT_PGM_RATIOS(dev_priv));
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 094e693c40bf..cd6eda1b6bef 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1617,7 +1617,7 @@
>  #define   PFIT_VERT_SCALE_MASK_965	REG_GENMASK(28, 16) /* 965+ */
>  #define   PFIT_HORIZ_SCALE_MASK_965	REG_GENMASK(12, 0) /* 965+ */
>  
> -#define PFIT_AUTO_RATIOS _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
> +#define PFIT_AUTO_RATIOS(dev_priv) _MMIO(DISPLAY_MMIO_BASE(dev_priv) + 0x61238)
>  
>  #define PCH_GTC_CTL		_MMIO(0xe7000)
>  #define   PCH_GTC_ENABLE	(1 << 31)
> -- 
> 2.39.2
> 
