Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bFF7E3etMWoUpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5E269512C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hP4lpEn0;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9236D10EB2E;
	Tue, 16 Jun 2026 20:09:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA8C10EB05;
 Tue, 16 Jun 2026 20:09:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640564; x=1813176564;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=Lga9dqrW5BRaYzBxsqETfZgUFyLxinCEsw4pFXkmAR0=;
 b=hP4lpEn0qUgjmhOZcwuVUsBWslD4bdAJlx/71zCuZtRk09QZLLji7E8A
 +rOPg9icSetav2uZzJmiGsBHrfrrI69lGeUBgYu6XTm4EDR4nKoPo+3na
 tKqOOcghhiYV2o9nDcNKMtRMt3ds3ZmQEEryhXgheWvuFh5er6S8ZvlhR
 nyV+Swm1M+N5/PZgVKIyJUOHTfn1oM+nKLv7WWDJRnC7Ik+hzfCUH95OE
 JwypfeWaqhpp7kQUOZcXW+cL/wUhLAlu7IjQZdT0raN3KijoqwTYFQvSr
 OjkNNO3Kxr488Wq01W4ndfOlH9/M2i8DdYRvCT+QYjDTrpCu0NWfePiLe g==;
X-CSE-ConnectionGUID: 6dZLIUGtSlCBmkvGPSQz5A==
X-CSE-MsgGUID: MIQ5NF1EQJuS04bdxEJ9EA==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86061098"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86061098"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:23 -0700
X-CSE-ConnectionGUID: vXZdEt9BQgKEhY9UQG7iMA==
X-CSE-MsgGUID: 2jQVzb47SxK4I0+plkC7bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="244977629"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:22 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:22 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.29) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=m0AJVYD3fKUk0PVZRLuXoaL/qgqZJ0Po9MXmo2AzxwQz7yFVAnI4yFqOrPBE34T9Mq5LNM9DTpYUfucvccpzXjZSwTfCzBw/KuaCcl2r4e8MPxADWPHJD+/lRAu5ZJz46kQYebvzJdbua4CKp1wYPVQQd48PBq+3M+cUK5GUOwazMN1HHIXjNTK/y2ZtWTPZfXx4nb1VVwlsu7+XXZdtyflWQKCLKGjwkdjmwql3l9iLvh3vBUT0CT6oRtaCxEZLmh3FF+6E3SSmnt+LHyR+5Y27wDZhpLi7mUy85LGMtM4h68fRKhL/1jjPRzTv+hrUCEl01sXnYH2OdhcLnBaauQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=c+ebXVBHhqz4ycCsiPUABd8NpNhQ84RIPJzV/aV4sOo=;
 b=aYbKu/9kSQmarATuufr/XU/92zbs3ANMi8EFrHvPBd8HvbynzEO8GzCXqcy9zhMDBZDm/4dq941Tbe3rcIEyTCG4I9kCwXemNmtuKL43ec4H1j/ZUwogUdqjfZUYd6k5CvsMGnS4pfJxMDGcVUsw1bdzFkxlT9o/jR/PxCivvAvKKOW2v9tfgRBeO+T8LIFwbfxPdXMUK1xdnj2LDXHdElbhIJRpq8+2SXHaX4zGTLl8J5dUK3cW4K3CUZ+g9pZBeVLfVDLWjG80EK4Lt1BZg2FV222o0cuLBpxC+fK8eL+bOPDnsLshKY3D01gosxeP8OlnddLecdHShrz6OMzwlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:20 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:20 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 02/28] drm/i915/dp: Add struct intel_dp_link_config
Date: Tue, 16 Jun 2026 23:08:22 +0300
Message-ID: <20260616200849.3534628-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260616200849.3534628-1-imre.deak@intel.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F692.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::13b) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH3PPFE994B740C:EE_
X-MS-Office365-Filtering-Correlation-Id: 51d7ebed-f9e0-4e06-2a32-08decbe3267b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|6133799003|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: ayKC+ZGujKJ1sF1xzHTA8WNgjol7EQzaoI60j4CP/c2Rt4P6Hnvf5sH4R6DSLBnsBf2a8dhd4r4epb9MiEx/lmpzEM+x02ZDO9WZjmaooRQolceit2cGZLRx1wqgTvhmUwaEkbpWzcoZAV8r8KErKEHM9zDQUsUyhzLc2uciaX3aMOJIkAm3kc7j2SvHuyDWEee358MaoZdaZpAFmYizmXeJ5EtGZ1uQzaTZEVi/Z1dDmrKzRrrSQ+DwB7j3Zm8Ihg3QOlYyqu6dmNudx0gCAUHlc4KJeKouUKJSGvSTbqwRSSwr0OR9toJBAPg2ndwCJVSBzuOld5wjIFA3kexE61becH8kvvQnmU9YVsAurMDS+UnbjBUtX31RCey9mTLBFpePMdWmdJMdTm70U3JpkK5zhD6zZe1igyf4xi/wDSPtgWRRU2Mmw7aSuijdnHFiCmsgdjuLPehbI/Mff6CoKdBqqccQNZAi3KKN86FYFImwuVPG36nupZ/Fs3PTrwB0gsP0koDL5kcFKn575iIRzq4UTbuRh0J8L/nQ9AzcjbxwQ8azc8YvCRFKUq2lLOFHkYoDhX5RIQvrfv9d8zKoKgZYs4rZTDjPrm5OJ960ce+UNa9nMYSQUcd5suznZkPc5Phxb6SneccZtruDfllYEr3woQR+jvN4Ymz345Fe5bYA9R6Dd8dMhpn7TeT834wy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wNf4eOjCXcOcXXcj38vn/8mWw7FgMsKDlKPu/tkX4EpCSGlW8Kubuy9LwnJY?=
 =?us-ascii?Q?cH+F6s0l753w7zmiweZ0FrGsZWaROvA9es5wdAPZda7A/EKFLqIhrKOKPcaw?=
 =?us-ascii?Q?Lj3Lt0+mUN0rQJgeTwg9HTHjRHqLAu32357hjonPVgLFS2KWSFYFWZa943Jw?=
 =?us-ascii?Q?KydLl0DEvPF+Ta0UQTuzU58W/ce3qf6dPZ4mew+wrEQ6MzvGfaPVeDi/qpve?=
 =?us-ascii?Q?hXLiDcFQu8nRM8JaVSZqqyxDnEZKrOZtIqFvbSJ9Q+leY/CPAizRRPCdN+4P?=
 =?us-ascii?Q?kt4NZbcdjb1KJ4pK3W7lAVfABD/v4Macm7XuCAPyVkdIITxRWMjKGuxvF7ja?=
 =?us-ascii?Q?b2oprv4oUGWSr1l9qrcdq+NVaVXF7XnR49kffN+fY39T8oLMFP5imnthin2L?=
 =?us-ascii?Q?BJrsKC16j1kB6zddF/DiicX5tSiEeObYpSZP8p4+G3Voo3SaQ37aMRJXZpWX?=
 =?us-ascii?Q?PnOTV6xebu3Pg3v9c76HqUPgUsAlVUOpchl8ofZY2PO6Yv6cZrR8ZSNW8xk8?=
 =?us-ascii?Q?qpSyzBOq3BbNfokfJmy6yIiHaekCDRkr+AQKVHkQDzlIMPE5wz7nWLEsu0dU?=
 =?us-ascii?Q?6RTAsdzjEckgtod05PQdm78avxzY+ha7BJ/0WRSaHQFrfNJDx9oVmZnDQJWa?=
 =?us-ascii?Q?gBbqlThixfhz2D31A5geF/WmQ12N1wbE47jmkCg6/ZZK5cURuGRUK1KZ3QqC?=
 =?us-ascii?Q?Xpuqcfir46CBb6XEJKrPXIABiZvoNKeclqTHe95y1DGRsNMk1PR3JB21JP8+?=
 =?us-ascii?Q?bAEwZPKSOIwTHxqz4TsPSVSdD+tcQ5TqNEeN/qiQHT9CbcCfAACbFA9Q0YtN?=
 =?us-ascii?Q?3AdFnNRpYNtwX34Qi25gVSqVV3G7A2vO8FHTzsI2kxXNpZQps51nlYsAsioI?=
 =?us-ascii?Q?nl7y9s/0OdC9W4KxOQ94MUgiZDgMdi95jNBavXd0p9A0kvNJ3wUzk5aotRl4?=
 =?us-ascii?Q?yGXzWNUGUm0BHgvSMtApAJSaTTd7zlqA3Pnpm28Yq+158P+Pk3bdVPDJC/9Z?=
 =?us-ascii?Q?uEegiTDWPP+29uue5s+kMzFvMRd9LpHQIMZQ1GCb3nsxIIV8Qw1UGKSd4GsA?=
 =?us-ascii?Q?QjUkVUAAbOY6E1jeq03F3kgpnWl8bC0aVyTzPAi+dPTqbw4S4wZyLWyVNTEN?=
 =?us-ascii?Q?PReZgAttOoh394zWtqA7i6ZuOS1UzuU1f5HHcfZ14aCk18NzDAUBymdXzrL3?=
 =?us-ascii?Q?5fb2L1JlkKJlWcziWYEV43T25jMUowc6xB6rik+ARDk+oU1CvuCcpdkwjtCr?=
 =?us-ascii?Q?N2/wDi4Ab/DTc9QcRPpWDFs19tQapWyYQKjSBQ8BCWQOZaO4DuC1UArwaalJ?=
 =?us-ascii?Q?sD5+MYn3zVDHUjknMws8fPW35H2HbHcUHEEyRcmcQxMnVeeIlfZ1R3Tw8hY0?=
 =?us-ascii?Q?Qkg9Cco1wxa284+fb6nNi0U4a4RYh1+6ylydLst0bUHXEjWHFEuXdsF00c+C?=
 =?us-ascii?Q?USOFFJIuDALvc1VLocbf0YFJXdrBQ+9v6i6mV1lttxySxm82Ncs3grOk/bmd?=
 =?us-ascii?Q?40u7Ez44nXIx311F2nzZaHovI/p/2/ylZEEthXqMooLouq4o911ei4+/ZgDr?=
 =?us-ascii?Q?ufM4utXYtsjzWTIlbtZcz6p67hU+H5UYZ9sMM+kNAW9BlbdsCKHI6lcm4yND?=
 =?us-ascii?Q?p94yXeAQ06ehhR+m3Wn7T9bWB1E/9TldmsfsGG9xriYausWAeqqSODAZ5xK+?=
 =?us-ascii?Q?wrk/CCWQeVHEIOfK3smQWSHxKnKo3tf9J72LXCzqxF93eFwA3RgoqpfCK+rv?=
 =?us-ascii?Q?Z8nSfE5V/w=3D=3D?=
X-Exchange-RoutingPolicyChecked: F4Cf6408IYzBtutv/vYYgGljgOxyS1iBBP7QFV6lI3Bx/nu8wX35oVfq+t0hfoTuuQullglqCb3qurCptXA69oXyhZ3JPn1sm5LoCyU/qJvAKsDy4A9LmTPf+ojk+qxHBDR7FYRVCXT8zGRmcsYSfvsj+XZnkQ/hG3SjchskiUsCRTqH5yRftIbzXPoDNyJI15u+7L6YQYsmI6D7kejGiP5bbKQcK+pBY8iuFox1ZMG8AmA7049+iv0gyP2HYBBEeVFpwoGTd+U2+8dq3611Vk5C5OohFfhe2Qyq2QTCAR6EYDoH0XiPbwi5hIj9njQUQOGWBZSKTGI5NVbmM+R5qQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 51d7ebed-f9e0-4e06-2a32-08decbe3267b
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:20.0250 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gTTEynQxReYsv/Ay6FfOMYts0KPMb7zE5WA5D1fOehsD6zBJi/9Pea2yq/4dytp8c4RzhTQNm/QGdhXqtvAtZA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFE994B740C
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC5E269512C

Add a struct representing the public unpacked format of a link
configuration. This will be used by the DP link capability API added
as a follow-up, and by DP code in general that needs to track a link
configuration.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index c71edea145878..c092c81ed2eb6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1800,6 +1800,14 @@ struct intel_psr {
 	struct ref_tracker *vblank_wakeref;
 };
 
+struct intel_dp_link_config {
+	int rate;
+	int lane_count;
+};
+
+#define INTEL_DP_LINK_CONFIG_NULL \
+	((struct intel_dp_link_config){})
+
 struct intel_dp {
 	intel_reg_t output_reg;
 	u32 DP;
-- 
2.49.1

