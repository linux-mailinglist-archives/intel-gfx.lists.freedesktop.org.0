Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ID6bM+SBz2mwwwYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 11:01:24 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BF453927D3
	for <lists+intel-gfx@lfdr.de>; Fri, 03 Apr 2026 11:01:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AA3210F456;
	Fri,  3 Apr 2026 09:01:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E47mbMP4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BE6110F453
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Apr 2026 09:01:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775206881; x=1806742881;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=fR3AiXpxHcvSq1HOExMot1G0dFP6ZKhIksMlOiOQcVQ=;
 b=E47mbMP4nmZ6VXTjeo/qXGmqG9Y+dgXsFYXKa+ERCR9lIZ9SK3ozEatI
 m/TQxPhQ86kfb474YKcwGrjWZ504TmPdoK2e6g4lqgXEoExGIAuf85XmQ
 h6kd51GcllpUAJqHVgoG4TVkdduoxGqynh/4fG9XZlmGO/28lRlzD+mbY
 JXeqnuZWzLFwE5ipwl9UEHCfYUYZ5tuxq9liuptFYIjRJUZnfB5oo4KXW
 ngLm5lkqcdJN74zetr8Dbo/9UX7iUK9U6sE6UWb+NlneXdIGeettVe5Iw
 6wZnRTfLhaPK/GS68d+3IbvfSGSm1qwD0wqkv0tMgfWltrtlOF7xhEQfB w==;
X-CSE-ConnectionGUID: kmdZW9DfRIO38yLM/RQrBw==
X-CSE-MsgGUID: AL//Y6kjQxuqQC13i+IfnQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11747"; a="75313228"
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="75313228"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 02:01:20 -0700
X-CSE-ConnectionGUID: gF497cp5TLaM8TeAaGC6RQ==
X-CSE-MsgGUID: ZpV14LH0SwimnJOY2T3tpA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,157,1770624000"; d="scan'208";a="250291514"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2026 02:01:20 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 02:01:19 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 3 Apr 2026 02:01:19 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 3 Apr 2026 02:01:16 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WisH1ZuFfQl6w+Y987KL9oFzO9Zo6R+bDwLHnnl1G+05ZXG+SREt6dcCA9mgcBcYwhWI4/Rd/RfVqT4xD7M/BgB1AA+KbCfvS+wZ36YWVJ5BOUjdJlA2CtGzGK7f0AnlJg98glcSggNqURgTh/uRbVspBLSwUIBMSMSMKHj9mtbzr6eUENqYY+MSdWZg85s2XzxcaGr3zLMdJCTP3LgEiIGUHkTGgrE081wHEFzXDyV1Fa/f7NnjP9syNxqv28m+ajRqGVUt/BZDD1EZPKuo+nUqNuY2CXEzHV3jCP3rsE9qe7jNYBQ8MW9aIDTKcOQdz2wURvDGgH51VePgAtNYCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bBqKMfM8TkAGthn1HD92EnY/1vmxHn9w1TMYMSmk/P4=;
 b=ThjT1fITrbzfDs3goyiK/z2kbITJwHusAzdCEHuEVoAER8WBd6slERQIa7uyFKjwwtFH4ElPa/h36X0X1fBomEoj0fAPrwH1mDpVNyvT2CkXvS5EUceXcQoJO75tgB0bz6hwd8bezR6neiRUG6sGV0WqAE7jwBgFhqKZxK2o6DXPJCNFd23Mpkv0/MR1letPsOBnGz46fewCu6nmSK75myr5MMcUmP0rSh6PzKekcCG4RN/kLFJiafZiw1x0HeGhaaiJ5ViplhvtZdWWsoIFb2G/wpvEmHBF/nkXY6LAaM6AdWtw8x98eJH08y7eCc4qF0FUodkjYN0YvrUZv718Ug==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by IA1PR11MB8802.namprd11.prod.outlook.com (2603:10b6:208:598::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Fri, 3 Apr
 2026 09:00:35 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9769.018; Fri, 3 Apr 2026
 09:00:35 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>
Subject: [RFC v3 2/2] drm/i915/selftests: Prevent userspace mapping
 invalidation
Date: Fri, 3 Apr 2026 09:00:19 +0000
Message-ID: <20260403090019.1933036-3-krzysztof.karas@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260403090019.1933036-1-krzysztof.karas@intel.com>
References: <20260403090019.1933036-1-krzysztof.karas@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: TL0P290CA0008.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|IA1PR11MB8802:EE_
X-MS-Office365-Filtering-Correlation-Id: b96d0bbc-c5d1-401d-4fa6-08de915f77fe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|22082099003|56012099003|18002099003; 
X-Microsoft-Antispam-Message-Info: Mqo+CgQSW4PY+gSqhW/IQJmm4pUGGGKg37ySH9Xm54hTsgfMwQky7l3m8pYCKhmJ07fJG9gBuNB6IGl0Ux5ojr2PRJEL5JthTEl+tyimoILxhl3KyDz6u7sViK0SWRXhqhTFkal+wu0TM2K3fKhw3FxHP1qudl2uhINSQ7UeK4RLpmhVIy/8Zz3m8wYAvGX0siNofoRyeF9QQ4RVITCpHfREiNSjJJGzG4QwydwhswGEvDcaQtGlTkSfZVmxqblmEgA7hw0DasMujEQ8Bz+mggfcjBI7NtcDgToRKR04CKvpvvzILAmscDIAy9w/Kut/rKt1mpwbLTEexeJSeX4zecd+v2t/D6btJbmVvoON8kECeCk9fANIUeyTiileAap+p4t7fXhtu7O+q2DRhZeazD4DUXZy29cRHi2w7vAetZbxelCm5sEQQaxKnrSS54/nOJ/AbrJ/grn7Dt82WRxEUXY11KrszE2BrH22S4+6aO+1aNBHh+dGfRQlhAD45tn7RA2ktxxNCaJqyKagPE3JmySNWdoeIq4AYC8ak9pEC83vXfNUSHbYZtF3qhaWM9IOfa54S/8gfX40UP2zId2imCzGhbv9z8p+qA5M0q6ZThZd1rlJ6YpSFZ87qlOWY5xEJviSEMu1Ic7P3aVk5BQ8/LgOvFZDvYXrzNc0be39FXgSbvjkjBjjvXbBzYSYkn5Q
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(22082099003)(56012099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?m1KAhXrPxCvko4QZ1fxEsdi4HHYvhleuyCwN4AeoR5ESQwnSEcj56kHiZO1T?=
 =?us-ascii?Q?VwdJJHSNiBSZG62/cvirnxj6YoduRgFtu1u5osdKchCksjwyftSj8E8F72kA?=
 =?us-ascii?Q?4PxwFxglLuKP14GIpTwEnzn+gPUU3RC0AFp1JVFPTNDiEGoweg6A8Dlsp5xm?=
 =?us-ascii?Q?pMBZy8ZeWv8PulqJk55ZKWyU2NZ8Yj2X2XLixg820w6wgRpse0nwu1Ej0pz0?=
 =?us-ascii?Q?CfS4LFdjai03qTMXWfZSoBaGIi1bwz0TSk6eQbYz17E2uZdHfO+CVzdsqeDY?=
 =?us-ascii?Q?RyuqaCEUeqowQ/AHAuSpNuVoKzmTfVl8STXY3gUR0xVor3C07hmbWHeuATj7?=
 =?us-ascii?Q?FUbsEaNbY2nU+eCabm0O4Yj9hgoeyEbYzoTg51I5N4BdTOvw4UWYPv4YHa+9?=
 =?us-ascii?Q?qv0hEicu28NXSkBK6eEUSZHNWvOhmhP2qY5wSO+n9+PoE4PyypdCro7+5prq?=
 =?us-ascii?Q?usNxm9cFakFJtCV6hC8nYi5qnPwuASR5LzptWdZfExmRXgDHCT5gYTJgljix?=
 =?us-ascii?Q?1+LMWmkxPLk9wRElCytb1hfOB8eAW/BblO21CtGKhgNMo/qHnAPqQhAy97EM?=
 =?us-ascii?Q?Rq/2Q4ur4JeY9VmX0qKFqwaV7tjiLD2MlSc5Y9CtGk3lRRFsal83YVOTkR4b?=
 =?us-ascii?Q?RNow1y1rEwQDpv78RQaILOJr3ULQJYg6T0S+r+MAJjwDwuAW0nx6Zpz58IVf?=
 =?us-ascii?Q?cmi4cwbLl4uspwKD4rEhx8PATmtAQSUQtM0h/GtRE7J7ktWbCU5dtRbweBA7?=
 =?us-ascii?Q?PDzgkt10xJervKqE6oj+1KghUX1B48E7LSIvRn+e9M9FXombPeeADYhkn40D?=
 =?us-ascii?Q?C49I5hTq0eLrQY7syed8MDVDQNdTp/7Z9ahMQPZoRkdGfqg5p/iZzcFswzjy?=
 =?us-ascii?Q?Ayj/VBbEOhTGrYR8AsD0y/M742PkLpUajaI9GOA414kjpMO+K0Jf1t6MjrJ3?=
 =?us-ascii?Q?ofG5RhoG0iDwhC6BvtgmA/cr3dTA+jVTEbsvKpdUTg9iyjh8OZiLaU+eTpwr?=
 =?us-ascii?Q?iNia3i8jtqx1H38BfoZpASUjD1bgxvBZrUoFPHsRA9XWDmOsQzRSMQvilvtI?=
 =?us-ascii?Q?tMBUjQEeJlBoxAS+fsiHlrBKPOrkDrG0xqWEOMX6tYH1kJpjNsDHE64aHk5r?=
 =?us-ascii?Q?LHU8X2PdE3jEM/ixgS/xm6pdF9QiRD7YlF2ggGHMlJlY3Ee0aXmmFBFCKIW8?=
 =?us-ascii?Q?tZFs2F+jQCw1i7iBQKyo76HWletEm98EXAL6DTLgQ81f53dTRt2ANbrqieFV?=
 =?us-ascii?Q?6WEmhMfAgMJjeV/281XKSAmWxqSJECf8fFBz31DC0dLC/AG2elYOTIMmYh3g?=
 =?us-ascii?Q?JqvV8pAeFq0+K2zZXguVMbcsMbBqqRL9X85YZYO5+Qq08ja12VBi8R+9RbO9?=
 =?us-ascii?Q?CBWsYXx1Wf0XIlrjE3WUHfIAnszQIEWluIN4AkVWTwfxUI1NJsiUGHI4wqk/?=
 =?us-ascii?Q?vMo4jilQz4iiPD7VNRuyZUM2x6UdxD9FXsg37zv3peIiK2ORYU8hk7PmsAZy?=
 =?us-ascii?Q?lWIjkt/fR4vtK3Pnmr0fELgfPe5/458UzleBKBYkjSjG6gYF10qLP+iRpOYr?=
 =?us-ascii?Q?cTXIi9EZdl1n069r4ARAqiGwN9WKhVfyFIDwcwaUIQFLrQKGMjYWaoed9oj0?=
 =?us-ascii?Q?6tyPbH29sB2j3elm5+iiSaTNG961d0QzKb9VVj292BkTTvy6Kb4HVyx0xbX9?=
 =?us-ascii?Q?MDi3rUF9ulj/H0P+8KXEteQnAZGAFmuAhQ12/SbWKyPFAHTILaxoMW4qObA+?=
 =?us-ascii?Q?VZLn8TtWisJ4IQinW5RvlydY92gdcv8=3D?=
X-Exchange-RoutingPolicyChecked: PWK1Uf4spPBrgtUFRsuA1kLyLUAw+z9xECfiTeK5noSIwdsFgjyLkgpo65aAHdPjxtLue9i6mrey2WbpIeXzgnpkS6XDyLKz4hLY+iS0jHkUz0FVVR81GFKXPvKeZ4I3aGTF/T6oH6EC0L9kE10fhk4QCxQYSoLSVbNubqCvdtewLXEN88aZWWv5S/jN8avWC4tlyFKxoFqBAUO403vT/iZoFe3+EPUtDXYpVzU+LG7LbzaA3suCCOg3oOzT71x6WiaD/5Ssmf7HDFbABvKoTOh0+bRk+y/KuUu/kmAhZI+meugr0tnK0yxWYO/G2YB3ym3W3Rm/81zl6cyXcpnaeQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: b96d0bbc-c5d1-401d-4fa6-08de915f77fe
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Apr 2026 09:00:35.6370 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9iyDRQqU85hVAqKyun4LxWA/7a6f1H5Yn/zpV67XprptZcke+LMZNnvozvdiwDcaSTgMdtMvGI5GcgYIeZ3E1k93cV0Ec5mT4wr3Z0XhTmU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8802
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0BF453927D3
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

Prevent this by making use of trusted task's mm via
user-provided PID if needed.

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

 .../drm/i915/gem/selftests/i915_gem_mman.c    | 14 +++----
 .../gpu/drm/i915/selftests/i915_selftest.c    | 38 +++++++++++++++++++
 2 files changed, 44 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
index 9d454d0b46f2..0752e758b01b 100644
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
@@ -1859,15 +1860,12 @@ int i915_gem_mman_live_selftests(struct drm_i915_private *i915)
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
 
 	return ret;
 }
diff --git a/drivers/gpu/drm/i915/selftests/i915_selftest.c b/drivers/gpu/drm/i915/selftests/i915_selftest.c
index a1ccfde7380a..b6cd1063c709 100644
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
@@ -201,6 +203,37 @@ static int __run_selftests(const char *name,
 	pr_info(DRIVER_NAME ": Performing %s selftests with st_random_seed=0x%x st_timeout=%u\n",
 		name, i915_selftest.random_seed, i915_selftest.timeout_ms);
 
+	/**
+	 * If the user passed a valid PID of a userspace task, then we may borrow
+	 * its address space to prepare a safe environment for the mmap selftests.
+	 */
+	if (u_pid_nr) {
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
+	}
+
+run_tests:
 	/* Tests are listed in order in i915_*_selftests.h */
 	for (; count--; st++) {
 		if (!st->enabled)
@@ -226,6 +259,11 @@ static int __run_selftests(const char *name,
 		 st->name, err))
 		err = -1;
 
+	if (mm) {
+		mmput_async(mm);
+		kthread_unuse_mm(mm);
+	}
+
 	return err;
 }
 
-- 
2.43.0

