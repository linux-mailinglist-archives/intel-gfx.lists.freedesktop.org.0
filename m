Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18F4A984C4A
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:43:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B96CD10E745;
	Tue, 24 Sep 2024 20:43:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h5bMD2dT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9532F10E745;
 Tue, 24 Sep 2024 20:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210592; x=1758746592;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=7vT67THnvVvfAgaGQ4KGrSRkkZ7vM+4mGnO/7kycON0=;
 b=h5bMD2dTcbG6m56OdnJQxJrMlMh7lXNnFDYSz3pReEmPns6BiOh5bgmu
 Z7s+A0ajz6sNiSzDbNYlnYVYAIdpRV0ArBipkrWlOmU8G8AcgxPQDUKgF
 kfM3x8zObBwP/jEOMwlzVULPHfacD6cXAarPRjrTJ1nvDTqKdlh69TJg7
 S+DarVRw7pGRp7WVHXG7ojlqgbKkWA0NBohtGgpJJ8yEsS5k+tTOnY5+O
 z6htAhVVxoZq4B67Mqn/q7NlPfbsNI3v2t21benJOOu0cKLz/A4lz1AT8
 OnNU+2ilOup/agWdvELHESX5V9YW9jD21m1y8uWzaqdTVU77GZnAE/9xW A==;
X-CSE-ConnectionGUID: 4REYvuyfS5G2pQ9uwQ8A7Q==
X-CSE-MsgGUID: s1mlGYy4SluZChIcVT+zmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="43751494"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="43751494"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:43:02 -0700
X-CSE-ConnectionGUID: O9zAUEc2R1GEzUmp8q3fhw==
X-CSE-MsgGUID: afbFwD/NS02T9/bs3lVDoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76298562"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:43:02 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:01 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:43:01 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:43:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bjzOYBTh9oc34bdVE2g36tk3Ob7pTYN4Epgs8Iiq7gb+xdSS2VBA3Fld6saTwVwrBG+X/pyPUyDADDFGtpRz86lRd/II9cUpy7rJUfYLK4xMlMwFqK2uNEXuVZ/kAQAKOXarfu/x5nQChpktuHJTYKO8KfZu/dJmp2op9eoBaF0Bir8jgS0V8ofXV63f+k6utcQNCng2n2N76DtFv7iXmk1dEFV0+x7f4jMzeZMrtf6S7MYgX4Efwkh+gwWymBQK/BPQwR4FIo6VUM5/saOBSZxy/mfdI/5gSwde7pzGblWt54tvZKVnlhUVllimS0Tt4fLVAJzAc5V+cf9xe5zKaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+XlrxMIwl83/cp6qRHTBgR1t1XuicLvMHJHVBaL9MoI=;
 b=VQ11VQZIfgBiLGwpjPPGKzXVmTwafAL1MTjajMBxCCFWt/V8g1IM4nBoSCGcxSMlfw/202CM3WnrRWMC1izqYXu697KgPbe4gb3GEhRuzgUcMZZ0Irk2YEz+HsowQI9wPlwDkQLSD6Wwt2XF2CQI5X3o6K1+sJ2zCGOIaTUL82BURjhL+KIhU6XZFYKA1zg/ZmCXNFYNsUShCOiZOKuPXtZnnDMFOKuoQvUGE4DN0xs4wKkPU8j9twTfa/HFO+8g/08bAY6HvwrGxgsgYtdCI8Pk4iKHcXaWs+0YLu6zxZaRbRWY0KUF2OWCt4rnzCEcz+GBEMY0prCm93Hdb5Ee4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by PH0PR11MB4965.namprd11.prod.outlook.com (2603:10b6:510:34::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.27; Tue, 24 Sep
 2024 20:42:58 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:58 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 08/31] drm/i915/display: Move suspend sequences to
 intel_display_driver
Date: Tue, 24 Sep 2024 16:35:29 -0400
Message-ID: <20240924204222.246862-9-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0055.namprd04.prod.outlook.com
 (2603:10b6:303:6a::30) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|PH0PR11MB4965:EE_
X-MS-Office365-Filtering-Correlation-Id: 0de20ba9-ebb2-4dad-c69f-08dcdcd9798f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?FGfn6wA8ic0xG7aASBlv3d8jweHmAlFweDnBmpNNGk5e5gz34rUW6n4q8h9R?=
 =?us-ascii?Q?mlJT33jBFKMbVRzxERkUFaEYCYXCAFNcutwOSg3v/7P42dDGfhLWSMMquRur?=
 =?us-ascii?Q?oDtN3zf3BGuXwSnzDbwDLCLJVd4FpIQiXKXfqCJ8bg5BuguxMMdMfHHm/QUs?=
 =?us-ascii?Q?VSwYUbANKH3TPhYsqN/AP4JOZzZe8MLzPyPnPiRSC2KkkD5v4EjMK7JbCoKV?=
 =?us-ascii?Q?k9c9Zni5D7RRivt9YTzmH7zXb3/tuxWXomqcvbCXsmMl9bVZRh+qamTMdPW7?=
 =?us-ascii?Q?+NogvS/4hxeAnkS67jH62a1+YtU7+Vle5/aWp1mMILJdTzfwSTwlKj1IglgS?=
 =?us-ascii?Q?HsgCkWHmWAnTYYFo3dduYogt6WkLEvSReujurw+GZFxJtcshbhTQELf1rq6x?=
 =?us-ascii?Q?VoucAPKAoQtPuxs6HhIBlZ1AEFzi6x4MkxPIy7QvZWakEmNyepOXzHuVF4RK?=
 =?us-ascii?Q?5D/ieGUB6+XTf6nFMYAMSKLztLMr281U5FdJCmP6SXEkv6rWBoxS5vcWe/3O?=
 =?us-ascii?Q?0ocnGOJfFsPbUjSDeqDXn6YnwQ/PuVwzfjcb+NfFvHARs/f0Wiu/TvxMSQ9s?=
 =?us-ascii?Q?tzPWIOm+6+sxjpqfU27+v/ZSloFA98rWp/Nf+UChjhKyEXrxnIYTzSsZd2tI?=
 =?us-ascii?Q?BD+vvJoYRFakz2BWyrzUyL+vX8DpSvWJf5H4lc4WH0/m8OMBTY8UyxGVIuAK?=
 =?us-ascii?Q?GIiaH62A5L7DipFzA41wq7SupKT8U0uzDH5tN49xHiYYAi9fI8uAmkLxf+WM?=
 =?us-ascii?Q?4fX7/ZBaZPTwUB5XOf1odidqMOr90pitmMESmcblZZ5r5GzLbwOxHXumJJFR?=
 =?us-ascii?Q?1Z7mI80Z03aUxepl7wk+vZJlzG+IrQNN/TUUYuZ4xVL5G46/Gqn1hsrp2SnZ?=
 =?us-ascii?Q?j5Hai4h4pugoGPIu7botQCsYESj+3b33OQESDyU7b5R3akEf5umRbvXclB50?=
 =?us-ascii?Q?2ZvwsWkbR89g5J8cjhgxuBS+paNE/MIpPd7xdRF6j7rJsscFuqGc9TXpbPY5?=
 =?us-ascii?Q?mExQSFDHSpoWBZ32owcE6x2i0N5Q1P5rIoOhQQrybyU+GEnwZEUo71Cycm8A?=
 =?us-ascii?Q?3p248RZTzQoM0DXkCPItCMlJnD8UAWJ0aDN4HwDcU8zj8teI85FI0vBhS5bI?=
 =?us-ascii?Q?PUV3SER5GHRVsxU43Xe4rTGMbNFX6NrwqN9BxTcx+cCPTpp8Lcw8EinekYgo?=
 =?us-ascii?Q?o+zeDglXHQW0f/mE5K92T5iFh0CGmjvS/8dne1i2PpaS1bh0dv9V6BwW9yPW?=
 =?us-ascii?Q?8oPQ60JdQ3OMR+xIj/X9AL0JNn9nNBgtrif+JCvtNQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?KsG3sC4Kghdsg2JctOXyFCCXfjZth8GM59CMylOJj1PxSVWB9NylL047Dglv?=
 =?us-ascii?Q?Wvc+hJAlnRfeHuVjwmLoM+wilcuPyFwUk09Hr3wtF5b9LbT4iJoHvKdtNzci?=
 =?us-ascii?Q?yRCxzZ77ZCEqNW0PqevEl8+N2s3sZUGYdXUwPeVnvTkIWinY5JoDMSVWM3bM?=
 =?us-ascii?Q?qFWu8tFLKmaYGBanTNmckVtPnlJd336lAgyDELTdoPDXncZxVjF77hD2u3fe?=
 =?us-ascii?Q?iLIURuk/VWlShn1k5wGDEPYS0UM1zVEN6ElRZFz+1SII1wx9UZ6y3F1Ef862?=
 =?us-ascii?Q?aNDzlQeVAwHgzTFFPQp6j6TdsYiHhzdxRXc3EvmpnKyo1DGsiD4CJYs/zkeJ?=
 =?us-ascii?Q?YRy/B+/0QBZrYN0zoci8f+SAF5IOx4iTtqzk8pGmVpS3pmItgryTnlU4RVWr?=
 =?us-ascii?Q?o876HMoc+GErGLHTlpznE5d+rrXdedtYIANUyKIks39Jt5jxY/sCukPhK83J?=
 =?us-ascii?Q?n+3EYXN7D1+AGXj1amX4Kv+mqXlJxOzSMz6FgVHP7BfQAv72Iyqfm1C38ViA?=
 =?us-ascii?Q?dsrslSgz6P6f3LOeyp1RBm03Mgzc9tuigtPpwXB9y4DaRw7J4Zjnw6SHoBO9?=
 =?us-ascii?Q?lVObXIHf8rgMj9RzdwiccXYgX1D9ya2loHHX3zg9o2yzt1cmkKAWT/Dwo356?=
 =?us-ascii?Q?+tmUXVY12xHuJpZ08EWDwet9qnb4mjCkci9r6VcXJpU1bZ7uAdr2XYLwJXsm?=
 =?us-ascii?Q?uaHiCzHaZvdbregQ5yFfnfbqTos+R5NLG9XABlB0sGzBikRe3k3WEyd6Kknj?=
 =?us-ascii?Q?cx+7trI6zT6jj0qWvPneOJkpldWifZFPeF7+kXgVxuGwZjo0ECsf+eqpwuSj?=
 =?us-ascii?Q?Qfm7rD8ifLtguToZ6SFbyBS6Bm7O+Z+iclB97f1+yOyHfnyHylXVS4eTkf7d?=
 =?us-ascii?Q?isYTsjTC7noO/GpKpTrrXEtIRPhk0Ev1YNR1qEisnS04WOzrGmVLvhZS7sct?=
 =?us-ascii?Q?I6XAHOrE9EWWVUOnD/c6lOvuonxVFdGpiocFiBQ+R6/vIkLw9x0N9CC2NRWa?=
 =?us-ascii?Q?lz9ugCFuwqFAh13xwZGyF0GHdUx17XDOj910X2yd0NbctyUf7woyUGZ2ZB6A?=
 =?us-ascii?Q?iGistSxpjiEK4+hsmXBuX4cBe8OsypY635D413z3S+NkS7mAH0Lq9ZIfo3hf?=
 =?us-ascii?Q?KCPP/0cvSU/+b+CCyTp5gVzkRUCDy/A1QgE16CExOx3FRNLeh1qBU3jOkVw1?=
 =?us-ascii?Q?UewiAXJXxkycla59TxLF/67IlZqZxTMlMQEHmHNoOzBWioaxE8u7UYGVhN2f?=
 =?us-ascii?Q?GY73me2DeLZnfCo04iB8somu/7PSGRHRVZ0N6vfdWY3JO4yvbBQBVi4upFY6?=
 =?us-ascii?Q?gIwNHg48zuRYk612AZj5cKJ87r8cowsE57/6qXflI5zqXgw2hs8kV7wUbeRy?=
 =?us-ascii?Q?azkZoOooJCnzkhjW4BYEdFWVBC+NQa6OYWjiWGAgMbUX2phLijRArVGL0TTq?=
 =?us-ascii?Q?5Va49dQzQ0HgdAMP1gOp2avDVO7TzW9wbtfG+Q1MFOyJKRid60FgkhU4T7jD?=
 =?us-ascii?Q?4uyE4cMMncORPICPDoI+3ivlKkK+s+Unm+dl7H2gGOvkn7Lx7rGwds6CyHys?=
 =?us-ascii?Q?6RlSTg/mhPb2ZZqSWhb+Oms6S74dikE8CQui5bkMpOy1/efnBJ444WbRbACk?=
 =?us-ascii?Q?Wg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0de20ba9-ebb2-4dad-c69f-08dcdcd9798f
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:58.8089 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: s4zMUYg37bRyiyd9sXh7IsvVAYpHB4K5zeX50HSW/YKr8Z0wxGSR6PAAYNRk3OzI78UeTrQpGU4xMADQvcdHlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4965
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

The goal is to reconcile the Xe and i915 PM functions.
Start by moving the display sequences from i915_drv towards
intel_display_driver.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 20 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  3 +++
 drivers/gpu/drm/i915/i915_driver.c            | 14 ++-----------
 drivers/gpu/drm/xe/display/xe_fb_pin.c        |  4 ++++
 4 files changed, 29 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 51fc1c148283..42624bf80f91 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -36,6 +36,7 @@
 #include "intel_dkl_phy.h"
 #include "intel_dmc.h"
 #include "intel_dp.h"
+#include "intel_dpt.h"
 #include "intel_dp_tunnel.h"
 #include "intel_dpll.h"
 #include "intel_dpll_mgr.h"
@@ -682,6 +683,25 @@ int intel_display_driver_suspend(struct drm_i915_private *i915)
 	return ret;
 }
 
+void intel_display_driver_suspend_noirq(struct drm_i915_private *i915)
+{
+	intel_hpd_cancel_work(i915);
+
+	if (HAS_DISPLAY(i915))
+		intel_display_driver_suspend_access(i915);
+
+	intel_encoder_suspend_all(&i915->display);
+
+	/* Must be called before GGTT is suspended. */
+	intel_dpt_suspend(i915);
+}
+
+void intel_display_driver_suspend_noggtt(struct intel_display *display, bool s2idle)
+{
+	intel_opregion_suspend(display, s2idle ? PCI_D1 : PCI_D3cold);
+	intel_dmc_suspend(display);
+}
+
 int
 __intel_display_driver_resume(struct drm_i915_private *i915,
 			      struct drm_atomic_state *state,
diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.h b/drivers/gpu/drm/i915/display/intel_display_driver.h
index 1ee37fb58d38..179fbb86923a 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.h
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.h
@@ -12,6 +12,7 @@ struct drm_atomic_state;
 struct drm_i915_private;
 struct drm_modeset_acquire_ctx;
 struct pci_dev;
+struct intel_display;
 
 bool intel_display_driver_probe_defer(struct pci_dev *pdev);
 void intel_display_driver_init_hw(struct drm_i915_private *i915);
@@ -25,6 +26,8 @@ void intel_display_driver_remove_noirq(struct drm_i915_private *i915);
 void intel_display_driver_remove_nogem(struct drm_i915_private *i915);
 void intel_display_driver_unregister(struct drm_i915_private *i915);
 int intel_display_driver_suspend(struct drm_i915_private *i915);
+void intel_display_driver_suspend_noirq(struct drm_i915_private *i915);
+void intel_display_driver_suspend_noggtt(struct intel_display *display, bool s2idle);
 void intel_display_driver_resume(struct drm_i915_private *i915);
 void intel_display_driver_shutdown(struct drm_i915_private *i915);
 void intel_display_driver_shutdown_noirq(struct drm_i915_private *i915);
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index d166a8164b42..ac8bf00458b5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -996,7 +996,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 	struct drm_i915_private *dev_priv = to_i915(dev);
 	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
-	pci_power_t opregion_target_state;
 
 	disable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
@@ -1014,26 +1013,17 @@ static int i915_drm_suspend(struct drm_device *dev)
 	intel_display_driver_suspend(dev_priv);
 
 	intel_irq_suspend(dev_priv);
-	intel_hpd_cancel_work(dev_priv);
 
-	if (HAS_DISPLAY(dev_priv))
-		intel_display_driver_suspend_access(dev_priv);
-
-	intel_encoder_suspend_all(&dev_priv->display);
+	intel_display_driver_suspend_noirq(dev_priv);
 
-	/* Must be called before GGTT is suspended. */
-	intel_dpt_suspend(dev_priv);
 	i915_ggtt_suspend(to_gt(dev_priv)->ggtt);
 
 	i9xx_display_sr_save(dev_priv);
 
-	opregion_target_state = suspend_to_idle(dev_priv) ? PCI_D1 : PCI_D3cold;
-	intel_opregion_suspend(display, opregion_target_state);
+	intel_display_driver_suspend_noggtt(display, suspend_to_idle(dev_priv));
 
 	dev_priv->suspend_count++;
 
-	intel_dmc_suspend(display);
-
 	enable_rpm_wakeref_asserts(&dev_priv->runtime_pm);
 
 	i915_gem_drain_freed_objects(dev_priv);
diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 79dbbbe03c7f..49dc91bdbcb0 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -408,3 +408,7 @@ u64 intel_dpt_offset(struct i915_vma *dpt_vma)
 {
 	return 0;
 }
+
+void intel_dpt_suspend(struct xe_device *xe)
+{
+}
-- 
2.46.0

