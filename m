Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B59D92C420
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jul 2024 21:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4220F10E65E;
	Tue,  9 Jul 2024 19:52:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KjgrcVfT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 892CC10E65D;
 Tue,  9 Jul 2024 19:52:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720554751; x=1752090751;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=7/GVg0gJt4e0v/m1/TpO+hQ43d1BrhIjMKlTZ8EuYe8=;
 b=KjgrcVfTEBHRA7j0aYOfNIigQoxE3yVWqF612WPVMG4YXxnQmNozVQH4
 hwg1WAZpxwadf4m12FIzU8EaoibzdNuW4lY+uIdpRK0YGTDM2n4V17sJz
 yX7SGFijmONRBBXoyy0wVVfcsWzdxnIWi5/Z7VNjIA6PXDdWskBd92YQ+
 jWded2e2YRH+H6G9UdhOOgVbLNqSExLk+Ahj5pKgmffV4IKTf95jwwFuy
 AW/1gYDUzWu0hCqZS/S05ea3vThGXffnP5o0dBHDwwvP6OD/OB4qVe+gn
 NPKMeCVNxQ4jwtLE2hMHddSvw1h0xbN5Reu2SHd8WoJjLUzwBkYpIBE3w g==;
X-CSE-ConnectionGUID: 0U/z684fRMqZq8cMpky/7Q==
X-CSE-MsgGUID: NQTaigYvRH6jTlnXp028cw==
X-IronPort-AV: E=McAfee;i="6700,10204,11128"; a="21655408"
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="21655408"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2024 12:52:31 -0700
X-CSE-ConnectionGUID: l1wDat6/QoGPhENkib7omg==
X-CSE-MsgGUID: UeeP2EXGQ4Scdri1biR+tQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,195,1716274800"; d="scan'208";a="47842339"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jul 2024 12:52:30 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 9 Jul 2024 12:52:29 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 9 Jul 2024 12:52:29 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 9 Jul 2024 12:52:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JqegQpX/ZamAv5z/LrtqgV6ruV1XUh+cUMZH0ng6wuqir61obBGNA/uIKDxX54knA3Wf5aXc/OsqKjJtl2jI5GwaSjDBfCDtUYiGO97gWODUEzSo4yLIIoL4b99tPpu9DCNjXCAF/rPiJoKOXFFPVNlq0DkT6jtrOBFLHgwoXLBbN6O9Y054a3L4RNmGzkO2wjIcBYsYBjp/kWVysoYXW9eERiHqSge/eO113bmjuHhuNJDsasqio7PZKeRS11GSmf4h0vtqH5xryZ9bAAjMhl19714bhOzpJNB+BqDEyBNMNeZZdwjN0RUn0e50S+u5IAZWJZGu1H152AIewLEyAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oXSX9t7W+C8Dki5+XEK8fgcST3T+9wEUDTJsa73i6AE=;
 b=nqqQwToVV0icMWIZ33E359szxGMNLwXjj5gT+6IVYvVhnsu3NqnmYm1X0NCI/a+86fNiPHtKGsquzOT5r3GnfMo7+VOd209oa4YajuygK2OW/UTzMsiFTs0vRIefH9uI1QzaFcmsTGzSxWQ2haCrWf9USN51AnzRXtLUnPqQqyaES1PQ6dHrxBCUFK6ntEu7t+i2TtK/J4xwXzf8sb6R7zjPIJ+ZlAAx+n7aKBhscwWJ0QQg4/S1aSdVCa2gza4xkHgbRwwKjUEVgLsl31k9Xiu6Hdy2JDh7j2BrqFWYbIgaHUhg/Knsctsle6NdmwBWErV57uXwQBYMQqSJcMpfsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM6PR11MB2859.namprd11.prod.outlook.com (2603:10b6:5:c9::14) by
 MW5PR11MB5785.namprd11.prod.outlook.com (2603:10b6:303:197::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Tue, 9 Jul
 2024 19:52:21 +0000
Received: from DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095]) by DM6PR11MB2859.namprd11.prod.outlook.com
 ([fe80::4063:4fec:bf76:f095%3]) with mapi id 15.20.7741.033; Tue, 9 Jul 2024
 19:52:21 +0000
Date: Tue, 9 Jul 2024 15:52:18 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 06/20] drm/i915/fbc:
 s/intel_fbc_hw_tracking_covers_screen()/intel_fbc_surface_size_ok()/
Message-ID: <Zo2U8hpuC7nVuRb3@intel.com>
References: <20240705145254.3355-1-ville.syrjala@linux.intel.com>
 <20240705145254.3355-7-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240705145254.3355-7-ville.syrjala@linux.intel.com>
X-ClientProxiedBy: BYAPR06CA0002.namprd06.prod.outlook.com
 (2603:10b6:a03:d4::15) To DM6PR11MB2859.namprd11.prod.outlook.com
 (2603:10b6:5:c9::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM6PR11MB2859:EE_|MW5PR11MB5785:EE_
X-MS-Office365-Filtering-Correlation-Id: e1808f87-910e-4b77-2076-08dca050a53f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?OeDJpuMQv8Da7F2TTeFdo9rIkXnSnQkWtE/99IHSqarBO8hGU24yA2mZNm?=
 =?iso-8859-1?Q?FgxYFQx6WpGSNyv01gqwh7D4HLHK+eJBaAhKzLE2jwVB9o/taAhQ75ixDN?=
 =?iso-8859-1?Q?pbJ+bX1NbtfnUhY2C8PYEHUnAVmqq7Y1jbY/aiqd+d+6nQy3zsTMW/p5kM?=
 =?iso-8859-1?Q?E2ind/9O4nj16EcMmCoZKmYWUj2JgLPFQ+Qo1u7CCPRAHzO/wjdo4n5Tvg?=
 =?iso-8859-1?Q?2hOUIS3O2nW6x1/riXqfjMKa3gekcHNSaj3lrreZwr9QU3x4FlyG+ZWfMh?=
 =?iso-8859-1?Q?BVReXBlL4qj4USVc5doxs/DtNyA7TxVXSkxKbqNusuBA2J5cAyHb4xp4HT?=
 =?iso-8859-1?Q?p9r/GlrJlHaC7EtNOqcTMMfFq6a6W5UHin5b1sX+U3t6Mye8ag4ZZjk4WN?=
 =?iso-8859-1?Q?hMcFg19tCgnA3bOBrKArHUFAADFLBPLdLgDXNH/jkmtd2yF81XCVHr7ziB?=
 =?iso-8859-1?Q?wD7yUu39I3/NlF3HNvbhNhnfNBgqpEFYjzzewZ5R9AqbsHUlb7W9kQrFnt?=
 =?iso-8859-1?Q?Iz81Zvgjr7BaTDozumjlfscXrd07PJSPgkMTMvycGEfd4wWA4f1bYgxsMx?=
 =?iso-8859-1?Q?KnU+Hb0iPuyGyBxuZoGoc3MRt2aPsg54xjj3AfcZ//pjW4tSO8LqMULuuZ?=
 =?iso-8859-1?Q?LKqACcgiTcNM2sK9st9hmETwMQvaGc9xJdLycYRQVfsz+x7jzmZUgxa+AE?=
 =?iso-8859-1?Q?Yml66s/HsqhxEnWjJf/EX5X409hLRy9tqL2qCkNkhZyr3BXKja+KUgyY2+?=
 =?iso-8859-1?Q?CuZGTIfZZFTD+z2sP6hNEZxgTNPcrB+z2Qh6C4g0UhJ3kfezGso/TRgP6E?=
 =?iso-8859-1?Q?vfx/nhcYwKNGy5q30SKi4RPgzBEZCVQPJm2WwdLjBaHCAMQD1FqTg0rTEm?=
 =?iso-8859-1?Q?NBKtm7poxp3RjGvKytn6L0kQH0gi5Aep5YMpM/gtY/lhb7/3GMLovcuSiX?=
 =?iso-8859-1?Q?L/g9X2TXBngL8zBfKDFZ6GJ7tXMwMtaqGnwx1Iahy8Mi5eYEjdb1oXLp4U?=
 =?iso-8859-1?Q?Pi5bv6y4kl5EdSrLUTsjQCcxUjlsx0E7W6GsRit2j50DZ4YVlBiSLsKgAK?=
 =?iso-8859-1?Q?eGe7RHB00hdSVbQkpgFBNpTJG+nWCpw/GdNBzVNIvgwvzSwyrTA21Jq4Z4?=
 =?iso-8859-1?Q?ztOWpsYc7/Sejl5rPekRCnMS+YhuEcsB+cWcSVVhHQL+1+/NJqinsy1GKV?=
 =?iso-8859-1?Q?ukHHXZ/ouX2o9GxNcRSGFruyDexPaLXR+Ht8sl9u7ZLU1aKSm1q6AtbuGu?=
 =?iso-8859-1?Q?7PIkd9f1cE/1KOokHTVdx+7AGYc/QnJU/wueSpjKQTdNZcxY4WTB28Whfh?=
 =?iso-8859-1?Q?5imBv1pIPYB/FudjEZTYpDhm8HyNGZzWc3ZJVmJwS7GlqdM5OUsbUrX0h5?=
 =?iso-8859-1?Q?ZapwF6NBn3HqVxYpNScVZCn7kRCUexjg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?L0no+AEMqsuPktP/f7n5S2APxyDXcDxLZodyr283wjPrhz5A3ToHYXrj7Q?=
 =?iso-8859-1?Q?ZXUiv5HcF9EaTgFhaHFGDC+eR44r/i5U+CSgOj2fZ7hID5KDwMKpHqidqp?=
 =?iso-8859-1?Q?c3FW0SdoWZ5do+2vhNdW9YYny46kfw3h5QixdTzQ/EnwC0l2V6BrNdDhEI?=
 =?iso-8859-1?Q?O2er2CsVmYSosG6E0LmkidEXor8CYgFt5ZuLu+o8VnU7gUJ7f0V0CqMpjT?=
 =?iso-8859-1?Q?HzoSdfzMO/jng3m3gyAyQP/ge9c8PdHWMqYZKx9N0PVPTa1SXk62H5yvZg?=
 =?iso-8859-1?Q?WsGoAG+oCVDzYqSGLjfyiMKuz3hY42WZDGbsJxfazBzCgJdtlR6DylJhcH?=
 =?iso-8859-1?Q?bcGBDzoYNg2yq7mlLj8VbtWKWJzecCU3TFTq4mKOmMQPS7gh5m5HfKQ8f6?=
 =?iso-8859-1?Q?zJh5n8Jb2hVo9MI/+jzXpw5F5a5LfON0ElaRXS2RoBv2Q3Bsq69CjEQ1Kl?=
 =?iso-8859-1?Q?+W4PQFlG9UsgjpLDzIzO9kyP7QtdKmOji/LRu4YgD7NNtc2GcjIcKhnxPf?=
 =?iso-8859-1?Q?S1UC24SlFEdCA4HhAFgm0PHK2duBsFkXnyJxRRnBMa876Ip5UqN/606BHF?=
 =?iso-8859-1?Q?Rwr170zQ3jpViSbsWjK54/LnPrYXXviNlfzU0+oQtkdGNZhvkZzqR52pG8?=
 =?iso-8859-1?Q?DBfNo/BG8J332LTkSEQkgByveXlkTcBG/mE9UL7N6wyaMOHoTRoxKD9y0C?=
 =?iso-8859-1?Q?7WFAk8sVQMLH91h6D4DTsGDIzVapK5Gxuji7oYhFGAh1ovvSmchcsSeByM?=
 =?iso-8859-1?Q?SGeL+fEgyoKAfx/CvdIPScRyd0pyDhLzv01G9FbcOJRuHDPdc7AR3N1Kwb?=
 =?iso-8859-1?Q?XwAza9ICJsTYGFqhgd0kPV3z22PIkqzRLl07b5e0EzZKuNhTvFwA2R9WvJ?=
 =?iso-8859-1?Q?M05/mKCqTNu3V0e3X3h5FVtIftcyElkzO+e8US1Wbwziw/CCdgSJVFBkMK?=
 =?iso-8859-1?Q?Q2fBAwmCSg3iFI1eMxiNvGM4fMHFdcU8SS2+JJUz7VtPGuMpz3O1lxHqWg?=
 =?iso-8859-1?Q?xJscJC+GaKrfjf4vpCFf+8PkugxgPL1YmjgARE7xyiyY1rkHjPpUwuon+k?=
 =?iso-8859-1?Q?KSdhC/7PLF/Ns7Z32fF9NTXAT3khnm+/d6cbGr//LUY23M/b2x3kRBcIJq?=
 =?iso-8859-1?Q?xvBAvTlQN2VuxYUk/evQbB6Cl8FK/9AO7B9V61Wc+oUxKm+xt8BM1mb35f?=
 =?iso-8859-1?Q?0BhjAWykNF68r6YBnfTooF18izBml26Dmuj3Kl7stXFQdpEX8Fz8IisZpj?=
 =?iso-8859-1?Q?jZYKUIYcf4GD52teyC+gXD4R5ssSNeLVAybsnI6+p8cEpVpuqepAEbC/y4?=
 =?iso-8859-1?Q?c/371du0Siv6F5Y+yr1akEDsHhCaWj0tyL7ZUWAPjD7XtEg+5/NDO8KgNF?=
 =?iso-8859-1?Q?iAJBB0+ietM9Fb7cIfW2ZGfftFrceAqfaSXjYuRAqk9I3jiikmv44z5Aji?=
 =?iso-8859-1?Q?u1TypAp4+jYZNc1z5mlWPe/nRA8r+eFRIg4mD4s9D5HG8+b/EsWGX7TvqM?=
 =?iso-8859-1?Q?PPP7h2LxQWwCpBY9JfTTE3dh13419lmcgsd1Lh1iUt6QkWPHyWz2P5FknR?=
 =?iso-8859-1?Q?i1NgN7OxrYwReNh5HLSp+AUkMmnPBUHmHaHsXopRkuiafNtjdgXLvoQslk?=
 =?iso-8859-1?Q?yuTCdnhZF5UWB2pxFwpTs3I9vDp8HoJkSOdCZj3wzDYe+yuHDbPJFtSA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1808f87-910e-4b77-2076-08dca050a53f
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2024 19:52:21.2126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z4Zrkhh07hGeQs9C6h+Nf1T6E7WJ+ZJFcD/q3GoYIlj8gfZjWGnbl+5PmUU1Pny+GImvLZ1xL4lEXnw/Qnm8ng==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5785
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

On Fri, Jul 05, 2024 at 05:52:40PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Rename intel_fbc_hw_tracking_covers_screen() to intel_fbc_surface_size_ok()
> so that the naming scheme is the same for the surface size vs. plane
> size checks. "surface size" is what bspec talks about.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index c7fd774440a8..40a3b4937dc5 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1102,7 +1102,7 @@ static void intel_fbc_max_surface_size(struct intel_display *display,
>   * the X and Y offset registers. That's why we include the src x/y offsets
>   * instead of just looking at the plane size.
>   */
> -static bool intel_fbc_hw_tracking_covers_screen(const struct intel_plane_state *plane_state)
> +static bool intel_fbc_surface_size_ok(const struct intel_plane_state *plane_state)
>  {
>  	struct intel_display *display = to_intel_display(plane_state->uapi.plane->dev);
>  	unsigned int effective_w, effective_h, max_w, max_h;
> @@ -1354,7 +1354,7 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  		return 0;
>  	}
>  
> -	if (!intel_fbc_hw_tracking_covers_screen(plane_state)) {
> +	if (!intel_fbc_surface_size_ok(plane_state)) {
>  		plane_state->no_fbc_reason = "surface size too big";
>  		return 0;
>  	}
> -- 
> 2.44.2
> 
