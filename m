Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wKyONqit8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FC524851DF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9AD510EB72;
	Tue, 28 Apr 2026 12:52:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dV0bcQ7L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D7C910EB78;
 Tue, 28 Apr 2026 12:52:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380773; x=1808916773;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=CX56ex/8h8WPLm9lEjyMdqjxesPXqLSASfcZVYujs2g=;
 b=dV0bcQ7LVbucQoXEa+YCoHPvr108A6jjkDQN+zd1Fy+Sg7yz9Xfq9MNm
 g0v9Sg+S7aUjgR5Oo6IFaElvDWRX91f6DuUmTv7kdcy8sH4/VpbItzSML
 oEueVWclbnS9+NF83dH1LwswP1ck9xAn2y4fyZWWYs/DmKXd3RIAQZYWC
 zM0P9swrF94xkQ7JHKwyJVygXLnMqa2RbY1FHoY81jfEmDlKbt5tksLqN
 h/ZMgAEMRN1L4cKBbdwBt6EsRQEffmXuSfJRuRLXL9ARFeReblecibnvy
 WRS1v83HwTUa7Z1SmJZyaoiAOUqBaefgdOD7K0mW5veQZrK0ZgJasOQZL w==;
X-CSE-ConnectionGUID: A3s1KOcVR46iRyacaUOSXg==
X-CSE-MsgGUID: +XkNniodSm2af0nnRieb+g==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398559"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398559"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:52 -0700
X-CSE-ConnectionGUID: bT/IwZtRR1+N7tB9zxNFlw==
X-CSE-MsgGUID: 7GEz5PGmTYiP+TjQfvm+PQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911269"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:52 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:51 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:51 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f2T2tszJKSrOQxg8BPiVQsrNurqFltzR90XJuzpTzrz+jfePF6jMn7fO2jUYOYrNuVUGsKstRAOQPOj5qxotbg9x5qJEbEQMKwn+FHnsxdoleHSv5UfD/BkgROf2XA6sWl4zfdCmYVeFlr/PKXO/IWvIjn/kQ4hCRQyYq8js+rqCo8hf6UB03ayWAe4cxRYf6TjUiVPfCc7noFYjALzzVnANmVtD5lkOvIGgFcn7ohEVmIwT7TphUj3xb3VqaCwbPvlri8nf8P9ee+OvKGo5lbdeiQiT02DD3txuTZb/F9eTcIaqSAIjbLgIVw3M2Il6pTmpI6hzsM+n1V3WeSrqqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bH0bwh4BFX7Ab73Cs/IbI3TaP8Dpa1IuUbNGqXFI0SQ=;
 b=mpqgQ9MunYGwby2ky2Y59H+xbaUTSqPVCLC6XFV+1HMTLr7BOQyf51VbE7LgB9scNGKQusM/UjxtHSjxNJaVVPcKPmQ6fmax7JQ70QY5UNU3/GYIUSib/eTdGERlLS6sIJHZurW3ElAq/Q6ZZGDa6+adCYlStlJbkdFB1lVs1ldX7L3YdWvITSgdactDC+1lJSWQ3p+gXoweeIlwAJX1gTEhwd+HuQ9IBblxZDcm9lPXI4u8LuPRJ0ApFX+no2Npp4TAXO9l6+7gTAZmz5iRsDZ6rq1ntfrnuTY8OaUs7eDvJkPBvpGoJkDywr/0DTfDKq8bY/fA/KOc3Y6Nos38cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:45 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:45 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 003/108] drm/i915/dp: Bump connector epoch on link capability
 changes
Date: Tue, 28 Apr 2026 15:50:44 +0300
Message-ID: <20260428125233.1664668-4-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CH3PR11MB8156:EE_
X-MS-Office365-Filtering-Correlation-Id: 7f6f3b9f-83dd-44c7-e278-08dea5250b51
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: s5IKHixea4nBH6biSQOUiK2leBNc4KdcoZbb+3z2zq6zIfs0VzfUJ/zn+ZBj0zVRpJM6iD+RT2RkVInXswnOO8cKFyisAkRZlUu6I8A05hNvMmM6a3mO+EtsWUxULXvCcDlxv7mQlOADe+0YCAeyAu6sX/puMLqZKrUuW+9zFDQuauOtineoBbq92e+XeRteRR/yfMxMB8j8xZX2eJZKhMuJBNHlY3eRmCiQO+iPjzyNUdNou8LRfdObJJkyVXzKfdw/44gsIOoqNCt+0GqVvd2460P3MpPOlYFuzcUbfsz61fwU0P0HrD4Xyc9w6Y6fZGxE2O0CbNVwRAe2Q5I+7vSf0cCKmBJ0mxCWO2DUu/aI+WiVEf4MU+FvHyWRe7zoil1WCQXGQpaRwHOrRtdwhtXXwzrmbOBCxBuwVvUjlSaEOGZClqRJJ/6oYFRXA30KRnEkV8GHmiq5gBAISasyT62F4Y/gWQ7BoRSwobYrI7BJyP+5bzjlJ6Tubt3j9hPblHqEyani6N9nkIKEz7QHoJWj118ooIFOiBuzWjqc/V6zmfXHtWsf1JZYnyWl5AFY2dZAFI2hQGvFu4+0ECJ7dYhL3t0U4PLzh/CYhbQvC4Jk1knqzd3FPNuLZnT2sr/3pt0NsiprUIrE6y85TXN4kjImcJRyR8Aint3oacBCJ2Jz39YmSWOKJpe0pG2MQd/cLgow47VoQXpOxo1xFq0593CBCNdZe6Oa05HgUFc1wsg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EJA0VrwNU73W8znfHl7ZZUcqBdBbLyBL/mHqgJa/Tlmg2fJnpGj+BFSKwjSZ?=
 =?us-ascii?Q?Ou0nbHmoHTNoS/UpzUyrAEnTQhQpRGR1liNneLkS210kq79spY589OYQ6l8i?=
 =?us-ascii?Q?Imndtd2W0IZ6qrnVbXCAMNsglhZZPLy/bU94z13MXZktj7/w51oHcnuQD/39?=
 =?us-ascii?Q?RHIlK0tzqFfuzp7er1aX0G6t6x2JPu9mSgTMikJV2Sm6zE7q3XTxPfD2ET7n?=
 =?us-ascii?Q?xOZkEBd/r8JkZ+NRhw5XYMcXMnC6ILIjzh9Q/+IXrO5hvpoK/ZHwRnfDtkdX?=
 =?us-ascii?Q?3+bFVbYERs1oemvGrxEwA6k9lpEu9tEVB+qwYnkkHmPsRsSGloUJZAMmFfWG?=
 =?us-ascii?Q?yi2TUSGWcILWoHuHGwPhKukhkHjWVLweLMPsYx3RU+UMFZg1v9OFs/4K3OOL?=
 =?us-ascii?Q?rLCnCU1tvH5RurPD2C5avztoCA4vzH7xXEMlLeUijVfIr0Rpz3vqE9lUa0c8?=
 =?us-ascii?Q?JwNCv0/IeVxtw/NxxSFGzRBq3kVwDKnz2raSr1tZ5cLX5c21ddPw7SVBSl/2?=
 =?us-ascii?Q?YX4Ond6A8XE/FwDe4bj51t9Ud6WmieAA8X1jqMbThBqLBPhIXIPOyEGn3dRH?=
 =?us-ascii?Q?5P2NTGGBDhyT8vD3f4XXJ0xvom6hIbc9T1VboGvgYdMjnm8Kn/jzeJ5nPUEa?=
 =?us-ascii?Q?IqumsKQoA7zw3SvUvMYSsHBGfN/zFZQ9gtACRQSzoEZaZUQ1PQerccAs7pRo?=
 =?us-ascii?Q?jvIpFzQeuR8TWTMPxb0dN1aAQOlo0xezHWe7dm/4m82UO8BFpXVhijUyUHoI?=
 =?us-ascii?Q?EwVFqSwsQw65k6HvHVMOZn4n32H/P/B9VC8sx7W9M8Ixr2IkME44Zd8eCpna?=
 =?us-ascii?Q?vvRo3421OXhAcfKNG4eCB+fTaYY0mmNFLbJyNHWIIcSBtoh/+ZcQ+UHLjugp?=
 =?us-ascii?Q?QY4FNSRcB6Pjdbpuc9ztBMcmxuUhSzZMKKv1rJyt8/KUm62aYJ49ccXq7uAB?=
 =?us-ascii?Q?pH4UBI5Z6FfiOK+BO4o5CxauUqb+3QolEQCqpMZMUaUIF2+3JXKlda8N38wJ?=
 =?us-ascii?Q?s3D9gWJxUBBwhh4Erfvrekase3rmU9luvz1lkqtkm4Twj0stVoXYg6W7pVgw?=
 =?us-ascii?Q?efcvFAKzorkm+baAFBTlQ1hklx4hSeTRLOHHiHj1rwqrAaVDX1uIbFHlPeTG?=
 =?us-ascii?Q?mkhY15iWdWovgZTyo0F3ZU2meRVGfBIXOObS7jmhUpHWTBhwnr1CWB2fI4is?=
 =?us-ascii?Q?UaDAu1OF33uTo5M/HgIA+o6r99dzGTAo5d/z8BOIIa4cO1XVIBdWuuBrlfD4?=
 =?us-ascii?Q?GhsOc3fyBfJRLP/QJp9mfN+AMcQiAiuI/jQiL0UIkNgF0x3yBoV2Ib56YZjw?=
 =?us-ascii?Q?kxj7Gr9xl29VlrfST8O4e7BDiIH76vA1gl54S+g8zOXL55sreWLpu0saQ646?=
 =?us-ascii?Q?n/OjDVNhdxsg8FXhMmNyHCp/5dgqCGWNzTszPU8AyfZB1n4Q1T03StNqglzG?=
 =?us-ascii?Q?3E1NzYEkGHyCjgMQ7dv6Xs6IBY6W1hw/JEPWWvbWYPgjH4SegJKJykIJRnUw?=
 =?us-ascii?Q?OPaiFXMnvgB6SLz6QxlJ5KIFCAdvdPycx0uFlGQlGeiCQuogzc2dCuEHsf6r?=
 =?us-ascii?Q?rbaI5kn0tuWv0F5BReg4h7IkozCDzlfOrNwDrzdwDjHcpsy+Mx5WVD6+5LvR?=
 =?us-ascii?Q?IkCwUveE4lU+DsOlA47mRzDwgOU1qkjsYIQsIE0cFBnR4zjRvNX6YEbN9Gi4?=
 =?us-ascii?Q?tnHrlDb8iWJFXCYqBHO9n7yRUvoK9Fh20DObzdte4im3wc67k3SQxhI95mQI?=
 =?us-ascii?Q?o1Pw58/jdQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: cP/x1QtHGaa0v+2VntEJS+CkJvgm6DtcslShTzIhrZDppktAC9kFbb0jlw9r98n5KDwbllrAF+N2ycH/QRputRghJo+UchutBJ98MBfDpDWIaanNNgXTmt9z9R4MKs2v10K0QpfyoRxw0d2og+sE9NuwcUJ0OrNFGLebtC+eTTITdPiealRiEoHm+ASYYaLjOrqkU0tZ/S0FneuUV/vkyjNwxtxdVX7oNKAgv8pWUXaoqe7wV3B47HCgfUi9aMBXqN9AeUqGqCrMb37sEUsNumy7nMMD3UTv03mlUxv3ug+p4NKm4nLzqkFhR4+ApcAmtzSsoMKdh3+rCTRoKFyH9g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 7f6f3b9f-83dd-44c7-e278-08dea5250b51
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:45.7606 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Lbt4zyfuroSL14DOFGuSQuIYQkpicKbkhIcKkDMIOwufd6P4UMVZyTr5NG0J4mCjbL2p1ui9pi8BI5WdIpKClg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8156
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
X-Rspamd-Queue-Id: 7FC524851DF
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

Bump the connector epoch when the common link capabilities change after
the sink reports updated capabilities. This covers the common rates and
the maximum common lane count, which are derived from the source and
sink capabilities.

Also bump the epoch when the maximum link limits change. These limits
are initialized from the common capabilities, but can later change due
to either sink capability updates or fallback selection.

Follow-up changes move both the change detection and the updates to the
maximum link limits, along with other derived maximum link information,
into the link capability module, where dependencies among all these can
ben handled consistently.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 49 ++++++++++++++++++++++++-
 1 file changed, 47 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index cb81a9864d8c4..df34df6610ac2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -787,14 +787,37 @@ int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lan
 	return -1;
 }
 
-static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
+static bool current_common_caps_match(struct intel_dp *intel_dp,
+				      const int *rates, int num_rates)
+{
+	const int *current_rates = intel_dp->common_rates;
+	int num_current_rates = intel_dp->num_common_rates;
+
+	if (num_current_rates != num_rates)
+		return false;
+
+	if (memcmp(current_rates, rates, num_rates * sizeof(rates[0])))
+		return false;
+
+	return true;
+}
+
+/* Return %true if any supported or maximum link param changed. */
+static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
+	int num_old_common_rates = intel_dp->num_common_rates;
+	int old_max_rate_limit = intel_dp->link.max_rate;
+	int old_common_rates[DP_MAX_SUPPORTED_RATES];
+	bool link_params_changed = false;
 	int len;
 
 	drm_WARN_ON(display->drm,
 		    !intel_dp->num_source_rates || !intel_dp->num_sink_rates);
 
+	static_assert(sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
+	memcpy(old_common_rates, intel_dp->common_rates, sizeof(old_common_rates));
+
 	intel_dp->num_common_rates = intersect_rates(intel_dp->source_rates,
 						     intel_dp->num_source_rates,
 						     intel_dp->sink_rates,
@@ -807,11 +830,19 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 		intel_dp->num_common_rates = 1;
 	}
 
+	if (!current_common_caps_match(intel_dp, old_common_rates, num_old_common_rates))
+		link_params_changed = true;
+
 	intel_dp_link_config_init(intel_dp);
 
 	len = intel_dp_common_len_rate_limit(intel_dp, intel_dp->link.max_rate);
 	if (len > 0)
 		intel_dp->link.max_rate = intel_dp_common_rate(intel_dp, len - 1);
+
+	if (intel_dp->link.max_rate != old_max_rate_limit)
+		link_params_changed = true;
+
+	return link_params_changed;
 }
 
 bool intel_dp_link_params_valid(struct intel_dp *intel_dp, int link_rate,
@@ -4856,15 +4887,29 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
 
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 {
+	struct intel_connector *connector = intel_dp->attached_connector;
+	int old_max_common_lane_count = intel_dp_max_common_lane_count(intel_dp);
+	int old_max_lane_count_limit = intel_dp->link.max_lane_count;
 	int current_max_common_lane_count;
+	bool link_params_changed = false;
 
 	intel_dp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
-	intel_dp_set_common_rates(intel_dp);
+	if (intel_dp_set_common_rates(intel_dp))
+		link_params_changed = true;
 
 	current_max_common_lane_count = intel_dp_max_common_lane_count(intel_dp);
+	if (current_max_common_lane_count != old_max_common_lane_count)
+		link_params_changed = true;
+
 	intel_dp->link.max_lane_count = min(intel_dp->link.max_lane_count,
 					    current_max_common_lane_count);
+
+	if (intel_dp->link.max_lane_count != old_max_lane_count_limit)
+		link_params_changed = true;
+
+	if (link_params_changed)
+		connector->base.epoch_counter++;
 }
 
 static bool
-- 
2.49.1

