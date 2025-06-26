Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C128AE980E
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 10:21:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 76E2F10E864;
	Thu, 26 Jun 2025 08:21:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NcBXBSzj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 47BC710E83D;
 Thu, 26 Jun 2025 08:21:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750926075; x=1782462075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=KiqXf7GgALh7PxDr9dxxV5EsP5iFLzecDnn4pLBlXdo=;
 b=NcBXBSzjNi5ddXyqrZFrt9PqieJR+Eacqq4UMy/J9Y7tAZeGs1zyOKNj
 PCv6u1gZnAmTDvCrhRPA8ztR4R6AX6zIozo71XnFCpH0/rJo+N3x2I17z
 wfuh1mvmXbEC6NyOZCswL1laNb1rXTp0RkXnvHBAJnLdJeCjvwv196oOP
 siAijKnPLhume3eZcdXwdCFG1u2amOMoVL/Ab0uZp62hX8wctscvUYsJ3
 mUKFEwcPv8nRa/Ll/NROdrXlfYUEfjKLqNlISCEIVF1xI/kMR0mebA0AQ
 HUe3+KWzsnx4n7z7Wtlfl5SXTIbvkb+QuYURI3Bt/CIORQK5xP1T4/Dlt g==;
X-CSE-ConnectionGUID: SfvRHK++RoWKRIN8b3ELQw==
X-CSE-MsgGUID: W6ugu4VmS02AVLv5PVvJ0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="57019347"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="57019347"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:15 -0700
X-CSE-ConnectionGUID: LNgQaU0pRdqJcchdI1RsFw==
X-CSE-MsgGUID: 5rs5uONTSMmUSzzQoalhbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152069947"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 01:21:15 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:14 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 01:21:14 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.54)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 01:21:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O5DBa6Wk+1Z5C4BIKSgZNVF/WF/sIdfVkKHmau59HH1wQqXtok1vLnDoexyo9Id0InqrQmseCreBY4NNVDfTXKm0hWED87oj4odd+9UW8wQMHzaL8MmSya53WoJexhhi1CzYtL+MpBcExK1YmpydrF6uMzV7PYd1oZONt5mUMhIPC9NrwkAX1x/jlgVrPWG2UAOHwbYAAGTo/OuVDxhyyBv+I2oT3sxToA08tTJzLKAXlYfpKrnOYS5uayzWvzVX3dTVJ3TnhhHSazCPpvwWmtTRKPLOym44ojCZcnzALqfP315841cAzKYXlpZiIak6Sc2t4FhC2n2krXBAxpeGLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vN9k153zjuQHDnva/PLpMO7C/2U8e+C1yHcq8S5XnoM=;
 b=ssik9hB4VyfK0012pAXwd9ItG5ja+Pcji/XuF6IGXjDh32MCBI1Fc9FU5y+ueuUR++avuTTOI1DUvXNNyEuzErbz8rMzjulE58sCFCz+NaNnpE6vn5yIpyScBNIqeIavH+ePYRPiQxlfwmcbCwBe2sblMnRQ6f4sl5PvJZZDQf1YZiLVaE8JLYTCavCunnaMyA1R8lislp5NG0fv+RlzDdfL1dy5IYUzJRhgZWiqBnFTV8RPIsIRFZUTcMuTE/1P5Ydl8pUX75M4C0ZiW8vGpqOG7T0CCskhR3Mdf1mORTV31Lh3411CWZYk0XjnS9VCx35Zgae8AE7dSs8n0Smvmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF8EC896901.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::844) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.28; Thu, 26 Jun
 2025 08:21:11 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8880.021; Thu, 26 Jun 2025
 08:21:11 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH 08/20] drm/i915/dp: Remove the device service IRQ handling
 from connector detect
Date: Thu, 26 Jun 2025 11:20:41 +0300
Message-ID: <20250626082053.219514-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250626082053.219514-1-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO4P302CA0020.GBRP302.PROD.OUTLOOK.COM
 (2603:10a6:600:2c1::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF8EC896901:EE_
X-MS-Office365-Filtering-Correlation-Id: df40132e-a4dd-4477-0b1e-08ddb48a68a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?fILrtfbdlREG/LFN2vcS+1D5JV3D8OypvCig/51WyhvLv2pXY3JFGhyUdX1I?=
 =?us-ascii?Q?a87LEryFP272bkgMfWw1GghKRschn1sZvsGjmHHGKNHkK41G4SP3nHaxkZbC?=
 =?us-ascii?Q?wjkZwyxPdsZGbUMBkemkIM20LwWz6TOKdfssT3rd7SUBER52CcTQTMHr2G6E?=
 =?us-ascii?Q?54NkjdBiFXScz9A4w701pCXEjetGtZsmA0BF/m1aKM1nsRleh1ZrURig79C3?=
 =?us-ascii?Q?OC+TwyAwciCfmchIaYCHfgnHKoXtZYZAkcE1YShaO/iL7rqA88HMcDBHEPdM?=
 =?us-ascii?Q?YaDcE9+/IR4QYdcn71mLdXt1z4b1Kj3pkMbb9W12ZevKwqIDyd9BDy7zLv0y?=
 =?us-ascii?Q?Yk7C3wUWC5n0q1dg9kP/Nk686OB6yTzq7FuPB2Qg8HNjZ2Cpv51YOKDwOs/w?=
 =?us-ascii?Q?p3AO4dl0k3RRQHq76k6N/iYI+eEwkBYl5F3WZtFv/rnYWJ85BovHexjz0D1K?=
 =?us-ascii?Q?W6keEo5hoZWgBz9gXkF7m/tN/OXlknPjX4CtvYs7FMGgseUdWOmOFXOZL8xK?=
 =?us-ascii?Q?tw5DuPyzzWszB3xb1AkdMbRXlLKf+JPVu5xehq8JuEiHAk3iSGqezcNrKAvZ?=
 =?us-ascii?Q?XeczP3e/ODTFUkxL2zkOd6Us8BGCpgMjsElP0yoPGw6U3SXbLvEFfsHrLTYL?=
 =?us-ascii?Q?2diYowZGMJSY/Y657AzcFLpmIE5eYdatKb/hJRc0Aj4wheeFsPsrSI+Mmjm4?=
 =?us-ascii?Q?qF2zx2Y3NqhCVBfzWrzWN/nEOhUlfUg6JJAZnhSaPVa5xWHAaE7b0E97JF35?=
 =?us-ascii?Q?VfaQ558qGeMVE/Ui3ZAssc5AAlSciJKstf8+QESkdfo2GrOIAKQps11sI5Ci?=
 =?us-ascii?Q?jSQA4lYlsR1CBIY6MoZiaXDpy4t6CcAZ3Mtb2Sr9Djv1HXYbarASFkbOqtg3?=
 =?us-ascii?Q?Aaqj9Mkp0reLvwqxT0NhXGvk7faSwLa2nRzaDReAK/epdjRmXwhjiHX1csfv?=
 =?us-ascii?Q?rbErSwS+V/Iu8T8Y1X+O+JCuJXlJhQ0JzfJ0Nnko2U44S4Okca5dejnGldjj?=
 =?us-ascii?Q?yaQs1jIS5yu7bb5hztV0fRFjgFSulrs78XgxJ5weiq68ACH6hn/BhFcsGzlF?=
 =?us-ascii?Q?NCorNCCrW6ms1AiC6D5usSpkFX8byTmxPO2S2aI7axPZGhm7dFcfuANpDC1g?=
 =?us-ascii?Q?e7cexmON3mwlI/mvRhGCrvKJqdKXv4N2ta9GOcMAss1OjlcH2W40wtE8zUps?=
 =?us-ascii?Q?FRWKpX6GKasH4huA9L2RqJsV8LjsFqJrmB4mwRLp+1yrFJHamH5S0HUilmCn?=
 =?us-ascii?Q?XzKsSe8esVsk7mKOf3mYvq//pp2DDbBkPQbJ8k6t8eDVgF1dSYkj04Fm5xB9?=
 =?us-ascii?Q?+cntokd1BWJEZMWoGzWF7e1JmRRUNeJp1k4n9uA5lEfEO2yX1OacIJ5So+j8?=
 =?us-ascii?Q?kIFyg91HxzZET4RaKhDqddV3AT1e+j9oEToJV6tb+sDhKS7RTFXKXumk+gGw?=
 =?us-ascii?Q?5uSCOh1M0/Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?n2zGP3R9l7AV0Hhz3boz4c6/Xn5axklIQZsCYeYHHd5mIMgOvjxbu3kX9jeN?=
 =?us-ascii?Q?cJ5GCe2Foh4GSmORmbZT1KOdlb5s/oyBXNoN5yfWhZU0koeKzuu2Fm+aa/WA?=
 =?us-ascii?Q?9dAAOr1aB7Cv5qwYrkHONkB1s4otfnueH8izoaXdvOCMWfZ1VPSocJWdriaC?=
 =?us-ascii?Q?PVIQENjknxT0I1g7H/NuQnVLSbqcDjzE9cDbJSIT5/Gx04y3XeuWSe5FhGQt?=
 =?us-ascii?Q?oq0v7IzWsRLWoA+jSLsm97fp6EJh0GMU2In8VrURo3HtHPMHujm8T6hyIcRG?=
 =?us-ascii?Q?fpL8Xw5rY19rXBY0klF/HZgPenaqjitvf8JLFV8gwA/gGPCqoaZ7/iiA/nJi?=
 =?us-ascii?Q?mrXkpXhw+Rj/gOvSiJksvyUOMGJ5We/xSoAkRG10y6LgnXYOKT7aAMJtfqXE?=
 =?us-ascii?Q?h+I7d4pNciPH9AOelVv+Qxn0yXtMcnpVpNYW7EQQcAViEDAgr4rNzCCGQ8kb?=
 =?us-ascii?Q?tXuOQE2nNX9hsDbafwWs2/ZYyevcMrgA+GE/8zUlt0vz4nccoYaym6VYOgQj?=
 =?us-ascii?Q?xdEqc0dafwopg1xqV9Kg+FVpYZ6LzEiockyYJF9TfK+/PlW8Ayi2Rkt51Nf1?=
 =?us-ascii?Q?3B0IrShpvWqQdU76TIXPRtLmRn5yJVEHg/ZvjZUtMTqvbeayCxDbUZUIB5g+?=
 =?us-ascii?Q?241Iy/G3Ns/M39iYAS1G1+gVJSftapwHbq8n8IdlGbKYHIk3GHlhyCA+aA3M?=
 =?us-ascii?Q?dGylxKVKVzHbxeQytMWHaaAurkOSqq0IZFpfyy7S9IJPBGBKI2qjrjrA87mw?=
 =?us-ascii?Q?/7UaQJ0IXgZwhqo5ywXND8UFG+twluWGI1ffzHPFoJonSqfnlPjSPeVE+ieB?=
 =?us-ascii?Q?IdZyTG4AFkUYZPJwruIlk4mXrv0cqHhXWFenoacgJm4ZD9h/cCNOuHx6nzqs?=
 =?us-ascii?Q?9ws+XRsIKSXoMvIFoRdcgX1GLdOt0+dO2Z2dlj+TNiuSb8OGRfm61l8bOnTU?=
 =?us-ascii?Q?b8qrZj0IXN1BNVvP1QfGxkqmlJv/0YuSvgKXrEBbJF03n2IErhZLalTLI1p7?=
 =?us-ascii?Q?4y0pg7bmBttMBylKu4/qb9JpifbzbbrNf98fY8NxJP7BHo/bkYk8FvRHR3J5?=
 =?us-ascii?Q?ovsODKXSFbIDlhxihlhWrEWhbwYRpeyXwrkfAQLkY7z/U3EEGufgmFvOfYFp?=
 =?us-ascii?Q?vIZaERjQgNXZ1aWZEQtcHzo3QAssiu7ze01eQ+Cx3jrC7Q8GZ8ApsTGlSIa3?=
 =?us-ascii?Q?ogTxKGReMAWrpe+Quc3Z0pksuHDpgPOIsxZfwnnMrgh+k96R7agavvWXdxsp?=
 =?us-ascii?Q?7UlyKRLUj/X/blwuiEpBwV+o8i/1GTyO57MBwS2Qh7QZLcUev+B0beqT1NwA?=
 =?us-ascii?Q?m1A5mWf1MijT3KYmN+2I8wSSm2q7ZOH90Al4cEpBzTMqR+1QwOE69qIw/tN4?=
 =?us-ascii?Q?VmtfBEA/zOzgZCbk1v0SIT3Go3lNzD1CVaLRaYi3qZWBY04TUuX+GOmMVkCe?=
 =?us-ascii?Q?0YTZ6TugD1Xo9R3aLxd7MqOxQfsKdNbnE3319OSxJCH6Rh7qe8yzSb4OkJsB?=
 =?us-ascii?Q?7xrtv/Pyt8yrJHVWlNYe5RWSr9+365ZhKF06LBgF8M++PY2XYdE5G/ECs02a?=
 =?us-ascii?Q?zi6jgTERk5MHzIwuZc3oOmx8V6V0LNN3HA03AQUP?=
X-MS-Exchange-CrossTenant-Network-Message-Id: df40132e-a4dd-4477-0b1e-08ddb48a68a0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 08:21:11.1561 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aD+pXh8SEfDoceqtkHeC/mdneup8RVjcHB9DRpjWOfqyTAVRYkTzVnFIPznGTmFkIsNH8cxxRqcCKKemJXXxoA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF8EC896901
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

From: Imre Deak <imre.deak@gmail.com>

The device service IRQ handling was added to the connector detect
function by

commit 09b1eb130e43 ("drm/i915: Move Displayport test request and sink
IRQ logic to intel_dp_detect()")

since some Automated Test Request IRQs couldn't be handled in the short
HPD IRQ handler context. This has been fixed meanwhile by deferring the
handling of all test request events from the IRQ handler to the hotplug
handler (intel_dp_short_pulse() -> intel_dp_test_short_pulse() ->
reprobe) and by handling all hotplug events (both for short and long HPD
pulses) in the test application.

Handling device IRQs during connector detection is not standard
compliant (the IRQs should be handled when an HPD IRQ is raised) and it
happens in a racy way with the same device IRQ handling happening from
the HPD IRQ handler (since the detect and HPD IRQ handler can run in
parallel).

Based on the above, remove the redundant call from the detect function.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 2592afb96ab58..aacea2d7b9738 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5940,8 +5940,6 @@ intel_dp_detect(struct drm_connector *_connector,
 	if (intel_dp_is_edp(intel_dp) || connector->detect_edid)
 		status = connector_status_connected;
 
-	intel_dp_check_device_service_irq(intel_dp);
-
 out_unset_edid:
 	if (status != connector_status_connected && !intel_dp->is_mst)
 		intel_dp_unset_edid(intel_dp);
-- 
2.44.2

