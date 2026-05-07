Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKrmCp+g/GksSAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:24:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90D4D4EA1B0
	for <lists+intel-gfx@lfdr.de>; Thu, 07 May 2026 16:24:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D163410E288;
	Thu,  7 May 2026 14:24:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ArOLPyXi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8A210E241
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 May 2026 14:24:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778163867; x=1809699867;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=Xl3PVox7faJPJQfQHyy83yl4wlSDks8JkxPhl5siUZk=;
 b=ArOLPyXiLZGqw6UL+uzkjwKsaASypfNC1lE5OgXKAv+HXli5kuLuFvt2
 foRIqPPZ966/c8Z9rI9ZV2bPiK/7jH593TCLIGxtsqbl2Tx0nwZOSBf8+
 7UEHiNN6t89YDaXvSI8jjHx2aeneYF1JfLjXs/4aLNe1yfd1IG351/d6e
 8UucY7gWgD1jWO0nHY7VdITyejatHSIpXhCEiXuz9+SI3GUh/Vta1T5EZ
 ytr20zphHrK5fTppWK+DxHBz+19f70zCLs1yFM9e/H4BRiorK1c343RwN
 ZqHFrDcCt/LxaxbOf3sO4On7LNH0PGLSElderF2iXYi4f3MI71eW8mTXn w==;
X-CSE-ConnectionGUID: UO/Vd53lTQilz2NZ2YfbFA==
X-CSE-MsgGUID: YuHZ+beaR/+2Ucrp/OGgQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="96683277"
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="96683277"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:24:27 -0700
X-CSE-ConnectionGUID: nQq6jjlgSyqW6Uj7gt/lTw==
X-CSE-MsgGUID: trfe68ogSaarUOoXs4QKCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,221,1770624000"; d="scan'208";a="241478855"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 07:24:27 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 07:24:26 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 7 May 2026 07:24:26 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 7 May 2026 07:24:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TLKxeP4moE2NW7+t6obms8t2qvMs4uyHM85UjqLTBwLbVc6qb/Za5ZuP0JsgOqL5k+9eakOl6lM0wiEsWm46aN5R77M+3xHJtNYtEGtTGtT2alMXput0P1wxkM2rN7INWGoGSFE/cYfoaXeGhDYNMayipFRlw+ovDeIFk2PoLErDxcm9vfxDzsyFSsSUDqU7bdaOBbSiWcvgREV4rAJVZ9jlz1IYmzkLWq40kib7Zt/JZOpYhxp+89bIN1ddDddnUZ/R0XDLKKglOSe4xJIhN5mnomQ2Pn6yP+aCjR1NDIZqJ8xFvZmnS0jEDUr/VYbtarLoyFuCdXkgR3YgLGK8JA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7O7OTvafO6acFzWuU9MZ7eQce3OR11dBNatKjsadwXw=;
 b=OMr/jXCh7eTi1HyG+ePkqKLS6X0qFcmKcEz6n+cAtikzDmx5MuzG5HG3gAZNVRTv2oPeXWi4ld1keNdqVzGk1qotq5K/C6wYVxTlCzTFCBXYMGDZJzRjfxegqKyldgAFR5WCZuwJrZLM1IREgN9tei9G2blEC6ThsdoLbQe8n43nScSR2OAIqGpG7wUS4a++XDNHBCW/wjNKPV/9Pdgh4S3waQjtXRUpWkfDYcZmB8C3N6byq97OYoasEs8DtqsZR0NaV3szOqnhGBUSLPP0XdkthD6nGQJ4QAssPB09SrPeo/lgpTeuXBwVJYcn0Hnh75NKnFujjU7VT3+Uv15RpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by LV2PR11MB6022.namprd11.prod.outlook.com (2603:10b6:408:17c::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9891.15; Thu, 7 May
 2026 14:24:21 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9891.016; Thu, 7 May 2026
 14:24:20 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v9 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Thu, 7 May 2026 14:24:08 +0000
Message-ID: <20260507142409.1913513-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260507142409.1913513-1-krzysztof.karas@intel.com>
References: <20260507142409.1913513-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI5PEPF00000934.AUTP296.PROD.OUTLOOK.COM
 (2603:10a6:808:1::82e) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|LV2PR11MB6022:EE_
X-MS-Office365-Filtering-Correlation-Id: 1335f1bd-c6d4-4ae2-da46-08deac44541c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: 0rRkBzXHpzQiPnq7USQfwd8dYZA1mceNuyGf3N6nDU4nf8wPCm/wb2cdIFJtTtQ6O1eIGl6AB/0Ta39GE8H44zepd7AlhnfTam4CaaTJBKbqzL6Bfu4hzirMEGgHVoYLbpQzvi517D+nKOY9IGNfHwe+WdghICSRLbZnzRNaAvQjeUYttGqHYfqbhbIPgfM91LeqPD9JfpQ713BbykNsJ2kV7Aa6/ncq5j0+d88YxCA6+XIz+UTHLtGy82anwM6ofyCoPoMcZEZQoxDmUQjyAC857Lfe1KzUE147npahtclRwGQiqCMp9/U5AJHJRyVYnAvtaqUqL5Tntp9HztbglR2BOHTFleJJ9bJ4Vxlg201req4YhMoXOhVX0G/G+5878M6CTFjdYxk4ZkVklLYRsNGY39q5iZ4knq4gioyjZ2rLOkPaRUVKqmZDFOv8kfmM8UuFyyS7AmtEe7lU79k7SSx1YGKPibZFQSPYrhzIS8m27baz116sEpSKfXKZmiklwyLxhjcQKwZa3IiVr9rseHD8Xz5yKh0a7UeJl43Q1yDYEK0s4qnC7cslj2vpNf0HO7kOgQDbTlTRde+gSaacoCUIzdPW6kuwk/CgC4INubRjRZ3oFTlUNFO2Wymq2B+uej1XRuTQfhht14REglE/9A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?IWNT9YUwsEeZi7JENjNpip1kABQCQyubi6v2syFbzJ7kaee/2IA7va8eTbXq?=
 =?us-ascii?Q?z1uXurCCeHDOuITi/hN/8QcTq2GnANuQkIrlbCM5uQLaaa30EUBgBjyJCEjf?=
 =?us-ascii?Q?Zzz9NN35TdZqy5SG/H3eXzTTwMiI+YmKzIl9rXi9G+b3Feth3zSC5dEUmyPZ?=
 =?us-ascii?Q?C8K90jHmDTNsuCUJ34o5PkS7khs0gnuUbycmoo/easWBPYg6rZBqwex7R5E+?=
 =?us-ascii?Q?HbmeOMQ1oSAmiYNhY0cs1TlroPaH7ZN57NL5rHZpQ5SOxGTJEr5WcEF/9v21?=
 =?us-ascii?Q?DUbEQmHmBRbzwzk0V3Z+sg6+KI+dMLptnDIyu8i5YQGHbsVORmkpR+eQwkuK?=
 =?us-ascii?Q?Il2ir8cCBEbRROG3bC0hzWX47xYPuHjAkF/9eqs2E0DWnKm+GDkK596SHY4H?=
 =?us-ascii?Q?V+r60X+DgCCQ7MonZ/aziPYFgscFnShVgGtzIhUlL8ZcU9Q5QggkTDPTrtLj?=
 =?us-ascii?Q?HnjojQrw/Bgnwmz1Z1E4bkyqGWmRWf4h8BeE/TfJFIV+f3m2sCYb2UFV1vIP?=
 =?us-ascii?Q?Bv0llQb7ZQ58/CHBJ/lU5RQYrGt+qiRXX1w+hv8FBPX3l6Na9l8tsFMHZMyY?=
 =?us-ascii?Q?SKCOfsZjaVtg/v1uQFrbj96nJj2YQN3BIjdiqeE3/XH87HHYcPtLjnh445Qb?=
 =?us-ascii?Q?NTq5ssiad18P14/TsvMzk4dpj4xDATD7EO+DbHRFFwAOu7ul+Y5dMshES17B?=
 =?us-ascii?Q?cN0+g0YUCgJItb2WRtdvUFUZGk4BgEsdFicIgVEvJFeaE9wKleLE5oXI5nsr?=
 =?us-ascii?Q?eZlm3voo/eON/Ga5TimUO587i/qT9mhPyg3v4tLn5F7w5j+1d8JXLROnMzev?=
 =?us-ascii?Q?s2WZGmpoCYQpfrKujXjBe/jjragtzlilr4bZRlamEtq2ER/9u+Oj4a4XFvXa?=
 =?us-ascii?Q?TLkPWqPDthEewa5xFd04fWUVGGaMWXc4cuJWTrG/z/4F4r6cMuvg5pQCbvPP?=
 =?us-ascii?Q?l3yGwwZ5LCXzIA5skimS0xpfeWOh/8vpoQKM/IscxkipTcoiTUhMdpvrHpkw?=
 =?us-ascii?Q?72uxfN/ZPdGuVIMo+O/wDLe6QeAl/h5h38e9MGpK9dBG4IR1DFaq+ndb/2g/?=
 =?us-ascii?Q?no6hnZSs9FVsxiKFa6cr+Xl8fCSOTmJMxB6tVBFc+8FOAB857ZQIM6ytpts6?=
 =?us-ascii?Q?6HWsRXh+5iqEDq0Te1NwrolqlNaS3co0d8hx53wUeqqSU4nqYECcz2f7wZWY?=
 =?us-ascii?Q?+JcnsYRjjZZc52nwmUYsrHrBqSG1Xei8kvAx9bzDuMm5++XUgKOx7jeCknoX?=
 =?us-ascii?Q?xluVf36ZVrMxsPeksdSoK0EnzE1rPKLcXOK7ejs7HWjGARYlx5jtDHD9Rist?=
 =?us-ascii?Q?oTKRcB/kZBzLQdyW/vb4YVxZOcFzPjpRWEAJB12mc1v2B9uXThj4kPIHkEAV?=
 =?us-ascii?Q?ZkaH3rwqYYW6NVVnh01P6jzQMd3asG8F8kxjz8yluDkNa+GG6TFt5FKOW71/?=
 =?us-ascii?Q?3UyJEhxZ22rLwhMHyLOQFmFvqjlh3o6WyQ4kRLoBWs4QLNhZi2LcnIhNxbL0?=
 =?us-ascii?Q?HDAZbm3KcLwVk8aqIHsnJe00Di+VjYXuD5VA9sSelf+SyRyOXuhj7yiSxK4J?=
 =?us-ascii?Q?1l6f7+xp/LoKokhfLGX3rCFZtlaXOLWWa8J8efKmjNjWYtPl/Yy1OQABklkP?=
 =?us-ascii?Q?cLUSO4BMIRu4FUF1gXwq2F2Cg4f84aTXU8/S5ypAnxGpOxovGkKgMnaV7WDA?=
 =?us-ascii?Q?kL3WbtSTDw5rWZaDij82NJNMMbyrvkaZX7WuY8yKdw6m9a7nHeGBMfURUoLy?=
 =?us-ascii?Q?JFZ7bYCyy8C4MkjHyyzh1jKs18oyQok=3D?=
X-Exchange-RoutingPolicyChecked: UvIPtutjG11XxrGDI0nQFXNxrLi2/M384kq4nEpZKNtTMBnqHwdfM6M1LhOG1IDMRZl4jd7U0hQWetJ/O71JAhw/sHTkzsCTCw0x1jC6tHTwsLABkNQnTO6I5rAlLtF3E3/2m6AxO0xQM9tjb44N0sSrpDdodh97ubRRuApZRxUJRh1O6b1a7qfpv9mCz9/KPR9/M3rrlFwfkey326okmATCDBh4RvELaHwjBEm2YKYzJHuXGvh2uKWTZ3VbFhf0GNWyg3ckEKLm4RI2T4I/dkelLkAOZZfab1N8z33KwLq7py0uXoq2P5mhRJ3qDwQQYjw+22Jq8H9gTIjLuh6XTQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1335f1bd-c6d4-4ae2-da46-08deac44541c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2026 14:24:20.4414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hzZVOLUkgQMfuoPUwpHPtjEj40S+JgXnq7+sNlYvtpEolzmDBlVquw/XT7ymBlGbFm0JWyUxAdkL7eLVecoBOyDkezJnBBRuTdO3VNM/Hnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6022
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
X-Rspamd-Queue-Id: 90D4D4EA1B0
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.993];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Migration testing in i915 assumes current task's address space
to allocate new userspace mapping and uses it without
registering real user for that address space in mm_struct.
On single NUMA node setups PCI probe executes in the same
context as userspace process calling the test (i915_selftest
from IGT), but when multiple nodes are available, the PCI code
puts probe into a kernel workqueue. This switches execution to
a kworker, which does not have its own address space in
userspace and must borrow such memory from another process, so
"current->active_mm" is unknown at the start of the test.

It was observed that mm->mm_users would occasionally be 0
or drop to 0 during the test due to short delay between
scheduling and executing work in forked process, which reaped
userspace mappings, further leading to failures upon reading
from userland memory.

Prevent this by adding a PID parameter to a trusted task, so its
mm struct may be used if needed.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14204
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v7 (Andi):
 * Add missing mm reference release on error path.

v8:
 * Keep reference to mm open for the duration of test for
 readability. (Sebastian)
 * Be paranoic and explicit about keeping the mm reference,
 so we are **really** sure about userspace mappings not
 diappearing.

v9:
 * Drop "Fixes" tag. (Andi)
 * Revert to using a separate function for mm acquisition. (Andi)
 * Keep kthread_use/unuse and mmget/mmput calls symmetric. (Janusz)

 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 68 ++++++++++++++++++-
 2 files changed, 68 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_selftest.h b/drivers/gpu/drm/i915/i915_selftest.h
index 72922028f4ba..e29ca298e7eb 100644
--- a/drivers/gpu/drm/i915/i915_selftest.h
+++ b/drivers/gpu/drm/i915/i915_selftest.h
@@ -35,6 +35,7 @@ struct i915_selftest {
 	unsigned long timeout_jiffies;
 	unsigned int timeout_ms;
 	unsigned int random_seed;
+	unsigned int userspace_pid;
 	char *filter;
 	int mock;
 	int live;
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index 8460f0a70d04..1e8494bab14b 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -181,11 +181,48 @@ __wait_gsc_huc_load_completed(struct drm_i915_private *i915)
 		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
 }
 
+static struct mm_struct *
+get_mm(int u_pid_nr)
+{
+	struct pid *u_pid = find_get_pid(u_pid_nr);
+	struct task_struct *task = NULL;
+	struct mm_struct *mm = NULL;
+
+	if (!u_pid) {
+		pr_warn("Could not find PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	task = get_pid_task(u_pid, PIDTYPE_PID);
+	put_pid(u_pid);
+	if (!task) {
+		pr_warn("Could not find task for PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	if (task->flags & PF_KTHREAD) {
+		pr_warn("Task not in userspace: %d\n", u_pid_nr);
+		put_task_struct(task);
+		return NULL;
+	}
+
+	mm = get_task_mm(task);
+	put_task_struct(task);
+	if (!mm) {
+		pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
+		return NULL;
+	}
+
+	return mm;
+}
+
 static int __run_selftests(const char *name,
 			   struct selftest *st,
 			   unsigned int count,
 			   void *data)
 {
+	int u_pid_nr = i915_selftest.userspace_pid;
+	struct mm_struct *mm = NULL;
 	int err = 0;
 
 	while (!i915_selftest.random_seed)
@@ -201,14 +238,36 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/*
+	 * If we are running in a kthread on a multi NUMA system and the user passed
+	 * a valid PID of a userspace task, then we may borrow its address space
+	 * to prepare a safe environment for the mmap selftests.
+	 */
+	if (!current->mm) {
+		mm = get_mm(u_pid_nr);
+		if (mm) {
+			kthread_use_mm(mm);
+			if (unlikely(!current->mm)) {
+				mmput(mm);
+				mm = NULL;
+				pr_warn("Could not set mm as current->mm\n");
+			}
+		}
+	}
+
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
 			continue;
 
 		cond_resched();
-		if (signal_pending(current))
+		if (signal_pending(current)) {
+			if (mm) {
+				kthread_unuse_mm(mm);
+				mmput_async(mm);
+			}
 			return -EINTR;
+		}
 
 		pr_info(DRIVER_NAME ": Running %s\n", st->name);
 		if (data)
@@ -226,6 +285,11 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (mm) {
+		kthread_unuse_mm(mm);
+		mmput_async(mm);
+	}
+
 	return err;
 }
 
@@ -507,6 +571,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.34.1

