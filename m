Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE83C90F611
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jun 2024 20:30:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2768710ED79;
	Wed, 19 Jun 2024 18:30:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y3CMs98L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4AE0610ED79;
 Wed, 19 Jun 2024 18:30:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718821836; x=1750357836;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=ZUP9INtDUYdvhv25Jtncey6h1d7y1FdGZ7f885lSuug=;
 b=Y3CMs98LWZhpBcqB79fWjKZTXSxEZSph+zwevPDEJg+aZFZ4LstXIEQC
 gOSzhiJxZ2Pi8GGQ+1LiqzDfWNThvgk/Hh1IMHP5820+OONo9xajFF7mW
 b8m3sFbCSaOP9tU/GTvPbYK7AmyOXDLQPwmUaK/+wr1vExgmCdaVo0TGE
 IaJXyFlEFdOvnKzbPBGkcfX+C5cRBPDteE3hI7enV+BGNw5nTI+WdY9j8
 Zy1AXPhdAPISk79oOfjaCxS3Ny/F5gdYg2RKkMwmmBy9wlCGsX78fGMap
 evtCPIvngkhwOVemqe1SkcbEDJyFooXBcmDzYQRRK6fbpe/9gmkTvRhYs w==;
X-CSE-ConnectionGUID: IfmQpqezQbmpbiF6HodzIw==
X-CSE-MsgGUID: oyGAlea6RVaYgkKRP2YrFQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11108"; a="18687335"
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="18687335"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jun 2024 11:30:36 -0700
X-CSE-ConnectionGUID: ghpuVXZGT9yj7DUdZPFGcw==
X-CSE-MsgGUID: yWf4STvLQbSC/dip/IP9cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,251,1712646000"; d="scan'208";a="46917944"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Jun 2024 11:30:36 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 19 Jun 2024 11:30:35 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 19 Jun 2024 11:30:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bsvMRGiitSfl82uAjQBenF/CVMJKy3giQo4t98bnHr6hlX5qcydwU+YFGhNq1gmLQVbkBTFDNyLbdQc7Y5s8d0S5tba0Gne+bbecyPq5HuSiovSvRYY38C9efljbb7WxtVmkOuaxceH1JG3g6PH0YnvoCabK4Ay04oGv+tIkNrgb/SZtfoAoGjWSEJYlE34yKi/KESqBYh4jMbvb4DBm7x70nh+qFI9faPcKOH7O8kNUE94Qwd6YeMI+eHT3SZbGBHTGlUJCEoQgF09eUIVna0ziublJWM3jxh1qh4mXZPQwtdbKhtC6r+kLsW07ehlfmFgoHwi5JMNm4waq7cA/vg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KKxJGGrhoSmueyVolZmzkM0gEu2ZW7Ms3jAbCfC6IV0=;
 b=WlwYU8bzn1+yKBXCPWhznYh38tSxdqtI8PPNFo7u482S3cXoA+v8adus5s1XNzJ/dbiPtvbuDBOehOMFmYOSDLkh7PkMxT2RkQH36EdeWRqxlCIAC/pprpkhvES14ejW6WXobY6u3odgu3VtNuIRyeAny9saKDlR3/VFIHheAvdnQBAmCwUfOc6UyvCboJaSOzOPt0tdZYmDeGMq56Kxm6XvvPYpp21Ur0roC5QIlkvf0z1XmpUPzEkQ7FqCqtbxVLx2ln6PahtSqVajvkD64HyZUv0S/BJXJxsQXYOpC9o5SxlTs2yM9xw13TQj/iqrh5gt1H0FkSOhOvQnVWZFMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CY8PR11MB7874.namprd11.prod.outlook.com (2603:10b6:930:7c::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7677.31; Wed, 19 Jun
 2024 18:30:33 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7677.030; Wed, 19 Jun 2024
 18:30:32 +0000
Date: Wed, 19 Jun 2024 14:30:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ville.syrjala@linux.intel.com>, <maarten.lankhorst@linux.intel.com>,
 <lucas.demarchi@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/display: add "display is" structure with
 platform members
Message-ID: <ZnMjwLkd0f4XEcr1@intel.com>
References: <cover.1718719962.git.jani.nikula@intel.com>
 <80e564e550bc0972c9e0199f1a361a99545ab81b.1718719962.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <80e564e550bc0972c9e0199f1a361a99545ab81b.1718719962.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0193.namprd03.prod.outlook.com
 (2603:10b6:a03:2ef::18) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CY8PR11MB7874:EE_
X-MS-Office365-Filtering-Correlation-Id: 0445da6b-957f-4492-5571-08dc908de73e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230037|366013|376011|1800799021;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?BlG3BHdHaFDYXYr7HICJRGCmqLQdmPmgv1p3IkuyniuzMZVDf9wU+W4xUlzb?=
 =?us-ascii?Q?KvaubdarGDumtox9aXuM93Inq+61gJMXcPcGeiu1n+Tn8rUhW8uzh9Mn6RJc?=
 =?us-ascii?Q?PGD02SK3BeHOeJQZk1oQtHPLnN+Rx2poG2/T2pFe8FDg/SdgcXqDbqVn4sky?=
 =?us-ascii?Q?iGZoHO+IQprAATaOpHWdtFIJjHM8M7NmubfQ14UVbiw2OX5wRB4EIRPLSSBa?=
 =?us-ascii?Q?/YhIkW4AdmQ+JA5kXirZ8l8yrYXn+sYMLO/+9AKk+X/Qw1Ve3D+JwZ0nolrf?=
 =?us-ascii?Q?bLs8IlZ7p5ClM1TZ1eZd8dgq5PvQ6tfCEQ0igv9U9j8spb3ts0IO1y6Gjjv6?=
 =?us-ascii?Q?6pwWtwwlvos3fbQPpeEJzdCnIWloP+YtMUFKIuIRqvJIZ31+d0tCiEdITPPP?=
 =?us-ascii?Q?a1pMoXg4Z5aPvFQ/yyYbDYJKtXPklbK0qg1obfs8gWV2B7T+Qu0w+3BRrJu/?=
 =?us-ascii?Q?k9OXXcAQslUNkZIjlpdvWKVrXTe2YhZCuKIp7TwzD+iyveIR04JJHybIMWFR?=
 =?us-ascii?Q?tmFtMeDgrG1CFEbArBC9hnvK+S8WZr5IUZfn8Wz2nS9ABuG/49+Ia54PB/wb?=
 =?us-ascii?Q?XlW+pv8OG1phiDz4HlJ3B2pNWP46UUzACuKq8x306NhX8NFfzDcPxBpvXbnR?=
 =?us-ascii?Q?bWlgY/rPTbqTvGCToz0y4b2X62PCDeHlNoUeHt4YYx1tBOwkOAQfn4QftIIV?=
 =?us-ascii?Q?C8uDHyuEXE4EUEAPCJj4oT2CgRf0CwTTwJiKS+IJMu/dcl7aHuxyhDql8W9X?=
 =?us-ascii?Q?xx30hQr6O0HTrJGZM2CAs40Oadm6vWWzvUB4yglMQ6Ac95BZDaPUMqY14aaD?=
 =?us-ascii?Q?HYy7byMnCSCTVpAJgsHnIi4Gtjo8yhS5O5PwP0uI0OK4x1afhjOVgTs/XyPN?=
 =?us-ascii?Q?HFsq/wXRHlXMSREA3VT27AohwTtBntyb2lVIohqOCwQhFJF49PLldkXdPCII?=
 =?us-ascii?Q?+39o1zT2hmIeFvrrtw3wWnOI6TMr6ZQkrIeJFKMFYXqJPcsoMdN2rkGF2kt9?=
 =?us-ascii?Q?sHIVJ04O77B0z3ksCqrbx7lF79XBZbAq1NJyOBbpaeTLMSJtUQJ4CuJ+E4o5?=
 =?us-ascii?Q?3WkbGjzi2vu2IQFwFhUM6gZ+9GMPJxn2Nva7BHma1TY0gt1FBxSHR2EDSKZ5?=
 =?us-ascii?Q?gh0kKMk6+WDJyB4LaBvceGDm7zvUkmFZOu5+LAu2v84qgoNoCVvonGNCwNa2?=
 =?us-ascii?Q?9ay4yjpjtnKWM5qn/iZw9S7O7B83WCgNAYawLPeimXHVch0Gt2j2NKnBhf62?=
 =?us-ascii?Q?jWbzie3xSuduZU+huvn20YnHs7zCEPNgdfpHfX5O2ftOesMOswJaLAXlGpMY?=
 =?us-ascii?Q?MxSyNZH+IPU0DvuM+p9dmL9/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230037)(366013)(376011)(1800799021); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?cME2zo+YlrhOeRJVdX7Av2G8MIFFHbNxJW+flPhwj7DrI9Zq+I8tAC5nFGvo?=
 =?us-ascii?Q?EUpjFxA5IMHsaElIeZvsrxYftIK/jy6be3C6hy64QWOPkBNTrGAh0PlfClkF?=
 =?us-ascii?Q?2v2ZKG9CNfVAwdH8VEOdq6GNwrPkKRBWDTQGBis0JHI3Tttw9axePTLit/iP?=
 =?us-ascii?Q?AZ5Zm+gIadZCRrKBQq+UOOJpCbRT/+SR8me1TE1BeTIgb6BU30l4SJmjCDks?=
 =?us-ascii?Q?zvSqNXT/558f4MofVdJ9yQLLeDA2GhhGZKXwyc9CJKSMZVY+a3OgPIM9ZZ9b?=
 =?us-ascii?Q?LrIFRMaFcLm8orixxtw/yxYWsYR1TncwQNxv8Sh3Jciz7oBieDeBxX95QtDu?=
 =?us-ascii?Q?rZsdj9Dr5JBkZf+bqNGmVMDC2TlPgHLFMG+o9rNo1lzqmupSh7c4kYrXV6i8?=
 =?us-ascii?Q?uYqMxcJjWWHUka1hQLx3fmkR5JZHDkvt6wwqk2eXHVygoFAL75bE5mkdsHlX?=
 =?us-ascii?Q?8I2meuUNaQ3P2Pi646j0VpEKkncqTcJlt8YNvcsNbDAuXd5CJIAH05tRq7xw?=
 =?us-ascii?Q?jfGHkb/dG+XBnuAXMJJzRCI1jWi/TndUmpu+dwbRxrXdxg5SfJdia8KdlqSq?=
 =?us-ascii?Q?jYkDdMDMHrS/dcpLDIKVaUzAadA1A42I+Ev1irDZ1QIqfA7RpRbUAVWQ82tm?=
 =?us-ascii?Q?lQDwx/fzTs4qACtE/gZAKwSKL2t2picJMEIqzGqRzleOSshAmEdzojhzQ0qr?=
 =?us-ascii?Q?GejfcmXpYvTiSlsc6tJk/nvQg/LqfbgwEIPzVnYhyEyeitnyXQJvMYf0jDPH?=
 =?us-ascii?Q?9VjIIVaM1WO2/8hYEVKIGFqTYBq10IINdfZsdGFmjZwSburINzu8hTNdKZS5?=
 =?us-ascii?Q?b11bGDjiFnhVNJt2z/tvFmM33cdRIgMgsKyTjOTl/CJYH/SH808C+QsXaH08?=
 =?us-ascii?Q?V1BwhOAXYU0JDvdwvkkeGnG2nIdHfiD99951dScmjrH+vCl/zuRpLty+fO1f?=
 =?us-ascii?Q?v+/KoU13IvdngnKV4Vi/YCpqLt2MPr9N3H8GK3TaZWwFi2xX4Aidnri4Xlb1?=
 =?us-ascii?Q?mxr8RMVvqXLVDiKmL52nE6C5TErYsVJSsLCMLeIRdVoneZq7jOcG+LQYRbll?=
 =?us-ascii?Q?3vMrzRdDBe2lvClPBaHYDKaoZxDLQDUcyZmAge3exL9Z5rH5RTkFeAqzC2YA?=
 =?us-ascii?Q?BFbCyUjpP6WAgUDN7o1U6NM32AueSSTgjpS/QP0TX0qXjixQzzoecAinadCT?=
 =?us-ascii?Q?etRiBHcDSTuUVuKlQsgigke5Wn7uEikkm4VMTPZ41FoAMosKKJFpFBd4OqKi?=
 =?us-ascii?Q?3GxwxSbOEIVb/b07t8O5/vRky4Ow2xW7MoS5/kXJ5sTJj8fFeJuIQMQTLo15?=
 =?us-ascii?Q?BIi/n+K21OJlpyWzQPHUe6Ze4ImASL9EqO/6gAGQpQ4a/iS39wdX4AAGjHmK?=
 =?us-ascii?Q?M8bUwMVC9DcIz5GJBjLVLnu03yn4nxIrEhLD1tAJjtdr/mu0Am6A30trDCaR?=
 =?us-ascii?Q?EkFKUuEJsMtfjUxsR8ihBtFWitMrD8/fDPQwkER5ZKcUbdrg/ZzbCnfNiF6W?=
 =?us-ascii?Q?FeE1WCfuO3G5V5Do3XPW//JSjOQJ+hjMXDnXB+3al7anYaKtkVrFY+D91C9K?=
 =?us-ascii?Q?zTumaqs8zIIZxCvzMPaYjyB6Ig0UNbDxLKx47+2VqxRj36/5qIT+AsPkxgCz?=
 =?us-ascii?Q?JA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0445da6b-957f-4492-5571-08dc908de73e
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2024 18:30:32.6030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I8YLsuTDpOY4PVUSmBwK0c+paUB9//5IUtkbn5o0fnpvOsLKCtI6/t5YTETDWiYxNSwJBLB61sCpOx/bTvYewQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7874
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

On Tue, Jun 18, 2024 at 05:22:54PM +0300, Jani Nikula wrote:
> Add a structure with a bitfield member for each platform and
> subplatform, and initialize them in platform and subplatform descs.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_device.c | 8 ++++++--
>  drivers/gpu/drm/i915/display/intel_display_device.h | 8 ++++++++
>  2 files changed, 14 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
> index 80563af7ac71..0c275d85bd30 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.c
> @@ -21,6 +21,7 @@ __diag_push();
>  __diag_ignore_all("-Woverride-init", "Allow field initialization overrides for display info");
>  
>  struct subplatform_desc {
> +	struct intel_display_is is;
>  	enum intel_display_platform subplatform;
>  	const char *name;
>  	const u16 *pciidlist;
> @@ -28,9 +29,11 @@ struct subplatform_desc {
>  
>  #define SUBPLATFORM(_platform, _subplatform)				\
>  	.subplatform = (INTEL_DISPLAY_##_platform##_##_subplatform),	\
> -	.name = #_subplatform
> +	.name = #_subplatform,						\
> +	.is._platform##_##_subplatform = 1
>  
>  struct platform_desc {
> +	struct intel_display_is is;
>  	enum intel_display_platform platform;
>  	const char *name;
>  	const struct subplatform_desc *subplatforms;
> @@ -39,7 +42,8 @@ struct platform_desc {
>  
>  #define PLATFORM(_platform)			 \
>  	.platform = (INTEL_DISPLAY_##_platform), \
> -	.name = #_platform
> +	.name = #_platform,			 \
> +	.is._platform = 1
>  
>  #define ID(id) (id)
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> index 50485235ef09..73070c8487ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> @@ -101,6 +101,14 @@ enum intel_display_platform {
>  
>  #undef ENUM
>  
> +#define MEMBER(name) u32 name:1;
> +
> +struct intel_display_is {
> +	INTEL_DISPLAY_PLATFORMS(MEMBER);
> +};
> +
> +#undef MEMBER
> +
>  #define DEV_INFO_DISPLAY_FOR_EACH_FLAG(func) \
>  	/* Keep in alphabetical order */ \
>  	func(cursor_needs_physical); \
> -- 
> 2.39.2
> 
