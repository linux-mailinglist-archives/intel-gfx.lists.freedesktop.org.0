Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D18CC3D6C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 16:11:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F1E0710E830;
	Tue, 16 Dec 2025 15:11:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JgLd/EHl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5C8110E82C
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 15:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765897916; x=1797433916;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=DgtJ1GAknF0zHYOBGK2g5zTO2LTxDv14v79gUqWincY=;
 b=JgLd/EHl9jJT5oES4awGlzOoqwohs0yqMzt1TybcmiOlip/XT7Lg+1l9
 zx5FWiJuzIjtrQXIFfheZGf8cEqjF/aGvcunkmwpkC6sPrm0Pe998TyxP
 3JZGXT9jYrvRHiNL8+PyWLZgoZR3zuBn2tbj8kAPvKrbiA+mswO2Qu4rs
 9dVM0rKizG7WODtJjNulDzO7Le8OpH0rNf6mmtF7caCVVDEKMCAcFVRFv
 FyqcOnBd0XMLMWP0xcI02KuCgdVu8ChP7R1AsDuZbD+GmSay1j4i8/sXr
 khxrWJHsj4iY03hVcxW554gZwhv9TGAJ78UHOr2tF4VOXs9Yrs2emUPX6 Q==;
X-CSE-ConnectionGUID: 66ALmPuDReCfI6hudF5atQ==
X-CSE-MsgGUID: gU/ih7bER8Gd4YO/LspkHA==
X-IronPort-AV: E=McAfee;i="6800,10657,11644"; a="67857545"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="67857545"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 07:11:56 -0800
X-CSE-ConnectionGUID: RjxFPBH5RaCS6UKqEd82Sw==
X-CSE-MsgGUID: kSpFWwyLRRK2PDHgsGs9PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="198028733"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 07:11:55 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 07:11:54 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 07:11:54 -0800
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.53) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 07:11:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yF0VHjBBYKJ2oLbYbQXSr2p8BAM2EulrW+/u2ME/izndindrgurjV64utzzPC2iT2yn7irQvD2Csaj+KVYZCz1pCfm9fTH/o8+Ba6bapVNnOmkit7JzzPtOWCOvKbU0MJlNa84yvxReuKaPqHGS+eqWutJajPDGi+dtm4Yf6Eqa7Qw7Esi1M4Y9aGSnhCBtBDWgorC3xIqiTpB22byIKPe76gqv9B0JatSeXvSvcxZntBct32cuU1+hSCudqGrH1rowuNnmw56mM76ROmX/yrVOK833ICikx7RiKWWShPzrh5hy9YCZvVQMrx5g3BTsgPS36zVFZGsanoA2Uu9Aizg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cjJQDgKsQdLwAq4HaHq1A8cZa7hPJshoQ/KShNLmyv0=;
 b=QdCWjFhNTGGiLdtCDiy1JVD0bW/YsgwHrHCxYO3QB3xQopbXbvy/W6QdLAwnofq9QDziM296j8npiR/FYj4HMd7EgHVBEGN2OTRo4JyRuyhD3+T6piBxFqLirXOa6F4wisbB/q7IzX6FDejbTfraUyDT3V3PiKUwU/GTWBZL77X+NnyMaek6QHLyIIyiGXUv5Gx5ILaZhkwaMwuEbafghIHjaNW7tX26dLqdEzS+b5LBrOHC90IBgCy4lEGbuRIcpOoqumrzw++G/SOts8O5jd++rxfa9ubjIs5ICXNItbMjUq+U158DumkC23RySUcEHHUm1Z2dweehpqo2uRxSwg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CH3PR11MB7939.namprd11.prod.outlook.com (2603:10b6:610:131::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.6; Tue, 16 Dec
 2025 15:11:51 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9412.005; Tue, 16 Dec 2025
 15:11:51 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>,
 <jani.nikula@linux.intel.com>, <krzysztof.niemiec@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v3] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
Date: Tue, 16 Dec 2025 16:11:45 +0100
Message-ID: <bae491e8098705a87304a7c94573b377e8c8fa37.1765897826.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.51.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::28) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CH3PR11MB7939:EE_
X-MS-Office365-Filtering-Correlation-Id: 246c6294-ac3d-4453-d1d8-08de3cb570c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Rxq4t4MRs9MxFh6vcrZw+wdXBtPmyOqAhGxnJrantVuO6y/BeYtsHTzEjL89?=
 =?us-ascii?Q?5AuOzNkV6tt6ojNRIBzU+1JNsq9jRaq+x4Go/K/2zxKA3Sz6nX8J163IEfap?=
 =?us-ascii?Q?W785IJdSNacODWTk6RoGXLkKuMS1dW/s3/MdMmlagfBqsfeerSqkstiSg/oB?=
 =?us-ascii?Q?UWJWcwenAmqUuUlkaxlD/QYWki1M01HgPT/46j/FEpL623o3m9E9oPScTiU2?=
 =?us-ascii?Q?oTXQwAphiEpR3Ml2SuXfALWuTvI5dhl4VyeJU+NzWRE8JxRkDDgJq9zdh6xE?=
 =?us-ascii?Q?mGWDy2e0Y408OmbHQCYF+LGaaofm+ncB8VgagZLdTrDR8HlUgS1o09PrMrBA?=
 =?us-ascii?Q?/0Ogjbosq4pWyuMQAEFW9Miu3OuPBg8YGfLPEeirYxV5ZWdq8U4A/H3xnGeb?=
 =?us-ascii?Q?Q8a3Ney7qY+7QLQ98NnjWsH/9CSH3zW9Vi++H/Keoixsru8REbWa/FzOxhNO?=
 =?us-ascii?Q?bJZdnLLix2K4o7cjDvHJqCxpReQYwdmynoxVbNwpJZC3RZHzlhNCTYcoXXh3?=
 =?us-ascii?Q?9vKuFoPPMeq7UTBFBJYtfW3ZCISwSQdZIFBhIBkFtMAEC/l9SN5DBb2dQgQc?=
 =?us-ascii?Q?KTJDmjJ/ckLclyEkOAtoVjW13kpTOZyPHOBP3oreCcIYtDXDY7HH/sXU+3EO?=
 =?us-ascii?Q?Lo3cHpxzpg18m+0SJiGAwYiyRMuIYbHNiQQ97Hp3CQqwgE2yRFUgOhCMbiW5?=
 =?us-ascii?Q?iZ3YAEAm6PavZNLmEFQnQ3M4/Tkk/6eQIKdgHpxlslW1InkSDtefv5c3mYcZ?=
 =?us-ascii?Q?sT5M9zpHyVo5wwhb8kOPfiUVf6Ab/A0fjeDbTCNCE7Tnt+6aHr0PBz09f5o7?=
 =?us-ascii?Q?0Srf8QtPoUPKUK5YXhx3CnX78RfrOalYYDXajTG3m60kHZbb/2/0FN1bKkSq?=
 =?us-ascii?Q?TYilzlywMtr8i7PC8nfdhHBevULwy+dpB0ZtJjTqxXLAlgrp9Wl4pAfPoMZH?=
 =?us-ascii?Q?IZA/sOBOLUJWmhy8pNTu99FFyM1bJsqA6XoB7bfU2WjYLL05EiF2JQdwbmrR?=
 =?us-ascii?Q?ENlVHmF5zRzSsmkZ711mhFqWBz5PKIqi6lJVww8JEfZw1oBIBuyXIqzv+2aC?=
 =?us-ascii?Q?UPUR4SEWkYl3MlTCe/0zymlGxlwvb0G4k7ElSOMl414GYjIgSJgmgtNdUt7D?=
 =?us-ascii?Q?bXZoLhG/dQ6FEc2KM2gLaKzrDwxfYrrmZsXbTtcWJZFcv4QGXPbZSDql2s7m?=
 =?us-ascii?Q?gc1gcx4XBdA/IgU6nyt/MpxeMF8csSpHdKmDs1HTQy33QM2CYXod16b8UTDm?=
 =?us-ascii?Q?+hL31QIAq+LQ1eTUPj/wna9jq0VSfag43BCCnoW8XLUutiqYPfFNMFiblmf7?=
 =?us-ascii?Q?p/fVHTMwnPV5alaQ+041k8S+BWVRKsKbY45d574Xei0/lYA3IBBerly5fj7W?=
 =?us-ascii?Q?PqGr61z270xhR8CBOkaMiLUdCvAAgsgcgKKe2y5yU3gLTfiW4yUI4/TEPgdF?=
 =?us-ascii?Q?m/HcBEybG7tCFbVIGi2fDgy+hoqldHjG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?dluL7VfO7rjhUErVtYK/XvPRSdqDSdSjJt7/FXX2NvDg+BGlKVDgy/0/VYPS?=
 =?us-ascii?Q?fr/uh2Pe3QYFZ4riDXTqV8L48yNXRQJ9PrLNN7dKv0hsI1ck0wFGLR7ho/u/?=
 =?us-ascii?Q?TOh8QIAST2Q79ddZkYbDWV5rCuezX+xPvzQsLN5GbjDVOx4jnxE0OrJ0oRZ1?=
 =?us-ascii?Q?WKhGUBuUtZM2EqWB0HD3KQb4hNiJBPyDNlt45I5vyy9WmGADZxhJ/oEdcfID?=
 =?us-ascii?Q?RUJJqBXmaW2d1VG9uIKLzP6uvWG0KodTdOCB6a+r/sJHBjRpQOiLS6fJMyn+?=
 =?us-ascii?Q?vt5Mgh2NCRcVp1fdfgFxMWP2X9DW56obxl5z3oBWlHw8LzRSacNdFjRnCi/h?=
 =?us-ascii?Q?g4uCGhTseuuDs+OKve/8LjCSUQizo2JxbXS03Dccws+F7t7Ku2bQIm8nZzRe?=
 =?us-ascii?Q?dPvDydpFAP86GWDDOidXu2jn7D81wB4Zjg7TNvcqvXIfwvV4z6GInFaN7VvE?=
 =?us-ascii?Q?MGU9cAbyz0S5UoRwwQ613kUvmq17DhpO6oPC/zMPpi80r9fg8YWT/t/+UfHc?=
 =?us-ascii?Q?SNOZYCQHTJMETaJ1Tg0H/06oT2uD3WIiIBISJ5PRIZDHYKCKQG99sR+lYlhp?=
 =?us-ascii?Q?KUpwybZ+Nq26yZOccXvEhg6A1fPe0/tki9xMbafzQ9pSPwX3MZZVpxtYLHYB?=
 =?us-ascii?Q?aGUXtpygCjrhyH+cXGiAtlbzik+T20TIV/rqRE0PH50SwLc10ViDeOQSlS5O?=
 =?us-ascii?Q?hq1VaEvLLhiFp+qqXiIvb+vOlF15IxBB5fEu5KjNWxYqeKGGU+VI/iwBKpOM?=
 =?us-ascii?Q?DRKrejKsWGZ1lzL5Cc00a/0CZiFSDVPKc/F72jWr2EtRpjQd+//4GCRz8dvG?=
 =?us-ascii?Q?NWaZPudbtQ0wx4ofptL5WYSjEUzWlwEiC4arNlNEmpYWeP7YlDc3NEtNS16q?=
 =?us-ascii?Q?Hqk1Qt9D1oKw2+95guXwXROBob1Q+hIIjgz6mEnvD007JEHATWmaygksCSpf?=
 =?us-ascii?Q?LJRFGeCrZKDpxAOaf+hufzaXKluD82aEV3xycrhWbE1L0YQL1OFZ7OUVeP9H?=
 =?us-ascii?Q?vnEg+gqEm7FtlKGWMsF5MzOeTuSVY0jSm0lSCWZW4XkX0840VhmrHlA5rOTx?=
 =?us-ascii?Q?7ygNYL7YdJZW4RvmDHZ2lsqhJglIXCQd7VfO6OKVpaZ5GyCHtH5VTDbgm6Jo?=
 =?us-ascii?Q?CzmXrceFsakrsrf32MiplSHJK1YiBoJ/YGDK+DUID7l5V9hg7LFp6Aoj4vFj?=
 =?us-ascii?Q?As+bq506wl5sfHHlpTcOwjUOMzCsfvNqha04VfL0B7lp/56SRqsl0FA8iOl8?=
 =?us-ascii?Q?BZKh+p/QRofpLc1NDpR932WLJJAQ7qohXEC7fdVOwQo1SWJ8N0cKtbNkq3fl?=
 =?us-ascii?Q?k4htbLTUGCdSklgmz0HX2mlmEZKgnJUQArq/TbaRCcPMaKBrqCrbYgpYpcBQ?=
 =?us-ascii?Q?PBL/yjk7AhjwNV9hmRMofvyLNZz/QpLtJ2QAxvzWjpM4/r8YOvi2q33wT9gU?=
 =?us-ascii?Q?pTRQ1fyjmP6g5QEZo++sULhlCau053LL4Fid3yhFIaPxkl8p5nmEaQz1yTmY?=
 =?us-ascii?Q?TipGIvxREgA1CIH13N6E9l/xkzWB8ovCsFt/lJVqZwFJe+bVZMTI2A1KpMtj?=
 =?us-ascii?Q?hMC6+trvhjflNnQxWCmNUsQlmu0LiwoeVrPtZSBTWDbMwj4R3XXNky7+K/Uz?=
 =?us-ascii?Q?qA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 246c6294-ac3d-4453-d1d8-08de3cb570c7
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 15:11:51.4087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fs8FBip1yVVpn0f1sqwWS9w5LjcvLiFZu9LooAucmoBb+i55RWFAiIlyZF0HPZUpyqPjWveWqeAsPyAI+6JBwUzlt9g4D12PVa1LWCMoB0Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7939
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

CONFIG_RANDSTRUCT may reorder structure fields, which makes positional
initializers unsafe. The i915 GT debugfs tables were using positional
initializers for `struct intel_gt_debugfs_file`, and on configs where
the layout differs (e.g., presence/absence of the `.eval` callback),
this can lead to fields being initialized incorrectly and trigger
randstruct warnings such as:

```
  drivers/gpu/drm/i915/gt/intel_gt_debugfs.c:75:51: note: randstruct:
  casting between randomized structure pointer types (constructor)
```

Switch all the GT debugfs file arrays to designated initializers. This
binds each value to the intended member regardless of structure
reordering or optional members and removes the warning while preserving
the intended initialization. Also drops the '&' from
intel_eval_slpc_support so .eval receives the function pointer directly.

No functional change, only initialization style is updated.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v2 -> v3:
	- Some adjustments to the line breaks
	  I kept the line break to avoid a checkpatch warning.

	- Also drops the '&' from intel_eval_slpc_support so .eval
	  receives the function pointer directly.
v1 -> v2:
	- Removed the redundant .eval = NULL initializer.
	  The field is guaranteed to be initialized to NULL anyway.
---
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c        |  4 ++--
 .../gpu/drm/i915/gt/intel_gt_engines_debugfs.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c     | 15 ++++++++-------
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c      |  4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c    | 13 +++++++------
 .../gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c    |  8 ++++----
 drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c    |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c     |  2 +-
 9 files changed, 27 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
index bd9abbd6d3d4..439076b11c04 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
@@ -75,8 +75,8 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(steering);
 static void gt_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "reset", &reset_fops, NULL },
-		{ "steering", &steering_fops },
+		{ .name = "reset", .fops = &reset_fops },
+		{ .name = "steering", .fops = &steering_fops },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
index 3aa1d014c14d..ae6c78dfe452 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
@@ -29,7 +29,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(engines);
 void intel_gt_engines_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "engines", &engines_fops },
+		{ .name = "engines", .fops = &engines_fops },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
index 96411f357f5d..c0aff4b3cbba 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c
@@ -588,13 +588,14 @@ DEFINE_SIMPLE_ATTRIBUTE(perf_limit_reasons_fops, perf_limit_reasons_get,
 void intel_gt_pm_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "drpc", &drpc_fops, NULL },
-		{ "frequency", &frequency_fops, NULL },
-		{ "forcewake", &fw_domains_fops, NULL },
-		{ "forcewake_user", &forcewake_user_fops, NULL},
-		{ "llc", &llc_fops, llc_eval },
-		{ "rps_boost", &rps_boost_fops, rps_eval },
-		{ "perf_limit_reasons", &perf_limit_reasons_fops, perf_limit_reasons_eval },
+		{ .name = "drpc", .fops = &drpc_fops },
+		{ .name = "frequency", .fops = &frequency_fops },
+		{ .name = "forcewake", .fops = &fw_domains_fops },
+		{ .name = "forcewake_user", .fops = &forcewake_user_fops},
+		{ .name = "llc", .fops = &llc_fops, .eval = llc_eval },
+		{ .name = "rps_boost", .fops = &rps_boost_fops, .eval = rps_eval },
+		{ .name = "perf_limit_reasons", .fops = &perf_limit_reasons_fops,
+		  .eval = perf_limit_reasons_eval },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index 1dc8205bc64d..54f38bc4b1b5 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -293,8 +293,8 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(sseu_topology);
 void intel_sseu_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "sseu_status", &sseu_status_fops, NULL },
-		{ "sseu_topology", &sseu_topology_fops, NULL },
+		{ .name = "sseu_status", .fops = &sseu_status_fops },
+		{ .name = "sseu_topology", .fops = &sseu_topology_fops },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
index 5baacd822a1c..0ca811e8f314 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
@@ -29,7 +29,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(gsc_info);
 void intel_gsc_uc_debugfs_register(struct intel_gsc_uc *gsc_uc, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "gsc_info", &gsc_info_fops, NULL },
+		{ .name = "gsc_info", .fops = &gsc_info_fops },
 	};
 
 	if (!intel_gsc_uc_is_supported(gsc_uc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
index 7269eb0bbedf..a30e13970298 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
@@ -132,12 +132,13 @@ DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
 void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "guc_info", &guc_info_fops, NULL },
-		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
-		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
-		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
-		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
-		   NULL },
+		{ .name = "guc_info", .fops = &guc_info_fops },
+		{ .name = "guc_registered_contexts", .fops = &guc_registered_contexts_fops },
+		{ .name = "guc_slpc_info", .fops = &guc_slpc_info_fops,
+		  .eval = intel_eval_slpc_support },
+		{ .name = "guc_sched_disable_delay_ms", .fops = &guc_sched_disable_delay_ms_fops },
+		{ .name = "guc_sched_disable_gucid_threshold",
+		  .fops = &guc_sched_disable_gucid_threshold_fops },
 	};
 
 	if (!intel_guc_is_supported(guc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
index ddfbe334689f..b4f3961a94c2 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
@@ -162,10 +162,10 @@ void intel_guc_log_debugfs_register(struct intel_guc_log *log,
 				    struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "guc_log_dump", &guc_log_dump_fops, NULL },
-		{ "guc_load_err_log_dump", &guc_load_err_log_dump_fops, NULL },
-		{ "guc_log_level", &guc_log_level_fops, NULL },
-		{ "guc_log_relay", &guc_log_relay_fops, NULL },
+		{ .name = "guc_log_dump", .fops = &guc_log_dump_fops },
+		{ .name = "guc_load_err_log_dump", .fops = &guc_load_err_log_dump_fops},
+		{ .name = "guc_log_level", .fops = &guc_log_level_fops },
+		{ .name = "guc_log_relay", .fops = &guc_log_relay_fops },
 	};
 
 	if (!intel_guc_is_supported(log_to_guc(log)))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
index 15998963b863..da67854a9432 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
@@ -26,7 +26,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(huc_info);
 void intel_huc_debugfs_register(struct intel_huc *huc, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "huc_info", &huc_info_fops, NULL },
+		{ .name = "huc_info", .fops = &huc_info_fops },
 	};
 
 	if (!intel_huc_is_supported(huc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
index 6d541c866edb..d7499fcebe1d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
@@ -40,7 +40,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(uc_usage);
 void intel_uc_debugfs_register(struct intel_uc *uc, struct dentry *gt_root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "usage", &uc_usage_fops, NULL },
+		{ .name = "usage", .fops = &uc_usage_fops },
 	};
 	struct dentry *root;
 
-- 
2.51.2

