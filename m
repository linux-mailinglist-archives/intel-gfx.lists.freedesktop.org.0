Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16850A9F266
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:31:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 45F4710E501;
	Mon, 28 Apr 2025 13:31:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dmYFqLu5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CF4510E50B;
 Mon, 28 Apr 2025 13:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745847114; x=1777383114;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=auOkbydcI7HQbpEafXci+ndJETfNH1qMYqYyYktcX0Q=;
 b=dmYFqLu5++zuj2Tf1DTv+PQRPhIt7GrQ14QhSlT6f70gcMQLk/tg+sdT
 p+hwbY2rFMCJFwBg7Er79Dya3pSatOQsP/P3CIYWeeHqZQPdWrmaxm1l/
 cOItYFAUkxqy8nIVRLStJ+q8WFJ10WK7TtrEA4SWAyxirfTWER7NXOTd5
 R/7WK1/V4y/Uf45G83AfaEmEADPPs395o7DDEyxmIbYcsh6KTg9pgZOXE
 4Gslz6jh+It4CvXSbJjgRzJwwRaK8cBQJQfiT19O1aYZ+MV8eSQyvReN6
 XOAaHU25vqKiVL4t26HWqZpktY2ABFpgSXIXEdEM9JZN3sLpFianBTQBL g==;
X-CSE-ConnectionGUID: 98l0fuRMToOtlSDoJ/JcxQ==
X-CSE-MsgGUID: p5KTBbJzRyWjGRtnUkQHzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="51256742"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="51256742"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:53 -0700
X-CSE-ConnectionGUID: ehQyTm4gRN+0KooN9VTuYA==
X-CSE-MsgGUID: miIgKJRcSh2toQzx4cdTlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="133418853"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:31:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:31:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:31:50 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:31:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=c1/WfVOyov274BORSk884d/4eM8M1/li0n65LDTsjYRX2AGVBgtVOhwsuSaMSlzHkmC52OiRA9QoT8+t1AvxFqCPXUjVGBc8ejpVpTPAKtRyDknsrQWPuw5joj9oXCiOkUzKr8ImGf/xBzomRQWCMipmjRTsrB6wLOExsULYdcNxxkVnKQpTMfi6yKEweE8+2HO1Lh+KRTD94d66XRuYbN1ohsnEdhDZ34u84aW1h1ickpPlVQezZyXuKEkrzGr3gGOzie3zY9voypEOVNQpOIbVmiUar+aFWXyKRDoGbkG6S2AnZjxxOnvPw8sAmXaZQ63TZdtprsPOPkbUuj+w3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zZ5UEn/I8S0jCPIwe6gg+cbHz7MWZv8ZAizRb6VJ7/M=;
 b=VjPNIm0TwhkFqOJehp+i1ZLxBktWsaiKmH/kksgWM1f7AX/gt9hu+8rz6ASXdyIEyNr9UF8TEpMCOUS+3K0lohP49NVkzuOvpQSgDsNfWTxx8o141aL9iIFmg+c4Wk2/8LVJLND3EUCGGLw3tXIel48zGnG0Nh1C2M4sKX9kFJvepUPSR7REwdiO/7B3GphdegbEcrRgvBNqKLuy6hSIMQ1ghyLCoy9DoXZS7YcT85UbgJJHmBBTnDq5aTwMGx/dxBaZEoEauNSIbD2rwzQZJIrYuJDovJysph5YhQmJjonXeSy5QqiYYa+/b1eTptb5KZe31D6PRbOJlTmNUGv1jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW5PR11MB5882.namprd11.prod.outlook.com (2603:10b6:303:19e::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.29; Mon, 28 Apr
 2025 13:31:38 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.8678.028; Mon, 28 Apr 2025
 13:31:38 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 06/12] drm/i915/dp_mst: Simplify computing the min/max
 compressed bpp limits
Date: Mon, 28 Apr 2025 16:31:17 +0300
Message-ID: <20250428133135.3396080-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250428133135.3396080-1-imre.deak@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P123CA0067.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:153::18) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW5PR11MB5882:EE_
X-MS-Office365-Filtering-Correlation-Id: c7492516-f860-4134-2862-08dd865900f1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?elIPe/6W13/+X1DsgChAHe3FyfbxlObDwxfZtj3+fb7yCG3w72cRctFy9Zs/?=
 =?us-ascii?Q?ostwf2w8WeN6MH5TCGZWTGLkkEi07FuOsSSk9VkR9ngj9bgQOaHlhFhJiv/Q?=
 =?us-ascii?Q?Z8RpB3ec+3T8jPw52VsoyKr6cc72BgaZjirM5qfHcykapKiqr5SWDZoPthom?=
 =?us-ascii?Q?/wIU99bEjG5AqiT0T+Rna3uI6JSvF72VWOE/IiHUaOKd7ChMJWe89wRPos3E?=
 =?us-ascii?Q?zHOJQDIYSESeVJwRRobD3LINLPcBZivFSN9NOiVEx3fCZ2b2XkoVicC2313p?=
 =?us-ascii?Q?YTljpj2EYUPv6z7gXnkc9vSJkpbJ8929Z19kAEIZooPD7lG4gNueVuvwMAwn?=
 =?us-ascii?Q?FNrFiwnnFWNtRGun3kXwZeE6ZBs8V6Lv7R7a8zotZl+fxCOvAgHPZ3DYU79T?=
 =?us-ascii?Q?vQf1yIedUCP0Tbc9O5tMWy0t1bC/n5bwW4Q8Ed3+N/wCgCYiJ8K9VLfMF/fy?=
 =?us-ascii?Q?xCkDE0sfeoYG88hHGMyE0u5AM65HVGKhGjgDFriOcXUJWJMkA+zAIuhA6yIL?=
 =?us-ascii?Q?GP3zGAyOoESSY6ikvlOUQ2ogGdtBONx7fe2eK61GTq9cpxmmRM6bc73eTBFj?=
 =?us-ascii?Q?hh5nx9eJKCTXBqRc4dRpvigdftTedGeHtYHRChXZwGTfysK2g9H+++EMDFom?=
 =?us-ascii?Q?/aZHq1QCo17EQrgbTfz5IjELNnfDI3VrhthFgDeAwBVpueVSJfveShPKmJtI?=
 =?us-ascii?Q?PFbgEl6QuLdW18UZAXZQAyr8jwLwETdrRh8OBZ2J4HRMpru0a5zetv4nkWi6?=
 =?us-ascii?Q?wO9jgpbyj5c6NRiEAgmSK0xLQr/JQ9jBYWWCLca0S7iTP6+GW1cPwgi6oy3j?=
 =?us-ascii?Q?z8fgpApnLi6YdLmi0tAO6YuEWCI+ZQAyMFoZRLfJL+S2iAxIUiZvvGtf+Ejt?=
 =?us-ascii?Q?Xg5Fx7KrDF3NeUoulsjWj7sK9xwhpD3ORQ0lA847qfuiJOhzS7Xl05V6bHEm?=
 =?us-ascii?Q?2us2b9qEQqciEV4vWGCsCm1SiRtRSbhVmUsFo7dsQcLNJif6TgV0+CLuO4Xo?=
 =?us-ascii?Q?+sXJSOpustXYKYXX9ZS7q2fGXRlwytw2Nx7F3V3OrjiigTqViGTfD7X+fFZV?=
 =?us-ascii?Q?lolI7vz7XIWNC1go9sa1/7u0bXPkfYF57WNbUq6MXtOiZ1sx/NdJsg7/SxrW?=
 =?us-ascii?Q?Hld4ebCUFuso0d1eMMcGlOBd1f/e+OKizabYhUvUCsvo0mgP/L8odwk6hWHJ?=
 =?us-ascii?Q?QIzwAI/cEk0nMIimxlWicsnIQDFw9s3Eziw+PNh0SilqglgtDfyLkPm1AnJu?=
 =?us-ascii?Q?xzfmo8LGov59bpw6GBq9vlTq/zYqOqdBXfs0Qm7znVsgml86ktFUBLk1i8JZ?=
 =?us-ascii?Q?1hqT/tCKpgYtFbLwBpwB1Bq4y8P/TgYwdns4YrYidoV38DXYb9G5TzuhM9hZ?=
 =?us-ascii?Q?f9bps9V5tvOlP/EcwBUlJvhRJqvDKBVyGYBxeZFaSQYQnVySwCMoOQ1jdBb9?=
 =?us-ascii?Q?Kubag1NPdyQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ONTld7jh/sim6YSUfP2WzxFUPGTFfWKNbW9unrUlBsSIz6+2BNV+jyKt7UrR?=
 =?us-ascii?Q?Nh+h5dDTzsbnpnMTSUpyXj0rnBtmhkU4JWjAFiLg4Oay/Z23+ZznCf28bipt?=
 =?us-ascii?Q?kRf0xSf7OVD4UQ2zETYiDaKfaYHvrGlhSjQNy5hhh8febWGFvxddgA2gyQ/X?=
 =?us-ascii?Q?h2+06pfstHFruxG7fHPAC7/QQvWWioOVtmEIHMLCFSas0D1RNYNG5JtK5AwK?=
 =?us-ascii?Q?YWxovJ7uw07wXk9jlwXS91xluGEjQ04meg8YrhUhaa7jlgaudgWgRSMugX4F?=
 =?us-ascii?Q?EU1AytJzgM0JOS0g+NWz2lLddv/eRXakSKOb+4k6S472SQEs+sZvgx9QhQaa?=
 =?us-ascii?Q?pj2OFIWs8HgHAAEaQhox6rq8vFjj72icJrYDpZZkt+itB/3atjP8nM5jVXhY?=
 =?us-ascii?Q?jF5OdeKzndrEzKU0ZHxEeqTD015vhv7LSafS9Pk+lxSK/dVBruYWiAdJxRXD?=
 =?us-ascii?Q?gPg1I8Nre8kTVrMHTMJNTpgES9oPnS00wFMeoMvik8IabviVUr0dCGWlUgPz?=
 =?us-ascii?Q?mOLI++adEXfzRCj0wEEdVlvZ/pO1YCpHYqzuDB6EpRSrOEs7Z+h53VG1rk3i?=
 =?us-ascii?Q?unwH1PrldYe4W5Wa5646/G5xLkxqXpc1JRKDEdmPnRQlYAZWayGk7dHU+OzQ?=
 =?us-ascii?Q?BdjG66goJHYf4M2qQsqp6BrsH2pq5VhRHBCFjeQ+VSEUG4Px0VLE2yMalEWT?=
 =?us-ascii?Q?pdaHNpE+fsNA8Hd4iXekaMWt0rcfCpd7eZy2S3S1rZkJBLa4fP0/XOxPoZhV?=
 =?us-ascii?Q?aAhEDuWuxyzUI0BbSVdAXhZgLEeQlhrX1YypOWgFeswmEr1BJgYSkLeSiHPd?=
 =?us-ascii?Q?fdQzqA+AFUdxfDS9en0Wp3HM1csEirWZ6jGXnFYhVQv3SfFYcgJuzfezAtjw?=
 =?us-ascii?Q?ogCxjviP5E9Tp3/il7NEn8NeQTjOsTygl06/DOV1D1UpLB9nAk5vXbJKBQr8?=
 =?us-ascii?Q?DF3orwo9XtGOpVdpmx40C1Wuw1Z+bvabRkziesPTWqHa0rD8wRgzIUYiwSZm?=
 =?us-ascii?Q?t+d7WfVZfDkqeDJY+yCTR7oWtbeUUN57u1Hwvr+CRq0pHdLJxCU8mIXPZsW4?=
 =?us-ascii?Q?xXAZWSTHWSbR5LKh/bCspRimh7o5Y+pGDt/g3cSgP851tXJ2TeCnhgYA5nQw?=
 =?us-ascii?Q?mQprL1WX0Kbz9j2vO8frNphnn8z0VHZJv949GZ9MaZxtVsvRRHq8OpNI8Sw5?=
 =?us-ascii?Q?VqrK3xzeWrHvTfUZIdzrVviO3IR6LGo0FjoPZMd7jrNlyHnwPhJ2FE7E5yEX?=
 =?us-ascii?Q?c2LDHiWKj8kA53kFb7S8LzOpqu3E87Q8wvRSr17pkeb5UF3/W90CTzEBEC2j?=
 =?us-ascii?Q?IUs3GkNOCoX+b+R37Kt4OjSQCLg/LuXvyC059iHhcPHljoidxw+horJRzwuD?=
 =?us-ascii?Q?3sjGajvtaTdYEA//7KnAAupmdr3p9gV9eThqhXtD63I5KE1xOz+p83U7JTTj?=
 =?us-ascii?Q?dhT2rXz63ZTFiAY+Hj6zyIGX2pF5ZE4N7HS/v8XoyRlo/gDq4NMnBKsqDM5/?=
 =?us-ascii?Q?6/P5sLEDQdCFndkfZIJxfNMoJmyvkRjweh/iRfHQfkNfTD1jTm5689FN4CxZ?=
 =?us-ascii?Q?CrMgf/IMMWPOS6/a4zKvFNFPPtaxNCGy8iOweU42?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c7492516-f860-4134-2862-08dd865900f1
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:31:38.4270 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sBLlO1/OM7osLAEOnY+vtmIXlvgcBeTnXOIo/7aSvnJq3IJXRu3Kg/QY33A7pQXCMHQyREaOHDYlz2Qk42ChTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5882
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

Adjusting the compressed bpp range min/max limits in
intel_dp_dsc_nearest_valid_bpp() is unnecessary:

- The source/sink min/max values are enforced already by the
  link_config_limits::min_bpp_x16/max_bpp_x16 values computed early in
  intel_dp_compute_config_link_bpp_limits().
- The fixed set of valid bpps are enforced already - for all bpps in the
  min .. max range by intel_dp_dsc_valid_compressed_bpp() called from
  intel_dp_mtp_tu_compute_config().

The only thing needed is limiting max compressed bpp below the
uncompressed pipe bpp, do that one thing only instead of calling
intel_dp_dsc_nearest_valid_bpp().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp.h     | 2 --
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 6 +-----
 3 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5c206faadf93a..42b45598a0134 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -846,7 +846,7 @@ small_joiner_ram_size_bits(struct intel_display *display)
 		return 6144 * 8;
 }
 
-u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
+static u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp)
 {
 	u32 bits_per_pixel = bpp;
 	int i;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index a9dd9ed1afc9d..3206c86adaba6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -174,8 +174,6 @@ bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
 			   const struct intel_connector *connector,
 			   const struct intel_crtc_state *crtc_state);
 
-u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp);
-
 void intel_ddi_update_pipe(struct intel_atomic_state *state,
 			   struct intel_encoder *encoder,
 			   const struct intel_crtc_state *crtc_state,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 77acac8963e27..23bb9aa554fc6 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -513,11 +513,7 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
 	drm_dbg_kms(display->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
 		    min_compressed_bpp, max_compressed_bpp);
 
-	/* Align compressed bpps according to our own constraints */
-	max_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, max_compressed_bpp,
-							    crtc_state->pipe_bpp);
-	min_compressed_bpp = intel_dp_dsc_nearest_valid_bpp(display, min_compressed_bpp,
-							    crtc_state->pipe_bpp);
+	max_compressed_bpp = min(max_compressed_bpp, crtc_state->pipe_bpp - 1);
 
 	crtc_state->lane_count = limits->max_lane_count;
 	crtc_state->port_clock = limits->max_rate;
-- 
2.44.2

