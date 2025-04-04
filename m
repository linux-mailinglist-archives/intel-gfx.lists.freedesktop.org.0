Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABC50A7C025
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 17:03:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9772110EBEA;
	Fri,  4 Apr 2025 15:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jn8iWs/5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E52B410EBE6;
 Fri,  4 Apr 2025 15:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743779022; x=1775315022;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=/aGyAEnY2JlDfgGSumhpoA0YBpk57RmN+xN+/GZrcHo=;
 b=jn8iWs/5YZvisUBxLAaeuv4OoQMnNKXhMCvRctZyN1jx7yk3lujHScMa
 3nU/1A/X7AFpw3fx3xKJZqA4NUzow8PC3pvEgT1WKmQh8+7+Cmmz0Wqr7
 uX7m4JdnOzIBxFucsAPEU9SaN2z4dp8ewn37Fw7I4lE3urTuJvAO304ZX
 c7ravivv34iiMGwIcR8Cwu1gZ4fEEBnuyyyVsJGIA7yutT/hpxFJLbLT2
 wXAVIHaO/egSJwcoYm3FWaXM8J3SnmYnXO0wQWzb5TISNMKD5sal3n2q8
 I8iWQauGjWbBxgVrTiEqTi+/LKaChFtHE1G1fPPxITg+0xWnPOS7+6Tdw g==;
X-CSE-ConnectionGUID: ZAd+j42fQfy+f6yE6rXEKA==
X-CSE-MsgGUID: 3TSb7+XrQcCo2xUOHkIOzQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="44373301"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="44373301"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:42 -0700
X-CSE-ConnectionGUID: M2jgW+TLRpijExvvFqmITg==
X-CSE-MsgGUID: SDU2ypMYQEGkBJqKtglqTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="132189824"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:42 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 4 Apr 2025 08:03:41 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 4 Apr 2025 08:03:41 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 4 Apr 2025 08:03:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XojOb2E87PaALmbdmzLy8c6cF1jXNsZpteWTUOnM69xNsphqRKkoniyB9w5uRU+lUy/9AfpUdbTLYOj+hLq3N3gLzq2FPoJCqpnSA1BbZKsUc0DLRIuyS6zxvfi7kDFRWkwA9s8AT/3jCmYTYLiT7BUEnYp3RjLop64ytdvvVBJekhCZYavv26bhXdzAq85JBSTk0werbAn5OwpNEeqIzGXHk9GXP6DJDUSFjRdEmLBMv6YwzZHg1tg20PRrOJ+VnBESpX659+J9TjqVyLskrlXmBgGO4djK2ecvH6/ct2Uk6mnC25DyquY49p3cwagNgtMP+gibR7KZBhlcG67kWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bsevzvyXoufZl+verHBT1qy5dDhLrHKK4RpqXFm7CNg=;
 b=xFxXl0t+qOBbGe1TaaZso6JO6UDmxwKpNCcpypAD4WXDarxBnzIp4wu8/UrBexmSbBUJPMwL8r/EfJxncFWvJA4xqOG4JiHMuaTjHcvJvDlCZLr08RzE4Rb/GjoXjWBhhvuChCKMMdS9YmGf8hSzNobD4x5PDpDJb6c/IgBzZTTwWNDPDFOSX/lnbpyUhSZkah8SAYOwgGA44L6g8XhQbfa4zrq1sDarejgzCCitux/kKTHacyBVm3BY3O9vjgrimkhWzLag+xlsH7HXFd4XpTCrAfq+KGVqvfZCWl92N+z+mVdEaI0lOWPMev0Eepd58tq1v+TRDFpkg9LICCF+ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 15:03:14 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Fri, 4 Apr 2025
 15:03:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 3/6] drm/i915/dp_mst: Remove stream count assert from
 intel_dp_check_mst_status()
Date: Fri, 4 Apr 2025 18:03:07 +0300
Message-ID: <20250404150310.1156696-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250404150310.1156696-1-imre.deak@intel.com>
References: <20250404150310.1156696-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0054.eurprd04.prod.outlook.com
 (2603:10a6:10:234::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN6PR11MB8219:EE_
X-MS-Office365-Filtering-Correlation-Id: b8661405-46a9-4d5b-3ff2-08dd7389d27a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eu6mqs1VeMkyMieZ6yHOEJ/tHrFRL8R1OnV60poNdy4lwKNFIypLIEHqC6PD?=
 =?us-ascii?Q?2wx7V4EpX7sLGwOXBhsMdTJFc7ADOyggdm17/C1c9LOUDu+JtSzfi6JNxG5D?=
 =?us-ascii?Q?ZFOmQhxfwwhvE5DKT1BFXUkx4/EykYLdRLOCLDP9zUEXAxPY4z8dYX+1reBh?=
 =?us-ascii?Q?ryiivnhKiZPPsKF3/yC5ur6dHLunP6m6JrcK+dsfIjhyg/3ebztDnjZkR4n9?=
 =?us-ascii?Q?wQBWwzEVwi0tMYmAHsTS1wWKGHFV4W0aRqBPMQTwIOHa75kIMANEVC05tjqX?=
 =?us-ascii?Q?Ztrh+1Z/oqw3vuLJwfGEhKx6VLXFPdgmSDywv65M28XsiPMD4nDBgIrKmQCg?=
 =?us-ascii?Q?bbmqurg+qqd2RIvI3c4/QCcQqpD9DjxY2zzPEoLP1xSSvwkJejlshjzrebIb?=
 =?us-ascii?Q?2PEC/ENsxNDhxeP/c9d+Dd6LGmg58lNm+uC4Ua4b3vxtWQl80hrsUfRv1h/Y?=
 =?us-ascii?Q?JBpaz4Nmyiws+I23Au2Z4FRmNRjTBb0z1VuSXIVf/pXV9YDF1WG/k5lzIC77?=
 =?us-ascii?Q?z+Yb3wKow6shdJMj8LDou7QJsyBQYC2IfbUJEPYcSCmxyEcLnp2RiQswwZyo?=
 =?us-ascii?Q?61mOPkeVVHkPQaadPj5mCw159/QN9F8bmv2YLrGLcGDN8qZ+CA/6fRfQ1x72?=
 =?us-ascii?Q?vDlZdvtP4Go6ED0VnFaw/172ii8/a47SGaB4FVCn3axnRFaElTLk6WqvDbmc?=
 =?us-ascii?Q?CYR3x4ErsNMb6VD5E5Yoan2Q/m14s6HFXujZpqwHztJi4riFsWhY0b7gR6Sw?=
 =?us-ascii?Q?snUS7K8tPVngVrwjQN0ZzJ0+K3zdbHSZgXcKIXToI9bZf5xpiNeZWkJAB6kK?=
 =?us-ascii?Q?5AeDIPvkTdElMoBfD71/yeoK7BJpPdB4ZAUkPQnmzkOay4Ucagv+2HQKgY+h?=
 =?us-ascii?Q?lYQ2NO9bVC0+3BGCg6++WdEgJ65mK2MLRYeWt4dgpC2G3dp86OtjruGDJbGE?=
 =?us-ascii?Q?ADuFFQLuyXDACYn3JeaRy6n65uZ1jylfl1yh/MnHjdepOBU4vhNgFwis4doF?=
 =?us-ascii?Q?DubvSy1FrJB5WBerhUNw4DesBn8wcRtgCkB/ex+o2OSbXeygaR90JCZXCV9Q?=
 =?us-ascii?Q?hs7j92AXJ0BtLDRyNucOTAflz5k7T6+2FW2C1nUds54n0D+lcYtceBabkIQ2?=
 =?us-ascii?Q?4/rQBa3Y6HWJ3ijoeaa1FrZWFY/e6yLC+yhX11feFAACmZRXVFaZQRVBgxOc?=
 =?us-ascii?Q?TVAdPof7oSwuAZ2q4ok1cukdK+u6q2+Z4jgxupqjGSrOVhbytI4ugXtSvGhv?=
 =?us-ascii?Q?8k53UMkpAzYJxBHTHbgS0QIV+e5M3c95AlqhOlFRAKwdu7bex0RKMXyxjY/7?=
 =?us-ascii?Q?9CZhbtK6EtxSPr2Z6Hn6txdbAd/l1ODOcJSgE7UPn2LG1lqDI1zuFmXwCmnh?=
 =?us-ascii?Q?35K+2sa3fU18+nLtLYXfwh37Nybu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4oRrqaaMNVOhbakVM0IdvtfaflLabgD7F5XMRROyn23oCbON+qSHwhYt0Xlj?=
 =?us-ascii?Q?H4eWY41dd1+ni6AyWBHZEN5/qI6UN1vNkUJ3nmYpBTxcaVUJOASvwLbJJnB8?=
 =?us-ascii?Q?k42cKqQFIewluWzG1oHcT2TeWdOyBqAMTye2Qg5bpnuVRE/c7YzhoyshKty8?=
 =?us-ascii?Q?xku4Y+L4uCzDK+BmLtUZEt6X0FxPLgHoXmfQ0eiuO3sobax+m3fI6VbEoOal?=
 =?us-ascii?Q?jNY0zH2bDIIfVKBIIoZJWLI83qGgQpu0ACnAxiJpKAj+0YTGsrfa90VPXVn7?=
 =?us-ascii?Q?od8xQkR7bG92tHYcop7qk/LrO8gMNg1dlH+/1ENRuJgfSLMbLrorfJY7jI+y?=
 =?us-ascii?Q?fA1KMYOAdkPsu21tqbWmwPQPAKC0UDBSa9NvaZjknleSFn32xfuwSgciGBIu?=
 =?us-ascii?Q?xPD5pXNOl/oKAN2vKHYJMiRThpJzaRTTN/wctjZtjWObYPjAJ0jg2kzH2855?=
 =?us-ascii?Q?XMWPqeNWFC9f23u40Vm0kIB4Jwu6VZRIlniv4gT6LYWA7lFetJymcmUmTAfs?=
 =?us-ascii?Q?a4cqgrGgW4kcw6Hal41ZlgDWJk5frCLsfugCP+b6f2z/mNOpOz1EIoc3sbua?=
 =?us-ascii?Q?G4quamTKzZv/9MIZf1CQ1mBdWMKuggyJwHB5m5s/qu1DsUMHsvP+2mtpsxYB?=
 =?us-ascii?Q?U7wsgX1xOX1R76U6XNFBvldoB8PI17WVsqGIQ+zq+2ff9/q9/2cVoHad4zTL?=
 =?us-ascii?Q?keZvLlQGV69XUd9JUVAdYBYbse7ah9TsSgR3ZSLNwRgqdRIRgY6biYVk8T+0?=
 =?us-ascii?Q?uiALjJiCYBdD2q8B9uK7TM6hRzutJVXtluf1/rl4hLCqMOAG7unfOcy2YLuv?=
 =?us-ascii?Q?JKUyysBQseE245BmLqfvUAfW62fmrcQt34MIQEyR2B6IAVwIDMb4K0rIyDZ7?=
 =?us-ascii?Q?ZpWQPHDBUU61ua/UA6/no6NQNqaGTnbb5d5tXMIWdorOLiVlsjH/Q0qlU2P9?=
 =?us-ascii?Q?f+UJ+1+h7j1QQrM5Nzr6rTiqCNluDDBirnq6KzEb72Emi4qVRfPfQCSwpQ+F?=
 =?us-ascii?Q?uUZPGEZO6owWuT+lBRHwovZ0FLQF/2DsGoIi2rbL0YH8UsIqoNxd+6ZSIDtd?=
 =?us-ascii?Q?5fZ+KdE4M26a21YNk4bkep3akP6zRMqfvQ1s/impXf6/IxLCpOfIxFaB60K/?=
 =?us-ascii?Q?nASnMGc8sG+SSn/eTk3+QjBGZfLGXxlSUyBPCZgNvp+QqeOkhOuWhF5xCUB+?=
 =?us-ascii?Q?7WjpLNR+wOHqLIPoWlc1I7SX11h4w1+ODuQh9PBUvk5OuXQhnO/SuGmMRRid?=
 =?us-ascii?Q?hV1zJBfxWB/6LigMssVBwfjEsixL5iw0/50a/ku4cCqRb4QLwb+gtabVae53?=
 =?us-ascii?Q?F8nr0r3xlsXfb1f8Igq3F2UjsT+CRSzTiInfqCNtxggogEiYLaqQR2G0jHpY?=
 =?us-ascii?Q?Vh0gTNkdhK5/AbDr6TW8WvBpR2h0J5ZcOdknkqeogxZFHCNTp8eUBc3tIUzz?=
 =?us-ascii?Q?67lO4QyQWD4xV/1swKYraO596C7gXo2wj8TpXYn4lAG9YCeRU0uiXRqf+jsc?=
 =?us-ascii?Q?/4b8zRW/J+xLZs9EWgkfrJhU1lSstR7JgNIr3t4IEbbV0H5cVSa91xNWidaO?=
 =?us-ascii?Q?jjim2V68V2k8k3glFFUoLyG4U6x3+xBsIqg3A0oJ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b8661405-46a9-4d5b-3ff2-08dd7389d27a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 15:03:13.8518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ecvawxvh9b1uyS0B6AJ607fKu0vUMby+3pHvKblhgHLLPu3B2p1ZxO8tnJeTUkhx3KpvDLkXKIQyS+EzTZg3Fw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

There doesn't seem to be a reason to assert for a non-negative stream
counter in intel_dp_check_mst_status() in particular, remove it. There
is now an equivalent assert in intel_dp_mst_dec_active_streams().

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index df8c86fd133e2..aae944183d111 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5004,8 +5004,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 	bool link_ok = true;
 	bool reprobe_needed = false;
 
-	drm_WARN_ON_ONCE(display->drm, intel_dp->mst.active_links < 0);
-
 	for (;;) {
 		u8 esi[4] = {};
 		u8 ack[4] = {};
-- 
2.44.2

