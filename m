Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C68ABBF45
	for <lists+intel-gfx@lfdr.de>; Mon, 19 May 2025 15:34:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 33EB010E292;
	Mon, 19 May 2025 13:34:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BYuCHyQo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9B5410E260;
 Mon, 19 May 2025 13:34:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747661684; x=1779197684;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=x0Fl8YxLTuKl2EiVNjFu3dWtROmFGmIx2LL6EiMzXHU=;
 b=BYuCHyQo3kQqrfShY/RPZmsziHgL7aduJVPX4ItuHsL6lflhbo4Sq7oF
 BB2puxLvOQESt/aEXamCFy3fflnN5bscEDrgYK3a3YgzuSzkQ44GrAiEk
 2Tm174eUcIuMKcynucWrz95nUn7LwFPd28r21J4p6+HlMAFSCjyG8s3bd
 +T5s2ne/llv0DIl/x9rmyuuejpfscPLbRG0MCY21dvG0eRorqn21CTJAk
 OOvcqg+kplW5I0C8/aov4EnXeYqR3vyrPM3VOUIulcUWcj3wqDrMx6mh4
 qnW5wKtN0t1qzgqxyE6zkbcVnmqZVruhS6vW04Tzuljya40MaYIG8zlZz Q==;
X-CSE-ConnectionGUID: uNK13LPVQQ+CJt+IKO2Wzg==
X-CSE-MsgGUID: pgtJ6kaUTEeydPdBV+60UQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11438"; a="66974057"
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="66974057"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:34:40 -0700
X-CSE-ConnectionGUID: jEuHx5UoS4qlAtn9j5wbQg==
X-CSE-MsgGUID: 2uKDnVjHTGi9R527VrO9MA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,300,1739865600"; d="scan'208";a="139866996"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2025 06:34:12 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 19 May 2025 06:34:11 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 19 May 2025 06:34:11 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.41) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 19 May 2025 06:34:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aTLeTZMYVDl55Iq+zpW9+gVYJI6bVwREx9wpBjwK/6PpnPnrNG9Q8NIl9Jsyi+BFvgmC9Qo+HAotrkMD2c0mWBMUuJXgXf1F1M3hVUBi6IjxN8DjEsV67UC9VOIL/n0AUawVqzJN+Hhg2/c8tuWFEjLOcd1slAUQCrgJIqndXZXJfEdNsQzLJy6mGOpT0QtJTB3c6Nurub1Ogtuo/YIsJePdLEmyIPAwNn3t9sD+TQxy0VvQtsCRdvPAiGn0YDxZgukA0hvahIhX6cSGEgpGtfI7B8iqb1HCjzbPPgg170pAnzrF5kTXgVeG0v35qrSOe7xrCkf+IfZeCuGWk94CoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uxU5aH0/E9XF9VFCNjpEDzXUBw0yvYKDRhTB+QrufCY=;
 b=HJXcZoeomBy9EdKwwEM8gXblHG7UEQDnHnYhVMMN+PqoW+TIIITTTVWZdCcS/0kUHSMfM90cGzInPWOc7JyIMit9o2BFb0PuEd/gQkachekW5Wd3Y5wP+4MezwigcVrEGLlqzCyOisL6L0TNmqk5+CpoSmyL4nWHqNZRbWGaWpYOwXeV2LSV59bh39vWWGxrbFYbNs1jxQ08Rxw8+Ud51K3+ZLL5ryETEZfx96kVaetnCK5NUGb1OD9pA1nOtBZTPB4AzisnBPHsPjvo4+V8q6e6lD6GTwp3Khn5XWZuWi5+o3cRs9+YhcNpG2H2/YgdVPkRvzSdLq44n/Feb8T54g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ5PPF57F27BA08.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::82b) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Mon, 19 May
 2025 13:34:09 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8746.030; Mon, 19 May 2025
 13:34:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Westerberg <mika.westerberg@linux.intel.com>, <stable@vger.kernel.org>
Subject: [PATCH v2] drm/i915/dp_mst: Work around Thunderbolt sink disconnect
 after SINK_COUNT_ESI read
Date: Mon, 19 May 2025 16:34:17 +0300
Message-ID: <20250519133417.1469181-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.44.2
In-Reply-To: <20250516170946.1313722-1-imre.deak@intel.com>
References: <20250516170946.1313722-1-imre.deak@intel.com>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: DU2PR04CA0335.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::11) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ5PPF57F27BA08:EE_
X-MS-Office365-Filtering-Correlation-Id: bc1d91df-f45c-45ad-c2a9-08dd96d9d543
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?RiRy9H/F0ZSVj5xGbp/KejvwcN0a2s242g/GRmFHp75FPeB3z9Llamzhd8NC?=
 =?us-ascii?Q?nNdgCfpExU5NSk2yBXGPDpgU9LCrJYZXMVgWKvIhv5GPVJgmRUNIORvI3dne?=
 =?us-ascii?Q?1Uft+grRaa3YvWCmlWmQ3LEV4BH+dhESfO+ZVAjQPlqaSflhxRwzWXunbTgb?=
 =?us-ascii?Q?mJnxuIlR1YCOuQHSQGWkRX9jjmxrCDvoQshpG8WEq1zz8rwb7ayI0B+9xoXr?=
 =?us-ascii?Q?vyNNnqpJJQFKjcWibj9NPxcbOtsjawODdW/GZCgQOI8qXen7YGTnoxES6lC2?=
 =?us-ascii?Q?cuazHOoQuGkvzzB9ceBK322X8iHBhFOgW85PghrC70D0OA/ogWgZqfqQilrA?=
 =?us-ascii?Q?5KFMHiOj2cEHCEnkIMJUNF9+GU6N0zsNDAgyX4gqcouBDsDzjKaSlLSesQQv?=
 =?us-ascii?Q?3FTWwO4yuw7XrzfpGgBKwTaYOCiXyTLHcbde32+33kzZzJaMKmuSS1jhuPFi?=
 =?us-ascii?Q?HaED2PmD45eTxIGt2LFGeaU2Z95Vo0riqL2q4uEDKkvcEOzJvAav6PSgCjnQ?=
 =?us-ascii?Q?WIHMtuZyXaWgo+Ib6y4M0AUdEdzcgsrUI488HcJZM37IzApiXAFa+Wvqz+uR?=
 =?us-ascii?Q?wOHh8uBelIud4VGCO12ez+YmieyjCcUsG7vnKYl9XR3QcjiVqoAoZJ60041p?=
 =?us-ascii?Q?pfclBdWds8qEhgOx4y56Z82RlBWyHd1JlOhj90mhj8dOE/KkksYFZ5m+YZEL?=
 =?us-ascii?Q?x9GicxCFALh6fteEr64Gi00Zwxd0IG1kT0cgk5iKAVZUKVwnDg6OtTVAr243?=
 =?us-ascii?Q?YsEpc/CoLH6uUbQsZnRwidV008jj7q2gebrE7VXAsKXyUdRMfgoQD8XdO9V+?=
 =?us-ascii?Q?Akzjr4+2OAQayWdcl6YLuDqkPYNoblxLeOwaKh+2NhztMmkPJXyWLB/iHVXC?=
 =?us-ascii?Q?CD061UFnADpqYQ3pKNwS0lWmXwXtWDXPBzhGf7g1Hxwy2TMECRXCupgBDD2+?=
 =?us-ascii?Q?2JuNWSFkn/rK0lC04J+T0VjX1cOc5xPTjasHPSckHvYEQZ96kTc/OzSjWqWi?=
 =?us-ascii?Q?AuV/qIFBDUCUxXglEck6+DAEGQccxLdFpK97zULkMasVNBEsowhtoGc3q9Sw?=
 =?us-ascii?Q?og5uO1iBVscC3S091yJRc56vmFHfbKVo4zM2IfPYl+Ka5HyQv7xmgfqcK1t8?=
 =?us-ascii?Q?W5E4ytYGhGGj2C3a3LzSDW5rQe1wlThhNWLsMbKU71Gf5s09izYhM6D7gPMK?=
 =?us-ascii?Q?fFq0uJZobBHcQb4PwLmKYUn8cwK7wuE215zy5kq+q8dgZ2Z0d5V2bmREet94?=
 =?us-ascii?Q?SCGz8lTDlLbkU3kgK/zAuXCsTyuK6JqFtDksOkTXlkfxrWf4gxo9PT2iFx0O?=
 =?us-ascii?Q?Jg9GYrUmi2WKERUvYHuZeyzmWi1eHqtlfkzwSfHn+CTN3y5dF6d0fInPUV+E?=
 =?us-ascii?Q?Gy8TWmA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?JsWBtifcQkaVECetSk8ujmyX3upQIu5FH4gFWz3apFp6em9/QXaNEGdmKBEx?=
 =?us-ascii?Q?rVGI/q9xdjiEd+8CDxSB0G2LhKHsxkSnKUQrCJ6ZAIgIdPj2q5Hz7x2898RE?=
 =?us-ascii?Q?OzLZ05BoYmxe3O5L3W8cY1anKM9azuOL94ly/3fAfBEZXp17mkOI+D9xFjl7?=
 =?us-ascii?Q?4NGV4z7OLWAHmsDUgcNLW4ztV0s9jH40wdonfOQzn5KnE8XuQXGnX49VL6/g?=
 =?us-ascii?Q?M66Sl89vbEBMH/OJwduahSZ245pQfxqHAlhqy92NDL21HWe0YLP40H68Rdyq?=
 =?us-ascii?Q?DJcPs8ID1ksh4wBmrNTYlm+XhluEIyv+Ce+YW5ArFjmV+mFjWGA8Xijtkhs4?=
 =?us-ascii?Q?4VWZYcfDAy4SjgOeTxp9C57/3ryzmj0gbOyCqwP3SJUJ/uuXsvMw1b2nCHkM?=
 =?us-ascii?Q?Z9nvZTJx5A1hYCpOvuZJvpT+UPxA2Jtjt6w5XSDYvUFpSe0zLwXP9mVGbEul?=
 =?us-ascii?Q?cAI1Hy7cKLvsRCEiKlzFk8vNsZweW3IFEXyMQnvQ2H612w/NQXu48NqB3Zoc?=
 =?us-ascii?Q?1SfKilhkrrMOu8Uy+BOpL663XEBCFjGeucaVS9cBTZres2wQfko4L8S9ulPC?=
 =?us-ascii?Q?boe5UEsKHBMmtgsCE/wyxpycgIdicUpyWHriilvXJWGenHpmOnmi/WGmNjX2?=
 =?us-ascii?Q?O8pZLV/ycdNr+oNRqXcGzUAUOyk5bcfp1/trhvxeYUR5G1rf/D8YlpKbbdhZ?=
 =?us-ascii?Q?9VdbtTE/hGi6uYQR/5PrrSrkKyie0PSDhLX4NQyCvREL0ty7JC96ui+OgG/y?=
 =?us-ascii?Q?IMBGlXxm2Pui8/xhx0ZdbjbPxk9tEDgQrZ+2rBYFJ2TxmwGsOOsF+upiEVMH?=
 =?us-ascii?Q?inemT/AN2rMAE5Ciuwcvtj56GU++f6wQ9cepQmLd/+lMmgzn+wPdkxRnS6B/?=
 =?us-ascii?Q?e2Kij6oSx9ftttJ2ww+2mOjV+hGDfNCEAfUxQhq/0f9J6BEFrqRgzfzmosi2?=
 =?us-ascii?Q?oHkT8142yLMCwV64RlTQ+dkzexSse8SXcJzNVfQgmXMCImdQJerL89pIX38T?=
 =?us-ascii?Q?Kgk6LqSdDkiEwTb4RUn//sgLYBkflyqlXagtxhBSj2lldoPxQZaNrYF70X8l?=
 =?us-ascii?Q?xHUfW9bSFNQ7+ZxYHnZPyEmi1sMX70ZRFPNRuuxwYdtZnmcVnjRlj4+xXMff?=
 =?us-ascii?Q?wJ+6FrsO2rP1ttY8E5KNPFeDg1qSMXEfPojnhwQD8+EyfcYpzo1A6mrfvePx?=
 =?us-ascii?Q?2GvqslF9vgOo+sh/xZTdifQaKgg0UJQVIOdKc+mZGZ65VPCmaznVze7+YWsD?=
 =?us-ascii?Q?dVZaeQGulFAV08HcgmfJReNHuSJjqh6EQclbAUOvHzIU+XOex/Jn5+E9V3zt?=
 =?us-ascii?Q?b67n1ak5E771cIRJUSxJUD9rTEJUoH5YfMYBW7kADBg93yJtgIJ4YUxRnWOI?=
 =?us-ascii?Q?WIRY4S42K9NgdVtIAY05WaFUBWKBWmjuus1cLhRdPoRUItC7dVwH27ia8UzF?=
 =?us-ascii?Q?yZvpWFPZ8J/rKbOQr1tn2b+3I57p9CQhsmR/xe37kRXQtXQNvu1Fv2akzOlF?=
 =?us-ascii?Q?7vRcYT6NC969qyou5fD5pEsTGEstxG4JetU7gKuvOvA74rU7yHxgmTpAFhLd?=
 =?us-ascii?Q?/Lq2FvLt1tOr0PI4+Uefsl2NvM9R7kKAKZhFWa0d?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bc1d91df-f45c-45ad-c2a9-08dd96d9d543
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 May 2025 13:34:08.8291 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /0YU+/JLmCFc2Qn3Q/1teEm/w6e+ELyzZsVNzfPQbqJjxhEXdPLUZIv7pz9A4NQpX0VFhmC9nlGBA8wCbYdhAg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF57F27BA08
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

Due to a problem in the iTBT DP-in adapter's firmware the sink on a TBT
link may get disconnected inadvertently if the SINK_COUNT_ESI and the
DP_LINK_SERVICE_IRQ_VECTOR_ESI0 registers are read in a single AUX
transaction. Work around the issue by reading these registers in
separate transactions.

The issue affects MTL+ platforms and will be fixed in the DP-in adapter
firmware, however releasing that firmware fix may take some time and is
not guaranteed to be available for all systems. Based on this apply the
workaround on affected platforms.

See HSD #13013007775.

v2: Cc'ing Mika Westerberg.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13760
Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14147
Cc: Mika Westerberg <mika.westerberg@linux.intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 21297bc4cc00d..208a953b04a2f 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4538,6 +4538,23 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
+	struct intel_display *display = to_intel_display(intel_dp);
+
+	/*
+	 * Display WA for HSD #13013007775: mtl/arl/lnl
+	 * Read the sink count and link service IRQ registers in separate
+	 * transactions to prevent disconnecting the sink on a TBT link
+	 * inadvertently.
+	 */
+	if (IS_DISPLAY_VER(display, 14, 20) && !display->platform.battlemage) {
+		if (drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 3) != 3)
+			return false;
+
+		/* DP_SINK_COUNT_ESI + 3 == DP_LINK_SERVICE_IRQ_VECTOR_ESI0 */
+		return drm_dp_dpcd_readb(&intel_dp->aux, DP_LINK_SERVICE_IRQ_VECTOR_ESI0,
+					 &esi[3]) == 1;
+	}
+
 	return drm_dp_dpcd_read(&intel_dp->aux, DP_SINK_COUNT_ESI, esi, 4) == 4;
 }
 
-- 
2.44.2

