Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id yCj8EJKtMWonpAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:54 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CE0695161
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 22:09:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=AtQnYQh2;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5E89D10ED2D;
	Tue, 16 Jun 2026 20:09:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0AE7410ED26;
 Tue, 16 Jun 2026 20:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781640590; x=1813176590;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=l8EdajrpTN+5TIdRPrG+DTOZO/UPbuOfnZTDoaOuR7E=;
 b=AtQnYQh2SOIpE7RK9wJ+fAAoZ1HabfJPDc4H/gcCm8IHHrEqGXfkdLRi
 BGHk/B9XDt2bMfs/7HLBAFnXuLnGukisH0mNfZTbDYU9jw3Krn6sB0gO3
 zU7BjAN7kiEhSBAvDSlxeqvABDrkFffYvhydWocUnE8RsyaNSCw9x9UvG
 yoNf/GMDsO9RvS8RDIhq0vocnxT0+jVKzv+dzqQWyGmgmXhfDQo24MnyA
 8RSKG0ZnaKka8MzdcyST2mhs0uzzm1p5AdGZM73kjPMYuIDooovtxpzl5
 UNUaVPOaLdFgv4EUY/097d73LMXRY/jNdeRVGDzJzv4N/pHT2lqqqdJ2K Q==;
X-CSE-ConnectionGUID: 64VkQqSCSQGX/4etFo2nNg==
X-CSE-MsgGUID: TV/zHpeYTFeTL3i90aG7Fg==
X-IronPort-AV: E=McAfee;i="6800,10657,11819"; a="81427289"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="81427289"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:50 -0700
X-CSE-ConnectionGUID: kyls6dPHTTmGCWsQpzpdpA==
X-CSE-MsgGUID: OJTYwzvySpWMgZH5VADsdw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="251786321"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 13:09:49 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:49 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 13:09:49 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.58) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 13:09:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QTqDEunMseGPyodr1J1vQjlLVpu/F4lOPFbVBLVrGEvmknc+Zl1JDWjMvx/UWRof6K9pPUT7xgmLsn//Sr2s+4SAaUleIH9lgvEDn4sjEhUNTeVgEh7NvXG2nGU6UZUTR8G0jazNAYfk5A9CxZb+OdputHtbHTj9iDZmbio2yu/ekoJNuTpJEzPCbkXcGGLyFlScmVTJjAOUtwVvGHmNy6iZJdy1eNkz/JK8TtkQFsXAIrgGjprtG2dLqwK+EVks7C+ZAIKZTuvIjaXn9guB0QWBEQCWTYIr7VQJb89/6RbU6ywbUiiQE38wKt+j/A1hJKFsmzh3dFaxGccJPXqVYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Evt9znSdeYctUtFAnc28/PsjwaS4GVlCzB5ko9c2VTs=;
 b=hQ7Xyyioc/ebVPZJ4Pfh3T3uMSLaA0Daab2ZAdR5z94xGWTLpdSP0fTDdAVAxtPzPh9lYkmdMNUcx3WF0ygSh3Wc5ITdKj/JkBx/I6gkC31tj0UVZCkjXYH5XyId80o3HuL0KO7rxjAmIo1rw5tzH5wGbsPMBGPjcfTrr3MFr/HygmvuxmYHHBYBZdSHMlI3lviAorBgjVSyo3olumPGDoykk590QdoF7lED0ZmBV3+/hcfU9jMptlxyoQ6QAvv4bRo65PipWPDl/D62LDYul2fvcFI4l7sS2tasM3HiEwompWXx9KJAjovmvO+0BjFtbkLz2k+qNG8av8IfGkS/Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by PH8PR11MB8257.namprd11.prod.outlook.com (2603:10b6:510:1c0::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 20:09:36 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 20:09:36 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 14/28] drm/i915/dp_link_caps: Pass supported link rates to
 link caps update
Date: Tue, 16 Jun 2026 23:08:34 +0300
Message-ID: <20260616200849.3534628-15-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|PH8PR11MB8257:EE_
X-MS-Office365-Filtering-Correlation-Id: 6042e7b0-1d97-4dfa-92e2-08decbe33074
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|18002099003|22082099003|6133799003|11063799006|3023799007|56012099006;
X-Microsoft-Antispam-Message-Info: filC3M2QGpMSV3X9aroB2kS3xcE41zHyEFjZ27SoKn9dJqxxdymNSRg/Pvar64seu3u4vrkISt0hRcgboZ8rMGVhW2shqbRVXoMF1YSIjYaUNquhOMnr33w5HBPHuXW/kwuSNO+a/iSNZt549oGXP8SNjtQs+CUWJeHb4lTh3GGXPdaVn2CLdx6sUHMYiJTt1shCcf0VIsS25f/IxoAKWMB/8jmQ76EynNA6McElVfQXjOcw3wufyPZ75xgAuG6h305ENs8CAJKZMW/mJinMLKnsJkk/OtyXY5MlT/XMwLHXUbKWTqM37KE5g4Wlxa6mOh+cvbkT23NmwABuQJUcbjAx+xoWkyNfSfEHbz8LN2yN6R7nl5UlwWwlYOLINM0VPkBjcEm03vUFxWD6Yh/fUOMA8b8W8YekBHJfnSCAATNMLw+euTPcI00zlPS4XmFaLsR1bZ6x5dfY8suwBCenpgJ58T5hfCltEXocyrPKtmwS3CHRJ7oA2796dM4Q/6kGNcmgNFxthY7zqmWaN39jVA4p5ikaVNA8HSRzbykfKJfWExDH+ljam2tmelGDpclezFwsKHwG5ns+lheKjDfFZl4m3b6H3okm3rTeGVdD2spiCIiQVaDk2WjO1ANtqqC7yzOZokPyj25sOgPO9ugTZ9ROeegGddUNSu1xwvDykHSFjEs1I1P8iMXGwT54pt37
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(18002099003)(22082099003)(6133799003)(11063799006)(3023799007)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/lQ/vR2lY5qqHNLQ6YhjTpWyDrrvrX+7N0SgOag/sLVI8jWClsTUtpv4bstx?=
 =?us-ascii?Q?OTJFfdUqdt97himTfUW2wdfrLhQ5iXruwKdH7463MaxMKJ1FGsp43SEww7n4?=
 =?us-ascii?Q?Geh0V9HQ33hyUOqj4/JBqQ975hHLq/FShIl5lKfdDgTbll8pfrFhtGY4kJvy?=
 =?us-ascii?Q?GmBGGxuF34XnjbBjH6KfLIo3ua0xNcJ92n/oZIZRU2eRlhov9PMp4DTmycWV?=
 =?us-ascii?Q?o1Toha+HkuK2dbiFeIxUGb0ZJvst7x8KWm8KsPndt0uFj1csBFv12IeTZh6/?=
 =?us-ascii?Q?QcyV1/BaeR9yTXYR6HzEDtvz5NX7KEwuckforEwNTklYn2+iLGcXYAMMQynD?=
 =?us-ascii?Q?e+STzZ8p9f3wDkBX6K5AIr4GNYjHiIrOmHIuyHNgZDiibbBUGwVbuNUIac5X?=
 =?us-ascii?Q?C9D9X/WWAGUEgRVrXAgbEnHHuG/j+YTIYusd6kvXMZ+1k7rF45xQZHF7ltsz?=
 =?us-ascii?Q?oTjSKjyAZyNHYiMpQbtL9yin/yBF48LGUtJVvPSxsYBsxlCN8huqdhg5Mwal?=
 =?us-ascii?Q?uj8vsjuDfnwEcapDr2d9rmW3zzEI7OgiozdkptN4OcD1qSn2LFaJDGc4ChGl?=
 =?us-ascii?Q?UF3p7YG1Ja2V6H3nk8266g1BNApzjOa3puAeHgQ5yQCDse423xu4My/BZtOq?=
 =?us-ascii?Q?FyaNac97O2H1mdH4xCKXsF/KGlXYeVBmmtmOgFqTJ/dH1CPwcdEKEQFExyNY?=
 =?us-ascii?Q?Woj/DzU15uPTMzaCDhcDJZ47097TEyH+li1M5j+lrWH6oOqR8tEiNyiR7U0M?=
 =?us-ascii?Q?+11M/3SeRGTowDLMNYdJL9RrYo/fKNlS2VH4RnPadvQKU+2wkPMkAWFI1G4F?=
 =?us-ascii?Q?HtVm8fGu6Nd0XJj/vkJLEM5YsgC8fLn4kI5qP9yny2LhAbpHgC8q11b51Fl1?=
 =?us-ascii?Q?4xuoFTHqrM6lKprlpjkc6CMjBbTpQ0wUD0162PxbyQeUyr02BMQBnXSbfdNv?=
 =?us-ascii?Q?4ouUaM6UzDuiJYeWcQgzuw0SIKqoXjXDBaOAlD6Hri5WDc0UvN9hQx5hBA52?=
 =?us-ascii?Q?RPKqEz2cCuAF9YIDykl2+olPhOhItKGpFIQIcq9JmJx9z29F5Hq6Z3Nu7EBF?=
 =?us-ascii?Q?zUvEKTuTj16br+t/i9MEA1EHu6v6f7yZlrdMTFlx+UuWOiiBch1GumyM1tRQ?=
 =?us-ascii?Q?qouBwpzlSTtFi69ndIwtWI2BAAQ/8/+nN37jqokIbQrJFRiUOMKqOlszBYUh?=
 =?us-ascii?Q?YLErkAit7KWS725e4HkvE0EcoP4e9a6s/JMsNxauCu4+rwkuIj7beLvfvU3G?=
 =?us-ascii?Q?+ZR9Ii6sbCAQsSfkmYkAwUL1lYDRCZ0NcFmbF4WaSiRGf3VstKRTZ0bK9vXI?=
 =?us-ascii?Q?KiEuVWV0rhgWBcthObOLdgmJamRVnM8UBJqMU3zS5INalqXqZTaQsUOEK/c0?=
 =?us-ascii?Q?5ZsFKZL+MXT7QlaBmHmh8pwZPYEj53mJX1HeGfg1pUxEnkHbdMJIO+csA2QI?=
 =?us-ascii?Q?jQm9W2yizoY4HrSR3SgGfHLML5KItaDa6XCVQN1d+wNzIpU8bXuZeaosdnMG?=
 =?us-ascii?Q?IqC4TKrTYzQEn7YxdFfkgfz0q8vImOeeaDnEHrU7940at7lEkxkQCSE4NEhY?=
 =?us-ascii?Q?swfnkbeGyRg12bSSJe1oEo1s8aLxyETugW1hSykLBpQJUVPETG3VAuINoC9v?=
 =?us-ascii?Q?sCiPDW+C1KMOIgyfsqBfak9DWlSDZP8FZaELaVyGLLFJWwwR90TGKNkpGtxQ?=
 =?us-ascii?Q?W6ZEJZSFWAdnnazze+IdMlCfCqcxQMNb8egUHb91riJXo07kRNuYB6OHXczt?=
 =?us-ascii?Q?/MAqBuZ75g=3D=3D?=
X-Exchange-RoutingPolicyChecked: WQrvaVAg8MJfwx9Lw0oYfpvqyqtLG3AgE/sWRnaCdW2V7QEZ+xPnYEhFFwcFWDByZYYsDXrQw3pTyGelhLi2fKZ7Bx8z6JSrNLxBJJ5ycxs9m5rcIJzwcejRMiIelarAT1Di1JZq/IfccmT+3ulW/qA2ALaQTxpEn8yNrlCG0ErWlbla/bU5WVVO8TeCML7EdfMZvbptJeL76CGr5BtbfvnRpq+ghMIrjdW7tymbZGQTduqmjuVgzvka4KaxORGAR8+RIWt7O69pUsVLhRuF2N79+PK6vPef5h7vmOLtTh8vS7HBYpRVH2DsJvJzOzZRecOoIdjuof51y2refk7wgg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 6042e7b0-1d97-4dfa-92e2-08decbe33074
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2026 20:09:36.5921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wlBkLd4A1pR3WBtKntuOITitTuq6DktUnBBW6UQxWcOCLfaov/JNoJ6GejOGC/1xo4nbUbvfK+P5OvNYq+mE0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8257
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E1CE0695161

Pass the supported link rates explicitly to intel_dp_link_caps_update().
This prepares for tracking these capabilities internally within the
link caps module.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 28 ++++---------------
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 28 +++++++++++++++----
 .../gpu/drm/i915/display/intel_dp_link_caps.h |  5 +++-
 3 files changed, 33 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 635e3ede0d41e..d2b9b6fce2b32 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -698,36 +698,20 @@ static void intel_dp_get_common_rates(struct intel_dp *intel_dp,
 	}
 }
 
-static bool intel_dp_set_common_rates(struct intel_dp *intel_dp)
-{
-	int num_old_common_rates = intel_dp->num_common_rates;
-	int old_common_rates[DP_MAX_SUPPORTED_RATES];
-
-	/* TODO: Add a struct containing both rates and number of rates. */
-	static_assert(__same_type(old_common_rates[0], intel_dp->common_rates[0]) &&
-		      sizeof(old_common_rates) == sizeof(intel_dp->common_rates));
-	memcpy(old_common_rates, intel_dp->common_rates,
-	       num_old_common_rates * sizeof(old_common_rates[0]));
-
-	intel_dp_get_common_rates(intel_dp, intel_dp->common_rates, &intel_dp->num_common_rates);
-
-	return num_old_common_rates != intel_dp->num_common_rates ||
-	       memcmp(old_common_rates, intel_dp->common_rates,
-		      num_old_common_rates * sizeof(old_common_rates[0]));
-}
-
 /* Return %true if any common link param changed. */
 static bool intel_dp_set_common_link_params(struct intel_dp *intel_dp)
 {
+	int num_common_rates;
+	int common_rates[DP_MAX_SUPPORTED_RATES];
 	bool params_changed = false;
 
-	if (intel_dp_set_common_rates(intel_dp))
-		params_changed = true;
-
 	if (intel_dp_set_max_common_lane_count(intel_dp))
 		params_changed = true;
 
-	intel_dp_link_caps_update(intel_dp);
+	intel_dp_get_common_rates(intel_dp, common_rates, &num_common_rates);
+	if (intel_dp_link_caps_update(intel_dp,
+				      common_rates, num_common_rates))
+		params_changed = true;
 
 	return params_changed;
 }
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 2074952931738..679d59cc256c9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -8,6 +8,7 @@
 #include <linux/log2.h>
 #include <linux/slab.h>
 #include <linux/sort.h>
+#include <linux/string.h>
 #include <linux/types.h>
 
 #include <drm/drm_print.h>
@@ -131,25 +132,39 @@ static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 	       intel_dp_link_config_rate(intel_dp, lc_b);
 }
 
-void intel_dp_link_caps_update(struct intel_dp *intel_dp)
+/* Return %true if the supported link parameters have changed. */
+bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+			       const int *rates, int num_rates)
 {
 	struct intel_dp_link_caps *link_caps = intel_dp->link.caps;
 	struct intel_display *display = to_intel_display(intel_dp);
 	struct intel_dp_link_config_entry *lc;
+	bool link_params_changed = false;
 	int num_common_lane_configs;
 	int i;
 	int j;
 
 	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
-		return;
+		return false;
+
+	if (drm_WARN_ON(display->drm, num_rates > ARRAY_SIZE(intel_dp->common_rates)))
+		return false;
 
 	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
 
-	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
+	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
 				    ARRAY_SIZE(link_caps->configs)))
-		return;
+		return false;
 
-	link_caps->num_configs = intel_dp->num_common_rates * num_common_lane_configs;
+	/* TODO: Add a struct containing both rates and number of rates. */
+	static_assert(__same_type(rates[0], intel_dp->common_rates[0]));
+	if (num_rates != intel_dp->num_common_rates ||
+	    memcmp(rates, intel_dp->common_rates, num_rates * sizeof(rates[0])))
+		link_params_changed = true;
+
+	memcpy(intel_dp->common_rates, rates, num_rates * sizeof(rates[0]));
+	intel_dp->num_common_rates = num_rates;
+	link_caps->num_configs = num_rates * num_common_lane_configs;
 
 	lc = &link_caps->configs[0];
 	for (i = 0; i < intel_dp->num_common_rates; i++) {
@@ -165,6 +180,9 @@ void intel_dp_link_caps_update(struct intel_dp *intel_dp)
 	       sizeof(link_caps->configs[0]),
 	       link_config_cmp_by_bw, NULL,
 	       intel_dp);
+
+	/* TODO: Also detect a change in the max lane count. */
+	return link_params_changed;
 }
 
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index aed2122a05d24..09e580bc5c9b3 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -4,6 +4,8 @@
 #ifndef __INTEL_DP_LINK_CAPS_H__
 #define __INTEL_DP_LINK_CAPS_H__
 
+#include <linux/types.h>
+
 struct intel_connector;
 struct intel_dp;
 struct intel_dp_link_caps;
@@ -20,7 +22,8 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
 void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 
-void intel_dp_link_caps_update(struct intel_dp *intel_dp);
+bool intel_dp_link_caps_update(struct intel_dp *intel_dp,
+			       const int *rates, int num_rates);
 
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
-- 
2.49.1

