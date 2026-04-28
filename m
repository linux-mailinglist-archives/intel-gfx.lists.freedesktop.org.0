Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HEYF1Cu8GkWXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F17424855F1
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2397210ECDF;
	Tue, 28 Apr 2026 12:55:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GSGawLMV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36BD910ECBC;
 Tue, 28 Apr 2026 12:55:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380940; x=1808916940;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=cqcCpXa/SzhKGR4f4X7TS7GFfoWVEQBQCNEHEX9zmzQ=;
 b=GSGawLMV6X+nZ/gstjts+KL80oTff87UZzzxswMvHMCCjuQQAZiywU+8
 U74xQ7jiiOa78tvp55rDN3A4oZn7uUYpUi6mvOAV4TP10fjVXQidf5sFD
 lXACoaNEK7T/fH8wNhDXd+H4Zaoj1RMFl7UqS8WXgboTXVO70GIR9Xi49
 ZSsYGcQs1pjYgf62+/o++YsfYB/Ow2Vz7eR3t2cU7ykVcIu6mXWRncoqS
 9PzX+1jyWekM3yJ3zED+pr8FonttZIfqLg1FLUkqtYx51y9JUYV9FpQbQ
 S35Fcbu/UAPS8O58ug7jb8uFyawoTrTh1IUkrLAdIBGzLBCLsIYx49PBx g==;
X-CSE-ConnectionGUID: cdudBEFdTK6+Kv88PEv84A==
X-CSE-MsgGUID: XJS0FMuVQheNV4qfsoH2vQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883672"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883672"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:40 -0700
X-CSE-ConnectionGUID: DIn8x9LsSeudqHjl176fBQ==
X-CSE-MsgGUID: 7iQ60FGSSHeKevRa7xMIFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795161"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:40 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:39 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:39 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.36) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nxjFy85rX2WuMafOHHzQcsj+/nxmdZSsGrzNrviUp6dkjCvKfgjEaKE4hYqXEsJQzaM194q40AXvmf/yrZ0DGKEYXSWm2BKMhtu0GtbKZM8BCMgvTG3HePOQcWTdbFlD0H23lVwlLkgbL7bFhqSgoxWYL4S8WASblNAoAGPdlZ4Bw1p00YeI/aTudvKJw3fo6G84voLtdaDAEu+yggV5FrnvnVlbl8zxw138ow7EQDIpAr9jU5L34iKSRNXJfzDXcZZ2nt8vu44rRZc+8eNnRnA24kqaRBTnB6R4WPRzda/WDySXhTplNz3lJUP99MsirtuI4C/teHg/UZK6mBfhCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QbHDZhHXxDD75hq0NwfnF+oOJZtlZLF9z4+qD2qp00A=;
 b=Lo7OmBUfFaEEoRLm45/eScV9vhW+iJUP5HNs0PC+zLvCNGBeYu116A1BU3yQNv6mJpy6axdnlR3LxhyodXZgV0LLCwDtESryjwWS/Ek2hm7KVlSqpN8UZJlESiWD32Rw4x4oLYKeWzliLXRQuoEULV6iYlFCsXMEN8EoFc2uYQGqUa4In7mJ1VZLFFlIJqgHQGHvy8pd1jIm14L6s2eswzTtcs11JJZB6fzepp7qI0/V+tDdXRUuBCydhyA03ZBO5WBBxxePfHaMbl1TD2Mg1Csy9R6bEyZKU/N4gek0vp5Ll10pENyVkOV3VlTewWr7DY8PqTegM18foPGBfBabtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by LV3PR11MB8556.namprd11.prod.outlook.com (2603:10b6:408:1b4::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:26 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:26 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 099/108] drm/i915/dp_link_training: Disable failed config
 during fallback
Date: Tue, 28 Apr 2026 15:52:20 +0300
Message-ID: <20260428125233.1664668-100-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|LV3PR11MB8556:EE_
X-MS-Office365-Filtering-Correlation-Id: 53b92177-ef43-4b8d-58ba-08dea52568d7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: +C9wWVvH7YkHOYaI2T0nMSwmNMxyw1uf73rm0kxGc+XO9A2GcLBlp1glIWwLohZGa4ihWNrrR3xonJtTF2YdtG29RcWPzgRUAvMGQ+4HQaUvuB4aYNOlO01HW/Lm5oq0vN1bPGCWbbI9t67J4kqAkWXXq6sT5KwUglWldLxNaEZPucEY6SwVgllbL6HzpLzJgdyT3q0+ECLp+UUCX7peanFm//vxe5Cn8OmVlJVzz/HheG0+3VeEsi5ItB6pClEuYE7wFFiOnsM58Hc1EO6qHVHgXpUKrG77+4Q1cziTPTFcrVC9sYMLDBxUgffcpV56VLDKVv/Na15JD61QwPvYxC5vGGHc/9U8S6wQNk9gjvkJSStMKcioTrIZ0OmFCLxuM8KvE8AWXyO9Uh2YrA6u+VUnymAKSMpSMbn0BbpGz6eBrbr0OdBVMATiK+n68G8ZOgTygUvpxVTSKqfQrKENWlQ4GQw8+PeeSqInbrOOSVfyYhtzg8PSZvO4zYt5V0ByT1eU1M0V3kdMHE8ULU+iK+JSmmdxbCFQdvlmaVE3QEz6iUcWB2mkTLLBmw4sXYMrKKJ1y82UZ3baL16DtXDczBqPi1KpGHI70I+mPX1qqRJ3xHWj75J33mnfZXbV31WbHL2BUYTsWikGeRKvZoZxnKfj/G364Ueb9a6uyycsYKUoiBheZYerF+/MFyex+6dF6YZm4VtGef7gTyLPni1p972mTDhEWUpVlH/BYFloX/o=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hNgCZs7rNFtGtr4TPCyKJUmvHd2hup93O5bIYDg3gmQ9QL09tAkVrg1jZ4Zj?=
 =?us-ascii?Q?YVkbp8vFsq7rn9cFU6mlIebGFEw8AHvIiIordrjEzE/J6STHsZTrzvzMkvK6?=
 =?us-ascii?Q?B2udJ00RBO/oy3VbEfLsDOPR6UHUZ1rIfDmHzOOy2hC4zxJ+rKcWVaERLs7A?=
 =?us-ascii?Q?psFMNwvGvvXkxjBG4JrCHPCj+QQxycw5gIzAsOzpT7w4rAKjqwjrwqMp/DZ9?=
 =?us-ascii?Q?Q+yO2CIoBYZtVkgq7HZCb+epQKT/tFKIpPxxTyJVLEs853h45aDyM2LukLRC?=
 =?us-ascii?Q?8GQfir850o2G4tpo3UMRDK5fQ2MJFJ06EKFMDiTg2fPrMR40usGh2fYjiPnK?=
 =?us-ascii?Q?w+wkAPeYazs3ROWOg2y73FjoKW77wEeqOeuuBM3AVzBS/mVdGdJPCrXRN0t4?=
 =?us-ascii?Q?menuFlZN/T0jaqT1+p6iO3BGkGrAaxKVbKAMNYFUzoy+oTomHDamZh7MFm7u?=
 =?us-ascii?Q?aIaSxmWpcYchNHSoLsFl2rqBsom0vmHol2VsTbGq1AEL0UbBS8Thvvo9Su+P?=
 =?us-ascii?Q?D+KmcJfdKGZ8i0pAQE7rYsypTSGQvhcJLPzaraMA6HFYBlM0CT3rUuKFrI/I?=
 =?us-ascii?Q?27RqY0cF6+SvQOk3fmaPZGqaYYaYZYmDECPSySRxjV/CoY6vT5FI5v4b1mxW?=
 =?us-ascii?Q?Oeiks5aQB/fWVILdJU8SKF7LsvGMVGHcGDlwWLOrXzih9Pl/vGvIiuwEBxPv?=
 =?us-ascii?Q?KsaWbFIYQcarcOAyVTkeS8+IfvIz3nah8xaynBWF4f3ycG6wiucy/lkWrv04?=
 =?us-ascii?Q?uFqstfwA55GPGjy8QZgpE9lE+FxPBnl9/6RKKb+JHQAxJJPbCRsQ/PGxzZ9K?=
 =?us-ascii?Q?liXJlwXpYSAndPiIHHxP2Hw3TGX6Jc5Hgh27m9MWnH69ewGf/2HIn1LLg8bx?=
 =?us-ascii?Q?ODoeC4n4da++5qF69aX2Ih3e0MNLqMbXavDtusqX+6fJqo2frkQeHkRaVJzf?=
 =?us-ascii?Q?TzgWa02Rpf2rVnn9adVMAMORzVYKhfED8ocySunUn88qGuHnAUXXa7tL3BDZ?=
 =?us-ascii?Q?br3d86DvvopWZPDgT8hFbv7XrSOgxogHhhkQCyOWwk0zQxcIvb5+XH5FNQg3?=
 =?us-ascii?Q?tsnYj+efDP5Q60d8lxTc1BTsKmsDWlwb3I3qF/2AkbpSq3WdCMmDyNZAzf+9?=
 =?us-ascii?Q?XTDmZLDigpk60Bc1uGW++2LhF/g/hgbZphNy+TKx2qsQYE61+1kC0TZ9Dtfh?=
 =?us-ascii?Q?eBm2O3h4CgV+SZjMGjubW1vdkww0c6aLOTfQOs/1U+qJJ60yttNCFEIOlD4w?=
 =?us-ascii?Q?tUL5PyOyCeSaPz3i7+kmJmekzlUJ1NC/oqIL8CPyplTA6OP41YdoY14Td2MI?=
 =?us-ascii?Q?KFndkt29J/w/O6CThZazGYs5NC8EW7tiVUchF+UUKIJYFmYMIpOCRLczPkKq?=
 =?us-ascii?Q?ZK4Obskk4mRNSQ9HgHPaeJigazrk4562QBTnNKEN0IS8ca72ljWrOeogpf6V?=
 =?us-ascii?Q?6BNfUxhV/27SogsGdG9U0BmGnh4Us9ZJFsjLoppIqZS0bw5bg0su27RuSRQF?=
 =?us-ascii?Q?A+WnpuSQ15oPOaoJK5D43LcqBq3W3N2Iwo+VcgoVkgZUkXjQ7IVQGycOvTlF?=
 =?us-ascii?Q?TiGedz0YKWfXXBRFULm7fF+ZkUUyob5eTiCM/8qO+HvPcLAI/tXB/f7enLbP?=
 =?us-ascii?Q?vHdiOQB4Vz9hj46gtH4EKQwSU0oVkxpA/UTGUjR/1ez1fDcqkZGz7hTp798R?=
 =?us-ascii?Q?Es0w7foFOwADxIyRRLWB+QDKz8H5qY9Y2dXH5RK+2O6wye3lKPE+h9aQdqIg?=
 =?us-ascii?Q?Z7BfqGK9Dw=3D=3D?=
X-Exchange-RoutingPolicyChecked: KxXl+plKkC50pTM6x6Z+WM3munokaZqztAipNrTxM+oFW6jKPwdbbaF7eDND/VFxyKGPHBw0CBoay4GNFn1H/WamwQiPCD2fNHhOh0y1F2ryulazVu6l6t+DFcC5uQwbMXAmjWRVkJDEQaiz7U4KA43rvxayLYPp/wgGjTsnxla3je6H4iTNs4mVoNexKw1jK/GErw3drIkkUZnd7tqz/tF4AsLuR+DFYhEK0Bipe9up901Gtb55lSJNRL2tJackaD56gibnKPear1gUwa2KQm258h8hkMDnTGb6KpEDB6NUYnjMD+Y7La3zFhgQJCfySSQjio3PcKXcfSJ13CDghA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 53b92177-ef43-4b8d-58ba-08dea52568d7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:22.6567 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bYwKso3LQNLNm2/+yA6ovRJRLcbcyUqg3mE7rpv5jWa016efeBGEA9QUaUTSsaJpwI1Apshx/yIk6XEWI3dLhA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8556
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
X-Rspamd-Queue-Id: F17424855F1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Disable the link configuration that failed training when selecting
fallback parameters.

Fallback still selects the next configuration using the existing
fallback order, but now also removes the failed configuration from the
allowed set. Functionally, this only affects the case where an MST <-> SST
mode switch occurs on the same root connector: previously, a configuration
that failed training in one mode could be reused in the other mode due
to the differing config iteration orders.

The current fallback logic also sets a temporary maximum link limit
across the allowed configurations to constrain subsequent modesets. This
legacy behavior is preserved for now; it will be removed once the
fallback logic relies solely on the individually disabled configurations
to restrict the allowed set.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 29 +++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  2 ++
 .../drm/i915/display/intel_dp_link_training.c | 27 +++++++++++++++++
 3 files changed, 58 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 6eb5b67b6168b..e7f3d40c5ec08 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -1056,6 +1056,35 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 	update_max_link_info(link_caps);
 }
 
+/**
+ * intel_dp_link_caps_disable_config - disable a configuration
+ * @link_caps: link capabilities state
+ * @config_idx: configuration index to disable
+ *
+ * Disable the configuration identified by @config_idx and update the derived
+ * maximum-link information accordingly. This removes the configuration from
+ * the set of allowed configurations.
+ *
+ * The configuration remains disallowed until intel_dp_link_caps_reset() is
+ * called, which normally happens after a connector disconnect, or until some
+ * error condition triggers recovery because the set of allowed
+ * configurations would otherwise become empty.
+ *
+ * Return:
+ * - %true  if @config_idx was valid and the derived state was updated.
+ * - %false if @config_idx was invalid or the derived state could not be
+ *   updated.
+ */
+bool intel_dp_link_caps_disable_config(struct intel_dp_link_caps *link_caps, int config_idx)
+{
+	if (!config_idx_is_valid(link_caps, config_idx))
+		return false;
+
+	link_caps->config_table.disabled_config_mask |= BIT(config_idx);
+
+	return update_max_link_info(link_caps);
+}
+
 static void enable_link_config_no_update(struct intel_dp_link_caps *link_caps, int config_idx)
 {
 	struct intel_display *display = to_intel_display(link_caps->dp);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 1e4ce6a58e4fd..da2eb1f7453a0 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -205,6 +205,8 @@ int intel_dp_link_caps_get_max_config_idx(struct intel_dp_link_caps *link_caps,
 					  enum intel_dp_link_caps_config_order_key order_key,
 					  u32 config_mask);
 
+bool intel_dp_link_caps_disable_config(struct intel_dp_link_caps *link_caps, int idx);
+
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index a9955f04d507f..c47d2bc84460a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1954,6 +1954,11 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_dp_link_config max_link_limits;
+	struct intel_dp_link_config current_config = {
+		.rate = crtc_state->port_clock,
+		.lane_count = crtc_state->lane_count,
+	};
+	int current_config_idx;
 	int new_link_rate;
 	int new_lane_count;
 	int err = -1;
@@ -1965,6 +1970,13 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		return 0;
 	}
 
+	current_config_idx =
+		intel_dp_link_caps_find_allowed_config_idx(link_caps,
+							   INTEL_DP_LINK_CAPS_CONFIG_MATCH_FUZZY_RATE,
+							   &current_config);
+	if (drm_WARN_ON(display->drm, current_config_idx < 0))
+		return -1;
+
 	/*
 	 * Temporarily reset the max link limit before selecting the fallback
 	 * config.
@@ -1982,6 +1994,13 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
 	intel_dp_link_caps_reset_max_limits(link_caps);
 
+	/*
+	 * TODO: Make fallback depend only on disabling the current config,
+	 * once max_limit no longer constrains the allowed config set. Then
+	 * disabling the current config will define the allowed configs for
+	 * the subsequent modeset, so there will be no need to select a
+	 * reduced config separately here.
+	 */
 	if (!reduce_link_params(intel_dp, crtc_state, &new_link_rate, &new_lane_count))
 		goto out_restore_max_limits;
 
@@ -1995,6 +2014,14 @@ static int intel_dp_get_link_train_fallback_values(struct intel_dp *intel_dp,
 		goto out_restore_max_limits;
 	}
 
+	/*
+	 * Shouldn't fail: the current config was enabled, and reducing the
+	 * link parameters should still leave the fallback config allowed.
+	 */
+	if (drm_WARN_ON(display->drm,
+			!intel_dp_link_caps_disable_config(link_caps, current_config_idx)))
+		return -1;
+
 	lt_dbg(intel_dp, DP_PHY_DPRX,
 	       "Reducing link parameters from %dx%d to %dx%d\n",
 	       crtc_state->lane_count, crtc_state->port_clock,
-- 
2.49.1

