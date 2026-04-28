Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eMLJHt+t8GnOWwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0954852D6
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:53:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 93E2210EBDA;
	Tue, 28 Apr 2026 12:53:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AhmmD+JE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A9B510EBD7;
 Tue, 28 Apr 2026 12:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380827; x=1808916827;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ygeExyQGtTJIBMZ9jH1q3aOVZdRAoyBV+AWOoSPYHNc=;
 b=AhmmD+JEiglcrSOy5VP48DGlbki5XjVDFm96WE8gMsd2ytl5epZtVGK1
 ozzTwla1E3SPP12djN9ZwTWZsBVAXN9Ukp2RcxgN2nHcxhuM6oYsSTeaA
 JVGkoVQxZrS5tKyRZytzjBkOJyekmwTKTldLLjx7h0PBtCuULcVVzzqCY
 nKe7zFzyAmVVTAmT2g1rgU+fS7TlufGkunp+J6KlNx9ZWwEEhflCR1R3l
 2j4WUsae90frBQppsY2BrQyDNn+EzJRKEL7exQt65pKhKI9RXpFZPv3ca
 JEkBgiMSABYuQ9q00m7ZuGEcPF72R0T5cduFFpiSfwHKBndrdaAqkfnWm g==;
X-CSE-ConnectionGUID: CtdNil3JQOeMye7PKzu7mw==
X-CSE-MsgGUID: 2jpliHFsTJmrBvfym2DraQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="100945127"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="100945127"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:46 -0700
X-CSE-ConnectionGUID: Z0v2ZfG6T8i6SOS0aHQI2w==
X-CSE-MsgGUID: NDPWWkiER+Gk3qBDJHoKZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="229377600"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:53:46 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:45 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:53:45 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:53:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XzbnwfaWF9R7hTTx7WHHiqK4PwY7YbIE4jTeN7mPjPR1qpGuWwpJqlYxAtQmwwBcC5cgmac1gl/Gd/wN9g3ALBvkdzgI7YBVlaHfJeFJXPdWSW4IivCWEZFbFvnB0pHpiy9fx2GrOW+pI6WsSbxykTHTLHVxR1Emu6mfAxYmncIG2F5O/pRLTggL5yxGKZanooSxsmplod/Ud2SGuVdmJ1H85zpE5A3kSyqsuuzn3gfdpS3+rm9thaLJkLS0xNVZuCGeMz5fIQzGG5bCnqHyALaSocKMSEg2w5mpQk1vZzXifiPoAEUWjo7qgLc+RCYkWnH1pMuIUA/H+CgjGpZ/3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TZ6AWrxGdkFzsa7YNz7FHLbFyiG8us1qoHTGp0udN98=;
 b=MU1PG8RbyEoaOlrcDWYBC5mOeHmQzI0oXXLK1D4ROi6PvYeTUXTQcQbkzINptIKO+EW1NJZ4kYwZ9gNPslLDUkfmdS0AMW9TbIxqmTBS81vul58a8zxYm09hA7gDxGDHr6J6OnYodWoQNRZs6YLoVmslzPTlnxj0mBz35clsOIRV+K1iUBwA0Ix7DddpZB5ewMn804zdRWn+HP9V92e/QzXPFJfUwS5LV86Q007deTHAiqTY//GAIZOtEHrOiYac5NXFnGwwGNCKaYu/+ucyjJ2b/F+BChMxC/q+LM+dRQorFrPtPQWKJMlzJHXQja+aH+dSddUGhwAYydz/1A2AtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by MW4PR11MB7149.namprd11.prod.outlook.com (2603:10b6:303:221::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.17; Tue, 28 Apr
 2026 12:53:40 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:53:40 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 036/108] drm/i915/dp_link_caps: Move link config helpers to
 link caps
Date: Tue, 28 Apr 2026 15:51:17 +0300
Message-ID: <20260428125233.1664668-37-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260428125233.1664668-1-imre.deak@intel.com>
References: <20260428125233.1664668-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GVX0EPF0005F6E8.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::1ee) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|MW4PR11MB7149:EE_
X-MS-Office365-Filtering-Correlation-Id: 80468f55-7b03-4c90-3430-08dea5252b9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|18002099003|56012099003|22082099003; 
X-Microsoft-Antispam-Message-Info: A3M0xn2FyynNqrsEFJdYFXXfecRZXW0OlfPys0atZeCLwP12cxHYnkn3hBcwfvbLMDcS5/XChnQRTeZ8ZiosJafwcLr3Yf0lAntKK16YWl4mPwNEoipssfOrOZybo8xk2y+Tfvh9WzJoPu3/cVN8ahfQ89GfAUYBu5loMX1OUb1Q+13XkqxbprX8mPn/Gt4LsJnE9p6mbOgg2+iGPQ8qEeQoms8aSZbmd20FhXrEtbywbq9RrOvIkqNB2Sj74t8Iw6XgnhZic2eDx3YKwKT/Glt+uBjjLN2EdIgtkkKQ+4zWmoSLSATy1XHu124KeEJ9BVjEto6C7eRDLTQG3c+j8MtCQVvOKb7aouwVzcTrE42SkFeFxcFnpsPSJVikcQ1pnoiRkYBu4gv9za1S3jn2EzxWzBYE1Y7mBIIPIHfyY6iqXsz8QWq7xxJxE5reWmb8IiHB+WkZHwMiROtLBxJv30AvqsKPMWt5SdBB/ML/Jm0EFd2sZtpVDXnzbYxYTGQ5laNdpfKJnqpMm3nxUyXQcmJj7+INTajUcqDaXgiBbg/Ueivr1yhSvzu7AorA7IVL57MxLbRuTFLk0V0bgT94ON7fOKAdG0O1L/dP1C+Nu8FFoYYFGHprROQfvq8uxJ2GRHWPzeKFpEwKBIjLxsgD1f6bGRGkeP9Fj8J7dTuK+YvF57W9qCAyNfS723jEz844cof2IZu8bhKpI3gm80YjV+h+njoiWX8T7viE2htnmXc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/NHkiLudF1y/h65wYl9cFJ1hSjh5mFNT6IfR3uLwy45t4pCaiqlZrSm6xa8F?=
 =?us-ascii?Q?cbzNvCeoI3bS8eD45j5e6RTzfR6ARny1+tkuSZaI6vLm9xxr8aSEHkOFerMZ?=
 =?us-ascii?Q?npArcUqoXv9iYDxfffWDLA+NQyi5VLddbX8qH5THR9b3s5m0Epkm/4RVU66L?=
 =?us-ascii?Q?HZe7PZF57ospT44paA5lntGb6VT2mWT6ZEQZBSwwziYmLkSAiK1/E3iZJHAt?=
 =?us-ascii?Q?XDzxHXBO3d5cULehzqQIzdGzBz7xASowZNBTd92Xf8UTnZuVf4ydTVPrnQ+m?=
 =?us-ascii?Q?MT7DAsrhxH6KhbFHRmmeo2DRAV5f0+maw89Tl4OGfTTRl2wMFl0hw+3Kncwb?=
 =?us-ascii?Q?ajPlZ8eHLESL7AoGIkrHah6gc8W+99ss61BiUsfwCgraLr5v81qwEULCVFFs?=
 =?us-ascii?Q?5195eQvgT0U2XJ2z8fXIbcd1rHJ5OS85hW11q9E2cg8ozByVe4a9OfQ/FciI?=
 =?us-ascii?Q?M8nchec6xXOch2iPpRGR/EniJXJTb60iUHkt2MobKEcP2F2ibQBlLd86jhAv?=
 =?us-ascii?Q?pFpvjSzt84BAZBwJBD5+sJ5/p06aWQDK2SpQflD9K7dn+9c8lBcLz8JT+efN?=
 =?us-ascii?Q?/sFnVKH1B6h5B74oZ66polIhuQ+MNSDWk0nG6jTP+CSaABNboeuaoA+F9rZW?=
 =?us-ascii?Q?Z747VhplpffCLkUEDCvHv9lHEqpCb3tdQYyZGi4mhElzVIXkG9MUbEqiBdvv?=
 =?us-ascii?Q?KU1ZhAwRKprLZvA96bU1O//OKJwZmkkdE9EPl1yORT1cODx+t+Yu08ei3+4v?=
 =?us-ascii?Q?2dKW2X4pKS1rwYqgZJg5GYKl5RGL9Wh9B04OebufC3/W5+qlAXUWfLy7QNWf?=
 =?us-ascii?Q?B9HjP8BopINCnL+PEGt5nR++d5e78gfoEOv6DC3MQPu2Fy9i2MultOlj8QXL?=
 =?us-ascii?Q?dfVou1GrHcD2B/uJ8A8CtEv1OgVBKCMeM/fCPu22EkndHx2iSP6xgzdvpcWa?=
 =?us-ascii?Q?IbGgSRzSPvj4PzOYf7FLvXCWeHkGg8U6xTHaw9IkcdPve+tm2f1ReflfzBVU?=
 =?us-ascii?Q?EwsEWyPDDWJJukOuDijCTMG7Nl/Zh1KZI/bJ9iWxNyEgDsWqw3LB4dLRbgAQ?=
 =?us-ascii?Q?OPYp/1LFPEipr1y/VO8b9NElW1D2zJpWeNpJ8pniHkio0g4Fi8a8nbdstFBD?=
 =?us-ascii?Q?i/+16cU6SxrqMp53ASTTnpzifbl+z+pobnXjzwGquYEfi51FX20k8Bqqh6Uz?=
 =?us-ascii?Q?+RRFj6PAxeq0Yx9xWAw6uZTEediQiZr6It7tTlGks/Glb28x+CDzuW3Zz3E1?=
 =?us-ascii?Q?QcDeX4uy4Z1Y9uf0I3dM3tW/dH9OvPCBZG+anC4+0VexuIVNc2NP1hobp/9A?=
 =?us-ascii?Q?toQWjeHLQd1J4nCA5aNMLS/xzogKPchk8GSUuIAtzpMY++5Hv1lU86zwX3SB?=
 =?us-ascii?Q?8+7dBdYYMGUsD69TtHml//eZXOzcR3P0gdy3k/WMpYwvzP9mTCGhUnvzI66h?=
 =?us-ascii?Q?lHq9QKY2IY3VYUAdDap/CF1iN+KUSBXnC93JXFuLyD5Yd4k2p0LA31K0KBxD?=
 =?us-ascii?Q?9Mtrn8FShcnwmwG/UTh6v19GvpYAk2DzEoLAFtpafSmhVdy+Ti2C/XC7xJE5?=
 =?us-ascii?Q?185I8o93lNPB8zSUOMmCChxLtiBtvz1mumBkvUVkqJnf/5HojlmBup+2XHLj?=
 =?us-ascii?Q?07g4EgNK6GKZvOR1oSoXUPaiDC3VFKxWYgnXfIOhAzHcDKS03kUUK7KeATtH?=
 =?us-ascii?Q?VyPZ+w5ZPWY2D3t6oFBXguii5xzJ+lDrPk1HkSSHf+7Hgk0tYzt+DiMYu+HX?=
 =?us-ascii?Q?qyWyWb1HPw=3D=3D?=
X-Exchange-RoutingPolicyChecked: PJUwXB5LujMzq8zU1Yd1IJExNZwwZiNhJjbNI3WNL9BLagGaoTheC/vtEXAtzGnMf8Lwf/HzXGUE62NgbQGbg6BtO9fHKkuwmCsvCWFDW+Ei/BZRtwy1UzqrXTZy0iIRwDFAGG2AqoTDp464JUjKS7imC1ZFc/H3xNNzhwy4Z8TJV/IIgOQxjca5E+EnL+mL0YFKMuhdewwyZV9KyAdHGIC3MTfZstSPFVIPMLLWgyp4zD1Klibn7/skiSf/9I/H2KJ1LWntKUlremnVCGeZ56411xY7AHBaCpPe2tygCeoninWdOAQbk2TqB50OVwGhFK6pmx4tC3qHyGFqik0Ctw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 80468f55-7b03-4c90-3430-08dea5252b9d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:53:40.2992 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TFMk8iFmEDBgnVDk0EM/bGmiy02ldO5yoZHRavAE7rwdeOPSHVs8a/HyKWzevI48Ga1BGYXVJthOV+djsqYZqw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7149
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
X-Rspamd-Queue-Id: 2B0954852D6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

Move the helpers handling link configurations to intel_dp_link_caps.c.
Their functionality is part of the link capability logic and will be
updated to use the link capability state in follow-up changes.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c       | 101 -----------------
 drivers/gpu/drm/i915/display/intel_dp.h       |   2 -
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 102 ++++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h |   5 +
 4 files changed, 107 insertions(+), 103 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 52d843b05c38c..25f8ac21ce60c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -33,7 +33,6 @@
 #include <linux/notifier.h>
 #include <linux/seq_buf.h>
 #include <linux/slab.h>
-#include <linux/sort.h>
 #include <linux/string_helpers.h>
 #include <linux/timekeeping.h>
 #include <linux/types.h>
@@ -666,106 +665,6 @@ int intel_dp_rate_index(const int *rates, int len, int rate)
 	return -1;
 }
 
-static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
-				     const struct intel_dp_link_config_entry *lc)
-{
-	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
-}
-
-static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
-{
-	return 1 << lc->lane_count_exp;
-}
-
-static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
-				   const struct intel_dp_link_config_entry *lc)
-{
-	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
-					 intel_dp_link_config_lane_count(lc));
-}
-
-static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
-{
-	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
-	const struct intel_dp_link_config_entry *lc_a = a;
-	const struct intel_dp_link_config_entry *lc_b = b;
-	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
-	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
-
-	if (bw_a != bw_b)
-		return bw_a - bw_b;
-
-	return intel_dp_link_config_rate(intel_dp, lc_a) -
-	       intel_dp_link_config_rate(intel_dp, lc_b);
-}
-
-static void intel_dp_link_config_init(struct intel_dp *intel_dp)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	struct intel_dp_link_config_entry *lc;
-	int num_common_lane_configs;
-	int i;
-	int j;
-
-	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
-		return;
-
-	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
-
-	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
-				    ARRAY_SIZE(intel_dp->link.configs)))
-		return;
-
-	intel_dp->link.num_configs = intel_dp->num_common_rates * num_common_lane_configs;
-
-	lc = &intel_dp->link.configs[0];
-	for (i = 0; i < intel_dp->num_common_rates; i++) {
-		for (j = 0; j < num_common_lane_configs; j++) {
-			lc->lane_count_exp = j;
-			lc->link_rate_idx = i;
-
-			lc++;
-		}
-	}
-
-	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
-	       sizeof(intel_dp->link.configs[0]),
-	       link_config_cmp_by_bw, NULL,
-	       intel_dp);
-}
-
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
-{
-	struct intel_display *display = to_intel_display(intel_dp);
-	const struct intel_dp_link_config_entry *lc;
-
-	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
-		idx = 0;
-
-	lc = &intel_dp->link.configs[idx];
-
-	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
-	*lane_count = intel_dp_link_config_lane_count(lc);
-}
-
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
-{
-	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
-						link_rate);
-	int lane_count_exp = ilog2(lane_count);
-	int i;
-
-	for (i = 0; i < intel_dp->link.num_configs; i++) {
-		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
-
-		if (lc->lane_count_exp == lane_count_exp &&
-		    lc->link_rate_idx == link_rate_idx)
-			return i;
-	}
-
-	return -1;
-}
-
 static bool current_common_caps_match(struct intel_dp *intel_dp,
 				      const int *rates, int num_rates)
 {
diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
index 8f7607dc412d0..363907d463486 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.h
+++ b/drivers/gpu/drm/i915/display/intel_dp.h
@@ -105,8 +105,6 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state);
 int intel_dp_rate_select(struct intel_dp *intel_dp, int rate);
 int intel_dp_max_common_lane_count(struct intel_dp *intel_dp);
 int intel_dp_rate_index(const int *rates, int len, int rate);
-int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
-void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
 void intel_dp_update_sink_caps(struct intel_dp *intel_dp);
 void intel_dp_reset_link_params(struct intel_dp *intel_dp);
 
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index e11a36ea2d178..9fadab008e8ee 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -4,7 +4,9 @@
  */
 
 #include <linux/debugfs.h>
+#include <linux/log2.h>
 #include <linux/slab.h>
+#include <linux/sort.h>
 
 #include <drm/drm_print.h>
 
@@ -81,6 +83,106 @@ void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 	forced_params->lane_count = forced_lane_count(link_caps->dp);
 }
 
+static int intel_dp_link_config_rate(struct intel_dp *intel_dp,
+				     const struct intel_dp_link_config_entry *lc)
+{
+	return intel_dp_common_rate(intel_dp, lc->link_rate_idx);
+}
+
+static int intel_dp_link_config_lane_count(const struct intel_dp_link_config_entry *lc)
+{
+	return 1 << lc->lane_count_exp;
+}
+
+static int intel_dp_link_config_bw(struct intel_dp *intel_dp,
+				   const struct intel_dp_link_config_entry *lc)
+{
+	return drm_dp_max_dprx_data_rate(intel_dp_link_config_rate(intel_dp, lc),
+					 intel_dp_link_config_lane_count(lc));
+}
+
+static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
+{
+	struct intel_dp *intel_dp = (struct intel_dp *)p;	/* remove const */
+	const struct intel_dp_link_config_entry *lc_a = a;
+	const struct intel_dp_link_config_entry *lc_b = b;
+	int bw_a = intel_dp_link_config_bw(intel_dp, lc_a);
+	int bw_b = intel_dp_link_config_bw(intel_dp, lc_b);
+
+	if (bw_a != bw_b)
+		return bw_a - bw_b;
+
+	return intel_dp_link_config_rate(intel_dp, lc_a) -
+	       intel_dp_link_config_rate(intel_dp, lc_b);
+}
+
+void intel_dp_link_config_init(struct intel_dp *intel_dp)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	struct intel_dp_link_config_entry *lc;
+	int num_common_lane_configs;
+	int i;
+	int j;
+
+	if (drm_WARN_ON(display->drm, !is_power_of_2(intel_dp_max_common_lane_count(intel_dp))))
+		return;
+
+	num_common_lane_configs = ilog2(intel_dp_max_common_lane_count(intel_dp)) + 1;
+
+	if (drm_WARN_ON(display->drm, intel_dp->num_common_rates * num_common_lane_configs >
+				    ARRAY_SIZE(intel_dp->link.configs)))
+		return;
+
+	intel_dp->link.num_configs = intel_dp->num_common_rates * num_common_lane_configs;
+
+	lc = &intel_dp->link.configs[0];
+	for (i = 0; i < intel_dp->num_common_rates; i++) {
+		for (j = 0; j < num_common_lane_configs; j++) {
+			lc->lane_count_exp = j;
+			lc->link_rate_idx = i;
+
+			lc++;
+		}
+	}
+
+	sort_r(intel_dp->link.configs, intel_dp->link.num_configs,
+	       sizeof(intel_dp->link.configs[0]),
+	       link_config_cmp_by_bw, NULL,
+	       intel_dp);
+}
+
+void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count)
+{
+	struct intel_display *display = to_intel_display(intel_dp);
+	const struct intel_dp_link_config_entry *lc;
+
+	if (drm_WARN_ON(display->drm, idx < 0 || idx >= intel_dp->link.num_configs))
+		idx = 0;
+
+	lc = &intel_dp->link.configs[idx];
+
+	*link_rate = intel_dp_link_config_rate(intel_dp, lc);
+	*lane_count = intel_dp_link_config_lane_count(lc);
+}
+
+int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count)
+{
+	int link_rate_idx = intel_dp_rate_index(intel_dp->common_rates, intel_dp->num_common_rates,
+						link_rate);
+	int lane_count_exp = ilog2(lane_count);
+	int i;
+
+	for (i = 0; i < intel_dp->link.num_configs; i++) {
+		const struct intel_dp_link_config_entry *lc = &intel_dp->link.configs[i];
+
+		if (lc->lane_count_exp == lane_count_exp &&
+		    lc->link_rate_idx == link_rate_idx)
+			return i;
+	}
+
+	return -1;
+}
+
 static int i915_dp_force_link_rate_show(struct seq_file *m, void *data)
 {
 	struct intel_connector *connector = to_intel_connector(m->private);
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index c6a84891db464..dab956e804b95 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -17,6 +17,11 @@ int intel_dp_max_common_rate(struct intel_dp *intel_dp);
 void intel_dp_link_caps_get_forced_params(struct intel_dp_link_caps *link_caps,
 					  struct intel_dp_link_config *forced_params);
 
+int intel_dp_link_config_index(struct intel_dp *intel_dp, int link_rate, int lane_count);
+void intel_dp_link_config_get(struct intel_dp *intel_dp, int idx, int *link_rate, int *lane_count);
+
+void intel_dp_link_config_init(struct intel_dp *intel_dp);
+
 void intel_dp_link_caps_debugfs_add(struct intel_connector *connector);
 
 struct intel_dp_link_caps *intel_dp_link_caps_init(struct intel_dp *intel_dp);
-- 
2.49.1

