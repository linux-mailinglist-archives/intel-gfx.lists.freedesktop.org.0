Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNRsEUtTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3D0761C99D
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 445C41130C4;
	Mon,  1 Jun 2026 09:39:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ky5i4oZc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE6171130C9;
 Mon,  1 Jun 2026 09:39:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306760; x=1811842760;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Dz9SzUIuzZK7yXd63qh+LBmaSxdn01I8F64cAlY/jHM=;
 b=ky5i4oZcScrHV861qysxxGF2g2qT6WIrXvBlhkugo+n4GM8EXLa/Pa8r
 gIgdAuEUdreLoj8A72eSwCnm9antN0WIhKjCrX3XuAWgyKRWruVvnuo34
 aCthkdLE4kDIP/yVuDeaPzshpmSCgfmr5zNkYw0J7A5mer4UgJKpyQlIA
 m48hcX1gLx7YFeGWz3qaOkHp5I3Rpx9J3dH+SzxCJOxqeOAjmRs2oEi03
 5YpGxFfrU5NOv8wY7eYMWir/E0jfetTPy+NKD7A9tmopC7rs8w36ibgHV
 GIIwyp/4R/ETqGonpZBPgFyhCHtTUfZVzzYQQ1z9uaisvvlAySu/f8QnH w==;
X-CSE-ConnectionGUID: TgX7ZyImQcOPrKkh5X9BVw==
X-CSE-MsgGUID: D4He4HxuTzOpKIhEv1lIBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094049"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094049"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:19 -0700
X-CSE-ConnectionGUID: 2MDBNbVrTfOf+LzLlzQ/lQ==
X-CSE-MsgGUID: 40Q7Md4uSyux1BqHTeMulQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160594"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:19 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:19 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:19 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.49) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hmZ7Ruwff2smM1BQcrJPPuxUkAoLKY2X/sCV1KPDixTtuS00QLqf3XkUv1sJn9JiL/u/mFlPuENWSNQr/KgI9CE0Xk+2ab5ZkufTPK2vknWF2XzcMGgMgHqVOLKSFt3JFigbyVmZ1TLANqFOPHozBaNbLQNqMXjIY7nb6ciT2K4L8BUM0aPYOH/ar0AQlyKNrGtS5p8IZcm8Xugk2Ta+86xBad3U/Q2UOmRnChetQyEuNpWQktEV+WwYldfIsyc/BvjhJq4pzd41vyNi05PLIoFy/mkIYs37K01ncKWKVJtgm0KBou1BU0DDHOJlneB6VOt7BI+O0OQyQQRt1g49vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1aHFEm3wDSnQJfhp711X65NNv5vOvaM1l0mAI4WyRaE=;
 b=gKWqSRdZYCx5OovipNtpny5dRyWEEK6pckxanK7CZWH/C/2ou/u21hVnF97JFFGnEZvnYCQlwHB8Sj0Hz6c2UojfB3S6ud2cbp7iUW1eMNn94L5ROCnn6cNH8AEymCrRxmv13tzc9OpwxnsAPqOQDfFGTlkJSU7GS32fRQwz3NPTn+3zy0OchliW+MQagR472+yJfR2EXN7122hVTqUQjYyrbxW3hLKat5XS2+sNwgoDNjBA+9abAJSgzEE5futs4HM+b6pc56kSUWCJ86XwmwjRonRSGVSzNDIwt+XOq/pJdQIbllm7T33FPNld3F+0N7dMHaqu0yH4zWPYtodJNg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:04 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 07/22] drm/i915/dp_link_training: Move link recovery/debug
 state to link_training
Date: Mon, 1 Jun 2026 12:38:20 +0300
Message-ID: <20260601093836.3057345-8-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: aefc23dd-fc62-4f04-61f9-08debfc19e81
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|3023799007|11063799006;
X-Microsoft-Antispam-Message-Info: Q3Np8vN9p0+oq9XWfCyffNUTKmWytPZWtC1AN2eAS0treYeKyJ32fYa5UQdraVpHWgq5kMqetnoT87kbD1DKT9Rlt7TmK/Q4n212TQdPKtFw2w54UtTBvaQkIiMIHu8qQnVBWB7GE1L58IyVUFpXdnPwCQCjJpmjfkgip8Hbu7xdB+sCXqu5Hs5Rmt8d2rL71Y2KRljoAFPkeYEL014sk5qnG+yUYRi0ORj6Nr1YBa7RE0Sf6d7hOyQpkHLs9Gz41us1aowmMLolQgL6u9pTT7Xsc3pBqt0B26raLXwlJbUGtnfgBQ+ynhGFuuCftyG+UqVUrsafRvdIuNBekdbDVM+XIhjtOASQCSpuA9YpoWyGAku5pU8ppG8A/EvRQaGDVW+LAd0gtQjx2JJQ5YpJly4v0unXNmHlnnaSv59sDnvLbEfXY1Zob/QpDqfzINFswK7dUPwDW9Y3yEqMcnJvjbEaG7dXndwi+sT27RFTekV2hawe2gFatLzi/cgA1gREXShXR1zVaLs5EB8QfpUk87aVuGhF2rIULe2rfLpvBX908Tr+lhl2jFkIWmms+44GJa/h6LrG1yj5+Z6BP6fOYlibJF8Zm6EWRXsxBXN63N+k2PYj86uhCE2kLE3UrnnwcpK9wEEI/oM2uPpanfsKhS40zWH/VR/tQDeqIYNEr4NpypygaIJlcKmGaONwXSjk
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(3023799007)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uT0EPB9OUppzx8I5nlg8u9wFT7Kg2rJaDdQCJt7VnqwoZBK6hoBt0MjvdJX8?=
 =?us-ascii?Q?zqtoNgw72s0xFllHhFx6a541sE+izQd6jGzVCNf6kAp3yNLtO+85aDs587NV?=
 =?us-ascii?Q?QZ79jBm0AKaMD6AzmjQxG4eK0/bvolsntTiJTUUATfMbSSIR92fMg5GGgN3h?=
 =?us-ascii?Q?JqEuA05RD5lxrLJTdS0LKapTqs9f8kSEWbHKK06rshXLf5tkUhFTJ6ROY+RA?=
 =?us-ascii?Q?IOPOC8T5GHI8eNceV2o9FNp+a8Un0m5Vvnm9VS/KVMf9g+k7GJl/4Bu1javO?=
 =?us-ascii?Q?epBbCz3m7weMd/PSW4GDo+2Eyha7J26p/f6+vvFkxduJ2BkE8XBzphKsjC0C?=
 =?us-ascii?Q?IgFbgcoDLqj2GvWG/398k8CNoHKnh0ORMX1vtObezp27v9rvxrrrCDuOJrWC?=
 =?us-ascii?Q?1+dMqd9v+JXNK5pdEvdSPfoboBPirJioUcC5NkEw8VsC6RxAWw6YOQJo266C?=
 =?us-ascii?Q?hPv742z45CxdBgthCywE3ME2Wv2NQIq4VXZeuhTpZvsVnqWnCCQOwDUFZ6SZ?=
 =?us-ascii?Q?Dx9vcaeXItPwDwTdmykvvV/bDosDXBI+p8j9j7QFeHP5mQtUYDm93+/JrD6S?=
 =?us-ascii?Q?n9/OIpVwLrfW0XtqmgLbhs+pJXUqWgZRA03P8qnYzMcWl9ic8goiI2QXhL9Y?=
 =?us-ascii?Q?XC4Ui2gj5LcmpM2cjvUkZStlUXju+I+/lRGZNftYuF+GCsyZ15xq15tsl6Ar?=
 =?us-ascii?Q?CRpnYxqzaHUEz0SwFePBMZfq2WFHudQ4xCk26K8JDyH/C2jn87+TeBprWCCp?=
 =?us-ascii?Q?MBQ4fPwhRmXJTtqOOlISJEWGV+9r0NoLTy3huy2udYO61phJeCoZTXJpSUiz?=
 =?us-ascii?Q?xDQ/ikTTUOmcTZRJZw5N8rAD1hmEDZggYHCVeq7+fUQJYD23cN/W235cqsSl?=
 =?us-ascii?Q?bJtOC15RutZkmrpMmLeL+c7LAuI888Gc6KMVvkZY8XqxWI/al/5YehByqtPQ?=
 =?us-ascii?Q?w08ZGfzO7JJdkO2My0Gw2X4yq6VoXuwtspWm9T79bMCeh3ttB9zg91LowT5O?=
 =?us-ascii?Q?TnSZzRqwXMj39VxZfjo4e9I6ppFIHHxbL0ZFAsHKwON6oiGH7eGqM/t9ojyy?=
 =?us-ascii?Q?Ynf7yqWA8zpXlkDqNsVSv7PddvOf9zZXzdDnw8JmGR8bEjvyTaxkgrH1Hy/r?=
 =?us-ascii?Q?QvHClK8Y1q4k85pRklrFI9Buyq8l+rUoXB5wV4cAcBrL5JV+WFA3kCSrSD3C?=
 =?us-ascii?Q?FV10RQHMyF5Dxex8Gp5ixne1c0YqfykVeNXtAZVjUGShjOZd0bLAk47hFoC/?=
 =?us-ascii?Q?0Qkp6idx134S/pASqT4RAzJ2+PsJZblceGy82iOzI2SQzoYSYnvGwcLCuT/b?=
 =?us-ascii?Q?o6YmTh9kosgQyIez9ZJsuJ/NWfKCCiBFmmVxuBiVUIdtF20Noh4Y8SI2p/fL?=
 =?us-ascii?Q?PN3lr3YBNI7pO2IEt91Uv/9psIoXfd2zxz6iJgQ1dvxYIRcE7LTy0v7tYY+B?=
 =?us-ascii?Q?u1Z2Q9MWbGCjSJlfk/S1SAZG5wqaAJaZ4LJR89M0N4dAMWDBolwihVFFzrmL?=
 =?us-ascii?Q?P7Fgw4Myrizu/Eq0sYbjWgmv17Cil1EU4d/Spw6dhJLGAtEOEx6fqtjV2HHy?=
 =?us-ascii?Q?M0SEKM1rMLp6v7PG+w6nmgYc94YLdE7lJxPZv5kPCVYeoe7c0pOx1wDzqNiU?=
 =?us-ascii?Q?8tWhpr0Kxgxt4K80sCHkkjnKi+cnhduIKnjCENkROiaft3wCWxeWK5paFXMw?=
 =?us-ascii?Q?jkjq8DEsD7trcK1G6CNIpBa4t1+gY8Gt1nqjCyu3SJPtLaLi+lo+ayg+YHgU?=
 =?us-ascii?Q?4qg3OjVE2Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: JdAs1Lqkzj3pgPS0a654dKdUfX0hjYV8kPTYMfQgmhRW9qgMdHR1KjUX7RXKnthJMf4MvqWFxDrYa2ViIn2lPIIfiOn/0AfsZt+mdg7Qrd7o9GCTU+utQAPheVmY9TmlZybBQ0Yp30kDh7i65gwvQguapWDraSIC/o2pxtz7l0nr2s5thwxaaHxNqluU/FdqzVqenN4EwOZd9o1vjGrdvmXIif1gSsbVfPuvEgWjze4jK21SWof0g3cF/FKXzcZdAsrt74bDm6avnAHBq4S14BYa7dQU2+0zghcEiKSTZx7rfa8HOEZC5FZAdiZt/DXwzyYJTjqd4omfnW3IY6ne/Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: aefc23dd-fc62-4f04-61f9-08debfc19e81
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:04.4193 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iQ4RpAqzHlPRh/wO2dJ9kBQUFNQVqNTM9IIE52Nb1i5D6/fn4tJFWDMV5Nk1UGfe+ogl+nz5MHBgdohKyiMwCA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D3D0761C99D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move all state related to link recovery and link training debugging from
struct intel_dp to struct intel_dp_link_training.

This moves towards grouping all link training and recovery state and
logic in a single place and prepares for follow-up changes in the link
recovery state handling.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  5 --
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c | 52 +++++++++----------
 3 files changed, 27 insertions(+), 32 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index b34848b6ad45b..aa4772a1c208e 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1854,11 +1854,6 @@ struct intel_dp {
 		int mst_probed_rate;
 		int force_lane_count;
 		int force_rate;
-		bool retrain_disabled;
-		/* Sequential link training failures after a passing LT */
-		int seq_train_failures;
-		int force_train_failure;
-		bool force_retrain;
 		struct intel_dp_link_training *training;
 	} link;
 	bool reset_link_params;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index b6b5586ea0845..3ebc8bdfab9d7 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5941,7 +5941,7 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 	/*
 	 * Force checking the link status for DPCD_REV < 1.2
 	 * TODO: let the link status check depend on LINK_STATUS_CHANGED
-	 * or intel_dp->link.force_retrain for DPCD_REV >= 1.2
+	 * or intel_dp->link.training.force_retrain for DPCD_REV >= 1.2
 	 */
 	esi[3] |= LINK_STATUS_CHANGED;
 	if (intel_dp_handle_link_service_irq(intel_dp, esi[3]))
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 831dec86febd1..154caecacecb2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -66,6 +66,12 @@
 
 struct intel_dp_link_training {
 	struct intel_dp *dp;
+
+	bool retrain_disabled;
+	/* Sequential link training failures after a passing LT */
+	int seq_train_failures;
+	int force_train_failure;
+	bool force_retrain;
 };
 
 static struct intel_dp_link_training *connector_to_link_training(struct intel_connector *connector)
@@ -1277,6 +1283,7 @@ intel_dp_128b132b_intra_hop(struct intel_dp *intel_dp,
 void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 			      const struct intel_crtc_state *crtc_state)
 {
+	struct intel_dp_link_training *link_training = intel_dp->link.training;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_encoder *encoder = &dp_to_dig_port(intel_dp)->base;
 	int ret;
@@ -1297,8 +1304,8 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 	intel_hpd_unblock(encoder);
 
 	if (!display->hotplug.ignore_long_hpd &&
-	    intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
-		int delay_ms = intel_dp->link.seq_train_failures ? 0 : 2000;
+	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
+		int delay_ms = link_training->seq_train_failures ? 0 : 2000;
 
 		intel_encoder_link_check_queue_work(encoder, delay_ms);
 	}
@@ -1791,6 +1798,8 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	struct intel_display *display = to_intel_display(state);
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	struct intel_encoder *encoder = &dig_port->base;
+	struct intel_dp_link_training *link_training =
+		intel_dp->link.training;
 	bool passed;
 	/*
 	 * Reinit the LTTPRs here to ensure that they are switched to
@@ -1814,15 +1823,15 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 	else
 		passed = intel_dp_link_train_all_phys(intel_dp, crtc_state, lttpr_count);
 
-	if (intel_dp->link.force_train_failure) {
-		intel_dp->link.force_train_failure--;
+	if (link_training->force_train_failure) {
+		link_training->force_train_failure--;
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
-		intel_dp->link.seq_train_failures = 0;
+		link_training->seq_train_failures = 0;
 		return;
 	}
 
-	intel_dp->link.seq_train_failures++;
+	link_training->seq_train_failures++;
 
 	/*
 	 * Ignore the link failure in CI
@@ -1841,13 +1850,13 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		return;
 	}
 
-	if (intel_dp->link.seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
+	if (link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES)
 		return;
 
 	if (intel_dp_schedule_fallback_link_training(state, intel_dp, crtc_state))
 		return;
 
-	intel_dp->link.retrain_disabled = true;
+	link_training->retrain_disabled = true;
 
 	if (!passed)
 		lt_err(intel_dp, DP_PHY_DPRX, "Can't reduce link training parameters after failure\n");
@@ -1946,17 +1955,13 @@ intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STAT
 
 bool intel_dp_link_training_get_force_retrain(struct intel_dp_link_training *link_training)
 {
-	struct intel_dp *intel_dp = link_training->dp;
-
-	return intel_dp->link.force_retrain;
+	return link_training->force_retrain;
 }
 
 static void intel_dp_link_training_set_force_retrain(struct intel_dp_link_training *link_training,
 						     bool forced)
 {
-	struct intel_dp *intel_dp = link_training->dp;
-
-	intel_dp->link.force_retrain = forced;
+	link_training->force_retrain = forced;
 }
 
 static bool
@@ -1997,10 +2002,10 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 					intel_dp->lane_count))
 		return false;
 
-	if (intel_dp->link.retrain_disabled)
+	if (link_training->retrain_disabled)
 		return false;
 
-	if (intel_dp->link.seq_train_failures)
+	if (link_training->seq_train_failures)
 		return true;
 
 	/* Retrain if link not ok */
@@ -2346,7 +2351,6 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
-	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2355,7 +2359,7 @@ static int i915_dp_force_link_training_failure_show(void *data, u64 *val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	*val = intel_dp->link.force_train_failure;
+	*val = link_training->force_train_failure;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2367,7 +2371,6 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 	struct intel_connector *connector = to_intel_connector(data);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
-	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	if (val > 2)
@@ -2379,7 +2382,7 @@ static int i915_dp_force_link_training_failure_write(void *data, u64 val)
 
 	intel_dp_flush_connector_commits(connector);
 
-	intel_dp->link.force_train_failure = val;
+	link_training->force_train_failure = val;
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2440,7 +2443,6 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 	struct intel_connector *connector = to_intel_connector(m->private);
 	struct intel_display *display = to_intel_display(connector);
 	struct intel_dp_link_training *link_training = connector_to_link_training(connector);
-	struct intel_dp *intel_dp = link_training->dp;
 	int err;
 
 	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
@@ -2449,7 +2451,7 @@ static int i915_dp_link_retrain_disabled_show(struct seq_file *m, void *data)
 
 	intel_dp_flush_connector_commits(connector);
 
-	seq_printf(m, "%s\n", str_yes_no(intel_dp->link.retrain_disabled));
+	seq_printf(m, "%s\n", str_yes_no(link_training->retrain_disabled));
 
 	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
 
@@ -2489,10 +2491,8 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 
 void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
 {
-	struct intel_dp *intel_dp = link_training->dp;
-
-	intel_dp->link.retrain_disabled = false;
-	intel_dp->link.seq_train_failures = 0;
+	link_training->retrain_disabled = false;
+	link_training->seq_train_failures = 0;
 }
 
 struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp)
-- 
2.49.1

