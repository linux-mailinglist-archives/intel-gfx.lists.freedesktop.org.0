Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8514EA7C026
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 17:03:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C3E010EBED;
	Fri,  4 Apr 2025 15:03:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k93fvCNq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C02B10EBE9;
 Fri,  4 Apr 2025 15:03:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743779023; x=1775315023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=DprZwyv97F4WQhlWCwVfDHbrcyOg7DJ7Uaj5wQM5neQ=;
 b=k93fvCNqsNENaWNvy0P9JUCYdZzgdafEhO65pLUi/up3pYwLXlZAWZ2v
 ROVy3pYVHo/0XXNOv2qPAk8lRFAa7lm8lGrhFduTPNNOb5HaHszjkZ/Eg
 kg1mSC2hurJHSSt4ykNMtrw0jx9gx+SyKT665zmwee9SIbmGdGMeBG9bB
 twFcprH35u4UFhlt9Lm027N9dmAm3peU1BvgNuimwkyNW1Jyp8fDypvJU
 3XM6p24Ch1ox/VzZ5ClnvHXGDkk3eI15fyvmTSTLvFnqCZ4cSLkPDQM8z
 ydBlom+f7P+mcE3yrJHQizOv9k+xtqZ7VR2AgLT/PQfgWaIJh+SJYoD1J w==;
X-CSE-ConnectionGUID: jPM0NyYvTsO602qezKXSOA==
X-CSE-MsgGUID: BlE9LPYGSbeOICcTXomxng==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="45112263"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="45112263"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:43 -0700
X-CSE-ConnectionGUID: hIlT3Y++Tnin5Fb8NB9BhA==
X-CSE-MsgGUID: +WzKuv0SSuaJ99a2CXCNrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="127089555"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2025 08:03:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 4 Apr 2025 08:03:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 4 Apr 2025 08:03:42 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 4 Apr 2025 08:03:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DJ8LNGX7oI9i2GeNugmIlbIpZOJDY6sP1KSdDR9mFkFhuKvKqZMEUhO16Gk9gpX2UOfXEd8ROA/AIUaY6Ga04qYjF6RnhvJjByPonA4qieY4v3lRZhsCaqp5uM+X5W6F+1h5oddc8VmHYZu1oksSiG88L1GJyfaSQeDonPwLLUjjKPAdg5JIq6mAri86zKSnG8CZe9HsPdCYOVWwZONzVbjayOwSA+4mctPAZf4GCt0vOnmJLVkIwb1Lwjcf2Tf+2EK0Xvt+1qNHn8RzVZG2cqZHXUelcrudrdBexORcmM+Fk75Pvekkhp8BImqN7cOyozQD7gOlAzelbFQI3BOsOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lrZgi7hU0qaHIkCc6TNwQKredxPxDWnKDFe1WjTOVCQ=;
 b=A1aUrrFSkIIZ/Fu9LQdC52DbGuzoXdezgbSWhbp3EGD5u6a7xY0NoWHJ5y9T+4byXFtDeuKoa9pbVOHU6UTXHs157/A9JqM2F3rXT+bDM+dvnvtYS40zxNcy2wsso8M+IwZmElxVk3aNDktWUNjtDXrgAUTrDHRDwdOEm2Prrx0aqWSHV8xij3KT7Soe40fRfS3w1Kf/uBoKtcmoJehUKtKuirPxlGTyHtpfxzGmGqJXCwoVWrByqBpeFd6X3NZjAnmVHsuVSnN+/zltpdrFy/qGwZNZ1OSDcc6C6rwHjtYTK2O47ah5JoF/MQM6/4sIWD2m5HYpuhXLQhBhveXXiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 15:03:18 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Fri, 4 Apr 2025
 15:03:18 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 6/6] drm/i915/dp_mst: Rename intel_dp::mst.active_links to
 mst.active_streams
Date: Fri, 4 Apr 2025 18:03:10 +0300
Message-ID: <20250404150310.1156696-7-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250404150310.1156696-1-imre.deak@intel.com>
References: <20250404150310.1156696-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0054.eurprd04.prod.outlook.com
 (2603:10a6:10:234::29) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MN6PR11MB8219:EE_
X-MS-Office365-Filtering-Correlation-Id: ccb6b4d6-f826-4251-82c0-08dd7389d541
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?7CNh6ILt9OC1i1pB52WqxCD0iOP+faoEkB76X++UwMOqhCuyXlqg+NzmEbO1?=
 =?us-ascii?Q?VdaOS0rzC57Eaph6vczMmyrUf2gO2OlhS9OfanuOZuXzbaZQI10jDdLFH6sC?=
 =?us-ascii?Q?yx0sLUgKe4hSkXrMk7ANd9an5s1cG7+qT06wMAmlBcQ3f7cCFuqv8TDrpnlP?=
 =?us-ascii?Q?12Z27JQEbIM8+mlBaqYEKxqPTiecWbNNPXCkyFRZAPGBYM4btPda+EqweM6l?=
 =?us-ascii?Q?tsqdEt6b8ui6T/Tk3UZE2Fp8Dia6WkMtcg6mTr87U38yg3xkmtuvbZtONBHv?=
 =?us-ascii?Q?4Gn3YLu6nBfklxgs41BTRLUok8vwDueti1xu5dFjDZuO0uBPM6O+/6DMgwbO?=
 =?us-ascii?Q?aIzbqFWAJf36UcuVYDk5IzIfPWxbG8sguhyI8EaRmk4ay0l/9z6px5qWRKQ2?=
 =?us-ascii?Q?SURQ6Tf6+iqIMYbeFbfxXcDATv7swhoDwor6Fkwhq2ziv7iUHkxDn9KUY1mR?=
 =?us-ascii?Q?wsDeiwzuQy9TEtAHVO3Ya3vn/oNPBCKs4n3CGh8tlQPS9R33pMojZr1TxDDj?=
 =?us-ascii?Q?WY23p6odsOCE7qd9vZyjM+1SBtFPO8kA9Ov4KYNR5KqPIi0D6hkufx+Jzzn8?=
 =?us-ascii?Q?e5AeHdcSr41g89cMX47EKypRPi9Yb3ZMmlxppXchPSd8hhPOTL3h7l7P0g1E?=
 =?us-ascii?Q?47FrmC24wiH65/HegHvVvUnhOR2rgo0g+Wxxkg+8C+zJ9L1HJlJiCvnGmPA4?=
 =?us-ascii?Q?dRHimjB9yh8ZZXWWGlzUJIGASwO4X3YjE1sKdZYC8bsGUb19BkbSDJOwQTMa?=
 =?us-ascii?Q?S5yNrD4HtifJecURPPmpmoN6m4vHWAcFvuSHXe/OmqfWRwWqE3oE44lbxvl6?=
 =?us-ascii?Q?AJB0KM0sGF6JPRh7+40yWmS9iLsd8M/p9wXSbeYg1ORxBFgB3gmOl3BY4N0U?=
 =?us-ascii?Q?g+4wJYaPExDxiqx0uV0wH4N9cXHUT0Mk0DZWFKPj8bu3e5SZL9xZftoDR9dG?=
 =?us-ascii?Q?JILHtUEyLPLGU1h3sE/ms+HtDex9cZ5Os9hoVl0tbIcHoqT/wSdXypVOJOsN?=
 =?us-ascii?Q?R/wwbPoQCOND7+HMSMYiIi9JZdJKf8AZJCGFKGtaYnuHbBdMWzoaiCxH7YYu?=
 =?us-ascii?Q?j90ojA4jL6MNi7b7f8317Ebb1h0ZBy72T0DpaByOEeI+4ksYiU9uQBmKcLWi?=
 =?us-ascii?Q?eF64paMjf0WmA00Mvli64G26JQ+v+E1NQiQSjGtbwcjocCFEVPipgy5Zw8zt?=
 =?us-ascii?Q?FRF2PICE6LRag53jHO2+d03SUjNnaE0RTBXXc0oK/t9vsVqlE8tDdGVKpMVn?=
 =?us-ascii?Q?oiIjPO3u8eKa1g8NI7yZXMS+aFtocOrA2DWI/vBp1NCI5GkERcYVCKvtR6Wf?=
 =?us-ascii?Q?OI0tTX7+TbG6McMSXEh3laQxD+JMy5um9HYWfopA2YAr9H4qfN1BgN+uEI+d?=
 =?us-ascii?Q?Vj7cs/h8UrajanS4LcTgMnCg+ojb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Mnw4BX8TA7W/HsZP2Diy+OkuY6R+1F0PdmVC/mRFFUdfdjDY6xIccFQXrFuY?=
 =?us-ascii?Q?CHe2RvbjvKZpf03aUV6utk3YfZ1STDBtiZsPDJRw/tlR6a6dodRoAabw2VGO?=
 =?us-ascii?Q?ZXLP2WDZ1ohWgzP798AtnZmUnPHWb7HR8/JDgYujzEnX3Sm1KL/gZ1FTwEhf?=
 =?us-ascii?Q?Fn7ZU4Jc2LVyQW+6rzW5+tuGKpvzJi6rF6iAOv8PvDLdvERC17dPtx8Xvs3a?=
 =?us-ascii?Q?ty9S9dvi3gUQq1e7TCtAiVGvw/i5zQXYTVawDulLjIc72qnhHHhvDUA62kfs?=
 =?us-ascii?Q?cNamCqGUVwgTa5ED+SuLli8px4BMW5SSWQTY7sXpe00/qtFb2fw6gA8ik047?=
 =?us-ascii?Q?TH3484CKpOuVZ/edi/fWCCpvUUPQOVpIKqvSVa3/gj6BW0Kr7aH0nkyRRwPL?=
 =?us-ascii?Q?tXqMDldR2uLwfIdTMoFynM27ZtnKbFGYrSm7wdJQ8GaDdCpaOHFdNcdKFsWD?=
 =?us-ascii?Q?x0SVpoMBACmWCZtf2ULSgTaoAlIZ+2R9cVGENp2sctb0uullWoOFY/5AlGB1?=
 =?us-ascii?Q?Gfx2hbm+/7NOj7G18IazDFEahxH7VrFsENjI3wgXP9bPp5t/2pm8ZlbFv5jp?=
 =?us-ascii?Q?nRhRtw6Ff2cUehCInQRcD2fb6+zmVT9dI3a5qm6iv9SX05QRqwBtfcRV+fFg?=
 =?us-ascii?Q?XG/vhHDaRt76r805w/ZwAgNV9eKrGeCYcgPrjTus4/ac1/s/OSmZH7xyCcC/?=
 =?us-ascii?Q?sMsnXT+Y65JWk3F35enYaKXF0ULGPRiATlDzVFSvsvDmVUvMrxLOKuWIr99B?=
 =?us-ascii?Q?xvYgtNJtOmdYuNGbv9+AmYy9FPNHuRYyi/+bkVoazAk8ZCisizHRdouIBrHa?=
 =?us-ascii?Q?nIUvaWpC1fvIPxYt7gwM5d8UtYkDOo4bdDxO9SChyHyHUjG7vJUrrRKmh/HA?=
 =?us-ascii?Q?pMnKyaWTXWhmWokEO+zok2w8moVovaS11hQ9apvm6njCA4JRKU3I3HJNMqxT?=
 =?us-ascii?Q?D1jD++ivuymW2vzmRfdhCxWJ5mKdliuVVExGN6VwI8XGBIjueY6AQcSb98jc?=
 =?us-ascii?Q?wnISZ4SYBA7in7rnCnnUUyPOqrUq+E4+4kNudhdu2g1OVOJ4d9raIrnL7dgd?=
 =?us-ascii?Q?QntCZHsOaZna5w0hYb31LHCtUguqb34jRH8hf9QEiVC8cwyVQpkX1H6g8j+Q?=
 =?us-ascii?Q?kQ82SRYFL7VCoNjE3j+Myr4Oh01Ky2rZKrGRc+nAJFZFU455MOJvH+l4ryyl?=
 =?us-ascii?Q?+zupZK917lLE45C86h3rQWmMxFWXy1DqFFW7UKvlLHHc/iE/mp3EH6r0YyqW?=
 =?us-ascii?Q?lD3kO98aBroQbFJxhiAB4Tkx7U5fUTXHM91XREJ4dFZDZPbEROrk5V61AHLi?=
 =?us-ascii?Q?Ot5jePwKlv0pkS4JwUI07EvcSdZvyEZ0bNEzg6ub7vxLfv4xbqzf3aK7RdtD?=
 =?us-ascii?Q?rYAsNM8zmjJOec+WV8IRkgzyJ3HmqNc43g7vNkDKoexGQSbt7WdkK40eYAXB?=
 =?us-ascii?Q?7gg1u/9Q0zSFRKw4wEhEy2cC81hfXKqGM2aOyTVgQMECuV6f+xK2gmIr/Xt+?=
 =?us-ascii?Q?exK7ClGgH5DJzdgdo0MZU1YS2EY9dQU41fw3+etDwaiS7ViHrdH6IdDhZSQX?=
 =?us-ascii?Q?LGBSuj9g5w7p9oArXkSD2n/4tODOf9fP/uTF+EKo?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ccb6b4d6-f826-4251-82c0-08dd7389d541
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 15:03:18.3916 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zRasWZGpKBA+shyUwUHmF3Mc6Xrv0QeC+te/N8NK7BAfHBFlYo4tGw4tUC5aAXvSwIEL0of/Q0HzksZRVjkDcA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8219
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

intel_dp::mst.active_links actually indicates the number of MST streams,
not the number of MST links (one MST link carrying one or more MST
streams), rename the field accordingly.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_types.h |  2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c        | 12 ++++++------
 2 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index 769e3a48d9c5e..94468a9d2e0d3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1739,7 +1739,7 @@ struct intel_dp {
 	struct {
 		struct intel_dp_mst_encoder *stream_encoders[I915_MAX_PIPES];
 		struct drm_dp_mst_topology_mgr mgr;
-		int active_links;
+		int active_streams;
 	} mst;
 
 	u32 (*get_aux_clock_divider)(struct intel_dp *dp, int index);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 9ae025ace3c0d..4c15dcb103aa2 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -107,7 +107,7 @@ static struct intel_dp *to_primary_dp(struct intel_encoder *encoder)
 
 int intel_dp_mst_active_streams(struct intel_dp *intel_dp)
 {
-	return intel_dp->mst.active_links;
+	return intel_dp->mst.active_streams;
 }
 
 static bool intel_dp_mst_dec_active_streams(struct intel_dp *intel_dp)
@@ -115,12 +115,12 @@ static bool intel_dp_mst_dec_active_streams(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	drm_dbg_kms(display->drm, "active MST streams %d -> %d\n",
-		    intel_dp->mst.active_links, intel_dp->mst.active_links - 1);
+		    intel_dp->mst.active_streams, intel_dp->mst.active_streams - 1);
 
-	if (drm_WARN_ON(display->drm, intel_dp->mst.active_links == 0))
+	if (drm_WARN_ON(display->drm, intel_dp->mst.active_streams == 0))
 		return true;
 
-	return --intel_dp->mst.active_links == 0;
+	return --intel_dp->mst.active_streams == 0;
 }
 
 static bool intel_dp_mst_inc_active_streams(struct intel_dp *intel_dp)
@@ -128,9 +128,9 @@ static bool intel_dp_mst_inc_active_streams(struct intel_dp *intel_dp)
 	struct intel_display *display = to_intel_display(intel_dp);
 
 	drm_dbg_kms(display->drm, "active MST streams %d -> %d\n",
-		    intel_dp->mst.active_links, intel_dp->mst.active_links + 1);
+		    intel_dp->mst.active_streams, intel_dp->mst.active_streams + 1);
 
-	return intel_dp->mst.active_links++ == 0;
+	return intel_dp->mst.active_streams++ == 0;
 }
 
 static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
-- 
2.44.2

