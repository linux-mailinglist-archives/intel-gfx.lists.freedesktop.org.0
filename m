Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MEVhBkqu8GnwXAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:38 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD3B4855D2
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 189FF10ECBA;
	Tue, 28 Apr 2026 12:55:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xp/OwSSs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B41B10ECB1;
 Tue, 28 Apr 2026 12:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380930; x=1808916930;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=d3MMcolbplKbirQ7leF7sKml9LE0F1OTeq4VkcOPvbI=;
 b=Xp/OwSSsq9Jm6uAKJRk0K7paecn/AmRmFipIznhsL95XBEz6kIxS+gZe
 0Th6FoHyKYq2LarRext9uJgf/fYaTbZ4Z5X/QCsBW7UQHIOpXbVADctH1
 5G6/L2mjEBPWMKYvl/rADKOpy4GYvHoWSxEEyJ6pt5FszIbnxn3Myy5oX
 EEDtbEuHU7Z3e2CWS1m8andAjmiECbtYDlf4lFA6wMuWlG9jtC5VuxK12
 mL2f97+2QUyJ6ypq9rVJeBRpZWCynF9/bAnZ44491+5uzx2ZaaPGyZeiX
 1NMtTq8wLy43isJXceoV3h9AikQ44ZZXYlxFxhj04XpWFx6234ibYmv3r Q==;
X-CSE-ConnectionGUID: Hl5awfpmTV6LpUvvkww3cA==
X-CSE-MsgGUID: +Gz+MalpSQygogGbaoTxXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="88883663"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="88883663"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:29 -0700
X-CSE-ConnectionGUID: PghjvrKmSFa7FWXslceF7Q==
X-CSE-MsgGUID: pyVV5/JnSyWufQUf1JreEQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="230795111"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:29 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:28 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:28 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BcQusJMy3xhMZoCZFJ3NLN02eQWKXpDni9SR/I44RlUBJw5WWSB1ulUFHwlu9gUJFuGwb0LTDeEyEyddtDMOzHKPsuFJyP21hhtQONU89aYFFMazvp0VCb56tMDfc5xxGvsPHQjHqM+OMCJvar8uE6PpsVnsDaejcVPlqO7bldK+KWhM7rAyvWCjHEpU3cPmBnveVq7YBLm+dYVB/gWU1hIoPjtRPwc2xZhrIzjO1gNEgKcGm09OqTulV7ED1jNjV+UoXhk4NiUQqkxJ0OhMXRAXIZwwToFO++JVDi4tL/KpijIL+IYQrUBBDkA7kp3bE+kK5AExXLxhK5eu/xJngQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ni6ZlbczWgKDrNQ+/vACxrzbybD7ipDN7jz9f3Cp4pw=;
 b=lofJIM4Y707A+1u16fHDd2+OYvIsepOgZ0VzqIqCvF3MaYc00WGOeHblP6wao7Ta8U0fahxhTQfjOOdYpC6RS1nWclhhqGFiyvo0MSHnhkAaLnHn66pdHqSJThkPKnyXYHE5tQTmaAdIXAfgALo6PtiWMu4Se5/LLDHbtt3tc0Jch1dyd9GbypcbewYNI5ljPdiwaK6Jq0xlMduM0c1cRHbXs6QulZ1miuJ/XtTgXwQ2boPTYbacFplf98uDbQSAuQR+eS9HBHT+29SsyIFQnU8/0edKmHHq4WNouogb8JrucN1985genjNeC35Gp9avUKQzEEPKnHR5KJNN/OsX/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:25 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:24 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 097/108] drm/i915/dp: Remove min/max link config limits
Date: Tue, 28 Apr 2026 15:52:18 +0300
Message-ID: <20260428125233.1664668-98-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 5b4c5721-b73f-4552-bc8b-08dea52566e7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: TlN55G2m+jeN4ZE+y5vTABh8ePO1XHWTo36O5twKiOwyixbusGLVxXzmWbYtaHYZijlk1nCof0vQDpokJNnl86dATUhNgPGvkInb3VxjW454MR/gHbuDWYI+8kGmqfRXTrynlyTVefPqGUbF43KYBusEyxvRBOvj7N3kOZI4qJ6+b/3N0aQ6lDOEfQiIkbKB15jEVWcybB7P4KQKAp9WKl251o+pyH9WBqWI6pDnjWwOPm+0+QPZyRQAVYeZACsjAi9YVX+/9cAsHAOqnSURZNtxIbREg0YtGS5l6jb0bq7AWtKHsLJ4VRoHBg7+IMnjGQ5wgywRGPg0DmIoezZWFyxnWN2UT2soFENBHys6DAPK3OY5U3bpgeGkKLiKTZ+czsKpMMBOX1xlcJGXSRW4v1SBFOojZqBnGAJZUtYI4T4qum+Jp/TaF2AHHaNnTaChHqY7oobQ5bCRC/4oa46VAxIklu9vpq+yMwU3jNg3lzA8jTgTBfRTbDrSfMNOEfp1JPySgcNG2aqQSGCDRUQL8H6pIihYh+mcw9QqMqiKkJVexK58WUjwgFM/tfFSkHjZK3nv+VdgiODEyulSH+kNBxFMdKbNVImMKN0s3XHUcJgPFFp7lhjyOlzM7aFiYH+5bd2Uc/faH6i7HJlscE2hX92rDUU6iL3E55APCS5HPPxcDefuS2/1bhStrS20M5HHWMjoRjJaobSkenefeJLtLVO2hJJ/oj/pvHcHBn3qYjw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9lluQn7HiMnxsuj+lDjiPTsM3D9p/DaGGIXRf1UXu5WnkclGgH2mJIQ8RRtt?=
 =?us-ascii?Q?bONcpv0JRgZ3I/LBmuutkfrhjYLkpuoJdUAo0xeZF3h10Xn5gqhvNXMF5Zxz?=
 =?us-ascii?Q?PkZM0nvh5gZ/O5PgpUJPd6lVpz4uqLvAfEfBoNM9NOhAHtBn0IcVKFad2fRJ?=
 =?us-ascii?Q?8WWZBwz0yW78C+2uHJqn/t/GgpsKYljNjRKWkLNFNjcu2OB0pAaWh0FOx04+?=
 =?us-ascii?Q?O1bPGDHO9MivJg8CD+5IvyxzxqnkXED2DYbXrV51Q21InpeZKx3mnOJZqJ5h?=
 =?us-ascii?Q?j/MrpwKOZrAa+Od9p6+VuFRGzCpr8YUP34GQ6bd/pjWl9zu/SEH8O1h1i07N?=
 =?us-ascii?Q?71TOjdunj5/+1mxIbHHE9OTKv4U/Azn3Zu02TNsg7p0XQy/UOhCKJRgqOYv2?=
 =?us-ascii?Q?/jCyTEMzGoBCdKhwh/y6sUGqQdAZ8r7P1KEbPgBv1oFuzNOi8kohl5A67TIx?=
 =?us-ascii?Q?F1WPVtSVCfHhA6f9yPvfy6hP1wCEUJLC3B5bOSt8LluYH6LQmGi6/qqoU4X+?=
 =?us-ascii?Q?JQJcjXRUI+ANK1IggKTz6XweqcZRILpAWisVLN3Z6GLi1OdZMAMUmZ+E6Vp4?=
 =?us-ascii?Q?/fhjKDz42mvqmnavlCVHinfAjJNR2USFadSOZQO4FrHohRlVL1iYbsW8eYTX?=
 =?us-ascii?Q?5Z6t+/NKk+Q3rr1tD8SUUkww5SDLh5vkGmDuloaOuaxyOnWtELVZ/He7SxU/?=
 =?us-ascii?Q?XeApbVV+r86E8LJv+xuYyRaWEIfqsDEATbMRgmPCGkxpGmrEosGMP+n3/lPH?=
 =?us-ascii?Q?yWsFZcgJgy8q/pHiVLcX+7zL0bddVVmcaH9Mj0B0L7+N//+DbEYkjYKm3m3W?=
 =?us-ascii?Q?GvO0Z0HrcL77bSVPp+JOa+C2Y2Xesetq4aLsRpw1YoX9ggk78C/+f0GQUdZ2?=
 =?us-ascii?Q?RgC4tf+2gGwJ0301TR4bBLNlWTmJUbOxZavmeI8fuiS9Gzu/48V0J4qnp7dL?=
 =?us-ascii?Q?MBZLyp4EJcTQgf3QoSdnE+n0K9UH9bH4FGodYu8klml0Ar0Wq+lM14ZGPwoX?=
 =?us-ascii?Q?+xbUKTXnJogBvF6v9OLjeaVfHT9uOgS/B71BAcSkJgM9fhE8KP2BPP716pPM?=
 =?us-ascii?Q?ETvSE63sVtulqMZ14DM9UzM8rMBn6+iLYP+tLAh9ZYucBLoj6NxaVSfKOJbA?=
 =?us-ascii?Q?B7ccmNW6G6IJZE3wv+xnXJbxbd7FbcC36oPTsEGtFVzqrrYoQFI0Cc8zqntD?=
 =?us-ascii?Q?fbbi9WvkaMzpL20lzZgduuhYb5+EMyHVLEOeEvIx3JTNcoFVit2cQsvhF2ga?=
 =?us-ascii?Q?lwBadMJopg1AIs5H6sf7ZRVPY+gdNF1wUVatlWG9IBWMJALLK9qXIBrdBeXd?=
 =?us-ascii?Q?5e1cDUG8DGdr/wmW6e4DbmamAHIDoF9aWSMz2RIpi0e2fYziKVd7Vo9rxHdp?=
 =?us-ascii?Q?TaBdWiaWKfIw/yoj05sJQGt/a8STr16mADcI4eehMdtyjcZ/yNR6t1vb6Br0?=
 =?us-ascii?Q?5GCQ7SYCUwXCuwkQen3GQ+Q3p0Pm9gcFzvndY2QDq1N0SR4mOB+/PE5qaSJl?=
 =?us-ascii?Q?ZkWRb3wiqC98EMBDfvPQM1T+jIL9eT9xbphciiZj4ERAk5dpsrXwkylYR4W5?=
 =?us-ascii?Q?TiFYHnJFhERpNhj0SFgxF07Enf+N0pLKZjiD8aIDaTAXRjDJOQPzULHX325p?=
 =?us-ascii?Q?QKPaXdWTes7FTFSb9c/zyd2C0xBUL+oUXG8rpi0snXBNSxAEJuX8xypomTRo?=
 =?us-ascii?Q?tLFErYVKtNCtTqFUrLNdiapEfG0R9NXUJrGvFby+hWNRdya7fDIN7Aezb5ZK?=
 =?us-ascii?Q?L4KG6WmvfQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: D89E7jT1UWo/egxC6iTdkoShXVDBBSfyv1kTs4644vvO8DKD2mEuy7wbWbT2eRZhsFWPutfeXf9+NwnyLc+ZwLq1SKfqHCQaPEjVUoOqTNCHLQhEtZajdWa1Pt4R9p5VS1gXGc2tE5xJjWTdnBhDFg3yhk3mxyTMjdvDqqg5pWMyDyfZOB9K2RoOn3+C8FsVMIx4yGHm0XgXbRZX7Y96+KVziavNCS/HeQCVD50W8tlyak4+hc7OxUsRAgqObFQlzvC9bomLeQqUAhtCHM53eL9Fe+qQdUl0qNIDJbMcbgcYgfNQzFrZSubnDDtz+PgJ2pR0XsSupnw5tM3FmIgt6g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b4c5721-b73f-4552-bc8b-08dea52566e7
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:55:19.4467 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 92cqkiLSwiBHP+K+YS2gpEauubt32vP07XgWCqEXerUDQ1KfsFLtz6o688FQ423UCaLSSY9C1DdDgoqxzB1hVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: BBD3B4855D2
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

Remove the min/max rate and lane count fields from struct
link_config_limits after all state computation is converted to use the
configuration mask.

A simple min/max range cannot fully describe the valid configuration
set once individual configurations are disabled (for example by
fallback), as it may allow combinations that are not actually valid.
The configuration mask, on the other hand, always represents a
consistent set of allowed configurations.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 72 -------------------------
 drivers/gpu/drm/i915/display/intel_dp.h |  7 ---
 2 files changed, 79 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d577cdb1dc4e7..16ead049b5bf8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -352,38 +352,6 @@ static int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	return min3(source_max, sink_max, lane_max);
 }
 
-static int intel_dp_max_lane_count(struct intel_dp *intel_dp)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_dp_link_config max_link_limits;
-	int lane_count;
-
-	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
-	lane_count = max_link_limits.lane_count;
-
-	switch (lane_count) {
-	case 1:
-	case 2:
-	case 4:
-		return lane_count;
-	default:
-		MISSING_CASE(lane_count);
-		return 1;
-	}
-}
-
-static int intel_dp_min_lane_count(struct intel_dp *intel_dp)
-{
-	struct intel_dp_link_config forced_params;
-
-	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
-
-	if (forced_params.lane_count)
-		return forced_params.lane_count;
-
-	return 1;
-}
-
 int intel_dp_link_bw_overhead(int link_clock, int lane_count, int hdisplay,
 			      int dsc_slice_count, int bpp_x16, unsigned long flags)
 {
@@ -1552,31 +1520,6 @@ static void intel_dp_print_rates(struct intel_dp *intel_dp)
 	drm_dbg_kms(display->drm, "common rates: %s\n", seq_buf_str(&s));
 }
 
-static int
-intel_dp_max_link_rate(struct intel_dp *intel_dp)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_dp_link_config max_link_limits;
-
-	intel_dp_link_caps_get_max_limits(link_caps, &max_link_limits);
-
-	return max_link_limits.rate;
-}
-
-static int
-intel_dp_min_link_rate(struct intel_dp *intel_dp)
-{
-	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
-	struct intel_dp_link_config forced_params;
-
-	intel_dp_link_caps_get_forced_params(intel_dp->link.caps, &forced_params);
-
-	if (forced_params.rate)
-		return forced_params.rate;
-
-	return intel_dp_link_caps_common_rate(link_caps, 0);
-}
-
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -2692,18 +2635,6 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 	struct intel_connector *connector =
 		to_intel_connector(conn_state->connector);
 
-	/*
-	 * Remove the following min/max rate and lane count setup, once
-	 * all users are converted to use link_config_mask instead.
-	 */
-	limits->min_rate = intel_dp_min_link_rate(intel_dp);
-	limits->max_rate = intel_dp_max_link_rate(intel_dp);
-
-	limits->min_rate = min(limits->min_rate, limits->max_rate);
-
-	limits->min_lane_count = intel_dp_min_lane_count(intel_dp);
-	limits->max_lane_count = intel_dp_max_lane_count(intel_dp);
-
 	limits->link_config_mask = intel_dp_link_caps_get_allowed_config_mask(link_caps);
 
 	limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
@@ -2782,9 +2713,6 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
 		 */
 		int max_config_idx;
 
-		limits->min_lane_count = limits->max_lane_count;
-		limits->min_rate = limits->max_rate;
-
 		max_config_idx = intel_dp_get_connector_max_link_config_idx(connector,
 									    limits);
 		if (max_config_idx < 0)
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index bfba29ba715d5..c4bad94524c52 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -26,13 +26,6 @@ struct intel_dp_link_config;
 struct intel_encoder;
 
 struct link_config_limits {
-	/*
-	 * Remove the following min/max rate and lane count limits
-	 * once all users are converted to use link_config_mask
-	 * instead.
-	 */
-	int min_rate, max_rate;
-	int min_lane_count, max_lane_count;
 	u32 link_config_mask;
 	struct {
 		/* Uncompressed DSC input or link output bpp in 1 bpp units */
-- 
2.49.1

