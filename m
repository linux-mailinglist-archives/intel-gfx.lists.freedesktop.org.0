Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lenIIjQzRWpa8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3951E6EF48B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=cenXxB6P;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D8410EFA5;
	Wed,  1 Jul 2026 15:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3349610EF57;
 Wed,  1 Jul 2026 15:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919985; x=1814455985;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=v/LZYYzW+YyBIfdhNq1m6hiOSOtAhdva1002BTM4cVo=;
 b=cenXxB6PX134kqrEO+tuBdusy0cVvbYZcb4Ut7RQ20TSBTeSohSWOLp6
 2wSbc4Dwh6ihHHQsWE/RwwuP/NP3NONSCWOhj+b3GZ4cJO3vfzK9qwyVu
 bfK+yEV+jTxC8aMhciOcyNeN0QSgeqlJZ2uZJ7PYnbuAsgqvB92LVbIC/
 OaPNkB0yS1xNhtIQGlt+6ompLg8C3WlPvbMAyQnhk+aavgk1oKQC2/DV0
 d+80Krh6mKq1/gGGTZ1JH8YkpJ8tUiDC4EspsiuUmBiShDNmbY8WNbv5p
 vq8jM8Yeza4HTiaw8z881Si/KtpoVyA1+I0Wpwuo9Ru4oCyOfT8Yo5OES A==;
X-CSE-ConnectionGUID: 0rhdk1igQQ26WLki5HHPBQ==
X-CSE-MsgGUID: i3Tnk8q8T3GZ10FZZ/C6XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310107"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310107"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:05 -0700
X-CSE-ConnectionGUID: ejN++WXSTWSoRrGMkx4Elg==
X-CSE-MsgGUID: T6SCqKytTQmS9uQqvTvaJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515643"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:33:05 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:33:04 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:33:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vy+stF4c2pVm4yEWCoij+N2mI8u85pBK2DGs1IjwFlN/u0BDo4qO67+1Rt4WKVuqsdV28XYylN9HXMINf0ZE56C90PlIpd7aNtbMqdZvAw33U8Hhx8L1f9+4uovbE752uh2xO2lfVa/FzgZgFO0ZyMGIkyqpHJIxoIvVL5nGfEtC+0o8WJFKFw/LjqnYNekbbVp7Oc4H2RTH75ItNmEcY9UoXkW6a0x1oaLQXXbAYAxo4U7+8QzNG2+Im0nvdV3BMFdbx1icimfLxfPuRxfW+VAnMT4xkBKl3J2BxH73lCXefSQ3f5zW/w+XPQQAScQyQAzPl6SI7xMUA9ZVka4inA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1EOmCKwK/EwWexAh2r84VHOSgQ8mehNOpyhJ02j/C7s=;
 b=yYzv5Zln1DvfdZ1ff+W4pK/JAXJVIA3XZ+J/PfcEQ87ZbzR0Sgey3NYJjCrRaPnpDYCbkkD4irkI1XOY2v2jXJL8kOI/tw4eiyXfoZrJYRmz1gndp4E2sDjhEi6LqWQKGor3FNkclQJ6nqyUsrTF3jVWvOy47wDX0QEcz4Te0krhui+06kDM7tABj7rvIMQ8HQHQUNXKskNvO67yE+IanWhQWB6tLv34EV70R6MDQKXYROv1XZZrVYMQKDKQYg4k3CZl/vmcqkpLXF4ijHrWBOgorg0D0hM6plGL1taKoGcOx0ZsWd9/S1cyKRPIu8xeSjBEJ+jwQTbEXexbT/+yEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:01 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:01 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 19/34] drm/i915/dp: Use link caps for eDP DSC config
 selection
Date: Wed, 1 Jul 2026 18:31:48 +0300
Message-ID: <20260701153204.4124150-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: 1598d855-a662-4674-e7c3-08ded78608fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|3023799007|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: z4L4KUbIp9eiVWgQSXdL8lAfWNlRSVzSe3J4S74xw7VTeun/MvT0S/rRuWe0ZyNEwhISvvYWYZvTdsSCSBK0COz9vPcMvHaaI0Oa/Luu+dMPaR4vzqQdDaN8TFxtqCQEi3RHhoAdMIr1BxCgqTjacB7u00YOUKuR1bwt7KEJufIWihNuc3/fvwLATBvWuBSEH3KvnLOg3Q9wiBk09QDl3mCsVYBYh7YVwqUCLEd+y0Q9SEwBP8VEjUbZf41vn4sM0ut7CqcOrk3AQfA9igchiWwJ1vBjMdcsY8D225PYXO9NshE4nSPdjrSHrSCgVowW0kAZ3N1LQzmErrqJGAXFB3Qk3wN83mn7tFL4GgF+Pem9GSDvXFhoXBR/YQUfe0XNs6IKldybDuLAdOSBJnGLhflDSpYStdXfQ5vOe8bn9ASuVoKEi0SZAo/LZyDWeTiOX0b5Pzo15mkMyvejnZqTjIHjeBqOHW6yOUA8Mc9D7OnGf9K6rFysZo5oxeCWegjTcs2XfDcipjnC/TSardpNA4kYlL76Bpac5k27k4iYjtKrku8Suw5cVNGc/9yWi9igfDJT46xU6+bbvX7ipwTFrFmmMSgCUpH/ApL3TmknOy9bHyrsBqSpWURLhNS6JXhDJRHJrEBV7S1BcJVfFPeVs+6Thq5vbYC7lAILAB0u/K4=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(3023799007)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/87fmURZKUuQ4V13f6vjHLm2w7DwmWF4sO0UFFo7ggrsnr8USgkwen7OyM0E?=
 =?us-ascii?Q?HAFdzJ408LSdhKL8o3OXkP2W90bO8O0KyWkntNb+W65+2IVPgNJgybLExSXp?=
 =?us-ascii?Q?bEe8rGl9I5+oBUNJzONXhOF2bxXlDqRd2r+Zh9N9MGStbtXuT7BrUyWZKfnX?=
 =?us-ascii?Q?B9Jwfho4335eq2uRJFr4RCO+FFtXrRl42L4vPlSIQaKavQ32wEPcNPsM2vmo?=
 =?us-ascii?Q?XWsrnZf9M45dJnJ/5C+OACr94xwpEWJVSsph9k+zKW7MKphVlbGhSMoJe8H8?=
 =?us-ascii?Q?XX5TdQkGxHZ00ZTdtIILeyZwQIOWetI4MmLz5OidzyBORLrirWCFkNqn1LVs?=
 =?us-ascii?Q?WjBhK12hyH4V5lcxJY3LCcpVIgPy6okOoVx3rWzjh2XcwdK8bcPP977M//18?=
 =?us-ascii?Q?9aVOO+0UdOY7EMXzdqtviD7WjU6aIQhJhssAslLKpwZAcO9i9FqLZEenQqXN?=
 =?us-ascii?Q?85hfJS/Vlh2qbtbHfgFGmCq2/2MZ7WCnNXvlTO19yjTTovyODoO+sAqTs2yN?=
 =?us-ascii?Q?UNqn1wLvLSWPPub5WTPs+qtsiXaz2sNEsc2+9PRDpvnBL9CDohywxzM+nr4v?=
 =?us-ascii?Q?l+GckR9qc6x56Z76Q+4YlugfMG2TukSsToFPNOU2sihY/a50Dw/2s0zQw2V4?=
 =?us-ascii?Q?xNQajlrol8j73IUBgiZcMuM+zD5WGaP6N5j3ZjG3x1Xi1I2EVCRED0Bu8gW3?=
 =?us-ascii?Q?tf4EOnm2OxP3i71MkJO/O1tEIlzkOU1vZV93ucd21QMveShY4TUF1lpZwjoD?=
 =?us-ascii?Q?lNFZTfXk5RHod5dmRo0ki4Q4rwx1A6mfM/g5TZkIooGDtc88XPIQpcQQ5zlH?=
 =?us-ascii?Q?ozzdsefjITnUdUabNW5kL5xS48GdGE8w94umbUbpfonsKZY8x8odP2F5qSKn?=
 =?us-ascii?Q?v+FBGLfIDSoKk8ZT86YfAzDZZgggXi3f2c1gRghs1O7DIcXBfnueqiQOJaou?=
 =?us-ascii?Q?ZeFAnyPH8hnizxO6ElE67YMtIdLguxj9x7HOtVqCXgcrOz//9CBrOkzJriZZ?=
 =?us-ascii?Q?qP2zcmueLL5z/gZJkLZAM1CLx71FmWuD0sjPuJpsOZCqXA4nO5HUEP/lQ3rc?=
 =?us-ascii?Q?Vxp8xwS6JmveUwfNDyKehvIjM5ub9YZIYNlFT3rb53TioHEbc1rBu4HJVQtX?=
 =?us-ascii?Q?+vnaSU6VEs2qkijNuhIOq21n/vp8gO6SAfM5he2Lv8NoKQemwYujZbb+lh/3?=
 =?us-ascii?Q?lkPwbtpgu5aKSrUJU6IzaA+HeiOY9pLhutrYnNXMbwSQW7He9rSXyS4JEERa?=
 =?us-ascii?Q?w7PmWIRIenhFIRWgu3547XFibJDsCrTC9coxuRiLz6FXAweTLT6X0fEpn0Uq?=
 =?us-ascii?Q?3IEB5vL7q2wQnx0Uf0TtR8DPdSEC01MAs9bRDBDLqcGhe9V8ceRZylhbpxDD?=
 =?us-ascii?Q?hDBJUC/CcJkZFn5DItfxHMGyPH29CtPmY7GduKkI383aWRgt/uh7s29NZtJb?=
 =?us-ascii?Q?Jup9U52CdhkFVRDEQ3hqS3QewIKkHgvCmp4yfMSXt8B9yALgqQdRjuIUYsYO?=
 =?us-ascii?Q?pmPowv2qmOihMwfgE+dQm3F0ntBqbVO0R6NBIYbEQyYIxAyrtXxyeXM1o3h3?=
 =?us-ascii?Q?Tu6sMl5QuQcieMhWstBQVFjLuMeBG7IGCX+2Ml6sI5I6TALBXx7UjAmG/zpm?=
 =?us-ascii?Q?2IH66JxZd6OJQezzrzlMULzaQLpwn9ufva+19pPDOGIQekAoRs04QXH/pC/i?=
 =?us-ascii?Q?MKpP0UWYJwG+zFFlcFSkHw21oAHFrQBUD6UcjRbtto6F4LqjZ3SS4OCELy8t?=
 =?us-ascii?Q?uwFTcDaj9Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: FxZ8exa3L16NVkNl/uaE294n7z6AwTb1dA9Djbg3Rx/dlTQZ7tlpPzyp3C/YZlQ+65xfMTD85F9JbB6QDv7KY7CrBGZRgQC/kjs8dG0NFOz8yjJHUH3SsvinbbK5KJJ3xtXmsBYVPPDRQlUeX6VLUN6cXZCp6zJFK38hZOTI6Q3YKMP7w2eAQgiv4VbBo0M679Q8B4Sk0Zm71JQ6LHH5y2WZ3QWHk5gCHQOQ62UJUHPAzcp3p3rNB3wX/WMHMAVHOoCjSoqJZ4M3p6b1x/WHfWC1RJ4/vPIEZzwIveL2Mz1YuhfbIFDr1I9vIEg4e2KVNAdYy2u1fdAaXuC/ZmhUqw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1598d855-a662-4674-e7c3-08ded78608fb
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:01.1054 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OkdOPhQf4qvIWs/5mATKoMdq1bJ5naQqd5NPV8qNRnqKG7g1Uw91tjXJWWsE+68zrj7m6B+QPtkCVSTaOp7S5w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3951E6EF48B

Use the link caps helper to select the maximum eDP link configuration
for DSC computation, instead of using the separate max rate and lane
count limits, which may not form a valid configuration after individual
configs are disabled by fallback.

This is a step towards unifying configuration selection and iteration
across connector types and between compute and fallback paths.

The state computation should likely consider all allowed configurations,
as noted in the code comment; for now keep the existing eDP DSC behavior
of selecting the maximum configuration determined by the eDP connector
rate / lane config iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 ++++++++++++++---
 1 file changed, 14 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c6920afb50902..79e3334d24332 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -2248,7 +2248,7 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 				      int pipe_bpp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
-	const struct intel_connector *connector = to_intel_connector(conn_state->connector);
+	struct intel_connector *connector = to_intel_connector(conn_state->connector);
 	int min_bpp_x16, max_bpp_x16, bpp_step_x16;
 	int bpp_x16;
 	int ret;
@@ -2260,8 +2260,19 @@ static int dsc_compute_compressed_bpp(struct intel_dp *intel_dp,
 	max_bpp_x16 = align_max_compressed_bpp_x16(connector, pipe_config->output_format,
 						   pipe_bpp, max_bpp_x16);
 	if (intel_dp_is_edp(intel_dp)) {
-		pipe_config->port_clock = limits->max_rate;
-		pipe_config->lane_count = limits->max_lane_count;
+		struct intel_dp_link_config max_link_config;
+
+		/*
+		 * FIXME: Clarify why eDP does not use the regular SST BW
+		 * check and instead always uses the maximum link config,
+		 * regardless of intel_dp::use_max_params. Then unify this eDP
+		 * path with the regular DP path.
+		 */
+		if (!intel_dp_get_connector_max_link_config(connector, limits, &max_link_config))
+			return -EINVAL;
+
+		pipe_config->port_clock = max_link_config.rate;
+		pipe_config->lane_count = max_link_config.lane_count;
 
 		pipe_config->dsc.compressed_bpp_x16 = max_bpp_x16;
 
-- 
2.49.1

