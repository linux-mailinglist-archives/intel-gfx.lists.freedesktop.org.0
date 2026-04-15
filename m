Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iC2JIJ1Y32n1RwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:21:33 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E75C24027E8
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 11:21:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AC2B10E6AF;
	Wed, 15 Apr 2026 09:21:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CAbFBPA5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EA2510E157
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Apr 2026 09:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776244889; x=1807780889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=mE7MSCW+ahG3/zjZXrK5X40yi8pi9c1z6WVbaDuArkg=;
 b=CAbFBPA5eEiKnccrz75tLqhifjbLvFbEBv9g5p2m2GlHPLM9AUP6zNbD
 aLqmdUKqs1u9gRPKmlBzJvzzYZXhU4eORQPtwCYahMBf9gUwOWW4uKQ7J
 UZSY2I+Mc0rMsRth+btdogsq/3iV7jTHcSR2a65spR+1h/Xa9O7A0KHgR
 izuLdujaorbRjphAvOFe+m434nrS2gbY9+It27HfpNb8Qxru7/Bci7/wa
 Sq8Prp3LVVlXOFD4HAQlXORraufddSA5lrJBlFwx2fqVT5VXhheir2GIc
 d5M6WLyuxwwQCRyxZ7HH8MOMv1XOhDTatnPjFGiILauuaGieJws9EAvb0 w==;
X-CSE-ConnectionGUID: VNDrRkVXQk+O5kO1Imv0rw==
X-CSE-MsgGUID: KJf9tQ73QmSbCeKv1k7vDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="88295795"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="88295795"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:21:29 -0700
X-CSE-ConnectionGUID: ftwuXAyASfmtOicn6+7fww==
X-CSE-MsgGUID: AGAWa4C9R2+8SPx19tYm0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="230593949"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 02:21:30 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 02:21:28 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 15 Apr 2026 02:21:28 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.3) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 15 Apr 2026 02:21:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IqA8exQeu5FuToZyNDuLNEoS17FVZmybl9TBbdY4dpvDU6Lg3glij5SuDKqx4qrrfzkeirU/MeYZMnBpCBDNXdHkkWPCW4RupNwvHedN+Ckechs6yZMOQpSMTq3g6MJyig/yj/6ps8UY7iMUCr4N4VM2Y2aWPjjrHtBz9KC1huFVaOK4sLEXKUexQAglcvfnkqOleuAKM/hgCHFXFaFFZ7xgWTx6/9iwWC99nsARPJSXnz2kIR3CAxak2ha7lt1OE9L6Ff/iBvUwSrRlir2RpgOdVkLromydXIUTGx0cvmY/1tjg+Kdy2QUs11kCQW43lg2ZAD1PePkWZb5fTRYkRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e6nMjzdada2iVni/1N2pApGv70M+UKS0MIRIks9u4ho=;
 b=DE9fVzkBaYDAragqGLkMKlB7FKqbeaRpMsuxy8yd9xvbYRAqN0RZW1JaDQGDjg2R0p0YtthfV12sqJ+LU3srIa6evtpfxpI28DdaNTMbtZyHS2u4p2ZCkQ86YT4+N0HOmmu1IycOMMeZ/wP4oVdNu7qaAkdi0vvRj9LLN0KSD2jwvT+hl3wZaHNybPMduSeAcdn5vOh3JAM0TKrygYVImdgz6PfEojw8n07rXjpUmA0ge1FBn9Oh2n8RhprpxG4V1M6DcpBVHl6WOIaLF4IGkU0566VWFUdzdrwqa9Q85QEw7lDPbHHK/MRPNyct+M5IcFR3LkDCg59ED4JRxheqYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB8036.namprd11.prod.outlook.com (2603:10b6:510:248::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.48; Wed, 15 Apr
 2026 09:21:23 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9818.017; Wed, 15 Apr 2026
 09:21:23 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [PATCH v6 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Wed, 15 Apr 2026 09:21:10 +0000
Message-ID: <20260415092111.2767839-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260415092111.2767839-1-krzysztof.karas@intel.com>
References: <20260415092111.2767839-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0007.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB8036:EE_
X-MS-Office365-Filtering-Correlation-Id: 982f2c71-1db4-43ef-9977-08de9ad05c9c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|18002099003|22082099003|56012099003; 
X-Microsoft-Antispam-Message-Info: qF4mDoqEiwF7gBkHAtvxVWbjGJzQY9s61NJ/mkmN36HKh/gxjRV7etd6L5W4ws5/u7Zfnz288wpkCh9kkAvZ+pdWcftmOsLmjmI9iRYKB6W9e8Pg7WxlwapdK1aajHHTSG2Rm2XlKjSCB1i8T0kqIIj3fB5GwuiHtxbiNDvYQ9Q3mJR7SkOPC0AnABQVu48bKaJ287e5rlJ+oF862H9ude7u3+zgFzfF9Z2fx2qzupCVGV0p2lOuJszIS7cKgK3yWlKUfKp3lfsrIVVbn6mlby9wz4n7/lAWPQQx92XlkXZW7DSwVRAa7So5tBrxLsyAJswOyN/y3hmDVcp7IMJAIaxczUQX04qYB620cuW0r58xv0IlxgthTFFEANE7EaGhUQSyNvuIZMLiNLCyMiPM593Vl+Ldb3Pdf1WQYkRj0zEFmriOhy8bR3XzQiJuP1Ca1gLffYOdl2gpJiH7u2kG+l+WpZ2nBI5XKy2uJgXwyCtM5xLjxZnkkk1bQN9F+rPaC18Pzu2G7X48FtAseXy989n7EByHld6nH4XMQMA5YS8HBVgxhP5z2Uq8+VmJMTbmiDBXr9b5qVk0q1Cx+gIBFtm8R2/DAOKc3pqt+sC25RqsSpgZLI7tgqS60FdHRlbBPZ67LGkuNXc+CBsymw29+tgjnw2TY/FsJLltPAKGxyc+PAAmNHgK8iqVSsggkycA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7mfGW8LLgNySrtbILgGxiKec+f08HyAAehaetCG0XfG6k4FrCbczxuQWs1pT?=
 =?us-ascii?Q?vpE/GoLDE3D05kNXfgZPOq6gvbDVt1X8BtD2SdicQ0yw3PKcowPr5LKJT99A?=
 =?us-ascii?Q?n6cWz9wibyjBoLbflPyQBgVhBdAdi6ZSkZfRfkkdvcIA63H9rpKkJu1rLiuB?=
 =?us-ascii?Q?UGKObnhlS/j7FcH9Q6umR6ouScNfmHUDPyj5J+/LhUY0+n4yIdKtdrK9wQ+r?=
 =?us-ascii?Q?dotZ4dpb5Rn2lGun3nKhZ2hls+E2LycDZpITSkfnsnZ/LkoSMtaMx037a5hH?=
 =?us-ascii?Q?OuYNyGFv23NhLeGANsXxY5OP85nm2zSZv6KvbtwKt1HZiyi9OPUgtxFJ96rj?=
 =?us-ascii?Q?W0vfA3YznchRnIuT0B6y20xPXM0NE7+I7QxpLB8KHIHkSqgvQtxG53D5F6WT?=
 =?us-ascii?Q?NohBAEK6ShqXEsLoSvbmy5hyY6FKrzfz8sHoscRY/cV6RqXjKkVSA1aq3IT+?=
 =?us-ascii?Q?3KrBpJ3sYh0fC7lMMlVuFjonO6jiLA0sOZByonHvFJyPzXyC/F4T5xqPEGST?=
 =?us-ascii?Q?cVTY7Kp1Y/+Vy2R1Kq/NjObHmpCRcguzwxPYxZeQXX+cxtcWCKp6G6cBq6jl?=
 =?us-ascii?Q?PeUL/EHhp01ay0Vb13lYnn0OQwiBl0/YcQAla6XP1zMthGcCWxB2WRsMXdW6?=
 =?us-ascii?Q?xRG07I2jgep9CfgWybg8XnIJBUI096dsUEwDGkDNYRSFkTv3HemGAWzSIlmr?=
 =?us-ascii?Q?z8Kp6O3BlHOTfCAFhZolyiu1Y/NXRWIfmDEsmE70hNwbql35W2RLkVCeTxRi?=
 =?us-ascii?Q?e/HpCnVVvTuztAM43bzVFjE2j/5y6+fB00Ko8N6eylZCIG5b+IKjAIs0FSoO?=
 =?us-ascii?Q?Tm9PTviRXEOGi0BV+/MkOnITOulIVZXfmAtnGBfD0jZe3TGonXktCP95Vgvs?=
 =?us-ascii?Q?2dCSLdolyPU5qXCqCGyEoH8h686LJLGKuNhc2UDUjMs7SUxeGqGHqCNHQAwv?=
 =?us-ascii?Q?sPL/mVgHa+Hfz8ygEiKmMkP+eu99IWvLv2aWaTk98Sumq35Hne1J1Z6/eLHv?=
 =?us-ascii?Q?a3Mp3iLIW441FPzOVqSKOJfBFZbnATIyRIb+b6D31KHdBTawrBmJwwgS0Jmy?=
 =?us-ascii?Q?x9hLq7IjZSswZhfCxVYUfyQx2iXNc8utthDjq5synV7LDNq0AwENlEvk6lS/?=
 =?us-ascii?Q?Ox/WYOTmde9rwQQ1U8TGk7Ho3DoG4gZcD/WPC8kYmZ3/Hc3fn0qs5d9jwQFQ?=
 =?us-ascii?Q?M4YQeiRQDe8PZoyn1biuQaWERw3CvF47lfVXdulOan6bVis6mnE26FCAwWVG?=
 =?us-ascii?Q?KV9a2FX0GaU6pGJc45GZF7XxWYMnFo0yURUPD1Q65ZIoLnPN3VdP0a39gtLs?=
 =?us-ascii?Q?PfVmDvdZ4jO1ctK+Hd+eUQwXrGCzpFTRHFGDRnSdfU0wiRiQ6uvAPxM84Niq?=
 =?us-ascii?Q?6kH56AKsdMCuSDfSQIHTZmawD2Ui/OMuyxVX2UnTauIIRqJaiklRW2cKAbHX?=
 =?us-ascii?Q?nRu4bP2lzh03Z7AKNJiBe2eUITK3Qzfk0K1LTY++1QoSPr2kebheEJwNKM8D?=
 =?us-ascii?Q?QGMvZTrxDesaBVjzKpv0VlwPcHm5AQWE7dH4dDKuAntZrbXkSjm3ErJZCVmY?=
 =?us-ascii?Q?8cBv3A8WieyyC92OvznXB3rSyPkHLRA9+MTWKmNQyAK6gzYs+cjtlwrl/HoK?=
 =?us-ascii?Q?Fbz2UsY97oAlydwVyETdOJsLxW16TlUNlV6eipV8W0esZriqDlN82wwa1VCs?=
 =?us-ascii?Q?gwwBXFSDIPb34g2LMW4/YmMWNL8VrlC/jnlXHwT/hIyhOpfA96GXCp5w0IPv?=
 =?us-ascii?Q?hlSBSJOc2+tLEnYAgQYmSgOSKLSS/wk=3D?=
X-Exchange-RoutingPolicyChecked: qhm83N18eie1SD1qtb2OqVR4v+swkPntO0RQKBupF7YeV7gsLF22UpJ7gJCf1z8lBDdiNF7OhqI3GsxIQ5jBrJgknie6NDnt5Tdj/+ua4CddewIk7rgFYLZxPaBEvx2cIW2XczJNUYJ31+fV/0EpW2RN+R0zfWBW6kqapUOvyU7OivTrwx6INqhE6Ovg73J2KhjaUB5NeKqnKji3rqysdDAZpninbHhPvnu5m32uGWwDyTX4zBP8PNEwYA0IUr7Kujg1EmCUr56SWGWHXSvLaC2llW5F8coRNnEAFIXQ/xPFg3SezzrnGc8tBfqmynmoDo2rVBZuoJlwLfohU66EKw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 982f2c71-1db4-43ef-9977-08de9ad05c9c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Apr 2026 09:21:23.2762 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ylw+U2/0LYTRPQjid6IiHm8tBkMQr3CxzNu9OCJgyYPycKdAtpeYZAL4WZl/S7XP+bGsWac5bI6z+yOLEcr/N76SkhBG3b9/TMWlqD9RUC8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8036
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E75C24027E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Migration testing in i915 assumes current task's address space
to allocate new userspace mapping and uses it without
registering real user for that address space in mm_struct.
On single NUMA node setups PCI probe executes in the same
context as userspace process calling the test (i915_selftest
from IGT), but when multiple nodes are available, the PCI code
puts probe into a kernel workqueue. This switches execution in
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
Fixes: 34b1c1c71d37 ("i915/selftest/igt_mmap: let mmap tests run in kthread")
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v2 (Janusz):
 * Reword and shorten commit message to be more precise.
 * Reorder variable declarations to follow upside down christmas
 tree style.

v3 (Andi):
 * Prevent PID and mm leaks.
 * Remove a flag and use mm pointer to determine whether to
 release references to the memory.

v4:
 * Revert !current->mm check. (Janusz, Sebastian)
 * Drop refernce to mm sooner. (Janusz)
 * Ensure kthread_use_mm did its job. (Janusz)

v5 (Janusz):
 * Remove missing PID warning.

v6:
 * Move mm handling to a separate function. (Andi)
 * Validate user provided PID. (Janusz)

 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 57 +++++++++++++++++++
 2 files changed, 58 insertions(+)

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
index 8460f0a70d04..90bd9fad39a3 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -181,11 +181,48 @@ __wait_gsc_huc_load_completed(struct drm_i915_private *i915)
 		pr_warn(DRIVER_NAME "Timed out waiting for huc load via GSC!\n");
 }
 
+static struct mm_struct *
+get_mm(int u_pid_nr)
+{
+	struct pid *u_pid = find_get_pid(u_pid_nr);
+	struct task_struct *task;
+	struct mm_struct *mm;
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
@@ -201,6 +238,21 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/**
+	 * If we are running in a kthread on a multi NUMA system and the user passed
+	 * a valid PID of a userspace task, then we may borrow its address space
+	 * to prepare a safe environment for the mmap selftests.
+	 */
+	if (!current->mm && u_pid_nr) {
+		mm = get_mm(u_pid_nr);
+		if (mm) {
+			kthread_use_mm(mm);
+			mmput_async(mm);
+			if (unlikely(!current->mm))
+				pr_warn("Could not set mm as current->mm\n");
+		}
+	}
+
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
@@ -226,6 +278,9 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (mm)
+		kthread_unuse_mm(mm);
+
 	return err;
 }
 
@@ -507,6 +562,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.43.0

