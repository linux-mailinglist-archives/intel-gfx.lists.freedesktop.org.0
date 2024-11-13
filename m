Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C1049C7E64
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Nov 2024 23:50:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DAFA10E75F;
	Wed, 13 Nov 2024 22:50:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TFi6gZBd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7721410E742;
 Wed, 13 Nov 2024 22:50:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731538235; x=1763074235;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=hTQbQ0ZrrTcqO93DrdxrOnJN0pVI3YRO5XHWodo+0Ks=;
 b=TFi6gZBd2fF/7nsp5y2EPrEJTtgUYpgyqYwxHaPpYH38Str3zwheeDHd
 nHsNyLfLC9nEvDmH24yBoEsrqT64ZkTYJyMzxwLe3eIFwgJd42aBWjwOo
 WvGYbCvzl6K6kRyf5zWt/fmgGdiWxMbtW61ho3/kRLnCao5/jNr9W6s2m
 pSlZVulrHHO8t009Y861BNKHTcw+9SIGmT+KOcJhVNSM7IQDfP6ei4/RP
 eTS28iVvcMTBmCXEkpE8+yTa3q5pxHJ/TBRrSKWts1wBiR+KcsVjYviEl
 vi2B1BdhkqTg7DcGDSdV1JjSl5qoB09Wttw29rRQRVe8L6mt2t1sRrCuU w==;
X-CSE-ConnectionGUID: JUcirKJmQxKl7SZMmdugNg==
X-CSE-MsgGUID: zmUTchRnQk250fJ2PlEcmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="53997865"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="53997865"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2024 14:50:35 -0800
X-CSE-ConnectionGUID: KzlgCDyhRBSr/BGi5aM4Dg==
X-CSE-MsgGUID: iH9L/6N3TX+MjcBVbKmRBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,152,1728975600"; d="scan'208";a="93071993"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 13 Nov 2024 14:50:35 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:35 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 13 Nov 2024 14:50:35 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 13 Nov 2024 14:50:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mTH7Jm5WLw023xe9jwFq985GwicrPfFEN0bmOKhNqhdiZt3WIxrIDkHrwWX/MECbkNi48zAqH7F0O6Nvh6YZt1AULLuoqriAzOy6BphR2aebAg08AWybNQqvktezM0iHiNhRMuBSvaMqL+Z+khrixFJgy+4LglEiAyfKFH+Rr7hQ4h3EHpEhXPjQYn+q/AEUStNoKDRUYeCHZs9MQwEVRx3yBkjPChknsxG9AFX/y0LQ0HdgsW7LjInbtUK2vf2yqL7+M/+IwYy4zLq508aaWxiBR7XU2XHeGFzTVCQj85eP6CCv5Owqd1ABBjB5qwlSo8I7F5QmS7xFUZ56i+NByg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jUfMoBMSmeQslTgzSQGq329SzuJ8zab15H2ZAHwDeLw=;
 b=daDfR4G0SknsGhkoMMdx6V4S9ttW2kluHEeeaQhsECikJmCpboE5MCoPwwuAUZZSQJr/aNI7xjwxsKJ2DMROa2dQp0gC+09c6Fy6Z5HDS/83HvoqB4TxMZT8qis75bgxgQ7iOYFcLmH6rkp3KTiaxIftoEDZX6nzyYQUPBsirNeXfgwSy50QXOpSwhlWkdPQhwycq4jq0bSsi0VXmwiX6uePlyrI+03sE1ZnNyf4w1+xAJlK33SwEDIenPYThazhUuMGsasqzmifu0SMSg97Ok3CEKDPwJ+TC6Txlf2PKwAvVJ81i6DcZ8bYbZ+qGYs/+YCwXk350CBPDU/ThMeFeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by CH3PR11MB8416.namprd11.prod.outlook.com (2603:10b6:610:17f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Wed, 13 Nov
 2024 22:50:31 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Wed, 13 Nov 2024
 22:50:31 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [CI 4/7] drm/{i915, xe}/display: Move DP MST calls to display_driver
Date: Wed, 13 Nov 2024 17:50:13 -0500
Message-ID: <20241113225016.208673-4-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241113225016.208673-1-rodrigo.vivi@intel.com>
References: <20241113225016.208673-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW2PR2101CA0020.namprd21.prod.outlook.com
 (2603:10b6:302:1::33) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|CH3PR11MB8416:EE_
X-MS-Office365-Filtering-Correlation-Id: cab33cc7-df6d-4daf-0bfc-08dd04359365
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?ONrTLyjBlVWUNARsI1XLfUjjE9KCTN0BrHLSduwDX3goVPI2LR7JtSR3LIUi?=
 =?us-ascii?Q?W7zH9PuKrSQfLHhFq1cXZG64qg3+vEW+PGjC3q58cN/S33jTxoXEPcnO9ag1?=
 =?us-ascii?Q?KQEvPd4sBfxBYpq8W89JrFE0mVi9rZzKLTUI23trQkY3iAmLfApcZMj7VO8R?=
 =?us-ascii?Q?5VGNCmAbY1w9/CRVFdOKBeodIAG/y5RykXCO4wa4XBGwUxcdQu5U2b6dkkUJ?=
 =?us-ascii?Q?lwPO+ir8nKEX489QHhC/UDJ36AuDecPtmAm//sTEcYFhpXdNvOVtiK74ZIUD?=
 =?us-ascii?Q?ZhYIxM1p1apn33hZB7BZrxa1TS8JWFI19qU/dBkoDu6pIDRzvck3TT6gENig?=
 =?us-ascii?Q?tR9ea6ccQI6Rwyz5SWBauQkcixxyEiKlLyErFdzo7dGnr5O7WlsQ1bLxUj0b?=
 =?us-ascii?Q?+6LGD+tvPLWqpx50JvTrOVttcbZGaV/Jcbzv4LqP28xlUUTqQTW0NlEIIgIT?=
 =?us-ascii?Q?C4CNYfWoR+Fk1sZHBIKjL7ADFKAOCJJfyFjG9zpWh7aK+YLRpn329sA7o/Uy?=
 =?us-ascii?Q?1l+T08O1vZDkbIvA9266dZfZUY0TAmGAjUHXJ2Y2S9jdBSG9zfeH3YPlcPBy?=
 =?us-ascii?Q?34Rasi8DzIxQQDI1/00HDjEd2KenR0o8vUgGj+JZxQjnFr5RszbUUd2qe8m2?=
 =?us-ascii?Q?ZOmNiM83ll05uz9macTXnO2iP8zmGJSvrH+vSAt0yhjCnnA0LgHLnvKmCgL0?=
 =?us-ascii?Q?WXdjwV7XNSSOZSnYAl6OIrgOrcYJl+l8F9bkznfelXEVlyjwvw9GGiBbiudm?=
 =?us-ascii?Q?Klkr0kUv4BDKQzKDBGu6yiMYjwcjAbx2BmDLV9kFam/0w3KIyOhPhyGArq49?=
 =?us-ascii?Q?gNnTG5lJt7/eGUqw0ZLpHpeaizQiNB/sf+pQIbXGwjrPbtjOT3TOLVFVqpcF?=
 =?us-ascii?Q?8v2ISh+mAGkhoOzBv+1EFLGMNoX8FeBrTs/8rdVSRhMcMhlgSyoJCP9Nf//Z?=
 =?us-ascii?Q?oswrqe5vbYmKHvEUAqPBn60WW9ft0D+R7VqFA6czeN+JAOYzYFSrMP9p8c3Q?=
 =?us-ascii?Q?BA/gHh02ufuekfPCt0BhE2OmXMZSomZYehVaqMzhjGCzBZmm4peVnkAjQjWc?=
 =?us-ascii?Q?83K1EJly4eXx/3qXgBPBXdxnCJcZ7JCR4476C6IxcJ1dT0DpnNoF/iABRoRk?=
 =?us-ascii?Q?j2xl3r9FfSP6zp/M/vfh9KRahHV3cJkmIMo1k+ryDcfLlsIu0CQgSLv7nc9R?=
 =?us-ascii?Q?zQ+Na2h6n53awLwipkDz1tXwFW6biSElAOcw7MfL+7s5JHA5t4oMeZt4AnGu?=
 =?us-ascii?Q?dc9HOVsffu9UAy/K2yWzDmOkhw6KCJ5uikB3P9vnttHL4Tl3ytnoclEiuxPm?=
 =?us-ascii?Q?D9P4I7+/1diP4barFy7dF7+E?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EoGTdlerbNLHnjPa5FwLg+vbcK8I+LCeqaRWlD6F5TMYNMZLT6H0julw52c3?=
 =?us-ascii?Q?8FvjPXJHpLoJdZIB7F8wVT+ssigpHu/KIFynyeK8DyI4b1v70mcOpD4W9nTR?=
 =?us-ascii?Q?4Q/gSGLG4UDSgx05E63vBshxhdQoIYPD5q3M5MwdMG7amjt/fx1sy8rPO4CI?=
 =?us-ascii?Q?5jynIMKndBkj/m7jjuV3r8tlG8JJ/tzz+tkPP9Qap1s9IenPBtK7XjotC68W?=
 =?us-ascii?Q?BC15grbEIhRFoLBgKJSQgiWvMlDWly5LjdYjnCI4PhJZxLou5UjUwzG3JbuY?=
 =?us-ascii?Q?K//fwFM71VS1J5KfXV7p6OHswaCHqc5xqH80jNk3hbNPunEzuThiBzzvEs9K?=
 =?us-ascii?Q?4+ahSlrqOvQnCBVZ5Qon3F/3Ei6TVlqU6lHU2MVFumUOjcZzI27xwSwzP+Vh?=
 =?us-ascii?Q?GXkaykKbdmvWni/m3gJJ1ShZ/BxsEOR/sRqDtXoPcgHcwL7NZVQNyZ/ETVPF?=
 =?us-ascii?Q?05g/dQfBv/O4rXAQJDlyHXaq98gYjAVkCJY87NtnDLSwEwf3V/DPsamLXMfH?=
 =?us-ascii?Q?Z3KyGFIh7jmkj6vQi6hb7K+qtAbfL9OilbN0e6heiKZAYPU85S8AZzpJD3Dl?=
 =?us-ascii?Q?n6ptGvL+2FQ8T/FlQDhI6QAasRxopj1cd+M/cmDluRHK4fXiQ6f8VHkedF76?=
 =?us-ascii?Q?I+afEzyOIkaJGyYJZcPFlx67rm4YRIf6IPYFWR9jPq+nEpHWSCMLFhOT1kKz?=
 =?us-ascii?Q?vsRnHXDer/5EiACegl/BC4Hx3skYHFhOMQRTZBUZMYGaOU9sr+nszEugQ2UR?=
 =?us-ascii?Q?AVYfQyGhBBi7BEexwn/5x+xlooLE88P0XhDMfS+9cKF4gyWDy+MEV3cozKut?=
 =?us-ascii?Q?5HokzDdGBBAghOi+5hTl9cfQZCXuq1vCF9Y5F1LRam/Fbl8+skMF7txir7yQ?=
 =?us-ascii?Q?PJ/pEDw7kugpTPjtN0PgX5YW+cHFYxi+t9p4R4UC5txA1D/zIAM2U+nz0ktY?=
 =?us-ascii?Q?wydS3fKH4x0bMSAoyiHHoPyc42Ijto/4z1VKxXnT2Pl0OE1KcuRJRATSp4tu?=
 =?us-ascii?Q?PHMr2yyaKeXfhNQV26N6wdGSEBbbaF6I6p3Ew1BiB5D3bT1RWNC3+4g6OCjE?=
 =?us-ascii?Q?IPY6BjmEg6HULWwZHPrJUCR8PZ9sjqm2sW7nYRVUDmzh8gs/2mKT9KghfT9h?=
 =?us-ascii?Q?OOOhG9PhaVzRof4t1MHT4/jn5Khy7EPCm2o4bmL5lp6Sp7FaC+Qk22IK+9fF?=
 =?us-ascii?Q?GKDLXxBCEXiKOlwmAqdeHdpVNuY/EJ49LsF4e2z+rDSmH9w8y7O4CTP6eEIJ?=
 =?us-ascii?Q?EFtqk+sDIQ0rrLSK2r/znS1WrztQw775SFZ1CkvPMDRpay0GpNudBvtBj7Xe?=
 =?us-ascii?Q?YHGhKC/0dO0/KfiBKvR4GD9oArxsbsQ2HG3wsHjZwSQMv/A1jqXQAtyRIDlz?=
 =?us-ascii?Q?XqNHzKnMGIpaRwCN3oqNvqm25C6GqoIxoQ0bvhZGNGauWcSagbOD95DoxXQY?=
 =?us-ascii?Q?0TEA9zY6mmiLuV19eVucZNLEb0JlM3Nft4rXenQkAoGNcayTzhDp/WrV+Yqt?=
 =?us-ascii?Q?0lCS4oy8q+t1N/arKoxvh/BcUGJIbTDcTt3oSRwok1y1dVGL/K/CwnJNWLLN?=
 =?us-ascii?Q?JuegFVqQ8k3dUI8w+/9ZKnICpqXaPefZ1UMsC7OVcsaMtSpVEYnvGh8ySpE5?=
 =?us-ascii?Q?NQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cab33cc7-df6d-4daf-0bfc-08dd04359365
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2024 22:50:31.1328 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hI2h+1M4JSeo/EijB4GV0SI2UYhjrkh+7VckKDkPlFGSQ+PA0qPRasEIRPCxzuHm9RD/8XEBRplJfWcpm3CmYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8416
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

Move dp_mst suspend/resume functions from the drivers towards
intel_display_driver to continue with the unification.

Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_driver.c | 6 ++++++
 drivers/gpu/drm/i915/i915_driver.c                  | 4 ----
 drivers/gpu/drm/xe/display/xe_display.c             | 7 -------
 3 files changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index 56b78cf6b854..06a60be649ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_driver.c
+++ b/drivers/gpu/drm/i915/display/intel_display_driver.c
@@ -676,6 +676,9 @@ int intel_display_driver_suspend(struct drm_i915_private *i915)
 			ret);
 	else
 		i915->display.restore.modeset_state = state;
+
+	intel_dp_mst_suspend(i915);
+
 	return ret;
 }
 
@@ -729,6 +732,9 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
 	if (!HAS_DISPLAY(i915))
 		return;
 
+	/* MST sideband requires HPD interrupts enabled */
+	intel_dp_mst_resume(i915);
+
 	i915->display.restore.modeset_state = NULL;
 	if (state)
 		state->acquire_ctx = &ctx;
diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 7ded0f4675a0..249586df9d50 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -1038,8 +1038,6 @@ static int i915_drm_suspend(struct drm_device *dev)
 
 	intel_display_driver_suspend(dev_priv);
 
-	intel_dp_mst_suspend(dev_priv);
-
 	intel_irq_suspend(dev_priv);
 	intel_hpd_cancel_work(dev_priv);
 
@@ -1207,8 +1205,6 @@ static int i915_drm_resume(struct drm_device *dev)
 
 	intel_hpd_init(dev_priv);
 
-	/* MST sideband requires HPD interrupts enabled */
-	intel_dp_mst_resume(dev_priv);
 	intel_display_driver_resume(dev_priv);
 
 	if (HAS_DISPLAY(dev_priv)) {
diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index b5502f335f53..3778a7a0e52d 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -334,9 +334,6 @@ static void __xe_display_pm_suspend(struct xe_device *xe, bool runtime)
 
 	xe_display_flush_cleanup_work(xe);
 
-	if (!runtime)
-		intel_dp_mst_suspend(xe);
-
 	intel_hpd_cancel_work(xe);
 
 	if (!runtime && has_display(xe)) {
@@ -452,10 +449,6 @@ static void __xe_display_pm_resume(struct xe_device *xe, bool runtime)
 	if (!runtime && has_display(xe))
 		intel_display_driver_resume_access(xe);
 
-	/* MST sideband requires HPD interrupts enabled */
-	if (!runtime)
-		intel_dp_mst_resume(xe);
-
 	if (!runtime && has_display(xe)) {
 		intel_display_driver_resume(xe);
 		drm_kms_helper_poll_enable(&xe->drm);
-- 
2.47.0

