Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 019EFA3650F
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 18:56:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C70E410ED2D;
	Fri, 14 Feb 2025 17:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dUZu0ozL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EABD310ED2D;
 Fri, 14 Feb 2025 17:56:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739555771; x=1771091771;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=sGnfvnQw/80I3N42UkEQXsOth1LDf1ubCT9aFxc51Ps=;
 b=dUZu0ozLoK+3MZIRsxZVziPOyI0bezoPpy1YK6j5Q7YVnvvCf1ogqIQw
 fFSEIOPCy/+Vg+SkjROFeXII4VD7v9RfrYWmayC5WqjBdN5l+97/U2N/7
 We2SuRkU9izgXA4VVlTNLhcNrnktNSgJg0Hou7cxILI5CAd104GVe96g3
 VsXlsAjT5ZQtHkrJPc3QSK+W7Ge18f0j1Tt3xdzbXWQahhf9+iYkwjbjN
 TlOgaK9RlWg4Hi62fZZdSlmi3p+7sQBSsrP/Z2CZDH/ECDDAs8ul2yRIW
 HT9HeOnvD+vMD5v5J8d9FrE2RCd1CwLHkrqYeczywbDET18baV/fJHKVM g==;
X-CSE-ConnectionGUID: TxX1YiJjSruGpvEDMlgqGw==
X-CSE-MsgGUID: r1uek7SESZ2emboF+vSGzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="40438283"
X-IronPort-AV: E=Sophos;i="6.13,286,1732608000"; d="scan'208";a="40438283"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 09:56:11 -0800
X-CSE-ConnectionGUID: bKD95dX9Sf+TvquznMAIjQ==
X-CSE-MsgGUID: RjqYBT/9SD2G9RAt9s5M6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="118723180"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Feb 2025 09:56:10 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Feb 2025 09:56:09 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 14 Feb 2025 09:56:09 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Feb 2025 09:56:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=viQ6wT6/fJ7bI7SZev+bvro+FJEgoJs5JA8ZCcMuWaBaD7OMRVrCUCVVkJWuLFVVA4knE9fbS3D/IkWJSv5A9gEPkCyWQtByVryKXACh/eZXiMy+SCoSDuL692sFG/Ki54VpPJdElDEq8oyoCdYGlE9vIc2MagOWYZ2fLKxGVAXmg3EWWJL6S+WuibMls8nS1mVUTX4nbOI7DKlo4GoZ5TrRJcdKxFTdHbWd63dJyzon1hj/wxKFr1MtVrN2v4o/SMXG7/vV1kcWFOxhStri0UfUoUpxXCAnvW41dPGn9YjsWGeCnD/c7edxuVgCprFHMYkXLop1Dv8biOeSnOckig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IY3ZhhjyTYPRZLtbkwDmq/RBI9bGH4UjBkPo0qYPWvI=;
 b=Kgwicv9X+xeZE//i9gAN4HIKim+8cqtruEi1pg/a3YcqdsP0zsA1Y47JgK3fMc0tK5TOrRl0HZCaWLw/apprU7moXzbibLxW8vthisUiepjdV6N8i1fXQuJ/Zyw2WOP+ujT7ErNPBkv2YupbUz0+Wbw4yA2D5NQ8ndpN0ug8Ol6QyJB/dmk1dyUt+a2RBXcZVMJKPvU76EYzHFWyvErUKeDooysuCbRiz0LmKnJjfl9PWAX+J4rh+1c2ZKiB1CHeUm0eq/AMTPI0x7WifCzuJMOnYyLVpaQHY43Nqwhg0jpS9ktgpHkHso7PCyIkEAkldMFXxyQ7g9cRqoyk8Kx7Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SN7PR11MB8282.namprd11.prod.outlook.com (2603:10b6:806:269::11)
 by SJ0PR11MB4800.namprd11.prod.outlook.com (2603:10b6:a03:2af::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Fri, 14 Feb
 2025 17:56:07 +0000
Received: from SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72]) by SN7PR11MB8282.namprd11.prod.outlook.com
 ([fe80::f9d9:8daa:178b:3e72%5]) with mapi id 15.20.8422.015; Fri, 14 Feb 2025
 17:56:07 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 2/3] drm/{i915,
 xe}/display: Move dsm registration under intel_driver
Date: Fri, 14 Feb 2025 12:55:59 -0500
Message-ID: <20250214175600.504481-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250214175600.504481-1-rodrigo.vivi@intel.com>
References: <20250214175600.504481-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0047.namprd04.prod.outlook.com
 (2603:10b6:303:6a::22) To SN7PR11MB8282.namprd11.prod.outlook.com
 (2603:10b6:806:269::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB8282:EE_|SJ0PR11MB4800:EE_
X-MS-Office365-Filtering-Correlation-Id: 863d92b9-8e96-422a-26d8-08dd4d20db23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ovHJVmE8iw4Aaeh4Kod74I7tl2WHTH4PmzWarMoqKU4XYI5Lkl2tonQMJxfY?=
 =?us-ascii?Q?UvTqQnooJCk+1oDp8MqU+z3RM/nUY0gWCpnc477nVzrES7S+SvPqBzS7wFs2?=
 =?us-ascii?Q?W2pkVyvn5DXmYF8+FnbOutAwuNpVL4o3NhkZuCiYy0p7G51X3Ufhpx60QMiQ?=
 =?us-ascii?Q?Z3LQKN9GfZKU+AOPbf0Mp23HeIoXXRddeQ1zELRqRt8ClHW3Edg5vDMC0lgl?=
 =?us-ascii?Q?Fdq+hT5GKA8Tf/pglmXUNSg5+mTYvXaqhM//g62YEH13nn83l6265RCYqQ3y?=
 =?us-ascii?Q?8NIh2IphRB0bZhQCw++ItbkxPc033Ij8d2Z9kpSkIDuk7TgZHJuOhq0K5qLl?=
 =?us-ascii?Q?7wCZmuFW25qnTTGvJ7vPSa2OAGjoewpMRCW17PZezWm6Xx1FBUfvtC47IIY5?=
 =?us-ascii?Q?eSROAfG0GR5QDIwLxotgpc3bbmrv3nBRtPPUakV1qV8lhgF//RAm/knWkRvX?=
 =?us-ascii?Q?GCzeQytHDNPjzMGYihweGZwd2DIuLCtqaZ9ZUfTCBNNZ7CEEzqvjcCIxvv1R?=
 =?us-ascii?Q?gv84l0sLNNPzcpnFmSg023exd7P4zLnu1kERbSQXsNNjG0dl3CgmlAz42FfZ?=
 =?us-ascii?Q?AfwfJBHWYuSwfyGAUlIhW3dyajKUucsrT1cHj9s0IgI1dM7615kXbaWFS6E1?=
 =?us-ascii?Q?lvA8JARgsPr+Och76slxLPyCLvUZCgcubgZMti2Wx+yV5XtwbSZFyZSeQdoU?=
 =?us-ascii?Q?VQDwjiQG54ANmIqxNjr0enXVkNu7DvXZMea1N36jkHW9XA2aIgXBKXa2QMg9?=
 =?us-ascii?Q?47HCYTFPWkiwMcBIhbAB1wp5BkhKdZ1GhcJ3lTJWwJ30qyS6OjqODN9K5D87?=
 =?us-ascii?Q?Z1JGlYujj+sXffcBkUbFuDeZ3nv3OLHt6Bp+v9CglH3LFdtyE838q21DwWhZ?=
 =?us-ascii?Q?jDAwUj0A/U6Uqb4goaMmV36i7vbAma/VtrOZIHIHpPiyGt1LFMV/Xy/bVJoR?=
 =?us-ascii?Q?d9iJChFdPOkKAWSl6ZshdTRbU5npN6/0XAa+Q4YIZnRwhKXBwoaz80lUq5/P?=
 =?us-ascii?Q?1wzOH774BygvaC3Hg0cWDRDiM2HcKbsPTpkACyCzfp/tRpstn03ChtdI0gXk?=
 =?us-ascii?Q?OsSX8z1DhH24Gr1yROyiNnPJ5UOwipKuKq5X6HEW3XITToYY5NtNc9OwlI9L?=
 =?us-ascii?Q?zlqPQaQGf4iz7DN0EiJaWxQftDzPCuXDIv3sYK86nnrsmE0VGtOXB0V5WDsn?=
 =?us-ascii?Q?WNQgYnrfQASV2JcUY9khh0j6hS9Dah/i2kkhYAXVBU3Dn/SrvrgVnp1M152v?=
 =?us-ascii?Q?k1GwHSA2tA531Qtoqyf1oPQ3i8S2i8ErF8+X4E4EHOZ83GcVbqHkoXkTycef?=
 =?us-ascii?Q?udkHoeSQlSPDEZchvBk0uroPmSvB4//Odz8sgwRmopTQozSM/7aUdRQWlJwx?=
 =?us-ascii?Q?Rq4PPXbZDGl7ZNt0zxGIF/vaFMyc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB8282.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9xPFtuJV5br+hSA5C4Za8tEvxe0Bllqn2P0UAR4h81DempZ85bJcwYXevVmo?=
 =?us-ascii?Q?+WBEQCPqG7TybR+KrJov28QtMVG355KhtK70eItY5Iq7yXfQ5+1/R6n5oYed?=
 =?us-ascii?Q?zJVJtg5ETv6xATLeTGNkDBgVfo3fCv2UAnCHnkZ1fBRQsZloMFn2c34EZ3um?=
 =?us-ascii?Q?k81ineFEAslmhPFJjoXhj7HIr28ryO5IUZGFajcR9kBhMNVZaV7ig/uuhEm6?=
 =?us-ascii?Q?aYt7nrGYq85n3XkSgs4l1Lk9nsweeGIKR9SYOk919xCeyZPiDcOSVGtTOdr9?=
 =?us-ascii?Q?NOWYk/ytwVrxufCoAA+9sWfC4NjCYWeffTyCS6U8/krAuVvNhn2ec+CFw2hS?=
 =?us-ascii?Q?TIaQxEe0HjDuhLbxxV6eVKS6WZM9J641P7RlenljPnF7TCEzvol7hKabT3qQ?=
 =?us-ascii?Q?9F1xBqMEca+4SWpxeTzv/msoeQ1rGZC+wMzjWF4GgMF7t+QZVBkWOQKoqc4p?=
 =?us-ascii?Q?3yAuaN84lIiBv0Euo4rUncGXl1ro6Chs4EVd7e2Bn2r9Aht1rmXLfcrpMPh5?=
 =?us-ascii?Q?qACHwKkHnB10HpRA07Ky0JIS8R+JC6mK8uGrE8m+n5tRvhMwhQ+omciK4HA3?=
 =?us-ascii?Q?n5FxF/W0Z/uI/OXeJ8cX94hc+/Sba9rxXW+NmWWW7uMe8QmOf9eDGh68fhng?=
 =?us-ascii?Q?d6dYAy0iDnrjpNmE0ojKR81qDFJkMRqFFaUmOmFi8Go1Jmo/GiH2BODRjPxg?=
 =?us-ascii?Q?6gJUD6eKEAhTlA6qEz0ZGFA+kkl3DQhq3DULeMU1M7uFJlB0fPVZiXv3hBj7?=
 =?us-ascii?Q?E6t3xaRinakWKX5puDsV7uriv888rKXzUiwiUVVgos7/tJ63N98Vye8x6++Q?=
 =?us-ascii?Q?8h+0Vx/u6ko2svBD8knnqn0cZc5Z83tuse+ZDchUUZmKsy51X8EGaF7yLqHs?=
 =?us-ascii?Q?cyXttS3jJcKSsCxhHKIpFTIld89tUfPFl2Sa6RnGeUUHx9Z5Rh3XjBJOECGT?=
 =?us-ascii?Q?Z9rfzb6vS500xeDt5pBlFx8e9XGpoDVulQGt7SjQOznOR4PQBqlJGraFLWPa?=
 =?us-ascii?Q?ZFJ+zh4XhEMFZvTyGvrnfH63QBUvIMyZBpNUmmD/Iodojl0XDA8r1Vi9svpb?=
 =?us-ascii?Q?4nQNLjuTiiyRWn7Unra0wGt6lcadKnZILsYanTPq3zyS89Ey3dUEkP6m6xwm?=
 =?us-ascii?Q?LpHoM6v2XveeCxsp/5mLrouUMZyabHd1ZyZtgVT0v0UG/Hs7Xs9cauNv3f6p?=
 =?us-ascii?Q?E2iLmFh8XajIECrMEvzTIblqF8DgGnpTZBzO2N+iIXPwwBrAY7qJ9TrlGVQo?=
 =?us-ascii?Q?+uA9L+9EuM1B0rbhQPhz1cpXAovbHY7SmEDcb7o2dy9nwROAD6Vx7HbwSA1g?=
 =?us-ascii?Q?DAWaXOKhXrblY2Vq5nPmf2bYfLlNpug/xK1HY4rTGnSk3qX2FSjqX2jTuTAX?=
 =?us-ascii?Q?jFyjH/nGLk3owdeyh/hKzDvIbOiCGHtoCNKwVZFJNnnyG5FZxB+8ZJYls1/S?=
 =?us-ascii?Q?O88is168DYJBkQ6Au5smSp7xCk/2KJWXWyFdEHACfH7NgAiTM3JrBBledBWb?=
 =?us-ascii?Q?q5QVxdBuZg/zV5IKNO2UNy/0vfPxGkdBRFBgAQjiSVg3KKsUZr5oQTWw3rIx?=
 =?us-ascii?Q?WmsO5jbOvBuIrJRJby6qnbtwjHI6faJ0ppUgktUjFYc9F1uziVT8YBjOYlnG?=
 =?us-ascii?Q?fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 863d92b9-8e96-422a-26d8-08dd4d20db23
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB8282.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Feb 2025 17:56:06.9398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6bkgzN0LVrbSqRazFkNqf21hfrhmqCHDtDlUdGdR1VBlX5hOd/8CSu5mfbmdLYzk4o01bBQF2SUe6hzecbqKVg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4800
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

Move dsm register/unregister calls from the drivers to under
intel_display_driver register/unregister.

v2: Rebase only

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 4 ++++
 drivers/gpu/drm/i915/i915_driver.c                  | 5 -----
 drivers/gpu/drm/xe/display/xe_display.c             | 2 --
 3 files changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 852f1129a058..b72b07329fbf 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -564,6 +564,8 @@ void intel_display_driver_register(struct intel_display *display)
 
 	intel_display_device_info_print(DISPLAY_INFO(display),
 					DISPLAY_RUNTIME_INFO(display), &p);
+
+	intel_register_dsm_handler();
 }
 
 /* part #1: call before irq uninstall */
@@ -639,6 +641,8 @@ void intel_display_driver_unregister(struct intel_display *display)
 	if (!HAS_DISPLAY(display))
 		return;
 
+	intel_unregister_dsm_handler();
+
 	drm_client_dev_unregister(display->drm);
 
 	/*
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 91a7748f4492..1dfd6269b355 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -46,7 +46,6 @@
 #include <drm/drm_probe_helper.h>
 
 #include "display/i9xx_display_sr.h"
-#include "display/intel_acpi.h"
 #include "display/intel_bw.h"
 #include "display/intel_cdclk.h"
 #include "display/intel_crtc.h"
@@ -657,8 +656,6 @@ static void i915_driver_register(struct drm_i915_private *dev_priv)
 	intel_power_domains_enable(display);
 	intel_runtime_pm_enable(&dev_priv->runtime_pm);
 
-	intel_register_dsm_handler();
-
 	if (i915_switcheroo_register(dev_priv))
 		drm_err(&dev_priv->drm, "Failed to register vga switcheroo!\n");
 }
@@ -675,8 +672,6 @@ static void i915_driver_unregister(struct drm_i915_private *dev_priv)
 
 	i915_switcheroo_unregister(dev_priv);
 
-	intel_unregister_dsm_handler();
-
 	intel_runtime_pm_disable(&dev_priv->runtime_pm);
 	intel_power_domains_disable(display);
 
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 06982a44f44f..ebe0e8c3d722 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -194,7 +194,6 @@ void xe_display_register(struct xe_device *xe)
 
 	intel_display_driver_register(display);
 	intel_power_domains_enable(display);
-	intel_register_dsm_handler();
 }
 
 void xe_display_unregister(struct xe_device *xe)
@@ -204,7 +203,6 @@ void xe_display_unregister(struct xe_device *xe)
 	if (!xe->info.probe_display)
 		return;
 
-	intel_unregister_dsm_handler();
 	intel_power_domains_disable(display);
 	intel_display_driver_unregister(display);
 }
-- 
2.48.1

