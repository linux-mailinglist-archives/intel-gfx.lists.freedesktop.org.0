Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AJN4HJBe12kCNAgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:08:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D61F53C77E4
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 10:08:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B6BEB10E75F;
	Thu,  9 Apr 2026 08:08:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N2qNW3uM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8306410E75F
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 08:08:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775722125; x=1807258125;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=mBmfzWsT29dZa+nvu/6Sz1GhqSCYazsOAS0AE8D5umE=;
 b=N2qNW3uMmdUxKJMlGGUtQbv63dJ7+gOxWTJVBujcgnki40dEULHMQ8zW
 YGLv+OtUGvJd3qYBEhdVaAi7fwWP0kJdNLn2tKN03qd9Cvq3GnU/jzqWS
 dgnWs+1W9igQyDiXFuXGMwfg25nM3I/tOGHHAdongYoDyZRUMrZxqG7Mc
 9wO16lvusHq9IA3TD/GsPbgXxrIK21TzFW0kCPEJrgQYpkEy9Cbj+MbxX
 inixejF17CWf1oh9A097Krxeob7uBLH7Rc/EX5w21KPhbsZNvoY8djgMx
 NP4b8rQ/f/DYxURboyEsVqgENsB1hC7ldD31LdYLBFJ/bc3TFoTbBbLSw w==;
X-CSE-ConnectionGUID: VSrz5YcpQHqKT9RclEtWtQ==
X-CSE-MsgGUID: +bjjXknCSUCHGYB0/RwR0w==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="80314049"
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="80314049"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:08:45 -0700
X-CSE-ConnectionGUID: Munt/0ACSrC06lpU+7D8GQ==
X-CSE-MsgGUID: Y97PtfiATn6fdHV/NfJafA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,169,1770624000"; d="scan'208";a="252030024"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Apr 2026 01:08:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:08:43 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 9 Apr 2026 01:08:43 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 9 Apr 2026 01:08:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k8xiKohupJ/jL0gtsvNwQryxFNDnLKbW9UFn5aRFHDzfIf762Chcl19LdAxE8jwwsgXqyXvrEsKcpAlWJC/GGzgXSOnIyzjsGf1FuheR2FBkGbCb4D4FReN6jWBZViSb6TjyhASvrx256ro1Hzftc8Vk/Fr01QhnuYNeWOehNjDD7cPj0T1gTStY5q06Jbssl37s8xg/pLD41V9G+x8R8ihlvebHUt96vJ2e+r0qDKzGvM+usnBr/1eknSCmH1IgTU0KQhTPfyN/0+NZvB2UymaQXnh2rc9uv2fbTEPTKtsGUQrRqsE/ZFCoBrI8BjSTwJE5EnpDmf8lwFrNkvkt3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A6R3uwWxA91Ctj38VUyBrhVPEW1WC9OAX6vP0/lDWLk=;
 b=cfoSNqJstszD9p3HuTp85hULY2UgYvymMdcWYQbJIQVhL2WFGepq4xa3DBRtUK1bbyNk1izi+JyieZDFRa+rdrDAyBPMJ43aqKxfDP4np9YdQ9iWUosjIpnTtjaOPvYAzhb8WSbYNYSjRP6Yjh1Jm1CDCjOs35GOZ2Y7jqSROBdBGUurlwYIGTetbWRkC2rk2EbJYgRnJJk/27B8StUFn4L5n2ExAO0+Q1ndqqcN7BerW+NdNuXYbnKbbB8OBovkxqyji+jqANhx8mJ38mRoKHCw3uzHayhn/qNpOEM+k4EiHAVhWsXhiNG/uJE7YjUlK6/GTANRmvwUfZCloV1RgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA0PR11MB7186.namprd11.prod.outlook.com (2603:10b6:208:442::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.15; Thu, 9 Apr
 2026 08:08:40 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Thu, 9 Apr 2026
 08:08:39 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v5 1/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Thu, 9 Apr 2026 08:08:24 +0000
Message-ID: <20260409080825.2191535-2-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260409080825.2191535-1-krzysztof.karas@intel.com>
References: <20260409080825.2191535-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0001.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA0PR11MB7186:EE_
X-MS-Office365-Filtering-Correlation-Id: 5d2b93ff-8071-4193-386c-08de960f3562
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: tF1UFKJGYgmQ2VGHCwhnyuuDqqdoa/ihNxCwdkFObhKq2R6d9vI+oLxbTJRCFEAFyWFCA2yA6RtmBjTWva0lyfkOeOO0T5KARJExKltTfNceUwQqSmltzFzFtTVCvtC2TVMN9/IWSj0PmdGSy7VYET86wNgKPCrC51A3CiU4/hTYD9ETz57lDztpU11CA/zD/py5suz0mmfR/TUCPcEzuSe9V89pWW2Nfr/910aiAF2igEHRivoIPcOKfqxXGvoZMEcGDbtB1uX6EgF+ER8Bddn/dNJsMDdeN9tHcxsVfpk2GDCFRGVwkUZ9Ffl6A+RlxR8y8zFdB7p06aysv/qEBcZs5sa7ZMd3klaWRAMlYPpKDjBlmNYd5Bs3gd728wzijhP0cAT5CFAEylT5gYi+sz4oMj4Ak5K3bsMV5QhtCrVK7Lji+onHiWhh6Frq/3WiUVx7QmrTk6L16xCKFSt3fO0oKKwwwlUgovKjDEw8Sb97CTLquRg3SkNI/46p0ByNfZPkg2GwKs39ang3Ia0CbyUYnCdqHJTAWG10yiSkDWjVxeKG/dqBo9/a99K00/xKmQQyliCRYHUjGNbjcDElR3ombpQ9GeowRU0AYh5C5DAxmZA+oFkVv1vCJRhBIb0GA6wqwSYu2HMFL7L3tW7ctiaW5ArxxWlsIcV3K/UKKd9cIfxNGWwL1HIdSZeVPY4u
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LuUeiQtwhMNKWLwqndwDRTMWZ2Z5VmUKiRMNi5TSvSgQqRZpagQdHcpZfJm7?=
 =?us-ascii?Q?0tf2E2BYvS6Nc4mdVrjbnKfqOFOkl+KAcZB9XqCpTv5V7uKlkjNTbRsDMylc?=
 =?us-ascii?Q?mSTMyv0vgTbdKnAl8QGFj6AUM31vsQGuK7n/O14v32dByIeO7SaT3uMHLWAM?=
 =?us-ascii?Q?zVbFzFDoD8G47ly0af46Z19h7y1e5MLtOA/2dvp/3uErKhGgTx4p/qziucxx?=
 =?us-ascii?Q?USRHHkYySRoklHD3ynEQ1DiO8LignIfjgma3VjNC7SrOTA6BLCjJOO2d9f/H?=
 =?us-ascii?Q?4xn9wQ4jK01bXiT3JplviX2hVuTpdfye/fO/OukMm+IIAI82+faWf5+NRgd8?=
 =?us-ascii?Q?mMoqyxoyaDvJ4GYCghyroWsE7bI7phxas6B5OhCMEP1Oqf3t78UurZsu8ROK?=
 =?us-ascii?Q?59zNIAjneMPZGa7MF76CA/X2mlaeQd74ESiF/LlXzVba1NXbqALY9lXt36j5?=
 =?us-ascii?Q?6JPMg4GtRizUKUQGDq62WdP0/8U/hPbuWoKx9TTgFkVLsPZ8E+fwkl+8fXrW?=
 =?us-ascii?Q?Vfox5y0Bd0LR27VvqrY1elucN0iEnoDnf6o1kdr/spIwi00wIGedKClhxqC6?=
 =?us-ascii?Q?d86/GcdbItiZFStL6HnRWREdFvORb0Sqfpks2RtFNhKkx0m0CQFt7fXSWXon?=
 =?us-ascii?Q?MOG7RM9JecogUyD33pGKuELnv40RI0/l5bgEOGdHeXT9QIzvEz1bnx9rG838?=
 =?us-ascii?Q?2NOWNo4QUuypaDWBjVUkBLQA3A/+zBU07TaGFz0Ww8GTLZQmzAiaefFdoirC?=
 =?us-ascii?Q?DBsnhfJgpc5LTnYXlFsKrYKyUmzTAQ/Rma/dlb8yPwxRtejzq487N1w1mi9w?=
 =?us-ascii?Q?ZUfNsDMS1UJx6ePRl6PHqz2aTOCPoTN1gv2eEaebMFE25942rHXzaP3SEnum?=
 =?us-ascii?Q?To7ea7L6Abp13GN5i71yd/kDaAamEBBLqzcyqs7Go1ZE9LqeyCvueRhYK4yv?=
 =?us-ascii?Q?cv+YNzzGMdt12XSfRDO/trE9YsHENlf6+XYTFObuduiOkI1bBZPCNQCJoGCN?=
 =?us-ascii?Q?PgJzv5ndL0yosHbYbF3GUjFKpoS0tsegltFuLk65/K6swcRO5VC1+uL2e8Nu?=
 =?us-ascii?Q?WrZTBs4dD6eddQtTRo0uBBOJ0cHeAdi6gf5gdhSsWLjIVNxCNBLZGieB3D2r?=
 =?us-ascii?Q?Qo4OdVU3Ptq3ZDGt7NgrbnqbFMy4DjYfxUkp2IIAQBnxLTMYE0sMy5cspNGz?=
 =?us-ascii?Q?3OdeokkGVnl4mEVXuMRLquyZK53zqM9WmXhBDi8SopJQgsZKvOGE731AcPK4?=
 =?us-ascii?Q?iXIrsHpzEYGqhTB7tY1WvFJc05ozZzfZKhBnpaJas/H+2iE73bnuQ30+BkaA?=
 =?us-ascii?Q?NovNXrHMbCM15axFlIWFsPLmDRrVIx18SdrPxwtido0qP7ZAYSwS8xzaeo6b?=
 =?us-ascii?Q?qJuhatN7A0nGE7tK3tvFobIEyVDdHbA786/vWMqtMlT0bEc5+T5aTsGg9bf/?=
 =?us-ascii?Q?gg6GhVFVPoyn1r0gQ/d7vYvJs9tN7lFsxKsjzEZoZgaJdAv7A0aXfpzy8kIp?=
 =?us-ascii?Q?le/94pYmSKkXm8V9yXmRCYD8gYQViLRZlxQWnbiOq2a7URk9iXYw8ufjwv1Q?=
 =?us-ascii?Q?eKq/OlgIZRbJMg/xhS3lA/XXNl3XXSEYy8BUcTQkRjiLIKrqUl3KEM+MXag6?=
 =?us-ascii?Q?8JC1Sr5ohFMhj/hGE1unk1p0PEUhMVBTmcJTjtK/P9etvAKSA28SwyqnQC66?=
 =?us-ascii?Q?7QBGyHF/f9HCPOEFAMltiHHLO9mFr8ZRiI0u1MD9IXRT+Zf2CXnI6vgFVBv9?=
 =?us-ascii?Q?+Hn6pb2lE7T9rl54ZcH+7tNlpIgMfnE=3D?=
X-Exchange-RoutingPolicyChecked: ME6Zi67jJPzpAwrjrEUnbgnCyP04x7HmCO1YNy5L9GSPy5ZZZMANgqY7G+GU8H9OuU7nbEzKvmGJ00fR9N/RX7Fy+kb/8E86E70k3e/ZM3+yFegerCLGIA/V/MLuwpcdXiIMsO2VK01ZLj2HzcMPZ48sUowvG2CwVMtdF6lcF4C6tmi4S7OVs99zLDtjyDHZ2GRyC4j5ak9LjpQLkxvFIQcz7ZE1YrAejNKEJYzC2ZtPc+cWqE5GeuDVW9jfm8vIMTZy5O31nbVh9YH4UWjxez3WD3eOWqHbJf0wa/phppfYkPJ2kOovLXM1M+HKuJzu9NaaEmTcF3Gc4rZaXoa8uQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d2b93ff-8071-4193-386c-08de960f3562
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Apr 2026 08:08:39.9056 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KFR+o1/TwxcboGefzjepnWt4NuqlZSGnm7EQOf90TD+xyXHUU8traA8YTtkex7ofZKZLRr6ZcyGzIAx/43GsU+RFznWd0VPFBEZhChFv0O0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7186
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid,gitlab.freedesktop.org:url];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D61F53C77E4
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

 drivers/gpu/drm/i915/i915_selftest.h          |  1 +
 .../gpu/drm/i915/selftests/i915_selftest.c    | 43 +++++++++++++++++++
 2 files changed, 44 insertions(+)

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
index 8460f0a70d04..2c169148c053 100644
--- a/drivers/gpu/drm/i915/selftests/i915_selftest.c
+++ b/drivers/gpu/drm/i915/selftests/i915_selftest.c
@@ -186,6 +186,8 @@ static int __run_selftests(const char *name,
 			   unsigned int count,
 			   void *data)
 {
+	int u_pid_nr = i915_selftest.userspace_pid;
+	struct mm_struct *mm = NULL;
 	int err = 0;
 
 	while (!i915_selftest.random_seed)
@@ -201,6 +203,42 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/**
+	 * If we are running in a kthread on a multi NUMA system and the user passed
+	 * a valid PID of a userspace task, then we may borrow its address space
+	 * to prepare a safe environment for the mmap selftests.
+	 */
+	if (!current->mm) {
+		struct pid *u_pid = find_get_pid(u_pid_nr);
+		struct task_struct *task;
+
+		if (!u_pid) {
+			pr_warn("Could not find PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		task = get_pid_task(u_pid, PIDTYPE_PID);
+		put_pid(u_pid);
+		if (!task) {
+			pr_warn("Could not find userspace task for PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		mm = get_task_mm(task);
+		put_task_struct(task);
+		if (!mm) {
+			pr_warn("Could not find address space of task with PID: %d\n", u_pid_nr);
+			goto run_tests;
+		}
+
+		kthread_use_mm(mm);
+		mmput_async(mm);
+		if (unlikely(!current->mm)) {
+			pr_warn("Could not set mm as current->mm\n");
+		}
+	}
+
+run_tests:
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
@@ -226,6 +264,9 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (mm)
+		kthread_unuse_mm(mm);
+
 	return err;
 }
 
@@ -507,6 +548,8 @@ void igt_hexdump(const void *buf, size_t len)
 module_param_named(st_random_seed, i915_selftest.random_seed, uint, 0400);
 module_param_named(st_timeout, i915_selftest.timeout_ms, uint, 0400);
 module_param_named(st_filter, i915_selftest.filter, charp, 0400);
+module_param_named(st_userspace_pid, i915_selftest.userspace_pid, uint, 0400);
+MODULE_PARM_DESC(st_userspace_pid, "For usage in tests that map userspace memory and require address space with controllable lifetime.");
 
 module_param_named_unsafe(mock_selftests, i915_selftest.mock, int, 0400);
 MODULE_PARM_DESC(mock_selftests, "Run selftests before loading, using mock hardware (0:disabled [default], 1:run tests then load driver, -1:run tests then leave dummy module)");
-- 
2.34.1

