Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D66E984C45
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 22:42:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 372DC10E74C;
	Tue, 24 Sep 2024 20:42:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Gz7CYAZK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BBCE010E746;
 Tue, 24 Sep 2024 20:42:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727210565; x=1758746565;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=TvXEG80fG3QlRBSOS0IhSC+sSR2nAA7Mr5VmQug9lxQ=;
 b=Gz7CYAZKXTiE/2n74pmpkrtNjFjtVzFDTGkXSg/neBJwzPDVLJdvJ+4A
 tHEvX4OLQ01jsSHOGQ45DhLCRViFH0evNcuaBDS2xHxbgX6jrHYe3xV/l
 oTLi4bb28V1TKEcJeUaWVdOX6nRQgImSLXD+fUyGDUfflVOyEUUZvrvoF
 OSoUR2mmLXYM7O+amC/zyybBtiQq/nuAkPcYMFV3CGMVSkB2ofOW1SVQ1
 pijYNXVri1eOGWN6XXYzQDYqedGRfplilDD1bGbSNl7+DuhJFGOkgUuP6
 xbDaZw6j+obiXPK/8SHdIObpYupGaYbC0vjE1lG35hodYXtM00jMCkMyC Q==;
X-CSE-ConnectionGUID: WUmRFhdLSWuzOoOEDMj3Mw==
X-CSE-MsgGUID: FzmqoCZQSV6NsTV87lapFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11205"; a="26099155"
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="26099155"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Sep 2024 13:42:44 -0700
X-CSE-ConnectionGUID: NSDQP5SLS3yDuKBvAjgtfA==
X-CSE-MsgGUID: I6MkZgL2QnyCC9JX03uZCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,255,1719903600"; d="scan'208";a="76469572"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Sep 2024 13:42:44 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:43 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:42 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 24 Sep 2024 13:42:42 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 24 Sep 2024 13:42:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NRoLQigovTkxwatzBx7zuzt6fj3a1FBhFqFhwzR/beTtVNFYGb/w6waxZ5z0zE9j9Yv+wF69WnXPqPrxPexRYDDkh9qFCZg8JRU6jquWBx25y5wY/QQlo6tZXCEI/wTGPwGDF/7XsqzhRWLXzc3fjE5PdQiQlqxyZtDK2Yp8xsI2IjeSxYwPVWFHPAmdRwA7x3MU/paF7q+LoLtvejC71v8ImX8aQD3pi/foOyu1cR+dEaxilX7ktO+vDvtVA9hRGHKCTkq0wDFImFiVJjUVwBbZZtiKio4VPv2Ekx/JYo2cg8b+1cYhA5cuM0c8gBhsFJn8B7OBrXTOtGb3oeynFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1RibCwNBAucMHMCupAMV7MLUjbhTkDhEpPDxxPZhGOI=;
 b=hszygLTLVFdFlCB2wEXa6XXWXw5zvl4CkCFXl1TvJLmOWVK5OPPlug2RlWdcXnqgilSdRKMkXrBNoOu/6Jd2whgVBkY1T2iwHhKq45DEGNBlKmPShgp2PxKoS4j5GPw+z06deSX+1uG9PX+yPOKrWzFtZj0027sKBMiGl+5rK6UbCi1uy5h7wArHzL7TmWoYjvsxHvTugQ198IjuSBIXt83tKxxArIyavpYZ8zcGlY2SUipE0DKW9EHz4W5XKMEBKvVOGgoxdGT0ow1YRa9DQP1Kv7ZcehLZKUG3Pq4+WtGarYdfFY2pG3VC8NaPfWDBsELcxOApQTFdONpM2//Wbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by BY1PR11MB8127.namprd11.prod.outlook.com (2603:10b6:a03:531::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7982.23; Tue, 24 Sep
 2024 20:42:40 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%5]) with mapi id 15.20.7962.022; Tue, 24 Sep 2024
 20:42:40 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <imre.deak@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Subject: [PATCH 04/31] drm/i915/display: Move shutdown sequences under display
 driver
Date: Tue, 24 Sep 2024 16:35:25 -0400
Message-ID: <20240924204222.246862-5-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240924204222.246862-1-rodrigo.vivi@intel.com>
References: <20240924204222.246862-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR03CA0249.namprd03.prod.outlook.com
 (2603:10b6:303:b4::14) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|BY1PR11MB8127:EE_
X-MS-Office365-Filtering-Correlation-Id: 4f18e452-34a0-4643-e679-08dcdcd96ebd
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?YySMEe2ufek1orNgKMZh85877lWT2VtKxU+cOZ+BSudduNWTMtY9uZZaMwtD?=
 =?us-ascii?Q?5vgwa2DVPqndRh5bfc1JO8SQ+40gzzF3enYTwvGPEdwMLoCaoGalkVy+VnQs?=
 =?us-ascii?Q?GfpxG8t+xpIEjPoGiVk43xEIYgzB1wrB/7wEb5NReJ1HIQJXg3nHywOL1Ow3?=
 =?us-ascii?Q?hDdZebpWwkBCK9FqPt2LWqvNtXyt2vWdwFNxwGbB8mtrOglQySl2HVUX+hYg?=
 =?us-ascii?Q?oZE2aC0DTm3S9qld+tBOHoL1n0d24gmtLOn/R4u/0XgD+svliOIL8/WGhVi1?=
 =?us-ascii?Q?8aAwUIzXLtKoiD1+/FTR2y5iYytFlIqO48KOiD1y5yEPqr5v6s1sxalUy2Dy?=
 =?us-ascii?Q?zCL5A22xKr029BE+P/Rr28lH3tIrb3qAHRLsJZ7c+6zyCk5AHSAUBjRihbJX?=
 =?us-ascii?Q?bMSPpl98/bo9vPTPB6CHyiYJT0SV75jIfPhM/SmXz2KKv35VtjcelXzUydHo?=
 =?us-ascii?Q?gcMJgGHrTc2ACAd8ybVz44QhGb+BPg7HsceZNXQaes1n6jvG7Z9YtPAgvi8g?=
 =?us-ascii?Q?LKLMyz6uY0FLOzCHj1d5nylKSkoKG4P9zhhAgxMUOw7Dng0XmKnT+45YOvWf?=
 =?us-ascii?Q?4abuozWd9/6VqRnPSEpyMftRGrN67O4otJ8nJDHv4Y9vS0dRWqLiqsJ+BRmb?=
 =?us-ascii?Q?ldha7NxdFWr2P9npoD+4h53xqrlmfhfqHhe36OMpB/RItknjifWjdRnQVHCN?=
 =?us-ascii?Q?m2cS8dLhB3o8jg7+DxDbv9ALLGXEXAzNP+l6dyljP25VALC7QUxoB9XMAN1E?=
 =?us-ascii?Q?H5yoJwvwtk4NxuI+yKLx7wevv0hdszKwcur5AtiQC3eUTYDLRfDbfIjTyKC0?=
 =?us-ascii?Q?bz0eLO+Ig0lZh2MdSiL+Zv6Qvd95tNskAoNOpQWe9MYHyvRG7yhTaiqpx7Gh?=
 =?us-ascii?Q?kZGpaNJK6GRZVANrUZ/4IFuRZ/+kABm6ySZiJM2AiHpMBgpLaUJp0MfrP4SV?=
 =?us-ascii?Q?gQl2lfOMHUwywvMl40yDwK2hj9KfhCa3TZUg9tphRGZjWywXYvxY6ZMqbri7?=
 =?us-ascii?Q?o/7UQx6AfJb7FFbnLulANiz51lUMENYmcILlrbqcO5iE841XoEHKdQqJkMcS?=
 =?us-ascii?Q?eyNw7XeOIfo0JYlDHA7n1mLSq8Qzu7ZWqBtb0/gu+cC5sPW7+2CyxozCfign?=
 =?us-ascii?Q?cr61gIVMRqcVzlFfKqXLZt9iVoT5HdYCrxoxf1DKKas23+bqEqIVWMgTtPbg?=
 =?us-ascii?Q?Qwg62q/DwU+HM0um6N6B9jWmG2sOXBeKssEQMl072FM1Ylp/VXSZJ+a6Uktv?=
 =?us-ascii?Q?gQf55HXOlHKTRse62zdEULcNHHcq/2pZvushuBjCiQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?v2lQz+MVRGh2c5tC6q8l4HSlJc5HHmH4PUopWkmkmzI1HQOCqWv7Lq9FFayg?=
 =?us-ascii?Q?lU/LU8Z0hIhwLNO1VFd5bDzGYiIfzlcBxUyvCui0mq9UTGNpVFO2jEzlKb0V?=
 =?us-ascii?Q?VfWohRL0hcmwohyYxL33QNGIkQPAtKPfBgVMw8xl3Gr6BPny8vJ5qYAG6V3V?=
 =?us-ascii?Q?eC53XhPviPTY98aZFWByQARiLwZhDDzjGQSzUbNz4p6+elWvW5JsXEUPyuMw?=
 =?us-ascii?Q?mbNZZ+ikDdFi1DpxzIzmYzJeeM5yRtkDrjbhSuec3zgQd9eI9S/shGWZg12+?=
 =?us-ascii?Q?c8Cm/cJg6K8WNZxZmx0nKv0GYTT6NVtkwbumPgpa52KLG++aABCpG1XWJ/Z2?=
 =?us-ascii?Q?4bcpv/eVo7ozKA02c4vpsjh8Ea7vN59M7eOGRTR4KV1rtLA2uN6C4LdqnPNa?=
 =?us-ascii?Q?hoFPpoFUj8QZEVG76Vxy9rOK0Retd5J5oYZPp40iJT2XsiA9LkYIn+AG9TPo?=
 =?us-ascii?Q?el5+lHVTnN+ZYcBJ77v+gnZA8rqQfz52hU2BV9chfJsn559fuo6QqbR7Rw62?=
 =?us-ascii?Q?UtdpTpX0wU73Ky7+U3UWoBId2IyrNJUkr9KrQzzhDSi6ySvhueLTTEoihyin?=
 =?us-ascii?Q?z5d7rkCej/BrGl7VTHRQ8E4QJbzG3StGp+wiY78ZR+NHiXLwGQ4QYdMN3hKh?=
 =?us-ascii?Q?HunBKZkhnUx+IRQ0rOTJDnk1NIL6Nb8c50vWoNr8AfRD3iLMLJbRm1HfE22y?=
 =?us-ascii?Q?ZSL6B70A1RPdhBTghlAK2s4WbsTJS36Z5JR1pvE0o+SgyhcLFWVKAbHjLfIU?=
 =?us-ascii?Q?EmiqpG2iHUw4p7zDwpnVjFhrCbTtiWJ6YPNuelXwQ/niclitj4iiDse4hDWf?=
 =?us-ascii?Q?az9bJPEU9qa7nkQZrWHikE1Ll2jUrNtzwSQg5R1DPC8T41g9FwTNnym5K6R0?=
 =?us-ascii?Q?TtgEsn0i+qETRI+FOXYvq01DciyzqXAxlRUzK7YK4hoj68E2AjA8z/LQ0rtH?=
 =?us-ascii?Q?jaP4IgEu+qxDsLeQ1L3aUz3cKDgXQcCwAuKYLiuqB/M0Te//adcV8jC1NCtj?=
 =?us-ascii?Q?OOAH7il09/Lxz3WpfTKlceNQtrFn/joyowU6aC/6s4KDexlVN9BWiLCBz1aA?=
 =?us-ascii?Q?uV1lV94nc29t6iS7TSr6hLMjTnDbN/erSJXiXDBpjCqkwnRIzL3R/Fwkrudu?=
 =?us-ascii?Q?Uf4yTibnx8ZcAHTYZIg+U8Jpk6SX+FtuQULT8BlVUumLx8mTaEFziBf1P0+V?=
 =?us-ascii?Q?1owpdMDzWvPEEHOl34WPr5NxOx8MnAQO9jqYjdecWddpouSKqrkbxBgYAguK?=
 =?us-ascii?Q?90XYvHe6s/L73RmM8XHLmReIxqPFF552QY/EWdamyrRId1KueYItr4oav4q0?=
 =?us-ascii?Q?4/qETLrGmCjj9t3gXdFxcKXZ154InTyY8DIZZWS9JljQC3Uz2+JNt8+ETg6P?=
 =?us-ascii?Q?uu7t1APp50oMBjH/sVSVqiWfNH/vKvJUKfD9PsV5J6TomL+t9RbcS2YTEd+h?=
 =?us-ascii?Q?Uby/fTKy1PnxmvQGKyZoxpJmnjoZgso2J0Jm2/WZGYRWhkWCXyeeax1U0/1d?=
 =?us-ascii?Q?XrQDVahgSiBmSGxpywEZ2cCK1xZFFcfibgafy8PuX0z5O22d/Mj2BgOnLvdJ?=
 =?us-ascii?Q?4P0Eu8dkVSkpnscSYyDFwuQ7hmFT7uc7hE966Tylm6bVkGmOxSu0n/OCRq5W?=
 =?us-ascii?Q?YA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f18e452-34a0-4643-e679-08dcdcd96ebd
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Sep 2024 20:42:40.7326 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: B2/wEFs3flHh8T8kHY7I7f3C+f6dJNi0X8q73TmY5+L8/Io6lIr/o7Kk1LstePLcstCqCGNN59v/A1hhLvp36A==
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

Move display related shutdown sequences from i915_driver to
intel_display_driver.

No functional change. Just taking the right ownership and
start some reconciliation of them between i915 and Xe.

Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 .../drm/i915/display/intel_display_driver.c   | 40 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  3 ++
 drivers/gpu/drm/i915/i915_driver.c            | 29 ++------------
 3 files changed, 47 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_driver.c b/drivers/gpu/drm/i915/display/intel_display_driver.c
index c106fb2dd20b..e40b1105168e 100644
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
@@ -755,3 +756,42 @@ void intel_display_driver_resume(struct drm_i915_private *i915)
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
index ae5906885359..38c845ad86e5 100644
--- a/drivers/gpu/drm/i915/i915_driver.c
+++ b/drivers/gpu/drm/i915/i915_driver.c
@@ -939,43 +939,22 @@ void i915_driver_shutdown(struct drm_i915_private *i915)
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
 
-	/*
-	 * The only requirement is to reboot with display DC states disabled,
-	 * for now leaving all display power wells in the INIT power domain
-	 * enabled.
-	 *
-	 * TODO:
+	/* TODO:
 	 * - unify the pci_driver::shutdown sequence here with the
 	 *   pci_driver.driver.pm.poweroff,poweroff_late sequence.
 	 * - unify the driver remove and system/runtime suspend sequences with
 	 *   the above unified shutdown/poweroff sequence.
 	 */
-	intel_power_domains_driver_remove(i915);
+
 	enable_rpm_wakeref_asserts(&i915->runtime_pm);
 
 	intel_runtime_pm_driver_last_release(&i915->runtime_pm);
-- 
2.46.0

