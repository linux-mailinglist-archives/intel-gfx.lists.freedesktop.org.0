Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sCoCAGcjn2mPZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8680D19AA69
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:29:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C60E810E7E4;
	Wed, 25 Feb 2026 16:29:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G+hiuQhX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 851AF10E7D9;
 Wed, 25 Feb 2026 16:29:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772036951; x=1803572951;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=bnrx5ZhxpwtmooJA9q59nDSvO/kcpLRUDK0aGmWiGZ8=;
 b=G+hiuQhXF24DQ6e1Z5AQDf9cdyvoqnXHaNgD851+oEAmfM2VX4v8oIOj
 04Yo50i0CiPOQRh8/JPO6gI10pkc/1AeEtxHCKxqgQFysC4r3YXEV72Ee
 K4xIgY38uOE2g9p2VieFemPQdKEPT8BdKrzvK3oGi7i6Yu0Hq7O0VzYaU
 h9m2iVdXIGLTd8Jh5yfwNS/b04o9M/fBIUSB2J/P9KHMWPVlfEjh869Hn
 eX+qlMBfgm1+1b33uuV21GN+Nqgf9107j1r4ZxCC3aX6Xd4i7tE8ZcQpb
 vnNU85UfV1K/2MBSJFqF/18nUviGtlIZY1bVyaxUW+1nkWXO90KMfJ5g3 g==;
X-CSE-ConnectionGUID: b3KtJvkoQbmhFsH5lvGgRw==
X-CSE-MsgGUID: Si3Qn2BWR3+XY0Z8wQR+Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76917450"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76917450"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:11 -0800
X-CSE-ConnectionGUID: W6bgo03vThOxuFHNUSJ6Wg==
X-CSE-MsgGUID: c5F58KtfRAGgpZCGYvRalQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="254039610"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:29:11 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:10 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:29:10 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:29:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vL0EsgKJsT0Nn/vceQPTsW7JZbRPMYL+BuSliEK+XwofwuIBiIAkkor7NRBbAohhsYbtUiD7t6wkq+Tgo9lRAVkUMUeKwaDGx6UODvEBlnNxcnf+Sap9LFTPwacKeFvxWofzaYvKPQ1fyChJ6O3ACqegq7xsh+kE2CVdKbud/YBoEnjYsN+m9bVSSNW+bGjvD1xh/Lsast75PUyfkBaCW0UUuLs0QiziSEgPHJysg/HjImPOJz54L2JxhGHvpqMcc2LdNNTeVtk2AF8Nn9tP9GLH7DqfH1WzLj6L1gqYxEpeddZAR2LiNqegDTS/PLXYfUXkGz+CkjskwSZm2oVG1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QEUtxyvUxL0c6BxuMbI4RRydHetLOrKJNZTWjm/HxnM=;
 b=Wjltj/oc8D1GwiOACD5CG6WwpHly4oK3l9/Vgn9nuVb+nCydb8YDumd2QdLcW4L8YGUsAECJf4Iun2eNv1ajKhws3YDzN/9mH8mnw0aGwb3b/4qcZsTE+5+Z6zTjH2d1oRF1k0XJzS3CItBZa3X+BYWh9TuwsMdUUeYRA9F4WJUE9gWjr/TG5XMO+n2OUALsMzLsR5+3WBj1lhWQxWMTJdRozf1a0DmfQq+NY+Oam1yCyBR0xrFg16CR6H/+7lrS1+o5/ICq+4E66URWPm1OPac+XJYH4++au3zVAWwPXa6JuE4Ovlq6TDbRaGYQCX6GisA6YFD6+yYiV4YeesVh4w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by CY5PR11MB6365.namprd11.prod.outlook.com (2603:10b6:930:3b::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Wed, 25 Feb
 2026 16:29:07 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:29:07 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Imre Deak <imre.deak@gmail.com>
Subject: [PATCH v2 19/20] drm/i915/dp: Ack only the handled device service IRQs
Date: Wed, 25 Feb 2026 18:27:50 +0200
Message-ID: <20260225162751.1255913-20-imre.deak@intel.com>
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
X-MS-Office365-Filtering-Correlation-Id: 3c6ea189-4549-4c6e-e5ae-08de748aff9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: H9ylqAVFgHv6JYc4oqNDLJCOJRYhsehYEKdpgjn1Ih9CfH0rwTKOY5HnMosr70NNUcSGHcDfuQYzMtlX2tb9N4Az5sVvrKg4VssA6fGgV6BC40pi3iP0XKjt3bAsBtNMTprM/vakSxb3shvEr9t3z6J3aR9L4jGl0QiBJc98EO6zqYe1eklHn7RZeTPGrwhlp4GIGedPmHCUTLzRqaqwmdkMJOUOcEbQmSvzZKOjkBqWHHFL7oXMDVo38hVgr/tfFLSLGyLXYfY1rU6LqQG3Xrim0aSW26weVEv4dZ4igICiFJRN8gXZratYen4+z3RfvReC6Qpe6/Bp+n1zi+YInqCazWhYojSomBGaJQx+2UNt2rEqLtGgSsdPhTLk29Dr8mCau8VVR/DVY0OzEwdPhndIoitLdOwiQ3kURK9Xn7vjWRowUy+bV3/xFCASDcoMLPpa1VlpjLOO6VhkUrbht86ScfwTpS9uYnooU/IuS5bdNpHXW4I1EVmLz4N0RMAcmyRpHMt6+2KwqNlm5UmI6QzH6kyY46rYlSHu5K424YHW2cxG7kXPiNVrzaki3rAB03MzzFEgnG2j3/gxBUWHUg2e0TcO3hs8ZT3jmz0pr629RqfPc9BM+KmBbCgfSwd5HRIqAAWEr3ZvYfCKwO2ZbH/mOZHvXyskQ8QFsepD5JBHhwBgbrPjiYt056BWvi68VNXFeEwNsRQHjCULthrfaoiV+gqZPGexBAyEcf5LUWU=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Jb10XC/IthVaKwW2BHJspHl7zraDbnkYZqawBJEObG1iSkvEiDPNidZgeRgb?=
 =?us-ascii?Q?wbi+q9rP7Ksif1bAtRBspOWSAbaldEmO+TJlSyQkcqMiEjTk1ua8XLOxlIP7?=
 =?us-ascii?Q?/22jjUclbQEY10nB6esaPK92/+8whJJhi7l3twA7JzlUM77RhA19T8NNkXSU?=
 =?us-ascii?Q?WKWZrEZfRk1K8PhW/tIVziBc4tK11KVZah0CGF2+3BnyC3Iw9nwb7t2yw3X4?=
 =?us-ascii?Q?JaMjlbGP7EnNTXjGF5pAP5EquqGzNcagEVsZSsB9T7bGXLKMSOXHyW3MiKgX?=
 =?us-ascii?Q?XPRcMxAvmWt5Xp9vAHb7xe7x1kbLM3m2inzLIH76HIEdWjabsv0nyBQRfZve?=
 =?us-ascii?Q?9S1LboRfpUloSXBrXucE0IY0V/b+VrKjVZk8SPoVTfinFGYoossWxpBj7GBW?=
 =?us-ascii?Q?0fDnLYLwmZLnK6PXs75P0LcZ+9stKK3j6HokY1X3HZDmLge9MdxJikNLsh93?=
 =?us-ascii?Q?UR8v64EczqJ+o0dTBThppL8zsmEsWyKyMl1+dZ655y32fSifTQ8gdFb/LBmQ?=
 =?us-ascii?Q?VIwQCiYx7og10eQJcomw4txi1+363iHhq+hOmQzva+7JiZMrk8V0VmSKFI3M?=
 =?us-ascii?Q?NrgbKP3DF3RUWdJjnRMH6/Fc5die7MFYTNz2oxfSPN0zvtluZjg9QJ3dCcda?=
 =?us-ascii?Q?KTMy/moqVF835qq6yZsaRMlcIVnL8cfk4G67a0lAIEQsxW7TA7sgPSh4ghBu?=
 =?us-ascii?Q?pdBn0Pz+Oj/7puaH+00veX8ScMiDVmcxeFVvBmzOPcIvGpnAvO85sR2IoBeq?=
 =?us-ascii?Q?ynJgDdiP8y4/fh2buEcCDVWiumhuo5xrBF4cHE/3H3qnSP6mRf6h3PMzUrxB?=
 =?us-ascii?Q?vTcHw/PvvibCrZOoJ1irAgdzF42paYSKKZO+rRORGrigAUdWRX0yHnkXsXwO?=
 =?us-ascii?Q?E2DAbWQZtL/4Yc0RC785Sw7QqNbgRefgMfLxojkoTZjO+Ct5G99f+w+nnvsE?=
 =?us-ascii?Q?k2JJxuQAtEBYU5PJa+JzuQmEGCAbiJTPcqZMiod+vn++f3IWSLANR1XeffFS?=
 =?us-ascii?Q?Go0+Pfci2b8NszB1NiuB7wpAzZCj4jjc4jtKJxcb9VLhgGMreUHluZj3GdZB?=
 =?us-ascii?Q?cwVkkSgJD2T8Yzm6eOs6tKXBXhmA4Df47akYFMqiPBwsfmISqrAwnoMTBec/?=
 =?us-ascii?Q?1l2uqAWo7LnFvrIhMTO097bSF75/wvt+QrB2YQ9vM7Y7K+OUyithQNkgyKfv?=
 =?us-ascii?Q?d/7Sj0bH4WlnylT+qdhptVqgUQ2ZusoRsvq/HgfjjgI+1EF4FXmR4dQzzZ2L?=
 =?us-ascii?Q?Ofc9CRegSX0/4Bg495rXvNM8cZDh+o9INQHq6TaA1YYJVATAI50KHnji2QGS?=
 =?us-ascii?Q?PlrF7Ihpx3Fhw+kykV8RC2z1mEKJi3n813wGcHMYBsGf8KzdWS9nVGbH1iFp?=
 =?us-ascii?Q?u6vTVo6i/1ptcofGAdVLdN86LJ72Un47H2UzxdzICyRqEqipO0C3cKAc5XT7?=
 =?us-ascii?Q?pAD8Bg6JChQq7EaKzfRUuN5JqlEbr0nnNT4RMo0xO0oYCp3FZAwOwSUctV4g?=
 =?us-ascii?Q?F0Q5KbBFTMl1adcmiy2m7SnT55KOUb9rttB5IG8Yez9UZz8vPbltNhHGx1JH?=
 =?us-ascii?Q?SYPqhco5Sq+cMpLCZrbwD/myWWD/7MkZ5V1gL5Z4P/0w5eO9ansgWVYCq+Ju?=
 =?us-ascii?Q?TRh+ibpHmrQPo8Ly5u7lcTXi3aZsMx4zxQCbZagDoG+rwxwKcG2Y3yaeEF/V?=
 =?us-ascii?Q?InZYVCIa37An1CU98MuHWb7xwBpYTUZzrP8AZqmHulD+VkEvIqKl4w3Y8cEl?=
 =?us-ascii?Q?abaEFm/+ag=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3c6ea189-4549-4c6e-e5ae-08de748aff9a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:29:07.8414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GTMv/ZQj4TPIdcbfN530KPDEZDtb6VbYiaZNkwAvUU290GI/8JNyiFsA0CBd+FNVFfwqhlJfnb1sNbGpCzirSw==
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
X-Rspamd-Queue-Id: 8680D19AA69
X-Rspamd-Action: no action

From: Imre Deak <imre.deak@gmail.com>

Only those IRQs should be acked that are handled, however for SST all
IRQs triggered by the sink are acked. This can be a problem for flags
that are reserved/reading zero at a given moment, but become used for
some purpose - with a side-effect if set - in a future DPCD revision.

Fix the above by acking only those device service IRQs that will be
handled. While at it add asserts that only the known/acked device
service IRQs are handled both in the MST and SST case.

Signed-off-by: Imre Deak <imre.deak@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 27eea2cc0c301..52f3b1e88599c 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4916,6 +4916,14 @@ intel_dp_mst_disconnect(struct intel_dp *intel_dp)
 	drm_dp_mst_topology_mgr_set_mst(&intel_dp->mst.mgr, intel_dp->is_mst);
 }
 
+#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST	(DP_AUTOMATED_TEST_REQUEST | \
+						 DP_CP_IRQ | \
+						 DP_SINK_SPECIFIC_IRQ)
+
+#define INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST	(DP_CP_IRQ | \
+						 DP_DOWN_REP_MSG_RDY | \
+						 DP_UP_REQ_MSG_RDY)
+
 static bool
 intel_dp_get_sink_irq_esi(struct intel_dp *intel_dp, u8 *esi)
 {
@@ -5007,6 +5015,8 @@ static bool intel_dp_get_and_ack_sink_irq_esi_sst(struct intel_dp *intel_dp, u8
 		    encoder->base.base.id, encoder->base.name,
 		    esi);
 
+	esi[1] &= INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST;
+
 	if (mem_is_zero(&esi[1], 3))
 		return true;
 
@@ -5551,6 +5561,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		if (mem_is_zero(ack, sizeof(ack)))
 			break;
 
+		drm_WARN_ON(display->drm, ack[1] & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_MST);
+
 		if (!intel_dp_ack_sink_irq_esi(intel_dp, ack))
 			drm_dbg_kms(display->drm, "Failed to ack ESI\n");
 
@@ -5835,6 +5847,8 @@ static void intel_dp_handle_device_service_irq(struct intel_dp *intel_dp, u8 irq
 {
 	struct intel_display *display = to_intel_display(intel_dp);
 
+	drm_WARN_ON(display->drm, irq_mask & ~INTEL_DP_DEVICE_SERVICE_IRQ_MASK_SST);
+
 	if (irq_mask & DP_AUTOMATED_TEST_REQUEST)
 		intel_dp_test_request(intel_dp);
 
-- 
2.49.1

