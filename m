Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1B0CA40CF
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 15:38:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E448E10E1EB;
	Thu,  4 Dec 2025 14:38:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gJBTEczx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DD2D810E1EB
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Dec 2025 14:38:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764859122; x=1796395122;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=XGMZW0qh5aZwWjPqiRr3HtbTAluRofsB1z9Y5B6lo/k=;
 b=gJBTEczxh3SB88OQCV5LGbrxkRRH0nSZiG0Nqd5RUEBpSdYSDhhkf5RQ
 qlKz3xw0K9aP8rfHnS5NuZCUbrbukbwfSiPwjAq+/OsKZMVIfYERmi0iP
 CiYVCw9CKBkdu00UXdKN2WSj/rkQ5kH1sMb7WKrcB1qb4MARKiD6GNt6N
 aSrNCaJ5lKXC/WjZkvZo8u40YNOCiMAFBq6nsvLjLytpgNEhrs7LobPXF
 Emu9C1U30C3J/W31L/9W70PRHnvWEhPF7L34deeQFKqPH6wR/Llb12qd3
 tLUdP4qdoGg0b1WKWD/N6prNip4Vky4s1EAtaaLLRvLcfjO6PTluOIHSB w==;
X-CSE-ConnectionGUID: bDL31Zo9SjGQdjTda7YB6w==
X-CSE-MsgGUID: HzSybeiASYem3BeOMUB2Uw==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="78229452"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="78229452"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 06:38:41 -0800
X-CSE-ConnectionGUID: 2deYLWN9QbGt2S92xUU1fw==
X-CSE-MsgGUID: IxgbiaxORQiiF+OqT6lh8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="232336584"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 06:38:41 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 06:38:40 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 4 Dec 2025 06:38:40 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.53) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 4 Dec 2025 06:38:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lQ1P7UUyoeOqP4/A0nNHdjwjqZluDIn1QpmFcFH1xRBHWNF/qNZUgoBNgHrqzB+B6nV06yzsBQa/onXhuw9Rma1DfxMTx8ienyg3qm5TNJpyGIF6TVAd0/h/AamuU7BCYWk9+VjWmIRCF+R0y9q9rjpDIwy9sXy1XpZDYwtLszx638N9EI6xQ7RBOmXPaaLnkxwDDh8mt2poTDcH0yK3u+4DGkA1FQCtatwAUHKcTI+DJ8wfZZt5f9oJuE07G5KHTJ5OLPshst3JqLHXBPKRwLi+3aXSrKU7pbyQIpF2WXxznBG42h6GJaARk1rPqKzC10id3PfS7s1ltj5+5aOeKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=suoGt8KzbC9UL5W+fdJUcB0q9rRYhmPT4mBxZu6mFgc=;
 b=XWAxKEMiAqg+o7NnYM4sOAeZTWJOsnCpDZA4LIliI42VJsY90yJJlFV5KoJ3HVd6ktWw1APUktIW4o7Kmeo2Oj8S0BfO/GmHF602d02tkMH0NFucjIfvw33t+OTdsFLIdmBnzF9bOclwnKZPFcC3eE0ti+cgocM4PzBGmIfqXaZX01P+PmC3onhgOD6M4fqGxBMf5A0L8mIoRjyeWMI3YedvuaD9d5Pz2Gbo8P1xwnFOOkPP1+SMt4Uy0GNjswm1Gq1LpfQXP7trskJsJEHqgO783dsG2OQ46v3yIfWBvaq65clSrYR/yf/dyUc2DVcXrXBhhpE5TvVe38M7bm1ITQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.17; Thu, 4 Dec
 2025 14:38:37 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%5]) with mapi id 15.20.9388.003; Thu, 4 Dec 2025
 14:38:37 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v5 0/3] drm: Miscellaneous fixes in drm code
Date: Thu, 4 Dec 2025 14:38:24 +0000
Message-ID: <20251204143827.111428-1-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: LO6P123CA0014.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:338::17) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|SJ1PR11MB6180:EE_
X-MS-Office365-Filtering-Correlation-Id: 603234c4-da06-4875-46b9-08de3342cef7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?CFTWQWnDfo1r8IR4gADmT30rzaBCAhm8cXBI1nGpBVstzY2VjgamRYYRuYMo?=
 =?us-ascii?Q?Nq6ZgfSLcbVcw0X5qgcNy+vwDee9kz97uqkuYKBg0AmZJ5xBPDAdKcFylUbr?=
 =?us-ascii?Q?OAKOH+W2ptIAk1mUTsIHqbToS+tL/M2/1JmsKghgAb9Is4BIeqBA7utKgH4e?=
 =?us-ascii?Q?Ol8P+sNQWvJPoMX1AJvB0rEz7aBAUb4fLVtaa/l8T746+mF1PquhvNk6Jorm?=
 =?us-ascii?Q?a9zwM2C1m64zlKSF6jCPge2Q7ICAX9ZzjNf3uCwlcwEE2ZJ85AHs+xek3h6J?=
 =?us-ascii?Q?p2R0tTJgjVuy5rXctiPUPaKS8g7TdN/kj4dBAHDzHn1hTdvFpT1YbST0fUM3?=
 =?us-ascii?Q?nbCGG3iQ9CuoQkCqYvhIF+4AH3HGQ5PEazlOM2ivoirMBc7neLKtktTkl6rZ?=
 =?us-ascii?Q?wvKijilQeDVAYvwbka80bBgQGTO3/C18JJxPYpXDeCbDw7GC5TzNNzDwyFYB?=
 =?us-ascii?Q?c89FGdni+5Ey+7r0tyV0laZJ7tR+s25ONpuuaqAP6krIZ71fVeId+Ov9FjkW?=
 =?us-ascii?Q?lvBBZnh9QVa5L3HrVnymsXW9oQO5w2YsTGUUQTroemWw57eSm4OvGrEYvGer?=
 =?us-ascii?Q?aXMp9hDknN8xQVTr39EV9nnxzqmm9SztYQ8sDWstsryK9m6nTzK8JdqT0A8+?=
 =?us-ascii?Q?5U9SNjDh4ORKKD1/5ft1G8jR10fyN4bThHr5SV/UapQVdYICoQ0vA1Sr3F0I?=
 =?us-ascii?Q?tFkDy0N+mxjaPZJmc2BuX6N5IGg9aOpLg0V7jsOCxfh3P6maI5qVFcZsMDt4?=
 =?us-ascii?Q?sqLxVv4Q3QViMGUOntkMJL66IZbO0Loc1fLycloGRBLovF1OiUC0OPTMyA8u?=
 =?us-ascii?Q?HLKkqvU86dN+X2OSE8Yk0OOv+2gkmxkMYSbff6VdlbbQJjPhdDOXGVpRcFCI?=
 =?us-ascii?Q?D4zT7JgDUF7T6Rfl7LqE/VKK80kTlj4Um9doV19VWVeC7Hfy6oQsU5TYiRGg?=
 =?us-ascii?Q?TAUv1j4AtPUcl/DVgqXm+iosxjNo2rJYeU9nBKsO/ki3thtXHfOirINh22Dj?=
 =?us-ascii?Q?IcRwOGB8M5raNKsYtduZCsdpptMDTco0n/oNTS50O1f5dZeFM35Q5JxsPAvP?=
 =?us-ascii?Q?gu+nb9HgvTrQ1JXjUSFFaUJhxd+LV+vYE8UKl9ydDP3X188AXf9rCpfwMcHb?=
 =?us-ascii?Q?4xm0eT9fHyxNVFkmtrNVT7Co+PgTpUEyaS/m6Ys6VahWvmtZW191RptHzlaT?=
 =?us-ascii?Q?yULtSTnxLiHdtuAA9pJ3GFTd8itu5Xi3GoeHkEIuztVTpGv5nf8n5zuRxq/o?=
 =?us-ascii?Q?bu40Z++XZ4Mkx7sJkGQqu4UU/XeLADt6xjH23ti5JbzN/XiNQ9CQRZR8Oxwy?=
 =?us-ascii?Q?XDi8nb7hyE7nFXWpzz9l1TJK6pA5sqk+7WKF1Kb2TfpOrGUEaALhEWDHTZ00?=
 =?us-ascii?Q?YtQzyQmgKG5mcQoqzVWj9lSTjhjNZfGfIWi2z3JguvOTgDrc1v6L9Z7Igz9I?=
 =?us-ascii?Q?LVbeFP8NJ2ryR+FJuFYjOPkHYcZ33DYJ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iUaJXPAO+ufpz8EZYUhqQXHFokbhBSEw9rR87SDXvuTYjHa86MAxC8BwdwGP?=
 =?us-ascii?Q?/6gumCLFQZREjh+qFxDb2r3Fz5HZZAsYW5BElptuYLUTJbiq4nqDBoa55sh3?=
 =?us-ascii?Q?gpiUOlwZryOlfjqbfC0PTMzKJvQz2W1VgF+GSRzmXObiuPlMoEj7/+gH1X46?=
 =?us-ascii?Q?g5MWysPRkmz56iihYx+kPs2qc3Q90FiYBb4UNOg3K5nv2yyvH+CQqzjZPyoB?=
 =?us-ascii?Q?upgqo+p/nS/nX/ixZcILFSDCP8NccJuY/ZLnyILPrw6hsgOP1vVz7zOk87GU?=
 =?us-ascii?Q?cIBuzNoqpUttgkDNT8M4kvEqhXvu1XwuY7PXqlze+WMVQTQJhqZ1taDW3/KK?=
 =?us-ascii?Q?L47rQ5LG9D+bSU9uwwlJQoRJa+zfUudevUwSUoJOup7RQtEgSLHDsUh8/b03?=
 =?us-ascii?Q?R8nCqxENrS2u5Cavh95wM106IodgPdQEUK6GvQs69ZBVxqnVtKM0PkkGFYV8?=
 =?us-ascii?Q?lBshrfInN2iwGe/a48+K6Phj2sWpVahzlKuxH9D8INxwDR3UlkpBPBRbH2z0?=
 =?us-ascii?Q?mwxkTCETwcWBNFqDw6B8sl0agbKFkqOsyDjvBZc7YPueclMuF3s0Jmdsk3EU?=
 =?us-ascii?Q?phVbV0SHF/FD86NxI8RYINGI54oNuKHaVxtE4OEchGvcv/bqscn0uv5gkK8S?=
 =?us-ascii?Q?RE6RXU3vZsgqEnv7oNuDNgBhCk6vysl/zkWFObm096u2a0sVk99aeG0Sf/jQ?=
 =?us-ascii?Q?6i6VgsKC3yc65j2eChlWNuiaaqPVqvR0azYfLTzJ+mirNpPNNQGDgO6lqB03?=
 =?us-ascii?Q?9canz8L6Uam9CwOenqdwSr8QrTLtLLT9XlDOGTzKqsMEJM32pikZWHI/g3rZ?=
 =?us-ascii?Q?bmh5wdSQ84OE6nNGOjQXxk1ZNlRTWp9x5wVs2myeoNPGKgupw/vbv23gmPmE?=
 =?us-ascii?Q?9+H9qTw5fJXN3Dke4HqW3hV+RM7o9aFTrrVDwW01qsFa30XOvvg0IZzdFWMG?=
 =?us-ascii?Q?9v01J+PO83GlTE5rvCvFBVSItWms3mi8qa4XWtAYsld3uxehxqHLCjHGp5T8?=
 =?us-ascii?Q?+NiktFk2wU/tmQlwEyvcQEVK+Q5JariDBXW8kVVnp9xcCpc/66YAyCRrhMQt?=
 =?us-ascii?Q?Gq5CQijSUgom/leWAdoqPtCQmSnePqdCHaxJ5DpUVAKjgo5VGLrHFCRub8FC?=
 =?us-ascii?Q?y9g9ye4BrZG6SialSOOLFXok9+4fwTxQp5QReNukgqQlM1gudK0DNwswT+1z?=
 =?us-ascii?Q?ktwqiE7IUKWeE0fHP0fntED/oXyQK8XQs4Pio6cApU9Qa3H9mZ6t1lP4FkuD?=
 =?us-ascii?Q?7rfCjk6fKUoceH0DP7KGt1lxYrlAV/K/OsSbh1hnkmumwMMkatf6BrTnrwen?=
 =?us-ascii?Q?BjdmmsZKfhDuV33rgUQPq5HldKUQ3xzdIusNK89aUF7CQ4SdNAtM2pwfDiVD?=
 =?us-ascii?Q?kQu1/tusr6OJxvQwp0yhi1IGYQdbiD684MBmMNnmQQfWDztc5oh9tfkdHKHU?=
 =?us-ascii?Q?mglClwoJ1T6a0X5hJSz9awoRgJtpKIDXsFOMjtUF9OjtlSfS4L/ofK8Pzmv1?=
 =?us-ascii?Q?UKer7NcwYylgd7J9aGLdCbJO7ZMgUzrZe1t1G9OSnuriI+cfagui+3lNh57C?=
 =?us-ascii?Q?txPypdFtC7vdrDRDeXN2jz/hSRvbrRD/ftkwo6UNz8HhkciahGBDEfKZyICy?=
 =?us-ascii?Q?Gg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 603234c4-da06-4875-46b9-08de3342cef7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Dec 2025 14:38:36.9500 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: McTyRZjU7jFY5zkz9rBRblxqVS2rFQ2xmtLH+aYJGkeYyLbepFqVIGJ+S2dakYFURlMzKnUuQov9wdEFSiuX42Fk2CSOGBGdIoXBPcW7utA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6180
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

v5 (Jani Nikula):
* split first two patches;

v4:
 * Rebase and remove unnecessary patches.

v3:
 * Change the casts in the last patch in the series.

v2 (Jani Nikula):
 * Remove i915 patches from drm series.
 * Split the last patch into 3 separate changes.

Krzysztof Karas (3):
  drm: Warn before division by 0 would occur
  drm: Avoid suspicious operations in drm_fb_dma_get_gem_addr()
  drm: Avoid undefined behavior on u16 multiplication in 
    drm_crtc_vblank_helper_get_vblank_timestamp_internal()

 drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
 drivers/gpu/drm/drm_vblank.c        | 2 +-
 2 files changed, 6 insertions(+), 3 deletions(-)

-- 
2.34.1

