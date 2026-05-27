Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALIzONv6FmrwzwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:08:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4895E59B5
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 16:08:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 19C2C10E811;
	Wed, 27 May 2026 14:08:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sj89Dq+Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9D5F10E811
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 May 2026 14:08:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779890904; x=1811426904;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=zjBixYT+ynOi1RqnH0NoTIdgEcmc8+wKST8Yv1F0gBI=;
 b=Sj89Dq+QXtG9lu7UPUxvxGxrtRUubCWII7YJ27nwqoHEzcjjrYX3yDdx
 WVHCshhmT9JFOym0/n1gqGLA4e4I2GW073Q7v6DapeiJgyeEjZVRvxh/q
 H6kbfxIESkG51zOt3dvthJg+1qAjVLNe7H7QjABx5rcW6OV+JfUXANznw
 8q4wXZm7bWSs0MaR9NrW8rQ9fs2oJ4J41Kd1SpLmYT30ZytvMHRkij+7h
 stSotEyx8mIaOS+y5+PP/FCcjPpTmNtJsKcvvUkgeYPf8LjmRRmZVWbbo
 jeq3NoGNV/CSk59Wp1AbrpgIA3ffkNW3jVPFdvuLIl7tpOxT11P5sqwte w==;
X-CSE-ConnectionGUID: Mna62zSNTBuNenpKw/brHQ==
X-CSE-MsgGUID: fc/AWqqISNmfLlM4dZhxTg==
X-IronPort-AV: E=McAfee;i="6800,10657,11799"; a="84580820"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="84580820"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:08:23 -0700
X-CSE-ConnectionGUID: C24K4uheTy2o69rbuzmf9A==
X-CSE-MsgGUID: ZHxxjSXKSGeCjst6NsML0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="242407999"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 07:08:23 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 07:08:22 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 27 May 2026 07:08:22 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.16) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 27 May 2026 07:08:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Z4/RU6v6MjKxT9bP+fQ8ZB+DzAUnbbJR2ZpJ0iWuDZRLWJgzukuOoPDzaCjtHrk4JEkeK8pyFkqADBUMD4zKVRJq+qLo6fwEZQ+459IyMRYR7JGhn8wTFH+lfQoI36uoHv9bgvI4PEE4Nr4RvltLC+jKrp4csxPvnNGbqOwh6Y6+BjzJTZvuqO6vAMznF4o8Pb/xeH76InRemLX0W/4s2Mg62NnVpU/cD1cU6myirDWP3LByu39+o4LIrWcDYxvvFU6BwcqBWHi8AaBQggXjUkH9hZiGWNMD4TZUDFiXD8rEHkMC9aiW5/5+PndtfyNvv3lRMDExRUO0S7XOKs0Pbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aaghM0lTGDuaTIYxO3Gjnuzg6cPAj6jbyqK8HJNtxeI=;
 b=niWn09jIy2z8K+2MneHr6ymH/G4Z8oiD/ODxOFH763Q14HkBonKT/kLDGWm2fMuju1ewGgweQYhF0lMm9xXe69I3+0IltKpBeuRQCexQbHLZIgjzRdsGQmls7DJlF/60cs5kj/3qQR3LPF6wuzFinPjCtwqptV/e7XFrQt85e0vWdlMjQkb58iRrC2byOmIdu4YwKExW3rrGeX+5x/WcNDAlBA3vbJ6JtfNgYOquRHeE9nA2OAMeyJM3jnhgL30g/MRl3xzT/uXP1fmFSJE0HnBDwcR1AceqAft/NIcOrPXC8meLicrv12OBsYXOzDiXOCsZND2a6Fmx5IUez8IsmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA1PR11MB8795.namprd11.prod.outlook.com (2603:10b6:806:468::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.11; Wed, 27 May
 2026 14:08:17 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%5]) with mapi id 15.21.0071.011; Wed, 27 May 2026
 14:08:17 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC 2/2] drivers/iommu: Unroll unsuccessful mapping
Date: Wed, 27 May 2026 14:08:04 +0000
Message-ID: <20260527140804.2866189-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260527140804.2866189-1-krzysztof.karas@intel.com>
References: <20260527140804.2866189-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU7PR01CA0013.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:50f::8) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA1PR11MB8795:EE_
X-MS-Office365-Filtering-Correlation-Id: 6f12a5cd-7573-4a3e-2131-08debbf96669
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: +XAvyRODn6YFEqxJFWvkqa2qsMSOZbidxS1kJHvAJbd7ti9ENZMbxZzQ6cYPTZ3hOr3ruYeabZdS6VOOWNbIRikyd6Zw/CMoMnoSNohbUFiHYWNDssilIlxL4YDnuMubqTmwZ8klvq6spPHIEvRXohY3nrI/uJDRPKVxnwINBBAsoQAzCPrqxOe4MTGELfwqHPgujkI/5nBNW+NxqETm2Cmm6tsCz2ASrV7WO+6oFcTw79IR6VV98lx/XqD/KEQSIvr74PYfXWx0CdXdYuIlZopSiAVm69RPKMYO+qAp9fMoM7L4M5RvSmh9IcsgYouzygCAj5QUeYb8AEDOZ9n4KLogkvcNMxdrfaelE9MNPuDtatOcQIPieRMyeQziddaFuaYSuSEPZ7ssvP1eM2HvUACiAjUle1kM0H3qD6bNx/yb4L2LOlpCsdIKzwYyHFuak5hZj7YxldIASL3z6WvtVU8kt6/6kJH0dglX/uFGtaPIJYHAa2R35wbnD/wHc8O5PWIQ8F5nB27yB0Jj68UZCutZgXm10e98yiruvOyhiXGx48PPySsAKkjMJuwCsNS7U+pE08DM3RijO6bBvgjmnC70JabK7GtXim4e24BMHLFvNqIfJqk/ZRtvKYojRUkewEvNDXjg98twJmrCLzG9Z/TArH/lS0w/0uQ6ZQD4LJow3dZLvmeggIOs4j+B/44n
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/h1KwbTL5mbsLw9Dqsn4N0TP7WCnmDqbodvhRwOmfRDECEU5/ND5kqV4vPSf?=
 =?us-ascii?Q?2rNwCmi2h8BnCxH9TgOM4NQU4FSIAeCnsRUKvSvyy5IBNPENq1Cqyh5XrN27?=
 =?us-ascii?Q?WDDQx3cLvlXGqUhwB4JnEZZ789Pk+A+bHVCw8sPIOKbiRPLn4QQNwsvVzkHO?=
 =?us-ascii?Q?kYeK8nnc9PfYvemS7W+eg4lWjM/uF4N9IRK0Hqh6JMZ+49xazlr+NWbAIJ5A?=
 =?us-ascii?Q?uDzP/cOnvzeW/UmbNWx3SNQz4tN1GfhPS5J3wTq81rex5yOt6KtO2/R8Qdhn?=
 =?us-ascii?Q?K9pSCgYOYVLbIGnkazbN+amjXdYPRDPh67/iAR8KxpMrznTH4jiWpzxAwBat?=
 =?us-ascii?Q?NGRKe+6INa/5ODTCiPz/O0kGYX8p28Q/rMTiOcfVMxYPovC6MGs4hUQWlrLy?=
 =?us-ascii?Q?+Eg9UURcIi/+11fRQRsfFGgRxbwTHZm+yAaABUxYDYNt2PcAIqyUZBWno8je?=
 =?us-ascii?Q?QmLkXdbWLL1pMlYZm9ovrbrhk8ak6DQ0en20+3cY4W09g/z4frM4LpGfGPv8?=
 =?us-ascii?Q?fPGCa6xuvegs6TKnjTspapNhWxKBePSHPRVD9jkla+QnyPolE4tMZtVsmCkE?=
 =?us-ascii?Q?/AcIvh/Ya6BYvq/lz84hvc9Xzy6trlXPcYScstiRbbW2rrk6QiGUkZTSx/+W?=
 =?us-ascii?Q?FDiRolw08lW9qOhaFW6YrhovKZHfju1YaQZtc7Z1Nj3N9TZoNIrX/pZAt/VJ?=
 =?us-ascii?Q?lGtd2zbtDPhxezrnw/UpAH344H5k/N+afeKnEV0CffdXjtzS16u0CJZdcOZE?=
 =?us-ascii?Q?JOgPrHZI9o1d7O13yZaT4HKUqgQFoqkK8eoRpOGLMDKWC6KIx4CgbUSQk/kw?=
 =?us-ascii?Q?Sdnq/AhSZlavX5LKAUjpRVGxroCkm3VG/c11rZ4PZ7xqIZW0B8h9+7gg9GUy?=
 =?us-ascii?Q?xvyNfFpjMXsVpJ2oEO8v+yupLuj3i1rhmEQMlHR/8jW5YZ3wpNRxXjZUpa+q?=
 =?us-ascii?Q?kaVHxuDPf94oP9Settr6Q5Agnl0tfGsfhf11d+GUNQaLCmjP5zOi7/WaOL9k?=
 =?us-ascii?Q?jFJZoeB+uUjLnE95xiliXYnlV91qnkYRf/bsKx5DgWTeAO85SqDL+pFKLAzM?=
 =?us-ascii?Q?E1pYOKB1oRm/rf4+CgqsUKhXeR59KYDTcxLIpJJy0re5MwDhIre2EeT0bPI4?=
 =?us-ascii?Q?xhVazgwKkIniZwiVfMUFqpAr7uIdzaXzJLpXRHawOLxSQGKowTgFUAulUi1B?=
 =?us-ascii?Q?Ts5BCt244z7PTosBa/4QFokblPiXHDa/lzHD4mNrS7Y0bXBq22ZsnVa6PNf1?=
 =?us-ascii?Q?zAmsiKMBBZMI73Btoc1HUmjHbTMtjRReupp3qc7kFPJwhi/6a+r/qwKSVnTM?=
 =?us-ascii?Q?ujzX0hJo1SL19kTQJn1PnYYOnInxL3PTl/hwumV/smMlMwvDX8da6sW2EE2O?=
 =?us-ascii?Q?9ZRLgCKhrzotc3W1fe4A15mltL8nY8KxL/w/uMrXFCc1MIyfYx5PvKrZRNZb?=
 =?us-ascii?Q?TCEL/tS1TVjVHLEN6bT2xUrjeXUQ8Zz4p8gn1Z37B7ggejRG/mQoElYo/TGX?=
 =?us-ascii?Q?HY6F0iTQ5+f0EBPc+yxBCt4oqXun0M6Bh/8ztfys2tpGEWlF6riRiyk2FxY8?=
 =?us-ascii?Q?r3n+HJQffzCA9EHP6uAzQMTLAVVrRO5q+gfFej+K8uYvw0gt/7v5zET7kpDO?=
 =?us-ascii?Q?DWZGVoMGjGCCz+SwDTedEP2wudikJ/n8K1pGla/WVDwzD204r4Lg4hLxg1Y2?=
 =?us-ascii?Q?4Alh09Z17/ZFSYyn6RxL62KANuJMr+EW0i0XvHlrOJEFaNNfLqVH2+uHs6O2?=
 =?us-ascii?Q?UR3oozfRgxm1gpYtZHBgcVU9MfgKxZI=3D?=
X-Exchange-RoutingPolicyChecked: CDPj1i/5Nowy5heR9nPdvqVafTTB2CeMbylERepUoDUcUZyza9XS9GVkF9EIqSfw7JNbq9fKsAVlxmIJssU2NM45eAWzkPBYd1aB7ot9WJQi5qd6+mbBwyC8nG3sGon8Jk5wAwmsJDHxPyFAUmKuk7qlQHAWhK74Adi75HtbQSouE6fq06/o9U3VXjq9ErYJjcxMUqI30AHUd0UiFKl87bYF+rBam4U0hsHiY7nQQ8A2zRHN1K7e9B63tgferOOQeFV8x9WU3S/w2VJJeOxTQ0DaTX54q6EZm/LtFROY2yK8dX5Q8yoXK+Jr501vb4jVhm2ocWWbdBriZY1kFv2KUw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f12a5cd-7573-4a3e-2131-08debbf96669
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 14:08:17.4007 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +Q/Mc2mV3uC4xYx61c0//lHrjECAZSsmaq6F04svvbp2z3TcecnCGSHwOSXIu2ChD8bVBNThlShdCNMotm5IJtziCkWYJhgXs9M/agEWsOY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8795
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8E4895E59B5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Currently, if iommu maps fewer bytes than requested (iova_len),
it proceeds to free the iova, but never tries to unmap already
touched bytes. This behavior may cause memory hogging down the
line.

Correct that by unmapping before exiting.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/iommu/dma-iommu.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 54d96e847f16..64ac2bdfc574 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -1515,8 +1515,14 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 	 * implementation - it knows better than we do.
 	 */
 	ret = iommu_map_sg(domain, iova, sg, nents, prot, GFP_ATOMIC);
-	if (ret < 0 || ret < iova_len)
+	if (ret < 0 || ret < iova_len) {
+		if (ret > 0) {
+			/* Unmap partially mapped bytes before freeing IOVA */
+			if (iommu_unmap(domain, iova, ret) != ret)
+				ret = -EIO;
+		}
 		goto out_free_iova;
+	}
 
 	return __finalise_sg(dev, sg, nents, iova);
 
@@ -1525,7 +1531,7 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 out_restore_sg:
 	__invalidate_sg(sg, nents);
 out:
-	if (ret != -ENOMEM && ret != -EREMOTEIO)
+	if (ret != -ENOMEM && ret != -EREMOTEIO && ret != -EIO)
 		return -EINVAL;
 	return ret;
 }
-- 
2.34.1

