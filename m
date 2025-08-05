Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BFDB1AF5F
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Aug 2025 09:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF19F10E5FF;
	Tue,  5 Aug 2025 07:37:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O5pk8RuE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5008410E5FF;
 Tue,  5 Aug 2025 07:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754379442; x=1785915442;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=3umyNhy3nhtMBYs+8ynbFs1YabpJcKXh3psdhwLXpN0=;
 b=O5pk8RuE0PmUbTgnyUvnNlOaUHjwEy1EnxLduc0JLFCEhrToiPfJT8e5
 6pWbAVIUFaTc5vIU13ByUiTSSgnSpRCSH1NEiVM7r09kmIAQXe9hI/piK
 +uyHMJ2V1Vdj2Ove4vBbmbM+aKH4bId2RqYu3lNf552e1HJr2s1psJ/OS
 1ptDtpH5jT6CImGHmlJFjC7gFIjZgNMkB59+UnCKgeG2ddyEr9HC2FBmj
 JXO2B6OHrUdcRqHt6UPY9nq1C6Ghnb1HEVAcG4QcHFErceJFVgHuDh6lw
 QfOQrIqVkAGaLh8iwDHZzEzTeF46R1zwtXVCye51dVdxxCaHacnCXdpli w==;
X-CSE-ConnectionGUID: VhYb8AgmTdSHlz8SYBIO2A==
X-CSE-MsgGUID: 5mjAfXZZQIavWLzlHzu+hQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11512"; a="60493184"
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="60493184"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:16 -0700
X-CSE-ConnectionGUID: UQ9p3OrXSUm5QXH+JJ3OAQ==
X-CSE-MsgGUID: VSGydi5rTD6S/QXOfH8vDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,265,1747724400"; d="scan'208";a="163657845"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Aug 2025 00:37:16 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 5 Aug 2025 00:37:15 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.43)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 5 Aug 2025 00:37:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mOB98L1oBSxIs9D3gR0SkrmV0sbPJ6vADT0QLJxbRpOtcEDVeSKG5Pxi2SZYV8PS9NCa4sKHQmzs/d5y09CNgXB59HENrkNOb8Gu94pEfq6MlA/38c2ln8Ftv3yNVclBz24T31Q9plWIEMwDhQEBiHOux3MbhxNcINrh7MgFKmxLAbvcF8nVBTBr/r9Lb8NAzNYqMN+MAC2cGsgcvJZH9eIqqToLMTpenpb42YUe/NjaWYtnE0XqAezIfS5Gf76nD4QxTZYDS25QXS+OjsT9Mxe1+xI2iu0XRRPxAXzzW54GXM9NMvCU5y3nucDsdOqBKsQv1ZO6jnyeWsJj3KFgdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hE6VABOLznY4T1eoTH1p7tHjGgkI9F4pEO9Fgu5I1Lc=;
 b=uzBtFPgrKKEv8ENp5s02ZlCCN+zZqS3hj6GSefSZh1lsP9DnD1QmlJoeIC0w6N/u4n//BFS+GsGQgnU9rz0wuCnez2kSmihEFXfPnjcLcqRSksvKwKfWyKx4wLzo/kYl0tMd1wGbG+nTlGddtTb8oWJGqtWu3iyeBruEcG3ybg6jryYj5xymcqwL+MMVYL+2V9pj62QccdtgpaJJ2sla0f2xd4eMtFsRbWtbGdLLVz5+X+n28MOLFoSSHOudanpgsUcWgCgbUhUurwEwRj0ysdJuIUalFn6YcMGnj2Eo2FLLq5Lc3S7vw5iNh/7ldwHud9WAXk+B+TaWdryGrIqtTQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8161.namprd11.prod.outlook.com (2603:10b6:8:164::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.20; Tue, 5 Aug
 2025 07:37:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%5]) with mapi id 15.20.9009.013; Tue, 5 Aug 2025
 07:37:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <stable@vger.kernel.org>, Charlton Lin <charlton.lin@intel.com>, "Khaled
 Almahallawy" <khaled.almahallawy@intel.com>
Subject: [PATCH 03/19] drm/i915/lnl+/tc: Fix max lane count HW readout
Date: Tue, 5 Aug 2025 10:36:44 +0300
Message-ID: <20250805073700.642107-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250805073700.642107-1-imre.deak@intel.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DUZP191CA0024.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:4f9::21) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8161:EE_
X-MS-Office365-Filtering-Correlation-Id: a7a7e2ab-4181-40ca-0a5d-08ddd3f2e43a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?2dKGXNTNPHH6zUYse2wcJIkmUNSC9mVeC7y6qOfdgVUE5xmMq1gj6HZzyYD7?=
 =?us-ascii?Q?R0ycaTfbj8UuAiPKopNDdMBCUj0CmT94bu/nMuR86RqqyLzolpq9H11AmTJv?=
 =?us-ascii?Q?p+hih4++q8wwd5k1syARWVp0tz9u3j5GvtAHm64MI3CFFyCVUYr9999QcL/V?=
 =?us-ascii?Q?zW/T6bq5LlN2Ne00xp7knmh2RgWNCCRO7YIlyQFuto4/NMaaD6cEq0qhEoo0?=
 =?us-ascii?Q?/M9xAm0VI+IpKyZkA1Dr60/NZTO4wuRZpegtcexSvaBt5NoSzo8LMU6NwpwA?=
 =?us-ascii?Q?3wdYR2InNifnU6V0aqMl+nto2/U8Sg51Oc2pYnKkgC+RGYB8E7Mx/qkJWsQb?=
 =?us-ascii?Q?vvYMvwf3ybC94Zbl6p0jNkLlXs0OqmbhSTB+/V74yMuOK4Pzx6Rupt2X50ns?=
 =?us-ascii?Q?oVOreTTZLhwiGBNZSOPC1I1+KpXxhEUW8xL8NuKUKxbVmMZIkI+p1lUFNAK4?=
 =?us-ascii?Q?ihwPOt+33Or3peThntp3ak/2R8vGR+KdjM6h9rlo0wbN91HPbE3brjQCNIKy?=
 =?us-ascii?Q?INizK3eQvokcPsmOAhmp6hvgHqZaRz/eDmwZvvaWxXIhXyBJ0It1mN0ScWgQ?=
 =?us-ascii?Q?gJZIVtAygLGeDmsbaBCRCXhMgzMU7Me4VP8aAgvSh423IGs7VYLakPcu8SEa?=
 =?us-ascii?Q?CNwCabPkprTpH5oZ2aeIetUHWYt2LkexYLnCB4IDbHrfKriAorNzT2E9pPzH?=
 =?us-ascii?Q?ShQ21lh0FkNQC5ArGVec1Zf8nR01LYubAWrJBHyaWch2f3PJDGFiEFzZUYns?=
 =?us-ascii?Q?qGQrNWTWSXmJ1B9pa2mdpr2WjDoyEmCwNLk9cxBYRUK1ed6J735fB7tgNjQB?=
 =?us-ascii?Q?zcKEfpQ0d9eXbX20sq+Aqyy1fGw2uSjCWHWDAs2dpm2Bf44nYQEBT6b/saLP?=
 =?us-ascii?Q?7febfnZY2unPUbJXSwKnygPFwJ1197A9ygy0vIStUaJJOG77dmeNFY6Byjkg?=
 =?us-ascii?Q?U6lDiOS7s4FEoEIfK91P2e4Omm/Bt6akM60D1mCf4Ukuo5r4viYABNIjfIpC?=
 =?us-ascii?Q?tNARqv/sX/mpSy/jvNuhX03Fz3OxrSOe2Ln6Eoa8ANm3/UKBscBD8Dfht2OQ?=
 =?us-ascii?Q?ZDqGbuJQKUNCLZK3/57V9Fnj12XCNi3+MWuFzX/yBAgLlo+kOEqb7dQMEl22?=
 =?us-ascii?Q?CuEea8Aiap4CaAFdNn54KYbjEa42aRxrOB34xI/5ypAEmfh0j9LLQvmbhLbt?=
 =?us-ascii?Q?r3uzfrgaF81vIIJeOIMaSON0oJPHrBJ2LEgdgZI03ntVFSleUOOOlDvMplEr?=
 =?us-ascii?Q?8vAKvlSvNhh/daxjlvAHt1ViXBnemogxtMnSpHmRQRas3MtsrN0zk+RsM76O?=
 =?us-ascii?Q?jaa6/bzsYVsxwcpMbQVELmv6USFWBr+9MaF0gOvshrxN2sfephnuMrQtGKxd?=
 =?us-ascii?Q?kf56XVOxwFfvAznGDWJNPEtEW5TqsVi9FXKGNY45FT5pfdPGVb8DGKMFc88I?=
 =?us-ascii?Q?eKfDSf5JnUY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Q/RrTkyjUy0qRgx0yWfhYBVADd3wE2Or0Jq2LNAafzRxloLRjb31QGW62Y8J?=
 =?us-ascii?Q?rJwwLLhrdrm87PZkhzG8881gEqf6hqGLKcpzpMM0BEEYW1ZKL3rcJVhJl6ix?=
 =?us-ascii?Q?KlXkxguqu8gQZzcNdX6WHu++qzq6vI+jdL74EmzHlK2DkCYOsK83iH2xPC0F?=
 =?us-ascii?Q?tIU4QCw6AQdRqCOkCITElEzu7Kdm4e6rCAqBSKMon7/yLuyVikXYMAt+5HjC?=
 =?us-ascii?Q?ZDKkMXB86NcXABp2nhdPORoY0iEpelynN5lVDYTm07gaDl+5i09om6k6Bt4U?=
 =?us-ascii?Q?TIyOh93m1278G4ve8t7gulJplpFTj+Wp4bqz7WoBdJPfWNp/MDDSjFJ3jZuY?=
 =?us-ascii?Q?rkxQE5kIf9Zg77IGAnlYGYuHwULMjfnvHrsXeX1lnWnxqbOYbfEccUdyCA53?=
 =?us-ascii?Q?QT+AqHsMBbKJmXl3kA5stxVupGAZSXHE7oCv6zy+FiRT9YxP65sJt83l8IkL?=
 =?us-ascii?Q?OpF6tUyc9SFNqhrTRhmPa1ZmigVIiX/4N/UVrsPTdE+7TpHcpVhrK/M51jpZ?=
 =?us-ascii?Q?C9zFFe3NISfNKdmJ/4vd+f+cO1vcR6SjxPhbuTiFqAIKSkW5BlJeHTxihLod?=
 =?us-ascii?Q?vGoWTiFgxXF40DhdItInpwFvWPMI8wzMCb5zk1KQPqtvKFfZYMwirBKhAN70?=
 =?us-ascii?Q?D/sEdBts83xlq6eQSV8Ru1AoXkxjJBv7fq0JClwONYITZN5W7vHjynP/uslQ?=
 =?us-ascii?Q?MhukfLhWddldDM/8OgU2HribNyfJ8coqB/d1PVKKFyPmXzBNkFM/QphbWwt9?=
 =?us-ascii?Q?YS+dTRcTfuwdaFCqoHVmthquTLudD1KbzGscPtjsnwC6bIconEyduyNCYNDr?=
 =?us-ascii?Q?Ex0cmhJlp2iBwu6mc9gYplNj5B0vPOP1O+V3m7A1wQOCB1YZRLnJNsrfy6ZV?=
 =?us-ascii?Q?x+1keUc8I+WbBHMGy/5G+lyEnOJ44coFK0S6ylqEF9e60jWGFAJHzYMwsQ9X?=
 =?us-ascii?Q?NvEbupeOs+isrJRZvkmChS+8oNBAwCDJEGhqN0Gv58zRj3Su+cbFPSM9es47?=
 =?us-ascii?Q?ZRHnJL44NdpbWO+c193ygVd3LrY7+jOZvzN9+2qSz3sMh6kFLNv+/Y53id32?=
 =?us-ascii?Q?uaYQISqu0lm3NsTW+zWSppkuG6zbfC+nqpWIAxUQxtc8nHhTIJ9cErkBydwQ?=
 =?us-ascii?Q?7FaJWjcGtnRC4rNfvYza3FjpxfdMu0BRPCKa9cpgLpockJhQe32lfYF+zm6k?=
 =?us-ascii?Q?WN2bBgbGPa5bx5z8A5sy4mgntTqLtPCjyAfY0D0BVZTCAB4YL3vfZFLTbxbz?=
 =?us-ascii?Q?mywHLB+UcW+pSHl357C8VkOD04Ky1NQw/FsQXGHcpuUuUuD26/C3XDLcha1E?=
 =?us-ascii?Q?JOxHfqJ60rQYvChZ+19ae23rdplA+VVUyFXtImhelrX5uL2pdulTqtbPl0/X?=
 =?us-ascii?Q?0QXdvecD6SFMxIvkusyl+er9eMpZiG/5p563UgBhHFfQUhGn7O5gPm0zg6s5?=
 =?us-ascii?Q?YztXRWhcePNBPcgnWEfFBUcLxzcO0Gy2Adob7vjrAHHfNMnNycUXvh1b26Mq?=
 =?us-ascii?Q?rdBvtcBp5OteJTZWstCjoRrBIoUN3nmx8nvj1lyJREPQQHjpcImj20dP/dqP?=
 =?us-ascii?Q?RrvVOBLfm7TeevN4IIbtE8ps55HMLnhFZgE7Y0N3YQNT4KahrMlBln64XKGi?=
 =?us-ascii?Q?7DCTSyiUlRhHKweyqskbddqhYGiw04RkAK9sRRxLp/ys?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7a7e2ab-4181-40ca-0a5d-08ddd3f2e43a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Aug 2025 07:37:13.2377 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WsY16pm949h+Dn1NwRrvilJiQZRffFbnNJ2acc1fBx6yubrVxon4z6P0xuI7UPfpj7kBePw4R9j5T+aaBkTyZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8161
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

On LNL+ for a disconnected sink the pin assignment value gets cleared by
the HW/FW as soon as the sink gets disconnected, even if the PHY
ownership got acquired already by the BIOS/driver (and hence the PHY
itself is still connected and used by the display). During HW readout
this can result in detecting the PHY's max lane count as 0 - matching
the above cleared aka NONE pin assignment HW state. For a connected PHY
the driver in general (outside of intel_tc.c) expects the max lane count
value to be valid for the video mode enabled on the corresponding output
(1, 2 or 4). Ensure this by setting the max lane count to 4 in this
case. Note, that it doesn't matter if this lane count happened to be
more than the max lane count with which the PHY got connected and
enabled, since the only thing the driver can do with such an output -
where the DP-alt sink is disconnected - is to disable the output.

Cc: stable@vger.kernel.org # v6.8+
Reported-by: Charlton Lin <charlton.lin@intel.com>
Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_tc.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
index ea6c73af683a0..ea93893980e17 100644
--- a/drivers/gpu/drm/i915/display/intel_tc.c
+++ b/drivers/gpu/drm/i915/display/intel_tc.c
@@ -23,6 +23,7 @@
 #include "intel_modeset_lock.h"
 #include "intel_tc.h"
 
+#define DP_PIN_ASSIGNMENT_NONE	0x0
 #define DP_PIN_ASSIGNMENT_C	0x3
 #define DP_PIN_ASSIGNMENT_D	0x4
 #define DP_PIN_ASSIGNMENT_E	0x5
@@ -308,6 +309,8 @@ static int lnl_tc_port_get_max_lane_count(struct intel_digital_port *dig_port)
 		REG_FIELD_GET(TCSS_DDI_STATUS_PIN_ASSIGNMENT_MASK, val);
 
 	switch (pin_assignment) {
+	case DP_PIN_ASSIGNMENT_NONE:
+		return 0;
 	default:
 		MISSING_CASE(pin_assignment);
 		fallthrough;
@@ -1157,6 +1160,12 @@ static void xelpdp_tc_phy_get_hw_state(struct intel_tc_port *tc)
 		tc->lock_wakeref = tc_cold_block(tc);
 
 	read_pin_configuration(tc);
+	/*
+	 * Set a valid lane count value for a DP-alt sink which got
+	 * disconnected. The driver can only disable the output on this PHY.
+	 */
+	if (tc->max_lane_count == 0)
+		tc->max_lane_count = 4;
 
 	drm_WARN_ON(display->drm,
 		    (tc->mode == TC_PORT_DP_ALT || tc->mode == TC_PORT_LEGACY) &&
-- 
2.49.1

