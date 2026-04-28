Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QAFGCsKt8GnBXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDB19485251
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 618C610EBA2;
	Tue, 28 Apr 2026 12:53:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZAbw333C";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA6C110EBA2;
 Tue, 28 Apr 2026 12:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380798; x=1808916798;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=F9z6yfYe7iH4brgESzKxsecuBNcQjcNgR+GSq/mwWQM=;
 b=ZAbw333CtvbYa66RBgWW+WzmAs7qeGnBp5gEo9+2MPUjb0qL5kY8xnLc
 ozuBYNqstqeXA7vhMhlEWyTOQi2BkDzbbCF4IqenkKZJwgA2x017hiMlb
 +vby2iX9JiV8VddZdp/irDze4+NitKg2wnpgFqLbG7qHPGOqAe1S4S/7g
 mNaOvoNAnjVQNfNJk4qMTpdvnAyQAEBa9YYNEHy4/j/un2JO2AT8sF8f0
 sPjYFj8Az0MYyrGlelbdPklMoNwKGwTYEiQbPP94K4rQ24vFN0f0KUswy
 H2WwruD0joQ4zNjT45XXdHUF1OnqxQfG3+/K+xpEupn5xgj/G9dQ34qZ+ g==;
X-CSE-ConnectionGUID: 3rZYaDNjSHaNMabC7Iqifw==
X-CSE-MsgGUID: 8RS9fT/qR2WCeaAeZKjZ0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398604"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398604"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:18 -0700
X-CSE-ConnectionGUID: MiYPlAJqSVSNmWAVU75p6Q==
X-CSE-MsgGUID: vNVwLlv1SZmu69W+r1BKTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911323"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:17 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:17 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:17 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.51) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YyZN2RfkJrjKPY6O5m9uIP3q3/E+85dSAsQx6DiiysYC2Ap8xyra5hefWlwOZeDLewoLWEnsD55uJ8OPpJ97S2S0BdqtW6jTMy0MqpWIuotLpQRbJGbg7taZUF/aHlR2gTKGVKLTzNoFO6IHThSKCi7yakNSNliMdA6g+mxSK5CMu6YvQwGiANOVEsh6KcBV+AZfog2mqZ2ezvtmZUE+35Z35Wkdp2/9wVeiiBWZONSO1JIHbMGHmJZnVCkZrwlwIR8X6gDMINX2HYGirj3LL2k+POYP3cuBzcUJ0XOfmKopO3rVr5drIP2mHnCLuDDeqYt/rlBI1BO77CpoN9LkyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tNfM8OMD4RtKg3Jp40YbyxvPq4maLB8hZQv0Hy+1Xdg=;
 b=ALmUgzsm3PjeQYCMc1n/OV1EpsWLskqvslKnm+Wz3FD1gL69YxhSozUU1NdRs7pMrIpYRvWlkPvU5Vg+TPXJtmXWMTqHraQ69txNsd1x0sxKoa0IM08DtfanZEkiUSP508Obutb9fE3UV5OhgdPk/fAfA43xFjPrLODu9R5YV4Bn4ZChkdPRi1AEl0Su0kW0nS7OmGFDGuD6vSKIkAH4LfFyvd7/MAqqPH1VASHMuxpoA9lZk8zGVqRsKErFW4NZGS9UN87MAaUX+1oNGwvcoYg35v2vqeG8vSUUTlJ22+d/03axbJIbBFbu855UgpxIpROnFsHjf2fyUIDUgvZxsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:10 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:10 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 018/108] drm/i915/dp_link_training: Add helper to reset link
 recovery state
Date: Tue, 28 Apr 2026 15:50:59 +0300
Message-ID: <20260428125233.1664668-19-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 9531e95a-93c0-42f5-91c3-08dea5251a02
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: RQVUnrzGMwPKRSQfMzIvlhXqL768VKJqKz6tDt/LUhNljtTTt4Ek91my14833i5yjZcc/LeiXCh5pBRAMWLNTCGI/vISkEx+/bKLluT2R4bWXsKfNmTClMYl7Us2GMuDBhxiEXW7N84rCt345hew9DbN9V+m4vybBHw2IkEtSKNDCsRw09ZJ7yqUm452nUoYaDUx4vWLh7uYQT4O11EruZcskcw6m6rzbrBr9pnk48Qpv+KQZcMLFUI384twngb0RGw2RzeFhG9qBVERFSE3naG0iz+5j3D5uyNZ3mdr9BHZF8dQITYmO4HzNke1Hn79T6K5+1iugEd+2dgpKmZk/v0/3MjdjzUvpdZQKZRaDkHFheFBkZHlK4aS74vlsArLOExvOeX4GUy+f2nnd0OjxZ+gbVTRWVeXnb/koqdGus8DVFl3I7X1bB34000YRvOiGPlGPXBJwfEzr7Xqva/vEJ/7kBGLkJPiVxs7ahDKuZYkWbW7yAS/zPwD6s8kNmPPTE8cZlkhDluYjpMt1yNoIo/KqyKI5emw7Sk0KsMnzx1laCdAgokM6bp4cIEGVL8kD8IuHggmWr+6xmQJ/NSFRU2geSr5K4bQaD03DTjYqvmPUB4tX5+SpazX422cNVdKHubyxJYHemSIzeUOMPbTDnocJNzbsti1erLz38GtHRAx0HeezW2PL3h/VK6t5sfpgvScTkB6om0GmkLJ4klUdqDuO28FUVvjZcChLKxbq2A=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aOCtWLigmm3EiAPAJLc0q7stixzaOeYgqGRGAgiYlHipsOSfjdAUMRfzEveO?=
 =?us-ascii?Q?mBKh65MD2M5GBZqRE9n7SRfcbWGZ9Pj+W/Iba5kZS9r5/4UzOdezGTHZU0pK?=
 =?us-ascii?Q?TTwAzhyY70Wjg6N6Ol4+fyShWBUxYihSHgFl6o2Tefax9NqKjDULU3RvDoal?=
 =?us-ascii?Q?syhDbCQfo9icEE/2fuemvQLe2vPu+Z49ZgVPv/VL/xbTKU+t6KZpdAFZ2B5+?=
 =?us-ascii?Q?OV/q8ANLZP9q1bUiD1S0wHJm9EUMZqVb8MVq+z8RXl24GKe2uMJ8ADUbnxxG?=
 =?us-ascii?Q?SwnIoWhjymJWxsyj0N3WP+EQtFoPAZZF96JnBfoUP6iAuHtkmRAO9853DF0A?=
 =?us-ascii?Q?EjBPt407W8xNrR2rAXn657vZ2CY3qjH1wHvAO7rEK9dq2YxmqW9xSd+u3YTT?=
 =?us-ascii?Q?oq0briOQGg7ALeq8NTLzm+mpBL8xPx4goKq8yX7LZ7jRTzax96BSnYkwwD42?=
 =?us-ascii?Q?b7yYTOODjx5EVXK/Kf6o2Ku0edfQMoksSs7xSRUdhgcotDFS6kXWpP1Cz5gw?=
 =?us-ascii?Q?pZgQAGGDP2y3e8O2qhY/pmgEbi4gERVb58/ZmZJPxbCYbvCLMqaExr636dw3?=
 =?us-ascii?Q?NC6xxrwd9M+/abLJuWzW1ZgYRenUK4M3qjKxWNbxOQ+QHRRV1jy8eJuvfcBX?=
 =?us-ascii?Q?7a86ew+cg/uoJHYjdI9C79159JqrHvXer3+KCb9w580IjD4npEJ4cX17wdZs?=
 =?us-ascii?Q?j/u7LsAAL6wsGcuydVbx5SU00D/xZoRmSAM3/8xLYzCiscLdkNNnVQJnngCu?=
 =?us-ascii?Q?vauJV6jElqZnrpZk7ZoXRcBdHN2e3p5BOzSb4JYfAZ9vQQfBpdNnNCwmLenO?=
 =?us-ascii?Q?+64GyogcUuiso/35hikqzJ8BPv8ODj+fAIfULlKSex+zSAyPUjY10+GHRDap?=
 =?us-ascii?Q?y7xcwJ0X8Ql3vZ/SiFu3TH7k0BjHCEKpzHVaYO5JOTz/q88ioE2Fm/HGHbwu?=
 =?us-ascii?Q?qV2X26TfLXoUyrS8SpJxlv+kFWvg3qmnN3UJITuVdQ5VOWdo5ygeGR7ugIQz?=
 =?us-ascii?Q?z1rpWBgfhVs/wM1EiHSrBwYFScUgxeaBdUO23hqyBZ+NCXiVQB0PhhqApSp9?=
 =?us-ascii?Q?xcrpoP/WbzKYFinjQ02yNWTSWsj49JRvB3bgZl65T9khco3IvSRn687lHL2v?=
 =?us-ascii?Q?5aGRv+g6KyMs1Wk1U99RgX3LZitpelbMK6Izt++SUBA+ZLpxPn6gdED7sHPi?=
 =?us-ascii?Q?Ucv77duYfnZ+AQj2UH8rKrWDq8g0/VRjZNLlnHc+X9RAsFEHVBBhwXCEzBBj?=
 =?us-ascii?Q?5lKTTGMOxNjc9zAz/YOk671WFvJ7K0jzZMn/XW72g7XnqvRgCujZBXRndPtp?=
 =?us-ascii?Q?FvdLv+ChidqPbl8q0/5rmxvRXxRKcCDePNC/Lg0DR18gfnlKGinfXPHHiK/b?=
 =?us-ascii?Q?JwM/vtsg3KWHyF7la5h/S58J1dJCnU8h1JdDGUH9EqCcbC+j1OPyZ+m2dhqU?=
 =?us-ascii?Q?kxl7/d38OZxIPzVAjSk6/RNOZWECjdC3tL8a5UKZ/tcW2NLSaIq/fqKGAWni?=
 =?us-ascii?Q?rGh0MMc0QPV/lVjz3GomvyhDQUuo19/PDhQGlvPA8Ow/rqxBLe4pSe43rvAb?=
 =?us-ascii?Q?t88S7Hj3kCSIZbdwNMd94Ug00NJAz0FP0T64fPWCkcAKma/GmgB3PAzLyFhA?=
 =?us-ascii?Q?2S6ZbAOCNIdPMjNAyySYTSRTlaqVgjlUQmeUq73mrNQ6aoGV1emAbEeWMKhz?=
 =?us-ascii?Q?omyvVMgxp7oBPz9f9zt0D/lX3jPMlKNIdYjIOb47EUyi7atH25XBUN+8xKmK?=
 =?us-ascii?Q?NV91M/uutQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: ObRU7ZuVDLMy1We2cbMkWsDJ5DD22JM+NbrhFxcIHwPq2WDNr7UpYWBWSsx6pQZNcGfZytymjpkyjm6L/1tUmSOhnI7jB/gg6lHP8sCULesINz5nl5SLcOsgSpIAUzYenscNck6LVwiRld0YA+AdEPn7ZOojIT5E5J/fyMkfY0JLw+fPKKYQaHfUc2de0JERQtXGG+vmIMj7hLr1g1HY56r6k18xWHCOGCnc91UttLrycl7Wb9V44v3+o5jdbnTWFUJEHFgl0AimI24JgfOkNE2ryMs9XWd50RYpBW7vkjEhDyJ/2Uezw4+dnbWJL85aRRcTW3C0+8XIH5EW6AJGmA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9531e95a-93c0-42f5-91c3-08dea5251a02
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:10.4091 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fb/HmkjYXqFo2nKTBu+5R+mXLzKDRc2ZJs58fMDTU3/ghl7uEa3W8TAY+qgwEWa6eYJP4LW6Po5EurC80QyCNA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: CDB19485251
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

Add link_recovery_reset() to make it explicit when link recovery is no
longer needed and the recovery state can be cleared.

This also prepares for replacing the sequential link training failure
counter with an enum in a follow-up change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_dp_link_training.c    | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index eb922dca69c5b..90bd1b0f1ab7d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1304,6 +1304,18 @@ link_recovery_mark_train_failure(struct intel_dp_link_training *link_training)
 	return link_recovery_autoretrain_allowed(link_training);
 }
 
+/**
+ * link_recovery_reset - reset the link recovery state
+ * @link_training: link training state
+ *
+ * Reset the link recovery state to indicate that no link recovery is
+ * required.
+ */
+static void link_recovery_reset(struct intel_dp_link_training *link_training)
+{
+	link_training->seq_train_failures = 0;
+}
+
 /**
  * intel_dp_stop_link_train - stop link training
  * @intel_dp: DP struct
@@ -1868,7 +1880,7 @@ void intel_dp_start_link_train(struct intel_atomic_state *state,
 		link_training->force_train_failure--;
 		lt_dbg(intel_dp, DP_PHY_DPRX, "Forcing link training failure\n");
 	} else if (passed) {
-		link_training->seq_train_failures = 0;
+		link_recovery_reset(link_training);
 		return;
 	}
 
@@ -2538,7 +2550,7 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
 {
 	link_training->retrain_disabled = false;
-	link_training->seq_train_failures = 0;
+	link_recovery_reset(link_training);
 }
 
 /**
-- 
2.49.1

