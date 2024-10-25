Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DED419B1315
	for <lists+intel-gfx@lfdr.de>; Sat, 26 Oct 2024 01:13:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F31910EBA2;
	Fri, 25 Oct 2024 23:13:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EMdV27E1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AAA3E10EBA2;
 Fri, 25 Oct 2024 23:13:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729898031; x=1761434031;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=KZCN0tFzJp0ee0rkjYOx14SZ+iE91R+t6E7nlL8EW6c=;
 b=EMdV27E12pek4jalShW/0oFb3O8mCWZpipav0LYnkytJ9fAnpctpnk5T
 d//rAdTzv67Znwnw13LxLhYrvfCDe9p0nu9yCa76Cwv6vLHiryAh66x+d
 Qg0zaYlugTCZ8DUx2GrIAmOWtSOL4S8sva7kKjeL5VEZvO61kzua+DWzj
 gzbVRIVmZnjWPzsuodS7dVGOHVqr+1hqyqDdAIE/cwmR7rMQ4djejgRwi
 dEOARYxKFs62SJ9BBVUAiZ0Yg44tubKnPtp9UmMkDR5elx3yhHba9NGXQ
 CW/RDtroSHpNqGn6Mja3Nu4hnRltcwlYYMiPUW5VAWjD79rJMnm97hp7Y w==;
X-CSE-ConnectionGUID: UphLhnr+TdWx1YFYRHRtGA==
X-CSE-MsgGUID: 5in9H2HvST6n78dvttzlrA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="40683755"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="40683755"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 16:13:50 -0700
X-CSE-ConnectionGUID: bB3GdboCS7ip/zi96kM2qA==
X-CSE-MsgGUID: G7h+lwEvQFuHcp42sAo60A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,233,1725346800"; d="scan'208";a="85836053"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 16:13:51 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 16:13:49 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 16:13:49 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.42) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 16:13:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DyuXQteU46BurCzkGGOT9ojVu6ndlrRc6RZ+zxC396WwTkXkGCznyl7sFRNsXmWaoOB2fcmgVRQ5vo77UH1LYv541BkjBWCiFrmOLrRmqbLEo3rSCseB7OLi3exeyP9QMySQnQLG9o6CB//DLZk1fJFM87z1cVMUdXFao1ksgZFFJwbANyVMGEftld4UxdumIp3Q+L3rRxjlwqffRiNPEiGtCTFCBJJovr8XQWfdtKJJjxEjhI7JzeApWMCDC8dnzjZO94z9ClHQYaEA2CADyLPrkGuYrIuMScoM7BbmtjUNyrS7XMq/Ha5XpEq0Hn5lNAsF6maDdO1GK7YPSMhNKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KnCI4qXgjooK//9Ssph+IKX+ydA6JVClckBrhInnQBc=;
 b=otQwqb8nAihCbUClknQYx6MN7nhD3jgL3sR0w7u4oOgA1c4wwrJSmPl6Pk2UJprhCHtAj7oRmgN8eU92dgS2nzeO+haNv7aH/FaeZJjpnpxlSmOV7Cyu8IHq2NhVtqTCLxUNZIHZj1i7ye1SpV6+9TJHRe2ksPnLrZJhpFTE2omtgk8bSxSYbaPg3LZ43145Y7hvbXlDh1rkpJg+Ihc3slE/ODoHPT1ZNdVvLhsEsXZz8P6SGwc2nBbPIw/l27ePTIsIJWBzICqqSmVpOfzFgImS3PsdZ7gmnOM5cEWDo25/VMniV9cKBd6aoH8R3xPnPJMtb62x+rTqXDHz9JUIHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by IA1PR11MB6369.namprd11.prod.outlook.com (2603:10b6:208:3af::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Fri, 25 Oct
 2024 23:13:46 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 23:13:46 +0000
Date: Fri, 25 Oct 2024 16:13:43 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH v5 02/11] drm/i915/xe3lpd: Disable HDCP Line Rekeying for
 Xe3
Message-ID: <20241025231343.GV5725@mdroper-desk1.amr.corp.intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
 <20241025204743.211510-3-clinton.a.taylor@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241025204743.211510-3-clinton.a.taylor@intel.com>
X-ClientProxiedBy: SJ0PR03CA0114.namprd03.prod.outlook.com
 (2603:10b6:a03:333::29) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|IA1PR11MB6369:EE_
X-MS-Office365-Filtering-Correlation-Id: e1a0f0df-44d5-4fb5-9bdc-08dcf54aad49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?/s0VlBJ0LeLZ/SMtEzCJ0cCYZ9ZeRmUwao6/wgvaODS29PR/EDRXlWg12rXu?=
 =?us-ascii?Q?I9Gqe0kfvub0bYc8oS3CWvTf3RWKDvcaDsJ4R54MI0J4mHvp8FPzotF+9TSw?=
 =?us-ascii?Q?R6tWSKTIB5xEENv8nro/PfGX2BPuuVVHHkcZ0js92yrh2TZV4oi+Sbf7Wxc9?=
 =?us-ascii?Q?MclrUwbUidymxC9yv2eP0ap2QX46qmXaOqdMuqXxz+yF57cbudcADeZUO202?=
 =?us-ascii?Q?GDrZPTPKvgyxD9AnJH1marefRbPcnFMQestZ70zkfZytnmOUxvjfB8nTuwvt?=
 =?us-ascii?Q?kchhpjpOiIGdDo6NpgfW24Slt7TwyTj8z6KhgbV/eaTpQ/tOiPKj8gfL4GNP?=
 =?us-ascii?Q?b5z3UClWBO4XOwWlJXgXK8kURQupqZNegu7YHBSrcZZ8QCwWytve0pqWqh2Y?=
 =?us-ascii?Q?VgtbxSFo5FbPyqSlFl8To+i67Lx5H8A/yMaez1PlcaZJP5A6AGFJM1mCaCmC?=
 =?us-ascii?Q?BkQzv0xhFiZqtFWQhXaD4MEP97mT1ftmfOLfcEeU2f3gXMMTLWxdJHtX72y7?=
 =?us-ascii?Q?JIkEpscQfIVF2Zs/NVACjd6GZDJxEOsmhfCXmjGeMAIAWQF8Hhn7yuFsK9DR?=
 =?us-ascii?Q?QJcz2/zvLw37YAjn4VSvVo1WSH3Jr2EpACUpMhZmyJAoJKhY7SN7ArBpCVA2?=
 =?us-ascii?Q?cvj3Xew3d8JIStMJttYu15wRDk1+Jc0q0LGFNf/DZTeT+Z0UUEUdcbEiThf0?=
 =?us-ascii?Q?/5L/VjRTWMxlPClFQJNvt4NUvq6GlIQbY0RAdG5KEcD+tjsGvBlc73oHLXpd?=
 =?us-ascii?Q?siMd3j0BPY43xvW1T8GQ9+uD8Jm4K4+RUnHph0dchpX43pVqJq89BUHptLDo?=
 =?us-ascii?Q?jCuNHMxr8l9+miFs9c9Xt8nQoCKTmJzm85gZSQbLxOAnr/pb/wi2xNS7B/2r?=
 =?us-ascii?Q?GT/8sGFDWlfsYkfq5IFN4NJBV+gWMnwPgbf1aM6wgmi9q214i1Wh2I/3evYI?=
 =?us-ascii?Q?64FWy5IZc/zJ5qXRoMTyxV06FJ6WRs6+EvoMFbZFXSxl8sqXQRbCMA/WJZaS?=
 =?us-ascii?Q?Aji0lWKS02uprMiRKUR6XG0HoGVNBHR/Yoc/eKBTo0WTbJDMyuBy4805GwTu?=
 =?us-ascii?Q?8b9lIs4zXgoO/wXGNzp+QfsHLSVA/0fph/05BVScUl/XHwnA/WWQvVxr+4/R?=
 =?us-ascii?Q?jiQ8ht+PNSGA0SErp98GXfz7dMb5ud2/bflMtgVNO4mWssDQxjmsgW0IdD+c?=
 =?us-ascii?Q?/rULHC3WGEHWaCuC3Dwtc9HNiRVuqnQq1RZiRyjxBlx3ih8omMk/O8RmF/gj?=
 =?us-ascii?Q?QgPhBzXiImudkuv5yuq+Q3gOazFeLYPQwtLLUQoS4+V/3N3B6ZgY0fmCxc4s?=
 =?us-ascii?Q?6S7RNfeljN2lqYFWpcJ35pgM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?+XWXvN8MYMgMXMFWUvauLDzAQaURndh1kNLFual0Wt0czoSCVvYjd7K6YcDt?=
 =?us-ascii?Q?5MyN9L7BgVUQ594WJC+WfiLODCCpEYy1qzgHsMVvq9ymE4C3EO8GosGvM/uo?=
 =?us-ascii?Q?Z0EGqgB8ydKsU2tp7K7a61wC8HhUQKtZ/8qaHrAvMqd73mcSPCwdpHqCf1Ds?=
 =?us-ascii?Q?8nGGlQrewQ5bmUwncCICfs3fozx1QZ/tnAh6GykOUl6cTlXmLpgemt98ik3L?=
 =?us-ascii?Q?ZJQOHmwORsN4+BFq5K0LfYATyABjfs7VL6TpofQPswJQf8wLG+KFbYyvkc3C?=
 =?us-ascii?Q?7fh4jENfsMb0g1Ti1Vl6e/I95OrwsGc92vwz/cFcB9CMNonPtn6nObx+ysfM?=
 =?us-ascii?Q?o/in3S3+PnUZlC1YPmx7wwLKYcpe2pzflV1cCJ74yZlmzdhjN1pjuO+Ot/Uf?=
 =?us-ascii?Q?OBzmY9ZLBYKnJLqlP0puf4bOmPSY4AW2sI0uBBfVSZFI3wG/7weDGoBXwkRc?=
 =?us-ascii?Q?j/7Shr5Xkc/LTAXN/Jo6KY4nSIswK9xfy12ylCNRwtGNqIMVRsAJzqg7CHsk?=
 =?us-ascii?Q?u6+etNe300kqsCcQ7akhIQ6w35CrBI3B5fFtKFJUhEV+QM80qs2sr7qcYeem?=
 =?us-ascii?Q?XFGegBgqxRdWJYj4qRmencccK5Tvk79caBHlqjr+9A1ndYZDstbm8TbehWB6?=
 =?us-ascii?Q?LQPwsSV17mblLidgKJp/4BbFYsGhOCumAAzt3c2MwYiuvpTiLWpossEf0MVg?=
 =?us-ascii?Q?JPRdW2aFh3S7NubUlJfloA1ucJQ00H7QlTHv+nMnkvz7zDZxXWKZPPyEQI8j?=
 =?us-ascii?Q?NymbwLrgLSdmDo2smMCSNRGP2NpI4UuaZqB3hmr3GiauwSUMcIZ99jpeoCtR?=
 =?us-ascii?Q?tnKUryqDT4om2xg6D9eV7QimdQQetODDsTRvsJaU1Qw0qdoHIJVAdHivlNZu?=
 =?us-ascii?Q?uFd3n3SWIlWamcAR5ulONJkOwT45BcMGnFMcqYVb60IP8Wix4f0+k7ZTDM4q?=
 =?us-ascii?Q?VXeNYADE3xng07vHkLbEBwOp39EtgGhrjezJJptgvWxLh+MA9LIs3Amhf1U/?=
 =?us-ascii?Q?ab+dMl6Dcwek9w3Aa4gkW68hcyfznWzwqhFf/y1YdyGGEtfV5iK9dBX7yY+C?=
 =?us-ascii?Q?fmNN7vAFCLEaGtQlTomZKyiIMSE3JCrrOZtW1KHmmNudXVKd6vnexEWzT59D?=
 =?us-ascii?Q?a9j722ZY/dq6D+d/Dztlo3Utrtyw+p1o4GAAJBDRtDrgt20cFlZXiI+c9eEr?=
 =?us-ascii?Q?J9Wm79nvgChYEOI/YrARtHvpD8PhRGiXTEVN6drZNpPGcoCKhssFZBnC7VMN?=
 =?us-ascii?Q?GvZfT42BPUiT3UjATruY9BJLUNTiluyTudQKP+KIWZlwofjP3dMYsY2nVVmk?=
 =?us-ascii?Q?yAYgWOIgFVp2Ab68eZWcrSroUtwhB41rJWSP93hYkMTdrq/6lHGcDQ7Mq83V?=
 =?us-ascii?Q?MguJux2izrG6XYr5Y4Vzag4/bu0Hsh4849Wkb/QHZ8sZzarQj2nCmZBakAVP?=
 =?us-ascii?Q?cA9ZHlfFUA55M8YLT+CHvlB+d/YkCCq/nwQtDD56HqaLlNO53pTusZo5xjnL?=
 =?us-ascii?Q?DrMIfjC8dAoifS+MeW2GeCO5HzCu5PuowS5gqY3l9Bp6J1TZnIu+rSpB0IjF?=
 =?us-ascii?Q?TKyYA8sdyRHC6n1BK2TuBdNA0+FscKagUWaBe9AyjWkfQF0BqrtS/wfXQ9Ca?=
 =?us-ascii?Q?3A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e1a0f0df-44d5-4fb5-9bdc-08dcf54aad49
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 23:13:46.4888 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +R/J2+p8iEhOCe973usqP59W0ql+kp2wd7twXCDh5ELxJT3Nj+d/ZvalrSnuIlrgh1CHtM46Cy5Ali4fPyMtTfIgm5FpsJBJxlV57zaxLrs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6369
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

On Fri, Oct 25, 2024 at 01:47:34PM -0700, Clint Taylor wrote:
> From: Suraj Kandpal <suraj.kandpal@intel.com>
> 
> We need to disable HDCP Line Rekeying for Xe3 when we are using an HDMI
> encoder. Also remove the Wa comment tag as this follows the bspec and
> does not implement the wa.
> 
> v2: add additional definition instead of function, commit message typo
> fix and update.
> v3: restore lost conditional from v2.
> v4: subject line and subject message updated, fix the if ladder order,
> fix the bit definition order.
> v5: Add the bspec link and remove the Wa comment tag
> 
> Bspec: 68933

I left some comments about this on the older revision.  See
https://lore.kernel.org/all/20241025185808.GR5725@mdroper-desk1.amr.corp.intel.com/


Matt

> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>
> Signed-off-by: Clint Taylor <clinton.a.taylor@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 11 +++++++----
>  drivers/gpu/drm/i915/i915_reg.h           |  1 +
>  2 files changed, 8 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index ed6aa87403e2..7a32bfef8d87 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -31,7 +31,6 @@
>  #define KEY_LOAD_TRIES	5
>  #define HDCP2_LC_RETRY_CNT			3
>  
> -/* WA: 16022217614 */
>  static void
>  intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  				      struct intel_hdcp *hdcp)
> @@ -43,14 +42,18 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  		return;
>  
>  	if (DISPLAY_VER(display) >= 14) {
> -		if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> -			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> -				     0, HDCP_LINE_REKEY_DISABLE);
> +		if (DISPLAY_VER(display) >= 30)
> +			intel_de_rmw(display,
> +				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
> +				     0, XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>  		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
>  			 IS_DISPLAY_VER_STEP(display, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
>  			intel_de_rmw(display,
>  				     TRANS_DDI_FUNC_CTL(display, hdcp->cpu_transcoder),
>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
> +		else if (IS_DISPLAY_VER_STEP(display, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
> +			intel_de_rmw(display, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
> +				     0, HDCP_LINE_REKEY_DISABLE);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 89e4381f8baa..8d758947f301 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3817,6 +3817,7 @@ enum skl_power_gate {
>  #define  TRANS_DDI_PVSYNC		(1 << 17)
>  #define  TRANS_DDI_PHSYNC		(1 << 16)
>  #define  TRANS_DDI_PORT_SYNC_ENABLE	REG_BIT(15)
> +#define  XE3_TRANS_DDI_HDCP_LINE_REKEY_DISABLE	REG_BIT(15)
>  #define  TRANS_DDI_EDP_INPUT_MASK	(7 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ON	(0 << 12)
>  #define  TRANS_DDI_EDP_INPUT_A_ONOFF	(4 << 12)
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
