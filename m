Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0A2C8FCA5
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 18:52:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8245E10E89E;
	Thu, 27 Nov 2025 17:52:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jgKuCI4T";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AF4F10E898;
 Thu, 27 Nov 2025 17:52:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764265924; x=1795801924;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=0JrqXPl6o1zkZ6jA+DvTJm768d+d0Iy3oM1OLi77lVE=;
 b=jgKuCI4TPE9FS+liX6t/zuyQeeAlfB5uRgvZXqzIdynBh8Y3Gv41Jj1D
 ibkyAp+qkA+OyTdJaBnpVhWUuiGEZQ9r/gZejZccO8yjfFEbWIPLVr5Hh
 qAJyehqsDYK/sFPKJohvNK/VtLbanY3A4Uo3nSyT35QRPrf3BHcGP2bXX
 TobT25IVhtfnZ2DQNJaKD5LoAxKiPRpewDt0UTv29YM9FI457cdXE/GIp
 ikqqPwFCwqdOSAcziKdosey7q1+nesTyMLfNMNXb92BCkpEahfy524XtU
 gQ6f1n73sYgPdUs6Ntb4vDyUfXwa3UtNq+LLhu+wQDu2l4KDmd39d63rD w==;
X-CSE-ConnectionGUID: MsgesDHUSX6Flln/0jFvgg==
X-CSE-MsgGUID: kwXEN1S8TP+QfrXWkcf4cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="77003035"
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="77003035"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:03 -0800
X-CSE-ConnectionGUID: VxanL6fmSzaUJcptflqJYQ==
X-CSE-MsgGUID: P3zrlIcyTqi2XZoGb79CWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,231,1758610800"; d="scan'208";a="197453699"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 09:52:04 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:02 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 27 Nov 2025 09:52:02 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 27 Nov 2025 09:52:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qkij/PVyWfOKbyCxqAmRMf0HmeTdXNaGNg5sqobjZzwRNIRzwgSQPc9ZmwR09tsbcKqUWcCbDejITyPWsKaMU2zI272zs7aZ2UCxtPwe80Q4YLPWLS5TApChFpPcBswoajJaBjA6ZTv9I8Bjn9MeFfA/PyVWU+sH+tfT7syFnbTPGzEPHyd4kHR+nCPj9M7YvqhFe2vOUdwyc+rCXnupw0TsZVDHpXQ/etFQrJJCeLr/qF0ye50yMxNbwkXD1v/PhuTmy4K3gsHIfqR52HhmSN5hZKFQqi4NYg54GbIetybAKH+X/BHZC7y1T1Bq4twKat1RUahlHO3LEp4zPVTl0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aboe+/ymHwUUfOG3VLYtnYGVX/y8PsATlgFso0l8HMI=;
 b=K+C+oRw4Kp1R7XoZ66XkULBXuRub/zV9S6csnLgYPrULlwjEFwP77LM16FQpW1W44uCu8bv4TM+Q9GiNoDVUFOndIw+uyLku68/msRyP+oaDoLj3dfoNaeOPtQbk7RCv2V4XxGsbwnZbVkt/5bPf3u9qkr4BLQwUBjGD06wE1WtNyPe60PDvHJn39rZR4JGn23mTOqwhr2VxltZN7S0U+Zpn619toHBJJcriOn4Yk/OJlzr1gNU7WORIRymB3D+oMZyLjWZn2jZ6geZ+/1kvXxuJvxlDjeexbNDLrGMHUJQDyUR69yvxo7ROwdksTP2YOD0WXcSwh4zb441isKB9TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH7PR11MB8550.namprd11.prod.outlook.com (2603:10b6:510:30c::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Thu, 27 Nov
 2025 17:51:59 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9366.012; Thu, 27 Nov 2025
 17:51:59 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 34/50] drm/i915/dp: Simplify eDP vs. DP compressed BPP
 computation
Date: Thu, 27 Nov 2025 19:50:07 +0200
Message-ID: <20251127175023.1522538-35-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251127175023.1522538-1-imre.deak@intel.com>
References: <20251127175023.1522538-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P265CA0255.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:37c::20) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH7PR11MB8550:EE_
X-MS-Office365-Filtering-Correlation-Id: 8697adaa-bc60-445a-fde1-08de2ddd9a3d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|1800799024|376014|10070799003|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?uKu93lwp/YaIU4KbbyP4y4h1lPPprO+klBmz/zyEc2NYPXGFWGxlIDc+ezCb?=
 =?us-ascii?Q?e/oJclQUk/wd/XSk7Et8x7zSoMLQMZ1B6nXgctN7068DOhR+v6feMfXr0eTS?=
 =?us-ascii?Q?JSW0FuBbx+voQzMUX/YDsUJrDggNutZSAvPIxJvNrYCjvc9I7Rmq5QDlB0lv?=
 =?us-ascii?Q?/e/PsqLINkMVq8nn3EumaMtylKLTmaHzA7wHX23hzWbBZx5MzD7jQDZxliQm?=
 =?us-ascii?Q?mxWcxcCSyUZIWa5rRYg8mBAOloH2/73UaKGgPXvvF50OfdHcJxzLiuePWijH?=
 =?us-ascii?Q?77Um4o58We3kgo8Hmu92JPx6plQJnW8KC+xAHynVazLGAxt7I2zSCniUapH+?=
 =?us-ascii?Q?O2iJifdzafixcISI3tASxiqXC2Cuf622zKnpWkCbnlQhzOtqKcwxqsiSk7XQ?=
 =?us-ascii?Q?LjlQhhB5rlDcgj3ZFKjp7+v8Xp08KWy8pLtS+i+2VXNDtXI8JIhcxXihAtZr?=
 =?us-ascii?Q?DKiZ2jmkHRpmf62+eusf3J379FiKcyABdunVhiugB/Eqig0i/cP0Prp+jncq?=
 =?us-ascii?Q?5eh6gGG3JwIRbt53s9AlPPT7U28cXj7FXdQT2PKlZcF1vHByAGKiJnhQrbt9?=
 =?us-ascii?Q?vjKX5hbQ+UjuvPYEfrA4QIDBzoTM+qyzWWQv7xoWTr1BFb1QGcYpdcZpWFVD?=
 =?us-ascii?Q?Oj/7nyC8HvY7d+O6g9uYSYqMX2o0lEyzuf53DlGkiUnGEOisdrjZfc7q/ZcR?=
 =?us-ascii?Q?TfDTakns1bpiONZOSOfOJjWd5BCjYz16KnVaPFO/nzFmX55gqnM7YpUVr/tC?=
 =?us-ascii?Q?wQBI2Pa3awqDNJx3Xu743H8ucQObOzn3bBXYWZF99UY5BFMeI8K+iXg5GlE1?=
 =?us-ascii?Q?voDC3wcY7gY6iJEOtwJGIYSaKrMTRRdisMjk06YEHZR3b8VjJOFCrTIdTJ+m?=
 =?us-ascii?Q?tWQ1CS0X/Qu+aR14CSaAB4QgzcSFgKqeTB5blcysehP2uh5KC1COOeA78T1C?=
 =?us-ascii?Q?T+ZhqTG/Z0OG41YtEG9pZqEUci6fqaj63yaGpHRnjd69949urETJXD1diE6g?=
 =?us-ascii?Q?lHhfRGxqQDOSCDMRuWw4950kSrkw/eh/FmJH3Jy0GRtfv9t0Q0ha9hvUmOyM?=
 =?us-ascii?Q?KpYEWgKZ0f9jsAGIq9UqemGzUPMuHB1H0qk3hF/11yuscSEbakn/eBaHYW5u?=
 =?us-ascii?Q?NQxOzwQTBrbAgICsrNGq7+f3bpMEr7CRRgvHJVQ6nieoS0Ha874Upv3d7ES9?=
 =?us-ascii?Q?iThQ0j43V03fQ7Isv7fqtkPieLLPURmhLt4d9VMz/QX2LRMQQSEnJmw4+va7?=
 =?us-ascii?Q?vggc359No/dRui3PmqyPk64FwK7wPPSOaGF26X6lLfrDdl46q2PVmsbzWFnX?=
 =?us-ascii?Q?p7tFixFuJdJp2sbnybNY6GVUL1t29uayeT+IlMzRw7O9ugs/LoEZ0MtL6g6U?=
 =?us-ascii?Q?mLzILBNcvN3MElCIzZWgDyyCOxPw6IZh00taViOjM1qa2Tt8Wyow2VoDBD6x?=
 =?us-ascii?Q?nO8MPg/Ze2EVJawpwqADefT2FgyxJEw6?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sgOK92jjmvePViaryckMzekEWyHbgrX75B9Y3TO9hVt5fHeSXvY+9z/hvHd1?=
 =?us-ascii?Q?aBXw/UL1hRZy6/kva7lnf6t9hxdHZ9V1SwWEwW9L7aOzXbNoAHfTdXx3/vkY?=
 =?us-ascii?Q?GZwOixMWBwH2oDmWfpli0IggqM2idA59mGIp1PXEF601TOOsMD8Uash0avKX?=
 =?us-ascii?Q?KOO2aiC9tw/V7VCQlE9y7fxkLdZ4cVSm/7C0t3IP0oqvjdOlUH6jKPFR9Zt1?=
 =?us-ascii?Q?iN6PfDAsbhnLnoqge+XFaUI4jzUDSxwNasrpnZZ3JDxmXqRukztU7pR90gQE?=
 =?us-ascii?Q?FVq/kjrBLuqUiZ2hPXWLlmRYPT5TGD845QVwQs/Hb2WL0UZ2WpuU9VAkKkRN?=
 =?us-ascii?Q?RUSz8Ehx3yynJ8V/4sgsFMidwfw1LsoexGzt6zXsZPzZjO4F/Rq2B9KCgika?=
 =?us-ascii?Q?m5DZUxiJX/Zqgljn+rArVt4l4MFwTbd8KlqR3oUS8LCPegenJpaIHEn1c/1b?=
 =?us-ascii?Q?xslH6hz9+Og0VwTiIMCpTjSzT99U/JGZQ1Z2LZYLb27vRNOXdcDFpXyTvQDT?=
 =?us-ascii?Q?Askzz/cEUH2i+AoCQzPf1HPyp5cBikGrHi3VvfR9r2JEQbSgzFtIBgLXUT+U?=
 =?us-ascii?Q?fs+80s8oVjaje8BpmVjfQpdWlDhLGBtJaQMOPug5xSWiLbm+/nkCJEzucWt9?=
 =?us-ascii?Q?WObLhFkvD6cThdkCzBuGOurfIqWk/i0B/MvgAt2yrMeVTHVXlYbPe0hPYTYS?=
 =?us-ascii?Q?g44gtyccDK20R9lZkKh/muNGi3R3ocZgeypxTXOfO/O5hghxy6KlqXMqiFRJ?=
 =?us-ascii?Q?VmPWLlqD5mX45+cI7WML/RYc1bNXizvBXrlqA17s3VVPsLPhIaFYZvqjgBC1?=
 =?us-ascii?Q?YXmi3BU/Ec4jGv/79BlJ65NdTmTQM2RWl5VWbFWZwlpiLzf47N+Gqp8CXe/x?=
 =?us-ascii?Q?4GlyF/MbUgZzuAcwepa3aSWsGiKPHCWE55OJ3F0hF3Vr23ldA0Hiissn7s0c?=
 =?us-ascii?Q?dO37xY1A/75n0eXGB6W6T6aCR0dbAkP4X3B2mJ2b/U6lmLwUcBkVUEu7tdci?=
 =?us-ascii?Q?6xM996Y5rj5aC424Cn4LWZJ9fWd4keYvnGepmnWkKt2MbTg6vnbIpR0hQJUQ?=
 =?us-ascii?Q?LNXwrKxm6aGOFFQwnH1q8JZZFJrl1bp9ijMLYXflD+dD31DEDBiIuXSQr63n?=
 =?us-ascii?Q?EaMXL+N04UcHZs0n04qW/VIA+wXpMxohXDlHKOirfy2NcU70vAZETztCAyOj?=
 =?us-ascii?Q?2Iy4OYvu7wUxiFD6axFJhC/xZ/Vih+4dl9y/xnfJZ2V7l0/eyfARJCBxbCNe?=
 =?us-ascii?Q?LEa0F0AOaimUgU+vxKfCCM7SKUITfWxAmrfSri65LcAEtQFxI8VajlfQgDl6?=
 =?us-ascii?Q?D+YkaXj2ua426/nIuXsULXJrLXsM2IYi6T5dX65ASqlsV0Hx2tZ6eKeC56Qi?=
 =?us-ascii?Q?lCM/ZoaYClV1tM4uVJZVtAsq9VN97+QTfAzvHNPU894MtDKHVBpntw1gMGYh?=
 =?us-ascii?Q?xT93rANPKWKW1vquKsrw5QYApBGzFfLwZ8GYgmiXvkj6/UTRirJi9i/kJHMM?=
 =?us-ascii?Q?LNpbAXMgB/unTLcJVdgYjfhJhQ0t913oZtUO5rmUtikW96ZsqZboOrDvCiFr?=
 =?us-ascii?Q?VYussMiHUM3mgMxBGujmetWy01vxCXVNYMCjIwEE9kVnq9aTryvvjLsJEGi4?=
 =?us-ascii?Q?FMM4tLazUqN6MKlZUrEUU3eJdXT0JkfKCcT/Fu/tDt2s?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8697adaa-bc60-445a-fde1-08de2ddd9a3d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Nov 2025 17:51:33.2978 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hc75XQMgWfzYL54/gqmChxnmtnkqTHPzBBdNX5d9jt5o08PAntNIHvxpdVBlEii4t4NSgjV6yYISlESLkQh/5A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8550
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

intel_edp_dsc_compute_pipe_bpp() matches now
intel_dp_dsc_compute_pipe_bpp(), remove the former function.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 32 ++-----------------------
 1 file changed, 2 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 81240529337bc..de59b93388f41 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2321,30 +2321,6 @@ static int intel_dp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
 	return 0;
 }
 
-static int intel_edp_dsc_compute_pipe_bpp(struct intel_dp *intel_dp,
-					  struct intel_crtc_state *pipe_config,
-					  struct drm_connector_state *conn_state,
-					  const struct link_config_limits *limits)
-{
-	int pipe_bpp, forced_bpp;
-	int ret;
-
-	forced_bpp = intel_dp_force_dsc_pipe_bpp(intel_dp, limits);
-	if (forced_bpp)
-		pipe_bpp = forced_bpp;
-	else
-		pipe_bpp = limits->pipe.max_bpp;
-
-	ret = dsc_compute_compressed_bpp(intel_dp, pipe_config, conn_state,
-					 limits, pipe_bpp);
-	if (ret)
-		return -EINVAL;
-
-	pipe_config->pipe_bpp = pipe_bpp;
-
-	return 0;
-}
-
 /*
  * Return whether FEC must be enabled for 8b10b SST or MST links. On 128b132b
  * links FEC is always enabled implicitly by the HW, so this function returns
@@ -2396,12 +2372,8 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
 	 * figured out for DP MST DSC.
 	 */
 	if (!is_mst) {
-		if (intel_dp_is_edp(intel_dp))
-			ret = intel_edp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
-							     conn_state, limits);
-		else
-			ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
-							    conn_state, limits);
+		ret = intel_dp_dsc_compute_pipe_bpp(intel_dp, pipe_config,
+						    conn_state, limits);
 		if (ret) {
 			drm_dbg_kms(display->drm,
 				    "No Valid pipe bpp for given mode ret = %d\n", ret);
-- 
2.49.1

