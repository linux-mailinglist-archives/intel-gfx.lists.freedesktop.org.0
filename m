Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED519D2E29
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Nov 2024 19:44:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5DAEB10E366;
	Tue, 19 Nov 2024 18:44:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E1SJitP1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 86C9F10E2CB;
 Tue, 19 Nov 2024 18:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732041866; x=1763577866;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=PkQre1K3ZRcwmZPZVCogHvvhXBI6flDnpgrMwrMyCPE=;
 b=E1SJitP1Wyjawk+AIF5q9/z6+POYh/EXBtW6w0r1TYBywUvVU6YkMfPR
 lK6ZMpzGAvcVYn21Dcin7XRKh77Gf9obpEy0K5eLywQJ40lVwE6EXhXtt
 8KLnd8e24QT9QwS0EMlk8S1xJTJWNTulOHX7Zta97zUb7E9boLYKU0ev4
 uIqgziUHLkqFjwc08MQyxarI75B2QxQt8uIv4WtPAS2S1W5xhm41YFz23
 J7CJ3sc5UwlzTNtcDSsbOBozKnuuumbMUhNfX39LDbnazXTEjbzSC4gos
 m5ghhsJr0DphqjhM6F440Rk5l7Ehhgcs6afHqvxTAMdeRm+5UinzWLPMO A==;
X-CSE-ConnectionGUID: GOIsORZLRriXIme+ZUUh7g==
X-CSE-MsgGUID: XNOm58mIQjid9n6zFQv9FQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11261"; a="43449643"
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="43449643"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2024 10:44:26 -0800
X-CSE-ConnectionGUID: OiPbFmTHTrqIhs+wlUB+ow==
X-CSE-MsgGUID: HcIFEttQRnOInCAHRdMf6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,166,1728975600"; d="scan'208";a="94114906"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Nov 2024 10:44:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 19 Nov 2024 10:44:24 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 19 Nov 2024 10:44:24 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 19 Nov 2024 10:44:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wMpE/ZyOzgkPt+M0KshK40s9Bz7TnllyvfUZ3OKcmtjMQoO84B8Cpzm4fBiClf4Dcxz/drH9qdM1n/ohq3519YtR5XT1+noEeEyZX4pNOxgX4/hR3TUTCVmHdeNDppAASSUhRhnQGcB4GATlO+DgYpnMEX4b2Jz/j1Dg3GVx0CLC6BKluvsJIaYYL5nP0XkFgdC+qDSas9WaD9XEb0CmLduynt8916bOHwiZ0f3uJTDTQSu/1xtCegIluawddpOu0aLvqPFnTUqHE+HMPqdvNVmCTW+STKi7dKVtTUI0WhPiCUz4RuVVOaLb7eFJfY7vCmwgDrxhtVixL+myQdhNDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FRppKcgzhH9NuUdJYLxcZDmtfs4RpTKIAw1ABKE1T+w=;
 b=vaVv2GD1ZL1Cm9LjfuN9gQEq0BD+kCqGu25TPutxjvcxigTnad8zAbcvfmmD4rm68ZGaFBrFZ27Gv88ekM1TAk6G4tsrJ406zkytXg8xhpI7P5vP6IwBHHSaDToVM8O1cPEwtoeGi1gQYK57Pq4hQ5PdikOw+PSNKMhjyRAX0afxHHwEvm3BJiwR3h85l4r6XDod2hIGI1EIvVjlaOUccOu1IC7czO3uYsNG/O1CwWAIr14VtG+nMI31ItjP9bEub7spmBANjBWCMZHXhdSGTLH3XkJxiTBRIlpOz5PJ4m4tKPZHnIFSZqXhACKB8xZnfXa6yn/3TaMdCAw9pRTNdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by SJ2PR11MB7645.namprd11.prod.outlook.com (2603:10b6:a03:4c6::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.15; Tue, 19 Nov
 2024 18:44:22 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8158.021; Tue, 19 Nov 2024
 18:44:22 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 1/3] drm/i915/display: Move shutdown sequences under display
 driver
Date: Tue, 19 Nov 2024 13:44:12 -0500
Message-ID: <20241119184414.336105-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0066.namprd04.prod.outlook.com
 (2603:10b6:303:6b::11) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|SJ2PR11MB7645:EE_
X-MS-Office365-Filtering-Correlation-Id: 700a443c-0555-468f-f769-08dd08ca2edd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?+6eNiL/UaGUBVChoFCjmtiF+sY1V5tZVP9UG+CZDU+bbOkanCfpXPxozIzJQ?=
 =?us-ascii?Q?d3GNb/7VY/+yd7p7CzZ5GG7uB4Or2g9B8uj1FYVPU24195znosu0nyJK94rp?=
 =?us-ascii?Q?mH5Jl9vkvZTkH0mp7o4C7xyseourukTaelVSJBgNHk958tcJY8kOEa9rbV1Y?=
 =?us-ascii?Q?HgyGGp4K78Kb/nGR6tlHwTxrjY6uYn8mAE0oNx0C83Pcb7K5vBTf0H+YsPZD?=
 =?us-ascii?Q?jLbdDx4ol44KXIK/ZIi/ba5RT0GCq7qehwZS6yMqRMlmmDjDSU5loy3+loe4?=
 =?us-ascii?Q?LtaqDfxBWLNhMFGiP3B+yhyWFubA7c3DoahqsGzxINAB2CiYxGRtLQ1mDxAG?=
 =?us-ascii?Q?G3I3sPGafPYfrfnrVqxEH7xfB3d8QcQ/CJr8BhbWzPxjMBu6ksj7udMblqsu?=
 =?us-ascii?Q?KVg302QqHjWQsooot5iO7S/Sbsp7Hj63cQypdL+q5pWsCi8/J1BiinCeesiV?=
 =?us-ascii?Q?J+x1QigtcJ6wIQ1w4GkSJ+cvTCr6SOrcVj3iG6zXJNA/cVuYA3qRoTcTpldi?=
 =?us-ascii?Q?fFA1uqG8ylf1wZC9RCxCqmF4PUehQvmSBCJ/6MKc6OiWD7L9CGgBG3WJMuni?=
 =?us-ascii?Q?k3P46NCdEz5oRmSfLt0GQy8cEMW11s7v59bZgumaSB69ebK9C9rbmL5FqJQQ?=
 =?us-ascii?Q?a+m4+z9EbiGMFDTAj4MljY8v3UpeuU4wAZ9Fe0LYDFiqWmbdokT+8Rtxy9VO?=
 =?us-ascii?Q?kOTT2929hgFHjfG2OtSwsau8IDPdzPz94DEoGiUalpdgQmjXWZIW93kXwZ/N?=
 =?us-ascii?Q?VWUr9/yHDfZJgB+6NgKPOuGSWME1c4QP6vyI7Kep3HySC/BUhUYkTbqrMoHW?=
 =?us-ascii?Q?SDHMyEXYpefU5uxHVIXAo0YpsggidkDPdUaBHgjd827pWtdkuQlTnM8TFcEA?=
 =?us-ascii?Q?N7Y2QFLYgfcdt6nPP7TB0NdV0xHcAspkHM/Up4vudF1NcJay14N6QlTWowwN?=
 =?us-ascii?Q?iugZW7pb5gpNBdqO7YzI2a654K88ml8VsPCVY8bvrvWxqdmxPrtwA5kuI8QH?=
 =?us-ascii?Q?q5y7qCzYqpxM8bCnwfa0LwydErhBetL7HCkxNpAi6HJhndB7LQdXQ1kdj+b/?=
 =?us-ascii?Q?EzBfIkRuI2xa9TOU4i01W/XA1HeIzE72fIAWCmvEb23jDd3kkEdKpF6Z3ec9?=
 =?us-ascii?Q?pSQTCgl75kAkG3egumM3sRGdXdlO3cv5rbt5BWzNzV4FM+ntsTP2Jnpjw+yl?=
 =?us-ascii?Q?sidC7c6EOI3xSiRpIz2gVu6aBxsljbogfHhmhFIA5A1wvtVSDomg4wG1jnoO?=
 =?us-ascii?Q?gNFsvG/7queH55X4i7vXZew6JYRbqQ5CXZZ8D2IgN97bkcwkPlJA0/t+ePWb?=
 =?us-ascii?Q?+HTpCI27JnooVrU+yhixB1KB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?CExo5eTkNi/YOKIt1QYwrhdawI+UALFqlEuaiNxIndMclmVWRd0s+Iqd1lnl?=
 =?us-ascii?Q?ZoCNXwnndW2JXb2PSYDJZpSypvBMAxzGBspTj4mUdkZ9HsepZG37PkNg0tQX?=
 =?us-ascii?Q?gtVqNqNKhu2sG5U9I0UfL9l/duPyCvhtogde1pCx8rHkFfeRNrSA1jLpBKGK?=
 =?us-ascii?Q?EPYyudk3zGLf9IjtKzcNubd9KIYwN4ynAd896SvedyZYzgCRtNoddJyvkhmu?=
 =?us-ascii?Q?zM2utGSxzI7rCIZ5uQZzak0hxGbYLw/EI0h2odyW43YLtWuzsrikf37TTPUy?=
 =?us-ascii?Q?T42WhRKnj/91uLFTCxAyImsgE0cbBGuEW1QxPmEo6Z4SXR/kkw2QJh1VFTv/?=
 =?us-ascii?Q?JFr0RvcVFToF1E5VGKp1pM7zkQTN9eFiYG26FwjtnVBd5b490vsE3D1XGTyr?=
 =?us-ascii?Q?a2AF0uOn9LzBg3SYFUjIXOVC/AzE/gfbEr3bFDbHpnz1Zs/vndbwGXCDPuQi?=
 =?us-ascii?Q?WNNpjH5SFKn90NvHVuXwrKghLHTPck2UTR6kIP6jbb+AtThVVoDJaiIYBbdz?=
 =?us-ascii?Q?iGOXLKksnZbuZDJi5iWJp+Iql4wkY/Q4bzvXmRLrvu8b3MTtIEnfN4DPEZud?=
 =?us-ascii?Q?ao74Bx+7zaTQDAdvnuse8UTHyf7O1LmrHtj9pn92qy206/qMdNzKdU+JmI3n?=
 =?us-ascii?Q?f/DpAPuCnjE9osRpK+uW0V3J5ZdHRNyW7MZUWUP7szMuf9yNWz0V1edtvHC8?=
 =?us-ascii?Q?or1j/dFo3Xe2UBPpymzJoZd0V/YqF7uNlyNrTos/eBgJlTYIU3BNYqb+w0rq?=
 =?us-ascii?Q?g9YmJRkRafFDRpeuPTAjnosFRP3J6l91yjOAyG1iKUwwP7VF8JR+nDNuFMVy?=
 =?us-ascii?Q?vMasf6zWKEPPb1FvRN6lddFRW5AhPAXoB1gD2z1aZfXMF0UHukdRR4sVREMx?=
 =?us-ascii?Q?vJgPHwBAq7+9Xo3zrs6SItQEFLDYVYnxMBF/Tn1HhkmvPOpY0cqV0wPYjsfw?=
 =?us-ascii?Q?vctGx7DZiiTBc3YXHIh3Eemwg4VjaWph5A3OIFhk2b1mEauRLCDcvSQ9epnn?=
 =?us-ascii?Q?IeipKptDmVk0wYXKj0uKV0wG3kzQCW/4z5iUIcLhmWhMOvx7zRPpxulMAe6L?=
 =?us-ascii?Q?B0AeAKZChTPvo/LUtvfLia/3gFuqtjuqeaEY//cEXWoTJrDcqGT89Yh/n5Ns?=
 =?us-ascii?Q?1wmaHfQ6fS56gQuOxDTaBFR+4vZKWCAvLU/DuTsy+qyF0M1pWwTyyqIDEtXi?=
 =?us-ascii?Q?0frDZPOp8qoh2ATGL8d0xWAxQCI1va4XZsOCrpnAtonUn2tsz3w+uwWIjxb8?=
 =?us-ascii?Q?44Y/mP2KKrMDCtQrjLS6GDciwO2mvIhfKpC6uL4pzXCwsuSgOfSoPSGmQ9N7?=
 =?us-ascii?Q?KM5tPOpm3somm0+a4s3OYv6JpM72LnvzyaqvT6jMdwOra9TVf1GIXgfvXDk+?=
 =?us-ascii?Q?/dyOM1XnvnznW6ZOrNpPPbtxWflerPE9Bu43gHQMP6P2d933gFk/lxPh1w0U?=
 =?us-ascii?Q?7rjQsMQor3k4wDlXwlInT7YVsptfBypbb/Fs4yyr00UW/CoLAKgfmoMniZZD?=
 =?us-ascii?Q?rqVhjCe7qVpOOQU0pACsDLr7ker4BRRxh927N2mCjWDUe0y7Bs4fQDOJsvy+?=
 =?us-ascii?Q?fQ59HEYovVIWZjAJiQxwNpMg9uXDHSg7SuG2VBTx/8U1HwXVkR14H+L9gz+6?=
 =?us-ascii?Q?mQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 700a443c-0555-468f-f769-08dd08ca2edd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Nov 2024 18:44:22.3116 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H/NSKLA0PGFQV0JTWBJ1jp7BZXBOSUXZxWfbjrS0F6WLt9xR7VZyNDZrR/gYlGztw3Z5yw+TzkvouKBUo1PBoQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7645
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

Move display related shutdown sequences from i915_driver to
intel_display_driver.

No functional change. Just taking the right ownership and
start some reconciliation of them between i915 and Xe.

v2: - Add missing _nogem caller (Imre)
    - Fix comment style (Jonathan)

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 40 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  3 ++
 drivers/gpu/drm/i915/i915_driver.c            | 27 ++-----------
 3 files changed, 47 insertions(+), 23 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 06a60be649ee..ee2cccff6e5e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -39,6 +39,7 @@
 #include "intel_dp_tunnel.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
+#include "intel_encoder.h"
 #include "intel_fb.h"
 #include "intel_fbc.h"
 #include "intel_fbdev.h"
@@ -762,3 +763,42 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	if (state)
 		drm_atomic_state_put(state);
 }
+
+void intel_display_driver_shutdown(struct drm_i915_private *i915)
+{
+	intel_power_domains_disable(i915);
+
+	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
+	if (HAS_DISPLAY(i915)) {
+		drm_kms_helper_poll_disable(&i915->drm);
+		intel_display_driver_disable_user_access(i915);
+
+		drm_atomic_helper_shutdown(&i915->drm);
+	}
+
+	intel_dp_mst_suspend(i915);
+}
+
+void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915)
+{
+	intel_hpd_cancel_work(i915);
+
+	if (HAS_DISPLAY(i915))
+		intel_display_driver_suspend_access(i915);
+
+	intel_encoder_suspend_all(&i915->display);
+	intel_encoder_shutdown_all(&i915->display);
+
+	intel_dmc_suspend(&i915->display);
+}
+
+void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915)
+{
+	/*
+	 * The only requirement is to reboot with display DC states disabled,
+	 * for now leaving all display power wells in the INIT power domain
+	 * enabled.
+	 */
+
+	intel_power_domains_driver_remove(i915);
+}
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 42cc4af6d3fd..1ee37fb58d38 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -26,6 +26,9 @@ void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
 int intel_display_driver_suspend(struct drm_i915_private *i915);
 void intel_display_driver_resume(struct drm_i915_private *i915);
+void intel_display_driver_shutdown(struct drm_i915_private *i915);
+void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
+void intel_display_driver_shutdown_nogem(struct drm_i915_private *i915);
 
 /* interface for intel_display_reset.c */
 int __intel_display_driver_resume(struct drm_i915_private *i915,
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 2013962e446c..3b241054ceb5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -945,43 +945,24 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
 {
 	disable_rpm_wakeref_asserts(&i915->runtime_pm);
 	intel_runtime_pm_disable(&i915->runtime_pm);
-	intel_power_domains_disable(i915);
 
-	intel_fbdev_set_suspend(&i915->drm, FBINFO_STATE_SUSPENDED, true);
-	if (HAS_DISPLAY(i915)) {
-		drm_kms_helper_poll_disable(&i915->drm);
-		intel_display_driver_disable_user_access(i915);
-
-		drm_atomic_helper_shutdown(&i915->drm);
-	}
-
-	intel_dp_mst_suspend(i915);
+	intel_display_driver_shutdown(i915);
 
 	intel_irq_suspend(i915);
-	intel_hpd_cancel_work(i915);
-
-	if (HAS_DISPLAY(i915))
-		intel_display_driver_suspend_access(i915);
 
-	intel_encoder_suspend_all(&i915->display);
-	intel_encoder_shutdown_all(&i915->display);
-
-	intel_dmc_suspend(&i915->display);
+	intel_display_driver_shutdown_noirq(i915);
 
 	i915_gem_suspend(i915);
 
 	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 *
 	 * TODO:
 	 * - unify the pci_driver::shutdown sequence here with the
 	 *   pci_driver.driver.pm.poweroff,poweroff_late sequence.
 	 * - unify the driver remove and system/runtime suspend sequences with
 	 *   the above unified shutdown/poweroff sequence.
 	 */
-	intel_power_domains_driver_remove(i915);
+	intel_display_driver_shutdown_nogem(i915);
+
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
-- 
2.47.0

