Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QsIbBCwzRWpU8goAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:33:00 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFF26EF473
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 17:32:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=hTbWPX7l;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EBD6210EDCE;
	Wed,  1 Jul 2026 15:32:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8C0B810EE0E;
 Wed,  1 Jul 2026 15:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782919977; x=1814455977;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=IWdO8fWzLXAupAuhOeRwDXPdtoz/VmvSK8ltmWvVco0=;
 b=hTbWPX7lwJ5YxDxh6DOp/4uSkdZdoazHV+KuluRvPqlAGk3m0o/dAVB2
 oHNZFNoIpHmr/kiDQq4WlknGajRFzHe3mUj5EEqEn+hBpBF+duoA0uSWI
 oH5m/rOitJPJPUavLYsuGhupyDqelElNFOCHxtiyrEndpjt0mMApgLn+Z
 ZfHooy5IFp9TW+7wBN+zpkuRmr1cfMA656G2Hm7THWrS4rQkU2AsAQbcc
 VIqrVBEOMHx8+CRNak+Ld92DMNvajHmvob5WBRGMFHU8gOqSACtpjibbo
 0v6plLYzYSYe0FUuAkVSbusdV1XSKUP3/3X3H97YLC9uhB04mfSlN8xXJ A==;
X-CSE-ConnectionGUID: NIDiec9oQb2P1RVVM1uj9A==
X-CSE-MsgGUID: 9v1xz4owSPKiBXOzrzT/cw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="94310087"
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="94310087"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:56 -0700
X-CSE-ConnectionGUID: QNsstPzmSliFCGjBa9tsew==
X-CSE-MsgGUID: z/BhiNyqQXyUZO1QUxbz9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,142,1779174000"; d="scan'208";a="256515610"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 08:32:57 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:55 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 1 Jul 2026 08:32:55 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.63)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 1 Jul 2026 08:32:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xr9520/ym4citDWEabWzhRi+cCeE2r3qNlijRHskwHTOzAWGEbfv1ChGFeU/TliuLhIy2wydXRihrMBNFSY+CvT+QkNqme5PQJQL4axhmWjaEMaMdQ63UBslS/3f1+18zHz+RfdnKRYnpBxRMChi5wjfiCkMl88DJby8ork+7cif/O14eCuze5kJyM/APVQVrGZuqUkkjUbIe7PjD25Rg2K16IgB7LRWChivB1sdv4MUHfIoRIpFZtBh6fajwxW81rv3OpY4I6GRiTuhlChypq0EjOO4+aq2I7YpVMyAXzxrPXQfrxZGJCCec48UnOvVAaN7RnelqE8RcUa4n8nzCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kVT0yuHffwxwLBaoJP49SKy5aKVlsQq74uqwlFo2xpE=;
 b=EaAE31g7+cC/p2J1rLJ8JcTxG3JHR8Yj6QgGXir6CtGtCAIN4iG8Trbf+5C58LjX10kDDTDTgqerV92NgfJQK/RsRN4ESnNzJkZtxksYzwZYspHPB1MSbZS4xbIZTBCt51rPDvwRiODetUJgfX7A3A1DKPmqxIqXZAtqtdGZH7yHaJSOt/T2uGmVJF12MKCBJoAFlLVvif+bFzW/wcWTfPK0q7uK1uS2YXHvsCL9rtHwc1wovVkO1IMvMwwMvoCd432Weqq7klFgr5d9KlI6ICuKyQUR9jtHOSoWNvcNBzptQe4yHVD+12hdEUA9exNWhJ9s5wrb/XDSDLqc1DD4kA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MN2PR11MB4598.namprd11.prod.outlook.com (2603:10b6:208:26f::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.8; Wed, 1 Jul 2026
 15:32:53 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0159.018; Wed, 1 Jul 2026
 15:32:53 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 13/34] drm/i915/dp_link_caps: Add helper to query max BW
 link configuration
Date: Wed, 1 Jul 2026 18:31:42 +0300
Message-ID: <20260701153204.4124150-14-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MN2PR11MB4598:EE_
X-MS-Office365-Filtering-Correlation-Id: 0457306a-3dbc-4ea8-30df-08ded786047c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|56012099006|11063799006|18002099003|22082099003|6133799003;
X-Microsoft-Antispam-Message-Info: yMEVBV8yTWlqxdBQMGxtMRbMlihYVB5+Lx5XjSzPCfwdMd0W8CKVvddF6KM+BeKOz7Dciyn6WKvF+SUAXNiLgut0oHsRaazoLQBd9Dy5oALs8h23RHq+sIbT66DMEC6jP3dViZaQOUl0jvN8MXe+mBcNSjtYwqjbFg9QkTlIzrC2w9boD4bFU1jeqtjCVIzFTz37sm53cQ9S/SEilP4VNJtPnMSeUWp0epJkatL6H2JCxfU3giY2sVNbSwBoQlTnnDuchFjrY7cUDPhUFnzdUUPRCNZ37sGqIC7YfENENQ5CvVknIEbPd36tBKFpjUAgCXRWLMiH86rBbhMUia9ESDK3t+JS6xs7ZCKtHrGebtF0kVsdyMilVi8mhicJTkviN8bwStFWs4lHDqyuFgK7bSPgJB7uqoIb/RPDKWeEgU4lJGKR/tQ4zPg6/qgU6Cx8naD3EmQRc8Zr+K6u5tYc2A1JcLdUxypCZMhjtFKRWDk9FLuFOLFkxykUVQ48vnDk1ETWPX5DGL95V19fYz4f9+2MM1Cf8YFwn26ydMCbhwmU4soXEKDdYPzheMxNCFrb74mYABESGlyt+7dcxkBKnOUYg1imZLuD20urU8zfBh/84YRm/goWamTCOuB+RAc8MK9M4wXigUkozM0mv2Jekm/i5JLL8TkYr+LnT5cmTfY=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(56012099006)(11063799006)(18002099003)(22082099003)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0gxykv3xwSVnGIii8a38NE0BeiXQGRQMaDgEOxpTAIuOBEVJ/qxASN/zVDVj?=
 =?us-ascii?Q?xN2lDLwCrv6J4D8A2k1fTav901WHMtlOp3RcQacZn7EuMzAAqm/heGIb3CMp?=
 =?us-ascii?Q?EH4urhyaPTCKNkTpZMK363uLksUuXtPlPavyUfsJlrBCWSzOxm5zBt8b4WTT?=
 =?us-ascii?Q?VV4vTTIaPajhUM6sxggGYAdR55FtwlXE8sEyHF6Rxwxi32f/8OXrSJJ54bkZ?=
 =?us-ascii?Q?n0eO1TV5JGNX5b9Hu1zen3ftzyurB0/148cycax9vEFHZjwlzePw7G+LfEWy?=
 =?us-ascii?Q?T+pJNiyvvTe0e7n4T2jn3UXjG0ji7Shk7an7jr/OiXpW18YaErDorrpc4eeU?=
 =?us-ascii?Q?VVUi76wKgckACLdFuaFmFYmfr7NTT21R2JZHgCX32mzJgcRajFWuvqV8Mtm7?=
 =?us-ascii?Q?hvpgXwxWlINdpCThEEZY2FI6DpU8M2vaCqqeahksNTZ1klBC3DyvoVaGsN4x?=
 =?us-ascii?Q?gcJ7HpP2jW2CPXCUV1va0s6u1s7vrFCBmXOlLKkMvHIFle5RpjBttzQh5/xz?=
 =?us-ascii?Q?zvsbstSuHRyg9RXVaiB976Q0Re3CSSlgzRYZRrA11nrMzMqKZVqglTqLBQOh?=
 =?us-ascii?Q?QA0I0zm0S+etbx/XogRRmlzGLF8QLRGnYJweYevBy6lSPoiaFbM9mXo8bZkr?=
 =?us-ascii?Q?ewCVAreJITHSN2p8vUtrK5KDBJFeMrrrpCM360FMPdAuLbDpy45C4LWftxNH?=
 =?us-ascii?Q?u7NuhheXOnBwhy9yfIJF81uy8vUvOdd/zuv9vMrqYj6qIRg2b3c/aWG8bmxR?=
 =?us-ascii?Q?7iZWXHbbOv+yUY1Hg5MsMy4ONMlt1oYlU3jJpv+Ez5RUHOd30+8pFebOd3Zt?=
 =?us-ascii?Q?JajaHlxqPzkJGZQFACUANX91y/7cAxZ3m6Q45mskxPzXPduGD/myV/AeCm3T?=
 =?us-ascii?Q?+sSZsflCdnJDrY1f6K8Lf8RH2Y3lfgryTqn5UMahd/4of0kXyRSFjSYb47yR?=
 =?us-ascii?Q?xTStrP1nN14MFOd5xWXP1wXw6Xj1q6xMccDmwdiRdG28pAuWX9S4qschaaHa?=
 =?us-ascii?Q?HxMR5KnzcC1pG3OxKbQ/pY5j5004zfsbYShZPsWtXCUjFGAUQZAB0Bh09CoU?=
 =?us-ascii?Q?6dVkjnlylR/H7obqqSOWn08OtL8zkJUtzV23/5hXgSMbXYZBEcultVqD7Me7?=
 =?us-ascii?Q?sRwBWwZcC3QMqY4BI+K75SFvZb53blQKp7P9M2OJwhrc4kwuHbthROUCvxQa?=
 =?us-ascii?Q?Z0MFis511GMkh5h+7W2XdGqR6l5oNAnXqdpVS5DTIDRgeVWmdAJ521xbVd3s?=
 =?us-ascii?Q?vnYUMq2+HuJQc8Gw3hTknmYP9wkvk2M/Unisgf2CLKnNns3RjvH3ONUhdUsJ?=
 =?us-ascii?Q?mJTv/j8TnbClEj/qJ8jmaFq/yO7mprMdNhfa6jkn6/JMM/NFeHTBIgaf6mKe?=
 =?us-ascii?Q?CwamC/E1k7TIB7c3Spj8hGbLVbrho3QZsDn+1TWACPZ+WnxnL9sLVu63kMnX?=
 =?us-ascii?Q?S+qM/HF+j0optOUAPDGwt6iILDtD7qAESIJy15VAMb/JKQpb5i1xnWF8fH4D?=
 =?us-ascii?Q?DJr1o1Mg6FMmR+nRZ1MPpeXQ2mSRI84x6dynwBDyU29MWU1QfGhVh8XdrJOa?=
 =?us-ascii?Q?qA3hpol9OqN1P0S11bH2WOoxOQlEIPyB1huZXDHF9yiVv+aCOxtIly5TTzD8?=
 =?us-ascii?Q?RZPu0W6Yim4yZWBZ6/JvG5aMNwtb4DDAgryhYw5t/U+jYab4qCFYVp01B979?=
 =?us-ascii?Q?nWbtZv2fdZNCSYiQtLxNfwD8RWpyN1VOw/6z1Si4/gxfhiRcYrZPHYwoX9to?=
 =?us-ascii?Q?6PN1sxJ/+A=3D=3D?=
X-Exchange-RoutingPolicyChecked: LRhSfA0w6MvCB8L0fIuG376uXgkwT1i+K/a0f/ulcRNbJvz4rqTqj9asTjPrrrqQY3Knn0BUWu5d1FpxWj3MGwg3I5AF9pgw//WdL/23J5KdFRwbu0YhhbJhlC5/QX/h036pu8q3GxSm//e8yOIzZojh7ubdH7rVureyJ5M+a1g4zDcKEKNByZZJXpRumhrDxAwTGc7Z/9vkHDfhl35K9AOwm8MGvhyONnDowbqTUlrUr1N7bjJL0X+jTmv4KFCyWA0nhcEgqmsnrze7XmcUpJe6AxkDxZJ7MEisQAexAISiG2lc5EVeK2dta5lpivcbnXSPfyt35G3+9tOawQyM9Q==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0457306a-3dbc-4ea8-30df-08ded786047c
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2026 15:32:53.5771 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F/rO7Eg8Z6tuOzo2X9LCSVdGhNcsZwtHIV53SHuwDJk6UjTWpoSeUckBJV5fiQ8DMQRHl9XlCqvSzeE9Nog7Vw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4598
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 7FFF26EF473

Add a helper to query the link configuration among the currently allowed
configurations with the maximum link BW.

This will be used by follow-up changes to unify the max BW link config
query during mode validation and TBT BW calculation.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c   | 17 +++++++++++++++++
 .../gpu/drm/i915/display/intel_dp_link_caps.h   |  3 +++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index d00bb8047de2f..c209c8a935234 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -550,6 +550,23 @@ bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
 	return true;
 }
 
+/**
+ * intel_dp_link_caps_get_max_bw_config - get maximum BW link configuration
+ * @link_caps: link capabilities state
+ * @max_config: returned maximum link configuration
+ *
+ * Return the maximum BW link configuration among the currently
+ * allowed configurations.
+ */
+void intel_dp_link_caps_get_max_bw_config(struct intel_dp_link_caps *link_caps,
+					  struct intel_dp_link_config *max_config)
+{
+	if (!intel_dp_link_caps_get_max_config(link_caps,
+					       bw_desc_config_order().key, INTEL_DP_LINK_CAPS_FILTER_ALL,
+					       max_config))
+		*max_config = INTEL_DP_LINK_CONFIG_NULL;
+}
+
 static int find_config_idx(struct intel_dp_link_caps *link_caps,
 			   struct intel_dp_link_caps_filter filter,
 			   const struct intel_dp_link_config *link_config)
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
index 6dd2ce64e24ed..667bd70b2396d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.h
@@ -146,6 +146,9 @@ bool intel_dp_link_caps_get_max_config(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_caps_filter filter,
 				       struct intel_dp_link_config *max_config);
 
+void intel_dp_link_caps_get_max_bw_config(struct intel_dp_link_caps *link_caps,
+					  struct intel_dp_link_config *max_config);
+
 void intel_dp_link_caps_get_max_limits(struct intel_dp_link_caps *link_caps,
 				       struct intel_dp_link_config *max_link_limits);
 bool intel_dp_link_caps_set_max_limits(struct intel_dp_link_caps *link_caps,
-- 
2.49.1

