Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E374C6E14E3
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Apr 2023 21:11:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 227DA10EBED;
	Thu, 13 Apr 2023 19:11:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E34210EBED
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Apr 2023 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681413084; x=1712949084;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sHD0vKNPMixmfwZeLh+SPyHbvE/Jr5qb9l/nJY5/9RA=;
 b=XQ4z6OB8KfNiCmJCo9sR4SJnCLt9C5RTkUshaCgo48pAe7aZVmUaWcpy
 tCLLTP8WPOk4KlECEqmAkUqyoDnTHbLttN+Fvx+0lYrM35PvSlazEgHbN
 /HNztPe3M84PIrpFZx+EBoZhK9KSCUTvX67PDIWU1hp0SApdxWyapqvN6
 Gh0/HL1ZzW3UcWALxm7hq32ALMh+fpdqQP+BK1V0m+tnGY2utqrXLyDhA
 9EJ8YEZ0XPXMUUR9dadIttlbVschwT1wke0snhZWdZMTDX17C09bdL3+D
 Oslo+OqTin/74KMXIvk8wgE0MkuQUIr/gUZ/qzMpaT7o/+IjqFINq8CmU g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="343036988"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="343036988"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2023 12:11:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10679"; a="833239224"
X-IronPort-AV: E=Sophos;i="5.99,194,1677571200"; d="scan'208";a="833239224"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 13 Apr 2023 12:11:24 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 12:11:23 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Thu, 13 Apr 2023 12:11:23 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Thu, 13 Apr 2023 12:11:23 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Thu, 13 Apr 2023 12:11:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+ZbXNvmW4evzh5f4g8SydI4IkPvysTvipTQ/8r7k4bhVkrPiegXZGrYyjx9TFWdXIyaGujdQF8xLtPhklxNk3mtuuGoyncHe3w9op7Rykp7XxLlCRetvMDzOhfzRf4BW3Ydow/9vnTtSQFYasNLMblTcRoAXqRYDtDf1z1uMaset+jPYGCD/cQZIaF07BDhNG/TiS+gEamWlcy6YQ32LNvTStwNtDnWhFnazq3VQICU+GT6HKuMF8lGJYwVtwNgsTjD8mHh4J6AdHN8bYqe6/2JjJCaoWSK8ujYovH2YAOOtH6C1kuKAu/2MEAwvRSHhI2VsNzFHnHRzxNwUWd0QQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mQ9fbXeHpjeFE4t3yIo7VYd6I0sRFXl3eVKiVhACu98=;
 b=acid77nKBcn5OrX/xxpnvczjUncnGEkQGVx18m7fnDyOJwIhrRJslpYTvDJCm+efb7DiuWDlOCrtowMdYpuhZRxhQLZufYcATbIH34WgjxTfpxyrNFWY5SCKTjk5rNP6Rk8QmwnlRb04pnO1+VrBgqFYgsANVVA1TbZdGZj9gv6xzKO9aXS+gA3z8nQ9ypGeaWWP9Z8SVqfUH88eAtiPmEXi1BKdkheV7mo7wJxm+5nMZYCqxsOGEyGr98OTuZvteKwif1MftEfghdlUSxKbShEunkl81B6APWhrEGRH0C+6zuvahdOAo5utroeLA3ZXo+CHqAkuxtsOgm41dx+rZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by CH3PR11MB7674.namprd11.prod.outlook.com (2603:10b6:610:12b::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.30; Thu, 13 Apr
 2023 19:11:20 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::44e7:c479:62f4:3eb4%3]) with mapi id 15.20.6298.030; Thu, 13 Apr 2023
 19:11:20 +0000
Date: Thu, 13 Apr 2023 12:11:17 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20230413191117.mns2qi2rvig7nv6c@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1681379167.git.jani.nikula@intel.com>
 <bf693fa96ff6bc38fbe78af2f76182117234be02.1681379167.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <bf693fa96ff6bc38fbe78af2f76182117234be02.1681379167.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0078.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::23) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|CH3PR11MB7674:EE_
X-MS-Office365-Filtering-Correlation-Id: 78c74104-e44c-476f-fd62-08db3c52dd72
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qAzBJNGavuUDG2YBIsQM4VbkE6dQ6WB8JtX/omejPsJawDuiJH+1l/xpQAG4EYa6QbIhPGm51sawBeJRex1Yxhf9iIOfuPfgJQB7XiwXEcEtXi1z6D+ntqI78arwcUnj8EVF9Bwn2oUZzm1ZCKNH3HmWczRJFz/xGCRMGoGIRg0rkC3viikNYQpbK8krE+IdF++JZ3mcYrJcrEZ/yPY2/az09on8HhEgA15myV2yOY83AAiteD2OuqPjOOOHS8smUGAwVVHIyHlnJ9BELGBjVCYNmlgKpe6d1amAFnhC3GC8XmAIK5+ByIBlF/x+MIrE+IxynhrOMj1QbQmzJLRUAt07fzASM4JsGaQC5Wv6BCIweA2wHPDfSLFZntzHlqTjuRsLyyHV3oJFm3fqgljmbXBlochEQJAd5z7dTayqR9/9wkxFZzgDVUvgrVtDmVZVYy2H/zBHPUqQXm24gagMxOwNAzsGNenTvUt3/rS1QME4wb1WiNRW8KrTwFqHpuweEoKNCU9l+TNeyN+eFfrHxZ9cDklAys71/bd2/vHhkKXgMwX1CXKudPbxF4A2nPW9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(136003)(376002)(39860400002)(346002)(366004)(451199021)(83380400001)(6486002)(6666004)(26005)(6512007)(1076003)(6506007)(186003)(478600001)(9686003)(6636002)(2906002)(4744005)(36756003)(38100700002)(5660300002)(66556008)(41300700001)(82960400001)(4326008)(66476007)(66946007)(316002)(8676002)(6862004)(86362001)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dHAw14Oo6bRilugE5zmwtSMWmh3p27a3VpEzpJd6Hm18EFVvvRU/F4uWnN03?=
 =?us-ascii?Q?SWwtz84NWjeJmUkgJALXW8NegNG7p6nx5zPw6IKwqua7Ka+uh3InbKYePyH+?=
 =?us-ascii?Q?JCG6VPISwKyo0qRhIZVhCPCpp7Zcd6k227O+HcDTTdoQxQsxXWtyT60CAnQb?=
 =?us-ascii?Q?A1Ox+r7R5BiIBbDR49rDieBtBomgG9VwV7KUuvIUgGkc9r/sbx93Wkg8IGkT?=
 =?us-ascii?Q?G1bw1LDFOmj4WI3ngP0LxRgajRwj1xIjEcBxcymi3F2toyx++MNn7dm4YASm?=
 =?us-ascii?Q?SCSOwg2/ldGkvHYPHUglH4SllmIDUjMLy6r/F1kEbTUENNIVgj6qV2X+Vr5v?=
 =?us-ascii?Q?FeoqlMbXO+bH56XjEgAOUbWYX0K6B1dnSHcLfBWAatFEZd+8iCIZDG4vJvnl?=
 =?us-ascii?Q?u1EE+iQaHhT5XCcSB36txJIzB7qEo6o8n+xEjYZ7Y/NYnk0ZVPdJ/AYEGrav?=
 =?us-ascii?Q?Az63lolbnoWHTNW0HGipDOVzUMXY1zuVVSBSb23QL92w7D7xLmk9PiLj8gRp?=
 =?us-ascii?Q?miHdIUZNMFJO/yg+bGuOpJOaXJtkXC3z0iHesjbP0FgwIx9WTim3VfsSg+OD?=
 =?us-ascii?Q?+6FotvU1Nze3qK726h0flncDWt/Ft5xef4gViR+x3D8h9SwyN/POqUEj0XLV?=
 =?us-ascii?Q?XDKtRc6B4bdneV+v+Qpf9VsWmVe6IpRv44p6MRVSLgtwbGxaAEWpEp/2H7Gm?=
 =?us-ascii?Q?JArIhJDZG7NmFgrD5j/mJvXe0AYRvMz4rWH9Q/wwoT8retXEMhEVPSyiAG6w?=
 =?us-ascii?Q?XdKp4T5wiA751CtV/k/sB+hxhCsXMwYRODpA38myUtq8TpxPmoJCiUrexZuH?=
 =?us-ascii?Q?H5SESHMCF11MK9e3YkjNNe4DL3trYJugG494JA/q0dKPY8HDcpH78C6S2J6A?=
 =?us-ascii?Q?zp0isenrI4qUQQcf6oWjG4J4w4evLip64AXtSynSMcn1A7nW3trxzd2/sA34?=
 =?us-ascii?Q?Gp06NTE6N90y6Z/GD8u8RREweAb6rVha6MU+MlNr9/Psq6wBXazUrGEr6vgb?=
 =?us-ascii?Q?RVAZb2sh6KA9ubFppTwj2gloy+YDvz6mYjmp8z8HfQgZA0LZ4BsQWktVN+nX?=
 =?us-ascii?Q?NHl/bgGXrGmXsjsNkNZI2YDU0xq6KNvtCt1OH5NWjg65G3VPKZ2XZhL+P4Kq?=
 =?us-ascii?Q?G2ZZEzazh5O5e22yJuRsW3n/GWZ+fYeTrKrWAgmfvhuwZnRScC69vOCAog3/?=
 =?us-ascii?Q?/TAQ5US90eE+VhzkRmpk5+p9XKSfrYBPiAJvGxG9Z4cVbWaENNUhFG+D4G/0?=
 =?us-ascii?Q?l7CdLJqVEGqIKOvZU+3XG/72BbtnKYTRf2vHyskAIUWjk1RJH024y92Jx92U?=
 =?us-ascii?Q?OnGcWxTERBDzXVc9384BOTqC0SXZQTQsSWNPUicA0UmNU4Cxe8vK5ODVDx7l?=
 =?us-ascii?Q?MQhlYU9roZspkfaeA99kXrAdBM5nVzEOR9dTU+c4SnqNzUPhO+FGpd9MwI6p?=
 =?us-ascii?Q?rAjWZSurShxz6PWV0TdkY4TIa8svsyJQKaP3j+GkKErQgHqgF8X+zX0tpoyV?=
 =?us-ascii?Q?qqBLS1d9104r38XcjZ1qEAfJMFZMXzuqXpizLU8pQa7Vuoh39eLHlbmkBrlM?=
 =?us-ascii?Q?3FWPqK4DU0WT90Ed5V8vhPwGjCoux8fDg7orfpUmQb1Xi3Uy3HZYOIPaEcwc?=
 =?us-ascii?Q?Hg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 78c74104-e44c-476f-fd62-08db3c52dd72
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Apr 2023 19:11:20.7370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7qc4KUvfzf/8PHl61Dt0sDgYmMuGpsQXGsXBePjRwqP77cceLyWVktgpUo7/lyIuYRDGS2Phje9J6D7ljjlPQ6+oihNnZ9L8i0iWRe7ndfQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7674
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/10] drm/i915/display: rename
 intel_modeset_probe_defer() -> intel_display_driver_probe_defer()
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

On Thu, Apr 13, 2023 at 12:47:30PM +0300, Jani Nikula wrote:
>Follow the usual naming conventions.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display_driver.c | 2 +-
> drivers/gpu/drm/i915/display/intel_display_driver.h | 2 +-
> drivers/gpu/drm/i915/i915_pci.c                     | 2 +-
> 3 files changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
>index 1386f2001613..882a2586aba4 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
>@@ -21,7 +21,7 @@
> #include "intel_fbdev.h"
> #include "intel_opregion.h"
>
>-bool intel_modeset_probe_defer(struct pci_dev *pdev)
>+bool intel_display_driver_probe_defer(struct pci_dev *pdev)

thanks much

Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
