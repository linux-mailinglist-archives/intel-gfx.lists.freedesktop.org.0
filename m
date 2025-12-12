Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE2DACB8C28
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 13:02:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 43F4510E247;
	Fri, 12 Dec 2025 12:02:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WF5Jg6vC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C688F10E247
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Dec 2025 12:02:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765540930; x=1797076930;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=vg3njdtWkBJZgwVJm2nVRoc2mnxtTTga0ig6IfC8Gbc=;
 b=WF5Jg6vChVoh1lwPmZl1h4Ia4u5t5UVqv/tI6gjIu3VYjC4V6ShGNwr5
 qfi/dLRBHATokM/bAmlIKwnP00T54/+vuto4DFc6cSwYkFs48V8U1TJxU
 Apxk54KJ8hvazsaNKhsZLaPWPR7P0XmGC9G7UhmyCFO0MCUsRDXhrDBBZ
 AsRS6U1HnKLdfoECfCJfa/Yt+gPjKmgEVRjJExf95+aknT71RKmYYaBqg
 AHMjvkcXVVMG76gU34CJ9S2eI9LNIRZIhjJhUS6hj+ZfHxYV1tyHzqYyA
 oSAcxUkAyZwwBHUvJDgE0LdKaOTHpjA/GjEL5en7ANniYjeHIPOnBuvKj Q==;
X-CSE-ConnectionGUID: 2T9UQDCNRdaDdY1Ly6KJQQ==
X-CSE-MsgGUID: X4nG4UFESDO7fJqkNfKGkA==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="90193625"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="90193625"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 04:02:09 -0800
X-CSE-ConnectionGUID: xqu6FEv1Quapo5hqIJda8w==
X-CSE-MsgGUID: ra6EsN1sQp23xQy1Sel5zQ==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 04:02:08 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 04:02:08 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 12 Dec 2025 04:02:08 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.51) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 12 Dec 2025 04:02:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gGZZfArN1KBz+NSyc2vEKcWokKgkFYmyiG8uZ0XQqlmB6XFBWHyWEZ+cPE3HMs1gbONNYHQp+4w/fGPeFtzsRPkrPtJeJL5qRCYgGzYbE9U5MLkEiKY1Gvest2ZRk8ZTpjtweT1gTW3uBrUTbxL2TdO891uaSCK1STka11NhEAG4dQVmlKb+IUIT6P1FSMOCMWhfMpwCqQEcJdXc/FvJyKvWpXi7sf4FP4SKEJ850NKtLQ5euGdWSlHDH5ZnwRBQOpQF0nlpwniHzMILZMqF/giTmA8vFiop1koZ6aR3W6Q2RRtsYucLxYz6CMTPuAc5JGT80KbxNVIDtvGyTvfobA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XIYOpimnRNvifYp2Kg0cXymNs1phZFaEBkFFbaAiwVM=;
 b=U07wlX070QRe+FnRuX1JmRI7C5Dwokc6MXH8D/zwUVKztRTG6HK8U++ppvPfBxD3lguip24RlIBrF0FSRZrhjo675OvIoicpXJJ04gc3vyZ12m6oFqd9PqXE5kI/8A8DtFGXwRexgpVoSdWgrShpIw0BBEeOyHSwVXCkGan4w97iMMzcCH1zXhakocypaeTMr452ge4hF6eFc/j4yf6SvuSyK7LGA54ymYSlsKK33a2JmfLJ0wxDhboMR3u0bO35G2Uqgc2jolnJRmBHRiGnLZ3DEt1qlcJOBOo6dvd7vEXZsnH/RJJGy/9IMtQaU+sF8gqzP3eyqiqxr22k5KDorQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA1PR11MB8858.namprd11.prod.outlook.com (2603:10b6:806:46a::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.8; Fri, 12 Dec
 2025 12:02:06 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9412.005; Fri, 12 Dec 2025
 12:02:05 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>,
 <jani.nikula@linux.intel.com>, <krzysztof.niemiec@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v2] drm/i915/gt: use designated initializers for
 intel_gt_debugfs_file
Date: Fri, 12 Dec 2025 13:01:57 +0100
Message-ID: <f662dbd6c43287ddc013fde1670653ad03d5f490.1765540658.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.51.2
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: WA2P291CA0010.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::16) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA1PR11MB8858:EE_
X-MS-Office365-Filtering-Correlation-Id: 913f5c4f-119a-47b3-cc35-08de397644c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?3OxjUVXKQhAMt6BlsWj6tSFs6DselPEWgngbMN4L7NN3PsBQVUEdHPSlE/aq?=
 =?us-ascii?Q?tSVUCuZFKufmH+LrkuDsSqIcOB84gtD61btVm8y3yaEHWqgGeCvMvgSZGHE6?=
 =?us-ascii?Q?aFTuGU/nIdM/8oKSaVrYVWQ3rbi8FfzCx9IfjYVRFwi4r2AJO6u05yrSKfgg?=
 =?us-ascii?Q?/fNSTyGTh3dyV2Sh8BRv7fSTsiBOkECasQQt8ydVigrDOUpKfVWZvfH4EhE8?=
 =?us-ascii?Q?RgXN0Mr+S/IcjH7ysLX1nSJHaEmt/6AP7urK9BzpjZbrzHGx9RDlRnyFxl6X?=
 =?us-ascii?Q?NfA3zJtkbcqZUYJK6brG1uZ5rBAnkvH/0XRUnfP0r9Yhg4FLQ66z7L5R8Cq7?=
 =?us-ascii?Q?oIVm+lLmHkHjnS3gpxIbKQLhNhKxExWldl8AvlsJvVoKeRZ1iWey25TgIM9z?=
 =?us-ascii?Q?yRpmvKRxjnzYxUGhuulELtTWtbIkfO6NDoPiSuNrnQWlx6DdK4p8gyQt+JPB?=
 =?us-ascii?Q?E3DJTgMivnSt/Fl9tkGot1tWjvvOhTZzEtDQzC4S6NtciFKSV0X/UkwsJOM7?=
 =?us-ascii?Q?h14pSjp+z6mU+Kh3Udij9efFxF6ib3e9kuH8sZw7dzvlkBs6lGCCG3Dpc8vc?=
 =?us-ascii?Q?6Wi+q0tMFgfQvzHz5GFalCAqu/x6Wc4Ot2mHLFqy5N+PDr5fjTGwNPP0UfU/?=
 =?us-ascii?Q?b66JFWJeopzRbA0Ynd6Fpi/l7ndYFSVab6n1QUvCoj1+1DO2hE/ObPUmwsCt?=
 =?us-ascii?Q?VXWfUZgsypj3NEn+bQpvbUe8gXlk22svgUvzkBB+0DdOetRmigtoqEumXtXH?=
 =?us-ascii?Q?N1zV8OZa9vA2J4EYgoZxTHIMLjLOgXt8WOrQwL/07mr9Nk93RFrIU5syP13O?=
 =?us-ascii?Q?RWc07bjSg1g0Ulk7E46FjKqD1vmfuG4+b/pSpnF4akkeCN6uLvE4vMHz/HiQ?=
 =?us-ascii?Q?o8QH1OhFVuCJT/4oVzHBbkUe6Ft5kMEdBrbUBSEqdKl1f2FZaSUx7cUi4BKr?=
 =?us-ascii?Q?e+97lpPaoggFXjrZ2FjR+wpL/VLuesAp4VxVDsdgMZQDkIGpSwh3uvIXQXwh?=
 =?us-ascii?Q?v96OeAfqWLdOdaxiLC/aQan82cxmHSv3tqY5W8+wHT74Ji9Un46uNA/NI0Ys?=
 =?us-ascii?Q?e7ulSpRMQkzjAvHwP50BaowU0D+5sc12rdDj36LQS4lQ9PzcCCBnMWcQcddr?=
 =?us-ascii?Q?j8UtMxH9IXlCL4bEWXH3hjJmzJrZFywyxIB/xreUc3BddmnU8d4IWcfUOsl6?=
 =?us-ascii?Q?/4nSJ+utH8Rn2kyQtptp6jsRb0f1phJvKFGnBcKAIdhANRf/kF/wtubyik8z?=
 =?us-ascii?Q?gn3Fcclz05qVetd2baLDuM1pyC+qjPZxl8125x7N1jrFnjTDHHCDNM9gvaQl?=
 =?us-ascii?Q?aBIkan8oQbpD3tIFZPCf8t8ZQsMW3fpsO2vWSjWUT76w5h5ui7KqDSN5mhjq?=
 =?us-ascii?Q?PteipbYu2is5HjrT084RFwpP8e/UUSAKMQXlek6bH5GbBrtqQQXTxhrfbBOh?=
 =?us-ascii?Q?iR+yhrr+3FUI92dngErba4i+oFCojJqI?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9HDAMzuiM48h1A8pSyRvTez9WnCr8xZqooCVwztgQgYVB1D0AKwxrIZDqNge?=
 =?us-ascii?Q?UORc9tgDMI5WQWQF+A5Ytez24m8DZCJBQvANr0ccupiqLSOPSSgmx9x7i5bf?=
 =?us-ascii?Q?f0Leht0i/JBVv4qdUcQ1id9NbDyGPTttRsx1dGBu8pG2NMbcyeUtY2ZConuU?=
 =?us-ascii?Q?mj35SR3CY3clMR5JGV538550lPzkro8vUn4iqjM2dof6awxfeSEDeZjGLIFC?=
 =?us-ascii?Q?IAMLKuuzbWmK5cUyCBGCkBPZFAE18Y4yK46XqziTViaeXes8RlGnbHIXokmI?=
 =?us-ascii?Q?4HMcFFXw8UmYlGX1ZFBwS+ruV/LakFPxiOkFRde1U7VEj/6k3ruWRTLbZLW2?=
 =?us-ascii?Q?iA2eneQkGLhHvh9sWiS0R88Bh7QWlv+SQndckQAzKYwZHPgyXps8oqG386iX?=
 =?us-ascii?Q?4Qgu4QyB0qKuqeh1n9vc2YZISO8urpXGM8dYfMYsUmzYtT0T+Gt/YVgSFIIm?=
 =?us-ascii?Q?sEnA2p1vuuHEUxH9iMffm/p0LUuqrJbe3UyNdl8Lv2YvF4TpjCpijdTbGuho?=
 =?us-ascii?Q?qZ6b5kZ3hSwwUivD+XJCwbqR3IcJG+nJCGMkQSCjAEfd6aWMO1qbO/29dXGX?=
 =?us-ascii?Q?IwFaBPAYGcflB5z6x/OSFpNsPvaM54CEtQ/5H41jt4hCpc70HsVwJa6apo4W?=
 =?us-ascii?Q?9bquZ1AekIv5rmDDopoVxpTL0GJGRlEv//FnL6CmFFd0Osg45d81cpHZMG36?=
 =?us-ascii?Q?uPXktn88BfC7vvMoLXBnrPyzoarrVPsdCS0m0b4CjsDac8UV3Z9YIZxL4bka?=
 =?us-ascii?Q?yO+g/kze5e9zs+f6GIEk5WF7kX8Vykxi6ozOc2UcWwv8FXBHwEgpb2V2Rx9e?=
 =?us-ascii?Q?6i7pkC0xwj41BjCMEQbhAJF4wWA8LbcYRXRQW+4XWeMA824xEi6dYFqWIuLi?=
 =?us-ascii?Q?n8/rRrgG+paZJdHUgYZVzIXYYjaPeOSyUSb6xPWIIOAnZqZsIxRNcdv2vlxJ?=
 =?us-ascii?Q?OhMCdVQ9u4aLgGNVdM5s75y1B1ZboZ9U/Am7vlx7hOIYfMcJlLvQoaupSl9E?=
 =?us-ascii?Q?V+9cpEpfQyE6JUekTUqF3mB9zMr/MgejhtdTWcEItYgBDLl5RI4ZBxdX+FRC?=
 =?us-ascii?Q?ZF/e47hCaUe6amzsBjxj9kW0qJoKbdrgRQQ6/M80UQ25doLoL2+cMk2GApch?=
 =?us-ascii?Q?5x2QEtNoJgg4B3bqJCrWbZ5BSiV99+KYvVj18zV/R0A0cOALuVRdYgQTPy1z?=
 =?us-ascii?Q?crjIcv7QtjyQ65PLN0kpyHQAOifErmxwXbeClMzMnlJe2WOWjoYNBB5Rs1uu?=
 =?us-ascii?Q?NTBfj3LXieqiivRlUK76uqdo0SNVIDXs/yhlaiG9RepusDbKyMrYJ8MyrFxP?=
 =?us-ascii?Q?OpvgbyyVMGb0UiuBaTGIwET7bAYrPN4jpwu3I335fVf1w3to6EKvfESDLXE1?=
 =?us-ascii?Q?wKlwGmRwFh/ZyX++VrdJDj2A3z7Wv7nFnSJxtd2krMC5UAIk81YHRZKtOFoZ?=
 =?us-ascii?Q?++x0O/y+xH/+3Ci9G06DTdlyVHhSjDWKmnV4TRaY4ii04f8flSHsKbxARVEO?=
 =?us-ascii?Q?xhCqK9/22dlJZ5CxWjAPgMbKkK2D/TmyDjE+eN47c+Now7Fnh4yvFkpq//w8?=
 =?us-ascii?Q?jRDl+Xbb3ZQpRR/KnJ32L7eURGhzesWc0TfuOBDkDbngQ1EYxptzA2K/qwL3?=
 =?us-ascii?Q?eQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 913f5c4f-119a-47b3-cc35-08de397644c3
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Dec 2025 12:02:05.7538 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4y51kVKPlxHQVnLsO83Cx4CwSz4mh/YZC/z1T1XrFdTQmHCek21ZsTe/Zh4XReX+F6QnGTvNlJ9U/w1swMDNaoUxpq5e0z+pyLaPBUvsAEQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8858
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
Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
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
index 7269eb0bbedf..35a0b634af80 100644
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
+		  .eval = &intel_eval_slpc_support },
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

