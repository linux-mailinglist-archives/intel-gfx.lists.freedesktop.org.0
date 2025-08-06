Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E037B1C744
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Aug 2025 16:05:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 51E2610E0DA;
	Wed,  6 Aug 2025 14:05:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iOjNHASd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B9910E0DA
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Aug 2025 14:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754489147; x=1786025147;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 in-reply-to:mime-version;
 bh=wLLosc4FQYn8TMYkHmuUyKsFgdwCygrQy3ZyD2KF0FQ=;
 b=iOjNHASd1PNbVlBDt6p9jceuxhdsFvKPeOdREYywKJRvMwFpE1GiC4xr
 /T9LWP3iOUpubS4n0XqNAAscVM10Dp0LYxXb5sQ2v2Gzo/+969DA69Rwh
 c3lW3o8uviWFuoHiw3wpoczqAy03oP24WcpHH5oXjwabOcAI+rnx2VDsR
 mnjSCsxep5KP3AVthYY087ihelvLa+4Hqlk0T8wB2yvAIAlXO5PI+zcxF
 Cbjh9RnmkkLrnw0lwxv6AeURH3Z0/GmcK4Xx4h5Hs2bC5uOtFzgNOeiCS
 Z3kbCciGa2ScYdxsSkLtGdSxYLXOkuTQ59nxz5hlDxLGttPYtUYYTsBxd A==;
X-CSE-ConnectionGUID: 6YoleqDCQ+S9ZcuyYMre1A==
X-CSE-MsgGUID: YhKf4PM4T7mU0sfB73b/hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="56725111"
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="56725111"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 07:05:47 -0700
X-CSE-ConnectionGUID: Xb8PUDr0S3SD0eYdH8cRjg==
X-CSE-MsgGUID: OVnqxWV9QfakoA4qzRIdfA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,268,1747724400"; d="scan'208";a="195751194"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2025 07:05:47 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 07:05:46 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 6 Aug 2025 07:05:46 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.40) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 6 Aug 2025 07:05:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tBOWaov0xxsDpzQCus5nkFYbWeObzd5DKav2XICbBV/TXDjKgZcEwqfe+W9jkNMJ4mwpLbwoSpMNcByiPj5dMwtaEuvFBxH+OITCFppsK7ylTLZEz1Myf9nPT13lUWnx1E/j9rdODi10qTGv5apoVcbdHVcjm1Gtp9xKIffgaaHRuPrQyHUTXKQpKR/RWGvrIcQhidYQhke9PXEvrKnCIQzgiyLg+r4BilIS+/F1rxoMbUn6y53JYxppcM/6C0K5vQ05JAV5f7PQ+1mweUBy5wAHV6WRiWIKdw/hsCWEFMcLDmZ3k8ctRuMOIBSWyK8+dcd3uKxH1EMoLvd9k/OaRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H4nhNfvuOl0WWV0gs2uthevW/RwmtvarxC9FkVsvDdI=;
 b=SBW+vaZv/cflNxBpYZwQ9pMxtFWoOz3YDL36BJNFvSWasNjzHhoLObLwJoxr5BeSrMex6O5LSQreSiZeEVOHAiYCMrEVHW5My12YD5sY452AZKZCEGeTUEXnnu3CVGyf51nHHdx4QNxgwAbjXIlYaJA0tMxf3qTwxtGzESHI4hBNWow4RCi9ZSK45yW6Ie4gP/r/O8EU2ukPBAcNFpLc8p21gk5p9+gGqwK34pGbHJIMRb1LmzmKUWnfg3WlB9cyf5iNL+VjmjCl4osxRc7Mb3dkD7QgWVmDzJ/QJQ616SIJt+lD/xX/8uYKjDrMvLbNtvtfARpiIw7eJzTn0hynyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH8PR11MB7021.namprd11.prod.outlook.com (2603:10b6:510:223::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Wed, 6 Aug
 2025 14:05:43 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Wed, 6 Aug 2025
 14:05:43 +0000
Date: Wed, 6 Aug 2025 17:05:39 +0300
From: Imre Deak <imre.deak@intel.com>
To: Lee Shawn C <shawn.c.lee@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Shankar Uma <uma.shankar@intel.com>
Subject: Re: [PATCH] drm/i915/hdmi: add debugfs to contorl HDMI bpc
Message-ID: <aJNhM0wtCqcQ1MwV@ideak-desk>
References: <20250806042053.3570558-1-shawn.c.lee@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20250806042053.3570558-1-shawn.c.lee@intel.com>
X-ClientProxiedBy: LO4P123CA0536.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:2c5::16) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH8PR11MB7021:EE_
X-MS-Office365-Filtering-Correlation-Id: fdec3804-11bf-427f-6e11-08ddd4f25562
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JLPkuJmUSAtGfJr3/gsID+M+xemSs8eFfY42+iJHVSmQCfsFiNPVr5ucAy1M?=
 =?us-ascii?Q?Vx2wy+Hg0s8iE7qVlPKqoCiwTHXN284wr4bil+oo5tAXIvApCwlmKVAaPggJ?=
 =?us-ascii?Q?ZAqdHq/mO/Xa6Fo9DoM9enQk4H8btfaxOhsNsNn2t3743qOYVNGcWYnT9/Hd?=
 =?us-ascii?Q?Fv2cFva3EDmT/lEFff0Dimjt4eEmi7uVUxmWs4xyTu0AfW+zglzfjKlq5qSP?=
 =?us-ascii?Q?CK4PJlqF8lGwIlhiMXdexfej58hHf8CmKZYrL20syrnV39tpoWu85YzxiGkY?=
 =?us-ascii?Q?tuT3lJy8z7kGdlrqPWk2ZCIy2ew5oJFZmNH0zr9jCx2/5Cc2ZyoTahoBgdje?=
 =?us-ascii?Q?7ZwRjzWNxmuAYn7BlVWYenoCg6OnA7K2PekBES5RjmCkaZJh+5uvhJ/y92WQ?=
 =?us-ascii?Q?dVo9WNzBwcxuNoMOqQyxTLFkg22xLzyK4qAZrhpK3oMbC7IEU/PhSPT/tbK8?=
 =?us-ascii?Q?Nb3y680MsVAe6QI3bFZwIcQcybKQMs+/ToBumBlX+LdOUr25B1s3dL5zSiJ4?=
 =?us-ascii?Q?xGxQi2XvWBJySF3cCjVcGaxHFcosBxd1yw+5hzWy0xl7NpqU9yQRVbAYQ9CO?=
 =?us-ascii?Q?R7FHDEEq3WkDTlv3VYjfYN3PO64dikA29ViIdxTXC94UL4wECfoQf+4TBV72?=
 =?us-ascii?Q?wcPC6GaB1kUpnSbLPIATJU+37D6P+h0LRx0++DWumddnnwO3xKuTnRsPBFFe?=
 =?us-ascii?Q?yhdjQFmt3EjvHgto4Y93ri7dGTQsTjqnZwWoIqlYN93oVqtGnuQzP9JXJmfp?=
 =?us-ascii?Q?FUFWMvAY1s7qFw7PUSd2QgZkajmE1KhJDjrUCGH7VD0QU0TDD39nvqNpAbPr?=
 =?us-ascii?Q?bXVpf0y6mfcbUpwlEn+2zbZzjM/2edsqviW2J1qbQr7fBbm37OLNu3E3aebk?=
 =?us-ascii?Q?RWcjZgueeIF2kySYyGTxbfoiK445YvlpH/JA1nhEOMZz1CcJSovya8J+AQxF?=
 =?us-ascii?Q?ez+MU2Terkh2/cD2jcRopDnsoIOiVyihKwET0Mh0OSdHtcBBRFaIFzxYHQEx?=
 =?us-ascii?Q?eJnWmW//oqLtrJKTIKZ7p3Ho170cvtAoqRMFhrC6Svh1k5vfqAspmaSI9XWY?=
 =?us-ascii?Q?DJko6dFilkOw7EwLKaVqtsIS622H8QhgyK7zpYPEZ5vaAFaG4mDUlpenlj9R?=
 =?us-ascii?Q?YvmF8zEEeeL8pagByRoHVN1MtdlfSMb8sNxEDFPes49Q08qYzhe+bwnQJq2i?=
 =?us-ascii?Q?Cffd+HbGiYliknYqDlQpJ+hzDVHnciZ1gSvroogfICV5VksMbk0kiv8KoYCy?=
 =?us-ascii?Q?cl8+UbyVve4ZnO7JsRP5Z4z9G64TwC0vH7AvwaUdEZ5X1qgFIXf2G6G/tGQ6?=
 =?us-ascii?Q?qKvfauiJ/pxPiO5HbSVFEtGZBtF6wNajFJeeT61mo2l0EY2cQRdnycysFT86?=
 =?us-ascii?Q?pXBeZauPK/XL83ng4QzEvqTPBz13fbSeYpoDERSKl95LOCWfOE+V4xumux7D?=
 =?us-ascii?Q?zcbdDSi4rJQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mqqwn43wb/lkFE1f8vV5xs2jucK3iPg5BaQtH6XketVyGnzLz8JrHB4xom6A?=
 =?us-ascii?Q?xtdMR0uh98YSgNg14x8DGkTEKyAg+eZkgDsdC0vgeBlHaRfon53naTsdVk6q?=
 =?us-ascii?Q?glkav3KMEP221Tkdxy7lopAQoi+NAz9SzlH39ce+6NEO1txayQtsR+BdogET?=
 =?us-ascii?Q?25puqmIFUF1F3LYUtbFCArFBQ5LD+uJjcFaY/79ENF9Y/ZujNj+H0PClMySo?=
 =?us-ascii?Q?SBKW9Taem07NDU4ZTVGAFwAprVh2nBq3EBuqm3JNGu+r+GXvUswmDq45HY1j?=
 =?us-ascii?Q?DTzb2gxNOTLuAWB2P7E4OofvAdBveUxOcjOpKgNLMT2Z01N2KoYPRATf0ZBh?=
 =?us-ascii?Q?8cfLXS2MWMysyVI5aYj2gDBk7J9aihNbJSw/OlXUEdwYhhrtmO6T15VXZfhf?=
 =?us-ascii?Q?6qrasw8sqqxEKvxq+5y/SELOZNXS3LbK+x9pRNtQe21Pz/0apjn7zdQVQv/g?=
 =?us-ascii?Q?24ToTcTD2sZ2vhh7iERXfEy/WnFA89HDuG1rMScXFeLZ6rLsXgozZnqsXAtT?=
 =?us-ascii?Q?yNz/LCRj1yTPW7jCMC5r3+QWVuj+xj0QF8/w1tNq/7C3d0M0YgKKATkPMNJ1?=
 =?us-ascii?Q?zIfVizekvVXPmx3+clPSlSSWLqA9YHB47/bSlbZ+I1NYaK4cHJJH5zg5PCbi?=
 =?us-ascii?Q?uh8r5Y+o6t1ZRP9rzWDqixbxBY2tgNr7YyexElBhHIqnETwu+NcwV6f+P2uu?=
 =?us-ascii?Q?0kB1CDnsf2BTgeVissYyTjLudtSFXI4kP8bgm5mJuZ/AM5gobY9dcwj75qcJ?=
 =?us-ascii?Q?n1ndERQ2QQufMz2Bbvi9Hcw1e5yS8XIHqJZbydaWZNk1AsT4L4sT0i3pbSAV?=
 =?us-ascii?Q?0R580Vt0HgoHCN7FaaCz7aaMBpICcOmpizKsqjGMYv2gXvm6Drtv5ocUDxtE?=
 =?us-ascii?Q?MYXWaeRFvRYTIusEZ0Z2wEiDN7m1tXhZAp4jQ06yCf+Y3mXhk0sNPw66PItJ?=
 =?us-ascii?Q?0/a82obqZDh4+R6Kj88oDFx9Mfp9+UhkhanWyuXbf2X10ZRkmsBe+926CNIt?=
 =?us-ascii?Q?jsyvz6yY+WUq4ZAHnqKtGqRkEh7iW1TZQAGpUvB5gH+mjB464w3twTMOVp+F?=
 =?us-ascii?Q?bFEUFQ/zh2k7JcPin1ARKaKGSOCYxsB0DYQfzj5r4i/QkJMJvuOC2BZa9zWi?=
 =?us-ascii?Q?ar0yKM0xjF4DnaokfoOwXZU60fGkZlKpCVDHWwoTVtz8L50nGLZfbA3ESUJ7?=
 =?us-ascii?Q?qwLrXqpHKlX6r81nkfzsycP2B8W9IiIZnDsr3zXGCYX6+/TfDKme4gZtO3c0?=
 =?us-ascii?Q?1rjjbtoVnjDuh0NGek1+XArI3+VITcPKgAvlZm9+FEuJWPEuy6xSD0Br9pLM?=
 =?us-ascii?Q?PhwX1nVD88xQ1DbVFKoKK+yuktTiX/E8l76nS1qE4p6ERQjZ6U+pHm5VIoW2?=
 =?us-ascii?Q?qFSFVbUXaN7Kf3hV+39+jAjdWNDCnmdKinR68XsJvJAnSwy1VZZsAMdhGPxm?=
 =?us-ascii?Q?hoYGAiAaNkvEe5QhdFmK7HZ9GBq6svgjVUH4aCj1a/QMnakbGPzv5bo4vUT7?=
 =?us-ascii?Q?fDHMrV8SjLN2y6iK7Xv7T7RzVhG89Z9k/uXIrRxbEKVPsIiwwg614sP7TD5N?=
 =?us-ascii?Q?O5gK1JNoSx+yQ6N4b1QAF65ruu9JNmnayH42lgLEJi4PU+dmO9lML8hM+zgv?=
 =?us-ascii?Q?jr4Ble7wP80fLBmY5lQG8jiiduL8p1NVx7EhIa87VQdx?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fdec3804-11bf-427f-6e11-08ddd4f25562
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Aug 2025 14:05:43.7385 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: K/9RyPZ93ftIcp4zBAuVmOmI9wN0vUVNCGbQytOn+Y9M4x+GwlprqIlAkQ6dHbJ4bnfJ7NG6cpJujM08zxltYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7021
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 06, 2025 at 04:20:53AM +0000, Lee Shawn C wrote:
> While performing HDMI compliance testing, test equipment may request
> different bpc output for signal measurement. However, display driver
> typically determines the maximum available bpc based on HW bandwidth.
> 
> This patch introduces a new debugfs that allow user to configure
> dedicated bpc manually, and making HDMI compliance test much easier.

There is already the intel_force_link_bpp connector debugfs entry, IMO
that should be enabled for all HDMI connectors (atm it's used only for
those that are on an FDI link), instead of adding a new debugfs entry.

> Cc: Shankar Uma <uma.shankar@intel.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 58 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_hdmi.c     |  7 +++
>  3 files changed, 67 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index ce3f9810c42d..cca115a6f130 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1208,6 +1208,56 @@ static const struct file_operations i915_dsc_fractional_bpp_fops = {
>  	.write = i915_dsc_fractional_bpp_write
>  };
>  
> +static int i915_hdmi_req_bpc_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector = m->private;
> +
> +	seq_printf(m, "request bpc: %u\n", connector->force_hdmi_bpc);
> +
> +	return 0;
> +}
> +
> +static ssize_t i915_hdmi_req_bpc_write(struct file *file,
> +					const char __user *ubuf,
> +					size_t len, loff_t *offp)
> +{
> +	struct seq_file *m = file->private_data;
> +	struct intel_connector *intel_connector = m->private;
> +	struct intel_display *display = to_intel_display(intel_connector);
> +	int new_bpc = 0, ret = 0;
> +	char *kbuf;
> +	const char *p;
> +
> +	kbuf = memdup_user_nul(ubuf, len);
> +	if (IS_ERR(kbuf))
> +		return PTR_ERR(kbuf);
> +
> +	p = strim(kbuf);
> +
> +	ret = kstrtoint(p, 0, &new_bpc);
> +	if (ret < 0)
> +		return -EINVAL;
> +
> +	switch (new_bpc) {
> +	case 0:
> +	case 8:
> +	case 10:
> +	case 12:
> +		break;
> +	default:
> +		drm_dbg(display->drm,
> +			"HDMI bpc (%u) may exceed the max value (12)\n", new_bpc);
> +		return -EINVAL;
> +	}
> +
> +	intel_connector->force_hdmi_bpc = new_bpc;
> +
> +	*offp += len;
> +	kfree(kbuf);
> +	return len;
> +}
> +DEFINE_SHOW_STORE_ATTRIBUTE(i915_hdmi_req_bpc);
> +
>  /*
>   * Returns the Current CRTC's bpc.
>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1359,6 +1409,13 @@ void intel_connector_debugfs_add(struct intel_connector *connector)
>  	    connector_type == DRM_MODE_CONNECTOR_HDMIB)
>  		debugfs_create_file("i915_lpsp_capability", 0444, root,
>  				    connector, &i915_lpsp_capability_fops);
> +
> +	if (connector_type == DRM_MODE_CONNECTOR_HDMIA ||
> +	    connector_type == DRM_MODE_CONNECTOR_HDMIB) {
> +		connector->force_hdmi_bpc = 0;
> +		debugfs_create_file("i915_force_hdmi_bpc", 0644, root,
> +				    connector, &i915_hdmi_req_bpc_fops);
> +	}
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 4d9df803ad47..e1e42d701f68 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -564,6 +564,8 @@ struct intel_connector {
>  	struct work_struct modeset_retry_work;
>  
>  	struct intel_hdcp hdcp;
> +
> +	u8 force_hdmi_bpc;
>  };
>  
>  struct intel_digital_connector_state {
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index cbee628eb26b..0aa4044e2854 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2118,6 +2118,7 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>  				  int clock, bool respect_downstream_limits)
>  {
>  	struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(encoder);
> +	struct intel_connector *intel_connector = intel_hdmi->attached_connector;
>  	int bpc;
>  
>  	/*
> @@ -2134,6 +2135,12 @@ static int intel_hdmi_compute_bpc(struct intel_encoder *encoder,
>  	if (!respect_downstream_limits)
>  		bpc = 8;
>  
> +	/*
> +	 * overwrite bpc per user's request
> +	 */
> +	if (intel_connector->force_hdmi_bpc)
> +		bpc = intel_connector->force_hdmi_bpc;
> +
>  	for (; bpc >= 8; bpc -= 2) {
>  		int tmds_clock = intel_hdmi_tmds_clock(clock, bpc,
>  						       crtc_state->sink_format);
> -- 
> 2.34.1
> 
