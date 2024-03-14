Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 785E487BE96
	for <lists+intel-gfx@lfdr.de>; Thu, 14 Mar 2024 15:11:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D245C10FB8C;
	Thu, 14 Mar 2024 14:11:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IfMEVSDN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEB0310FB88;
 Thu, 14 Mar 2024 14:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1710425458; x=1741961458;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=K2R13oBhvFi586sANLBbdzjDfkR0CqHh59TdmeLXw80=;
 b=IfMEVSDNfMiqNOyCVzESItLX+h24ua/JACjrKP8cZkJZ31czwCQ5xCCt
 gBReUXD3EEOgyHVeBmJIC4yujR07st+o743oW6B4grDPbEKN7E2uXcItm
 EpvWeBynxJ4R1WCH0uoq/k1U6ryCOpX4q0HLDzhEjEfw+EDXT9X+Xs4bb
 YhI9lvyc7wXaaVtrEM7hIxktBJlL/ulJSx2p5vdMcOfuXA/xo5pijj3om
 AUwPGik2iOk/8yegXs0kKlFWh31Ge9RyENIgwBX2CCFyRT/ZPWIw4xW1W
 cToumJOcyl+TM07HAoIyPN7vKeCVTJ/XTB8MF8FfW7Y+y9GtrnSqcmpPR A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11012"; a="5426878"
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; 
   d="scan'208";a="5426878"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2024 07:10:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,125,1708416000"; d="scan'208";a="12230074"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2024 07:10:57 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:56 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 14 Mar 2024 07:10:56 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 14 Mar 2024 07:10:56 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fP25EqSiLwW7KhaguwPWODY99S2adDsFUX6zYz+I26HPTyF5dv4CIvFh5gPlf/gwEAVE6RrBUwxQLZ/kaIP7kih2FKBwLIpSVsk4VgHUiOEo/pfAxpvWuCDAIJkyo6hHhoicvS92+Svv5jBl0XrkSw0JhGikQRryomdUvZaOw1NPXSbkU73wpe4QsXV/cVc/cBsjeG8n7W/R9OjF0r+nAynMfYuzvgxcePaFSkae2S+bNW2dlau2zE5f2VeynNRRTyxZmL+wPedgOV8iIAkbcEHbLSO5W9/YylBXRGcQx1DnNDEcLIK6AGpkWirPdlG7tuFg3ib+J5Cx3G5omGt1UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IBwl6Y1V/Oc9I2KtTfHzBu9U62kkK9/Vrg1O32oAVI8=;
 b=W9kAdedMNyB01TrU+pNjVjBVdOvvPfTvONXwAMP7ngLjuXd+De0JlLPKx45agiKN/rtfQbVZ3PuT26+32tVnkY3DiA6YkNxH9wzpMjH6oZH6qc7RK/Q0ssJaZG9mQ1bBPgQQ8PH/KdonKBki//+8IfHstV22WBezZUZ5QZssLB2EHByKCbXtL/c2yEkhZHnaHr6i5S4ojN28R1dScPhPb3XSEgROdiKDTo3nN+8yDDsFXvtegbyRuvNTpyXUKRX7U65naM1Ks2J+HKkiFsB3stSLqSPi6uEApcv86LqhqIaaGNRZ7YLtV+tzE0NqkpcpSflBM4oFi0LGZ1qeorjApQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH8PR11MB7965.namprd11.prod.outlook.com (2603:10b6:510:25c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.18; Thu, 14 Mar
 2024 14:10:54 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7607:bd60:9638:7189%4]) with mapi id 15.20.7386.017; Thu, 14 Mar 2024
 14:10:54 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <francois.dugast@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Auld <matthew.auld@intel.com>
Subject: [PATCH 08/11] drm/xe: Removing extra mem_access protection from
 runtime pm
Date: Thu, 14 Mar 2024 10:10:18 -0400
Message-ID: <20240314141021.161009-8-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240314141021.161009-1-rodrigo.vivi@intel.com>
References: <20240314141021.161009-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: SJ0PR13CA0165.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::20) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH8PR11MB7965:EE_
X-MS-Office365-Filtering-Correlation-Id: b73e5298-6327-42a1-9a4b-08dc44308fe7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: D+HjDH+rt4Q9IBy6w2ow1QeeOaDNgdRbzQ5bYRAKMO/A8NpWT5hlVqOlFxEcKr+hXDX+jPXeZVqtWiO+TlBmrCPUpc/I8imuXXQkNkZYHGE9r96LoBzP9zgSPd3QvSHXialom/2FdXzgip1bqEZtyzfoUpwXeOSxMJ5UsLat/OTj6vnV6ZfWYTjqbaJBQ0YgdE/xKwzmtnTWMapoYOITqbHAAjxyrkR282rZMx0otCFEv9XmIhPx6s4j4bCQqtUa8GvmcaMwW0LKTc3fhAKWDAmGXxMfJKb+24ASnx1YMejS82aDQblbtGrKfFUs35H+b0A6WQlwhVWOPFG9xjfWLrup6/C8as1m5/JY9RuSAwnkCcOEQkkeWQeXCtv/ZykrWPAlNBRVSbOrN7MbHI474EeWmJTi8V2AvJhtmHTMcWNUZnzC4EPt+2z4G6brBT5Ji6oAMFiDo2gKWz3pXk5SSbqnPfCU7du3If0RSWZVSgPXrjp9e6BTDN7s8oI/7niu2vv1128sPFZr4JBvOfWZYuGTSwP5wxp6U6gzk8iUHxh3z2vQ9Qs6r693qNixczPaUIwQ/Oduklr7vycrJ3c3rLWckglDc7XruT8ZdcClyTPRnZPTcZQ4HDyGWXbVXaCftscCGCLzYhwHyuumiKOTwAJDjmm+7sKnG7JmbargO/U=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/1BZD+YIH+vTAhvZh+2LkloxbVTwa+vgIbSycX+9WO/lXdjDWPFoKmyFmsHM?=
 =?us-ascii?Q?gH/RFxmrtcoziO8CdlWLReBLV4HZai5kJZOctsD/XPkSaksJ4gq+82ooUGJ8?=
 =?us-ascii?Q?5xM8pIKqIQIrcmo4RQmYqpty6SWuU94+QfDGU2UlyAslbudk6SpoXEBbvmy3?=
 =?us-ascii?Q?Cg2OnXixlRSB5Wo6i4scOCG/qwUvblqjZQlK/thasQcljWqlJIbkYLbk154t?=
 =?us-ascii?Q?ggkXzBGHEVPeeqP9rbdInxl2Aht4v91fkVbFToJPd/PBFQmWXd0T27QoYuW4?=
 =?us-ascii?Q?tLGT/968MPiwf2X9u88Xjf+zL8eLzlFE1C5THr+Vu08Bj3lAmIIuzVgMQV4s?=
 =?us-ascii?Q?5Xkdh/zYrEB8TJ6kGOllPDv/NCdiG/1X92YF9BJ/eiN2IgEiuQOmn8yNyLqq?=
 =?us-ascii?Q?DXyD3LQ5CEJ0CQGGJ3odBqHpJ7pdhhsCypXYiomZyQlHWfvWJG2/yGRmqvYJ?=
 =?us-ascii?Q?PeuN9JrHWtKls3OU3dZx4MoQkc8FfVrfm5M+mQL9+izEvaeOfBO52GkKld7D?=
 =?us-ascii?Q?akNySdlyx0AUC4eAqDR2WrEJrJxGgeUJMk/d6emcVFQOlGqbfzhQokECD3b+?=
 =?us-ascii?Q?m+Hmzv+NMEe3DwWJ7ZkI2rQo/y8+gZvXN4Ri84hj6sM2ISu8C+hMva1NEnuJ?=
 =?us-ascii?Q?SCBCmwLpgTEf34s9bAGPUrjqmLEl4rcpvaGpx/U7DEm2oiZodbhIZh3auOh2?=
 =?us-ascii?Q?0yi76pFLhp36po6+XpwxtUEcsZMBxXhva5JjwURJWhdfvmZcQ+ZknM1qUAp1?=
 =?us-ascii?Q?qJLsmBwWMhAVN1GCdHc7U9NDNWJz9rTWlESBNMrNxZ8ck2mwNbecgCkuFbP2?=
 =?us-ascii?Q?x3CQ6h5HtJw99MAwX85J8zjqpk27QnJFGY+Ru23G9cnyPBCbLwgwqNuQB+J7?=
 =?us-ascii?Q?at407JKwPxZcgHteUqSfREdIV2GiMnwcH2ulWrKJNAYm5n2aH/lsWu5iCi32?=
 =?us-ascii?Q?WAHV6xdtSjUnekHpEhlWp0xvkJtuxnp4r6UbPIMHRWQc/hciTL0O6clcfmW0?=
 =?us-ascii?Q?LxTw8s8YVIW5Gy9fiSljsw7t3Sp+CEJfRO5/u5E8qX+Ke7nEokxKOQXZyxxt?=
 =?us-ascii?Q?S70F2TGX5oodKMFkbsXDpvSbp+POm9caDBidZECUnRVp4h4bviKHdyz560Ls?=
 =?us-ascii?Q?I7p1D8rjBYZnaDJrWzTZaAuseV+lJiwoHfE1Aykrm7bJkZVfGjFaKrouyI++?=
 =?us-ascii?Q?La4rVjVw2EidCrcMF8VPDjJklGeuEYolRgJ/ulVrt6vcFKAqCB45Wm4H6rO2?=
 =?us-ascii?Q?2hJD/RM7lOZBXQsDWNtUDeYJC+xjTJJkfEI0ANWRiXP6XzuCySxQmBuExFiy?=
 =?us-ascii?Q?tIjzcK5G5C6o9T1XWfQIkyOyjVAsikNkws+QUNuB9I4suOX1aLpIxQqNip31?=
 =?us-ascii?Q?A5Hpijlmnm63bfPEb0DPAhiXpWtVPISILRKFtblRpR7lE247XfUKKf8z80UX?=
 =?us-ascii?Q?kzEwPBYn7mFYBOevGxzNpLAqD5o82xEQltW3QysXcYfV+EYtFQ2LUi/mePrh?=
 =?us-ascii?Q?bCItFlws7hWmrSXLahh8AtNZC2KclYfXSCWaeAaRDRCPAmbwojMaa5rbMNdu?=
 =?us-ascii?Q?nMG8u87zKwdrWgJKugtOuykBGaB/fBfKQTOustzDQjqAWJsXrbegtax5GJbX?=
 =?us-ascii?Q?Yw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b73e5298-6327-42a1-9a4b-08dc44308fe7
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2024 14:10:54.5101 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yyaTRzUsjCysBE6MrSQcvf8T7WSTH2GdQBcnu8b78ppacHBtenFNS41oSg2+aPTJbHoViaXdbsRpPO5I4oWYEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7965
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

This is not needed any longer, now that we have all the protection
in place with the runtime pm itself.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
---
 drivers/gpu/drm/xe/xe_device.c | 8 --------
 drivers/gpu/drm/xe/xe_device.h | 1 -
 drivers/gpu/drm/xe/xe_pm.c     | 3 ---
 3 files changed, 12 deletions(-)

diff --git a/drivers/gpu/drm/xe/xe_device.c b/drivers/gpu/drm/xe/xe_device.c
index 82f686595b16..4754da58c112 100644
--- a/drivers/gpu/drm/xe/xe_device.c
+++ b/drivers/gpu/drm/xe/xe_device.c
@@ -639,14 +639,6 @@ u32 xe_device_ccs_bytes(struct xe_device *xe, u64 size)
 		DIV_ROUND_UP_ULL(size, NUM_BYTES_PER_CCS_BYTE(xe)) : 0;
 }
 
-bool xe_device_mem_access_ongoing(struct xe_device *xe)
-{
-	if (xe_pm_read_callback_task(xe) != NULL)
-		return true;
-
-	return atomic_read(&xe->mem_access.ref);
-}
-
 /**
  * xe_device_assert_mem_access - Inspect the current runtime_pm state.
  * @xe: xe device instance
diff --git a/drivers/gpu/drm/xe/xe_device.h b/drivers/gpu/drm/xe/xe_device.h
index 2653f53bee4e..2327b6c0ae6a 100644
--- a/drivers/gpu/drm/xe/xe_device.h
+++ b/drivers/gpu/drm/xe/xe_device.h
@@ -138,7 +138,6 @@ bool xe_device_mem_access_get_if_ongoing(struct xe_device *xe);
 void xe_device_mem_access_put(struct xe_device *xe);
 
 void xe_device_assert_mem_access(struct xe_device *xe);
-bool xe_device_mem_access_ongoing(struct xe_device *xe);
 
 static inline bool xe_device_in_fault_mode(struct xe_device *xe)
 {
diff --git a/drivers/gpu/drm/xe/xe_pm.c b/drivers/gpu/drm/xe/xe_pm.c
index 9d87a68ba6eb..92e159a8d52e 100644
--- a/drivers/gpu/drm/xe/xe_pm.c
+++ b/drivers/gpu/drm/xe/xe_pm.c
@@ -296,9 +296,6 @@ int xe_pm_runtime_suspend(struct xe_device *xe)
 	u8 id;
 	int err = 0;
 
-	if (xe->d3cold.allowed && xe_device_mem_access_ongoing(xe))
-		return -EBUSY;
-
 	/* Disable access_ongoing asserts and prevent recursive pm calls */
 	xe_pm_write_callback_task(xe, current);
 
-- 
2.44.0

