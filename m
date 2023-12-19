Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78246818D90
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Dec 2023 18:09:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C68510E2E8;
	Tue, 19 Dec 2023 17:09:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 677B910E2E8
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Dec 2023 17:09:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1703005768; x=1734541768;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=i3jkkq1xcg7YtrOrOcOecdB308PUNV+I4vVbj55zqc4=;
 b=dnANZpXnDFj70nYotWtdk7nmkZggY4DuybdXUVOh50Z4ddMNrLVYLlJ6
 4hSXW2E/SC4a0zmfcG5zzicxL+6KSjvkHATbq+O/POirhieea8/94/GwO
 3lZ03O9yxeUMkC5Od1Hmn9SbjA/m2XaW4fp7kC5gCuTy0CwASffEzNTkX
 ORhu2YL6BcewOq0i5GzNzJGLutOfG5AYzywD/ES9RZ4LXL53rtgeVeYQD
 Sk3tmvdiYtLHv9P7G8nXkqAIOLk9brkwCtmjpQC+9DHIZHneGNRxmvoaw
 5P/fc2K0n86z0S2JuV8hzcb0RIKo/Vw+KwOiPtE6lRS/fKrdCoecILF9z Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="398473372"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="398473372"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2023 09:09:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10929"; a="779545382"
X-IronPort-AV: E=Sophos;i="6.04,288,1695711600"; d="scan'208";a="779545382"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Dec 2023 09:09:26 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 09:09:26 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 19 Dec 2023 09:09:25 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 19 Dec 2023 09:09:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 19 Dec 2023 09:09:25 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=DDAXKkfnbbtq4VEiHPL2P5zcWLnQq/GCNVDOR7kNdRsJHlBKs5GyYRf8PbVBNHeav2tDiU2QT0JcMPdP8zTXjPCDGBIbZPQ0Xl7eYNP2mYEXbQlNhQRWh46beNm3AKclfx9xXSC4d7ZPpm2QVCvmfcVljwO62j4EGbwC7H3zAYkiPPxtwxi+3vonal1nNyT4l4ay5AJS+V+ssJ8pLK6VZbnr90QXe9AZkqVnmpbpFbkzHc1TnRJB2gPDvIga05AxU74z4YAnc1MMyELbLC0AhZVwESSfJXff3oe05Cd9Y4AzHOcRGMuBRw/hHTgQRnPiV+E59SBQV4sdz62BYZ4pZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qXWlmlCGSCUyYbmRp8rGns02lcw6pT6S+jLE88BIMOU=;
 b=HjYUxXo8EjrUU2jX6kdS+C8nE/jGSoA6r2rmrTebGE06QsJ3DgjKRFXDRbwPkUyk/qL9A05q7ej+auOZKudKbjQ8bx6nsbfFFlcslJqmJXTTJ8XtkVk5Xk38I/42SGBI4VNck0vEAHE9gRdGMjP8auzyPYT2P/dnFbkU6xA46H5toh3T2xX1tlIJ8SWDMfPX0IGP41ThOCOFmdprgZxyWsElPAa279B0NC11LzlqtQ5c99nRCX3D4kHz5Usecp4v3HmrCpT5icsWfnmN9vFeLMmyDXkdUclhxzstoCWlkbAz22VT6Opj+URkPPzY1EAckLX7aSPfqnOIOJLPEa7cVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by MW5PR11MB5906.namprd11.prod.outlook.com (2603:10b6:303:1a0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7091.38; Tue, 19 Dec
 2023 17:09:22 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::4f1d:17b5:88b5:76b0%7]) with mapi id 15.20.7091.034; Tue, 19 Dec 2023
 17:09:22 +0000
Date: Tue, 19 Dec 2023 09:09:20 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Haridhar Kalvala <haridhar.kalvala@intel.com>
Subject: Re: [PATCH] drm/i915/mtl: Add fake PCH for Meteor Lake
Message-ID: <20231219170920.GG1327160@mdroper-desk1.amr.corp.intel.com>
References: <20231219092800.1406608-1-haridhar.kalvala@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20231219092800.1406608-1-haridhar.kalvala@intel.com>
X-ClientProxiedBy: BYAPR11CA0067.namprd11.prod.outlook.com
 (2603:10b6:a03:80::44) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|MW5PR11MB5906:EE_
X-MS-Office365-Filtering-Correlation-Id: b6a91ef9-5441-4b3c-355a-08dc00b53f0e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XZMAw51fURUkB3mwkUAIKoBgdzC5NVQ4+gGUETkktzZsHTN9f3c0o7lw4wZcaBFnoQuFYRPwGiLHHft7MpCJGoRESY1U3oo1yj6QTnjLd0wKqNlSPVr7cLqpQcZ8+2eBQAD7ARdYlbP8BEUkpibN/crt+rm7Ee4n9BSS8eXrHvGOV2BsYBjooHrS0rhy/bt2oA/TKiwK+3qUyfRaXSIPk0RoFqj9ljaTnkJZlLrJyzO9o45lrGAxi+j0JY2AuS7VmHqRWKAyNcnWiOnZs2B1IWPtqGhk2jhde56w3MkTvxutZKR7w9ld5nd9GotAQtdcyed3eumAvcGfp69PWl8QejXZEONThZ+365vLNJJa8koG410izl1xSHNUJLVfFTjR4pf21NGhH0WIVAxpAIRdUJn3b8wUjh90NcCgRwSsiQ2Xef0ew2cGT6M862S4mMe0fgySJWbieQGFWXf74pQurQo1XI+VsveqC0/i+sziYcEsk+56wemVFXH/ysfCsYgULiRGRXWaye0Uz21zb8M5b4BiViAheinMJrobSQ8JNuivt1MbNYFAwwpHjeliG1fyfaP+RNIJfRaDOViSM2zFdKbUsig22xHXuL0t3IiWjzT+BI14Mxogq1gHGKkoB3/4
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(396003)(376002)(346002)(39860400002)(136003)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(66556008)(66946007)(83380400001)(66476007)(6636002)(478600001)(38100700002)(6486002)(1076003)(26005)(8936002)(6862004)(8676002)(316002)(4326008)(6506007)(6512007)(5660300002)(30864003)(2906002)(86362001)(33656002)(82960400001)(41300700001)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VtQPYlFYXuIaasj0dBUNe9gqXPcOydQbQTj/5Zg8c9wiO0SYxfZvLdOw6q2i?=
 =?us-ascii?Q?cvqRzKeR2acRGTBz60SM/HEnRElWGNO0EV8bs9tpkTyaNFPOCb3RtsMPYVBq?=
 =?us-ascii?Q?HmPYam7SR8bT/qc2akw61k8b43VVyP7Plg3quocPoRxoAJumoRWnoYCZl33Y?=
 =?us-ascii?Q?V0RgOOGtFcRd2tSYtGb8PIiOaXmKZz3rtPTpZsNslo2JMTCY5M/S+/TgRMHg?=
 =?us-ascii?Q?jR1HYOE+DE64r6k8RMzq9I1BMCDmxZj4NDcoMMQ9vV6asm7EVQewT6nMN3OA?=
 =?us-ascii?Q?dNOrDj3SSiGQylUYI6LnlatxLZUrSbLQWE/UYcPHSujcVkKhVk/DAdpJTUue?=
 =?us-ascii?Q?rRLJ+WQSeEJLAV9smyq6SX8Cx7bJPjp1NPyYOKK8kBh9gjjyFneyEvyuqU4I?=
 =?us-ascii?Q?sC3nrigOf+dIPUM+G+bcNoK+U2ceRVWB+d14pPKAH7U5T/iucNue9hNai3zJ?=
 =?us-ascii?Q?TRLMcwVHMzJhMd3/g6sOKSCjgu4LDuwi2j+9sFzfJlABubSy+2kHlAGjqwML?=
 =?us-ascii?Q?S7a3k7p2M1Xyh6NYxLuUzxL3qCPpB0QQVrhQoP3JTjwBzWiblCeJ8AMAUtem?=
 =?us-ascii?Q?ULhcgyv9XWGynK4WqO8B6NJYn2FwAMn/5DFcejTHAQEyOAOReIKIwhvFAAIY?=
 =?us-ascii?Q?zvBneywgPu3PWrTq3Qm4RgDgAARErtwM6l9IRBLXzxMfjwDPd8BSndIOeTNu?=
 =?us-ascii?Q?8oPnsIRg0ZpglCW6ptvKMXdWG/D2c8UEB5aTyFh1B/OJKbT2iP4T+GMyP8g3?=
 =?us-ascii?Q?4QQxB9g2qkYUQ9VrqDbH/YOh811cPpjER5WaX/2kjDF//l/IpF42RenDSEVW?=
 =?us-ascii?Q?diuL7KptSwBWN/Ecs9z52P2sx4aYA6K+QK7dEZWkmMribzKJ5kSEVb58TjhT?=
 =?us-ascii?Q?PQTzXUTGWAFCk6s90kQyb0hgipZ53Jpr+wux41kSTBq4ZFFMQyxDES046mkn?=
 =?us-ascii?Q?rqER/ixrHCeY+EpUmjS/rQYoHLyLwKlbboSWjmjTfDyuanQcN3XFquLE1+65?=
 =?us-ascii?Q?afYbZ76TdSAXaHiscFiqr30yJjLOeWA4O+NkoJaZGZeW8A0UyaOeLab6vqP9?=
 =?us-ascii?Q?hjJfTK3M9QumjES5Y7ZSQTKZRQhbbUA2Oo3E4mRCdEqidkmcSeSmjKS63xLe?=
 =?us-ascii?Q?4JQiCDiriwyNa3Lklkry78MQ/oEW3slDBBsEx87ppMBx2WrNbJEaVKnBp4GR?=
 =?us-ascii?Q?CKQMvjEh8q/kYGzoMEW2+MxzjT2Or/fR5o8ZCXxp2jUxwPoLpR8eRIkrnwmU?=
 =?us-ascii?Q?j2ZmSZN87B0itzcsQjcUHEOmpGmgMELdnHzJiVc2UsGKwvnlfl73jqDrI4X5?=
 =?us-ascii?Q?aC43YRQq2edVg9C55Ww6mmbQJMqJSKYK5EunfFwAggiw4WCZ7XoNVQ+Qq9Th?=
 =?us-ascii?Q?0m19iU93gAPH0vInYJP595Wif5l8c4wNg+phzpMyY91xkirUbMVRZDkz7lFL?=
 =?us-ascii?Q?Y4hifdZ0KOjByobkQmO7bh3C70JhwBnN9uITo6725TEo+vOrMLJ9+Vqp+m31?=
 =?us-ascii?Q?8mGCy7Gl6nZELwFZI8y8lGQYYc5IVH4pH7voRUB/CMZwNQmqHhuVfvdBp2Ty?=
 =?us-ascii?Q?hK2p3QkeUs2NcPkcIUtJNVGMvdBwK2uN75ZpZTUavjHhFYmZiRIgzziBYXBS?=
 =?us-ascii?Q?Bw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b6a91ef9-5441-4b3c-355a-08dc00b53f0e
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2023 17:09:22.7968 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ilDNT9T7E08j15H68EL3fwzUsC79Lxq3Jn4gmIXLF2g2KBaiBBQengwxX0igCknpI1V16uRAVDHtLunE4L4hlzWyUBgDlcjTLiz8tZXRaIk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5906
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 19, 2023 at 02:58:00PM +0530, Haridhar Kalvala wrote:
> Correct the implementation trying to detect MTL PCH with
> the MTL fake PCH id.
> 
> On MTL, both the North Display (NDE) and South Display (SDE) functionality
> reside on the same die (the SoC die in this case), unlike many past
> platforms where the SDE was on a separate PCH die. The code is (badly)
> structured today in a way that assumes the SDE is always on the PCH for
> modern platforms, so on platforms where we don't actually need to identify
> the PCH to figure out how the SDE behaves (i.e., all DG1/2 GPUs as well as
> MTL and LNL),we've been assigning a "fake PCH" as a quickhack that allows
> us to avoid restructuring a bunch of the code.we've been assigning a
> "fake PCH" as a quick hack that allows us to avoid restructuring a bunch
> of the code.
> 
> Removed unused macros of LNL amd MTL as well.

In the future, make sure you generate your patches with "-v<#>" and add
a changelog to the commit message so it's clear what's changed since the
previous revision.

> 
> Signed-off-by: Haridhar Kalvala <haridhar.kalvala@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.c   |  2 +-
>  drivers/gpu/drm/i915/display/intel_bios.c        |  3 +--
>  drivers/gpu/drm/i915/display/intel_cdclk.c       |  2 +-
>  drivers/gpu/drm/i915/display/intel_display_irq.c |  2 +-
>  drivers/gpu/drm/i915/display/intel_gmbus.c       |  5 +----
>  drivers/gpu/drm/i915/display/intel_hotplug_irq.c |  6 ++----
>  drivers/gpu/drm/i915/display/intel_pps.c         |  2 +-
>  drivers/gpu/drm/i915/soc/intel_pch.c             | 16 ++++++++--------
>  drivers/gpu/drm/i915/soc/intel_pch.h             |  6 +-----
>  9 files changed, 17 insertions(+), 27 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.c b/drivers/gpu/drm/i915/display/intel_backlight.c
> index 612d4cd9dacb..696ae59874a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.c
> @@ -1465,7 +1465,7 @@ static bool cnp_backlight_controller_is_valid(struct drm_i915_private *i915, int
>  
>  	if (controller == 1 &&
>  	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>  		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>  
>  	return true;
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index aa169b0055e9..0e61e424802e 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -2204,8 +2204,7 @@ static u8 map_ddc_pin(struct drm_i915_private *i915, u8 vbt_pin)
>  	if (IS_DGFX(i915))
>  		return vbt_pin;
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL || HAS_PCH_MTP(i915) ||
> -	    IS_ALDERLAKE_P(i915)) {
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
>  		ddc_pin_map = adlp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
>  	} else if (IS_ALDERLAKE_S(i915)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index c985ebb6831a..2e6e55d3e885 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -3469,7 +3469,7 @@ u32 intel_read_rawclk(struct drm_i915_private *dev_priv)
>  
>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		freq = dg1_rawclk(dev_priv);
> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)

Since PCH_MTL > PCH_DG1, this condition can never be reached.  You need
to re-order the conditions here so that they go from highest to lowest:

        if ( >= MTL )
        else if ( >= DG1 )
        else if ( >= CNP )
        ...

Once you do this, it looks like it will also solve a pre-existing LNL
bug that was causing LNL to (incorrectly) take the DG1 path instead of
the MTL path.  Bspec 68969 confirms that LNL should be inheriting MTL's
behavior, not DG1's.

>  		/*
>  		 * MTL always uses a 38.4 MHz rawclk.  The bspec tells us
>  		 * "RAWCLK_FREQ defaults to the values for 38.4 and does
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a7d8f3fc98de..e318e24d1efd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -986,7 +986,7 @@ static void gen8_read_and_ack_pch_irqs(struct drm_i915_private *i915, u32 *pch_i
>  	 * their flags both in the PICA and SDE IIR.
>  	 */
>  	if (*pch_iir & SDE_PICAINTERRUPT) {
> -		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) < PCH_MTP);
> +		drm_WARN_ON(&i915->drm, INTEL_PCH_TYPE(i915) <= PCH_ADP);

I think you can keep this one "< PCH_MTL."  It's a bug if we ever see a
PICA interrupt on DG1/DG2 since neither of those platforms had a PICA
either.


Matt

>  
>  		pica_ier = intel_de_rmw(i915, PICAINTERRUPT_IER, ~0, 0);
>  		*pica_iir = intel_de_read(i915, PICAINTERRUPT_IIR);
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 40d7b6f3f489..854566ba5414 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -155,7 +155,7 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  	const struct gmbus_pin *pins;
>  	size_t size;
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_LNL) {
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL) {
>  		pins = gmbus_pins_mtp;
>  		size = ARRAY_SIZE(gmbus_pins_mtp);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG2) {
> @@ -164,9 +164,6 @@ static const struct gmbus_pin *get_gmbus_pin(struct drm_i915_private *i915,
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>  		pins = gmbus_pins_dg1;
>  		size = ARRAY_SIZE(gmbus_pins_dg1);
> -	} else if (INTEL_PCH_TYPE(i915) >= PCH_MTP) {
> -		pins = gmbus_pins_mtp;
> -		size = ARRAY_SIZE(gmbus_pins_mtp);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_ICP) {
>  		pins = gmbus_pins_icp;
>  		size = ARRAY_SIZE(gmbus_pins_icp);
> diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> index 04f62f27ad74..76076509f771 100644
> --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> @@ -163,12 +163,10 @@ static void intel_hpd_init_pins(struct drm_i915_private *dev_priv)
>  	    (!HAS_PCH_SPLIT(dev_priv) || HAS_PCH_NOP(dev_priv)))
>  		return;
>  
> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_LNL)
> +	if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTL)
>  		hpd->pch_hpd = hpd_mtp;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1)
>  		hpd->pch_hpd = hpd_sde_dg1;
> -	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_MTP)
> -		hpd->pch_hpd = hpd_mtp;
>  	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>  		hpd->pch_hpd = hpd_icp;
>  	else if (HAS_PCH_CNP(dev_priv) || HAS_PCH_SPT(dev_priv))
> @@ -1139,7 +1137,7 @@ static void xelpdp_hpd_irq_setup(struct drm_i915_private *i915)
>  
>  	if (INTEL_PCH_TYPE(i915) >= PCH_LNL)
>  		xe2lpd_sde_hpd_irq_setup(i915);
> -	else if (INTEL_PCH_TYPE(i915) >= PCH_MTP)
> +	else if (INTEL_PCH_TYPE(i915) >= PCH_MTL)
>  		mtp_hpd_irq_setup(i915);
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
> index a8fa3a20990e..2d65a538f83e 100644
> --- a/drivers/gpu/drm/i915/display/intel_pps.c
> +++ b/drivers/gpu/drm/i915/display/intel_pps.c
> @@ -366,7 +366,7 @@ static bool intel_pps_is_valid(struct intel_dp *intel_dp)
>  
>  	if (intel_dp->pps.pps_idx == 1 &&
>  	    INTEL_PCH_TYPE(i915) >= PCH_ICP &&
> -	    INTEL_PCH_TYPE(i915) < PCH_MTP)
> +	    INTEL_PCH_TYPE(i915) <= PCH_ADP)
>  		return intel_de_read(i915, SOUTH_CHICKEN1) & ICP_SECOND_PPS_IO_SELECT;
>  
>  	return true;
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.c b/drivers/gpu/drm/i915/soc/intel_pch.c
> index 240beafb38ed..3cad6dac06b0 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.c
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.c
> @@ -140,11 +140,6 @@ intel_pch_type(const struct drm_i915_private *dev_priv, unsigned short id)
>  		drm_WARN_ON(&dev_priv->drm, !IS_ALDERLAKE_S(dev_priv) &&
>  			    !IS_ALDERLAKE_P(dev_priv));
>  		return PCH_ADP;
> -	case INTEL_PCH_MTP_DEVICE_ID_TYPE:
> -	case INTEL_PCH_MTP2_DEVICE_ID_TYPE:
> -		drm_dbg_kms(&dev_priv->drm, "Found Meteor Lake PCH\n");
> -		drm_WARN_ON(&dev_priv->drm, !IS_METEORLAKE(dev_priv));
> -		return PCH_MTP;
>  	default:
>  		return PCH_NONE;
>  	}
> @@ -173,9 +168,7 @@ intel_virt_detect_pch(const struct drm_i915_private *dev_priv,
>  	 * make an educated guess as to which PCH is really there.
>  	 */
>  
> -	if (IS_METEORLAKE(dev_priv))
> -		id = INTEL_PCH_MTP_DEVICE_ID_TYPE;
> -	else if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
> +	if (IS_ALDERLAKE_S(dev_priv) || IS_ALDERLAKE_P(dev_priv))
>  		id = INTEL_PCH_ADP_DEVICE_ID_TYPE;
>  	else if (IS_TIGERLAKE(dev_priv) || IS_ROCKETLAKE(dev_priv))
>  		id = INTEL_PCH_TGP_DEVICE_ID_TYPE;
> @@ -225,6 +218,13 @@ void intel_detect_pch(struct drm_i915_private *dev_priv)
>  	if (DISPLAY_VER(dev_priv) >= 20) {
>  		dev_priv->pch_type = PCH_LNL;
>  		return;
> +	} else if (IS_METEORLAKE(dev_priv)) {
> +		/*
> +		 * Both north display and south display are on the SoC die.
> +		 * The real PCH is uninvolved in display.
> +		 */
> +		dev_priv->pch_type = PCH_MTL;
> +		return;
>  	} else if (IS_DG2(dev_priv)) {
>  		dev_priv->pch_type = PCH_DG2;
>  		return;
> diff --git a/drivers/gpu/drm/i915/soc/intel_pch.h b/drivers/gpu/drm/i915/soc/intel_pch.h
> index 1b03ea60a7a8..89e89ede265d 100644
> --- a/drivers/gpu/drm/i915/soc/intel_pch.h
> +++ b/drivers/gpu/drm/i915/soc/intel_pch.h
> @@ -25,11 +25,11 @@ enum intel_pch {
>  	PCH_ICP,	/* Ice Lake/Jasper Lake PCH */
>  	PCH_TGP,	/* Tiger Lake/Mule Creek Canyon PCH */
>  	PCH_ADP,	/* Alder Lake PCH */
> -	PCH_MTP,	/* Meteor Lake PCH */
>  
>  	/* Fake PCHs, functionality handled on the same PCI dev */
>  	PCH_DG1 = 1024,
>  	PCH_DG2,
> +	PCH_MTL,
>  	PCH_LNL,
>  };
>  
> @@ -59,16 +59,12 @@ enum intel_pch {
>  #define INTEL_PCH_ADP2_DEVICE_ID_TYPE		0x5180
>  #define INTEL_PCH_ADP3_DEVICE_ID_TYPE		0x7A00
>  #define INTEL_PCH_ADP4_DEVICE_ID_TYPE		0x5480
> -#define INTEL_PCH_MTP_DEVICE_ID_TYPE		0x7E00
> -#define INTEL_PCH_MTP2_DEVICE_ID_TYPE		0xAE00
>  #define INTEL_PCH_P2X_DEVICE_ID_TYPE		0x7100
>  #define INTEL_PCH_P3X_DEVICE_ID_TYPE		0x7000
>  #define INTEL_PCH_QEMU_DEVICE_ID_TYPE		0x2900 /* qemu q35 has 2918 */
>  
>  #define INTEL_PCH_TYPE(dev_priv)		((dev_priv)->pch_type)
>  #define INTEL_PCH_ID(dev_priv)			((dev_priv)->pch_id)
> -#define HAS_PCH_LNL(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_LNL)
> -#define HAS_PCH_MTP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_MTP)
>  #define HAS_PCH_DG2(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG2)
>  #define HAS_PCH_ADP(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_ADP)
>  #define HAS_PCH_DG1(dev_priv)			(INTEL_PCH_TYPE(dev_priv) == PCH_DG1)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
