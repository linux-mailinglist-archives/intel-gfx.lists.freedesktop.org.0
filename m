Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F0B873E57
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 19:16:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B9161133F0;
	Wed,  6 Mar 2024 18:16:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W3IHcWHr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E921133ED;
 Wed,  6 Mar 2024 18:16:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709749009; x=1741285009;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eMwJwUomumfdcd7bEEhceomHT+tIu0VnGJW6EmtRCeo=;
 b=W3IHcWHrSxJjeBJgPTKn2KVpTstS/eWqNKfPvtirbb/yzMTuZ2pyafO1
 /vVIAckaAJrMFLCXhLFcqo1upspUUy97MhAZIU1RzkdVR+N+Z4vXJpZKb
 6UchZYEbb3Xciotyjm1GPek4bayNkTG1rpySNg2yWIoseF+VOHya9h2OD
 G8lc8LE71T5P7EYTHGEn9bl0MXHEJYvf2vGzpJKXQPDBtdIx5OwDw96H3
 Naw9NMlfBttv4p+117+x/BnKwvO7OlpqG/aZvCoSLGVdmX4DGwv4mTgHK
 vcCpp3L86qHZVvr5j0ZHk99E1LgkjW/dWlXlOQ0JKqIZrlXic0mvhnDxJ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11005"; a="4959385"
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="4959385"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 10:16:48 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,209,1705392000"; 
   d="scan'208";a="9818898"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2024 10:16:46 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 6 Mar 2024 10:16:46 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 6 Mar 2024 10:16:46 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 6 Mar 2024 10:16:45 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mIGfweANz56Rhn0HeG7pdnoo/CHbmweVUEZZOUP2VSC/qC3nWOO+r4b9OXLwwuXd6NT/ry8oGGM3IMb14dXJB396L0DFJFRZjjli39fr/po/WlOS7KeHVTjJRPuaBA9IJQwW3FBCXT8kcbeFDam1oIS2WuLes61FsieNojs8tOmBJPI34wei9ftWhb+XfAAs3IRRQTlMyju/f7fORxIiVMqBpRRakLn9UgTG0DQB+LQPi/6RXFqEkT4rVZ3i/VB4wnKDTnKQ/q231Oq27Qf1T7crWhrwIfFo92JYJqnRVZEt7OcCL6jRaC8HUr1n6/rQZFihyZYHNsZedlfKKwqtqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rFe11xzIRa0zQfjd8VhIXzKFsFg5N2skTnmWT5TFtkU=;
 b=WyJqd7Ac7sV6D/70OVTza2+vLycMEgsSoqn6oRoxaQPkoIBDjChipLQTUDqT65bVJUHFiYm84tWx+y5ysv64ZlS2m8HTiKucsX0sLWSvEtnLhvM/kLO+dmS/z81moN303fOQy7pAjSbNwYe/E5yRYZvnM5zjitmdFz9UTHYNIaWxuplmY9w7Oq6zkHQakj6FqV+WeTPlZAGeL6Z5wGM+zSxUWOqyU+tifCZk+Ldyn0Ae/2sQGQQcb7lj7UmwYXFFBCoSGJNVv3zsikfKqmdx8KL2As95nw4cYhY250+0pxCbOmWIeFZc9VVl6iOSsAHAl+r9it0bt+76w6UapT3Wdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA0PR11MB4592.namprd11.prod.outlook.com (2603:10b6:806:98::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Wed, 6 Mar
 2024 18:16:43 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7362.019; Wed, 6 Mar 2024
 18:16:43 +0000
Date: Wed, 6 Mar 2024 13:16:39 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <ville.syrjala@linux.intel.com>
Subject: Re: [RFC v2 2/4] drm/i915/display: add generic to_intel_display()
 macro
Message-ID: <ZeizBzI-yv_fwdmx@intel.com>
References: <cover.1709727127.git.jani.nikula@intel.com>
 <0b9459da6c8cba0f74bf2781d69182fa6801cd97.1709727127.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <0b9459da6c8cba0f74bf2781d69182fa6801cd97.1709727127.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR20CA0019.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::32) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA0PR11MB4592:EE_
X-MS-Office365-Filtering-Correlation-Id: de6eb480-e93a-49df-37f4-08dc3e099394
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: F2O/E/7/LkZ1AS91sapQqV7pY5SETrG964Jd+H3YXGNWSJqbSMd8/4PQdMP6W+aG0SMxMSWhTi9t7zBbUNOrrY2OYnuGY/1VCY9O5xLLu+pHv9maorx+7zogRfjjzRreoVpBy1PTgif2POYq0b+OT41NoWztDEXevu9AqUomsY3D5uYaPUWzOfQtMtd5qXlNrKXhENHfEAUiI+hDoWGwiI9acN27A/Xlw2VMdBgiIZOITMrCCogKrDxiQ8fJGIFE5NXl8kPWIjb1+LbDkC1OLDz/QamaITIYkvXuXL3jkr1ynnpvo0ctqbOHf+YA9QpBxMNXUmZxV5hQ300eIbKpqZwl/mTyxikL0M2I1YZqp6plSk6J91kcHxa+ChGeUXMmyrW1KYssiiSy5o/euMMZEi9rKiQgkcKAdYwWkc1u/8ZevhDRFYeh1W+L6XOiBcXlk7rrgqzgqoRXRla6yzvOKSzS0oU+oZ039iuadaZXjNo76ZHKrafsal4iBLsq2kY5sZ+hUDxwcRFnd4x/PPLWlK1KgjhTAOENLzqXcOPOVxvo8aE7lW35g2As1kTWUZLViNo0uKCGsSnf4yh6ft0bkGg/GORgGLwS/7MVzY2Y/3Ck89t0dTeZa2CRZ2HbT1UCuA0ZXy8ZYbIqs8P9idT5piYGNAjpz9kBAmivPeoyHdU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iiAgaPF7ywo8C0wqMq+IXFZ6Z7Pl3UuGascSpCLjd6UR/+VDvTEKu+WpgiM8?=
 =?us-ascii?Q?XuOBOTXoHqESkDYo/kZnzMZwBn8IPQEy/1iCSHj5H9JxXEuULXPvoYpbo9k4?=
 =?us-ascii?Q?IJFCnNWnlehbxinLTLQf2toxvV7FdT2Q9eEwYmsB50huDsl0HlhOELYPiS5N?=
 =?us-ascii?Q?tgjfN4d0y/CC5WJZHw149U9NihTn2gwujQl5MSVZDTCpY4grJcukMTw6tFJG?=
 =?us-ascii?Q?S7dmwLDOIEs6thJKNZLHteDmYYnpxGwJrt/LTlfVFiNJ5pB/YZbTP18nW4DK?=
 =?us-ascii?Q?kpdirevaBNLDeOAjseDUMXL/MMU756zzjyEHopi5TjKQQ6GLRVjb8L9xTGtw?=
 =?us-ascii?Q?dwazjFcTv36dM9Ff0kjItem56QOo5b0pQ1CZ6bdz1vQpS84IbKE2ni7PfR8r?=
 =?us-ascii?Q?5z/CqJCnQNRql0KocWgB6LMl41jWBbbJ0SG1H7StzdafoK9vQ2ljs4zx80eW?=
 =?us-ascii?Q?0NJcE2T2jhc4fT/tulWLZ33GopVzzYTxRgHp2FzGH3FvO9EMwxaFN4BqJh6G?=
 =?us-ascii?Q?X9h1mUq+ySdfOgyh3jcYcX4riL70bGTi+EYRpq+zWVXF2YXa2XIezsNUqn3B?=
 =?us-ascii?Q?fW37KcWWFK4m0mGQ332HI/7hS0MJjsU2IHNtTCP46JYTk9kEDm3kYgOqTamC?=
 =?us-ascii?Q?9ZvE6K3NI97nTlVUrK6j4829ATK8bmuo5QzhPr5EiMPRePuwiViZB4jog/pH?=
 =?us-ascii?Q?U52MImNlbmw8bzMsEZlfUaVNSEuooi6y+5kIVqx3VMW2kOwwKD2PQhW1nOU4?=
 =?us-ascii?Q?Een9ogn0WGGhXqXS3TgJUH4vdUO7vns7sfgtQCjoPN4yg5rHEbYAS/n+r5xl?=
 =?us-ascii?Q?4hyTPKqKeYPSdiQ2TiJMUnYXLJalXoXYE8N6xo8BMENBjYKTYiXaIr/+qDYl?=
 =?us-ascii?Q?Z1kKtXJOjxWIImfIHqGtg5lyXExUpqY0Z+kXj+iXD/qPTovFJW0BeIh7wlMT?=
 =?us-ascii?Q?rEL9iVwT8fS5/+HG+zti9zE1hKzDkqxxAg7u0PQjUG71abKdyDRFoQ1leEmV?=
 =?us-ascii?Q?XZbh3a+TbRWv8kT5hvDcOrwf+ODVpzuSodxhMwkTe3vTAGXimlCAGsZfM/ht?=
 =?us-ascii?Q?1H2ae4UF/teR4XCo249NgM4EQgfxt8eys4jl67FvdThQzF5S7/3Dqs+imczs?=
 =?us-ascii?Q?aWFB4dl7fH4m2TjTsy+MjBmYl5LVX9z986zNvYR0mzOa2X82JJam8AwrYseC?=
 =?us-ascii?Q?ow1/sqoe+tl5Cw9xngKfiPJPMUY1MAZgZw1gEZ9ZY7A3d4/NDOELePQlP/5H?=
 =?us-ascii?Q?BVA1v9GhAQI/UFwvmxTnwNEafDWrlAd2aJvX1blh4Kagum6RlghKOGY56BJX?=
 =?us-ascii?Q?LyMVy5E0v7Tf0exDg1DjKZrTSNMYm4nG3jd0GQKBy0DC2AFtXYIcK7HVdFho?=
 =?us-ascii?Q?BCfUP5jIUJJKOLNVsB6wLvLR4CF4TWjMLuRnjJFsBiTHQa6H9JDFvcU5Oh7o?=
 =?us-ascii?Q?fuNOI540FDRIOTNDJxJOtuuSlRtDdl+k+OCBwVSDFYtSIFS9HVOz9fRrHxBG?=
 =?us-ascii?Q?5VbxNdDBbLC2/spUOKufOZRN3IDNhr7zl/wM9Be5jGvX/ZJ+QMO4dZtF+tky?=
 =?us-ascii?Q?Jsv0YdGCFsoGLW9Np5hUgClnbxvNxYDiIByE6dvQjgm/hgejhUdksZrOE6T3?=
 =?us-ascii?Q?BQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de6eb480-e93a-49df-37f4-08dc3e099394
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Mar 2024 18:16:43.4013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6y22DFtryEymd33tyk1OrzLEgQLDJV4OXF0kA9A7fimuuIT37fPLWil72AdwvYaqpkMKfgUMIlhY0F4RuAuPVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4592
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

On Wed, Mar 06, 2024 at 02:24:36PM +0200, Jani Nikula wrote:
> Convert various pointers to struct intel_display * using _Generic().
> 
> Add some macro magic to make adding new conversions easier, and somewhat
> abstract the need to cast each generic association. The cast is required
> because all associations needs to compile, regardless of the type and
> the generic selection.
> 
> The use of *p in the generic selection assignment expression removes the
> need to add separate associations for const pointers.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../drm/i915/display/intel_display_types.h    | 46 +++++++++++++++++++
>  1 file changed, 46 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index e67cd5b02e84..3f63a5a74d77 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -2183,4 +2183,50 @@ static inline int to_bpp_x16(int bpp)
>  	return bpp << 4;
>  }
>  
> +/*
> + * Conversion functions/macros from various pointer types to struct
> + * intel_display pointer.
> + */
> +static inline struct intel_display *__drm_device_to_intel_display(const struct drm_device *drm)
> +{
> +	/*
> +	 * Assume there's a pointer to struct intel_display in memory right
> +	 * after struct drm_device.
> +	 */
> +	struct intel_display **p = (struct intel_display **)(drm + 1);

at least this patch and the first one should be together to help the
'magic' to be understood and confirmed safe.

> +
> +	return *p;
> +}
> +
> +#define __intel_connector_to_intel_display(p)		\
> +	__drm_device_to_intel_display((p)->base.dev)
> +#define __intel_crtc_to_intel_display(p)		\
> +	__drm_device_to_intel_display((p)->base.dev)
> +#define __intel_crtc_state_to_intel_display(p)			\
> +	__drm_device_to_intel_display((p)->uapi.crtc->dev)
> +#define __intel_digital_port_to_intel_display(p)		\
> +	__drm_device_to_intel_display((p)->base.base.dev)
> +#define __intel_encoder_to_intel_display(p)		\
> +	__drm_device_to_intel_display((p)->base.dev)
> +#define __intel_hdmi_to_intel_display(p)	\
> +	__drm_device_to_intel_display(hdmi_to_dig_port(p)->base.base.dev)
> +#define __intel_dp_to_intel_display(p)	\
> +	__drm_device_to_intel_display(dp_to_dig_port(p)->base.base.dev)
> +
> +/* Helper for generic association. Map types to conversion functions/macros. */
> +#define __assoc(type, p) \
> +	struct type: __##type##_to_intel_display((struct type *)(p))
> +
> +/* Convert various pointer types to struct intel_display pointer. */
> +#define to_intel_display(p)				\

For a moment I almost complained of this because of the generic magic,
but mostly because I had guc related code in mind where you can never
find the definition, but here it is different. the used 'to_intel_display'
can easily be searched by cscope/ctags and then you are able to see
below what are the accepted cases, so I ended up liking it.

> +	_Generic(*p,					\
> +		 __assoc(intel_connector, p),		\
> +		 __assoc(intel_crtc, p),		\
> +		 __assoc(intel_crtc_state, p),		\
> +		 __assoc(intel_digital_port, p),	\
> +		 __assoc(intel_encoder, p),		\
> +		 __assoc(intel_hdmi, p),		\
> +		 __assoc(intel_dp, p),			\
> +		 __assoc(drm_device, p))
> +
>  #endif /*  __INTEL_DISPLAY_TYPES_H__ */
> -- 
> 2.39.2
> 
