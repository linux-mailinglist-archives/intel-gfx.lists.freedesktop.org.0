Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A19499AD6D4
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:41:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70A3710E86C;
	Wed, 23 Oct 2024 21:41:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G+4A4OO+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E72D10E868;
 Wed, 23 Oct 2024 21:41:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729719679; x=1761255679;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iQuC0ftWMPycCh8q+5TJUTdtLdRup8/E5vbIGJWAw5c=;
 b=G+4A4OO+NjRIWxfnPTBiVMovwgEdbYjadQWUfKh9TxZ9eQjeA4f+1il0
 /GFfAGQlz9kNFMA1rNQyJ1uVq+E9dXzCMlHeq9lUbbjvEBGnXrV5ZNFjc
 M5ofyRPSryyuXyK1YCBsYRyitqQi20mmGcSCoOn0AOsFI1+gRyXKOLGag
 ibXJxNeeHbEccwfFxeXCHrAOw5FaKRibp+HzR2Gjunyvm+j9q5SXNnUM+
 TTaDQ4q6IzbUJcu7yk/9rdsAVX+vqjzmmDKYiTf/02HqXt0s4cSauWslC
 baCua5wjFxGk2WbSpOZjHpzf8cZ4fN6adm9sVIa6QSnmbA505eD5urzoc Q==;
X-CSE-ConnectionGUID: DpOht6QCSYith9a9jqQW/Q==
X-CSE-MsgGUID: oNYOTHrSRpSxEk9Uc1lYTg==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29492934"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29492934"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:41:18 -0700
X-CSE-ConnectionGUID: KtL/nTY7TTKeEgQoLybtFQ==
X-CSE-MsgGUID: mshNdufgREGn0WOSJvco8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="84370346"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Oct 2024 14:41:18 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 23 Oct 2024 14:41:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 23 Oct 2024 14:41:17 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 23 Oct 2024 14:41:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gyML/t1nTCSwaXcP3eDDoeWv3yVIgAjySkYaBczk3iuXUwbFk+7AVAUjGHZWu+QqJwJHJT+8827avUr3iONKODCacuEG0effF93dcQ6cDFhsQjb+VZ5sBDGFBWLGhpI9EjD7q43Q/WiHZNThYNnbymsuSeZvV08fqjhISsJL4BRbfWlvRUM5BtB74f696RYeHZQ+RV59OpZw3YxhqvqAyEI+NS3W8bBzDolyS/BcPCcXjLosixR4TPttMUjBBx52rziaZXNkBF4ei0DnW30ZnXRhhjy1fjbRRmzjtok0J8i40/AcmFP6imYaa2/1cQQLHGCNlljtzpQ/taMM7d9jiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IfGJIkDd3MWKqKkTs1UQ1c8VM5b2AxQ+3JztOFIunMo=;
 b=RVGJHRVY1Dw90O6XnXXVwGVZ39efSdg7OKaqgmjArGS7qIcJDAvX/6XxF+S5SYKRdWARYG+pq4rmWQnevG9qy1b5diFcQ/7EZ1YzC0QhnS0qE7jY5HGQSczRfIODtg8Iu8YQBP8gyRDLH34vACh/bPOVxpDrcOOpz5OEuiZmer+KHANdBJr10hoV55Sms96IyLrQKs0ZqAna2yjr0LkMQcfouBR6DrZl7Y9yFw9pc9OrQvoJ3Gr6L2s7YoVlKYlWhMAZrdDtv5b2eIiBUVtMyvhYB86ShvKE0foLcSNXeAY4f710pzHB+Vt7F3ZzgyhQzJjQ1SatS1UCTn0bz9+LpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB4964.namprd11.prod.outlook.com (2603:10b6:303:9e::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.19; Wed, 23 Oct
 2024 21:41:14 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Wed, 23 Oct 2024
 21:41:14 +0000
Date: Wed, 23 Oct 2024 14:41:11 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <uma.shankar@intel.com>, <vandita.kulkarni@intel.com>, Arun R Murthy
 <arun.r.murthy@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/xe3lpd: Increase resolution for plane to
 support 6k
Message-ID: <20241023214111.GJ5725@mdroper-desk1.amr.corp.intel.com>
References: <20241015061011.2087826-1-suraj.kandpal@intel.com>
 <20241015061011.2087826-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241015061011.2087826-2-suraj.kandpal@intel.com>
X-ClientProxiedBy: SJ0PR13CA0097.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::12) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB4964:EE_
X-MS-Office365-Filtering-Correlation-Id: d2786a20-6153-4262-9286-08dcf3ab6b43
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2YiCxniY9xf+KG/BLkVS4KsfDjV92us9blidcajeDzX3K+BiyutgIMNuUDs9?=
 =?us-ascii?Q?2syxJheqs1YVAYLs8ph4ErN/BYR/qt1DpuN+9jVhLFxdli2iR+JVbygnArVB?=
 =?us-ascii?Q?QrF/lGiI2ofSfUXDytUKWKsT2LBeyLqnljePoeJi2vysp4jCkzhyVEv5/PG3?=
 =?us-ascii?Q?K+PqzVdMzWxXQ+1FBB4c0trotz6YdZrGeKztUWJ5e77rfn4RJXjL/GAxTdzm?=
 =?us-ascii?Q?Y6y4pkktrCRmpapkUgRycE/HB6WZvgGkkR5wCaI2GhACoibEc8ZASwml36F/?=
 =?us-ascii?Q?voMTEMIPu6FrMuIfueHhcVhIPdxj2+5GEa2Oz1Uk8v9xp50Jt3TrbIBs405S?=
 =?us-ascii?Q?AK1Zq+nOBN6m4tcR3wqi9BkQa2TL/9LNhc5OeSCLStfFWsvazFScdf20+tO0?=
 =?us-ascii?Q?rjh/P4UpAkj1jK07ZnyezQM1AfYjNx4Bc0xHeH0smfxfwbfhXNmCKkYkXnxc?=
 =?us-ascii?Q?N16ShVLD3BlLFX5L1JG9v4sZY3k7IKvpCKdiL0R0eVWGhtg40H86xVEPzrVH?=
 =?us-ascii?Q?cPKGJehe3uL9lo+Lb3gDjJp/hAsBNmHYP2WWYL+pYKQ3YwDvWtsalWwWhRZn?=
 =?us-ascii?Q?B5JttRm0bYQENX/5gyODYcchzuX1j5ruseu9qDRTk+C6vGTCmMfCOdFbo29U?=
 =?us-ascii?Q?JNUo+h9OEk6AwtHkB9wlLHsOc/f2A5oGEqnjo2N+3fTaCBRkYG/tdZC/XRNP?=
 =?us-ascii?Q?OT8x0vRvYNdpX6+31B6PjggczmmyNm9M1JVxCg9/74PGS02o3YaJlFerCnIy?=
 =?us-ascii?Q?EtFzQS8MT9gZYPQAOs1MWb74SRvAK7onKCpfBLvtCdkIUxt1ew0CVvkXhRSu?=
 =?us-ascii?Q?VRGFDCwKD/N+2QptBREiNwZCbrHxiNgT5TzBRN6+hZx4TZaaPEBxVBmwQdg9?=
 =?us-ascii?Q?vCIV4T2l/K1z0cxblxkop/VDzdAyJCguqUPiocsBLjwR8a48apg7w0z8xUby?=
 =?us-ascii?Q?SXPSnDFAzKDlY3hmYShg/bk8ASEo5ZIBdnT8JAwrwzzUD1glhXm6swoYFCvV?=
 =?us-ascii?Q?FAkfrmCxqqH/Y/SR1EBxb3LXIsXserWBui+yQWc3qYRvrm4tRgAnrDWrvkYj?=
 =?us-ascii?Q?suEBu0LSYDCg26r88+okxAoaHzVjvJn+4HIlC80foOa3kzgb+HOvO80oiKTQ?=
 =?us-ascii?Q?MHTFMhWh0lxP5PuqunEuPZbPvPZ6DnAhNTggV+4K9HPP8XvT3TXBnc9ayTfL?=
 =?us-ascii?Q?7yLJvPVjP3BK4XpqiwAI/2vsEJ5/fOW8ctd7E7ky2VmYofbkVEbspgVLdIan?=
 =?us-ascii?Q?rPK/Cl4QWW8ZwdhuM7NHFZloEX8FWjlk7nw85I0sWEmUKKCsP5uREk8fmBZc?=
 =?us-ascii?Q?6pIH5as0cj8/OqLO9TX+xTJB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0Vs8XROe4h22Qq8JdjRItZavUAOJHP9TGi4wawz5TfcBmPdpwX7vhSNsfrb3?=
 =?us-ascii?Q?Fo8W128Xki9JjmxJkp167DoWVNhOisB9YS6ofpq0Erf8kXJ/Ci8Y93zFkUtS?=
 =?us-ascii?Q?1N0ByO8pYjcewqhHnztWEgy1tL5XwolIguM8BGCGEZZYUGmZBsNURxZCJ0Gl?=
 =?us-ascii?Q?GgYUaUlbXKsARjlSH5ZnLz2CKdzyN7+yW+I4pDrv1jQOCmC6zr1nPUuNHQDQ?=
 =?us-ascii?Q?edHPEBWjLW+NycK1pwUK9c4DQ6gnFPh+w8FOJ34u05EjpP1ftJgf1TxnGvvt?=
 =?us-ascii?Q?/0BIfr232aRceuyT/N9SDk62raYmxGvOwNY8G2gpXx65lYiLCf9qXMuAnvDR?=
 =?us-ascii?Q?1QvEUpTf3wm3rI0w7TFSjG+zyhpxBsj+MIlKbLZMC8/OlaxNL7TEdKMVehBr?=
 =?us-ascii?Q?ejEpAQnJzFM3+V2JrsEB/E5g4n+fOeR162kfYtcgn8uBxls0KjTp4xmHi6a/?=
 =?us-ascii?Q?R1wPjMmcaEiULdCZx7ERiYRkvJirB6DRa6DRmW/VnV7OTqCtt/Je+2HcHgW3?=
 =?us-ascii?Q?RP8QPc3NphZt/2H976u65WVEqDoFHwdShBWJt+E1zqtkAu0UTIZomVGp5121?=
 =?us-ascii?Q?yv6dnHdGxzx5HLTQZPoJaGNiakr0KAc4VxJ8A+Nm7v3gH55YeOFTEUXCe7Cb?=
 =?us-ascii?Q?vVHbGlHM6xOLLM2w9CdIyU9KIUbUCHeNI7v9qIJlPKyDe7yp6N4JYKi9NCAJ?=
 =?us-ascii?Q?hjpm/HQNP/oMoktAZ3PqNgG+KuqunM7SMaCPKmmmDJx924tnSUAh8HYduq+1?=
 =?us-ascii?Q?gFED6xSB1tI6WS/I5IHMYbaBHvZkbaRtrCJpMHo4vcY1PaBC1vD1196nkMcu?=
 =?us-ascii?Q?wZXOK0isJO5QhkkOsCEcW+ONYEJGBRNckerJiN5K58cjneLNhPmlL+0nbOHK?=
 =?us-ascii?Q?mktzaAS+bZLde5/JebtKZh87Om/Q4I8Bd2T4nBpna8WcHWCWHJ9tJcRaTP3w?=
 =?us-ascii?Q?PxlkY3j+0kn2TQW/zy/uDwcOE6pJKJZQrzke7E+WFPYSuA8Hh/MEzfbZ1lIK?=
 =?us-ascii?Q?fUXnpZWJQCBh+Z8p5M/sh6X6oW5HCwHg10C/16CS2UiZGt06PbD/JMg3e0b9?=
 =?us-ascii?Q?72N4n0gwTfMClPAqpolOkEj2MHnXMxPyX2CKMo8XCIDFd48YYyIiKjNHEy8i?=
 =?us-ascii?Q?eFPSgXnPq9X+9YfvBdWfrzXnqddVL6826P+OXZ5yVKTTknBUdpTmAoVSPdVG?=
 =?us-ascii?Q?HZLFZFEDEJStiT+6k8haJwRZ2sL3IQwFaXvyHwAEB+I11ODABJRDQb0viJmz?=
 =?us-ascii?Q?D5FHdCJ9Uql+CqP3eyEgu99kVI5DtApmjJ//zr8l9sk5NC6jPTnX2k8dQJYv?=
 =?us-ascii?Q?6q9D1Uv2NFRAmYyTxR96cjMfI+r+srVfx85tbjSMEZRJFAoYMMO/7VwGhJCh?=
 =?us-ascii?Q?GaYVAbawzh0Fc3B8Qcj7MXIjYa+p/jdC08go8UA9INaHYN7aagE18nziWcq6?=
 =?us-ascii?Q?phsstxW5nhNJb3kRAWOVa20nb7dmERjIYhXE58paIFSHUcwOnIDOrarvoZD9?=
 =?us-ascii?Q?KYCygT3esXzh2ipkWp+lv3ax7ZcrOe8eoNcH6Fmq1GNTymeGDB/sYkFTDzpb?=
 =?us-ascii?Q?GTOBfh1Gn8EuJWUZEevuphuN9tu4T42GN9cgb/5f2Ru0xf8Wp7c3hDR2dUdS?=
 =?us-ascii?Q?PA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2786a20-6153-4262-9286-08dcf3ab6b43
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2024 21:41:14.5760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jkvcvnq9uWGlpb46Odw6jEzr3Hh15D0I0hr63nocqh2FsujK68NkvvX2aGy2T+2wPF8hV2CXNWTbF2cUWBWBCjk9TbeWIiKazINWpo60Udo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4964
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

On Tue, Oct 15, 2024 at 11:40:08AM +0530, Suraj Kandpal wrote:
> DISPLAY_VER >= 30 onwards CRTC can now support 6k resolution.
> Increase pipe and plane max width and height to reflect this
> increase in resolution.
> 
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c       |  5 ++++-
>  drivers/gpu/drm/i915/display/skl_universal_plane.c | 13 ++++++++++++-
>  2 files changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e1f6255e918b..37bac53f996e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8432,7 +8432,10 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  	 * plane so let's not advertize modes that are
>  	 * too big for that.
>  	 */
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	if (DISPLAY_VER(dev_priv) >= 30) {
> +		plane_width_max = 6144 * num_joined_pipes;
> +		plane_height_max = 4096;
> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
>  		plane_width_max = 5120 * num_joined_pipes;
>  		plane_height_max = 4320;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> index 9557b08ca2e2..4dec9e693218 100644
> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
> @@ -431,6 +431,13 @@ static int icl_plane_min_width(const struct drm_framebuffer *fb,
>  	}
>  }
>  
> +static int xe3_plane_max_width(const struct drm_framebuffer *fb,
> +			       int color_plane,
> +			       unsigned int rotation)
> +{
> +	return 6144;

The Chroma upsampler is still limited to 4k, just as on past platforms.
It looks like you fix this in a later patch, but we might as well add
the check in this patch so that we have the right values right from the
start.


Matt


> +}
> +
>  static int icl_hdr_plane_max_width(const struct drm_framebuffer *fb,
>  				   int color_plane,
>  				   unsigned int rotation)
> @@ -2573,7 +2580,11 @@ skl_universal_plane_create(struct drm_i915_private *dev_priv,
>  
>  	intel_fbc_add_plane(skl_plane_fbc(dev_priv, pipe, plane_id), plane);
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	if (DISPLAY_VER(dev_priv) >= 30) {
> +		plane->max_width = xe3_plane_max_width;
> +		plane->max_height = icl_plane_max_height;
> +		plane->min_cdclk = icl_plane_min_cdclk;
> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
>  		plane->min_width = icl_plane_min_width;
>  		if (icl_is_hdr_plane(dev_priv, plane_id))
>  			plane->max_width = icl_hdr_plane_max_width;
> -- 
> 2.47.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
