Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id XjPVGZ6tMWo3pAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14AD369519A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:10:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b="eIg/Kd3y";
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E0EB10ED56;
	Tue, 16 Jun 2026 20:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5788B10ED3A;
 Tue, 16 Jun 2026 20:09:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640599; x=1813176599;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=hCezPyd4bkacEDvTFep67vZsfeyrno0kTJPiVR8YoWY=;
 b=eIg/Kd3ysm8cE1nc0gyevcfLu190RSLB2JxzCOOPdv8FVKYNKCmD6kQ4
 RYv1UnGXS8XamqMWT3vkSwvB2gn7dtJ16u2Q2a4w4ABpOZxk3D3O+uzUO
 D9TcrFALcDnKu9hNKQ6VmclmcK7dcnBj5ekbCZLEq0T0FF8mdyJaGn0g4
 oObCTWQU3cD//hzesqGpBxAdohosZEVkHYHCKoodLi+HUHGQFAbBNijcK
 Spg7Yew7ScqQmv/kKRjk24KihcHDwP4p7xYbKXEOHMlhjad2fijx8CUg+
 ZYmSWPjlGXVAHedSu6WZxZ1gcein/F2f25kCiu/pFv+IvQHAcSyPEujdO Q==;
X-CSE-ConnectionGUID: nymTznIiTZ2jzAWP2UPvnA==
X-CSE-MsgGUID: hdpB4tpuQZSrIoW05VAwKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="86255901"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="86255901"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:59 -0700
X-CSE-ConnectionGUID: FdDEVmL9Qlue9s1298ueEw==
X-CSE-MsgGUID: 49SJwfogQcO2FOvOOLi87A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="271579890"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:59 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:58 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WD//kaArrMfEYHY89F+FRFMCQDZTspz2Rt/tkR1fScoxZtNQ1VD5cwFDS8tZ8DEeJ6l1HNn4bxqrREzzoxIbpkLDxozHeWf6m00UPJv8xrs2RpoxaUAaYljxL+l3vGoRyLa6/qeX3wz1GFFTRnPbPy+BNkTEr87QUwGvSVtYXQx7BTMSP+5Pj7mr8+GGUr9E1P8ZWaeFVJXYJtCdo5valzoJBkJ3NGJtRyytZRkfZmbb7VLKNLkq+VJeT5Tl98zsD+tDwWctweVckGTe3dBCurcr8trcswUo7vxqcInH23yrINwT94sEYWcjLeFZz9quLXGF3/9MVMrOOe3aRsMgoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ewdGc53KKy2a2gPkglcDRegjd58VcHtay15VOA6hfWg=;
 b=vnQyK4bZNna/pNkuJiQrNZr5+0XT1FvgyKn9OSkQ6pCQNhI+otMBNcywCQeviDQt7lrhZbMFKiv8tRwQgrk3cYszyNcy6qN61VvoxpTbpAV8FZS9/K+att83T5Wwp+Z8NJeZyE5ryYDYE6nWn0lLSdvX68FbxsjnCvlg97KgcZqGUYDyAbkQgcLNrdhSup1/IGFhpNaRS8Mi1Gsp/h7opO4qH/vpUc437W6ekyl1YZexiIcpP/IJpNP9HCJGRHSppgisuATV/x8dCEjT3DMjwWx1fU4b3mXknmSBTPRX9v82SfVuy6aD/Xp9uOPEqML5TLAA6nzaKwPORsXgqTCggQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH3PPFE994B740C.namprd11.prod.outlook.com (2603:10b6:518:1::d5b)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:50 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:50 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 25/28] drm/i915/dp_link_caps: Move max link limits to
 link_caps
Date: Tue, 16 Jun 2026 23:08:45 +0300
Message-ID: <20260616200849.3534628-26-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: d98fd32c-8e49-43d3-66a8-08decbe338e8
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|6133799003|22082099003|18002099003|3023799007;
X-Microsoft-Antispam-Message-Info: yGZIhSeTaBAaGpZpuly4sDejGCCxI1FDihLCjS10ajAep3X2t65kU65IDhH3lSrvSab02lJCjWPXecz/xiEF7r35DrWaThHBexreoOJHTHo41N6aGyxdawh4/UQ4beFuiWGAjKH1Uq7RdGm0ncaxrywMhUuAY+AhZlOwyi/dllYI31vUoGFR/w4UTaQBbziSAXFVaY9AFUlE6L1f3eQN2xL8coO5w7j8esfLCETDtBcE1lgsmqTW0MczQk6vZGB/N/M+XvbWebhRvHuVTde17zuEwe3V9Tvjz4qTvCc8GY++9ZDXxdTOZcDlqsn1yWQR4xV+zQxOymwdKiuefaYd7gUR05paC3QiX5Db3XwdpdI1zl6OnH1KYeGKPxnd639jdiNJxODCeIdhyOERKjo40iMUGfGg/sITmxObRUeAPG5cIJB17hJdWa8Mb5IMfTG66VDkMXWmKieiL7o45Bx9/AEKPGqlhJNCdjxnCsHQ79WPCvsFH8NKLPEtlHvkdNEsFzdncSzajL4QrZdJhu0QPO/0Bytp7m2z9/hW+lNT9kD90ECfEHpGM5Pm/wRNSF+ziA+7eR9TjPg5PyYjxkFUm6znesQAOaBc0iSt6/MJ9bWoXUVBPOiXojYxkTrqZXzXgmpfJzMfVVlBpEltbBtBj0/9h1lzWNp/oKtWVWLX5gLTWDbJigdGZGzgx4GftaNL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(6133799003)(22082099003)(18002099003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?apPvg6NuCZEcVxETLdWAkBLGKMKECn2cpvVI8V2mHlDpzwY/1elBfJbIaGhT?=
 =?us-ascii?Q?Ok+lZNyXt25/p8uv6A4hbzBzLI6cce2wYr/CsmysH/nGOhlMuO15L+8ATSJI?=
 =?us-ascii?Q?SUJm5gzcWhM6P7pCmysyeHOxC8W1MnagUr+lS4lqoIzHcPO2dpFfffAyTNcj?=
 =?us-ascii?Q?iBVlwDkJ0L6zfbzilThkRggRAAfh8vgmXGP0T292nxsLBITg2r0gJZiHZKZO?=
 =?us-ascii?Q?BxNcoPbjS+o+snsWtmDdIrNxIQGeOyFntjoGDy4kJ7kgkHv7kyfkydptBT4U?=
 =?us-ascii?Q?fpeXHZo/gZLTycQSV5HvtMa77mVLYkLSb41VjSLKsMt6zuevU2MniueL04Ll?=
 =?us-ascii?Q?7T+Qmly6qJsWOkCZcmS+TOMO1nJso51wArNdMJ0cTqdxUDiUxNtJmwMa2Fe1?=
 =?us-ascii?Q?e0CQwbwNAQGcrWH/fQ1J1KDUB4HFQ3ccIqXjE1sv8k3ioa1uDQIY1ymyS4Uo?=
 =?us-ascii?Q?n2465UrRqtLYtiPLzmY+MePBKgJRiFAjUR60QvWbG3a+fjrwjPVBUbyuzEFX?=
 =?us-ascii?Q?V8FrP60g8/djwR6GHEAJ3y51wfS/cfx5+w20xTBtVXIai3vsQEgTuD/c5Kv2?=
 =?us-ascii?Q?EmZ+D34D0faeTQEmv4GVuMBPRRp1N3wwEdyIDp5uVTt90ICn08rlNG3DK9HG?=
 =?us-ascii?Q?SN516h4U93xlZPwJQsmbEf+7LMMLLvEhI6cdxud1ZdcFtAq4KPVaqc5HH00e?=
 =?us-ascii?Q?V5adYtFr7yXNKQBpuuBJ4ySObNhls+anZu9EVsnI/Nuz7aV4nRjz0g5v2l/O?=
 =?us-ascii?Q?3mybQYENz5EMGP+p9pCCoyjo+S/3UEvXcoubQ+mlS9BxT/hbuVOK9nbOcB2O?=
 =?us-ascii?Q?BWGqMW5tbzU68hxUNZnZYCjrax0h7eyLg72JIfz5ksMTSAElqRdwSAm/AMwN?=
 =?us-ascii?Q?UIUjAoX+KnoqsgYlfB0/BV2hkZhCz4HRQafI4RsmVE8kI+hyEmfZsCobO0pt?=
 =?us-ascii?Q?Idz1hqhYX8z7ml1ZK1S+QvGKyu4Is+FdE35axXsZP/EJC0OK70PXIou5u5Eh?=
 =?us-ascii?Q?dPApMu58M9SncthRhhCDIZeVr575Vk7jk4gHMYTBPT+C7eLYrwWPPBHMzn8c?=
 =?us-ascii?Q?DvoOOzp8f1wmHq+TDB4iinaUZsjRbxzJb7K7a2DQa9Kv5plDYOMUnrStYQ97?=
 =?us-ascii?Q?8L2ruhJuKUkBIw2AropQa+8dxI3vQUYfX1eNcSZt5AOryu6eeQcXMufLCTez?=
 =?us-ascii?Q?xes2Fq5Qdfd5264kvUn7komWHjWqZ8G/O+cIN2VsyO5m4wPmyumVJmaQEfI0?=
 =?us-ascii?Q?3fceXMeT6vAFXVH1aL+6ub9QSax0hgE6J++JjELTUGOjj7no+oZioFenACjJ?=
 =?us-ascii?Q?vxEAY4A9UvHUcNTpHFzoyFLdyA2p+KgxHxrO+9CAQ3FDqUnbDlS5at2JI80p?=
 =?us-ascii?Q?SD/lOPCooxNLpe2BrT99d0XgizkUe4ExbyBXfys+hXuoMJj8GSN+iv2sogvi?=
 =?us-ascii?Q?5fxv0ECgqiTRmj16CdkxkjXl53xxEstDI0Cy146fmXDMumeYZQso3UFN71ka?=
 =?us-ascii?Q?EgfjEq37DnwIiVNALvWiMbPmMCPTFoQEN94AzWSLfadvAfUO25elWhS7nCbf?=
 =?us-ascii?Q?8kkp5uXXZyexjqQNMcs9j7xe7Ul05jgEwSlzqJFlD/n5FkUMFn835C9wNCHD?=
 =?us-ascii?Q?CHQB1uaZvS2TgmCrLnYRKO70qzRUe/KZOc0yjcUXUxcXLjv6HSoq/H+BpJRF?=
 =?us-ascii?Q?dqedo7Vdibh0lhw3wMILcQJUkZ/k4Ca83wNpC8b76UIowYLO26SeJOsyHCGm?=
 =?us-ascii?Q?AUILKPKFRg=3D=3D?=
X-Exchange-RoutingPolicyChecked: nr7LKTyeSoGKXwh0HB8wG2KcpMhEfXuw09SBLGBaUNP485eAAy9Y9zkWr01a9CbcrroBaDAxjNHSwF5EQMftUtvDkmlg6eEF4STbmhInu1NdhvlLcz67ex1NO5kUGwtjAPPU9ILceOwyqa44PHc6pcr7kl3vDiyUoIWaxP+WBe1tDB/h4wBzfYciywEIiXIDlE9WuyOaQR6cvpfH6qBTPSTOMX9f82NXh2cRko/cisyFIB29gdDIFhctZRWkAN4za19y1lt0rj9XEBFls6Te37jfhIYXQyeUpEUnXhiog1CCmWPDGz9jXkHeP/Q8iz69H3GclN3Vxbfw2uq76CeVAQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: d98fd32c-8e49-43d3-66a8-08decbe338e8
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:50.7915 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uDCKlS3fCzvx2M6pF9NiGIOtFu9Sb9YIGXQ6hVh7MkY+4mD5fOPNPOYrig6fmzldWu/mFmoh83Wllke81AvG3w==
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 14AD369519A

Now that all users access the max link limits via helpers, move tracking
of these limits from struct intel_dp to the link_caps state.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  4 ----
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 21 ++++++++++++-------
 2 files changed, 13 insertions(+), 12 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 19c66b3a81509..8f9c8309b33e6 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1837,10 +1837,6 @@ struct intel_dp {
 	struct {
 		/* TODO: move the rest of link specific fields to here */
 		bool active;
-		/* Max lane count for the current link */
-		int max_lane_count;
-		/* Max rate for the current link */
-		int max_rate;
 		/*
 		 * Link parameters for which the MST topology was probed.
 		 * Tracking these ensures that the MST path resources are
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 9b7da5a64ee25..43427e7cf422a 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -46,6 +46,17 @@ struct intel_dp_link_caps {
 	 * disconnects.
 	 */
 	struct intel_dp_link_config forced_params;
+
+	/*
+	 * User set maximum limits. These limits constrain the currently
+	 * allowed set of configurations and are not adjusted when sink
+	 * capabilities change.
+	 *
+	 * max_limits.rate/lane_count may come from different allowed
+	 * configurations, i.e. the (max_limits.rate, max_limits.lane_count)
+	 * tuple itself may not be an allowed configuration.
+	 */
+	struct intel_dp_link_config max_limits;
 };
 
 /* Get length of common rates array potentially limited by max_rate. */
@@ -154,10 +165,7 @@ static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_ent
 static void set_max_link_limits_no_update(struct intel_dp_link_caps *link_caps,
 					  const struct intel_dp_link_config *max_link_limits)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	intel_dp->link.max_rate = max_link_limits->rate;
-	intel_dp->link.max_lane_count = max_link_limits->lane_count;
+	link_caps->max_limits = *max_link_limits;
 }
 
 static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps)
@@ -194,10 +202,7 @@ static void reset_max_link_limits_no_update(struct intel_dp_link_caps *link_caps
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits)
 {
-	struct intel_dp *intel_dp = link_caps->dp;
-
-	max_link_limits->rate = intel_dp->link.max_rate;
-	max_link_limits->lane_count = intel_dp->link.max_lane_count;
+	*max_link_limits = link_caps->max_limits;
 }
 
 /**
-- 
2.49.1

