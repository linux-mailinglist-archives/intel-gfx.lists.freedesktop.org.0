Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NXGE0Ajn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:48 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E2A8B19A9D0
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:28:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9FCB210E7BF;
	Wed, 25 Feb 2026 16:28:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lBISMIdX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E03E610E7BB;
 Wed, 25 Feb 2026 16:28:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036925; x=1803572925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=ZulkW7V4/kWAiiq0ge+8h0ChT3rbgfLZJFNSUIJ9e7o=;
 b=lBISMIdXqg5ruJdnqXxkdZ8yeCVVtSPdz8xuptjcna9kjippSavzOllj
 5CwZ5zW65IKGwMUnXR2zqDz50QunU7BSbuuwJ9Oddh6INDVlnvTBAMv9l
 wUx7BN/HLS25F5LKsrpq2e2NQ/dxY9m6C2imJwJH/vL+Rz3uJFUeA/uYH
 LS8AQU1n//IBIq7GniBBe0O87bJoIhCUd4Ijt0k1BDAaJjJ5NVSN6aKcj
 Ng/1YiE5/DW7//sx6VokdEDiJ6mRgJqao9bNXFbopfc4MoRv70USiGpX6
 myx5kBmfQ9Uo3/FausdkCdvjDUllKetuNC+dpNM3dAr5SVEk9xiVJqtVN A==;
X-CSE-ConnectionGUID: OU8Wnq4BQheHnD3Z6kmqPQ==
X-CSE-MsgGUID: MDODpOGFT9u1SazvZbnr2g==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="84175854"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="84175854"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:45 -0800
X-CSE-ConnectionGUID: B937PfzxQcGB6Gvf53QAbg==
X-CSE-MsgGUID: b5RFoQtfQyCz0zE1GAjSyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216425785"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:28:45 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:44 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:28:44 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.59) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:28:44 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QOCpFNWwm7tdZGY0tiI2ndIhZ2Xx1xV/uXcr1Bj0TEDAzh4JINJAx2UhY/23Sm8IVUdLoed0aqtNw++pPPZgAVmkuvhnUV04AWIf7jCs6Sw3Qa4wvqpc7nnbwe7o/zVIhlNcmSFwsrcb0DD9CDJ90cZLRqJK6kP0WxZ+I90wtG3F6ayNyT9RetgdDx919Dx++QS897gffzsNP2v2UWTjTJGg3v7vIX0NvTCCHFMt31y+2OHW4FhNa/XpMtNH/CruhiITgVJeIOZw8egwIk9gdCu75kDixvauVBias5Ht51GGa0LhbKVnCPyayQRJKMUD4wk7mwp56JdqoT03cPf8kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=18lYE+qh3xyO7yDZ1TG+ztCwAQiLiPVMiO89SEEAYYQ=;
 b=wM1oFV8Gh+Y2KhIwzef+11Pt0VlkqOEqU6a3vXODzzT/qRbRXQwbvi1fV8zX3M5Ly0qne+S0iZML3DHUiMiz834ZoEVZcnKqnmDIBt6LGx89w3mL+9m4ormjW/cZ1SBcwsOuVJt/1KZc95gaeLqYunP+iVSSVRYzs5I/oawMjNQ40ZG/xrLS4+IcSIZctpTfXrRqF73GDCanQya417funFjruF/KypBFJrVFJSC4Te8jnk75XSBMVNQ9JhigJAe1+O8KGK4qX8074lYivX0StUTdiNVBdSELZjGUKJKCDV8m1/996/T87AgoApUpfIWdC0Jjdq+t85LPfqSW+eMBeA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:28:41 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:28:41 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 05/20] drm/i915/dp: Handle the RX_CAP_CHANGED HPD IRQ
Date: Wed, 25 Feb 2026 18:27:36 +0200
Message-ID: <20260225162751.1255913-6-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260225162751.1255913-1-imre.deak@intel.com>
References: <20260225162751.1255913-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV3PEPF0001DC1A.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::26a) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|CY5PR11MB6365:EE_
X-MS-Office365-Filtering-Correlation-Id: 7c44c2f2-b78a-4873-f1a2-08de748aefcd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: NNnO9GteuDNg/EVJPDk9LC4QdkEWMPly1pLddBIaGbIc8crYuNGmhre/X2lfrOZSSKF2PTzIOsm0cYx5LK/frmi7LaWhXtcI1yeFg8sZGpC+UB30FCw/v1Qqnz2wVxiGW5LFvzsNJkZ6UZ/I9Zb9LSym6/utdf0ZlMn2yLALF4beFpzbxPuqie/GuPuCC4VqMZimHTxIvoFINByHYD00olxctJmKG6B2A6Isp+sWF+8d9foRjJfwYV8qfqyTgEzoynqtHUZQ0OJgNA0+lzSlcIed1xFXJn9Qt2Rc+6v7SDbSUnsNk8eUKhVhQ9V/SnFXpv5clGffleHoDQl3TW7p7M4PgZatOdcPKol779zdMfpMwgScK7mBFozwH0EzQ9m6LCcC13qXq6MRWT84sNxxsZv1TRgsmFdugtWqVevwOoUuywZ7iNArXIs0a6j1GwbE2AfmJt7XYpllJugcrUdwgTTXg3zoYyrDV0aZVV0Q7o98plY+KHXSZ+3Q2McOKuLVo6KIXanZFk+FJPzrtam164LZ5MEXtHVZrn6EoUtoUUkD15ljD20msejqNDPzL0Q3dUONGEnvC8TJtiAK7okoXPSf1fRSbFsXTLsEKxzhzPGGBYZOHCnn0SOnr3nF/lEAbHbCLI1bbIi0JM3c7LFYkhpcG1qfaYB4f4ILHbDeqdeW5qhlH6V0mLMj+dhLje4vHxdAyfY+VnfDZ1TwBoItlxJf7NFVuRkXdBQWYly5qdE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?F4aMzAvruaTzhxuqxvcLrhWAAobxat/0UxwK47UeY7vyrjiL2V5UCUCTJ3zA?=
 =?us-ascii?Q?4VY8cgV8SvA3xrJn++V22Zxm1gS3uBRhvONrNKfhKRAkJAOO3A9bsDEWGkT1?=
 =?us-ascii?Q?wKWK+wTVfBKUq0uUF2XxFrDAzuJLEng0MkaxP2zLdpwCBq3ZXRiR2xn8j1Ay?=
 =?us-ascii?Q?QVB3SjP3ZasKzsV6CnF0Sd7Se1PFJzGypdfYj83VKnb73vO/XS4aBmBh28Gz?=
 =?us-ascii?Q?z8640S114ktO43TUORDuH02XI8a06lOU3HjQUJJHjrcVpBu7DVnmpMj6+h5q?=
 =?us-ascii?Q?y/G9RSeE92M7Y372NtVul+l7ghXogg5iT2O5qtvbF8xYzjjlfzkRccB9YoX4?=
 =?us-ascii?Q?+397oBHlskGVwIgD6YiFGolh3ggpIiPF8Emh0By9UmqQL1epobNr/3rCelFK?=
 =?us-ascii?Q?JhRdCEtnWJ7cNjsaTptN5Yr2YKBk1Kshg4rx+M4oMSbxzv0B4ZztgkrQ2F0V?=
 =?us-ascii?Q?ZFlzOMaE5+u8fAvR24cqt8Jx70RKjuNZAfybn4i+JeXxg4w96nrWCiMIp/qy?=
 =?us-ascii?Q?/RW5Uv3TaGzQWyawm/r0k+//yLJxcVTJQIUNGBqwUWlazMZgFpZYkNO8Q8bs?=
 =?us-ascii?Q?RBinsgSkSMMcnENGK5Rbf+aXG/8y/QjNuPn7owtR38idzjOj5SMLUOtdjoeu?=
 =?us-ascii?Q?pWJFh2QAr+ElTk4bylYpeTIFWLZQHNcV8yBGKWxR3IFS+tFK9gcazRQoJiuL?=
 =?us-ascii?Q?HXRU3+U/Aabwq0bURMhRfsjp86rKiTYYD6S5+NgJbV9w882pk1OGiqvNG7+q?=
 =?us-ascii?Q?DRQBhqfrMW5LNkeQ3qvln2wOc1YVO9UZy3QgnTjBnAfPxozhKeFtT2xf2A4V?=
 =?us-ascii?Q?0rpmqhw8R5TcpuMPaYyYZ8hHQ7hbTYzko5k8HkvuIVEvaMELgD0p7vdpMqXw?=
 =?us-ascii?Q?LMZU8m91D/v+EN8+7sOknk3dkfKbUX0B6ML4xxKOdsQJxLX6w9povbgWE5N/?=
 =?us-ascii?Q?Nad7nw0VvgR+B+4hm/3pg/GrxzDkXrN9LXqwCSU0UUnGewFS5KQSGwUkOZoP?=
 =?us-ascii?Q?T9NgAUv6K7TSajXhfuUpPBM1u1VixeomBvEwdwor/5W01IOQDxyrHhTxp3XC?=
 =?us-ascii?Q?cP2SowRCfYMKUfWf6m3AUAzqI05XFPgvCUzcaCbtMM1yKmIdNutOTdjlXM8V?=
 =?us-ascii?Q?jjcqpyojC5G3TlU8Sz+mF59yQJhNZbpu0VoXMnjMNXn5LceA0Y6NKJaCHpue?=
 =?us-ascii?Q?B3uyV3CEh2gQXoxhI2C7eh3PsBJEE2fOvI0Zn2Yh74UwaRzpMoooEZ7P1oii?=
 =?us-ascii?Q?82vKYzbN0TOlirofrNq9yPx1477hicfwUk+rdaoa0cHrQGA4eE9LD8JcJeuu?=
 =?us-ascii?Q?1yX4p73nHtMM0TPs1MWUmadbS2hHUDBcDffQQitsNofhmRY4dOIkVk7z33cK?=
 =?us-ascii?Q?16C8e1fOha52A9M87QAgNzOiL89t08YkFUlqYBQx+IVKB706o3JBAP7HePBl?=
 =?us-ascii?Q?FL0cyd8x2Go02N2Ux0oFR9wyE0uzmKyVYqDFKkKxN1cOXe0uS8fSrghxAABq?=
 =?us-ascii?Q?OhU3ebxaW6YMBxUncB2RJKK5cAtHErZxKv6awHzhLthIECNyxW2nqRGEmfSM?=
 =?us-ascii?Q?dAv++tOCHJIkXV6n5jnj1t3MNI4+UnK5eUMHTCTXIwjyGe6RwLmgnXNFkDLG?=
 =?us-ascii?Q?xdBQgNo7ykCKO7K4qrXa9oycPe4uBM2iUbr0LFKdYj6nd4MXYxZtfH8ClVKj?=
 =?us-ascii?Q?IHc/QMH89mdxTNqMQoRx1kpPl8KPP+NwHKMlwXOzSXkx1GL9ZTWkSQxnj18z?=
 =?us-ascii?Q?6su0WmXnuw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c44c2f2-b78a-4873-f1a2-08de748aefcd
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:28:41.2591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MlMEBy8mOoqeLlkPERw6ZhJ8do4/2b4D6oqUo7D4j9UHMOl5mjYZE+iUNlUnVSX+fyp0xMLNmmiHTw9QiB01qQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6365
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: E2A8B19A9D0
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

Handle the RX_CAP_CHANGED IRQ, which a sink can use to indicate a DPRX
capability change without disconnecting and reconnecting itself (i.e.
through a short vs. long HPD pulse). Handle the IRQ by doing a full
connector detection.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5c1529e38a6aa..f38913834644d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5478,7 +5478,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 
 		drm_dbg_kms(display->drm, "DPRX ESI: %4ph\n", esi);
 
-		ack[3] |= esi[3] & (LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
+		ack[3] |= esi[3] & (RX_CAP_CHANGED | LINK_STATUS_CHANGED | DP_TUNNELING_IRQ);
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, ack);
 
@@ -5491,6 +5491,9 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (ack[1] & (DP_DOWN_REP_MSG_RDY | DP_UP_REQ_MSG_RDY))
 			drm_dp_mst_hpd_irq_send_new_request(&intel_dp->mst.mgr);
 
+		if (ack[3] & RX_CAP_CHANGED)
+			reprobe_needed = true;
+
 		if ((ack[3] & LINK_STATUS_CHANGED) || intel_dp->link.force_retrain)
 			intel_dp_check_link_state(intel_dp);
 
@@ -5803,6 +5806,9 @@ static bool intel_dp_check_link_service_irq(struct intel_dp *intel_dp)
 			       DP_LINK_SERVICE_IRQ_VECTOR_ESI0, val) != 1)
 		return false;
 
+	if (val & RX_CAP_CHANGED)
+		reprobe_needed = true;
+
 	if (val & HDMI_LINK_STATUS_CHANGED)
 		intel_dp_handle_hdmi_link_status_change(intel_dp);
 
-- 
2.49.1

