Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 819DF9F3B3D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2024 21:44:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0288C10E7AE;
	Mon, 16 Dec 2024 20:44:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lukLGuLw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 299C610E7AE
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2024 20:44:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734381866; x=1765917866;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=kcvSFMZxjivw3lGSg7BFDBDcZ6dkz/TdgPmKmPjnhVQ=;
 b=lukLGuLwBUdGWEXmYMQyIN/ZkmR4rV+3Z19+QTh4woMyJPii/dEpiAB+
 Cr3/NbSQQBcW+RplwZP+xNFF7AgW9Ycjj3SoyuxTyY/1um49hXYfOiuo7
 6E3Yf2alKtfvYuguzB7bQTjeRR7pjISifNWEbre9yMjvjJqm7ifPozl1A
 udnYEOSfm/CmSpmUICcNwR8AvT47sIDwL/MzwR/1VuhZgkdexeoGF7M6z
 MRTZ0I6AKit73B4pGwJWZWPXHPHQdmA7JeKgQKkrhLFKXqTVtGJPrdgif
 Nu32+VrWGsXWgXY34U2dE8MIqO96jYKIAyTZ+MWrplrg1YZW054+qaU+t g==;
X-CSE-ConnectionGUID: TOxGal1SRr6KH51bwlfaag==
X-CSE-MsgGUID: DlSMtm3WQFKxm8nFYjB9DQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="22375568"
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="22375568"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2024 12:44:26 -0800
X-CSE-ConnectionGUID: pDzyJotcTCuvQzqRj2aUCQ==
X-CSE-MsgGUID: 6FpWv8hqR1SBqDN3r0v32Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,239,1728975600"; d="scan'208";a="102342733"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Dec 2024 12:44:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 16 Dec 2024 12:44:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 16 Dec 2024 12:44:25 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 16 Dec 2024 12:44:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EKbQhT+JnRJHaH+RtENZfz7/IuVqNvaePAcQl5b4qrfgZ8B8oSEsxRvuww7XHTn+0aN8RlEfvXl9ahPU6tgYBHJPlsyNlFj547i2BTh3tf6k/Hnm7faJ6n3w3zMFgGBwqAT4bS/q1FSHwOsjWv+hFV2/PdF/xHtsdmQR/iGXUnewCeZsuBPmxSarPjYevNmGjTy413gvTlGt+RrPudznmI/J9T2kgmIPaWZuclAz2wvAhRgRbthXe9KuS0sM/4w8J7bojt3e1WR0XVOghz6bMqgjGwvPYChMtgfvqLdRhmXlolxAQpOoxsqOdX+fqZGcjRaCp2B3YpJ73XfAhbHySg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+Er0v0mWI1xQvlaQ5TaMgP12ZYa4Gh1O/3RdE2i8ei4=;
 b=Df86kBWcgqhm0CXqFeH7iyoKYGMw6diDmF7UqsOLekeWc4qh7ZSfKI7jaWg+thlgSlAqCX/7/Tww+LNQwUmafM/bAiqnapBKi5cRDzop4MBfs+RDxRvGss6WQHrVEhpV1SN9dJLy3WupM4oYdjC4zPyXUluCcp+vJ3Az5gp4EvkK7BQwFnQjifg9pCTQctDJwjLIeTTQGroMGuO7jD8bk3QT5c/fxQpHpHqwBxy8x5QurTS8YMXxNcq8NX8xT6uGKiJkqGf2jMBBCOZmDu2mpe07OXlB5Po55Qs1VDzBbHnUlNFDAM3ZBGyqBi4HfotrjaAfynNX4DKPDLTHuNJ9/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7SPRMB0046.namprd11.prod.outlook.com (2603:10b6:510:1f6::20)
 by SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.20; Mon, 16 Dec
 2024 20:44:21 +0000
Received: from PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc]) by PH7SPRMB0046.namprd11.prod.outlook.com
 ([fe80::5088:3f5b:9a15:61dc%4]) with mapi id 15.20.8251.015; Mon, 16 Dec 2024
 20:44:21 +0000
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Rodrigo Vivi <rodrigo.vivi@intel.com>, Vinay Belgaumkar
 <vinay.belgaumkar@intel.com>
Subject: [PATCH 1/2] drm/i915/guc/slpc: Enable GuC SLPC default strategies
Date: Mon, 16 Dec 2024 15:44:03 -0500
Message-ID: <20241216204404.1621540-2-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241216204404.1621540-1-rodrigo.vivi@intel.com>
References: <20241216204404.1621540-1-rodrigo.vivi@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: MW4P220CA0001.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::6) To PH7SPRMB0046.namprd11.prod.outlook.com
 (2603:10b6:510:1f6::20)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7SPRMB0046:EE_|SJ2PR11MB7573:EE_
X-MS-Office365-Filtering-Correlation-Id: 2588aecb-9f26-4238-9d1a-08dd1e126b28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?80TUlhxsHSWcceZIxfb0W9FYMkt8E+5vJkzDJn9Ut1uN7zmB5jwyO4KdVhCl?=
 =?us-ascii?Q?365AT0s5J0l8CXMpvT87pS7eI84Ya2dB8Nkpm9KFzX5Nf8im0hi1R/JVj2tq?=
 =?us-ascii?Q?bSgUU8dkmfspiOkaJtRBjEjWyjo7CdnX1aB/ZWnVbyj87y5KF6iPEk3lszOL?=
 =?us-ascii?Q?+NhHliAAUTE200eVJOkSshU1PRlMaTSVvgzjKohjcWeYy0aU8wl9twhuMOGe?=
 =?us-ascii?Q?Kn4fFduFl1OzXcW+YLsi7dHNamuueJhHG1bxNZ4+n/1QRiJmN7NxBYK0gMpk?=
 =?us-ascii?Q?yhefHj0KUWOcDMuX/F3I0KY3/uEChIQB50EOYr0O2GbuYY4JkuAk2cBb8n4r?=
 =?us-ascii?Q?pPaunTaC7d6bMM60pCvPZNb1zch4cOvkQsfb1j5SLz7A/lm0us7XsB55QYBO?=
 =?us-ascii?Q?nlvqmOIgoHPPDP1Q7xjEFYxx2ragfwvtZ++4NkJyAEEahaPOJTnt3F6gQPOB?=
 =?us-ascii?Q?MHRh6bkovBc/z6+mQbbv3I4ec0As14WwHcZlk3a4xm3lGBWKwca1llq0H8ri?=
 =?us-ascii?Q?s5J/UpTJm4jkhJULIQsv3Wxp0TmhC9dJv3uz9j5ARftH9uGgX51IxlqIil+8?=
 =?us-ascii?Q?zHwrrFF4EN9f3ZdF2YOchMVGYPPqXcmqhC5Bu+AoWOwEG7VxAhogm/j6A2Fn?=
 =?us-ascii?Q?cs/M47Vd54nPBl0m11liAqnxYTJP14F+Zim+kggbo7eBR9jID3ZXCD3QPOEy?=
 =?us-ascii?Q?Z/ElXv0T34pUpQFv+kHRUNwpXGt/OIubp0Vzvxf+1pjYL3DTWHs/jHO4l4uJ?=
 =?us-ascii?Q?t8iLLed4kuOF0P2pgAXLV2pNAdRXqt9BTZwtlRrLdqObjE9hTaP7meYK5NPA?=
 =?us-ascii?Q?2gwylt2Iu+xrhSExZE7N4Mniay0Y16CmayeudPG4FLgVAvZ0U3EADK0JjTi/?=
 =?us-ascii?Q?DBthr4HNBMdowbxkJ3+1IFymiOeE22giiYlZ4RQKIuQdgje77Cm3dsPkNnrk?=
 =?us-ascii?Q?Ig+jWnTzhGQasYL8lvPZf/B/qBroXIrcmf59Wi8Y12lDHSzs5w2gXA6vdYGg?=
 =?us-ascii?Q?6QsCwGNpBrU5bcx8vlk/+17FAHJd7WtTV9QjIgZ7/wLvz5zGuJOC9hrsdkT2?=
 =?us-ascii?Q?j283KHvW8XuuOvVk8DV4mw372PmmKHTDXuFT/DcKWqNuf3ToWj+uuwkJ2TRN?=
 =?us-ascii?Q?10gVzEHXV1SCYrK2ngXNxkSRfo6w6IME3UvLtBpIQTTke5+heNojRoZpFTEx?=
 =?us-ascii?Q?GpEXZAX7WMIF474rV51okH8gA5Wl2IsdqDE+vpLtlHebp1zLk0G1UbOxNoTB?=
 =?us-ascii?Q?lIqVstRMbLPc4qRH0bMHiJhTBSZeZO0xvt8vfV+RL+WPe50u2M9AHDKmuOJT?=
 =?us-ascii?Q?BaduB7PDDaHlvDPd6BiP2yuMU2FCGCPm0z3DGp9ZeQJdbRDrYZ3Y4I9NWNUd?=
 =?us-ascii?Q?5H4Mao0ujojEgkuj7RJ8oLcJxANO?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7SPRMB0046.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9YYCpNGzW2UkDwd4Uh2ImvGue7wrHjfM9Tvs0vV0fa7dIQxHVcW8KyhZWG8y?=
 =?us-ascii?Q?MlQFnJzcCpvOpFjVTEDy5zHPC0NdQCMWOSkpBQVQc56qX9y30bi0yeOJb0IR?=
 =?us-ascii?Q?Vkpb3pDZwu2rUizI7GizizVpOCdlEzJe2F8db/3sdKfOx8Oo6OTdCb2J50nH?=
 =?us-ascii?Q?dW9mGdlUvDj83Z3UaVntQuetWpLu1IoNXcWNRhFXdMOTaowd36juCUC+u5VT?=
 =?us-ascii?Q?xzqwOqtgKC0GHMqOyxGCaUEl0Os5Qc06LCqwl5Bzs4Mg6FOiKYU4C/0EeRe3?=
 =?us-ascii?Q?350Vm1CDbqLOArCkpxyhCtUiiZqg1Z1sKp5s828RBGDQmQhmdaiRG+vp+Mc/?=
 =?us-ascii?Q?xrfGJuKBvFBpPkHEdkjnUtRKB+wlEQN1nafXk4PmcJgAjUc8i7kIN+WlLlgS?=
 =?us-ascii?Q?yKZaG1q451kDhy+1mAA6IJELdjNKc8nMJufp2mLw/BwqJa3sV2w3CCN5I4Sl?=
 =?us-ascii?Q?5ThxMvEsGKrU9uG9UQWwbkzk0ptYFPd4nPx3tp7JJMiWwxYWh4nt3SY0PUVk?=
 =?us-ascii?Q?gOsLadO9u9N0ywLDBDTHQfShLxHn72TsBRXZdCJGEr05ZsKRimQO8/Ac0CqI?=
 =?us-ascii?Q?pI5kNGI/f0Aq8/Z+kPdB4suqkLYQ9WYT/vvSkaRVfWzghxogxFdOyQ6znbXR?=
 =?us-ascii?Q?4fRRub/RR+UQ3yrqRBIEKPBc06tFNYqE5DzWS1UK/9q3O4WD2+3xO+hq73JC?=
 =?us-ascii?Q?bFTPl7gPzHY2zK1931/pi261bFEllHDVlmHZPPNvLmZcoZ1SO4apLugGzkjp?=
 =?us-ascii?Q?3QxdRCsVvavIChk9PqyKEddCr90UKZvzSfSZr5XNE0qSvj/D0o9muUOO3PHz?=
 =?us-ascii?Q?sL7McC8u2kgtIcvvZg/wwv7tDEd7x4Ux5BBg+ffJlt18C7BhlBuoqBVJCCvc?=
 =?us-ascii?Q?kHmPjgLmZXuydzZEwEyjF1gpW1T1cQjtGiO27bcXXP2dk0E8TwjyL/9No/P/?=
 =?us-ascii?Q?J38aPAnrNii61VrPeImww/b3s5f/ny1Ko2UAehFzuQq7039QcTW3Uvj6AYPg?=
 =?us-ascii?Q?5vCg5y06nvIvLo9Zp9qtmfhlJ1hGJTOQu3bWz1JjdMlh4uQEZzMqvXHxltRT?=
 =?us-ascii?Q?/bq08xMb0Xt0WtkQU2Wp+F9XqV0Si4lUyTCrM0PoMmH9zh+3GCSHtPbLv1bw?=
 =?us-ascii?Q?rr0vSk5FArarZhGYXkKwp8d+zpIzXRj2OSjCjREv5e/pnlCKV5QQEO8pq2Xl?=
 =?us-ascii?Q?v8bFo6Zsqrjk6jisQ09L8hWrxweuH7VjMHJ30zVcypTpFVadMK05JdEvuSIL?=
 =?us-ascii?Q?UCg0upl1MZ7WBqh6NQIeY9d8BSWpEQb88uC4tqv8q4IDAWXwtzLXDk74qR6u?=
 =?us-ascii?Q?NODrup7+C6F2jssKvxuEdgfNYLwTzo7QBGSk9GBGU5/mOWQgmNvipOt0oXrD?=
 =?us-ascii?Q?8o+fW2wVxD3j8UtPE4mKYRukPucx53dXSdMGV++mQRFqbF3Hlrr6u80w6A0T?=
 =?us-ascii?Q?VrHxS1vtdFSFebBTtMUOhqWMK3oq546i3dzwDi4hle/G4Kvv60FaNcqlPBEw?=
 =?us-ascii?Q?s1AMdCaKiLYGGerolTsMFJ2EgMTX7/LG5q76wYtjxRvGut0IE/aKwVEqQeA9?=
 =?us-ascii?Q?jRoU0KHLU4dUCQJotS9YsaU4dMRcvFWfLKY+WDmRWqCKRZvjmXBZRF/MWPV6?=
 =?us-ascii?Q?6g=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2588aecb-9f26-4238-9d1a-08dd1e126b28
X-MS-Exchange-CrossTenant-AuthSource: PH7SPRMB0046.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2024 20:44:21.4952 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IT9oMT00IUMR+0PSylSrNY+8xBcVQcKeWrUhPZPdRA+FQh8DxHMnQ6yp04LP4Hfb5DLfMbFKzHin14SgCkn2nA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
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

The Balancer and DCC strategies were left off on a fear that
these strategies would conflict with the i915's waitboost.
However, these strategies are only active in certain conditions where
the system is TDP limited. So, they don't conflict, but help the
waitboost by guaranteeing a bit more of GT frequency.

Without these strategies we were likely leaving some performance
behind on some scenarious.

Cc: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c | 17 -----------------
 1 file changed, 17 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
index 706fffca698b..722da8a7f852 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c
@@ -76,17 +76,6 @@ static void slpc_mem_set_enabled(struct slpc_shared_data *data,
 	slpc_mem_set_param(data, disable_id, 0);
 }
 
-static void slpc_mem_set_disabled(struct slpc_shared_data *data,
-				  u8 enable_id, u8 disable_id)
-{
-	/*
-	 * Disabling a param involves setting the enable_id
-	 * to 0 and disable_id to 1.
-	 */
-	slpc_mem_set_param(data, disable_id, 1);
-	slpc_mem_set_param(data, enable_id, 0);
-}
-
 static u32 slpc_get_state(struct intel_guc_slpc *slpc)
 {
 	struct slpc_shared_data *data;
@@ -366,12 +355,6 @@ static void slpc_shared_data_reset(struct slpc_shared_data *data)
 	/* Enable only GTPERF task, disable others */
 	slpc_mem_set_enabled(data, SLPC_PARAM_TASK_ENABLE_GTPERF,
 			     SLPC_PARAM_TASK_DISABLE_GTPERF);
-
-	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_BALANCER,
-			      SLPC_PARAM_TASK_DISABLE_BALANCER);
-
-	slpc_mem_set_disabled(data, SLPC_PARAM_TASK_ENABLE_DCC,
-			      SLPC_PARAM_TASK_DISABLE_DCC);
 }
 
 /**
-- 
2.47.1

