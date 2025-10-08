Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23739BC42D2
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 11:42:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A59FB10E10F;
	Wed,  8 Oct 2025 09:42:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lvrVuX1I";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E55310E0FC;
 Wed,  8 Oct 2025 09:42:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759916533; x=1791452533;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=e02B1y8bGolyE1Xf+XSYLSKhMtlpU6Ado1eM8betgT8=;
 b=lvrVuX1Ie9yfhqvGbrBrTikaqgTGOrumYGCBBsbWYM/L+ZnCcV+OgXD+
 FpeZI9vr8xaqyyVRTvZu+vqsby1yOeRkxdpnmwjA11yrbn7tlYTyzvgyr
 znLlTj6krBE8plBMeX4k9rJbWDJDzYIwyno2+cpkaXzE76ZGKb/x/Tjc1
 X+3acQe9DKS97FmrnYMqjPhwkt9hvbOA4fO8WDVXWlMBHVuLdzTMCxB2m
 YZBLtXpeq2aUcpr6nAqMKSqfymQPB7yHB/Z55N/pPSPxjklGmS0hxzYnM
 khRoIsu/LKo6lxte6PWEjeZOBqeQPK73fE3bAec9bQGjwE9wNjSReVVJ1 A==;
X-CSE-ConnectionGUID: UCnSVoF2TQSFO35lWazxzg==
X-CSE-MsgGUID: 2N/VC7QWQGWJQGLePEkrFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="65957241"
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="65957241"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 02:42:12 -0700
X-CSE-ConnectionGUID: hPHS/dapTPqnzysl++symw==
X-CSE-MsgGUID: Oz6ntfPiQaiQAmd9Jyv+Gw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,323,1751266800"; d="scan'208";a="179987948"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 02:42:12 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 02:42:11 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 8 Oct 2025 02:42:11 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.13) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 8 Oct 2025 02:42:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=kb6L1NLdf2lTvVsBfALe3EiwWcxxK11WWaGE5267OG3fWkcx4Bfn26Q5bZUALTtExA9vfatzacw1D85e+y2tB4hm4ZIVf9Aicwp/7sL64aANfZ9H+0nDL2Pd1jmPyGle2ux/wwnztpuMRY9Q3RkifvfaYDJVcbo8WuN0m1hxKjtXwQ2d+6ZAR+wZ5nIUe60y+DBURjmwdRGEMX6XCckmm4cbxjNH+nAlmQGG3CTfuboJsBnGO6N6WhrZFwWTIHmkBNQWbGY0vLOG9Qtn74AViNOr93DeY4/w+UQUh2ByV010Y4WM8itjUeMWDkpXKFpxh+mjDEf5FpoAzkx+wZvQWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eGSqCOLJ1bvbrEdt2H4bn1b94Mz9L195hpwL9NBY8S4=;
 b=sSlVXmEtZ0VK6Hv4N2xj6Meefb5Y4e2FtBW0iu0EGkMrO2CqqD+gdUgJjcInShjEsMKl3uCZIJm4S2K69nY/ulOecwL2CYk3rt3Rw2KLkXMsMmPZiPGvMwfv6wQ8SG2uFViMwdqhG/+SL1k2wJ69QH6Z7FZXhMFTLvHK1qc6D3XEXRBgwZxNu1x55TRlPXKqPCOoOv6XXzEXLYpJsPEy7Y+pFRHcjr3GZw5gpcj4lk7C+gPR20wtBGES/ejm9O0nPCb0Vr2lsxCOIr/KqGhqqUNJp4j2wBXYYHZ+BoyFPER/cXZbfZBNcla59s0lYaNZOdBUYoczrewd8ftwaGlzdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by PH3PPFD9C09B4A7.namprd11.prod.outlook.com (2603:10b6:518:1::d54)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Wed, 8 Oct
 2025 09:42:05 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9203.007; Wed, 8 Oct 2025
 09:42:05 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 2/2] drm/i915/dp: Fix panel replay when DSC is enabled
Date: Wed, 8 Oct 2025 12:41:08 +0300
Message-ID: <20251008094108.88242-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20251008094108.88242-1-imre.deak@intel.com>
References: <20251008094108.88242-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0352.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::23) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|PH3PPFD9C09B4A7:EE_
X-MS-Office365-Filtering-Correlation-Id: dbdb7a29-8ec8-4f45-662e-08de064ef0dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|10070799003|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?r4h/8CrVZkNFcgEq634JZFcVq/NS+et/kXWkMZuOkHil7yXFgPpCqeiEUpB9?=
 =?us-ascii?Q?XkT2Odxw7gW04KA51HRBZyqOghYJkXQ/7mR6gSV/jVBOK63XV5+fWjUEKJBa?=
 =?us-ascii?Q?1MN5pJpUZ0rNanMu9jktM++PkkdPq5epFJWnXvZAoYjYnuYW67qJ4HQLljNW?=
 =?us-ascii?Q?xKtDt1K3ruonyJ3nLrUUu1pEzxKUyUQMfasQe9SVXQ0V0WgR8/FopMB6BaF3?=
 =?us-ascii?Q?L9P++PzxwKjOK1gW4/C5zpeMvkRtAFFXLrt4OxXUMNkyjF2/glVFGeSX62nG?=
 =?us-ascii?Q?MBzKogXqEKMXLJBGwqQQrEiBNsz9nBjpMw0oJrrep2mfnj/o3qjK4647tBef?=
 =?us-ascii?Q?HE5N2m/69KXmS/B8Vygp12PWTK3cV/9Z++o7cT1f89J0V+ahQ4SNjkervGJD?=
 =?us-ascii?Q?oAfHPXuV8KTecp2cX55JedL86EQ5Y+pISVxZSxcUBr38RbjcMAayEgiKVrhz?=
 =?us-ascii?Q?bwDAAdpy4YRfQMXPrsLzNN3gheu2JH0fgfKWBYhfwovYOx0cMkLEN0SENKus?=
 =?us-ascii?Q?fmnopcYbqtEHS37xg+QqWPD218Qdwl8rLmYL0g5LUgbwMZzqFDsKZUkuIJRi?=
 =?us-ascii?Q?dsx7AhDZMHZJO+kLFlnYBEVuZgwQ853c5/AXD+oSeISJEvZjjdAfVun9djW+?=
 =?us-ascii?Q?wUz+ZQr2pQ+e16HrQRy4P9CHzMOzUGYcZxCF9T+Y81rb9DFa4Dqf2JN+5VKp?=
 =?us-ascii?Q?fc7KjTeYCWoST84L4SM04XpysOxSultYARcTxCH/K3ABtIljxZC9kD2a4RgQ?=
 =?us-ascii?Q?m23KahZ+BP5P1AlL5Jg1r5DEAgHRVL/3QvOI/sn6ShAEPwQbDyaTIZpG1QWs?=
 =?us-ascii?Q?rN3WZVJnmwAXdZUOvH0CmH4EAnBkFJcsCg/zzDnRXg9+SC6J/HCIeE8fQv0B?=
 =?us-ascii?Q?CUadBMpaU44HC1+Au1UeVRj9nN6WHgR6MgzgfSuT+3Rfh7bjxFHnlg70bLnH?=
 =?us-ascii?Q?TafZGbE9M4yixCCVW0wp2jZNpKQQ1wFMJ2aDfyRH0jEj7+k31pCxooxIglai?=
 =?us-ascii?Q?yJnK2NWcX9NIYnUWP8S3ZVSXmwOU6Kvd+wIjVD2nyEdZbVKj8D8K0QPpqutb?=
 =?us-ascii?Q?TGpXzSMXD9gZBkMzYA7qOdwgsKAgcHxQkEYJ8J3B2UkTLOCTr2Q3QUltnsA0?=
 =?us-ascii?Q?0+yrj0GY4FNumwtieIqtzZpMDYZfh2NEfNQpQpFpu+l+6R1sLu24hATJo8yr?=
 =?us-ascii?Q?h46JUmX4AOOwiOEitfryQmUNn3U30Fd8UEnN0IvjnrZr1WivBsFeOzZB3y/o?=
 =?us-ascii?Q?XXTM8DNTdfvj08SmEjBnziwcm6kwZm0OhukttFdgITD2bvT0HVnKS/6rRxn/?=
 =?us-ascii?Q?jrg3t5YAypk5EUdBwObYRPRzdXRAK8OxDyNmxW2JyenliWVwBgcj4jMeZjUU?=
 =?us-ascii?Q?GiQp2JZXMBI6lMYzp7NxfEHQzbVkhChZ60Bt9R8k1NRaAVWfZQ=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qIuwM5MiBD1FBIjJJ0mK1ivbJInJP4mKZfyMOf2y34Rjz/ZxIpG0TDlbbVKv?=
 =?us-ascii?Q?MrHpqm5OjyBs8ZfOwuHghomu9FSdLF4mBqZb3jd1448zLhJyEG5KrowOdeuM?=
 =?us-ascii?Q?+mD7KOyJSJKLZRfiRedS6vAkUVWwqKqVIc7oYqZxNp8V9sf9115BQWLU5DfP?=
 =?us-ascii?Q?KGjVrhkiIQ0I+vVVRl48A6sM18Zirewlkb2aCJNo7P5iGDttqsbQAA2hCFV5?=
 =?us-ascii?Q?dnZ1UiJ9JyIHRoed6k5vF4C1snf/k78r+4/wvBT5XI46WMWz2JAEKAFdm4SS?=
 =?us-ascii?Q?huBCHt+CLDEK86J9JzNqjyasciezZRPsXez/PNlZo13zf9HQ1ZATyN25p4S5?=
 =?us-ascii?Q?xG8IPYjHR6zeQ+beTJXsb0BrirMBc6CPSy4buGmhTcrnnURJeBstNcni6XCS?=
 =?us-ascii?Q?U2xGYv4ypM4976O6K77C4WUcizOJ2NQa53kVxGdgfSyzm3Xo1zN3B+WD1lHs?=
 =?us-ascii?Q?9Hyrf2UIDA/mGKPA6z2jIsEHrhTfwjAUKsIxkdgIF3QqoX1KZQgWTX0fSSDt?=
 =?us-ascii?Q?/OqFqz3bL9qpogTnC4V29zqxaKKE1M0MqnIetLpSFHwnR10VFmB0/PrQGnRF?=
 =?us-ascii?Q?EqeWz4VC1I5RX2uL5ZstHrYQg1StP9rnFcJijksJBjjWqOjwgnuF8njkwmSK?=
 =?us-ascii?Q?6sx2w4yqL1c2TRFgkLxanceO++hGcf4jF3YFXu8adfYaVi1NuZ095Ma9RVbG?=
 =?us-ascii?Q?mqFnDfBj/kc4rcyvGTAKF1orBBtABBeMmTtixFB1emRKgfS8yZj5cb7/6/ZE?=
 =?us-ascii?Q?Ccc9bDbzBfqhjO+cMEGeYp50aN036fpqH1sDdDex8reln9cJ3ownNbZDa/eg?=
 =?us-ascii?Q?o9yhjx8p/l0hwzrYL7jg5mzC8hs2HvRxPtJ3jM6pfLcMamt5dWffkWT4Jr8p?=
 =?us-ascii?Q?x/yKFvQh0JgUsuBPBnYnZ0iIQpWkqvF5KO8yqzAnPsbbfUqgx4oRP2kypHxh?=
 =?us-ascii?Q?JW4OAt+jVs4EcbcF1eIws+0UIkIVJnGikSa7Xut3R0jYMdzlJizy4PvQHVcv?=
 =?us-ascii?Q?G59BtBKY8BK6sd8hgfVDObTBWWiu/nn1CxNyZp9RI9nISCQLh+t7cfxJulj3?=
 =?us-ascii?Q?g+Wz53f3lAILfgqtSLW7xdf4bA1Yp93DrSHOdKRCo9Pa0535w8Z5+CevdxQ2?=
 =?us-ascii?Q?/c6FOCyu6CaZI7pHwt2CnN/H+C+cmF2LLtqBsTyXkyKyibtCNZg1Q5cuXygY?=
 =?us-ascii?Q?PyxAub5mJHQjnmRAcCQ4hIL5FuYwhDDsLNh9lxkQk9JJL0LgQwP6olkhF6fV?=
 =?us-ascii?Q?JmybNBhJW88Fzz1jbr6PvdYR7x4EBMAUdpkDOeP8ZHqT//oJ2apU9wraZZyM?=
 =?us-ascii?Q?aawumlE0dZvoQhLHAkBhRi7LyS7kh3TlqOaDHrpq10Gy8nZbid4N258GPk0E?=
 =?us-ascii?Q?riDeega2lynXEWqO7Itm01aKHw/nwifnfd8AVabJGSuNZTu/4kHAudGmlxTS?=
 =?us-ascii?Q?iiLYCEmZi9S+So6wzuct281ZsR3Jg73PxsTOpAdMov6j5iOeoKVSeM4FQbK+?=
 =?us-ascii?Q?8yBMdTdFinxkDDDozfqbvB6ih+ZcPaE6tyPm0TUe96ZUS8sOLLKyxDtlsUDw?=
 =?us-ascii?Q?IvL5bS8XqFrZxiwY56sPDAjRetwjtugtv/Z6rDzO66C/yr+wQ2Xztei0dewc?=
 =?us-ascii?Q?FRVtTSa0Mn9623QMrBRzFFjRUMMvDfEMWNpalHnpNRNQ?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dbdb7a29-8ec8-4f45-662e-08de064ef0dc
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Oct 2025 09:42:05.4047 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 94kNjXqrRYu5tjvnGtFpayJvm4s/+tYz2z+1Wx39+Kw/hzSu6YsORy7lgCB2mZbqSj9K32FPcmQ9+M9MGTWVgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFD9C09B4A7
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

Prevent enabling panel replay if the sink doesn't support this due to
DSC being enabled.

Panel replay has two modes, updating full frames or only selected
regions of the frame. If the sink doesn't support PR in full frame
update mode with DSC prevent PR completely if DSC is enabled. If the
sink doesn't support PR only in the selective update mode while DSC is
enabled, it will still support PR in the full frame update mode, so only
prevent selective updates in this case.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14869
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../drm/i915/display/intel_display_types.h    |  9 ++
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 93 ++++++++++++++++++-
 3 files changed, 99 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index ca5a87772e93a..e0c5abab3b380 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -955,6 +955,12 @@ struct intel_csc_matrix {
 	u16 postoff[3];
 };
 
+enum intel_panel_replay_dsc_support {
+	INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED,
+	INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY,
+	INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE,
+};
+
 struct intel_crtc_state {
 	/*
 	 * uapi (drm) state. This is the software state shown to userspace.
@@ -1133,6 +1139,8 @@ struct intel_crtc_state {
 	bool has_panel_replay;
 	bool wm_level_disabled;
 	bool pkg_c_latency_used;
+	/* Only used for state verification. */
+	enum intel_panel_replay_dsc_support panel_replay_dsc_support;
 	u32 dc3co_exitline;
 	u16 su_y_granularity;
 	u8 active_non_psr_pipes;
@@ -1691,6 +1699,7 @@ struct intel_psr {
 	bool source_panel_replay_support;
 	bool sink_panel_replay_support;
 	bool sink_panel_replay_su_support;
+	enum intel_panel_replay_dsc_support sink_panel_replay_dsc_support;
 	bool panel_replay_enabled;
 	u32 dc3co_exitline;
 	u32 dc3co_exit_delay;
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 8a2fc1fcb5d04..116d7720f427b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -6043,6 +6043,8 @@ intel_dp_detect(struct drm_connector *_connector,
 		memset(connector->dp.dsc_dpcd, 0, sizeof(connector->dp.dsc_dpcd));
 		intel_dp->psr.sink_panel_replay_support = false;
 		intel_dp->psr.sink_panel_replay_su_support = false;
+		intel_dp->psr.sink_panel_replay_dsc_support =
+			INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
 
 		intel_dp_mst_disconnect(intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index f7115969b4c5e..080a86f8dc80b 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -29,6 +29,7 @@
 #include <drm/drm_vblank.h>
 
 #include "i915_reg.h"
+#include "i915_utils.h"
 #include "intel_alpm.h"
 #include "intel_atomic.h"
 #include "intel_crtc.h"
@@ -50,6 +51,7 @@
 #include "intel_snps_phy.h"
 #include "intel_step.h"
 #include "intel_vblank.h"
+#include "intel_vdsc.h"
 #include "intel_vrr.h"
 #include "skl_universal_plane.h"
 
@@ -580,6 +582,44 @@ static void intel_dp_get_su_granularity(struct intel_dp *intel_dp)
 	intel_dp->psr.su_y_granularity = y;
 }
 
+static enum intel_panel_replay_dsc_support
+compute_pr_dsc_support(struct intel_dp *intel_dp)
+{
+	u8 pr_dsc_mode;
+	u8 val;
+
+	val = intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_CAPABILITY)];
+	pr_dsc_mode = REG_FIELD_GET8(DP_PANEL_REPLAY_DSC_DECODE_CAPABILITY_IN_PR_MASK, val);
+
+	switch (pr_dsc_mode) {
+	case DP_DSC_DECODE_CAPABILITY_IN_PR_FULL_FRAME_ONLY:
+		return INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY;
+	case DP_DSC_DECODE_CAPABILITY_IN_PR_SUPPORTED:
+		return INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE;
+	default:
+		MISSING_CASE(pr_dsc_mode);
+		fallthrough;
+	case DP_DSC_DECODE_CAPABILITY_IN_PR_NOT_SUPPORTED:
+	case DP_DSC_DECODE_CAPABILITY_IN_PR_RESERVED:
+		return INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED;
+	}
+}
+
+static const char *panel_replay_dsc_support_str(enum intel_panel_replay_dsc_support dsc_support)
+{
+	switch (dsc_support) {
+	case INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED:
+		return "not supported";
+	case INTEL_DP_PANEL_REPLAY_DSC_FULL_FRAME_ONLY:
+		return "full frame only";
+	case INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE:
+		return "selective update";
+	default:
+		MISSING_CASE(dsc_support);
+		return "n/a";
+	};
+}
+
 static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
@@ -615,10 +655,13 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp)
 	    DP_PANEL_REPLAY_SU_SUPPORT)
 		intel_dp->psr.sink_panel_replay_su_support = true;
 
+	intel_dp->psr.sink_panel_replay_dsc_support = compute_pr_dsc_support(intel_dp);
+
 	drm_dbg_kms(display->drm,
-		    "Panel replay %sis supported by panel\n",
+		    "Panel replay %sis supported by panel (in DSC mode: %s)\n",
 		    intel_dp->psr.sink_panel_replay_su_support ?
-		    "selective_update " : "");
+		    "selective_update " : "",
+		    panel_replay_dsc_support_str(intel_dp->psr.sink_panel_replay_dsc_support));
 }
 
 static void _psr_init_dpcd(struct intel_dp *intel_dp)
@@ -1535,9 +1578,21 @@ static bool intel_sel_update_config_valid(struct intel_dp *intel_dp,
 		goto unsupported;
 	}
 
-	if (crtc_state->has_panel_replay && (DISPLAY_VER(display) < 14 ||
-					     !intel_dp->psr.sink_panel_replay_su_support))
-		goto unsupported;
+	if (crtc_state->has_panel_replay) {
+		if (DISPLAY_VER(display) < 14)
+			goto unsupported;
+
+		if (!intel_dp->psr.sink_panel_replay_su_support)
+			goto unsupported;
+
+		if (intel_dsc_is_enabled_on_link(crtc_state) &&
+		    intel_dp->psr.sink_panel_replay_dsc_support !=
+		    INTEL_DP_PANEL_REPLAY_DSC_SELECTIVE_UPDATE) {
+			drm_dbg_kms(display->drm,
+				    "Selective update with PR not enabled because it's not supported with DSC\n");
+			goto unsupported;
+		}
+	}
 
 	if (crtc_state->crc_enabled) {
 		drm_dbg_kms(display->drm,
@@ -1614,6 +1669,14 @@ _panel_replay_compute_config(struct intel_dp *intel_dp,
 		return false;
 	}
 
+	if (intel_dsc_is_enabled_on_link(crtc_state) &&
+	    intel_dp->psr.sink_panel_replay_dsc_support ==
+	    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED) {
+		drm_dbg_kms(display->drm,
+			    "Panel Replay not enabled because it's not supported with DSC\n");
+		return false;
+	}
+
 	if (!intel_dp_is_edp(intel_dp))
 		return true;
 
@@ -1694,6 +1757,8 @@ void intel_psr_compute_config(struct intel_dp *intel_dp,
 		return;
 	}
 
+	/* Only used for state verification. */
+	crtc_state->panel_replay_dsc_support = intel_dp->psr.sink_panel_replay_dsc_support;
 	crtc_state->has_panel_replay = _panel_replay_compute_config(intel_dp,
 								    crtc_state,
 								    conn_state);
@@ -2951,6 +3016,20 @@ void intel_psr_pre_plane_update(struct intel_atomic_state *state,
 	}
 }
 
+static void
+verify_panel_replay_dsc_state(const struct intel_crtc_state *crtc_state)
+{
+	struct intel_display *display = to_intel_display(crtc_state);
+
+	if (!crtc_state->has_panel_replay)
+		return;
+
+	drm_WARN_ON(display->drm,
+		    intel_dsc_is_enabled_on_link(crtc_state) &&
+		    crtc_state->panel_replay_dsc_support ==
+		    INTEL_DP_PANEL_REPLAY_DSC_NOT_SUPPORTED);
+}
+
 void intel_psr_post_plane_update(struct intel_atomic_state *state,
 				 struct intel_crtc *crtc)
 {
@@ -2962,6 +3041,8 @@ void intel_psr_post_plane_update(struct intel_atomic_state *state,
 	if (!crtc_state->has_psr)
 		return;
 
+	verify_panel_replay_dsc_state(crtc_state);
+
 	for_each_intel_encoder_mask_with_psr(state->base.dev, encoder,
 					     crtc_state->uapi.encoder_mask) {
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
@@ -3991,6 +4072,8 @@ static void intel_psr_sink_capability(struct intel_dp *intel_dp,
 	seq_printf(m, ", Panel Replay = %s", str_yes_no(psr->sink_panel_replay_support));
 	seq_printf(m, ", Panel Replay Selective Update = %s",
 		   str_yes_no(psr->sink_panel_replay_su_support));
+	seq_printf(m, ", PR DSC support = %s",
+		   panel_replay_dsc_support_str(psr->sink_panel_replay_dsc_support));
 	if (intel_dp->pr_dpcd[INTEL_PR_DPCD_INDEX(DP_PANEL_REPLAY_CAP_SUPPORT)] &
 	    DP_PANEL_REPLAY_EARLY_TRANSPORT_SUPPORT)
 		seq_printf(m, " (Early Transport)");
-- 
2.49.1

