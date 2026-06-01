Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OG0CF05THWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:26 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7DC61C9AC
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59D721130C7;
	Mon,  1 Jun 2026 09:39:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kMF/OM2f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3D721130CB;
 Mon,  1 Jun 2026 09:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306761; x=1811842761;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=lt7AShfL6R9HHUYkDDfFIrE3cKaQiTHNb8jonENu61k=;
 b=kMF/OM2fyEZXEnPnG22r8cfIGFOfCzAInuW0KNwNxuQYApzwVrg17uZi
 38WVM42I1eKNjFyEkhCgTGNEXW3N6alWY+UhKnzXhU1YxtOXTUdKqWmkv
 rlr5u3T6+9wQRN2kJWvwEXouEt5d+YVvqY62ekp+S/2ahZHiJ3McSEw1k
 ReE2lml3l0W3klljDv+PoV+Rx3atpQl1YzceYm8OcWLv/CgNGEV4ZTHNx
 PVhBO4lkQwPzdJxBeW9wIgeozIINbiviO3x9pMgEBo2sVkqjNqR/H/Lne
 9Gl/zYVjHHUX/hD6dHaa4SwEtOFsj6QKyoxySAzqpavYwWK3ZB0p2yZyc g==;
X-CSE-ConnectionGUID: savpMfY3RmuTKFVjGVo5Bw==
X-CSE-MsgGUID: c7QkiISVRNK8CbeiznpSDA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="80094052"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="80094052"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:21 -0700
X-CSE-ConnectionGUID: kLjiy1/vRPabqUKzIfYrLg==
X-CSE-MsgGUID: Lzhsk4uySxCD0xunNYY9wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="267160600"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:21 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:20 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:20 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.71) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eKuUYJTXFDhSCdXal7Kg3RNkLuJF7VJwpTfKEtYsir0d7IBGZvjLvfp/d1GT8eJPIujS/2OSkWvwbBNFsCvXc92Q6M92sagCT3m0oS1a9wqJrp3SwJrjiqrpcIrlQmHkvbflBDVcYSfm45mnWak7NLFJkMXLT+Sqi+VY5aHElEsl6IS4E1ebU0HivYa285sNQni3zavzcE3TuHHMgeeNA69N63KFEC/aU+R+sCiEkbFiCX+2amx/oTm+uYOa152RXTf/1cWX9PlJYjIMoAtr8e2FGCCA+f3m+FkCgksh/Qrx/anrC2sO5llJnYh0T0UAIifoOeDeAGvd1dky+AwSrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q6umOrVOZJSMpIKCapoCMtn8vArMp/R1VceRP3GR/VY=;
 b=OLGgtr4rHpaeepNywC3U0dEx2mYYymcEFo5GidgxKdiwJNJKYeTXEOBk4D393bdWG5RNiWprI2tgEgPvrgd24YpYrP+/caYtNV52PPrQdm3RFScEHmRj9tIWvPeajA3Y3/neCpLRTPVaV6v1CPrXO225Z2T/XUCyQIqaBqj6v7VU1+Lg5zyyDmF/Jc9qyZnwCyMtr/cbjuC6BvYBXoGZJoepVMi3DKyhp4kgZg39cllFjcDJrPt/Gnvdg0DOol3HtrncPr9LfdAwZrXifEdwGLMe5jAeupcgqhL7nwG5UYZgdTU6G+143oHtd6pLGqeaKe6jfuWMPoYhE6ZJSxeaZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SJ0PR11MB5024.namprd11.prod.outlook.com (2603:10b6:a03:2dd::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.17; Mon, 1 Jun 2026
 09:39:08 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:39:08 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 10/22] drm/i915/dp_link_training: Check for pending
 autoretrain explicitly
Date: Mon, 1 Jun 2026 12:38:23 +0300
Message-ID: <20260601093836.3057345-11-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260601093836.3057345-1-imre.deak@intel.com>
References: <20260601093836.3057345-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF000239FB.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::2bc) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SJ0PR11MB5024:EE_
X-MS-Office365-Filtering-Correlation-Id: 295ca38b-c23a-48bb-5188-08debfc1a0d4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: BQMT9+H147FLprbrv/fmafrTTG9HE8EtpjUpiXue7TEh3ObgW838PcuRg5riWZz0AiKYHLB6FLjQfW+L6TgTCKa/DD3QzVGmuwPdQ75n99qp5T9Ph5dvL5EpnE+4wOvGDXjs8JY+S9m2DMNgdO/YNwKcVpuUSNjkCw1MncUPVAhBQeZthpoelcobb0MTryKkVZEPMUn0b2KBfXPe+TsAX7qxU+AhZA3+fz1g9ygmA4hpCNwoqaPfcYne80eImD1Aro6/TcHOqJl7X2RVGbH1+TitOczkD8L1y6Hw8tSr2aFC06ZFXZ5v9259Lp3LzxdDXvt5ImabKzqFKFfyHSSlHu2+YRVsA/b9YpNmrYmTrWW+I210JsPCRHPKy8pvhvKpzbfRQYlz1zYc2LjLwMmcw0Lp6LdQMYNfnUpxPr0NB+Y91Io4nD/UdYuq20TzouUihZLcHh+Nsrw9qRoByR02nz00vvUpKOLDgLqGNoyPW4qBKbxgS0nQh239lBPfib2usNoT+CDRjU764t3DaLXL3N2a4dOrVtj3Mv5Opzm8M5ERsDq6GiH7VtV4pZd9oel8Wd3x4Tdh6vHBWBhDGv3/c1/7p2+Yk2Vn88AfGp2dUI9PcmydUbxFB2Y1SOz2MPigtMN6JUhiR6Hu/nIXdr7nbrnaJA2drLN/ZRUTT1ycE4YWNnXApAMrVzfofABb06Qq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?OSZ/WLzwFiomTPxQQY85UGxH2DNX3ST/BkJU5XypPX8AHV6yuq1WGiZSyY1Y?=
 =?us-ascii?Q?VLTRMP1B4Ppzcmkr0gfsCXcztFCgX/n42zcBWd/yy7zudODAQgdm7NUmYIGT?=
 =?us-ascii?Q?a5tI9Lntm18A2Kmk1KPww40DvBI+d5UDR58iStl6qaLUq8SPVDxg85GNePiF?=
 =?us-ascii?Q?6Lgnmr1dZJKg1HNPwbz/5ti2NZln6Ca/X9nKBd0c7pkxPQ5ZDJoVbpxww7ro?=
 =?us-ascii?Q?d4J/nY3N/iXgr2yR+3jQxrsuX27w7PbjVrRqO/jAOELTf3mNzJAUw4KJ46ru?=
 =?us-ascii?Q?mO0OKPN4fImW+BFYpK/Mp3qJB58K2nay2n6cVq1rWjOMIRScr/LrsDkObieN?=
 =?us-ascii?Q?j0TxSbORlMOwBmKpVPgRuPtJmaUBuvbPYTEeGpqjok5ENULnPTndvn5WMcJF?=
 =?us-ascii?Q?uBYcolJjxTUVgcd1GeiF4JMSlv1lzrJo0Yu5eLMAhQKHVn5c8CwJIZ/4eST6?=
 =?us-ascii?Q?8G+x3bgcsNH4LyQUBxrq1Co6Z4dhdCsW2yFk7n4iXUpGgzt184cBtoxnkO0t?=
 =?us-ascii?Q?oMa1cn2XD9CKUTg7d24isUYgSbgUVfzyJN5rIxSNZfh5FLbq7OAOzojma04s?=
 =?us-ascii?Q?rFQeN4G7dQSaE51BPZGrUzjqWxgDEg6IeOEcVnL5xivMD6wibtjc6wvYmvu+?=
 =?us-ascii?Q?rEIvSgy8CGTe2k1uc05flLjkS7DW2DuxzU9LSsddta37BSbkmqxaNImr1mPT?=
 =?us-ascii?Q?/zC3kKV1u4pWt1RyADZbf2Oug6+qJcfcek3obwxU+b231VGJS//bq+z1zoJS?=
 =?us-ascii?Q?gwz1pJGCBQzoEdJM75S70XVtFddxQlYRLl0mRBCNkI1H8NODCNfMR+Lf2OOV?=
 =?us-ascii?Q?WXmjfLrkSw31IRQMKtfKxzzHh075ubqZkgNOjYYjoty7pDMVbISz7fSlYQi2?=
 =?us-ascii?Q?mPPEvlrlWwr1GzN0gyRfx7HHDCKIDz7muTYVeFcBST7SwMSxzEDVjfHPJf5X?=
 =?us-ascii?Q?70h8Qu8J1YHQGzvACQoBeATSL9XDX55F24fMh6CILMdjvy2gWD9+kdWCJ46M?=
 =?us-ascii?Q?QMEm5VIC3m9QlfdWXUkmc01ziohmPNwFYB+hIlov/HDUjv7krXZOzfnvhW93?=
 =?us-ascii?Q?QxvxLHv7ffItQNPswRdZa0K19ucFXo3jnXNTkJzUT+5FBvj6tmL+OD34w12Y?=
 =?us-ascii?Q?Y4v8baMDNFW00ho0kTiA/VgJlvFVRGp6uAugEBmZi7B0e0fjihHlHzChlqGg?=
 =?us-ascii?Q?ltRtD41Q2reZQ8mhrZIF3s7NBmVUEzKwutK0na9BZ1VyLtxLWMD/eYg9JVnh?=
 =?us-ascii?Q?q93fwtKt0D5tFr/qN+Ums4kBEGYqWBD9fK1D60aDMxc+7DWKGeKvxDh4qaDj?=
 =?us-ascii?Q?yU3qdME8/q35SyAsYY6FQGleUUNO37GHdl+VAxQ/wgku878YWCNcxNXu14yB?=
 =?us-ascii?Q?Y+72Tjb5yCfMi2rMC20NQPGzK7wfDHgPhx0luojl6uKj46V4g8JleMnayB9R?=
 =?us-ascii?Q?QaQO1F3wdSzSbmnlnCPEimREOaNKS1mP7PMFyKoXgfqknZPmMHU0AQdbGpP4?=
 =?us-ascii?Q?bhRLt7cWJaUfyFzzUhd8UvsgG6uSzFedsrDOPDdRIwf0+aUT30qdAbdBQp+L?=
 =?us-ascii?Q?rc74mMcBEaQTHjCS4IGBhpaOjcsb0E9yta5YrIZ1Jc/z06UzhgmWmYEYP94C?=
 =?us-ascii?Q?UOkeRFp4I+58eF0FUmzNgPgX1bpy599F8X5eFsk4mKxMps9sa20Qz//qtAqW?=
 =?us-ascii?Q?EHWtZdaIPNbb0A/7P/sn0mGyWecobDkPQOlD9FKVU+0McHfRwB+3tNAVjrD+?=
 =?us-ascii?Q?wtJadAbFgA=3D=3D?=
X-Exchange-RoutingPolicyChecked: AQ4sKpzjQrGsuGUY9usEyXyIlke8DIB7FMVd5aUs93Na8lt4/mIDAYZEcxv5Am1L8uP1x9vqohGHyyxhZkesgL1DS1nWCHIVHuJLnTKpPKhNrZr8XGsuylaO3tx9LWrmv0HhJBPdtfvIh74fSp2o6E5fY7onILVGcEbtCDVeGEoG7pxZmZqnoKkVvctogcbDzvbBCmeEEskTEQTYG21OW2oOCFcvDWzjX/VGDaJ9H/TalCQn9pDB81nv5gudJLBszKALNBaT2Tyejc9mZuCZY/WHA5DmiizyPWPXI93hiaX7prg+ajAIuEfDODBAL/+07y2Sg67mb7eFwFxJD5BXqw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 295ca38b-c23a-48bb-5188-08debfc1a0d4
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:39:08.3128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: f5mAo6gGVexgSwz9MPVQ9kIE+V5JFIVzqyWuABsy5Mxg9ovyqoEgVltjwjo7kJB4Mpq1JGKqGB6ZdBwlCCdyiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5024
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
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
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 0F7DC61C9AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Check explicitly for a pending autoretrain by matching
seq_train_failures == 1.

This makes the actual condition clear, since at the point where the
counter is checked it is also below MAX_SEQ_TRAIN_FAILURES.

This also prepares for replacing the counter with an enum in a follow-up
change.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index f03e05c730a25..cbac9a70e8d5b 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -1305,7 +1305,7 @@ void intel_dp_stop_link_train(struct intel_dp *intel_dp,
 
 	if (!display->hotplug.ignore_long_hpd &&
 	    link_training->seq_train_failures < MAX_SEQ_TRAIN_FAILURES) {
-		int delay_ms = link_training->seq_train_failures ? 0 : 2000;
+		int delay_ms = link_training->seq_train_failures == 1 ? 0 : 2000;
 
 		intel_encoder_link_check_queue_work(encoder, delay_ms);
 	}
@@ -2006,7 +2006,7 @@ intel_dp_needs_link_retrain(struct intel_dp *intel_dp)
 	if (link_training->seq_train_failures >= MAX_SEQ_TRAIN_FAILURES)
 		return false;
 
-	if (link_training->seq_train_failures)
+	if (link_training->seq_train_failures == 1)
 		return true;
 
 	/* Retrain if link not ok */
-- 
2.49.1

