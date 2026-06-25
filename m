Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Gts7JCCNPWoN4AgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 22:18:40 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1796C879B
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Jun 2026 22:18:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=mQpd2Tl+;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF71C10E278;
	Thu, 25 Jun 2026 20:18:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD15810E278
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Jun 2026 20:18:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782418716; x=1813954716;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Vc3F47wSbkbWjoXfTRfRNmpbmJ1126VCLv17VgmoRRQ=;
 b=mQpd2Tl+84HGtx3/v41TQX1GsWqm6E+FHuT3yjtCvX56oPjCzHLl5hsf
 B5EyTn8LMkcIRda+oV4yPMo2FgEpyjqls/d3/SbW7z1iIqhMXARJuJfzl
 gMap0t1fljDMzLS/jCzgtrncX5EX7eXAmBCXNlAflg5RkKycC4yc/dPop
 F72epU3JrOox8/PNhWZWUzMBmpBi60N6CfTcjjV4Hk88S3gqUXxhZC7jm
 aeFsu5lxWjlgLWMNl31CkyYechnyuCioaVZwkFrpY7ibmOYqQg3F4LZ+m
 gZY67EGoWfL4SGaQIAf+f/bj+qq+65Qi2Ale9Hmchb6kw/x5S3FpNxRPG A==;
X-CSE-ConnectionGUID: LEyw7H1kSdy92hREN36+iQ==
X-CSE-MsgGUID: +ceuiV30RpCvyUOqonuLYA==
X-IronPort-AV: E=McAfee;i="6800,10657,11828"; a="83401443"
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="83401443"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 13:18:33 -0700
X-CSE-ConnectionGUID: NtFWN+XjS8C5VOWbxhbsKA==
X-CSE-MsgGUID: gsfoCR5ySo+tQBoQ7++laA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,225,1774335600"; d="scan'208";a="255041631"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 13:18:33 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 13:18:32 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 13:18:32 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.34) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 13:18:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZBC3JNY33eZAzgnfrI38ZGgVU0RiDgVGSYBbH9CHRQ9IiHkCDQTRa8m1L5HrxPn3pqLtkqM6PK/KR+d4aUP98+bNX/kWiIZ8ohh4IaynuskBBB+82Ho8w+Ch3sBfGcxF1jGcf6+dKW0Pha2goT6kcQDkK14b077kapS3EDqGBZyJCPrrGc/MdoiXM0X7zUE2HeeqkaNiYNvjZ9ba209dj0rPA99Gd3CYVi0GY+8bgjjbBKlgztKpgCqf86uJQXY8jd32Qi5Te8EW0stJBz4AJnLz3Rrt0B0pghj/jtta4SEilclEeJfdJgLuxoq9Z6kFD5K9AhLmm6keW7Ki6rVsJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7YLChXboUiQe/I8PCGm71n19S4nNXRniQ5pr+UIsnS4=;
 b=XFzdUKjGN93USpdI+IwSLFgsri0IpTFIxe+0aprR8NRGbfjjFybAWXtHvONWaf+avPm8tbIlj+RhuUzS8d6+asX98iRxh3gmCxc0YiZJtuliAvily02dIXldXPOXTtgFO/ZWRQ6gnsHsZYhDm12KFo3JUtpiKk14Fi48tK7Ii5mjCZTN1b2pysCQFmcwo5qnlVY3KKh06DBLlXt+j1vAa3Z4BSjuQz4Pj3H4vVsn/DC+W8Rg11bfGDs9uosXCRPoRfHyQRSvB8jmPLg5KOKr3EMgSRHtXxYVn7zYD3nxxMsZy1CWpT+kHune1VedQRC9Mpmge3jOONVXKVR9l6uIiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CO1PR11MB5122.namprd11.prod.outlook.com (2603:10b6:303:95::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Thu, 25 Jun
 2026 20:18:29 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::7b65:81e6:c6c4:449e%4]) with mapi id 15.21.0159.015; Thu, 25 Jun 2026
 20:18:29 +0000
Date: Thu, 25 Jun 2026 13:18:26 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
CC: Jia Yao <jia.yao@intel.com>, <intel-gfx@lists.freedesktop.org>, "Shuicheng
 Lin" <shuicheng.lin@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Maciej Plewka" <maciej.plewka@intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>
Subject: Re: [PATCH v7] drm/i915/dg2: Add per-context control for
 Wa_22013059131
Message-ID: <20260625201826.GQ6214@mdroper-desk1.amr.corp.intel.com>
References: <20260623221521.1183124-1-jia.yao@intel.com>
 <178239111512.123473.311792859568377409@jlahtine-mobl>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <178239111512.123473.311792859568377409@jlahtine-mobl>
X-ClientProxiedBy: SJ0PR05CA0086.namprd05.prod.outlook.com
 (2603:10b6:a03:332::31) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CO1PR11MB5122:EE_
X-MS-Office365-Filtering-Correlation-Id: 3c90fe93-ad29-4a44-5555-08ded2f6ebb3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|1800799024|23010399003|366016|22082099003|18002099003|56012099006|4143699003|11063799006;
X-Microsoft-Antispam-Message-Info: A/+Xv+1dyFQr8xtSnoBs4GU+GWc96VQrbIvszhT/MuYJt1ZpQb072Au8nDg6mzxnD20ZqJh2e5myyP9RkqgmyLp2mbqwosde38v8ld75v83Sk4B774yIMIn5gibzxjwxWKHWajR8SSV6KHeLZe/xiAWb7vUnRRiOC+5DQ1oxiKlvKjq7BmDQCXTGrBgODAEKGcQWP3RG95fMn8iMcIPOt3OuNh2zxyAkIsNIO9qOjffVZhxR7qmPDm9l91li+2cNXm+ryjlDuWkS1c5Ea92BHjby9UUH8Gn2ZBRNHqFa5maqIlVsLM5Cx+lw/wPFm5Hzm/jQSKkazt/3bysrim4y5IbA4YTvC4LDIpuchnFFCSsaYTRx00mLHIJuICSlUtHl/EnzCS1kKcNKNGxCmMowAZRNeaL/guygf5xIb4F+vvZEMrAhfCKlt09cMeZeIW4OMiXBVLTIXVea7TMkjgsc49cEgEJD99orBZPU6BttbWblIpawFMGcNzsoyWxTnpYbCNMld0eJ10t6Y0VnGcHBb91YOZQuq31mHMkphsdrSdB3m32lSkJi19jhE6PlGpjwvQAibU4s32LHNFG/wGQTVoOV3A9p8O1STFt5hCm+qI/HUy334fyjVqcguzjyOjOYhgS4E00RAxHCE3fKYF+gRhC7R3SAjGVdBU6S45kX2sk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(23010399003)(366016)(22082099003)(18002099003)(56012099006)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?RMUFbMOgrcwEKsREYAevnubX+yx1GsK/bQlizKIaaOsA/cnHIaQy5G3p9QxZ?=
 =?us-ascii?Q?RXbIpGPE/mb1iNyO9XO2cgd3MbRFVfumFHNuk4EQzrcZgBKc9SDs7KWHkHDQ?=
 =?us-ascii?Q?ai61zv/PzXPmoa+WC7kvUVyRShaoqbJo1sjikcpCgHXc3Vh2ZcSsJk2mmxOB?=
 =?us-ascii?Q?XW01CC9iNBudVHL9z+gu2iRt9mI/yrTcLVYS8oaiyx9gcSlWfV1Dylw1xp6R?=
 =?us-ascii?Q?/NG1eVd4EIQklAiGMtU3T1PHaw1TIviB5q1GSGocsQWB+VtFJIU3fNQcATfs?=
 =?us-ascii?Q?/qWg59GXXjaGTO7Mmw6OBt1aP8lnokCyejVjkzlajOzDTOxX4BMbF7MeZb5p?=
 =?us-ascii?Q?X0jHj9EPB1lyrkqPhUte1kDjX+ER95ggKfjN0Szqx7HLCE2MVBVRxWyIx1gW?=
 =?us-ascii?Q?3nOIBGIB2wVpaQNRFbnQvPrWBqFOVwdWXxztS4TYvKYFPnnmz1LQEENC1u2+?=
 =?us-ascii?Q?GMFQIrlEdotGC/3jLHqjXqAHwNiQFfltNwDqs/q8jiSH7Mtjmo2PlO+mFDG/?=
 =?us-ascii?Q?czOzNUF+YyAt3XehZytNVbFW5LDto18xX6YRR72uPelbFCL48L4+AHE/je99?=
 =?us-ascii?Q?vgdSXltBZdUIA1F2IcqxtEBuy7YSW0OrPJOnIlVgbfMMLJRs2SEld0ghjAxi?=
 =?us-ascii?Q?722xeZ0xXT1kadNo1TCZlwZ1neXyeuAmZdO7ch5njEC5EQO4ikfIr1MnQbFY?=
 =?us-ascii?Q?/E2PYIlFkOdlIdVMmCOp26T14eSy69km0sXHksymsXmpNKCy69dETF8GYwko?=
 =?us-ascii?Q?d51cbuB0qrdhuFAxuT7iN+ewPHmQpOZS7K1QGYBOamWK30fjhHRE7wv/sFIS?=
 =?us-ascii?Q?j6Z0NqPO0xn9FZzJnHLyiK8zGgXny51CqCmkVn1LahJSfvDme5jucNINf21+?=
 =?us-ascii?Q?9R2QB6izda4PEXxbcuPmns9Rcv+2GrBR1VLTEwptrZOXQNclWhNJFEVIY3+u?=
 =?us-ascii?Q?85RdhSyTDLGtPsjrm5FLydxUPfY/DQquYUDhn9dT1u+nv0yoX76gQXcM7YNE?=
 =?us-ascii?Q?Bdg6aKg9O7eL1rp0693FZWZ3Mr50mEviMjoYdlrWkSUsKE2Dmcdq5gAdrYg6?=
 =?us-ascii?Q?ikp0ys+jFOmcbANGspZZ1fT1BykZ8M9ZbtHkBPqeij1zyqA66iPcKVDce/GN?=
 =?us-ascii?Q?CbuYtSNFKtFhsbRlKV1SlJQuXXrBuKoktSa55Efyg3/CFC3DtSoxxLVyGVcs?=
 =?us-ascii?Q?vzVJ2dWjjFyyOzy8K04gumek6IxJvisnoRM15jYaaAXS7yun9yiO2ElFpDIN?=
 =?us-ascii?Q?VMWKnsuG9EsnRjgeNnZxwppHZteIndEoEIudNpLpACIm+HXs+n9Kc/4cgXJZ?=
 =?us-ascii?Q?LRRSWzOaI1SZ0nRlgBYAMQ/Xwi5R2hLrqwRKhRd7E9ItEo7C/Km3Xmt5vGIE?=
 =?us-ascii?Q?epOQEemLQkYfGkztHmJetE8+m/lU5YX2yeycZxoNRm12m9bdMdv9lR8rDw+3?=
 =?us-ascii?Q?RoaD9gPCeQZISBGLhW2QC1M7Im7DZ8pqp6XmH/7Gq2i548ksUr9Sme4+5Cxj?=
 =?us-ascii?Q?D9STb8F++2K8wDJ2QtjUr5MdbBhU/ArwaaScrDDKpIVGgouRheLU4fAovFUw?=
 =?us-ascii?Q?lIqxm4UKhXo+t4+BKcD/KJ1cs7oPEVNop5CfkAdauQHr3M2RoXSOAdlT934B?=
 =?us-ascii?Q?AdhrRMf0DMP7zYvNJroYPQ9SeG1nnGEPj1xf5Toh4bTsEfG7xDqe11WFrvxz?=
 =?us-ascii?Q?CWArv/BsHU5OEWVR16uiK8QadZdqSDz6HXhuJG/sbcKzH7SCxd1JiF3cS60q?=
 =?us-ascii?Q?7wVJBsK/yiEmYAmqoqdLVbemyj1eLR4=3D?=
X-Exchange-RoutingPolicyChecked: Aro5B05fpIMLnzIvgsoyd3HgnSzk6L9PbWz8NcgHjIXAF/ldV8vWZJhnDsjl81MYruEZl4RHwwA4MC5VSFPclhPUuxVXvWq8iF2jDGG5czHFiL3yx7IitXw6PsVvtZew2G+NireCp/wyEB7JbsnCRSxOVkqvlV/H48SS1VnjO/a/4Y6bHQCH4WbTnjz4J/XfsdSec5R3Wzz9GIx32LbCGsqTQpv5LNeG7FOCv8wN8Wr/S7VNLOP/qZvCI4NP8cld85cSixO4lURCYC/ME90JBQOQQR5Jgiz41yJfkHk5F/jaZHJ/20JtLg/I27QtFPPV/+S1wpDj4plXf+4EjN+zqg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c90fe93-ad29-4a44-5555-08ded2f6ebb3
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Jun 2026 20:18:29.3210 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A4HOJzMc4zPMIy2DeaNuLYJxom6nFKlfNLHaOB1OCjQBUxabrrOhAqAsIoezfT+aLstdV9Y/LkhWuo3qn5wasHd3pmyrH20u+/076m8fKuk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5122
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:jia.yao@intel.com,m:shuicheng.lin@intel.com,m:rodrigo.vivi@intel.com,m:maciej.plewka@intel.com,m:andi.shyti@linux.intel.com,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_SENDER(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[matthew.d.roper@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EE1796C879B

On Thu, Jun 25, 2026 at 03:38:35PM +0300, Joonas Lahtinen wrote:
> Being uAPI patch, probably should keep dri-devel in the Cc. That'd also
> pull in Sashiko for review.
> 
> Quoting Jia Yao (2026-06-24 01:15:21)
> > Wa_22013059131 sets FORCE_1_SUB_MESSAGE_PER_FRAGMENT in LSC_CHICKEN_BIT_0
> > at engine init, but this is known to cause GPU hangs in certain workloads.
> > Add I915_CONTEXT_PARAM_WA_22013059131 so userspace that handles the
> > workaround itself (e.g. by limiting SLM size) can set it to 1 to let the
> > kernel know bit 15 programming is not needed for that context.
> > 
> > LSC_CHICKEN_BIT_0 is not context-saved by hardware, so the kernel restores
> > the correct value on every context switch via the indirect context
> > batchbuffer to avoid leaking state between contexts. The old unconditional
> > application of Wa22013059131 in intel_workarounds.c is removed.
> > 
> > v7:
> > - Reject ioctl with -ENODEV on non-DG2-G11 platforms
> > 
> > v6:
> > - Remove excessive blank lines
> > 
> > v5:
> > - Remove fix and stable
> > 
> > v4:
> > - Add a link of the userspace using this API
> > 
> > v3:
> > - Kernel-internal context will not change workaround settings
> > 
> > Bspec: 54833
> > Link: https://github.com/intel/compute-runtime/pull/919
> > Cc: Shuicheng Lin <shuicheng.lin@intel.com>
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Cc: Maciej Plewka <maciej.plewka@intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Signed-off-by: Jia Yao <jia.yao@intel.com>
> > Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
> 
> It's good practice to either ask for refresh or amend "# v2" here I
> think, given Matt has not commented on the latest versions.

The latest version looks good to me as well, so feel free to keep my r-b
as-is in this case.

> 
> <SNIP>
> 
> > +++ b/include/uapi/drm/i915_drm.h
> > @@ -2172,6 +2172,16 @@ struct drm_i915_gem_context_param {
> >   * Note that this is a debug API not available on production kernel builds.
> >   */
> >  #define I915_CONTEXT_PARAM_CONTEXT_IMAGE       0xf
> > +
> > +/*
> > + * I915_CONTEXT_PARAM_WA_22013059131:
> > + *
> > + * Default value 0 means the kernel programs Wa_22013059131 for this context.
> > + * Set to 1 to inform the kernel that userspace is taking responsibility for
> > + * applying the preferred workaround implementation, so the kernel programming
> > + * of LSC_CHICKEN_BIT_0 bit 15 is not needed for this context. DG2-G11 only.
> > + */
> > +#define I915_CONTEXT_PARAM_WA_22013059131      0x10
> 
> I see we dropped the "half" terminology based on Matt's review comments.
> 
> There's still one part of the 22013059131 that remains to be implemented
> by KMD, LSC_CHICKEN_BIT_0_UDW, only LSC_CHICKEN_BIT_0 is omitted.
> 
> Thus, I'm not entirely sold on the description here.

Do you have suggestions on better wording that would be more clear? It's
unfortunately a somewhat confusing workaround to begin with due to
having multiple parts, plus different options for handling just one
of those parts (either in the kernel driver or userspace driver).

I didn't like "half" in the original version because I took it to mean
"half" of the userspace/kernel options for that part of the workaround.
But I guess if it refers to the parts rather than the options within one
part then it does make sense from that perspective.  So if you want to
go back to the earlier "half" terminology, that's fine with me too; I
don't have strong feelings about it.

Thanks.


Matt

> 
> Regards, Joonas

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
