Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MN/0BUCu8GkUXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DC8485544
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 14:55:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE4BA10EC85;
	Tue, 28 Apr 2026 12:55:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="i2+0Nusp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F244D10EC6D;
 Tue, 28 Apr 2026 12:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777380923; x=1808916923;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=ik/vbYbNAjoO+qoKwD1ytihfXPLJ7wYejyH7/HH6B3o=;
 b=i2+0Nuspsdbl9mpKlDGuvaOQssNvffEfwFyc6Zl/a4lKVLwrU4wnVO6R
 Y3+iDq0TTtVdXi1wIBhPsG95CNWtA/iXZLkggwzIchw1VPtW2xA+yNwZ2
 ewwzbBERv5f1q9iBsTJVxVjhBnSQ/aaiebfOXjUHQt9yf2d399brsv2Iy
 dLUDgU/HjfaKeH33Od9ST87a4B1HFwCfVa66cffWALJ2YUrBVn13Yz8aN
 9L2tIrcYsoLll3WJmKWLkf+HPRmWFw9wxwquW49uYhyfQ0hJAmH1DMemC
 S4F0+OWJrLiufDhl4X80C5Fn4uNXUi51pS1K/Pwn9/rxDMUCIdXN0P27b g==;
X-CSE-ConnectionGUID: F/e61yEDQN+ibGPje6ANRw==
X-CSE-MsgGUID: zerpQPVyQjGW/Gh78ZNTsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="77318771"
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="77318771"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:22 -0700
X-CSE-ConnectionGUID: asd46luCTgiPaIBV94v0Kw==
X-CSE-MsgGUID: RqOIkOTyTcGjdRXxgrS0gA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,204,1770624000"; d="scan'208";a="233818225"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 05:55:22 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:21 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 28 Apr 2026 05:55:21 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.51)
 by edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 28 Apr 2026 05:55:21 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nUBxStvguiFx+7KFDKu7n0ZuGlH7pUJ0kHmZy3AxFbzEQwYWcQ39EoZZA6SCGVC55K+JPrcJag0yBRWyPbDlaiPx4ZSZFZnU5xzGNvC6sNuRYyU9HNxLX8Cs0Ycfbms/b9OnFUdjKK+4vpKtDqo13B3VLZTKbTPRS+Mq07LwfITFs8PdlxaThHpXb+jLa/OjvBALsGo1wdKNpyWxAb2OE21mnAtyLqNh5SkG9qCMhQ8Jq4KcijRLi+7i5VQdtSuctwwwo5E9R087TZF/X0ro2lW2tR8P2zVEQQVqOdDFhHRwHRBun/s6Jgouvxy1Zthtrx3mKWSz0gN3s2m1/nZqGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=k9zmWB8cXi9x59pL5ACkpTfgQ8GQJfYQOnYiLU1Z/+0=;
 b=kKiZSeX41n8+/WcQzFoucpJLK0O8RAUItsyvmo6dSeIWuGCcHsU+D34omeLUmW7LLbY3mDLg+8AeolQzc3L5B5HA0hPzH027OdL9kUYd0lduQYfqLS5tIN9K5Putri0mDY76KsHSrsyiClPEdbjpx1d0tExO/4OusQHmZ0PDD8I0NxR5Lp2FSUEN3QI4MHhKbcnhEEI/AWH6dpJ0ujWpkGjSzV+aIviMAfo6U1gAlhFjROOabK7+ep50Iv7K1FrPz+TKDep11h7FYrVdQlCZW+/KKwlm8qc0bFSSGozyATyWGQS43BTynLGfpERTZRCjCgskn1gUPC389IJFtfhZww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by IA3PR11MB9063.namprd11.prod.outlook.com (2603:10b6:208:57d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9870.16; Tue, 28 Apr
 2026 12:55:17 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::9ca5:4d1d:db45:f523%5]) with mapi id 15.20.9846.021; Tue, 28 Apr 2026
 12:55:17 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 082/108] drm/i915/dp_link_caps: Simplify BW order pos->config
 index array
Date: Tue, 28 Apr 2026 15:52:03 +0300
Message-ID: <20260428125233.1664668-83-imre.deak@intel.com>
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
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|IA3PR11MB9063:EE_
X-MS-Office365-Filtering-Correlation-Id: 5cff176c-a04d-491e-566f-08dea525584d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|56012099003|18002099003|22082099003; 
X-Microsoft-Antispam-Message-Info: UDo3UhEsP3ejAY6TUB/404Vxnts6yXSItLMiDB46af7J7bZbH+lPDMqG+Vhtoek+inQgxOEx4GXfwLO/MvplaOp/RDj11vtQmtRTS/RftF5JV7AxmXo11tCEkSKDjKNQfyssAk8PJEb+i5r6dzK7dGPCUKwKzOWcKvmvJVBhrCo38gGbW9/0pJC2ukXl1KGoqr1rvpGR9U5qR96HiKQOCVqSgImSFWspn8cRvQpBWhTQx2m1JA9ZzEp0KQ9W+hKX30ttG2M2UgqzzWGrLkZZpHPtEFALPOOnw2vvajQMkl9hgGtoAnnPIeoPThXgGJv4rVPzz8SPjnLF6csCjTucybtd89bwGo3izprmXOjIoskIA7JGpdE1WfS1ydnDoMtZKsePPuG0sj7lt3Y7xeEnY2WgDr3ACa79XWLXQISEq3oOxJmCZoTN1ftk84d1eFRijnvxrbjVAqPGNLHtUQxNvlhS7UakAblbTWJGjs8mivHAuW/hySD/6X0PipxExDUtogqnp5lHIbGOo7UBxyUVSsr7yuZMcPUtPVWp7lG2NZprW5AnMc2EqflAbLXHUEmcjP1e2+nhnDz8ibnkdpz3S3HM4s//mym2cWHUjV9KACTA8scMFgdFiiRag0LC7YqD6tl6gXeKER6QR5n6f3q/loM2H0/iJb6n+Z57dkYiAtP8aCU4G7uuA2GHdJLt95NyAVXHgqkeinLQVOYySRUir5rYgyMHH6i6160qPZWG0l0=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?GSU+n9NGt6H0wlossn8qxteQqG+fam9+cpVmYmyt93Xx63uODcXRYR3lzOhE?=
 =?us-ascii?Q?H8KfLOvC+EakJYYTFrP3fuAj8RBpeNxrW7FB7/rUVbgQrulVvBJYUprFrPxK?=
 =?us-ascii?Q?Xgq0EpxqvMkXp9WCEYV+58wC0LS1G+bS3urQ85E1O+8dB8W3ggFpxjP39E5+?=
 =?us-ascii?Q?0LH5w8UzsVhDs+Y5/fLhtSaa31U3wFgI/PFILGsemlxssB4j+Nr7A1l0ziQA?=
 =?us-ascii?Q?2WpzOLmBpJ7/NMY8P0HgFo5hauRJWnJnPvunl/F4ecKN4Z7IHR/+kpmmhcOV?=
 =?us-ascii?Q?EwT8njMI2uE2Gx05otRLsDRk0roij0W0VsxiAFT4Gw8AhbClrQ8B3HlQ5H2F?=
 =?us-ascii?Q?B0BHEo9qtCDPassL4+s1EcWt8KxAh2MFgaLrubdN0rG1QG+SVBRgrrMNvoWj?=
 =?us-ascii?Q?aT0vhmoGyhpTituAOMovEh6bCRDqQNUyHkdtWTAUVcIFmesXeeHiVS708D25?=
 =?us-ascii?Q?aTg8YOvqIXF6Losi2qF318gSFLApwfLBrDI2SnqBi/FOoTzVdwZQV6Ir7Lkr?=
 =?us-ascii?Q?M9huUJQI0GQHspNllL/7Qzv5ZeV+I5ULQ/53YagIgZwxj34V1Yi1XcrgT7yr?=
 =?us-ascii?Q?9o21G4xkgtvXTWPRl3cgXNl7nzvQG+22PTimNuw1hgX3osMG8uZbc1QuHZGc?=
 =?us-ascii?Q?Y6w/Dd5TTU3h7+lZKwho+BLk7j7fx9aTjOdrNpZ4B5yBCKhp8mPXyIdw5m53?=
 =?us-ascii?Q?+EIQH47gf0MD4Jcy+scQMjsc+Km5m0w8Ls6jP/jTftrqhKMVtptdlJwmZBuz?=
 =?us-ascii?Q?MdGIKMlWXpwEiV8EjFZXjdBu+0khS7Cnr1j50pkq9y9f2mgTXgVON1ejOBQi?=
 =?us-ascii?Q?5etOrB9xF7Ms+5Hd3DiVzzg5US7HldELTDzzORXasjOxO7bSoVj6MMn2H5k5?=
 =?us-ascii?Q?rLEFFT/Qzd5J/z+d/sbgi0taXs4nnTBLhv/ZLnzXt2fnHaMwC2Tn2udf+/JD?=
 =?us-ascii?Q?UzDvQTxvcseoKhramgp7FAgfJCxkKeLPzpRC2tHnZDfiTryygeXx4jCK4z7v?=
 =?us-ascii?Q?6UjFBlvRzZ6m+2SzWT/fL3KFLAnVnEmkWQRE/cga5UmxVGFaEU5v/L2aHN05?=
 =?us-ascii?Q?8UcMon6FC0acw9H4UkNCiLLkm6yZSy42H7+bZGFyJCNBNaabHtF+s6GM8DpP?=
 =?us-ascii?Q?B5Wk+DHdZvhFe/bxLV23rLg13ZkzlJILIDqXHK2xKvkRK+hx2/D61vtdDw+k?=
 =?us-ascii?Q?F4tmxMJ/P6IRt+aUjUMFjK39xIz+O+3do3i97tkBwI3GCOnnHKp3bfoiHc5t?=
 =?us-ascii?Q?BYThHHOejmAQY3jTmgI9fmArhjpF/IYHkFNV5fPYk9d7K/JtddnwqMpzpqvA?=
 =?us-ascii?Q?43SXnGipm6xZviuhsm6fI3ymjO/g7s/R7QW1mpCMt8bjW0iflFx92EcUMWAd?=
 =?us-ascii?Q?mDaAizMMFsOoYBa64+gLRmYz4LzgQ5NDr3umATPWPg9au8mmyi0Qo7hQwuzg?=
 =?us-ascii?Q?IUUpRUd4ypyGF6Vyg08y8fN+qK4qzocIShvsvH7wLLjKwTSeTdEZTZjSmLry?=
 =?us-ascii?Q?fYHv05Zq24E/alhn1IcOQSJRXaiPfdr34RB28/CGsnhFCkWRHrd9VPOotqgU?=
 =?us-ascii?Q?89FiWsB5FfDt7MqJp4LTQnIOHJuyCWGSd+t9XNR3j4ySMcpsAWDEM7cMvcYJ?=
 =?us-ascii?Q?ORAA3eVg+yYgyHEq8fIuiFt4PojO4PHfNI49wv58iz4Hy7lA+/oK6mUTCaXN?=
 =?us-ascii?Q?56gD2OiDQtsavpqNxrSVkkJqBi1du+VjVmiP1N59p0PxzV9KcTgNO7PKDEIH?=
 =?us-ascii?Q?kxBm1n+aQw=3D=3D?=
X-Exchange-RoutingPolicyChecked: sLq7hueIk1EhYW79h0/jOrAo5AnsbBQseajswRtg40Ue4pBKWKFVy1KJZpwR7+mZir30vKVn33nHTY/46ArDnA6iNYUdEoPvW39x9OzAgd5X4m9WNO+7C/JlY2LacaBprveoGFORlERlsiQU8KTbLUSO8bXFIMUP2eOVRBKPYiWVXDRQn2wpV4L3wyAmhE+SOBQkz8+ubCkaSNCOi59WDnmS4IHvAxpluQ6Gu236HHdZteWgo4ydU8+WXUNNYYNP3NZ33oOC75DCxu1dSvgdQEwVYeKiket71ZecJD8JZMU9S+qxiXJZElo5NglAYvhweQpiJ6K69N2fHxEDxZlOlg==
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cff176c-a04d-491e-566f-08dea525584d
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2026 12:54:54.8980 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g7SqKzBTJ0L2fxzcFRWVvqYa2I3DPjQoAH/I2CkLuEGR3Ya54+CWJRbg7QRp9lBUedHEzcgD+OnoTnP+olZOpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB9063
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
X-Rspamd-Queue-Id: A2DC8485544
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

Replace the config_idx entries with a flat position-to-index map array
in the config table, renamed to bw_order_map. The semantic remains
unchanged; the array maps BW-order positions to config indices as
before.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 .../gpu/drm/i915/display/intel_dp_link_caps.c | 59 +++++++++++--------
 1 file changed, 33 insertions(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
index 345419e7c0c29..685fbc34b8df9 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_caps.c
@@ -103,9 +103,6 @@ struct intel_dp_link_caps {
 		 * with a fixed lane stride of
 		 * INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS.
 		 *
-		 * For now the above index is stored in struct
-		 * intel_dp_link_config_entry::config_idx.
-		 *
 		 * A configuration can be reconstructed from its index as:
 		 *
 		 *   rate_idx  = idx / INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS
@@ -126,9 +123,14 @@ struct intel_dp_link_caps {
 
 #define INTEL_DP_MAX_LINK_CONFIGS		(DP_MAX_SUPPORTED_RATES * \
 						 INTEL_DP_MAX_SUPPORTED_LANE_CONFIGS)
-		struct intel_dp_link_config_entry {
-			u8 config_idx;
-		} configs[INTEL_DP_MAX_LINK_CONFIGS];
+		/*
+		 * Indices of configurations sorted in ascending bandwidth
+		 * order.
+		 *
+		 * Each entry is an index into the virtual configuration space
+		 * described above.
+		 */
+		u8 bw_order_map[INTEL_DP_MAX_LINK_CONFIGS];
 	} config_table;
 
 	/*
@@ -379,7 +381,7 @@ get_table_config_by_pos(const struct intel_dp_link_caps_config_table *config_tab
 
 	switch (config_order.key) {
 	case INTEL_DP_LINK_CAPS_CONFIG_ORDER_KEY_BW:
-		*config_idx = config_table->configs[iter_pos].config_idx;
+		*config_idx = config_table->bw_order_map[iter_pos];
 
 		break;
 	default:
@@ -779,26 +781,31 @@ void intel_dp_link_caps_reset_max_limits(struct intel_dp_link_caps *link_caps)
 	update_max_link_info(link_caps);
 }
 
-static int intel_dp_link_config_bw(const struct intel_dp_link_caps_config_table *table,
-				   const struct intel_dp_link_config_entry *lc)
+static int intel_dp_link_config_bw(const struct intel_dp_link_config *link_config)
 {
-	return drm_dp_max_dprx_data_rate(link_config_idx_to_rate(table, lc->config_idx),
-					 link_config_idx_to_lane_count(lc->config_idx));
+	return drm_dp_max_dprx_data_rate(link_config->rate, link_config->lane_count);
 }
 
 static int link_config_cmp_by_bw(const void *a, const void *b, const void *p)
 {
 	const struct intel_dp_link_caps_config_table *table = p;
-	const struct intel_dp_link_config_entry *lc_a = a;
-	const struct intel_dp_link_config_entry *lc_b = b;
-	int bw_a = intel_dp_link_config_bw(table, lc_a);
-	int bw_b = intel_dp_link_config_bw(table, lc_b);
+	struct intel_dp_link_config link_config_a;
+	struct intel_dp_link_config link_config_b;
+	u8 idx_a = *(u8 *)a;
+	u8 idx_b = *(u8 *)b;
+	int bw_a;
+	int bw_b;
+
+	to_intel_dp_link_config(table, idx_a, &link_config_a);
+	to_intel_dp_link_config(table, idx_b, &link_config_b);
+
+	bw_a = intel_dp_link_config_bw(&link_config_a);
+	bw_b = intel_dp_link_config_bw(&link_config_b);
 
 	if (bw_a != bw_b)
 		return bw_a - bw_b;
 
-	return link_config_idx_to_rate(table, lc_a->config_idx) -
-	       link_config_idx_to_rate(table, lc_b->config_idx);
+	return link_config_a.rate - link_config_b.rate;
 }
 
 static bool config_tables_match(const struct intel_dp_link_caps_config_table *table_a,
@@ -817,8 +824,8 @@ static bool config_tables_match(const struct intel_dp_link_caps_config_table *ta
 		   table_a->num_rates * sizeof(table_a->rates[0])))
 		return false;
 
-	if (memcmp(table_a->configs, table_b->configs,
-		   table_a->num_configs * sizeof(table_a->configs[0])))
+	if (memcmp(table_a->bw_order_map, table_b->bw_order_map,
+		   table_a->num_configs * sizeof(table_a->bw_order_map[0])))
 		return false;
 
 	return true;
@@ -828,8 +835,8 @@ static bool build_config_table(struct intel_display *display,
 			       const int *rates, int num_rates, int max_lane_count,
 			       struct intel_dp_link_caps_config_table *table)
 {
-	struct intel_dp_link_config_entry *lc;
 	int num_common_lane_configs;
+	u8 *bw_order_map;
 	int i;
 
 	if (drm_WARN_ON(display->drm,
@@ -848,7 +855,7 @@ static bool build_config_table(struct intel_display *display,
 	num_common_lane_configs = ilog2(max_lane_count) + 1;
 
 	if (drm_WARN_ON(display->drm, num_rates * num_common_lane_configs >
-				    ARRAY_SIZE(table->configs)))
+				    ARRAY_SIZE(table->bw_order_map)))
 		return false;
 
 	memset(table, 0, sizeof(*table));
@@ -859,7 +866,7 @@ static bool build_config_table(struct intel_display *display,
 
 	table->num_configs = num_rates * num_common_lane_configs;
 
-	lc = &table->configs[0];
+	bw_order_map = table->bw_order_map;
 	for (i = 0; i < table->num_configs; i++) {
 		int config_idx;
 
@@ -867,12 +874,12 @@ static bool build_config_table(struct intel_display *display,
 		if (config_idx < 0)
 			return false;
 
-		lc->config_idx = config_idx;
-		lc++;
+		*bw_order_map = config_idx;
+		bw_order_map++;
 	}
 
-	sort_r(table->configs, table->num_configs,
-	       sizeof(table->configs[0]),
+	sort_r(table->bw_order_map, table->num_configs,
+	       sizeof(table->bw_order_map[0]),
 	       link_config_cmp_by_bw, NULL,
 	       table);
 
-- 
2.49.1

