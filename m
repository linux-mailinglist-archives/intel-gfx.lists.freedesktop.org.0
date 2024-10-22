Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B359AB562
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Oct 2024 19:45:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCF8110E6F0;
	Tue, 22 Oct 2024 17:45:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OnptsZhL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EA7C10E6F0;
 Tue, 22 Oct 2024 17:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729619122; x=1761155122;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=th9EyE/T50IJzvUkjTRXCj2ORZBG+rHVEHZjZufMDJQ=;
 b=OnptsZhLjVT7RlddNHjfSwOn7CeNj/e3rZ2PqSeVDugvY99t5G42qORl
 /nd3cSl/SotMxHAO3jkNOm48a+CoiVoAqo/VzDZlQGmzOT1Rpk+W8SXkF
 sCuABacdS7aA9SOFNl+C6BRbp/8v91vSy48r12Ib9l/aL7DJ4GtbbRSng
 Ipf0QscjHIN8aRYrzXutj0DS725knf1TqDqoIY9W6VJaPSUC2xAUZCMJt
 Hj+Pli+6e+cymZDS/7J6JV30AD5c8AxyTdZlhNUYiWsunX+dNbwIi9fg8
 dbtb2Hay6dk7hnZXmamLMQkXDLma1dZHNWmrwHGz/eOR/amyLug1vNWVO A==;
X-CSE-ConnectionGUID: io4uR+N2RuymX1qRdxF/tw==
X-CSE-MsgGUID: wmc+lJ/HSbyU/baxjOpUEA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="46637313"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="46637313"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2024 10:45:21 -0700
X-CSE-ConnectionGUID: qTUOQj3kRN+F+lMduyY9Sw==
X-CSE-MsgGUID: uuZHMie+QW2ANvHjCpPOYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,223,1725346800"; d="scan'208";a="79953341"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2024 10:45:14 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 22 Oct 2024 10:45:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 22 Oct 2024 10:45:13 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 22 Oct 2024 10:45:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P0anl0/QNDfkESJhriaSMkjODtSZL/0cxM1syp1mzHxe+8PCPahB01jth8h2lTtSIqDz3YxE2vJ4Z6kzOtGGtWkZTAF2tQjS0Y6+gxxnyJwvfVAakNd+MwmHdXUGYIYWT3SWTKiAPBduPmdTOxhO/ssjpAVIogzqkOVZkdnSn/Ccbo6JpKwZ4HrmYh42o5gY7NJKyaHBNhHX/3IHYsUhmvoitoJV+lho+x1LxxJo3z4rASYt2FJLWQLeb5IZh+NdOUEEwWwMmRVQeLOFlsIsmHCQQ2gPZk2PXkeXbu9k8y8YjCqqQI82eENQ+83KNBlsVY7KYaU29I84lvrSTnymrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X3kpvqHBovEQwhwLtR+sbrxdDpB8jMiaEw+CTYRK0Vo=;
 b=Cy4OzX2LeBPX37XKtpEsRhbqMbiSltPToGr11wLH8Q5yuw25JL3gFmWnf10NHTs4Jtz0XNOMVoApBfNg+vNm5pq6J8JeXc8zidqBfiWRm15wEkwQRTkd/A+r4kmw4LIuvgKOh0ADVcKqgzc9upEEZ216zD2z2Qas6MVYC0EQODVxReBdCPQacG4AWbminx27tDqe2Gok6Qja1fWgCNWwKoesrVhxn67l4SGobVOiumWrZCY+bwjG4Bj24cFmTigyiWBmgqZ31BG/MsWpdQUvh8Y5cHyZNbrQnjfeIlrtvhMzpxL1vBfFEK+XHC2Cs2hR6Z610ijmjG6N/AP4KgT/3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by IA1PR11MB8150.namprd11.prod.outlook.com (2603:10b6:208:44c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.16; Tue, 22 Oct
 2024 17:45:10 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8069.020; Tue, 22 Oct 2024
 17:45:10 +0000
Date: Tue, 22 Oct 2024 13:45:05 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <lucas.demarchi@intel.com>, <maarten.lankhorst@linux.intel.com>
Subject: Re: [PATCH v4 11/15] drm/i915/bios: use display->platform.<platform>
 instead of IS_<PLATFORM>()
Message-ID: <ZxfkoX8YL5Lukjk3@intel.com>
References: <cover.1729518793.git.jani.nikula@intel.com>
 <ef32162e2027d3e7916ec32ffe1fb8159ff0be8c.1729518793.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <ef32162e2027d3e7916ec32ffe1fb8159ff0be8c.1729518793.git.jani.nikula@intel.com>
X-ClientProxiedBy: MW4PR04CA0244.namprd04.prod.outlook.com
 (2603:10b6:303:88::9) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|IA1PR11MB8150:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c4334a9-0221-419f-d98a-08dcf2c1460d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?IGap7UAzi2f6de/RmbGYN8VFEgzyoj4tngQ7IhW1P+I/5aphXiFoy/b8Fxee?=
 =?us-ascii?Q?JrgtN1zsb7XDCcJjGS1ridO4sWd/Gt4vbKkrmcq0WH2nMAmqrZZx0t1muNzM?=
 =?us-ascii?Q?oKfYUzGl67tj5a696SQTw6yjrHqsV/qs0S/xc5cdKMW5mV4Oh1dX0rGHnZWH?=
 =?us-ascii?Q?c5G77sudlTmHYm4tKmpG7YHKlCZWiqB0sTVgF9lvv+XNVveTIfnuL0hFVmrM?=
 =?us-ascii?Q?XWofR+K9M5thwnlFWbanph6/HBc8CJ5AT5It2RSMhrS33A+vjfaDnFnjuJ+3?=
 =?us-ascii?Q?7X5WjwInCWDC4gK+DyTTJgJ631y3DsW9L12p9XKHHtxpA41bb15k+rVoab3o?=
 =?us-ascii?Q?LU/y13sKpCLktzhk3BkmjEVPKX5MODFWKIRUQR6s9MaXt7zauLsGJhtaIDKR?=
 =?us-ascii?Q?bcaezPmr+yz+juh3JBl0Qh4pSAJuM0ZC4Yx1Hrtzr7cNN/9PSVLK8gtMWgFm?=
 =?us-ascii?Q?g4uP+tnRM1TJ2RfornI3pJ0du2kE01uZjWJkGVkCgneJKTM3mgEJPM9JdP6+?=
 =?us-ascii?Q?DxAOqyvj/rHeaYpbfsvY+gw8xC3P9QX9KzbAXzAoqefoorsaRBz2J5BCZonG?=
 =?us-ascii?Q?TewUP84KFosfhi+q7GPg9TMPVdvEv5gJCp9voWtfqgZeSTHyYELAIEVQCbfN?=
 =?us-ascii?Q?DcoDwDyPA75jzoKecSS6O7maM5HgShOQBtIL+CfrCBDoFSinCIZWUBJG8mb/?=
 =?us-ascii?Q?DVn5qKq5y1GW8zK2cPCygP7klJlsbJCZ/SWm9XhGUzIST63KDHXat37TCcss?=
 =?us-ascii?Q?a2G3NoqP0NeBQ1ruCOmg0g4OKDJNCdia/1hQ6xVvNBIkjv8vPuSHIu6pRV2Q?=
 =?us-ascii?Q?Kn9E8TwYjULI3BBJnLanXUH1mv/sebZL6r/0b35ecI+fh/5hxMrBLYddSFZE?=
 =?us-ascii?Q?1Q+TJ+LXVuvqbB9W70QJzKN3UqlpOlGeft0Np55/p7FWrOEyiqMLgPpE4I/v?=
 =?us-ascii?Q?/sMxD/OetLuJ8Krs9bapLnFAlHUWZhNe49ppIOpndg1NQUhz4sT3g8WqMsdE?=
 =?us-ascii?Q?lG3TCoxc75LOsrkj7IvI10YGwS8jgKgGcfdICl3T3xv4dgHxgTU2ueLJ01kq?=
 =?us-ascii?Q?jOG7ar2rtNfI5VEIRZM2yO/V3mlpgzecfcYgZW7vNfp7v701QQniMG/dVRnO?=
 =?us-ascii?Q?2UDC4ZIc6RVd8jJDEGBStJVonDBK4YoqPrFWZK7StsPjLme0hQTf4wyNwmD3?=
 =?us-ascii?Q?4qX2jsFL7XeySAmiYfWUEffFrHpISIB+S1/iIwm+x5VwK5Wf5ap8NqVm02pq?=
 =?us-ascii?Q?LmU0XYYGG59uDq31FcSS1aFnbf2k2316TWa+Q+DlSE5JAptqUoAa0rr3pt6p?=
 =?us-ascii?Q?BrOHG3V0tICT93LI74EPuIcN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MNPurCLnvC2QpYdhE9cPUp1i4lYtCVaBQWVZlle3IDEKEgmEAQKuyA3SxaGo?=
 =?us-ascii?Q?8TX0gSjibhnEadMb/F11Q+LidvZnai203ImOfitN5g2YiHRLIm+ZkUeke3cJ?=
 =?us-ascii?Q?ff6qfX4sWtgWHlLbjmOD2OWI93fZ2SbbwsqB6qgtCRF+buFo6F8KLwh/yvjP?=
 =?us-ascii?Q?lcQciWq9chGrprAzcrkUPPje+zbA69O8E4pc0MKSMtSG+rFgjt3REc3muWSG?=
 =?us-ascii?Q?vg2ldeJDGSgfOibGptKhovvgRiVX0a3acAK/JoODcOGRToni7T005I9sfxXZ?=
 =?us-ascii?Q?ovoFE8rWkHodEi+EfSM6UrgV40vxlmQmxlS18f2QZbx8N/6YuaN1dEdinYeq?=
 =?us-ascii?Q?oSsIfY0xfJlhHmvW6g4S+HKkumQHvExWORJRX4FDFfd/dsVCn3LPekmGe+vH?=
 =?us-ascii?Q?lMNpqEzGH94Oktw+drkYOTwauvRDqNB1z9vxZDGHAHTCyhtMNp8fkCGP7Yj6?=
 =?us-ascii?Q?4cFtZ1TpU2Xs5mH88a3vjhflTXnsSgaj9JP2Bp7J2udH9N2Xz4hIoiGIo1U+?=
 =?us-ascii?Q?wASnu27IM/IjXBVKOS8YmDUkqMW/jF69cTEInHEASnUH1E62dPSNHBw1NkC4?=
 =?us-ascii?Q?ORBTe1EwaqOQ7FfUmMr5ishgzRRDVB1krVTPtrm7nmtdhoz6k1pzt4RS2268?=
 =?us-ascii?Q?Z3vVli8effp7gP1YEg9L+iLXAOsFHyE/Mwmrf9StHvxL3y4PaCDYA+piOY/E?=
 =?us-ascii?Q?SgvvsdwDSnmVovGO908ai0HCtIDzfa+EINRMPme4vRlJysMChExEiI72HNYP?=
 =?us-ascii?Q?MTKmYJrvRaIqtvzQzADIwGWdHp4zg3QLHjSoXp3PKJYfYH4+v04oSxSL0vUL?=
 =?us-ascii?Q?DHIbF83D5jzYFkixrlDYLf0u7dtPml1gCmDxBnJSFroCEbi7r0tWDskPHGeo?=
 =?us-ascii?Q?4+JoWRouVyPvOJEyzAoESz68pVICMrEA0DKvA/ms5Xhw2UFeVTjz/08tGIoV?=
 =?us-ascii?Q?9d//VqY4WGmxBelRDn4xtH0xPItFyULkjSJuxzv5pHFZ6wjWUOdwQ4IOT5xC?=
 =?us-ascii?Q?xDw3fermjFb0QZNxU7Z/6i4kc1ToMfu6xKVTiT5yhWok4/oS3v65LaQXSZO6?=
 =?us-ascii?Q?yq9UO0kZJRo247jNqqNDYvvZJ65mnqA1IdVf8X3KTB9+hxIFe6ezOyBSHpYb?=
 =?us-ascii?Q?aklou8AMPnZxSCgPas5AWiIuVN6EfH0PmXEVqujOF20UVrbNtyMF/4MgJUJD?=
 =?us-ascii?Q?6IoZwiCMuxpDfCta89+xCw6J353vrouRv1dK/4o53ckDw44yMMmuGeZdxZ7m?=
 =?us-ascii?Q?q3vy/m+o5Le1038r2lZyHk30UkyJoORhluaDH4yBYqkyeZGU7pdcMm7dMWxR?=
 =?us-ascii?Q?MSaLdlAkwMV29agwvbt1AGiXqqBm7VqnNjmoV041TFiHOkzCM5nOxXeFRjNT?=
 =?us-ascii?Q?XHEfkzLbkQZ7Zzmv9l28nQO817WljL5buZ6cQgIzKgIZ1+onTYNV+jCfJQUG?=
 =?us-ascii?Q?etADWgYRTJgyqzyHRv8MjwJbe4flLkf/SxO3CiHE6ox3u6PJDne3EKRxr43v?=
 =?us-ascii?Q?0l2OI8ksqs1GQPP0t2JZITAyAotsELzVqPYVlYTiL5XrTaAg3oKV0G9lfdo9?=
 =?us-ascii?Q?gmcoT4g2hNTIQ7gb0cYCpJmJdv+wNWfNkfEpUgIbzz0GzywqGxwM13gl8p6d?=
 =?us-ascii?Q?eg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c4334a9-0221-419f-d98a-08dcf2c1460d
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Oct 2024 17:45:09.9778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kzyLk/S7ZowbyK/0+rXSLZEadNytktLMp5NU3FcT3uzuVKxzE7l7MspV9Rwph8WJ6AsNtfQlvP5gZ3NKqvP80Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8150
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

On Mon, Oct 21, 2024 at 04:54:12PM +0300, Jani Nikula wrote:
> Switch to using the new display->platform.<platform> members for
> platform identification in display code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c | 40 +++++++++--------------
>  1 file changed, 15 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 9967b65e3cf6..ef3fc831ac88 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -1169,7 +1169,6 @@ static int intel_bios_ssc_frequency(struct intel_display *display,
>  static void
>  parse_general_features(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct bdb_general_features *general;
>  
>  	general = bdb_find_section(display, BDB_GENERAL_FEATURES);
> @@ -1179,7 +1178,7 @@ parse_general_features(struct intel_display *display)
>  	display->vbt.int_tv_support = general->int_tv_support;
>  	/* int_crt_support can't be trusted on earlier platforms */
>  	if (display->vbt.version >= 155 &&
> -	    (HAS_DDI(display) || IS_VALLEYVIEW(i915)))
> +	    (HAS_DDI(display) || display->platform.valleyview))
>  		display->vbt.int_crt_support = general->int_crt_support;
>  	display->vbt.lvds_use_ssc = general->enable_ssc;
>  	display->vbt.lvds_ssc_freq =
> @@ -1542,7 +1541,6 @@ static void
>  parse_psr(struct intel_display *display,
>  	  struct intel_panel *panel)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const struct bdb_psr *psr;
>  	const struct psr_table *psr_table;
>  	int panel_type = panel->vbt.panel_type;
> @@ -1567,7 +1565,7 @@ parse_psr(struct intel_display *display,
>  	 * Old decimal value is wake up time in multiples of 100 us.
>  	 */
>  	if (display->vbt.version >= 205 &&
> -	    (DISPLAY_VER(display) >= 9 && !IS_BROXTON(i915))) {
> +	    (DISPLAY_VER(display) >= 9 && !display->platform.broxton)) {
>  		switch (psr_table->tp1_wakeup_time) {
>  		case 0:
>  			panel->vbt.psr.tp1_wakeup_time_us = 500;
> @@ -2029,11 +2027,9 @@ static void icl_fixup_mipi_sequences(struct intel_display *display,
>  static void fixup_mipi_sequences(struct intel_display *display,
>  				 struct intel_panel *panel)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
>  	if (DISPLAY_VER(display) >= 11)
>  		icl_fixup_mipi_sequences(display, panel);
> -	else if (IS_VALLEYVIEW(i915))
> +	else if (display->platform.valleyview)
>  		vlv_fixup_mipi_sequences(display, panel);
>  }
>  
> @@ -2243,15 +2239,15 @@ static u8 map_ddc_pin(struct intel_display *display, u8 vbt_pin)
>  	const u8 *ddc_pin_map;
>  	int i, n_entries;
>  
> -	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || IS_ALDERLAKE_P(i915)) {
> +	if (INTEL_PCH_TYPE(i915) >= PCH_MTL || display->platform.alderlake_p) {
>  		ddc_pin_map = adlp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adlp_ddc_pin_map);
> -	} else if (IS_ALDERLAKE_S(i915)) {
> +	} else if (display->platform.alderlake_s) {
>  		ddc_pin_map = adls_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(adls_ddc_pin_map);
>  	} else if (INTEL_PCH_TYPE(i915) >= PCH_DG1) {
>  		return vbt_pin;
> -	} else if (IS_ROCKETLAKE(i915) && INTEL_PCH_TYPE(i915) == PCH_TGP) {
> +	} else if (display->platform.rocketlake && INTEL_PCH_TYPE(i915) == PCH_TGP) {
>  		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>  		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>  	} else if (HAS_PCH_TGP(i915) && DISPLAY_VER(display) == 9) {
> @@ -2334,7 +2330,6 @@ static enum port __dvo_port_to_port(int n_ports, int n_dvo,
>  static enum port dvo_port_to_port(struct intel_display *display,
>  				  u8 dvo_port)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	/*
>  	 * Each DDI port can have more than one value on the "DVO Port" field,
>  	 * so look for all the possible values for each port.
> @@ -2391,12 +2386,12 @@ static enum port dvo_port_to_port(struct intel_display *display,
>  					  ARRAY_SIZE(xelpd_port_mapping[0]),
>  					  xelpd_port_mapping,
>  					  dvo_port);
> -	else if (IS_ALDERLAKE_S(i915))
> +	else if (display->platform.alderlake_s)
>  		return __dvo_port_to_port(ARRAY_SIZE(adls_port_mapping),
>  					  ARRAY_SIZE(adls_port_mapping[0]),
>  					  adls_port_mapping,
>  					  dvo_port);
> -	else if (IS_DG1(i915) || IS_ROCKETLAKE(i915))
> +	else if (display->platform.dg1 || display->platform.rocketlake)
>  		return __dvo_port_to_port(ARRAY_SIZE(rkl_port_mapping),
>  					  ARRAY_SIZE(rkl_port_mapping[0]),
>  					  rkl_port_mapping,
> @@ -2519,7 +2514,6 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
>  				      enum port port)
>  {
>  	struct intel_display *display = devdata->display;
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  
>  	if (!intel_bios_encoder_supports_dvi(devdata))
>  		return;
> @@ -2529,7 +2523,7 @@ static void sanitize_hdmi_level_shift(struct intel_bios_encoder_data *devdata,
>  	 * with a HSW VBT where the level shifter value goes
>  	 * up to 11, whereas the BDW max is 9.
>  	 */
> -	if (IS_BROADWELL(i915) && devdata->child.hdmi_level_shifter_value > 9) {
> +	if (display->platform.broadwell && devdata->child.hdmi_level_shifter_value > 9) {
>  		drm_dbg_kms(display->drm,
>  			    "Bogus port %c VBT HDMI level shift %d, adjusting to %d\n",
>  			    port_name(port), devdata->child.hdmi_level_shifter_value, 9);
> @@ -2618,14 +2612,13 @@ int intel_bios_hdmi_max_tmds_clock(const struct intel_bios_encoder_data *devdata
>  
>  static bool is_port_valid(struct intel_display *display, enum port port)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	/*
>  	 * On some ICL SKUs port F is not present, but broken VBTs mark
>  	 * the port as present. Only try to initialize port F for the
>  	 * SKUs that may actually have it.
>  	 */
> -	if (port == PORT_F && IS_ICELAKE(i915))
> -		return IS_ICL_WITH_PORT_F(i915);
> +	if (port == PORT_F && display->platform.icelake)
> +		return display->platform.icelake_port_f;
>  
>  	return true;
>  }
> @@ -2723,9 +2716,7 @@ static void parse_ddi_port(struct intel_bios_encoder_data *devdata)
>  
>  static bool has_ddi_port_info(struct intel_display *display)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
> -
> -	return DISPLAY_VER(display) >= 5 || IS_G4X(i915);
> +	return DISPLAY_VER(display) >= 5 || display->platform.g4x;
>  }
>  
>  static void parse_ddi_ports(struct intel_display *display)
> @@ -2907,7 +2898,7 @@ init_vbt_missing_defaults(struct intel_display *display)
>  	unsigned int ports = DISPLAY_RUNTIME_INFO(display)->port_mask;
>  	enum port port;
>  
> -	if (!HAS_DDI(display) && !IS_CHERRYVIEW(i915))
> +	if (!HAS_DDI(display) && !display->platform.cherryview)
>  		return;
>  
>  	for_each_port_masked(port, ports) {
> @@ -3603,17 +3594,16 @@ static const u8 direct_aux_ch_map[] = {
>  
>  static enum aux_ch map_aux_ch(struct intel_display *display, u8 aux_channel)
>  {
> -	struct drm_i915_private *i915 = to_i915(display->drm);
>  	const u8 *aux_ch_map;
>  	int i, n_entries;
>  
>  	if (DISPLAY_VER(display) >= 13) {
>  		aux_ch_map = adlp_aux_ch_map;
>  		n_entries = ARRAY_SIZE(adlp_aux_ch_map);
> -	} else if (IS_ALDERLAKE_S(i915)) {
> +	} else if (display->platform.alderlake_s) {
>  		aux_ch_map = adls_aux_ch_map;
>  		n_entries = ARRAY_SIZE(adls_aux_ch_map);
> -	} else if (IS_DG1(i915) || IS_ROCKETLAKE(i915)) {
> +	} else if (display->platform.dg1 || display->platform.rocketlake) {
>  		aux_ch_map = rkl_aux_ch_map;
>  		n_entries = ARRAY_SIZE(rkl_aux_ch_map);
>  	} else {
> -- 
> 2.39.5
> 
