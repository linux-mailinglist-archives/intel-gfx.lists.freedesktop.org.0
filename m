Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F84EA7C028
	for <lists+intel-gfx@lfdr.de>; Fri,  4 Apr 2025 17:03:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 98FDF10EBEC;
	Fri,  4 Apr 2025 15:03:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OuOBRHZR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B28E810EBE6;
 Fri,  4 Apr 2025 15:03:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743779023; x=1775315023;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=kkxd7URa7tE5yy/Gz8Wj7/gTHisHri/ac7dIsBc9xlk=;
 b=OuOBRHZRatgfLsF61XIW6q5TL93tnOlgZKvIwfkppSl0i1W8wSmvn+77
 AN2Ja8aBH7yCtpziPlPKogXwATxBAAYM+kpaCuFiBPaSRoxJD/w0aTEN8
 w8OTuN+MSS6gsiOT4snBnJa/ICAKyLGW3rZWqhas8NkO7+mJfFDwmvaf5
 r1UTPbpjkjOfk3djVRFvHyFR+KApZKp/FaKiV6CxM3NPvjtGg53zFTsbr
 tPTm+SMzqKd8ambNMzoUyW58+fn2pCceLetWYzVbSdiQ8Dh5G9C5v8Yjf
 qKQn5ZfVK9p4pwVKwMUcmzmiyAxzdpK08Jbz6OAoHadv8RoS+P4GfGofI w==;
X-CSE-ConnectionGUID: V00obWX4SYu7xY6KU/Ht7Q==
X-CSE-MsgGUID: 4cNKB12LTkeznbeFN46NfA==
X-IronPort-AV: E=McAfee;i="6700,10204,11394"; a="45112261"
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="45112261"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2025 08:03:43 -0700
X-CSE-ConnectionGUID: pURPboG5THuZk8RaxXhNpA==
X-CSE-MsgGUID: Dny01CK5R5+mk7Q048dArw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,188,1739865600"; d="scan'208";a="127089551"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Apr 2025 08:03:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
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
 b=MWmlCzNIT61h8rlSe4jYGlaY0cz876dM6otfgdZJX+JlIH4LdwZmcoAbQsdfu3sku3FrfiBN55urTUyM7oABcQu/WCxqiREm5Am0YC50R+AhDirZxlQkhYGlpW4czV962O2TkzhNfSkX8CT3eqpZjasPerj+g8uoPKEOKmnmr4WmDY7FhYfaJrrTfIfFj8/tOqI+gggcaRhl+wkutg0xEf8cxnyZZkxNZeNi/HWmDx9dwMsYC2N75dtLBv+jHKyBDDd/IDCAvFwr3umji7Dq7dJ9pFMULYQOjRLFIhdamROihQvyUDNHrAb11BNi6TdxHYqZY4RhKmrquEeTAT4Shw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tmwJ4UUnZWW2G447xdV4lLWSrybF3/7ohPTa0+zFh9o=;
 b=eaqTL6EnvQHdehiYicJ9fxpqPqJcwkGsb2F5RW9qLQ1Pnzy65R2z3z1yZaLqB9UheqklgV7YDoZW4D1TinO8aCtF2j+ZonsvsKrwl/zDrIJluwXVs8bWVGLNujizEOFBn5craNoAc9J1m/D9z6rFmbvZVR1nTEZVT/vfscDOLBE7dbDRHoq4iYmM8i+aDtdKGlDM3F3sRoq+CrNWsqEXpNPmujOSgUQhmjaH4/MY/JvqXvLQK7PFuvIfGgm/N6R2icd2bckPpqpmqQWMt1w80ysNa38RJ5YgJS65y8vNbw9AL3ooPvcJXf5ztMIMBZYVo6D+kfZ2K2nqA4n5ODxlqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MN6PR11MB8219.namprd11.prod.outlook.com (2603:10b6:208:471::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.44; Fri, 4 Apr
 2025 15:03:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%6]) with mapi id 15.20.8534.048; Fri, 4 Apr 2025
 15:03:16 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH 5/6] drm/i915/dp_mst: Use intel_dp_mst_active_streams()
 instead of open-coding it
Date: Fri, 4 Apr 2025 18:03:09 +0300
Message-ID: <20250404150310.1156696-6-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 4f0b0ca7-388d-4d91-194c-08dd7389d459
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?Ua5F/zWkj+mQJaTYIe9qf1FsWWWAhFxUotQBER0e9SSycTETjPrKS/hvp3hW?=
 =?us-ascii?Q?owqUQWA/P+2vEZca7Nvl/VYG29Tw8TWi/tMN4eZP9Rcw5PgTDh1X5NMyhXm2?=
 =?us-ascii?Q?uF3Kk0aGechQiiijD8JGd6kZHOq4BJQB7VZUYi8BHjksU4WfkH1c1JcZf8uL?=
 =?us-ascii?Q?nyBXNhql+eTnvkOxZzkgCVTd60pGhd8hT/aANNAAHWGwDvrSjX4v3NnwAOPe?=
 =?us-ascii?Q?xfuA3hXti8SYs03imymDo/sIvfgeiCgjUUnxIA1a3waBr188coUBckW2X68h?=
 =?us-ascii?Q?w+vbycK/IWDu4i0mRgJ+U2y5kACTwDNjxMa3ort6CyBW/I/ILFxuO9jQMq5e?=
 =?us-ascii?Q?RCct8BUQq7b+4XjTkGWt28Gw0xSyivFyOXLiPkjSCkGO59M4GFPtJMtFS08U?=
 =?us-ascii?Q?zY3LEqinB74C5TZblFhtTXg2tj5VwpIKAvAZ/34A0P+JVYr8kNoELjyrEA5X?=
 =?us-ascii?Q?OpPudIq7xY1Q66tQZ+3nOsadSNElXSHTU41UtTUKRdPOn0oc7hVqkwyd822K?=
 =?us-ascii?Q?am7cPLxmKt6UM47t74fQtk3T+BQRHa8QcpYUVTlKKOSnAkrEofzb79VCe/65?=
 =?us-ascii?Q?njiX5eBnxSX+xtzE2hZ6yv3MJPCt3F0+Q1VoV18wYImmtGsfwptg1z/uonI2?=
 =?us-ascii?Q?yvIGOyAraRo5pQ+HXyiQJPtkTUGS/jf16IwQdER+U27gDWNzOqBQv0cO4XY0?=
 =?us-ascii?Q?g7kWV9OmwG/UbWhgh3ze9vQEPinx6ezk9TtugfmBPcgFjWbP/xT5YcAcbcRL?=
 =?us-ascii?Q?QsvBj7BJnfWxQVR1DzsaLvmDjLoRG6xRiXYWLb3zNCarEnzKnzF/STncVThQ?=
 =?us-ascii?Q?+zbQzOrCXnmvv322qWWnVJWTtoz4zk/RR5YfR8OzkhRTkeaiyIp6tbJPxHtQ?=
 =?us-ascii?Q?pCIvRbd22tyyB3aN0xuL42o3kk1uEuAhJhDnSBZYb62DrFNMj6a9k7RCdC3t?=
 =?us-ascii?Q?yHXTWtUER1PZtTwFte7m5xnKRgSn0epR6PDlWTer1aOpZaCJlOQ9NIY28p8d?=
 =?us-ascii?Q?1BPbPVcVoN1gqbk7IFWe4H3ZHWF6xQ0bmYx+3EyrS1mRpo32bbZ+oF/pRB88?=
 =?us-ascii?Q?ms9t+3G/exZTfePPNZYL0hzZuodDy4QTsPWYaSX90RHg3l4JsrsXCyimksf3?=
 =?us-ascii?Q?1ncoBykXjWyR9LoGz10kHTsQZeN5Z4nQ+/KeK2/VB1d9ffuNoNVGue4Lkxfw?=
 =?us-ascii?Q?Pd1UYpqFRi3eL3P+G26dP6XmuWrMsyHd7NVPg6TipuJI56Y5kkVvn0ANbzqv?=
 =?us-ascii?Q?oEBkzeaZlqTtuZ/A92ZOdcIkfvBgzHnxCCOlxIthgb8alPkRRrMYUTVhF3Ua?=
 =?us-ascii?Q?7H4HziSee4ww6jYHQ0pr5R/USkYxnqyknkrEgH5z7GjMQJYzuA9gFz9vbRaz?=
 =?us-ascii?Q?DKdjiO1nIBpeLlHsJqF4yXVLTz7m?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?D6N28cJwIhY4dp8uaaSh6sGhr+vnifhLTQCTO7Ff5pArsrFIKW86FQg+uUql?=
 =?us-ascii?Q?dhkNjqbDmHrREmRYEh6Y4N5OwG9xi5OLjOfs1MHt+asB0e6AHgXbcoQyOL0x?=
 =?us-ascii?Q?W6rqnyHPG4OJ3Di3PtVrkVB6Kn7AFofpj/NkXDKZAowtlyfJWiBC9y3nlx1F?=
 =?us-ascii?Q?PadBdw8woEsxELWRSy/V3cjPTL0lYNcL3C5hJ+Te4ehY1jBYxsbhlK6S/NyG?=
 =?us-ascii?Q?53H6u+XzsGtdtnqmmnqfFSpqykgfYtIgLva3KORGqgHEIgqR68/cDu6Wod6n?=
 =?us-ascii?Q?VkNsr7O/YoMC9LE4b4qBlCe+6TRw7uXBtUlBFfnUztKWZ54FUdsht0U6qNZC?=
 =?us-ascii?Q?bZvc/PX7lbPRjw6qMJ6jAntf76XolypYZO6BssPkFQU6ftBXoEsyD/1lPEr8?=
 =?us-ascii?Q?qIzKVyDM3sNeB0WVjwin43CHKiKbVx0c92fLmwLEnWq092C/Y6m8O9ypaElE?=
 =?us-ascii?Q?og2P/p6tZUpDUhawIW0h9+LP/jHeP1rQE3KzsbcWE40l0o6GLbR3uKRuk4lt?=
 =?us-ascii?Q?M+oyHa/ZKCuNWbMliV5UoJfKM2FB8h2ih4RsV1YTZocg33ltGMV4kW+Mn6kH?=
 =?us-ascii?Q?ihJcA0f6v1x2/JViBuFz7U7jlTkvEh9tmyiSMq9v2Xy8ZGQ39HuWHOwds/Q1?=
 =?us-ascii?Q?GQo58QESlJAF/b/bzlPfjjbzcjS40x8aKSVXCQK+uy6EYSIPvqHA/w0FGQqW?=
 =?us-ascii?Q?0UG7gQjQM3rtJUJ3iAEjRycqv12r/KG+WuybhSiRiLKy3XFMYT44pBCybjre?=
 =?us-ascii?Q?bSyFxZNkdamgG4OG/yaZ3eSUSmUGL+IlQPWvn+9fQ+RhEY5LIx/Zss15KXvV?=
 =?us-ascii?Q?qtXs/Ld4kTNlR/kJHYZ+AGPQ6bmHYp4r2NL6VlpCKYsB5RLyKmydgfb8a2sD?=
 =?us-ascii?Q?q1wq6DlXSTNNidbxNtdA65qBryerCkbyppc7wA0iRuT4IM32EMCjztEC3bVI?=
 =?us-ascii?Q?6XbwEgmhbA/R2YUkLqS0lsNbUvsdn9mR68+lL9BiJWKIHQvfB2aNa+czihxd?=
 =?us-ascii?Q?d0OakRUth6inQjgEsec0mPkYmE2r82GvEX6Y2x0uWpcrbKiIGvOoinz1JUsg?=
 =?us-ascii?Q?loSftbNC+z6JgBPJS/qyS9dBFfkvn8D0EIlkaUWhD+8uA17ka0jPKDVF1Fie?=
 =?us-ascii?Q?y7E6hFVrHYQl+my1Ecc+aao95NlUK2dlKR4dv3qIFaAF/cdoMHSIRCGTLTIE?=
 =?us-ascii?Q?Z8ZLI9TgbQZTbdCS1aZvNOK1RQ6dlbxk2r1v8VvlpsoEMMHCKx8krrQ47xcI?=
 =?us-ascii?Q?hvPM9Axd97/JOVt/ctolKXirDm7h8IcRCm6gW/ofAfwXDAxmQMmjtmn1hli4?=
 =?us-ascii?Q?FFS9aAx4Zfn+UGGlNdPim+/D7T0NiH188olbjBp+Mx+R/6sLtIFoDtD/65fw?=
 =?us-ascii?Q?SMVXxUQx0OJ084SXCcg0TWxPXuXQ8k8h9nUx7WdKMpdr8tR1lwsVks2vIiH7?=
 =?us-ascii?Q?R1h54lioG2V8j8NBbRkQphA0mbyW4oS3sVpqJBfOi0CrL4UeHuMO7t78OtcI?=
 =?us-ascii?Q?w6/FwtpSRdEWHg8yPyTVZjrC/FSM2aoTJnHjHw9M4Huv6RPP6881F0EKW403?=
 =?us-ascii?Q?3uN47ilZKyo7U70wwTIHKKFLM3AYZd2RL5xesxl9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4f0b0ca7-388d-4d91-194c-08dd7389d459
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 15:03:16.8848 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PuXd716Fbw+cimssjRAOT1upVuhVUcIwGwYUDnDubuMTWPaHFO9rZbzSGLj4H0cioeEkmPjRMX5aDyIHdQIm5A==
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

Use intel_dp_mst_active_streams() everywhere, instead of open-coding it.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 ++++----
 drivers/gpu/drm/i915/display/intel_hdcp.c   | 3 ++-
 3 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index aae944183d111..aeb14a5455fd1 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5018,7 +5018,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		if (intel_dp->mst.active_links > 0 && link_ok &&
+		if (intel_dp_mst_active_streams(intel_dp) > 0 && link_ok &&
 		    esi[3] & LINK_STATUS_CHANGED) {
 			if (!intel_dp_mst_link_status(intel_dp))
 				link_ok = false;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 2a4bbe692558d..9ae025ace3c0d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -1028,7 +1028,7 @@ static void mst_stream_disable(struct intel_atomic_state *state,
 		to_intel_connector(old_conn_state->connector);
 	enum transcoder trans = old_crtc_state->cpu_transcoder;
 
-	if (intel_dp->mst.active_links == 1)
+	if (intel_dp_mst_active_streams(intel_dp) == 1)
 		intel_dp->link.active = false;
 
 	intel_hdcp_disable(intel_mst->connector);
@@ -1144,7 +1144,7 @@ static void mst_stream_post_pll_disable(struct intel_atomic_state *state,
 	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
 	struct intel_dp *intel_dp = to_primary_dp(encoder);
 
-	if (intel_dp->mst.active_links == 0 &&
+	if (intel_dp_mst_active_streams(intel_dp) == 0 &&
 	    primary_encoder->post_pll_disable)
 		primary_encoder->post_pll_disable(state, primary_encoder, old_crtc_state, old_conn_state);
 }
@@ -1157,7 +1157,7 @@ static void mst_stream_pre_pll_enable(struct intel_atomic_state *state,
 	struct intel_encoder *primary_encoder = to_primary_encoder(encoder);
 	struct intel_dp *intel_dp = to_primary_dp(encoder);
 
-	if (intel_dp->mst.active_links == 0)
+	if (intel_dp_mst_active_streams(intel_dp) == 0)
 		primary_encoder->pre_pll_enable(state, primary_encoder,
 						pipe_config, NULL);
 	else
@@ -1303,7 +1303,7 @@ static void mst_stream_enable(struct intel_atomic_state *state,
 	struct drm_dp_mst_topology_state *mst_state =
 		drm_atomic_get_new_mst_topology_state(&state->base, &intel_dp->mst.mgr);
 	enum transcoder trans = pipe_config->cpu_transcoder;
-	bool first_mst_stream = intel_dp->mst.active_links == 1;
+	bool first_mst_stream = intel_dp_mst_active_streams(intel_dp) == 1;
 	struct intel_crtc *pipe_crtc;
 	int ret, i, min_hblank;
 
diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 72a43ef6e4d2a..411f17655f895 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -24,6 +24,7 @@
 #include "intel_display_power_well.h"
 #include "intel_display_rpm.h"
 #include "intel_display_types.h"
+#include "intel_dp_mst.h"
 #include "intel_hdcp.h"
 #include "intel_hdcp_gsc.h"
 #include "intel_hdcp_regs.h"
@@ -137,7 +138,7 @@ intel_hdcp_required_content_stream(struct intel_atomic_state *state,
 		data->k++;
 
 		/* if there is only one active stream */
-		if (dig_port->dp.mst.active_links <= 1)
+		if (intel_dp_mst_active_streams(&dig_port->dp) <= 1)
 			break;
 	}
 	drm_connector_list_iter_end(&conn_iter);
-- 
2.44.2

