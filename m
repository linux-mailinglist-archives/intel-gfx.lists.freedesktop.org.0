Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YBPrBYgW52ne3gEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:17:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABF16436D0F
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 08:17:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 347F410E7E7;
	Tue, 21 Apr 2026 06:17:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AzQT+GAH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 151A810E7E2
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Apr 2026 06:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776752261; x=1808288261;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=hv97dQe0CY/heG2fDOO7YqBEYriEPKvwoKPvdI4irPk=;
 b=AzQT+GAHfJkYzBuTOf5jYtliPmNAB1F10kBM9E0icuZGskHpDvvvSzDI
 sU1eql9hB9Gvjdfyyyw3+0WoJRtkWVSG86BH+T0t22Im4VMMx6GiJR/DG
 9epflWghGmIeD5ISyhGBSQJ95nhh9k85kFGyCFIpiA9G67UObcLorlZGA
 TeqBb8ajV3mddOxF0qo5FNz23N8wmsBoVAADtrD+u4k7f3hY611TaT5jc
 wMeZXNI8GpNVVGZfRYAh2UWFbx1R0b+HQjM5ll2REJBFtgdza8uzg4Evd
 2+BAJWoLiQiMiJw11Eec/HVNtcxqjpgnKulx+eKkOMlVvAYe63PFl6E2w Q==;
X-CSE-ConnectionGUID: ZRmA6eylQyW15wbw2r/oCA==
X-CSE-MsgGUID: ban60cTLSE2eBwL7Nvf9hw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="77553130"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="77553130"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:17:41 -0700
X-CSE-ConnectionGUID: kwdTA3C6SNufs+qQFeqV3A==
X-CSE-MsgGUID: pa109mjISjGaohd+NSEG6g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="228784241"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 23:17:40 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:17:39 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 20 Apr 2026 23:17:39 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.45) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 20 Apr 2026 23:17:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JCl+N6kHAXwuDVZv6qP9YeWukcrx33Y0wLQ9tmoBQJmgAXi33S2nsBv3x3SsXnheM9qzuUp/ZYdwHgHGHrdOywOC5qUTBzu3yNZd0IUEImidxJmiSbUqfkLQoHFcbKVIhrB17gY5YIItgHy7Kg25yDYJ9P9ZrRLAurOxGhTnoSCb3+4IsLptQPka0qRY6I1//zFF9/IKEEPpuBk4FAIxNXloX6LMQlzQzKTYS6MASWXLCvf8cj7akwKLUeEc8CoCXPmaMBZcrjOO3gN1p9UXjxuJVwhfur6comtZPCoZg1Wa3A8+hL1SBHC7LI6MqiqNIu/oHrx29FN+nfNanJsRJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=afmoTSRV+Wt9jTzFFq49TBCXr0Jtj4ci6Ad8FXyb2qY=;
 b=CX3qEjlgf8wezREn1kBoxZCeFVFcNlGSIBU5lylL4NqShBZuLAzl+oFdgFswGZIV8k9V+fPF9JFeL1BfD0WYdF8Ll+LU34FFa5NPDL/a4z9Y9xtt01w+5qp1M2047leAI9336BzXyPV6WyNJQ0Sjbfw69dSk9tbUM2cjiz3HWF3JoF3RwyIhbSx152k79pMH/+PCqyAUCWPt6s+NDbbjGHsDP6CmaqSHgpczuu0bxVjTtXjupMeh4heycALE6cwIhCqCBy5kGY/xCRyafrlpJLy9B4MYr9s/V85tqofCXqqNSI4RmfAr+YsWcFIRsOgWCQZIylUBtMQPLZtwlyaGMw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB4810.namprd11.prod.outlook.com (2603:10b6:806:116::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 06:17:33 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9846.014; Tue, 21 Apr 2026
 06:17:32 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v7 2/2] drm/i915/selftests: Run vma tests only if current->mm
 is present
Date: Tue, 21 Apr 2026 06:17:16 +0000
Message-ID: <20260421061716.3341529-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260421061716.3341529-1-krzysztof.karas@intel.com>
References: <20260421061716.3341529-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR06CA0095.eurprd06.prod.outlook.com
 (2603:10a6:803:8c::24) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB4810:EE_
X-MS-Office365-Filtering-Correlation-Id: d4a4d2ae-bba2-4e26-ab29-08de9f6dac3b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: TzHGUtYOgHa0UmdyQ4/GhW2StuiObEhsagIexEy12968E1OqXSUuReirjQGv4oU5n5gDR+oQyqaT0zWAbWZOAPDAyAhErnGN4Wv6rIhLAT+9SX5JYyFelFy0B8yLsTyfZb4neeptdzNYDgqHey9rc4ONooAWpysCYyenVJool8uXEdDCg3PN4xOch/qPmgLqcbeNJWvmBxXP3V4I2doCnPxQniLZhLbcNa3k7TJ0D/ekj5iwbhLav2pvfZV9zx9Z3sa9yVPVJbVtuOtQ4ru28gmq3FwrqzVNKhqvxmIfJXjemoEvd4tBJ8KWahdAiQ1t196yu2nnZFMa++mwDk66D7RtywAdnaDxfcuJfcwtd0QguMkHIDMnkQcvpDmvVtwdNDIsPTelF1rAD9yrF/VGvxLc683wmpty+dyHCDNO3RNffZaGrjIpz/i9m+eUqZNsyXpe/9Tm/+bC2j1J5eAw3IuVPTEdY3MuegvAhrVJbdMdYtmvSCSat/MgXKzeqtunvmMzhpbsmUhxE/vVeHvevbP7jIr55UTptOOGzA6e6tD4G2pIkdgjnG2zdkBpYGkxxhDwxb6J+j290ChFhenHeAlZwDvSzpY7fToIbFKjF4CNacP8FIPWqgI2GFoYeqzLBenO93DefyWl+nHJ4yCGscbFtUA899+ZPzEGv7qU77e7rR2DsSX/xggE2L2C3I97bomxWUG2z1a9gTVaA0WGYT1bx366WLHCrzJdQHmPcXU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nCo+vvnUbyDccwZ5JC+tddCfv/w95kfpOl480iTlvld1dIOSlpWKqSJV9fw5?=
 =?us-ascii?Q?Iuw+ClM9H75orQRCQRATlCYOMBFRfsJegN9m9KSeEJUUYl0Ra3lGQJ0iAm4z?=
 =?us-ascii?Q?BMIDkpQS14HBqBOLClT0IX8PkUUtxE9ck5i4ZShn4uCMbzL2mpZKoTdrsF0a?=
 =?us-ascii?Q?7Unq8VySkti3nh6IygDQJ7n2XUZO+O3xLbv0kB3QdnF4IsPINIRC01XrO4nH?=
 =?us-ascii?Q?Zrl3v79VBdRN5xEjrtMXrVuXRc485z530/OYOPnT4rR8crodqbEKTzsLQBJR?=
 =?us-ascii?Q?hh1MlIHN9u209PUMzPapLK1ld8vjSb6RHpQPP6mEmmleSp6v2mzqiA8lkSs6?=
 =?us-ascii?Q?xbXd+L1lhtLNA6zVDW3It2b5qJbhoZJ3vwpG+swRwh9eo0wUZWziqkd0hVmA?=
 =?us-ascii?Q?GTiA4Vypm7YNfj4Rn121p9p15pvtF5FCo/t5yhw3CBR46K14UpfTSC0D6EQu?=
 =?us-ascii?Q?I422ql8vdrqAqwGIdpEG+8uLQQvACvipFZEQOKfRk8kIMDDFe5U5WWbm4bka?=
 =?us-ascii?Q?eZOTMqWyddmAST2v3jelH5R496xpTvHJSIsqPGxWWtPXwLxMGNmwhS0ioEq8?=
 =?us-ascii?Q?0EGV7nzz6lKpi3KZiEzzSqDQi+E1IKrypACpeqZsUN6EuKDbZXWWhXZCTxfg?=
 =?us-ascii?Q?ybtOPV80QwFeiwD2vG3oIrDziEWLB1vYa4vLivD/I+BZm69KxPrYQV0fR+Uh?=
 =?us-ascii?Q?QwfTc0Dzei9IZZeLJj4tuv3tfid+vWHc+yGkY6o+Z3Cbno/yrkFC0Bbhk7Un?=
 =?us-ascii?Q?4cxlS8SwMobgx3N3ABLHaJsJ3ZFMa1Gpw8bX42ygbDCBQs+tseNJfgY+FxHf?=
 =?us-ascii?Q?eAzf97FrdHM80/6tPxwN0zRiRLMHjKxrJuj48eqk1SntyAQax5iRNL2hdGOh?=
 =?us-ascii?Q?QnblkOSFCdFR3/jupa6qRjwGRIF3uuF5oBWa1O6amwvQeZaa7jS/9UbUJnqx?=
 =?us-ascii?Q?kkIudSLNkwER/CabaSj1bMK3JdJdM9QgD180dKQgQVQqMRXDNSrBi7EtkcuQ?=
 =?us-ascii?Q?lKmatGtvcQj9lvwDb7r/yXJZET8M1EvEYg70joUSQtjbaWphrN83GRa7zibw?=
 =?us-ascii?Q?FnH7U50q0Kxhp7a6jAb4Nj85hHP11xSuur0meN82XUaMmQKKfQInbIk3sQyT?=
 =?us-ascii?Q?YBkBSrRdkd7crUu7nF76Vmms05kvF1wuBExLpMhDMBiFTDW9KnJyeVh8ocGW?=
 =?us-ascii?Q?96x8gW4SoaF5TqmcgqX7BJQTf9nubcRJQ0Lue1tk0Jfcz3YMOxLCKXUBmEj5?=
 =?us-ascii?Q?qbqayiKtRdddEPUDRjSQT3ll1S9gv8gLD5bgq1RzB7QRwEtoetgNnmqZZDOy?=
 =?us-ascii?Q?Q1EGTs95dSG61BuxsEU7RbVOGPhQ5iVoxgIrnRBBaWnCI8f3fhA+YVIqo6F9?=
 =?us-ascii?Q?Bxf6bkFusKzAM2lEn5wm+s4TFWHRV1HLfnm/S6KABqYkSvJRQotansnldRYo?=
 =?us-ascii?Q?gZHFPtHP2tvj2mO/vmjN30NOo7pcVDNrC07xl8jm98iuPxAOSi/KgZPnPLu0?=
 =?us-ascii?Q?OdqVQzsgX6NWjKOZzsW8noc1FoQUDIuil1sAwSnCAUmBfRWExO3uJHkZBzIk?=
 =?us-ascii?Q?LR+DzskScx5QDM3wY19YfrIpay/jBQuM9dNpEPp1ynwJDvXKSQjRMj/ivnkd?=
 =?us-ascii?Q?QmYMJJk4WAm1NmplnYaP6OXhIdRO+ZLwHaIYiwnlbyfM4Z8tzK3IWx7SZdRv?=
 =?us-ascii?Q?Fn5ZVez9qQSxp1gwnAlR9Hq+j4sNtKUgSOKIGvNLmRcvoEjDRC9GCN8CQ6WT?=
 =?us-ascii?Q?QrIlbvGwVnpu6uJcn/ZIKRxrO7lLlG4=3D?=
X-Exchange-RoutingPolicyChecked: DU6RLt4CgDMiNiXPvBMwZF+m8XqO3KXEccVPCOf5b+zzz/hPMpqjdxc3X9RPce84Pk7/pYAoxyYqWojel/1IZBVsjIAB2sPqTSSC6FFn0M3XCyf9YrfcB94vF85Tdkek3bSirsokf7w6fA1wqcSxbMET5esC3KiynHOL1TaxfBrxq7UWC6alXKOYPg/LBX6aHegT1MPEfwPOZm8/UqHTGCR1Ywl+DU/PGpFm/BPD9lFoi3kzlEBQX38PeW828E/9pM+CSTGvrxCl0DjXjKYsJflyg7U0RDeFd+WPF1LLqjy8QuzCFKPO5l7NkKbnvWVA/EAk2Hp6RvbKndS83mfMsg==
X-MS-Exchange-CrossTenant-Network-Message-Id: d4a4d2ae-bba2-4e26-ab29-08de9f6dac3b
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 06:17:32.8937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 57FpNtSw6bBv1uj6VYsyFkv/8Ht6dXkNwHEFecBW5O6Oc089wK92lFal81ReTsRAmU1IabHSdFiLbe69F+biMcDtt/Pqki7cXadxexMtdlc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4810
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
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.992];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: ABF16436D0F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This set of tests require userspace memory to map objects,
so run them only if that memory is available.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v5 (Janusz):
 * Add warning when current->mm is missing.

v6 (Andi):
 * Shorten the warning upon no current->mm.

v7 (Andi):
 * Make the warning descriptive.

 .../gpu/drm/i915/gem/selftests/i915_gem_mman.c   | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9d454d0b46f2..c876d59336f2 100644
--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1847,11 +1847,12 @@ static int igt_mmap_revoke(void *arg)
 int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 {
 	int ret;
-	bool unuse_mm = false;
 	static const struct i915_subtest tests[] = {
 		SUBTEST(igt_partial_tiling),
 		SUBTEST(igt_smoke_tiling),
 		SUBTEST(igt_mmap_offset_exhaustion),
+	};
+	static const struct i915_subtest vma_tests[] = {
 		SUBTEST(igt_mmap),
 		SUBTEST(igt_mmap_migrate),
 		SUBTEST(igt_mmap_access),
@@ -1859,15 +1860,14 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
 		SUBTEST(igt_mmap_gpu),
 	};
 
-	if (!current->mm) {
-		kthread_use_mm(current->active_mm);
-		unuse_mm = true;
-	}
-
 	ret = i915_live_subtests(tests, i915);
+	if (ret)
+		return ret;
 
-	if (unuse_mm)
-		kthread_unuse_mm(current->active_mm);
+	if (current->mm)
+		ret = i915_live_subtests(vma_tests, i915);
+	else
+		pr_warn("No userspace memory for VMA selftests.\n");
 
 	return ret;
 }
-- 
2.43.0

