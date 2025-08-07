Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 939D0B1DFA7
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 01:02:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 55FAB10E191;
	Thu,  7 Aug 2025 23:02:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kGsQ5Q+l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0611110E191
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 23:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754607723; x=1786143723;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=e4/glvCi0pqKBprSlK9qqnQAdmS7CXthveyMUYO38sc=;
 b=kGsQ5Q+lejC2fbQtE6xnJDMij7PsLqXrhqkbvedJyzflmotOA2dzgigF
 /53px7iJfK9uI8G5k8U13G6zDL6vEkSxiRPp4JQJL89ZkzTLiyhg2nrGi
 xqSj+cH1ln7d2jBIqB/6B0F19wI8+2irk3Pj4UwvHxi6NXAT+bb0Ff9Jk
 lEm4tFRHHm0IEFrm9lrlzRBX4wAQCz1MZcgtaZ/AtPmjLe/sShOMuaO2q
 17DDu5egSnned71x+8r0DqtfO1txdlmKJng+3qI/sXvZEKzwg06fCIgEe
 7IoqMSgQux+/nGqtXx0squ5nPgMrrA0zHtuDRblOk+C93dQWjeennJ3ax A==;
X-CSE-ConnectionGUID: B6D8i+oNQbCgLfJhmPJnHw==
X-CSE-MsgGUID: 2sNG1fpMQ9S0mdpVP1/7tA==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="79510235"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="79510235"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:02 -0700
X-CSE-ConnectionGUID: FAF1ZD9pRIOMOe/pj2hovQ==
X-CSE-MsgGUID: J3GNQVEiQYq7yheaaGe1wA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="164406550"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 16:02:02 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 7 Aug 2025 16:02:02 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 7 Aug 2025 16:02:02 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.68) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 7 Aug 2025 16:02:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GmzS/wHpuZ/RmIbX7hS1UlMWqqIMGhaIoxYGEX9thdiEF9RE/kxgiGauBC0qSznh7KrxZz+a36IPaPAozgWMfqZ4iSAngbJ30zDW5B4KaA7bz43YE7g0YWS5EDV6o0Cl8Kay4njvkOVWIVaYSO6fvQIBprxX+6T78fIU44E5NyAtuIKcKHXWvNFo5hqrJqe6Ul4LovFt+RNrdLaEJHr7+EsfT+/nC6A/ocu+CvLS+AwIwdTor3KijBhOPjOq8EySlV1oM7nMjDpIpwP6SGePRdmkvz/QUuv8TmU5be+mPkd4m5lFbLmPkeRcAVZlvRO05EmDhF4hSQpJcdqhO6ewLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5XDfOb0wKhMaCGWUMzoXKt1vdDgTrTn92M3b5FAo9W8=;
 b=GQu9BxcagXE9FflhuILpx92waqMvZ9tRmzYS6czlEWQFC4QfEIT2nuJNJKU3QgEb4RYS5zc7wRKKzg0Ixr3XNvNjMQbfSp8yJgkPHihkCo7Tjkbnxy58jrjXRuhJv9lLUN8osbKB/RN2sHCGvuPjGl0jmgz+6VO1ZN5Vi9rl+afX7qK+iiHCRhV5WFE+ddZO5f3XHg2/7flWUt03yx8AaP8xp24vwB+xr4pJSIidMTk23W01C4fs/hAewm0HZkD2GWG2M8Y1eIQnJIueAuH1U+YuzK8oGf0FgzfQWZf7NYrinv6j3wx1inj8VMHfXNqgWGCwLjSQ3dY2PboVv32Q9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CYYPR11MB8430.namprd11.prod.outlook.com (2603:10b6:930:c6::19)
 by DS7PR11MB6221.namprd11.prod.outlook.com (2603:10b6:8:9a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.15; Thu, 7 Aug
 2025 23:01:58 +0000
Received: from CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563]) by CYYPR11MB8430.namprd11.prod.outlook.com
 ([fe80::76d2:8036:2c6b:7563%5]) with mapi id 15.20.8989.018; Thu, 7 Aug 2025
 23:01:58 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>
Subject: [CI 3/9] drm/i915: Change mutex initialization in intel_guc_log
Date: Thu, 7 Aug 2025 19:01:47 -0400
Message-ID: <20250807230146.128362-14-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20250807230146.128362-11-rodrigo.vivi@intel.com>
References: <20250807230146.128362-11-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: BYAPR03CA0027.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::40) To CYYPR11MB8430.namprd11.prod.outlook.com
 (2603:10b6:930:c6::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CYYPR11MB8430:EE_|DS7PR11MB6221:EE_
X-MS-Office365-Filtering-Correlation-Id: e23fafb1-7932-4253-4a9f-08ddd6066980
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?JWVBMMi6zE1qQgZ+hRr0IaYEcXHid66QtDnTJbm0Cj84QxFFOj6giCDMs2ZC?=
 =?us-ascii?Q?bLGJeVCK0UR7NY5Kdo5EwVQSNZYcCwSFDL5J9Vc0PwjAeTn2fecFnl+fU0fz?=
 =?us-ascii?Q?Jd0cwh6F2V5Uv3sxGV3NyZNXNaZzh+ssQOmmKyfbHEfacm5ZvBrRSbgiApm6?=
 =?us-ascii?Q?ycve19u5pd8ljIhWDIrvRcLtON+HfcNfyAkooRIM5JdDm92dIKUASIKeR5gi?=
 =?us-ascii?Q?TLfO8o4nSVEwNOx2t5nWB3mOYCvN2EhxzKjf9U0h3q2RSVZ16fOKMN4haJ/T?=
 =?us-ascii?Q?A+hQQUxxhGvpc86onWvEWYmZoboy0IzpecwJjD9Z7ILZ5yIQKypmvMZfOJ+A?=
 =?us-ascii?Q?ZH1nB7XLSxcU+s68j81PuZ4hTEwwq9Mp3CjWDApbfUswxA4kxcaRll6GvMkL?=
 =?us-ascii?Q?H/cqhpxcUtCRLnFOMFmUVT+/XrjcDyscM1EUTgk8Hzu3DmQYwJWZ56h0emKs?=
 =?us-ascii?Q?bhZu/8OTPyzCnpjbJklK105p9p2tJm9GZpYYPhJZzJcftijxhuazm9zv9+7L?=
 =?us-ascii?Q?hJB9AZE9mgfdau3qBGOScRNgZumqOBUUlFK7N+tlhtBPIzqAu1HqmyLLdlXD?=
 =?us-ascii?Q?Xaurbmr+ld7QXzFmziPOCn8FRdxsfZHNbsOHDzfmHLVrNEbdQLiegN+/OllC?=
 =?us-ascii?Q?YsmkdmdBp1cVnhDhkD2bDnLypO0bWhrQee5vbH5NFi8S6WNweRufX8S7aCfb?=
 =?us-ascii?Q?Qj+G/iXggmGXpvkDYl4Unvdv905jPVdXlIxc4XXARt8YAVl8YSZvJUxKkNZq?=
 =?us-ascii?Q?lFcQjEAHXFhdbTfbECJzr7DttpaRkvg+jmQ39T1LJlQt2IX5Dgyp5S/iEWNk?=
 =?us-ascii?Q?hC+CsD8QunH9y5TOles3TFiN1Qwcdbg09p6CGdZwwk+svscCAs11ynHEAflJ?=
 =?us-ascii?Q?S9XPajSon5Ay8hmFVJqSbXI5iAGh+HPhW/7mQJNPsbfh3blS2Ozm7nBL16rB?=
 =?us-ascii?Q?Msaj82M06jq5EM6DSJ/DuMH4tRmNShTVmrpIKK/HOcUYJOJZOL6jbfK+YhVG?=
 =?us-ascii?Q?7+w4ACMVTQHKUXOhHpJrRDEmzZSDGUwsbinrF8sV+/qnYCFA/bjDQq4+QUt/?=
 =?us-ascii?Q?VJu8yfdPzkLR2NFNDRx4pmaMaZKlR5I3ESnTOfi1c42nGGcQpI/Sir1GsyEl?=
 =?us-ascii?Q?ldYjAZTN4h3aO00FA+blqtOb2nYzH9+9NZaYO1VB6RPFfIGFpEr1Z1Bp3lmO?=
 =?us-ascii?Q?n2SnViq865ONXfGx+x/qeg7iO+oQGTF/gvYCzsM66V1/O7kz/a84f7j0fwFO?=
 =?us-ascii?Q?9XwKd/0WO8geugXdVqToU8pYb2awU2epeTwPkNidD86MbJemSJBS9xMkz8F6?=
 =?us-ascii?Q?pIET3CM8Ych4ybpjcfnC4gfNhnrEYFZH5RBa7VFawqji1wUikiInyccbl8Gd?=
 =?us-ascii?Q?lnhHzt5s9VgGkHmwbq083HkQCVnoZ6/OPkj0UDO0pc+NOIaZsiTn9jkL3sOB?=
 =?us-ascii?Q?and7Um7pEOg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8430.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VHbuTEMoL3xRrzNZXZmFYWtvR4vZ3ZHE8ddGtS0Q659F5K8+IlUJXtZ8xJSb?=
 =?us-ascii?Q?LFVOQenwVmIzTPJwneDJShiffGFwkV/9KoD42Rel0aAxs+cEsmiuWKdGtmFA?=
 =?us-ascii?Q?kn5rx9qXtkWWpasFhhGx4CYlIAXS8t/eODZCU8gfn/6CHFqGi8rwzhfNMp5A?=
 =?us-ascii?Q?HkF9V4rjwj0qzvf/kblgWk/THDmamu3r4lJbdRC4a3g1FB8PWzM72es7fD8y?=
 =?us-ascii?Q?uRagHee/tjg/xWIt+PRO7bYhYyDXjjjL5hbjJsCS0eWD/5rIs9jc0Y7aZrIt?=
 =?us-ascii?Q?9oNPoWzFgWk0WTRXNr3W9I5NhJLPKxsELQF7n+WOGzoZ7FVJ+opIBKknrEvY?=
 =?us-ascii?Q?i6p7fd9ujsdysDFVSVcyVMkS64iFyB7N6wsglPUnhI9PxqPeBPyJq/P2eUTx?=
 =?us-ascii?Q?bcR+l5ZOqiITioKXPy0YxXttHE2XxBJ/ocFu8mcssfXQPVCq8l5X4vh/5IgU?=
 =?us-ascii?Q?L38iBkeA1BRSxGl2Q1RFukurbB631jIwIE7DO1PV1DI+BNm763gR+u3UB5eo?=
 =?us-ascii?Q?yrrCtYSBikrSAn9c+nzIOh5AJEYP519yOXCBIGpAWizbn+BtOsY7CH3u9pm4?=
 =?us-ascii?Q?SlCKcHEqXqg2aSD9ihQl9zoKaS+OdQmcbVpY0yG8ObVA63wekulXbVk+ilh7?=
 =?us-ascii?Q?K20j5eBeNt33TWNdrtnRHFyFMIGwQ84wxBTA8d7Nr1KkXL1KlDPwqJ/C9OAm?=
 =?us-ascii?Q?3oPHwjjhgwAeYoT+piL65LAkJPINfitWNJm2pyGVvO4U2wihmn3aaF7Ny8eT?=
 =?us-ascii?Q?/yclfCU47e93G5kM/F99qslu9STpnr/gB7vfeOH8M712W8w5by1KUidOy8Hv?=
 =?us-ascii?Q?l2gQtudJo9fGMvvJLsEo1+ZsKahjYcozac9O/gZqH851GVutxLoW6cA7jvhl?=
 =?us-ascii?Q?a3lRzZEbygm4OwhaU3szoXtmxE5eJE4BvNgjeJW23FOCvJfLvDWDT7t+bLbS?=
 =?us-ascii?Q?Agtvvoj0sdg0lz9lZeKOCtg7Xcrn+ItTA6FSgL+eI+34Y/qH2M0p3en2pUGe?=
 =?us-ascii?Q?vf8Ws4k6oLGXTKCLUi1S/DG4QcuII27kxFfYLq3dzxS+IfpIyyZIBuhAEYsK?=
 =?us-ascii?Q?sG3d5Tshj+f1P0T0pSWLkgsHTSNdq6XJ6WEjvoXGtx59uuad0ihM3oMxm1hA?=
 =?us-ascii?Q?YdMF/O/c+Kw3h9N+OPHsuSNcDxFeRznRQyb16i/MYQTmekNN/gP0JMZe5D1J?=
 =?us-ascii?Q?9XCLavKpP9afeDS9SzTMXRAENTFQFfF/F/eWB1xvY6O7ocsUFU8qQyXYJoXX?=
 =?us-ascii?Q?kMtZs94Shx081838jkqsDmEjpVHd1Kk9eHsyluraEpA5Cs2baWT6N9fb54uO?=
 =?us-ascii?Q?bjPTRoTXyrlSNvDhKAh9vA/8RguHQdEk8+NnfO7vqRCxJKX7Ewl0cbvzcV5a?=
 =?us-ascii?Q?O9MptOXrDb973sCXP4uYW7QwbRVSuIrYkKIOS8N7Lf0GtyWnzBR3aXP1zhXR?=
 =?us-ascii?Q?jKHH5w8wSl1wIbrXNz2cL0xKgsomVoii4FVgaT+rCdz0mw966mUVlIrL2egB?=
 =?us-ascii?Q?iVw6W/ukjnB4HUGjj/jDQr0kX3yTGqfr5uv4Mya91Iuia/4X52aH6NzDB9LZ?=
 =?us-ascii?Q?XJaz2xswjghHzXGO6jv2Z6MEZ4Rk8hoLSIk5FxAm?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e23fafb1-7932-4253-4a9f-08ddd6066980
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Aug 2025 23:01:58.7325 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4dWe55KZoJjIH4RBs25QARUyrQuO0dzncHRRzyOoSm6tYlLrEV9B77bbjO0VqRi7pKu0FMVKjMc2gLBz0Svguw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6221
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

From: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>

The intel_guc_log->relay.lock is currently initialized in
intel_guc_log_init_early(), but it lacks a corresponding destructor,
which can lead to a memory leak.

This patch replaces the use of mutex_init() with drmm_mutex_init(),
which ensures the lock is properly destroyed when the driver is
unloaded.

Signed-off-by: Luiz Otavio Mello <luiz.mello@estudante.ufscar.br>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_log.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
index 7135fdb0ebb4..469173791394 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log.c
@@ -6,6 +6,8 @@
 #include <linux/debugfs.h>
 #include <linux/string_helpers.h>
 
+#include <drm/drm_managed.h>
+
 #include "gt/intel_gt.h"
 #include "i915_drv.h"
 #include "i915_irq.h"
@@ -512,7 +514,10 @@ static void guc_log_relay_unmap(struct intel_guc_log *log)
 
 void intel_guc_log_init_early(struct intel_guc_log *log)
 {
-	mutex_init(&log->relay.lock);
+	struct intel_guc *guc = log_to_guc(log);
+	struct drm_i915_private *i915 = guc_to_i915(guc);
+
+	drmm_mutex_init(&i915->drm, &log->relay.lock);
 	INIT_WORK(&log->relay.flush_work, copy_debug_logs_work);
 	log->relay.started = false;
 }
-- 
2.50.1

