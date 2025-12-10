Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3C96CB335F
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Dec 2025 15:51:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C484C10E6E2;
	Wed, 10 Dec 2025 14:51:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RS90dVAC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E59FA10E6E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Dec 2025 14:51:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765378297; x=1796914297;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=cHExPIlxMRQbVBC5qG8hnyAluipeMJIlLzX4Nz76ync=;
 b=RS90dVACvhhccOjkW2Ny4oLP/D+0ATOwEGMMb7kRDj3fqdeoh1lhRsS2
 HSEVunj5DoecE0rVaJm0Bs/kXrtP2op0x5P9auplsxMCBQWx7MX+9udTS
 h0hPS7IH7BWtBsAUnrLUQ3QdoJNQjN5u8e7RSwiseDbLDdd7inw5Y2iKO
 VUQ5ViLOdLKX5sZgs78ce7ty2tWwvYalTciG6zbdDKo8r2pQQS6FgwT1u
 C8FwUfyi9phZ2256QMm8E9JEaES1jyqxluDvA9E28GUj4n2LbnLL31Djk
 CIxzo1qsbN+SU7qi+a/sZUiNCn3LWoNmvCZ1Cp064Vv3v+JJIfsHXaspx A==;
X-CSE-ConnectionGUID: NPipEzflT662a7KWyLtAmQ==
X-CSE-MsgGUID: KYTpPTtJTeG9SDCyjwHrpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11638"; a="69936721"
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="69936721"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 06:51:36 -0800
X-CSE-ConnectionGUID: +OzT2kh2ToOdIMSWKkfTDQ==
X-CSE-MsgGUID: DHEpPz9eR4i3CInsA+ELcQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,264,1758610800"; d="scan'208";a="196599398"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2025 06:51:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 06:51:35 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 10 Dec 2025 06:51:35 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.44) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 10 Dec 2025 06:51:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a65fjSbdZZ1VFdSJFFMdaFDlTb19OtptY6bYeruOrUB5l939dESj9tNTY4ySpByMoO2kLv81Fzb34PIvizBZAWXBVSKff4ZphwPQDlhf6PQRy+WUeWjFH6XVpatB1cMLzu3uwPm9ljBx8pxgOnlXKRrcEa17WdVmcZ7Wagac+tnVqq3Xa2TLWZP5QqrK1NZBF320MxV7BZQjmrXagolKLMnJO1Z9ZpR7KWF+rLHdlrJEC5LUqzQFHPBYWAQY7Fb18vp28VNvSzMS+nZXQPl9PqSyofEr9MaDoHu52CmZOR1c7iVFVL0NJ949o/bpzL85/7e2Fy+iEHCTM4Ujztjz6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PoY/Cx5tWI2ojGjc5wXED1VeZqS0Lhy23TfnBpMK5Uk=;
 b=JRudqRX3omeDRhsPnmlIra6SGrVNuWND3EUNb9Mb5dcmBYOSouYaFAEQw9ugb3xVEA03jNfUzJeaFeSQqyb9M1dOqpie5BuNAx26fXOyO3es3GLyh48HsAjSP/x/5/4wgJYwVOAo20jTDkfUBRTeNcJoXvmH57zVE9yuVy4AmxhSILiyeJ9eGGkT+OW+U3B/nbCskZ+Zqf/T8cApzZGHiGkfCAAr2VITTx920VMq4Fw0nvPtcC4y9rl3dUYCpvEXnqj0NHIV4tbqxTD7ZZjlSxiL3HivISQjG8fyq1cqC+DOChICz5chgqAw2Ln9d1eq1Str+UXzzV2Z0Jv8n9slAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by CY8PR11MB7948.namprd11.prod.outlook.com (2603:10b6:930:7f::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.9; Wed, 10 Dec
 2025 14:51:33 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9343.011; Wed, 10 Dec 2025
 14:51:32 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>,
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
Date: Wed, 10 Dec 2025 15:51:08 +0100
Message-ID: <11fc31f6068cd0bb8b02ebe01d8a17914866e853.1765377880.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.51.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0003.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::7) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|CY8PR11MB7948:EE_
X-MS-Office365-Filtering-Correlation-Id: 2bd6f916-d115-4562-2154-08de37fb9c02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?sPqoHF9vwpzDwBOVNNgBzrgtHtjavoJf2VONmm1bHkv+GC6LE7zjEqw8aFFW?=
 =?us-ascii?Q?YKmliwCivESHLwqmFLpI6EL8Cm7jATpj6JuU2y/FR34J1HbSBZy/j9MH1tTE?=
 =?us-ascii?Q?v+siH2Gh5PFGNXb0k+rpykhaKfh8ZF6aI3Y4iTOzEIrSq9Kku0blYsS0Zvjw?=
 =?us-ascii?Q?LjPuE/ouO9m8ZWP8WNzmYjwiwXtmpz2n4Degp21fCHAWuue1g1xE9Ihjly6y?=
 =?us-ascii?Q?6+pGrqAC/uEPiI1ohrsPn7C/jHNK1Ao3/DJF/pQcQOnC4mnVj0UGczHxwcSP?=
 =?us-ascii?Q?og6luCql0v/GoIFuDmenGeYytTKUdutv9uEtQhTo6u6o50bdW7ttkEVLemN0?=
 =?us-ascii?Q?xdrE3J8TRhy9kAU+kV5HEnmyMBo9zyCPY7H1DLGi9yn2HbXnP9cUiID7Eo/0?=
 =?us-ascii?Q?V1SIHtETingR05XPgyE7ZTnG6pkW7lvBYiX3Wa7p4iITaKDWXKkI9XTnUnoa?=
 =?us-ascii?Q?RLr5QFUUSkkZj0HtbMlsCWAwqqz+JqxcN5Z9wF87nBi1eN+poAzq5iVargZ1?=
 =?us-ascii?Q?cFlbwrQqGbK5yHroFIMSynSeHf9FgsxaInW9Cf2aq3o2DnUqGgtBt1+TGV9+?=
 =?us-ascii?Q?w/e7JZpxHMlcl0D+0EVzqrzzsyf8b2DqJEPHOLGAlPdsIJ2fMPo5xQT5yCpS?=
 =?us-ascii?Q?5AUWK81FjakqPyCUKbV6LfJiKoEeVd/Reh/xhajCaiKTJfCQQDrKZO5Nhae0?=
 =?us-ascii?Q?mX/nDVIe7zLhBpIx+p9a5HNxA4vZBTeLmnggJliy3YoGTK4ZRH+91vjLWP2r?=
 =?us-ascii?Q?ssS6kdv76BH8CXLB4rhrT3wQYYCFB9TXuMXeGhrxGaN/w8mqVRcsXRfNJLR1?=
 =?us-ascii?Q?uvVOnMKjJS1rTJqV05GuiKmWpowbtMR1+6mwXGoXWVRud1P0gKf4tE1hf15C?=
 =?us-ascii?Q?Zh8n7VsN4QbDDFAD1IQ5d/S2NrCEs7JQdDv+ymP5q4E4S48/5a8Q51pLP9/3?=
 =?us-ascii?Q?xx5Oc+cRHohUQJlDfCQ5jk6InE/lwbk8e3XHRQ54mbpqIpJSN/0NgRis5uKz?=
 =?us-ascii?Q?UZN8h2TLlno9zLvcMmpNpcj9YMa61TiuSLguOVf44vUQgUAy+CMBDzGKhwvL?=
 =?us-ascii?Q?Q/mUuAreXTGDGTeyRuzRnNQnjEwAUzVW6QFUXJwzbl0k0/oufSgrRytygFHQ?=
 =?us-ascii?Q?pq9TYKLcyotKg/Nr5ZXA76/UFIpa+xc5olU9x3QyDRonQuYuKAXCjpRKXQz7?=
 =?us-ascii?Q?AKGn/t+xCwg5XagiaQ60YAZf2TJfx23rgSzpFXrh/WKV3MntAVtnpxjW4j3K?=
 =?us-ascii?Q?AnSVA2j+i7R5ctnQj38hZzcvl8iXO95MOO9n4wauLl5+Zi2QpMKy6htwQuBL?=
 =?us-ascii?Q?Caay8/i6SRU7TJ0tjvVKY52PRiMPJVyOngarrL5CSEXdT0c1nmpSjx1Cri3L?=
 =?us-ascii?Q?JiAD8MP8AtkflDCbMsRxb/2FFODdgq/wrr2tS5wsB0xW/cyv17Efrv0nxHkM?=
 =?us-ascii?Q?1WRql4dusUsU8t5C32ZeU1kdQMZ3pM4x?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0Xk52XJAkHK4oYmgZTlrI4q5fEhnT1/uP1Npbp4Iq7a1c7JBVB/qVLHmAS2O?=
 =?us-ascii?Q?yU8eoGWZ9nWYGuZO9KHgAeDWCsdrVNeOCDZLOxCxRifa74bVN2LfPMB/jAuP?=
 =?us-ascii?Q?94K2RTnVuzL6TAf5dbqvRRXcxu96A4Y4G65ZSU3vVWbVqs9TA3rgRdjkrr45?=
 =?us-ascii?Q?020TjJOo3Rx4LJjmWNeTOnalfXLlO0UKq6JjOpRrY4otDVKvAHo614su+pmm?=
 =?us-ascii?Q?HEwxgn4ueAka2TKXs7OYvWC7LTFq6r8I7wOY3cc0nL8O7JkSMwnaS+PpQ2JN?=
 =?us-ascii?Q?ebeEowbwtJrRM9vLf5sSdTvHVQwy9C3gOzUz1uT8qHdRGh38pWGVs2bfnRHq?=
 =?us-ascii?Q?yk8px/XFRuAMzNB87+HihNZPYpZAVFxniOyATsigR7Z/NRAsqqSPG2TVvdB+?=
 =?us-ascii?Q?qOf9f0JwTz9P172vwd7yK5IQQmtpdQAAAe6iFUJSDYFp/eLc9yq8/RVYzEk2?=
 =?us-ascii?Q?xoV0z0zzMRjVza54bC9AAlbiZ9VcyNCSb09eG+nlsGyKMI/dnzRBdbG6iZml?=
 =?us-ascii?Q?eNSddqeSw3KmMVrlnoADpbaKFi8Ui6HNEEazfeXE0WJg0MMTdPqgB4YwuLoB?=
 =?us-ascii?Q?ilOAP0K0l95MxKmAHUtcsLRSdAnpJ7KtQTOcjKCJqppQC+E0u9zMzm943IoF?=
 =?us-ascii?Q?8BDPUfAzCzP2pZaPqK82ghsThXyBjW5T4rakQ5oHiuOfO7MzWrYjOk9lxdS+?=
 =?us-ascii?Q?PTyeJxaSoH0dM6j0DeXpX432Sf9XC6Qz8OnfIZIA95824Oo86SyRDzdId6na?=
 =?us-ascii?Q?h+5nUSUmoKeO/0z/30R1RPErNzCnbT26b7QLd8zo5DSKVl/SqeQXKRs6OARL?=
 =?us-ascii?Q?VS/LvumnM8Da+KEFU7QLwBECULBybltOy/rjQRC5HjwFjs/fGCLCb5JJqXgG?=
 =?us-ascii?Q?XopyrKHqwxZfvSTOWHUyp06ogM7tOaW8t/8LtFVJ4N4OhnR2OfDl/FBp3k6Y?=
 =?us-ascii?Q?Y6x8Rx4yNiPnLmP4NaluJzZEzsZtNKh5m04vJ4CJ1QzsT4YHlfgvKXUNT23L?=
 =?us-ascii?Q?p53L3Ozcmoy5PpsBvlN8BGXhziVDkoSKfPVJ+UTcyoqL1mfPJy/Rm0ddtFLU?=
 =?us-ascii?Q?ggdmFB6dDGXcVFMfte8N5wG3SsUo2LMg46eyc1W4jkWgyEbY70NQr2e8dVeZ?=
 =?us-ascii?Q?lBkYBvHwyjqqG+q+KjNUxt1/jJqMln0USzFzEjw064YK2P+1bSeuRvMdrrhV?=
 =?us-ascii?Q?tzRaMf+Pv+nyUUP31ejUIDjMiCtpWl47RSvkY+RpQqX2vbUeqAER6Mo+UIer?=
 =?us-ascii?Q?zmx0qyvEa7GZF77ujTGEkria0XElfJ/cC0LKbPETe2taRZdd1fsVVMYBr8nA?=
 =?us-ascii?Q?CHrLJWEAQ2kIWN3Jv07Zouhk+KkD8KgqAgE9nnL/w0bHroOXz6E3FjYxCYxZ?=
 =?us-ascii?Q?CDYMfL5jpf+OQQCFRIDmNXSfj+h5gYcUUNO4Z1p++KsE+Mih17n3UoCduaIM?=
 =?us-ascii?Q?e8q4NAmwBOs1uqPo7NDHPXYqbe8M+FDy4yaiaSLqGCUJab7Gx8iDBcIvdOW6?=
 =?us-ascii?Q?aFNqiI3g5+/ADVZmIeCTjs+ymBWWft7UZrwCBUZni/NzGbeW3hf4yAcjNdbN?=
 =?us-ascii?Q?CuIQD61n+OcHHyscY3HWU6LGZgHLRscIunptretoRGWx5UmSUhUSzABvRjq2?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2bd6f916-d115-4562-2154-08de37fb9c02
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2025 14:51:32.8490 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DwV8iKSgf0IenX3PHuS+/FEIC6eM+K28IMPcsb+6ltsG/J4lGDgZF7iva3XzgAV2HLH4QHDwMiIttbpHgOqewTAItnuNoiIJhy5shcRq5TY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7948
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
the intended initialization.

No functional change, only initialization style is updated.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_debugfs.c    |  4 +--
 .../drm/i915/gt/intel_gt_engines_debugfs.c    |  2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c | 15 ++++++-----
 drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c  |  4 +--
 .../gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c |  2 +-
 .../gpu/drm/i915/gt/uc/intel_guc_debugfs.c    | 26 ++++++++++++++-----
 .../drm/i915/gt/uc/intel_guc_log_debugfs.c    |  9 ++++---
 .../gpu/drm/i915/gt/uc/intel_huc_debugfs.c    |  2 +-
 drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c |  2 +-
 9 files changed, 41 insertions(+), 25 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
index bd9abbd6d3d4..b7542da1ec0c 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_gt_debugfs.c
@@ -75,8 +75,8 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(steering);
 static void gt_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "reset", &reset_fops, NULL },
-		{ "steering", &steering_fops },
+		{ .name = "reset", .fops = &reset_fops, .eval = NULL },
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
index 96411f357f5d..29d7eb1ff9dc 100644
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
+		{ .name = "drpc", .fops = &drpc_fops, .eval = NULL },
+		{ .name = "frequency", .fops = &frequency_fops, .eval = NULL },
+		{ .name = "forcewake", .fops = &fw_domains_fops, .eval = NULL },
+		{ .name = "forcewake_user", .fops = &forcewake_user_fops, .eval = NULL},
+		{ .name = "llc", .fops = &llc_fops, .eval = llc_eval },
+		{ .name = "rps_boost", .fops = &rps_boost_fops, .eval = rps_eval },
+		{ .name = "perf_limit_reasons", .fops = &perf_limit_reasons_fops,
+		  .eval = perf_limit_reasons_eval },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
index 1dc8205bc64d..40dc275e7098 100644
--- a/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/intel_sseu_debugfs.c
@@ -293,8 +293,8 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(sseu_topology);
 void intel_sseu_debugfs_register(struct intel_gt *gt, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "sseu_status", &sseu_status_fops, NULL },
-		{ "sseu_topology", &sseu_topology_fops, NULL },
+		{ .name = "sseu_status", .fops = &sseu_status_fops, .eval = NULL },
+		{ .name = "sseu_topology", .fops = &sseu_topology_fops, .eval = NULL },
 	};
 
 	intel_gt_debugfs_register_files(root, files, ARRAY_SIZE(files), gt);
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
index 5baacd822a1c..d9d3ed3991b1 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_gsc_uc_debugfs.c
@@ -29,7 +29,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(gsc_info);
 void intel_gsc_uc_debugfs_register(struct intel_gsc_uc *gsc_uc, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "gsc_info", &gsc_info_fops, NULL },
+		{ .name = "gsc_info", .fops = &gsc_info_fops, .eval = NULL },
 	};
 
 	if (!intel_gsc_uc_is_supported(gsc_uc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
index 7269eb0bbedf..43d83e54d8d7 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_debugfs.c
@@ -132,12 +132,26 @@ DEFINE_SIMPLE_ATTRIBUTE(guc_sched_disable_gucid_threshold_fops,
 void intel_guc_debugfs_register(struct intel_guc *guc, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "guc_info", &guc_info_fops, NULL },
-		{ "guc_registered_contexts", &guc_registered_contexts_fops, NULL },
-		{ "guc_slpc_info", &guc_slpc_info_fops, &intel_eval_slpc_support},
-		{ "guc_sched_disable_delay_ms", &guc_sched_disable_delay_ms_fops, NULL },
-		{ "guc_sched_disable_gucid_threshold", &guc_sched_disable_gucid_threshold_fops,
-		   NULL },
+		{ .name = "guc_info",
+		  .fops = &guc_info_fops,
+		  .eval = NULL
+		},
+		{ .name = "guc_registered_contexts",
+		  .fops = &guc_registered_contexts_fops,
+		  .eval = NULL
+		},
+		{ .name = "guc_slpc_info",
+		  .fops = &guc_slpc_info_fops,
+		  .eval = &intel_eval_slpc_support
+		},
+		{ .name = "guc_sched_disable_delay_ms",
+		  .fops = &guc_sched_disable_delay_ms_fops,
+		  .eval = NULL
+		},
+		{ .name = "guc_sched_disable_gucid_threshold",
+		  .fops = &guc_sched_disable_gucid_threshold_fops,
+		  .eval = NULL
+		},
 	};
 
 	if (!intel_guc_is_supported(guc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
index ddfbe334689f..28cbf79fa34d 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_log_debugfs.c
@@ -162,10 +162,11 @@ void intel_guc_log_debugfs_register(struct intel_guc_log *log,
 				    struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "guc_log_dump", &guc_log_dump_fops, NULL },
-		{ "guc_load_err_log_dump", &guc_load_err_log_dump_fops, NULL },
-		{ "guc_log_level", &guc_log_level_fops, NULL },
-		{ "guc_log_relay", &guc_log_relay_fops, NULL },
+		{ .name = "guc_log_dump", .fops = &guc_log_dump_fops, .eval = NULL },
+		{ .name = "guc_load_err_log_dump", .fops = &guc_load_err_log_dump_fops,
+		  .eval = NULL },
+		{ .name = "guc_log_level", .fops = &guc_log_level_fops, .eval = NULL },
+		{ .name = "guc_log_relay", .fops = &guc_log_relay_fops, .eval = NULL },
 	};
 
 	if (!intel_guc_is_supported(log_to_guc(log)))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
index 15998963b863..94a7428b444b 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_huc_debugfs.c
@@ -26,7 +26,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(huc_info);
 void intel_huc_debugfs_register(struct intel_huc *huc, struct dentry *root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "huc_info", &huc_info_fops, NULL },
+		{ .name = "huc_info", .fops = &huc_info_fops, .eval = NULL },
 	};
 
 	if (!intel_huc_is_supported(huc))
diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
index 6d541c866edb..45a4e3c99783 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_debugfs.c
@@ -40,7 +40,7 @@ DEFINE_INTEL_GT_DEBUGFS_ATTRIBUTE(uc_usage);
 void intel_uc_debugfs_register(struct intel_uc *uc, struct dentry *gt_root)
 {
 	static const struct intel_gt_debugfs_file files[] = {
-		{ "usage", &uc_usage_fops, NULL },
+		{ .name = "usage", .fops = &uc_usage_fops, .eval = NULL },
 	};
 	struct dentry *root;
 
-- 
2.51.2

