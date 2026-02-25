Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EH4eA3gnn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95CA519AE80
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E89710E7CF;
	Wed, 25 Feb 2026 16:46:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XmBsGBoF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD3A110E7C9;
 Wed, 25 Feb 2026 16:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038003; x=1803574003;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=hW+xqFADB6rChjnoFFwz1S1xYGiWHTiI3oBGfvgl4K8=;
 b=XmBsGBoF701PirqJxACxEpAfAAYPJruUrDfWTfRVKS7yBPXXo1W/ddgM
 xeaXfyJRxcHFUk0QUA7gQrWFlq7QcJRmUCy3aPzQfbpI5sQ8Z60mJNP1X
 WfWXYc3FEtRoxp4ayJJkpEECM0DWyw9bSbfbbhY5V9aT7SzfrgdhXNeYf
 t0HFQDB53QMFeRapCXrr/prWpEEwbR84kUIlEXNHJ+pVQfJq9QgDwefnh
 /7EWO5LOTVfNDUJpRzXeq5RfBt08yk8UGpXiG8zYhtkp/io1ZpYYV7xWT
 RrTtIqn9tfYQ+QBVRMU0xCsFGwiLHIC1vfXWHkYXWVLke+b6YJKqMolGz g==;
X-CSE-ConnectionGUID: 9iBlRLqFTL68UUV0Vii1xA==
X-CSE-MsgGUID: U+P84NLnSsaJX566nDCYSw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="90495837"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="90495837"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:43 -0800
X-CSE-ConnectionGUID: RNAs4gYaSqq7I1dn9d9SOg==
X-CSE-MsgGUID: Sii5czynRf+yIIr1mg91og==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="220424228"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:43 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:43 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:43 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=U5bEs/tr8UASmdAN3gMjo9B97YsI2arTw3PWyfwE/VwY+8nRY92EFXEGduUdO1zFO6KzEOEdg52ndfXQ1SqWRX+VRk8HdJC4NW3XWIRMzNfKg1Fl+s7CJQit34vbnBwxbfjmYSaACsEJ9IjuFIVM0+QC6TJHWHKAB/2WPFH/4dtaokNoUEvy21WgjJBVhRb8Y6TDswnHC6C64t2P0x9NSnF52GfKrz9jS1J20OxHcplrZsmay2rCigRciM6RGn7UVqi//mHYmmIiX/S4j8XThBTPt5ujbRF3lUZ1GQjPzT1kfoHFTyxKCW1OnZ8z7EtKYokn9GBxpr7J1Wb0LAvHKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dnegf26aRycBENvL5fQ7DMGRU2A+y0lbpZWEMM0ha7w=;
 b=vOWRc1aJE3m2vqilqoCL6cZ4EWLux7TYdtNcDkDqWcaAPJkmdK5dSftqeKKttvsF+TQKJcuazBwll6q8BDvmBlxo/PV7bibACZCaVZrCIxkHtO8Hmudwj0huKwGIb0hCB9XYY8k+cWN+QqEytmaNR6LC1NpCrBXR8YrixQvhb0+4oqJwS3IDoj8hmfCbbWSYj9pG6DZRFJYdYOy4Zc1NBy2TWwbsa20ciVF89T/YI0xETW6J/a2iXFuclNKOBYlV3kWAuyJzxXjZQHiI5nFNffCotX24dGuSpHjR8snHBJJWXEdQuWG7ndO5o6A++s4dUhgmQaGhTt46ibA1JwDtQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SA3PR11MB8003.namprd11.prod.outlook.com (2603:10b6:806:2f7::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.11; Wed, 25 Feb
 2026 16:46:36 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:35 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>, Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 02/20] drm/i915/dp_mst: Verify the link status always the
 same way
Date: Wed, 25 Feb 2026 18:46:00 +0200
Message-ID: <20260225164618.1261368-3-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225164618.1261368-1-imre.deak@intel.com>
References: <20260225164618.1261368-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239B7.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::239) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SA3PR11MB8003:EE_
X-MS-Office365-Filtering-Correlation-Id: 17e0823e-6ae8-4e13-b327-08de748d7054
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: nng6I5NeDl5s2iBX6akxdhzG8dRppDXWFpOX1wptjE593CeOiouj4xEq+bsxjwgkuOStNY1H4oOHzQkPl1rIWgykVaCI3sqo8jYj7QV5PLP2fGX3On7dfaHlSZgjhpT15lqajR4MJ5E5kjINUYeU/dURScz6E1PDvX08RDjuz6ZhRKH5plBTlQQHrdJTm7ll9OpdTkgYwETpvyHDFgbFa4Ov4SS7zV7fjCZ98+y4ldYGJGIkuXZL9qfDMV2ipQWB40T5DRFJnvkL8ZNCDCaXoxFbduuASJYg9aLMhtfXJoA6mfkbAQwAE7t5O56kfCtnPk+bd0jmS+SwcbyaJf+QH03fujBV9iah3m5nWGU4VrojASHYA+tLLHBAKtFW57Mh7CwVO7Kh9RSsyqcASvPTB8MjJdQ/1iKHNv6+pBLm31e7fxAZSu+qRF78WqRj0ikJK/XKaLTKGYYNfDD4E4dx56uhDISvL5VzR9TL823cJEBMcDVaPKXrl82K26s7qG3P3IoP6R525JqhfjOpG2imENyVv6ptV0Qc9P+Qm227gMEwPdTKxvWuhe1zyWOqIOPTuQdeSbCtupq76qRoKw3TW4NsyKIFN9dlzPNzkvfxENefvtM8vD0AmftEOf5LfZ0DL8wXAnw3qsnfjoON70JwAa5FcVL3iU298mPJc/Waw0abjC+PC3ws/52MFQFRjA8WqJZ0HccBLn1P7h322QMjFidwc17kZx4xTbngcX4KXfY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?SHvMRGNBDbSwEoNBqjKQQ27FaZNm0X7xh+ojkH3w+tAoOTcF/Mhy4OJliEbs?=
 =?us-ascii?Q?M4lOFeizDNBh2m9AbrqtUBSipeeZnRHQBhpzrq/yh923CCIMsKbMnIFgbb/k?=
 =?us-ascii?Q?c2WG8Og4cG349jC+mWVnv5/MqSPThmfDcQXLnSayvkgPig02TrAZ4Ofhh7F3?=
 =?us-ascii?Q?TdZL8YGbP6zroiqlQdOCzIiPw4ElFDjnRkzOCHmsVGTrZuRoN4ccC/Zk1Q1o?=
 =?us-ascii?Q?un9IDpDuWd4lGhH/tb+BnHIa1JGrcXgeyAbO71zOlBeRib9cLZrdFL3d1OTv?=
 =?us-ascii?Q?wwFUOimSZ2mjYWlDpaK/5+CP2KM9hr4T+NK2lmNtTVLgWvzXcwZ0XkEVAcjl?=
 =?us-ascii?Q?Se7hyUvEZZCL2ic2oQAgKdRWnGw9VlafFXvtMQfw9EUPFVVmrIrkhBLrx6kE?=
 =?us-ascii?Q?YPUKUGtde+QDXKVttX1Sq/LtBIDEJ3j5SdN+5ltAK+lL40jf1Z5ZPzZr/GSm?=
 =?us-ascii?Q?9eFPmEqcSTRm0vWhDJn1njeFFp2jgogHwLMMkMnydbO98OsFDEmaC01OV66J?=
 =?us-ascii?Q?o4zyY//SoSkRwg+KGpa/gOLJMw1KS/sGzMKiEKT3RBZ33zAxk6wXQZsK5sBk?=
 =?us-ascii?Q?6GJ7dHOPbIBpM14WpnC5mhjXnvBBTdNeNNWcldJi8whWunN014QFeC7DWKvo?=
 =?us-ascii?Q?VoZ8pzsGmd2ymeJlHuwklaZElFbmXP37w6h80rnRUFGNF7FGsNpzJZKcvxvL?=
 =?us-ascii?Q?IctTEnbYBWJleDRA8BAxn4Ake3XlFJaNH3ChtnZv58eqzevwGZHMffM0Sv3w?=
 =?us-ascii?Q?kz7kg+oKhIW7laMYt0ls/ZCMe92VsFttNdYYkGSPQ6YzvbD22g4WPVM87O3F?=
 =?us-ascii?Q?ke+fRCUlk1G6wDaWxqrtGlpA71GVsemrSr39DAX0W0hJPScPYEp3djQeraMU?=
 =?us-ascii?Q?/nRomyGdiKnCBlbH8F5F6Ao/cp5fjk01JC9ENCxsOoiS+O7jnwAeoy443VM9?=
 =?us-ascii?Q?HJJ5vdk/xeJ66QKZcIa+5c4ZPglLviLkRhf5Y0TIDJO+63KdIlAoFWk2bqRa?=
 =?us-ascii?Q?G8Grl4pI2LCSB8g5o8rfrldGhibwRJqqQWlzBHkgJoeOiHzdBHsOMxzYj2X1?=
 =?us-ascii?Q?qsD90EZyQSNRfo4MOFqznoIpqMUmmJ7pFO4u8Vcf4uZ3OTytvXTA4aG+zyVC?=
 =?us-ascii?Q?ayrgnMZFhyIl21vUjcrrt8KWtzy/vqXLEjFr9yVZFi2dmlmbZpJYAjHPHwdk?=
 =?us-ascii?Q?hSutdKdJwD+K8i7mW9tCpsBQ4SBF+03014YRAWwL1hI27Zmf9gdVNiWzn2Jg?=
 =?us-ascii?Q?HyCNyVK+xFQby7vQvWA7g/mZkNXoqjDBmjQXl7lA16kzlJQlOOXDbnmnU/LP?=
 =?us-ascii?Q?yELP2e4i7G2qOPMdOm997D4aFA3QE7sFrKQnF7Si15665cQ51msZTy2pwl1o?=
 =?us-ascii?Q?2l3jCbTN44JAkKW9cOYidKHcRm1u0IQxgXsGs2TiL+CXklsepkcSCFZo8diy?=
 =?us-ascii?Q?n/9GkmefBJgjZQL7A9NGyp5GS3rYuz7Gmjb83GLs0y7kBNF5O/fHquMfriiX?=
 =?us-ascii?Q?Pe1PnYK63AgLQ085C4PehfSqwQVyXPw4mt6wFtkP2mrcvZkRL7LamTlfUVa9?=
 =?us-ascii?Q?4bK1jCJFQe/OkDKiFdQ+66p/BmanVQUIJo27Yy5yZ6QcCUzm1GxZMohjkW1z?=
 =?us-ascii?Q?wvpz+XSrZiUEW/mNj8bmodBz1sy7g9IottQCv5VfEzTG+8+VoDFApwy/CSt0?=
 =?us-ascii?Q?EVdOW6q5UjXB/6oOZRPOcyK6/HPJMxA555ogIPQfRVvdOtZTJxEZpExvLXje?=
 =?us-ascii?Q?NWoIXWvVsw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 17e0823e-6ae8-4e13-b327-08de748d7054
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:35.8911 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: di01/5pae3EHGyVGUo606UmBe8SvJ8JaQkIczgYs/Xm9SOnKN+fqm8M+DChJAi58EgF9rWRLdTdOTFFndtZOeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8003
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 95CA519AE80
X-Rspamd-Action: no action

The MST link status should be always verified from the same DPCD
registers after link training. Atm, both the legacy (0x202 - 0x205) and
the ESI (0x200C - 0x200F) link status registers are used. Use always the
latter ESI version of link status registers.

v2: Propagate error from intel_dp_read_link_status(). (Jani, Luca)

Cc: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index eb4a1c5c55714..e94fcacb95304 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5555,6 +5555,23 @@ intel_dp_handle_hdmi_link_status_change(struct intel_dp *intel_dp)
 	}
 }
 
+static int
+intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STATUS_SIZE])
+{
+	int err;
+
+	memset(link_status, 0, DP_LINK_STATUS_SIZE);
+
+	if (intel_dp_mst_active_streams(intel_dp) > 0)
+		err = drm_dp_dpcd_read_data(&intel_dp->aux, DP_LANE0_1_STATUS_ESI,
+					    link_status, DP_LINK_STATUS_SIZE - 2);
+	else
+		err = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
+						       link_status);
+
+	return err;
+}
+
 static bool
 intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 {
@@ -5577,8 +5594,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (intel_dp->link.force_retrain)
 		return true;
 
-	if (drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
-					     link_status) < 0)
+	if (intel_dp_read_link_status(intel_dp, link_status) < 0)
 		return false;
 
 	/*
-- 
2.49.1

