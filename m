Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F469A817C7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 23:44:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0F5C10E778;
	Tue,  8 Apr 2025 21:44:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NiwUi2hh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24B4C10E777;
 Tue,  8 Apr 2025 21:44:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744148663; x=1775684663;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=LwKJtqPdbzU9q1Tv4VkqIy4EEKqB3on5DRfrxbnaL5s=;
 b=NiwUi2hh32UIAxB5Qb8iSTgClp2WHLkiycNiL8wdUFogIj8yrn459vFn
 mNLZChuPML1nOAb1NwFlpsNHUtCroH7UXqumemEMFQb80bzY4KPffWsjD
 CJJoeUvxeNlRNFp6Va5t9jsJDqKIbHOOR8fEQlZ9W49QAHp80lGk/DUI5
 WoMR2o1Ve+dpt92IG6vXf9gVZu4jk/XBIVS9EzaxALxtI/irBmm5IQeYz
 tw1feMt2Fa2NovaaB0x1JHht660sDuTu7u3hayjv02y9vhAmJi6nt7OcB
 WNUXSMRHmVJQM1+gUeNyUSmHcTJ2mdG9U51iHBxSRzzsnR86H8494nXMd Q==;
X-CSE-ConnectionGUID: Vlnb0x+xS7SJJMq9Y1Pmmg==
X-CSE-MsgGUID: nVtP6msQSpGk4vHUHZiuWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56243169"
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="56243169"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:23 -0700
X-CSE-ConnectionGUID: B2LKYFsISFWADGVRX++cfg==
X-CSE-MsgGUID: u6uxxVvCQg+FNs4C18C4eg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,199,1739865600"; d="scan'208";a="128724403"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 14:44:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 14:44:22 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 14:44:22 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 14:44:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VwPz611DjI574MzibQ9UO+q2kmGsAUzTtw4CDjQ1BbMeF1hScRztv1BFZ1yRg8oeOpB2fVDTjXomksfx4lmOVqLIrW+CaoWDILartT6GqVHsHPZi3UIhVEgPJXJz6CbLXuuIMZ9a1OPMTPGWQoyQse2xsLNox8+Castx6GWQEXIPH0PdZumsFXxLmeTPqHh518VFkgNWn41MAL+aYte4pJSYBeKTPXc6ujpD6eHu7FFwzveqZ/YPhQ6VPxY45FzVbqrmVY3sXpgx9+VBgeqt5DRdnnLBDSKXkGymLGJwn8KPGLUSXAnXM65xbPzfvtaDksI6qlqwzRKszQAJ2Ro73g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k2BMSEzq80KRW0p0g9HgmBxWbicZa2klq8/e41ujWu8=;
 b=M3mCSBw2xWLuX0AmaWa4gVe13Sioehvvhkg9AhRM42/fevr3mDMWjSqMg8xZa1NuzbCB/bYtxlUMfSs5iIi9DoiszwMz1FfDe0B+G/EA3brmuK0u2sSgNObVqmtRvgxQYDyjpmFHPSVb0CNTpfUW2UhxbmC5y+ddVo2lzJIZOrDhtvrejZR3tyeZtvZtjEUySd700Ce3FyvKlf10gy31zPqjpEo5jYP037hz417i/Z8yZCuuHlaT2kKX9eXqcJvbkhiUUd3tQfeKLQlKh1WWQsa3P3Ca4iYViojaexAMw7ty/yv3kfsv9yZh0HPssijj0gSUve6EIC7bAgDeAJ7PBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DM6PR11MB4562.namprd11.prod.outlook.com (2603:10b6:5:2a8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.20; Tue, 8 Apr
 2025 21:44:01 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8606.033; Tue, 8 Apr 2025
 21:44:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 10/10] drm/i915: Add force link bpp debugfs entry to connectors
Date: Wed, 9 Apr 2025 00:43:40 +0300
Message-ID: <20250408214342.1953197-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250408214342.1953197-1-imre.deak@intel.com>
References: <20250408214342.1953197-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0060.eurprd04.prod.outlook.com
 (2603:10a6:10:234::35) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DM6PR11MB4562:EE_
X-MS-Office365-Filtering-Correlation-Id: a0ee7a72-0732-4ca8-2b37-08dd76e6798c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?wLYb5nh0ZMa8CoYeUL8xVBV5hQRd9Rrn72A1Jk1w+qCanKgtLc+Pwbly3WWR?=
 =?us-ascii?Q?sKv/qGW3j1/2SvI6crzLI8BMTpfeHjjD3tkLIQauIyfeellpUkDoYozG864t?=
 =?us-ascii?Q?/W0ziCL/hm/68xigruvopT2+kX8iHD97kNpwt5DWMMt8hdtnfFD48E5xDHb4?=
 =?us-ascii?Q?qdjLdKVHcoIFi6hhBjrIceBPauRoBI827b1npDDNfbJgFg1f+giL/tHLvsVk?=
 =?us-ascii?Q?D73CG3vRRc3jpU+zRqsxoVeE7kxTq9TzX+MPr9VWTJZqjX8UIgbPDJ3iTqKV?=
 =?us-ascii?Q?pfiRzjyIsK6EwxxPypynHMRDPXZpMUXuRBER8ijk4BH9CAPHF3He1uTlZd5A?=
 =?us-ascii?Q?fVGSElMkKFt4wmyUB8w7PeIGLNwR/i6NxUeBpm1SpOZJpSiIWxnJakqUALB+?=
 =?us-ascii?Q?yLmOKPR1u+W3kpM+bKXNHfxSFciVCCup9lf4Ukm6dNCUUqeUtb4lkJU2LhTL?=
 =?us-ascii?Q?MEvrtK+VZdfve8GxYbjaKmxiFB3ruZmqxpN5xrolIqrj9VYwXaQglYoSwAt7?=
 =?us-ascii?Q?vMW6KG7f4t//9Kso+rqzVvTxdC/wlRUeET77J4Q90MrtXg9s6oirxY6nNrns?=
 =?us-ascii?Q?qfwDZCqA/fxfXnM+dVI53kKGnw3ecw5r+mx/D3SPilyxNC6UT67btBs5JqQv?=
 =?us-ascii?Q?5KU6VnIT8CSUPATTZMhogVviEDclkLe0UzFezJwkKk3cdS5tUFWjZkuGFz9B?=
 =?us-ascii?Q?OSXDefd6BlsmrAb+PSy4PoXguO+BpBi+7OBjnBAWmfl9MFn9onqEn8lxPe+f?=
 =?us-ascii?Q?nB0q/1sDL/oUWOUpZF1Op4HEkm06yhz3LaWRKz54EtByOhn9crX7uUEKS1DN?=
 =?us-ascii?Q?C/rBUC6RMwZNhG10tSHE6XaEMUna5iTv7C8jvXgotD8toD0SscXncM67ly6D?=
 =?us-ascii?Q?TkLv++5RgV3a5cqD4fFbc+KhEeNyquE9DivlwsKghH8mZRO6hRjyjiUh35Ut?=
 =?us-ascii?Q?bBai0cYrXVi+jvuxvrHdMLETa+2G8P/2rs8kueczEBVtX7izjv0M2eMafqL3?=
 =?us-ascii?Q?6hcpOCSViH1qTa9SM8TsY6LPEKym9wnh63o0LJq/8OBqPea059YfuWEJygjM?=
 =?us-ascii?Q?pTOfBV3zuH6R0ujINdrN/xkrzgx9WTpi2IvN1gYwJRwAtg0yT3IozYJA+pgO?=
 =?us-ascii?Q?UvfmUjaw77FnA7AXgHBq3SePvtSRDEDrnfDHRf30JYJmzYbCavpjlqvr4Yax?=
 =?us-ascii?Q?A2CJitMauhjfASdT29j14cU70FiNsOrd+HA9xxN3FrXiqCKeyoKedDB6vshn?=
 =?us-ascii?Q?A6hXhTB07SMETeMxARplKtSBbR+llVQ8HhIWy/wNgpsHV2TvB2Bg7mZHk9tn?=
 =?us-ascii?Q?66IgcrNTMRCtDEKzLxCkjWtwf6JtiA8kzFHdCRK2uIO1bOoSnPUad1YpPaGU?=
 =?us-ascii?Q?MS+rl3lsHZt76u1qhMtO31xJ945o?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0r76ZzvgJwmbXrAKBCEd0grhIglLn82oABfTYNWm5CGe8rDYvcZfuN4XY4di?=
 =?us-ascii?Q?UJbd+ip7r2F7ZvU7IpYnUuKGwG7YZZ+/0wIG9kkQJVxhkP/4TWNdgDYcbIUd?=
 =?us-ascii?Q?/3o6bzwBfLEwen0xkElUW8+5sgN0y7GtM8mWjnb0fbiaf28YE/zGIkbV9evV?=
 =?us-ascii?Q?5LIiZWywld+3NcMjHDG0IpITC+5XrALnCWSzDnq4uPyYhQ5ctayRYBvZ0zt+?=
 =?us-ascii?Q?MV6P3MAg3tvo2MBhg2/Jjr9escY4FSKtwQ6ZIpIKWH17MwoA6PX6guAtV25p?=
 =?us-ascii?Q?8jgwni8vsP33ekGX2Qq8MgQiCYGo9AcNz+7KtPCqh9oWMcQkolT1t8Hy/RAE?=
 =?us-ascii?Q?llHCoH8hZq1f9GWs35AKUdzzPBcuV34IjP3IA8h2fKAKegF1GO6TjbfHiiKU?=
 =?us-ascii?Q?Oz0jxX9IZqV1AI8ekzX/SAFengQuhVceyCZh9f0r+ChjfrKNyJzStZKm2MeD?=
 =?us-ascii?Q?NcUW6SbnS/JgzNRiwVE8Y3bdTgZpTtLxAzsABM7wySEfERROQRvimc/m5JGl?=
 =?us-ascii?Q?F6JO3bCvSso3lK14vTnE3LngYamVaGZJyUsbOqwp1Bv61U3kPYrcihH845qi?=
 =?us-ascii?Q?pZNjXgLdM5pa2pj2Eo4mKXNTHLyYgatxiqeC9ez1Wxztn4PB2ygepdD4KUn5?=
 =?us-ascii?Q?0YSaGgiwZY4qymOGODxzF4izwmiijXMujQCzIwj7IcDZxzfdWpzPr2nOkoCC?=
 =?us-ascii?Q?s+075zCHhDuqqruYL/xnUrRuSHSPXddzM3PK0KFLA54sUCry5e56EPaHgppS?=
 =?us-ascii?Q?a/ZByBiKBbVHTeUdQqefSntz2XxKYd9CuVL6b04d5iFwarqPs9MUujMsgNNY?=
 =?us-ascii?Q?tEDSkA620Je3V94ZsSRpdMxqF8icsLxqLCmJ7BDbam7XsqPSorQaKLhxhQ/r?=
 =?us-ascii?Q?q65R0awS5kEddW/qO9YwO0QKe/N8c1DHUOkC562dck3CD3huRycm8udyOZM1?=
 =?us-ascii?Q?uT/6EqjpEdh1/q1uW8JOoFbXOIFYhRJv8REwvEx6GsFacfiAM78TT6jVRo/f?=
 =?us-ascii?Q?w7TjgX1LXtPahKElbcZKhtpeByJuhEV+MNVOwVylHWsRBuZMq6oRlihzsV5L?=
 =?us-ascii?Q?NWOkSdBNzMJlGF7NfRhiJ1KtPU3fXZjl6jEyaGh3vGhgRdNwIYlLyjeBx4ON?=
 =?us-ascii?Q?4OFKS55x3EoyK0TbDgHpfMndU0lMiD9gNjUtWgC2uyTVQPEokKKL5qjaK9JA?=
 =?us-ascii?Q?e1a3JhJmCAA3+92p5beCJWsZQVnQD/0LuJAiyppVRBWEXOX6w/LT4pptzM8E?=
 =?us-ascii?Q?4jpL1qAKEciK1C/uQDlgBjeWlVitFNWPUnAN6l7zBbxln2syJr2gOwrDcJdY?=
 =?us-ascii?Q?0EORrf+sZDBLmUHwAUhBoDyx5QyDPw7Uo/Ghu1p8NyNE1KXvFzxK6r2y26I7?=
 =?us-ascii?Q?migqcfbcpOtcZaj0g3Hkf8iLGpmeiF1BdC5mOT33Ub59QlIEHTfHtlQaKGOD?=
 =?us-ascii?Q?yXzn9a/CoFNccVRZU5w5n3hWWs8qXVkyH6YISMiunabShWck9upBAagUIQeM?=
 =?us-ascii?Q?u4EnzbgEQCJ4egAD3iBpWRBHkCNMjcZVVko8DLfN4qMiKPUqukTZkKgXFvXZ?=
 =?us-ascii?Q?Lbt5biVnJvnl7NG01cHoFREqw5eDTak1VC+yH6cZ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a0ee7a72-0732-4ca8-2b37-08dd76e6798c
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 21:44:01.2900 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: N0YZb0IrW+cvSWDG48SkM46aG690AqdK4H/eSOGicm/pegz6zil/O5eBtDruX0RSF2rFcxGmbqxTjt9+fE2VTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4562
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

Add the debugfs entry to force a link bpp to all relevant connectors:
all DP connectors and on an FDI link CRT/SDVO/LVDS/HDMI connectors.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crt.c      | 20 ++++++++++++++++++-
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  3 +++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 ++
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  8 +++++++-
 drivers/gpu/drm/i915/display/intel_lvds.c     | 20 ++++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_sdvo.c     | 20 ++++++++++++++++++-
 7 files changed, 70 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crt.c b/drivers/gpu/drm/i915/display/intel_crt.c
index cca22d2402e88..69831d6f68912 100644
--- a/drivers/gpu/drm/i915/display/intel_crt.c
+++ b/drivers/gpu/drm/i915/display/intel_crt.c
@@ -43,6 +43,7 @@
 #include "intel_ddi.h"
 #include "intel_ddi_buf_trans.h"
 #include "intel_de.h"
+#include "intel_display_device.h"
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
@@ -51,6 +52,7 @@
 #include "intel_gmbus.h"
 #include "intel_hotplug.h"
 #include "intel_hotplug_irq.h"
+#include "intel_link_bw.h"
 #include "intel_load_detect.h"
 #include "intel_pch_display.h"
 #include "intel_pch_refclk.h"
@@ -986,13 +988,29 @@ void intel_crt_reset(struct drm_encoder *encoder)
 
 }
 
+static int intel_crt_connector_register(struct drm_connector *_connector)
+{
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	int err;
+
+	err = intel_connector_register(&connector->base);
+	if (err)
+		return err;
+
+	if (HAS_FDI(display))
+		intel_link_bw_connector_debugfs_add(connector);
+
+	return 0;
+}
+
 /*
  * Routines for controlling stuff on the analog port
  */
 
 static const struct drm_connector_funcs intel_crt_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.late_register = intel_connector_register,
+	.late_register = intel_crt_connector_register,
 	.early_unregister = intel_connector_unregister,
 	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 368b0d3417c26..a84bdc83417f1 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -171,6 +171,7 @@ struct intel_display_platforms {
 #define HAS_GMBUS_BURST_READ(__display)	(DISPLAY_VER(__display) >= 10 || (__display)->platform.kabylake)
 #define HAS_GMBUS_IRQ(__display)	(DISPLAY_VER(__display) >= 4)
 #define HAS_GMCH(__display)		(DISPLAY_INFO(__display)->has_gmch)
+#define HAS_FDI(__display)		(IS_DISPLAY_VER((__display), 5, 8) && !HAS_GMCH(__display))
 #define HAS_HOTPLUG(__display)		(DISPLAY_INFO(__display)->has_hotplug)
 #define HAS_HW_SAGV_WM(__display)	(DISPLAY_VER(__display) >= 13 && !(__display)->platform.dgfx)
 #define HAS_IPC(__display)		(DISPLAY_INFO(__display)->has_ipc)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8ca33ebedce27..0b19a9b5adda5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -80,6 +80,7 @@
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
 #include "intel_hotplug_irq.h"
+#include "intel_link_bw.h"
 #include "intel_lspcon.h"
 #include "intel_lvds.h"
 #include "intel_modeset_lock.h"
@@ -5890,6 +5891,8 @@ intel_dp_connector_register(struct drm_connector *_connector)
 	if (ret)
 		return ret;
 
+	intel_link_bw_connector_debugfs_add(connector);
+
 	drm_dbg_kms(display->drm, "registering %s bus for %s\n",
 		    intel_dp->aux.name, connector->base.kdev->kobj.name);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 35214d9a8c781..7508aa4e3695f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1445,6 +1445,8 @@ mst_connector_late_register(struct drm_connector *_connector)
 	if (ret < 0)
 		drm_dp_mst_connector_early_unregister(&connector->base, connector->mst.port);
 
+	intel_link_bw_connector_debugfs_add(connector);
+
 	return ret;
 }
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
index 8f2cef36bdf79..0747ef8d6c0ca 100644
--- a/drivers/gpu/drm/i915/display/intel_hdmi.c
+++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
@@ -52,6 +52,7 @@
 #include "intel_cx0_phy.h"
 #include "intel_ddi.h"
 #include "intel_de.h"
+#include "intel_display_device.h"
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_dp.h"
@@ -60,6 +61,7 @@
 #include "intel_hdcp_regs.h"
 #include "intel_hdcp_shim.h"
 #include "intel_hdmi.h"
+#include "intel_link_bw.h"
 #include "intel_lspcon.h"
 #include "intel_panel.h"
 #include "intel_pfit.h"
@@ -2611,13 +2613,17 @@ static int
 intel_hdmi_connector_register(struct drm_connector *_connector)
 {
 	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
 	int ret;
 
 	ret = intel_connector_register(&connector->base);
 	if (ret)
 		return ret;
 
-	return ret;
+	if (HAS_FDI(display))
+		intel_link_bw_connector_debugfs_add(connector);
+
+	return 0;
 }
 
 static void intel_hdmi_connector_unregister(struct drm_connector *_connector)
diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
index 89d26913e2539..3ac6aaa025434 100644
--- a/drivers/gpu/drm/i915/display/intel_lvds.c
+++ b/drivers/gpu/drm/i915/display/intel_lvds.c
@@ -45,10 +45,12 @@
 #include "intel_backlight.h"
 #include "intel_connector.h"
 #include "intel_de.h"
+#include "intel_display_device.h"
 #include "intel_display_types.h"
 #include "intel_dpll.h"
 #include "intel_fdi.h"
 #include "intel_gmbus.h"
+#include "intel_link_bw.h"
 #include "intel_lvds.h"
 #include "intel_lvds_regs.h"
 #include "intel_panel.h"
@@ -501,6 +503,22 @@ static int intel_lvds_get_modes(struct drm_connector *_connector)
 	return intel_panel_get_modes(connector);
 }
 
+static int intel_lvds_connector_register(struct drm_connector *_connector)
+{
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	int err;
+
+	err = intel_connector_register(&connector->base);
+	if (err)
+		return err;
+
+	if (HAS_FDI(display))
+		intel_link_bw_connector_debugfs_add(connector);
+
+	return 0;
+}
+
 static const struct drm_connector_helper_funcs intel_lvds_connector_helper_funcs = {
 	.get_modes = intel_lvds_get_modes,
 	.mode_valid = intel_lvds_mode_valid,
@@ -512,7 +530,7 @@ static const struct drm_connector_funcs intel_lvds_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_get_property = intel_digital_connector_atomic_get_property,
 	.atomic_set_property = intel_digital_connector_atomic_set_property,
-	.late_register = intel_connector_register,
+	.late_register = intel_lvds_connector_register,
 	.early_unregister = intel_connector_unregister,
 	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
diff --git a/drivers/gpu/drm/i915/display/intel_sdvo.c b/drivers/gpu/drm/i915/display/intel_sdvo.c
index 757b9ce7e3b1c..ab7caaa4f287f 100644
--- a/drivers/gpu/drm/i915/display/intel_sdvo.c
+++ b/drivers/gpu/drm/i915/display/intel_sdvo.c
@@ -45,6 +45,7 @@
 #include "intel_connector.h"
 #include "intel_crtc.h"
 #include "intel_de.h"
+#include "intel_display_device.h"
 #include "intel_display_driver.h"
 #include "intel_display_types.h"
 #include "intel_fdi.h"
@@ -52,6 +53,7 @@
 #include "intel_gmbus.h"
 #include "intel_hdmi.h"
 #include "intel_hotplug.h"
+#include "intel_link_bw.h"
 #include "intel_panel.h"
 #include "intel_sdvo.h"
 #include "intel_sdvo_regs.h"
@@ -2502,12 +2504,28 @@ intel_sdvo_connector_duplicate_state(struct drm_connector *connector)
 	return &state->base.base;
 }
 
+static int intel_sdvo_connector_register(struct drm_connector *_connector)
+{
+	struct intel_connector *connector = to_intel_connector(_connector);
+	struct intel_display *display = to_intel_display(connector);
+	int err;
+
+	err = intel_connector_register(&connector->base);
+	if (err)
+		return err;
+
+	if (HAS_FDI(display))
+		intel_link_bw_connector_debugfs_add(connector);
+
+	return 0;
+}
+
 static const struct drm_connector_funcs intel_sdvo_connector_funcs = {
 	.detect = intel_sdvo_detect,
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.atomic_get_property = intel_sdvo_connector_atomic_get_property,
 	.atomic_set_property = intel_sdvo_connector_atomic_set_property,
-	.late_register = intel_connector_register,
+	.late_register = intel_sdvo_connector_register,
 	.early_unregister = intel_connector_unregister,
 	.destroy = intel_connector_destroy,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
-- 
2.44.2

