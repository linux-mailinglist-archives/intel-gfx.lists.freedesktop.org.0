Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7018FF0C9
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 17:36:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FD6010E99F;
	Thu,  6 Jun 2024 15:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EBdn4/kV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B100610E99F
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 15:36:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717688206; x=1749224206;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Cj88y/b3aOwMqrKyovJFftfX0Nym6tlIFf8X0EFox8Q=;
 b=EBdn4/kVF/Z8aYVqhXGaiOoQgc8nvI0wvErim8WtPIuHT6Oj+tpBlB6t
 IBdLWNIYb8eCbv9mq9Grb8OApvrYtqDx7hAq7BIE5ZO/vn2ZpB8XpiWXv
 AyRHJckf1sl9asJdjizAkZngEs3d+UaIAgCq4FPh1rTmH7iWdFyV0t1bc
 HgYZz3DHGJe3zbJfl8sHjFwtU90+q6Tb1JgRbgGfBPFjA3qCMkM6pQuzV
 16lpvfLXFE4kQOhe9gEUqCRHc/cRBPzK5+l4ZK6cU2Xi9mvm6wzVoGpLp
 Odq7/LJUVhfy47Bc89S0gA2cFP2+57iVqFwwvBs29N8AV77GngRrmJJr/ g==;
X-CSE-ConnectionGUID: qZNcRTwkQCiNrFDZZSd7oQ==
X-CSE-MsgGUID: VmFup6TpTaCuIn6rHH4pGA==
X-IronPort-AV: E=McAfee;i="6600,9927,11095"; a="31862459"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="31862459"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 08:36:46 -0700
X-CSE-ConnectionGUID: y3/o6dVITN27YqMc43kKmw==
X-CSE-MsgGUID: RBt1hcs1T42MPcOH2TQqAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="43104182"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 08:36:46 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:36:46 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 08:36:45 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 08:36:45 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 08:36:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A9ngSD3F1O0alMnhlEZ668T+n/b0RtLpNCtOhVfNMxbutUjqalH5RwM397HlpVC7MdvYo+tGqSlGTGqPVHN1NzoatiD6bHy5QiVgxsbSheDqFy0+6O6KqenV1mfdvdSHpS5vWZqUyz7Bl2oaR0HYYOBtOcI6XVDMiZgId4D2GO3KWaO3LrRijmw4A4XsjshlTvHx+bc7Yca/qhIaWBSksBIJa8hdQOI15gN0HxB5PMDBL3u+UqHRgCAeEaAjZECnGgALc0yJpBxbmV8BDj+fKEZrGDrpC/FFOeVgX0UjhaKgKViVH0Yod4P+NzKERvWfsMop8sN24VPj6Kzg1HUVtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ja0uO8EHdYGdH6KEspv7tpeqAj/o+tyi6DAW/ANA9Yk=;
 b=elRZCULN3i9ECbGXZkooprptYYaDRXH0yyZ44jRfu53f95IBZvuKXKpvEVhf7uyLnQ4emGOQ46U+WB0922U25G73df0uS/DgNmR3oJ19fJR4PmmV9wHJRsekv6hUdHMlzNTvw8RZQiN4yepjEnnZSkcBYb6Y3iOwy7x9xG2k75vUtypblpnXuocrWv3wwzXDV12s+ynKFtvzA6+a3lIfyTotMwHeIY81RxC1VWxtXW23WzTrspZlH1deKJB1DYhSDLrcnWJt2l1iLbBegObH7bA7s0zeCi5suz2vqAyFIXjKhBlYZeckrkVM+Q3cVV9EZVqBH4IZvE60a/h7OepR9w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by DS0PR11MB7459.namprd11.prod.outlook.com (2603:10b6:8:144::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.27; Thu, 6 Jun
 2024 15:36:37 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7633.033; Thu, 6 Jun 2024
 15:36:37 +0000
Date: Thu, 6 Jun 2024 11:36:35 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 07/65] drm/i915: pass dev_priv explicitly to TRANS_VBLANK
Message-ID: <ZmHXg4sNdHYoHa6B@intel.com>
References: <cover.1717514638.git.jani.nikula@intel.com>
 <c33739ac6f26105fd1ad79b0027b6626e241c7bc.1717514638.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c33739ac6f26105fd1ad79b0027b6626e241c7bc.1717514638.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0021.namprd05.prod.outlook.com
 (2603:10b6:a03:c0::34) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|DS0PR11MB7459:EE_
X-MS-Office365-Filtering-Correlation-Id: fc0610e8-5915-4913-a905-08dc863e7404
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eOVfvlffpzRxZFF/ekvAaCAyW+sUD0PA5iIrC04vWjLlHICLvf5db1AQHGNO?=
 =?us-ascii?Q?3vcjb0CPfiKSg4T4ZGHYR87tDKPvceSEjHOllkv3J6I/4CSanzBtJxKxWyB/?=
 =?us-ascii?Q?KOZv+xIyD4JfbHeIUlcM0v5bHSSMb76NAMs7YxiLdBj7y3a+hpZrouhn5kIB?=
 =?us-ascii?Q?BntPmIKpeH4nHjARB/5I0hLiW/IlwX5RMgnaW3R+aiiTpFqvN+UJAJqpgRtW?=
 =?us-ascii?Q?vK3SXe3zjHwf7eb+blWJpLG6H402exMUVultkIKgw82+GjY72Og9mpNsYGSC?=
 =?us-ascii?Q?Bi3hxzEPEhQ04g2wvN4fEcrsO7o1aAWyc6xYg3EqDcI2yGWzM3bXx72vTDRj?=
 =?us-ascii?Q?jwTK2ndl7J8iaSd2Rwd0bGiSUsIVRZ0ocuceRGpWrvaYY6owf3nNa2LLtOsF?=
 =?us-ascii?Q?pKeK2e7yAbGhrh6aLdL1AE1XOn0exIj/oWaGx+zxYON54J+USmMJHe9MPPoG?=
 =?us-ascii?Q?rQzlBEg7AsFMmV3pnIzDtFIoXlwN7TzUBqMmK2rpd4gsptZMCFuAQvzxO7UW?=
 =?us-ascii?Q?WNmz2wud+EeDyMVffjbEsT0UadOfSYkvkAF9MxF1wezosvFM6el4EaKUxI8c?=
 =?us-ascii?Q?RTPm6NdhsTz4fYgVckfXMjnvwbH1ZpkuVzWYP7JDG9JUaoInM46xRYS0j4KR?=
 =?us-ascii?Q?L2iXJ1lVX5Iu8hqBOeAYwA7L/TvfnK9VWUQqtPGNlFn6rwVHBhYA1LA87h/Y?=
 =?us-ascii?Q?HLJOSo6kX4hYN6+NINtJJBJK6yxMh6BG0aCeCeO38ZURPFko3woI7qG/6BSK?=
 =?us-ascii?Q?5PkNby1IIKcI6/YTPuO90GSzo2aBvn4zua1NZr/+aQt8+4wAyfYcmp5w8g+k?=
 =?us-ascii?Q?kf+a4TSQrca9Q4Wpwj3+RpKHX+NWAsOXK2WNAyehSKB5fEuWYJ7aWN7ewz1U?=
 =?us-ascii?Q?UJescmlqmhuW3dN0qrNqm3Aq5uN0MYVAHzSViqqWFYKOCsr81tMv3yaq9cRL?=
 =?us-ascii?Q?rpzWQyAdCtA1iOAXv8HnDfNOOAV2+Hp1Y//HtC5pJE7VC7yVJTr31fRf/+zg?=
 =?us-ascii?Q?SCvxQuzAXOjXlG8pqTT8Xb248aHq2j1iDtx2Q26/pT/Iza7vK2JjuCrDQUBs?=
 =?us-ascii?Q?z+7/31Rr8ocWrJXsSH3bK57Wg5e+lpKkiUOiueKzw9vni+TW2J1AJH90kDw/?=
 =?us-ascii?Q?84OzHI278uaLs2god0Jq4cR8KwTKJyQiKXsTkQXiu5x8aTOJT8dfbAcl04cO?=
 =?us-ascii?Q?JBfnFUiBSv2Bz+qRPef8FkZ0SULmR+8xQmDcUb28Q9QxHoESZjABnZxigWPv?=
 =?us-ascii?Q?NGbc/SwMGmNd+CBB0aue30VgvBzCpWW011iUjqxd51ggWF7SfoU/ICUp9h2w?=
 =?us-ascii?Q?+FfwgS1LsscptLu1wJUTmo+I?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uKFnXeAD2jgGF+7Dr8ECxh7SxDRpw6NA5Lz0LcR//+Z9yA4fcXCYmDafRB7D?=
 =?us-ascii?Q?Trcr80hYT/h7Xe0bioDitVyNmOVgb52cw0URVqKx5IrPRXf15xH39l6NHBB6?=
 =?us-ascii?Q?UkbHKPM3mnEUfta8EWShJlTMFglzSUGpN1Ys2m8sNvyUOKThzJJh1mgOYkAx?=
 =?us-ascii?Q?VPeIMHQ4/MfSv+oeoqzYfrO7WpEuCelDHJ+OEoY11pYfuybudlHk8OCwvHgd?=
 =?us-ascii?Q?RNHzbA58pczncd4ymcEVuLWaJ9lOM8hbwPu7U9C7CvrAxvjUU9llz+alvrif?=
 =?us-ascii?Q?5w4tkuPEUo82e0zui2KXjQmtbl9H1FXsfjj7TymIuJ1xp6tewRIVxiPiDJuu?=
 =?us-ascii?Q?1niS1tG7JMihbHItfKBe8mlnYNfVuCdCCQ0mUskycB0a8V2J1HnRfJNF2szU?=
 =?us-ascii?Q?A7VJji8Pa/e2t/Tyy7Che2rExZ1tDxxfHqbEUF3BCcb08o/xT7oip3+9IhIM?=
 =?us-ascii?Q?hhfJLM1820xS5+Q/wKwtEKAtbMPXCEUCoHQVVWLj1Vh887Tus5GMVGvSbq0U?=
 =?us-ascii?Q?OySOwhOQqiOFL0foV3OL1txXAPa/KHb1kjL+sfbw+UdEpOBdUmNRR91AnOrk?=
 =?us-ascii?Q?1epGB/vqWvmTeYEmyMzpiGjMAZsse7Phy4/lOMtmtnLVriJ8IwP8FWrEHIBc?=
 =?us-ascii?Q?C1YKdA5OSenjjvA11KjJtr9I8gh/lxwFPfJ2XurAveb49fDqK1iEcEvxw5az?=
 =?us-ascii?Q?l2dRgz3tXwNKILPUJyQfKox2+auIq4w6CtkI+8xq5tWWzAzLipYCUwOiQoRP?=
 =?us-ascii?Q?V2BxNW7cajzGCdp1VyU2XrOqOKer8Mj8ybl1cED8x7g9Iiab5kmC0qOLZpne?=
 =?us-ascii?Q?mJQXshf60oivbS1H456EP2bu8BMTS8drIWrZWfNG+2rABUhIunXJ0sjyYjKQ?=
 =?us-ascii?Q?mVPxfOa/L5gQXemOXNbpuJSPmzCykMSV7h9gYQwstGhN5y0MbbqvcMH13+DW?=
 =?us-ascii?Q?7gnlAAKHE9ddWbwAf7/dcubbyuOJbYDUZUhNER7sclW5P0Ks9qpmTR7tXVsz?=
 =?us-ascii?Q?C/xqkvNQtlrqdl0Z6DXlLjigYxKXYlZ11O4qMqOFInhRBMPYm+831n92H+fE?=
 =?us-ascii?Q?9nh8Jv+I8Iv4DtolQ68rHrhU72HNhLgzxMqwYyftgjGwt5eI1g6US7tBICCJ?=
 =?us-ascii?Q?R6ib32A18RRMgB7vbLHTX9HQsIW5xnVfFp+m4gi+XGxTo7Ria1FEFAv9tCcM?=
 =?us-ascii?Q?PvrS1d11Np2+0IeSjNFNgQFogsPnSoHoQS9QQjCroSMDxlCyVxnKa9KP3fvT?=
 =?us-ascii?Q?1c+zzmxQR6tGuZz07DiIpmpE3rpYBy8RSS8VU+LhAwICQGI1aFuhl9yo4uAV?=
 =?us-ascii?Q?IDORzQaEsCShh8+gjxKPkePsBKU+r50E3ORWrc0Cji7VfpCjyMjPXF/YKP+7?=
 =?us-ascii?Q?rICmWUm9xnIxiKXg8rlnoGPZDblUE77fSd9mYlb+qg1KENLjtMNnatOMd/rk?=
 =?us-ascii?Q?hERzbp5kXkWf/wGt0sfJ3dTPJcjTK2fc3UCsqIODbRBf1qndems9mJxDA0+W?=
 =?us-ascii?Q?oIYmXPcRj67ZzzxkjoLa0vmEw7t/CUmXS5Eq1Eflq+GtK0J/7YIhQHJVd9Oy?=
 =?us-ascii?Q?cQp6Gk4cZ6YsG5mFqhZwRnBwJD7s9vfSvNkMXBvl?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc0610e8-5915-4913-a905-08dc863e7404
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Jun 2024 15:36:37.4021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q0jVD12IOAIp7wRGhCYD8vDVIkMOR0AQ8y6QgZnOXMW8X0IaSAQ7gqgGNLV1C/c87f6qmw9WeI7StweiG6iE8w==
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

On Tue, Jun 04, 2024 at 06:25:25PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the TRANS_VBLANK register macro.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c           |  3 ++-
>  drivers/gpu/drm/i915/display/intel_crt.c         | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_display.c     |  9 +++++----
>  drivers/gpu/drm/i915/display/intel_pch_display.c |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h                  |  2 +-
>  drivers/gpu/drm/i915/intel_gvt_mmio_table.c      |  8 ++++----
>  6 files changed, 20 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index f95709321ea6..0ee42954054f 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -995,7 +995,8 @@ gen11_dsi_set_transcoder_timings(struct intel_encoder *encoder,
>  	if (DISPLAY_VER(dev_priv) >= 12) {
>  		for_each_dsi_port(port, intel_dsi->ports) {
>  			dsi_trans = dsi_port_to_transcoder(port);
> -			intel_de_write(dev_priv, TRANS_VBLANK(dsi_trans),
> +			intel_de_write(dev_priv,
> +				       TRANS_VBLANK(dev_priv, dsi_trans),
>  				       VBLANK_START(vactive - 1) | VBLANK_END(vtotal - 1));
>  		}
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
> index 29ab5b112b86..54549d2cfcff 100644
> --- a/drivers/gpu/drm/i915/display/intel_crt.c
> +++ b/drivers/gpu/drm/i915/display/intel_crt.c
> @@ -710,7 +710,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  	save_bclrpat = intel_de_read(dev_priv, BCLRPAT(cpu_transcoder));
>  	save_vtotal = intel_de_read(dev_priv,
>  				    TRANS_VTOTAL(dev_priv, cpu_transcoder));
> -	vblank = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
> +	vblank = intel_de_read(dev_priv,
> +			       TRANS_VBLANK(dev_priv, cpu_transcoder));
>  
>  	vtotal = REG_FIELD_GET(VTOTAL_MASK, save_vtotal) + 1;
>  	vactive = REG_FIELD_GET(VACTIVE_MASK, save_vtotal) + 1;
> @@ -749,7 +750,8 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  			u32 vsync_start = REG_FIELD_GET(VSYNC_START_MASK, vsync) + 1;
>  
>  			vblank_start = vsync_start;
> -			intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
> +			intel_de_write(dev_priv,
> +				       TRANS_VBLANK(dev_priv, cpu_transcoder),
>  				       VBLANK_START(vblank_start - 1) |
>  				       VBLANK_END(vblank_end - 1));
>  			restore_vblank = true;
> @@ -782,7 +784,9 @@ intel_crt_load_detect(struct intel_crt *crt, enum pipe pipe)
>  
>  		/* restore vblank if necessary */
>  		if (restore_vblank)
> -			intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder), vblank);
> +			intel_de_write(dev_priv,
> +				       TRANS_VBLANK(dev_priv, cpu_transcoder),
> +				       vblank);
>  		/*
>  		 * If more than 3/4 of the scanline detected a monitor,
>  		 * then it is assumed to be present. This works even on i830,
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c681a23be1eb..87a690cf5808 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2723,7 +2723,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> -	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
>  	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
> @@ -2760,7 +2760,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	 * The hardware actually ignores TRANS_VBLANK.VBLANK_END in DP mode.
>  	 * But let's write it anyway to keep the state checker happy.
>  	 */
> -	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
>  	/*
> @@ -2832,7 +2832,8 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  
>  	/* FIXME TGL+ DSI transcoders have this! */
>  	if (!transcoder_is_dsi(cpu_transcoder)) {
> -		tmp = intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder));
> +		tmp = intel_de_read(dev_priv,
> +				    TRANS_VBLANK(dev_priv, cpu_transcoder));
>  		adjusted_mode->crtc_vblank_start = REG_FIELD_GET(VBLANK_START_MASK, tmp) + 1;
>  		adjusted_mode->crtc_vblank_end = REG_FIELD_GET(VBLANK_END_MASK, tmp) + 1;
>  	}
> @@ -8198,7 +8199,7 @@ void i830_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe)
>  		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
>  	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>  		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
> -	intel_de_write(dev_priv, TRANS_VBLANK(cpu_transcoder),
> +	intel_de_write(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder),
>  		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
>  	intel_de_write(dev_priv, TRANS_VSYNC(cpu_transcoder),
>  		       VSYNC_START(490 - 1) | VSYNC_END(492 - 1));
> diff --git a/drivers/gpu/drm/i915/display/intel_pch_display.c b/drivers/gpu/drm/i915/display/intel_pch_display.c
> index 611a9cd2596f..03a33ff2653a 100644
> --- a/drivers/gpu/drm/i915/display/intel_pch_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_pch_display.c
> @@ -233,7 +233,7 @@ static void ilk_pch_transcoder_set_timings(const struct intel_crtc_state *crtc_s
>  	intel_de_write(dev_priv, PCH_TRANS_VTOTAL(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_VBLANK(pch_transcoder),
> -		       intel_de_read(dev_priv, TRANS_VBLANK(cpu_transcoder)));
> +		       intel_de_read(dev_priv, TRANS_VBLANK(dev_priv, cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_VSYNC(pch_transcoder),
>  		       intel_de_read(dev_priv, TRANS_VSYNC(cpu_transcoder)));
>  	intel_de_write(dev_priv, PCH_TRANS_VSYNCSHIFT(pch_transcoder),
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 3b48022b29a7..155259c11c88 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1221,7 +1221,7 @@
>  #define TRANS_HBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HBLANK_A)
>  #define TRANS_HSYNC(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_HSYNC_A)
>  #define TRANS_VTOTAL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VTOTAL_A)
> -#define TRANS_VBLANK(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
> +#define TRANS_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VBLANK_A)
>  #define TRANS_VSYNC(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNC_A)
>  #define BCLRPAT(trans)		_MMIO_TRANS2(dev_priv, (trans), _BCLRPAT_A)
>  #define TRANS_VSYNCSHIFT(trans)	_MMIO_TRANS2(dev_priv, (trans), _TRANS_VSYNCSHIFT_A)
> diff --git a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> index 5dd85943e0a1..baeedcdfdcab 100644
> --- a/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> +++ b/drivers/gpu/drm/i915/intel_gvt_mmio_table.c
> @@ -235,7 +235,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_A));
> -	MMIO_D(TRANS_VBLANK(TRANSCODER_A));
> +	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_A));
>  	MMIO_D(BCLRPAT(TRANSCODER_A));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_A));
> @@ -244,7 +244,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_B));
> -	MMIO_D(TRANS_VBLANK(TRANSCODER_B));
> +	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_B));
>  	MMIO_D(BCLRPAT(TRANSCODER_B));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_B));
> @@ -253,7 +253,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_C));
> -	MMIO_D(TRANS_VBLANK(TRANSCODER_C));
> +	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_C));
>  	MMIO_D(BCLRPAT(TRANSCODER_C));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_C));
> @@ -262,7 +262,7 @@ static int iterate_generic_mmio(struct intel_gvt_mmio_table_iter *iter)
>  	MMIO_D(TRANS_HBLANK(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_HSYNC(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VTOTAL(dev_priv, TRANSCODER_EDP));
> -	MMIO_D(TRANS_VBLANK(TRANSCODER_EDP));
> +	MMIO_D(TRANS_VBLANK(dev_priv, TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNC(TRANSCODER_EDP));
>  	MMIO_D(BCLRPAT(TRANSCODER_EDP));
>  	MMIO_D(TRANS_VSYNCSHIFT(TRANSCODER_EDP));
> -- 
> 2.39.2
> 
