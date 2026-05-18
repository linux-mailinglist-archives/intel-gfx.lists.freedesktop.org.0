Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EHXbAw33CmpZ+QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:25:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E0656B7D5
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:25:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3209F10E7C8;
	Mon, 18 May 2026 11:24:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXLuUz24";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 965BD10E7C7;
 Mon, 18 May 2026 11:24:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779103497; x=1810639497;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=0+qhLTHyt4FDOwym1ikDu5gPIqvm9lwdgO2FYamnWCk=;
 b=kXLuUz24SwXbk7+A47I8Rw4Ul40NFn2gDSp8L0T8t45PDlwGwu1T3KkE
 bSKgnwvRogS4ARRTcrqabM/XrEhBAeG/Zf1XKr0MAUq88/ehA9IHM42jy
 0M4XRh+lDbG1mV38El05h2w4xzvCKyDnGcFpyeEoyQlKMS2TqBmhU2wfD
 4TNwoI56KARLWj8giuY0vvtUe4pKGOvZJg1D9Mal4IdWdx0iB16UcB3Ja
 VubGdv4K4QFha4UD+GE+aU7isiB4AZ/NEUxIbzM7SIuGu4+xsPwaIPstB
 F0OXE9UU4/V94j9h5+DScIaeP57cOkaupr3DtA9UN7YEHKIkn+0pZE+6j g==;
X-CSE-ConnectionGUID: Foi5voC3RRyz8T0NdryFtQ==
X-CSE-MsgGUID: S0UfcfPWQY2nBExYamo1XA==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="90534245"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="90534245"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:57 -0700
X-CSE-ConnectionGUID: QqXZYowcSNSW6w8YFIuLlg==
X-CSE-MsgGUID: 1dZew7N7RyGJfPVvm5p2pA==
X-ExtLoop1: 1
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 04:24:56 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=W5V/CpMNx9QF2TWNmK081ggVWyJ9KRp2xzebSY4Ax2HL1W+9JsljoLF29mZy0R9WUyfqZWn+MCCfabZ5TEvRYfnK7fgIS2HFsr+xMwdOsJDTbo0SpSZgunklkIk8EzPcXvZz/7NXVjUXC6P8WHeeBD81NE6iwoQ1EbDe8+aVlkr2m2ipb9lTW+v02l4fZFFFZh67Nn5ErwQYqv6UPGSTtZY9EUNbl2TFNRCdFtvpGq7nszgOQaSt66hjPQqCxHqZ4SI6RoQhjtnkWpWk6Ch3RUBEtLl9EQhIHFJhFELJOl9tHwbKlIPANfd8xvhzs/hIAO5RtwIxASGjGp1Q2FrkEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=69/9UGD5N4I+B+xlxBhPoEZuyuyjKvkTAi/4RlWhzOI=;
 b=ZlbMNAOEZNIy1WWQErJVbmCoM7FvX1dlqTTMszwLnwyx0DLmbATkbjPgGVt3YMTtk/l5PC7xs5kFLIcWnfLEoi53dp1cywIuR3BJzSGUtB0Vl7LRnEj5AR0NUtifg63Um1QG7yk4eSv9KcbbwTE86PzI8zN+zjEpSo5jFH1UJ3WcUkXIS1kULzxVD+Hl0z4RlP62ujoafwtJ9aeDHVxMUMSgk+Y5GmDB2UztHdOP3Buhnwyip1BOoPheLhthdqHbkCeyJ6R7biFcR+yI6LxMOCtFABKdnNBM2gpBXV4FJnJuzVo6bjW74dvg50Cpw/LkPbpOd5Q57kywVCkCHGrfJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH8PR11MB9508.namprd11.prod.outlook.com (2603:10b6:610:2bc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Mon, 18 May
 2026 11:24:50 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 11:24:50 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 4/5] drm/i915/dp: Cache max common lane count
Date: Mon, 18 May 2026 14:24:25 +0300
Message-ID: <20260518112427.2460725-5-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260518112427.2460725-1-imre.deak@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00023A11.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::214) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH8PR11MB9508:EE_
X-MS-Office365-Filtering-Correlation-Id: f742d43a-c48b-43f6-efc7-08deb4d0136a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003|3023799003|11063799003;
X-Microsoft-Antispam-Message-Info: vfiiWt5CuzZeqGNzh/y2Khz6bMAyWLp3BPVCtUZSXU/x2WRvz2SzHH2Di8dr2mxv3FogSAkuG472YO+RBKg4n55Hp2bTz3APpztaPvRA8Ev0w0w1do+NrhpAw3LFXm2cxTC03A1X/hvwoBFApgS3iXXz41CUlvyULdnuHt+JS4Xi/0M5bWaAvU/HbECq/6k64bmQb1/SlcSYkrTW6gPeceofv+Dt1Tl2O5BWzTvQ5zTUENzNlQYvUT7VbALSBpqPtLHHwy8QPEgVoVMLaBJOqgw2/uKwb8uOc3ovR6TPMJNBX1nwNd6K3lJgM+SckVJSetupSpP5bBv78eVtb8DbfVAO7J6EDfM1nd9vX7uoeGuSX3ZGVM3yTl0DxmyQfzpROX7isxJVkoUyW6OMmna0Mri9S62rTf3cxdQXVfUahJKRtTG6sCyNy/38tahbvxDxSbqvw0JO5LmmyaOea/2gi0/wfqJjm5mX98B1d0IwBHZymiwZ4IsAP3YdhIaMj9by6Nj0fr19+xWE8fBPsYx14jvDNpTWvb03WajxUWahPpx3IIcIWTmhY2ftQyIsPZJLlrSpbHftf06QQ7MnFK8bGZ6LC0F0b6W4mJqzAAPvD4/45+ddEpQUGF7wTouXh3lLsqycz4hw1BGhPCTZpPb9kxL8j8E4YFbEEbjevq3mMKGzQaBWitsx6N6CnRBUtFzq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003)(3023799003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?J/8nhrb5iQ5CKPWRtExAxGZzMuKkan3pNvCtZb5cdXU4Bo01zHiFe1AuBYpw?=
 =?us-ascii?Q?yvHDjXcFP4PFSA93FLZM+DUHlneQgqMvwa3pdyvhoVxTWN6wUJi/cANnh2sP?=
 =?us-ascii?Q?9ughGRM/wkxFhjPmnfNctmJdcqkvPM2m+ysy1oezhMLtQDMO8EANt/4It/3j?=
 =?us-ascii?Q?cCM9xiVpgb4FTRP6VtfukTDTpE0ZTrs/qkZ9kmwvXEC5QIOIE7rvDYmTaMjn?=
 =?us-ascii?Q?G63IZJfR6bKRU8u4dxheGKC/8DCqkn+xeC7MbnRsS5X6bjXkGhQUXLqK5HPo?=
 =?us-ascii?Q?RBO9OmTkuVjp0IEAIqs2YVIkBYIOEWjxZkr1PenP662jb8GAhjCQnR2dAjdE?=
 =?us-ascii?Q?3V6cd7/AADjo8RkgJfsqrjSIslVsDjybYat0EMLtS9FCCuWMf4vN5QNlnMVN?=
 =?us-ascii?Q?JvZqL/4b+iKwQV2EK6MSP1KFQMl1ZyqBZKzEb2b0nqToSdKVeKynZH6NgU5v?=
 =?us-ascii?Q?4QBQn++EAfR+GlmnL0vPBSZrqOkcxbiNmOhRCM31YuUurAIOCVTIb0/P8rKj?=
 =?us-ascii?Q?Taf7BWUYjxMWgX9zxIExHY159t4Ciy3O3dSEwd+baoyPejL1miq5LNlkd7+F?=
 =?us-ascii?Q?b3EbBnhM1z7euKFuR0Id3SRBqXLY+moJP5Ea1h7cXX8SObIzfL6oSttzuDGk?=
 =?us-ascii?Q?8t/3Lf1+qCfIeSJ8TlAXJroaQPAmivqGn9OA+7Jp2BSf5sREh5qLauk+f9zQ?=
 =?us-ascii?Q?EhHNIuB1A6GnmigRV0avxux5dEqKR6cgn0bSCm8atG764XAD0zFIWy+YZtvI?=
 =?us-ascii?Q?8M0/IYw6fqcQN8E004OoSB4b1zurqTyZjUBaCTSRIPZp5c9Pty+QCsR21vzD?=
 =?us-ascii?Q?D8cQOgaAqLitXsqGU5mHq4MdVUk03xrqXKh6Y1MX4VeCuKlEhJQhZFXUMtn5?=
 =?us-ascii?Q?t2lfrWeXaOze86gW446V2fPvVZs+FGFrLN2mafPECmMnIgg5vApvM13xj1tt?=
 =?us-ascii?Q?AdoF/1WBnNQAwjrKNerep++wqDonlQIpWw22UzenrkRxbpzO7Xcd+tT0Bw6i?=
 =?us-ascii?Q?tm9oArhvak2zgIMwe7m1BRiVFijnz0liZQHGqyiZY73yH13k1XB8fDMJLZk7?=
 =?us-ascii?Q?4s7YfNw2oobGWytoYs1FVnXZvJxA3U6NA0WQaPXEfAJ2gPZRoMQg9GjM5JjL?=
 =?us-ascii?Q?WoYP0QB3fQIKPk38ND7bZTfLzJ06N78ZmI82q3tuOnag6HzLttc9yxtCJUo3?=
 =?us-ascii?Q?6H8XaHuuXRDFOUtJU+ETawvrow99o0utgKvFyqF89QXxFCxLO7JxppVNlftd?=
 =?us-ascii?Q?e3sRsu50XUqYh8ILgCW30Xk6IahQQmAn6N0M80Jpe7v8orx0gvtpz+gxkGPS?=
 =?us-ascii?Q?31IfNoqSvVG0bC5WgTX6EKLXczsexxMsJ+QVZx9Wg7Sxc5/VzRXRYKFKQ9AL?=
 =?us-ascii?Q?Qifwnx4/WZRVROMkmkvkCou3ugu/leTLJD2orRDs6puoPHquqdON4OauyWGm?=
 =?us-ascii?Q?S7zTJXN78nuVgpNUBb6bcuBBSBJzNvZeTG+eqWxEaSpiAxqfvLD1la7uN/g9?=
 =?us-ascii?Q?sIslTzhS4l/U0kXlKa+1Ihc9fEmcJfvSf9i1hbQ9na7C1wyagmYSdibAAHgC?=
 =?us-ascii?Q?bXGKAJRNdeY/taWBwGv8bcA+2FwxTD2oDLZ7pXIeWK6FmnEhrlYYFp6ExR5l?=
 =?us-ascii?Q?GAYzrVUEtTeT6n1lI38QiLrnb4b3mVd56j/7eRJ8PJatv8zLHIGS+6WeUr2g?=
 =?us-ascii?Q?OPFWGhqR0ZTUEqiOdG9uEIStgRlHP7I0LucCOCOWtVLzdlyf5fKuro1T5XSG?=
 =?us-ascii?Q?JTC4awsj7g=3D=3D?=
X-Exchange-RoutingPolicyChecked: EodEbK2PvcFMk7vPbUbzk3qEytSCJPU3qOyWP6yOnOQJ8c1fEWNztjPMTsQGUfYStprRZ3aWTo8yzaVpD+klNrE4A7dX8dwJ9CPikZPol5tOMr8OUdVReYezdnrtFoH/yFDVUPbXGyTAXjfM27nWPG7BiVWkuJmcjWYB/CEnJ2rLY2zY9oVR5ZZXyoORf31yOVN4jRdXMrO1NWkftP7l2ZVIeHfuylGENOqvE0lDeiQiJuUClqwak3AbJ9KLha9+IurJPWGwmW0K0k7qUhZblMd4uT+bYDAdqbGG/7Xs+fVYXOVGCkzOb3B6s/oppaM1rv37kBFopoNJ16olJoioKg==
X-MS-Exchange-CrossTenant-Network-Message-Id: f742d43a-c48b-43f6-efc7-08deb4d0136a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 11:24:50.7808 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ycvv2Hl3adwqGyNsPgVZcKwzOvB7hZQk0pvFz20UrFTOxKVyUpZoj8gHbmrAoK4C+zsWZX2UKLVlfTGi1mkwdw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9508
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
X-Rspamd-Queue-Id: A9E0656B7D5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Cache the maximum common lane count together with the common link
rates.

This is safe because the cached value is updated:
- during driver probe, before the connector is registered and can be
  used for mode validation or modesetting
- during resume, before output HW state readout can query it
- during connector detection, right after updating the sink/link
  capabilities

Caching the value allows detecting max common lane count changes in
a follow-up change and keeps the tracking of max common lane count
aligned with that of common rates.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c            | 10 ++++++++--
 2 files changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index f44be5c689aef..c3811242310c8 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1820,6 +1820,7 @@ struct intel_dp {
 	/* intersection of source and sink rates */
 	int num_common_rates;
 	int common_rates[DP_MAX_SUPPORTED_RATES];
+	int max_common_lane_count;
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 06bf1fb23faff..6c4dadfc35806 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -363,7 +363,7 @@ int intel_dp_max_source_lane_count(struct intel_digital_port *dig_port)
 }
 
 /* Theoretical max between source and sink */
-int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
+static void intel_dp_set_max_common_lane_count(struct intel_dp *intel_dp)
 {
 	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
 	int source_max = intel_dp_max_source_lane_count(dig_port);
@@ -374,7 +374,12 @@ int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
 	if (lttpr_max)
 		sink_max = min(sink_max, lttpr_max);
 
-	return min3(source_max, sink_max, lane_max);
+	intel_dp->max_common_lane_count = min3(source_max, sink_max, lane_max);
+}
+
+int intel_dp_max_common_lane_count(struct intel_dp *intel_dp)
+{
+	return intel_dp->max_common_lane_count;
 }
 
 static int forced_lane_count(struct intel_dp *intel_dp)
@@ -810,6 +815,7 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 static void intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
 	intel_dp_set_common_rates(intel_dp);
+	intel_dp_set_max_common_lane_count(intel_dp);
 	intel_dp_link_config_init(intel_dp);
 }
 
-- 
2.49.1

