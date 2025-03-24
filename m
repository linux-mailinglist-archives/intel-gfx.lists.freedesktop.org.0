Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76920A6E1FF
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 19:02:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DAF10E4B1;
	Mon, 24 Mar 2025 18:01:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DMfmmesN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D99810E4AB;
 Mon, 24 Mar 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742839315; x=1774375315;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=qwf0cftzu7k8f8CJab+31vjHkWW5P0EtYq2EoESvU6Q=;
 b=DMfmmesNa5PvKdg8Mkdp7JPmVA4gyujXcRS2A+nxfXyYNcxGXg1XHzdb
 5A2bA3P6Z3iy6yn29LK6o7Z/086Odwtb/SQ5WIX4ZeVYsW5cKXEHIFgLt
 vZYyAz8s6M+NF7UlSHczIqRLZZ+QKiJr4jiZo/R42ej/Kw5tDOm8Bsqha
 7y6Fn14vJmo0dYZ4WiHnIugD9DyZ4TmAkf+SKNyDQDtxsaT1WQTuD8Tsn
 salSuUu3bWxJw9uiQ/jbO1QIlbKh6yeTxDFXHDvBuj6MrwPc52+LyZBlu
 M8d8pbu/s4DPB2eExdp7uYHtVvTWo1fu1fMZ/ZvmjdPwzMWBK7TY7+oHj Q==;
X-CSE-ConnectionGUID: dBfzFIu+SQyHsJ+Tw9E43Q==
X-CSE-MsgGUID: /HmWyqE1Ryy5E8f6TfMlOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="54726711"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="54726711"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 11:01:53 -0700
X-CSE-ConnectionGUID: MF8SPp9QQcamcw0zPbjD4g==
X-CSE-MsgGUID: 6Gmk70jIR9aWOKSSU5oBNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="124152075"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Mar 2025 11:01:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 24 Mar 2025 11:01:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 24 Mar 2025 11:01:52 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 24 Mar 2025 11:01:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tEm/yLRL2CMzqo+1e7xJq4PTzisECKuvRqGQZ1Cl8GPHnhrG+CmILQHvXld3Bx/01c7cB0KO2bHZ80VFOE7Az34c1E6zU07nW7OykqoQlZvcGCppImWXB/dHyxH0NAf8Ts/sVq+46wwei5MQNC+s0vuGR42yZa1psBbXWsrommw0I5PGW5LCw1ihmodUYw2vCi90AHGi/mMcZ+dPZdlOHtmiNBO1gxIB89oYJM5MXD1lAEDreAnnmR+ZXSGn1RwSeT2VYNJcm6chpCSra67h9QdG7hatqgkVi9xrUmgeBXvOvdNRrHjLWbeJrp/s6zv6CweLvkfF4vz87yZrljuV3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZTyaNb0cAgQAMMintBfBKP9g4NUUdTdG7N0NSkBPDkg=;
 b=c+Ks7eVfSpUsg599v3Gm4V/x2h/Y9D8V6dhhEL9Eik2+7BPp6u2/8mvF+YvZz+Hu/zKeeG4Wzu+GsPDuDi3SKZdUJ6dCcmXgcsvL8HMVlajel/V0Ivs4ixnRbF9UigcapJJrkNFD9f+C4GLYttRTur/xsj9mGTackXOFQm3RYfbs7ls6QaW9mqZM5p6OHRFcpPuoZGAYWiwDb/r+ouagrqKvtO5DAp2T0EAXauJolK7OHI/i6zhi27u9intoqmr+phBXgdtdWtKi/A8JuhPgI6WKnqnLvMZhNT7eYjeCvvN5lxT4E+2Xgwvf325SZo+9zPxKgBs8SwkmnvOtf/voCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB4782.namprd11.prod.outlook.com (2603:10b6:a03:2df::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.42; Mon, 24 Mar
 2025 18:01:48 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.040; Mon, 24 Mar 2025
 18:01:47 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH v2 1/2] drm/i915/pps: Let calling intel_pps_vdd_{on,
 off}_unlocked() w/o PPS lock held
Date: Mon, 24 Mar 2025 20:01:44 +0200
Message-ID: <20250324180145.142884-2-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250324180145.142884-1-imre.deak@intel.com>
References: <20250324180145.142884-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: AS9PR06CA0225.eurprd06.prod.outlook.com
 (2603:10a6:20b:45e::13) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB4782:EE_
X-MS-Office365-Filtering-Correlation-Id: d0fb9795-5290-4a41-eab7-08dd6afdf1d0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lTg2XVHIjCv1kKXerzyVeUuad3p6QwDsPYWpruasTAdkZ82KRS4K64KI8aB+?=
 =?us-ascii?Q?UYZBxwB+jFKZcHSUegtpHv+4lesdP1VGfnimNz5UWCEWFIybYn4ngcoV7GNW?=
 =?us-ascii?Q?wrrTtFdiLGCYbGa3DR3X01Tp/PToKtelcHrQg6HfdDqD8AEl4YvZKPio7aGZ?=
 =?us-ascii?Q?bk0rMXPJuTknufzPBbI99oF7NfLaxDvupyOtLMHyTgM2EW+14Eb8iIBKX4Em?=
 =?us-ascii?Q?jvwPjldJ+MJ54WTieIo26nNP71BHs9pyG7BBlaDrCNscqCei0s27sVAYdIDH?=
 =?us-ascii?Q?FQRBnl1IHYN4HCA/mDHbcNFA7OzYFMeQOwpeWkh5MmDbvBkxVYVK/0MfGqzi?=
 =?us-ascii?Q?fIiVEwylQowid/L9vWQoBfNRqw2FEu5q4c9Vh5mt5JV53W5VSp2Xg0GNuAJp?=
 =?us-ascii?Q?QeFScvULJnev3fGKkNfcOu4gWlxo5AwxYcDuDKm7mnQXYGemP/g6BABVmpUP?=
 =?us-ascii?Q?4m+KcA6+b2FKgksleTYuvo94nV8xHlRjxkjRU31eTRGXiapWhQtnAGERwg5w?=
 =?us-ascii?Q?vcFeixla5+xdzcahL0fpCWYaSbGSMFhNlhsfXwoL1Y51MAMYNigOrXQMpD5+?=
 =?us-ascii?Q?FuYZb0KZytfrlCBOBSMKzMlX0U9xDYiDgUOC6TSxnyipt1RnTMdi8uvnlZZt?=
 =?us-ascii?Q?7N4oCExbcJRB/jfMsRqAf9UZCSwXpPfaY5lXmX6qChsFSHpMhhqKcDjyDwmI?=
 =?us-ascii?Q?05+JlbFJmgr+Y9zZVQCrRZQQ4z9SJwS29hihnmavDEicjoeojSB08rKq7a9D?=
 =?us-ascii?Q?l8izUGmYmKcepUVNPMuwR31oL2Guso4ySVkkusHhmLOSiOesCSvHpLBfFHqv?=
 =?us-ascii?Q?ruBHgOU6V29xwfpREuB6R6ovUFrNsuKsZWhFXJ/lCzgaGly0PTeYswqUO2/5?=
 =?us-ascii?Q?9GWyDQPS9MZH84WQOPRnCned6zggS9knrlruaL3vmYSzvCVdcPFcHD3wcz1Q?=
 =?us-ascii?Q?tB1vP2KDcW6ajNDE4BUVj7c0q4ey3Hk4Lr9TLZDbZBVXNa4NfYEnUqa3c5RB?=
 =?us-ascii?Q?YmQdVX7QtF38pX7hM7psi22Z/iLTO02/iKPVZzQgDmZI8XyJZ0k7pYVcojzw?=
 =?us-ascii?Q?wt526EhBLCnJS1HC2S+/ej3RYdev3UIIhtS3EsszQvH9oXv6eJVjurVuLhb+?=
 =?us-ascii?Q?4mQa0Xvbbf6GNxi1RVRSQjgwxugj+WGwDeIihp9+BuAtIjHDsrIuCYkvghCy?=
 =?us-ascii?Q?evKewvNZLe4zQpJZfzNcYhCjoQ2bVFT7nyAPtzMTyFr34umVLY1d2yS/aG2p?=
 =?us-ascii?Q?G286ptR7kt1k0d+HKGJKQNORY5GDj7Kdai/vXWWzRwEVxSrf5eg/qVxHQMQU?=
 =?us-ascii?Q?uBXX7jmf9vM7nGiFcdWTmUCwdHUhIQUBnXLoPn1uiMwLif8zXrXmVzfKNQ/V?=
 =?us-ascii?Q?GbKISLG94vrXYjjeIJ0964jHX73d8T5sMdnlNC7UZt03yQDq5mNVaExviqjB?=
 =?us-ascii?Q?XQ3mtJw4S/U=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?H6dP3mIn7HMoY+ohxtoTO6a2aVYnQmLYD0Ovv3PEG8NMxxJaAkHZkpaAHzDt?=
 =?us-ascii?Q?iPzZhbHfbRxRjUqsACk4mdJGBrLJMmSgxRe/n9mELme7WoPbka9h1DUAJarB?=
 =?us-ascii?Q?CdpXSlOGClMK+pWTZW7/vqsRDHR/0gjDrSdSB5PoUT7IAZOzE4oTpxYWMDFf?=
 =?us-ascii?Q?A4JflYkZ/L0NgTRr52Ct9eh0ouxShE2DjX4jhV7cvNSZUxcg6FZh1X+x3CDT?=
 =?us-ascii?Q?PXpovvryDv+BMtO/EAY6X1KQx1hpR20fijO/Z7PxVlHJJ7TE7/3/MNGTxhvA?=
 =?us-ascii?Q?rNdluiUoZX5Dm7xqch77KI1hrOBsJhCWSRs5HmZYDSSJOX/1+CjF3ppbgwrW?=
 =?us-ascii?Q?qt3huHQVucJWD394ED3flFESP9siMUKCxavjC/tQORFJcDf4q24TlFDqdH8f?=
 =?us-ascii?Q?vfaFXKT5JYgmxBo29ZGqDlxrciRcr4vMr79OHfTp+U7/5BetH63nVZPvufAr?=
 =?us-ascii?Q?1K1K83KYmVKRFKJnMY1e/fTv5nOAVkFnLUidhJjAJPtloa2vMPLkMy3VpEcL?=
 =?us-ascii?Q?FcpPGpxItnlh5ZLWQZv0/4XVwKbIg9rm66MTpIo0aNSGIWKGoToYn2QZYdHd?=
 =?us-ascii?Q?KGQR+9PyU//5qe9DDw+JtuJU3uUm5S8NiYoZLTIXkSbpoulM1+OXD6KnzfI7?=
 =?us-ascii?Q?myLc/9jYlpEJ6E83zqgdievdqT7H+bOIAMv5ZXxmS7o++Pe+CsHHk3eSRe6Y?=
 =?us-ascii?Q?BQvnBL9xS0xq7HQk334qcjHa8Ornswsxdwqxmv+7qm3VmlmLBGYIDhWFj7/M?=
 =?us-ascii?Q?l+91lkkurD6gIGML+S2LbnlX9ye1nDP8v20AMAkTIxS7+8NScFue1VU27I1+?=
 =?us-ascii?Q?gOAEG8slbcQU38Gs2O3y7xIQ7UEtIGYFc0+Q+HsXhsNqbweSVq0GNd1qEu+W?=
 =?us-ascii?Q?/c5F+QTuztq38T67sykbmvLKHprzcBoP5+vJZfZE73aUx2bJ4NpMJ6pbR8LX?=
 =?us-ascii?Q?oCkb++EexfaSbnQU2z/hclTB4XF+z4iwPn5AKWsN025m5bdWIRDKwBF0+egR?=
 =?us-ascii?Q?lXZVkNiDega4gS+IjSOERUboB4jxEWptu13I1ST1T7qIWCrKgdgxNducXZC4?=
 =?us-ascii?Q?wILv8lhblFNd4E0upQVdWgjPFpaFiTqqu/rzSk8LI1s6BrVg1ssmtf6Cjt/H?=
 =?us-ascii?Q?TGGxi6DeXIXh7lRKdLg6BwWJDG1OOd9Iu1ibI5gWlgblDlNME8fwHaDx4DlW?=
 =?us-ascii?Q?sf9Q72bjNrigBg/WxaJ1UzpElgCD99EvZps+i3+wGyZXFgOVp/p9+0jm/QN7?=
 =?us-ascii?Q?sCJ6WuRGm9Ovz5isGnCxHdlRXBOahtmZvCQta1xe/AIXlxL5iqhB7mFZvvu4?=
 =?us-ascii?Q?MVw3t8poO8PbU+psLaXBGxzRY2uDh4CgYnKSL+flXtEkZCSxvaFRv1SyXj1N?=
 =?us-ascii?Q?Vf5G5R2xFmcZj2g4OyduoKEkZB+iad5ChzC9+BISxRW1dZ0NHNvLzKRuI4RF?=
 =?us-ascii?Q?oxbW7E7RRx6bkPH8KV4WYu4pcCyb9v9ShZPHQ9Z+CPwR7+Y8uNzUYdqWUydC?=
 =?us-ascii?Q?Trgwf5X0mVTrlQTsnSeqBho6Hh0qFMOY4FBaavo3sbDMcSTOjV9GMK+0XkIv?=
 =?us-ascii?Q?/jO+UYYTRJtJ7fcOEH6a6UZIdN5qe4LvPBunZgan?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d0fb9795-5290-4a41-eab7-08dd6afdf1d0
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Mar 2025 18:01:47.4747 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ip4KfdIKbazqik2j/mlAObafKhFCKjhgyqy/TlmuD3tSpy8/jrnf+eEaJMldfHi6vC7b3a8mAFrSN8HQ8NJZiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4782
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

After a follow-up change on non-eDP outputs
intel_pps_vdd_{on,off}_unlocked() can be called without the PPS lock
held, allow for this.

Suggested-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_pps.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 617ce49931726..c883e872c9c82 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -744,11 +744,11 @@ bool intel_pps_vdd_on_unlocked(struct intel_dp *intel_dp)
 	i915_reg_t pp_stat_reg, pp_ctrl_reg;
 	bool need_to_disable = !intel_dp->pps.want_panel_vdd;
 
-	lockdep_assert_held(&display->pps.mutex);
-
 	if (!intel_dp_is_edp(intel_dp))
 		return false;
 
+	lockdep_assert_held(&display->pps.mutex);
+
 	cancel_delayed_work(&intel_dp->pps.panel_vdd_work);
 	intel_dp->pps.want_panel_vdd = true;
 
@@ -925,11 +925,11 @@ void intel_pps_vdd_off_unlocked(struct intel_dp *intel_dp, bool sync)
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
-	lockdep_assert_held(&display->pps.mutex);
-
 	if (!intel_dp_is_edp(intel_dp))
 		return;
 
+	lockdep_assert_held(&display->pps.mutex);
+
 	INTEL_DISPLAY_STATE_WARN(display, !intel_dp->pps.want_panel_vdd,
 				 "[ENCODER:%d:%s] %s VDD not forced on",
 				 dp_to_dig_port(intel_dp)->base.base.base.id,
-- 
2.44.2

