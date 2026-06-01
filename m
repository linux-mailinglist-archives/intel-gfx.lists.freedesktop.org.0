Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8IdtJFNTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4619961C9D5
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7BC3D1130D6;
	Mon,  1 Jun 2026 09:39:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m9+wwTAN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70A7F1130D2;
 Mon,  1 Jun 2026 09:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306768; x=1811842768;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=5KWctp/cft+8VKZV9Pc5HM83MBM94nL/zyZQWJiQquY=;
 b=m9+wwTANqef/2cq5mjZKki5hMTidvSjj9hSZ0RDRD0TM3MgvQAQCE9ak
 G/bhqgTdsOOoiwvgO/BLGxPr4fSl5GNNGbi0Mzl7Jb2jKjxRrL36DMFQ2
 HujQ+yMwWxbkOfMCC9cl7/cl25opg7pQ/v1bZj9ERmVYfcCu8fRVPyjQd
 ZDOFFFXwilhAu2B+imizUdBHhankaRihNv4yYM3gHae+Q4iDOwKKrh5gt
 K51bdvfuFTolQE3jTuul+gPuyhx1Jgyh0YY59xlibgdefqMI+wtoM3RcN
 EhX9KRIKF2CUPyr4JyEDsEqA3qdOqvi+nxNeIDDzQ3g0JZoQAn6NbF1vM Q==;
X-CSE-ConnectionGUID: uDKRvpSXR3OpyWgH4PpYCg==
X-CSE-MsgGUID: AAw9N7l+T0e9LZMdI2yakg==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094056"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094056"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:28 -0700
X-CSE-ConnectionGUID: jIwVD7vqQ1+Vs7p3SLyW6g==
X-CSE-MsgGUID: B+iUfo0MT/unUwThaXgI1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160618"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:28 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:27 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.59)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kON6JJ3T67sQE2IkjA4x8EtbZ0WOTtJaQnR+keBJGc1/oDFZpKQ/a51IXluH+TdN52vhf5nkgyB+R1kdcnqTLpZG9j3tyRv6WZa26owMS9twnDPQ/BWQdovdDYzq8VG2Y6lPlDYsKxPqT4XZhQOEPog5aUIZkrQ1DZovGpax5UpMRKfkIdr7S6QL4goLM7SBFxqsNc7+t7GH0BnsIxMnEDp0fGb8+5KPNDi5mKkmG/Hn1VNv6sdSrIS/SjA02Xme01W5GYSBrlS0Nxm7oeS0YfhtJiIwgBpmWZEjuvoIZYPFEmli2jo5zu5Ne4qjADPOQ6fcCoPsVGOo1zPFQgb/xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IeHpoCwTwhG6lH+ulH9xwo1cTm+nFtCGQ00wYS6gk3M=;
 b=qQjdQg3AUG1eAaQvOUSedI0d5GVPGASfqkYNMnzig/pyELhtatxskSQmTq3uKMXhQKyQqHB4oawtM2izgNgC1WlX3gXWgjqhpezy03E/xW/fgFFvauNju1JB6sGLabysENo5CfPw7EurvhbhkRQTBaHSiC9JLZUUqZvg6jjT8mVMoqL+7g6FFlrMiHYp1N3GgO8CQeDDM3mMOasorTxvq4KRwrIptAdSi1XJqkD7UT7qf3VAuN0aG/DsM343EDVlW1nPOGrTr64w+ypoBSvMcid+rqUsi1PSLmIc+1SSr6GZPcm5uPTl5QltMITT8vT+PLOqqqxWj5YCpuUhUN9/vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:20 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 19/22] drm/i915/dp_link_training: Allocate atomic state for
 autoretrain modeset
Date: Mon, 1 Jun 2026 12:38:32 +0300
Message-ID: <20260601093836.3057345-20-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: fcf95aaf-3d3e-42cc-3b4b-08debfc1a7e3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: zQsYIoIc3tW2D6oUcsdq8WkzsynxMArKcF1VQ55YrIusPfF8YJ99DhlMy2OXsWvJ/Ge0GTxV/ZchK6VpBTQN0haRi9JWZUUeHpoPW8FJylBiMqKq8AbWpMbYSbN2c42Iv3/3BfHAYsRx/kFHV1Ic5MHEBHC8gVd9DUEJscjAR3hPZPYgwNIbVTgD9Fg7uZYGHma7qdLRRoafgNzz3WejX7mFjAX+5E96LIu5121gdGM1vc/tbx8aDPNy0cpL9jukHPaUxqOFQ8yXkUIZdPKVtDCo0ipbSmi+mIgLStEU5KIC19mtIb0MLGffI9c4lDdIdtnnlwR3MwEi3lPxchHjUmecoWRN06FP0egFTxRL+LKJL59P1x3k/zsy/W7KTlpRMFb9am6d8I2MOm/ML9J6ve2wxE9UzR2JjIHCnlhjDVCBqqRbGXHdAyvfFUcKjNgN6nQjuu4f76EbbVYkTHScIZGJzLVN/Fazyj96QCx+mIy2BiPh7SaejvJlQDm3C6OshpZ1ShNeQ7sbeLpqG+FLPLTwvk/W4KpN08P2zL9Y8JaKUSQ6l/LNOxpBgiFn3EiE2/3yyYc4212l+7w8iXhIs/DSXur0SlzqAYCfYkpLs5yFuj5Z0OxtExUahAXxbvhDMuq7+vFmzFAJtRRUsWqFCuwKoOYaf9ZjtFfMwpjUYhXFcUyav82Vjn/p1gUqGENb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?PsQ8E8d6+VK5zAMCbWFSJqg+G/a3gWswBp08WvkkcQPcWlwfLUlNC9MQpEeb?=
 =?us-ascii?Q?sEABXIFyg3FIdFOyLx3p45SKDO14TSEZqA4OJlgCy5pO4WOW1OPXFBG6GmMU?=
 =?us-ascii?Q?Ep4P/eR6T97+HsQnC5MLZ7y/+pFkr8peGItmQOmj6AWtibEVZViiEaP0iH1C?=
 =?us-ascii?Q?NvFzFHzUyo4j33E8UF7UUlV5n0N3JrZG3EsENsPG+VaN3+UnLbi3ACz5OWRV?=
 =?us-ascii?Q?60buGvjp7tZL/cTOhQ5r7E0q3Bzt2T4D86nhmMIU+xh8K28cwn40R+xcit2P?=
 =?us-ascii?Q?gip8kJpOcH2swaobMIRQMfQgtmDaGb2e9Wyv6hLSVUUuYp8+YksIWJyCZAF4?=
 =?us-ascii?Q?4OKbe2sz5FDPB48/zkmwDgvZSJcW6Gj2Oy++I+qZjgmA8t+Si4YY92zxnvZ/?=
 =?us-ascii?Q?mxdcpbK39kzhkiiI8c2g1hPSicz5LQpuUKBMCJ4AunAgj/Q82ySFUdUlGzWP?=
 =?us-ascii?Q?9G1kBSvnVNLdv35fYq5XNxuEpeFOduZ/QVJj4VXXKiQ0KVkO4BuMVU3sZCvY?=
 =?us-ascii?Q?B1SUsgnXAL9KWfDbK2rTkm7RA+XYQ1CBfr+s1/U8pxu0FUIBRdjbd2mE0Sd1?=
 =?us-ascii?Q?d3+uOlzcO2TDkhLr+X2lJbK7guOu7a/3Hje8oFxWLG3TXuL95fLjc35gihiv?=
 =?us-ascii?Q?+XiLy9ql/PtdJIPOH0pPDNqSpy3mjgQ2GnRxkUnKDi9U5TAtog0OhNMYvBdq?=
 =?us-ascii?Q?qJ6ziRUpIzokzZ2+OIxjej3m4l9nmh5Xnt03u0NCL+wOp3JuD/DQryqCUgVC?=
 =?us-ascii?Q?Fw6SyXy8n092Ik8siHVzVKafWEKgq/8n3rZLkeWq+Lwr2DyoRy/xZAOrD652?=
 =?us-ascii?Q?Pd85Wiv3wpzz7K7JKUFOkt7ZoGU5s+blw/5I4eEzXJcaPeXKnplPdOhetNr9?=
 =?us-ascii?Q?WedobKjwsYUN1yLL6Pyh0vBdKCp0pxQN8Zsxnu+J+/BlSOBJwbW4jr/dIjcl?=
 =?us-ascii?Q?jKdulxf/g+F1k3S6uJ8qGfJKqjV52JF+AlS3OACQTSHUghojzXbNs11AlpyP?=
 =?us-ascii?Q?gRGMkhpHW2YAkZOdqsxMDpVXqWR0nDp9tGxd+qODouNTgoCfgMG2dEHYZklK?=
 =?us-ascii?Q?PrXgbnSdZP9IKBOoD1kQ+o+w9WLZY7nypfrXYDI0UfuGrTyJz7KWMMytd8e5?=
 =?us-ascii?Q?coTqvMl9ZScgEXUJT6aqjNdU10am2/QGQZhZYLBBfMqErHRF3rlHbVDP7iJF?=
 =?us-ascii?Q?Pdcbty+hr88/VJfzRSW6X/wbyzZ165JQsSzyg0MM4oDUcIVVPpslHo+4R2ij?=
 =?us-ascii?Q?IijBAV7o7daQwzSEZfvSeZMYlluVghz4ML+VLLA5kcAMu9H7pNpc3SZ8tR/v?=
 =?us-ascii?Q?LmAuJX+nzUCNj4Xz/QWEPhMxbr1vG22eRj8GUnFJXzd+J66OWVLnkZa1Zq0O?=
 =?us-ascii?Q?x/ZPNMbh2AeLR6Yp6bfc2N4ZlROm5+Z2dYmrSgFNsFSrWhDR+SmL0kRHeo8Q?=
 =?us-ascii?Q?xmhzXUpcSQ3bC8Abl5JrC+WsaFhy3BaohrpP+3wMqaMu4sDJ/sf58C7fEp16?=
 =?us-ascii?Q?lw97e5dML9pXcWmfuqwGAv0E0Yb9nPOJRkP/wJKfR0bUVUu7NXLeAflneIWA?=
 =?us-ascii?Q?Zwp9Py3Ov2WMgh0Ir3zSt0z3O7EvF9iqvTlHYPJQ92G/6p6NazPbsPyblZ9n?=
 =?us-ascii?Q?h5unHnsITwU5oUKcw1dp3lCQ6Ldoj5DNsObjeUoPnZ82FAHXeLpYeLgJSUUT?=
 =?us-ascii?Q?iuyC/b0+mub5kPIpsr92WQhtURC3A+8RChmbHdEmv4y+in8zf80dKSWYHz+i?=
 =?us-ascii?Q?RmLwP5XwOw=3D=3D?=
X-Exchange-RoutingPolicyChecked: Jo31vSJ2LAA1otl9+B5sQybvsOSlSiMlnQkIKpCNgp41j018gOTEEjpbDCJLh1+DqRfgAYcdmuU9oi9LKIEfDNEvG9EUxb37JrgwWARJdBTZJhPTZmyzrYIyBncAhcPbCIFXDSa/C/8hbhfPSFvc+j1uC/yQPeivLdmrG7JXaj2HWZ9HiV9QjnEqA+FAkVpYw6F0sHTEBB/5XALdrUlEX/WDfXqL3JDhmivOuuy+oXw5Wdaub+P7uFQEBZefyj2z1Kv+VFC0dgj5NhTpIJMIMs/S4ZDFBW1+z2CIKIzEjF/B5SCmvLoEWd1NVHrkM7zxwbxCMDefSGG4uqk5n14uuA==
X-MS-Exchange-CrossTenant-Network-Message-Id: fcf95aaf-3d3e-42cc-3b4b-08debfc1a7e3
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:20.1163 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Rv0ILOyDddnGBfgOwSQ6igOPItKwHBDEYi5spd7IQvb2SEGYv7opM+HavjSYPZstluwI6ho0mzUaIGUivWBZrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4619961C9D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Allocate a local atomic state for the autoretrain modeset. This
prepares for a follow-up change that needs to access the state after
the modeset for sending userspace notifications.

v2: Rebase on upstream drm_atomic_state -> drm_atomic_commit rename.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_training.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index ad67f9df46d7b..0231ca0cea30c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -27,6 +27,7 @@
 #include <drm/display/drm_dp_helper.h>
 #include <drm/drm_print.h>
 
+#include "intel_display.h"
 #include "intel_display_core.h"
 #include "intel_display_jiffies.h"
 #include "intel_display_types.h"
@@ -2165,6 +2166,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 	struct intel_dp_link_training *link_training =
 		intel_dp->link.training;
+	struct intel_atomic_state *state;
+	struct drm_atomic_commit *_state;
 	u8 pipe_mask;
 	int ret;
 
@@ -2194,9 +2197,15 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 		    encoder->base.base.id, encoder->base.name,
 		    str_yes_no(intel_dp_link_training_get_force_retrain(link_training)));
 
-	ret = intel_modeset_commit_pipes(display, pipe_mask, ctx);
+	_state = drm_atomic_commit_alloc(display->drm);
+	if (!_state)
+		return -ENOMEM;
+
+	state = to_intel_atomic_state(_state);
+
+	ret = intel_modeset_commit_pipes_for_atomic_state(state, pipe_mask, ctx);
 	if (ret == -EDEADLK)
-		return ret;
+		goto out;
 
 	intel_dp_link_training_set_force_retrain(link_training, false);
 
@@ -2205,6 +2214,8 @@ static int intel_dp_retrain_link(struct intel_encoder *encoder,
 			    "[ENCODER:%d:%s] link retraining failed: %pe\n",
 			    encoder->base.base.id, encoder->base.name,
 			    ERR_PTR(ret));
+out:
+	drm_atomic_commit_put(&state->base);
 
 	return ret;
 }
-- 
2.49.1

