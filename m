Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eLRIJqqt8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 405B14851FB
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D377B10EB88;
	Tue, 28 Apr 2026 12:52:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VZ3sywQE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5209010EB81;
 Tue, 28 Apr 2026 12:52:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380770; x=1808916770;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=2C2TeZM9byckblR35DYgWRBoRur15Hg8KB1BHdYnXK4=;
 b=VZ3sywQE7OEqEqDKV9ZUscJWGJr/kkPbHGy2eMAEDCSbvtRLf3vIvMxe
 E34c2Gu1e9h89nhAtbUQOazlMug5I/yxeupBD1zyLjywB6zEJHbn8EAuI
 DhiHQ/MI7M3bHiBwngofM7OCK27i66R0VrnXRFjlmmkYvw3kA/djmofPT
 0PZDMgh4CgrtvfdPoBGeAHbJiKSILshRM+dlzMg3R/ATCsz6O/hrHn/b/
 CqPHi3UP/pHbPjbzOk5faK1eJyTLI9J6sjxPexfeyjNlDxhePWnG0mSee
 NfvD0c5SBmUmSpJYX/16DHgEJIHxhenP2Kazg9v1b/g6a3bYBkdMqntLo A==;
X-CSE-ConnectionGUID: 5L4UJduDTLGY40MgSGZL/A==
X-CSE-MsgGUID: Xra6usp+RDa51QSSixvN6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78398554"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="78398554"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:50 -0700
X-CSE-ConnectionGUID: qV8bcLoSRxeNYXaW59NfEg==
X-CSE-MsgGUID: u+x8xCyES7qgR9DCeeImyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="237911265"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:52:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:49 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:52:49 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.28) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:52:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GLTZkqsF3fCFZlKo26lKOWoYSoBc5eLf6DxjLs3IDQbi8rWrKyk/irxek6lKrFHTbVZOE2xSh7efZzxQgbB2ZGhzx5R512Kj17qMucOO3cmqMGiYkyo0uC/PUk2uAGRwEVKLbys0uN5aC2RelZpel08zAOFmtDWLji/nMER7xicAVLvxtmn2Q8hWf8h5UhO/lcPJ4ijfR1iWkVcq0SzNvJFJ4UEc/WJ2VuVrAIYhtkWnzwroiw1HocZvIeZSGNah44MyWg+2die8DabjwdtunEDKsSZIwK9UMsy4u+Xk4moiZNHd1YkXJBn4XYHPpEoa1Vg/8jz1GPeApKKX3xBkeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qaWqI01EXlFx+D0Q98HnRgATNzJVPU73QOS8rufkonY=;
 b=fN4KcLycIE2mBii4S8DVODu/oNOcGYzGVpwZ3FD2iOk+MNSq79V1rn6/YVNuu1dA2ja3GmXZVkWQC7CCfnuAodHLjdGp8VpFHTD69OzvD5AuTYpkGc/zJWBcsaWfhwbdFFl3beEUU4IIAbdvEbLqtyigAuS7mIzJ1it/QSU6PzlI/165eO3RaJZby0GC5rOTDGGHeMdjKYkxQrMjLp/xTOwUOZ/XZ9PmGZtxwbGNo8RKGau6GXtglJvhSzHrZ1avJhbmWiROF3pFfRDjqvOI/Mpy91VRCPQUjBpr8gkEJ/CSL7rcKNLp4m1tkGNOExvFjr8wePMCmDlmReMS6aTY2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CH3PR11MB8156.namprd11.prod.outlook.com (2603:10b6:610:165::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:52:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:52:44 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 002/108] drm/i915/dp: Clamp max lane count to max common lane
 count
Date: Tue, 28 Apr 2026 15:50:43 +0300
Message-ID: <20260428125233.1664668-3-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: c02bb9c6-f402-4c46-15cb-08dea5250a48
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|56012099003; 
X-Microsoft-Antispam-Message-Info: +Ey+WJ6vF4ytQdLQwmCynN8+whcQFKKDVRKmHANlVGugOaAUCIVPaVHQQ6aOT8nbtiVMoKytI9+qIX0/UVUfeLSzDV9vC2zjnoIYYrRptQk0Mjc6xYsZ37D/u6ai3aEq0RaLIdhyoWSGea8xIprQvZTQ7hCAzSO3mO7gesv3aW/i2gqnwEnUxq/6vq8gSThh3lvdjMW5z13PuS2C8T5c4S1wuEOmLH0aLVJXX7fMteijfuPo3SV1C0bmMj9iFY7UK3PxUPZygP/h4I35DLS6yPFzqj1oMjL5cHs8vq5yZXPZfLckrtT7nHQ4m1wya4MCRNugQtg5KSgGwoPBr5jGQz0CUCeu/TM17pO/pqXWOaRBfE44SKv5tir3U4/bGQ2TeRnUuGZDZB4XRZr43Y89k/Z7uwPODLwneqNZPJ7ivA26RHDrSc1ewEJ+iF/pP9HVUGy+/QQPGwwDD7dItjJ6ZFohKZXdGm+LaBsdm3sXih6aMdh9CtTxY+UlQXcPG6HxKQWETd21oxcDl+EWGrx85n2tmj4BF2IUDSzQk+sLnvKTshU+/QUrK2mJChZnAV7Vo5loDgP9hhAL0S4INrCVHPHrV+ymWx1b9Tse5nI4bbFukr1VvslcnCx/vQjPYhFD+nf/zYle5DuBFksetHHE29ia95wZ9W4V+pGvojd2z7UDU1bIH1/uHL40XhOSkp+oBF92pg7/E+zAu5Fz3QMvsXZEAOJyXTjEoZYAIba0rKg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?HNLPLPuUyfiw5cdD/WSWH2kK4KPsJf81Q50VGScccWtvMDnvfgFfEEXiwaOs?=
 =?us-ascii?Q?eHDY1D8lIhCJ4seINZOIL8fogukJIO4ZNpATqrKCwWdeCzDDJBU5LAABmuQj?=
 =?us-ascii?Q?hbDh3/y/eYLiOi0bqcHMISZbFZxQoJwEu5s6cZs9qWm15QqZuAi5BpjO1orq?=
 =?us-ascii?Q?9JXsAn4Dt4tHmMijc96TyrURVUgXKkDB2gj+kqeZ8d9FLn4oFuo8TFY7pgxd?=
 =?us-ascii?Q?PM597O6gthNlSrUjAT6tM6gQck3VfS6FkxlH/o35YI1u8s+ndwax96f9dv7/?=
 =?us-ascii?Q?LVSJPulqDQWGpxjLqFgGL8nlcOS44yYMVyljdgoONN3Npn3bO0/5pK9Wq4ZN?=
 =?us-ascii?Q?M2kyPZM3qbxjnGuwHHzPdoXhLia+WkXedWzoO03Dqy0a2+CoHe9YcUvmFpJY?=
 =?us-ascii?Q?Pyu04864yWQq0ef6J4nyVpPdUfStP3+EtpiHASrx2zHXT6lgfhwhFT9whSDh?=
 =?us-ascii?Q?/PIryGjYp5j9vnlAl88Rnfy5am+yhXtxAtQ3Y1K6zBWG0DMzmNCsMrgkrqTR?=
 =?us-ascii?Q?PUyuRsJTr4XzUtsIZoUpCcRTBLt1ND6DM3g9ISKA1EbheANGPzo9VjHFkQGK?=
 =?us-ascii?Q?rpD9UMUKIDwEvVcZt/ASbjoceogNKOsRPghn8qK2KmWMzGAfI6Gpg99c50Dd?=
 =?us-ascii?Q?fM5ZbibRZ198euHgAOUOveYpectC7YHGG6zfQ+D1EskrmrSCYHc2SLlj5d43?=
 =?us-ascii?Q?RY5RBEcqMwag5acC3Kq1u9R/SDGaRB66Bj7mRkkFX4EwEcwPZ2hy8S0933T3?=
 =?us-ascii?Q?uUzK7Nyf5R9ObMCP3GDQZvLN6Wn75MxhCO2/22eA+H5Dl4VhqjqOXgt3F/N9?=
 =?us-ascii?Q?Blo7gkG3UlQq+fwRbfqwH4IjQoe7pSd33f9P3+Z7KmichU2dMqd/SPR0+u5g?=
 =?us-ascii?Q?f2LNh+4JCBsiR/moBAYH9bl4rc4PqiSRYkflQAF0lNDNxQDruw1kkTEHa8X2?=
 =?us-ascii?Q?cNl2EdqyfIZpibFpz5zt5jLku2pOoGoE25Rf+ppZCaUGfjTeXOw+chiTn8TO?=
 =?us-ascii?Q?1tp989SgWoJZiw+Q1wpTvhYo3gVtCphxusMSnvXw5t/rk4LRGXaAAT4ddaNT?=
 =?us-ascii?Q?YJyibCp1fdYejzhjLtukNcMmqIIDIT4kSJfeJQvB8Eu4FaE31UiiR2G6gigi?=
 =?us-ascii?Q?OCsjDIb2wTKp4u7RP4pTS4zyOTx1i3wry8do6/OX7D7GpHaZhiLIRBFCMebX?=
 =?us-ascii?Q?8LJzBgsjlYG+z0tu9HKMtnTQfLn4yexH4YXjwkX5loYSw99Vpr4wWoBaU1fU?=
 =?us-ascii?Q?34xNKHlDA/1QWAXLxYNTl67/I2oucRuN32CjDbQqyMG0Ej3ZvuNx+AU9b/u1?=
 =?us-ascii?Q?qYi5Z19mbS1uzwhRS7LfA2E4+eYknMu2FH0DJdP9Nc8T8boXL5qcj8xQLtrP?=
 =?us-ascii?Q?cBHcI2zMlxVH73+rd0KCAb4HNkuyB/JlcOhmd22diNCTb1MG/UXufWs6fCeq?=
 =?us-ascii?Q?mDryjfYliCMczMYP2t+USFMW7klfdRECm/lfqgOsx/mHl59QzpGw/fpdi0q6?=
 =?us-ascii?Q?5LNb5WU+7S+/d9ivrXK4F3+Yigtwxwwop2yJNuel7dnAB5p8SiTicyGcce5w?=
 =?us-ascii?Q?NnQUvqhR3sjTWGuXBDgg31pWiw0GamMwFLQCzJMlxOt+Mh1R78P7pb1ZvqIU?=
 =?us-ascii?Q?NIwVnP8l6MuX5i7kkp1BquqNFzYx+IMMbiFyaQXZoetiflgv9t1gNIPLdDhU?=
 =?us-ascii?Q?a0jKEdqituTPaM4fq9zJeyajPzGQu9KHdETy+NaG1DAt+BYsG1ACiI8cpa5H?=
 =?us-ascii?Q?em8Vx6OkTQ=3D=3D?=
X-Exchange-RoutingPolicyChecked: fcAEsKEjz3qdmcRPmHY+nw9BAtvsQhXQXjB7lef0W+jaZuwZEH9Zm2xCw2oOqxjt+1fz2d1XiIDrRsA27yX9V6ka55mc/IALsc6raWHayfX0T8F6rmhQxZm52oLS9FJlp+lj/VVXgdQ23l1Y+3prbn4me9Y/Uf+EJ8Tljveyiy+BThJ/5yE1AXwpmw32S2i9zdQPX7dx44g/JrLUGnuf/tP33DwtxKjXWy7e6fQyLvqpFOKZJll/qVTvwQNnb9gQTh4OI4Hj2umoUxRlTQXhFVeuZy0J1lBUGnNN4gCG3RxupVELhkzY8hn7Io7kkfhTYxinpYNC3USchmGebLeU7w==
X-MS-Exchange-CrossTenant-Network-Message-Id: c02bb9c6-f402-4c46-15cb-08dea5250a48
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:52:44.1442 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /8iY1NOYnfVZbFNGRh0UVb0LlbeIQIWEpudTdp5UP1Q7F1p64c3YaUKwO+/6gqy9ZCLnqrOj76zhFo7+jf7UsA==
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
X-Rspamd-Queue-Id: 405B14851FB
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

Clamp the maximum lane count after sink capability updates, matching
the earlier max link rate clamping done when updating common rates.

This prepares for detecting supported link capability changes in one
place in follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index c6a961d02a4bc..cb81a9864d8c4 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4856,9 +4856,15 @@ intel_dp_has_sink_count(struct intel_dp *intel_dp)
 
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 {
+	int current_max_common_lane_count;
+
 	intel_dp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
 	intel_dp_set_common_rates(intel_dp);
+
+	current_max_common_lane_count = intel_dp_max_common_lane_count(intel_dp);
+	intel_dp->link.max_lane_count = min(intel_dp->link.max_lane_count,
+					    current_max_common_lane_count);
 }
 
 static bool
-- 
2.49.1

