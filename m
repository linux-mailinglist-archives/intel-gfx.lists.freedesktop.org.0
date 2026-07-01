Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RpPSMygzRWpR8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D76C6EF466
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ia4gXWqQ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B9FBA10ECAF;
	Wed,  1 Jul 2026 15:32:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F0F910ED9D;
 Wed,  1 Jul 2026 15:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919974; x=1814455974;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=vAvrC4fN8gWOjeTaXt6JllFsRYwMp/S3TfnQdiYqLAo=;
 b=ia4gXWqQj8fUr7pjjTgl39kb9WGO3pgdyODYX3ybB4s6Diz9iWcP/WEJ
 L+nQ3O5FdPrs368Fv7Wpj8VhszBm5Eh/jR7BgQZx3eYrMhLdso+MeGGrf
 Z7YfsT8wijEkNZJK3+yA5YN/JrOofeBgtW1mih72m3yDvs057mbDwBVEx
 WtlE0Nm0qSnV8VJOp+0mQdZN7ncL1Nh6W/DsJ2ZGRzNS47TAY9kK4DapQ
 8F291uEZFDfUPHHntFqScCCAd15lKsIHNxK6xw1NrAoHrEogfVYqeM0QG
 c+TNTo22TJqR1YGghI83pwixIj3EIP7ZmDZo2+I2HdCbOGJgAEk4izh4K A==;
X-CSE-ConnectionGUID: yKviDbMLQe696opyUQM2fA==
X-CSE-MsgGUID: zGwuvHtkTeOtBPn2b3ifPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310080"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310080"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:54 -0700
X-CSE-ConnectionGUID: YzorB6byR5GJlwMwRBVonQ==
X-CSE-MsgGUID: u+caVINpQzqIY0H1jn+J+g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515602"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:53 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:53 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.70) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=p3jXZD78AcolpHCXxcXC0TllpycCTUveXGNd0YD4VLYkGyx3N7xG6IwE4Rwjy2rwf8MzxdyZ9ZYYITxCVFpp5XPg6+sh62CWuNeEwdMp7o8Pq0cjCIWzLEciEMNIW7Gi3h2oaUukAiBRXJQuhU9pal1D7lOaMaqRQw4bWpuFP8CdpqjfKrgPPPbQxnSuJ6XpL4K5e6JqIM8hY841/sXC6QhUrYWc1xOtW2cAI5Sh52XGg+tvC1I779MXTjFpCKxVfvXeTnwO36U/75h1q+F8Lv3OJmwGsQ1sDag3akMSlFsqePloT+d2cjomxMp9EaQ+xss8SOP1YyaLe1oo8L4zpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yR+FvqKNRizajeFHWNanC6Kkcg1tPrYOb7aDygxcXds=;
 b=yoODVCc72egTblGB88FhWKCi7VDCQ/gVMqISzaO8b5ZfqZ6sxImHbCpZDS+lja4h54q2iAx67vvuq5t3VYUIGotc3ec1SBewYOyAsLqnlAHBQL6N9GRufJIsbtneeWMKB3f+/DfYknY0l3oRoFx8r/iRAL1rZgET+WKwvgUZ4U2MO6xcp7Tor8eZRuHEgyDLAH6cKb4aa2tvVCxlWOTcu+5wYP+aizdxLfdVuNE/a7F9JqDgRhg4k30ZbO5Uqwjn46SBJCWxMkxvuCqWQuMsPV4EHIzF7BlmqKz70v0BdU1pUOOBNIF/FElQGp1NbHbqokfcK81C2aJFBqqE8LogmQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:51 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:51 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 11/34] drm/i915/dp_link_caps: Add debugfs entry showing
 allowed configurations
Date: Wed, 1 Jul 2026 18:31:40 +0300
Message-ID: <20260701153204.4124150-12-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 80453783-4c22-42e7-6a79-08ded78602eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: qocWUjlgpcXUwY2OmLe+aL9SL1cT5Olm0okfkOBZ6lPl+PWiOORtsgP1gvvM5a1e/WlC7y16QLbz85Us6YN/8PWzkmPMBBIP76FSd8agwF1onieH6QPX0Opg8qOZAkvQR0yGIJbSTbBynaAm6c1Gtdu83Qgj1egeXNFNVOx3vuFhp04/Cj9rGdjZfSn9ix1T6l2tazZ5dt05VMYH6ZBi/33Oguz0IaFf0A37qZdxnwhn6ww3vAtV7+P/J+Y86GNxncekWFMY9UbGIBJAfp+AW8aZpjq5N3TeeZtYIEa9h+Djija9Domybs/Cs9aPoeVgNzBmpP1z0kw6mWKXStFZc/X7rRHtQ0wnzfsnabd+Job688hQ0JODmJpNGpTs5iGR0i6UPpPbtVL4Rhp7mnoLFsIWsS1t/NU8si2cTQJ88nxkVu2Y1OeRHurnWd0RZVBGccV3egLnBHE6pxUJQnweLV+E0P4CYDZUVk8kSWldr0NtgPR/IXMjl8H6DV8gFUKdbHUw3r8nu/LawvVUnQdbKpghRLV1gPYCtpmFnmQXpNQ/1AI6SFQmVfymtxP67O8TZSaGGFC6ZqLKyRHZAAPFYiIjVRwf4NJ9aGA+kJkmAWse0NP7Bk+kofedgVwyy7iq0pP6fyJdDcrcdJXT96VE/I4vHAhl0QLuPL5UZt+MzcM=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PBiCKmVuJ3Dhk+33VobsXuqvcJ6Gct7/PgM8QSty4oW38kHOiccGBzyktba3?=
 =?us-ascii?Q?9UkWktlEWUCEYRtvyETxR8TSRzjtYpvJXUXjDq2P8k8wWjc+iCtSLwCeFtDN?=
 =?us-ascii?Q?kXeY8zS4g92gCz2GPRM0sGDWcA1Ox28Kya5KaXCYpcCXSOKo0WkfFeYkvH+5?=
 =?us-ascii?Q?VW8LPHkLTP8QSMX/7ZTAUrib6lice4ZBscZRRzbTX9a/6aR2s4skcwwWcwcS?=
 =?us-ascii?Q?qqxg0+uaeDnFsg73+Q8uuZ3flqKUV+tGW3L9ZdsNrjbgsDwojJ3jZQctR+9h?=
 =?us-ascii?Q?XVCm3vVsGcFmyA/i+7T4j+/kWZSJ8YLsy6IVwCGSOpgDzK5zrrMLtEnjhC3x?=
 =?us-ascii?Q?RPUywEC1aB0Ap4UFNl27OL70hqdUQ/kBJAMt5IJ9TPRMGAc0XUj/FK56nlbI?=
 =?us-ascii?Q?bcAb6ZCrpRDVUGWow707uQmQaLrXgFl7vs0WpfMLusF3eDgSMliXRgHE18VV?=
 =?us-ascii?Q?jsJ6iF8SgbeFV4cus/sLZamN8zbnYBNIrdVHmG1tau8Y54O6F/GL85aNdoU8?=
 =?us-ascii?Q?+qo+cIe4CNfPcVNNOcNIi8LuEHcRJaH5RfX13AAmZt9edkx+eH4pMv88MNkR?=
 =?us-ascii?Q?2KX8sn0SZVzUDTwZIrj2wIC0UaaHmlQ+BF+zz1gm1ucbL+4MK8KiKi1XSHzN?=
 =?us-ascii?Q?A5xV85xn2elVCicDz1XFnuSuYZe2lRnV3+YzjhAwuV4YelKSLYCRaas4vCeN?=
 =?us-ascii?Q?5S2Cjp3tdHB3dt/W4ASs7vIrOCrSwcKxAClIZwOs0/2wY5SYhBxsIhx0YCrp?=
 =?us-ascii?Q?FVA1YNTn/rUfVhP3Ur402aq7zyXglVcNRoc1NYVP5nVMxw830ssyU0lOhKjU?=
 =?us-ascii?Q?tXYnNCVqUEaqm9Z6CJ1fXuaxt3JSzM1eNlpU9SeYOYTZqS5eAUC2HUrAvJ0R?=
 =?us-ascii?Q?5NzG8MviqOlPDGe02X0SQt7mEFGZEnYaODs4fXwgYFUr2D0Tfq2svfonTvZ7?=
 =?us-ascii?Q?i8bxw4CEhBLfEB8+FD73iubuakN1wmqloqSZXgUPX8PCvXQmlfa0MbtQXu0d?=
 =?us-ascii?Q?6ht0bIF9i7rXpeLFeCw0IZPpFveXu9D6oOAedGAzD0nZx8Enp7VmKH8qUEXl?=
 =?us-ascii?Q?cgjCJuFPfemJi6eXLRtlNzZseT5+P81x0/h9BrdLyR3yrMeAfGrkx2RqiXe/?=
 =?us-ascii?Q?WXZ3tSry65xM34DSfsSVkoAFr0zCTRdZKC++iMTjfCypPiavM0+tJkec/qao?=
 =?us-ascii?Q?3Pyqs0tvzfoc+28RkzmjTHeux8Wu82IHWF0eY2h+bT/u7nBsySkCSR0nnwjK?=
 =?us-ascii?Q?wVsqN5MciuOEzmfED0qeznfOniUzAcHr2tsD610hhmjat2HjO8iIWKdzc2HD?=
 =?us-ascii?Q?JCbC+rjFrSGdPx5YHEHSFU4U+4RFc5lIfL9j5qgxvS3pr8Hq35bme/56WRLy?=
 =?us-ascii?Q?D0QqW2zSwGU8x4XeMPNP99gGwByHmyEkBANgtyDGb9kcjkdERqHnI35HadMh?=
 =?us-ascii?Q?57s+Qs36Bxph7ViJlMHU6aTGkslP+TMzGNWe22hFrucSbyFR+Mi9PRklqS2o?=
 =?us-ascii?Q?IueFkR5OxZiPTj87HE5s0nWKHo1p5q9SEp7MFtqdABSplgLWfT5BD3RRWOpR?=
 =?us-ascii?Q?Hx9igfRyiyaFESi4CzwBHDOs2x1g01hlKHVSto/7kfJDuH6fWPwrfLB49Wzz?=
 =?us-ascii?Q?wSFwCHfS31qeVWgC/IIEgaDRd80v5aLVLVUD77wqlwmypdZ1QM0LRWNLcSvU?=
 =?us-ascii?Q?YOqxiQtKdtFWyLtSpEPNWRXoUIpgzqvLwuOHxJngP+5QwLnJfPN5LU/brHik?=
 =?us-ascii?Q?UNIVkPxHSA=3D=3D?=
X-Exchange-RoutingPolicyChecked: Y5IqVOQiuFQZ6AX3o+7s33XPLVXccR8IzxAD4Tcz58kWqLp8F61jL3sdlRNRYqqqazueZ8bMOet14VM89o0OfhlPUvacKnD8WASjuca91sRLH5Fy2OJHYwOEpSGeJKXfuYJhsQfBYC6orXA6/Klfcyu6tf9czeKH+rzw233ZzxGRcZGts1QCChU1Z/k28lpS1GKWo9bHF2N/Fa2nY/oQTvksH/0q8zuabuqDIPCLfpy/FMN0fCMK66c25f+Nzyrw3X2D8pckLh8Z3pDQFWJPPMSyc/TDy18seZaaM1Chlp3K2hhSqddOmvI4TDQZ4bQ/H9f2NBUm7BFxzBEN7xyI2g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 80453783-4c22-42e7-6a79-08ded78602eb
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:51.0048 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AlgsmOpsnsREMUp6eAuNOtc+KfATN53xOyIqbo7GsVh4X2cxgTDcPdHu8wAAN2t70YMPjD3G8fLUkwn4Q8v/qg==
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
X-Rspamd-Queue-Id: 7D76C6EF466

Add a debugfs entry showing the currently allowed link configurations
in the connector's iteration order.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 3ef678d47c71b..4482e1f9d6cd8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -1123,6 +1123,43 @@ static int i915_dp_max_lane_count_show(void *data, u64 *val)
 }
 DEFINE_DEBUGFS_ATTRIBUTE(i915_dp_max_lane_count_fops, i915_dp_max_lane_count_show, NULL, "%llu\n");
 
+static int intel_dp_allowed_link_configs_show(struct seq_file *m, void *data)
+{
+	struct intel_connector *connector = to_intel_connector(m->private);
+	struct intel_display *display = to_intel_display(connector);
+	struct intel_dp *intel_dp = intel_attached_dp(connector);
+	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
+	struct intel_dp_link_config link_config;
+	struct intel_dp_link_caps_iter iter;
+	int err;
+	int i;
+
+	err = drm_modeset_lock_single_interruptible(&display->drm->mode_config.connection_mutex);
+	if (err)
+		return err;
+
+	intel_dp_flush_connector_commits(connector);
+
+	i = 0;
+	intel_dp_link_caps_iter_start(&iter,
+				      link_caps,
+				      intel_dp_link_caps_connector_compute_order(connector),
+				      INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &link_config) {
+		seq_printf(m, "%s%dx%d",
+			   i ? " " : "",
+			   link_config.lane_count, link_config.rate);
+		i++;
+	}
+	intel_dp_link_caps_iter_end(&iter);
+
+	drm_modeset_unlock(&display->drm->mode_config.connection_mutex);
+
+	seq_putc(m, '\n');
+
+	return 0;
+}
+DEFINE_SHOW_ATTRIBUTE(intel_dp_allowed_link_configs);
 
 /**
  * intel_dp_link_caps_debugfs_add - add link caps debugfs files for a connector
@@ -1149,6 +1186,9 @@ void intel_dp_link_caps_debugfs_add(struct intel_connector *connector)
 
 	debugfs_create_file("i915_dp_max_lane_count", 0444, root,
 			    connector, &i915_dp_max_lane_count_fops);
+
+	debugfs_create_file("intel_dp_allowed_link_configs", 0444, root,
+			    connector, &intel_dp_allowed_link_configs_fops);
 }
 
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp)
-- 
2.49.1

