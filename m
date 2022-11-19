Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 459FA630622
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Nov 2022 01:05:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B084F10E833;
	Sat, 19 Nov 2022 00:05:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD95E10E835
 for <Intel-gfx@lists.freedesktop.org>; Sat, 19 Nov 2022 00:05:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668816340; x=1700352340;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Wa/hJz1xh3lx2fnhiiBxP55XYRZ0RAKxKa48Wlp4o5g=;
 b=f26O25ZehtJZo/+BBh9kEbSEnjlMg33aOpPC+SHjgEVKhZ9hu7jUu9ik
 zBQ1z2mq4OyD5+XCmsOLUFY+50pfXnbopw1Kg7GD4ou9T7t9rY9UPXWnn
 Qv5zrs/amJG0FtgY7AGm8uZ2rHnN/5OeKJjUXNI5KQKze1Ma7GdIa+s+N
 XLw7SpzT4DCu6HAD6xZ/15aPXHlWEbuCWW7w9urjckdveYNibDfE8vsCA
 6rjQfzU52Xu57j/UToaLYb+VtTgs1aVW8bixPSsZSthgQqiWoQignSFKq
 lMEFolvvAuQF7hvEferJ2GQXgENbvdqMCD4o22aQwi1e4Ucfs443141ue w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="296626822"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="296626822"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Nov 2022 16:05:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10535"; a="671498272"
X-IronPort-AV: E=Sophos;i="5.96,175,1665471600"; d="scan'208";a="671498272"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 18 Nov 2022 16:05:39 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 18 Nov 2022 16:05:39 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 18 Nov 2022 16:05:39 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 18 Nov 2022 16:05:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TimKuZKMunSCj5DFiBjXJGfZBdgZw5FGQWG4P1lGXOqcm33eXJa2C442uI+IV81JM37/UJ0Z/0VKj7Mtib79yaxwRifNBskK7/uk1Rjq6lD2aC+W+2heS38UX4VZkeRRNCJogkNfIvg2yKOq/ETfu9LoRSOAwjJEuLQYrBmJMlNPfe0C7CxKc8pm3jVHE8LiATlsll2fQ9WvATMz1ZWDHBtHTrLTT4A30foOMwruAv1j5lhxxqb5ITWL5sO8sJ3Cgnyasq08gAtLSEHoCLmzI4MS+TtcFbGNPL+1fAYlJoWSSlpXhUwvKmLkuGF2YZFLgA09DNa98Avo5vVFsFYMQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W7W2ItjioSZ7ouyAakQLnCqxB1oJk7c/cYxnCaSWINQ=;
 b=eqJGC/E5wQg0FMHALY7aP1lA2bbgs8neHIXLlf3pxtFOW6+zu7VR9qzK9/ZZwB9Uxt9RhOLn2cPg6wH8SgwXHqnOD5Gl9NQEcbcFDeW594oCkzb7+ANCMcsLsWvtybFrMqq+EpovXqmDyCvw1/cnYllGf3Gfx8gONOEEuLimr8jFbfiz+9cQCPHRv6Oz9uRMtGtAQr5LLZF7YR06BZHn0jfoV7Hq+ETBD0NvmB6x92D3ku2JhbJFRrCX8lq7RXes+fAuK65H8gTYIj0CZcjsxFCgFMqr1Ozlle3dJfAVRf9geNzIfD2RgFI+MvcCxjDYKViL81PLFbZijryXgJcy1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by SA2PR11MB5036.namprd11.prod.outlook.com (2603:10b6:806:114::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.9; Sat, 19 Nov
 2022 00:05:37 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5834.009; Sat, 19 Nov 2022
 00:05:37 +0000
Date: Fri, 18 Nov 2022 16:05:33 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Taylor, Clinton A" <clinton.a.taylor@intel.com>
Message-ID: <Y3gdzbKI5zxWwFAV@mdroper-desk1.amr.corp.intel.com>
References: <20221019203527.1682301-1-clinton.a.taylor@intel.com>
 <20221027221315.2762940-1-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221027221315.2762940-1-clinton.a.taylor@intel.com>
X-ClientProxiedBy: BYAPR08CA0054.namprd08.prod.outlook.com
 (2603:10b6:a03:117::31) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|SA2PR11MB5036:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c652325-ab88-4d00-59c9-08dac9c1c8b7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XL57sLpF4wXbDVbTu31uOX8InCDHKoBb/Iz+rE2jjxGEBWlhs8qacinbtPhwyluGFC45Vh8j0yf/7vhqmVX8dGnOU78UDClt4UVsl5NWiSQyKI1JjMKIpkiOlCbbTTfj/QxWkJ5OUX6hSF49Q+w+C/XD2cLg7wCi2lmu5Ob2n9qD1Y7+eWRNX/PCW1KrThjcL6Bv9k1ZMPHyrDbyqwS+8hO9kTdbPulpzh9fbRfZ/WzKqW4zcex/vdiUmaWha/cdMDb9j5EWGfHHeb86D/HGy4e4lwDpCXxMH7Ss/JutAkmgn5BMkBqc1UF0mshH/6uGGOwL1FZLg3blDG7HwC42PPd5B3+lV7cX33aY1g5seG2NLMGftkmVGSn+jwY+m1PIccq1xLMTKY4owrzVN9qjNR19PLZu1MwS2omVJW/irWsof6FNaUxrKH+2z+3o8haSZNDQSSCzNN9JJLo9eBihc40z6UyGIaQSnJTGOYmczsMkyMdVPwdOaTb6OJYcaLRhekxOzq1aURUTyvZGplmRa/9DCZV8b6jwdzggzKxPZOhXCm0S8Zd/UsLUUJyfU9fXfuHFPpR0z42n9AMT0rSVN54kExUi3p28E+a+aQ2HuKfnESgJOpksGR91EMXjVVYJzxZuNnvvw8qwEDyKbkqINg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(376002)(136003)(39860400002)(366004)(396003)(451199015)(83380400001)(2906002)(66946007)(66556008)(66476007)(41300700001)(86362001)(82960400001)(6506007)(6636002)(38100700002)(8936002)(186003)(5660300002)(6862004)(8676002)(4326008)(6486002)(26005)(316002)(6512007)(6666004)(478600001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pYT+V1RV0I+VMY5poMbuTmbrWTqpcKaFZmWRptA9AYdJ7DoVVNo8fh3Gj6k3?=
 =?us-ascii?Q?qkqt0JpIKo1XOGH5cSto5juL3asZUEmlLw/It7D3DSp6z3At2G/NowWHvtHY?=
 =?us-ascii?Q?wGVFIv4+xkd6WyRJMYvIrb7S3zxLPU5yqQLOsUm4dLb5aVy4Q3hxJzxeDpkH?=
 =?us-ascii?Q?CVuY07DiSTjMf5OewVdxzIAgzuI8qE36t7hkl+guXJbfvZYRgWatK1VOCmHP?=
 =?us-ascii?Q?nLT6gYO3Z/4gxGqD7n3pjNbMn97PuC2LMUHnWV90CzvAS2OwGkcehFtcunS+?=
 =?us-ascii?Q?DSlQN3980ik059JvFLcmNcJD2Ve/8/LNb1+V9gfJmxkkSTO3VImrLFzfc/8g?=
 =?us-ascii?Q?PFoObgB1/BzPvHDnTEcHmVe+gkrGwQaP3mt66OgP7Gw2AGb6MoVsFkPF0BtO?=
 =?us-ascii?Q?+EYLiSVXDSjmWgoOPpNiPm3Z1ypxlCdUkySIczWz7cbMt1/bftz6v43RZgeY?=
 =?us-ascii?Q?dZoeI8PM/gm3Eg9m+wAUMdikYBhdTCnR+8dwfWEVhIXD05AYvIdxQvbTUDIU?=
 =?us-ascii?Q?F5oPgn7egI7Cgvz7q6wWhNY2ajip6bdgp+LrEj026oQ3K9efavk0WF67Y9SD?=
 =?us-ascii?Q?8MgazaM5sQ2VhITd/fJFWtN313n86UjX9B0Ievpp7TBbcu2dKkNV6zAwyZya?=
 =?us-ascii?Q?anCgcDqicDz0JbFdXPnYw5uJ4T+zs1K/8HzoUi8Kyfj4kdDMmL/dYnGdYIg9?=
 =?us-ascii?Q?h/sX7nsIKRhc0fJ4IENh2U4t6Pz2H6Orq1tX2JcHBM8vFJfH75Crm1pP06BN?=
 =?us-ascii?Q?VGskv4fVaynCfWs3YygNxUrMyOI2h5c1yGUWmceLUf2H3A9xkDnni5+cCHjE?=
 =?us-ascii?Q?6WBgASxs9g8P1wL2TK3yZ9mijQ1QUZgd62OhYaXOd8Gvts7nwApFRhZdiukD?=
 =?us-ascii?Q?8BD+0mewD08kbQboVX+KUNL6LlPzQHnTJ8K1fGBMO/rXtDK3VPzVW7jPyLNV?=
 =?us-ascii?Q?Uup855LLh9bnPc8oRoQ0NFiwa/2XTJs9vUose7aUAn0D2/3KsCJJS7ypj/Jc?=
 =?us-ascii?Q?fVa6rEjHmscPijD9hkOXag1Kfk64qTaObyLj7xkYZTazh/T0ghho6BungvoE?=
 =?us-ascii?Q?9o2M35NDAIE0HvOZFzc4OaWjKM+T/KV36RnbUf1IafeWxIyVmWmOikpktetA?=
 =?us-ascii?Q?YWqea6Bzp8yXjwS6eZIlRSeQ3cZNODIj4UbBWkHsyYSvdNS55oNlUy30XlVa?=
 =?us-ascii?Q?sx4U9SK0Eox612rGwST3hrxQ3cbXiQ0myt6+bYOAn+XnR4lPUQcgeBKA6GyK?=
 =?us-ascii?Q?R7mKwsOiOsZKGkjup59VFxU0dvuFH4xUfaKRjaiClfBsxCSsTzETwdhhvLbM?=
 =?us-ascii?Q?aO92igy+3P+r75GHtPviWT9VKZx0jtHIHNB7RJHP32WbjVP4u2VZSQKsxAAE?=
 =?us-ascii?Q?UlQxeMGwilEOsw1uuQ3vVOFwAtld5U4NmauYnypIAMI1P6c8VXxujyH7X8Lf?=
 =?us-ascii?Q?yBW4/nhqk3WVPn3Z9c/dBff9kgNbeYGt2Tnh3m+jyp360sGMkakTxpA4Roqh?=
 =?us-ascii?Q?3g/2GE5WiqP0LexcKHdVsT5wUCv9Zg0lMC24orHpBivQwnzi17G4oXLrKo78?=
 =?us-ascii?Q?YY+s3SXQqXLhButzsw0k6ko+qEWUl9AbHWN7wcHey+7QBKdM6NoIg5xwwYYn?=
 =?us-ascii?Q?5A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c652325-ab88-4d00-59c9-08dac9c1c8b7
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2022 00:05:37.4675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t91MkYYIFp7oMu40XpB8exfk++Y2Ia8hW125h4GZSByVQyWbFOVYzwk3ghXnnxX85q6TGKJGFNlWJCP6ERuWFlFUmZF7tlgYRX5GtJDNMxY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5036
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/hdmi: SPD infoframe update for
 discrete
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
Cc: Intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 27, 2022 at 03:13:15PM -0700, Taylor, Clinton A wrote:
> Replace internal with discrete of dgfx platforms.

I think you meant 'integrated' rather than 'internal' here?

Is there any value in trying to give a rough family name in the product
description for discrete platforms?  E.g.,

  IS_DG2  -> "Arc GPU"
  IS_DG1  -> "Iris Xe Discrete GPU"
  IS_DGFX -> "Discrete GPU"  (general fallback)
  other   -> "Integrated gfx"

Not sure if it's really worth the effort to keep updating this as new
product families come out or not.  Either way,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> 
> v2: commit title reword (Jani)
> v3: use variable name i915 (Jani)
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Signed-off-by: Taylor, Clinton A <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 02f8374ea51f..7c5133871897 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -766,6 +766,7 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
>  				 struct intel_crtc_state *crtc_state,
>  				 struct drm_connector_state *conn_state)
>  {
> +	struct drm_i915_private *i915 = to_i915(encoder->base.dev);
>  	struct hdmi_spd_infoframe *frame = &crtc_state->infoframes.spd.spd;
>  	int ret;
>  
> @@ -775,7 +776,10 @@ intel_hdmi_compute_spd_infoframe(struct intel_encoder *encoder,
>  	crtc_state->infoframes.enable |=
>  		intel_hdmi_infoframe_enable(HDMI_INFOFRAME_TYPE_SPD);
>  
> -	ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
> +	if (IS_DGFX(i915))
> +		ret = hdmi_spd_infoframe_init(frame, "Intel", "Discrete gfx");
> +	else
> +		ret = hdmi_spd_infoframe_init(frame, "Intel", "Integrated gfx");
>  	if (drm_WARN_ON(encoder->base.dev, ret))
>  		return false;
>  
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
