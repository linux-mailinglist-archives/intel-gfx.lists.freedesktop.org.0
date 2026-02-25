Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +B10L3snn2nmZAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:51 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C18419AE95
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 17:46:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 882B510E7CC;
	Wed, 25 Feb 2026 16:46:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OAlgN34s";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9859410E7B3;
 Wed, 25 Feb 2026 16:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772038007; x=1803574007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=W9S77aTou7yjIxSAiCkgVdBRAj6T6FSXIpK6Hu/J+ZQ=;
 b=OAlgN34s9ZHhRNP+RjjhFvT7mY0DXM8lMB+zNqXyEYVU6Tcpn1Pd7dcl
 ikkzyc1Dsg8v5OXWcw2FL7RWJVflhBYNI09DRPtfc9dQYiSrpuo+NpbQu
 YIIr3yNjG/3YMf1Y4Mcu80AlLy7edjsNE96eWDuAgAWE4uwT2GJ73kQ9Z
 dt4fL7m46iOB9ef3YNagfrRO6GH1g79oDH1qZkoCH06Kr6Oc5EhUXty14
 78qOlxYts+0YAp8k55gJ/erp9P2HEmDUVU8GesH4ijQuQR2vm+x6Q0cz1
 ho7ILKitEfMBppRhIma4KqKYTrS0gH7LbyU9kDgrLZP67/sIW9Zv3oSIu w==;
X-CSE-ConnectionGUID: bVNitP1ERkaZ79dpm2E+/g==
X-CSE-MsgGUID: uThpZG6fTMiaPwhSzx39mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="83707095"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="83707095"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:47 -0800
X-CSE-ConnectionGUID: ykBx4CJJRzmZOjW1Bj60yQ==
X-CSE-MsgGUID: Hdn0P3zYR++hXFje99kQWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="216173012"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 08:46:47 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:47 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 25 Feb 2026 08:46:47 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.19) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 25 Feb 2026 08:46:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wtga45rOy4XCl65apYozQA9YRkv4vSP25inkQC51vPh9KWNTNRNsuHNm0wnnQVCmhsYxz1WsueMIZRvUndfwJGHw3pbf5LxO9RH0lrab93ROo4kUKFl305N3gpjmpQrAbpPbQRHDOnX0+RXVdU+90BJX3Y6Zjhxdmr5aUVqtcj5uEFbSj9WCVpeNqkv7WjjESWgc7nchm690KmNwdrvvx7LnMeTkLJlSDJmMxsysTlEkbtRKadx3zSdKVsxhCcLD58+TxCaO750CcLzNVXkSg7aPpGI5Nyl0B263i8Srf7O/cYS+Qh/9Z9mFUqdOtif/9VLwkkyVqPwZZDH9Brn27w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4D5FH0LjR+RybecAb63FBnoCMZDHagKRmnDTBxS+rw=;
 b=yLuMOLEJKzFSgKvRvBlSjtoYj1d+oV/TRFS+vBCZrrizpSMsxnmnA1kd88TDXeNrDMwpJdc8Y4ee9VlgVVaVrQA34X+EMaXxHm1Ro8X1t6Uk99sJyZxgBV/tH4vttxpvAJ9U5qc4lyxvTIAObvetRL5/A426HtuciYa92IZsjaIw2gHK+KxdM3E9uN97TjUCEkC832IecWgzB4jHG12k/hnUX0I0YEIRWUqLnrQ003kLIuGXRLgsUD+JTV85+ZkoDcO6gKM7+ZwEmIO/QPQ8AZiSoUUYGQOJS+DW8fig1/nWyzWBww+XcOPmHMEiicEQTrKk0/IYRhiCtt9Yaqq4TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA1PR11MB8787.namprd11.prod.outlook.com (2603:10b6:208:598::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Wed, 25 Feb
 2026 16:46:44 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9632.017; Wed, 25 Feb 2026
 16:46:44 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v3 06/20] drm/i915/dp: Handle the
 DOWNSTREAM_PORT_STATUS_CHANGED event
Date: Wed, 25 Feb 2026 18:46:04 +0200
Message-ID: <20260225164618.1261368-7-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA1PR11MB8787:EE_
X-MS-Office365-Filtering-Correlation-Id: 98c8aae8-57d9-410a-53d0-08de748d754a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: 8+KezjHQX/nGfwqB0+swHNaN/Bmky1JSL5hNt4u7GtKh+YCtDz0DEVeN4SO5cJ0JDYbbN46GSpEjWp8m7KJ6vUVpELk6uw+u6scXxQ8wYGgNUU5Jzl+g/smqYXuDvoAyqAuPs12QmK1hacsl2v0uLi9hwhi90+PV5UtfintD5e3N8fim03G6wgIdQNetT0vFQOw5l4TCkYwSdzXqMpBuYfKwNr8PCnMFjd3WOtMug6F/N8TRFSRUXm89V0Mv1BD0LbVv/ni+VH+oBS6idE9wvvYtXviWv7WnmccIELDFxXfAd2CCsM2U3NOx8kSQo5Nqxp8kIb/WQ8JyspBT0l1H/tInWYd3/FJ1Mgd/2pwyv5tBTBUnA9LSoWRGV2xfctEFRRsjzYNmm7eIgmExYBhJ61a9b7Z8xt16OvaFc7cqGmu1Aq/NYiLmMs31cQ0dup666lIOU6qV6Uuu5GSK2RLHslKJkQ6lVWd97CN35+qkf/cFLK1I2FYFrE4ReoPxIQ3HkEMFlClcCrhMq0NVQ27k2Hd5GvNGKQRkt3sk0hu8/bag2vbKurZ7RWUAr6OSC8qA8/3a3Inu7Ofh/ExSHJ+QnX0nZPSJcMBf9PWz6zqQZx82srdaM8vVDa4VMTZtYNnjMU2CQmKUVt+Dd1UgqaVvDB5uGIhb65Dd5gaVuLUVDPx0W0Iz+u+yNqV/I2hgUvcqJZEY8lzY3M1+9BVq9SoePXxUAmjs3GXt1Wd7lYSw+Qg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bGkLe7AuaH9ICcdz5MMMvQPzRBh56tFT49oMwMLZtbXFEn/lSg9yev2L3Faa?=
 =?us-ascii?Q?wG9ibRvsZovJ4a+KCSIifFUDgxPehxKbyXA5ML3JYvVPMgKsIPx4Kz5a/d0g?=
 =?us-ascii?Q?o8oB6HHGX7qshmYI0DT818+3gKxOcedojpbgwXwEH6S7ISf0E22k4IO6B4iu?=
 =?us-ascii?Q?JANS9bxLUqnfYb9sfbBAWK7e2H3u9SjM93uE9oiea/0rWIbiRPlCWUMs0o9O?=
 =?us-ascii?Q?04HTnvStasbxz6gCPSNBj6gM/CHlKYgpouiA5ajobledFli4O5pD6yC2I0wf?=
 =?us-ascii?Q?dgX2Aev38upO0UfFM1hXRjf27pEJXZIxO5xuL9rgPiF0dsnDLiGh+T0ZpG6h?=
 =?us-ascii?Q?RgdVi7jCOlc9nOM9jAxiv4TofyKsMGuaAztjgjYq7AYzchmL5HVVsDMv3g7+?=
 =?us-ascii?Q?91Rqmktpx405pO3lvxSedBRz2hRHHCq62pCOycf5Pvc1Ym5wca8XsLt/DPnI?=
 =?us-ascii?Q?8LR1QjOSKs9MqFViGIDMiSdEAXkxH0tBWID36au00WGAAp/n0qYpEoRGAjJa?=
 =?us-ascii?Q?5YsYzhrQpQREPoRlJRYLeifOPf84eCI7yiTWK8qDe8ujIwOAfXDNWo5THZkR?=
 =?us-ascii?Q?lrYXS2A2C/AxaboFau62D8EfoYcskbLz5OBYdWRm3DNroXCOXLfpn6yL3QVy?=
 =?us-ascii?Q?vnl978htf9FTolm9LUpaVtyOtaa3KUlWq2yaa1PKUUoq0ar5vx1WQaQaIvHk?=
 =?us-ascii?Q?TIoxopwgbbNcpRaSpDORaGT0V/YvoRj6FHbwG2WfM5aUS3I9qh3tkebHKQNH?=
 =?us-ascii?Q?suR7NiQnWGzQ1Cxwln5XcTH93suMdJn+QQdaAF5+wQNZ/YKulVBx0kA7gRTl?=
 =?us-ascii?Q?qiPOcnh0kcaxEIUQTwmHxCNjnayDHLGTzO6fipb7rFHyOr9tyCxYMdn0HR5m?=
 =?us-ascii?Q?9gS+jF+CPKK9AsP59cPQraXipGtFitHNFXlZvmP9/LfTCE8ynsfBa1tlnEuc?=
 =?us-ascii?Q?j9xTNzDdLgbOhxah4EjNXfYd2evJxGw8IUGrvqduVRRFI0aokeJPPUG8oyAW?=
 =?us-ascii?Q?GNttjX5Fg8B8q69TNQeewh7tfuFu1BkN11+LybF/2Prul8bqWC46cjN42xN0?=
 =?us-ascii?Q?oAL7gzyvqKXVURWSDiC0sAsoX2ROVlPEPVbTXumpZCIAjSdNuW0YLWZ6IK7v?=
 =?us-ascii?Q?wvXME2LhtNjyrt90PAuxapxIaVzG+YKSIhZEtrJ779jMl+GnIjhaEsLMzdBa?=
 =?us-ascii?Q?QSe1AKbn0aN5P1XZIoyIfl/ZNoggDaJwNuvIYaFPoaaXRWiKCOc2KAa3fG1H?=
 =?us-ascii?Q?HvyC2rGA6tJG1M9R1MBurS9BWmIVDPtp1Qv9J9t1NlxV03W59TMWufIbYZFM?=
 =?us-ascii?Q?vwOVcx7IsCJYfHpZmVM9IOmDp0gmsr+kMBiYfOts8J7lJV8/FN2QYcrdxAPK?=
 =?us-ascii?Q?PBMHIk/wLLIWWCDsN1Ob6LKdtF/wUsCls38cQGyCJ5MJxHPU3VVxigZwb4+6?=
 =?us-ascii?Q?TduPu5x8Gz8aYm9pR0p+8rMJ8G+1SK9wRoB92wxuSzIRwmTd1vNL2FhutXWr?=
 =?us-ascii?Q?/fFqnyZ0ZF912XIm6hZvfj2Ct9FHQ4hzZ14Zfnx+Z9SmD4pXS04B8feFL06L?=
 =?us-ascii?Q?uGgbjCFV9dut79eOSl3lGy0ZUP4PeAPGSH1Ab9bMv97MYla3cjU5urwHhLzm?=
 =?us-ascii?Q?I8gUtmFYdMvv3Y4lKGLaSPFSPAKFD3MmOAPqA9kCIyUZ8HB494IPmCqLr2sm?=
 =?us-ascii?Q?oX2mmPVhahiPj5aAOAG84mAmSZar0kG2F1Piga87zU1wo9FsJIdj1W+xXJZs?=
 =?us-ascii?Q?7pyHWpAvrQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98c8aae8-57d9-410a-53d0-08de748d754a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2026 16:46:44.2234 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9bsU9W4NtLrLdEGVxiEvBTWi512gU4lrRBfrkF75zvFTx0rK9kS+sbY5V0fG5NbAep37/GwdjWrdwKhzqNFw+Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8787
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
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 4C18419AE95
X-Rspamd-Action: no action

Handle the DOWNSTREAM_PORT_STATUS_CHANGED event a branch device can use
to indicate the state change of a DFP connector on the branch device.
The event is signaled in the DP_LANE_ALIGN_STATUS_UPDATED DPCD register
setting a clear-on-read flag and triggering an HPD IRQ. Accordingly keep
a cached version of the flag, updating it whenever
DP_LANE_ALIGN_STATUS_UPDATED is read. Schedule a full connector
detection from the HPD IRQ handler if the cached flag is set and clear
the cached flag at the start of detection.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_display_types.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c          | 16 +++++++++++++++-
 2 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
index e8e4af03a6a6c..126682ecabec9 100644
--- a/drivers/gpu/drm/i915/display/intel_display_types.h
+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
@@ -1796,6 +1796,7 @@ struct intel_dp {
 	int link_rate;
 	u8 lane_count;
 	u8 sink_count;
+	bool downstream_port_changed;
 	bool needs_modeset_retry;
 	bool use_max_params;
 	u8 dpcd[DP_RECEIVER_CAP_SIZE];
diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 5f5e0145cbb69..f7f02ce5d1a77 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5543,7 +5543,14 @@ intel_dp_read_link_status(struct intel_dp *intel_dp, u8 link_status[DP_LINK_STAT
 		err = drm_dp_dpcd_read_phy_link_status(&intel_dp->aux, DP_PHY_DPRX,
 						       link_status);
 
-	return err;
+	if (err)
+		return err;
+
+	if (link_status[DP_LANE_ALIGN_STATUS_UPDATED - DP_LANE0_1_STATUS] &
+	    DP_DOWNSTREAM_PORT_STATUS_CHANGED)
+		WRITE_ONCE(intel_dp->downstream_port_changed, true);
+
+	return 0;
 }
 
 static bool
@@ -5863,6 +5870,11 @@ intel_dp_short_pulse(struct intel_dp *intel_dp)
 
 	intel_dp_check_link_state(intel_dp);
 
+	if (READ_ONCE(intel_dp->downstream_port_changed)) {
+		WRITE_ONCE(intel_dp->downstream_port_changed, false);
+		reprobe_needed = true;
+	}
+
 	intel_psr_short_pulse(intel_dp);
 
 	if (intel_alpm_get_error(intel_dp)) {
@@ -5888,6 +5900,8 @@ intel_dp_detect_dpcd(struct intel_dp *intel_dp)
 	if (drm_WARN_ON(display->drm, intel_dp_is_edp(intel_dp)))
 		return connector_status_connected;
 
+	WRITE_ONCE(intel_dp->downstream_port_changed, false);
+
 	intel_lspcon_resume(dig_port);
 
 	if (!intel_dp_get_dpcd(intel_dp))
-- 
2.49.1

