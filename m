Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wBa/Mgr3CmpZ+QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:24:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9AC56B7CE
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 13:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F271B10E7C2;
	Mon, 18 May 2026 11:24:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aEyfo1pw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7791410E7BE;
 Mon, 18 May 2026 11:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779103495; x=1810639495;
 h=from:to:subject:date:message-id:in-reply-to:references:
 content-transfer-encoding:mime-version;
 bh=FmgP4CO9qctsUaDb4FoQITNr7Vamw+L2VwC8uG6Gk7Q=;
 b=aEyfo1pwI3MXY/xaUIEulwy+vQ3cMfKGMsGwGn5MBDK2V5PhqNR81jGL
 zSM4tGATSQyEV4mhHDM0VL6bEb9r7VWIqp9+k8CcZHgQKJzVWOwRgza9m
 Bmf22f0aJeLeARJo8Jlwz4Fm41NViDmrwmHZh0SP230i80MZXaqZOrfqp
 e0h/X/ol0YHYJC1ts/6YJLEeJvOXJFV4HfuxDWdpptSVaRwt4YpKmMC41
 JRSAeeIj51IYLBxe+S3QvWRzHwMaOOPOLaJZeM8+XpSF7ZbDDFFgKT3Z6
 OXZ/D9k2dR0c4iYyfmGBpZ7iVw3SPCqVhzI/QmhDjMscSnS8V909qgj8L A==;
X-CSE-ConnectionGUID: LBi+aFH2R0CjZhCJfGAKzg==
X-CSE-MsgGUID: RVuje5RCQUiknIH4OKlt5A==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="79091496"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="79091496"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:55 -0700
X-CSE-ConnectionGUID: faMcsrWrRomZalkBNhc9gw==
X-CSE-MsgGUID: +O5lL8rUQb+mrqiuFE++dg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="241213085"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 04:24:55 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:54 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 18 May 2026 04:24:54 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.26) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 18 May 2026 04:24:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Lmy/mNwF0WQjEiUMBo5s2Wsg6TLszvXv7/0YYFSmrXnn5gqfa0bHlk4srNnVlHgUMhcMDosT4kQxpfzrE/rJ33vlxKPzHysC/QYlzVX0w3Ao8Bwk2CWG9ajZba08SwiNYCQbDh5SjU1Fj8vSTdW6MmfapL6Fc2uloaS/vUxrDv7w1ZSjsQ2T5g9lPnSNY7aSlp77cUS6GdjpLvki8oCFZzOY7IKHS3fqKouGkIf/GhJ6pXquvzaSffivsJV/HRGKwrcOf4o0qWq9DI0QerXRgscKiKldMXGSGOYuJISJ8Zho1iPfVxx+BNYnCKung2uOyFg4EVEzAUyKqab/rLl4iQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I/66F7fp9r3l/SbYUelvDn/2GAudpa+PfXA7J8vfTDk=;
 b=IWMESCcH/s4SiXGBGk4KUsFsm2QbIF7A/Meem2pgarC1DjWAVykUp8droYYzB4gfAkUpOf7DjFGyN4jE04LDZCOcOmcrq1lHOhmTcjsyWRe/y9nIg/z6etRi9qgoinCSqFa4kjtFfTUrCRxKtE0JrUXEU/xGFMP9HGlqg59VNlqhjFJ7VWm84Hya44pzu9MtQEncxRdcfRPMxNAs7sWHOjjuEhB9Th/8h9QdmlauhAzrcKk7+7wsoF64RYz01ofisxOkkVY/JYo9B7lK9rzTU4Fk39II2y9DE/4WxOvgn8JW7LU6CSbzHE6OAq3U5M4ea3nL7rL6tYIfptgZyA3RtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by CH8PR11MB9508.namprd11.prod.outlook.com (2603:10b6:610:2bc::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.25.24; Mon, 18 May
 2026 11:24:49 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.20.9913.009; Mon, 18 May 2026
 11:24:49 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: [PATCH 3/5] drm/i915/dp: Add helper to set common link params
Date: Mon, 18 May 2026 14:24:24 +0300
Message-ID: <20260518112427.2460725-4-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260518112427.2460725-1-imre.deak@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: GV2PEPF00023A11.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::214) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|CH8PR11MB9508:EE_
X-MS-Office365-Filtering-Correlation-Id: 9df12639-d660-4f43-cffc-08deb4d0129a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|22082099003|18002099003|56012099003|11063799003;
X-Microsoft-Antispam-Message-Info: 5k9h9ojgaqENu0teqts0NLAMD1q3UxObidRIXpxcLKa+DjbXMb1B8NKkS5nkgt9zezzhgYRjauEhBEtLkUzEDpbVD0vbFoa4etuSPGy6QnU3vTJF68dS3Xbpl7wZVsxmurpa6MrlZ5FxVf4spDjw4MaSTWFzMIzLVl1G/TDcLNaQ62HMBBoL1azrwZuDqLNbxGzRrKRKBnPuWeA3yrQ3EUtZ18kip/rHQ1v2ZZCTkhs1rIFTeXMbt0j3e+4Z8M5HijCksl6X1ggG7rnfNDA4c6apo1AU9yc08LXaoZJB2jPJ4fwAPVGL+jQvdXoEot2jtmXwcLvpqlbb4XXk9hSwPUm879jp4OOrHIy6zmB7hqv/OvBY4hbE2jMgZUVnYOWsMkVgVYFHxVT3zxkmeaCGVVafE5Ia5qWzzkWxwsyLGT8JgfK95c+sXIzJLdYBtZsBr6fYF9qMGk6IOd7tw20WqWgq9vVqlM5OK554HQ5jiiKaFg4ZKbmPinQs16tex3v3R9y9s7kqjoUuC5VOg8Yosdg17hmn09gjLF64QhudYpcbkzLOUoUG6eyRyhNkULYYJYXJo29GWpPlRWMp9rcjvC9dCeJJ5LEEaknbFncM2ZqC1xJlFPfZhAt+v01DP0BZ+dXUPK06ea7o3ex7m1AjRzGr3X9/7ufBvIabzQsBrzMQq2B0/fNTh0Ta3feTU4/B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(22082099003)(18002099003)(56012099003)(11063799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AGdnoVERJdwsoOIzv1SHJBZuJ+ZkX3798OkfJLD5mVJQkOvZWy720Ad4Hylo?=
 =?us-ascii?Q?IrNY7D4RPCxXa5ADm1rGDibJCF6+EGE7wQ/GCAGhCxNrwoij14Mw8tMhSdRb?=
 =?us-ascii?Q?7LJcW2KGARiDYkGK7awUbQXYx7lLJih4n5vC/rwbZqm204JEJdWJa2WN9oBg?=
 =?us-ascii?Q?bAokJe+V7fjCRvdbh42yVFXwkjHEZLtqDRhrGHtkrg4PMP6tvYpQwv9DYmK1?=
 =?us-ascii?Q?o0Gs3/tkKNvLTzbasH0xwhKpYA8YbrKZS/buxPuL3UF/loiDdOPYewzHfLu7?=
 =?us-ascii?Q?S0X55y+vZs1HiyurSoq97K7LIS2+/U1nNb26eE6I4c14EYzssFS/NIuk2f8L?=
 =?us-ascii?Q?7zF5ySphawrAIXfG17xocLFyoBc0mGGuAX2fJTBWzxiTjNQcdN/Ljduky5Et?=
 =?us-ascii?Q?oWuCmJf59+DI+Z1dOLMxyJSWi+bZq7ceI0toe0gjATKgrLE7Dj8Z0iQHrepm?=
 =?us-ascii?Q?G6AiYde71SzpCtBomC/tLwhRdrD3i8KkFbrKds00DTxX67qF3bZETlAfCzZ7?=
 =?us-ascii?Q?VUzC5PLBDtCcr0+RzndDVoHlqJT+DGcTfcRPXW3JHookjDz4FRKO3uZazzxF?=
 =?us-ascii?Q?ugyjN/pQzWvr8/vlqAkkPfxbz1fGJy8Wyz0lMT3HN9eZETLaogJz/LN7B0Q2?=
 =?us-ascii?Q?yL3gVRErkZW9ylhLil1ZaQaieoCbMCUV89dy6m+KsN1ykca3b0o62UDXjVdY?=
 =?us-ascii?Q?Ycafo8VCCuAgLSD3wyNYzxeu8RULYvRB902sXj4yQDSPLOM09AHe0OdJ8+93?=
 =?us-ascii?Q?eqN0X5t0X4jtvKws2dzhGrOmCm4HRX9F2gvm+SEKajBTwcgEe5mppOwagWv3?=
 =?us-ascii?Q?Ch5QeSfjl+KqRO5GtTjvq5f3UlCWHElFWt/ehL/i/w4PiwHDj7QwLwX8QZTP?=
 =?us-ascii?Q?nYR6MyeewVPxwYTEJOCEsJVxbGKQaAPCb0OtsrKrtHNrLLqprT+rWOUOcdrN?=
 =?us-ascii?Q?o9awrSoTU21rp4ON/bD7su6Hvd+qaFqIkkzUQj4zJlzRYd3LjrTWZp4WN+Wf?=
 =?us-ascii?Q?H4/Gc0rPq50yyR/V6Zoku5LOP1t42VKBFEzTln3cEHbrJ8OzsAz4EwUb03nJ?=
 =?us-ascii?Q?S5OTwJ3Efo2PmFJVqSYOiEGEHKz9HQluyc5sHwJfuYvGmEwde6fd93e6TgOM?=
 =?us-ascii?Q?IiKd8omvs5QUh2MnqD8B3A4ozeNn5QjB81lNC09Hg3ajz6qTN3yLtAjQ0cpu?=
 =?us-ascii?Q?PK8xGQva9plsN8E34fvbnxBL4e+ggAy1RRt2mfn9G0GAU8M8RoxtGTG1Zd/7?=
 =?us-ascii?Q?n4HTtVLqFa0YGaUgNR8v+Zp5TtkpFAGMfY8tKXl2dKfjlJM69tfvgbxP5b3v?=
 =?us-ascii?Q?5g3o2NlDoXeG2Z+7YiT41VG8ZyHv5JGT+Nr3HDRUDqhjYoJpztuLm/7gsjNl?=
 =?us-ascii?Q?+YPRLY8JN5K9stNF/P+0RF6gCS1jLCtfTzZ35DtYjK1AfVeoGOkMaDIe9mJf?=
 =?us-ascii?Q?LYJ3DSWEqRoCa5VMKlu76fRkSJBhmXYG0NEZ60zR2CfW9L/+eZL5ei0ibWaA?=
 =?us-ascii?Q?VHBgsq4v1oIj4pD5tqmU0DfYSMXYDcJI+jM5dtB3Z8flUbWvYbLmU6WIYbmc?=
 =?us-ascii?Q?UPYfyTQRQkGkhWFb9QWfuee9uIvtzk0rnF9GQTI8lr3wYOb4RghbHpnt/0gF?=
 =?us-ascii?Q?2kGKbz6AXDns/Eby3R+07vkn9558N0zJeRSyCv9xvYd4MZ3S7U4Vql3Ujio5?=
 =?us-ascii?Q?mIq1/vENZsf6bYTfA66axVkzBv4z/2nsxGbyOYAkK9IPjeDzYhoaC5IbFPO/?=
 =?us-ascii?Q?oZvDwGOqCg=3D=3D?=
X-Exchange-RoutingPolicyChecked: fjSN56/yXDvrkm8OQ+pnlANy5Mo5siuo5B3mToiJdZvoJZoN7w43WRn6M41wL5z3PJb+/m8TMMFCA7aE+B3hQfNDYeyxGJpuuuv7rIk32pIu+tORdFwPwF8P3VHKRRlLE4FB4AtAQ3X0qFqyIR9dBMgOlg7h5wo6AjSXx4WY/CAjBTbkDbuXV7saDt+44jgcqjHhAcO3YY+Z1T2WYQjdUPhgRTNCxlv15NwCeDXN72L1qKblEDdDmVoER+MxofFwqI9qYJeD7ZFGw6LXk0G97mvrugKBfYSXmDMpQd/bR/T2hxAJaQSzQ24ALyz02m6Jbh3yXhQ4YJopZnMXEjuH5g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9df12639-d660-4f43-cffc-08deb4d0129a
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 May 2026 11:24:49.3840 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: G1WPjd9vFbe86CiF/Y0444XHjayhadbzY5IK7Ay7g7vcjLKxFxzgk8Yn2OEtCbEyyvQtQ8WlUqEwUwkBCXgvyQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH8PR11MB9508
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
X-Rspamd-Queue-Id: 7C9AC56B7CE
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

Add intel_dp_set_common_link_params() to prepare for updating the
maximum common lane count together with the common rates.

Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 9c530ef12b7cc..06bf1fb23faff 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -805,7 +805,11 @@ static void intel_dp_set_common_rates(struct intel_dp *intel_dp)
 		intel_dp->common_rates[0] = 162000;
 		intel_dp->num_common_rates = 1;
 	}
+}
 
+static void intel_dp_set_common_link_params(struct intel_dp *intel_dp)
+{
+	intel_dp_set_common_rates(intel_dp);
 	intel_dp_link_config_init(intel_dp);
 }
 
@@ -4903,7 +4907,7 @@ void intel_dp_update_sink_caps(struct intel_dp *intel_dp)
 {
 	intel_dp_set_sink_rates(intel_dp);
 	intel_dp_set_max_sink_lane_count(intel_dp);
-	intel_dp_set_common_rates(intel_dp);
+	intel_dp_set_common_link_params(intel_dp);
 }
 
 static bool
@@ -7341,7 +7345,7 @@ intel_dp_init_connector(struct intel_digital_port *dig_port,
 	}
 
 	intel_dp_set_source_rates(intel_dp);
-	intel_dp_set_common_rates(intel_dp);
+	intel_dp_set_common_link_params(intel_dp);
 	intel_dp_reset_link_params_force(intel_dp);
 
 	/* init MST on ports that can support it */
-- 
2.49.1

