Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E22609CD5A3
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Nov 2024 03:53:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79BF110E386;
	Fri, 15 Nov 2024 02:53:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A0DaAw63";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD30C10E2C4;
 Fri, 15 Nov 2024 02:53:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731639211; x=1763175211;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=p0aJ4Ou2pPbPJ3eTau2Vx0Xl/HUCm7DEiIGVzAFADaY=;
 b=A0DaAw63BsyIsZbQfsRWM1c6nmBi9wEC6GSu0xKPf7WuW04UEcF/3NMP
 ejjqLGiwa/NXWRGR2LhmlbmwiWW5iT1LyjaWyLi2oaIKsxMG01n5UPKTh
 pDl6bPsp/T/m2rWNLkuSauEb5u1Wy0xL/r8q7BQ5Kbt0OI97etJJbS/Ti
 HAsTBGifYs0MU4o6Unap1sP8+8opXr20ivGENve881Mf6VMNnT6b91UQU
 n4QGkAah7jvQP3wmVq53IUbgwdh/u/5N4QVxSlJTmvdgKQoDKhl4g1tZO
 ak2jRBrHDFebO4jra1Io3NKsd1Tl4ZrDDR98JU1ULULYwnGvVVZDCjpwv Q==;
X-CSE-ConnectionGUID: uAngSsaRRdqjh32mnWbObw==
X-CSE-MsgGUID: s0V7Z7X4RUCowwzAYeU4pw==
X-IronPort-AV: E=McAfee;i="6700,10204,11256"; a="31773428"
X-IronPort-AV: E=Sophos;i="6.12,155,1728975600"; d="scan'208";a="31773428"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2024 12:23:26 -0800
X-CSE-ConnectionGUID: a2b957yhT4mr+bPQ0583/Q==
X-CSE-MsgGUID: UU+W9ze5TbKMnosr43hYjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,154,1728975600"; d="scan'208";a="89091284"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2024 12:23:27 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 14 Nov 2024 12:23:26 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 14 Nov 2024 12:23:26 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 14 Nov 2024 12:23:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=A4vv56ndTRak7kcj91sePiYonykfRiFWtCdvwKLkZCeIX0vMQlrfhEN/2us/uYiwTtLIcsP8Mzk/03uRnpGwQmLwh2EH92d0sC89LR/1fQiIn1X0r+UAyi2GUcjdbbOt69iSnbNnJHJ3lQsIommlXdGzokLnnfJDt6em5+Kdw6MxAsqAZrdnMYpg9K6yimBwbG/rXDZEHDqq1mAycxbacxJ9MKc/GqhFvAxlQU0wh3EQPSLSpqI+gkSzKqbujly5rDasw9YbDaam+c79M5eKtNKW3aXXc5nWGlJe7HV11NyY4J46GUtZOztBpLhei2BSKfQkHNwF6XahEiOV+Mq75g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pdoS6DGKb0ZW6BhOAD3b+1wvVCFXnhF5NOVlEoy+KlU=;
 b=mexarmYKqeIMUWGTX5o2PJZm4XcaMVmPU6T94hJ9N4sLbHuGomhpngENs2/DUJDCWVy/4ERYAEseftcHxbp7an0HAi22jfVnXJKP0fe6VH9+7tsL+421TvN/aXUistSoffwNShr3KBl5v5fjllZ3dha0de8C8XIZtywtjNWoTnz2jyll12mj3VRo3HELXFQQz/k2aAUum0p06s/geS5aKNt0faOrqjPoWUsRkkUi7d1e/22/pB0ABdwsfm1H6tcrYS5P9Gmi5iElc2KWy6DD/wVGU/zHQujt3jQfCYrHa1w2we07hoT4cqQpe/oTkXBJIf12PCNueQhbkawx2+g97A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2854.namprd11.prod.outlook.com (2603:10b6:a02:c9::12)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8158.17; Thu, 14 Nov
 2024 20:22:59 +0000
Received: from BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42]) by BYAPR11MB2854.namprd11.prod.outlook.com
 ([fe80::8a98:4745:7147:ed42%7]) with mapi id 15.20.8114.020; Thu, 14 Nov 2024
 20:22:59 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Maarten Lankhort
 <maarten.lankhorst@linux.intel.com>, Jonathan Cavitt
 <jonathan.cavitt@intel.com>
Subject: [PATCH 2/3] drm/xe: At shutdown disable commit helpers instead of
 flushing
Date: Thu, 14 Nov 2024 15:22:51 -0500
Message-ID: <20241114202252.239652-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241114202252.239652-1-rodrigo.vivi@intel.com>
References: <20241114202252.239652-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4PR04CA0170.namprd04.prod.outlook.com
 (2603:10b6:303:85::25) To BYAPR11MB2854.namprd11.prod.outlook.com
 (2603:10b6:a02:c9::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR11MB2854:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: 4246dcdf-30cc-4797-ba2f-08dd04ea219c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?bUuHcwjkevXD7ii0qKBuGFZbz6J+W9S/0PxIvvFQ5Nd/wwHmSBuvoBWb2sjN?=
 =?us-ascii?Q?B6upPuXUBMeKQzwx4/fOv0cGiERSPV4mw/I8187AWKrjwYRPnWemz0Je2Ynt?=
 =?us-ascii?Q?k8Mm2wNAs1lxFOi9YCV6IA6rcfgBO7RLjUerzO5sW0BWKPO1TRVu6yvQqUxH?=
 =?us-ascii?Q?PNujSIrNbJQTx2JwoEtdFln+ERYuH54Qt+1KGHhQeJ/Kaur3Iuw6v9reJ+oO?=
 =?us-ascii?Q?2dQ50iWHt1ZCOY7XxVg0yyna99roAzgJdU3YQMOZIIbfZ/6DRNH06w/Z9Cfw?=
 =?us-ascii?Q?MI1rH1Uc4EDlhq3E8lRmMJ6riTe4U0+30RZdUoRhFXmTeh66pxtHIiH5co3J?=
 =?us-ascii?Q?/rG/Xcs4xpzSGUE7kL7RzHo6iM/5ihgaYw0i4Oi2Q9ar+nU/FXkjHtbFbC0W?=
 =?us-ascii?Q?z7TILbpR3gQFz9A6F6rzeWc6ufITbtB+5rgEADpEtyg8xD6cCzj3y2JVAYkp?=
 =?us-ascii?Q?BSQlr/m0O11NwdVPLqaJjnpwCizll/XoW3XqncspNNollwFMQJNiZ0tdtOQd?=
 =?us-ascii?Q?ubGqtcDdJ4HDZ918/m/b2Iksj0sCEFM8GzuzNVc0id8d5vqi/qrzXmgCyK5S?=
 =?us-ascii?Q?uTaiTd2fwX6EW3HZXAfLfLa2oBdTdG5Z5ffXTDdr1GnKlM64EwxxqOXdG3Yv?=
 =?us-ascii?Q?j8FR647yaMCLmC4qLd+I838U0FOrWcyg7g5Yse7xIn8ByDL/T9WT8ae6D1z4?=
 =?us-ascii?Q?hvLiGrab3uQe3YdZbHEh8qHT/mnwsZSYY0Bpbq9jZ+5qgr2zhSU1gEdv1KUx?=
 =?us-ascii?Q?Dzae7pkIB6XlYjMbHriPuHk3CgYX8u2Qt+YCoyjqzh0t+T8+qSKNp8YzeDE/?=
 =?us-ascii?Q?AsfZffXBxJadg6lR6BVuxp2uHualIZHkx5RYrjEmUkGfSgGOYhTNAOdEBYCQ?=
 =?us-ascii?Q?eWu/0/vFeIxQ7HeB+glBiN7+tcGiwFwq9ca+1ZxJpqZCc7SJjNjPbQjvimvP?=
 =?us-ascii?Q?2R40wMx2i2czIETTClMG/uwN1h7wo+cWViC7aprnRaMoiqoLZpY12ZIqI2HF?=
 =?us-ascii?Q?IY50kAFBjlOCRdZ3CA9olvoo3CqhtVuLa9Ot48shrgHsHBsl3kQDU/sv4mzb?=
 =?us-ascii?Q?qptda/dgAwO9iRdq1wnvcDAZg4Eix7MjyIRTv1unKtTA+iqvTH0OkIcRU77p?=
 =?us-ascii?Q?ZlNzAgAqZVfwqBxI3ehBQqqix+Vds0pfIQkVNBqetoapb+1mOKJC8SfDU+am?=
 =?us-ascii?Q?uh6ATLwcxYTlgplQYoYsEf5pCXt5xJSPH4BlKyQt/01rvNP/KcY0oZMMhYNG?=
 =?us-ascii?Q?RYOpwMgST1k5SRajyWYrWIn6ushrVGZrnp8X/0j95bnBjbDT6DaikI9rFqvX?=
 =?us-ascii?Q?hEYzqFUu6vDnD5b1zEf2DGux?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2854.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?eqr/LCt6gy90A7AlNIe0WUoW3PixsRm/ROhAmJHr96+15JlIsrYqXfpOPiZM?=
 =?us-ascii?Q?zhMIydfmBEMpXYNCXRixn2P4ZT9tTyihiJ8p+nCqj/QQZIt+BZELeQlepHyT?=
 =?us-ascii?Q?BNn4OemXZzHeDnv58DQm9i3g9EeWEOO3XtoJ9NBuFNapylLuszZd9BZEmMBJ?=
 =?us-ascii?Q?GjSrWe8xcbiEb70H6MVfh015oBeXbqADlyMlTqK4y/Tza7vZhQykeVpP/SbA?=
 =?us-ascii?Q?wfHVVB+oIZS1ysQVM1O1D3XFgvKs2g+q09gUSCskmpxm0/qm3Wz0AvHo/63B?=
 =?us-ascii?Q?nh76LTSetnF6QTM+4LVgBcEjKTmcja/XgumZ0Hq1Xtg6hYFSyfxenpEIg6vv?=
 =?us-ascii?Q?q8RUBDzixL2N+ZLC51nyWDEgDqhZosWDEYbMxht5+6utIj1PCbQwBt0c5H3d?=
 =?us-ascii?Q?Lmsg044+2PLhtfF2usrBGAB05AuQICj+iyCLPScwvbNpAUHRJ4/5dymLv9D3?=
 =?us-ascii?Q?NpvkqXchUXfs6aK9w+fsmyD1LCTBq36mXLdX5wyZIGHulyT3kKVOKiJcTYKk?=
 =?us-ascii?Q?sUv0GHrIOwddX2WRcdFYanh4nI0nojcLPhiu6+IduHNh3tvummjUiBL7XdyK?=
 =?us-ascii?Q?rznFnP8LTXne1CcTOYmEAJRLFOqfcZ8+98dFDXtJ2jEnkF1Krv33RIX2epKr?=
 =?us-ascii?Q?oUQ4bMbhJHws+N3kVONQjExqoSfoQ3K3//+e8v+nzlZvBExzqWGl2S2hma4g?=
 =?us-ascii?Q?2UAWkCN93K2lzbHHTFn9X8c/glWpAraMRhUHV+pGCk9Usb1lv0TfNZPAXc00?=
 =?us-ascii?Q?BwQ6pjFycF6KVjvn5hoIP3yqBwNq8bNr2SX1r6Xh/oOywCwwV180V8/G3wij?=
 =?us-ascii?Q?vtvodTYDdJc2MSbH5MSMSZ8IxJAAPkUNKCyEGkkJMpf3rVKUFbQ+7B3A5g6C?=
 =?us-ascii?Q?vSDJInIl/nCHXk+FePLvFWkYKy+uWpyMM5Mi82SX/BhwUiqwQC/3P6IsPb2M?=
 =?us-ascii?Q?EIwXoADSQWXXsojo4OqvZiGyKTx1QZxicjHBPAG31625My/EiIY+6LJ9rhnf?=
 =?us-ascii?Q?HJ8/B32+8zi9l46fVS4eo9L+5i1k9YycG1xlwvmiUMYK0V5JyyozllTXlrgn?=
 =?us-ascii?Q?uEdKFsgmUvY9x3L4GR6txxY0uIAQZ8EjEtT1Fi3DkzsPIo6iQsLuUQJxk9Mu?=
 =?us-ascii?Q?e5ms3GVDP161mzJ62SkYksJ31uVUknGKx3wO+S9KRG6TpTfHnhTbczO4L6qF?=
 =?us-ascii?Q?7SEGJRCG4qAWPOg+sCnvkCmWSoXJhF3orfBnHW42Qg/SIFWV/a6te6h7L5iM?=
 =?us-ascii?Q?PIsVPqZawd7VKZ4+e5WYp3WF/te8YCdyOMQLv8TxSuwHlb6S3vtkO6lOEM7x?=
 =?us-ascii?Q?+PKujzZHblaWsw+1wXADfwGJSpBF9N8/ozEeEho1mPRfqSlALs1ZRGGVQh3y?=
 =?us-ascii?Q?Vo/09imTMZeX0NNenk0zT2Ig9HgRVfYe4NV+2VzwfuEdHlEsy88s/uS0oSis?=
 =?us-ascii?Q?7uh6TsaPZojutNIleYiVZ12pNLUUrVC9GAeWnTgN26mP1Om+iC0qS5W1x82g?=
 =?us-ascii?Q?D/OwJWlMwe9XjJ30n+fXvHXzF5Vja8ua4VGxJc34w/hFcFsIJGQWWm4s7hT5?=
 =?us-ascii?Q?Ml0IPD3LAw7WSGGwQClWCYM3iRQce+jTC86qwzp49EKP0eGEAX6OZKe64zbH?=
 =?us-ascii?Q?TA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4246dcdf-30cc-4797-ba2f-08dd04ea219c
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2854.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Nov 2024 20:22:59.3867 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DAagQnVNbvPe0fNaLF/ARbiR4AT9C4XUM0YU73rCvko3CsHR3fOthijCkmsE+5phExbEEVM9QVW6SR02KQvlUA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

This aligns with the current i915 display sequence.

Cc: Maarten Lankhort <maarten.lankhorst@linux.intel.com>
Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/xe/display/xe_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_display.c b/drivers/gpu/drm/xe/display/xe_display.c
index 69c828f38cb6..4759c3cf5915 100644
--- a/drivers/gpu/drm/xe/display/xe_display.c
+++ b/drivers/gpu/drm/xe/display/xe_display.c
@@ -10,6 +10,7 @@
 
 #include <drm/drm_drv.h>
 #include <drm/drm_managed.h>
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_probe_helper.h>
 #include <uapi/drm/xe_drm.h>
 
@@ -366,10 +367,10 @@ void xe_display_pm_shutdown(struct xe_device *xe)
 	if (has_display(xe)) {
 		drm_kms_helper_poll_disable(&xe->drm);
 		intel_display_driver_disable_user_access(xe);
-		intel_display_driver_suspend(xe);
+
+		drm_atomic_helper_shutdown(&xe->drm);
 	}
 
-	xe_display_flush_cleanup_work(xe);
 	intel_dp_mst_suspend(xe);
 	intel_hpd_cancel_work(xe);
 
-- 
2.47.0

