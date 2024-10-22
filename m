Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D57E39AB57A
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71BD710E6FA;
	Tue, 22 Oct 2024 17:52:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mh5/nqw/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 897B510E6F7;
 Tue, 22 Oct 2024 17:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729619547; x=1761155547;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oXifCLYvBZvGk9vD/5tbNmnfH42xw02xlyPI6VvsDic=;
 b=Mh5/nqw/XWWGbzbVrV2CKo5s/aJGbM7TrdMw2XriYFbJIn/Wtn128X/X
 Rll3KEmsPGfimQLjLZ/+p7kJkdsmOo4Co5NONDDFi6f0qN4dqK28pe7bC
 zKH1TfIG8077SuB1gCl11Fuha2jV55zrKb9RUf7ms5zYP2RA3j5X90u9E
 2RBR5NozFQ3SYTnBPgJFLiJdoAlzMk5L1+X3nbBZ44NccyUfCG7Kxq6E6
 8z0BORIkxjOU97SNuq5gYHPkK2DRkxD+6fQMVkg3654gYye2did7tXdq9
 6o7RFX4g5+/MDR31jR0ghbsoO+7MfyS96QyekbCLAl5MGHJJsF/oO+xmc g==;
X-CSE-ConnectionGUID: CJbs4PlvS4iw8rrcFh56vQ==
X-CSE-MsgGUID: fqY00lIWTo24PaxzmR8uWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29283101"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29283101"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:52:27 -0700
X-CSE-ConnectionGUID: PD/ZuPITSK2VFZ+ZyeNu+A==
X-CSE-MsgGUID: inawX0JySLyNFQxoq5nhgQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79517811"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:52:26 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:52:25 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:52:25 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.170)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:52:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U3I2t7udr/J+mPNBi31DJtb60oKtt/U/jL48KXu+XDzR0TtZbd/ocDkSGIwuyM/A6uXDIwAxOlAEIS7uQfaKUao1tYiVrPuaJ2yANcq8RjovNkuMaD7yeEgYXFRFdx4wlw2Pa2vbOY6/i1pDuJGjqm4qPKZoVEFajWeqvxM4bmp1soOUoYZpHm1NDWqNWAMUL73NXX6xEmYEOGouG4Feroq6VjxUdCsu4jfhLgeLXVdBZjEPNwxdartP/BcytX4iEuVndm+VR1VnuqCE5WWYGOPpib9/KkeK/3JW7454CfdFXEgmfhZpO4UCDia9co+/6l+m1gYHWLyobClvaTFdQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QgNii60z/ve2jywapGkN9/FJgi2oyRGMkbCboO5ZsoI=;
 b=C65cz42JYREh+DYPBmuFFB/HxYDUPSyBDJ3zRLZ5Ze1NOgxc0HC/0RHaqcZCRzNwiAxffqOd1f7f0Wg3jQeXOzWig2OMHLt+W7S9+weIxzog895OTetot78oCLjLvhDpQ8WMlLFzAmXU15SFPzLsHNPLelNCcqpGVkTE1VpMBHWxi0huPxiT5Xo6iA8aekIyEiNZIXUFdNTFoFEgIXMCr3yxmqRNtuWsTsuJ3lOPGV0/LhHI/2LbrWNRy5CQRIToazMM6RoojMOl2oq5130pFDXhDbUZUSqkKVzlacPHhaMMxZYvshk9NA/Tvnw5TitU/01RwZohSoxwss85yxttbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7682.namprd11.prod.outlook.com (2603:10b6:8:dc::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 17:52:23 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:52:23 +0000
Date: Tue, 22 Oct 2024 13:52:19 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 06/15] drm/i915/display: add display platforms
 structure with platform members
Message-ID: <ZxfmU4w8a43okNnj@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <f402b9fc7067e277b4b85f6109f72b361eeccbc2.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <f402b9fc7067e277b4b85f6109f72b361eeccbc2.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0208.namprd04.prod.outlook.com
 (2603:10b6:303:86::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7682:EE_
X-MS-Office365-Filtering-Correlation-Id: 0309cb0f-6978-49c8-02de-08dcf2c2483f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?GgprgyObNX52jioclqNy1VcuoRt6VJC0sADG0YLVUXmuZYRO1nhN58aIZ3HH?=
 =?us-ascii?Q?OYr55JAeM++an7syiEFDqzXJUxDOCwEL6cfnBdmFfriT+o722BkMgsxrTENB?=
 =?us-ascii?Q?GTL40oeRyRaaEltrFiRD9YACzuuh6LTjoDOIyA21NBN2IEfVfFIYTyqwL6yq?=
 =?us-ascii?Q?/u0HAFAUg0bhGZb0wIxXC6HQsIEorWohr6jAJcYFCtv1UHDVEQLOX3Nt9D6n?=
 =?us-ascii?Q?OkLMB4zTLnoTeBGtZLS4DtReixn1+oIRpufJ+j+DwPi6UKtM8NroRXoJjy0o?=
 =?us-ascii?Q?ZGjt6lnD088I5sFsFd9hpWe58hPYS7tTxADVEZCtqWcX+uKQSCHVfz8As60Y?=
 =?us-ascii?Q?FGLTQegKl9pabR2LzOdzrsZKvzdqMF7miF8bg2+IIW2I9VqqCkOXQOqC32M5?=
 =?us-ascii?Q?+A3EjuCwzen95YsZll2mCy+QLGzWRUy9GDFGL8eJiwWjTyHZTawIMa9Kwjvh?=
 =?us-ascii?Q?7o1GnYF1aq/h4Ul9J8OvLmICDVZsnaIDeiKx8wKkS6LWL4Zqk+7SzlFKTcjo?=
 =?us-ascii?Q?lpvKfkZphSd1ajHJ7v0lzSdfJ0vTRyXbOYm5okpHSrR0/gpvURhcUOdBHudY?=
 =?us-ascii?Q?CvA0Zz7pBe4IabKjC3lZ63Fw8L8j4MaR2LGdg8d9O4j142dvpT4GRKeaB2PM?=
 =?us-ascii?Q?d8stYwt7LwkjXRDx0ArOWvl/q1eS6QwEX0IJcKdA5Fz4j94sSGxmm3JoZuBR?=
 =?us-ascii?Q?rQ4S/9w9WOZCnj9gk5xBOMkI6i98lwBCYhbrzj1qpdDidlACFzifwkNIFLiU?=
 =?us-ascii?Q?TN5IUnYslifzyG0dO91HKvN10Km6IFTuSMo8m0ETm1zSf1OFRUzT1Moo33zm?=
 =?us-ascii?Q?zP2uDaqo8FnPJi3AxTTxf09VAqTefE5GRnWgveugV9Z0DwszVmhKR2EzpCRt?=
 =?us-ascii?Q?YgGBb3fYd22gUwvZ4xF626jQzz9vhiJU0ZZj1cNtbZu+A8MivaDdkhPydPiT?=
 =?us-ascii?Q?V8r6QQ/8aICsfFBNQZEXDHJzOJuCC18cUiiWzRDTj+P2ERmdfGjKXl2nFP55?=
 =?us-ascii?Q?RAUFC7LtfiHgCP+G6uM17dhX+3x4FewplO+wXjXReD99HcNIx4iWjGS/rhdi?=
 =?us-ascii?Q?6to1eYdOuFzLi4QE2bAhvAsREyP7JoGoXA1zv3AfY0cTtYxKK8342jkjRsde?=
 =?us-ascii?Q?vVXcVM7TSJMgPls4G6eFgkqJQa6goYoOaIZpnAamV/tevfmfGkqp0ZE2tjmo?=
 =?us-ascii?Q?vHigBStqaTKuUuFdiHdU0DCrkVGkDP4d6P8WCCpzo715/B2Sy0IpsczMghuJ?=
 =?us-ascii?Q?OWnLAtvGrJHfO4w4pClaOuRTuKU3NQQdLef78i46D715JHXaEQIQSBy1ECeH?=
 =?us-ascii?Q?pM9g/4nsb54tnko/7+MNvCfR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GO6yKa10i9PA4qCYHzm61AHfHfY43jGN1NzEf5Ub3fiWumkOpuezeHlgFHL1?=
 =?us-ascii?Q?Wpu/LFszpHWQjHFTIV4Jg4MvSJ4hxrs1Ole/yDVG514eDvhcgFLXXjbVzdXp?=
 =?us-ascii?Q?cK690RqAilAYbkoEihDyVWtXCoThFYvM1r4FEhAb6vT6KYyswkdOk9vUh/ou?=
 =?us-ascii?Q?re0pD6DF1j4ZEXN6Tv9pRYg3S8mV8m192TxqpFj66GjLBGfaxZZF8f5d445Z?=
 =?us-ascii?Q?v9Kj0TdF9VIxscUL40gNFF/MsANexQH7L37HAHBCFVvPaszQXpEG2WJdJqXP?=
 =?us-ascii?Q?X+GfwNNnGod3cZlpR55jzuMTvgOaI8/spUnNxuIULbrjocC63JvD61Zh72ek?=
 =?us-ascii?Q?VYV48/V2TYaOcNXjgzfO52puxetGq0S/LhtPOVvqe651gADqy4eOTc8SyFgU?=
 =?us-ascii?Q?dQk6nGDnasyDoEkITN0nAM6vhyq+XfMU0ybfvTOdJxM0v1+YP5kSZk0eJR5J?=
 =?us-ascii?Q?q2j5lflNmUNnPGKf3b1FxkmwRXzIec2g41VKqfRLK6kQHN1YcxTquQBW4z7k?=
 =?us-ascii?Q?wdVbLAAAkrwzr72oONEZY3N2yFWLqspW7LVhQSJM/NolXwzT+kRG93WxqV0V?=
 =?us-ascii?Q?AlZfG6STfy8jI6LVLQJ10qmNNmN+psZw5tnVvXPNPsItqgN71nrpgbs8N0rm?=
 =?us-ascii?Q?keqLXhb0+XZIGSYNxEgODJsKXWvVcwkUIBVJPSmJ/Gg+qOTO0bXJtbuwevax?=
 =?us-ascii?Q?AXA9AmT9i+z4OG7qdo+EhyngAy0QBGAPfhH/MuKRF3zcnpRP3DJb0Cp5Q2Pp?=
 =?us-ascii?Q?xVf96y1iWaKv5iLPz8cJI2oJGKuYm/1PStPT62em1+DArP28/60GTxRHDutn?=
 =?us-ascii?Q?vrrsRLmME6v/n7szOu8Jzen5R6PZQyJdHmVWlnwBdDcsc34Yyts8STWU15AJ?=
 =?us-ascii?Q?NoPsC93s9hCTj4JxwrNM9yB74tdE1kbhWhh8IVw6WlCeJtI1kiznL4W/DrX4?=
 =?us-ascii?Q?UI2rBJrdyc2C55knf3aOoQwuIKcvjBl7c25DU1L2FpqtOqe+SSZwqHLwRgB6?=
 =?us-ascii?Q?a/ZiW/oS25Y7YnV0HeWAGKwnwxhEmhdkUIad5etjjSWUZwK/61Wfm95mjfYE?=
 =?us-ascii?Q?50antHF3zUdsJ/E6uFwKdel+k1Pk+i0Fb8npNrH23j/JFHWn9AJETH/0ase8?=
 =?us-ascii?Q?4eaLA8odJcv0GvFVb6rTmgj6gIcj3AwdXThpaHCNROo+pIWV8oYY+VJaYtfK?=
 =?us-ascii?Q?x4MQor9kWp3wDPnBw5NMLdBwHLc1VrLscdrkk7/gJYmhevEnApXbb/4OMbYO?=
 =?us-ascii?Q?2S1BXYn1S32iEggHCWukmqU3LkGvGX+kDXElmsyle90UhswFLrrRs8fsG/fM?=
 =?us-ascii?Q?NbDlq1ZY/zXI8AtIG+nSKfh9KwHkhAdNovv9xDF90+yGhIQXNgGR7F8lELGs?=
 =?us-ascii?Q?92RDFbmzqg1O5NjLLjesHjBnS6az/8Kg9YgV4IGf4dlgYvwtJs61BOMj/v4Y?=
 =?us-ascii?Q?S7bCf7xeQqMnUFZm7SQxSppM+qZsOWVtAUsN2VKl1V0J38+n+lcQ69pwY1Yi?=
 =?us-ascii?Q?vVrtqgP/QnPK2IzF04MVBrD9bZQRucZQBkTSN3WabGg7ViFFyfexiCVqnCvR?=
 =?us-ascii?Q?XjV2w8mDrwdvcxGXRoGGXGhThV4FJMLHfJ7QA3a3GWwRHg5M17oAd8a0avHR?=
 =?us-ascii?Q?ig=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0309cb0f-6978-49c8-02de-08dcf2c2483f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:52:23.1961 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jpHs7kiuluHg1kQyzv56bltqLN2u4D99Bdky/bxpHAeoBwZAQLsh9oLkjKfmmgFFYrVB5GJOUBoQ1FdLKNyJEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7682
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

On Mon, Oct 21, 2024 at 04:54:07PM +0300, Jani Nikula wrote:
> Add a structure with a bitfield member for each platform and
> subplatform, and initialize them in platform and subplatform descs.
> 
> The structure also contains a bitmap in a union for easier manipulation
> of the bits. This, in turn, requires a bit of trickery with
> INTEL_DISPLAY_PLATFORMS() to count the number of bits required for
> DECLARE_BITMAP().
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  .../drm/i915/display/intel_display_device.c   |  4 ++++
>  .../drm/i915/display/intel_display_device.h   | 19 +++++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index c51efc3a97d6..0e835f714bf5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -31,6 +31,7 @@ struct stepping_desc {
>  	.step_info.size = ARRAY_SIZE(_map)
>  
>  struct subplatform_desc {
> +	struct intel_display_platforms platforms;
>  	enum intel_display_platform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
> @@ -38,10 +39,12 @@ struct subplatform_desc {
>  };
>  
>  #define SUBPLATFORM(_platform, _subplatform)				\
> +	.platforms._platform##_##_subplatform = 1,			\
>  	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
>  	.name = #_subplatform
>  
>  struct platform_desc {
> +	struct intel_display_platforms platforms;
>  	enum intel_display_platform platform;
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
> @@ -50,6 +53,7 @@ struct platform_desc {
>  };
>  
>  #define PLATFORM(_platform)			 \
> +	.platforms._platform = 1,		 \
>  	.platform = (INTEL_DISPLAY_##_platform), \
>  	.name = #_platform
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index cef10babce30..fac361a4921b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -6,6 +6,7 @@
>  #ifndef __INTEL_DISPLAY_DEVICE_H__
>  #define __INTEL_DISPLAY_DEVICE_H__
>  
> +#include <linux/bitops.h>
>  #include <linux/types.h>
>  
>  #include "intel_display_conversion.h"
> @@ -106,6 +107,24 @@ enum intel_display_platform {
>  
>  #undef __ENUM
>  
> +#define __MEMBER(name) unsigned long name:1;
> +#define __COUNT(x) 1 +
> +
> +#define __NUM_PLATFORMS (INTEL_DISPLAY_PLATFORMS(__COUNT) 0)
> +
> +struct intel_display_platforms {
> +	union {
> +		struct {
> +			INTEL_DISPLAY_PLATFORMS(__MEMBER);
> +		};
> +		DECLARE_BITMAP(bitmap, __NUM_PLATFORMS);
> +	};
> +};
> +
> +#undef __MEMBER
> +#undef __COUNT
> +#undef __NUM_PLATFORMS
> +
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> -- 
> 2.39.5
> 
