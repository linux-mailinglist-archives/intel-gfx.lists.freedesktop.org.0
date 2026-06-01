Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SJG5A0ZTHWp/YwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AED5B61C97A
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 11:39:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019CF1130B4;
	Mon,  1 Jun 2026 09:39:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LvbVSa7A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A30D1130B7;
 Mon,  1 Jun 2026 09:39:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780306755; x=1811842755;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=P3pXZuwNsJQIFV01XsCgcABU35PMDOgCD/WYKn8M6X0=;
 b=LvbVSa7ATNbHGQVoyz6dR6Znispz77vFSGVsa5d7c62SaXkGHb9kC5qg
 YlGot/o7ZoQZaBkjtyIllucPf7u8jTaPkvdZJ5yz9o61aqFU1NoTVB4SY
 u4JEjgmYzzmf68kPpJd2XXq77iL4YOmLmvN5FEGo2pNupG8gJtc2s/XEK
 PCjBkuM2H+3DTaR/JsCjg1bplnUI7W8OwfOHbZybyFZlTtvgBmeqvBD5W
 m+p3sRWtMC3C2nk7L7dDH/6IfE+fAwNzulC7N/petjPt19g0TfuLZRaPb
 q9/yrm//6LJhHYwJnlF2Gfa2QriREzRBogDhSOByZ3v4u8a25z8qnViPc Q==;
X-CSE-ConnectionGUID: UysA/VRqTruXOCDmDqwrgA==
X-CSE-MsgGUID: W3P16QIxScCA8tYn6BuGlA==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="84688052"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="84688052"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:15 -0700
X-CSE-ConnectionGUID: 6alEt23IQeGJ39QXvVJrSQ==
X-CSE-MsgGUID: wCoSI7QJSICw88gAScJNAA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="241010699"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 02:39:14 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 02:39:13 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 02:39:07 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Jg+rJmEOX5xssai+o4Ee33hL2H5wA58cUbnArUpNpAyDJoH8e6eoFQXXw9xXAOA7rCQPrBcSGv0thbAntBG/eh7gIffEx0MAfI7aXdlX0aVFgWaWN7XyLHVzmM3xLT+CvuCu/oJeyC1c0o3osYpPU7JPzz76ZFVFXit0aCiupuBPvE6mCGbDoxfr92gAZsL3+u4+Qo927CADnkYnxRzP4I85ri30sI7k9iWedDUiJBqCmaSx/klP/jjIDfVRIqAaAY8anSS9aIhSepiB3zXZ4KDIuUVZmtY1kKezghyLYAla9xffRzBPDOrEZQQv+pI3LV6mHu4XhsdieR07Z5qmjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VLRFI1iIojvr8CXtyCbBfr9i0/jhBNa3I0MQzmfAj/0=;
 b=ru4TPoORg5aIo7X9dODGIXGyApudiNDeQ8KGWu5gdQR0SpJpT1sDrG0SoY5mQK6AUe8ervApK/HXMaUvdNmsurInUF3A5YUAiaZ804ZdTOOyldvNjKScfnrCiqyu6ngcun+00Nk3RiP0Rx1ki3ieh0TqLI0LNW1MEKAMAgOzH3XmhUFAxxTGzMwizoNuXlJ2t5E6dXIM9sO4pCblT+Jo5iHUEPWKOM4uXEbwN2iRmKzAG7CpGNXN/T0K2IlenVQTLlqfO8XQToWhQoGegs44Kp3TZKgvf/pStZOijMigJJV3OX3aHuhdFmNjoC/gzOxC3QrfudlQtvBDn/tIKflKPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by MW4PR11MB5891.namprd11.prod.outlook.com (2603:10b6:303:169::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.16; Mon, 1 Jun 2026
 09:38:57 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 09:38:57 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH v2 02/22] drm/i915/dp_link_training: Factor out link training
 state reset helper
Date: Mon, 1 Jun 2026 12:38:15 +0300
Message-ID: <20260601093836.3057345-3-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|MW4PR11MB5891:EE_
X-MS-Office365-Filtering-Correlation-Id: dd064a33-90eb-47d3-adf0-08debfc19a29
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|22082099003|18002099003|11063799006|56012099006;
X-Microsoft-Antispam-Message-Info: ZAvjYJ1asb6CundrZVigRNq6V2yKsEBun0Zt8QUdcPUAh3ufbdnOdbR3Xn1i2W68WOVwIYhw+XmZ1ilO8fp8tgXMgB7dlCuegV9kO2Pqb+54IAKZfUfrf9SGCby0S+PaCX0iHPQs8y4G6WKTU9fFkNy0jN8uegKwq6fjrXYoppiy7SKFIoRYMGusencTP+IHMzTYKdvEHjVMRWzEwjfsr8UGI1OqB7e9a/ifrhImeTyHbtWvBpSxUUDsMuLQR4XHcB63B88e/i7MNwzGyZDVhaxv6drB/vcAZx0yt/YWTGWNkmnyMVKuamjMckVy5UOXOGzCETHSa1/JVS/vfOc8JPxn4ITaUmAh6VxBP4UPjNgUf6hAso+bTGgSWvKueyE22ml55ePy6VNC6wsTv0iqhs5rKSCdHmWhVVTI8JybVSDzSrcRwELKc1wV6Zu8XhycboB9ausDyJGm4BEusuyIMtGQtI0dE/kuAmOrz12hT9XapMwvaxErQ8eJaHLIp02AuZjyRw+uR38Kn3rSQM/svirj3fyOstTgnAp6MjASGX5pzbSOV+JnF7tlDgi0lfcR/E5aDaKyxVqtkHPjplHS+ve+aGWyaPi/+326wHzBMtMYVjiuHAlyl1jUaisKHCMO/dicMe4MBlk84XoJm774HZlBAplJTDCuGBcYlXM/1IOP03AxVa/BiwpYpb+a5BbX
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(22082099003)(18002099003)(11063799006)(56012099006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VMjhFjVIELdCBvJeeNabc44wKM2Bx4aLhVABu/yvjuPjqgJNClw82UG6tsSA?=
 =?us-ascii?Q?oWAH/OPC16Vhi1ebpsgra+bliuBHVEct3/ZJzwf2QoLLYEt3ryrzJCwFRm3/?=
 =?us-ascii?Q?LCjpvKX4sp0Ebv8lR6ceyGSz0RQXLnk6/82IgtZYst59A35Xru09h3XUgrG7?=
 =?us-ascii?Q?Blsf0yK0ZqO00KfpSXrDEI/xPst7d0ofcsWm3CGA/2zXi169Kag2qYst3osh?=
 =?us-ascii?Q?AVWjMwT7KSVdCXQrbGTXaG5mpw4rkYUu5yPXgfS3vaywVcXMZFOxgOFmz2h+?=
 =?us-ascii?Q?q2aGvIsfXzOP5DXUJc8YX3+PaoYo5QZmcGWEk9sR/l2g/Asb+HwL+7q7lYVs?=
 =?us-ascii?Q?j4M2ZRsJO1Vpb6DnfAXlWz5iAdHiVDzFP8ij9AbIpWN/nj9V+OdHabOBi+Sg?=
 =?us-ascii?Q?eDE3+ixyp/Lf8XbcIFrTCZ0fiufsMMDlBhKFlCKr3s6IQbhTXr/NdZTb1Iep?=
 =?us-ascii?Q?SRf2CEfyAB9oi2Ehl5Oh69mUhAr1fVu0PsdL4kEmzH8NRMDRTIv7n1OnQZCk?=
 =?us-ascii?Q?zlMGNi812IhtJXRYGFF9hJZ/2eASblUKobkhYOnaBooQcixVOAFhMcL8r0Wi?=
 =?us-ascii?Q?DzwW0fTCaLCkM+CZtN49soqmA+449dCd2qpLJLZT+pSYGma8PPS09hRbjO/j?=
 =?us-ascii?Q?8HYtZV7EbGUl8Qnqp9WlDQHW52ao79jjvCnxYGXybejXyUK5mRtYObWo64Dm?=
 =?us-ascii?Q?zPZd++3qa6iV9veMCW90xUA0ddbh6Vzk/Eqgy5sJpX20B0NvjBWuSV/wq8vt?=
 =?us-ascii?Q?5b136jJvG/QTJ5xJgJpEhBmOQPzYrV0rliS2wrJVARHnfB/zDxRhMZ1G/hNE?=
 =?us-ascii?Q?es+ImC7pc3acwZ6c6jeD8EKvgC55Lt/yCc0pWmadFbzdmehv/Ahj4RHURmJ5?=
 =?us-ascii?Q?aJK8KQrdOUnwA2pIjxqhtznz8NuSdg9AZyxq5cpxJk4Cm4r3f0MF6EOVY8s5?=
 =?us-ascii?Q?iFf1aweRw6husBTW9MsYj6V/a16Dc6kW4KLhd+FO9yOGOtfMTqx4hwl59tGi?=
 =?us-ascii?Q?xRrjWhHdpRX2zWR7UoD7VbSWbATwgXGkA3cIwTlLDpf4zUi9s+zXldZ4IpUz?=
 =?us-ascii?Q?/v6DtwiVtyhFq7JvjJODgFjVdIQjYIUoK1BPzIvm7WqWsKBceeT3hdyRA45O?=
 =?us-ascii?Q?SOjkG3tsoNY0V33NCU5s5R4/Qspii2YPSE7W9atnyV94VlvavxHn9gjZipax?=
 =?us-ascii?Q?L12hT4z1nPUii+2oDAeiejJ5eb5Yqvk/nrOGQa2vGNjdpEvuWyXL7oH4vPvR?=
 =?us-ascii?Q?9Uk41uDLKdVub/C2Xy7CYnIhAuzvK2iKQmruCoDeErkdzbp2/mSONCXkjvUW?=
 =?us-ascii?Q?YoZg1LMKn7Vsv9ZB8D6xrl/jDj1ZQc8dVVh6EpqxkBxK5sr0mnkOknPxDiUh?=
 =?us-ascii?Q?35/SN9o85ivKriYrLN70RQ9uOAbS6dVour+hKMv0Er/vUM7IQjpADxWI040D?=
 =?us-ascii?Q?5XVNc2wxaLfwpWpa1JK21OnAhj9dG6CC2RrsWHM6/faVm66JzwKgs6lUERc2?=
 =?us-ascii?Q?VX5KNwgoHjUqw11lnHWqGTdX9c2SbhtFturOcQCtXhyFY4Z3YUQtZgj+jc/k?=
 =?us-ascii?Q?tFfOFfog7iDKLf+m2gvLO472kSCPueaqhuc/nDRQvLXGBIHmweH/jfu83UjP?=
 =?us-ascii?Q?vUJw/iSRdnYCCz2rYWYZl9WDWXv8u99120GIRybtioXegF5PH7Lws3g3HzVb?=
 =?us-ascii?Q?hrKEvvivNkCNLIT6DERkR/L+T4HFlMVM/AKVdUxvwFKa31eQ2EHah4ZeDuEg?=
 =?us-ascii?Q?u6LnBZ+QHg=3D=3D?=
X-Exchange-RoutingPolicyChecked: kdzcs6Pd/SaXMhb6M0Xke9tPsQZTBfAAQ3PqYEpMQq27SSQnD6sVdpVqzgRAkI47Jy6K7DaX/nx7Vm+9ewallNF59nCLu63dh5CmnuBYUMWyEXMdv8XH6PILo+3bUCRpr2+o3gt+bWXmD2FS8lKO0bXdRR8hSUuSivnD7Dp3PQQ9mDkLXH7LGEb5aTwAk928a4xFqlv1QapgOHtB2EoasE7ia0Kpia3NXTHfnzl3ZGkAo1bMk7Hcrywg+qbgsgU4fykQLA9pWCDfJ9hxJ5oXZvu5qq9vLorHBS6pT488Edi+hdEj1R2InTz9F76JLzadq0/OcEdBSiR4nKrUzZuEZA==
X-MS-Exchange-CrossTenant-Network-Message-Id: dd064a33-90eb-47d3-adf0-08debfc19a29
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 09:38:57.1659 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0/j8YDk9lvJY8z3Ghya9DinGlAEMdMf0WPuCIyb2aPySqLKIQfmhHfPu38ly6l3vsyC6z/yPtvm7KmTMZg1ztw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5891
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
X-Rspamd-Queue-Id: AED5B61C97A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Factor out the link training state reset into a helper in
intel_dp_link_training.c to prepare for isolating the link training state
from the generic DP code.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c               | 3 +--
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 ++++++++
 drivers/gpu/drm/i915/display/intel_dp_link_training.h | 2 ++
 3 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 7a9157849159b..1bbbff0733e35 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3775,8 +3775,7 @@ void intel_dp_reset_link_params(struct intel_dp *intel_dp)
 	intel_dp->link.max_rate = intel_dp_max_common_rate(intel_dp);
 	intel_dp->link.mst_probed_lane_count = 0;
 	intel_dp->link.mst_probed_rate = 0;
-	intel_dp->link.retrain_disabled = false;
-	intel_dp->link.seq_train_failures = 0;
+	intel_dp_link_training_reset(intel_dp->link.training);
 }
 
 /* Enable backlight PWM and backlight PP control. */
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 9ab18cc806397..eb75819a85c05 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -2238,6 +2238,14 @@ void intel_dp_link_training_debugfs_add(struct intel_connector *connector)
 			    connector, &i915_dp_link_retrain_disabled_fops);
 }
 
+void intel_dp_link_training_reset(struct intel_dp_link_training *link_training)
+{
+	struct intel_dp *intel_dp = link_training->dp;
+
+	intel_dp->link.retrain_disabled = false;
+	intel_dp->link.seq_train_failures = 0;
+}
+
 struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp)
 {
 	struct intel_dp_link_training *link_training;
diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.h b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
index eefc6df8bc853..c9a1ca4557f46 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.h
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.h
@@ -57,6 +57,8 @@ void intel_dp_128b132b_sdp_crc16(struct intel_dp *intel_dp,
 
 void intel_dp_link_training_debugfs_add(struct intel_connector *connector);
 
+void intel_dp_link_training_reset(struct intel_dp_link_training *link_training);
+
 struct intel_dp_link_training *intel_dp_link_training_init(struct intel_dp *intel_dp);
 void intel_dp_link_training_cleanup(struct intel_dp_link_training *link_training);
 
-- 
2.49.1

