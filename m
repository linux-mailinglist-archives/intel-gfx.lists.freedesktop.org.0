Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EDE06984C42
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:42:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5151D10E741;
	Tue, 24 Sep 2024 20:42:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JCEynGY5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7242510E217;
 Tue, 24 Sep 2024 20:42:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210558; x=1758746558;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=spsuIZydcvj4ahqrprYkFE4JsZbL4co8qdswXnkzBLM=;
 b=JCEynGY5TFb4ZwGsrhNXnlk+cooSV3MpfnfXBH45FGyGPDsCaPQ4MsdP
 Vb9S4QkbeGJ1wz8wKZBAdyLr6YkgKLoy1dBez/TCSi3nUyPjLvFuJRggc
 w4aTaOe9BfEhw4ovofxknvaamUrCsLyGu+4RC264H2iPRP4gHpQG1qDqa
 VyoWS/EzvJFOiQaMRvWbY1HZMETbbSl0eouyEih937znS/LW3mbehAUd1
 gE82oCfFhxuPPXuM5Fr7JgauySafukmfpcSsVwVD/cSSdTh793rgHVs1K
 XlCw+5cCoFcDULk2jX3an4APKeXVeECF78LeZ9jQk+hYP18TcwMBCAFYa g==;
X-CSE-ConnectionGUID: rvF5T6hzTcmtjLRzv4Q5gQ==
X-CSE-MsgGUID: sgCslxESTC2/kOeo0kiNTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26326051"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26326051"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:42:37 -0700
X-CSE-ConnectionGUID: 6xbRhuMhQoqYJft8V7N/4A==
X-CSE-MsgGUID: v4N38MhvSGC1VhVJFM8Grw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="109001313"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:42:37 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:36 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:42:36 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=x4OxVl25z7GMmfgbqOS/1sU2G+HBOZwrTeEl2ZqaeB9DIvgRn1LFFzZ1T851eZd9hYKY291SePO1rDsh4VxHCtth3tujRyCdJSaKVpbpEy5MC7NXQpfiMHXbplcJjsmHYa3qXq/WuuSOlI8+4/203V0SBexcQh+nOhJm92/VsDA3htAUXr76SEr4xliEa8SheR7HmK0xDz4WnQxBRBlsPrgRgDQnhkAytYU1igVuDxWcCBXA0C1L6fYk/krIwTUkCBezdtDB2kbWL/1xQzhmZQAf6MY7vWTg69CrxjGDvWJK87V0w+HuNQ2fdACh9/vcyGCR3M/WpiQBslfLnGc3wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MJN1NlDrP8sxMXo/3Tn8sCfJSfMZatpwNQ4rSUTI/d4=;
 b=erXYZT5DnVjZ5PCC5JxZZhhmFUBYC6PgOvIY/6F/Jv6LtAHrG3Bz72mslHI0LiX11rwvDeDaL2s3nhy1LhEA/GIve+tgzs/3ZhPNs5xZB0eXR05lG3n8wEthQcTaSDwopU0RblIy+urkcDWV+5hAEztBtnaIqjCDogvtXp7uUP7wKm0B9r1xJ2Hu4+yzcmGYXa80u3hZNjfr0nYKsUT9i4jcn/C26KVSaOxiXf8Rz9rpQm4bp2zlLEJeAw2C6a9na9HqsSMSSm+3vY+lV1nDINDhPfAmrfpy166tG3K4jv1fOdXKqz7RgYTv6DoaP8ycx4M/xskTMlbk7LcsOxqu0A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.23; Tue, 24 Sep
 2024 20:42:33 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:32 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, Jani Nikula
 <jani.nikula@intel.com>
Subject: [PATCH 01/31] drm/i915: Remove vga and gmbus seq out of
 i915_restore_display
Date: Tue, 24 Sep 2024 16:35:22 -0400
Message-ID: <20240924204222.246862-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0169.namprd03.prod.outlook.com
 (2603:10b6:303:8d::24) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: 6809a951-bc6a-4006-88a1-08dcdcd969bd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?SlIQoHUq+Oc00Lb0llSdN4k8aPXiHxBht1taedgEJQY0rnsTERBGAbIdH7uV?=
 =?us-ascii?Q?8MsqjCDqAgZ2D+Udymq/OEBTtEFHuVf3uTdaIh3q8Ztmgwsd0w5keWBuXR+6?=
 =?us-ascii?Q?9l2VD6WJ7EZsaCJb69qjvofUt2HfZJXisxSKHE60p0XsrsdJRUwrpbURIzNQ?=
 =?us-ascii?Q?78mHhwX4MWXYJir9KZfX/lQKjkim3VPLDwEA3b53edWnymm1eKVcz2ikx5Wy?=
 =?us-ascii?Q?AnAdkkcAi2mAT+JqjPJJ9Xp7YkV9aPEsPzzHQJVIO23yjJd0awJEulo/NhcY?=
 =?us-ascii?Q?M2nGSOqGFt110ujaXcd4RvJCtf+Mxuu5agl2hiHoFtbfaOFwB0DUnK/7D7XD?=
 =?us-ascii?Q?VYLxTbxPhHYNjlswYVHRuC2etFLuod6RaIIVaja0E6431HoEW7OuqDuuuVNM?=
 =?us-ascii?Q?FjeQvVTtZkfyWBZolTfqIKMQsDUtYQhqlHYtLJNBFAmRTiGoRCwoTf5FrgoU?=
 =?us-ascii?Q?OT5Ue4wzHulbEsILo3hjPpNM5TZ7QSSUI5mIpO5Wo5IUPRV+R3oY6jhOdhpZ?=
 =?us-ascii?Q?19EfGeVhnx8EP9iTHulgMII6FJwP/2qUdq3/0EvQDi+uM4OhtJ49xeZi/aJk?=
 =?us-ascii?Q?9ey+ognXvRW/NniN2NaRfFPnRfpj4dkM+Qe4gw7pRNQI5IH88EQJTsBKsi49?=
 =?us-ascii?Q?hhQfUTQTLDn2jiR8ycov4adI9gmPAz/brZDySmni8LnNr14bhqXwUSNxqVZx?=
 =?us-ascii?Q?avgNK4w8Ksm9U5sxvT2VGO35Nw28nVJuKPLWCCUUDHLxZmQ6x3/GoKG3C9yG?=
 =?us-ascii?Q?QvYjeMYsmSWYkHoQKPiyQExc0Oh7KuBUUWgUb6oDpNS/Z+0vA/qJeekX++V4?=
 =?us-ascii?Q?wvCddSCWm0Tim7dldX+FIPPrXpDtSI84n1qB9rP0K+MobxwDu/V0zFn2rc06?=
 =?us-ascii?Q?nEU980y2QznzXBBBnOVjKRmLvH2Fuf8SRtX47eaeJdfaDPovK0nfFYa9EevD?=
 =?us-ascii?Q?6G1QqLUV4olaFym6+4ovVVcPbvFC7+Om/QQNBVT9RAZhgLn/8bDSCIKzugyq?=
 =?us-ascii?Q?pkMbWXTvOs9wUV0wDy/DuwiU0dq0d912+ckK2LvBx9ReRZT+o2CvcIRQkhEH?=
 =?us-ascii?Q?4YJO+rdDhVQxzG5vJkv70rHAiRW84AE9C5AjDIeUj2wubwntcCUWIt8EdBn0?=
 =?us-ascii?Q?WtPxBYO0Z71xHDbiO3cJb+yJh7UfpzPh2rBzUDQ9XtseaVQY+Qduv93zzbXC?=
 =?us-ascii?Q?lu0MQNHxCcpLCxEBvuQM+7WKuFStO15N0QmUVV3Tsge2pXN9QXE9HS5BDvlE?=
 =?us-ascii?Q?Fsla8snk1yH3NYUbmrCcooCQ6yWVWGi/z7mudL8vaw=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RpJuZL9H/LFOaYtWp9HOhaU2H3UUcrdVdbVOJn0O8hJVWw5tc0B1ovi6vdqQ?=
 =?us-ascii?Q?+dVCX58CWxwMRRuFOMg84YRum0APQvhidc0aoVqgtUmeWiaHx44gnRQ015/t?=
 =?us-ascii?Q?nSR2BnkmeGWs9LIVSEBVN9hG1bXjka1kICpsyPc0IZYIkWqwLdpQjvNApWMc?=
 =?us-ascii?Q?xnzJjZepn5xUwv5AtkUeVDirnzyuX1aDm3kxmjfEOt8i1reBH/s0XbyiH1rz?=
 =?us-ascii?Q?hhuR/Wa6+SiCC1r4RIkIa8ESKrEUDpsJc943qVnWRhWDghfpT/ytZUSyrKc6?=
 =?us-ascii?Q?bHa7bvAEvK6qRXpCf0D/O8PwCqFpchTALip5nRDk8saWvzfXhWhSpMI2c4Pd?=
 =?us-ascii?Q?sVAKDNdDJD+qtL8bf+qWC4VsMQHWIdm49aBwKLnPznyE9fIt3VK8/nEhegl4?=
 =?us-ascii?Q?SCS9Mtma97efLO2ZrFzqz6Qoa+f2X1BuP5CQUSWMHegAWZZ+ltJMEufxjO6y?=
 =?us-ascii?Q?T4LHrr9Xohbk4jwYH2WGxcwo4tQxJnnD3cEjRjzUXmNmP+8lSAHLSesvl2xp?=
 =?us-ascii?Q?sNgiWQMOF+Jo9oIrcLdH0L/0bYNptVb/6xfA8VaXZne5Cvv1gL/ow/o5oR54?=
 =?us-ascii?Q?f+dIABRE0/mEkGwFP3CM1vIMEnbtu27rILjor1A7HXbbjwerQsNn1GTlcLKB?=
 =?us-ascii?Q?t6BkG5bHZb/GVuOK6GC40WWTjk8Mb92ngZCLpPfy4WkF8Q/h7Gu5wL50NClN?=
 =?us-ascii?Q?WbNRjmNqb10lZ+b+f8iuLJyQsHXsBaajRRstJdgkzquaWcIHJo/QK1pC7ICu?=
 =?us-ascii?Q?Xe57BKrPU3rOkb4i7GNJf3z596k9yoWVRPuIwPiHuZn5IqrnLeJuU7Ygzyb2?=
 =?us-ascii?Q?ZfVN8EsEfl9lYddsF8nTskwCOcbsgHzZSZTvu2oWs+Aj8bvbkA6tsUUbkXul?=
 =?us-ascii?Q?kZ+rN/xchY3P2CNFnM6fdut2ejxRIbHKITunEYM3tJxwngaUtpik5qV5pmzp?=
 =?us-ascii?Q?JOnpAyPgY2tsnLG2oCW8irsbQD70UoKmIBVE06P5QgX7wy424+BSpzwIW8T9?=
 =?us-ascii?Q?hUfaoC6/XtjiMcosefhGKhR2QuI/Uckk3E/hbOKIIBl/ZOqA2fSMH5wQuCSw?=
 =?us-ascii?Q?EpvoALSFGva8mFp9kxu0q0GyrGiZnojp8OUoo5dTQcWtq/61ee104Pr7ngIG?=
 =?us-ascii?Q?+qEx54gbcjV61Mln9DN8o6PY5ZZbU1vIKzW+J5Qo2PCGd0kWXnNp5FUb7tbn?=
 =?us-ascii?Q?rn0JGbP5+Hy6/bW0wtEl58n4oiMlPgCdI0WLkkvGQlp9mdGR/EqHPQlx0h3/?=
 =?us-ascii?Q?uFA1TXppTLMtnKEv3S48kKPvW8z3hZ5kteBff2A1t9kCPjkVXkKnksi54CaC?=
 =?us-ascii?Q?FUC4Rr3KcaYkDQI7WVo6wcqD5fd710+H3bYYxQ9s4ChXTY7dKTIZqkSCrD7S?=
 =?us-ascii?Q?gGZf19IbA4KITspP4IFuhbQHa5tPNegdBvrcRZMq6VWZ6N4IQ156lquy2oIe?=
 =?us-ascii?Q?iA022gOjYtJys90MZte6ievug5CP7engit46XzHLXG7gwIIwU+Hhw4pQ6ZbS?=
 =?us-ascii?Q?8a2ptyKV7F5BTQ2mBo/Kp2Fed+F4fwxTpP8bStMeTjUR2+8VPhUd7ZpFSagw?=
 =?us-ascii?Q?NshjSVAKywmbRESyvHgT5uZa5gKAroPJgMGed4ALphGQPMPBta3XVbOoxHod?=
 =?us-ascii?Q?2Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6809a951-bc6a-4006-88a1-08dcdcd969bd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:32.4793 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: siKNULqxQONUoel+qsmw49shI3zbXJ0IreL0nEMxuvvGSK3qeeeGgNHR/q7TNnF+KKkSiX2OYr66hTua9T/0hw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8127
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

Restrict this function to only save and restore registers
functionality. Then, that can be moved out later to under
display with a proper name.

Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/i915_driver.c  | 6 ++++++
 drivers/gpu/drm/i915/i915_suspend.c | 6 ------
 2 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
index 6dc0104a3e36..c5ffcf229f42 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -60,6 +60,7 @@
 #include "display/intel_pch_refclk.h"
 #include "display/intel_pps.h"
 #include "display/intel_sprite_uapi.h"
+#include "display/intel_vga.h"
 #include "display/skl_watermark.h"
 
 #include "gem/i915_gem_context.h"
@@ -1167,6 +1168,11 @@ static int i915_drm_resume(struct drm_device *dev)
 	intel_dmc_resume(display);
 
 	i915_restore_display(dev_priv);
+
+	intel_vga_redisable(display);
+
+	intel_gmbus_reset(dev_priv);
+
 	intel_pps_unlock_regs_wa(display);
 
 	intel_init_pch_refclk(dev_priv);
diff --git a/drivers/gpu/drm/i915/i915_suspend.c b/drivers/gpu/drm/i915/i915_suspend.c
index 9d3d9b983032..fb67b05cd864 100644
--- a/drivers/gpu/drm/i915/i915_suspend.c
+++ b/drivers/gpu/drm/i915/i915_suspend.c
@@ -26,7 +26,6 @@
 
 #include "display/intel_de.h"
 #include "display/intel_gmbus.h"
-#include "display/intel_vga.h"
 
 #include "i915_drv.h"
 #include "i915_reg.h"
@@ -118,7 +117,6 @@ void i915_save_display(struct drm_i915_private *dev_priv)
 
 void i915_restore_display(struct drm_i915_private *dev_priv)
 {
-	struct intel_display *display = &dev_priv->display;
 	struct pci_dev *pdev = to_pci_dev(dev_priv->drm.dev);
 
 	if (!HAS_DISPLAY(dev_priv))
@@ -134,8 +132,4 @@ void i915_restore_display(struct drm_i915_private *dev_priv)
 	if (GRAPHICS_VER(dev_priv) <= 4)
 		intel_de_write(dev_priv, DSPARB(dev_priv),
 			       dev_priv->regfile.saveDSPARB);
-
-	intel_vga_redisable(display);
-
-	intel_gmbus_reset(dev_priv);
 }
-- 
2.46.0

