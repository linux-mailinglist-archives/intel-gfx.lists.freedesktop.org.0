Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EM+zHD2u8GkdXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14A18485536
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 779BA10EC6F;
	Tue, 28 Apr 2026 12:55:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TKI1Zc4Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05FC110EC66;
 Tue, 28 Apr 2026 12:55:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380922; x=1808916922;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=3JPNrJVt+kFB+xYE/uYqAMSNIaG6rpIV5F111R5Vj8Y=;
 b=TKI1Zc4QNg4uNWSZLm9QN+B0+RLD1eCDofDGYT4oRYYdaD8jGtI9aaJM
 o4YUN2O83M416hIIFO39G/P4/hOEWmv/4a5r9jZ8OvSVyy+2zcUT2rWVg
 oqjVguRx7+0hntVrEEvaL7rUtURKiXdqVPCXNaNZp73N44qbMOpHHYT4H
 ImFxFIz+/VitNv4GLkSqqxbJHZonwk1kiyPkGKILuBQ4ssgtSwASyjHZx
 TlAnv7gNUKhdQIX2Ufvppb+LbQ083YWcelZeHcKJXWpjg1HqJBKL9bYR3
 Hy5THYUSZN1Z7govugvQUHN2Xf/IA8cRfUj0kBjraQKK6fT392PBnCJkh Q==;
X-CSE-ConnectionGUID: 5kBUDrg2Rx2osx1FZFh/Xg==
X-CSE-MsgGUID: 6RIpxGVVSl2fG6ejNX9uBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="81893847"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="81893847"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:22 -0700
X-CSE-ConnectionGUID: zPSWceItQPiLQ9ywHpY6vQ==
X-CSE-MsgGUID: GNDafpbbTxCuab6ZKZaqeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233092755"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:21 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.55) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VDSfLvtZpH9gYT6RMg5Q/JDjdewWM/NhRB3zChF4hr6ySbafAwrp9uCx98ER6xWdaFL2w8tIf8bJ/EW5t1Tb2w+KVKXph1EPP5KAk5dpKMGooaT1RpuUiohYzCbrMjZZj8HwZnmXOfcHAhcOwLC3M+Kfnc1nT/YLsidGp3TJF0/Rzdt7dR6E1uHm4Qfz16D2ey6zgYvEDQGKUkD7HLadWWluA9/al75lwrIIMexWZxAFbIMUH3c1Uwl8Eu4rjoRUz9l2dFcpAk+sWZcVXaXgZ1SmhgECTdOpaEF4FAA/Mb2aRMTkWi/EGmCw1mUsxueFDQrr0KBXQWdzIlY7gywkKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=E4MFs2EC3oz6k7GN3HbE5JeCvtmpQp0+nmjk0eBs7bM=;
 b=HGrj1IdguT1unqXv1DWfV2d7SzhYzYtodCY4WNaDmfZ+3vsSa3oDt1TQlCMS5uX6OSYA3Z3TOPZ+EwR4fimxKzrX9Y+2kUsDAfze5ntnCfmHJJdTGvPysX7MQddOfplNU7dAn5ntQmNY1uF8l3Pk4fiyc/5fLU4jABna0S5AxA1Djfr307gC4JdwU/pBvpVFLMSHkHdtN1H9S9S3YWMnfrU4lwCKITDsKO8QE1ZeM28n1oXrqYoqCmoFP9dwSDtgEp8ZNl3nriVTdqthWEnaFA+LoyD/FGyTxZH06xAkwVchpV1eGWf7IZLfomA6vrpKDR+/6AWZKU1qTx8oZz7oVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ1PR11MB6155.namprd11.prod.outlook.com (2603:10b6:a03:45e::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.18; Tue, 28 Apr
 2026 12:55:13 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:13 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 077/108] drm/i915/dp_link_caps: Compare config tables instead
 of link parameters
Date: Tue, 28 Apr 2026 15:51:58 +0300
Message-ID: <20260428125233.1664668-78-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ1PR11MB6155:EE_
X-MS-Office365-Filtering-Correlation-Id: ced79105-760a-45dc-181f-08dea5255377
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|22082099003|18002099003; 
X-Microsoft-Antispam-Message-Info: dZ7ngHhDlyBoUjtV4+lIijeAtHFdV0uTIc8mmDe1idbaRGgI236C9BNe84gquwZRgG9brZIMGemhgqTcq42DH0OpO9zLJTync7O/MG3N4BJsWcwY1+CJ+U4ZWVyAygXtNqdt0XGjXSFbWUDOMD/1ezZppBzYJ0OgKM/T16hyqBMvPvwatyqM1056GcuBL0auYpKagGZBe46pLli/6gVX8nnHAcjOl8ekEdkbHj6ggyu2zTMuPyyKs9RcxVqFPekPmDvfLFVLP5A1MVoKF83KrSklppR2/EiP5ZRMPpSy1pfNtgBv4Xipvo6H3pDb74VzTfn7Io1xSJtVr6sPwgiGVrekPsrkzB68NKVwypOtbOkNxILF0JxUOa1dQYv8WT+k2mRcqTtqo+aGtopTJxvQ3MkDCs1oTZREjhHbMbi29QekUebXcYpmuU1inZyWtlofxz/p+e66KxzKd39vbB+bwr/mqeeggTxpvO2TM83wWCVmMrL3wHzvcBI7hmixdwLvSLiBepMVzzC3VUX8XiKoevxqmGVxlLBkLsRK0gvNFeRMevOaq01Cx3oS8a3vvFUV/C2ohW54id9g/jik2Qx80Oy6c5SZcYWjkeAKJ6XhVyrWZXVPBt/O2RMDHoTn+kyETxp9D1yvQ+k9cwmAdYG7oVnn3FXOSaP2XfEV9e+DTv7Q0UCEJ8XwTjwv2oTQaXYwoSXVO1PX5+bsN9Mf1owCavyNEDVnG+10dRbGsNxUZgU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?5wCl37tlf9hX2FCh08KZLlgoE1nOsmJ5iRl8D/pujfpbbvHUfGRMtGZQ0QUp?=
 =?us-ascii?Q?UIoaRsQ2lAHZPtL/fJHxfYwTNOUX9bZtVNdIhFf/wof7e/wWwizGsiDU33ki?=
 =?us-ascii?Q?hjlXZpYGlS3jEiKubhAPRrsOQJpa3vhfxdkOQVj2jvgItftAnxOGA7T0uzmx?=
 =?us-ascii?Q?mzmodp4yVAdUOLOIt3U1sC6kZlhLFoRWOX7KRNy6ljZG2UH2n7SZ/wLe7cxF?=
 =?us-ascii?Q?Ejdil98reaHV9tURtINrDsfqR221RkB0s/n21G68wIDAb6Y35iGQWSrp0wNT?=
 =?us-ascii?Q?G5E+SocMtH51PQLs/FQckNLORRfj8poBEeNOKwz90ZUHOq8ngqNlq20dgJ9i?=
 =?us-ascii?Q?93j8prCPPsNE3L7bET2lqVTgv4c16rWl0cmpWa8BfuqQZCaqmIrSpT1n0bN1?=
 =?us-ascii?Q?EuLlzK8AYZEXRQzpuOBuWDV5x5Bhya9uTxHpqyGqXeZlVCClFlp/tv/IIzCj?=
 =?us-ascii?Q?iHFjl/XPPmiymbf3DaZ2UJHMT9yI/fcS428akWvWHDlzqSXyMlPCC1xT9Us+?=
 =?us-ascii?Q?mJeK1b+JS5Tz4Ebn/U0iCVC9nMxCjpDZwYTIRaVtu9ma+KSXpIhFR7aYG+Ju?=
 =?us-ascii?Q?BIEfmRXywGea5m03dqkLGnx8yRJyG6a4SbYuDLDGN6yRMaXqB7ieL0EqVRCs?=
 =?us-ascii?Q?+O9wAArXPx5nl1GAYMXjt4BrP2nYJ/Ij55Go/13/TKDLmJtT9ehasH4rAS4E?=
 =?us-ascii?Q?PK7FphsZwLlB7B8TkzsE9xIvRHKwhdo+iHi1HSIXeI5BdAm3av1JdOycBqKh?=
 =?us-ascii?Q?+zk/hiBcBVTK+GoIDeSpjkUNq/s1dm72Ipzi2SBsJ88zAdGS4WnEVhNC5rv4?=
 =?us-ascii?Q?+yEJrnJtYm8UM4LQG8X/ZBYoVc0jqD2oUuJ+sq7oZkolqAb+LmiKk6h5aoPd?=
 =?us-ascii?Q?j9JQKcgONDNv7OKTLFBaWNdObirxLERubH3sEKcH44qidOIKpOTPDiyriCMk?=
 =?us-ascii?Q?J9542HQDAtsijHy5Fv5TeNneEUn1OrjJhddeaRgH/Qi98psTv6fHDaQ6iMB7?=
 =?us-ascii?Q?2Ou1BgplkUzSiR/wR8wEddUexoGbsLkEJ7jLkD+aG3GjJ8QpRkNsiVUCfzFE?=
 =?us-ascii?Q?d8pNVfTBP7ARj/sXtbuZSdtwCGFv9UTa3ZQUZjJ+PclaTBah092vLIWNLpim?=
 =?us-ascii?Q?SyBncIWl+DkE1Og54i4j0HkdObPPPRlXHSACihB6rX/LOKncTRRt/kpL9wfP?=
 =?us-ascii?Q?CX1PBkioPaQBw6+z9sW5ahYHen8KdypcI3HadIZgdy1sGaguIxNUpXDKvZKH?=
 =?us-ascii?Q?YZB3sfUdDaHwZ/j4Va8jPYTXUjrhl/hyPJX5t9aBBv++EgiLRfYGDSh6MIs8?=
 =?us-ascii?Q?G/R0WxEkUBQ+7VEFbfyqU5dRt+1u4lZ0bEArCjWW9/FfBdODZ0GEl5EqhR9t?=
 =?us-ascii?Q?lDpQiYvlrm4lXhaQm5+kXet++PBJhRyFdwcMrUzxjf4MNZp8BDdhMitmLfPW?=
 =?us-ascii?Q?2LbAFGXxALOoSkiskehyzj/ur2DbeoE6pVXSi5IRn57Kw9jQeO61cmId6kyd?=
 =?us-ascii?Q?yOKLB1e0r4id/LUF9usGdBKPLMcCf5DbUaQK7BpPHzEtf9cOdj/PMbmF3oKX?=
 =?us-ascii?Q?l1D0EdmJl+VH4z3JbNefyj6rJKgEe2pHXeEWMyz48eCmoZZybT4TdO03OE3p?=
 =?us-ascii?Q?j0Zo54ajyHI/ZJPLvzmkYCIyZTVUu9mb37/8FVWFLqWGgbwzV7R3f+E4gn6d?=
 =?us-ascii?Q?3byBfmE3kCDPAek3xXsjD+Ju2m1Q3vwVVxOpiPq+7MXqi/t+vuNfydDwmT0s?=
 =?us-ascii?Q?XAFfzEGtmA=3D=3D?=
X-Exchange-RoutingPolicyChecked: m2imD6EAp2WiplJtuoOIwZ/m1+92528cboqcEgPrRWstgR6HBmaRRe8v47XrACh49m3awdTjPCUPm8Q7m5H2MCoceb3mACYfivYKlWFhourxroA5LndCX8/RMSA7Y7k8fRcZlceR7bsaRtKq0YwtP5WE1es8browi+k/z6t/nOAj9RSr8HFxQ8rL0P8E8tEpS68EhX7Jthy1nYggLvgBVWw1DrbV49kt+cRtaqn3PrtIJYez+1YCAHNlwsgbjgWPGMof1nTNoBCNRG6cJYT7a8ensrcnq7F7RFx11LtTc9VQszp9W6iLgn4aNBku106ibP+Ruoq80FtIUAkLj+INIg==
X-MS-Exchange-CrossTenant-Network-Message-Id: ced79105-760a-45dc-181f-08dea5255377
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:46.7708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZKn2iVCRJcIGwUf634FRBwY+7dvClls81bhDMjvlzY8cvZ9sa49SqEk4SsQ2nH80n+zB37pNkQ/ci80xjtJkaQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6155
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
X-Rspamd-Queue-Id: 14A18485536
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

Replace change detection based on link parameters (max_lane_count,
rates, and num_rates) with direct comparison of the resulting config
tables.

Keep a temporary copy of the existing table and compare it against the
recomputed table.

This prepares for a follow-up change that will precompute the table
before committing it to link_caps.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 27 +++++++------------
 1 file changed, 9 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 53649aa710f94..b156b0ff0eedc 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -753,21 +753,17 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	       intel_dp_link_config_rate(table, lc_b);
 }
 
-static bool current_common_caps_match(struct intel_dp_link_caps_config_table *table,
-				      const int *rates, int num_rates,
-				      int old_max_lane_count)
+static bool config_tables_match(const struct intel_dp_link_caps_config_table *table_a,
+				const struct intel_dp_link_caps_config_table *table_b)
 {
-	int current_max_lane_count = table->max_lane_count;
-	const int *current_rates = table->rates;
-	int num_current_rates = table->num_rates;
-
-	if (num_current_rates != num_rates)
+	if (table_a->num_rates != table_b->num_rates)
 		return false;
 
-	if (current_max_lane_count != old_max_lane_count)
+	if (table_a->max_lane_count != table_b->max_lane_count)
 		return false;
 
-	if (memcmp(current_rates, rates, num_rates * sizeof(rates[0])))
+	if (memcmp(table_a->rates, table_b->rates,
+		   table_a->num_rates * sizeof(table_a->rates[0])))
 		return false;
 
 	return true;
@@ -808,14 +804,12 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_caps_config_table *table =
 		&link_caps->config_table;
+	struct intel_dp_link_caps_config_table old_table;
 	struct intel_dp_link_config old_max_limits =
 		link_caps->max_limits;
-	int old_rates[DP_MAX_SUPPORTED_RATES];
 	struct intel_dp_link_config_entry *lc;
 	bool link_params_changed = false;
 	int num_common_lane_configs;
-	int old_max_lane_count;
-	int num_old_rates;
 	int i;
 	int j;
 
@@ -831,9 +825,7 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 				    ARRAY_SIZE(table->configs)))
 		return false;
 
-	num_old_rates = table->num_rates;
-	memcpy(old_rates, table->rates, num_old_rates * sizeof(old_rates[0]));
-	old_max_lane_count = table->max_lane_count;
+	old_table = *table;
 
 	memcpy(table->rates, rates, num_rates * sizeof(rates[0]));
 	table->num_rates = num_rates;
@@ -856,8 +848,7 @@ bool intel_dp_link_caps_update(struct intel_dp_link_caps *link_caps,
 	       link_config_cmp_by_bw, NULL,
 	       table);
 
-	if (!current_common_caps_match(table, old_rates, num_old_rates,
-				       old_max_lane_count))
+	if (!config_tables_match(table, &old_table))
 		link_params_changed = true;
 
 	/*
-- 
2.49.1

