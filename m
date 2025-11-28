Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C0FC92929
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 17:24:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4031D10E08D;
	Fri, 28 Nov 2025 16:24:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZURWYk5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C6D210E17F
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Nov 2025 16:24:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764347059; x=1795883059;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=35pev+1KtVYQym3mus9VuaENZlb8YYTHfgRGvoLVCMI=;
 b=UZURWYk5IkAqTwPyD/9+A0YaDN3TZoZvXVehdx6zMXMQuEOVcjslnNxh
 +rxLAtLR18vwcxpboVeFawmoi1wIW5sqrJpoTMQk3S/UtpJKEeqqKL/B8
 q5N28ZfGffUKPmFWRUdmZBHnvWLNObW5CWsXHHyqQnMjmgdyoLFwpj+1T
 1/QI+Cw2UZvNhCb3wp6zv+06Qk+QFYGFrRS5Y/yqXIHglO+4Jklijj64N
 funckljJReTO5AqWESNBaL5pW3Tn42S2b43hyuO16vyfSxFSMhsl1cBIF
 I0JTMGgHY45HxlLKlwh3lFNWUZuhVeW9X++eBDC5wRnaR6UUnAvK0lNxl Q==;
X-CSE-ConnectionGUID: BTbdRJtdSVGSek5XtRH5Ww==
X-CSE-MsgGUID: uVwypiSCTKW6HQBsT55frA==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="66269019"
X-IronPort-AV: E=Sophos;i="6.20,234,1758610800"; d="scan'208";a="66269019"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 08:24:19 -0800
X-CSE-ConnectionGUID: euj9NdjETCmuiFnZ9Pr0ww==
X-CSE-MsgGUID: 80maJlx0QUCahUK6eCuK3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,234,1758610800"; d="scan'208";a="193922553"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 08:24:19 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 08:24:18 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 08:24:18 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.65)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 08:24:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xeynh+ZCBHzD90BrZtkO/CC51YX2x02xNrR7yyvB8eyo50FVL767klVhsweCR4/r0gDDj7FpJ5Vb04oBrUTDwkfjSbP/7j8tBWtbJusyNQClReDO8SNDV+XCj81BGwLv4FxGA63Z7a2LGXkWVmowDoOwoLrV4O3gcZlwUyY+kaRWVL17s1FfiyXHJ2vfipUZuJPgCSB4+yWJaqQTLBTc0FsxlGwRGatvKeQUAUQL20mFGfeVV0f0C7mfrZH+ONLL417VU7IqsZM4xFRLUq+8hPBeBxk3tKS0tgZGXj6Kd5UL2oclvkKX13r393C4QsjjnbxnWgYnrH2OF29dK8mlMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8wse/9+e+0betlOdC7C94Fs7WSMSZz14uUXn8BG/7F8=;
 b=mfQeiuBZf/0sesSOq+7UOKBqXrK94GcB8eIP9orOC9LTkURVgzBIimuF0ThAXtUAd0BgiTZTuMZ5ZbpgkbqJp7LPwvucvYiwn5v3xgKTfCL/O0l68XcQtIONrz7HndPQBQe1Rje6mYQf+hwBbV1L0iptyuOiFGWcxTfIutdn+4hw13lv6Kk51A5+hnNoSzAbSvtPPItzDV9huT5l7BtIF+gF558GVihSd/CbYpOjUyB+Y0jK/0gGlmyLne0tZiZmp+TL2uOEG+wueEEro2Qg6nW4x2YZVq0/Ot98uoFqkFFcyUEZL5LmcLgxfr8Waldlvmox8pMSHV192gKgSuaP3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8504.namprd11.prod.outlook.com (2603:10b6:510:2fe::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.15; Fri, 28 Nov
 2025 16:21:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 16:21:09 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: [CI 09/50] drm/i915/dp: Use the effective data rate for DP compressed
 BW calculation
Date: Fri, 28 Nov 2025 18:20:50 +0200
Message-ID: <20251128162050.1600107-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO0P265CA0009.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:355::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8504:EE_
X-MS-Office365-Filtering-Correlation-Id: 46c3b140-9fd6-4bb6-4d85-08de2e9a239a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|10070799003;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?X4PM/UbDwf1LnmhkAnCnIIv5MoqyvPguwug/fQFCd7paQqsVpzIzp+M0I8Cw?=
 =?us-ascii?Q?ILI45n8QqLODVq8KmHZxhcKm4wHfRNiSWYcS7GjEYUlue8YaagsHTU20iwu1?=
 =?us-ascii?Q?xoxaSa2X0pszsMFyzIwF9n5UDuY+fQWk0U+u3BjZgWc42X03n0+4OE6oTvTj?=
 =?us-ascii?Q?cnOu18G/e67zwoYxtnYiMZxwxVun+81rXXn/FczNXP+B0AthYzaQry9Q7wsr?=
 =?us-ascii?Q?2gbIfmrDe57LkUZRd0snSSziYrnwkc1+MD0AEJwso7UpGf5KG4JMdN3IwdrN?=
 =?us-ascii?Q?JEYOsG1X9rjL4sxFmYzNZYyzlPski3Q5xzFHc4wyOEzq2vHu/snziq591OpN?=
 =?us-ascii?Q?rDw636QHoO0DHPLTuvYBc4voXIML0YFtWRYG4v9ICO455dROeRdDzLfib9C5?=
 =?us-ascii?Q?g60pHhpsGb7FhppVAodf342havap+4jpFk4W0FN5oEFjiaQR9hmSpSW0nf+h?=
 =?us-ascii?Q?Sff18icH3mmp4ZLcLHVVgwYsp1kWkUDYIybpII3XYpNGWkvylfDkfh/tg25j?=
 =?us-ascii?Q?afwyEAJmUYWVFRC45sZxACxCVhgQffag0L04PwB1undnGCVvnN1r7Arj0OiD?=
 =?us-ascii?Q?D9Ixb4fSyjJL6tYy9KUF3XlEEcCNsVNeTV0KT1SwCHNonNW1FmdkgoIvVHHS?=
 =?us-ascii?Q?rKlQLjs998yiJQ9/ageOfW79XJO8rfwh2NcZDSJw0vn3yOElXcjPHZfKIMuE?=
 =?us-ascii?Q?WJrLByqll4BPGr+F2tg5/jvnYdaSMpAx4BvPp1nLU74qwuF0LF/OKAWm1cIn?=
 =?us-ascii?Q?aTk6voZw2Q7FRQdl/53spej6uEKoE7WANZh9dn3FxixLc/U/VqPpqG9JXPPU?=
 =?us-ascii?Q?z59mxrS9xKt/AnzkFiUzq2Jl2cfHzqqJQLRHIVBhw2854P+rRrYmE5bywN9v?=
 =?us-ascii?Q?DbubKgPve4HgdCu5wbeCOJyyYUsduNCUHupsQmif1ON+YjbeKfpEXiYAyLWm?=
 =?us-ascii?Q?rJtpt5avARSCPbnVPt0AQWognJvxSZcRn2Yfr/t3ZgVtkNeWm5dkuYRj8l6+?=
 =?us-ascii?Q?BOl/9Sjomi8L72QyRRiCsedtvDKTVnQbZ0drKQP7CRdQ3weJWB/Zw2nkc3GW?=
 =?us-ascii?Q?b57VxAVfPJqSciQcB4Tk9bhspk2sJWnQdHDbdMqNdv8TlpIUWYlsFxg43kcO?=
 =?us-ascii?Q?lcbIeS/jAxlpND4HBsHkZ+g4BeTEgMPJXdaTM6BWtLGGwrshnX/etv5vV6N8?=
 =?us-ascii?Q?n1RqjNuKjZ/fSoXg+r/ssAiYbZNSs35V0qtVnD6C5DEODl4574UlFXP9yLA8?=
 =?us-ascii?Q?+HWkqoC9cXyRD3uQ+RzQKzot7OimvmFq8Blz8WuA/a9Ik05B4D5XF7Uc4nax?=
 =?us-ascii?Q?5ky+kdmfCgJqgWukKLul1G+uI1x6f0ifbkajysO6hUEvy7tF7BGh9rmQCUfz?=
 =?us-ascii?Q?BbOt+rX7ykI1D1gHGhx+2ROzkb0EWCaKAXnuxy5xJfcNITtXTUTzIEZP+lbP?=
 =?us-ascii?Q?Gr38wlMPUQhpNtL1Z9tQfv0t6vqlLBQr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?1t73n8un8prLh1EieJ0pwoGIkrFyRgrb/MlWW61qtGZYmsOSdF9he06ItLhj?=
 =?us-ascii?Q?UJpfneSn/58x32WOfIgzfeuAdy6qU1Hjjoo3C7GVDtnEFPV5bcmGtqb6Wvs0?=
 =?us-ascii?Q?5oF2/Z1OP8LGq2zckIaVuu/a6yxHt3Zh1M2nLS3zkFWKb59H2zgt0tS9WNP5?=
 =?us-ascii?Q?b5WRWjSvjRD2BZJL5eFZ0515cVTIpuS5xVJ4PUHt63Hzlh0DCE71SQrL6Xh4?=
 =?us-ascii?Q?mr5ej2++nbx3N8S+aYFOmMq9pjv1WCHqqLfmYT/vgzYEQpRhn1W9NkZY0ANF?=
 =?us-ascii?Q?XR6ittHFucmZH1w/WraBkOSUeFrh23f56VyLIZShKKSTiQRP7A7gmva9g2K5?=
 =?us-ascii?Q?zS0YkkqykRlhCGDtr50zSU7Pg1t7hP/IORPI9HzWmrukS3XaPUsInpAsfRgl?=
 =?us-ascii?Q?7ZIRkCknj6GGPXFnEbz3n0qWgVGjo+P1qxw4b4igtiUWiGnCOobMVldhBI9p?=
 =?us-ascii?Q?FrtGAMnRQXgenl3OnspUBAvmV6G9zv6pI6dGLt9iDoI0lZqDuQ/zziL4fac5?=
 =?us-ascii?Q?4Cuee9G8ghiHfksTfVum8WMW3uQToN3XzWO6GcX6zZQxOYq4HBFZUXovlGgU?=
 =?us-ascii?Q?Ts9VrNAyShUnR2bMYXtemgh1NSY0RflKLGV7N45kx2Br5JdXMe2GPpIQ+Chf?=
 =?us-ascii?Q?prvH2BzXkXbXT+S7J74mMkf9j26OWkkBp4JTT1+BeV+biaQWlUW0tX2ctPm9?=
 =?us-ascii?Q?3qQvA4o7OJihXehQS/gV3EeWCYIoQfqC/PgVUHvLcaDs1ALuyBl+0g092f0e?=
 =?us-ascii?Q?bsTIOuztN7KRlgG1PWPSQEZ0vA4vu3L2Af0YBCMWXl8aFI1q79eAItTUh5FP?=
 =?us-ascii?Q?1C4cUnaHTKGQ1+D0GE/TAfYhIdYr7rY49RtJYDOvvLelbHC8bodovWumNnwq?=
 =?us-ascii?Q?c49AevQwBoELngSwfjP1dIfbN973QMKxDwgwSO0nraw2LRVQyRnk10QLMK9E?=
 =?us-ascii?Q?7rYCRvf5DS/rTqrAbEImQgl/W0ZqpmP8z4X8kQASTuUW9JedkNuQAtGrM2pT?=
 =?us-ascii?Q?CRIqgIoybqXze5meKQhaO1hiJTvQ4oVYP/WsDWO8pjxeiNJidPIVA7/W4o9C?=
 =?us-ascii?Q?oOpetjhGpwbEVX+Bjfsswz9VB/e+wvP+30K6QOLNygY4diQ2NgmUg7uW8WqH?=
 =?us-ascii?Q?/xogLUJiEL315gtV5iSqEyVOPmJmLlw40swtxE313AoDlEn0tQ/aPiaryD9A?=
 =?us-ascii?Q?I9wBsbuW2FMnd1yIGznqZqGpqR7bSynzzx7zThxQOSkMqzWYga/cLG7VHmWI?=
 =?us-ascii?Q?wpaXyQE5cS03Krlo8dceW8vxT0Mqin+/3DXeJVAUfTE0AwNIvJybWEumRDUb?=
 =?us-ascii?Q?njfCmNMuOEAMy5JhHrSr67HGOn/+4XTLfPHPIQ9Eovq5lmPXZpTyq0oXO6pG?=
 =?us-ascii?Q?dAGnpKxOIvstg6wT1ZUmXgc9kefH4ko81yhUc6MmhzYiqK2fNL11F/2XNhUt?=
 =?us-ascii?Q?YnPXXN2C422yA9l9uMWmHf2grIOqrEOXBYKaRQoBAPFXxTzp2vipRKzHYccY?=
 =?us-ascii?Q?7KMi9WnbMZNhc45GZTDJSsQ3eSpzXn/LNV7ggGL4VGH2q93yWmzysF0zShaG?=
 =?us-ascii?Q?V+DoiyHwP3bGVMV9dDG8Jk65nwyCciPfN0AKBLty6RXE4rjN94d0v7Q1/M4R?=
 =?us-ascii?Q?KXXNvntMLRg/lhIYwZcmy2LvEQ0BfWnjOeum+qkoEqwV?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 46c3b140-9fd6-4bb6-4d85-08de2e9a239a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 16:21:09.3030 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7/rFnR3N29IATpk1RJ4ZLO6U41SI4bB7dxHvllUTbsEnXrXMsEWLBtImHhFPMOi6U0RSozgttbOIO6/MY7a/UQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8504
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

Use intel_dp_effective_data_rate() to calculate the required link BW for
compressed streams on non-UHBR DP-SST links. This ensures that the BW is
calculated the same way for all DP output types and DSC/non-DSC modes,
during mode validation as well as during state computation.

This approach also allows for accounting with BW overhead due to DSC,
FEC being enabled on a link. Acounting for these will be added by
follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 27 +++++++++++++++----------
 1 file changed, 16 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index aa55a81a9a9bf..4044bdbceaef5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2025,15 +2025,19 @@ static bool intel_dp_dsc_supports_format(const struct intel_connector *connector
 	return drm_dp_dsc_sink_supports_format(connector->dp.dsc_dpcd, sink_dsc_format);
 }
 
-static bool is_bw_sufficient_for_dsc_config(int dsc_bpp_x16, u32 link_clock,
-					    u32 lane_count, u32 mode_clock,
-					    enum intel_output_format output_format,
-					    int timeslots)
+static bool is_bw_sufficient_for_dsc_config(struct intel_dp *intel_dp,
+					    int link_clock, int lane_count,
+					    int mode_clock, int mode_hdisplay,
+					    int dsc_slice_count, int link_bpp_x16,
+					    unsigned long bw_overhead_flags)
 {
-	u32 available_bw, required_bw;
+	int available_bw;
+	int required_bw;
 
-	available_bw = (link_clock * lane_count * timeslots * 16)  / 8;
-	required_bw = dsc_bpp_x16 * (intel_dp_mode_to_fec_clock(mode_clock));
+	available_bw = intel_dp_max_link_data_rate(intel_dp, link_clock, lane_count);
+	required_bw = intel_dp_link_required(link_clock, lane_count,
+					     mode_clock, mode_hdisplay,
+					     link_bpp_x16, bw_overhead_flags);
 
 	return available_bw >= required_bw;
 }
@@ -2081,11 +2085,12 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
 				if (ret)
 					continue;
 			} else {
-				if (!is_bw_sufficient_for_dsc_config(dsc_bpp_x16, link_rate,
-								     lane_count,
+				if (!is_bw_sufficient_for_dsc_config(intel_dp,
+								     link_rate, lane_count,
 								     adjusted_mode->crtc_clock,
-								     pipe_config->output_format,
-								     timeslots))
+								     adjusted_mode->hdisplay,
+								     pipe_config->dsc.slice_count,
+								     dsc_bpp_x16, 0))
 					continue;
 			}
 
-- 
2.49.1

