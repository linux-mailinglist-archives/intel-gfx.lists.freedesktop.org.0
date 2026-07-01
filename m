Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FeJrKm8zRWp28goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:34:07 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 511CA6EF4C4
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:34:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=QofpBQ5Z;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4B3C10EFFC;
	Wed,  1 Jul 2026 15:34:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8E110EFF8;
 Wed,  1 Jul 2026 15:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782920045; x=1814456045;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=zTUW4mbt9EEJfGxURvbuxzknu29Jk0D9NjJKxsRF/aU=;
 b=QofpBQ5Zkse2lYN3FStZQ5zZNTIeQZmsO0YxRkIQ08BDiB8MJuI+U0Yb
 y2vxY3X5lUtqswN07/cGIcr3L6BZwkV1u7dYOrKaD9K2ZmN1vGLH2CZFD
 xwb/V+5v+d+t+O26RIj9kAomckdzXQ0gkvuc6fI/MDKpa4/ti0rAGVdcY
 0Viq203zTLrEwEigeMvwCv10DUiOLBH237RuHdpYaGKvmYafzh79VocyN
 QAKepUZT8XG1pYomS18IYlLJxWe5alqY/rt87DhQqKd4QIeMrhrrPV6S0
 exjZ77tQMYSsvBz73T3KAhxqmN5bMLxnEK0kh0Q+7zHDHvWQsZX3NoIHv A==;
X-CSE-ConnectionGUID: PbN/JUhzQAirbT2c9UDE8w==
X-CSE-MsgGUID: egeTWnACTB2BQeeEDN2LbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="95159364"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="95159364"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:34:04 -0700
X-CSE-ConnectionGUID: pYPv9bJPS7ikZ2rlRvoSRA==
X-CSE-MsgGUID: ZnglGWYCRo6+LmAjO3naQA==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:34:04 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:04 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:34:04 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.7) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:34:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xUIiGYYp9lyBVKCjl1izC1ahQOVT6gDfLltrx69d+C83PRHPTypprPxZRSKCFHMLdffP11yEmgDpZ3PbimWJrRfE8TDjadkz4l2xR6Bael1TSctgLy1D3XlT29vVvZ9g2fl25aHJ0oYE4oyNC/NNQLBWwUPwrf93mPVzr9XSnEo6pEu0UMNIdqkmG0GcA1OhXUP7OowiYAR7ie4Ok/4I1/jsJdxIPDRS1esFbpZrSz9S0bWvuSrfHfjw8H2VMpZbu5Ig1YKGlmARBvyc2dgsWjt2tQQwtGA1XRP6ftoxPk9L/gNKRfC0GuwgBlgYuk59RNVhIOhH3ORP03U2R4sKgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=T1DJ3sAQcykUHL/3T5zpEqV0vs7URy7dJcD/9D7KtBY=;
 b=HpLNrEDRwz0+m09O+q3e/8DWBR3M8g2qTspbwzIIiiHMRZmDX4qt3zWIIhSGq67IVKyVGE8CoGQsml1jE5b7Ja6nVicI6HAqag3i35Pta9n8QILp4W/dU/PTqZ+4dQ7Ajzt03I1Ny03z95uvOXyvVPgxqdbUi/hInzLTApmxXznX84o3KFc2F5htl8s/2z/R2mTrZbn0INDO22YJa1NqxEKpuSpp4qfMWRIFWzwxtls7Ronhw087/IVF4I2PxjJzeSU/1WTtO249fYhz1yVlAutdK9Y98JfPWzIpsc8nBESjYFAPp/Pp0ZvFj3o9JKlJ77GABvkkqAsvz0fmFrgldw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by DM4PR11MB6408.namprd11.prod.outlook.com (2603:10b6:8:b7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:33:55 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:33:55 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 33/34] drm/i915/kunit: DP link: add update config tests
Date: Wed, 1 Jul 2026 18:32:02 +0300
Message-ID: <20260701153204.4124150-34-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-1-imre.deak@intel.com>
References: <20260701153204.4124150-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVZP280CA0097.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:275::11) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|DM4PR11MB6408:EE_
X-MS-Office365-Filtering-Correlation-Id: 10d79017-9646-44d9-a75c-08ded78613bf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|23010399003|1800799024|18002099003|56012099006|11063799006|22082099003|6133799003|3023799007;
X-Microsoft-Antispam-Message-Info: bhB/D3p2fVGI2liUyALnTmLlzruSWdepB5gF0HMykWact514IeHEoshowLvmeNj6YlCP7UfyXNyILhbo8hGekwvAoz+uvnsCM6rga6ttAxtxAp5UQe7NLeETBhjTRY1pHKNBtSTrZJhtrYIlzIa7qvPyBKHN+dukGVuzlvRApyfsBVlAlmiCzW2+Am1AJBZmGFC0IOdNaI9ZzZRPvktyWc28akiWB9M25u5vAqbbEJe5NCCpJ5Q3EF6W2IRIcmRJGKsSpASLWnZFa5XP2kRt8PotQgWtTTE9HX1G9RzYbwYNKTqM3d/fvzKgJpVQCYc0nhVIzDYABoS+ym8NK9N6TKO4lfgHPXPee5bp8pugJO8xPtL7nZKIThxTnhzr1SO++9bYGg3VEk2NijJ5LYfAAKCc/ub1WN/oiTaeuf8uwvmPsIt9Gzbjjhs69L9H1Pk6ZjxBieGk/Itl4FL4mmfgDWDMzJ6ws7LZ7UXIKWP11eHvK6JHjx2zu8RRtNM3AFb4FSs4ysTs7pyS/9KYbsjJ0CX/J+ljoRjrkVfH/38Bnae3X4cr4vL2IhXiPEMe+hvbbTIgQo7z4rEKnLfh+vj4cBVosIpFeVCtTmCYcY0cjeuwhhPaM1YMi3DBlnWGi0vB6Yylw5O421a1MSyRMbKJ+NzeHCxaX44FU3LNVRkUhnE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(23010399003)(1800799024)(18002099003)(56012099006)(11063799006)(22082099003)(6133799003)(3023799007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?g5xmJwCLi2YT2/bKtKrhI/Z/9ds7UXHW0yEMiWHJZyhiUySKLG1dduOWNS2G?=
 =?us-ascii?Q?J4Hd9pLYzAooVAQni11gRpA0+g09hbcFfiHzFdo1O75tBgOdgbFEE/u0Y4Mz?=
 =?us-ascii?Q?37eHRXyHcyeqzwxRVo1hzpHZXYisUZamBNutZni1ALtqxQ6U9vsTXEirL4+F?=
 =?us-ascii?Q?Gu+5/2biv01Q886v7pMCXqKcksluIxjH9FHtoDi/jTcrK5130K4aGWUGWBfF?=
 =?us-ascii?Q?HtRNmcULxB6XaL5/ItQ7ITOaZ0M6XsIz4NuOxWu/Dt5nWBLAr5jYMHKg7/zI?=
 =?us-ascii?Q?Y4Qwb+N63RufupX3xOleAJgdSFRtP0aIwc8msrn7CNEpxNQI/fqTHCVb93ue?=
 =?us-ascii?Q?Mfs5VfgEADCFd1YpwN0x/X5u9hMU+aUofCidsQDuuQ4VHlzNMWCyzbWot/e5?=
 =?us-ascii?Q?F2tN+TDIatEdoQoGNwl/26cVRUa/sJiwiMwLVO7xVAzmBiuRDKClQcQamleU?=
 =?us-ascii?Q?CZWPw8k9GdxVX7r33EMMlR88UHGntLPeb575pf/7MCnaIZ4ca6ersO4yuMPK?=
 =?us-ascii?Q?d1zNP6Bgp9THI7yGMWK9Shdp8AzecqUS81/N5GAdUkQRvA9HEncgOGTLgExb?=
 =?us-ascii?Q?JiXxJ2o6m/Xbob5WzPmyopcqotguybxRZ98NOWukvhKi09eh1k0n4HHpF/rK?=
 =?us-ascii?Q?dkDgYSAt8APqMRirnRU1x8yanxKSKEry45rfKL720RS4k+GYDEvkWoj9qPMq?=
 =?us-ascii?Q?aNrbhtZeHeScpHPWlGeVGr7pLlRiVShMOXgi1yPRJHxt1606RDWWZ7B9uQu7?=
 =?us-ascii?Q?5jZ1WrmEY9+/uefZK4zQgt/WMHu7D8XrOzuZoR369J9GZRVoyG/3yqqPMWCn?=
 =?us-ascii?Q?kUwwsxBa061RjIJFOiloAqJ1jE2iAFqMMNTVLQ51BpTi2HpqY0klG3gi35hP?=
 =?us-ascii?Q?yJGg5K6JrIyS0mBbmfHVu2Dd+4ipmr++xwCbFejKzcJ+KLGuN7x/HXIbHj4Z?=
 =?us-ascii?Q?AWOKa8O7lyCW7QYVoDeqvYatXkmsOf4Sx6b69ekWbPC5WUm7jU3zr2NqzJq6?=
 =?us-ascii?Q?bLjZdcpwc/FHBM0t391437JjBred/uLTUydFG1MrOILdckDg3Uu98H39m/1B?=
 =?us-ascii?Q?ClPGrP4ZxIYhwn5WqbD4zsEQY5OA2cETm6xCZq0ednjffN9cCmgOivjFg5MA?=
 =?us-ascii?Q?myfTBOauJ3B9bSDIqnYMxuLbcTDd7nSHyI+wP0ldxp0tgrvydkXRfNazLjdS?=
 =?us-ascii?Q?YW9QojbSxE20I+ZI+yTvLHrclQy4WQ185XDfsaQZUY3U8dujl6EKvYqkrRrK?=
 =?us-ascii?Q?rVYS5GUYF9gpCBF1hPqMuQtRV5loXr6kixvQJge+OtwKGJuisXS8ZCur1xRR?=
 =?us-ascii?Q?ahc+vpfXG7pl/Ys2GjL+sTqNVfrot8cmP0IWdJRcJAYw1k85zFCC39HgEt+q?=
 =?us-ascii?Q?Zqguklir5yXwloqH3IxgHecDqcyg2Kxo2FrYu2DULpjPAPSuPgaZnW4XBZUz?=
 =?us-ascii?Q?yF4WpJ82VT62sbr4xc0X/XR7LBNN8tGcE/kmiQ7jPKfTRdQY+mrODLXn8O5x?=
 =?us-ascii?Q?ZOdOPTRPDEzjiAumZ7z1+NyNjNaA3ufIIoLKRPZ+v5NH16FSCDkflHnLno7V?=
 =?us-ascii?Q?wYC/ESEVAFv2prIkXhMovfmJRQyXksxASJHtBMzJqeoC6OQYZ2x74ta+Jqco?=
 =?us-ascii?Q?PzP3IwH9SrWOmf3uHL9WF4zSSo1L0NxpcSm3LmfoiCe9c4Q6gQm1frUHUI3M?=
 =?us-ascii?Q?2YUApGwv4kP4gwAp8HCMZEbPc5YWwP2og2HrFpsR7ckj0cI7bVQ7yJ4ZQT6C?=
 =?us-ascii?Q?CUuwQuin+Q=3D=3D?=
X-Exchange-RoutingPolicyChecked: sSz2cEaOYg2TUp1nnTK3QdBktm8cXyWHqpb7pBHQiMkynXY/7L+XIdxuC3NCt6RWmQlHBS2bErSLZiCpDUoZ7MlP5RCRCVjFLeCEg1umV7GBR3TGYq9cuN7UjcOGEdXIliR8cMCWK2f95A7yk7HZiDRu1wnzEoc73oQaW66dPWYZJQQvXMoEVhstyg2E+qV+0W1oBEqFZn3QzSJM0HacLGb9Yvweng/XteZz8WyOgD3zdWHrpNy1NRCDoXUTHHR+R6QLMfftORz7QP0QO643k0K7y1GQUFJ9BpcfNTDKyJzZKpxV9XO1DNuIxGzSqPm93aqhJVNAf82kg+/zBf/urg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 10d79017-9646-44d9-a75c-08ded78613bf
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:33:19.2804 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MivDulOyKsr/f+n/QSiBuTo6rbEuTJy3q5Da7sanoRpDYTim5tWa0ibu1RlnDJ/SDv0AFxPOoQlaeCI9SdCftQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6408
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 511CA6EF4C4

Add KUnit tests for link_caps updates shrinking or expanding the
supported rates and lane counts.

The tests also cover updates with disabled configurations, including
random shrink and expand sequences, to verify that disabled state,
allowed configurations, ordering, and max limits stay consistent across
updates.

v2: Remove test cases for the now unused merge update mode.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../i915/display/tests/intel_dp_link_test.c   | 780 ++++++++++++++++++
 1 file changed, 780 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
index 1dc5bf6888990..43283245ad037 100644
--- a/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
+++ b/drivers/gpu/drm/i915/display/tests/intel_dp_link_test.c
@@ -61,12 +61,29 @@ struct link_config_set {
 	int size;
 };
 
+struct test_config_table {
+	struct kunit *test;
+
+	struct link_rate_set rates;
+	int max_lane_count;
+	struct link_config_set disabled_configs;
+};
+
 static const int standard_dp_link_rates[] = {
 	162000, 270000, 540000, 810000, 1000000, 1350000, 2000000
 };
 
 #define LINK_TEST_NUM_STANDARD_RATES (ARRAY_SIZE(standard_dp_link_rates))
 
+#define INIT_STANDARD_TABLE(__test, __num_rates, __max_lane_count) { \
+	.test = (__test), \
+	.rates = { \
+		.entries = standard_dp_link_rates, \
+		.size = (__num_rates), \
+	}, \
+	.max_lane_count = (__max_lane_count), \
+}
+
 static const struct link_config_set standard_dp_link_configs[] = {
 	[INTEL_DP_LINK_CAPS_ORDER_KEY_BW] = {                        /* MBps    PBN    */
 		.entries = {
@@ -159,12 +176,56 @@ static const struct link_config_set standard_dp_link_configs[] = {
 	},
 };
 
+static int lookup_rate(const struct link_rate_set *rate_set, int rate)
+{
+	int i;
+
+	for (i = 0; i < rate_set->size; i++)
+		if (rate_set->entries[i] == rate)
+			return i;
+
+	return -1;
+}
+
+static bool has_rate(const struct link_rate_set *rate_set, int rate)
+{
+	return lookup_rate(rate_set, rate) >= 0;
+}
+
 static bool link_configs_match(const struct intel_dp_link_config *a,
 			       const struct intel_dp_link_config *b)
 {
 	return a->rate == b->rate && a->lane_count == b->lane_count;
 }
 
+static int lookup_config(const struct link_config_set *config_set,
+			 const struct intel_dp_link_config *config)
+{
+	int i;
+
+	for (i = 0; i < config_set->size; i++)
+		if (link_configs_match(&config_set->entries[i], config))
+			return i;
+
+	return -1;
+}
+
+static bool has_config(const struct link_config_set *config_set,
+		       const struct intel_dp_link_config *config)
+{
+	return lookup_config(config_set, config) >= 0;
+}
+
+static void add_config(struct kunit *test,
+		       struct link_config_set *config_set,
+		       const struct intel_dp_link_config *config)
+{
+	KUNIT_ASSERT_LT(test, config_set->size, ARRAY_SIZE(config_set->entries));
+
+	config_set->entries[config_set->size] = *config;
+	config_set->size++;
+}
+
 static const struct intel_dp_link_caps_order config_orders[] = {
 	{
 		.key = INTEL_DP_LINK_CAPS_ORDER_KEY_BW,
@@ -236,9 +297,728 @@ static void intel_dp_link_caps_test_baseline(struct kunit *test)
 		baseline_test_for_order(test, link_caps, config_orders[i]);
 }
 
+static int get_num_configs(int num_rates, int max_lane_count)
+{
+	return num_rates * LINK_TEST_NUM_LANE_CONFIGS(max_lane_count);
+}
+
+static int rand_in_range(struct test_ctx *ctx, int min, int max)
+{
+	return min + (prandom_u32_state(&ctx->rnd) % (max - min + 1));
+}
+
+/*
+ * TEST: Update reset
+ * ------------------
+ * Verify that resetting link_caps with the DP standard rates/lane
+ * counts updates the configuration table accordingly for all
+ * combinations.
+ */
+static void verify_bw_asc_config_order(struct kunit *test,
+				       const struct intel_dp_link_config *last_config,
+				       const struct intel_dp_link_config *config)
+{
+	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
+						  config->lane_count);
+	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
+							  last_config->lane_count);
+
+	KUNIT_EXPECT_GE(test, config_bw, last_config_bw);
+	if (config_bw == last_config_bw)
+		KUNIT_EXPECT_GT(test, config->rate, last_config->rate);
+}
+
+static void verify_bw_desc_config_order(struct kunit *test,
+					const struct intel_dp_link_config *last_config,
+					const struct intel_dp_link_config *config)
+{
+	int config_bw = drm_dp_max_dprx_data_rate(config->rate,
+						  config->lane_count);
+	int last_config_bw = drm_dp_max_dprx_data_rate(last_config->rate,
+							  last_config->lane_count);
+
+	KUNIT_EXPECT_LE(test, config_bw, last_config_bw);
+	if (config_bw == last_config_bw)
+		KUNIT_EXPECT_LT(test, config->rate, last_config->rate);
+}
+
+static void verify_rate_lane_asc_config_order(struct kunit *test,
+					      const struct intel_dp_link_config *last_config,
+					      const struct intel_dp_link_config *config)
+{
+	KUNIT_EXPECT_GE(test, config->rate, last_config->rate);
+	if (config->rate == last_config->rate)
+		KUNIT_EXPECT_GT(test, config->lane_count, last_config->lane_count);
+}
+
+static void verify_rate_lane_desc_config_order(struct kunit *test,
+					       const struct intel_dp_link_config *last_config,
+					       const struct intel_dp_link_config *config)
+{
+	KUNIT_EXPECT_LE(test, config->rate, last_config->rate);
+	if (config->rate == last_config->rate)
+		KUNIT_EXPECT_LT(test, config->lane_count, last_config->lane_count);
+}
+
+static void verify_config_order(struct kunit *test,
+				struct intel_dp_link_caps_order config_order,
+				const struct intel_dp_link_config *last_config,
+				const struct intel_dp_link_config *config)
+{
+	switch (config_order.key) {
+	case INTEL_DP_LINK_CAPS_ORDER_KEY_BW:
+		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
+			verify_bw_asc_config_order(test, last_config, config);
+		else
+			verify_bw_desc_config_order(test, last_config, config);
+		break;
+	case INTEL_DP_LINK_CAPS_ORDER_KEY_RATE_LANE:
+		if (config_order.dir == INTEL_DP_LINK_CAPS_ORDER_DIR_ASC)
+			verify_rate_lane_asc_config_order(test, last_config, config);
+		else
+			verify_rate_lane_desc_config_order(test, last_config, config);
+		break;
+	default:
+		KUNIT_FAIL_AND_ABORT(test, "Missing order key: %d", config_order.key);
+	}
+}
+
+static int expected_num_configs(const struct test_config_table *expected_table,
+				const struct intel_dp_link_config *max_limits)
+{
+	int num_configs = 0;
+	int lane_count;
+	int rate_idx;
+
+	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
+		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
+			struct intel_dp_link_config config = {
+				.rate = expected_table->rates.entries[rate_idx],
+				.lane_count = lane_count,
+			};
+
+			if (config.rate > max_limits->rate ||
+			    config.lane_count > max_limits->lane_count)
+				continue;
+
+			if (has_config(&expected_table->disabled_configs, &config))
+				continue;
+
+			num_configs++;
+		}
+	}
+
+	return num_configs;
+}
+
+static void
+verify_link_caps_for_order(const struct test_config_table *expected_table,
+			   struct intel_dp_link_caps *link_caps,
+			   struct intel_dp_link_caps_order config_order,
+			   const struct intel_dp_link_config *max_limits)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	struct intel_dp_link_config expected_max_bw_config = {};
+	struct intel_dp_link_config actual_max_bw_config;
+	struct intel_dp_link_config last_config = {};
+	struct intel_dp_link_config old_max_limits;
+	struct intel_dp_link_config iter_config;
+	struct intel_dp_link_caps_iter iter;
+	int num_actual_configs = 0;
+	int max_bw = 0;
+
+	ops->get_max_limits(link_caps, &old_max_limits);
+	ops->set_max_limits(link_caps, max_limits);
+
+	ops->iter_start(&iter, link_caps, config_order, INTEL_DP_LINK_CAPS_FILTER_ALL);
+	for_each_dp_link_config(&iter, &iter_config) {
+		int bw;
+
+		KUNIT_EXPECT_LE(test, iter_config.rate, max_limits->rate);
+		KUNIT_EXPECT_LE(test, iter_config.lane_count, max_limits->lane_count);
+
+		num_actual_configs++;
+
+		/*
+		 * Verify the config's rate/lane-count values and its ordering relative
+		 * to the previous config.
+		 */
+		if (last_config.rate)
+			verify_config_order(test, config_order, &last_config, &iter_config);
+		last_config = iter_config;
+
+		KUNIT_EXPECT_TRUE(test, has_rate(&expected_table->rates,
+						 iter_config.rate));
+		KUNIT_EXPECT_LE(test, iter_config.lane_count,
+				      expected_table->max_lane_count);
+		KUNIT_EXPECT_TRUE(test, is_power_of_2(iter_config.lane_count));
+
+		/* Verify the config's disabled state */
+		KUNIT_EXPECT_FALSE(test, has_config(&expected_table->disabled_configs,
+						    &iter_config));
+
+		/*
+		 * Update the max limits for allowed configs, verified at the
+		 * end for the whole config table.
+		 */
+
+		bw = drm_dp_max_dprx_data_rate(iter_config.rate, iter_config.lane_count);
+		if (bw > max_bw ||
+		    (bw == max_bw && iter_config.rate > expected_max_bw_config.rate)) {
+			max_bw = bw;
+			expected_max_bw_config = iter_config;
+		}
+	}
+	ops->iter_end(&iter);
+
+	KUNIT_EXPECT_EQ(test, num_actual_configs, expected_num_configs(expected_table, max_limits));
+
+	ops->get_max_bw_config(link_caps, &actual_max_bw_config);
+	KUNIT_EXPECT_TRUE(test, link_configs_match(&expected_max_bw_config,
+						   &actual_max_bw_config));
+
+	KUNIT_ASSERT_TRUE(test, ops->set_max_limits(link_caps, &old_max_limits));
+}
+
+static bool max_limits_valid(const struct test_config_table *expected_table,
+			     const struct intel_dp_link_config *max_limits)
+{
+	int lane_count;
+	int rate_idx;
+
+	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
+		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
+			struct intel_dp_link_config config = {
+				.rate = expected_table->rates.entries[rate_idx],
+				.lane_count = lane_count,
+			};
+
+			if (has_config(&expected_table->disabled_configs, &config))
+				continue;
+
+			if (config.rate <= max_limits->rate &&
+			    config.lane_count <= max_limits->lane_count)
+				return true;
+		}
+	}
+
+	return false;
+}
+
+static void get_max_limits(const struct test_config_table *expected_table,
+			   struct intel_dp_link_config *max_limits)
+{
+	int lane_count;
+	int rate_idx;
+
+	max_limits->rate = 0;
+	max_limits->lane_count = 0;
+
+	for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
+		for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
+			struct intel_dp_link_config config = {
+				.rate = expected_table->rates.entries[rate_idx],
+				.lane_count = lane_count,
+			};
+
+			if (has_config(&expected_table->disabled_configs, &config))
+				continue;
+
+			max_limits->rate = max(max_limits->rate, config.rate);
+			max_limits->lane_count = max(max_limits->lane_count, config.lane_count);
+		}
+	}
+}
+
+static void verify_link_caps(const struct test_config_table *expected_table,
+			     struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops = ctx->link_caps_ops;
+	struct intel_dp_link_config max_limits;
+	int i;
+
+	get_max_limits(expected_table, &max_limits);
+
+	for (i = 0; i < ARRAY_SIZE(config_orders); i++) {
+		int lane_count;
+		int rate_idx;
+
+		verify_link_caps_for_order(expected_table, link_caps, config_orders[i], &max_limits);
+		/*
+		 * Verify iteration after setting the max limits to each
+		 * configurations.
+		 */
+		for (rate_idx = 0; rate_idx < expected_table->rates.size; rate_idx++) {
+			for (lane_count = 1; lane_count <= expected_table->max_lane_count; lane_count <<= 1) {
+				struct intel_dp_link_config config = {
+					.rate = expected_table->rates.entries[rate_idx],
+					.lane_count = lane_count,
+				};
+
+				if (!max_limits_valid(expected_table, &config)) {
+					/* Verify that invalid max limits are rejected. */
+					KUNIT_EXPECT_FALSE(test, ops->set_max_limits(link_caps, &config));
+
+					continue;
+				}
+
+				verify_link_caps_for_order(expected_table, link_caps, config_orders[i],
+							   &config);
+			}
+		}
+	}
+}
+
+static void update_link_caps_and_verify(struct test_config_table *expected_table,
+					struct intel_dp_link_caps *link_caps,
+					bool reset)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	bool link_params_changed;
+
+	link_params_changed = ops->update(link_caps,
+					  expected_table->rates.entries,
+					  expected_table->rates.size,
+					  expected_table->max_lane_count,
+					  reset);
+	KUNIT_EXPECT_TRUE(test, !reset || link_params_changed);
+
+	/*
+	 * ops->update() re-enables all configurations when called with
+	 * reset=true, or changed link parameters.
+	 */
+	if (link_params_changed)
+		expected_table->disabled_configs.size = 0;
+
+	verify_link_caps(expected_table, link_caps);
+}
+
+static void intel_dp_link_caps_test_update_reset(struct kunit *test)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	int max_lane_count;
+	int num_rates;
+
+	for (max_lane_count = 1;
+	     max_lane_count <= LINK_TEST_MAX_LANE_COUNT;
+	     max_lane_count <<= 1) {
+		for (num_rates = 1;
+		     num_rates <= LINK_TEST_NUM_STANDARD_RATES;
+		     num_rates++) {
+			struct test_config_table expected_table =
+				INIT_STANDARD_TABLE(test, num_rates,
+							     max_lane_count);
+
+			update_link_caps_and_verify(&expected_table, link_caps, true);
+		}
+	}
+}
+
+/*
+ * TEST: Update shrink and expand
+ * ------------------------------
+ * Verify that removing or adding supported rates/lane counts updates
+ * the configuration table accordingly.
+ */
+static void disable_configs_and_verify(struct kunit *test,
+				       struct intel_dp_link_caps *link_caps,
+				       struct test_config_table *expected_table,
+				       const struct link_config_set *config_set)
+{
+	struct test_ctx *ctx = test->priv;
+	const struct intel_dp_link_caps_test_ops *ops =
+		ctx->link_caps_ops;
+	int i;
+
+	for (i = 0; i < config_set->size; i++) {
+		KUNIT_ASSERT_FALSE(test, has_config(&expected_table->disabled_configs,
+						    &config_set->entries[i]));
+		add_config(test, &expected_table->disabled_configs, &config_set->entries[i]);
+
+		KUNIT_ASSERT_TRUE(test, ops->disable_config(link_caps, &config_set->entries[i]));
+
+		verify_link_caps(expected_table, link_caps);
+	}
+}
+
+static void disable_configs_for_shrink_and_verify(struct test_config_table *expected_table,
+						  struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct link_config_set config_set = {};
+	struct intel_dp_link_config max_config;
+
+	/*
+	 * When configs shrink disable the config with the
+	 * second-highest rate,lane params, so the disabled config
+	 * stays around after the configs got shrunk.
+	 */
+	KUNIT_ASSERT_GE(test, expected_table->rates.size, 2);
+	KUNIT_ASSERT_GE(test, expected_table->max_lane_count, 2);
+
+	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 2];
+	max_config.lane_count = expected_table->max_lane_count >> 1;
+
+	add_config(test, &config_set, &max_config);
+	disable_configs_and_verify(test, link_caps, expected_table,
+			&config_set);
+}
+
+static void disable_configs_for_expand_and_verify(struct test_config_table *expected_table,
+						  struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct link_config_set config_set = {};
+	struct intel_dp_link_config max_config;
+
+	KUNIT_ASSERT_GE(test, expected_table->rates.size, 1);
+
+	max_config.rate = expected_table->rates.entries[expected_table->rates.size - 1];
+	max_config.lane_count = expected_table->max_lane_count;
+
+	add_config(test, &config_set, &max_config);
+	disable_configs_and_verify(test, link_caps, expected_table,
+				   &config_set);
+}
+
+static void get_nth_rate_lane_config(const struct test_config_table *expected_table, int n,
+				     struct intel_dp_link_config *config)
+{
+	int num_lane_configs = LINK_TEST_NUM_LANE_CONFIGS(expected_table->max_lane_count);
+	int rate_idx = n / num_lane_configs;
+	int lane_count_exp = n % num_lane_configs;
+
+	config->rate = expected_table->rates.entries[rate_idx];
+	config->lane_count = 1 << lane_count_exp;
+}
+
+static void test_update_rates_shrink(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.rates.size > 1) {
+		if (disable_configs)
+			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
+
+		expected_table.rates.size--;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_rates_shrink(struct kunit *test)
+{
+	test_update_rates_shrink(test, false);
+}
+
+static void intel_dp_link_caps_test_update_rates_shrink_disable(struct kunit *test)
+{
+	test_update_rates_shrink(test, true);
+}
+
+static void test_update_rates_expand(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, 1, LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES) {
+		if (disable_configs)
+			disable_configs_for_expand_and_verify(&expected_table, link_caps);
+
+		expected_table.rates.size++;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_rates_expand(struct kunit *test)
+{
+	test_update_rates_expand(test, false);
+}
+
+static void intel_dp_link_caps_test_update_rates_expand_disable(struct kunit *test)
+{
+	test_update_rates_expand(test, true);
+}
+
+static void test_update_lanes_shrink(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+					  LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.max_lane_count > 1) {
+		if (disable_configs)
+			disable_configs_for_shrink_and_verify(&expected_table, link_caps);
+
+		expected_table.max_lane_count >>= 1;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_lanes_shrink(struct kunit *test)
+{
+	test_update_lanes_shrink(test, false);
+}
+
+static void intel_dp_link_caps_test_update_lanes_shrink_disable(struct kunit *test)
+{
+	test_update_lanes_shrink(test, true);
+}
+
+static void test_update_lanes_expand(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES, 1);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
+		if (disable_configs)
+			disable_configs_for_expand_and_verify(&expected_table, link_caps);
+
+		expected_table.max_lane_count <<= 1;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_lanes_expand(struct kunit *test)
+{
+	test_update_lanes_expand(test, false);
+}
+
+static void intel_dp_link_caps_test_update_lanes_expand_disable(struct kunit *test)
+{
+	test_update_lanes_expand(test, true);
+}
+
+static void disable_random_configs_and_verify(struct test_config_table *expected_table,
+					      struct intel_dp_link_caps *link_caps)
+{
+	struct kunit *test = expected_table->test;
+	struct test_ctx *ctx = test->priv;
+	struct link_config_set config_set = {};
+	u32 disabled_config_mask;
+	int num_configs;
+	int i;
+
+	num_configs = get_num_configs(expected_table->rates.size,
+				      expected_table->max_lane_count);
+	disabled_config_mask = prandom_u32_state(&ctx->rnd) &
+			       GENMASK_U32(num_configs - 1, 0);
+
+	for (i = 0; i < num_configs; i++) {
+		struct intel_dp_link_config config;
+
+		/* At least one config must remain enabled. */
+		if (expected_table->disabled_configs.size +
+		    config_set.size + 1 >= num_configs)
+			break;
+
+		if (!(BIT(i) & disabled_config_mask))
+			continue;
+
+		get_nth_rate_lane_config(expected_table, i, &config);
+		/* Don't disable a config twice. */
+		if (has_config(&expected_table->disabled_configs, &config))
+			continue;
+
+		add_config(test, &config_set, &config);
+	}
+
+	disable_configs_and_verify(test, link_caps, expected_table,
+				   &config_set);
+}
+
+static void get_params_shrink_step(struct test_ctx *ctx,
+				   int num_rates, int max_lane_count,
+				   int *rates_step, int *lanes_step)
+{
+	int shrink_mask;
+
+	*rates_step = 0;
+	*lanes_step = 0;
+
+	if (num_rates == 1)
+		shrink_mask = BIT(0);				/* shrink only lanes */
+	else if (max_lane_count == 1)
+		shrink_mask = BIT(1);				/* shrink only rates */
+	else
+		shrink_mask = rand_in_range(ctx,
+					    BIT(0),
+					    BIT(0) | BIT(1));	/* shrink one or both params */
+
+	if (shrink_mask & BIT(1))
+		*rates_step = rand_in_range(ctx, 1, num_rates - 1);
+
+	if (shrink_mask & BIT(0))
+		*lanes_step = rand_in_range(ctx, 1, ilog2(max_lane_count));
+}
+
+static void get_params_expand_step(struct test_ctx *ctx,
+				   int max_num_rates, int num_rates,
+				   int max_supported_lane_count, int max_lane_count,
+				   int *rates_step, int *lanes_step)
+{
+	int expand_mask;
+
+	*rates_step = 0;
+	*lanes_step = 0;
+
+	if (num_rates == max_num_rates)
+		expand_mask = BIT(0);				/* expand only lanes */
+	else if (max_lane_count == max_supported_lane_count)
+		expand_mask = BIT(1);				/* expand only rates */
+	else
+		expand_mask = rand_in_range(ctx,
+					    BIT(0),
+					    BIT(0) | BIT(1));	/* expand one or both params */
+
+	if (expand_mask & BIT(1))
+		*rates_step = rand_in_range(ctx, 1, max_num_rates - num_rates);
+
+	if (expand_mask & BIT(0))
+		*lanes_step = rand_in_range(ctx, 1, ilog2(max_supported_lane_count /
+							  max_lane_count));
+}
+
+static void test_update_params_shrink_random(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, LINK_TEST_NUM_STANDARD_RATES,
+						   LINK_TEST_MAX_LANE_COUNT);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.rates.size > 1 || expected_table.max_lane_count > 1) {
+		int rates_step;
+		int lanes_step;
+
+		if (disable_configs)
+			disable_random_configs_and_verify(&expected_table, link_caps);
+
+		get_params_shrink_step(ctx,
+				       expected_table.rates.size,
+				       expected_table.max_lane_count,
+				       &rates_step, &lanes_step);
+
+		expected_table.rates.size -= rates_step;
+		expected_table.max_lane_count >>= lanes_step;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_params_shrink_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_shrink_random(test, false);
+}
+
+static void intel_dp_link_caps_test_update_params_shrink_disable_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_shrink_random(test, true);
+}
+
+static void test_update_params_expand_random(struct kunit *test, bool disable_configs)
+{
+	struct test_ctx *ctx = test->priv;
+	struct intel_dp_link_caps *link_caps = ctx->dev.dig_port.dp.link.caps;
+	struct test_config_table expected_table =
+		INIT_STANDARD_TABLE(test, 1, 1);
+
+	update_link_caps_and_verify(&expected_table, link_caps, true);
+
+	while (expected_table.rates.size < LINK_TEST_NUM_STANDARD_RATES ||
+	       expected_table.max_lane_count < LINK_TEST_MAX_LANE_COUNT) {
+		int rates_step;
+		int lanes_step;
+
+		if (disable_configs)
+			disable_random_configs_and_verify(&expected_table, link_caps);
+
+		get_params_expand_step(ctx,
+				       LINK_TEST_NUM_STANDARD_RATES,
+				       expected_table.rates.size,
+				       LINK_TEST_MAX_LANE_COUNT,
+				       expected_table.max_lane_count,
+				       &rates_step, &lanes_step);
+
+		expected_table.rates.size += rates_step;
+		expected_table.max_lane_count <<= lanes_step;
+
+		update_link_caps_and_verify(&expected_table, link_caps, false);
+	}
+}
+
+static void intel_dp_link_caps_test_update_params_expand_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_expand_random(test, false);
+}
+
+static void intel_dp_link_caps_test_update_params_expand_disable_random(struct kunit *test)
+{
+	int i;
+
+	for (i = 0; i < LINK_TEST_NUM_RANDOM_ITERATIONS; i++)
+		test_update_params_expand_random(test, true);
+}
+
 static struct kunit_case intel_dp_link_test_cases[] = {
 	KUNIT_CASE(intel_dp_link_caps_test_baseline),
 
+	KUNIT_CASE(intel_dp_link_caps_test_update_reset),
+
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_shrink_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand),
+	KUNIT_CASE(intel_dp_link_caps_test_update_rates_expand_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_shrink_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand),
+	KUNIT_CASE(intel_dp_link_caps_test_update_lanes_expand_disable),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_shrink_disable_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_random),
+	KUNIT_CASE(intel_dp_link_caps_test_update_params_expand_disable_random),
+
 	{}
 };
 
-- 
2.49.1

